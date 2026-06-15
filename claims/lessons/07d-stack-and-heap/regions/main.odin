package main

// Lesson 07d HTML probe (Level 1): two regions, two lifetimes.
// A local lives in the current call frame (stack); new(T) hands back storage
// from a separate pool (heap). The two addresses land far apart, and the heap
// one stays valid after the proc that made it returns. The actual addresses are
// nondeterministic -> the page shows one representative run with the <addr>
// wildcard; the load-bearing facts are the deterministic comparisons below.
import "core:fmt"

main :: proc() {
	local: int = 7 // lives in main's frame
	c := new(int) // lives on the heap
	c^ = 7

	fmt.println("local addr =", uintptr(&local)) // a stack address
	fmt.println("heap  addr =", uintptr(c)) // a heap address
	// They are different storage entirely -> the addresses are not equal.
	fmt.println("same storage:", uintptr(&local) == uintptr(c))
	// The two regions sit far apart in the address space (megabytes, not bytes).
	diff := max(uintptr(&local), uintptr(c)) - min(uintptr(&local), uintptr(c))
	fmt.println("regions far apart (>1MB):", diff > 1024 * 1024)
	free(c)
}
