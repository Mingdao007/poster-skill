# Poster Skill

可移植的 academic poster workflow skill，以 editable PowerPoint 为 source of truth，并包含 review checklist。

## 适合谁

| 适合使用 | 不适合使用 |
| --- | --- |
| 需要创建、迭代或 review academic poster | 需要普通 slide deck |
| 希望使用 PowerPoint-first editable poster workflow | 只做低层 `.pptx` XML 修复 |
| 需要 density、layout 和 presentation-readiness checks | 只解释论文，不创建 poster |

## 为什么需要它

- 把 editable poster 保持为 source of truth。
- 把 authoring workflow 与 review readiness 绑定。
- 避免 poster 工作漂移成普通 slide design。

## 包含内容

| Component | 作用 |
| --- | --- |
| [`poster`](./poster) | 可安装的 Codex App skill package |
| [`poster/references`](./poster/references) | 随包发布的公开 reference material |
| [`poster/scripts`](./poster/scripts) | 随包发布的 helper scripts |
| [`poster/test-prompts.json`](./poster/test-prompts.json) | trigger / non-trigger 示例 |
| [`CHANGELOG.md`](./CHANGELOG.md) | release history |
| [`LICENSE`](./LICENSE) | license |

## 安装 / 使用

### Codex App

- 从本 repo 的这个路径安装 skill：`poster`
- GitHub install target:
  - repo: `Mingdao007/poster-skill`
  - path: `poster`
- 安装后重启 `Codex App`，让新 skill 被重新发现。

## 工作流

```mermaid
flowchart LR
    A["论文或 deck"] --> B["Poster 触发"]
    B --> C["Editable PPTX"]
    C --> D["Render/export"]
    D --> E["Layout review"]
```

## 覆盖范围

- academic poster 的新建、迭代和 review 模式
- PowerPoint-first editable workflow 以及 export/review guidance
- poster session 所需的 layout、density 和 presentation-readiness checklist

## 预期结果 / 验证

| 检查项 | 预期结果 |
| --- | --- |
| 安装路径 | `poster` |
| GitHub target | `Mingdao007/poster-skill`，path 为 `poster` |
| Skill 入口 | 存在 `poster/SKILL.md` |
| 触发样例 | `poster/test-prompts.json` |
| 隐私检查 | 公开包不包含私人本机路径或 live user state |

## 触发示例

- `Build a poster from this paper.`
- `Iterate on my current poster .pptx.`
- `Review this poster layout for presentation readiness.`

## 不应触发

- `Design a normal slide deck.`
- `Do low-level .pptx XML repair only.`
- `Explain the paper without creating a poster.`

## 隐私边界

这个公开仓库只保留通用、可复用的 workflow。

- course-specific worked examples 不进入公开包。
- 公开版只保留通用 poster rules 和 export helper。

## 仓库结构

| 路径 | 作用 |
| --- | --- |
| [`poster`](./poster) | 可安装的 Codex App skill package |
| [`poster/references`](./poster/references) | 随包发布的公开 reference material |
| [`poster/scripts`](./poster/scripts) | 随包发布的 helper scripts |
| [`poster/test-prompts.json`](./poster/test-prompts.json) | trigger / non-trigger 示例 |
| [`CHANGELOG.md`](./CHANGELOG.md) | release history |
| [`LICENSE`](./LICENSE) | license |

English:

- [README.md](./README.md)
