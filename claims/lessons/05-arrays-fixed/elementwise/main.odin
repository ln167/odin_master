package main

import "core:fmt"

Vec3 :: [3]f32

// Numeric fixed arrays support element-wise arithmetic with the plain operators.
main :: proc() {
	p := Vec3{1, 2, 3}
	q := Vec3{10, 20, 30}
	fmt.println("p + q =", p + q)
	fmt.println("p * q =", p * q)
	fmt.println("q - p =", q - p)
}
