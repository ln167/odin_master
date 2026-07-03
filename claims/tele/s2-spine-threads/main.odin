package main

// (b) The spine under CONCURRENT capture (spec §18: "multithreading is a hard requirement"). Three
// threads each capture the sequence v=1..10 into their own per-thread buffer (no locks on the hot
// path); after they join, flush() MERGES the buffers by (ts, thread, seq) to mt.log. A cross-thread
// interleaving is genuinely nondeterministic, so this NEVER asserts a global golden stream (spec §18):
// it reads the merged file back and asserts the two things that MUST hold --
//   * per-thread order: each thread's records carry seq 1..10 strictly increasing, value == seq, and
//     they appear in that order within the merge (per-thread streams are golden via per-thread seq);
//   * merge invariants: the merged timestamps are nondecreasing (the sort works) and the record count
//     is conserved exactly (3 threads x 10 = 30, nothing lost or duplicated).
// It prints derived booleans/counts, never the raw nondeterministic lines.

import "odin_lib:tele"
import "core:os"
import "core:fmt"
import "core:strings"
import "core:strconv"
import "core:thread"

N :: 3
K :: 10

worker :: proc(idx: int) {
	for i in 1 ..= K {
		tele.capture("v", i) // value == the per-thread seq this record will get
	}
}

field :: proc(line, key: string) -> (int, bool) {
	for tok in strings.fields(line, context.temp_allocator) {
		if strings.has_prefix(tok, key) {
			return strconv.parse_int(tok[len(key):])
		}
	}
	return 0, false
}

main :: proc() {
	os.remove("mt.log")
	ths: [N]^thread.Thread
	for i in 0 ..< N {
		ths[i] = thread.create_and_start_with_poly_data(i, worker)
	}
	for i in 0 ..< N {
		thread.join(ths[i])
	}
	tele.flush() // workers joined -> safe to merge every buffer

	data, _ := os.read_entire_file("mt.log", context.allocator)
	lines := strings.split_lines(strings.trim_space(string(data)))

	records := len(lines)
	next := make(map[int]int) // thread id -> the seq we expect next (1-based)
	seen := make(map[int]bool)
	per_thread_order := true
	merged_ts_monotonic := true
	prev_ts := i64(-1)

	for line in lines {
		s, _ := field(line, "seq=")
		ts, _ := field(line, "ts=")
		th, _ := field(line, "thread=")
		v, _ := field(line, "v=")
		seen[th] = true
		if _, ok := next[th]; !ok {
			next[th] = 1
		}
		if s != next[th] || v != s {
			per_thread_order = false
		}
		next[th] += 1
		if i64(ts) < prev_ts {
			merged_ts_monotonic = false
		}
		prev_ts = i64(ts)
	}

	fmt.printf("records=%d\n", records)
	fmt.printf("threads=%d\n", len(seen))
	fmt.printf("per_thread_order=%v\n", per_thread_order)
	fmt.printf("merged_ts_monotonic=%v\n", merged_ts_monotonic)
}
