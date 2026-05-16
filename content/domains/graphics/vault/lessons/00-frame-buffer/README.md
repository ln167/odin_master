# Lesson graphics/00 - frame buffer

## Tasks

- [ ] TODO 1: allocate `pixels: []u32` with WIDTH * HEIGHT entries.
- [ ] TODO 2: fill the entire buffer with a background color.
- [ ] TODO 3: write a single white pixel at (100, 100).
- [ ] TODO 4: write a horizontal red line from (50, 200) to (750, 200).
- [ ] Run, open `out.ppm`, verify visually.
- [ ] Do the "Now break it" exercises.

## Tools to use here

- `<leader>or` — run the current `.odin` buffer
- `<leader>oq "framebuffer pixel format"` — look up byte order if you forget
- `just verify lesson-00-frame-buffer` — confirm your TODOs match the reference
- `<leader>oH` — open the next lesson when done

## Concept

A frame buffer is a flat block of memory where each element is one pixel. The
GPU/screen reads from it; you write to it. That is it. Every triangle you have
ever seen on a screen ended up here as a `u32` color stored at some
`pixels[y * width + x]`.

This lesson does the smallest possible thing: allocate a `[]u32`, color a few
pixels, dump to a viewable file. No window, no present loop, no SDL3. The
"present loop" half (taking this same buffer and uploading it to a streaming
texture every frame) is set-once scaffolding and lives in `lab/` already; it
is admin work, not lesson content.

The reps you are after here:

1. **Pixel format.** A `u32` packs four bytes. The byte order matters
   (RGBA8888 vs ARGB8888 vs BGRA8888). Wrong order means wrong colors,
   silently. You should be able to write a pixel and predict its color
   without running the program.
2. **Indexing math.** `pixels[y * width + x]`. Off-by-one and y-flip bugs
   are the entire reason debug-by-PPM-dump is faster than debug-by-window.
3. **Bounds.** Writing `pixels[1_000_000]` on a 800x600 buffer is a memory
   stomp, not an error message. You will get good at adding bounds checks
   reflexively.

Sources: tinyrenderer wiki "Lesson 0" (Sokolov), Sanglard "Game Engine Black
Book: Wolfenstein 3D" chapter on the VGA framebuffer.

## Setup

1. `cd content/domains/graphics/vault/lessons/00-frame-buffer`
2. Open `main.odin` in your editor. It's a skeleton with TODOs.

## Do this

You are filling in the body of `main`. The skeleton gives you:

- Width and height constants.
- A `pixels: []u32` slice allocated on the heap.
- A `dump_ppm` proc you do NOT need to read carefully (it writes the buffer
  out as a P6 binary PPM, which most image viewers can open).

Your job:

1. Allocate the pixel slice. (`make([]u32, WIDTH * HEIGHT)`)
2. Fill the entire buffer with a background color (for example, dark blue).
3. Write a single white pixel at `(100, 100)`.
4. Write a horizontal red line from `(50, 200)` to `(750, 200)`.
5. Call `dump_ppm("out.ppm", pixels, WIDTH, HEIGHT)`.

Pick the pixel format yourself. Do not look it up. Decide whether you are
treating the `u32` as `0xRRGGBBAA`, `0xAARRGGBB`, or `0xAABBGGRR` and stick
to one. When the colors come out wrong (and they will), that is the lesson.

## Run

    odin run main.odin -file

You should see no output. There should be a new `out.ppm` in the current
directory. Open it in any image viewer (Windows Photos, Preview, GIMP).

## What to verify visually

- Background is the color you picked.
- The single white pixel is at (100, 100). If the y axis is "wrong" (you
  expected top-down but got bottom-up, or vice versa), note which convention
  PPM uses and which you assumed. They might disagree.
- The red line is horizontal at y=200 and 700 pixels wide. If it is the
  wrong color, your pixel format is wrong; pick a different byte order and
  re-run.

## Now break it

1. Change the background fill to write `pixels[y * WIDTH + x] = 0` for
   `y in 0..<HEIGHT_PLUS_ONE` (i.e., one row past the end). What happens?
   Bounds-checked builds will panic. Release builds will silently corrupt
   memory after the buffer.
2. Swap `y * WIDTH + x` for `x * WIDTH + y`. The line and pixel will land
   in surprising places. Find the relationship between the two indexings.
3. Change `WIDTH` from 800 to 801 but leave the allocation at
   `WIDTH * HEIGHT`. Where does the corruption show up first?

## Why no window?

Because adding SDL3 setup adds 50 lines of code that have nothing to do with
the framebuffer concept. The whole point of lesson 00 is the *buffer*.
`lab/src/game/` already has a present loop that uploads a buffer like this
to a streaming texture every frame; once you understand the buffer half,
the present-loop half is "call SDL_LockTexture, memcpy, SDL_UnlockTexture"
and you move on.

## Find more like this

    just substrate-search --bm25 "framebuffer pixel" --top 5

Tier-1 source for this lesson is mirrored at
`content/domains/graphics/source/raw/tier1-authoritative/tinyrenderer/`
(once the html_mirror fetcher runs); for now, the canonical reference is
https://github.com/ssloy/tinyrenderer/wiki/Lesson-0-getting-started.

## Next: `01-vectors-and-matrices/`
