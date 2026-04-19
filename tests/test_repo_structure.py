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


# ─── Task 2: top-level metadata ───────────────────────────────────────────────


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


# ─── Task 3: editor configs ───────────────────────────────────────────────────


def test_ols_json_disables_format():
    data = json.loads((ROOT / "ols.json").read_text(encoding="utf-8"))
    assert data["enable_format"] is False
    assert data["enable_inlay_hints"] is True
    assert data["enable_semantic_tokens"] is True
    assert "checker_args" in data
    assert "-vet" in data["checker_args"]
    assert "-strict-style" in data["checker_args"]
    names = [c["name"] for c in data.get("collections", [])]
    assert "odin_lib" in names


def test_odinfmt_json_defaults():
    data = json.loads((ROOT / "odinfmt.json").read_text(encoding="utf-8"))
    assert data["tabs"] is True
    assert data["tabs_width"] == 4
    assert data["character_width"] == 80
    assert data["sort_imports"] is True
    assert data["brace_style"] == "_1TBS"


# ─── Task 4: content tree ────────────────────────────────────────────────────


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


# ─── Task 5: playground ──────────────────────────────────────────────────────


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


# ─── Task 6: templates ───────────────────────────────────────────────────────


def test_templates_tree_exists():
    for t in ["game", "lib", "cli"]:
        d = ROOT / "templates" / t
        assert d.is_dir(), f"missing template dir: {t}"
        assert (d / "README.md").is_file(), f"missing README in templates/{t}"


# ─── Task 7: odin_lib ────────────────────────────────────────────────────────


def test_odin_lib_files_exist_and_declare_package():
    """Plan 5: subpackages tools/odin_lib/{instrument,bench,scratch}/ each
    declare their own `package <name>` so the spec's `odin_lib:instrument`
    import path works."""
    for sub in ("instrument", "bench", "scratch"):
        d = ROOT / "tools" / "odin_lib" / sub
        assert d.is_dir(), f"missing odin_lib subpackage: {sub}"
        odin_files = list(d.glob("*.odin"))
        assert odin_files, f"no .odin files in {d}"
        for f in odin_files:
            txt = f.read_text(encoding="utf-8")
            assert f"package {sub}" in txt, f"{f}: expected `package {sub}`"


# ─── Task 8: install / hooks / obsidian / debug / nvim ───────────────────────


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


# ─── Task 9: indexer ─────────────────────────────────────────────────────────


def test_indexer_pyproject_exists():
    assert (ROOT / "tools" / "indexer" / "pyproject.toml").is_file()


def test_indexer_package_layout():
    base = ROOT / "tools" / "indexer" / "odin_master"
    assert (base / "__init__.py").is_file()
    assert (base / "cli.py").is_file()
    assert (base / "ingestors" / "__init__.py").is_file()


# ─── Task 10: search CLI ─────────────────────────────────────────────────────


def test_search_cargo_toml_exists():
    p = ROOT / "tools" / "search" / "Cargo.toml"
    assert p.is_file()
    txt = p.read_text(encoding="utf-8")
    assert 'name = "odin-search"' in txt


def test_search_main_rs_defines_full_flag_surface():
    txt = (ROOT / "tools" / "search" / "src" / "main.rs").read_text(encoding="utf-8")
    for flag in ["--json", "--top", "--tier", "--source", "--view",
                 "--keyword-only", "--semantic-only", "--fast", "--doctor"]:
        assert flag in txt, f"main.rs missing flag in clap definition: {flag}"


def test_search_binary_help_lists_flags_when_built():
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


# ─── Task 11: justfile ───────────────────────────────────────────────────────


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


# ─── Task 12: docs stubs ─────────────────────────────────────────────────────


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
        assert p.read_text(encoding="utf-8").lstrip().startswith("# "), f"docs/{f}: no H1"


# ─── Task 13: CI workflow ────────────────────────────────────────────────────


def test_ci_matrix_workflows_present():
    """Plan 7 adds three workflows on top of ci.yml: cron-nightly, reusable-ci, docs."""
    wf = ROOT / ".github" / "workflows"
    for name in ("ci.yml", "cron-nightly.yml", "reusable-ci.yml", "docs.yml"):
        assert (wf / name).is_file(), f"missing workflow: {name}"
    cron = (wf / "cron-nightly.yml").read_text(encoding="utf-8")
    assert "schedule:" in cron and "cron:" in cron
    reusable = (wf / "reusable-ci.yml").read_text(encoding="utf-8")
    assert "workflow_call:" in reusable


def test_ci_workflow_exists_and_parses():
    p = ROOT / ".github" / "workflows" / "ci.yml"
    assert p.is_file()
    data = yaml.safe_load(p.read_text(encoding="utf-8"))
    assert "jobs" in data
    assert any("structural" in name.lower() or "test" in name.lower() for name in data["jobs"]), \
        f"no structural/test job in ci.yml; jobs: {list(data['jobs'])}"
