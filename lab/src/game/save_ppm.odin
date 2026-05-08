package game

import "core:fmt"
import "core:os"

save_ppm :: proc(path: string, pixels: []u32, w, h: int) -> os.Error {
	header := fmt.tprintf("P6\n%d %d\n255\n", w, h)
	hb := transmute([]u8)header
	body := make([]u8, len(hb) + w * h * 3, context.temp_allocator)
	copy(body[:len(hb)], hb)
	o := len(hb)
	for y in 0 ..< h {
		for x in 0 ..< w {
			p := pixels[y * w + x]
			body[o + 0] = u8(p >> 24)
			body[o + 1] = u8(p >> 16)
			body[o + 2] = u8(p >> 8)
			o += 3
		}
	}
	return os.write_entire_file(path, body)
}
