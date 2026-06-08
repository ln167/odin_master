package main

// Lesson 05 "break it" #1b: a RUNTIME out-of-bounds index. The index is not a
// compile-time constant (it depends on os.args), so the compiler cannot prove
// it in range -- it inserts a bounds check that panics at runtime instead.
import "core:fmt"
import "core:os"

main :: proc() {
	a: [4]int = {10, 20, 30, 40}
	i := len(os.args) + 9 // >= 10 at runtime, unknowable at compile time
	fmt.println(a[i])
}
