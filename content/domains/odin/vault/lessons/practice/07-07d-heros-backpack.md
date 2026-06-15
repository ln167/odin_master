# The Hero's Backpack

**Lessons:** 07 dynamic arrays · 07b defer · 07c maps · 07d stack/heap
**Time:** ~20–30 min · **Output:** terminal (bare counts)

Every RPG has a backpack: it grows as you pick things up, stacks identical items,
and complains when it's full. You'll build one with a growable array and a map —
and clean it up properly, because both of them live on the heap.

## Build it

1. Keep the pickup order in a `[dynamic]string` — the bag, growing with each
   `append`. Right after you make it, `defer delete(bag)` so it's freed no matter
   how the proc exits (lesson 07b — the cleanup lives next to the creation).
2. Keep stack counts in a `map[string]int` — item name → how many you hold.
   `defer delete(counts)` too.
3. Write `pickup(name)` that appends to the bag and bumps the count, and
   `drop(name)` that decrements (and removes the map key when it hits 0).
4. Pick up a handful of items — some duplicates — drop one, then print.

Note where this memory lives (lesson 07d): the `bag` and `counts` *headers* are
local, but their contents are heap allocations from the context allocator —
which is exactly why the `defer delete(...)` matters and a fixed array wouldn't.

## Make it print

The total items carried, then each distinct item with its count — bare:

```
4
Potion 2
Torch 1
Rope 1
```

(`fmt.println(len(bag))`, then loop the map: `fmt.println(name, n)`.)

## If you're having fun (stretch)

- Give the bag a capacity and make `pickup` refuse (return a `bool`) when full.
- Add a `total_value` by also keeping a `map[string]int` of prices, and print the
  gold the bag is worth.
