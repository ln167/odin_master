# {{name}}

Odin command-line tool, scaffolded from `templates/cli` by `odin-master new cli {{name}}`.

## Layout
- `src/main.odin` — entry point, uses `core:flags` for arg parsing.
- `tests/` — `core:testing` smoke tests.
- `build.py` — `python build.py {build,run,test}`.
- `justfile` — wraps build.py for convenience.

## Workflow
    just build      # odin build src -out:build/{{name}}.exe
    just run        # build then run
    just test       # odin test tests
    just format     # odinfmt -overwrite src tests
