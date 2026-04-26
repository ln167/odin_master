// lessons-check: per-lesson smoke runner.
//
// For every `lessons/NN-slug/` directory, extract the first ```odin code
// block from README.md, write it to a temp file, run it via `odin run
// <tmp> -file`, and diff stdout against `expected-output.txt`.
//
// Lessons without an `expected-output.txt` are skipped (they're stubs or
// concept-only). Run from the repo root.
//
//   odin run tools/lessons-check
//   odin run tools/lessons-check -- 03    (only lessons starting "03")
//
// Cross-platform: pure core:os, no shell.

package main

import "core:fmt"
import "core:os"
import "core:strings"

Status :: enum { Pass, Fail, Skip, MissingCode, RunError }

Result :: struct {
    slug:    string,
    status:  Status,
    detail:  string,
}

main :: proc() {
    if !is_dir("lessons") {
        fmt.eprintln("lessons-check: must run from the repo root (no `lessons/` here)")
        os.exit(1)
    }

    filter: string
    if len(os.args) >= 2 do filter = os.args[1]

    entries, err := os.read_directory_by_path("lessons", -1, context.allocator)
    if err != nil {
        fmt.eprintfln("lessons-check: cannot read lessons/: %v", err)
        os.exit(1)
    }
    defer os.file_info_slice_delete(entries, context.allocator)

    results: [dynamic]Result
    defer delete(results)

    for entry in entries {
        if entry.type != .Directory do continue
        if !is_lesson_slug(entry.name) do continue
        if filter != "" && !strings.has_prefix(entry.name, filter) do continue
        append(&results, run_one(entry.name))
    }

    pass, fail, skip := 0, 0, 0
    for r in results {
        mark: string
        switch r.status {
        case .Pass:        mark = "PASS"; pass += 1
        case .Fail:        mark = "FAIL"; fail += 1
        case .RunError:    mark = "ERR "; fail += 1
        case .MissingCode: mark = "ERR "; fail += 1
        case .Skip:        mark = "skip"; skip += 1
        }
        fmt.printfln("  %s  %s  %s", mark, r.slug, r.detail)
    }
    fmt.printfln("\n%d passed, %d failed, %d skipped", pass, fail, skip)
    if fail > 0 do os.exit(1)
}

// ---------- per-lesson ----------

run_one :: proc(slug: string) -> Result {
    readme_path  := join_path("lessons", slug, "README.md")
    expected_path := join_path("lessons", slug, "expected-output.txt")

    if !is_file(expected_path) {
        return Result{slug = strings.clone(slug), status = .Skip,
                      detail = "(no expected-output.txt)"}
    }

    readme_bytes, rerr := os.read_entire_file(readme_path, context.allocator)
    if rerr != nil {
        return Result{slug = strings.clone(slug), status = .RunError,
                      detail = fmt.tprintf("cannot read README: %v", rerr)}
    }
    defer delete(readme_bytes)

    code, ok := extract_first_odin_block(string(readme_bytes))
    if !ok {
        return Result{slug = strings.clone(slug), status = .MissingCode,
                      detail = "no ```odin code block in README.md"}
    }
    defer delete(code)

    expected_bytes, eerr := os.read_entire_file(expected_path, context.allocator)
    if eerr != nil {
        return Result{slug = strings.clone(slug), status = .RunError,
                      detail = fmt.tprintf("cannot read expected: %v", eerr)}
    }
    defer delete(expected_bytes)
    expected := normalize(string(expected_bytes))
    defer delete(expected)

    // Write code to a temp file we can hand to `odin run … -file`.
    tmp := fmt.tprintf("lessons/%s/.lessons-check.odin", slug)
    if werr := os.write_entire_file(tmp, transmute([]byte)code); werr != nil {
        return Result{slug = strings.clone(slug), status = .RunError,
                      detail = fmt.tprintf("cannot write temp: %v", werr)}
    }
    defer os.remove(tmp)

    state, stdout, stderr, perr := os.process_exec(os.Process_Desc{
        command = []string{"odin", "run", tmp, "-file"},
    }, context.allocator)
    defer delete(stdout)
    defer delete(stderr)

    if perr != nil {
        return Result{slug = strings.clone(slug), status = .RunError,
                      detail = fmt.tprintf("process_exec failed: %v", perr)}
    }
    if !state.exited || state.exit_code != 0 {
        snippet := first_line(string(stderr))
        return Result{slug = strings.clone(slug), status = .RunError,
                      detail = fmt.tprintf("odin exit=%d: %s", state.exit_code, snippet)}
    }

    actual := normalize(string(stdout))
    defer delete(actual)
    if actual == expected {
        return Result{slug = strings.clone(slug), status = .Pass, detail = ""}
    }
    return Result{
        slug = strings.clone(slug), status = .Fail,
        detail = fmt.tprintf("stdout differs (got %d bytes, want %d)", len(actual), len(expected)),
    }
}

// ---------- helpers ----------

is_lesson_slug :: proc(name: string) -> bool {
    if len(name) < 3 do return false
    if !is_digit(name[0]) || !is_digit(name[1]) do return false
    return name[2] == '-'
}

is_digit :: proc(b: byte) -> bool { return b >= '0' && b <= '9' }

is_dir :: proc(path: string) -> bool {
    info, err := os.stat(path, context.allocator)
    if err != nil do return false
    defer os.file_info_delete(info, context.allocator)
    return info.type == .Directory
}

is_file :: proc(path: string) -> bool {
    info, err := os.stat(path, context.allocator)
    if err != nil do return false
    defer os.file_info_delete(info, context.allocator)
    return info.type == .Regular
}

join_path :: proc(parts: ..string) -> string {
    return strings.join(parts, "/")
}

// Extract the body of the FIRST ```odin … ``` fenced block. Returns the
// inner text (newline-terminated) and ok=true on success.
extract_first_odin_block :: proc(body: string) -> (string, bool) {
    fence :: "```odin"
    start := strings.index(body, fence)
    if start < 0 do return "", false
    after := start + len(fence)
    // Skip to end of opening fence line.
    nl := strings.index(body[after:], "\n")
    if nl < 0 do return "", false
    code_start := after + nl + 1
    end_marker := strings.index(body[code_start:], "\n```")
    if end_marker < 0 do return "", false
    code_end := code_start + end_marker + 1 // include the trailing newline
    return strings.clone(body[code_start:code_end]), true
}

// Strip trailing whitespace per line + trailing newlines from the block.
normalize :: proc(s: string) -> string {
    sb: strings.Builder
    strings.builder_init(&sb)
    lines := strings.split_lines(s)
    defer delete(lines)
    for line, i in lines {
        trimmed := strings.trim_right_space(line)
        strings.write_string(&sb, trimmed)
        if i < len(lines) - 1 do strings.write_byte(&sb, '\n')
    }
    out := strings.to_string(sb)
    return strings.clone(strings.trim_right(out, "\n"))
}

first_line :: proc(s: string) -> string {
    nl := strings.index(s, "\n")
    if nl < 0 do return s
    return s[:nl]
}
