# `tele` Telemetry Capability Catalog (Odin)

Merged from 13 per-section sweeps. Duplicate features (e.g. `Source_Code_Location`, `read_cycle_counter`, `Tick`, `type_info_of`) were de-duplicated; conflicting `source_ref`s were reconciled to the most specific one found. `(used)` = already in `tele`.

---

## 1. Capability catalog

### (a) Capture identity / metadata

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `#caller_location` **(used)** | Compile-time injected `Source_Code_Location` of the call site, as a default arg | Zero-code call-site tagging on every tele entry point | yes |
| `#caller_expression` **(used)** | Textual source of an argument (e.g. `"x + y"`), not its value | Human-readable assertion/metric labels preserving dev intent | yes |
| `Source_Code_Location` | `{file_path, line, column, procedure}` struct | Central "where did this happen" datum; serialize/index/aggregate | yes |
| `#procedure` / `#file` / `#line` / `#column` | Individual call-site facts as string/int constants | Tag/group by proc, file, line without manual literals | yes |
| `runtime.print_caller_location` | Print a loc to stderr, contextless, no alloc | Dump loc from signal/assert handlers | yes |
| `runtime.write_caller_location` | Write loc into a `[]byte`, no alloc, returns ok | Serialize loc into fixed-size/lockless ring records | yes |
| `ODIN_COMPILE_TIMESTAMP` | i64 Unix-ns build time (compile-time const) | Stamp records with exact binary build identity | yes |
| `ODIN_VERSION` / `ODIN_BUILD_PROJECT_NAME` | Compiler version string / entry-folder name | Tag records with toolchain + project | yes |

### (b) Type reflection

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `typeid` / `any` **(used)** | Type-erased `(data, id)` value container | Generic heterogeneous capture; dispatch on `id` | yes |
| `type_info_of` | `^Type_Info` (size/align/flags + variant union) | Foundation for walking any value generically | yes |
| `Type_Info` + variants (`_Struct`/`_Union`/`_Enum`/`_Array`/`_Slice`/`_Dynamic_Array`/`_Pointer`) | Per-kind metadata: field names/offsets/types, enum names/values, union tag offset/type, elem type | Serialize arbitrary structs/unions, walk fields by offset | yes |
| `reflect.struct_field_at` / `_by_name` / `_value` / `_value_by_name` | Per-field descriptor + value extraction as `any` | Capture named/indexed struct fields at runtime | yes |
| `reflect.struct_field_names` / `_types` / `_offsets` / `_tags` / `_count` / `_fields_zipped` | Bulk field metadata (parallel slices / `#soa`) | Iterate-all-fields capture; schema/column headers | yes |
| `reflect.struct_tag_lookup` | Parse `key:"value"` field tags | Per-field tele directives (`trace:"per_frame"`, `tele:"skip"`) | yes |
| `reflect.enum_string` / `_name_from_value(_any)` / `_from_name(_any)` / `_field_names` / `_field_values` / `_fields_zipped` | Bidirectional enum name↔value mapping | Human-readable enum telemetry, config parsing, schema gen | yes |
| `reflect.union_variant_typeid` / `get_union_variant` / `_raw_tag` | Active union variant id / data / raw tag | Capture/route by active variant | yes |
| `reflect.as_i64`/`as_u64`/`as_f64`/`as_bool`/`as_string`/`as_bytes`/`as_pointer`/`as_raw_data` | Normalize `any` to a common scalar/buffer | Type-dispatch-free numeric/string/binary capture | mostly yes (`as_f64` no) |
| `reflect.length` / `capacity` / `index` / `deref` / `iterate_array` / `iterate_map` | Generic container size + element/kv iteration | Walk arrays/slices/maps without compile-time type | array=yes, map=no |
| `reflect.equal` | Deep recursive semantic equality of two `any` | Delta/differential telemetry (changed vs prev frame) | yes |
| `reflect.type_kind` + `Type_Kind` | High-level type category enum | Single `switch` to dispatch capture strategy | yes |
| `reflect.type_info_base` / `type_info_core` | Strip `distinct` / strip distinct+enum backing | Canonicalize types before inspecting | yes |
| `reflect.write_typeid` / `write_type` | Type → string into `io.Writer` | Serialize type names/schemas | yes |
| `intrinsics.type_is_*` (struct/array/slice/pointer/union/enum/integer/float/bool/string/numeric/ordered/comparable/indexable) | Compile-time type predicates | `when`-guard per-kind capture (zero runtime cost) | yes |
| `intrinsics.type_has_field` / `type_field_type` / `type_struct_field_count` / `type_field_index_of` | Compile-time struct introspection | Build offset tables, version-guard fields at build time | yes |
| `intrinsics.type_union_tag_type`/`_offset`/`_variant_count` / `type_variant_type_of` | Compile-time union introspection | Variant lookup tables, tag extraction | yes |
| `intrinsics.type_elem_type` / `type_base_type` / `type_core_type` | Compile-time element/base/core type | Recursive-capture deduction, unwrap newtypes | yes |
| `size_of`/`align_of`/`offset_of`(+`_by_string`)/`typeid_of`/`type_of` | Compile-time size/align/offset/id | Buffer sizing, packed-record offsets, `#assert` guards | yes |
| `ODIN_NO_RTTI` (gate) | true if `-no-rtti` strips RTTI | Disable `type_info_of` path; fall back to manual tables | yes |

### (c) Value-over-time / storage

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `[dynamic]T` **(used)** | Resizable array (len/cap/allocator) | Unbounded session-lifetime sample buffer | yes (append order) |
| `map[K]V` **(used)** | Hash map, O(1) avg | Aggregate samples by key (per-subsystem histograms) | **no** (iter order) |
| `core:container/queue.Queue` | Ring-buffer deque, O(1) both ends, auto-grow | FIFO rolling frame buffer (no shifting) | yes |
| `core:container/small_array.Small_Array(N,T)` | Fixed-size stack array w/ dynamic len | Last-N samples, no heap alloc | yes |
| `core:container/intrusive/list` (`List`/`Node`) | O(1) embed-node linked list | Policy-evicted event chain (LRU) | yes |
| `core:container/bit_array.Bit_Array` | Dynamic bit-vector + set/unset iterators | ~1-bit/sample flags (anomaly/outlier), fast scan | yes |
| `#soa[dynamic]T` | Struct-of-arrays columnar layout (`soa_zip`/`soa_unzip`) | Cache-optimal columnar time-series scans | yes |
| `Raw_Dynamic_Array` (transmute) | `{data, len, cap, allocator}` view | Introspect buffer headroom/footprint | yes |
| `#sparse[Enum]T` | Sparse enum-indexed array | Per-event-type counters, type-safe | yes |

### (d) AUTOMATIC instrumentation (no manual calls)

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `@(instrumentation_enter)` | Compiler-injected callback on **every** proc entry; sig `proc "contextless" (proc_address, call_site_return_address: rawptr, loc: Source_Code_Location)` | Auto-record every call site/return/loc — whole-program call tracing | yes |
| `@(instrumentation_exit)` | Same, on **every** proc exit (normal or abnormal) | Pairs w/ enter for durations + complete traces | yes |
| `@(no_instrumentation)` | Excludes a proc from the hooks | Prevent infinite recursion in tele infra; spare hot paths | yes |
| `core:prof/spall` **(used)** (`context_create`, `buffer_create`, `SCOPED_EVENT`, `buffer_flush`, enter/exit hooks) | Spall-format binary trace; thread-local buffers; deferred scope events | Reference impl of the auto-instrument pattern (speedscope-compatible) | trace order/ts yes; setup no |
| `Logger_Proc` (`context.logger`) **(used via sink)** | One callback fires on every `log()` w/ auto loc | Swap whole-program logging to a tele sink in one place | n/a |
| `Allocator_Proc` (`context.allocator`) | Callback on every alloc/free/resize w/ auto loc | Whole-program memory instrumentation in one place | n/a |
| `Assertion_Failure_Proc` (`context.assertion_failure_proc`) | Callback on every assert/panic, gets loc, noreturn | Capture every assertion failure before crash | n/a |

### (e) Timing / profiling

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `time.tick_now` / `Tick` | Monotonic ns snapshot (`QPC`/`CLOCK_MONOTONIC`) | Primary event timestamp; immune to clock skew | **no** (run-varying) |
| `time.tick_diff` / `tick_since` / `tick_lap_time` | Elapsed `Duration` between/since/lap ticks | Frame time, latency, per-iteration deltas | diff=yes; now-based no |
| `time.SCOPED_TICK_DURATION` **(used pattern via deferred)** | `@(deferred_in_out)` scope timer → writes `Duration` | Zero-boilerplate scope timing | yes (mechanism) |
| `time.Stopwatch` (+`start`/`stop`/`reset`/`duration`) | Cumulative timer across intervals | Total time-in-subsystem across frames | yes (mechanism) |
| `time.Duration` (+`_nanoseconds`/`_seconds`/`_milliseconds`) | Distinct i64 ns + converters | Type-safe interval storage/export | yes; f64 converters no |
| `intrinsics.read_cycle_counter` | Raw CPU TSC (rdtsc/CNTVCT) | Sub-µs latency, lock-free profilers | **no** |
| `intrinsics.read_cycle_counter_frequency` | CPU freq in Hz | Convert cycles→ns | yes (varies by machine) |
| `time.tsc_frequency` / `has_invariant_tsc` | Calibrated TSC freq / invariant-TSC check | Gate + calibrate cycle-based tele | yes (machine-varying value) |
| `intrinsics.x86_cpuid` | Raw CPUID query | Feature detect (used by `has_invariant_tsc`) | yes |
| `time.Benchmark_Options` / `benchmark` | setup→bench→teardown harness; ops/sec, MB/sec | Perf-regression telemetry | mechanism yes; throughput no |
| `time.now` / `time_to_unix(_nano)` | Wall-clock Unix-ns | Cross-machine correlation, log timestamps | **no** |
| `intrinsics.debug_trap` / `trap` | Breakpoint / unconditional trap | Break-on-anomaly; fail-safe shutdown | n/a / yes |
| `intrinsics.expect` / `likely` / `unlikely` | Branch-probability hints | Mark `if tele_enabled` cold to cut overhead | yes |
| `intrinsics.prefetch_read/write_data(_instruction)` | Cache prefetch hints | Reduce misses in trace-buffer/histogram loops | yes |

### (f) Memory observability

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `mem.Tracking_Allocator` | Live alloc map + totals/peak/current + bad-free detection, mutex-protected | Leak detection, per-call-site memory profiling | yes (sizes/sites) |
| `mem.Tracking_Allocator_Entry` | Per-alloc `{ptr,size,align,mode,err,location}` | Reconstruct full alloc history by loc | yes |
| `tracking_allocator_init`/`clear`/`reset`/`destroy` | Lifecycle; `clear` keeps totals | Per-frame high-water tracking | yes |
| `tracking_allocator_bad_free_callback_panic`/`_add_to_array` | Bad-free handlers (crash vs collect) | Use-after-free / double-free telemetry | yes |
| `Arena.peak_used` (+ `Stack`/`Small_Stack`) | High-water field per allocator | Scratch-buffer pressure, validate arena sizing | yes |
| `mem.Mutex_Allocator` | Thread-safe allocator wrapper | Compose w/ Tracking for MT heap profiling | yes |
| `mem.query_info` + `Allocator_Query_Info` | Size/align of a live pointer (`Query_Info` mode) | On-demand alloc size lookup, no side map | yes |
| `Allocator_Mode` enum | Discriminate Alloc/Free/Resize/Query/… | Per-op-type counters in custom wrappers | n/a |
| `core:log.Log_Allocator` (+`init`/`log_allocator`) | Logs every alloc/free via `context.logger` | Zero-code alloc observability, Human/Bytes fmt | **no** |

### (g) Output / format / sinks

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `fmt` `%v` / `%#v` **(used)** | Compact / expanded multi-line value | Snapshots; `%#v` diff-able multi-line state | yes |
| `fmt` `%T` / `%p` / `%w` | Type name / pointer addr / Odin-source syntax | Schema fingerprint / object identity / re-parseable dumps | `%p` **no** |
| `fmt.register_user_formatter` + `User_Formatter` + `set_user_formatters` + `Info` | Per-typeid custom format intercept | Domain-specific serialization at call sites | yes |
| `fmt.tprintf`/`aprintf`/`bprintf`/`wprintf` (+ `ln`) | temp / heap / buffer / `io.Writer` formatting | Per-frame (temp), batch (heap), zero-alloc (buf), sink (writer) | yes |
| `fmt.fmt_int` / `fmt_float` | Base/precision-controlled numeric fmt | Counters/IDs (hex/bin), metrics (fixed/sci) | yes |
| `encoding/json.marshal` / `marshal_to_writer` | Reflection JSON (also JSON5/MJSON), streaming | Core NDJSON record serialization, zero-copy stream | yes |
| `encoding/json.User_Marshaler` + `register_user_marshaler` + `Marshal_Options` | Per-typeid custom JSON; pretty/enum-names/sort-maps | Bespoke type encoding; deterministic sorted output | yes |
| `encoding/csv.Writer` | Streaming CSV rows | Tabular sample rows (greppable/spreadsheet) | yes |
| `strconv.write_bits(_128)` / `parse_i64`/`u64`/`int`/`uint` | Int↔string any base | Numeric ser/deser, log replay | yes |
| `io.Writer`/`io.Stream` | Unified file/buffer/socket/multi sink | Write-once tele backend abstraction | n/a |
| `core:log` `log`/`logf` + `debug/info/warn/error/fatal(f)` **(used as sink target)** | Level-filtered, loc-stamped dispatch | Structured event recording entry point | yes |
| `create_console/file/multi_logger` + `destroy_*` + `nil_logger` | Console/file/fan-out sinks; no-op disable | Multi-sink tele; zero-overhead off-switch | console/file no |
| `Logger_Level` / `Logger_Option(s)` + `Default_*_Opts` / `Full_Timestamp_Opts` | Severity + metadata bit-flags | Per-level filtering, selectable metadata | yes |
| ANSI constants `ansi.*` **(used, hand-rolled)** | CSI/SGR/colors/cursor escape parts | Colored interactive tele output | yes |
| `terminal.is_terminal` / `os.is_tty` / `color_depth` / `color_enabled` / `Color_Depth` | TTY + color-capability detection (NO_COLOR aware) | Gate ANSI: only emit color when supported | yes |
| `os.lookup_env`/`get_env` | Read env (COLORTERM/TERM/NO_COLOR) | Config-driven color/sink/level | yes |
| `windows.GetConsoleMode`/`SetConsoleMode`/`GetStdHandle` | Enable `ENABLE_VIRTUAL_TERMINAL_PROCESSING` | Windows ANSI enablement | yes |

### (h) Compile-time gating / zero-overhead

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `#config` + `when` **(used — the TELE on/off dial)** | `-define`-overridable consts + compile-time if | Strip tele entirely; pick strategy per build | yes |
| `$T` parametric polymorphism **(used — `watch`)** | Generic procs specialized at compile time | Type-specialized capture w/o runtime dispatch | yes |
| `@(deferred_out)` / `@(deferred_in)` / `@(deferred_none)` **(used — SCOPE zones)** | RAII-style auto enter/exit; opt-out variant | Scoped event bracketing | yes |
| `@(init)` / `@(fini)` **(used; fini must be contextless)** | Auto run before main / after main | Auto tele init / flush+close | yes |
| `@(private)` **(used)** | File/package-scope symbol | Hide tele internals | yes |
| `@(disabled=COND)` | Compile out a proc when COND | `@(disabled=ODIN_DISABLE_ASSERT)` zero-cost asserts | yes |
| `@(cold)` | Hint rarely-run; move out of hot stream | Keep error/anomaly paths off hot path | n/a |
| `@(rodata)` | Read-only data section | Immutable event-name/schema tables | yes |
| `@(require_results)` | Warn if return unused | Force tele-init/registration results to be handled | n/a |
| `@(require)` | Foreign proc must link | Enforce OS tele hooks (e.g. ASan) available | yes |
| `#assert` **(used implicitly via size guards)** | Compile-time assertion | Validate record size/layout before any run | yes |
| `#panic` | Compile-time build failure | Fail build on incompatible tele config | n/a |
| `#load_directory` | Embed a dir as `[]{name,data}` at compile time | Embed tele schemas/format tables into binary | yes |
| `ODIN_DEBUG` / `ODIN_OPTIMIZATION_MODE` | Debug flag / `-o` level | Verbose tele in debug, sampling in speed | yes |
| `ODIN_OS`/`ARCH`/`ENDIAN` | Target platform consts | Route to OS backends; byte-order-aware ser | yes |
| `ODIN_DISABLE_ASSERT`/`NO_BOUNDS_CHECK`/`NO_TYPE_ASSERT`/`TEST`/`SANITIZER_FLAGS`/`NO_ENTRY_POINT` | Build-mode flags | Gate assertion/bounds/test/sanitizer-aware tele; manual init when no entry point | yes |
| `intrinsics.has_target_feature` | Runtime CPU feature check ("avx2") | Enable arch-specific tele paths | yes |

### (i) Concurrency / atomics

| feature | what it gives us | telemetry use | deterministic |
|---|---|---|---|
| `@(thread_local)` | Per-thread storage, no sync | Per-thread tele buffers/counters (Spall pattern) | n/a |
| `Context` (`user_ptr`/`user_index`) | Implicit thread-local context + 2 user fields | Stash tele state/frame counter w/o globals | n/a |
| `intrinsics`/`sync.atomic_load`/`store`/`add`/`sub`/`exchange`(+`_explicit`) | Lock-free counters/flags w/ memory order | MT event counters, enable flags, buffer swaps | op atomic; values run-vary |
| `atomic_compare_exchange_strong`/`weak` | CAS (+ explicit orders) | Lock-free state/batch handoff, versioning | atomic; outcome interleaving-dep |
| `atomic_and`/`or`/`xor` | Atomic bitwise, returns old | Lock-free flag-set telemetry state | atomic |
| `atomic_thread_fence`/`signal_fence` + `Atomic_Memory_Order` | Barriers + ordering enum | Make tele writes visible before reader wakes | yes |
| `sync.cpu_relax` | PAUSE hint | Spin-wait on tele flag, low burn | yes |
| `sync.Atomic_Mutex` (+`try_lock`) | Hybrid spin/futex lock | Serialize shared buffer writes; opportunistic sampling | n/a |
| `sync.Atomic_RW_Mutex` | Many-reader/one-writer | Read-heavy snapshot scenarios | n/a |
| `sync.Atomic_Sema` / `Atomic_Cond` | Semaphore / condvar | Reader waits for writer "batch ready" | n/a |
| `sync.Wait_Group` / `Barrier` | N-thread join / sync point | Flush all worker tele; stage-gated per-phase metrics | n/a |
| `sync.current_thread_id` | Unique thread id | Per-thread tele bucket key / tag | yes |
| `intrinsics.volatile_load`/`store` | Non-elided mem access | Shared tele slot readable by external tool | **no** |
| `intrinsics.count_ones`/`zeros`/`trailing_zeros`/`leading_zeros` | Bit-count (POPCNT/CLZ) | Fast flag scans in bit-packed tele | yes |
| `intrinsics.mem_copy_non_overlapping`/`mem_zero` | Fast bulk copy/clear | Batch-clear sample buffers | yes |

---

## 2. ⭐ HIGH-VALUE UNUSED — we missed this

Ranked most→least valuable. `tele` already uses spall + caller-loc + the on/off dial; these are the gaps.

1. **`@(instrumentation_enter)` / `@(instrumentation_exit)` + `@(no_instrumentation)`** — *the big one.* `tele` already links spall, but spall's auto-call-graph mode IS these hooks (its own docs use them). If `tele` defines two `"contextless"` hook procs it gets **whole-program "auto-record everything that runs"** with zero call-site edits — every proc's `{addr, return_addr, loc}` streamed to your existing spall buffer / dynamic-array sink. Plug-in: add `@(no_instrumentation)` to all `tele` internals (sink writers, buffer flush) to avoid infinite recursion, gate the hook bodies behind your `#config TELE` dial. *(src: `core/prof/spall/doc.odin:39-47`, `base/runtime/error_checks.odin:3-12`)*

2. **`reflect` struct/enum/union walking (`type_info_of` + `Type_Info_Struct.offsets/names/tags`, `struct_fields_zipped`, `enum_string`, `struct_tag_lookup`)** — `tele` has `typeid`/`any` and `%#v` but `%#v` is a black box. Real reflection lets `watch(any)` emit *structured* per-field records (name+value+offset), map enums to names, and honor **field tags** like `tele:"skip"` / `tele:"per_frame"` for per-field opt-in. This is the difference between a string blob and a queryable schema. Plug-in: replace/augment the `%#v` path in `watch` with a `Type_Info_Struct` walk; reuse the existing `[dynamic]`/`map` storage. *(src: `core/reflect/reflect.odin:677, 713, 773`, `base/runtime/core.odin:132-150`)*

3. **`mem.Tracking_Allocator` (+ `Tracking_Allocator_Entry`, `clear`, `peak_memory_allocated`)** — `tele` has no memory-observability category at all. One `context.allocator` swap gives leak detection, per-call-site alloc attribution (via the loc you already capture), and **per-frame peak** via `tracking_allocator_clear()` at frame start. Compose with `Mutex_Allocator` for MT. Plug-in: a `tele.mem_watch()` that installs Tracking and dumps `allocation_map` through your existing sink. *(src: `core/mem/tracking_allocator.odin`)*

4. **`encoding/json.marshal_to_writer` (+ `Marshal_Options{sort_maps_by_key, use_enum_names}`)** — `tele`'s sink is `core:os` append-file with hand-formatted output. `marshal_to_writer` streams reflection-driven **NDJSON** straight to your file handle, no intermediate alloc, and `sort_maps_by_key` makes output **deterministic across runs** — directly helping the claim/test harness diff exactly. Plug-in: wrap your append-file `os.Handle` as `io.Writer`, marshal each record. *(src: `core/encoding/json/marshal.odin:160, 23-63`)*

5. **`reflect.equal` for delta/differential capture** — Lets `watch` skip unchanged values (compare current vs previous snapshot, recursive). Cuts volume dramatically for high-frequency watches. Plug-in: keep a prev-value `any` per watch slot; only record when `!reflect.equal(prev, cur, true)`. *(src: `core/reflect/reflect.odin:1818)`)*

6. **`Allocator`/`Logger`/`Assertion_Failure_Proc` context swaps as a unit** — `tele` uses the logger sink but installing all three (esp. `Assertion_Failure_Proc`) means **every assert/panic is captured with its loc before the crash** — last-event-before-death telemetry. Plug-in: `tele.install(context)` sets all callbacks at once in `@(init)`. *(src: `base/runtime/core.odin:299, 329, 369`)*

7. **`core:container/queue.Queue` + `Small_Array` for bounded ring history** — `tele` stores in `[dynamic]`+`map` which grow unbounded. A `Queue` per watch gives an O(1) fixed-window rolling buffer (last-N frames) with no shifting and no unbounded growth. `Small_Array` for stack-allocated short histories. *(src: `core/container/queue/queue.odin`, `.../small_array/small_array.odin`)*

8. **`#soa[dynamic]T` columnar storage** — If `tele` scans one field (e.g. all timestamps) across many samples, SoA is cache-optimal vs the current AoS `[dynamic]`. Worth it only if you do columnar reads. *(src: `base/runtime/core_builtin_soa.odin`)*

9. **`fmt.register_user_formatter` / `json.register_user_marshaler`** — `tele` already does hand-rolled formatting; per-typeid registration lets game types (Vector3 etc.) self-serialize compactly without touching call sites. *(src: `core/fmt/fmt.odin:109-118`, `core/encoding/json/marshal.odin:65-135`)*

10. **`@(disabled=COND)` / `@(cold)` / `intrinsics.unlikely`** — sharper zero-overhead than `when` alone: `@(disabled)` removes a proc body wholesale; `@(cold)`+`unlikely` keep the `if tele_enabled` branch off the hot instruction stream even when compiled in. *(src: `base/runtime/core_builtin.odin:1542-1599`, `base/intrinsics/intrinsics.odin:81-82`)*

---

## 3. Auto-instrumentation callout

**Yes — Odin supports automatic compiler-injected function-call instrumentation. This is real and verified by the sweep.** It is the closest thing to GCC/Clang `-finstrument-functions`, but it is **attribute-driven, not a compiler flag.**

**How it works.** You define a procedure and tag it with `@(instrumentation_enter)` (or `@(instrumentation_exit)`). The compiler then injects a call to that procedure at the **start (resp. end) of every other procedure** in the program — except procedures marked `@(no_instrumentation)`. No manual call sites; it's a whole-program transform driven purely by the attribute's presence.

**Hook signatures** (both identical, verified in spall's docs):
```odin
@(instrumentation_enter)
hook :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location)

@(instrumentation_exit)
hook :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location)
```
So every fired hook gets: the callee's address, the return address, and the **call-site `Source_Code_Location`** — file/line/column/procedure, the same datum `tele` already captures manually.

**Overhead & safety.**
- Exit fires on **both normal and abnormal** returns, so enter/exit are balanced — usable for durations.
- The hooks **must** themselves be `@(no_instrumentation)` (and so must any proc they transitively call — buffer writers, the sink) or you get infinite recursion. The runtime uses exactly this guard for its own trap procs (`base/runtime/error_checks.odin:3-12`).
- Hooks are `"contextless"` — no implicit `context` is available inside them; you reach state via globals or `@(thread_local)` (which is exactly how spall stores its per-thread buffer).
- Cost is one (contextless) call per proc entry + per exit; **zero-overhead when no hook is defined** (the compiler injects nothing). Pair with `@(no_instrumentation)` on hot leaf procs to claw back cost selectively.

**What it enables for "auto-record everything that runs."** A complete call trace of the entire program with per-call source location and timing — no annotation of any call site. This is precisely how `core:prof/spall`'s "automatic" mode is built: `spall_enter` → `spall._buffer_begin(...)`, `spall_exit` → `spall._buffer_end(...)` (src: `core/prof/spall/doc.odin:39-47`). Since `tele` **already links spall and a buffer sink**, wiring these two hooks is a near-drop-in to get auto-trace of every function.

**Skeptic's note / caveats (flag):**
- Source confidence is high but indirect: every reference to these attributes traces back to **one file**, `core/prof/spall/doc.odin:39-47` (the documented usage) plus `spall.odin:164-169` (`SCOPED_EVENT`, which is a *manual* `@(deferred_in)` macro, NOT the auto hooks). The sweep found **no separate compiler-reference page** defining the attribute semantics, and `@(no_instrumentation)`'s source (`error_checks.odin`) shows the *attribute applied*, not its spec. So the mechanism is confirmed-by-usage, not confirmed-by-a-spec-doc.
- The exact emission rules (e.g. are `"contextless"`/foreign/inlined procs instrumented? ordering vs prologue?) are **not** documented in anything the sweep returned — verify empirically before relying on completeness.
- There is **no `-finstrument`-style flag**; if you want it off per-build you gate via `#config`/`when` around the hook definitions, not a compiler switch.

---

## 4. Determinism map

Governs what the claim/test harness (`tools/substrate/claim.py`, `output`/`equiv` claims) can assert **exactly** vs must **`<...>` wildcard**.

### Reproducible run-to-run → assert exactly
- **All compile-time facts:** `#file`, `#line`, `#column`, `#procedure`, `#caller_location`/`Source_Code_Location` *fields*, `size_of`/`align_of`/`offset_of`, `typeid_of`, every `intrinsics.type_is_*`/`type_*`, `ODIN_*` consts (version, project, OS, arch, endian, debug, opt-mode, compile-timestamp). These are baked into the binary.
- **All reflection metadata:** field names/offsets/types/tags, enum name↔value tables, union variant types, `type_kind`, `write_type`/`write_typeid` output, `reflect.equal` results. Structural, not runtime-state.
- **Value conversions:** `as_i64`/`as_u64`/`as_bool`/`as_string`/`as_bytes`, `fmt %v`/`%#v`/`%T`/`%w`, `strconv` int↔string, `fmt_int`. (Note: `as_f64` and float→string flagged **no** — float formatting can vary.)
- **Durations as a *type*:** `Duration` arithmetic and `tick_diff(a,b)` *given fixed ticks* are deterministic — but the ticks themselves are not (below).
- **Storage iteration:** `[dynamic]T` append order, `Queue`/`Small_Array`/`#soa` order, `Bit_Array` order. **Tracking_Allocator** *sizes and call-site locations* (the bytes/where), and *totals* accumulate deterministically.
- **Bit intrinsics** (`count_ones` etc.), `mem_zero`/`mem_copy`.

### Machine- or run-varying → must wildcard `<...>`
- **Wall clock:** `time.now`, `time_to_unix(_nano)`, `diff`/`since` on `Time` — NTP-adjustable, absolute.
- **Monotonic timestamps:** `tick_now`, `Tick` values, `tick_since`, `tick_lap_time`, `Stopwatch` accumulations, and any `tick_diff(start, tick_now())` — the *elapsed* is real but never byte-identical across runs.
- **Cycle counters:** `read_cycle_counter` (TSC), and `read_cycle_counter_frequency`/`tsc_frequency` (their *values* are machine-specific Hz, even though "deterministic" within a boot). `has_invariant_tsc` result is machine-dependent.
- **Pointers/addresses:** `%p`, `reflect.as_pointer`, `as_raw_data`, any captured `rawptr`/address (ASLR). The harness's existing `addr of x = <addr>` wildcard pattern is exactly for this.
- **`map[K]V` iteration order** — unspecified; never assert map dump order, sort first (or use `json.Marshal_Options.sort_maps_by_key`).
- **Throughput metrics:** `Benchmark_Options.rounds_per_second`/`megabytes_per_second`/`duration`, `duration_seconds`/`_milliseconds` (f64).
- **Concurrency outcomes:** atomic-counter *final values* and CAS *winners* depend on thread interleaving; `current_thread_id` value; `iterate_map` order; `volatile_load` reads. The *operations* are deterministic, the *observed values* are not.
- **Spall trace contents** — event ordering is deterministic but embedded timestamps are not (wildcard the ts fields).

**Harness implication:** an `output` claim over a tele dump can assert exactly on *structure + identity + reflected fields + sizes*, but every **timestamp, duration, address, throughput number, thread id, and map ordering** must be `<...>`-wildcarded or normalized (sort maps, strip ts) first. The cleanest deterministic-assertable tele record = caller-loc fields + reflected field name/value pairs (non-float) + a wildcarded timestamp.

---

**Source-confidence flags:** (1) the auto-instrumentation attributes resolve to a single doc file — confirmed by usage, not by a spec page (see §3). (2) Several timing/intrinsic entries are tagged `deterministic: yes` by the raw sweep in the sense of "stable on one machine within a boot" — I re-classified TSC/freq/tick as run/machine-varying for harness purposes (§4); the raw `deterministic` column and my map disagree deliberately. (3) A few `source_ref`s were given as `base:builtin (compiler intrinsic, not documented)` for `#caller_expression`/`#file`/`#line`/`#column` — existence is confirmed by usage in `tele` and demo, but no runtime-source line backs them; treat line/column/file directives as real-but-undocumented-in-source.