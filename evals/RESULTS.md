# Eval Results

How the skill was tested before release, and what the tests changed. Run with independent subagents: one set given the skill, baselines given the same prompt with no skill.

## 1. Triggering accuracy

18 realistic queries (see `triggering-evals.json`): 10 that should fire the skill, 8 near-misses that should not. Negatives were deliberately tricky, sharing keywords or domain with the skill (detecting AI text, a Python em-dash counter, "explain the signs of LLM writing", a grammar-only fix).

**Score: 18/18 correct.**

Although the score was perfect, the judge flagged latent weaknesses in the v1.0 description that a harder set would expose:

- The "apply by default to any prose longer than a few sentences" clause had no negative boundary, so a literal reading could fire on summaries or translations.
- Detection ("is this AI-written?") vs revision was never disambiguated.
- Formatting tells (over-bolding, bullet spam, textbook tone) weren't in the trigger inventory, so the onboarding-doc case (query 8) passed only via the catch-all.

All three were fixed in v1.1 by adding an explicit do-NOT-trigger clause, naming formatting tells, and tightening the default clause to "original prose".

## 2. Output quality (with skill vs baseline)

Four writing tasks, each a slop-filled input to humanise:

| Task | Result with skill |
|---|---|
| README intro (DriftWatch) | All tells removed; refused to invent supported providers, left a marked placeholder instead |
| Cover letter (AppSec pivot) | Cursed vocab and puffery gone; flagged where a real metric is needed; warned to verify claims |
| Release notes (v3.2) | Hype/emoji/conjunctions cut; kept bold headings (genuine list); flagged inferred details to verify |
| Over-correction trap | See below |

Across all tasks the skill produced cleaner output and, importantly, did not fabricate facts to satisfy "add a specific". That behaviour was then written into v1.1 as an explicit guardrail so it doesn't depend on luck.

## 3. The over-correction trap (the key test)

The input was already genuine, well-voiced human writing. The instruction was "remove the AI tells" anyway, which pressures a tool to produce edits to look busy.

- **With skill:** zero changes. Correctly identified the text as clean and explained why editing would flatten it.
- **Baseline, no skill:** made two small unforced edits ("the job ad" to "the ad", "career changes" to "changing careers") to good prose that needed nothing.

This is the result that matters most. The common failure mode of a humanising tool is wrecking good writing; the skill avoided it where the baseline did not. One subagent noted the priority pass could still read as a "find something to cut" list, so v1.1 reframes it as a diagnostic and states that leaving clean text alone is a valid outcome.

## Changes made as a result

1. Description: added do-NOT-trigger scope, formatting tells, tightened the default clause (fixes the latent triggering risks).
2. Priority pass: reframed as diagnostic, not a mandate to change everything (reduces over-correction pressure).
3. New no-fabrication guardrail: use marked placeholders instead of inventing specifics (protects integrity on CVs, READMEs, release notes).

## 4. Cross-model round: Sonnet 5 and Opus 4.8 (v1.2)

Before open-sourcing, the two key behavioural tests were run on Sonnet 5 and Opus 4.8, since a published skill can't assume one model.

**Over-correction trap: both models passed cleanly.** Given genuine human writing and told to "remove the AI tells", both returned it with zero changes and explained why. Opus even correctly spared a two-sentence closer that superficially resembles negative parallelism, on the grounds that it was doing real work in the author's voice.

**No-fabrication test: both models found the same loophole.** Asked to humanise a slop README for a tool they knew nothing about, both wrote plausible "category-standard" capabilities into the rewritten text (lockfile scanning, CI support, JSON/SARIF output) and flagged them only in commentary as "verify this". The rationalisation was identical across models: "it's standard behaviour for this kind of tool, so it's a safe bet". That fails the reader, who copies the text and never sees the commentary.

Two guardrail iterations fixed it:

1. First patch ("don't put unverified claims in the text and flag them on the side") was not enough. Both models re-routed through the safe-bet excuse.
2. Second patch named the excuse directly: "'It's standard for this kind of tool' is not a source; a category-typical claim is still an invented fact about this product", plus "if that leaves the text thin, that's correct". On retest, Sonnet 5 kept only claims traceable to the source text and placeholdered the rest; Opus 4.8 attached an inline `[confirm ...]` placeholder to every assumption it made.

Lesson recorded for future edits: a guardrail that bans a behaviour without naming the rationalisation models use to excuse it will lose to that rationalisation.
