# Procedural Dungeon Floors

**Lessons:** 08 context & allocators · 09 arena allocator (uses 07 dynamic arrays)
**Time:** ~20–30 min · **Output:** terminal (bare counts + bytes)

A roguelike throws away a whole dungeon floor the instant you take the stairs
down — and builds a fresh one. That's an *arena*: allocate a pile of stuff for
one floor, then free it all in a single stroke and reuse the same memory for the
next floor. You'll watch the bytes go up as a floor fills and drop back to zero
when you descend.

## Build it

1. Set up a `mem.Arena` over a fixed backing buffer and install it as
   `context.allocator` — exactly as in lesson 09. From here on, every allocation
   lands in your arena.
2. Write `build_floor(n: int) -> [dynamic]string` that creates `n` room names
   with `fmt.aprintf("Room %d (%s)", i, theme)` — those strings allocate *into
   the arena* because it's the current `context.allocator`. Return the bag of
   names.
3. In `main`, descend three floors in a loop. For each: build a floor, print its
   room count and how many bytes the arena is now holding, then **reset the
   arena** (`free_all(context.allocator)`) before the next floor.
4. Notice you never `delete` an individual string — the reset reclaims the whole
   floor at once. That's the arena's whole pitch.

## Make it print

Floor number, rooms built, arena bytes in use — then watch the bytes reset:

```
1 8 312
2 5 198
3 11 421
```

(One line per floor; `fmt.println(floor, len(rooms), arena_bytes_used)`.)

## If you're having fun (stretch)

- Give floors a random theme ("Crypt", "Cavern", "Library") and a random room
  count, so each descent feels different.
- Try it *without* the arena (default allocator, `delete` each floor yourself) and
  notice how much more bookkeeping you have to write to avoid leaking.
