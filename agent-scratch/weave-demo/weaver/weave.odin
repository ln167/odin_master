package main

// THE WEAVER (proof-of-concept). Out-of-band source transform:
//   read app/main.odin -> parse to AST -> find every declaration / assignment /
//   loop-variable / parameter -> splice a `capture("name", name)` after it ->
//   write woven/main.odin. The compiler never sees this tool; it runs first.
//
// This is exactly the labor it removes: you write `nums := []int{...}` once;
// the weaver writes the `capture("nums", nums)` so you never have to.

import "core:fmt"
import "core:os"
import "core:slice"
import "core:strings"
import "core:odin/ast"
import "core:odin/parser"

IN_MAIN :: "agent-scratch/weave-demo/app/main.odin"
IN_TELE :: "agent-scratch/weave-demo/app/tele.odin"
OUT_MAIN :: "agent-scratch/weave-demo/woven/main.odin"
OUT_TELE :: "agent-scratch/weave-demo/woven/tele.odin"

Edit :: struct {
	off:  int,
	text: string,
}

edits: [dynamic]Edit

cap_text :: proc(name: string) -> string {
	return fmt.aprintf("\n\tcapture(\"%s\", %s)", name, name)
}

add :: proc(off: int, name: string) {
	append(&edits, Edit{off, cap_text(name)})
}

ident_name :: proc(e: ^ast.Expr) -> (string, bool) {
	if id, ok := e.derived.(^ast.Ident); ok {
		return id.name, true
	}
	return "", false
}

weave_body :: proc(body: ^ast.Stmt) {
	if blk, ok := body.derived.(^ast.Block_Stmt); ok {
		weave_stmts(blk.stmts)
	}
}

weave_stmts :: proc(stmts: []^ast.Stmt) {
	for s in stmts {
		#partial switch n in s.derived {
		case ^ast.Value_Decl:
			if n.is_mutable {
				for nm in n.names {
					if name, ok := ident_name(nm); ok {
						add(n.end.offset, name)
					}
				}
			}
		case ^ast.Assign_Stmt:
			for l in n.lhs {
				if name, ok := ident_name(l); ok {
					add(n.end.offset, name)
				}
			}
		case ^ast.Block_Stmt:
			weave_stmts(n.stmts)
		case ^ast.For_Stmt:
			weave_body(n.body)
		case ^ast.Range_Stmt:
			// loop variables: capture them at the top of the loop body so they
			// print on every iteration.
			if blk, ok := n.body.derived.(^ast.Block_Stmt); ok {
				for v in n.vals {
					if name, ok2 := ident_name(v); ok2 {
						append(&edits, Edit{blk.open.offset + 1, cap_text(name)})
					}
				}
			}
			weave_body(n.body)
		case ^ast.If_Stmt:
			weave_body(n.body)
			if n.else_stmt != nil {
				weave_stmts({n.else_stmt})
			}
		}
	}
}

main :: proc() {
	src_bytes, _ := os.read_entire_file(IN_MAIN, context.allocator)
	if len(src_bytes) == 0 {
		fmt.eprintln("cannot read", IN_MAIN)
		os.exit(1)
	}
	src := string(src_bytes)

	file := ast.File {
		fullpath = IN_MAIN,
		src      = src,
	}
	p := parser.default_parser()
	if !parser.parse_file(&p, &file) {
		fmt.eprintln("parse failed")
		os.exit(1)
	}

	for decl in file.decls {
		vd, ok1 := decl.derived.(^ast.Value_Decl)
		if !ok1 || len(vd.values) == 0 {
			continue
		}
		pl, ok2 := vd.values[0].derived.(^ast.Proc_Lit)
		if !ok2 || pl.body == nil {
			continue
		}
		blk, ok3 := pl.body.derived.(^ast.Block_Stmt)
		if !ok3 {
			continue
		}
		// parameters: capture at the top of the body
		if pl.type != nil && pl.type.params != nil {
			for field in pl.type.params.list {
				for nm in field.names {
					if name, ok4 := ident_name(nm); ok4 {
						append(&edits, Edit{blk.open.offset + 1, cap_text(name)})
					}
				}
			}
		}
		weave_stmts(blk.stmts)
	}

	// apply edits low->high via a builder (equal offsets stack in order)
	slice.sort_by(edits[:], proc(a, b: Edit) -> bool {
		return a.off < b.off
	})
	b: strings.Builder
	strings.builder_init(&b)
	prev := 0
	for e in edits {
		strings.write_string(&b, src[prev:e.off])
		strings.write_string(&b, e.text)
		prev = e.off
	}
	strings.write_string(&b, src[prev:])

	_ = os.write_entire_file(OUT_MAIN, strings.to_string(b))
	tele_bytes, _ := os.read_entire_file(IN_TELE, context.allocator)
	_ = os.write_entire_file(OUT_TELE, tele_bytes)

	fmt.printfln("woven %d capture(s) -> %s", len(edits), OUT_MAIN)
}
