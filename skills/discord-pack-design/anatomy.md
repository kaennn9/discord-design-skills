# Pack anatomy

How a Discord pack holds together. Patterns distilled from `discord-design/Packs`, `Welcome`, `Info`, `Lines`, `Discord Classic`, and `Packs-paulk`. Recreate the **system**, not the pixels.

## Visual DNA

A pack is one identity split across crops:

1. **Palette** — 1 near-black ground, 1 paper/silk mid, 1 accent, 1 highlight, 1 mute.
2. **Motif** — one family: hanging lanterns, gold fracture, liquid metal ribbons, lattice, smoke veils, mosque silhouette, geometric corner ticks.
3. **Chrome** — optional 3-dot row on the top of info cards; thin 1px rim; same corner radius (often 24–40px on info, full circle on icons).
4. **Light** — one direction. If gold rim-light comes from bottom corners on info, welcome glow matches that Kelvin.
5. **Type** — one display face for the name, one small Latin for `Server` / URL.

## Piece recipes

### Icon

Circular mark. Abstract ribbon, monogram, or emblem. Reads at 48px in the server list. No paragraph, no tiny ornaments.

### Banner

16:9 cinematic. Name large, optical center. Motif in the margins. Soft vignette so the type sits on a quieter field. Same lighting as the icon.

### Welcome

Transparent canvas on Discord dark (`#313338` / `#1e1f22`). Typical layout:

```
[ circle hole ]==== flowing body ===================
                   WELCOME  TO
```

- Circle = avatar target, high-contrast rim.
- Body = ribbon, blade, cloud, or tablet in pack colors.
- Wordmark small and to the right of the circle, not covering the hole.
- No full-bleed background rectangle.

### Info

Ultra-wide tablet. Rounded rect or clipped banner. Decorative **edges** (lanterns, gold cracks, diagonal color slab). Center empty for rules text added in Discord (ProBot, ticket bots, or a second overlay). Three dots on the top edge are common regional grammar.

### Line

A sentence in ornament. Variants:

- End-weighted: motif left and right, thin bar middle
- Continuous: repeating sparkle / vine / pixel rain as GIF
- Fracture: gold/black shards matching the info banner crop

Height 50–120px. Must still look like a line, not a second banner.

### Channel headers

Same width language as info, shorter copy: `INFO`, `TICKETS`, `GIVEAWAY`, `MUSIC`, `SYSTEM`, Arabic equivalents (`القوانين`, `التذاكر`, `البوستات`). One word + tiny URL or icon.

### Function icons

Circle, glow stroke, single glyph (ticket stub, gear, cart, note). Same fill texture as the banner, not a flat Material icon on white.

## Pack sheet (deliverable)

Used in `Packs-paulk`: one artboard selling the kit.

- Dark or brand wash background
- Icon + wordmark lockup
- Banner hero
- 2–3 channel headers
- 3 round icons
- Optional iPhone invite mock
- Designer credit + `discord.gg/...` once, small

This sheet is for clients and marketplaces, not uploaded into Discord channels.

## Matching test

Put icon, banner, welcome, info, line on a `#1e1f22` board at chat scale. If a stranger can tell they are one family in under two seconds, the pack passes.
