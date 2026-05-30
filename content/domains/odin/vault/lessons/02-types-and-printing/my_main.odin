package main

import "core:fmt"

main :: proc(){
	a:= 42
	b: i32 = 3.14 
	c := "ok"
	d: bool = true

	fmt.println(a,b,c,d)
	fmt.printf("a=%d b=%.2f c=%q d=%v\n", a, b, c, d)
}
