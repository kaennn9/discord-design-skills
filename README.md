# Discord Design Skills

Cursor / Agent skills for **original** Discord server identity and matching graphic packs (icon, banner, welcome, info, lines, tickets, listings).

Anyone can clone this repo, install the skills, and have their Cursor agent (IDE **or** API/SDK) follow them.

## Skills

| Skill | Use when |
| --- | --- |
| `discord-server-design` | سيرفر، أيقونة، بانر، متجر، فعالية، كرت معرض |
| `discord-pack-design` | بكج كامل، ترحيب، إنفو، خطوط، تذاكر، هيدرز |

## Install

### A. Global on your machine (every project)

**Windows (PowerShell):**

```powershell
git clone https://github.com/YOUR_USER/discord-skills.git
cd discord-skills
.\install.ps1 -Mode user
```

**macOS / Linux:**

```bash
git clone https://github.com/kaennn9/discord-skills.git
cd discord-skills
chmod +x install.sh
./install.sh user
```

This copies skills into `~/.cursor/skills` and `~/.agents/skills`. Restart Cursor.

### B. One project (best for Agent API)

```powershell
.\install.ps1 -Mode project
# or: ./install.sh project
```

Run that **inside the repo the agent will use as `cwd`**. Cursor loads project skills from:

- `.cursor/skills/`
- `.agents/skills/`

### C. Clone this repo as the agent workspace

No extra copy. Point the SDK `local.cwd` (or cloud `repos.url`) at this folder. Skills load automatically.

## Agent API / SDK

Local agent — `cwd` must be this repo (or a project you installed into):

```ts
import { Agent } from "@cursor/sdk";

const agent = await Agent.create({
  apiKey: process.env.CURSOR_API_KEY!,
  model: { id: "composer-2.5" },
  local: { cwd: "/path/to/discord-skills" },
});

await agent.send("اعمل بكج ديسكورد سيرفر فخم اسمه قمر، عربي وإنجليزي");
```

Runnable samples: `examples/cursor-sdk.ts`, `examples/cursor-sdk.py`, `examples/cloud-agent.md`.

API key: [Cursor Dashboard → Integrations](https://cursor.com/dashboard/integrations).

## What you get in a pack

| File | Size |
| --- | --- |
| Icon | 512×512, circular |
| Banner | 1920×1080 |
| Welcome | 1280×720, transparent, avatar hole on the left |
| Info | ~1800×600, quiet center |
| Line | ~1400×80 |
| Headers / round icons | matching DNA |

## GitHub upload

Push **this folder only** (`discord-skills/`). Do **not** upload third-party images from `discord-design/`.

```bash
cd discord-skills
git init -b main
git add .
git commit -m "Add Discord pack and server design skills"
# create a public GitHub repo, then:
git remote add origin https://github.com/kaennn9/discord-skills.git
git push -u origin main
```

## License

MIT. Skills teach original work. Do not copy other servers’ art.
