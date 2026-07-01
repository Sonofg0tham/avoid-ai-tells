# Avoid AI Tells

A Claude skill that makes written output read like a person wrote it, not a chatbot. It catches the patterns that mark text as AI-generated (negative parallelism, the rule of three, em dash overuse, puffery, cursed vocabulary, formatting overkill) and fixes them with judgement instead of a blunt find-and-replace.

It works in Claude Code, Claude.ai Projects, and Cowork. Point it at any prose you're about to ship and it does a humanising pass. It also runs automatically on substantial writing, so your READMEs, release notes, and posts come out clean without you asking.

## Why this exists

LLMs have a house style. Once you've seen it you can't unsee it: every list is three items long, every other sentence is "it's not just X, it's Y", and everything is robust, seamless, and vibrant. Readers clock it instantly, and on a portfolio or a public repo it undercuts the work.

The fix isn't a banned-words list. Strip every tell mechanically and you get prose that's stiff and hollow, which reads as just as artificial. This skill is built around that tension. It prioritises the handful of patterns that do the most damage, and it actively warns against over-correction. The goal is text that sounds like a specific person who knows the subject, not text that passed a checklist.

The catalogue is adapted from [Wikipedia's "Signs of AI writing"](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing), the community guide editors use to spot undisclosed AI content, plus related write-ups.

## What's in here

```
avoid-ai-tells/
├── SKILL.md                      # the skill: workflow + priority pass
├── references/
│   ├── cheat-sheet.md            # one-page tell-to-fix table for a quick lint
│   └── ai-writing-tells.md       # full catalogue with examples
├── examples/
│   └── before-after.md           # worked before/after across five registers
├── evals/
│   ├── triggering-evals.json     # 18 trigger/no-trigger test queries
│   └── RESULTS.md                # how it was tested and what the tests changed
└── scripts/
    ├── package.sh                # builds dist/avoid-ai-tells.skill (macOS/Linux)
    └── package.ps1               # same, for Windows
```

The skill uses progressive disclosure. SKILL.md is small and loads first. The full catalogue and cheat sheet only load when a job actually needs them, so the skill stays cheap to run.

## Install

### Claude Code

Drop the skill folder into your skills directory.

Per project, macOS/Linux:
```bash
mkdir -p .claude/skills
cp -r avoid-ai-tells .claude/skills/
```

Per project, Windows (PowerShell):
```powershell
New-Item -ItemType Directory -Force .claude\skills
Copy-Item -Recurse avoid-ai-tells .claude\skills\
```

Or globally, for every project, use `~/.claude/skills` (`$HOME\.claude\skills` on Windows) as the destination instead.

Restart Claude Code or start a new session. It triggers on its own when you write or edit prose. You can also invoke it directly with `/avoid-ai-tells`.

### Claude.ai and Cowork

Both take the packaged skill. Build it first:

```bash
bash scripts/package.sh        # macOS/Linux
```
```powershell
powershell -File scripts/package.ps1   # Windows
```

That produces `dist/avoid-ai-tells.skill` (a zip; `dist/avoid-ai-tells.zip` is the same file if the uploader wants a .zip extension). Or grab the prebuilt package from the GitHub Releases page.

- **Claude.ai (Projects):** open the project's settings, go to Capabilities/Skills, and upload the package. Every chat in that project then has the skill.
- **Cowork:** open settings, go to Capabilities, and add the skill, or drop the package in when prompted. It then triggers automatically on writing tasks.

## How to use it

Most of the time you don't. It triggers by itself on substantial writing. When you want to invoke it deliberately, the kind of thing that works:

- "Humanise this README, it sounds like ChatGPT wrote it."
- "Rewrite this cover letter so it doesn't read as AI."
- "De-slop my release notes before I publish."
- "Check this blog post for AI tells but don't make it sound forced."

It calibrates to register. A formal report keeps more structure than a casual post. It won't make everything chatty, it removes the machine-shaped patterns and leaves the rest alone. And it won't invent facts to humanise a draft: if a sentence needs a real number or detail it can't know, it leaves a marked placeholder for you instead of making one up.

## Tested before release

The skill was put through an eval pass rather than shipped on vibes. Triggering was checked against 18 queries (10 should-fire, 8 tricky near-misses) and scored 18/18. Output was tested on real humanising tasks against a no-skill baseline, including an over-correction trap (already-good text it should leave alone). The skill left the good text untouched where the baseline made unforced edits.

The behavioural tests were then re-run on both Sonnet 5 and Opus 4.8 before release. That round caught a real loophole: both models wrote plausible "standard for this kind of tool" claims into rewrites of products they knew nothing about. The guardrail now names that excuse directly, and both models pass. The full write-up and the changes the tests prompted are in [evals/RESULTS.md](evals/RESULTS.md).

## A note on the skill's own writing

This README and the skill files try to follow their own advice. If you spot a tell I missed, that's a fair catch and a pull request is welcome.

## Licence

MIT. See [LICENSE](LICENSE). Use it, fork it, ship it in your own projects.

## Credits

Built by Craig McCart. Tell catalogue adapted from Wikipedia's "Signs of AI writing" (CC BY-SA).
