package game

import "core:fmt"
import "core:os"

// Headless builds (labx, src/test) never touch the human vote channel:
// scripted digit keys must not pollute lab/arena/votes.log.
HEADLESS :: #config(LAB_HEADLESS, false)

arena_reset :: proc(s: ^Sim) {
	for &t in s.tiles {
		t = {PARTICLE_START, PARTICLE_START}
	}
	g_mem.vote_sel = 0
	fmt.printfln("[arena] round %d variants live", ROUND)
}

// Double-tap voting: first press selects (steady highlight), pressing the
// same digit again commits; a different digit just moves the selection.
arena_select :: proc(k: int) {
	if !g_mem.sim.arena {
		return
	}
	if g_mem.vote_sel == k {
		arena_vote(k)
		g_mem.vote_sel = 0
	} else {
		g_mem.vote_sel = k
		fmt.printfln("[arena] selected %d - press %d again to commit", k, k)
	}
}

// The human side of the loop: a digit keypress appends one line carrying the
// round, the winner, and all four parameter sets (so the convergence path is
// reconstructable even though arena_variants.odin gets overwritten each
// round). The agent blocks on `just arena-wait` reading this file.
arena_vote :: proc(winner: int) {
	if !g_mem.sim.arena {
		return
	}
	when !HEADLESS {
		os.make_directory("arena")
		f, err := os.open("arena/history.jsonl", os.O_WRONLY + os.O_CREATE + os.O_APPEND)
		if err == nil {
			os.write_string(f, fmt.tprintf(`{"round":%d,"winner":%d,"variants":[`, ROUND, winner))
			for p, i in ARENA_PARAMS {
				if i > 0 {
					os.write_string(f, ",")
				}
				os.write_string(f, fmt.tprintf(`{"gx":%v,"gy":%v,"d":%v}`, p.gravity.x, p.gravity.y, p.damping))
			}
			os.write_string(f, "]}\n")
			os.close(f)
		} else {
			fmt.eprintfln("[arena] history.jsonl: %v", err)
		}
	}
	g_mem.flash = 30
	g_mem.flash_tile = winner - 1
	g_mem.voted_round = ROUND
	fmt.printfln("[arena] round %d: voted %d", ROUND, winner)
}

// Four tiles at half scale: tile i simulates in full 800x600 coordinates and
// draws into one quadrant (0 top-left, 1 top-right, 2 bottom-left, 3
// bottom-right — same order as ARENA_PARAMS).
render_arena :: proc() {
	s := &g_mem.sim
	for t, i in s.tiles {
		ox := (i % 2) * (FB_W / 2)
		oy := (i / 2) * (FB_H / 2)
		px := ox + int(t.pos.x / 2) - 1
		py := oy + int(t.pos.y / 2) - 1
		draw_rect_filled(g_mem.pixels, FB_W, FB_H, px, py, 3, 3, 0xFFFFFFFF)
	}
	for x in 0 ..< FB_W {
		set_pixel(g_mem.pixels, FB_W, FB_H, x, FB_H / 2, 0x606070FF)
	}
	for y in 0 ..< FB_H {
		set_pixel(g_mem.pixels, FB_W, FB_H, FB_W / 2, y, 0x606070FF)
	}
	if g_mem.vote_sel > 0 {
		tile_border(g_mem.vote_sel - 1, 2, 0x40C040FF) // selected: steady soft green
	}
	if g_mem.flash > 0 {
		tile_border(g_mem.flash_tile, 4, 0x60FF60FF) // committed: thick bright flash
		g_mem.flash -= 1
	}
}

tile_border :: proc(i, thick: int, c: u32) {
	ox := (i % 2) * (FB_W / 2)
	oy := (i / 2) * (FB_H / 2)
	draw_rect_filled(g_mem.pixels, FB_W, FB_H, ox, oy, FB_W / 2, thick, c)
	draw_rect_filled(g_mem.pixels, FB_W, FB_H, ox, oy + FB_H / 2 - thick, FB_W / 2, thick, c)
	draw_rect_filled(g_mem.pixels, FB_W, FB_H, ox, oy, thick, FB_H / 2, c)
	draw_rect_filled(g_mem.pixels, FB_W, FB_H, ox + FB_W / 2 - thick, oy, thick, FB_H / 2, c)
}
