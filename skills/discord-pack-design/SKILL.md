---
name: discord-pack-design
description: Designs original Discord server packs as matching visual kits (icon, banner, welcome, info, lines, tickets, giveaways, music, system). Use when the user asks for a Discord pack, بكج ديسكورد, welcome banner, info banner, decorative lines, channel headers, or a full server graphics kit.
---

# Discord Pack Design

Build **original** Discord packs. Never clone third-party characters, logos, or compositions.

Read [sizes.md](sizes.md), [anatomy.md](anatomy.md), and [examples.md](examples.md) when you need specs or recipes. Optional craft notes live in `references/study-notes/` if this repo is the workspace.

If `frontend-design` or `canvas-design` skills are installed, follow them for visual quality. Plan tokens before drawing.

## When this skill applies

- Full pack (بكج كامل)
- Single pack piece: welcome, info, line, ticket, giveaway, music, system, logo, banner
- Matching extras for an existing pack
- Pack presentation sheet (all assets on one mockup)

## Process

1. **Brief** — server name, language (AR/EN/mixed), niche (RP, shop, gaming, Islamic/Ramadan, luxury, anime-adjacent original, etc.), dark or light Discord theme.
2. **Tokens first** — 4–6 named hex colors, 1–2 typefaces, 1 motif family, 1 texture language. Write them down.
3. **DNA lock** — every piece must share: palette, motif, corner language, glow temperature, and the same 3-dot or chrome accent if used.
4. **Export the kit** — PNG with transparency where Discord sits on dark chat. GIF only for lines that must move.
5. **Presentation sheet** (if selling or reviewing) — one 1920×1080 board: icon, banner, welcome, 3 headers, 3 round icons, invite phone mock optional.

If any piece could belong to a different pack, it fails. Recolor is not enough; motif and shape language must match.

## Pack bill of materials

Ship these unless the brief cuts the list:

| Piece | Role in Discord | Default export |
| --- | --- | --- |
| Icon / logo | Server icon, circular crop | 512×512 PNG |
| Banner | Boosted server banner + invite card | 1920×1080 PNG |
| Welcome | `#welcome` image, avatar hole on the left | 1280×720 PNG, transparent |
| Info | Rules / about / rules embed header | ~1500×500 or 3:1 PNG |
| Line | Divider under embeds | ~1400×80 PNG or 800×80 GIF |
| Headers | Info, tickets, giveaway, music, system, shop | ~1000×250–400 PNG |
| Round icons | Ticket, bot, shop, music, settings | 512×512 PNG, circular safe |

Optional: protection/verify, events cover, store catalog, role icons 128×128.

## Non-negotiable craft

- **Dark-chat first.** Black or true transparent outside the graphic. Do not leave a light rectangle around a welcome.
- **Avatar hole.** Welcome graphics reserve a perfect circle on the left (~32–38% of height) with a 4–8px rim. Bots drop the member avatar there.
- **Empty center on info.** Info banners are stages for overlay text, not posters full of copy. Keep the middle 50% quiet.
- **Thin lines.** Height is 50–120px. Ornament on the ends, quiet in the middle, or a continuous motif that still reads at 550px chat width.
- **Circular icon safety.** Keep mark inside a 80% circle. Discord clips to a circle.
- **One motif family.** Lanterns *or* gold fracture *or* silk ribbons *or* geometric lattice — not all at once.
- **Type as a mark.** Server name once, large, high contrast. Subtitle tiny. No AI-default Inter/Roboto. No rainbow gradients unless the brief is neon.
- **Arabic + Latin.** If bilingual, Arabic display face for headlines, Latin for `discord.gg` and `Server`. Align optical, not box.
- **3-dot chrome.** The small three dots on the top edge of info cards is regional pack grammar. Use it as a quiet system mark, not decoration on every asset.
- **No stolen characters.** Do not redraw anime, game, or celebrity art from the study folder. Invent original marks, lighting, and silhouettes.

## Anti-patterns

- Mismatched pack: purple welcome + gold info + cyan line
- Opaque white boxes behind “transparent” welcomes
- Text-heavy info banners that crush when Discord scales them
- Lines taller than 150px
- Emoji as the only identity
- Copying existing marketplace screenshots or another designer’s pack
- Putting the server name on every tiny icon
- Different corner radii / stroke weights across the kit

## Output

Deliver files named:

```
{slug}-icon-512.png
{slug}-banner-1920x1080.png
{slug}-welcome.png
{slug}-info.png
{slug}-line.png
{slug}-header-{channel}.png
{slug}-icon-{ticket|music|system|shop}.png
{slug}-sheet.png
```

Plus a short token block (hex + type + motif) in chat.
