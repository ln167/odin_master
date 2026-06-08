package main

// Lesson 14 "break it" #3: pass a runtime variable for a $N value parameter.
// $N demands a compile-time constant; a runtime `n` doesn't qualify.
make_constant_array :: proc($N: int, $val: $T) -> [N]T {
	res: [N]T
	for i in 0 ..< N {
		res[i] = val
	}
	return res
}

main :: proc() {
	n := 3
	arr := make_constant_array(n, 3)
	_ = arr
}
