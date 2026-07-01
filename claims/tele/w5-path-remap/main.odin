package main

// W5 -- the woven->source PATH REMAP (spec 5.2). At `max` the run entrypoint builds a flat woven
// mirror and compiles THAT, so a capture's #caller_location.file_path points into .tele-woven/<pkg>,
// not the source. The Reader remaps it back: SRC_ROOT (the real source dir, normally passed by zrun;
// here pinned via flags.txt -define:TELE_SRC_ROOT) + the file basename. This claim drives that path
// through the real renderer: TELE_SRC_ROOT=/src/pkg makes every loc render as /src/pkg/main.odin --
// fully deterministic, because the basename collapses THIS file's environment-specific absolute path
// to `main.odin`. So unlike the other capture claims the loc is asserted EXACT, with no <...> wildcard
// -- and the line numbers are exact too, proving same-line injection keeps #caller_location.line
// correct after the remap. (Direct tele.capture() calls == what the weaver injects.)

import "odin_lib:tele"

main :: proc() {
	hp := 90
	tele.capture("hp", hp)
	mana := 30
	tele.capture("mana", mana)
}
