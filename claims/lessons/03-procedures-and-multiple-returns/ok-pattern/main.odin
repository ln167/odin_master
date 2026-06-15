package main

// Lesson 03 HTML L2: the (value, ok) idiom. A lookup hands back BOTH the value
// and a bool saying whether it was a real hit -- so the caller never has to
// guess whether a zero result meant "found zero" or "not found".
import "core:fmt"

scores := [4]int{40, 0, 55, 90}

score_at :: proc(i: int) -> (value: int, ok: bool) {
	if i < 0 || i >= len(scores) {
		return 0, false
	}
	return scores[i], true
}

main :: proc() {
	if v, ok := score_at(1); ok {
		fmt.printf("index 1 -> %d (a real score)\n", v)
	}
	if v, ok := score_at(9); !ok {
		fmt.printf("index 9 -> missing (value was %d, ok was %v)\n", v, ok)
	}
}
