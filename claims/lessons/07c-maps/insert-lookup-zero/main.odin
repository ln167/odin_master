package main

// L1 probe: m[k]=v inserts; v := m[k] reads. A present key returns its real
// value; a MISSING key silently returns the ZERO value of V (0 for int, "" for
// string) -- no error, no panic. All lookups are of specific keys, so the
// output is deterministic (no iteration order involved).
import "core:fmt"

main :: proc() {
	scores := make(map[string]int)
	defer delete(scores)
	scores["Crim"] = 42
	scores["Hollis"] = 67

	present := scores["Crim"]      // a real value
	absent := scores["Vandal"]     // not in the map -> 0, the zero value of int
	fmt.println("present (Crim):", present)
	fmt.println("absent  (Vandal):", absent)

	labels := make(map[string]string)
	defer delete(labels)
	labels["red"] = "stop"
	missing_str := labels["green"]  // not in the map -> "", the zero value of string
	fmt.printfln("absent string is empty: %q", missing_str)
}
