package main

// Lesson 07b L2: a defer fires on EVERY exit path, including early returns.
// The "end" line sits at the top, next to the "start" line, yet always
// prints last for each call — because it is pinned to scope exit, not to a
// hand-placed line before each return.
import "core:fmt"

attempt :: proc(path: int) -> bool {
	fmt.printfln("attempt(%d) start", path)
	defer fmt.printfln("attempt(%d) end", path)

	if path == 1 {
		fmt.println("  early return A")
		return false
	}
	if path == 2 {
		fmt.println("  early return B")
		return false
	}
	fmt.println("  fell through to the bottom")
	return true
}

main :: proc() {
	attempt(1)
	attempt(2)
	attempt(0)
}
