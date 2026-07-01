package main

import "odin_lib:tele"
import "core:os"
import "core:fmt"

main :: proc() {
	os.remove("cnt.log")
	tele.count("hits")
	tele.count("hits")
	tele.count("misses")
	tele.dump_counts() // machine -> file sink, keys sorted (deterministic)
	data, _ := os.read_entire_file("cnt.log", context.allocator)
	fmt.print(string(data)) // echo both structured counter lines back to stdout
}
