# Changelog

## 1.2.0 - 2026-07-01

Cross-model hardening and packaging, ahead of the first public release.

- Re-tested on Sonnet 5 and Opus 4.8. Both passed the over-correction trap outright; both leaked "category-standard" capability claims into rewrites on the no-fabrication test (details in `evals/RESULTS.md` section 4).
- Closed that loophole: the no-fabrication guardrail now names the "it's standard for this kind of tool" excuse explicitly, in SKILL.md, the cheat sheet, and the full catalogue. Verified fixed on both models.
- Added `scripts/package.sh` and `scripts/package.ps1` to build the `dist/avoid-ai-tells.skill` package for Claude.ai and Cowork uploads.
- README: Windows install commands, packaging instructions, updated repo layout.

## 1.1.0 - 2026-06-30

Hardening release, driven by an eval pass (see `evals/RESULTS.md`).

- Description: added an explicit do-NOT-trigger clause (detection, translation, summarising, grammar-only fixes, text-processing code), named formatting tells as triggers, and tightened the default-apply clause to "original prose" so it can't be read to cover summaries or translations.
- Priority pass reframed as a diagnostic list, not a mandate to change something in every category, with an explicit note that leaving clean text alone is a valid outcome. Reduces over-correction pressure.
- New no-fabrication guardrail: when a fix needs a specific that can't be known, insert a marked placeholder instead of inventing a fact.
- Added `evals/`: triggering eval set (18 queries, 18/18) and a results write-up.

## 1.0.0 - 2026-06-30

First release.

- SKILL.md with a revision workflow and a priority pass covering the highest-value tells.
- `references/ai-writing-tells.md`: full catalogue in four sections plus the over-correction trap.
- `references/cheat-sheet.md`: one-page tell-to-fix table for a quick lint pass.
- `examples/before-after.md`: five worked examples (README, release notes, LinkedIn, cover letter, blog).
- Install instructions for Claude Code, Cowork, and Claude.ai Projects.
