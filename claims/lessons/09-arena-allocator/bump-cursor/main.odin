package main

// Lesson 09 HTML L1: the bump cursor. Each allocation advances arena.offset by
// the aligned request size and returns a pointer at the OLD cursor position, so
// successive allocations land at strictly advancing, contiguous addresses inside
// one block. Raw addresses are nondeterministic; we print DERIVED facts:
//   - the offset after each of three 8-byte allocations (16-byte default align)
//   - that each returned address is greater than the previous one
//   - that the address gap between allocations equals the offset gap (contiguous)
import "core:fmt"
import "core:mem"

main :: proc() {
	backing := make([]u8, 64 * 1024)
	defer delete(backing)
	arena: mem.Arena
	mem.arena_init(&arena, backing)

	fmt.printfln("start offset=%d", arena.offset)

	a0, _ := mem.arena_alloc(&arena, 8)
	off0 := arena.offset
	a1, _ := mem.arena_alloc(&arena, 8)
	off1 := arena.offset
	a2, _ := mem.arena_alloc(&arena, 8)
	off2 := arena.offset

	fmt.printfln("offset after alloc 1=%d", off0)
	fmt.printfln("offset after alloc 2=%d", off1)
	fmt.printfln("offset after alloc 3=%d", off2)

	p0 := uintptr(a0)
	p1 := uintptr(a1)
	p2 := uintptr(a2)

	fmt.printfln("addr advances 1<2<3: %v", p0 < p1 && p1 < p2)
	fmt.printfln("addr gap 1->2=%d == offset gap=%d: %v", int(p1 - p0), off1 - off0, int(p1 - p0) == off1 - off0)
	fmt.printfln("addr gap 2->3=%d == offset gap=%d: %v", int(p2 - p1), off2 - off1, int(p2 - p1) == off2 - off1)
}
