package main

// h3 -- hook emission under CONCURRENT capture (the MT contract, spec §18): two threads each run
// worker -> inner; every thread's hooks keep THEIR OWN depth / call-id cursor (thread-local), and
// the records merge at flush. Cross-thread interleaving is genuinely nondeterministic, so this
// asserts derived booleans, never a global golden stream: each worker thread's hook records are
// exactly the 4-tuple sequence enter worker (depth 1, call 1) / enter inner (depth 2, call 2) /
// exit inner (2,2) / exit worker (1,1), in that per-thread order with per-thread seq 1..4, and
// every exit's dur is >= 0 (present + sane). The main thread's own records ride the same log and
// are skipped by the proc=worker grouping.

import "odin_lib:tele"
import "core:os"
import "core:fmt"
import "core:strings"
import "core:strconv"
import "core:thread"

inner :: proc() -> int {
	return 3
}

worker :: proc(idx: int) {
	_ = inner()
}

Rec :: struct {
	kind:  string, // "enter" / "exit"
	seq:   int,
	depth: int,
	call:  int,
	dur:   int,
	pname: string,
}

field :: proc(line, key: string) -> (int, bool) {
	for tok in strings.fields(line, context.temp_allocator) {
		if strings.has_prefix(tok, key) {
			return strconv.parse_int(tok[len(key):])
		}
	}
	return 0, false
}

sfield :: proc(line, key: string) -> string {
	for tok in strings.fields(line, context.temp_allocator) {
		if strings.has_prefix(tok, key) {
			return tok[len(key):]
		}
	}
	return ""
}

main :: proc() {
	os.remove("ht.log")
	t1 := thread.create_and_start_with_poly_data(1, worker)
	t2 := thread.create_and_start_with_poly_data(2, worker)
	thread.join(t1)
	thread.join(t2)
	tele.flush() // workers joined -> safe to merge every buffer

	data, _ := os.read_entire_file("ht.log", context.allocator)
	lines := strings.split_lines(strings.trim_space(string(data)))

	by_thread := make(map[int][dynamic]Rec)
	dur_nonneg := true
	for line in lines {
		if !strings.has_prefix(line, "tele hook ") {
			continue // cap records -- not this claim's stream
		}
		th, _ := field(line, "thread=")
		s, _ := field(line, "seq=")
		d, _ := field(line, "depth=")
		c, _ := field(line, "call=")
		kind := strings.fields(line, context.temp_allocator)[2]
		r := Rec{kind, s, d, c, 0, sfield(line, "proc=")}
		if kind == "exit" {
			dur, ok := field(line, "dur=")
			if !ok || dur < 0 {
				dur_nonneg = false
			}
			r.dur = dur
		}
		if _, ok := by_thread[th]; !ok {
			by_thread[th] = make([dynamic]Rec)
		}
		append(&by_thread[th], r)
	}

	want := [4]Rec{
		{"enter", 1, 1, 1, 0, "worker"},
		{"enter", 2, 2, 2, 0, "inner"},
		{"exit", 3, 2, 2, 0, "inner"},
		{"exit", 4, 1, 1, 0, "worker"},
	}
	worker_threads := 0
	per_thread_nesting := true
	for _, recs in by_thread {
		is_worker := false
		for r in recs {
			if r.pname == "worker" {
				is_worker = true
			}
		}
		if !is_worker {
			continue // the main thread's stream
		}
		worker_threads += 1
		if len(recs) != 4 {
			per_thread_nesting = false
			continue
		}
		for r, i in recs {
			w := want[i]
			if r.kind != w.kind || r.seq != w.seq || r.depth != w.depth || r.call != w.call || r.pname != w.pname {
				per_thread_nesting = false
			}
		}
	}

	fmt.printf("worker_threads=%d\n", worker_threads)
	fmt.printf("per_thread_nesting=%v\n", per_thread_nesting)
	fmt.printf("dur_nonneg=%v\n", dur_nonneg)
}
