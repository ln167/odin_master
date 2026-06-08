package main

// variant_A = linear scan (baseline). variant_B = binary search (candidate).
// Both search the SAME sorted array for the SAME deterministic query set and XOR the
// found indices into a u64 sink (so -o:speed cannot dead-code-eliminate the work).
// Same sink => they'd also satisfy `equiv`; binary is the decisively faster technique,
// so `faster 1.5` is a comfortable PASS (the win is ~100x, far above the noise floor).

ARR_N   :: 1 << 13   // 8192 sorted elements
QUERIES :: 8000

arr: [ARR_N]i64

@(init)
fill_arr :: proc "contextless" () {
	for i in 0 ..< ARR_N {
		arr[i] = i64(i) * 2 // sorted even values 0,2,4,...
	}
}

target_for :: proc(q: int) -> i64 {
	return i64((q * 131) % ARR_N) * 2 // always present in arr
}

variant_A :: proc() -> u64 {
	s: u64 = 0
	for q in 0 ..< QUERIES {
		t := target_for(q)
		for i in 0 ..< ARR_N {
			if arr[i] == t {
				s ~= u64(i)
				break
			}
		}
	}
	return s
}

variant_B :: proc() -> u64 {
	s: u64 = 0
	for q in 0 ..< QUERIES {
		t := target_for(q)
		lo, hi := 0, ARR_N - 1
		for lo <= hi {
			mid := (lo + hi) / 2
			if arr[mid] == t {
				s ~= u64(mid)
				break
			} else if arr[mid] < t {
				lo = mid + 1
			} else {
				hi = mid - 1
			}
		}
	}
	return s
}
