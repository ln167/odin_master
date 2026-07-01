package main

import "odin_lib:tele"
import "core:os"
import "core:fmt"

main :: proc() {
	os.remove("p4.log") // append sink accumulates across runs; start clean
	x := 42
	tele.dbg(x) // human -> console, machine -> p4.log, simultaneously
	data, _ := os.read_entire_file("p4.log", context.allocator)
	fmt.print(string(data)) // echo the file's structured line back to stdout
}
