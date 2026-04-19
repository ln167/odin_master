---
title: Odin community workflows + project starts + best-practice setups (April 2026)
date: 2026-04-19
agent: general-purpose research subagent
prompt_summary: |
  How the Odin community actually starts and runs projects in 2026.
  Specifically: the "new project" workflow, hot reload pattern, build
  wrappers, editor setups beyond bare ols, dependency management in
  practice, testing, CI, profiling, formatting, prior-art templates,
  template update mechanisms, and indexable doc resources.
status: raw agent output (unedited)
---

# Odin Programming Language: How the Community Builds in April 2026

A research dump for designing an Odin master template. All claims are sourced; URLs inline so they can be audited and re-fetched.

## A. The "new Odin project" workflow in 2026

### Established pattern

There is no scaffolder. There is no `odin init`. The community workflow for a new project is:

1. **Install the compiler** (one of):
   - **Build from source** — the canonical method endorsed by the docs (https://odin-lang.org/docs/install/). Clone `git clone https://github.com/odin-lang/Odin`, then on Linux/macOS run `make release-native`, on Windows run `build.bat release` from an `x64 Native Tools` prompt. Updates: `git pull && make release-native`.
   - **Pre-compiled monthly release** — `dev-YYYY-MM` zips at https://github.com/odin-lang/Odin/releases (latest as of this report: `dev-2026-04`).
   - **Nightly** — https://odin-lang.org/docs/nightly/, produced by the cron `0 20 * * *` job in `Odin/.github/workflows/nightly.yml`.
   - **`asdf` plugin** — https://github.com/jtakakura/asdf-odin (`asdf install odin latest`).
   - **Repology** lists distro packages: https://repology.org/project/odin-lang/versions.
   - There is **no Homebrew formula in the official docs path** — Karl's beginner tutorial says "build from source on Mac/Linux" (https://zylinski.se/posts/gamedev-for-beginners-using-odin-and-raylib-1/).
   - `pkgx` and `mise` work via the asdf plugin but aren't community-standard.
   - On Windows, **PortableBuildTools** (https://github.com/Data-Oriented-House/PortableBuildTools) is the consensus way to install MSVC linker + Windows SDK without the full Visual Studio installer.

2. **Make a folder, drop in a `.odin` file, run `odin run .`**. Karl's beginner tutorial uses literally this minimum (https://zylinski.se/posts/gamedev-for-beginners-using-odin-and-raylib-1/):
   ```odin
   package game
   import rl "vendor:raylib"
   main :: proc() {
     rl.InitWindow(1280, 720, "My First Game")
     for !rl.WindowShouldClose() {
       rl.BeginDrawing(); rl.ClearBackground(rl.BLUE); rl.EndDrawing()
     }
     rl.CloseWindow()
   }
   ```
   Then `cd my_first_game && odin run .`.

3. **Editor**: Sublime Text is what Karl recommends to absolute beginners; the Odin discord and forum lean Sublime/VSCode/Neovim with `ols` (https://github.com/DanielGavin/ols).

4. **Day-1 files in serious projects** (synthesised from `karl-zylinski/odin-raylib-hot-reload-game-template`, `FourteenBrush/odin-template`, `RednibCoding/Odin-Starter`):
   - `main.odin` (or `source/` directory)
   - `ols.json`
   - `odinfmt.json`
   - `.gitignore`
   - `README.md`
   - `LICENSE`
   - `build_*.sh` / `build_*.bat` (or `Makefile` / `build.py`)
   - `.vscode/` or `project.sublime-project`
   - `.github/workflows/build.yml`

5. **External libraries**: There is no package manager. The community uses one of:
   - **vendored copy** in `libs/` or `shared/` directory (Bill's recommendation — https://forum.odin-lang.org/t/dealing-with-dependencies/1676)
   - **Git submodule** in a `libs/` folder, mapped via `-collection:libs=libs` and imported as `import "libs:foo"`
   - **Odyn** (https://forum.odin-lang.org/t/odyn-reproducible-vendoring-tool-for-odin-v0-1-0/1702) — newest tool, runs `odyn get user/repo`, writes `Odyn.lock`, deps live in `odyn_deps/`. macOS support landed in v0.2.

### Recommendations for our template
- **Adopt verbatim**: Karl's `source/` + `assets/` + `build_*` script layout.
- **Wrap**: provide both a `justfile` AND the underlying scripts (don't lock users into `just`).
- **Improve**: ship a `tools/install_odin.sh` that supports build-from-source, asdf, and binary release with one flag, and `tools/update_odin.sh` for `git pull && make release-native` or asdf bump.

## B. Hot-reload pattern

### Established pattern

Karl Zylinski's `odin-raylib-hot-reload-game-template` (https://github.com/karl-zylinski/odin-raylib-hot-reload-game-template) is **the canonical implementation** — copied/modified by Solar Storm, referenced by the Odin showcase, recommended in nearly every "how do I structure a game" thread.

**Architecture**: split into platform/host (`source/main_hot_reload/main_hot_reload.odin`) + game DLL (`source/game.odin`).

**Game_API struct** (from the template):
```odin
Game_API :: struct {
  lib: dynlib.Library,
  init_window, init, update, shutdown, shutdown_window: proc(),
  should_run: proc() -> bool,
  memory: proc() -> rawptr,
  memory_size: proc() -> int,
  hot_reloaded: proc(mem: rawptr),
  force_reload, force_restart: proc() -> bool,
  modification_time: time.Time,
  api_version: int,
}
```

**Game DLL exports** (`@(export)`): `game_init_window`, `game_init`, `game_update`, `game_should_run`, `game_shutdown`, `game_shutdown_window`, `game_memory`, `game_memory_size`, `game_hot_reloaded`, `game_force_reload`, `game_force_restart`.

**State preservation**: a single `Game_Memory` heap struct. Host calls `game_memory()` before unloading old DLL, passes the pointer to `game_hot_reloaded()` on the new DLL.

**File-locking workaround** (Windows): copy `game.dll` → `game_<api_version>.dll` before loading, so the compiler can rewrite the original.

**Cross-platform** (`build_hot_reload.sh`): `.dll` (Win) / `.dylib` (macOS) / `.so` (Linux); macOS sets `-Wl,-rpath $ROOT/vendor/raylib/macos`; Linux copies `vendor/raylib/linux/libraylib*.so*` to `build/hot_reload/linux/` and uses `-Wl,-rpath=$ORIGIN/linux`. Windows uses `.bat` with `-pdb-name` rotation to avoid debugger PDB locks.

**Key compile flags for the game DLL**: `-build-mode:dll -define:RAYLIB_SHARED=true -strict-style -vet -debug -extra-linker-flags:...`.

**Known constraints** (from https://zylinski.se/posts/hot-reload-gameplay-code/): adding/removing `Game_Memory` fields breaks state (force restart); function pointers stored in memory go stale; globals reset (so don't use them).

### Canonical references
- Article: https://zylinski.se/posts/hot-reload-gameplay-code/
- Raylib template: https://github.com/karl-zylinski/odin-raylib-hot-reload-game-template
- Sokol template: https://github.com/karl-zylinski/odin-sokol-hot-reload-template (Python-based `build.py`)
- Web variant: https://github.com/karl-zylinski/odin-raylib-web
- Minimal demo: https://github.com/karl-zylinski/odin-hot-reload

### Recommendations for our template
- **Adopt verbatim**: Karl's `Game_API` struct surface — it's the de facto interface.
- **Wrap**: provide hot-reload as an opt-in mode (`just dev` vs `just run`) — many non-game projects don't need it.
- **Improve**: parameterize the `Game_*` naming (use `App_*` if not a game) and ship the unified `build.py`-style orchestrator from the Sokol template instead of three OS-specific shell scripts.

## C. Build wrappers & task runners

### Established pattern
Three observed approaches in 2026:

1. **Shell + batch scripts side-by-side** (Karl's templates) — `build_hot_reload.sh` / `build_hot_reload.bat`, `build_release.*`, `build_debug.*`, `build_web.*`. Most common.
2. **Makefile** (`FourteenBrush/odin-template`, the Odin compiler itself) — targets: `release`, `debug`, `run`, `test`, `check`, `clean`. The compiler's own `Makefile` just delegates to `./build_odin.sh debug|release|release-native|nightly`.
3. **Python build script** (Karl's newer Sokol template — https://github.com/karl-zylinski/odin-sokol-hot-reload-template, `build.py`) — flags `-debug`, `-release`, `-hot-reload`, `-web`, `-update-sokol`. One file for all platforms.

`build.odin` (Odin-as-its-own-build-script) **is not a community pattern**. There's a project `DragosPopse/odin-build` but it has 16 stars, no releases — niche.

`justfile` has **zero meaningful adoption** in the Odin community as of search; people use shell+batch or Make.

### Standard recipes (synthesised)
- `build` / `build-release` / `build-debug`
- `run`
- `test` (`odin test .`)
- `clean`
- `check` (`odin check .`)
- `format` (`odinfmt -overwrite .`)
- `vet` (`odin check . -vet -strict-style -vet-tabs`)

### Standard flag sets
- **Debug**: `-debug -vet -strict-style -vet-tabs -disallow-do -warnings-as-errors`
- **Release**: `-o:speed -no-bounds-check -strict-style -vet -define:ODIN_DEBUG=false`
- **Hot-reload DLL**: add `-build-mode:dll -define:RAYLIB_SHARED=true -pdb-name:...`
- **LTO** (new in 2026): `-lto:thin` or `-lto:thin-files` (auto-enables `-use-separate-modules` and `-linker:lld`)
- **Sanitizers**: `-sanitize:address`, `-sanitize:memory`, `-sanitize:thread`
- The Odin examples repo compiles with: `-vet -strict-style -vet-tabs -disallow-do -warnings-as-errors`

### Recommendations
- **Adopt**: `-vet -strict-style -vet-tabs -disallow-do -warnings-as-errors` as the debug default.
- **Wrap**: justfile that calls a Python orchestrator (`tools/build.py`) — gives both a familiar entrypoint AND single-file cross-platform logic.
- **Document**: which flags are 2026-only (`-lto:thin`, `-radlink`, `-subtarget`).

## D. Editor / IDE setups beyond bare ols

### Established pattern

| Editor | Status | Notes |
|---|---|---|
| **VSCode** | "Official-enough" | `DanielGavin.ols` extension on Marketplace + Open VSX; debugging via C/C++ extension pack and `cppvsdbg` (Win) or `lldb-dap` (Mac/Linux) |
| **Neovim** | Strong adoption | `nvim-lspconfig` for `ols` + `nvim-treesitter` with `tree-sitter-odin` (https://github.com/ap29600/tree-sitter-odin) + `conform.nvim` running `odinfmt -stdin` on save + `mfussenegger/nvim-dap` with `codelldb` (or `nvim-dap-odin` https://github.com/NANDquark/nvim-dap-odin) |
| **Sublime Text** | Karl's beginner pick | LSP package + `LSP-ols` |
| **Helix** | Built-in | `ols` is in default `languages.toml`; needs an `ols.json` at project root (https://github.com/joaocarvalhoopen/Helix_editor_for_the_Odin_programming_Language) |
| **Zed** | Native via extension | `rxptr/zed-odin` (https://github.com/rxptr/zed-odin) auto-updates ols monthly |
| **JetBrains** | Plugin exists, listed in awesome-odin | Less commonly mentioned |
| **Emacs** | `eglot` or `lsp-mode` + `odin-mode`/`odin-ts-mode` | per ols README |
| **Kate / Micro** | Manual LSP config | per ols README |

### DAP/debugging consensus (https://forum.odin-lang.org/t/how-do-you-debug-and-profile-odin-projects-lets-collect-apps-and-workflows/808)
- **Windows**: RemedyBG (paid, fast) → RAD Debugger (free, gained Odin support) → VS C++ debugger (`cppvsdbg`)
- **Linux**: lldb / lldb-dap → gdb backup → `rr` for time-travel debugging
- **macOS**: lldb / lldb-dap (codelldb adapter for Neovim)
- **All**: nvim-dap-odin uses **codelldb** as adapter, requires `-debug` builds, supports `:OdinBuild` and `:OdinDebug`

### Recommendations
- **Adopt verbatim**: ship Neovim config as primary, with VSCode `.vscode/launch.json` + `tasks.json` as a "courtesy" alternative.
- **Wrap**: pre-fill `ols.json` + `odinfmt.json` so editors get a clean experience the moment you open the folder.
- **Improve**: provide a one-shot `:checkhealth odin` style script that verifies `ols`, `odinfmt`, `codelldb`, `tree-sitter-odin` are all installed.

## E. Dependency management in practice

### Established pattern
- **`vendor:` collection** ships with the compiler. Reliable, recommended-first picks: `vendor:raylib`, `vendor:sdl2` (and `sdl3`), `vendor:glfw`, `vendor:miniaudio`, `vendor:microui`, `vendor:OpenGL`, `vendor:wgpu`, `vendor:directx`, **`vendor:curl` (new in Q1 2026)**, `vendor:commonmark`.
- **Third-party libraries pulled in regularly** (from awesome-odin):
  - `karl-zylinski/karl2d` — 2D game library, "easier than raylib", D3D11/OpenGL/WebGL backends, beta as of 2026
  - `oskarnp/odin-tracy` — Tracy profiler
  - `laytan/odin-http` — pure-Odin HTTP/1.1
  - `laytan/back` — stack traces / assertion handling
  - `nicbarker/clay` — UI layout (Odin bindings included)
  - `gitlab.com/L-4/odin-imgui` — Dear ImGui
  - `floooh/sokol-odin` — official Sokol bindings
  - `gitlab.com/L-4/odin-box2c`, `gitlab.com/raygarner13/jolt` — physics
  - `karl-zylinski/atlas-builder` + `blob1807/odin-aseprite` — sprite pipelines
  - `jakubtomsu/odin-steamworks`, `odin-fmod`, `odin-vox`, `odin-ldtk`
  - `Pawel82S/glTF2`, `CoolDove/odin-assimp`, `SabeDoesThings/odin-tiled`
- **Pinning**: by commit SHA via git submodule, OR via `Odyn.lock`, OR by literally copy-pasting a snapshot.
- **Gotchas**: `vendor:raylib` shaders are version 100 (recompile raylib for ES 3.0). `core:c` is unusable in `freestanding_wasm32` — use `js_wasm32` with Karl's web template.

### Canonical references
- Awesome list: https://github.com/jakubtomsu/awesome-odin
- Odyn: https://forum.odin-lang.org/t/odyn-reproducible-vendoring-tool-for-odin-v0-1-0/1702
- Karl2D: https://github.com/karl-zylinski/karl2d
- Tracy: https://github.com/oskarnp/odin-tracy
- HTTP: https://github.com/laytan/odin-http
- Bindgen: https://github.com/karl-zylinski/odin-c-bindgen

### Recommendations
- **Adopt**: `libs/` directory mapped with `-collection:libs=libs` → `import "libs:foo"`. This is the lowest-friction, most idiomatic approach.
- **Wrap**: optional `tools/deps.py add user/repo` that does `git submodule add` + writes a minimal lockfile alongside. Don't depend on Odyn (still pre-1.0) but be Odyn-compatible.
- **Document**: ship a curated "battery pack" registry of vetted libraries (the awesome-odin subset that actually works in 2026).

## F. Testing

### Established pattern

**Built-in only**. `zhibog/odin-unittest` is explicitly deprecated in favor of the built-in. Tests are `@(test)` procs taking `^testing.T`:

```odin
import "core:testing"
@(test)
my_test :: proc(t: ^testing.T) {
  testing.expect_value(t, 2+2, 4)
}
```

Run: `odin test <pkg>` or `odin test . -all-packages`.

**Configuration via `-define:`** (https://odin-lang.org/docs/testing/):
- `ODIN_TEST_THREADS=<n>` (0 = all cores)
- `ODIN_TEST_TRACK_MEMORY=false`
- `ODIN_TEST_ALWAYS_REPORT_MEMORY=true`
- `ODIN_TEST_THREAD_MEMORY=<bytes>`
- `ODIN_TEST_NAMES=pkg.name1,name2`
- `ODIN_TEST_FANCY=false` (turn off ANSI animation)
- `ODIN_TEST_CLIPBOARD=true` (copy failures to clipboard)
- `ODIN_TEST_PROGRESS_WIDTH=<n>`
- `ODIN_TEST_RANDOM_SEED=<n>`
- `ODIN_TEST_LOG_LEVEL=debug|info|warning|error|fatal`
- `ODIN_TEST_SHORT_LOGS=true`
- `JSON_REPORT=path/to/file.json`

**API**: `testing.expect`, `testing.expectf`, `testing.expect_value`, `testing.fail`, `testing.fail_now`, `testing.cleanup`, `testing.set_fail_timeout`, `T.seed`.

**Benchmarking**: `time.benchmark(options: ^Benchmark_Options)` with `setup`/`bench`/`teardown` callbacks, fields `rounds`, `bytes`, `duration`, `rounds_per_second`, `megabytes_per_second`. Built into `core:time`.

**Coverage / property-based / snapshot**: no community standard. None mentioned in any 2026 source examined.

### Recommendations
- **Adopt**: built-in test runner with `JSON_REPORT` for CI machine-readability.
- **Wrap**: a `just test` recipe that exports `JSON_REPORT=build/test-report.json` and pretty-prints in interactive mode.
- **Improve**: ship a `tools/test_summary.py` that converts the JSON report to a markdown summary — there is no community tool for this and it's a real gap.

## G. CI/CD

### Established pattern
- **`laytan/setup-odin@v2`** is the de facto GitHub Action (https://github.com/laytan/setup-odin). Inputs: `token`, `release` (`latest|nightly|false`), `branch`, `llvm-version` (default 18), `build-type` (default `debug`), `repository`. Supports pre-built release, nightly, or source build.
- **Karl's template's `build.yml`** is the most-cribbed reference workflow (https://github.com/karl-zylinski/odin-raylib-hot-reload-game-template/blob/main/.github/workflows/build.yml). Triggers: push, PR, manual dispatch, daily cron at 8 PM UTC. Jobs:
  - **Linux** (ubuntu-latest): setup-odin + Emscripten SDK + run all four build scripts
  - **macOS** (matrix: Intel + Apple Silicon)
  - **Windows** (windows-latest with MSVC environment activation)
- Caching: setup-odin has built-in compiler caching by version key.

### Standard matrix dimensions
- OS: ubuntu-latest, macos-latest, macos-13 (Intel), windows-latest
- Build: debug, release, hot-reload, web
- Odin version: pinned `dev-2026-NN` + `nightly`

### Recommendations
- **Adopt**: setup-odin@v2, Karl's matrix shape.
- **Wrap**: provide reusable workflow (`workflow_call`) so downstream projects just point at our template.
- **Document**: pinning strategy — pin to a `dev-YYYY-MM` release in `.odin-version` file at repo root.

## H. Profiling & perf

### Established pattern
- **Spall**: Has core integration (`core:prof/spall` — https://pkg.odin-lang.org/core/prof/spall/). Per March 2026 forum thread, **the standalone Spall tool itself was deprecated** by its author; the file format and `core:prof/spall` API remain usable, and the open-source `spall-web` viewer (https://github.com/colrdavidson/spall-web) still works. Community is increasingly steering people to **Tracy** for new work.
- **Tracy**: `oskarnp/odin-tracy` (https://github.com/oskarnp/odin-tracy) — wrapping ~Tracy 0.x, last meaningful update July 2024. Functional but maintenance-light.
- **Allocation tracking**: `mem.tracking_allocator` is universal. The de facto pattern (Karl's gist https://gist.github.com/karl-zylinski/4ccf438337123e7c8994df3b03604e33):
  ```odin
  when ODIN_DEBUG {
    track: mem.Tracking_Allocator
    mem.tracking_allocator_init(&track, context.allocator)
    context.allocator = mem.tracking_allocator(&track)
    defer {
      if len(track.allocation_map) > 0 { /* report leaks */ }
      if len(track.bad_free_array)  > 0 { /* report bad frees */ }
      mem.tracking_allocator_destroy(&track)
    }
  }
  ```
- **Stack traces**: `core:debug/trace` (requires `-debug`), with `debug_trace_assertion_failure_proc` for nicer assert failures.
- **`laytan/back`**: stack traces + assertion handler that combines well with the above.
- **Linux native**: `perf`, `valgrind` + `kcachegrind`, `rr` for record/replay.
- **Windows**: Superluminal (paid), RAD Debugger's profiling features.

### Recommendations
- **Adopt**: tracking allocator boilerplate in `main.odin`, gated on `ODIN_DEBUG`. Add `laytan/back` to the default deps for nicer assertion output.
- **Wrap**: `tools/profile.py` that runs the binary with Tracy connected, or generates a Spall trace.
- **Document**: explicit warning that Spall the tool is deprecated but the format/`core:prof/spall` API still works for one-off traces.

## I. Formatting & linting

### Established pattern
- **Formatter**: `odinfmt` (lives in `DanielGavin/ols/tools/odinfmt`, also packaged separately on Arch as `odinfmt`). Standalone use: `odinfmt -overwrite path/`, or `odinfmt -stdin` for editor integration.
- **`odinfmt.json`** at repo root (community default, https://github.com/DanielGavin/ols + Karl's templates):
  ```json
  {
    "$schema": "https://raw.githubusercontent.com/DanielGavin/ols/master/misc/odinfmt.schema.json",
    "character_width": 80,
    "tabs": true,
    "tabs_width": 4,
    "newline_limit": 2,
    "sort_imports": true,
    "brace_style": "_1TBS"
  }
  ```
- **Linting**: there is no separate linter. The compiler's `-vet*` flags are it.
  - `-vet` — unused vars/imports, shadowing, using-statements, casts
  - `-vet-style` — partial Odin core style
  - `-vet-semicolon`, `-vet-tabs`, `-vet-cast`, `-vet-unused-procedures`, `-vet-shadowing`
  - `-strict-style` — full Odin core style (strictest)
  - Common community baseline: `-vet -strict-style -vet-tabs -disallow-do -warnings-as-errors`
- **Pre-commit hooks**: no community-standard repo. Devs typically wire it manually (`odinfmt -overwrite . && odin check . -vet -strict-style`).
- **`odin strip-semicolons`** is a real subcommand for cleaning trailing `;` (Odin doesn't require them).

### Recommendations
- **Adopt**: ship `odinfmt.json` with tabs/4/sorted-imports/80-col + the `-vet -strict-style -vet-tabs` baseline.
- **Wrap**: provide `.pre-commit-hooks.yaml` (using `pre-commit`) that runs `odinfmt -stdin -overwrite` and `odin check . -vet -strict-style`.
- **Improve**: a `just lint-fix` recipe that runs format + `odin strip-semicolons` + sort-imports + vet — there's no all-in-one tool today.

## J. The "Odin master template" prior art

### What exists in 2026

| Repo | Focus | Includes |
|---|---|---|
| `karl-zylinski/odin-raylib-hot-reload-game-template` | Game/Raylib | Hot reload, Win/Mac/Linux/Web, CI, .vscode + Sublime |
| `karl-zylinski/odin-sokol-hot-reload-template` | Game/Sokol | Hot reload, Python build orchestrator, Web |
| `karl-zylinski/odin-raylib-web` | Web target | emcc integration, custom allocator/logger |
| `byTimo/vscode-odin-raylib-web-desktop` | VSCode-first | Debug configs, prebuild |
| `sidbhatt11/odin-vscode-template` | VSCode minimal | basic |
| `RednibCoding/Odin-Starter` | VSCode + leak detection | tracking allocator preset |
| `FourteenBrush/odin-template` | Generic | Makefile, src/lib/tests, ols.json, odinfmt.json |
| `JerMakesStuff/Dusk` | Mini engine | ECS-ish framework |

### Gaps none of them fill
- Deep, searchable doc corpus (no template ships local doc indexing of `pkg.odin-lang.org` + the overview)
- Comprehensive Neovim configuration as a first-class option
- Unified Python build orchestrator AND justfile
- Update mechanism for the template itself
- Pre-commit + CI + DAP all wired correctly out of the box
- A scaffolder/CLI ("create-odin-app" doesn't exist)

### Recommendations
- Position the master template as **"Karl's hot-reload template + Neovim DX + searchable docs + opinionated defaults"** — this is genuinely empty space.

## K. Update mechanism for templates / scaffolders

### Established pattern
**There isn't one.** No Odin equivalent of `npx degit`, `cargo generate`, `copier`, or `cookiecutter` is in active community use. Devs:
1. Clone template, manually rename, wipe `.git`, `git init`. (Karl's README literally says "Click 'Use this template'".)
2. When the compiler updates, they hand-patch differences themselves by reading release notes.
3. Compiler updates often break templates (e.g., `core:os` → `core:os/old` migration in 2026). The community absorbs this via Discord chat / forum threads.

### Recommendations
- **Improve (genuine gap)**: build a lightweight `update-template` command into our template that:
  - Records a `template-version` SHA in the repo
  - Provides `tools/template-update.py` that fetches new template, three-way merges files the user hasn't touched, and lists conflicts
  - Documents which compiler-version migrations are needed (a `CHANGELOG_MIGRATION.md`)

## L. The Odin overview/docs site itself

### Source data
- **Website** (`odin-lang.org`): Hugo-based static site at https://github.com/odin-lang/odin-lang.org. Content lives in `content/` as plain markdown — fully extractable. Layouts in `layouts/shortcodes/` add minor parsing complexity.
- **Overview page** (`/docs/overview/`): generated from `content/docs/overview.md` (or similarly-named file) in that repo. Single big markdown document — perfect candidate for our doc index.
- **Install page**: `content/docs/install.md`.
- **Package docs** (`pkg.odin-lang.org`): generated by a custom Odin program at https://github.com/odin-lang/pkg.odin-lang.org. Pipeline:
  1. `odin doc <path> -file -all-packages -doc-format` produces a binary `.odin-doc` file
  2. The generator (uses `vendor:commonmark`) parses it + a `config.json` and emits HTML
  3. GitHub Actions runs nightly off `examples/all` from the master Odin branch
- **Local mirror** is feasible: clone `pkg.odin-lang.org`, generate `.odin-doc` from your local Odin checkout, run the generator. The README documents this.

### Free learning resources to index
- **Odin Overview** — https://odin-lang.org/docs/overview/ (massive single-page reference, the canonical learning artifact)
- **Package docs** — https://pkg.odin-lang.org/ (mirror locally as above)
- **Odin Wiki Compiler Flags** — https://github.com/odin-lang/Odin/wiki/Compiler-Flags
- **Karl Zylinski blog** — https://zylinski.se/posts/ (especially the gamedev tutorial series, hot reload article, temporary-allocator/arena article, intro to Odin)
- **Karl's Substack newsletter** — https://news.zylinski.se/
- **Karl's book sample** — https://odinbook.com/sample.html (first 3 chapters free; full book paid at https://zylinski.itch.io/odinbook)
- **gingerBill's articles** — https://www.gingerbill.org/article/ (especially context-as-misunderstood-feature, casting syntax design, billion-dollar-mistake, all 2025/2026)
- **Learn Odin** — https://learnodin.org/odin/ (free, slow-paced curriculum, beginner-focused)
- **`teach-yourself-odin`** — https://brainwo.github.io/teach-yourself-odin/
- **Newsletters** — https://odin-lang.org/news/newsletter-2026-q1/ etc. (quarterly, machine-readable URLs)
- **Forum** — https://forum.odin-lang.org/ (categorised, scrapable)
- **Karl's snake tutorial code** — https://github.com/karl-zylinski/snake-tutorial-code

### The Odin book by Karl
- "Understanding the Odin Programming Language" — paid ($19.99+) on itch.io and Amazon Kindle, in HTML+EPUB; **not freely redistributable** — only the 3-chapter sample at https://odinbook.com/sample.html can be indexed without licence.

### Recommendations for our template
- **Build a doc-search corpus** that ingests:
  1. `odin-lang/odin-lang.org` `content/**/*.md` (Hugo source)
  2. `odin-lang/Odin/wiki/*.md` (clone the wiki repo)
  3. The generated `.odin-doc` from `pkg.odin-lang.org` for `core:` and `vendor:` packages
  4. `gingerbill.org` and `zylinski.se` RSS feeds
  5. Forum threads (categorised JSON via Discourse API on `forum.odin-lang.org`)
- **Provide a `just docs-update`** that re-pulls all five sources and rebuilds the local index.
- **Don't index Discord** (not crawlable, ToS issues).

## Patterns to adopt verbatim

- Karl Zylinski's `Game_API` struct + `@(export)` proc surface for hot-reload (rename to `App_API` if non-game)
- The `source/` + `source/main_<mode>/` + `assets/` + `build/{debug,release,hot_reload,web}/` directory layout
- `odinfmt.json` with `tabs:true, tabs_width:4, character_width:80, sort_imports:true, brace_style:"_1TBS"`
- `ols.json` with explicit `profiles[]` array (default + linux/mac/windows variants) and `checker_path:["src"]`
- `mem.tracking_allocator` boilerplate guarded by `when ODIN_DEBUG` in `main.odin`
- Default compile flags `-vet -strict-style -vet-tabs -disallow-do -warnings-as-errors -debug` (debug) and `-o:speed -no-bounds-check` (release)
- `laytan/setup-odin@v2` action; matrix on ubuntu/macos-latest/macos-13/windows-latest
- Built-in `odin test` with `JSON_REPORT=build/test-report.json` in CI
- DLL versioning trick (`game_<api_version>.dll`) for hot reload on Windows
- A daily cron CI build to detect Odin compiler regressions early
- `.gitignore`: `build/**`, `*.exe`, `*.bin`, `*.dll`, `*.so`, `*.dylib`, `*.pdb`, `*.raddbg`, `*.rdi`, `.vscode/`, `.idea/`, `.cache/`, `.DS_Store`, `compile_commands.json`

## Tools to install during template setup

```bash
# Odin compiler (build from source — most reliable across platforms)
git clone https://github.com/odin-lang/Odin && cd Odin && make release-native   # linux/mac
# or: build.bat release   # windows from x64 Native Tools prompt

# OLS — Odin Language Server (formatter included)
git clone https://github.com/DanielGavin/ols && cd ols
./build.sh && ./odinfmt.sh                 # linux/mac
# or: ./build.bat && ./odinfmt.bat          # windows

# Tracy (profiler) — system install of capture/server tooling
# (bindings at github.com/oskarnp/odin-tracy)

# C bindgen (for wrapping C libs)
git clone https://github.com/karl-zylinski/odin-c-bindgen
cd odin-c-bindgen && odin build src -out:bindgen.exe

# Tree-sitter Odin grammar (for Neovim)
# Install via :TSInstall odin (after registering parser from
# https://github.com/ap29600/tree-sitter-odin)

# DAP adapter for Neovim
# - codelldb (download release from vadimcn/codelldb)
# - or lldb-dap (ships with LLVM 18+)

# Optional: Emscripten (for web target)
git clone https://github.com/emscripten-core/emsdk
cd emsdk && ./emsdk install latest && ./emsdk activate latest

# Optional: PortableBuildTools (Windows MSVC without VS installer)
# Run installer from github.com/Data-Oriented-House/PortableBuildTools
```

## Useful resources for the searchable doc corpus

- https://odin-lang.org/docs/overview/  — language overview (single huge markdown)
- https://odin-lang.org/docs/install/  — install reference
- https://odin-lang.org/docs/testing/  — testing reference
- https://odin-lang.org/docs/nightly/  — nightly download endpoints
- https://odin-lang.org/news/  — quarterly newsletters (incl. https://odin-lang.org/news/newsletter-2026-q1/)
- https://github.com/odin-lang/odin-lang.org  — Hugo source for the website (clone for offline indexing)
- https://github.com/odin-lang/Odin/wiki/Compiler-Flags  — full flag reference
- https://github.com/odin-lang/Odin  — compiler source, examples in `examples/`
- https://github.com/odin-lang/examples  — idiomatic Odin code samples
- https://pkg.odin-lang.org/core/  — `core:` package docs
- https://pkg.odin-lang.org/vendor/  — `vendor:` package docs
- https://github.com/odin-lang/pkg.odin-lang.org  — generator source (lets you self-host docs)
- https://forum.odin-lang.org/  — Discourse forum (categorised, JSON API available)
- https://github.com/jakubtomsu/awesome-odin  — curated library/tool index
- https://www.gingerbill.org/article/  — language designer's deep-dive articles
- https://zylinski.se/posts/  — Karl Zylinski's blog (gamedev + Odin tutorials)
- https://news.zylinski.se/  — Karl's newsletter
- https://learnodin.org/odin/  — free beginner curriculum
- https://brainwo.github.io/teach-yourself-odin/  — community learning notes
- https://odinbook.com/sample.html  — first 3 chapters of Karl's book (only freely indexable portion)
- https://github.com/karl-zylinski/odin-raylib-hot-reload-game-template  — canonical template (mine the README + scripts)
- https://github.com/karl-zylinski/odin-sokol-hot-reload-template  — Python build orchestrator reference
- https://github.com/karl-zylinski/odin-raylib-web  — web/wasm reference
- https://github.com/DanielGavin/ols  — ols + odinfmt schemas (`misc/ols.schema.json`, `misc/odinfmt.schema.json`)

## Gaps the template can genuinely improve

- **Single-source build orchestrator** (Python) that replaces Karl's three-script pattern AND exposes a justfile face for users who want it
- **Searchable local doc index** (Tantivy/Meilisearch/ripgrep over fetched markdown + `.odin-doc`) — nothing like this exists in the community
- **Template self-update mechanism** with a recorded template-SHA and three-way merge — total greenfield
- **`tools/test_summary.py`** that converts `JSON_REPORT` to a markdown CI summary — no community tool
- **Pre-commit hooks repo for Odin** (`odinfmt`, `odin check -vet -strict-style`, `odin strip-semicolons`) — nobody publishes one
- **`tools/install_deps.py user/repo`** that's compatible with future Odyn but works today via git submodules — bridges the gap until a real package manager exists
- **Unified DAP setup script** that probes for codelldb, lldb-dap, RemedyBG, RAD debugger and writes per-editor configs accordingly
- **Neovim distribution config** (lazy.nvim spec) that's complete and tested for Odin: lspconfig+ols, treesitter+tree-sitter-odin, conform.nvim+odinfmt, nvim-dap+codelldb, plus a `:OdinDoctor` checkhealth — **no current Neovim distribution does Odin well out of the box**
- **2026-specific migration notes** for `core:os` → `core:os/old`, the `using-stmt` opt-in (`#+feature using-stmt`), `chacha8rand` RNG change, BSD→zlib licence, new `core:nbio`/`core:container/handle_map`/`core:crypto/ecdh`, `vendor:curl` — anyone updating from a 2024/2025 template will hit these and the community has zero consolidated migration doc
- **Documented Spall deprecation status** with a clear "use Tracy for new work, but `core:prof/spall` still works" note — nobody has consolidated this
- **Odin doctor / health check tool** — verify compiler version, `ODIN_ROOT`, ols, odinfmt, treesitter parser, codelldb, optional emsdk are present and compatible

## Sources

- [Odin install docs](https://odin-lang.org/docs/install/)
- [Odin nightly](https://odin-lang.org/docs/nightly/)
- [Odin testing docs](https://odin-lang.org/docs/testing/)
- [Odin Q1 2026 newsletter](https://odin-lang.org/news/newsletter-2026-q1/)
- [Odin community page](https://odin-lang.org/community/)
- [Odin showcase](https://odin-lang.org/showcase/)
- [Odin compiler repo](https://github.com/odin-lang/Odin)
- [Odin compiler flags wiki](https://github.com/odin-lang/Odin/wiki/Compiler-Flags)
- [Odin website source (Hugo)](https://github.com/odin-lang/odin-lang.org)
- [Package docs site source](https://github.com/odin-lang/pkg.odin-lang.org)
- [pkg.odin-lang.org](https://pkg.odin-lang.org/)
- [Karl Zylinski - hot reload article](https://zylinski.se/posts/hot-reload-gameplay-code/)
- [Karl Zylinski - Raylib hot reload template](https://github.com/karl-zylinski/odin-raylib-hot-reload-game-template)
- [Karl Zylinski - Sokol hot reload template](https://github.com/karl-zylinski/odin-sokol-hot-reload-template)
- [Karl Zylinski - Raylib web](https://github.com/karl-zylinski/odin-raylib-web)
- [Karl Zylinski - karl2d](https://github.com/karl-zylinski/karl2d)
- [Karl Zylinski - odin-c-bindgen](https://github.com/karl-zylinski/odin-c-bindgen)
- [Karl Zylinski - atlas-builder](https://github.com/karl-zylinski/atlas-builder)
- [Karl Zylinski - gamedev tutorial part 1](https://zylinski.se/posts/gamedev-for-beginners-using-odin-and-raylib-1/)
- [Karl Zylinski - tracking allocator gist](https://gist.github.com/karl-zylinski/4ccf438337123e7c8994df3b03604e33)
- [Karl Zylinski - newsletter](https://news.zylinski.se/)
- [Karl Zylinski's Odin book (sample)](https://odinbook.com/sample.html)
- [gingerBill articles](https://www.gingerbill.org/article/)
- [DanielGavin/ols](https://github.com/DanielGavin/ols)
- [jakubtomsu/awesome-odin](https://github.com/jakubtomsu/awesome-odin)
- [jakubtomsu/odin-steamworks](https://github.com/jakubtomsu/odin-steamworks)
- [oskarnp/odin-tracy](https://github.com/oskarnp/odin-tracy)
- [laytan/setup-odin](https://github.com/laytan/setup-odin)
- [laytan/odin-http](https://github.com/laytan/odin-http)
- [laytan/back](https://github.com/laytan/back)
- [DragosPopse/odin-build](https://github.com/DragosPopse/odin-build)
- [NANDquark/nvim-dap-odin](https://github.com/NANDquark/nvim-dap-odin)
- [ap29600/tree-sitter-odin](https://github.com/ap29600/tree-sitter-odin)
- [rxptr/zed-odin](https://github.com/rxptr/zed-odin)
- [Helix Odin guide](https://github.com/joaocarvalhoopen/Helix_editor_for_the_Odin_programming_Language)
- [jtakakura/asdf-odin](https://github.com/jtakakura/asdf-odin)
- [Data-Oriented-House/PortableBuildTools](https://github.com/Data-Oriented-House/PortableBuildTools)
- [Odin forum - debug & profile thread](https://forum.odin-lang.org/t/how-do-you-debug-and-profile-odin-projects-lets-collect-apps-and-workflows/808)
- [Odin forum - Odyn vendoring tool](https://forum.odin-lang.org/t/odyn-reproducible-vendoring-tool-for-odin-v0-1-0/1702)
- [Odin forum - dependencies discussion](https://forum.odin-lang.org/t/dealing-with-dependencies/1676)
- [Odin forum - package manager pushback](https://forum.odin-lang.org/t/odin-package-manager/1504)
- [Odin forum - Spall alternatives](https://forum.odin-lang.org/t/alternative-to-spall-for-tracing-profiling-and-frame-graphs/1626)
- [FourteenBrush/odin-template](https://github.com/FourteenBrush/odin-template)
- [RednibCoding/Odin-Starter](https://github.com/RednibCoding/Odin-Starter)
- [byTimo/vscode-odin-raylib-web-desktop](https://github.com/byTimo/vscode-odin-raylib-web-desktop)
- [Spall package](https://pkg.odin-lang.org/core/prof/spall/)
- [time.benchmark](https://pkg.odin-lang.org/core/time/)
- [debug/trace package](https://pkg.odin-lang.org/core/debug/trace/)
- [vendor library index](https://pkg.odin-lang.org/vendor/)
- [Learn Odin](https://learnodin.org/odin/)
- [teach-yourself-odin](https://brainwo.github.io/teach-yourself-odin/)
- [colrdavidson/spall-web](https://github.com/colrdavidson/spall-web)
- [Solar Storm showcase](https://odin-lang.org/showcase/solar_storm/)
- [CAT & ONION showcase](https://odin-lang.org/showcase/cat_and_onion/)
- [EmberGen showcase](https://odin-lang.org/showcase/embergen/)
- [JangaFX EmberGen](https://jangafx.com/software/embergen)
