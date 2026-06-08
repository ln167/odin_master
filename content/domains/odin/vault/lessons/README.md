# Odin lessons

Textbook-style lessons with English-prose exercises you write yourself. Each
lesson follows the same shape: **Concept → Leveling with you (if you come
from OOP) → Compared to C / C# / Rust → Reference syntax → Tasks (you write
the code) → Now break it on purpose → Low-level notes → Next**. The `main.odin`
in each lesson has numbered prose instructions, not pre-written code with
TODO holes — you type the bodies yourself, with `expected-output.txt` as
the diff target.

Open any lesson by typing the path, or in LazyVim:

- `<leader>oh` — pick a lesson
- `<leader>oH` — jump to the lesson after the last one you opened

The cursor lives at `~/.cache/odin_master/lesson-cursor.txt`.

## Track

| #   | Slug                                  | What you learn                                |
|-----|---------------------------------------|-----------------------------------------------|
| 00  | `setup-check`                         | Confirm odin / ols / odinfmt / just substrate-search --bm25 |
| 01  | `hellope`                             | The famous first program                      |
| 01b | `packages-and-imports`                | `package`, `import`, multi-file packages      |
| 02  | `types-and-printing`                  | Built-in types, `fmt.println` vs `printf`     |
| 03  | `procedures-and-multiple-returns`     | `proc`, multiple return values                |
| 04  | `strings-and-runes`                   | UTF-8 strings, runes, slicing                 |
| 05  | `arrays-fixed`                        | `[N]T`, length-as-type                        |
| 05b | `enums-and-bit-sets`                  | `enum`, `[Enum]T`, `bit_set[Enum]`, set ops   |
| 06  | `slices`                              | `[]T` = pointer + len                         |
| 06b | `pointers`                            | `^T`, `&`, `^` deref, `[^]T` multi-pointers   |
| 06c | `parameters-and-passing`              | immutable params, pass-by-value, calling convention, when to use `^T` |
| 07  | `dynamic-arrays`                      | `[dynamic]T`, `append`, allocator             |
| 07b | `defer`                               | `defer` fires at scope exit; vs Go's defer    |
| 07c | `maps`                                | `map[K]V`, comma-ok lookup, `delete_key`      |
| 07d | `stack-and-heap`                      | stack frames, the heap, `new`/`make` vs `free`/`delete`, why both exist |
| 08  | `context-and-allocators`              | Implicit `context`, swapping allocators       |
| 09  | `arena-allocator`                     | Bump allocator, scope-based reset             |
| 10  | `tagged-unions`                       | `union`, `switch in`                          |
| 10b | `distinct-types`                      | `distinct T` for IDs, units, opaque handles   |
| 11  | `error-handling-or-return`            | `or_return`, `or_else`                        |
| 12  | `structs-and-soa`                     | `#soa`, layout choices                        |
| 12b | `using-and-procedure-groups`          | `using` field promotion + name dispatch       |
| 13  | `procedures-as-values`                | First-class procs, callbacks                  |
| 14  | `parametric-polymorphism`             | `proc($T: typeid)`                            |
| 15  | `foreign-and-bindings`                | `foreign import`, calling C                   |
| 16  | `when-and-build-flags`                | `when ODIN_OS`, conditional compilation       |
| 17  | `testing-with-core-testing`           | `core:testing`, `odin test`                   |
| 18  | `hot-reload-tour`                     | Walk through `templates/game/`                |
| 19  | `search-driven-learning`              | Use `qmd` (`just substrate-search`) to answer your own |

## Format reference

Each `lesson/NN-slug/` directory contains:

- `README.md` — textbook prose with C / C# / Rust comparisons, syntax
  reference, and prose tasks. Read it once, then go to the code.
- `main.odin` — numbered English-prose tasks as comments. You type the
  bodies yourself. No fill-in-the-blank TODO holes pointing at function
  signatures; the prose describes what to do and the *why* of the
  language-specific bit.
- `expected-output.txt` — exact output to diff against once your code
  works.

The "Now break it on purpose" sections are where the real learning is —
the error messages are the curriculum. Lessons 00 through 04 still use
the older "copy and type" structure; 05 onwards use the new textbook
style.
