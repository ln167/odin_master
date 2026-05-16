// Compare uniform 3D grid vs sparse voxel octree for point occupancy queries.
// 64^3 grid (262,144 cells). Insert N points, then query N random points.
package main

import "core:fmt"
import "core:math/rand"
import "core:time"

DIM    :: 64        // grid side; SVO depth = 6 (2^6 = 64)
DEPTH  :: 6
N_POINTS :: 100_000
N_QUERIES :: 100_000

// ─── Uniform grid ─────────────────────────────────────────────────────────

Grid :: [DIM * DIM * DIM]bool

grid_set :: #force_inline proc(g: ^Grid, x, y, z: int) {
	g[z * DIM * DIM + y * DIM + x] = true
}

grid_get :: #force_inline proc(g: ^Grid, x, y, z: int) -> bool {
	return g[z * DIM * DIM + y * DIM + x]
}

// ─── Sparse voxel octree ──────────────────────────────────────────────────

// Pool-allocated. Each node holds 8 child indices into the same pool, or -1
// for empty. Leaves at DEPTH have no children (treated as occupied if reached).
SVO_Node :: struct {
	children: [8]i32,
	occupied: bool,
}

SVO :: struct {
	nodes: [dynamic]SVO_Node,
}

svo_new :: proc() -> SVO {
	s := SVO{}
	s.nodes = make([dynamic]SVO_Node)
	append(&s.nodes, SVO_Node{children = {-1, -1, -1, -1, -1, -1, -1, -1}})
	return s
}

svo_destroy :: proc(s: ^SVO) {
	delete(s.nodes)
}

svo_set :: proc(s: ^SVO, x, y, z: int) {
	idx := i32(0)
	size := DIM
	ox, oy, oz := 0, 0, 0
	for d in 0 ..< DEPTH {
		half := size / 2
		cx := 1 if x >= ox + half else 0
		cy := 1 if y >= oy + half else 0
		cz := 1 if z >= oz + half else 0
		child := cz * 4 + cy * 2 + cx
		if s.nodes[idx].children[child] < 0 {
			new_idx := i32(len(s.nodes))
			append(&s.nodes, SVO_Node{children = {-1, -1, -1, -1, -1, -1, -1, -1}})
			s.nodes[idx].children[child] = new_idx
		}
		idx = s.nodes[idx].children[child]
		if cx == 1 { ox += half }
		if cy == 1 { oy += half }
		if cz == 1 { oz += half }
		size = half
	}
	s.nodes[idx].occupied = true
}

svo_get :: proc(s: ^SVO, x, y, z: int) -> bool {
	idx := i32(0)
	size := DIM
	ox, oy, oz := 0, 0, 0
	for d in 0 ..< DEPTH {
		half := size / 2
		cx := 1 if x >= ox + half else 0
		cy := 1 if y >= oy + half else 0
		cz := 1 if z >= oz + half else 0
		child := cz * 4 + cy * 2 + cx
		next := s.nodes[idx].children[child]
		if next < 0 { return false }
		idx = next
		if cx == 1 { ox += half }
		if cy == 1 { oy += half }
		if cz == 1 { oz += half }
		size = half
	}
	return s.nodes[idx].occupied
}

// ─── Bench ────────────────────────────────────────────────────────────────

main :: proc() {
	rand.reset(0xC0FFEE)

	points := make([][3]int, N_POINTS); defer delete(points)
	for i in 0 ..< N_POINTS {
		points[i] = {rand.int_max(DIM), rand.int_max(DIM), rand.int_max(DIM)}
	}

	queries := make([][3]int, N_QUERIES); defer delete(queries)
	for i in 0 ..< N_QUERIES {
		queries[i] = {rand.int_max(DIM), rand.int_max(DIM), rand.int_max(DIM)}
	}

	// Grid insert.
	grid := new(Grid); defer free(grid)
	t0 := time.tick_now()
	for p in points { grid_set(grid, p.x, p.y, p.z) }
	grid_insert_ns := time.tick_diff(t0, time.tick_now())

	// SVO insert.
	svo := svo_new(); defer svo_destroy(&svo)
	t1 := time.tick_now()
	for p in points { svo_set(&svo, p.x, p.y, p.z) }
	svo_insert_ns := time.tick_diff(t1, time.tick_now())

	// Grid query.
	g_hits := 0
	t2 := time.tick_now()
	for q in queries { if grid_get(grid, q.x, q.y, q.z) { g_hits += 1 } }
	grid_query_ns := time.tick_diff(t2, time.tick_now())

	// SVO query.
	s_hits := 0
	t3 := time.tick_now()
	for q in queries { if svo_get(&svo, q.x, q.y, q.z) { s_hits += 1 } }
	svo_query_ns := time.tick_diff(t3, time.tick_now())

	fmt.printf("grid  insert : %v ms  (%d points)\n", time.duration_milliseconds(grid_insert_ns), N_POINTS)
	fmt.printf("svo   insert : %v ms  (%d nodes allocated)\n", time.duration_milliseconds(svo_insert_ns), len(svo.nodes))
	fmt.printf("grid  query  : %v ms  (%d hits / %d queries)\n", time.duration_milliseconds(grid_query_ns), g_hits, N_QUERIES)
	fmt.printf("svo   query  : %v ms  (%d hits / %d queries)\n", time.duration_milliseconds(svo_query_ns), s_hits, N_QUERIES)
	fmt.printf("grid memory  : %d KB  (dense)\n", size_of(Grid) / 1024)
	fmt.printf("svo  memory  : %d KB  (sparse, %d nodes * %d B)\n",
		len(svo.nodes) * size_of(SVO_Node) / 1024, len(svo.nodes), size_of(SVO_Node))
}
