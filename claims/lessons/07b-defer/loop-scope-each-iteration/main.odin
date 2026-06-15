package main

// Lesson 07b L4 — defer is anchored to its OWN scope, not to the function.
// The loop body is a scope. A defer inside it fires at the end of EACH
// iteration, so the deferred line interleaves with the iteration counter
// instead of all firing together after the loop.
import "core:fmt"

main :: proc() {
	for i in 0 ..< 3 {
		fmt.printfln("iter %d: top", i)
		defer fmt.printfln("iter %d: deferred (end of THIS iteration)", i)
		fmt.printfln("iter %d: middle", i)
	}
	fmt.println("loop done")
}
