# Game of Life

**Lessons:** 06 slices · 06b pointers · 06c parameter passing
**Time:** ~25–30 min · **Output:** terminal (ASCII grid)

Three trivial rules, and gliders crawl across your screen. You'll build Conway's
Game of Life on a small grid — and the *real* exercise is the data plumbing: a
grid you pass around as a slice, two buffers you swap by pointer, and an update
proc that writes one into the other.

The rules (given — this is not the puzzle): each cell is alive or dead. For the
next generation, count a cell's 8 neighbors. A live cell with 2 or 3 live
neighbors stays alive, else dies. A dead cell with exactly 3 live neighbors is
born.

## Build it

1. Represent the grid as a `[]bool` slice of length `W*H` (cell `(x,y)` lives at
   index `y*W + x`). Make **two** of them — `current` and `next`.
2. Write `step(src: []bool, dst: []bool, w, h: int)` that reads `src` and writes
   the next generation into `dst`. Passing the grids as slices is the whole point
   of lesson 06 — `step` works on a view, not a copy.
3. After each `step`, advance time by **swapping the two slices** instead of
   copying cells: a `swap` that takes `^[]bool` (pointers to the slice headers)
   and exchanges them. That's lesson 06b/06c — the cheap move is to swap which
   buffer is "current", not to move 400 bools.
4. Seed a **glider** in the corner and run ~6 generations, printing each.

## Make it print

The grid as rows of `#` (alive) and `.` (dead), a blank line between
generations. Bare — no labels:

```
.#....
..#...
###...
......

......
#.#...
.##...
.#....
......
```

## If you're having fun (stretch)

- Wrap the edges (a toroidal grid) so the glider re-enters from the other side.
- Seed a "blinker" and a "block" too, and watch which ones move vs. stay put.
