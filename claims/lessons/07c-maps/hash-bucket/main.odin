package main

// L1 diagram probe: a map turns a key into a bucket by HASHING it and folding
// the hash down to a bucket index. This probe uses a real hash function from
// core:hash (fnv32a) over a fixed 8-bucket table to produce concrete, repeatable
// hash -> bucket numbers for the diagram. (This illustrates the mechanism with a
// real hash; the map's internal hash and seed are an implementation detail, but
// the key -> hash -> index pipeline is exactly this shape.)
import "core:fmt"
import "core:hash"

NUM_BUCKETS :: 8

main :: proc() {
	keys := []string{"Crim", "Hollis", "Vandal", "Liberty Bell"}
	for k in keys {
		h := hash.fnv32a(transmute([]u8)k)
		bucket := h % NUM_BUCKETS
		fmt.printfln("%-13q hash=0x%08x  bucket=%d", k, h, bucket)
	}
}
