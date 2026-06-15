package main

// L2 ground truth: an Odin `string` is two machine words {data, len}; a
// `cstring` is a single pointer (the length is implicit, found by scanning to
// the terminating zero byte). These widths back the byte-layout visual.
import "core:fmt"

main :: proc() {
	fmt.println("size_of(string)  =", size_of(string))
	fmt.println("size_of(cstring) =", size_of(cstring))
	fmt.println("size_of(rawptr)  =", size_of(rawptr))
}
