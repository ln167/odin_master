package main

// L2 probe: the comma-ok form `v, ok := m[k]` is the only way to tell a real
// stored value from an absent key -- crucially when the stored value IS the
// zero value. Here "Ghost" is stored with value 0; the single-value lookup
// can't distinguish it from a key that was never inserted, but ok can.
// `k in m` is the membership-only bool. All specific-key lookups: deterministic.
import "core:fmt"

main :: proc() {
	scores := make(map[string]int)
	defer delete(scores)
	scores["Crim"] = 42
	scores["Ghost"] = 0      // a REAL entry whose value happens to be 0

	// single-value form: Ghost and a missing key look identical (both 0).
	fmt.println("single-value: Ghost =", scores["Ghost"], "| Missing =", scores["Missing"])

	// comma-ok form: ok separates "stored 0" from "absent".
	gv, gok := scores["Ghost"]
	mv, mok := scores["Missing"]
	fmt.println("comma-ok: Ghost ->", gv, "found?", gok)
	fmt.println("comma-ok: Missing ->", mv, "found?", mok)

	// membership-only: `k in m` says nothing about the value.
	fmt.println("Crim in map?", "Crim" in scores)
	fmt.println("Missing in map?", "Missing" in scores)
}
