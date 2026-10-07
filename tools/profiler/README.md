# Profiler walkthrough

One profiler (Tracy) is wired through one API, switched on with
a compile flag; zero overhead when off.

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
-define:INSTRUMENT=tracy   (Tracy: live attach, view during)
```

The `bench` recipe in `justfile` builds with `-o:speed`:

```
just bench naive-vs-bresenham
```

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

## Pairing with bench

`tools/domains/odin/odin_lib/bench/bench.odin` measures min/median/max/stddev
of repeated runs. Wire it together: bench gives you the headline number, the
profiler tells you where the time went.

A typical bench under `bench/` looks like:

```odin
import "odin_lib:bench"
import "odin_lib:instrument"

main :: proc() {
    r := bench.run("name", run_once, runs = 1000)
    fmt.println(r)
    bench.write_json(r, "profiles/bench.json")
}

run_once :: proc() {
    instrument.SCOPE()
    // ...
}
```

`bench.run` calls `run_once` N times under `core:time/tick_now`.
