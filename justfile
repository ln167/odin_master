# odin_master task runner.

default:
    @just --list --unsorted

# ─── Bootstrap and environment ─────────────────────────────────────────────
check-odin-version:
    @odin version | grep -q "$(cat .odin-version)" && echo "odin pin OK: $(cat .odin-version)" || (echo "DRIFT: .odin-version wants $(cat .odin-version); have:"; odin version; exit 1)

# ─── Clean / format ───────────────────────────────────────────────────────
clean:
    @rm -rf build target profiles/*.spall

format:
    @find . -name '*.odin' -not -path '*/build/*' -not -path '*/vendor/*' -print0 | xargs -0 -n1 odinfmt -overwrite

# ─── Bench / profile ──────────────────────────────────────────────────────
bench name:
    @cd bench/{{name}} && odin run . -define:INSTRUMENT=spall -o:speed

profile-run binary:
    @SPALL_OUT=profiles/$(basename {{binary}}).spall {{binary}}

# ─── Claims (compile / output / behavior verification) ────────────────────
# A claim is a dir under tests/ or claims/. Its claim.txt picks the assertion
# (compiles / fails / panics / output / equiv / faster / test); a tests/<name>/ with
# main.odin + expected.txt is an implicit output claim. <file> may be "." to build the
# whole dir as a package. panics: build ok then run crashes nonzero. test: odin test .
# must pass. equiv fuses variant_A/variant_B and diffs their output; faster times them
# (-o:speed) and certifies B >= kx faster, else FAIL / INCONCLUSIVE (exit 0/1/2).
# claim.py runs one (just claim <name>) or all.
claim name:
    @python tools/substrate/claim.py {{name}}

verify name:
    @python tools/substrate/claim.py {{name}}

verify-all:
    @python tools/substrate/claim.py

# ─── Watch (save → rerun; native mtime poll, no dependency) ────────────────
# Rerun an Odin -file program on every save (path is relative to your cwd).
#   cd scratch && just watch scratch.odin
[no-cd]
watch file:
    @python "{{justfile_directory()}}/tools/watch.py" '{{file}}'

# Rerun a tests/<name> verification (recompile + diff vs expected) on save.
watch-test name:
    @python tools/watch.py tests/{{name}} -- just verify {{name}}

# ─── Tracy profiler client lib (one-time, per machine) ────────────────────
tracy-build:
    @python tools/profiler/build_tracy.py

# ─── Dear ImGui static lib via Capati/odin-imgui (one-time, per machine) ──
imgui-build:
    @python tools/ui/build_imgui.py

# ─── Assembly view ────────────────────────────────────────────────────────
# Emit assembly for an Odin source. Grep the .s file for `<package>_<proc>:`
# to find a specific procedure. Compiled at -o:speed so what you see is what
# the optimizer produced.
#   just asm bench/naive-vs-bresenham       # package dir; emits .s in that dir
#   just asm-file path/to/main.odin         # single -file source
asm dir:
    @cd {{dir}} && odin build . -build-mode:asm -o:speed

[no-cd]
asm-file path:
    @p="{{replace(path, '\\', '/')}}" && cd "$(dirname "$p")" && odin build "$(basename "$p")" -file -build-mode:asm -o:speed

# ─── Debugger (LLDB with Odin pretty-printers) ────────────────────────────
# Launches lldb with the slice/string/dynamic-array/map summaries pre-loaded.
#   just debug build/debug/app                     # debug an existing exe
#   just debug-dir bench/grid-vs-svo               # build dir + debug
debug binary:
    @lldb -O "command script import tools/debug/odin_lldb.py" {{binary}}

debug-dir dir:
    @cd {{dir}} && odin build . -debug -out:.dbg.exe && lldb -O "command script import $(pwd)/../../tools/debug/odin_lldb.py" .dbg.exe

# ─── RAD Debugger (Windows graphical debugger, Epic Games OSS) ────────────
# Odin's dev-2025-06+ compiler emits a `.raddbg` section into the PDB so
# raddbg picks Odin programs up natively. Install once, then launch.
raddbg-install:
    @python tools/debug/install_raddbg.py

# ─── codelldb / lldb fixup (Windows: install missing python310.dll) ──────
# LLVM's Windows binary doesn't ship the Python DLL liblldb links against,
# and the Odin install expects liblldb under ~/odin/lldb/bin/. This recipe
# stitches both together so codelldb/lldb-dap actually work.
lldb-fixup:
    @python tools/debug/install_lldb_python.py

raddbg binary:
    @tools/debug/raddbg/raddbg.exe {{binary}}

raddbg-dir dir:
    @cd {{dir}} && odin build . -debug -out:.dbg.exe && ../../tools/debug/raddbg/raddbg.exe .dbg.exe

# ─── Lab (persistent hot-reload workshop) ─────────────────────────────────
# `lab` is the long-running peer to `bench` (perf, one-shot) and `tests`
# (correctness, one-shot). Single host, hot-reloadable game DLL.
lab:
    @cd lab && python build.py watch

lab-build:
    @cd lab && python build.py hot

# headless input/sim test for lab (no window) — agent-runnable
lab-test:
    @cd lab && python build.py test

lab-clean:
    @cd lab && python build.py clean

# ─── Substrate (knowledge base) — added by 2026-05-04 redesign ────────────

# `doctor` rewritten to point at substrate doctor (was: `odin-master doctor`).
doctor domain="":
    python tools/substrate/doctor.py {{ if domain != "" { "--domain " + domain } else { "" } }}

doctor-provenance domain="":
    python tools/substrate/doctor.py --provenance-check {{ if domain != "" { "--domain " + domain } else { "" } }}

substrate-promote path:
    python tools/substrate/promote.py {{path}}

substrate-test domain="":
    python tools/substrate/test.py {{ if domain != "" { "--domain " + domain } else { "" } }}

# Fetch html_mirror sources from manifest.yaml into content/domains/<d>/source/raw/.
# Entries with `mirror: true` recurse same-host links up to max_depth/max_pages.
#   just substrate-update                   # fetch all html_mirror entries
#   just substrate-update graphics          # all in domain "graphics"
substrate-update domain="":
    @python tools/substrate/fetch.py {{ if domain != "" { "--domain " + domain } else { "" } }}

substrate-fetch-id id:
    @python tools/substrate/fetch.py --id {{id}}

substrate-refetch-id id:
    @python tools/substrate/fetch.py --id {{id}} --force

new-domain name:
    python tools/substrate/domain-scaffold.py new domain {{name}}

# qmd-backed search over indexed source corpora.
# `qmd query` does hybrid BM25 + vector + LLM rerank (needs `qmd embed` first).
# `--bm25` falls back to BM25-only (no embeddings needed).
substrate-search query *args:
    python tools/substrate/search.py {{query}} {{args}}
