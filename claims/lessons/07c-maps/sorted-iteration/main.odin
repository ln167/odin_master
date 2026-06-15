package main

// L4 probe: map iteration order is UNSPECIFIED, so `for k in m` cannot produce
// stable output on its own. The idiom that dodges it: collect the keys into a
// [dynamic]K, sort the slice, then iterate the sorted slice. THAT output is
// deterministic and is what this claim pins.
import "core:fmt"
import "core:slice"

main :: proc() {
	scores := make(map[string]int)
	defer delete(scores)
	scores["Liberty Bell"] = 88
	scores["Crim"] = 42
	scores["Hollis"] = 67
	scores["Vandal"] = 99

	keys := make([dynamic]string, 0, len(scores))
	defer delete(keys)
	for k in scores {
		append(&keys, k)
	}
	slice.sort(keys[:])
	for k in keys {
		fmt.printfln("%q = %d", k, scores[k])
	}
}
