---
name: odin-practice-problems
description: >-
  Use when writing practice problems / exercises for the Odin curriculum lessons
  — the hands-on "now go build something" problems a learner solves themselves.
  Trigger whenever the user wants practice problems, exercises, a coding
  challenge, or "something to actually USE this concept on" for one or more
  lessons. These are FUN, beginner (college-101) toy problems — NOT algorithm
  puzzles — that take 10–30 minutes, are organized across windows of consecutive
  lessons so concepts get used together, and are plain markdown files the learner
  solves by hand (no auto-verification, no claims).
---

# Odin practice problems

Write practice problems for the Odin curriculum. The learner reads the lesson,
then reaches for one of these to actually *use* what they just learned. They
solve it themselves in their editor — nothing here is auto-graded.

Four things define a good problem here. Hold all four at once:

1. **Fun, not a chore.** A recognizable little world — a hero's backpack, a deck
   of cards, a goblin dropping loot, a grid of cells that comes alive. The domain
   carries the motivation; the language feature is the satisfying tool you reach
   for to build it. `references/fun-problem-archetypes.md` is a researched catalog
   of ~12 such toys mapped to the concepts they exercise — pull from it.

2. **Never an algorithm puzzle.** This is the hard line. No sorting, no graph
   traversal, no dynamic programming, no "do it in O(n)", no clever-trick
   "gotcha". If the interesting part is *out-thinking a trap* instead of *using
   the feature*, it's the wrong problem. Shuffling is one stdlib call; neighbor-
   counting is local arithmetic; "make change" is a domain task. The feature
   should be the natural, obvious tool — that's what makes it fun.

3. **Concepts get used together, across a window of lessons.** Don't drill each
   lesson in isolation. A problem targets a *window* of consecutive lessons — the
   newest concept is the star, and it pulls in the recent ones so they integrate.
   "Lessons 4–5–6 as one problem, 5–6–7–8 as the next." Mix a few short
   single-lesson warmups with larger combo problems. (See *Sizing & windows*.)

4. **Minimal output — no prose-typing busywork.** Verification is the learner's
   own eyeballs, so keep the output terminal-minimal: `fmt.println(x)`, not
   `fmt.println("The value of x after the operation was:", x)`. Nobody wants to
   type that sentence. Print the bare value / the grid / the count. For visual
   concepts, an **SDL3 window** is the payoff instead (see *SDL3 problems*).

## Output format

Plain markdown, one file per problem (or per window), written to
`content/domains/odin/vault/lessons/practice/`. Name by the lesson window it
covers: `04-05b-deck-of-fate.md`, `06-06c-game-of-life.md`.

Keep files free of YAML frontmatter and `[[wikilinks]]` — they're informal
exercise sheets, and that keeps `doctor` from treating them as blessed vault
pages. Use this shape:

```markdown
# <Fun Title>

**Lessons:** 06 slices · 06b pointers · 06c parameter passing
**Time:** ~20–30 min · **Output:** terminal (ASCII grid)

<2–4 sentences setting up the little world. Make it inviting.>

## Build it
1. <concrete step that forces the starred concept>
2. <step that pulls in a recent concept>
3. <what to print — minimal>

## Make it print
<the bare output shape, e.g. "print the grid as rows of `#`/`.`, one blank line
between generations". No sentences to type.>

## If you're having fun (stretch)
- <an obvious, tempting extension — "add a glider gun", "add a rare-drop tier">
```

Name the Odin features the problem exercises (so the learner knows what they're
practicing), but **never give away the solution** — no reference code. State the
scenario and the constraints; let them write it.

## Sizing & windows

- **1–3 problems per window**, each 10–30 min for a beginner. A window is a
  short run of consecutive lessons; the problem must only use concepts taught up
  to and including that window (don't reach for structs at lesson 05b — they
  arrive at 12; don't need maps before 07c).
- The lesson order (so you can scope windows): 01 hellope · 01b packages · 02
  types/printing · 03 procedures/multi-return · 04 strings/runes · 05 fixed
  arrays · 05b enums/bit-sets · 06 slices · 06b pointers · 06c params · 07
  dynamic arrays · 07b defer · 07c maps · 07d stack/heap · 08 context/allocators
  · 09 arena · 10 tagged unions · 10b distinct · 11 error handling · 12
  structs/SoA · 12b using/proc-groups · 13 procs-as-values · 14 parametric
  polymorphism · 15 foreign bindings · 16 build flags · 17 testing · 18
  hot-reload · 19 search.
- Pick the archetype whose natural shape *needs* the window's concepts (the
  reference file maps these): loot roller for 01–03; card deck for 04–05b; Game
  of Life for 06–06c (slices + pointer-swap + params); RPG inventory for 07–07d
  (dynamic arrays + maps + defer); FSM / vending / text-adventure for tagged
  unions + error handling; gradebook / particle pool for structs + SoA;
  Snake/Pong/gradient for foreign bindings + build flags + hot-reload.

## SDL3 problems

For visual concepts (particles, gradients, a bouncing ball, Snake/Pong),
terminal output undersells the payoff — the point is *watching it*. For those,
the problem renders to an SDL3 window. Two rules:

- **Include the boilerplate.** A beginner can't be expected to write the window
  open / event-pump / present loop. Paste a minimal, working SDL3 skeleton into
  the problem file (window creation, the frame loop, clear/present) and mark the
  one spot where the learner writes the interesting part — "your update + draw
  goes here". They practice the *concept*, not SDL setup.
- **Reserve SDL3 for when the visual is the lesson.** Most problems are
  terminal-minimal. Use SDL3 where motion/color genuinely is the payoff, and for
  the foreign-bindings / hot-reload lessons where SDL is itself the subject.

## What this is not

Not auto-verified — no `claims/`, no `expected.txt`, no harness. The learner
checks their own work. (If a problem happens to align with an existing lesson
claim, fine, but don't build verification for these.) Not algorithm drills. Not
prose-heavy — the joy is in building the toy, not reading or typing paragraphs.

When describing Odin in a problem, use Odin's own terms — same discipline as the
lesson pages: no "this is like C's …" framing.
