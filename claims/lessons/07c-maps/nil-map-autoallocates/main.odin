package main

// Lesson 07c "break it" #1 (corrected): writing to a nil map does NOT crash in
// current Odin -- the first insert auto-allocates the map's storage. (Older Odin,
// like Go, crashed here.) This output claim pins the real behavior.
import "core:fmt"

main :: proc() {
	m: map[string]int // nil, no make
	fmt.println("before write, len:", len(m))
	m["x"] = 1
	fmt.println("after write, len:", len(m), "m[x]:", m["x"])
}
