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

# update fetcher pipeline is deferred for v1 (see spec § Open questions).
substrate-update domain="":
    @echo "update fetcher pipeline deferred for v1 — see docs/superpowers/specs/2026-05-04-substrate-redesign-design.md § Open questions"
    @echo "domain hint: {{domain}}"

new-domain name:
    python tools/substrate/domain-scaffold.py new domain {{name}}

# qmd-backed search over indexed source corpora.
# `qmd query` does hybrid BM25 + vector + LLM rerank (needs `qmd embed` first).
# `--bm25` falls back to BM25-only (no embeddings needed).
substrate-search query *args:
    python tools/substrate/search.py {{query}} {{args}}
