# Poster Rules

Use this file as the default checklist for academic poster work.

## Defaults

- Default style: `traditional academic poster`
- Default editable artifact: single-page `.pptx`
- Default posture: poster first, slide deck second
- Default behavior: preserve editability where it helps and reuse existing figures where possible
- Default iteration truth: treat the current `.pptx` as the only visual source of truth

Do not switch to `better-poster` unless the user explicitly asks for it or the provided template already uses it.

## Content Rules

- Reduce the source to one main takeaway and a small number of supporting blocks.
- Keep only figures that prove the main claim or reduce explanation cost.
- Be selective. A poster is not a compressed copy of the whole paper.
- Headings must say what each block is doing, not just name a topic.
- Captions should state the result or meaning, not merely identify the figure.
- Follow academic style and proofread before delivery.

## Copy Ownership Rules

- Freeze user-written titles, summaries, bullets, and panel names by default.
- Treat user-edited wording as locked copy unless the user explicitly asks for a rewrite.
- When text does not fit, change layout, spacing, or panel structure before rewriting the locked copy.

## Layout Rules

- Start layout review by checking density balance, not by counting text lines.
- Identify both large blank regions and local congestion; treat both as layout failures when they coexist.
- Expand dense panels vertically before splitting them into narrow side-by-side cards.
- Give high-information tables full width or main-card placement by default.
- Use narrow cards only for low-density facts, not for heavy academic tables.
- Check unaligned edges of text boxes, uneven gutters, and inconsistent panel heights.
- Reserve a safe title zone before placing logos, department names, or extra header badges.
- Use multiple logos only when the title, author block, and top margin stay visually balanced.
- Keep decorative images out unless they improve orientation or reduce explanation cost.
- Keep dark backgrounds and low-readability colours out unless the user explicitly asks for them.
- Preserve template size and orientation when a template is supplied.

## Formula Workflow

- Treat formulas as supporting visual elements, not the primary driver of the poster layout.
- Use this order by default:
  1. import an existing formula image or screenshot from the paper
  2. reuse a clean formula object or screenshot from the current `.pptx`
  3. use a Microsoft PowerPoint native equation if it renders cleanly
  4. use program-rendered formula artwork only as the last option
- Reduce the number of formulas before shrinking type or breaking panel balance.
- Judge final formula quality from the Microsoft PowerPoint native `.pdf`, not from a rough preview alone.

## Table Workflow

- Treat dense academic tables as import-first assets by default.
- If the paper table is already clear, well-layered, and readable at poster scale, import or crop it before attempting a redraw.
- Redraw a table only when the imported version fails on clarity, hierarchy, or visual fit.
- Promote critical result tables to main-card placement instead of squeezing them into auxiliary corners.
- When multiple tables compete for space, widen or stack them before reducing the font to micro-scale.

## Presentation Rules

Treat the poster as a conversation interface, not a script.

- The poster must support a `30-second scan`.
  - A reader should quickly find the topic, main takeaway, method idea, and result area.
- The poster must support a `3-minute walkthrough`.
  - The presenter should be able to point to figures and explain the story without reading paragraphs.
- The layout should survive random-entry questions.
  - Readers may enter from the problem, figure, method, or conclusion rather than a linear order.

## Export Rules

- `.pptx` is the source of truth.
- If Microsoft PowerPoint native export is available and an official `.pdf` is needed, use it.
- Use the native Microsoft PowerPoint `.pdf` as the final visual judge for formulas, SVG plots, and screenshot-based tables.
- Other renderers are acceptable for rough inspection only.
- Screenshots are temporary debugging aids, not official preview artifacts.

## Iteration Rules

- When editing an existing poster, freeze the current `.pptx` as baseline before large changes.
- If the `.pptx`, an older export, and an authoring source disagree, follow the current `.pptx` for visual truth.
- After significant edits, state whether the `.pdf` is synced or stale.
- When you own the poster workspace, keep only official artifacts in the root and archive test outputs, previews, and lockfiles.

## Review Checklist

Report findings against these categories:

- density balance
- layout hierarchy and safety zones
- figure, table, and formula fit
- figure usefulness
- alignment and spacing
- readability and contrast
- export integrity
- presentation readiness
