// Instrumented sleeper. Holds zones open for ~3s so the TCP smoke probe can
// connect and verify Tracy's client port is alive.
package main

import "core:fmt"
import "core:time"
import "odin_lib:instrument"

work :: proc(ms: int) {
	instrument.SCOPE()
	time.sleep(time.Duration(ms) * time.Millisecond)
}

main :: proc() {
	instrument.SCOPE_NAMED("smoke")
	fmt.println("tracy smoke client up")
	for i in 0 ..< 6 {
		work(500)
	}
	fmt.println("tracy smoke client down")
}
