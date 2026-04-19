# {{name}}

Karl Zylinski-style hot-reload Odin project, scaffolded by `odin-master new`.

## Layout

- `src/game/` — gameplay code, built as a hot-swappable DLL in dev.
- `src/main_hot_reload.odin` — host process: loads the DLL, polls for changes,
  and hands the in-memory `Game_Memory` pointer back across reloads.
- `src/main_release.odin` — single-binary release path (no DLL).
- `build.py` — cross-platform build orchestrator (Linux/macOS/Windows).
- `justfile` — convenience targets (`just dev`, `just build`, `just clean`).

## Workflow

```sh
just dev                        # one-shot DLL build + run host
python build.py hot             # rebuild just the DLL — host picks it up
just build                      # debug release binary
just build release              # optimized release binary
just build asan                 # AddressSanitizer profile
```

Edit anything in `src/game/`, run `python build.py hot` again, and the host
process will reload within ~16 ms while preserving `Game_Memory`.

## Tracking allocator

The debug build wires `mem.tracking_allocator` so any leak prints on shutdown.
`just build asan` runs ASan; CI gates both per the master spec.
