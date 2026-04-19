# Plan 1 — Foundation: repo skeleton + CLI shells

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Materialize the entire `odin_master` repository structure from spec §3 with stub content; implement `odin-master` (Python) and `odin-search` (Rust) CLIs as dispatch shells where every subcommand prints "not yet implemented" and exits 0; wire a `justfile` with stubbed targets and a CI workflow that runs the structural test suite.

**Architecture:** Plan 1 builds the static skeleton only — no real logic. A pytest suite (`tests/test_repo_structure.py`) drives implementation TDD-style: write the assertion that a path/file/content exists, watch it fail, create the file, watch it pass, commit. The two CLIs (`odin-master`, `odin-search`) define their full subcommand/flag surface so downstream plans (2, 3, 6) can fill them in one piece at a time without reshaping the surface.

**Tech Stack:** Python 3.12 + uv + typer + pytest (admin CLI shell + structural tests); Rust stable + clap (search CLI shell); `just` (task runner); GitHub Actions (CI).

**Test approach:** Each task starts by writing a failing pytest assertion against the not-yet-existing artifact, then creates the artifact, then verifies the assertion passes. No production logic in Plan 1 — only structural conformance to spec §3 and the documented CLI surface (spec §5.5 and §6.3 / §8.5).

**Spec sections this implements:** §3 (full layout), §5.5 (CLI surface — shell only), §6.3 (CLI subcommand inventory — shell only), §7.1 (version pins), §8.2 / §8.3 (ols.json / odinfmt.json content), §8.5 (justfile targets — stubs only), §10.2 (playground layout), §11.1 (file synced/gitignored split), §11.6 (pre-commit hook content).

**Out of scope for Plan 1:** any real logic behind any CLI subcommand or just target; any indexer code; any search code; any template scaffolding logic; any instrumentation library code; any actual editor plugin code. All of those are addressed in Plans 2–8.

---

### Task 1: Test harness scaffolding

**Files:**
- Create: `tests/__init__.py` (empty)
- Create: `tests/conftest.py`
- Create: `tests/test_repo_structure.py`
- Create: `pyproject.toml` (root — for pytest discovery only)

- [ ] **Step 1: Write the failing test**

`tests/__init__.py`:
```python
```

`tests/conftest.py`:
```python
# pytest discovery anchor; intentionally empty.
```

`tests/test_repo_structure.py`:
```python
import json
import shutil
import subprocess
import sys
from pathlib import Path

import pytest
import yaml

if sys.version_info >= (3, 11):
    import tomllib as _toml
else:
    import tomli as _toml

ROOT = Path(__file__).resolve().parent.parent


def test_repo_root_exists():
    assert ROOT.is_dir()


def test_root_pyproject_for_test_discovery():
    assert (ROOT / "pyproject.toml").is_file()
```

(All imports needed by later tasks are declared up front so subsequent tasks just append test functions — no scattered "remember to also import X" footnotes.)

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/ -v`
Expected: ERROR — `pyproject.toml` not found at root, OR `pytest: command not found` if pytest isn't installed yet.

- [ ] **Step 3: Implement**

Create `pyproject.toml` at the repo root:
```toml
[project]
name = "odin-master-template"
version = "0.0.1"
description = "Personal Odin master template — root project, holds dev tooling and structural tests."
requires-python = ">=3.12"

[project.optional-dependencies]
dev = ["pytest>=8", "pyyaml>=6", "tomli>=2; python_version<'3.11'"]

[tool.pytest.ini_options]
testpaths = ["tests", "tools/indexer/tests"]
python_files = "test_*.py"
addopts = "-ra"
```

Install dev deps: `uv pip install -e ".[dev]"` (or `python -m pip install -e ".[dev]"` if not using uv).

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/ -v`
Expected: PASS — both tests green.

- [ ] **Step 5: Commit**

```bash
git add tests/ pyproject.toml
git commit -m "chore: bootstrap pytest harness for structural verification"
```

---

### Task 2: Top-level metadata files

**Files:**
- Create: `README.md`
- Create: `CLAUDE.md`
- Create: `.gitignore`
- Create: `.editorconfig`
- Create: `.odin-version`
- Create: `.odin-master/versions.toml`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append to `tests/test_repo_structure.py`:
```python
def test_readme_exists():
    assert (ROOT / "README.md").is_file()


def test_claude_md_exists():
    assert (ROOT / "CLAUDE.md").is_file()


def test_gitignore_includes_index_and_profiles():
    txt = (ROOT / ".gitignore").read_text(encoding="utf-8")
    assert "content/index/" in txt
    assert "playground/profiles/" in txt
    assert "build/" in txt
    assert "target/" in txt


def test_editorconfig_exists():
    txt = (ROOT / ".editorconfig").read_text(encoding="utf-8")
    assert "root = true" in txt


def test_odin_version_pin_matches_spec():
    assert (ROOT / ".odin-version").read_text(encoding="utf-8").strip() == "dev-2026-04"


def test_versions_toml_pins():
    data = _toml.loads((ROOT / ".odin-master" / "versions.toml").read_text(encoding="utf-8"))
    assert data["odin"] == "dev-2026-04"
    assert "ols" in data
    assert data["tree_sitter_odin"] == "1.3.0"
    assert data["neovim_minimum"] == "0.12.0"
    assert data["qwen3_embedding"] == "qwen3-embedding:4b"
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL — files don't exist yet.

- [ ] **Step 3: Implement**

`README.md`:
```markdown
# odin_master

Personal master template for Odin programming work. See:

- `docs/getting-started.md` — install on a new machine
- `docs/daily-use.md` — cheatsheet for code/search/build/run
- `docs/superpowers/specs/2026-04-19-odin-master-template-design.md` — full design spec
- `docs/superpowers/plans/INDEX.md` — implementation plan index
```

`CLAUDE.md`:
```markdown
# Notes for LLM agents working in this repo

This is the `odin_master` template. The design spec is at
`docs/superpowers/specs/2026-04-19-odin-master-template-design.md`.

To search the corpus, use the `odin-search` CLI:

    odin-search "<query>" --json

The `odin-master` Python CLI handles cold-path tasks (index, summarize, scaffold,
template self-update, doctor, etc.). See `odin-master --help`.
```

`.gitignore`:
```
# Search index — rebuilt locally per machine
content/index/

# Profiling captures — large binary traces
playground/profiles/
*.spall
*.pdb
*.ctf

# Build artifacts
build/
target/

# Python
__pycache__/
*.pyc
.venv/
.pytest_cache/
*.egg-info/

# Editor / OS
.DS_Store
.idea/
.vscode/

# Node (tree-sitter, etc.)
node_modules/

# Local user overrides
local.toml
```

`.editorconfig`:
```ini
root = true

[*]
end_of_line = lf
insert_final_newline = true
charset = utf-8
indent_style = space
indent_size = 4
trim_trailing_whitespace = true

[*.{json,yaml,yml,toml}]
indent_size = 2

[Makefile]
indent_style = tab

[justfile]
indent_style = space
indent_size = 4

[*.odin]
indent_style = tab
indent_size = 4
```

`.odin-version`:
```
dev-2026-04
```

`.odin-master/versions.toml`:
```toml
# Locked version pins for the odin_master template.
# See spec §7.1.
odin              = "dev-2026-04"
ols               = "latest"
tree_sitter_odin  = "1.3.0"
neovim_minimum    = "0.12.0"
codelldb          = "latest"
ollama_minimum    = "0.1.0"
qwen3_embedding   = "qwen3-embedding:4b"
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS — all new tests green.

- [ ] **Step 5: Commit**

```bash
git add README.md CLAUDE.md .gitignore .editorconfig .odin-version .odin-master/ tests/test_repo_structure.py
git commit -m "chore: add top-level repo metadata and version pins"
```

---

### Task 3: Editor configs (`ols.json`, `odinfmt.json`)

**Files:**
- Create: `ols.json`
- Create: `odinfmt.json`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append to `tests/test_repo_structure.py`:
```python
def test_ols_json_disables_format():
    data = json.loads((ROOT / "ols.json").read_text(encoding="utf-8"))
    # Spec §8.2: enable_format MUST be false; we route through odinfmt directly.
    assert data["enable_format"] is False
    assert data["enable_inlay_hints"] is True
    assert data["enable_semantic_tokens"] is True
    assert "checker_args" in data
    assert "-vet" in data["checker_args"]
    assert "-strict-style" in data["checker_args"]
    # Collections must include odin_lib for template projects.
    names = [c["name"] for c in data.get("collections", [])]
    assert "odin_lib" in names


def test_odinfmt_json_defaults():
    data = json.loads((ROOT / "odinfmt.json").read_text(encoding="utf-8"))
    # Spec §8.3.
    assert data["tabs"] is True
    assert data["tabs_width"] == 4
    assert data["character_width"] == 80
    assert data["sort_imports"] is True
    assert data["brace_style"] == "_1TBS"
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL — files don't exist.

- [ ] **Step 3: Implement**

`ols.json`:
```json
{
  "enable_format": false,
  "enable_inlay_hints": true,
  "enable_semantic_tokens": true,
  "checker_path": ["src"],
  "checker_args": "-vet -strict-style",
  "profiles": [
    { "name": "default", "checker_path": ["src"], "defines": {} }
  ],
  "collections": [
    { "name": "odin_lib", "path": "tools/odin_lib" }
  ]
}
```

`odinfmt.json`:
```json
{
  "tabs": true,
  "tabs_width": 4,
  "character_width": 80,
  "sort_imports": true,
  "brace_style": "_1TBS"
}
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add ols.json odinfmt.json tests/test_repo_structure.py
git commit -m "chore: ship ols.json + odinfmt.json with locked defaults"
```

---

### Task 4: `content/` skeleton + manifest stub

**Files:**
- Create: `content/manifest.yaml`
- Create: `content/sources/.gitkeep`
- Create: `content/sources/tier1-authoritative/.gitkeep`
- Create: `content/sources/tier2-curated/.gitkeep`
- Create: `content/sources/tier3-community/.gitkeep`
- Create: `content/wiki/INDEX.md`
- Create: `content/wiki/concepts/.gitkeep`
- Create: `content/wiki/summaries/.gitkeep`
- Create: `content/outputs/.gitkeep`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append:
```python
def test_content_tree_exists():
    expected = [
        "content",
        "content/sources",
        "content/sources/tier1-authoritative",
        "content/sources/tier2-curated",
        "content/sources/tier3-community",
        "content/wiki",
        "content/wiki/concepts",
        "content/wiki/summaries",
        "content/outputs",
    ]
    for p in expected:
        assert (ROOT / p).is_dir(), f"missing dir: {p}"


def test_manifest_yaml_parses_and_is_a_list():
    data = yaml.safe_load((ROOT / "content" / "manifest.yaml").read_text(encoding="utf-8"))
    assert isinstance(data, list)


def test_wiki_index_exists():
    assert (ROOT / "content" / "wiki" / "INDEX.md").is_file()
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL — directories missing.

- [ ] **Step 3: Implement**

Create empty `.gitkeep` files at the listed paths (use `touch` on Linux/macOS or PowerShell `New-Item` on Windows; on git-bash on Windows, `touch` works).

`content/manifest.yaml`:
```yaml
# Source registry — see spec §4.6.
# Plan 8 will populate this with the default corpus from spec §4.7.
# For Plan 1, this is an empty list so the file parses.
[]
```

`content/wiki/INDEX.md`:
```markdown
# Wiki

LLM-compiled, concept-organized articles with backlinks to verbatim sources.
This file will be auto-maintained as a TOC by `odin-master summarize` (Plan 2).
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add content/
git commit -m "chore: scaffold content/ tree (sources/wiki/outputs) + empty manifest"
```

---

### Task 5: `playground/` skeleton + scratch `_template/`

**Files:**
- Create: `playground/scratch/_template/main.odin`
- Create: `playground/scratch/_template/claim.md`
- Create: `playground/bench/.gitkeep`
- Create: `playground/profiles/.gitkeep`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append:
```python
def test_playground_tree_exists():
    for p in ["playground/scratch/_template", "playground/bench", "playground/profiles"]:
        assert (ROOT / p).is_dir(), f"missing dir: {p}"


def test_scratch_template_has_seed_files():
    seed_dir = ROOT / "playground" / "scratch" / "_template"
    assert (seed_dir / "main.odin").is_file()
    assert (seed_dir / "claim.md").is_file()
    main = (seed_dir / "main.odin").read_text(encoding="utf-8")
    assert "package main" in main
    assert "main :: proc" in main
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL.

- [ ] **Step 3: Implement**

`playground/scratch/_template/main.odin`:
```odin
package main

import "core:fmt"

// CLAIM (edit me): describe what this scratch is verifying.

main :: proc() {
    fmt.println("hello, scratch")
}
```

`playground/scratch/_template/claim.md`:
```markdown
# Claim

What is being verified. Cite the source you are checking against.

## Source

- (path or URL)

## Expected

What we expect to observe if the claim is true.
```

Create empty `.gitkeep` in `playground/bench/` and `playground/profiles/`.

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add playground/
git commit -m "chore: scaffold playground/ tree + scratch _template seed"
```

---

### Task 6: `templates/` skeleton (game / lib / cli READMEs)

**Files:**
- Create: `templates/game/README.md`
- Create: `templates/lib/README.md`
- Create: `templates/cli/README.md`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append:
```python
def test_templates_tree_exists():
    for t in ["game", "lib", "cli"]:
        d = ROOT / "templates" / t
        assert d.is_dir(), f"missing template dir: {t}"
        assert (d / "README.md").is_file(), f"missing README in templates/{t}"
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL.

- [ ] **Step 3: Implement**

`templates/game/README.md`:
```markdown
# Game template

Karl Zylinski hot-reload skeleton. Implemented in Plan 4 — see
`docs/superpowers/plans/2026-04-19-plan-4-hot-reload-template.md`.
```

`templates/lib/README.md`:
```markdown
# Library template

Library project skeleton. Implemented in Plan 4 (or a later plan if scope grows).
```

`templates/cli/README.md`:
```markdown
# CLI template

Command-line tool skeleton. Implemented in Plan 4 (or a later plan if scope grows).
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add templates/
git commit -m "chore: scaffold templates/{game,lib,cli} placeholders"
```

---

### Task 7: `tools/odin_lib/` Odin stubs

**Files:**
- Create: `tools/odin_lib/instrument.odin`
- Create: `tools/odin_lib/bench.odin`
- Create: `tools/odin_lib/scratch.odin`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append:
```python
def test_odin_lib_files_exist_and_declare_package():
    files = ["instrument.odin", "bench.odin", "scratch.odin"]
    for f in files:
        path = ROOT / "tools" / "odin_lib" / f
        assert path.is_file(), f"missing {f}"
        txt = path.read_text(encoding="utf-8")
        # Plan 5 may decide whether package is `odin_lib` (flat) or split into
        # subpackages. For now, just require *some* package declaration.
        assert "package " in txt, f"{f}: no package declaration"
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL.

- [ ] **Step 3: Implement**

`tools/odin_lib/instrument.odin`:
```odin
package odin_lib

// instrument.SCOPE / SCOPE_NAMED / BENCH wrappers will be implemented in Plan 5.
// See spec §10.3.
//
// NOTE: spec §10.3 imports as `odin_lib:instrument`. Plan 5 must decide whether
// to split this into `tools/odin_lib/instrument/` (package instrument) or to
// rename the imports. Either is fine; Plan 1 just makes a flat stub that compiles.
```

`tools/odin_lib/bench.odin`:
```odin
package odin_lib

// Ergonomic wrappers around core:time benchmark options.
// Implemented in Plan 5.
```

`tools/odin_lib/scratch.odin`:
```odin
package odin_lib

// Output-capture helpers for the scratchpad workflow.
// Implemented in Plan 5.
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add tools/odin_lib/
git commit -m "chore: stub tools/odin_lib package files (impl in Plan 5)"
```

---

### Task 8: Misc `tools/` subdirectories (install, git-hooks, obsidian, debug, nvim)

**Files:**
- Create: `tools/install/install.sh`
- Create: `tools/install/install.ps1`
- Create: `tools/install/settings.example.toml`
- Create: `tools/git-hooks/pre-commit`
- Create: `tools/obsidian/README.md`
- Create: `tools/obsidian/obsidian.example.json`
- Create: `tools/debug/odin_lldb.py`
- Create: `tools/nvim/README.md`
- Create: `tools/nvim/lua/odin_master/init.lua`
- Create: `tools/nvim/lua/odin_master/pickers.lua`
- Create: `tools/nvim/lua/odin_master/lsp.lua`
- Create: `tools/nvim/lua/odin_master/health.lua`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append:
```python
def test_install_dir_files_exist():
    d = ROOT / "tools" / "install"
    assert (d / "install.sh").is_file()
    assert (d / "install.ps1").is_file()
    assert (d / "settings.example.toml").is_file()


def test_settings_example_has_required_keys():
    data = _toml.loads((ROOT / "tools" / "install" / "settings.example.toml").read_text(encoding="utf-8"))
    for k in ("enable_vector_search", "ollama_url", "embedding_model"):
        assert k in data, f"missing key: {k}"


def test_install_sh_has_shebang():
    txt = (ROOT / "tools" / "install" / "install.sh").read_text(encoding="utf-8")
    assert txt.startswith("#!/")


def test_pre_commit_hook_present_and_shebang():
    p = ROOT / "tools" / "git-hooks" / "pre-commit"
    assert p.is_file()
    assert p.read_text(encoding="utf-8").startswith("#!/")


def test_obsidian_dir():
    assert (ROOT / "tools" / "obsidian" / "README.md").is_file()
    assert json.loads((ROOT / "tools" / "obsidian" / "obsidian.example.json").read_text(encoding="utf-8"))


def test_debug_lldb_helper_exists():
    assert (ROOT / "tools" / "debug" / "odin_lldb.py").is_file()


def test_nvim_plugin_skeleton():
    base = ROOT / "tools" / "nvim" / "lua" / "odin_master"
    for f in ("init.lua", "pickers.lua", "lsp.lua", "health.lua"):
        assert (base / f).is_file(), f"missing {f}"
    assert "M.setup" in (base / "init.lua").read_text(encoding="utf-8")
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL.

- [ ] **Step 3: Implement**

`tools/install/install.sh`:
```bash
#!/usr/bin/env bash
set -euo pipefail

# odin_master bootstrap script — Linux / WSL / macOS.
# Plan 1: stub only. Plan 6 implements the real install logic.

echo "odin_master install.sh: not yet implemented"
echo "See docs/superpowers/plans/2026-04-19-plan-6-editor-and-cli-subcommands.md"
exit 0
```

Make it executable: `chmod +x tools/install/install.sh` (if on a Unix-y filesystem).

`tools/install/install.ps1`:
```powershell
# odin_master bootstrap script — Windows native fallback.
# Plan 1: stub only. Plan 6 implements the real install logic.

Write-Host "odin_master install.ps1: not yet implemented"
Write-Host "See docs/superpowers/plans/2026-04-19-plan-6-editor-and-cli-subcommands.md"
exit 0
```

`tools/install/settings.example.toml`:
```toml
# Per-machine settings — copy to ~/.config/odin_master/settings.toml
# (or %APPDATA%\odin_master\settings.toml on Windows).
# See spec §2.5.

enable_vector_search = true
ollama_url           = "http://127.0.0.1:11434"
embedding_model      = "qwen3-embedding:4b"
```

`tools/git-hooks/pre-commit` (per spec §11.6):
```bash
#!/usr/bin/env bash
set -e
git diff --cached --name-only --diff-filter=ACM | grep '\.odin$' | while read -r f; do
    odinfmt -stdin -overwrite < "$f" > "$f.tmp" && mv "$f.tmp" "$f"
    git add "$f"
done
odin check . -vet -strict-style
```

Make it executable: `chmod +x tools/git-hooks/pre-commit`.

`tools/obsidian/README.md`:
```markdown
# Obsidian vault setup

Open `content/` directly as an Obsidian vault. No plugins required.
Optional config snippet in `obsidian.example.json` — copy contents into your
vault's `.obsidian/app.json` to inherit the recommended settings.
```

`tools/obsidian/obsidian.example.json`:
```json
{
  "alwaysUpdateLinks": true,
  "newLinkFormat": "relative",
  "useMarkdownLinks": true
}
```

`tools/debug/odin_lldb.py`:
```python
"""LLDB pretty-printer for Odin slice / map / string / dynamic-array.

Plan 1: stub only. Implementation tracked separately.
Source it in your ~/.lldbinit:

    command script import path/to/tools/debug/odin_lldb.py
"""

def __lldb_init_module(debugger, internal_dict):
    # Stub. Pretty-printers will be registered here.
    pass
```

`tools/nvim/README.md`:
```markdown
# Neovim integration

Lua plugin spec for the odin_master template. Wires OLS, formatting (via
odinfmt), DAP (codelldb), tree-sitter (built-in 0.12+), and an `odin-search`
picker. Implemented in Plan 6.
```

`tools/nvim/lua/odin_master/init.lua`:
```lua
local M = {}

function M.setup(opts)
    opts = opts or {}
    -- Plan 6 wires LSP / DAP / picker / health. Stub for now.
    vim.notify("odin_master.setup: not yet implemented", vim.log.levels.INFO)
end

return M
```

`tools/nvim/lua/odin_master/pickers.lua`:
```lua
local M = {}

function M.search()
    vim.notify("odin_master.pickers.search: not yet implemented", vim.log.levels.INFO)
end

return M
```

`tools/nvim/lua/odin_master/lsp.lua`:
```lua
local M = {}

function M.configure_ols()
    vim.notify("odin_master.lsp.configure_ols: not yet implemented", vim.log.levels.INFO)
end

return M
```

`tools/nvim/lua/odin_master/health.lua`:
```lua
local M = {}

function M.check()
    vim.health.report_info("odin_master health: not yet implemented")
end

return M
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add tools/install/ tools/git-hooks/ tools/obsidian/ tools/debug/ tools/nvim/
git commit -m "chore: stub install scripts, pre-commit hook, obsidian/debug/nvim helpers"
```

---

### Task 9: `tools/indexer/` — Python project + `odin-master` CLI dispatch shell

**Files:**
- Create: `tools/indexer/pyproject.toml`
- Create: `tools/indexer/odin_master/__init__.py`
- Create: `tools/indexer/odin_master/cli.py`
- Create: `tools/indexer/odin_master/ingestors/__init__.py`
- Create: `tools/indexer/tests/__init__.py`
- Create: `tools/indexer/tests/test_cli_dispatch.py`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

`tools/indexer/tests/test_cli_dispatch.py`:
```python
import os
import subprocess
import sys
from pathlib import Path

INDEXER = Path(__file__).resolve().parent.parent  # tools/indexer/


def _run(args):
    env = {**os.environ, "PYTHONPATH": str(INDEXER)}
    return subprocess.run(
        [sys.executable, "-m", "odin_master.cli", *args],
        env=env, capture_output=True, text=True
    )


def test_help_lists_all_subcommands():
    r = _run(["--help"])
    assert r.returncode == 0, r.stderr
    out = r.stdout
    expected_subcommands = [
        "setup", "update", "reindex", "summarize", "lint", "doctor",
        "new", "update-template", "publish", "vendor", "docs",
        "scratch", "test-summary",
    ]
    for cmd in expected_subcommands:
        assert cmd in out, f"missing subcommand `{cmd}` in --help output:\n{out}"


def test_each_subcommand_exits_zero_with_stub_message():
    # Subcommands with required args (vendor add, summarize, new, publish)
    # are tested with a placeholder argument.
    cases = [
        ["setup"],
        ["update"],
        ["reindex"],
        ["summarize", "x"],
        ["lint"],
        ["doctor"],
        ["new", "x"],
        ["update-template"],
        ["publish", "x"],
        ["vendor", "add", "https://example.invalid/repo.git"],
        ["docs", "build"],
        ["scratch", "verify"],
        ["test-summary"],
    ]
    for args in cases:
        r = _run(args)
        assert r.returncode == 0, f"{args} -> exit {r.returncode}\nSTDOUT:{r.stdout}\nSTDERR:{r.stderr}"
        assert "not yet implemented" in (r.stdout + r.stderr), f"{args}: missing stub message"
```

Append to `tests/test_repo_structure.py`:
```python
def test_indexer_pyproject_exists():
    assert (ROOT / "tools" / "indexer" / "pyproject.toml").is_file()


def test_indexer_package_layout():
    base = ROOT / "tools" / "indexer" / "odin_master"
    assert (base / "__init__.py").is_file()
    assert (base / "cli.py").is_file()
    assert (base / "ingestors" / "__init__.py").is_file()
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/ tools/indexer/tests/ -v`
Expected: FAIL — package and CLI don't exist.

- [ ] **Step 3: Implement**

`tools/indexer/pyproject.toml`:
```toml
[project]
name = "odin-master"
version = "0.0.1"
description = "Cold-path admin and indexer CLI for the odin_master template."
requires-python = ">=3.12"
dependencies = ["typer>=0.12"]

[project.scripts]
odin-master = "odin_master.cli:app"

[build-system]
requires = ["setuptools>=68"]
build-backend = "setuptools.build_meta"

[tool.setuptools.packages.find]
where = ["."]
include = ["odin_master*"]
```

`tools/indexer/odin_master/__init__.py`:
```python
__version__ = "0.0.1"
```

`tools/indexer/odin_master/ingestors/__init__.py`:
```python
# Per-source-kind ingestors live here. Plan 2 fills these in.
```

`tools/indexer/odin_master/cli.py`:
```python
"""odin-master — cold-path CLI for the odin_master template.

Plan 1 ships dispatch shells only. Each subcommand prints a stub message and
exits 0. Plans 2, 6, and 8 fill in the actual logic.
"""
from __future__ import annotations

import typer

app = typer.Typer(name="odin-master", help="Cold-path admin and indexer CLI.", no_args_is_help=True)

vendor_app = typer.Typer(name="vendor", help="Manage vendored Odin libraries.", no_args_is_help=True)
docs_app = typer.Typer(name="docs", help="Local documentation builds.", no_args_is_help=True)
scratch_app = typer.Typer(name="scratch", help="Scratchpad evidence helpers.", no_args_is_help=True)

app.add_typer(vendor_app, name="vendor")
app.add_typer(docs_app, name="docs")
app.add_typer(scratch_app, name="scratch")


def _stub(name: str) -> None:
    typer.echo(f"odin-master {name}: not yet implemented")


@app.command()
def setup() -> None:
    """Auto-detect machine class; write ~/.config/odin_master/settings.toml."""
    _stub("setup")


@app.command()
def update() -> None:
    """git pull + reindex if sources changed."""
    _stub("update")


@app.command()
def reindex(keyword_only: bool = typer.Option(False, "--keyword-only", help="Skip vector index build.")) -> None:
    """Chunk -> embed via Ollama -> write content/index/."""
    _stub(f"reindex (keyword_only={keyword_only})")


@app.command()
def summarize(source: str) -> None:
    """LLM-compile a source into wiki concept pages with backlinks."""
    _stub(f"summarize {source}")


@app.command()
def lint() -> None:
    """Wiki health checks (broken backlinks, dead refs)."""
    _stub("lint")


@app.command()
def doctor() -> None:
    """Diagnose dependencies + environment."""
    _stub("doctor")


@app.command()
def new(name: str, template: str = typer.Option("game", "--template", "-t", help="Template: game | lib | cli.")) -> None:
    """Scaffold a new project from templates/<template>."""
    _stub(f"new {name} --template {template}")


@app.command(name="update-template")
def update_template() -> None:
    """Three-way merge template updates into a scaffolded project."""
    _stub("update-template")


@app.command()
def publish(topic: str) -> None:
    """File a query session into content/outputs/YYYY-MM-DD-<topic>/."""
    _stub(f"publish {topic}")


@app.command(name="test-summary")
def test_summary() -> None:
    """Read build/test-report.json -> markdown digest."""
    _stub("test-summary")


@vendor_app.command(name="add")
def vendor_add(git_url: str) -> None:
    """git submodule add + ols.json wiring + libs/MANIFEST.md update."""
    _stub(f"vendor add {git_url}")


@docs_app.command(name="build")
def docs_build() -> None:
    """Local pkg.odin-lang.org renderer for stdlib HTML."""
    _stub("docs build")


@scratch_app.command(name="verify")
def scratch_verify() -> None:
    """Re-run scratch experiments and verify their evidence files."""
    _stub("scratch verify")


if __name__ == "__main__":
    app()
```

`tools/indexer/tests/__init__.py`:
```python
```

- [ ] **Step 4: Run to verify it passes**

First install the indexer in editable mode so the CLI is on PATH (and so typer is available):
```bash
uv pip install -e tools/indexer  # or `python -m pip install -e tools/indexer` if not using uv
```

Run: `python -m pytest tests/ tools/indexer/tests/ -v`
Expected: PASS — both root and indexer test suites green.

Also sanity-check the script entry point:
```bash
odin-master --help
```
Expected: usage banner listing every subcommand.

- [ ] **Step 5: Commit**

```bash
git add tools/indexer/ tests/test_repo_structure.py
git commit -m "feat(odin-master): add Python CLI dispatch shell with all subcommand stubs"
```

---

### Task 10: `tools/search/` — Rust project + `odin-search` CLI dispatch shell

**Files:**
- Create: `tools/search/Cargo.toml`
- Create: `tools/search/src/main.rs`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append to `tests/test_repo_structure.py`:
```python
import shutil


def test_search_cargo_toml_exists():
    p = ROOT / "tools" / "search" / "Cargo.toml"
    assert p.is_file()
    txt = p.read_text(encoding="utf-8")
    assert 'name = "odin-search"' in txt


def test_search_main_rs_defines_full_flag_surface():
    # Static check: confirm the source contains every flag from spec §5.5.
    txt = (ROOT / "tools" / "search" / "src" / "main.rs").read_text(encoding="utf-8")
    for flag in ["--json", "--top", "--tier", "--source", "--view",
                 "--keyword-only", "--semantic-only", "--fast", "--doctor"]:
        assert flag in txt, f"main.rs missing flag in clap definition: {flag}"


def test_search_binary_help_lists_flags_when_built():
    # Skip if not built — CI is responsible for ensuring this is built.
    candidates = [
        ROOT / "tools" / "search" / "target" / "release" / "odin-search",
        ROOT / "tools" / "search" / "target" / "debug" / "odin-search",
        ROOT / "tools" / "search" / "target" / "release" / "odin-search.exe",
        ROOT / "tools" / "search" / "target" / "debug" / "odin-search.exe",
    ]
    binary = next((c for c in candidates if c.exists()), None)
    if binary is None:
        pytest.skip("odin-search not built; run `cargo build` in tools/search")
    out = subprocess.run([str(binary), "--help"], capture_output=True, text=True).stdout
    for flag in ["--json", "--top", "--tier", "--source", "--view",
                 "--keyword-only", "--semantic-only", "--fast", "--doctor"]:
        assert flag in out, f"odin-search --help missing: {flag}"
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL — Rust project doesn't exist.

- [ ] **Step 3: Implement**

`tools/search/Cargo.toml`:
```toml
[package]
name = "odin-search"
version = "0.0.1"
edition = "2021"
description = "Local hybrid search CLI for the odin_master corpus."
license = "MIT"

[[bin]]
name = "odin-search"
path = "src/main.rs"

[dependencies]
clap = { version = "4", features = ["derive"] }
```

`tools/search/src/main.rs`:
```rust
//! odin-search — hot-path search CLI for the odin_master corpus.
//!
//! Plan 1 ships a clap-defined flag surface only; every code path prints
//! "not yet implemented" and exits 0. Plan 3 fills in the SQLite + USearch
//! + Ollama + RRF logic.

use clap::{Parser, ValueEnum};

#[derive(Clone, ValueEnum)]
enum View {
    Verbatim,
    Summary,
    All,
}

#[derive(Parser)]
#[command(
    name = "odin-search",
    about = "Local hybrid search CLI for the odin_master corpus.",
    version,
)]
struct Cli {
    /// The query string. Required unless --doctor is passed.
    query: Option<String>,

    /// Emit machine-readable JSON instead of human-formatted output.
    #[arg(long)]
    json: bool,

    /// Number of results to return.
    #[arg(long, default_value_t = 10)]
    top: usize,

    /// Restrict to comma-separated tier numbers (e.g. `--tier 1,2`).
    #[arg(long, value_delimiter = ',')]
    tier: Vec<u8>,

    /// Restrict to a single manifest source id (e.g. `--source odin-book`).
    #[arg(long)]
    source: Option<String>,

    /// Filter by view: verbatim, summary, or all.
    #[arg(long, value_enum, default_value_t = View::All)]
    view: View,

    /// Force keyword-only mode (skip the embedding step).
    #[arg(long)]
    keyword_only: bool,

    /// Force vector-only mode (skip BM25).
    #[arg(long)]
    semantic_only: bool,

    /// Alias for --keyword-only.
    #[arg(long)]
    fast: bool,

    /// Diagnose: settings, index state, Ollama reachability.
    #[arg(long)]
    doctor: bool,
}

fn main() {
    let cli = Cli::parse();

    if cli.doctor {
        println!("odin-search --doctor: not yet implemented");
        return;
    }

    match cli.query.as_deref() {
        Some(q) => {
            eprintln!("odin-search: not yet implemented (query={q:?})");
            std::process::exit(0);
        }
        None => {
            eprintln!("error: <QUERY> is required (use --doctor for diagnostics)");
            std::process::exit(2);
        }
    }
}
```

Build it:
```bash
cd tools/search && cargo build && cd ../..
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS — including the `--help` flag-surface check now that the binary is built.

Also sanity-check by hand:
```bash
./tools/search/target/debug/odin-search --help
./tools/search/target/debug/odin-search --doctor
```
Expected: usage shows every flag; `--doctor` prints stub line; running with no args exits 2 with "<QUERY> is required" stderr.

- [ ] **Step 5: Commit**

```bash
git add tools/search/Cargo.toml tools/search/Cargo.lock tools/search/src/ tests/test_repo_structure.py
git commit -m "feat(odin-search): add Rust CLI dispatch shell with full flag surface"
```

---

### Task 11: `justfile` with all targets stubbed

**Files:**
- Create: `justfile`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append to `tests/test_repo_structure.py`:
```python
def test_justfile_exists():
    assert (ROOT / "justfile").is_file()


def test_just_lists_all_documented_targets():
    if shutil.which("just") is None:
        pytest.skip("`just` not installed")
    out = subprocess.run(["just", "--list", "--unsorted"], cwd=ROOT, capture_output=True, text=True).stdout
    expected = [
        "bootstrap", "bootstrap-lite", "doctor", "check-odin-version", "update-odin",
        "build", "run", "test", "check", "clean", "format",
        "bench", "profile-run", "hot",
        "scratch-new", "scratch-run", "scratch-watch",
        "summarize", "add-transcript", "lib-add",
        "docs-build", "publish",
        "install-cli",
    ]
    for t in expected:
        assert t in out, f"missing just target: {t}\nfull listing:\n{out}"
```

(Note: `just` recipe names use hyphens, not spaces, so spec's `just scratch new` becomes `just scratch-new` in the recipe table. Or use a recipe with positional arg. We're using hyphenated names for simplicity since `just` doesn't support multi-word recipes natively without arguments.)

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL.

- [ ] **Step 3: Implement**

`justfile`:
```just
# odin_master task runner.
# Plan 1 ships stubs only. Real implementations land in Plans 2, 4, 5, 6.

default:
    @just --list --unsorted

# ─── Bootstrap and environment ─────────────────────────────────────────────
bootstrap:
    @echo "just bootstrap: not yet implemented (Plan 6)"

bootstrap-lite:
    @echo "just bootstrap-lite: not yet implemented (Plan 6)"

doctor:
    @odin-master doctor

check-odin-version:
    @echo "just check-odin-version: not yet implemented (Plan 6)"

update-odin:
    @echo "just update-odin: not yet implemented (Plan 6)"

# ─── Build / run / test (wraps `odin`) ────────────────────────────────────
build profile="debug":
    @echo "just build {{profile}}: not yet implemented (Plan 6)"

run profile="debug":
    @echo "just run {{profile}}: not yet implemented (Plan 6)"

test profile="debug":
    @echo "just test {{profile}}: not yet implemented (Plan 6)"

check:
    @echo "just check: not yet implemented (Plan 6)"

clean:
    @echo "just clean: not yet implemented (Plan 6)"

format:
    @echo "just format: not yet implemented (Plan 6)"

# ─── Bench / profile (Plan 5) ─────────────────────────────────────────────
bench name:
    @echo "just bench {{name}}: not yet implemented (Plan 5)"

profile-run binary:
    @echo "just profile-run {{binary}}: not yet implemented (Plan 5)"

hot:
    @echo "just hot: not yet implemented (Plan 4)"

# ─── Scratchpad (Plan 5) ──────────────────────────────────────────────────
scratch-new name:
    @echo "just scratch-new {{name}}: not yet implemented (Plan 5)"

scratch-run:
    @echo "just scratch-run: not yet implemented (Plan 5)"

scratch-watch:
    @echo "just scratch-watch: not yet implemented (Plan 5)"

# ─── Knowledge base (Plan 2) ──────────────────────────────────────────────
summarize source:
    @odin-master summarize {{source}}

add-transcript url:
    @echo "just add-transcript {{url}}: not yet implemented (Plan 2)"

lib-add git_url:
    @odin-master vendor add {{git_url}}

docs-build:
    @odin-master docs build

publish topic:
    @odin-master publish {{topic}}

# ─── Tooling ──────────────────────────────────────────────────────────────
install-cli:
    @echo "just install-cli: not yet implemented (Plan 6 will run cargo install + pipx install)"
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS (or SKIP if `just` not installed locally — that's fine; CI will run it).

Manual sanity check (if `just` is installed):
```bash
just --list
just bootstrap   # should print "not yet implemented"
```

- [ ] **Step 5: Commit**

```bash
git add justfile tests/test_repo_structure.py
git commit -m "chore: ship justfile with all documented targets stubbed"
```

---

### Task 12: `docs/` user-facing stubs

**Files:**
- Create: `docs/getting-started.md`
- Create: `docs/daily-use.md`
- Create: `docs/adding-sources.md`
- Create: `docs/multi-machine.md`
- Create: `docs/migration-2026.md`
- Create: `docs/troubleshooting.md`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append:
```python
def test_user_docs_present():
    expected = [
        "getting-started.md",
        "daily-use.md",
        "adding-sources.md",
        "multi-machine.md",
        "migration-2026.md",
        "troubleshooting.md",
    ]
    for f in expected:
        p = ROOT / "docs" / f
        assert p.is_file(), f"missing docs/{f}"
        # Must have at least a top-level heading so the file is meaningful.
        assert p.read_text(encoding="utf-8").lstrip().startswith("# "), f"docs/{f}: no H1"
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL.

- [ ] **Step 3: Implement**

Each file gets a one-line H1 + a sentence pointing at the relevant spec section / future plan. Examples:

`docs/getting-started.md`:
```markdown
# Getting started

Install on a new machine in 10 minutes. To be written when Plan 6 lands the
real `bootstrap` and `setup` commands. See spec §12.1 / §12.2 for the intended
flow.
```

`docs/daily-use.md`:
```markdown
# Daily use

Cheatsheet for code / search / build / run. To be written when Plans 2, 3, and
6 land. See spec §12.3 for the intended workflow.
```

`docs/adding-sources.md`:
```markdown
# Adding a new source

How to register a new source in `content/manifest.yaml` and run `odin-master
update`. To be written when Plan 2 lands. See spec §4.6 / §12.4.
```

`docs/multi-machine.md`:
```markdown
# Multi-machine sync

How sync works across machines. The git repo itself is the sync mechanism. To
be written when Plan 6 lands `setup` and the per-machine settings flow. See
spec §2.6 / §12.7.
```

`docs/migration-2026.md`:
```markdown
# 2026 compiler migration notes

Notes covering `core:os` -> `core:os/old`, `using` opt-in, chacha8rand change,
license shift, and the new `nbio` / `handle_map` / `crypto/ecdh` / `vendor:curl`
packages. To be written as the team encounters real migrations.
```

`docs/troubleshooting.md`:
```markdown
# Troubleshooting

Common errors and fixes. To be populated as real issues surface during
implementation of Plans 2-8.
```

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add docs/getting-started.md docs/daily-use.md docs/adding-sources.md docs/multi-machine.md docs/migration-2026.md docs/troubleshooting.md tests/test_repo_structure.py
git commit -m "docs: add user-facing doc stubs (filled in by later plans)"
```

---

### Task 13: GitHub Actions CI skeleton

**Files:**
- Create: `.github/workflows/ci.yml`
- Modify: `tests/test_repo_structure.py` (append)

- [ ] **Step 1: Write the failing test**

Append:
```python
def test_ci_workflow_exists_and_parses():
    p = ROOT / ".github" / "workflows" / "ci.yml"
    assert p.is_file()
    data = yaml.safe_load(p.read_text(encoding="utf-8"))
    assert "jobs" in data
    # Must have at least a structural-tests job.
    assert any("structural" in name.lower() or "test" in name.lower() for name in data["jobs"]), \
        f"no structural/test job in ci.yml; jobs: {list(data['jobs'])}"
```

- [ ] **Step 2: Run to verify it fails**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: FAIL.

- [ ] **Step 3: Implement**

`.github/workflows/ci.yml`:
```yaml
name: CI

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  structural-tests:
    name: Structural tests + CLI shells
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.12"

      - name: Install Python deps
        run: |
          python -m pip install --upgrade pip
          python -m pip install -e ".[dev]"
          python -m pip install -e tools/indexer

      - name: Set up Rust
        uses: dtolnay/rust-toolchain@stable

      - name: Build odin-search
        working-directory: tools/search
        run: cargo build --release

      - name: Run structural tests
        run: python -m pytest tests/ tools/indexer/tests/ -v
```

(Plan 7 will replace this with the full OS × profile × Odin-version matrix from spec §11.5. For Plan 1, this minimal lane is enough to prove the structural test suite runs in CI.)

- [ ] **Step 4: Run to verify it passes**

Run: `python -m pytest tests/test_repo_structure.py -v`
Expected: PASS.

(End-to-end CI verification happens after pushing to GitHub — out of scope for the local test gate. Plan 7 takes responsibility for the real CI matrix.)

- [ ] **Step 5: Commit**

```bash
git add .github/ tests/test_repo_structure.py
git commit -m "ci: add minimal structural-tests workflow (Plan 7 expands to full matrix)"
```

---

### Task 14: Final integration verification

**Files:** none (read-only)

- [ ] **Step 1: Run the full structural suite from a clean checkout**

```bash
git status            # should be clean
python -m pytest tests/ tools/indexer/tests/ -v
```
Expected: all tests PASS (or `just`-related test SKIP if `just` not installed locally).

- [ ] **Step 2: Sanity-check both CLI shells by hand**

```bash
odin-master --help                        # lists all 13+ subcommands
odin-master setup                         # prints stub
odin-master vendor add https://x.invalid  # prints stub
./tools/search/target/debug/odin-search --help    # lists all flags
./tools/search/target/debug/odin-search --doctor  # prints stub
```

- [ ] **Step 3: Sanity-check `just` if available**

```bash
just --list           # shows all targets
just bootstrap        # prints stub
```

- [ ] **Step 4: Confirm the spec §3 tree is complete**

Walk the spec §3 tree and confirm every directory and explicitly-named file exists. The structural test suite covers most of this, but a final eyeball check catches anything the tests missed (e.g., a dir created via `.gitkeep` but the tests asserted on something subtly different).

- [ ] **Step 5: Push and confirm CI green**

```bash
git push
# Watch the Actions tab on GitHub; the structural-tests job should pass.
```

If CI passes, **Plan 1 is complete**. The repo skeleton is in place, both CLI surfaces are locked in, and downstream plans can fill in real logic one piece at a time without reshaping the surface.

---

## Plan-1 self-review checklist (run before declaring done)

- [ ] Every directory listed in spec §3 exists in the working tree.
- [ ] Every file explicitly named in spec §3 exists, even if its content is a stub.
- [ ] `odin-master --help` lists every subcommand from spec §6.3 / §8.5.
- [ ] `odin-search --help` lists every flag from spec §5.5.
- [ ] `just --list` shows every target from spec §8.5 (with hyphens substituted for spaces in multi-word names).
- [ ] `tests/test_repo_structure.py` covers all of the above.
- [ ] CI workflow runs the test suite on push.
- [ ] No real logic in Plan 1 — every actual feature still prints "not yet implemented".
