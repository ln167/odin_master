package main
import "core:fmt"

main :: proc() {
	// ---- FIXED ARRAY: actual storage, N baked into the type ----
	arr: [3]int = {10, 20, 30}     // three ints living right here, inline
	fmt.println("array:", arr, " size:", size_of(arr), "bytes")  // 24 bytes = 3*8

	// ---- SLICE: a view INTO the array, no element storage of its own ----
	s: []int = arr[:]              // [:] makes a slice spanning the whole array
	fmt.println("slice:", s, " len:", len(s), " header size:", size_of(s), "bytes") // 16 bytes

	// a slice can also view just PART of the array
	mid: []int = arr[1:3]          // elements [1] and [2]
	fmt.println("mid slice:", mid, " len:", len(mid))

	// the slice points INTO arr, so writing through it changes arr
	s[0] = 999
	fmt.println("after s[0]=999  -> arr:", arr)   // arr is now [999, 20, 30]
}
