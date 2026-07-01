package tele

import "core:fmt"

// dump(x) prints `file:line  name (type) =` then x's full recursive layout (fmt %#v),
// for whole structs / state blobs. Same compile-time name + loc capture as dbg.
dump :: proc(a: any, ea := #caller_expression(a), loc := #caller_location) {
	when ENABLED {
		fmt.printf(_DIM+"%s:%d"+_RST+" "+_CYAN+"%s"+_RST+" "+_DIM+"(%v)"+_RST+" =\n"+_YEL+"%#v"+_RST+"\n",
			loc.file_path, loc.line, ea, a.id, a)
	}
}
