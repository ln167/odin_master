package tele

import "core:fmt"
import "base:runtime"

// dbg(x, y, ...) prints each argument as `file:line  name (type) = value`, colored.
// The name is the literal source text of the argument, captured at compile time; the
// type comes from the value's typeid. Fixed-arity overloads because #caller_expression
// only captures the first element of a variadic.
dbg :: proc{_dbg1, _dbg2, _dbg3, _dbg4, _dbg5, _dbg6, _dbg7, _dbg8}

_dbg1 :: proc(a: any, ea := #caller_expression(a), loc := #caller_location) {
	when ENABLED { _emit({ea}, {a}, loc) }
}
_dbg2 :: proc(a, b: any, ea := #caller_expression(a), eb := #caller_expression(b), loc := #caller_location) {
	when ENABLED { _emit({ea, eb}, {a, b}, loc) }
}
_dbg3 :: proc(a, b, c: any, ea := #caller_expression(a), eb := #caller_expression(b), ec := #caller_expression(c), loc := #caller_location) {
	when ENABLED { _emit({ea, eb, ec}, {a, b, c}, loc) }
}
_dbg4 :: proc(a, b, c, d: any, ea := #caller_expression(a), eb := #caller_expression(b), ec := #caller_expression(c), ed := #caller_expression(d), loc := #caller_location) {
	when ENABLED { _emit({ea, eb, ec, ed}, {a, b, c, d}, loc) }
}
_dbg5 :: proc(a, b, c, d, e: any, ea := #caller_expression(a), eb := #caller_expression(b), ec := #caller_expression(c), ed := #caller_expression(d), ee := #caller_expression(e), loc := #caller_location) {
	when ENABLED { _emit({ea, eb, ec, ed, ee}, {a, b, c, d, e}, loc) }
}
_dbg6 :: proc(a, b, c, d, e, f: any, ea := #caller_expression(a), eb := #caller_expression(b), ec := #caller_expression(c), ed := #caller_expression(d), ee := #caller_expression(e), ef := #caller_expression(f), loc := #caller_location) {
	when ENABLED { _emit({ea, eb, ec, ed, ee, ef}, {a, b, c, d, e, f}, loc) }
}
_dbg7 :: proc(a, b, c, d, e, f, g: any, ea := #caller_expression(a), eb := #caller_expression(b), ec := #caller_expression(c), ed := #caller_expression(d), ee := #caller_expression(e), ef := #caller_expression(f), eg := #caller_expression(g), loc := #caller_location) {
	when ENABLED { _emit({ea, eb, ec, ed, ee, ef, eg}, {a, b, c, d, e, f, g}, loc) }
}
_dbg8 :: proc(a, b, c, d, e, f, g, h: any, ea := #caller_expression(a), eb := #caller_expression(b), ec := #caller_expression(c), ed := #caller_expression(d), ee := #caller_expression(e), ef := #caller_expression(f), eg := #caller_expression(g), eh := #caller_expression(h), loc := #caller_location) {
	when ENABLED { _emit({ea, eb, ec, ed, ee, ef, eg, eh}, {a, b, c, d, e, f, g, h}, loc) }
}

@(private)
_emit :: proc(names: []string, vals: []any, loc: runtime.Source_Code_Location) {
	for name, i in names {
		when _HUMAN {
			fmt.printf(_DIM+"%s:%d"+_RST+" "+_CYAN+"%s"+_RST+" "+_DIM+"(%v)"+_RST+" = "+_YEL+"%v"+_RST+"\n",
				loc.file_path, loc.line, name, vals[i].id, vals[i])
		}
		when _MACHINE {
			_machine_line(fmt.tprintf("tele %s=%v type=%v loc=%s:%d\n",
				name, vals[i], vals[i].id, loc.file_path, loc.line))
		}
	}
}
