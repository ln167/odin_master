# Lesson 08 — context and allocators

## Concept
Every Odin proc with the default (`"odin"`) calling convention receives an
implicit `context` value. It carries — among other things — the current
`allocator`, `temp_allocator`, `logger`, and `user_index`. Swap allocators
by overwriting `context.allocator`. The change applies to the rest of the
current scope (and propagates into procs called from there).

## Setup
1. `cd content/domains/odin/vault/content/domains/odin/vault/lessons/08-context-and-allocators`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"
import "core:mem"

leak_some :: proc() {
    _ = make([]int, 4)            // intentionally not deleted
    _ = new(f64)                  // intentionally not freed
}

main :: proc() {
    track: mem.Tracking_Allocator
    mem.tracking_allocator_init(&track, context.allocator)
    context.allocator = mem.tracking_allocator(&track)

    defer {
        if len(track.allocation_map) > 0 {
            fmt.eprintfln("=== %d leak(s) ===", len(track.allocation_map))
            for _, entry in track.allocation_map {
                fmt.eprintfln("  %d bytes @ %v", entry.size, entry.location)
            }
        } else {
            fmt.eprintln("no leaks")
        }
        mem.tracking_allocator_destroy(&track)
    }

    fmt.println("doing work…")
    leak_some()

    // The temp allocator is for short-lived per-frame / per-request work.
    // Its memory is reclaimed all at once with free_all.
    msg := fmt.aprintf("temp string %d", 42, allocator = context.temp_allocator)
    fmt.println(msg)
    free_all(context.temp_allocator)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see** (output order may vary; map iteration is unordered):

       doing work…
       temp string 42
       === 2 leak(s) ===
         32 bytes @ <path>/main.odin:7:9
         8 bytes @ <path>/main.odin:8:9

## What just happened
- `mem.Tracking_Allocator` wraps a *backing* allocator (here the default
  heap), records every allocation in a `map[rawptr]…`, and panics on
  bad frees.
- `context.allocator = mem.tracking_allocator(&track)` swaps the active
  allocator for the rest of `main`. Procs called from `main` inherit it.
- `leak_some` allocates two things and returns without freeing — the
  tracker remembers them. The `defer` block at shutdown prints what's
  still alive.
- `context.temp_allocator` is a separate allocator already on the context
  by default. It's a *scratch arena* — `free_all` releases everything in
  one shot. Use it for strings/buffers that don't outlive the current
  request/frame.

## Low-level interlude
The `context` is passed in a hidden register/argument on every Odin call.
A swap (`context.allocator = ...`) only changes the local copy — the
caller's `context` is untouched once your scope returns. That makes
"use this allocator inside this block" a one-line pattern, not a
parameter you have to thread through every callee.

`mem.Allocator` itself is two pointers: a procedure (`Allocator_Proc`)
and a `data` rawptr. Calling `make([]int, 4)` boils down to
`context.allocator.procedure(.Alloc, ...)`.

## Now break it
1. Free `msg` *after* `free_all(context.temp_allocator)`. The tracker's
   bad-free callback panics with the file:line of the bad free.
2. Wrap `leak_some()` in a block that swaps to a fresh allocator:
   ```odin
   {
       context.allocator = context.temp_allocator
       leak_some()
   }
   free_all(context.temp_allocator)
   ```
   Now there are no leaks reported — the leaks went into temp, and we
   reclaimed temp explicitly. This is the whole point of arenas
   (lesson 09).
3. Build *without* `-debug`. Tracking allocator costs are real; in real
   code the wrapper goes inside `when ODIN_DEBUG { … }` so release builds
   pay nothing.

## Find more like this
    just substrate-search --bm25 "context allocator" --top 5
    just substrate-search --bm25 "tracking allocator" --top 5
    just substrate-search --bm25 "temp_allocator free_all" --top 5

## Next: `content/domains/odin/vault/lessons/09-arena-allocator/`
