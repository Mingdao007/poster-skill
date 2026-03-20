# Poster Skill

Portable academic-poster workflow skill with an editable PowerPoint-first source of truth and review checklist.

## What Ships

- installable skill: [`poster`](./poster)
- bundled public references: [`poster/references/`](./poster/references)
- bundled helper scripts: [`poster/scripts/`](./poster/scripts)

## Install / Use

- `Codex App`: install the skill from this repo path `poster`
- GitHub install target:
  - repo: `<owner>/poster-skill`
  - path: `poster`
- Restart `Codex App` after installation so the new skill is discovered.

## Coverage

- new, iterate, and review modes for academic poster work
- PowerPoint-first editable workflow with export and review guidance
- layout, density, and presentation-readiness checklist for poster sessions

## Trigger Examples

- `Build a poster from this paper.`
- `Iterate on my current poster .pptx.`
- `Review this poster layout for presentation readiness.`

## Non-Trigger Examples

- `Design a normal slide deck.`
- `Do low-level .pptx XML repair only.`
- `Explain the paper without creating a poster.`

## Privacy Boundary

This public repository keeps the workflow generic and reusable.

- Course-specific worked examples are excluded from the public package.
- The public version keeps only the generic poster rules and export helper.

## Repository Layout

- `poster/`: installable `Codex App` skill
- `poster/references/`: bundled public references
- `poster/scripts/`: bundled public scripts
- `CHANGELOG.md`: release history
- `LICENSE`: `MIT`

Chinese:

- [README.zh-CN.md](./README.zh-CN.md)
