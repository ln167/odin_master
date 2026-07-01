package main

// Spall is a SELF-CONTAINED profiler: tele.spall_init writes a trace file directly (no GUI
// needed, unlike tracy). So we can assert real zone capture from the file itself.
//
// NOTE (why this is not just `len(data) > 0`): spall.context_create writes a stream HEADER
// before any zone exists, so a header-only file already has bytes > 0 -- a `len > 0` check
// passes even if SCOPE records nothing. The real proof is that recording 50 zones makes the
// file STRICTLY LARGER than the header-only baseline. We compare byte LENGTHS only (not
// content), so embedded timestamps don't make this nondeterministic.

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

file_size :: proc(path: string) -> int {
	data, _ := os.read_entire_file(path, context.allocator) // missing file -> nil -> len 0
	return len(data)
}

main :: proc() {
	// Baseline: full init/shutdown lifecycle with ZERO zones -> header only.
	os.remove("empty.spall")
	tele.spall_init("empty.spall")
	tele.spall_shutdown()
	header := file_size("empty.spall")

	// Same lifecycle + 50 recorded zones.
	os.remove("zoned.spall")
	tele.spall_init("zoned.spall")
	for _ in 0 ..< 50 {
		work()
	}
	tele.spall_shutdown()
	zoned := file_size("zoned.spall")

	fmt.printf("header > 0: %v\n", header > 0)
	fmt.printf("zones add bytes: %v\n", zoned > header)
}
