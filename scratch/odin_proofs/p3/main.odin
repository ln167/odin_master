package main
import "core:fmt"
write_element :: proc(s: []int) { s[0] = 999 }   // follows shared ptr
main :: proc() {
	arr := []int{1, 2, 3}
	write_element(arr)
	fmt.println("after write_element, caller's arr:", arr)  // expect [999, 2, 3]
}
