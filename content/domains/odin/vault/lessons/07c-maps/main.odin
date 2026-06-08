package main

import "core:fmt"
import "core:slice"

main :: proc() {
	// 1. CREATE A MAP AND INSERT A FEW ENTRIES.
	//
	//    Declare `name_to_score` as a `map[string]int` and initialize it
	//    with `make`. On the very next line write `defer delete(name_to_score)`.
	//    Pair them visually -- same discipline as `[dynamic]T` in lesson 07.
	//    (In current Odin a nil map auto-allocates on first write, so the
	//    write itself won't crash -- but `make` + `defer delete` keeps
	//    ownership and the allocator explicit, which is the habit to build.)
	//
	//    Then insert four entries:
	//        name_to_score["Liberty Bell"] = 88
	//        name_to_score["Crim"] = 42
	//        name_to_score["Hollis"] = 67
	//        name_to_score["Vandal"] = 99
	//
	//    Print a header line "--- task 1: created ---" so the output is
	//    easy to follow.


	// 2. LOOKUP WITHOUT THE COMMA-OK FORM (THE FOOTGUN).
	//
	//    Look up a key you KNOW is present and a key you KNOW is missing
	//    with the single-value form, and print both:
	//
	//        crim_score := name_to_score["Crim"]
	//        absent     := name_to_score["George Washington"]
	//        fmt.println("Crim score (present):", crim_score)
	//        fmt.println("George Washington score (absent):", absent)
	//
	//    Notice that the absent lookup silently returns 0 -- no error,
	//    no warning. A real score of 0 and a missing entry are
	//    indistinguishable from the value alone. This is why the
	//    two-value form (next task) is the default.


	// 3. LOOKUP WITH THE COMMA-OK FORM (THE SAFE WAY).
	//
	//    Do the same two lookups again, but with `v, ok := m[k]`:
	//
	//        v1, ok1 := name_to_score["Crim"]
	//        v2, ok2 := name_to_score["George Washington"]
	//        fmt.println("Crim ->", v1, "found?", ok1)
	//        fmt.println("George Washington ->", v2, "found?", ok2)
	//
	//    `ok` is true when the key was actually in the map. This is the
	//    way to tell a real 0 from a missing key.
	//
	//    Bonus: try the membership-only form too. `key in m` is a bool
	//    that says nothing about the value:
	//
	//        has_crim := "Crim" in name_to_score
	//        fmt.println("Crim in map?", has_crim)


	// 4. ITERATE THE MAP.
	//
	//    Use `for k, v in name_to_score { ... }`. Note that KEY comes
	//    FIRST and VALUE comes SECOND -- this is the opposite ordering
	//    from arrays/slices/dynamic arrays (lessons 05, 06, 07), where
	//    value comes first. Maps put key first because for a map you
	//    almost always want the key.
	//
	//    Print each pair on its own line, indented two spaces:
	//
	//          name_to_score["Crim"] = 42
	//          name_to_score["Hollis"] = 67
	//          ...
	//
	//    *IMPORTANT NOTE ON ORDER.* Map iteration order is UNSPECIFIED in
	//    Odin -- the hash table reorders on grow and the language makes no
	//    promise about which key comes out first. To keep this lesson's
	//    expected-output.txt deterministic, do this: collect the keys into
	//    a `[dynamic]string`, sort them, then iterate the sorted slice.
	//    This is also the standard real-world fix when you need stable
	//    output (logs, golden tests, deterministic gameplay):
	//
	//        keys := make([dynamic]string, 0, len(name_to_score))
	//        defer delete(keys)
	//        for k in name_to_score {
	//            append(&keys, k)
	//        }
	//        slice.sort(keys[:])
	//        for k in keys {
	//            fmt.printfln("  name_to_score[%q] = %d", k, name_to_score[k])
	//        }
	//
	//    `%q` quotes the string for you (so it prints "Crim" with the
	//    quotes). `slice.sort` is from the `core:slice` package already
	//    imported at the top of this file.


	// 5. REMOVE ONE KEY WITH delete_key.
	//
	//    Remove "Crim" from the map. The proc is `delete_key`, NOT
	//    `delete`. `delete(m)` frees the whole table; `delete_key(&m, k)`
	//    removes one entry. And note the `&` -- removal can resize the
	//    table, so the proc needs a pointer to the map header (same
	//    reason `append` takes `&xs` in lesson 07).
	//
	//        delete_key(&name_to_score, "Crim")
	//
	//    Then re-iterate (use the same sorted-keys trick from task 4)
	//    and print the entries, indented two spaces, so you can see that
	//    Crim is gone and the rest are intact.


	// 6. PRINT THE FINAL LENGTH.
	//
	//    Print the count with `len`:
	//
	//        fmt.println("final len:", len(name_to_score))
	//
	//    You started with 4 entries and removed 1, so this should print 3.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
