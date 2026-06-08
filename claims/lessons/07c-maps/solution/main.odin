package main

import "core:fmt"
import "core:slice"

main :: proc() {
	// 1. create + insert.
	name_to_score := make(map[string]int)
	defer delete(name_to_score)
	name_to_score["Liberty Bell"] = 88
	name_to_score["Crim"] = 42
	name_to_score["Hollis"] = 67
	name_to_score["Vandal"] = 99
	fmt.println("--- task 1: created ---")

	// 2. single-value lookup (the footgun): absent silently returns 0.
	crim_score := name_to_score["Crim"]
	absent := name_to_score["George Washington"]
	fmt.println("Crim score (present):", crim_score)
	fmt.println("George Washington score (absent):", absent)

	// 3. comma-ok lookup (the safe way).
	v1, ok1 := name_to_score["Crim"]
	v2, ok2 := name_to_score["George Washington"]
	fmt.println("Crim ->", v1, "found?", ok1)
	fmt.println("George Washington ->", v2, "found?", ok2)
	has_crim := "Crim" in name_to_score
	fmt.println("Crim in map?", has_crim)

	// 4. iterate via sorted keys for deterministic output.
	keys := make([dynamic]string, 0, len(name_to_score))
	defer delete(keys)
	for k in name_to_score {
		append(&keys, k)
	}
	slice.sort(keys[:])
	for k in keys {
		fmt.printfln("  name_to_score[%q] = %d", k, name_to_score[k])
	}

	// 5. remove one key, re-iterate.
	delete_key(&name_to_score, "Crim")
	clear(&keys)
	for k in name_to_score {
		append(&keys, k)
	}
	slice.sort(keys[:])
	for k in keys {
		fmt.printfln("  name_to_score[%q] = %d", k, name_to_score[k])
	}

	// 6. final length.
	fmt.println("final len:", len(name_to_score))
}
