package main

// Lesson 16 "break it" #1: reference a platform-only symbol with no `when` guard,
// then cross-compile to a target that doesn't have it (flags.txt = -target:linux_amd64).
// `core:sys/windows` gates GetLastError behind `when ODIN_OS == .Windows`, so on a Linux
// target the symbol isn't declared and the COMPILER (not the linker) refuses. Wrapping the
// call in `when ODIN_OS == .Windows { ... }` would make the Linux build skip it entirely.
import "core:sys/windows"

main :: proc() {
	_ = windows.GetLastError()
}
