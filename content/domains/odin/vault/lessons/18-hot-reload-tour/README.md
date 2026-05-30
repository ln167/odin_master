# Lesson 18 - hot reload tour

## Concept

**Hot reload** is the trick where you edit gameplay code, save, and see
the change in the running game two seconds later, with the world still
spinning, the player still at the same position, and the same enemies
still chasing them. You did not restart anything. The executable kept
running. Only the code changed.

The way you get there is to split your program into two pieces:

- A **host** EXE. Small. Boring. It opens the window, owns the game's
  memory (positions, scores, the whole world state), runs the main
  loop, polls input, and acts as a file watcher.
- A **module** DLL (`.dll` on Windows, `.dylib` on macOS, `.so` on
  Linux). This is your actual gameplay code: `update`, `render`,
  enemy AI, physics. Everything you want to iterate on.

The host loads the DLL, calls its exported procedures every frame, and
watches the DLL file on disk. When the file changes (because you ran
`odin build` again), the host **unloads the old DLL, loads the new
one, and hands the game state pointer back to the new code**. The game
keeps playing. Same memory, new code.

This lesson is not a typing exercise. It is a **tour** of a working
template that lives at `content/domains/odin/templates/game/`. You'll
read four files, run the thing, edit one line of gameplay code, and
watch the host swap your change in without restarting.

---

## Why this matters for game dev

A fast iteration loop is one of the biggest force multipliers in game
development. The argument is something like:

1. Most of game dev is **tuning**. Jump height, damage falloff, camera
   shake intensity, enemy spawn cadence. These are numbers, but the
   right value is a feel question, not a math question. You change
   `0.4` to `0.5`, look at it, change to `0.45`. You do this hundreds
   of times per level.
2. The cost of each tweak is dominated by **how long until you see
   the result**. If "change number, see result" is 10 seconds (rebuild
   + relaunch + click through main menu + load save + walk to the
   spot), you'll tweak twice and ship the first one that doesn't feel
   wrong. If it's 1 second, you'll tweak twenty times and ship the
   one that feels right.
3. The compounding gain over a multi-year project is enormous.

Casey Muratori popularized this pattern in Handmade Hero (2014, the
canonical reference for hot-reloaded C game dev). Jonathan Blow built
The Witness and Braid with similar live-reload tooling. Sebastian
Aaltonen, Karl Zylinski, and most of the indie low-level scene treat
fast iteration as a first-class engineering concern, not a luxury.

The lesson is not "hot reload is a clever hack" but **"iteration speed
is a load-bearing design constraint, and the project architecture
should be shaped around it."**

---

## Leveling with you (if you come from OOP)

C# has Edit-and-Continue (since Visual Studio 2005) and modern .NET
Hot Reload (.NET 6+). TypeScript has Vite HMR, React Fast Refresh,
webpack-dev-server. So "edit code, see it live" is not new to you.

What is new is **who owns the seam**.

In a typical web/IDE hot-reload setup, the *tool* decides what
survives. React Fast Refresh keeps component state if it can match
the new component to the old one, otherwise it nukes. .NET Hot Reload
keeps method bodies but bails on most type-shape changes. The boundary
between "this survives" and "this gets blown away" is opaque, set by
the framework, and brittle in the edge cases that matter most
(generics, async, layout changes).

In the hot-reload pattern below, **you** decide. The architecture is
the API contract:

| You decide                   | The mechanism                       |
|------------------------------|-------------------------------------|
| What state survives a reload | What goes into the `Game_Memory` struct (held by the host) |
| What gets recompiled         | What goes in the DLL package (everything in `src/game/`) |
| When the swap happens        | When the host notices the DLL file mtime change |
| What runs on reload          | The body of `game_hot_reloaded`     |

There is no magic. The framework is six files and 200 lines. When
something breaks (a struct layout change, a stale function pointer)
you can read the entire pipeline in a sitting.

The other big difference: this works in a **release build of a native
game**, not a special dev-only mode. The same `@(export)` procedures
the host calls during dev are called directly by the release entry
point when you ship. There's no "remove the hot-reload scaffolding
before shipping" step.

---

## The architecture

```
   +--------------------------------------+        +----------------------+
   |             HOST .exe                |        |    src/game/*.odin   |
   |  (stable; never restarts in dev)     |        |  (your edits live    |
   |                                      |        |   here)              |
   |  +--------------------------------+  |        +----------+-----------+
   |  | main loop                      |  |                   |
   |  |   for api.should_run() {       |  |              odin build
   |  |     api.update()               |  |             -build-mode:dll
   |  |     poll DLL dir for new file  |  |                   |
   |  |     if new: reload swap        |  |                   v
   |  |   }                            |  |        +----------------------+
   |  +----------------+---------------+  |        |  build/hot_reload/   |
   |                   |                  |        |    game_<ts>.dll     |
   |                   v                  |        +----------+-----------+
   |  +--------------------------------+  |                   |
   |  | dynlib.initialize_symbols(...) |<-+-------------------+
   |  |                                |  |  (host LoadLibrary's it,
   |  | Game_API struct:               |  |   binds the @(export) procs
   |  |   init   :: proc()             |  |   into Game_API fields by name)
   |  |   update :: proc() -> bool     |  |
   |  |   memory :: proc() -> rawptr   |  |
   |  |   hot_reloaded :: proc(rawptr) |  |
   |  |   ... etc                      |  |
   |  +----------------+---------------+  |
   |                   |                  |
   |                   | (each frame:     |
   |                   |  api.update())   |
   |                   v                  |
   |  +--------------------------------+  |
   |  |       PERSISTENT MEMORY        |  |
   |  |                                |  |
   |  |   Game_Memory {                |  |
   |  |     frame:       u64           |  |   <- this is the bytes that
   |  |     counter:     int           |  |      SURVIVE the swap.
   |  |     last_reload: f64           |  |      Allocated by the FIRST
   |  |     allocator:   mem.Allocator |  |      DLL via `new(...)`.
   |  |     player_pos:  Vec3          |  |      Owned by the host
   |  |     enemies:     [dynamic]E    |  |      address-space.
   |  |     ...                        |  |      Never freed across
   |  |   }                            |  |      reloads.
   |  +----------------+---------------+  |
   |                   ^                  |
   |  game_init() did:  g_mem = new(...)  |
   |  game_memory() returns: g_mem        |
   |  game_hot_reloaded(ptr) sets: g_mem = ptr (in the NEW DLL's globals)
   +--------------------------------------+

   The dance, four steps per swap:

     1. ptr := api.memory()             -- ask old DLL for the state pointer
     2. dynlib.unload_library(api.lib)  -- FreeLibrary the old DLL
     3. api = load_api(new_path)        -- LoadLibrary the new DLL, re-bind procs
     4. api.hot_reloaded(ptr)           -- hand the pointer to the new DLL
                                           which writes it into its own g_mem global
```

The thing that "carries" state across the swap is just an address. An
8-byte number. Both DLLs are built against the same `Game_Memory`
struct, so when the new DLL dereferences `g_mem.counter` it reads the
same byte offset that the old DLL was writing to. That's the whole
trick. The bytes never moved; only the code that interprets them did.

---

## What lives in the host (stable) vs the module (hot)

| Concern                          | Lives in HOST .exe                   | Lives in MODULE DLL                  |
|----------------------------------|--------------------------------------|--------------------------------------|
| Main loop (`for should_run()`)   | Yes                                  |                                      |
| Window creation, input polling   | Yes (in a real project; the template stubs it) |                            |
| The persistent memory allocation | Yes (held in host address space)     |                                      |
| DLL loader, file watcher         | Yes                                  |                                      |
| The `Game_API` struct of fn ptrs | Yes (gets re-bound each reload)      |                                      |
| `update`, `render`, gameplay     |                                      | Yes (the whole point)                |
| Enemy AI, physics, tuning consts |                                      | Yes                                  |
| The `Game_Memory` struct *type*  | Both (same definition, both must match) | Both                              |
| `g_mem: ^Game_Memory` global     |                                      | Yes (a pointer into host memory)     |

The rule of thumb: anything you want to iterate on quickly goes in the
DLL. Anything that's annoying to lose state for, or that talks to the
operating system at startup, stays in the host.

---

## Tour of the template

Open `content/domains/odin/templates/game/`. There are four files you
need to read in this order. They're short. The whole project is under
300 lines.

### File 1: `src/game/game_memory.odin` (the persistent state)

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

That's the whole file. Two things to notice:

1. `Game_Memory` is a plain struct. Whatever fields you put in here
   are what survives a reload. In a real game this is where you'd put
   `player_pos`, `world: ^World`, `entities: [dynamic]Entity`, etc.
2. `g_mem` is a *pointer*, not a value. The actual bytes live in the
   host's heap. Every DLL we ever load will have its own `g_mem`
   global, and we're going to point all of them at the same address.

### File 2: `src/game/game.odin` (the DLL exports)

The procedures the host calls. Each one is marked `@(export)`, which
tells the linker "make this symbol visible from outside the DLL":

```odin
@(export) game_init_window     :: proc()                  { /* open window */ }
@(export) game_init            :: proc()                  { g_mem = new(Game_Memory) }
@(export) game_update          :: proc() -> bool          { g_mem.frame += 1; ... }
@(export) game_should_run      :: proc() -> bool          { return g_mem.frame < 600 }
@(export) game_shutdown        :: proc()                  { free(g_mem) }
@(export) game_shutdown_window :: proc()                  { /* close window */ }

@(export) game_memory          :: proc() -> rawptr        { return g_mem }
@(export) game_memory_size     :: proc() -> int           { return size_of(Game_Memory) }
@(export) game_hot_reloaded    :: proc(mem_ptr: rawptr)   { g_mem = (^Game_Memory)(mem_ptr) }
```

The first six are normal "engine lifecycle" procs. The last three are
the **reload contract**:

- `game_memory()` lets the host ask the old DLL "where is your state
  pointer?" so the host can grab it before unloading.
- `game_memory_size()` lets the host sanity-check that the new DLL
  agrees on the struct's size. If not, the bytes wouldn't line up.
- `game_hot_reloaded(ptr)` is how the host hands the pointer to the
  new DLL after loading it. The new DLL writes it into its own `g_mem`
  global. From this point on, `g_mem.counter += 1` inside the new DLL
  writes to the *same memory* the old DLL was writing to.

### File 3: `src/main_hot_reload.odin` (the host loop)

This is the only nontrivial file. The relevant chunk:

```odin
Game_API :: struct {
    init_window:  proc(),
    init:         proc(),
    update:       proc() -> bool,
    should_run:   proc() -> bool,
    memory:       proc() -> rawptr,
    hot_reloaded: proc(rawptr),
    // ... more
    lib:   dynlib.Library,
    mtime: time.Time,
}

load_api :: proc(path: string) -> (api: Game_API, ok: bool) {
    count, lok := dynlib.initialize_symbols(&api, path, "game_", "lib")
    if !lok || count == 0 { return {}, false }
    mt, _ := os.last_write_time_by_name(path)
    api.mtime = mt
    return api, true
}

main :: proc() {
    cur_path, _ := newest_dll()
    api, _ := load_api(cur_path)
    api.init_window()
    api.init()

    for api.should_run() {
        api.update()
        new_path, npok := newest_dll()
        if npok && new_path != cur_path {
            ptr := api.memory()                    // 1. capture
            dynlib.unload_library(api.lib)         // 2. unload
            next, ok := load_api(new_path)         // 3. load
            if ok {
                api = next
                cur_path = new_path
                api.hot_reloaded(ptr)              // 4. re-attach
            }
        }
        time.sleep(16 * time.Millisecond)
    }
    api.shutdown()
    api.shutdown_window()
}
```

The interesting line is `dynlib.initialize_symbols(&api, path,
"game_", "lib")`. That call:

1. Opens the DLL with `LoadLibraryW` (Windows) or `dlopen` (POSIX).
   Stores the handle in the `lib` field of the struct (because we
   passed `"lib"` as the handle field name).
2. Walks the fields of `Game_API`. For each one, prepends the prefix
   `"game_"` to the field name and does `GetProcAddress` / `dlsym`
   for that symbol. So the `update` field gets bound to the exported
   symbol `game_update`. The `memory` field to `game_memory`. Etc.
3. Returns `(count, ok)` where `count` is how many fields it
   successfully resolved.

This is the **same name-driven binding pattern as `foreign import`
(lesson 15), but happening at runtime instead of link-time.** The
prefix convention lets you name DLL exports verbosely (`game_update`)
while keeping the host-side struct field names short (`update`).

### File 4: `src/main_release.odin` (the shipping path)

```odin
package main

import game "game"

main :: proc() {
    game.game_init_window()
    game.game_init()
    for game.game_should_run() {
        game.game_update()
        time.sleep(16 * time.Millisecond)
    }
    game.game_shutdown()
    game.game_shutdown_window()
}
```

When you ship, you don't want a hot-reload loop, a DLL, or a file
watcher. You want one EXE that calls into the game code directly.
This file is that. The exported procs become normal package-scoped
calls. No `dynlib`, no `Game_API`, no reload dance.

This is why the `@(export)` annotations cost nothing at release: the
linker still treats those procedures normally; the annotation only
matters when they're built as a DLL.

### Bonus file: `build.py`

The orchestrator. Three subcommands:

- `python build.py hot` builds *just the DLL* into `build/hot_reload/
  game_<unix_timestamp>.dll`. The timestamp in the filename is how the
  host distinguishes "new DLL" from "the one I already loaded". If the
  EXE isn't built yet, it builds that too.
- `python build.py release [--profile debug|release|asan]` builds the
  single-binary release path with the given optimization profile.
- `python build.py clean` nukes `build/`.

The Odin invocation for the DLL is:

```
odin build src/game -build-mode:dll -debug -out:build/hot_reload/game_<ts>.dll -define:HOT_RELOAD=true
```

`-build-mode:dll` is the bit that tells Odin "emit a shared library
instead of an executable". On Windows it produces a `.dll` plus an
import `.lib` and a `.pdb`. On macOS, a `.dylib`. On Linux, a `.so`.

---

## How to run it

From `content/domains/odin/templates/game/`:

```sh
just dev                 # equivalent to: python build.py hot, then run the host EXE
```

You should see:

```
ready
[{{name}}] init window
[{{name}}] init: state allocated at 0x1d4a2f08000
[{{name}}] frame=60 counter=60
[{{name}}] frame=120 counter=120
[{{name}}] frame=180 counter=180
```

Now open a second terminal, edit `src/game/game.odin`, change the
`fmt.printfln` inside `game_update` (say, prepend `"HOT: "`), save,
and from that second terminal run:

```sh
python build.py hot
```

Within ~16 ms the host notices the new `game_<newer-timestamp>.dll`
in `build/hot_reload/`, runs the four-step swap, and you'll see:

```
[{{name}}] frame=240 counter=240
reload: game_1776628996.dll
[{{name}}] reloaded; counter survived = 240
HOT: [{{name}}] frame=300 counter=300
HOT: [{{name}}] frame=360 counter=360
```

The counter is still climbing from where it was. The host never
restarted. The window (in a real project) never closed. You just
edited running gameplay code.

---

## What CAN break on reload

This is where the abstraction is leaky, and where the discipline lives.

### 1. Function pointers into the old DLL go dead

If you stored a `proc()` field in `Game_Memory` (a callback, a virtual
dispatch table, an event handler), that pointer points at a byte
inside the **old DLL's `.text` segment**. After `unload_library` the
OS unmaps those pages. Calling through the pointer jumps to garbage
and segfaults.

Fix: don't store proc pointers in `Game_Memory` if you can avoid it.
If you must, re-resolve them in `game_hot_reloaded` after the swap.

### 2. Struct layout changes silently misinterpret memory

The bytes in `Game_Memory` were laid out by the old DLL. If you add a
field, reorder fields, change a field's type, or change anything
upstream that affects size or alignment, the new DLL will read those
bytes through a different schema. `counter` might land on what used to
be `frame`. Things go subtly wrong (numbers don't match) or bluntly
wrong (segfault on the first dereference of a now-misaligned pointer).

There are three mitigations, in increasing order of robustness:

- **Manual discipline.** Don't change `Game_Memory` shape during a
  session. Add new state, but only at the end, and only initialize it
  in `game_hot_reloaded` to a safe zero.
- **Versioning.** Add an `api_version: int` field. Bump it on every
  layout change. Have `game_hot_reloaded` check the version; if it
  doesn't match, refuse the reload (`force_restart` returns true).
- **Migration code.** Have `game_hot_reloaded` know how to convert
  v3 layout to v4 layout. Pays off in a long-lived project.

### 3. Enum reordering changes value-to-byte mapping

```odin
Element :: enum { Fire, Ice, Lightning, Physical }     // old
Element :: enum { Lightning, Fire, Ice, Physical }     // new (REORDERED)
```

The byte `1` used to mean `.Ice`. Now it means `.Fire`. Anything
stored as `Element` in `Game_Memory` is now wrong. The compiler can't
warn you; both DLLs compiled fine.

Fix: append new enum values; never reorder. Explicit integer values
(`Fire = 1, Ice = 2`) make this rule self-documenting.

### 4. Global state inside the DLL evaporates

Any `g_*` variable in the DLL package that isn't `g_mem` (the pointer
into host memory) is **owned by the DLL** and dies on unload. The new
DLL's copy of that global starts uninitialized.

Fix: don't put session state in DLL globals. Either put it in
`Game_Memory` (so it lives in host memory) or accept that it resets
on every reload (sometimes that's fine; debug-overlay toggles, for
example).

---

## What CAN'T break (the goal)

If you follow the discipline above (no proc pointers in state, stable
struct layout, append-only enums, no DLL-side session globals), then:

- All plain data in `Game_Memory` survives: positions, scores, health,
  inventory, the world arena, entity arrays.
- The window stays open. The OS resources owned by the host (window
  handle, GPU context, audio device) are untouched by the DLL swap.
- The framerate doesn't hiccup beyond the single frame the swap
  happens on.

You get to keep playing. You change a tuning value, your character
keeps jumping but now jumps higher. You fix an enemy AI bug, the
enemy already on screen immediately starts behaving correctly. The
loop time from "noticed a problem" to "verified the fix" drops to
seconds.

That's the payoff.

---

## Now break it on purpose

After the template is running, try each of these in turn so you
internalize the failure modes:

1. **Stale function pointer.** Add a `tick: proc()` field to
   `Game_Memory`. In `game_init`, set it to a local proc. In
   `game_update`, call `g_mem.tick()`. Run, trigger a reload, watch it
   crash. Then fix it: re-assign `g_mem.tick` inside
   `game_hot_reloaded`.

2. **Struct layout change.** Add a new field to `Game_Memory` (say,
   `score: int`). Reload. The field is uninitialized garbage left over
   from whatever bytes were sitting there before. Print it; observe.
   Now solve it: bump an `api_version` field and re-zero new fields
   inside `game_hot_reloaded` when the version mismatches.

3. **Comment out the re-attach.** Remove the `api.hot_reloaded(ptr)`
   line from the host loop. Reload. The new DLL's `g_mem` is `nil`
   because the new DLL was never told where the state lives. The next
   `game_update` segfaults dereferencing `nil`. That one line is the
   entire reason the pattern works.

4. **Reorder the enum.** If you've added an `Element` enum used by
   `Game_Memory`, reorder its values, recompile the DLL, reload. The
   stored enum values now decode to the wrong variants.

---

## Low-level notes

- `dynlib.initialize_symbols(&api, path, prefix, handle_field)` is
  declared in `core:dynlib`. On Windows it calls `LoadLibraryW` +
  `GetProcAddress`. On POSIX, `dlopen` + `dlsym`. The Odin core
  library wraps the platform difference; you don't write `when
  ODIN_OS == .Windows` branches.
- `dynlib.unload_library` is `FreeLibrary` / `dlclose`. It only really
  unmaps the pages when the reference count hits zero. If the host
  still holds a function pointer into the DLL anywhere (a callback
  registered with the OS, a goroutine running DLL code), the unload
  can fail silently and the new DLL gets loaded over the top.
- The host poll interval (`time.sleep(16 * time.Millisecond)`) doubles
  as the frame budget. In a real renderer this is replaced by
  vsync / swapchain present.
- DLL filename includes the unix timestamp (`game_1776628996.dll`)
  for two reasons: it's a cheap monotonic ID for the host to detect
  "new file", and it sidesteps the Windows quirk where a loaded DLL
  is held with a sharing lock and can't be overwritten by the next
  build. New build, new filename, no file conflict.
- `-build-mode:dll` is the Odin compiler flag that switches the
  output from EXE to shared library. The release path uses the
  default (EXE) build mode.
- On Windows you'll also see `.pdb` and `.lib` files alongside each
  `.dll`. The `.pdb` is the debug info (used by your debugger). The
  `.lib` is the import library (used at link time by code that wants
  to statically import the DLL; we don't use it here because we're
  loading dynamically).

---

## Next: `19-search-driven-learning/`

The next lesson steps out of the language and into meta-skills:
how to navigate the Odin documentation, the standard library source,
and community code when you have a question this curriculum hasn't
covered. The skill of finding the answer is at least as load-bearing
as the answers themselves.
