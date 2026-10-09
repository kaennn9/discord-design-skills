# Discord server identity

## Official surfaces

| Surface | Size | Crop |
| --- | --- | --- |
| Server icon | 512×512 export | Circle |
| Server banner (boost) | 1920×1080 | 16:9; mobile invite tighter |
| Invite splash | 1920×1080 | 16:9 |
| Discovery splash | 1920×1080 | 16:9 |
| Event image | 1600×640 | ~2.5:1 |
| Embed color | hex | Matches accent |

## Icon rules

- One symbol. Monogram or abstract. Reads in the server rail.
- Padding 10% inside the square before the circle.
- Avoid photographs. They turn to mud at 48px.
- If the banner has a character or ribbon, the icon is a **distilled** version of that shape, not a zoomed crop that clips a face.

## Banner rules

- Name large, high contrast, optical center.
- Motif in the sides; keep a quieter stage behind type.
- Same light and palette as the icon.
- Assume 16:9 on desktop and a heavier center crop on some invite views.

## Color in the live server

Map identity tokens to Discord:

- Accent → boost/banner vibe, embed sidebar, important role
- Mute → member roles
- Danger → a single admin/mod red, not five reds
- Surface → not controllable in app chrome; graphics must sit on `#313338` and `#2b2d31`

## Channel architecture (visual)

A designed server usually shows graphics in this order:

1. Welcome (image + bot text)
2. Rules / info (info banner + line)
3. Announcements / posts header
4. Ticket header + ticket icon
5. Giveaway / shop / music as needed

The **structure** is UX; the **pictures** are the pack. Do not invent 40 channels of unique art. Repeat DNA.

## Boost vs non-boost

Without boost, the banner does not appear in-app. Still design a banner for invites, listings, and socials. Icon carries the in-app identity.
