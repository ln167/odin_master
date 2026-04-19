"""odin-master — cold-path CLI for the odin_master template.

Plan 1 shipped dispatch shells. Plan 2 wires up `update`, `reindex`, `lint`, and
`doctor` against the indexer pipeline. Subcommands not yet implemented (summarize,
new, update-template, publish, vendor, docs, scratch, test-summary) keep their
stubs until later plans.
"""
from __future__ import annotations

import os
from pathlib import Path

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


def _repo_root() -> Path:
    """Walk up from cwd looking for content/manifest.yaml."""
    p = Path.cwd().resolve()
    for parent in [p, *p.parents]:
        if (parent / "content" / "manifest.yaml").is_file():
            return parent
    raise typer.BadParameter("could not locate content/manifest.yaml in any parent of cwd")


@app.command()
def setup() -> None:
    """Auto-detect machine class; write ~/.config/odin_master/settings.toml."""
    from . import setup_machine
    profile = setup_machine.detect()
    out = setup_machine.write_settings(profile)
    typer.echo(f"setup: gpu={profile.has_gpu} ollama={profile.has_ollama} "
               f"vector_search={profile.enable_vector_search} -> {out}")


@app.command()
def update() -> None:
    """git pull + reindex if sources changed."""
    from . import pipeline
    root = _repo_root()
    stats = pipeline.reindex(root, allow_fake_embeddings=os.environ.get("ODIN_MASTER_FAKE_EMBEDDINGS") == "1")
    typer.echo(f"update: {stats.sources_processed} sources, "
               f"{stats.chunks_inserted}/{stats.chunks_seen} new chunks, "
               f"{stats.vectors_written} vectors written")


@app.command()
def reindex(keyword_only: bool = typer.Option(False, "--keyword-only", help="Skip vector index build."),
            allow_fake_embeddings: bool = typer.Option(False, "--allow-fake-embeddings",
                                                       help="Use deterministic stub vectors when Ollama is unavailable.")) -> None:
    """Chunk -> embed via Ollama -> write content/index/."""
    from . import pipeline
    root = _repo_root()
    stats = pipeline.reindex(root, keyword_only=keyword_only,
                             allow_fake_embeddings=allow_fake_embeddings)
    typer.echo(f"reindex: {stats.sources_processed} sources, "
               f"{stats.chunks_inserted}/{stats.chunks_seen} new chunks, "
               f"{stats.vectors_written} vectors written")


@app.command()
def summarize(source: str) -> None:
    """LLM-compile a source into wiki concept pages with backlinks."""
    _stub(f"summarize {source}")


@app.command()
def lint() -> None:
    """Wiki health checks (broken backlinks, dead refs)."""
    from . import lint as lint_mod
    root = _repo_root()
    issues = lint_mod.lint(root)
    if not issues:
        typer.echo("lint: ok (0 issues)")
        return
    for iss in issues:
        typer.echo(str(iss))
    raise typer.Exit(1)


@app.command()
def doctor() -> None:
    """Diagnose dependencies + environment."""
    import shutil
    import requests
    root = None
    try:
        root = _repo_root()
        typer.echo(f"repo root:        ok ({root})")
    except typer.BadParameter as e:
        typer.echo(f"repo root:        FAIL ({e})")
    typer.echo(f"odin on PATH:     {'ok' if shutil.which('odin') else 'missing'}")
    typer.echo(f"ols on PATH:      {'ok' if shutil.which('ols') else 'missing'}")
    typer.echo(f"odinfmt on PATH:  {'ok' if shutil.which('odinfmt') else 'missing'}")
    typer.echo(f"git on PATH:      {'ok' if shutil.which('git') else 'missing'}")
    try:
        r = requests.get("http://127.0.0.1:11434/api/version", timeout=2)
        ok = r.status_code == 200
    except Exception:
        ok = False
    typer.echo(f"ollama:           {'ok' if ok else 'unreachable (vector index unavailable)'}")
    if root is not None:
        idx = root / "content" / "index"
        typer.echo(f"chunks.sqlite:    {'ok' if (idx / 'chunks.sqlite').is_file() else 'absent (run reindex)'}")
        typer.echo(f"vectors.usearch:  {'ok' if (idx / 'vectors.usearch').is_file() else 'absent (run reindex)'}")


@app.command()
def new(name: str,
        template: str = typer.Option("game", "--template", "-t", help="Template: game | lib | cli."),
        target: Path = typer.Option(None, "--target", help="Target directory (default: ./<name>)."),
        force: bool = typer.Option(False, "--force", help="Overwrite a non-empty target directory.")) -> None:
    """Scaffold a new project from templates/<template>."""
    from . import scaffolder
    root = _repo_root()
    dst = (target or Path.cwd() / name).resolve()
    res = scaffolder.scaffold(template=template, target_dir=dst, name=name,
                              repo_root=root, force=force)
    typer.echo(f"new: scaffolded {res.files_written} files into {res.target_dir} "
               f"(template={template}, sha={res.template_sha[:8]})")


@app.command(name="update-template")
def update_template(project: Path = typer.Argument(..., exists=True, file_okay=False)) -> None:
    """Three-way merge template updates into a scaffolded project."""
    from . import template_update
    root = _repo_root()
    rep = template_update.update_template(project.resolve(), root)
    typer.echo(
        f"update-template: {len(rep.updated)} updated, {len(rep.added)} added, "
        f"{len(rep.conflicted)} conflicted, {len(rep.untouched)} untouched "
        f"({rep.old_sha[:8]} -> {rep.new_sha[:8]})"
    )
    if rep.conflicted:
        for p in rep.conflicted:
            typer.echo(f"  CONFLICT: {p}")
        raise typer.Exit(1)


@app.command()
def publish(topic: str) -> None:
    """File a query session into content/outputs/YYYY-MM-DD-<topic>/."""
    _stub(f"publish {topic}")


@app.command(name="bootstrap-corpus")
def bootstrap_corpus(
    allow_fake_embeddings: bool = typer.Option(False, "--allow-fake-embeddings"),
) -> None:
    """One-shot: update -> reindex -> lint -> quality-check."""
    import shutil
    from . import bootstrap_corpus as bc
    root = _repo_root()
    rep = bc.bootstrap(root, allow_fake_embeddings=allow_fake_embeddings,
                       search_bin=shutil.which("odin-search"))
    typer.echo(f"bootstrap-corpus: chunks={rep.chunks_inserted} "
               f"vectors={rep.vectors_written} lint_issues={rep.lint_issues} "
               f"quality={rep.quality_pass}/{rep.quality_pass + rep.quality_fail}")
    if rep.lint_issues or rep.quality_fail:
        raise typer.Exit(1)


@app.command(name="quality-check")
def quality_check_cmd(
    yaml_path: Path = typer.Argument(None, help="Path to quality-checks.yaml"),
) -> None:
    """Run canonical-query gold set against the built index."""
    import shutil
    from . import quality_check as qc
    root = _repo_root()
    path = (yaml_path or (root / "content" / "quality-checks.yaml")).resolve()
    if not path.is_file():
        typer.echo(f"quality-check: no gold set at {path}"); raise typer.Exit(1)
    checks = qc.load(path)
    bin_ = shutil.which("odin-search")
    results = qc.run(checks, search_bin=bin_)
    failures = 0
    for r in results:
        mark = "ok " if r.passed else "FAIL"
        typer.echo(f"  {mark} {r.check.query!r} -> {r.actual_top_ids}")
        if not r.passed: failures += 1
    if failures: raise typer.Exit(failures)


@app.command(name="test-summary")
def test_summary(report: Path = typer.Argument(Path("build/test-report.json"))) -> None:
    """Read build/test-report.json -> markdown digest."""
    from . import test_summary as ts
    if not report.is_file():
        typer.echo(f"test-summary: no report at {report}")
        raise typer.Exit(1)
    typer.echo(ts.to_markdown(report))


@vendor_app.command(name="add")
def vendor_add(git_url: str) -> None:
    """git submodule add + ols.json wiring + libs/MANIFEST.md update."""
    _stub(f"vendor add {git_url}")


@docs_app.command(name="build")
def docs_build() -> None:
    """Local pkg.odin-lang.org renderer for stdlib HTML."""
    _stub("docs build")


@scratch_app.command(name="new")
def scratch_new(slug: str) -> None:
    """Scaffold playground/scratch/YYYY-MM-DD-<slug>/ from the template."""
    from . import scratchpad
    root = _repo_root()
    out = scratchpad.new_scratch(root, slug)
    typer.echo(f"scratch new: {out}")


@scratch_app.command(name="run")
def scratch_run(slug_dir: Path) -> None:
    """Run a scratchpad's main.odin and capture stdout to output.txt."""
    from . import scratchpad
    res = scratchpad.run_scratch(slug_dir.resolve())
    typer.echo(f"scratch run: exit={res.returncode}, output={res.output_path}")
    if res.returncode != 0:
        raise typer.Exit(res.returncode)


@scratch_app.command(name="verify")
def scratch_verify() -> None:
    """Re-run every scratch under playground/scratch/ and confirm each exits 0."""
    from . import scratchpad
    root = _repo_root()
    scratches = sorted(p for p in (root / "playground" / "scratch").iterdir()
                       if p.is_dir() and not p.name.startswith("_"))
    if not scratches:
        typer.echo("scratch verify: no scratches to run")
        return
    failures = 0
    for sd in scratches:
        if not (sd / "main.odin").is_file():
            continue
        res = scratchpad.run_scratch(sd)
        ok = "ok" if res.returncode == 0 else "FAIL"
        typer.echo(f"  {ok}  {sd.name}")
        if res.returncode != 0:
            failures += 1
    if failures:
        raise typer.Exit(failures)


if __name__ == "__main__":
    app()
