package main

// HTML lesson probe: set algebra on whole bit_sets is the bitwise op on their
// backing integers. a={Fire,Ice}=3=0b0011, b={Fire,Physical}=9=0b1001.
//   union        a | b -> 0b1011 = 11
//   intersection a & b -> 0b0001 = 1
//   difference   a - b -> 0b0010 = 2
// Plus membership (`in`), cardinality (`card`), and the subset (`<=`) door/key check.
import "core:fmt"

Element :: enum {Fire, Ice, Lightning, Physical}
Key :: enum {Brass, Silver, Gold, Crystal, Skeleton}

main :: proc() {
	a := bit_set[Element]{.Fire, .Ice}
	b := bit_set[Element]{.Fire, .Physical}

	fmt.printf("a       = %v  int=%d\n", a, transmute(u8)a)
	fmt.printf("b       = %v  int=%d\n", b, transmute(u8)b)
	fmt.printf("a | b   = %v  int=%d\n", a | b, transmute(u8)(a | b))
	fmt.printf("a & b   = %v  int=%d\n", a & b, transmute(u8)(a & b))
	fmt.printf("a - b   = %v  int=%d\n", a - b, transmute(u8)(a - b))
	fmt.printf(".Fire in a      = %v\n", .Fire in a)
	fmt.printf(".Lightning in a = %v\n", .Lightning in a)
	fmt.printf("card(a) = %d\n", card(a))

	player := bit_set[Key]{.Brass, .Silver, .Gold, .Crystal}
	door := bit_set[Key]{.Silver, .Gold}
	fmt.printf("door <= player  = %v\n", door <= player)
}
