---
name: avoid-ai-tells
description: Write or revise prose so it doesn't read as AI-generated. Use whenever generating original prose longer than a few sentences (blog posts, articles, READMEs, documentation, emails, marketing copy, LinkedIn posts, release notes, cover letters, portfolio bios) or when asked to edit, rewrite, "humanise", or "de-slop" existing text. Also trigger when the user says text sounds robotic, generic, or AI-written, or names specific tells (em-dash overuse, over-bolding, too many bullet points, hype, rule-of-three, sounding like a textbook). Do NOT trigger for jobs that merely involve text but are a different task: detecting or classifying whether something is AI-written, translating, summarising or condensing, grammar/spelling-only fixes, or writing code that processes text. Apply by default to substantial original prose even when not explicitly asked, but not to summaries, translations, or mechanical edits.
---

# Avoid AI Tells

The goal is text that reads like a specific person who knows the subject wrote it. Not sterile, not over-corrected, just human. These patterns are signals, not crimes. The fix is almost never to mechanically delete every instance. It's to write with judgement: take a stance, be specific, vary the rhythm, cut the filler.

A warning before anything else: do not strip out every possible tell. Over-suppression backfires. Text scrubbed of all variation reads as stiff and generic, which is itself an AI tell. Prioritise the high-value patterns below and leave natural human writing alone.

## The revision workflow

1. Write the draft, or take the user's text as input.
2. Read it back as a sceptical human. Where does it sound like filler, hype, or a template?
3. Run the priority pass below.
4. For a thorough humanisation job, or when the user wants the full treatment, read `references/ai-writing-tells.md` for the complete catalogue with examples. For a fast scan, `references/cheat-sheet.md` is the one-page tell-to-fix table.
5. Self-check: does this sound like a person with an opinion who has actually done the thing they're describing? If it could have been written about any topic by anyone, it isn't done.

## Priority pass: the highest-value tells

These do the most damage and show up the most, so check them first. Treat this as a diagnostic list, not a hit list. The job is to find tells that are actually present and fix those, not to change something in every category. If a passage is already clean, the right move is to leave it and say so. Manufacturing edits to look productive is the over-correction trap, and it makes writing worse.

**Negative parallelism (the biggest one).** Constructions like "it's not X, it's Y", "not just X, but Y", "not only... but also...". AI reaches for this constantly for fake drama. Rewrite as a plain statement.
- Slop: "It's not a product launch. It's a paradigm shift."
- Human: "This launch changes how the pricing works."

**Rule of three.** Triplets of adjectives or list items everywhere. "Innovative, transformative, and groundbreaking." One triplet is fine. When every list has exactly three things and every noun gets three adjectives, it's a tell. Break the pattern: use two, use four, use one strong word.

**Em dash overuse.** AI leans on the em dash (—) for punchy emphasis where a comma, full stop, or brackets would do, and tends to surround it with spaces. Replace with a comma, a pair of brackets, or a full stop.

**Puffery and significance inflation.** Tying the subject to a grand theme to inflate it. "Marked a pivotal moment", "stands as a testament to", "plays a vital role in shaping", "represented a significant shift". Cut it or state the plain fact.
- Slop: "The 1989 founding marked a pivotal moment in the evolution of regional statistics."
- Human: "It was founded in 1989."

**The -ing significance tail.** Sentences that end with a trailing clause explaining why the thing matters. "..., highlighting its importance", "..., reflecting a broader trend toward...", "..., cementing its legacy". This is empty editorialising. Delete the tail.

**Compulsive summaries.** "In conclusion", "Overall", "In summary", "Ultimately" used reflexively, especially on text too short to need a recap. Just stop when you're done.

**Cursed vocabulary.** Words AI overuses to the point they now read as AI: delve, tapestry, pivotal, underscore, landscape (figurative), foster, testament, intricate, crucial, realm, navigate (figurative), leverage, utilise, robust, seamless, multifaceted, nuanced, vibrant, bustling, ever-evolving, game-changer, unlock, harness, elevate. Swap for plain words or cut.

**Formatting overkill.** Bold on every key term like a textbook. Bullet lists where a sentence or a paragraph would read better. Bold-lead bullets where the bolded phrase is just restated in the sentence after it. Emoji in headings. Prefer prose. Use a list only when the content is genuinely a list.

**Conjunctive crutches.** "Moreover", "Furthermore", "Additionally" to glue paragraphs. Humans rarely open sentences this way in normal writing. Use "and", "also", "but", or just start the sentence.

**Uniform rhythm.** Every sentence the same medium length, every paragraph the same size. Vary it. Short sentences land. Let a long one breathe when it needs to. Fragments are allowed.

**No specifics, no stance.** The clearest tell of all is text that explains and generalises but never commits to a view or anchors a point in something concrete. Add a real example, a real number, a real opinion. Say the thing you actually mean. But never invent facts to do it: if a fix needs a specific you can't know (a metric, a feature, a date, a quote), leave a clearly marked placeholder like `[add the actual number]` for the author rather than fabricating one. A made-up specific is worse than an honest vague sentence, and on a CV, README, or release note it can be actively damaging. This covers "safe bet" claims too: don't write plausible capabilities into the text and note "verify this" in your commentary, because the reader will copy the text and skip the commentary. "It's standard for this kind of tool" is not a source; a category-typical claim ("reads your lockfiles", "runs in CI", "outputs JSON") is still an invented fact about this product. Everything in the rewritten text must be traceable to the source material or the user, or be a marked placeholder. If that leaves the text thin, that's correct: the placeholders show the author exactly where their real content goes.

## Leftover chatbot residue

If you're editing text that was pasted from a chatbot, strip these on sight. Real published writing never addresses the person who set the prompt.
- Sycophantic openers: "Great question!", "Certainly!", "I'd be happy to help".
- Meta-commentary: "Here's a draft for you", "I hope this helps", "Feel free to adjust".
- Mid-text address: "As you requested", "Let me know if you'd like changes".
- Placeholders: "[insert detail here]", "[Company Name]".

## When to read the reference files

- `references/cheat-sheet.md` — one-page table of every tell and its fix. Use for a quick scan or a final lint pass.
- `references/ai-writing-tells.md` — the full catalogue with examples, organised the way Wikipedia's "Signs of AI writing" page organises it: language and tone, style, formatting and markup, and leftover chatbot residue. Read it for a careful rewrite, when the priority pass isn't enough, or when the user wants every tell checked.

## Calibration

Match the register the user wants. A formal report can carry some structure a casual blog post can't. The point isn't to make everything sound chatty, it's to remove the machine-shaped patterns while keeping the writing fit for its purpose. When in doubt, fewer rules applied with better judgement beats a long checklist applied blindly. The over-correction trap is real: if your "fix" makes the rhythm feel random, stuffs in personal detail that doesn't fit, or bans a word the sentence genuinely needs, you've gone too far. A person with judgement deciding what to say and saying it plainly beats any mechanical rule.
