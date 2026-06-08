package main

// Lesson 15 "break it" #4: a misspelled C symbol. Without @(link_name), the link
// name IS the Odin identifier `putz`, which no library exports -> linker error.
when ODIN_OS == .Windows {
	foreign import my_libc "system:libucrt.lib"
} else when ODIN_OS == .Darwin {
	foreign import my_libc "system:System"
} else {
	foreign import my_libc "system:c"
}

@(default_calling_convention = "c")
foreign my_libc {
	putz :: proc(s: cstring) -> i32 ---
}

main :: proc() {
	putz(cstring("hi"))
}
