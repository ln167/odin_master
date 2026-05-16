package main

import "core:fmt"

WIDTH  :: 800
HEIGHT :: 600

DARK  :: u32(0x10_10_18_FF)
WHITE :: u32(0xFF_FF_FF_FF)
RED   :: u32(0xFF_00_00_FF)

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT)
	defer delete(pixels)

	for i in 0 ..< len(pixels) {
		pixels[i] = DARK
	}

	pixels[100 * WIDTH + 100] = WHITE

	for x in 50 ..= 750 {
		pixels[200 * WIDTH + x] = RED
	}

	fmt.printf("pixel(0,0)       = 0x%08X\n", pixels[0])
	fmt.printf("pixel(100,100)   = 0x%08X\n", pixels[100 * WIDTH + 100])
	fmt.printf("pixel(50,200)    = 0x%08X\n", pixels[200 * WIDTH + 50])
	fmt.printf("pixel(400,200)   = 0x%08X\n", pixels[200 * WIDTH + 400])
	fmt.printf("pixel(750,200)   = 0x%08X\n", pixels[200 * WIDTH + 750])
	fmt.printf("pixel(400,199)   = 0x%08X\n", pixels[199 * WIDTH + 400])
	fmt.printf("pixel(400,201)   = 0x%08X\n", pixels[201 * WIDTH + 400])
}
