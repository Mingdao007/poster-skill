# Poster Skill

面向学术海报的可移植工作流 skill，以可编辑 PowerPoint 为主源并附带审查清单。

## 提供内容

- 可安装 skill: [`poster`](./poster)
- 公开 references: [`poster/references/`](./poster/references)
- 辅助脚本: [`poster/scripts/`](./poster/scripts)

## 安装 / 使用

- `Codex App`：从本仓库路径 `poster` 安装
- GitHub 安装目标：
  - repo：`<owner>/poster-skill`
  - path：`poster`
- 安装后重启 `Codex App`，让新 skill 被发现。

## 覆盖范围

- 支持 new、iterate、review 三种 academic poster 模式
- 以 PowerPoint 可编辑源为主的工作流与导出指导
- 提供密度、版式与现场讲解准备度清单

## 触发示例

- `Build a poster from this paper.`
- `Iterate on my current poster .pptx.`
- `Review this poster layout for presentation readiness.`

## 不触发示例

- `Design a normal slide deck.`
- `Do low-level .pptx XML repair only.`
- `Explain the paper without creating a poster.`

## 隐私边界

这个公开仓库只保留可复用、可公开的工作流部分。

- Course-specific worked examples are excluded from the public package.
- The public version keeps only the generic poster rules and export helper.

## 仓库结构

- `poster/`: installable `Codex App` skill
- `poster/references/`: bundled public references
- `poster/scripts/`: bundled public scripts
- `CHANGELOG.md`: release history
- `LICENSE`: `MIT`

English:

- [README.md](./README.md)
