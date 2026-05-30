package main

import "core:fmt"
import "base:intrinsics"

// You'll define five procs and one struct in this file. Skeletons are
// provided; fill in the bodies. Read each task block, type the code
// yourself, then run.

// TASK 1: write `max` as a generic proc.
//
// Signature: takes two values of the same type `$T` and returns the
// larger one. Add a `where intrinsics.type_is_ordered(T)` clause so
// that callers who pass an un-orderable type get a clean error.
//
// Body: `return a if a > b else b`.
//
// Replace this stub:
max :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T) {
	return a if a > b else b
}


// TASK 2: write `sum` over a fixed array of any numeric type.
//
// Signature: takes `arr: [$N]$T` and returns `T`. Both `N` (length)
// and `T` (element type) are inferred from the argument. Constrain
// with `where intrinsics.type_is_numeric(T)` so non-numeric arrays
// are rejected up front.
//
// Body: declare `total: T`, loop with `for v in arr { total += v }`,
// return total.
sum :: proc(arr: [$N]$T) -> T where intrinsics.type_is_numeric(T) {
	total: T
	for v in arr {
		total += v
	}
	return total
}


// TASK 3: write `make_constant_array` which builds a `[N]T` whose
// every element equals `val`.
//
// Signature: `proc($N: int, $val: $T) -> [N]T`. Both `N` and `val`
// are compile-time constants (note the `$` on each). `T` is inferred
// from `val`'s type.
//
// Body: declare `res: [N]T`, loop `for i in 0..<N { res[i] = val }`,
// return res.
make_constant_array :: proc($N: int, $val: $T) -> [N]T {
	res: [N]T
	for i in 0 ..< N {
		res[i] = val
	}
	return res
}


// TASK 4: declare a parametric `Stack` struct.
//
// `Stack :: struct($T: typeid) { data: [dynamic]T }`. The `$T:
// typeid` declares T as a compile-time type parameter; the `data`
// field is a dynamic array of T.
Stack :: struct($T: typeid) {
	data: [dynamic]T,
}


// TASK 5: write `push` and `pop` for `Stack`.
//
// `push` takes `s: ^Stack($T)` (pointer to a Stack of any T) and a
// `value: T`. It calls `append(&s.data, value)`. The `$T` inside the
// pointer specialization introduces T; the second parameter then
// uses bare `T`.
//
// `pop` takes `s: ^Stack($T)` and returns `(T, bool)`. If `len(s.data)
// == 0` return `(T{}, false)`. Otherwise take the last element with
// `last := s.data[len(s.data) - 1]`, shorten the array via
// `pop(&s.data)` (the builtin -- careful, your proc shadows it, so
// either rename this one or call the builtin as `pop(&s.data)` before
// shadowing kicks in). To keep things simple this skeleton names the
// proc `stack_pop` so you can use the builtin freely.
push :: proc(s: ^Stack($T), value: T) {
	append(&s.data, value)
}

stack_pop :: proc(s: ^Stack($T)) -> (T, bool) {
	if len(s.data) == 0 {
		return T{}, false
	}
	last := s.data[len(s.data) - 1]
	pop(&s.data)
	return last, true
}


main :: proc() {
	// 1. Use `max` with three different types. Notice that the same
	//    source-level definition handles all three; the compiler
	//    generated one machine-code copy per type.
	fmt.println("max(3, 7) =", max(3, 7))
	fmt.println("max(2.5, 1.0) =", max(2.5, 1.0))
	fmt.println("max(\"alpha\", \"bravo\") =", max("alpha", "bravo"))

	// 2. Use `sum` on two arrays of different lengths and element
	//    types. Both N and T are inferred from the array literal.
	ints: [4]int = {1, 2, 3, 4}
	floats: [3]f32 = {1.5, 2.5, 3.0}
	fmt.println("sum(ints) =", sum(ints))
	fmt.println("sum(floats) =", sum(floats))

	// 3. Build two constant arrays. Each call site creates a fresh
	//    specialization keyed on (N, val).
	threes := make_constant_array(5, 3)
	pis := make_constant_array(3, f32(3.14))
	fmt.println("make_constant_array(5, 3) =", threes)
	fmt.println("make_constant_array(3, 3.14) =", pis)

	// 4. Instantiate Stack(int) and Stack(string). These are two
	//    DIFFERENT types after specialization; you can't accidentally
	//    push a string into the int stack.
	s_int: Stack(int)
	defer delete(s_int.data)
	push(&s_int, 10)
	push(&s_int, 20)
	push(&s_int, 30)
	fmt.println("Stack(int) data:", s_int.data)

	if top, ok := stack_pop(&s_int); ok {
		fmt.println("popped from Stack(int):", top)
	}
	fmt.println("Stack(int) data after pop:", s_int.data)

	s_str: Stack(string)
	defer delete(s_str.data)
	push(&s_str, "hello")
	push(&s_str, "world")
	fmt.println("Stack(string) data:", s_str.data)

	if top, ok := stack_pop(&s_str); ok {
		fmt.println("popped from Stack(string):", top)
	}
	fmt.println("Stack(string) data after pop:", s_str.data)

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
