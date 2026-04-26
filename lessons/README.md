# Odin lessons

Bite-sized, copy-by-typing-it-yourself reps. Every lesson follows the same
shape: **Concept → Setup → Do this → Now do this (you should see X) → What
just happened → Now break it → Find more like this**.

Open any lesson by typing the path, or in LazyVim:

- `<leader>oh` — pick a lesson
- `<leader>oH` — jump to the lesson after the last one you opened

The cursor lives at `~/.cache/odin_master/lesson-cursor.txt`.

## Track

| #   | Slug                                  | What you learn                                |
|-----|---------------------------------------|-----------------------------------------------|
| 00  | `setup-check`                         | Confirm odin / ols / odinfmt / odin-search    |
| 01  | `hellope`                             | The famous first program                      |
| 02  | `types-and-printing`                  | Built-in types, `fmt.println` vs `printf`     |
| 03  | `procedures-and-multiple-returns`     | `proc`, multiple return values                |
| 04  | `strings-and-runes`                   | UTF-8 strings, runes, slicing                 |
| 05  | `arrays-fixed`                        | `[N]T`, length-as-type                        |
| 06  | `slices`                              | `[]T` = pointer + len  *(stub)*               |
| 07  | `dynamic-arrays`                      | `[dynamic]T`, `append`, allocator  *(stub)*   |
| 08  | `context-and-allocators`              | Implicit `context`, swapping allocators *(stub)*|
| 09  | `arena-allocator`                     | Bump allocator, scope-based reset  *(stub)*   |
| 10  | `tagged-unions`                       | `union`, `switch in`  *(stub)*                |
| 11  | `error-handling-or-return`            | `or_return`, `or_else`  *(stub)*              |
| 12  | `structs-and-soa`                     | `#soa`, layout choices  *(stub)*              |
| 13  | `procedures-as-values`                | First-class procs, callbacks  *(stub)*        |
| 14  | `parametric-polymorphism`             | `proc($T: typeid)`  *(stub)*                  |
| 15  | `foreign-and-bindings`                | `foreign import`, calling C  *(stub)*         |
| 16  | `when-and-build-flags`                | `when ODIN_OS`, conditional compilation *(stub)*|
| 17  | `testing-with-core-testing`           | `core:testing`, `odin test`  *(stub)*         |
| 18  | `hot-reload-tour`                     | Walk through `templates/game/`  *(stub)*      |
| 19  | `search-driven-learning`              | Use `odin-search` to answer your own *(stub)* |

## Format reference

Each `lesson/NN-slug/README.md` has the same headings. Every code block is
short enough to type. Every "you should see" line is exact output you can
diff against. The "Now break it" sections are where the real learning is —
the error messages are the curriculum.
