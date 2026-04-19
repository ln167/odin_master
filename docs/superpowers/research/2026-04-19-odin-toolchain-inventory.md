---
title: Odin official toolchain + LSP + editor integrations inventory (April 2026)
date: 2026-04-19
agent: general-purpose research subagent
prompt_summary: |
  Deep, current inventory of everything that already exists in the
  official Odin toolchain and immediately-adjacent ecosystem so the
  template does NOT reinvent anything. Compiler, subcommands, LSP,
  editor integrations, vendor libs, doc gen, debugging, profiling,
  community resources, update mechanisms.
status: raw agent output (unedited)
---

# Odin Toolchain & Ecosystem Inventory — April 2026

Snapshot: latest stable is **`dev-2026-04`** (released 2026-04-03). Odin uses a **monthly release cadence** with `dev-YYYY-MM` tags (no semver). LLVM-backed compiler; the alternative Tilde backend was **removed** in dev-2026-04. Recent quarter brought a `core:os` v2 rewrite (old kept at `core:os/old` until Q3 2026), opt-in `using-stmt`, LTO flags, UTF-16 string types, license change to **zlib**.

Sources are cited inline; a consolidated source list closes the report.

---

## 1. Compiler & subcommands

**Status:** Mature, monthly-release cadence, `dev-YYYY-MM` tags. Latest = `dev-2026-04` (2026-04-03).

**Subcommands** (verified against the Compiler-Flags wiki):
- `build` / `run` — compile/run a directory-as-package
- `check` — parse + type-check only (great for fast LSP-style feedback in CI)
- `test` — runs `@(test)` procs (see §1.b)
- `doc` — emits `.odin-doc` binary; the pkg.odin-lang.org site renders it to HTML (see §6)
- `strip-semicolon` (singular, not plural) — removes redundant `;`; takes same args as `check`
- `bundle` — package binary in platform-specific layout (e.g. macOS .app)
- `version`, `report`, `root` — meta info

**Key flags:**
- Optimization: `-o:none|minimal|size|speed|aggressive`
- Build mode: `-build-mode:exe|dll|lib|obj|asm|llvm-ir`
- Debug/sanitize: `-debug`, `-sanitize:address|memory|thread`
- Quality: `-vet`, `-vet-unused`, `-vet-style`, `-vet-semicolon`, `-vet-shadowing`, `-strict-style`, `-warnings-as-errors`, `-disallow-do`, `-vet-tabs`
- Cross-compile: `-target:<os>_<arch>`, `-subtarget:ios|android`, `-microarch:`
- Wiring: `-collection:name=path`, `-define:NAME=value`, `-out:path`
- Runtime: `-disable-assert`, `-no-bounds-check`, `-no-type-assert`, `-default-to-nil-allocator`
- Build control: `-thread-count:N`, `-lld`, `-keep-temp-files`, `-export-dependencies:make|json`
- New in 2026: `-lto:thin`, `-lto:thin-files`; `-in-source-order` for `odin doc`; clang-style `+`/`-` in target features; better `-march:native`

**Cross-compilation:** Targets include desktop trio (windows/linux/darwin × amd64/arm64), `freestanding_wasm32`, `js_wasm32`, `wasi_wasm32`, `orca_wasm32`, FreeBSD/NetBSD/OpenBSD, Haiku (experimental), Android (expanded in dev-2026-04). WASM linking requires `wasm-ld`.

**`odin doc`:** Emits a binary `.odin-doc` blob; the public renderer is `odin-lang/pkg.odin-lang.org` which converts it to HTML. There's a `core:odin/doc-format` package describing the schema. A `-export-dependencies:json` flag produces machine-readable deps. New `-in-source-order` option in dev-2026-04.

**Formatter:** No formatter ships with the compiler. The de-facto official formatter is **`odinfmt`**, distributed as part of the **OLS** repo (`tools/odinfmt`, built via `odinfmt.sh`/`odinfmt.bat`). Configured by `odinfmt.json` (character_width default 80, tabs, tabs_width 4, inline_single_stmt_case, spaces_around_colons, brace style, import sorting). Helix/Kate/conform.nvim wire it via `odinfmt -stdin`. `odin strip-semicolon` is a separate, narrower tool — not a formatter, just a semicolon stripper.

**Test framework (`odin test`):** Built-in. Procs marked `@(test)` taking `^testing.T`. Multi-threaded by default (override via `-define:ODIN_TEST_THREADS=N`). Per-test `Tracking_Allocator` reports leaks/double-frees. Filtering via `-define:ODIN_TEST_NAMES="pkg.test_a,pkg.test_b"`. Cross-package via `-all-packages`. Deterministic via `-define:ODIN_TEST_RANDOM_SEED=…`. JSON report via `-define:ODIN_TEST_JSON_REPORT=path`. ANSI animated progress; clipboard-copy of failed tests. APIs: `expect`, `expectf`, `expect_value`, `expect_assert_*`, `expect_signal`, `expect_leaks`, `fail`, `fail_now`, `set_fail_timeout`, `cleanup`. **No native benchmarking or coverage** infrastructure.

**Gaps for the template:**
- Coverage/benchmark harness — none built-in
- No formatter shipped with the compiler proper (needs separate `odinfmt` install/wiring)
- No `-vet-all` umbrella; users must combine flags

**Recommendation:** Use `odin build/run/test/check/doc/strip-semicolon` directly. Wrap the recommended vet/strict combo behind a `justfile` task. Bundle `odinfmt.json` and document the OLS-side install. Don't invent a test runner — wrap `odin test` with `-define:ODIN_TEST_JSON_REPORT` for editor pickup.

Sources: [Compiler Flags wiki](https://github.com/odin-lang/Odin/wiki/Compiler-Flags), [dev-2026-04 release](https://github.com/odin-lang/Odin/releases/tag/dev-2026-04), [Q1 2026 newsletter](https://odin-lang.org/news/newsletter-2026-q1/), [Testing docs](https://odin-lang.org/docs/testing/), [`core:testing` API](https://pkg.odin-lang.org/core/testing/), [Optional Semicolons](https://odin-lang.org/news/optional-semicolons/).

## 2. Standard library + vendored libraries

**Status:** Large and growing. Bundled with compiler — no install step.

**`core:` packages (verified from pkg.odin-lang.org/core/):**
Top-level: `bufio, bytes, c, compress, container, crypto, debug, dynlib, encoding, flags, fmt, hash, image, io, log, math, mem, nbio, net, odin, os, path, prof, reflect, relative, simd, slice, sort, strconv, strings, sync, sys, terminal, testing, text, thread, time, unicode`.

Notable nesting:
- `crypto/`: aead, aegis, aes, **argon2id** (new in dev-2026-04), blake2*, chacha20*, deoxysii, **ecdh** (new Q1 2026), ecdsa, ed25519, hkdf, hmac, kmac, legacy/{keccak,md5,sha1}, pbkdf2, poly1305, ristretto255, sha2, sha3, shake, sm3, tuplehash, x25519, x448
- `container/`: avl, bit_array, **handle_map** (new), intrusive/list, lru, pool, priority_queue, queue, rbtree, small_array, topological_sort, **xar** (new — exponential array)
- `encoding/`: base32, base64, cbor, csv, endian, entity, hex, hxa, ini, json, uuid, uuid/legacy, varint, xml
- `image/`: bmp, jpeg, netpbm, png, qoi, tga
- `math/`: big, bits, cmplx, ease, fixed, linalg, linalg/glsl, linalg/hlsl, noise, rand
- `prof/spall` — first-class spall tracing (see §8)
- `os/old` — legacy os v1 (deprecated, removed Q3 2026); `os` itself is now the rewritten v2
- `nbio` — async I/O (IOCP/io_uring/kqueue), promoted to core in Q1 2026

**`vendor:` packages (verified — 65 distinct):**
Top-level: `box2d, cgltf, commonmark, curl (new), ENet, fontstash, ggpo, glfw, kb_text_shape, libc-shim, microui, miniaudio, nanovg, OpenEXRCore, OpenGL, portmidi, raylib, vulkan, wgpu, zlib`

Nested: `compress/lz4`; `darwin/{CoreVideo,Metal,MetalKit,QuartzCore}`; `directx/{d3d11,d3d12,d3d_common,dxc,dxgi}`; `lua/5.4` (also 5.1–5.3 historically); `sdl2/{image,mixer,net,ttf}`; `sdl3/{image,ttf,mixer}` (mixer added dev-2026-04); `stb/{easy_font,image,rect_pack,sprintf,truetype,vorbis}`; `wasm/WebGL`; `wgpu/{glfwglue,sdl2glue,sdl3glue}`; `windows/{GameInput,XAudio2,wasapi}` (wasapi added dev-2026-04); `x11/xlib`.

**Linking:** Vendor libs typically link statically via `foreign import` with prebuilt `.lib`/`.a` blobs shipped in the repo, falling back to system libs where unavoidable (X11, system frameworks). Most game-dev vendor libs (raylib, glfw, sokol via community, sdl2/3, miniaudio) are **fully self-contained** — no system package required on Windows/macOS; on Linux you still need X11/Wayland system packages for SDL/GLFW.

**Recommendation:** Just use them. Document the most common imports (`fmt`, `os`, `strings`, `slice`, `mem`, `log`, `testing`, `math/linalg`, `prof/spall`) in the template's CLAUDE.md.

Sources: [pkg.odin-lang.org/core](https://pkg.odin-lang.org/core/), [pkg.odin-lang.org/vendor](https://pkg.odin-lang.org/vendor/), [Odin/vendor on GitHub](https://github.com/odin-lang/Odin/tree/master/vendor), [dev-2026-04 release](https://github.com/odin-lang/Odin/releases/tag/dev-2026-04).

## 3. LSP + editor integrations

**Status:** Healthy but single-implementation (OLS) with known formatter rough edges.

**OLS (`DanielGavin/ols`):** Latest tag aligns with `dev-2026-04` (2026-04-17). 954★/148 forks. **No prebuilt binaries** distributed officially — build from source via `./build.sh` or `./build.bat`. Ships with `odinfmt` in `tools/odinfmt`. The `builtin/` folder must sit next to the binary or be pointed at by `OLS_BUILTIN_FOLDER`.

**`ols.json` schema (workspace root):**
- `collections` — list of `{name, path}` (mirrors `-collection:` flag)
- `enable_format`, `enable_hover`, `enable_document_symbols`, `enable_semantic_tokens`, `enable_inlay_hints`, `enable_references`
- `odin_command` — path to compiler
- `profiles` — per-OS/arch sets of `defines` (so the analyzer evaluates `when ODIN_OS == .Windows` branches correctly)
- `checker_args` — passed to `odin check` for on-save diagnostics
- Auto-import on completion, signature help for composite literals, "invert if" code action

**Features that work:** completion, hover, goto-definition (with overload resolution), references, document highlights, rename, semantic tokens, inlay hints, document symbols/outline, signature help, formatting (via `odinfmt`).

**Known gotchas (community/forum chatter):**
- Generics resolution is the area with the most outstanding bugs
- `enable_format` via OLS sometimes mangles output — Helix discussion #12559 reports formatter breakage in early 2025; users frequently invoke `odinfmt -stdin` directly via conform.nvim instead
- No prebuilt binaries — install friction for new users
- `checker_args` not auto-syncing with project's actual build flags is a perennial sharp edge

**Tree-sitter grammar:** Multiple forks. Canonical/most-active is **`tree-sitter-grammars/tree-sitter-odin`** (same org as the official tree-sitter parsers, maintained by Amaan Qureshi; published as `tree-sitter-odin` v1.3.0 on crates.io). Other forks: `ap29600/tree-sitter-odin`, `MineBill/tree-sitter-odin`, `lucypero/tree-sitter-odin`. Note: the awesome-odin list points at `amaanq/tree-sitter-odin` (same maintainer).

**Editor matrix:**
- **Neovim:** `Tetralux/odin.vim` for filetype/syntax + nvim-lspconfig for OLS + nvim-treesitter (or built-in TS in 0.12+; nvim-treesitter was archived 2026-04-03, Neovim 0.12 ships built-in TS as of 2026-03-29 — relevant for the template). DAP via `NANDquark/nvim-dap-odin`.
- **VS Code:** `DanielGavin.ols` (Marketplace + Open VSX) — most polished
- **Helix:** Odin + OLS supported by default in `languages.toml`
- **Sublime Text:** `odin-lang/sublime-odin`
- **Zed:** native `Odin` extension (zed-extensions/odin), released ~Feb 2026
- **JetBrains:** `obiwan87/odin-intellij` plugin — has its own analyzer, not OLS-based; offers debugging integration
- **Emacs:** `mattt-b/odin-mode`
- **Vim (legacy):** `Tetralux/odin.vim`

**No published `.editorconfig` standard** in the Odin compiler repo; the `examples` repo enforces `-strict-style -vet -vet-tabs -disallow-do -warnings-as-errors` which implies tabs + the compiler's brace/style rules.

**Recommendation:** Bundle a vetted `ols.json` and `odinfmt.json`. For Neovim, target 0.12+ built-in TS (use `tree-sitter-grammars/tree-sitter-odin` queries) and `Tetralux/odin.vim` for filetype only. Wire `odinfmt -stdin` via `conform.nvim` rather than `enable_format` in OLS. Document JetBrains/VSCode/Zed paths but don't reinvent.

Sources: [DanielGavin/ols](https://github.com/DanielGavin/ols), [OLS DeepWiki architecture](https://deepwiki.com/DanielGavin/ols), [OLS marketplace](https://marketplace.visualstudio.com/items?itemName=DanielGavin.ols), [tree-sitter-grammars/tree-sitter-odin](https://github.com/tree-sitter-grammars/tree-sitter-odin), [nvim-dap-odin](https://github.com/NANDquark/nvim-dap-odin), [Helix formatter discussion #12559](https://github.com/helix-editor/helix/discussions/12559), [Zed extension](https://zed.dev/extensions/odin), [JetBrains plugin](https://plugins.jetbrains.com/plugin/22933-odin-support).

## 4. Project layout & build patterns

**Status:** No official scaffolder. No official layout. Strong de-facto patterns from Karl Zylinski templates and the `odin-lang/examples` repo.

**No `odin init` exists.** Confirmed against subcommand list.

**Recommended layout (synthesized from `odin-lang/examples` + Karl Zylinski templates):**
- A package = a directory of `.odin` files. No nesting permitted within a package.
- Project entry point: typically `source/` or root, with `main.odin` containing `package main`
- Karl Zylinski's hot-reload template (the closest thing to a community standard for games):
  ```
  .github/workflows/   CI
  .vscode/             editor config
  source/              gameplay code (game.odin, utils.odin, …)
  assets/              shipped resources
  build/               build outputs (gitignored)
  build_hot_reload.{bat,sh}
  build_debug.{bat,sh}
  build_release.{bat,sh}
  build_web.{bat,sh}
  ```
- The `odin-lang/examples` CI uses `-vet -strict-style -vet-tabs -disallow-do -warnings-as-errors` — treat that as the canonical "strict mode."

**`build.odin` pattern:** Two flavors:
1. Plain Odin program named `build.odin` invoked by hand or by a shell wrapper that calls `odin run build/`. Used for cross-platform avoiding shell scripts.
2. **`DragosPopse/odin-build`** — a library/build-system aiming to be Cargo-shaped for Odin. **Niche** (16★, 29 commits, no releases). Not the de-facto standard.

**Common patterns in the wild:** Plain shell scripts (`build.sh`/`build.bat`) dominate. `justfile` and `Makefile` appear but are minority. `build.odin` Odin-as-build-script is the "purest" pattern but used mostly by larger projects.

**Compiler self-build:** The Odin compiler builds itself via `build.bat`/`Makefile` — a thin shell over `clang++`. Not a generalizable model.

**Recommendation:** Provide an opinionated layout (Karl-template-shaped: `src/`, `assets/`, `build/`, `tools/`, plus `ols.json`, `odinfmt.json`, `.editorconfig`, `justfile`). Use `just` as the cross-platform task runner since it works on Windows/macOS/Linux and is much simpler than maintaining `.bat`+`.sh` parallels. The template is genuinely filling a gap here.

Sources: [odin-lang/examples](https://github.com/odin-lang/examples), [karl-zylinski hot-reload template](https://github.com/karl-zylinski/odin-raylib-hot-reload-game-template), [Structuring Odin Projects (Draupnir)](https://odin-arsenal.github.io/draupnir/StructuringProjects.html), [DragosPopse/odin-build](https://github.com/DragosPopse/odin-build), [Karl Zylinski hot reload article](https://zylinski.se/posts/hot-reload-gameplay-code/).

## 5. Dependency management

**Status:** Officially anti-package-manager. No package manager exists or is planned.

**gingerBill's position (canonical, Sep 2025 article):** Package managers are "the automation of dependency hell"; vendoring is recommended; each dependency is a liability. He explicitly states there will be no official Odin package manager.

**How libs are pulled in:**
1. Copy/paste source into the project (most common for small libs)
2. `git submodule` into a `vendor/` or `libs/` directory
3. Build a custom collection: `odin build . -collection:mylib=libs/mylib`
4. The `vendor:` collection ships with the compiler — many gamedev needs covered

**`-collection:name=path`:** Adds a search root. Then `import "mylib:foo"` resolves to `libs/mylib/foo/`. Multiple `-collection` flags allowed. Used by everyone.

**Community attempts at package management:** None gaining traction. Discord/forum mentions of "Hoard" or "Pakku" don't show up in search results — there's no live alternative ecosystem.

**Recommendation:** Don't fight the philosophy. Bake a `libs/` convention into the template, with a `tools/vendor.{sh,bat}` or `just vendor add <git-url>` task that does `git submodule add` + writes a small `libs/MANIFEST.md` line. Document `-collection:` setup in `ols.json`. Don't ship a package manager.

Sources: [Package Managers are Evil — gingerBill](https://www.gingerbill.org/article/2025/09/08/package-managers-are-evil/), [FAQ on package managers](https://odin-lang.org/docs/faq/), [Forum thread on dependency management](https://forum.odin-lang.org/t/how-does-odin-plan-to-avoid-repeating-c-pythons-dependency-management-fiasco/591).

## 6. Documentation

**Status:** Healthy. `odin doc` produces a binary metadata format; the official renderer is open source.

**`odin doc` output:** Emits a `.odin-doc` binary file (schema in `core:odin/doc-format`). Not HTML directly. The renderer is **`odin-lang/pkg.odin-lang.org`**, a separate Odin program that reads the `.odin-doc` + a `config.json` (with `hide_core`, `url_prefix`, etc.) and emits static HTML. Output is what you see at https://pkg.odin-lang.org. New `-in-source-order` flag (dev-2026-04) preserves declaration ordering.

**Package directory:** **https://pkg.odin-lang.org** — covers `base:`, `core:`, `vendor:` collections. Has a built-in search (Cmd/Ctrl-K, `/`). Static HTML, fast, fully scrapable for local indexing.

**Overview docs:** https://odin-lang.org/docs/overview/ — single long page covering syntax. Source is in the `odin-lang/odin-lang.org` site repo (Hugo markdown).

**Community doc viewers:** None mature. This is a genuine opportunity for the template if you want offline/local doc search.

**Recommendation:** Mirror pkg.odin-lang.org locally in the template (it's a static site — wget/curl mirror or build the renderer yourself from the open repo). Provide a `just docs` target that does this, plus a `just doc <pkg>` that runs `odin doc src/` and opens the resulting HTML. Don't reinvent the doc generator — wrap the existing renderer.

Sources: [pkg.odin-lang.org](https://pkg.odin-lang.org/), [pkg.odin-lang.org repo](https://github.com/odin-lang/pkg.odin-lang.org), [`core:odin/doc-format`](https://pkg.odin-lang.org/core/odin/doc-format/), [overview docs](https://odin-lang.org/docs/overview/).

## 7. Debugging

**Status:** Workable on every major platform; ergonomics vary.

**RAD Debugger (raddbg, EpicGamesExt/raddebugger):** Windows x64 only with PDB. Linux + DWARF planned, not landed. **No official Odin language support** in upstream raddbg as of April 2026. gingerBill maintains a fork with `slice` and `odin_map` view rules — community-imported by many. Odin DLLs/EXEs compiled with `-debug` and PDBs Just Work in raddbg for stepping/breakpoints.

**LLDB / GDB:** Odin emits clean **DWARF** with `-debug`. Stepping, breakpoints, locals all work. No first-party pretty-printers shipped. Community LLDB pretty-printers for Odin slice/map exist but are scattered.

**Neovim DAP:** **`NANDquark/nvim-dap-odin`** is the canonical setup — wraps codelldb + adds `:OdinBuild` / `:OdinDebug` commands. Requires Neovim 0.7+, nvim-dap, codelldb, Odin in PATH.

**VS Code:** Use C/C++ extension or codelldb directly with `-debug` builds. The Karl Zylinski hot-reload template ships a working `.vscode/launch.json` example.

**JetBrains:** `obiwan87/odin-intellij` plugin includes debugger integration.

**Recommendation:** Ship a `.vscode/launch.json` and Neovim DAP config wired via `nvim-dap-odin`. Bundle community LLDB pretty-printers (or vendor gingerBill's raddbg view rules) as `tools/debug/`. Document raddbg as the Windows-best option.

Sources: [EpicGamesExt/raddebugger](https://github.com/EpicGamesExt/raddebugger), [nvim-dap-odin](https://github.com/NANDquark/nvim-dap-odin), [gingerBill raddbg view rules tweet](https://x.com/TheGingerBill/status/1774884475886862336), [VSCode debug gist](https://gist.github.com/RednibCoding/0c2258213a293a606542be2035846a7d), [Forum debug/profile thread](https://forum.odin-lang.org/t/how-do-you-debug-and-profile-odin-projects-lets-collect-apps-and-workflows/808).

## 8. Profiling

**Status:** Spall is first-class (in `core:prof/spall`); Tracy is community.

**Spall (`gravitymoth.com/spall`):** Built by Colin Davidson (Odin community). Header-only C lib + browser-based viewer (also native). Odin ships **`core:prof/spall`** — zero-install, idiomatic API for begin/end events. Forum thread (March 2026) suggests Spall **may be deprecated** / less-maintained — worth verifying before committing the template to it.

**Tracy:** **`oskarnp/odin-tracy`** — bindings/wrapper. Last update July 2024. Works but lags Tracy upstream releases. No first-party.

**Built-in:** `core:prof/spall` for trace events; `-show-timings` / `-show-more-timings` for compile-time profiling; that's it.

**Recommendation:** Default to `core:prof/spall` (zero deps, in-tree). Document the odin-tracy path for users who want Tracy. Don't write profiling glue from scratch.

Sources: [Spall showcase](https://odin-lang.org/showcase/spall/), [`core:prof/spall`](https://pkg.odin-lang.org/core/prof/spall/), [oskarnp/odin-tracy](https://github.com/oskarnp/odin-tracy), [Forum: Alternative to Spall](https://forum.odin-lang.org/t/alternative-to-spall-for-tracing-profiling-and-frame-graphs/1626).

## 9. Community resources & semi-official setups

**Discord:** https://discord.com/invite/odinlang — ~9,300+ members. **The** real-time channel.

**Forum:** https://forum.odin-lang.org — official self-hosted, categorized long-form.

**Reddit:** unofficial `r/odinlang` (referenced from community page).

**IRC:** `#odin` on hackint.org (unofficial, low-traffic).

**Awesome list:** **`jakubtomsu/awesome-odin`** — well-maintained, the canonical "where do I find X for Odin" map. Covers bindings, libraries, tools, IDE support, books, video tutorials, project templates.

**Notable books / tutorial authors:**
- **Karl Zylinski** — `odinbook.com` ("Understanding the Odin Programming Language"), `zylinski.se` blog, hot-reload templates, the Odin+Raylib YouTube series. **The single most influential beginner-to-intermediate resource.**
- **gingerBill** — language design articles, Memory Allocation Strategies series (canonical reading)
- **Sam H. Smith** — `samhsmith.com/odin_tutorial_1/`

**Production users (proves it's not a toy):** **JangaFX** (EmberGen, GeoGen, LiquiGen — all 100% Odin, used by Bethesda/CAPCOM/WB/Weta etc). The Odin showcase page lists more.

**Recommendation:** Link Discord + forum + awesome-odin + Karl's book/blog from the template's CLAUDE.md.

Sources: [Odin community page](https://odin-lang.org/community/), [Odin Discord invite](https://discord.com/invite/odinlang), [Odin forum](https://forum.odin-lang.org/), [awesome-odin](https://github.com/jakubtomsu/awesome-odin), [odinbook.com](https://odinbook.com/), [EmberGen showcase](https://odin-lang.org/showcase/embergen/).

## 10. Updates & versioning

**Versioning:** `dev-YYYY-MM` monthly releases (no semver). `dev-2026-04` is current. Nightly builds also published.

**Install methods:**
- Prebuilt binaries from GitHub releases — Windows/macOS (universal)/Linux x64+arm64
- Build from source — `clone && build.{bat,sh}`. Requires Clang+LLVM 14 or 17–21 on Unix; MSVC on Windows
- Third-party packagers (Repology lists them) — flagged as "may be flawed" by upstream
- Homebrew tap exists (community)
- AUR packages exist
- `asdf` plugin: `jtakakura/asdf-odin`

**Version manager:** **`dogue/ovm`** is the rustup analog. **No longer maintained as of early 2024**, alpha state, looking for new owner. Last release v0.0.4 (Feb 2024). It exists and works for basic cases but is risky to bake into a template's onboarding path.

**`odin version`:** Reports the git SHA + tag (e.g., `dev-2026-04:abc123`). `odin report` dumps a fuller bug-report identity blob.

**Pinning a project to a specific version:** No standard mechanism. You can:
- Document required version in README
- Commit your `.ovm` profile (if using ovm)
- Vendor the entire compiler as a git submodule (some heavy projects do this)
- Use the `setup-odin` GA in CI with `release: dev-2026-04`

**Recommendation:** Document `setup-odin` for CI pinning. Add a `.odin-version` file convention to the template (just a plain-text file with the `dev-YYYY-MM` tag), and a `just check-odin-version` task that compares `odin version` output and warns. Don't wrap `ovm` — it's unmaintained.

Sources: [Install docs](https://odin-lang.org/docs/install/), [dogue/ovm](https://github.com/dogue/ovm), [setup-odin GA](https://github.com/marketplace/actions/setup-odin), [Odin releases](https://github.com/odin-lang/Odin/releases).

## 11. Adjacent ecosystem to know about

**Other editor support:** Already covered in §3 (VS Code, Helix, Sublime, JetBrains, Zed, Emacs, Vim/Neovim).

**Online playgrounds:**
- **codapi.org/odin** — official-feeling playground, embeddable
- Various hand-rolled WASM playgrounds (lorenzocabrini/odin-playground)

**CI templates:**
- **`laytan/setup-odin@v2`** — install Odin in GitHub Actions. Configurable: `release`, `branch`, `llvm-version`, `build-type`, `repository`. Requires `token: ${{ secrets.GITHUB_TOKEN }}`.
- The `odin-lang/examples` repo's `.github/workflows/check.yml` is a worked example using the strict flag set.

**Docker images:**
- `primeimages/odin` on Docker Hub
- `PlummersSoftwareLLC/Odin-docker` (Ubuntu base)
- `rzuckerm/odin-docker-image`
- `officialar33b/odin-docker`
None are official; all community-maintained.

**Hot-reload pattern:** Karl Zylinski's templates are the reference. Use `dynlib.initialize_symbols` to bind a struct-of-procs against the DLL. Split: `main` (loader, owns `Game_Memory`) + `game.dll` (gameplay). Watch DLL mtime, reload on change. Works on Windows/macOS/Linux/Web (Emscripten).

**Build tooling:**
- `Data-Oriented-House/PortableBuildTools` — for setting up MSVC without full Visual Studio (worth knowing for Windows onboarding)
- `GoNZooo/odin-cli` — CLI argument parsing (though `core:flags` is now in stdlib)

**Recommendation:** Use `setup-odin` in CI. Bundle a Dockerfile FROM a known image but don't publish a new one. Adopt Karl Zylinski's hot-reload structure verbatim if doing gamedev — it's the de-facto standard.

Sources: [codapi.org/odin](https://codapi.org/odin/), [setup-odin marketplace](https://github.com/marketplace/actions/setup-odin), [PlummersSoftwareLLC Docker](https://github.com/PlummersSoftwareLLC/Odin-docker), [Karl Zylinski hot reload article](https://zylinski.se/posts/hot-reload-gameplay-code/).

## Don't reinvent these

- **Compiler subcommands** — `build/run/check/test/doc/strip-semicolon/bundle/version/report/root` cover the full lifecycle
- **`odin test`** — full parallel runner with leak detection, JSON reports, name filtering, deterministic seeding. Just use it.
- **`odinfmt`** (in OLS repo) — the de-facto formatter; ship `odinfmt.json`, don't write a new formatter
- **`odin strip-semicolon`** — for the optional-semicolon style
- **OLS** — completion/hover/goto/refs/rename/inlay/semantic tokens. Just configure `ols.json`.
- **`tree-sitter-grammars/tree-sitter-odin`** — canonical TS grammar
- **`Tetralux/odin.vim`** — filetype/syntax for Vim/Neovim (use TS for highlighting)
- **`pkg.odin-lang.org`** — full HTML docs for `base:`/`core:`/`vendor:` with built-in search; mirror locally rather than rebuild
- **`core:` standard library** — fmt/strings/mem/slice/sort/log/io/os/encoding/json/testing/time/sync/thread/math/linalg etc.; complete enough you rarely reach outside
- **`vendor:` collection** — raylib/sdl2/sdl3/glfw/vulkan/wgpu/openGL/directx/miniaudio/microui/stb/lua/box2d/curl etc.; static-linked by default
- **`core:prof/spall`** — built-in tracing
- **`core:nbio`** — async I/O abstraction (IOCP/io_uring/kqueue)
- **`core:testing`** APIs — `expect/expectf/expect_value/fail/cleanup/expect_leaks/expect_signal`
- **`-collection:`** — the dependency wiring mechanism; vendor + collection covers ~all needs
- **Karl Zylinski hot-reload templates** — use the structure as the reference for game projects
- **`setup-odin@v2`** GitHub Action — for CI version pinning
- **`nvim-dap-odin`** + codelldb — for Neovim debugging
- **gingerBill's raddbg fork view rules** — for Windows raddbg debugging
- **awesome-odin** — for library discovery

## Genuine gaps the template should fill

- **Project scaffolder** — there's no `odin init`. The template *is* the scaffolder.
- **Opinionated project layout** — no canonical convention; pick one (`src/`, `assets/`, `build/`, `tools/`, `libs/`) and document it.
- **Cross-platform task runner** — sh/bat duplication is the norm; `justfile` solves it.
- **Vetted strict-mode flag set** — bundle a `just check` and `just build-strict` that combines `-vet -strict-style -vet-tabs -disallow-do -warnings-as-errors` (matches `odin-lang/examples` CI).
- **Pre-wired `ols.json` and `odinfmt.json`** — no defaults exist; first-run setup pain.
- **Pre-wired Neovim config** — LSP + DAP + TS + filetype + format-on-save, all working together (Neovim 0.12+ built-in TS, since nvim-treesitter was archived 2026-04-03).
- **Local doc mirror / search** — pkg.odin-lang.org isn't packaged for offline use; bundle a fetch script and a local fuzzy search wrapper around the static HTML.
- **`.odin-version` pinning convention** — no language-level mechanism; introduce a project file + a `just check-odin-version` task; mirror the CI pin.
- **Vendoring helper** — `just vendor add <git-url>` that does `git submodule add` into `libs/`, writes a manifest line, and updates `ols.json`'s `collections`.
- **Coverage / benchmark harness** — neither exists in the language; even a thin wrapper around `odin test` outputting per-test timings would be net-new.
- **Pre-wired hot-reload template variant** — Karl's template is gamedev-shaped; a generic library/CLI variant is missing.
- **Pre-wired DAP launch configs for VS Code + Neovim** — both ecosystems have plugins, neither ships ready-made `launch.json` for a generic project.
- **LLDB pretty-printer bundle** — not shipped by the compiler; bundle community ones for slice/map/string/dynamic-array.
- **Onboarding doc that explicitly tells beginners NOT to look for a package manager** — gingerBill's stance is widely confusing to newcomers; the template's CLAUDE.md should pre-empt this.

## Sources (consolidated)

- [Odin landing page](https://odin-lang.org/)
- [Compiler Flags wiki](https://github.com/odin-lang/Odin/wiki/Compiler-Flags)
- [Release dev-2026-04](https://github.com/odin-lang/Odin/releases/tag/dev-2026-04)
- [Q4 2025 / Q1 2026 newsletter](https://odin-lang.org/news/newsletter-2026-q1/)
- [Install docs](https://odin-lang.org/docs/install/)
- [Overview docs](https://odin-lang.org/docs/overview/)
- [Testing docs](https://odin-lang.org/docs/testing/)
- [pkg.odin-lang.org core index](https://pkg.odin-lang.org/core/)
- [pkg.odin-lang.org vendor index](https://pkg.odin-lang.org/vendor/)
- [`core:testing` API](https://pkg.odin-lang.org/core/testing/)
- [`core:prof/spall`](https://pkg.odin-lang.org/core/prof/spall/)
- [Vendor folder on GitHub](https://github.com/odin-lang/Odin/tree/master/vendor)
- [DanielGavin/ols](https://github.com/DanielGavin/ols)
- [OLS architecture (DeepWiki)](https://deepwiki.com/DanielGavin/ols)
- [VS Code OLS extension](https://marketplace.visualstudio.com/items?itemName=DanielGavin.ols)
- [tree-sitter-grammars/tree-sitter-odin](https://github.com/tree-sitter-grammars/tree-sitter-odin)
- [Helix formatter discussion](https://github.com/helix-editor/helix/discussions/12559)
- [Tetralux/odin.vim](https://github.com/Tetralux/odin.vim)
- [Zed Odin extension](https://zed.dev/extensions/odin)
- [JetBrains Odin Support plugin](https://plugins.jetbrains.com/plugin/22933-odin-support)
- [obiwan87/odin-intellij](https://github.com/obiwan87/odin-intellij)
- [odin-lang/examples](https://github.com/odin-lang/examples)
- [karl-zylinski/odin-raylib-hot-reload-game-template](https://github.com/karl-zylinski/odin-raylib-hot-reload-game-template)
- [karl-zylinski/odin-sokol-hot-reload-template](https://github.com/karl-zylinski/odin-sokol-hot-reload-template)
- [Karl Zylinski hot reload article](https://zylinski.se/posts/hot-reload-gameplay-code/)
- [Structuring Odin Projects (Draupnir)](https://odin-arsenal.github.io/draupnir/StructuringProjects.html)
- [DragosPopse/odin-build](https://github.com/DragosPopse/odin-build)
- [Package Managers are Evil (gingerBill)](https://www.gingerbill.org/article/2025/09/08/package-managers-are-evil/)
- [Forum: dependency management](https://forum.odin-lang.org/t/how-does-odin-plan-to-avoid-repeating-c-pythons-dependency-management-fiasco/591)
- [Odin FAQ](https://odin-lang.org/docs/faq/)
- [pkg.odin-lang.org renderer repo](https://github.com/odin-lang/pkg.odin-lang.org)
- [`core:odin/doc-format`](https://pkg.odin-lang.org/core/odin/doc-format/)
- [EpicGamesExt/raddebugger](https://github.com/EpicGamesExt/raddebugger)
- [gingerBill raddbg view rules](https://x.com/TheGingerBill/status/1774884475886862336)
- [VS Code Odin debug gist](https://gist.github.com/RednibCoding/0c2258213a293a606542be2035846a7d)
- [NANDquark/nvim-dap-odin](https://github.com/NANDquark/nvim-dap-odin)
- [Forum: debug & profile](https://forum.odin-lang.org/t/how-do-you-debug-and-profile-odin-projects-lets-collect-apps-and-workflows/808)
- [Spall showcase](https://odin-lang.org/showcase/spall/)
- [oskarnp/odin-tracy](https://github.com/oskarnp/odin-tracy)
- [Odin community page](https://odin-lang.org/community/)
- [Odin Discord invite](https://discord.com/invite/odinlang)
- [Odin forum](https://forum.odin-lang.org/)
- [jakubtomsu/awesome-odin](https://github.com/jakubtomsu/awesome-odin)
- [Understanding the Odin Programming Language (book)](https://odinbook.com/)
- [Karl Zylinski blog](https://zylinski.se/posts/introduction-to-odin/)
- [EmberGen showcase](https://odin-lang.org/showcase/embergen/)
- [Optional Semicolons](https://odin-lang.org/news/optional-semicolons/)
- [dogue/ovm](https://github.com/dogue/ovm)
- [setup-odin GitHub Action](https://github.com/marketplace/actions/setup-odin)
- [PlummersSoftwareLLC/Odin-docker](https://github.com/PlummersSoftwareLLC/Odin-docker)
- [codapi.org/odin (playground)](https://codapi.org/odin/)
- [Forum: Alternative to Spall](https://forum.odin-lang.org/t/alternative-to-spall-for-tracing-profiling-and-frame-graphs/1626)
