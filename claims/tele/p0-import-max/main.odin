package main

import "core:fmt"
import "odin_lib:tele"

main :: proc() {
	fmt.printf("tele=%s\n", tele.TELE)
	fmt.printf("enabled=%v\n", tele.ENABLED)
	fmt.printf("max=%v\n", tele.MAX)
}
