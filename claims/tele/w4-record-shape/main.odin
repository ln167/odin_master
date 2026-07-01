package main

// W4 -- the Record's machine-line shape is a FROZEN CONTRACT (spec 7 + rule 14.9 "the machine sink
// is sacred"). Pins the field set `tele cap seq=N name=val type=T proc=P loc=F:L` AND the determinism
// rule (spec 5.2) for the value forms w2-capture-max does not cover: rawptr / multi-pointer / proc are
// elided (never an address -> never flaky), a typed-pointer chain peels to the pointee, a slice of
// pointers is elided to a [N]ptr count, a string with spaces and '=' survives verbatim, and an
// embedded newline is ESCAPED to \n so one record stays one line (sacred sink). The rawptr line is
// also the regression guard for the W4
// crash fix -- deref'ing a void* (rawptr has no pointee type) used to segfault _det_value at runtime.
// Direct tele.capture() calls == what the weaver injects. Run at TELE=max + FORMAT=machine; the loc
// path is wildcarded (absolute build path is environment-specific; line numbers are asserted exact).

import "odin_lib:tele"

Color :: enum { Red, Green, Blue }

main :: proc() {
	x := 7
	rp: rawptr = &x
	tele.capture("rp", rp)
	mp: [^]int = &x
	tele.capture("mp", mp)
	pp := &x; ppp := &pp
	tele.capture("ppp", ppp)
	fn := main
	tele.capture("fn", fn)
	s := "a=b c d"
	tele.capture("s", s)
	flag := true
	tele.capture("flag", flag)
	f := f32(1.5)
	tele.capture("f", f)
	col := Color.Green
	tele.capture("col", col)
	nl := "alpha\nbeta"
	tele.capture("nl", nl) // embedded newline -> escaped, record stays one line
	xs := []^int{&x}
	tele.capture("xs", xs) // slice of pointers -> elided to [N]ptr, never element addresses
}
