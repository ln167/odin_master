package main

// Lesson 06 HTML probe (Level 1): a slice is a two-field header {data, len}.
// Dump the raw 16 bytes of three slices that all view ONE backing array, plus
// each slice's data pointer as a number and the address of each backing element.
// What this proves for the page:
//   - the header is exactly two words: 8-byte data ptr + 8-byte len
//   - slicing only changes ptr (which element it starts at) and len; the
//     backing data never moves
//   - mid's data ptr == &nums[1], tail's == &nums[3]: the ptr field literally
//     holds the address of the first element of the view
import "core:fmt"
import "core:mem"

dump :: proc(name: string, s: []int) {
	hdr := mem.any_to_bytes(s) // the 16-byte header itself, as []u8
	fmt.printf("%s header:", name)
	for b in hdr do fmt.printf(" %02x", b)
	fmt.printf("   data=%p len=%d\n", raw_data(s), len(s))
}

main :: proc() {
	nums: [6]int = {10, 20, 30, 40, 50, 60}

	all := nums[:] // whole array, len 6
	head := nums[:2] // {10,20}, len 2
	mid := nums[1:4] // {20,30,40}, len 3
	tail := nums[3:] // {40,50,60}, len 3

	dump("all ", all)
	dump("head", head)
	dump("mid ", mid)
	dump("tail", tail)

	// the len field, isolated, as a plain integer
	fmt.printf("len fields: all=%d head=%d mid=%d tail=%d\n", len(all), len(head), len(mid), len(tail))

	// the ptr field literally equals the address of the first viewed element
	fmt.println("raw_data(all)  == &nums[0] :", raw_data(all) == &nums[0])
	fmt.println("raw_data(head) == &nums[0] :", raw_data(head) == &nums[0])
	fmt.println("raw_data(mid)  == &nums[1] :", raw_data(mid) == &nums[1])
	fmt.println("raw_data(tail) == &nums[3] :", raw_data(tail) == &nums[3])
}
