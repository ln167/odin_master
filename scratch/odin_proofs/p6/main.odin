package main
import "core:fmt"
import "base:runtime"

dump :: proc(label: string, s: []int) {
	s := s   // shadow so we can take the header's address in this scope
	raw := transmute(runtime.Raw_Slice)s
	fmt.printf("%s\n", label)
	fmt.printf("   header lives at : %p   (the {ptr,len} pair itself)\n", &s)
	fmt.printf("   field .data     : %p   (-> backing array element 0)\n", raw.data)
	fmt.printf("   field .len      : %v\n", raw.len)
	fmt.printf("   size_of(header) : %v bytes\n\n", size_of([]int))
}

callee :: proc(s: []int) {
	dump("INSIDE callee (param 's' = a COPY of the header):", s)
	s[0] = 999
}

main :: proc() {
	backing := []int{10, 20, 30}
	dump("IN main (original 'backing'):", backing)
	callee(backing)
	fmt.printf("AFTER call, backing = %v   <- write leaked through shared .data\n", backing)
}
