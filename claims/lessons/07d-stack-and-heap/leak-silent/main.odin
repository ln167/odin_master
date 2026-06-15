package main

// Lesson 07d "break it" #3: forget to free. This allocates a Counter and never
// hands it back. The program still runs and prints correctly -- the OS reclaims
// the whole address space on exit -- so a leak is SILENT at small scale. That
// silence is exactly what makes leaks dangerous: do this once per frame for ten
// hours and the process bloats with nothing to show you where. (Lesson 08's
// tracking allocator is what turns this silence into a file:line report.)
import "core:fmt"

Counter :: struct {
	n: int,
}

main :: proc() {
	c := new(Counter) // asked for heap memory...
	c.n = 99
	fmt.println("ran fine, n =", c.n) // 99 -- prints correctly
	fmt.println("never freed -- the leak is silent")
	// ...and never freed it. No crash, no warning. Leaked until process exit.
}
