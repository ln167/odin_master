package weave

// THE WEAVER (value slice, build-time, out-of-band). Parses an .odin file, finds every captured
// construct -- mutable declarations (`:=`), assignments (`=`), loop variables, proc parameters --
// and SAME-LINE-injects a qualified `tele.capture("name", name)` after it, then appends
// `import "odin_lib:tele"` at EOF. Same-line injection is load-bearing: it shifts no source line,
// so #caller_location.line stays the real line and compiler errors on the woven copy map back to
// the source. The transform is pure text-splice over byte offsets -- the developer's formatting and
// comments are preserved verbatim; only injected text appears. Never mutates the input.
//
// This is the importable transform core (CLI is tools/domains/odin/weaver). Coverage gaps are
// logged, never silently dropped: do-form bodies (the injected `;` would escape the do-scope),
// when-stmts, and type-switches are scoped out with a skip note.

import "core:fmt"
import "core:slice"
import "core:strings"
import "core:odin/ast"
import "core:odin/parser"

Woven :: struct {
	src:   string,   // the woven source text
	count: int,      // number of tele.capture() calls injected
	skips: []string, // human-readable notes for scoped-out constructs (no-silent-caps)
}

@(private)
_Edit :: struct {
	off:  int,
	idx:  int, // insertion order -- stable tiebreak when several edits share an offset
	text: string,
}

@(private)
_State :: struct {
	edits: [dynamic]_Edit,
	skips: [dynamic]string,
}

// weave_source parses `src` (named `path` only for diagnostics) and returns the woven text + the
// exact injected count + skip notes. A parse failure passes the source through unchanged (count 0).
weave_source :: proc(src: string, path: string, allocator := context.allocator) -> Woven {
	context.allocator = allocator
	file := ast.File {
		fullpath = path,
		src      = src,
	}
	p := parser.default_parser()
	if !parser.parse_file(&p, &file) {
		return Woven{src = src, count = 0, skips = nil}
	}

	st: _State
	for decl in file.decls {
		_walk_top(&st, decl)
	}

	// low->high, stable on idx so equal-offset injections keep source order.
	slice.sort_by(st.edits[:], proc(a, b: _Edit) -> bool {
		if a.off != b.off {
			return a.off < b.off
		}
		return a.idx < b.idx
	})

	b: strings.Builder
	strings.builder_init(&b)
	prev := 0
	for e in st.edits {
		strings.write_string(&b, src[prev:e.off])
		strings.write_string(&b, e.text)
		prev = e.off
	}
	strings.write_string(&b, src[prev:])
	if len(st.edits) > 0 {
		// EOF import: legal after declarations in Odin, so it shifts no source line. Only added
		// when something was injected (else it would be an unused import).
		strings.write_string(&b, "\nimport \"odin_lib:tele\"\n")
	}

	return Woven{src = strings.to_string(b), count = len(st.edits), skips = st.skips[:]}
}

// --- injection helpers ---------------------------------------------------------

@(private)
_cap_after :: proc(st: ^_State, off: int, name: string) {
	// after the statement, same line: `; tele.capture("name", name)`
	append(&st.edits, _Edit{off, len(st.edits), fmt.aprintf("; tele.capture(\"%s\", %s)", name, name)})
}

@(private)
_cap_at_open :: proc(st: ^_State, open_off: int, name: string) {
	// just inside a `{`, same line: ` tele.capture("name", name);` (loop vars / params)
	append(&st.edits, _Edit{open_off + 1, len(st.edits), fmt.aprintf(" tele.capture(\"%s\", %s);", name, name)})
}

@(private)
_ident :: proc(e: ^ast.Expr) -> (string, bool) {
	if id, ok := e.derived.(^ast.Ident); ok {
		if id.name == "_" { // the blank identifier is not a readable value
			return "", false
		}
		return id.name, true
	}
	return "", false
}

// --- walk ----------------------------------------------------------------------

@(private)
_walk_top :: proc(st: ^_State, decl: ^ast.Stmt) {
	vd, ok1 := decl.derived.(^ast.Value_Decl)
	if !ok1 || len(vd.values) == 0 {
		return
	}
	pl, ok2 := vd.values[0].derived.(^ast.Proc_Lit)
	if !ok2 || pl.body == nil {
		return
	}
	blk, ok3 := pl.body.derived.(^ast.Block_Stmt)
	if !ok3 || blk.uses_do {
		return
	}
	if pl.type != nil && pl.type.params != nil {
		for field in pl.type.params.list {
			for nm in field.names {
				if name, ok := _ident(nm); ok {
					_cap_at_open(st, blk.open.offset, name)
				}
			}
		}
	}
	_walk_stmts(st, blk.stmts)
}

@(private)
_walk_body :: proc(st: ^_State, body: ^ast.Stmt) {
	if body == nil {
		return
	}
	if blk, ok := body.derived.(^ast.Block_Stmt); ok {
		if blk.uses_do {
			append(&st.skips, fmt.aprintf("do-form body scoped out near offset %d (injected ';' would escape the do-scope)", blk.open.offset))
			return
		}
		_walk_stmts(st, blk.stmts)
	}
}

@(private)
_walk_stmts :: proc(st: ^_State, stmts: []^ast.Stmt) {
	for s in stmts {
		#partial switch n in s.derived {
		case ^ast.Value_Decl:
			if n.is_mutable { // `:=`, not `::` constants
				for nm in n.names {
					if name, ok := _ident(nm); ok {
						_cap_after(st, n.end.offset, name)
					}
				}
			}
		case ^ast.Assign_Stmt:
			for l in n.lhs {
				if name, ok := _ident(l); ok {
					_cap_after(st, n.end.offset, name)
				}
			}
		case ^ast.Block_Stmt:
			if n.uses_do {
				append(&st.skips, fmt.aprintf("do-form scoped out near offset %d", n.open.offset))
			} else {
				_walk_stmts(st, n.stmts)
			}
		case ^ast.For_Stmt:
			_walk_body(st, n.body)
		case ^ast.Range_Stmt:
			if blk, ok := n.body.derived.(^ast.Block_Stmt); ok && !blk.uses_do {
				for v in n.vals {
					if name, ok2 := _ident(v); ok2 {
						_cap_at_open(st, blk.open.offset, name)
					}
				}
			}
			_walk_body(st, n.body)
		case ^ast.If_Stmt:
			_walk_body(st, n.body)
			if n.else_stmt != nil {
				_walk_stmts(st, {n.else_stmt}) // chained `else if` re-enters this switch
			}
		case ^ast.Switch_Stmt:
			if blk, ok := n.body.derived.(^ast.Block_Stmt); ok {
				for cs in blk.stmts {
					if cc, ok2 := cs.derived.(^ast.Case_Clause); ok2 {
						_walk_stmts(st, cc.body)
					}
				}
			}
		case ^ast.Type_Switch_Stmt:
			append(&st.skips, "type-switch scoped out (per-case rebinding)")
		case ^ast.When_Stmt:
			append(&st.skips, "when-stmt scoped out (compile-time branch)")
		}
	}
}
