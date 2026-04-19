# {{name}}

Odin library, scaffolded from `templates/lib` by `odin-master new lib {{name}}`.

## Layout
- `src/{{name}}/` — library package; import as `import lib "path/to/{{name}}/src/{{name}}"`.
- `tests/` — `core:testing` tests (run from project root).
- `build.py` — `python build.py {test,doc}`.
- `justfile` — wraps build.py.

## Workflow
    just test       # odin test tests
    just doc        # odin doc src/{{name}} > build/{{name}}.txt
    just format     # odinfmt -overwrite src tests
