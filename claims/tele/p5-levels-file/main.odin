package main

import "odin_lib:tele"
import "core:os"
import "core:fmt"

main :: proc() {
	os.remove("lvl.log")
	tele.info("hello", 42) // machine -> file sink (no console arm at FORMAT=machine)
	data, _ := os.read_entire_file("lvl.log", context.allocator)
	fmt.print(string(data)) // echo the file's structured line back to stdout
}
