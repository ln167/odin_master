package main

// Lesson 06b HTML probe (Level 4): a multi-pointer [^]T does NOT support the
// postfix-^ dereference. There is no single element to read -- deref WHICH one?
// You index it (mp[i]) or slice it (mp[lo:hi]) instead. Compile error expected.
import "core:fmt"

main :: proc() {
	nums: [4]int = {10, 20, 30, 40}
	mp: [^]int = raw_data(nums[:])
	v := mp^ // ERROR: [^]int cannot be dereferenced
	fmt.println(v)
}
