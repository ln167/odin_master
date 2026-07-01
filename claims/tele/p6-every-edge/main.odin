package main

// every() edge cases: n<=0 must NEVER fire (and must not divide by zero), n=1 fires every
// tick. Guards the `n > 0` clause in gate.odin.
import "odin_lib:tele"
import "core:fmt"

main :: proc() {
	z, neg, one := 0, 0, 0
	for tick in 0 ..< 5 {
		if tele.every(0, tick)  { z += 1 }
		if tele.every(-5, tick) { neg += 1 }
		if tele.every(1, tick)  { one += 1 }
	}
	fmt.printf("n=0 fired %d, n=-5 fired %d, n=1 fired %d\n", z, neg, one)
}
