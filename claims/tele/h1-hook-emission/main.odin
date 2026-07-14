package main

// h1 -- HOOK EMISSION (spec §18 gap #1): at TELE=max the instrumentation hooks emit enter/exit
// Records through the capture spine (per-thread buffer, merged at flush) for OWN-CODE procs;
// core/base stay count-only (the volume filter). Single thread, nested calls main -> a -> b, no
// explicit flush -- the @(fini) postmortem dump emits everything, including main's own exit. Pins
// the canonical hook lines
//   tele hook enter seq=N ts=T thread=W frame=F depth=D call=C proc=P loc=F:L
//   tele hook exit  seq=N ts=T thread=W frame=F depth=D call=C dur=U proc=P loc=F:L
// exactly: kind + order (enters at depth 1/2/3, then exits unwinding 3/2/1 -- nesting), the
// per-thread call-id assigned at enter (main=1 a=2 b=3, exits report their enter's id), seq,
// frame, proc, loc (TELE_SRC_ROOT pins the path; the line is the proc's declaration line).
// ts/thread/dur are the nondeterministic coordinates in fixed positions, wildcarded.

import "odin_lib:tele"

g: int

b :: proc() {
	g += 1
}

a :: proc() {
	b()
}

main :: proc() {
	a()
}
