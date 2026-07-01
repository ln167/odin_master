package main

// The weaver CLI:  weave <pkg-dir> <out-dir>
//
// Weaves every .odin file in <pkg-dir> (the whole package) into a mirror under <out-dir> via the
// same-line injection in odin_lib:weave, then the run entrypoint compiles <out-dir> at TELE=max
// instead of the raw package (spec 6 -- weave lives in the run path, never in `odin build`/claim.py).
// Collection imports (core:, base:, odin_lib:, vnd:) are left real (resolved by -collection at build).
// The developer's <pkg-dir> is never touched; <out-dir> is rewritten wholesale each run.
//
// W2 scope: single package. Local sub-package imports (a relative `import "util"`) are detected and
// logged, not yet mirrored -- that recursion is the noted W2 follow-up; scratch/practice (the daily
// firehose target) is single-package importing only collections.

import "core:fmt"
import "core:os"
import "core:strings"
import "core:odin/ast"
import "core:odin/parser"
import "odin_lib:weave"

main :: proc() {
	if len(os.args) != 3 {
		fmt.eprintln("usage: weave <pkg-dir> <out-dir>")
		os.exit(2)
	}
	in_dir, out_dir := os.args[1], os.args[2]

	if !os.is_dir(in_dir) {
		fmt.eprintfln("weave: not a directory: %s", in_dir)
		os.exit(1)
	}
	os.make_directory(out_dir)
	if !os.is_dir(out_dir) {
		fmt.eprintfln("weave: cannot create out dir: %s", out_dir)
		os.exit(1)
	}

	infos, derr := os.read_directory_by_path(in_dir, -1, context.allocator)
	if derr != nil {
		fmt.eprintfln("weave: cannot read dir: %s", in_dir)
		os.exit(1)
	}

	total, files := 0, 0
	for fi in infos {
		if fi.type == .Directory || !strings.has_suffix(fi.name, ".odin") {
			continue
		}
		src_bytes, rerr := os.read_entire_file(fi.fullpath, context.allocator)
		if rerr != nil {
			fmt.eprintfln("weave: cannot read %s", fi.fullpath)
			os.exit(1)
		}
		src := string(src_bytes)
		w := weave.weave_source(src, fi.fullpath)
		out_path := fmt.tprintf("%s/%s", out_dir, fi.name)
		if werr := os.write_entire_file(out_path, w.src); werr != nil {
			fmt.eprintfln("weave: cannot write %s", out_path)
			os.exit(1)
		}
		total += w.count
		files += 1
		for s in w.skips {
			fmt.eprintfln("[weave skip] %s: %s", fi.name, s)
		}
		for imp in _local_imports(src, fi.fullpath) {
			fmt.eprintfln("[weave] %s imports local package %q -- not mirrored in W2; build it from source", fi.name, imp)
		}
	}

	fmt.printfln("woven %d capture(s) across %d file(s) -> %s", total, files, out_dir)
}

// The relative (non-collection) imports of a file. Collection imports carry a `coll:path` colon;
// everything else is a local package referenced relative to this file's directory.
_local_imports :: proc(src, path: string) -> []string {
	file := ast.File {
		fullpath = path,
		src      = src,
	}
	p := parser.default_parser()
	out: [dynamic]string
	if !parser.parse_file(&p, &file) {
		return out[:]
	}
	for imp in file.imports {
		s := strings.trim(imp.relpath.text, "\"") // relpath.text keeps the quotes
		if !strings.contains(s, ":") {
			append(&out, s)
		}
	}
	return out[:]
}
