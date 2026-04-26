# lessons-check

Tiny Odin program that smoke-tests every lesson by running its first
```odin code block and diffing stdout against `expected-output.txt`.

## Run

From the repo root:

    odin run tools/lessons-check

Filter to a single lesson family:

    odin run tools/lessons-check -- 03

A lesson without `expected-output.txt` is skipped — those are stubs or
concept-only.

## Build a binary

    odin build tools/lessons-check -out:tools/lessons-check/lessons-check.exe
    ./tools/lessons-check/lessons-check.exe
