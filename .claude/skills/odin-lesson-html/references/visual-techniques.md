# Visual & explainability techniques

This is the craft layer — the devices that make the reference page land, and
when to reach for each. Use the ones that fit *this* concept; a page that uses
every device is noise. The guiding principle behind all of them: **show the
real thing, let the reader poke it, and name what they're looking at.**

`assets/lesson-template.html` ships the full design system (the CSS) and working
versions of the core components. Copy it and adapt; this file explains the
*why* so you adapt well.

---

## The design system (theme)

A dark "warm paper" theme, defined once in `:root` CSS variables so the whole
page recolors from one place. The palette carries meaning — keep these roles:

| Variable | Role |
|---|---|
| `--paper` / `--card` | page background / raised panel |
| `--ink` / `--muted` | primary text / secondary text |
| `--accent` (teal) | the live/active/"this is the point" color |
| `--tag` (orange) | the secondary highlight — tags, the named "move", warnings |
| `--bad` (red) | the wrong way, errors, waste |
| `--rule` | hairline borders |
| `--mono` / `--serif` | code & labels / prose |

Two typefaces, two jobs: **serif/sans for prose** (the teaching voice),
**mono for anything mechanical** (code, byte values, kickers, labels, sizes).
The contrast itself is information — mono signals "this is the machine talking."

Structural conventions: a centered `.page` column (~860px max), a `.kicker`
(uppercase mono domain label) above the `h1`, the level-tab nav, then one
`.section` per level (only the active one is `display:block`). Components sit in
`.canvas` cards. It's responsive (the two-column `.cols` collapses on narrow
screens). Everything is inline — one file, no external assets, no build.

---

## Structural devices

**Level tabs.** The top nav is the spine made visible: each button shows
`Level N · <one-line subtitle>` and a short title. Clicking swaps the visible
section. This lets a reader self-pace and re-enter at the altitude they want.
Build the nav from a `LEVELS` array in JS so labels live in one place.

**Section decks.** Each level opens with a `.deck` — one or two sentences that
state the level's thesis and, crucially, *connect back*: "Level 1 was what it
is. Now: the case where **not** using it is the wrong call." The deck is where
you earn the altitude change.

**The closing arc recap.** The last paragraph compresses the whole climb into
one sentence, one clause per level: "L1 one reused chunk + a tag → L2 that
sameness lets mixed commands share one flat array → L3 the slot costs the
biggest variant → L4 the compiler guards every dispatch." This is what the
reader remembers. Always include it.

---

## Showing the truth

**The byte/memory strip.** A grid of cells, one per byte, each labeled with its
index and hex value, colored by region. The legend names the regions. This is
the workhorse for layout concepts (unions, structs, slices, alignment). The
colors must mean something consistent — in the reference: *used now* (accent),
*shared slot idle now* (dim), *tag* (orange), *padding* (hatched). The data is
**measured** (see `verification.md`); the strip just renders it.

**Field spans.** A thin row above the strip bracketing which bytes belong to
which field (`radius` spans 0–3). Makes "these 4 bytes are the radius" literal.

**Proportional bars.** For "how much is wasted" / "how much bigger": a flex row
with a solid "used" bar and a hatched "waste" bar, widths set from real sizes.
Seeing 64 bytes of waste dwarf 4 bytes of need is more convincing than the
numbers alone.

**Real compiler output.** When the point is a compile error or a program's
output, show it in a `<pre>` styled like a terminal, with the error line in
`--bad`. Use the *verified* string (the matching `fails` claim's substring), so
what's on the page is what the compiler actually prints.

**The provenance line.** A small mono `.hint` near the visual ("Real bytes,
measured from a compiled Odin program, little-endian f32") and the footer
("sizes & the error are real compiler output"). Only write these if they're
true — they are a promise, and the verification step is what keeps it.

---

## Making it interactive

Interactivity turns a claim into an experience. The reference uses three forms:

**Toggle / pick.** Buttons that re-render the same component with different data
(pick Circle vs Rectangle vs Triangle → the strip recolors). The insight rides
on the *change*: "the bytes didn't move; their meaning changed." Drive it from a
JS data object keyed by choice, one render function.

**Randomized regen.** A button that regenerates *different* data each press
("record another frame" → a different-length, different-mix command buffer).
This is the device for "you can't predict this at compile time" — making the
reader watch it vary is worth a paragraph of assertion. (Implementation note:
the harness forbids `Math.random()` in *workflow scripts*, but this is page JS
running in the reader's browser — `Math.random()` is fine here.)

**Live recompute.** A toggle that recomputes derived numbers (inline `[64]u8`
vs out-of-line `[]u8` → slot size 68 vs 24, and the "1000-command array" total
recomputes). Show the consequence at scale, not just the unit.

Keep the JS small, vanilla, and inline. No frameworks, no libraries. One data
object + one render function per interactive component is the whole pattern.

---

## Rhetorical devices (how the insights are written)

The prose has a recognizable, effective style. Borrow these moves:

- **Name the move in bold.** Start consequential paragraphs with a labeled lead:
  "**The emergent property:** …", "**The fix:** …", "**The bill:** …", "**Why
  the alternatives are worse**". The reader knows what *kind* of thought is
  coming.
- **Concrete over abstract, always.** "bytes 0–3 are used, 4–11 sit idle";
  "16 KB → 68 KB for a 1000-command array". Reach for the specific number, the
  specific index, the specific scale.
- **The counterfactual.** Show when the feature does *not* earn its keep: "If
  the sequence were always the same fixed five calls, you wouldn't need any of
  this." Defining the boundary is what makes the in-bounds case land.
- **Draw the wrong way.** Don't just say the alternative is worse — render it
  (the scattered-pointers strip with "the CPU jumps for every command") and give
  each alternative its specific failure: *slower* (cache misses), *broken* (lost
  ordering), or *more code, same idea, more bugs*. Describe each alternative
  **structurally and in Odin terms** ("an array of pointers to separately
  allocated objects"), never as "the way language X does it" — see
  `odin-not-c.md`. The page names no other language.
- **The misconception callout.** A `.note` box that pre-empts the confusable
  neighbor: "**not the same as `#packed`** — that removes inter-field padding;
  it does nothing to a union's size." Disambiguating the thing the reader will
  *think* you mean is high-value.
- **Tie up to the general principle.** End a cost discussion by connecting it to
  the bigger idea: "the same 'size is a worst-case tax paid by everyone' lesson
  behind data-oriented layout in general."

The voice is confident, concrete, and a little opinionated — it tells the reader
not just how the feature works but *when to use it and when not to*. That
judgment is the value the README usually doesn't provide.
