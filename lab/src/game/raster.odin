package game

set_pixel :: proc(buf: []u32, w, h, x, y: int, c: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	buf[y * w + x] = c
}

draw_rect_filled :: proc(buf: []u32, w, h, x, y, ww, hh: int, c: u32) {
	for j in 0 ..< hh {
		for i in 0 ..< ww {
			set_pixel(buf, w, h, x + i, y + j, c)
		}
	}
}

draw_line :: proc(buf: []u32, w, h, x0, y0, x1, y1: int, c: u32) {
	x, y := x0, y0
	dx := abs(x1 - x0)
	dy := -abs(y1 - y0)
	sx := 1 if x0 < x1 else -1
	sy := 1 if y0 < y1 else -1
	err := dx + dy
	for {
		set_pixel(buf, w, h, x, y, c)
		if x == x1 && y == y1 { break }
		e2 := 2 * err
		if e2 >= dy {
			err += dy
			x   += sx
		}
		if e2 <= dx {
			err += dx
			y   += sy
		}
	}
}
