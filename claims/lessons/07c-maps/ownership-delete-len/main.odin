package main

// L3 probe: a map owns heap memory (make + defer delete). `len(m)` is the live
// entry count. `delete_key(&m, k)` removes one entry (note the &, because removal
// can resize the table). After removal, len drops and membership flips to false.
// All observations are len() and specific-key membership: deterministic.
import "core:fmt"

main :: proc() {
	scores := make(map[string]int)
	defer delete(scores)
	scores["Liberty Bell"] = 88
	scores["Crim"] = 42
	scores["Hollis"] = 67
	scores["Vandal"] = 99
	fmt.println("len after 4 inserts:", len(scores))

	delete_key(&scores, "Crim")    // remove ONE entry, not the whole map
	fmt.println("len after delete_key(Crim):", len(scores))
	fmt.println("Crim still in map?", "Crim" in scores)
	fmt.println("Hollis still in map?", "Hollis" in scores)
}
