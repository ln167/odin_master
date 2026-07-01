package main

import "odin_lib:tele"
import "core:os"
import "core:fmt"

work :: proc() {
	tele.SCOPE()
	sum := 0
	for i in 0 ..< 1000 {
		sum += i
	}
	_ = sum
}

main :: proc() {
	os.remove("trace.spall") // a stale trace would survive across runs
	tele.spall_init("trace.spall")
	for _ in 0 ..< 50 {
		work()
	}
	tele.spall_shutdown()
	data, _ := os.read_entire_file("trace.spall", context.allocator)
	fmt.printf("spall bytes > 0: %v\n", len(data) > 0)
}
