---
name: odin-lesson-html
description: >-
  Use when authoring an interactive, multi-level HTML explainer for an Odin
  curriculum lesson — the rich single-file `.html` pages that live next to a
  lesson's README (like `10-tagged-unions/union-memory-layout.html`). Trigger
  this whenever the user wants to "make a lesson like lesson 10", build a visual
  / interactive walkthrough, a memory-layout diagram, a "levels" deep-dive, or
  port a lesson README into the deep HTML format — even if they don't say
  "HTML". This skill owns the pedagogical arc, the visual/explainability
  techniques, the verify-every-claim-against-a-real-compile discipline, and the
  hard rule that Odin is described as Odin and never through C mental models.
---

# Odin interactive lesson (HTML)

You are building one self-contained HTML page that teaches a single Odin concept
far more deeply than its README does. The reference implementation — the page
this skill is abstracted from — is
`content/domains/odin/vault/lessons/10-tagged-unions/union-memory-layout.html`.
Read it once before your first lesson; it is the gold standard for tone,
density, and craft.

Three things make these pages good, and all three are easy to get wrong:

1. **The arc.** The page climbs through levels, each a different *altitude* on
   the same concept, ordered so each level only makes sense once the one below
   it has landed.
2. **Everything shown is true.** Every byte, size, error string, printed line,
   and "X is faster than Y" is measured from a real compiled Odin program — not
   copied from the README, not recalled from memory. The README is a seed, not
   a spec, and it is sometimes wrong or shallower than what you will show.
3. **It teaches Odin as a self-contained thing — no cross-language comparison
   at all.** There is a strong, constant pull to explain Odin by reaching for
   C / C# / Rust ("in C you'd…", "unlike C#…", "Rust's borrow checker…"). Don't.
   Every concept is explained on its own terms, in Odin's vocabulary. This is
   stricter than "describe Odin correctly" — even an accurate, labeled contrast
   is out, because the comparison is the exact surface where C mental models
   leak in (the classic: describing ordinary indexing as "pointer arithmetic",
   which Odin has no operators for). Stamping this out is non-negotiable.

The rest of this file is the workflow. Three reference files carry the depth —
read them at the steps that point to them:

- `references/visual-techniques.md` — the design system (CSS theme) and the
  catalog of explainability devices (byte strips, toggles, randomized regen,
  "the wrong way drawn", misconception callouts, rhetorical move-naming).
- `references/odin-not-c.md` — the C-ism checklist: each banned framing and its
  correct Odin reframing. **Read this fully before writing prose, every time.**
- `references/verification.md` — how to turn each on-page claim into a real
  claim under `claims/lessons/<slug>/` and run it with the claim harness.
- `assets/lesson-template.html` — a working 4-level skeleton with the full theme
  baked in. Copy it and adapt; don't hand-roll the CSS.

---

## Workflow

Do these in order. The verification and C-ism gates are not a final polish pass —
they shape what you write, so they come *before* the prose, not after.

### 1. Mine the source — but trust nothing yet

Read everything the lesson already has:

- `content/domains/odin/vault/lessons/<slug>/README.md` — the concept, the
  worked example, the "Now break it on purpose" section (gold: these are
  already falsifiable claims), the "Low-level notes" (storage, sizes, dispatch).
- `…/<slug>/main.odin` and `…/<slug>/expected-output.txt` — the canonical
  program and its real output.
- `claims/lessons/<slug>/` — claims that already exist (often the README's
  "break it" experiments are already encoded as `fails`/`panics` claims with
  the *exact verified error strings* — reuse those strings verbatim on the page).

Treat the README as a **starting point, not ground truth**. The HTML goes
deeper, so it will need facts the README never states (exact bytes for *your*
chosen example, the precise slot size, the literal compiler error, a perf
delta). And the README can be stale or inconsistent: the reference union page
deliberately uses a *different* shape set (`Circle/Rectangle/Triangle` →
16-byte slot) than the README's example (12 bytes) — because the author picked
the clearest example for the visual and then **measured that example**. You are
free to pick the clearest example; you are not free to reuse numbers you didn't
measure for it.

One more thing the README will tempt you with: most lesson READMEs carry
cross-language sections ("Leveling with you (if you come from OOP)", "Compared
to C / C# / Rust"). **Do not carry these into the HTML.** When such a section
contains a genuine insight, translate it into a self-contained Odin statement
(e.g. the README's "in C you maintain the tag yourself" becomes "Odin maintains
the tag for you and the type-switch is the only way to read it" — stated as the
Odin fact, with no C in sight). See step 4.

### 2. Find the arc (3–5 levels)

A level is a distinct altitude, not the same point restated louder. Order them
so each becomes meaningful only after the previous. The reference page's spine —
adapt it, don't xerox it:

| Level | The move | Union example |
|------|----------|---------------|
| **What it is** | The concrete mechanism, shown with *real measured data*, ideally interactive. Ground truth before words. | The 16-byte slot; toggle a variant, watch the same bytes change meaning. |
| **Why you'd reach for it** | A real situation where *not* using it is the wrong call — and the inferior alternatives drawn side by side, each with *why* it loses (slower / broken / more code). | A renderer's command buffer: `[dynamic]RenderCommand`. |
| **The cost / the bill** | Every feature has a tax. Show it honestly with measured numbers, then the mitigation. This builds judgment about *when not* to use it. | The slot is sized to the biggest variant; one fat variant taxes all. |
| **The emergent payoff** | The higher-order property that only appears at scale or over time — the "aha" that makes the concept feel powerful, not merely understood. | Exhaustive `switch` = a compile-time to-do list across the whole codebase. |

Adapt to the concept. Not everything has a clean "cost" or "safety" level; some
concepts arc as *mechanism → a sharp gotcha → the idiom that dodges it*. Use 3
levels if a 4th would be padding. The test for each level: **does it change the
reader's altitude, or just repeat the last one?**

Write a one-line thesis for each level before doing anything else. The closing
recap — one clause per level (`L1 … → L2 … → L3 … → L4 …`) — is a strong device;
plan to end with it.

### 3. Gather ground truth — verify *before* you write

For each level, list every factual assertion it will make: every number, byte
value, size/alignment, compiler error string, printed line, and perf claim.
Then, for each one, get the real value from a real compile **before** writing
the prose around it. This ordering matters: prose built on measurements reads
differently from prose you "back-fill" with numbers — and back-filling is how
wrong numbers survive.

Use the claim harness (`references/verification.md` has the full mapping). In
short: write probes under `claims/lessons/<slug>/<name>/`, run
`just claim lessons/<slug>/<name>` (or `just verify-all`), and record what the
machine actually prints. **Note the `lessons/` prefix** — the claim name is
resolved relative to `claims/`, so the harness wants `lessons/06b-pointers/sizes`,
not `06b-pointers/sizes` (the bare form resolves to a nonexistent `tests/` path
and crashes).
- a shown size / byte / value → an `output` claim
- a shown compiler error → a `fails <file> "<substr>"` claim (substr is the
  exact text you'll display)
- a shown runtime crash → a `panics` claim
- "B is faster than A" → a `faster k` claim. **If it comes back INCONCLUSIVE,
  you may not state a speedup** — soften to "comparable" or cut the claim.

If you cannot measure a fact, you cannot show it. Cut it; never invent to fill
the README's gaps.

### 4. Self-contained / C-ism pass on the plan

Before writing a word of prose, read `references/odin-not-c.md` in full and
check your planned framing against it. The cheapest place to kill a comparison
is in the outline, before it's wrapped in three paragraphs. The rule:
**explain every concept on its own terms, in Odin's vocabulary. Do not reference
another language — not C, not C#, not Rust — even as a labeled contrast.** When
you catch yourself about to write "in C you'd…" or "unlike Rust…", stop and ask
what the *Odin* fact underneath is, then state only that. If you're unsure
whether an Odin construct exists or behaves as you'd write it, that's a claim —
send it through step 3.

### 5. Author the HTML

Copy `assets/lesson-template.html`. One `<section>` per level, level-tab nav at
the top. Read `references/visual-techniques.md` and reach for the devices that
fit *this* concept — don't use all of them. Embed the measured data from step 3
directly (the template marks where). Name your rhetorical moves in bold
("**The bill:**", "**The fix:**", "**The emergent payoff:**") so the reader
knows what kind of paragraph they're in. Add a misconception callout for the
confusable neighbor (the reference page's "not the same as `#packed`"). End with
the arc recap and an honest provenance footer.

Write the page to
`content/domains/odin/vault/lessons/<slug>/<concept>-<angle>.html`
(e.g. `union-memory-layout.html`). `vault/lessons/` is LLM-editable.

### 6. Verify the *rendered* page, then C-ism sweep it

Two gates, both on the finished file:

- **Every claim traces to a passing probe.** Re-run the lesson's claims
  (`just verify-all`, or each `just claim lessons/<slug>/<name>`). Then scan the HTML
  for every number, error, and output line and confirm each one has a backing
  claim that passes. A number on the page with no probe behind it is a bug.
- **Self-contained / C-ism sweep.** Re-read the final prose against
  `references/odin-not-c.md`. First, search the text for any other language by
  name (C, C#, C++, Rust, Java, Go, Swift, Haskell) and for tell-tale borrowed
  terms (vtable, OOP, borrow checker, `malloc`, header, `->`) — there should be
  zero. Then check anything near the words pointer, memory, array, allocate,
  cast, string, null for C mental models that snuck in without naming C.

### 7. Self-review checklist

Before calling it done, confirm:

- [ ] Every number / byte / size / error / output on the page is measured by a
      passing claim under `claims/lessons/<slug>/`.
- [ ] No other language is named or alluded to anywhere on the page; every
      concept is explained self-contained, in Odin's own terms.
- [ ] Each level is a genuinely different altitude (not a restatement).
- [ ] The "why you'd reach for it" level shows the inferior alternatives *and*
      why each one loses.
- [ ] The provenance footer claims only what you actually verified.
- [ ] The interactive bits actually work (the level tabs switch; toggles
      re-render; any randomized regen produces varied output). Sanity-check the
      JS by reading it; if a browser is available, open the file.
- [ ] The closing arc recap is present.

---

## What this skill is not

Not a generic web-design or slide-deck tool. These pages are part of a specific
Odin learning substrate, are single self-contained `.html` files (inline
`<style>` and `<script>`, no build step, no external assets or CDNs), and live
under `vault/lessons/`. Keep them that way.
