---
name: discord-server-design
description: Designs original Discord server identity and listing art: icon, banner, splash, channel system look, store/event presentation. Use when the user asks for Discord server design, سيرفر ديسكورد, server branding, invite look, marketplace cards, stores, or events visuals.
---

# Discord Server Design

Design a **server as a product**: a circular icon people recognize at 48px, a 16:9 banner that still reads on invite, and a channel graphic system that feels like one place. Original work only.

Read [identity.md](identity.md), [marketplace.md](marketplace.md), and [examples.md](examples.md) as needed.

For the graphics kit inside the server, also read `discord-pack-design`. If `frontend-design` and `canvas-design` are installed, follow them for art direction.

## When this skill applies

- New server identity (name, icon, banner, colors, vibe)
- Redesign of an existing server
- Store / shop Discord branding
- Event covers and event listing cards
- Marketplace / portfolio cards for a server (Arabic catalogs: سيرفرات، متاجر، فعاليات، مقاطع)

## Process

1. **Name + niche + audience.** One sentence: who hangs out here and why they stay.
2. **Identity tokens.** 4–6 hex, 1–2 faces, 1 motif, 1 lighting rule. Icon and banner must share them.
3. **Icon first.** If it fails at 48px, the rest of the system is decoration.
4. **Banner second.** Name + motif; mobile invite crop.
5. **Inside-server system.** Welcome, info, lines, headers — hand off to pack skill with the same tokens.
6. **Listing art** if needed. 1920×1080 card: icon + banner pairing, not a screenshot dump.

## Server identity stack

| Layer | Job |
| --- | --- |
| Name | Short, speakable, unique. Latin and/or Arabic. |
| Icon | Circle emblem. No tiny text. |
| Banner | Cinematic 16:9 of the same emblem world. |
| Accent | Role colors, embed color, boost bar cousin of the accent hex. |
| Channel graphics | Pack pieces in the same world. |
| Invite | Splash 1920×1080, same banner language. |

## Listing / marketplace grammar (from study)

Two catalog languages appear in the library:

**Dark metal (Untitled118 series, 1920×1080)**  
Black void, marble hairline cracks, top spotlight, brushed-steel cards, left rail: Servers / Stores / Avatars / Events. Hero is a rounded screen with the banner. Icon + name in a stadium bar.

**Light periwinkle (1015 series, 1920×1080)**  
Lavender wash, Arabic pill nav (`سيرفرات | متاجر | فعاليات | مقاطع`), stacked translucent cards, banner + overlapping circular icon, wordmark on the banner.

When asked for a **catalog card**, pick one language and keep it. When asked for the **server itself**, design icon+banner; the catalog is only packaging.

## Stores vs servers vs events

- **Server:** icon + banner + name. Community identity.
- **Store:** logo-as-product, grid or device mock, shop name (`… Store`). Cooler, more brand-system, less character art.
- **Event / profile pack:** collage of profile mocks + Arabic headline (`افضل بروفايل`) + stacked cards. More editorial.

Do not mix a store-grid with a community banner unless the brief is a shop-server hybrid.

## Craft rules

- Icon and banner are one mark in two crops, not two unrelated artworks.
- Wordmark on the banner: one name, one tiny `Server` / `Store` label. No tracked-out AI eyebrows.
- Arabic headlines on catalog art need a real display face, optical centering, and shadow only if the field is busy.
- Keep Discord UI chrome out of the identity assets (no fake windows unless making a catalog mock).
- Role colors should be tints of the identity accent, not a rainbow.

## Anti-patterns

- Icon is a compressed banner
- Banner is a stretched icon
- Different art style between icon and banner
- Copying another server’s listing art or wordmark
- Putting four screenshots in the banner
- Event cards that hide the date because the collage is too dense

## Output

```
{slug}-icon-512.png
{slug}-banner-1920x1080.png
{slug}-splash-1920x1080.png
{slug}-listing-1920x1080.png   # optional catalog card
tokens.md
```

If the user also wants the inner pack, continue with `discord-pack-design` using the same tokens.
