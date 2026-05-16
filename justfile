# odin_master task runner.

default:
    @just --list --unsorted

# ─── Bootstrap and environment ─────────────────────────────────────────────
bootstrap:
    @bash tools/install/install.sh

bootstrap-lite:
    @bash tools/install/install.sh --lite

check-odin-version:
    @cat .odin-version

update-odin:
    @echo "see tools/install/install.sh — re-run bootstrap to bump"

# ─── Build / run (Odin compiler wrappers) ─────────────────────────────────
build profile="debug":
    @odin build . -out:build/{{profile}}/app $(if [ "{{profile}}" = "release" ]; then echo "-o:speed -no-bounds-check"; else echo "-debug"; fi)

run profile="debug":
    @odin run . $(if [ "{{profile}}" = "release" ]; then echo "-o:speed"; else echo "-debug"; fi)

# `test` runs the Odin compiler's test on this directory's Odin code.
# For substrate regression tests, see `substrate-test` below.
test profile="debug":
    @odin test .

check:
    @odin check . -vet -strict-style

clean:
    @rm -rf build target profiles/*.spall

format:
    @find . -name '*.odin' -not -path '*/build/*' -not -path '*/vendor/*' -print0 | xargs -0 -n1 odinfmt -overwrite

# ─── Bench / profile ──────────────────────────────────────────────────────
bench name:
    @cd bench/{{name}} && odin run . -define:INSTRUMENT=spall -o:speed

profile-run binary:
    @SPALL_OUT=profiles/$(basename {{binary}}).spall {{binary}}

# ─── Verify (executable verifications) ────────────────────────────────────
# Each tests/<name>/ is a reference-solution program. Running it prints a
# deterministic fingerprint to stdout; we diff against expected.txt.
verify name:
    @cd tests/{{name}} && odin run main.odin -file -out:.bin > .actual.txt
    @diff tests/{{name}}/expected.txt tests/{{name}}/.actual.txt && echo "verify {{name}}: PASS" || (echo "verify {{name}}: FAIL"; exit 1)

verify-all:
    @python tools/substrate/verify_all.py

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

asm-file path:
    @cd $(dirname {{path}}) && odin build $(basename {{path}}) -file -build-mode:asm -o:speed

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

raddbg binary:
    @tools/debug/raddbg/raddbg.exe {{binary}}

raddbg-dir dir:
    @cd {{dir}} && odin build . -debug -out:.dbg.exe && ../../tools/debug/raddbg/raddbg.exe .dbg.exe

# ─── Lab (persistent hot-reload workshop) ─────────────────────────────────
# `lab` is the long-running peer to `bench` (perf, one-shot) and `tests`
# (correctness, one-shot). Single host, hot-reloadable game DLL.
lab:
    @cd lab && python build.py hot && ./build/hot_reload/lab

lab-build:
    @cd lab && python build.py hot

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
