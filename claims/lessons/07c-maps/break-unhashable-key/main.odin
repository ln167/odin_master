package main

// Lesson 07c "break it" #3: a [dynamic]int key is unhashable (its identity
// isn't stable), so the map type itself is rejected at compile time.
main :: proc() {
	m: map[[dynamic]int]int
	m[nil] = 1
	_ = m
}
