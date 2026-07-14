package tele

import "core:fmt"
import "core:os"
import "core:time"
import "core:sync"
import "core:slice"
import "base:runtime"

// The capture SPINE (spec §18, gaps #6 + #4) -- the one path every capture flows through. Before this
// file, `capture()` formatted and emitted the machine line AT capture time, single-threaded. The spine
// splits that: capture now STAMPS coordinates + copies the value into a per-thread buffer (the hot
// path -- no locks, no I/O, one memcpy), and a later `flush()` MERGES every thread's buffer by
// timestamp and emits. This is what correlation needs (coordinates stamped at the only moment they are
// knowable) and what multithreading needs (record per thread, reassemble at flush -- the postmortem
// model, so we skip real-time concurrency machinery). Two automatic feeders (Weaver, Hooks) and the
// hand-called `dbg`/`observe` all funnel here.
//
// Canonical machine lines (FROZEN CONTRACT, spec §18 verification block; rule §14.9 "the sink is
// sacred"). Two record slices, split by the second token so grep separates them (`tele cap` = the
// value stream, `tele hook` = the execution stream):
//
//     tele cap seq=N ts=T thread=W frame=F depth=D call=C name=value type=T proc=P loc=F:L
//     tele hook enter seq=N ts=T thread=W frame=F depth=D call=C proc=P loc=F:L
//     tele hook exit  seq=N ts=T thread=W frame=F depth=D call=C dur=U proc=P loc=F:L
//
// `seq` is the per-thread monotonic counter (deterministic -> asserted exact by claims); `ts` (QPC
// nanoseconds), `thread` (OS id), and the exit line's `dur` (ns, exit ts minus the matched enter's)
// are the NONDETERMINISTIC fields, each in a FIXED position -> claims wildcard them (`ts=<...>
// thread=<...> dur=<...>`) while still pinning seq, frame, depth, call, and the payload exactly.
// `frame` is the spine frame cursor (§18 gap #4): `frame_mark()` advances it at one explicit call
// site (no hidden state, rule §14) and every record stamps the current value -- code that never
// marks records frame 0. `depth`/`call` are the live execution cursor (§18 gaps #1+#2, hooks.odin):
// on a hook record they are the entered/exited call's own depth and per-thread call-id; on a cap
// record they are the ENCLOSING innermost open own-code call's -- the value fused with its
// execution context, the joined Record. Both are per-thread-deterministic -> asserted exact. The
// merged stream is ordered by (ts, thread, seq); across threads at equal ts the global order is
// genuinely nondeterministic, so claims assert per-thread order + merge invariants, never a global
// golden interleaving.
//
// Everything here is `when MAX` at the call sites (the automatic value firehose is the max tier). The
// worker procs are compiled unconditionally so core:time / sync / slice / os stay used imports at every
// dial; at off they are dead-stripped -> zero bytes.

SPINE_VAL_MAX :: 64 // inline bytes for the rendered value copy; a longer render truncates (forensic)

Record_Kind :: enum u8 {
	Cap,   // a value capture (the Weaver / hand-called capture)
	Enter, // own-code proc enter (the Hooks, spec §18 gap #1)
	Exit,  // own-code proc exit -- carries dur
}

Record :: struct {
	kind:   Record_Kind,
	ts:     i64, // QPC nanoseconds (time.tick_now) -- monotonic, cross-core-safe on modern Windows
	thread: int, // OS thread id (sync.current_thread_id)
	seq:    int, // per-thread monotonic capture counter (the tie-breaker for equal timestamps)
	frame:  u64, // spine frame cursor at capture time (0 until the first frame_mark)
	depth:  int, // own-code call depth: the hook record's own / a cap's enclosing (gap #2)
	call:   int, // per-thread call-id: the hook record's own / a cap's innermost open call (0 = none)
	dur:    i64, // Exit only: ns since the matched enter (off the open-call stack, hooks.odin)
	name:   string, // caller literal (static, safe to hold), from the weaver / hand-call
	val:    [SPINE_VAL_MAX]u8, // value rendered determinism-locked at capture time -- a copy, no dangle
	vlen:   int,
	type:   typeid, // value.id
	loc:    runtime.Source_Code_Location, // #caller_location (path remapped at render time via _src_path)
}

// Per-thread append buffer. Registered once (under a mutex) on the thread's first capture, then written
// lock-free. `recs` is a ring (index = count % SPINE_CAP) so a runaway thread wraps instead of
// overflowing; the per-site cap (TELE_CAP) already bounds hot loops, so claims never wrap.
Thread_Buf :: struct {
	recs:  [SPINE_CAP]Record,
	count: int, // total pushed (live = min(count, SPINE_CAP)); reset to 0 by flush (drain)
	seq:   int, // per-thread seq, NOT reset by flush (monotonic across the run)
	tid:   int,
}

@(thread_local) g_tbuf: ^Thread_Buf
@(thread_local) g_cap_sites: map[u64]int // per-site cap counters, per thread -> no shared-map race

@(private) g_bufs:     [SPINE_THREADS]^Thread_Buf
@(private) g_nbufs:    int
@(private) g_reg_lock: sync.Mutex
@(private) g_frame:    u64          // spine frame cursor (§18 gap #4)
@(private) g_last_proc: string      // human reader: proc the last header was printed for (W5 grouping)

// One explicit call per frame advances the spine frame cursor (spec §18 gap #4, Tracy's FrameMark
// model). Explicit + single-call-site, so it doesn't violate the no-hidden-state rule (§14) the way
// per-capture caller-passing did. Throwaway code never calls it -> every record stamps frame 0.
@(no_instrumentation)
frame_mark :: proc() {
	when MAX {
		g_frame += 1
	}
}

// Drain every thread buffer: merge by (ts, thread, seq) and emit. Called explicitly (a claim reading a
// file sink flushes before it reads) and automatically at process exit (@(fini) below) -- the
// firehose/postmortem model of §10 (record during the run, dump at the end). Not the hot path: this is
// where all formatting / sort / I/O lives.
@(no_instrumentation)
flush :: proc() {
	when MAX {
		_flush()
	}
}

// Get this thread's buffer, registering it on first use. The registration mutex is taken ONCE per
// thread (not per capture) -> the hot path stays lock-free (spec §18).
@(private, no_instrumentation)
_spine_buf :: proc() -> ^Thread_Buf {
	if g_tbuf == nil {
		sync.mutex_lock(&g_reg_lock)
		b := new(Thread_Buf)
		b.tid = sync.current_thread_id()
		g_bufs[g_nbufs] = b
		g_nbufs += 1
		g_tbuf = b
		sync.mutex_unlock(&g_reg_lock)
	}
	return g_tbuf
}

// The hot path: stamp coordinates, render+copy the value, memcpy into the next ring slot, bump. No
// locks (after the one-time registration), no I/O, no allocation past the value copy. Called from
// `capture` (capture.odin) under `when MAX`.
@(private, no_instrumentation)
_spine_push :: proc(name: string, value: any, loc: runtime.Source_Code_Location) {
	// Per-site cap (spec §8) -- the hot-loop guard, per thread. Key the site by the file_path literal's
	// data pointer folded with the line (no per-call allocation to build the key).
	key := u64(uintptr(raw_data(loc.file_path))) * 1000003 + u64(loc.line)
	if g_cap_sites[key] >= CAP_PER_SITE { // reading a nil map is fine; only assigning panics
		return
	}
	if g_cap_sites == nil {
		g_cap_sites = make(map[u64]int)
	}
	g_cap_sites[key] += 1

	b := _spine_buf()
	b.seq += 1
	r := &b.recs[b.count % SPINE_CAP]
	r.kind = .Cap
	r.ts = time.tick_now()._nsec
	r.thread = sync.current_thread_id()
	r.seq = b.seq
	r.frame = g_frame
	// The joined Record (spec §18 gap #2): stamp the LIVE execution cursor -- current own-code
	// depth and the innermost open call's id (hooks.odin) -- so the value knows which activation
	// of which proc it was seen in. 0/0 when no own-code call is open (hooks off the stack).
	r.depth = g_hook_depth
	r.call = g_hook_open[g_hook_depth - 1].call if g_hook_depth > 0 else 0
	r.dur = 0
	r.name = name
	r.type = value.id
	r.loc = loc
	r.vlen = copy(r.val[:], _det_value(value)) // determinism-locked (spec §5.2); copy truncates past 64
	b.count += 1
}

// Hook-path push (spec §18 gap #1): the SAME spine -- same buffer, same seq, same coordinates --
// but callable from the "contextless" instrumentation handlers. It skips the per-site-cap map
// (the hooks carry their own volume filter: own-code procs only) and touches a context only for
// this thread's first record (buffer registration allocates); everything else is contextless core
// (tick_now / the memcpy). ts comes from the caller so an exit Record and its dur share one clock
// read. name/val/type are cleared -- ring slots are reused across kinds.
@(private, no_instrumentation)
_spine_push_hook :: proc "contextless" (kind: Record_Kind, depth, call: int, dur: i64, ts: i64, loc: runtime.Source_Code_Location) {
	if g_tbuf == nil {
		context = runtime.default_context()
		_spine_buf()
	}
	b := g_tbuf
	b.seq += 1
	r := &b.recs[b.count % SPINE_CAP]
	r.kind = kind
	r.ts = ts
	r.thread = b.tid
	r.seq = b.seq
	r.frame = g_frame
	r.depth = depth
	r.call = call
	r.dur = dur
	r.name = ""
	r.vlen = 0
	r.type = nil
	r.loc = loc
	b.count += 1
}

// Merge + emit. Gather every live record (across all registered threads) into one slice, sort by
// (ts, thread, seq), render each to the machine sink (+ human, + NDJSON), then drain the buffers.
@(private, no_instrumentation)
_flush :: proc() {
	recs := make([dynamic]^Record, 0, 64, context.temp_allocator)
	for i in 0 ..< g_nbufs {
		b := g_bufs[i]
		live := min(b.count, SPINE_CAP)
		start := b.count - live // absolute index of the oldest live record
		for j in 0 ..< live {
			append(&recs, &b.recs[(start + j) % SPINE_CAP])
		}
	}
	slice.sort_by(recs[:], _rec_less)
	for r in recs {
		// Render site for the canonical machine lines (contract at the top of this file). The
		// second token splits the slices for grep: `tele cap` = values, `tele hook` = execution
		// (kind as the third bare token, so `grep "tele hook enter"` isolates enters). The exit
		// line's dur sits in a fixed position between call and proc -> wildcarded like ts/thread.
		when _MACHINE {
			switch r.kind {
			case .Cap:
				_machine_line(fmt.tprintf("tele cap seq=%d ts=%d thread=%d frame=%d depth=%d call=%d %s=%s type=%v proc=%s loc=%s:%d\n",
					r.seq, r.ts, r.thread, r.frame, r.depth, r.call, r.name, string(r.val[:r.vlen]), r.type, r.loc.procedure, _src_path(r.loc.file_path), r.loc.line))
			case .Enter:
				_machine_line(fmt.tprintf("tele hook enter seq=%d ts=%d thread=%d frame=%d depth=%d call=%d proc=%s loc=%s:%d\n",
					r.seq, r.ts, r.thread, r.frame, r.depth, r.call, r.loc.procedure, _src_path(r.loc.file_path), r.loc.line))
			case .Exit:
				_machine_line(fmt.tprintf("tele hook exit seq=%d ts=%d thread=%d frame=%d depth=%d call=%d dur=%d proc=%s loc=%s:%d\n",
					r.seq, r.ts, r.thread, r.frame, r.depth, r.call, r.dur, r.loc.procedure, _src_path(r.loc.file_path), r.loc.line))
			}
		}
		when _HUMAN {
			// Collapse-friendly grouping (W5): a `proc:` header once per proc change, captures indented.
			// ts/thread stay OFF the human line -- it is for eyeballs; the machine line and NDJSON carry
			// the full coordinate set for agents. Hook records are machine/NDJSON-only: the human
			// stream is the VALUE stream, and the execution firehose would bury it.
			if r.kind == .Cap {
				if r.loc.procedure != g_last_proc {
					fmt.printf("\n"+_CYAN+"%s"+_RST+_DIM+":"+_RST+"\n", r.loc.procedure)
					g_last_proc = r.loc.procedure
				}
				fmt.printf("  "+_DIM+"%s:%d"+_RST+" "+_DIM+"[%d]"+_RST+" "+_CYAN+"%s"+_RST+" "+_DIM+"(%v)"+_RST+" = "+_YEL+"%s"+_RST+"\n",
					_src_path(r.loc.file_path), r.loc.line, r.seq, r.name, r.type, string(r.val[:r.vlen]))
			}
		}
		_ndjson_emit(r)
	}
	for i in 0 ..< g_nbufs { // drain -- seq persists, count resets
		g_bufs[i].count = 0
	}
}

// Merge order: (ts, thread, seq). Named + @(no_instrumentation) so the sort's comparator calls
// don't themselves fire the hooks and push records into the buffers being drained.
@(private, no_instrumentation)
_rec_less :: proc(a, b: ^Record) -> bool {
	if a.ts != b.ts {
		return a.ts < b.ts
	}
	if a.thread != b.thread {
		return a.thread < b.thread
	}
	return a.seq < b.seq
}

// One JSON object per record to the NDJSON file (spec §18 analysis layer). Folds away when TELE_NDJSON
// is unset (the `if !_NDJSON` is a compile-time constant), but stays compiled so `os` is a used import
// at every dial. Hook records ride along with a distinguishing "kind" (cap/enter/exit; dur on exit).
// Values are already newline-escaped by _det_value; %q quotes/escapes the rest.
@(private, no_instrumentation)
_ndjson_emit :: proc(r: ^Record) {
	if !_NDJSON {
		return
	}
	s: string
	switch r.kind {
	case .Cap:
		s = fmt.tprintf(`{{"kind":"cap","seq":%d,"ts":%d,"thread":%d,"frame":%d,"depth":%d,"call":%d,"name":%q,"value":%q,"type":%q,"proc":%q,"loc":%q}}`+"\n",
			r.seq, r.ts, r.thread, r.frame, r.depth, r.call, r.name, string(r.val[:r.vlen]),
			fmt.tprintf("%v", r.type), r.loc.procedure, fmt.tprintf("%s:%d", _src_path(r.loc.file_path), r.loc.line))
	case .Enter:
		s = fmt.tprintf(`{{"kind":"enter","seq":%d,"ts":%d,"thread":%d,"frame":%d,"depth":%d,"call":%d,"proc":%q,"loc":%q}}`+"\n",
			r.seq, r.ts, r.thread, r.frame, r.depth, r.call,
			r.loc.procedure, fmt.tprintf("%s:%d", _src_path(r.loc.file_path), r.loc.line))
	case .Exit:
		s = fmt.tprintf(`{{"kind":"exit","seq":%d,"ts":%d,"thread":%d,"frame":%d,"depth":%d,"call":%d,"dur":%d,"proc":%q,"loc":%q}}`+"\n",
			r.seq, r.ts, r.thread, r.frame, r.depth, r.call, r.dur,
			r.loc.procedure, fmt.tprintf("%s:%d", _src_path(r.loc.file_path), r.loc.line))
	}
	f, err := os.open(NDJSON, os.O_WRONLY + os.O_CREATE + os.O_APPEND)
	if err != nil {
		return
	}
	defer os.close(f)
	os.write_string(f, s)
}

when MAX {
	// Postmortem dump: whatever the run left in the buffers is flushed at process exit, so a finite /
	// woven run surfaces its firehose without any explicit call (the weaver injects only `capture`).
	// A claim that flushed explicitly leaves an empty buffer here -> no double emission.
	@(fini, no_instrumentation)
	_spine_fini :: proc "contextless" () {
		context = runtime.default_context()
		_flush()
	}
}
