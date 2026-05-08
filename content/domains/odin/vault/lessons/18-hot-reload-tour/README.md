# Lesson 18 — hot reload tour

## Concept
The "Karl Zylinski hot-reload" pattern keeps a tiny **host** EXE
running, while your gameplay code lives in a **game DLL**. The host
loads the DLL, calls into it each frame, and on rebuild swaps the DLL
without exiting. The game's persistent state lives behind a
`^Game_Memory` pointer that the host owns — re-handed to the new DLL
after each swap.

This is reading lesson, not a typing lesson. The full scaffold is at
`templates/game/`. Walk through it; identify the four moving pieces.

## Setup
```sh
cd templates/game/
ls src/
```

You'll see:

    main_hot_reload.odin   # the host
    main_release.odin      # single-binary release path
    game/
      game.odin            # gameplay code (compiled as DLL in dev)
      game_memory.odin     # the persistent Game_Memory struct + g_mem global
    build.py
    justfile

## Do this — read the four pieces

### 1. The persistent state — `src/game/game_memory.odin`
```odin
package game

import "core:mem"

Game_Memory :: struct {
    frame:       u64,
    counter:     int,
    last_reload: f64,
    allocator:   mem.Allocator,
}

g_mem: ^Game_Memory
```

One global pointer. The host owns the storage; the DLL just has a
pointer to it.

### 2. The DLL exports — `src/game/game.odin`
```odin
@(export) game_init      :: proc()       { g_mem = new(Game_Memory); /* … */ }
@(export) game_update    :: proc() -> bool { /* per-frame logic */ }
@(export) game_should_run :: proc() -> bool { /* loop condition */ }
@(export) game_shutdown  :: proc()       { free(g_mem) }
@(export) game_memory    :: proc() -> rawptr { return g_mem }
@(export) game_memory_size :: proc() -> int  { return size_of(Game_Memory) }
@(export) game_hot_reloaded :: proc(mem_ptr: rawptr) {
    g_mem = (^Game_Memory)(mem_ptr)
}
```

Every callable across the DLL boundary is `@(export)`. `game_memory`
hands the pointer to the host before unload; `game_hot_reloaded`
receives it back into the *new* DLL.

### 3. The host loop — `src/main_hot_reload.odin`
```odin
for api.should_run() {
    api.update()
    new_path, npok := newest_dll()
    if npok && new_path != cur_path {
        ptr := api.memory()                 // 1) capture state pointer
        dynlib.unload_library(api.lib)      // 2) drop the old DLL
        next, ok := load_api(new_path)      // 3) load the new DLL
        if ok {
            api = next
            cur_path = new_path
            api.hot_reloaded(ptr)           // 4) re-attach the state
        }
    }
    time.sleep(16 * time.Millisecond)
}
```

Four steps per swap: capture, unload, load, re-attach.

### 4. The release path — `src/main_release.odin`
```odin
import game "game"

main :: proc() {
    game.game_init_window()
    game.game_init()
    for game.game_should_run() { game.game_update(); /* … */ }
    game.game_shutdown()
    game.game_shutdown_window()
}
```

For shipping, link the game package directly. No DLL, no reload, no
indirection — the same `@(export)` procs are just called normally.

## Now do this
From `templates/game/`:

```sh
just dev
```

You should see something like:

    [{{name}}] init window
    [{{name}}] init: state allocated at 0x…
    [{{name}}] frame=60 counter=60
    [{{name}}] frame=120 counter=120

In a second terminal, edit `src/game/game.odin` — change the print
inside `game_update` — and run `python build.py hot`. Within ~16 ms
the host picks up the new DLL and prints:

    reload: game_<timestamp>.dll
    [{{name}}] reloaded; counter survived = <some N>

The counter survived. That's the whole point — the bytes in
`Game_Memory` were owned by the host, never freed across the swap.

## What just happened
- The host polls a directory for the newest DLL by mtime.
- On change, it grabs the state pointer, unloads, loads, hands the
  pointer back. The new DLL writes through the same `g_mem` pointer
  and continues.
- `dynlib.initialize_symbols(&api, path, "game_", "lib")` populates the
  `Game_API` struct by matching field names to `game_*` exports — same
  binding pattern as `foreign import` (lesson 15) but at *runtime*.

## Low-level interlude
- The `Game_Memory` layout is fixed *for a session*. If you change the
  struct shape, you must restart — the new DLL would interpret old
  bytes incorrectly. Karl-style scaffolds usually add an `api_version`
  field and force a full restart on mismatch.
- Function pointers cached *inside* `Game_Memory` (callbacks, vtables)
  point into the *old* DLL after a swap. Stash plain data there, and
  re-resolve any callbacks in `game_hot_reloaded`.
- `dynlib.unload_library` only succeeds if nothing in the host still
  holds a pointer into the old DLL's `.text`. Keep the API surface
  small and re-grab everything after each load.

## Now break it
1. Add a function-pointer field to `Game_Memory` set in `game_init`.
   Trigger a reload. Call it from `game_update` after the reload — it
   will jump to garbage. Fix it by re-setting the pointer in
   `game_hot_reloaded`.
2. Add a new field to `Game_Memory`. The reload "works" but the new
   field is uninitialized garbage from before — see `last_reload`,
   which is in the struct already. Solve by re-zeroing in
   `game_hot_reloaded` *only* when version changes.
3. Comment out `api.hot_reloaded(ptr)` in the host. Reload. The new DLL
   has `g_mem == nil` and the next `game_update` segfaults. The single
   line you removed is the entire reason the pattern works.

## Find more like this
    just substrate-search --bm25 "hot reload" --top 5
    just substrate-search --bm25 "karl zylinski" --top 5
    just substrate-search --bm25 "dynlib initialize_symbols" --top 5

## Next: `content/domains/odin/vault/lessons/19-search-driven-learning/`
