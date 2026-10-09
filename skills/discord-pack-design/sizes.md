# Discord pack sizes

Official and observed sizes. Prefer the **export** column. Chat displays narrower; design at export size so downscale stays sharp.

## Platform (Discord)

| Asset | Minimum | Recommended export | Notes |
| --- | --- | --- | --- |
| Server icon | 128×128 | **512×512** | Circular crop. GIF/APNG if animated (boost). |
| Server banner (L2+ boost) | 960×540 | **1920×1080** | 16:9. Keep title in center-safe 70%. |
| Invite splash | — | **1920×1080** | Shown on invite pages. |
| Discovery splash | — | **1920×1080** | 16:9. |
| Scheduled event cover | 800×320 | **1600×640** | 2.5:1. |
| Custom emoji | 32×32 displayed | **128×128** | Transparent PNG. |
| Role icon | — | **64×64 or 128×128** | Circle-safe. |
| Profile banner (user) | — | **680×240** or 1920×480 | Not server pack, sometimes bundled. |

## Chat graphics (observed in `discord-design/`)

Discord chat will show ~550–600px wide. Export larger; keep important marks away from extreme edges.

| Piece | Observed sources | Design ratio | Chat strategy |
| --- | --- | --- | --- |
| Info / rules header | 1500×500, 2400×800, 3264×1020, ~3:1 | **3:1** (e.g. 1800×600) | Quiet center for text overlay |
| Classic wide | 1500×500, 1400×502 | **3:1** | Smoke / abstract fill |
| Welcome | 1280×720, 756×430, 1100×600 | **16:9** or **2:1** | Transparent; left circle |
| Line still | 1439×90, 1006×72, 1920×120 | **~16:1** | Ends loud, middle thin |
| Line GIF | 800×80, 512×75 | **10:1** | Loop, low palette, < 8MB |
| Round function icon | 512×512, 480×480 | **1:1** | Ticket, bot, shop |
| Pack sheet | 1920×1080, 1115×627, 736×414 | **16:9** | Client presentation |

## Safe zones

- **Banner:** keep name inside the middle 70% width and 60% height (mobile invite crops).
- **Icon:** 10% padding from square edges before the circle crop.
- **Welcome circle:** diameter ≈ 0.34–0.40 of canvas height; left padding ≥ 4% of width.
- **Info:** do not put the only ornament dead-center; leave a stage.
- **Line:** never put readable words on a line; it becomes mud at 550px.

## File rules

- PNG-24 + alpha for welcomes, icons, lines.
- JPEG only for full-bleed photographic banners with no transparency.
- GIF for looping lines; keep 8–16 colors if possible.
- sRGB. No CMYK.
- Target under 8MB per upload; prefer under 2MB.
