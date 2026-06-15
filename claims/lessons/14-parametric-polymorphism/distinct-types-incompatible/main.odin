package main

// L2 probe: Bag(int) and Bag(string) are not one type with a swappable T — they
// are two SEPARATE types. Assigning one to a variable of the other is rejected
// at compile time, exactly as int and string are incompatible.
Bag :: struct($T: typeid) {
	items: [dynamic]T,
}

main :: proc() {
	a: Bag(int)
	b: Bag(string)
	b = a // two distinct stamped types — no implicit conversion
}
