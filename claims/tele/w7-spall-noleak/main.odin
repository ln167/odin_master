package main

// W7 robustness: spall_init's backing buffer (make([]u8, 1<<16)) was never freed
// -- a leak every init, plus a second alloc if init ran twice. This claim proves
// the fix with a tracking allocator: two full init/shutdown lifecycles PLUS a
// redundant re-init (the reuse guard must make it a no-op) must end with ZERO live
// allocations. Without the delete/guard, the backing(s) survive and leaks > 0.

import "odin_lib:tele"
import "core:fmt"
import "core:mem"
import "core:os"

main :: proc() {
	track: mem.Tracking_Allocator
	mem.tracking_allocator_init(&track, context.allocator)
	context.allocator = mem.tracking_allocator(&track)

	os.remove("noleak_a.spall")
	tele.spall_init("noleak_a.spall")
	tele.spall_init("noleak_a.spall") // reuse guard: already live -> no second backing alloc
	tele.spall_shutdown()

	os.remove("noleak_b.spall")
	tele.spall_init("noleak_b.spall")
	tele.spall_shutdown()

	fmt.printf("leaks: %d\n", len(track.allocation_map))
}
