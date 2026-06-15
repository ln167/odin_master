# The Loot Goblin

**Lessons:** 02 types/printing · 03 procedures & multiple returns (warm-up: 01 hellope)
**Time:** ~10–20 min · **Output:** terminal (bare values)

A goblin you just defeated drops loot. You're going to write the drop table and
the damage roll — the two things every game needs before it's a game. No arrays
yet, no structs yet: just procedures, a few number types, and `core:math/rand`
(one call, `rand.float32()` gives you a number in `0..1`).

## Build it

1. Write `roll_drop` — a procedure that **returns two values**: the item name
   (a `string`) and whether it was a lucky drop (a `bool`). Roll a random number
   and split it into tiers: ~70% `"Rusty Dagger"`, ~25% `"Silver Ring"`, ~5%
   `"Dragon Egg"`. The 5% case is the lucky one.
2. Write `roll_damage` — returns `(total: int, was_crit: bool)`. Roll two
   six-sided dice (`1..6` each), sum them. If both dice came up 6, it's a crit:
   double the total and report `true`.
3. In `main`, defeat the goblin a handful of times: call each proc a few times
   and print what you get.

## Make it print

Bare values only — no sentences to type:

```
Silver Ring false
12 false
Dragon Egg true
24 true
```

(`fmt.println(name, lucky)` and `fmt.println(total, was_crit)` — that's it.)

## If you're having fun (stretch)

- Add a `luck: int` parameter to `roll_drop` that shifts the odds toward the rare
  tiers, and watch a "lucky goblin" drop more Dragon Eggs.
- Return a **third** value from `roll_damage`: the two individual dice, so you can
  see the roll that made the crit.
