package main

// flags.txt sets TELE_FORMAT=both + TELE_FILE=p4off.log but NOT TELE -> defaults off.
// "Off = gone" must reach the file sink: dbg compiles to nothing, so the sink is never
// opened and the log file is never created. Expect zero stdout. The os.exists guard turns
// this into a real leak detector -- if dbg ever touched the sink at off, the file would
// exist and we'd print LEAK, failing the empty-expected diff. (Hard rule #5: off = gone.)

import "odin_lib:tele"
import "core:os"
import "core:fmt"

main :: proc() {
	os.remove("p4off.log") // start clean; at off this file must stay gone
	x := 42
	tele.dbg(x)
	if os.exists("p4off.log") {
		fmt.print("LEAK: sink file created at TELE=off\n")
	}
}
