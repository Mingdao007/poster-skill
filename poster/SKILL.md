---
name: poster
description: Create, iterate, and review academic posters with a PowerPoint-first editable workflow. Use when the user wants to build a poster from a paper or slide deck, revise an existing `.pptx` or `.pdf` poster, preserve a template's size and orientation, or audit layout, export, and poster-presentation readiness.
---

# Poster

## Overview

Use this skill for academic poster work that needs to stay editable in PowerPoint. This skill owns the poster workflow and review rubric; it does not replace low-level slide, PDF, or raw `.pptx` tools.

Default posture:

- editable single-page `.pptx` is the source of truth
- `traditional academic poster` is the default style
- reuse existing figures and deck assets before drawing from scratch
- the poster must support both a `30-second scan` and a `3-minute walkthrough`

Use this skill instead of ordinary slide work when the artifact is a poster rather than a slide deck, or when poster-session behavior matters as much as layout.

## Entry Modes

Pick one mode first.

- `mode: new`
  - Use when the source is a paper, PDF, article, slide deck, abstract, or outline and there is no current poster baseline.
- `mode: iterate`
  - Use when the user already has a poster `.pptx` or poster `.pdf` and wants local edits, reordering, rollback-aware refinement, or export sync.
- `mode: review`
  - Use when the user asks to inspect poster content, layout, export integrity, or presentation readiness without necessarily rebuilding it.

If the user does not specify a mode, infer it from the input:

- source paper or slide deck -> `new`
- existing poster file or revision request -> `iterate`
- wording like `review`, `audit`, `check`, `what is wrong` -> `review`

Optional high-impact knobs only:

- `style`
  - `traditional` is the default
  - `better-poster` is opt-in only, or inherited from a provided template
- `output`
  - default deliverable is `.pptx`
  - sync `.pdf` when the user asks for it, when a print artifact is expected, or when final review needs rendered inspection

## Freeze Constraints First

Before building or editing, lock the poster constraints in this order.

1. Audience
2. Existing baseline or template
3. Size and orientation
4. Display context
5. Style

Rules:

- If a template exists, inherit its size and orientation before proposing changes.
- If a course or printer requirement exists, inherit it before using generic defaults.
- If neither a template nor a hard requirement exists, ask only once whether the poster is mainly `print` or `digital`.
- Do not switch to `better-poster` unless the user explicitly asks for it or the supplied template is already in that style.
- Treat the current `.pptx` poster as the only baseline for edit decisions.
- If the current `.pptx`, an older export, and an authoring source disagree, follow the current `.pptx` for visual truth.

Read [poster-rules.md](./references/poster-rules.md) first.
Use local project examples only when the current poster workspace already provides them.

## Workflow

### New Poster

1. Compress the source into a poster-sized argument.
   - Extract one main claim, a small number of supporting points, and the minimum figures that prove the claim.
   - Remove slide-only filler, repeated background, and figures that do not advance the reader.
2. Map content into poster sections.
   - Prefer a small number of sections with strong headings over many tiny blocks.
   - Keep the reading path obvious from title to conclusion.
3. Build the layout in editable PowerPoint form.
   - Prefer native text boxes, shapes, and simple charts when practical.
   - Reuse source figures before redrawing them.
4. Export and inspect.
   - Render the current state for visual checking.
   - Keep `.pptx` as the canonical source.
5. Audit presentation readiness.
   - Confirm the poster can be explained by pointing at figures rather than reading paragraphs.

### Iterate Existing Poster

1. Treat the current `.pptx` as the only visual baseline.
   - If a newer `.pptx` exists than the matching `.pdf`, treat the `.pdf` as stale until resynced.
   - Do not silently fall back to an older baseline, an earlier export, or a JavaScript authoring source.
2. Freeze user-locked copy before layout work.
   - If the user has manually rewritten a title, summary, bullet, or panel name, preserve that wording by default.
   - Change wording only when the user explicitly asks for a rewrite or confirms that the text can change.
3. Review the density map before changing content.
   - Check where the poster has large blank zones, local congestion, title-logo collisions, narrow tables, and undersized figures.
   - Rebalance spacing and panel sizes before rewriting text.
4. Isolate the requested change.
   - Reorder sections, replace figures, enlarge key evidence, or rebalance whitespace without disturbing unrelated user-approved copy.
5. Keep export truth aligned.
   - If the `.pdf` is supposed to match the latest poster, explicitly resync it after edits.
   - Judge formulas, SVG plots, and screenshot-based tables by the Microsoft PowerPoint native `.pdf` when available.
   - Use Quick Look and other renderers only for rough inspection.
6. Keep the workspace clean when you own the output folder.
   - Keep official artifacts in the root.
   - Move test exports, previews, caches, and lockfiles into `_archive` rather than mixing them with deliverables.

### Review Poster

Review in this order:

1. density balance and whitespace distribution
2. layout hierarchy, alignment, and safety zones
3. figure, table, and formula fit
4. copy selectivity and compression
5. export chain integrity
6. poster-session usability

Primary review findings should focus on:

- large blank regions and local congestion that coexist on the same poster
- narrow or compressed tables that should be widened, stacked, or imported directly
- title safety zones, header balance, and logo collisions
- text walls
- decorative or distracting images
- dark backgrounds and low-readability color choices when not explicitly requested
- unaligned text boxes and inconsistent edges
- missing main takeaway or weak captions
- a poster that only works as a script instead of a conversation aid

## Tooling Decisions

Use the minimum underlying skill that fits the task:

- Use [$slides]($CODEX_HOME/skills/slides/SKILL.md) for normal authoring, substantial layout edits, and editable `.pptx` generation.
- Use [$pptx]($HOME/.local/share/skills/pptx/SKILL.md) when the task is raw template preservation, XML unpacking, or low-level `.pptx` inspection.
- Use [$pdf]($CODEX_HOME/skills/pdf/SKILL.md) for rendered-page inspection and final PDF review.

PowerPoint export rules:

- On macOS, if Microsoft PowerPoint is available and the final `.pdf` is meant to be official, prefer native export over alternate renderers.
- Use [export_powerpoint_pdf.applescript](./scripts/export_powerpoint_pdf.applescript) through `osascript` for native export when appropriate.
- Alternate renderers and screenshots are rough inspection tools only. They do not replace the official `.pdf`.

## Final Checks

Before handing off a poster, confirm all of the following:

- `.pptx` is the latest source of truth
- user-locked copy has not been rewritten without permission
- large blank areas and local congestion have been reviewed together
- headings and figures pass the `30-second scan`
- the poster supports a `3-minute walkthrough`
- figures and captions carry the argument without requiring paragraph reading
- no obvious text wall, distraction image, dark-background default, or misaligned text edge remains
- official `.pdf` status is explicit: synced natively, intentionally absent, or still stale
