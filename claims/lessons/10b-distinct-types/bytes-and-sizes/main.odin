package main

// Lesson 10b ground truth for the HTML page: a distinct type has the SAME bytes
// and SAME size as its underlying type. Player_Id(42), Monster_Id(42) and a raw
// int(42) are byte-for-byte identical; Meters(2) matches a raw f32(2). The only
// difference is the type-checker label, which costs zero bytes.
import "core:fmt"
import "core:mem"

Player_Id :: distinct int
Monster_Id :: distinct int
Meters :: distinct f32
Seconds :: distinct f32

dump :: proc(name: string, p: rawptr, n: int) {
	bytes := mem.byte_slice(p, n)
	fmt.printf("%s:", name)
	for b in bytes do fmt.printf(" %02x", b)
	fmt.println()
}

main :: proc() {
	raw_i := int(42)
	p := Player_Id(42)
	m := Monster_Id(42)
	raw_f := f32(2)
	dist := Meters(2)

	dump("int(42)       ", &raw_i, size_of(int))
	dump("Player_Id(42) ", &p, size_of(Player_Id))
	dump("Monster_Id(42)", &m, size_of(Monster_Id))
	dump("f32(2)        ", &raw_f, size_of(f32))
	dump("Meters(2)     ", &dist, size_of(Meters))

	fmt.printfln("size_of(int)        = %d", size_of(int))
	fmt.printfln("size_of(Player_Id)  = %d", size_of(Player_Id))
	fmt.printfln("size_of(Monster_Id) = %d", size_of(Monster_Id))
	fmt.printfln("size_of(f32)        = %d", size_of(f32))
	fmt.printfln("size_of(Meters)     = %d", size_of(Meters))
	fmt.printfln("align_of(int)       = %d", align_of(int))
	fmt.printfln("align_of(Player_Id) = %d", align_of(Player_Id))
}
