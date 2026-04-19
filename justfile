# odin_master task runner.

default:
    @just --list --unsorted

# ─── Bootstrap and environment ─────────────────────────────────────────────
bootstrap:
    @bash tools/install/install.sh

bootstrap-lite:
    @bash tools/install/install.sh --lite

doctor:
    @odin-master doctor

check-odin-version:
    @cat .odin-version

update-odin:
    @echo "see tools/install/install.sh — re-run bootstrap to bump"

# ─── Build / run / test (wraps `odin`) ────────────────────────────────────
build profile="debug":
    @odin build . -out:build/{{profile}}/app $(if [ "{{profile}}" = "release" ]; then echo "-o:speed -no-bounds-check"; else echo "-debug"; fi)

run profile="debug":
    @odin run . $(if [ "{{profile}}" = "release" ]; then echo "-o:speed"; else echo "-debug"; fi)

test profile="debug":
    @odin test .

check:
    @odin check . -vet -strict-style

clean:
    @rm -rf build target playground/profiles/*.spall

format:
    @find . -name '*.odin' -not -path '*/build/*' -not -path '*/vendor/*' -print0 | xargs -0 -n1 odinfmt -overwrite

# ─── Bench / profile (Plan 5) ─────────────────────────────────────────────
bench name:
    @cd playground/bench/{{name}} && odin run . -define:INSTRUMENT=spall -o:speed

profile-run binary:
    @SPALL_OUT=playground/profiles/$(basename {{binary}}).spall {{binary}}

hot:
    @echo "scaffold a project with `odin-master new <n> --template game` first"

# ─── Scratchpad (Plan 5) ──────────────────────────────────────────────────
scratch-new slug:
    @odin-master scratch new {{slug}}

scratch-run dir:
    @odin-master scratch run {{dir}}

scratch-watch dir:
    @watchexec -w {{dir}} -- odin-master scratch run {{dir}}

# ─── Knowledge base (Plan 2) ──────────────────────────────────────────────
summarize source:
    @odin-master summarize {{source}}

add-transcript url:
    @echo "add-transcript {{url}}: see docs/adding-sources.md"

lib-add git_url:
    @odin-master vendor add {{git_url}}

docs-build:
    @odin-master docs build

publish topic:
    @odin-master publish {{topic}}

# ─── Tooling ──────────────────────────────────────────────────────────────
install-cli:
    @cd tools/search && cargo install --path . --locked
    @cd tools/indexer && pipx install . --force
