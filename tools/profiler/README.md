# Profiler walkthrough

Two profilers are wired through one API. Switch which one is active with
a compile flag; zero overhead when neither is on.

## The API

One zone primitive, two ways to name it.

```odin
import "odin_lib:instrument"

foo :: proc() {
    instrument.SCOPE()           // zone named after the enclosing #procedure
    // ...
}

bar :: proc() {
    instrument.SCOPE_NAMED("io") // explicit name
    // ...
}
```

`SCOPE` uses `@(deferred_out)` so the zone closes when the proc returns.
No manual `_end`. Source: `tools/domains/odin/odin_lib/instrument/instrument.odin`.

## Compile flags

```
-define:INSTRUMENT=false   (default; zones compile to nothing)
-define:INSTRUMENT=spall   (Spall: offline trace, view after)
-define:INSTRUMENT=tracy   (Tracy: live attach, view during)
-define:INSTRUMENT=both    (both backends; rarely useful, lets you sanity-check)
```

The `bench` recipe in `justfile` builds with `-define:INSTRUMENT=spall -o:speed`
by default:

```
just bench naive-vs-bresenham
```

## Spall (offline trace)

Spall captures a binary trace to disk and you open it in a viewer afterward.

### Code

In your program's startup:

```odin
import "odin_lib:instrument"

main :: proc() {
    instrument.spall_init("profiles/myapp.spall")
    defer instrument.spall_shutdown()

    instrument.SCOPE_NAMED("main")
    // ...
}
```

Annotate hot procs with `instrument.SCOPE()`. They become zones in the trace.

### Run

```
odin run . -define:INSTRUMENT=spall -o:speed
```

Trace lands at the path you passed to `spall_init`. The `profile-run`
justfile recipe sets `SPALL_OUT` for you:

```
just profile-run build/release/myapp
```

### View

Download Spall viewer from `https://gravitymoth.itch.io/spall` or build the
web build. Drag the `.spall` file in. Click a zone to see its duration; right-
click to focus a stack.

Caveat: zone buffer is 64 KiB (see `spall.odin`). Long runs with very fine-
grained zones will overflow. Move the zone up a level if you see truncation.

## Tracy (live attach)

Tracy is a separate process; your program acts as a client and streams zone
events to it over TCP. View timelines, flamegraphs, statistics live.

### Status

`oskarnp/odin-tracy` is vendored at
`tools/domains/odin/odin_lib/vendor/odin-tracy/` (Tracy itself is a git
submodule under that dir). Two prerequisites before zones actually fire:

**Build the Tracy client library (one-time, per OS).**

On Windows:

```
powershell -ExecutionPolicy Bypass -File tools/profiler/build-tracy.ps1
```

On Linux / macOS, from `tools/domains/odin/odin_lib/vendor/odin-tracy/`:

```
# Linux
c++ -std=c++11 -DTRACY_ENABLE -O2 tracy/public/TracyClient.cpp -shared -fPIC -o tracy.so

# macOS
c++ -stdlib=libc++ -mmacosx-version-min=10.8 -std=c++11 -DTRACY_ENABLE -O2 \
    -dynamiclib tracy/public/TracyClient.cpp -o tracy.dylib
```

Output: `tracy.lib` / `tracy.so` / `tracy.dylib` next to `bindings.odin`.
After the lib exists, build any program with:

```
odin run . -define:INSTRUMENT=tracy
```

`instrument/tracy.odin` foreign-imports the lib via a relative path, so no
`-collection:tracy=...` flag is needed. The lib is `.gitignore`-d.

### Run

```
odin run . -define:INSTRUMENT=tracy -o:speed
```

Start the Tracy server (`Tracy.exe` or `tracy-profiler` on linux) before or
after the program; it connects on TCP 8086 by default. The client's hostname
appears in Tracy's discovery list; double-click to attach.

### When to prefer Tracy over Spall

| Use Spall when | Use Tracy when |
|---|---|
| One-shot trace of a startup or single frame | Watching steady state for minutes |
| Sharing a trace with someone else (file you can email) | You can run the viewer locally |
| You don't want a GUI dep at run time | You need flamegraphs, plot variables, lock contention |

## Pairing with bench

`tools/domains/odin/odin_lib/bench/bench.odin` measures min/median/max/stddev
of repeated runs. Wire it together: bench gives you the headline number, the
profiler tells you where the time went.

A typical bench under `bench/` looks like:

```odin
import "odin_lib:bench"
import "odin_lib:instrument"

main :: proc() {
    instrument.spall_init("profiles/bench.spall")
    defer instrument.spall_shutdown()
    r := bench.run("name", run_once, runs = 1000)
    fmt.println(r)
    bench.write_json(r, "profiles/bench.json")
}

run_once :: proc() {
    instrument.SCOPE()
    // ...
}
```

`bench.run` calls `run_once` N times under `core:time/tick_now`; each call's
zones get recorded by Spall. Open the trace and look at the first vs the
hundredth iteration to spot warm-up effects.
