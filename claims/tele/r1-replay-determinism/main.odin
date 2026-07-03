package main

// R1 -- replay determinism, the keystone under spec §18 gap 7 (replay-on-demand) and §19 (rewind):
// every replay / Divergence / rewind feature rests on "same seed + same inputs => same run". This
// claim certifies the half an output claim can reach: a seeded sim captured through the full
// recorder path (capture -> machine render -> file sink) produces a byte-identical record stream
// on a second pass. The spine's nondeterministic coordinates (ts, thread) and the per-thread seq
// (pass 2 continues numbering) are the only legitimate cross-pass deltas; normalize() strips exactly
// those. pass_lines pins the stream length so an empty==empty run can never pass vacuously. If this claim ever reds, a
// nondeterminism leak got in front of the recorder -- find it before trusting any replay result.

import "core:fmt"
import "core:os"
import "core:strings"
import "odin_lib:tele"

// xorshift64 -- inline PRNG so the claim can't drift with core:math/rand API changes.
next :: proc(s: ^u64) -> u64 {
	x := s^
	x ~= x << 13
	x ~= x >> 7
	x ~= x << 17
	s^ = x
	return x
}

sim_pass :: proc() {
	rng: u64 = 42
	inputs := []int{3, 1, 4, 1, 5}
	hp := 100
	pos: f32 = 0
	for input in inputs {
		hp -= input
		tele.capture("hp", hp)
		pos += f32(next(&rng) % 100) * 0.25
		tele.capture("pos", pos)
	}
}

// strip the legitimately-differing tokens (`seq=`, `ts=`, `thread=`) from every line -- and NOTHING
// else. seq continues across passes; ts (QPC nanoseconds) and thread (OS id) are the spine's
// nondeterministic coordinates. Everything left (frame, name=value, type, proc, loc) must match.
normalize :: proc(s: string) -> string {
	b: strings.Builder
	strings.builder_init(&b)
	it := s
	for line in strings.split_lines_iterator(&it) {
		first := true
		for tok in strings.fields(line) {
			if strings.has_prefix(tok, "seq=") || strings.has_prefix(tok, "ts=") || strings.has_prefix(tok, "thread=") {
				continue
			}
			if !first {
				strings.write_byte(&b, ' ')
			}
			strings.write_string(&b, tok)
			first = false
		}
		strings.write_byte(&b, '\n')
	}
	return strings.to_string(b)
}

main :: proc() {
	os.remove("det.log")
	sim_pass()
	tele.flush() // drain the spine to det.log before reading pass 1
	p1, _ := os.read_entire_file("det.log", context.allocator)
	os.remove("det.log")
	sim_pass()
	tele.flush() // drain pass 2
	p2, _ := os.read_entire_file("det.log", context.allocator)
	a := normalize(string(p1))
	b := normalize(string(p2))
	fmt.printf("pass_lines=%d\n", strings.count(a, "tele cap "))
	if a == b {
		fmt.println("identical")
	} else {
		fmt.println("DIVERGED")
		al := strings.split_lines(a)
		bl := strings.split_lines(b)
		for i in 0 ..< min(len(al), len(bl)) {
			if al[i] != bl[i] {
				fmt.printf("first divergence at record %d:\n  pass1: %s\n  pass2: %s\n", i + 1, al[i], bl[i])
				break
			}
		}
	}
}
