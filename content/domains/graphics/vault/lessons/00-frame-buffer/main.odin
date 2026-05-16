package main

import "core:fmt"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

main :: proc() {
	// TODO 1: allocate `pixels: []u32` with WIDTH * HEIGHT entries.
	//         Hint: `pixels := make([]u32, WIDTH * HEIGHT)`.
	pixels: []u32
	defer delete(pixels)

	// TODO 2: fill the entire buffer with a background color of your choosing.
	//         The dumper below unpacks each u32 as
	//           byte 3 (MSB): R
	//           byte 2:       G
	//           byte 1:       B
	//           byte 0 (LSB): A   (ignored by PPM)
	//         so 0xFF_00_00_AA is red, 0x00_FF_00_AA is green, 0x00_00_FF_AA is blue.
	//         If you fill with a different convention the colors will be wrong;
	//         that is expected. Pick one and be consistent.

	// TODO 3: write a single white pixel at (100, 100).
	//         Indexing math: `pixels[y * WIDTH + x] = color`.

	// TODO 4: write a horizontal red line from (50, 200) to (750, 200).
	//         Loop x from 50 to 750 and set each pixel to red.

	if pixels == nil {
		fmt.println("pixels not allocated; finish TODO 1 first.")
		return
	}
	dump_ppm("out.ppm", pixels, WIDTH, HEIGHT)
	fmt.println("wrote out.ppm")
}

// Writes the buffer as a P6 binary PPM file. You do NOT need to read or
// modify this proc. It assumes each u32 in `pixels` is packed as 0xRRGGBBAA
// (R in MSB, A in LSB). PPM has no alpha channel so A is dropped on write.
dump_ppm :: proc(path: string, pixels: []u32, w, h: int) {
	header := fmt.aprintf("P6\n%d %d\n255\n", w, h)
	defer delete(header)

	total := len(header) + len(pixels) * 3
	buf := make([]u8, total)
	defer delete(buf)

	for i in 0 ..< len(header) {
		buf[i] = u8(header[i])
	}

	o := len(header)
	for i in 0 ..< len(pixels) {
		p := pixels[i]
		buf[o + i*3 + 0] = u8((p >> 24) & 0xFF)
		buf[o + i*3 + 1] = u8((p >> 16) & 0xFF)
		buf[o + i*3 + 2] = u8((p >>  8) & 0xFF)
	}

	if err := os.write_entire_file(path, buf); err != nil {
		fmt.eprintln("write failed:", path, err)
	}
}
