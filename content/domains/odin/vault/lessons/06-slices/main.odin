package main

import "core:fmt"


// You will write a small helper proc and call it from main. Declare it at
// package scope (above main), so it lives next to the other things `main`
// reaches for.
//
// The proc is called `sum_into_first`. It takes one parameter `values` of
// type `[]int` and returns nothing. Its job: compute the sum of all
// elements, then store that sum into `values[0]`, overwriting whatever
// was there. This proc exists to prove a point. The caller will hand us a
// slice that views into a fixed array, we will write to `values[0]`, and
// the caller will see their array's first element change. That's the
// aliasing rule, demonstrated.
//
// Implementation hint: use `for v in values` to sum, then a final
// `values[0] = total` to store.

// TODO: declare sum_into_first here


main :: proc() {
	// 1. BUILD THE BACKING ARRAY.
	//
	//    Declare a fixed array named `prices` of six ints with values
	//    100, 200, 300, 400, 500, 600. Use the lesson-05 syntax with an
	//    explicit `[6]int` type so you see it once more.
	//
	//    Then print it on a line that starts with "prices:" so the
	//    output is easy to read. fmt.println with multiple arguments
	//    will add spaces between them automatically.


	// 2. TAKE THREE SLICES OVER THAT ARRAY.
	//
	//    Make three slices, all viewing into `prices`:
	//      - `all`, covering the whole array (use the `[:]` form)
	//      - `middle`, covering indices 1 through 4 (exclusive on the
	//        upper bound, so this is three elements: 200, 300, 400)
	//      - `tail`, covering index 3 through the end (use the `[3:]`
	//        form, so this is three elements: 400, 500, 600)
	//
	//    For each of the three, print the slice's name, its contents,
	//    and its length. fmt.println prints a slice as a bracketed list
	//    by default, which is fine. Use `len(s)` for the length.


	// 3. WRITE THROUGH A SLICE AND WATCH THE ARRAY CHANGE.
	//
	//    Assign 999 to `middle[0]`. Then print `prices` again with a
	//    "prices after middle[0] = 999:" label.
	//
	//    `middle[0]` is the same memory location as `prices[1]`. The
	//    slice doesn't own anything; it's a view. When you wrote 999,
	//    you wrote it into the backing array. There is no copy step,
	//    no propagation, just one memory location reachable by two
	//    different names.


	// 4. PASS A SLICE TO THE HELPER PROC YOU DECLARED AT THE TOP.
	//
	//    Call `sum_into_first(all)`. The proc will compute the sum of
	//    every element in `prices` (because `all` is a view over the
	//    whole array) and write the result into `all[0]`, which is the
	//    same location as `prices[0]`.
	//
	//    Print `prices` one more time, with a label like "prices after
	//    sum_into_first(all):". The first element should now be the sum
	//    of the original prices plus the 999 you wrote in step 3, minus
	//    the original value at index 1 that got overwritten. Just trust
	//    the arithmetic; the output file has the exact number.


	// 5. SUB-SLICE A SLICE, THEN ITERATE BY REFERENCE.
	//
	//    Take `inner := tail[0:2]`. This is a slice of a slice; the
	//    result is still `[]int`, and it views the same backing storage
	//    as `tail` (which views `prices`). `inner` has length 2 and
	//    covers what is now `prices[3]` and `prices[4]`.
	//
	//    Print `inner` with a "inner:" label.
	//
	//    Then iterate it with `for &v in inner { v *= 2 }`. The `&v`
	//    form gives you a pointer-bound loop variable: writes to `v`
	//    write through to the underlying element. After the loop,
	//    print `prices` again with a "prices after inner doubled:"
	//    label. Indices 3 and 4 should have doubled in place.


	// 6. MAKE A FRESH SLICE WITH ITS OWN STORAGE.
	//
	//    Call `owned := make([]int, 4)`. This allocates four ints worth
	//    of memory through the current allocator, zeros them, and gives
	//    you back a slice that owns that allocation. Set up a `defer
	//    delete(owned)` on the next line so the memory gets returned
	//    when `main` exits.
	//
	//    Fill the four slots with the values 7, 8, 9, 10 using normal
	//    indexed assignment (`owned[0] = 7`, etc).
	//
	//    Print `owned` with a "owned:" label.
	//
	//    The difference from steps 1 to 5: this slice does not view
	//    into any other variable. Its storage came from the allocator,
	//    not from a stack-resident fixed array. When `main` returns,
	//    the `defer delete` runs and the memory goes back to the
	//    allocator. If you forgot the `defer`, you'd leak four ints
	//    worth of memory; for this program it wouldn't matter, but in
	//    a long-running game loop those leaks add up fast.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
