# Odin overview (seed snippet)

This is a seed file shipped with `odin_master` so there is at least one tier-1
document on a fresh clone. It is a `pasted_text` source — maintain it by editing
this file directly. To make edits searchable, refresh the qmd index
(`qmd collection add` / `qmd embed`).

## Reading a file

`os.read_entire_file_from_filename("path")` returns `(data: []byte, ok: bool)`.
On success, free with `delete(data)`. The simpler high-level wrapper lives in
`core:os`.

## Context allocator

Odin threads an implicit `context` through every procedure call. The current
allocator is `context.allocator`. Override per-block:

```odin
context.allocator = my_arena_allocator
defer context.allocator = old
```

## Tagged unions

```odin
Token :: union { int, string, f64 }
t: Token = "hello"
switch v in t {
case int:    fmt.println("int", v)
case string: fmt.println("str", v)
case f64:    fmt.println("flt", v)
}
```
