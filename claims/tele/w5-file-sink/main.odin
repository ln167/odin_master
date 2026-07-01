package main

// W5 -- a woven capture's machine line routes to the TELE_FILE sink WITH the path remap applied
// (the combination I'd left unrun). Same file-sink pattern as p5-levels-file: clear the file, capture
// (machine -> cap.log via _machine_line -> _sink_file), then read it back and echo to stdout so the
// `output` diff verifies the FILE's contents. TELE_SRC_ROOT=/src/pkg pins the remap exactly inside
// the file line (the basename collapses this file's absolute path to main.odin), proving sink routing
// and remap compose. (Direct tele.capture() == what the weaver injects.)

import "odin_lib:tele"
import "core:os"
import "core:fmt"

main :: proc() {
	os.remove("cap.log") // append sink accumulates across runs; start clean
	hp := 90
	tele.capture("hp", hp) // machine -> cap.log (no console arm at FORMAT=machine)
	data, _ := os.read_entire_file("cap.log", context.allocator)
	fmt.print(string(data)) // echo the file's structured line back to stdout
}
