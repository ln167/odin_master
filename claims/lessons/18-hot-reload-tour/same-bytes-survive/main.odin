package main

// Lesson 18 HTML probe: the bytes survive the swap because nothing copies them.
//
// We act out the four-step reload dance in one process. The persistent state is
// allocated ONCE. The module-side global g_mem is just a ^Game_Memory pointing
// at it. "Old code" writes counter += 1 some times. Then we simulate a reload:
//   1. ptr := game_memory()      -- ask old code for the state pointer (a rawptr)
//   2. (host would unload + load the new library here)
//   3. g_mem = nil               -- the NEW module starts with a fresh nil global
//   4. game_hot_reloaded(ptr)    -- hand the SAME pointer to the new code
// After step 4, "new code" reads g_mem.counter and sees the value the old code
// left, because both pointers name the SAME bytes. The address is what carries
// state across the swap — there is no copy, no serialize, no migrate.
import "core:fmt"

Game_Memory :: struct {
	frame:   u64,
	counter: int,
}

g_mem: ^Game_Memory

game_memory       :: proc() -> rawptr  { return g_mem }
game_hot_reloaded :: proc(p: rawptr)   { g_mem = (^Game_Memory)(p) }

main :: proc() {
	// --- "old code" runs for a while ---
	g_mem = new(Game_Memory) // the host allocation; lives in host memory in the real thing
	defer free(g_mem)
	for _ in 0 ..< 240 {
		g_mem.frame += 1
		g_mem.counter += 1
	}
	old_addr := game_memory()
	fmt.printfln("before reload: counter=%d", g_mem.counter)

	// --- the swap: new module starts with a nil global, then re-attaches ---
	g_mem = nil // the new DLL's g_mem is uninitialized until it's told where state lives
	game_hot_reloaded(old_addr) // step 4: same pointer handed to the new code
	new_addr := game_memory()

	// --- "new code" reads through the re-attached pointer ---
	fmt.printfln("after reload:  counter=%d", g_mem.counter)
	fmt.printfln("same bytes?    %v", old_addr == new_addr)
}
