package main

// Lesson 16: the guarded twin of break-unguarded-cross-compile. The SAME windows-only
// call, but wrapped in `when ODIN_OS == .Windows`. Cross-compiling to linux_amd64
// (flags.txt) now BUILDS, because the Linux target never compiles the windows branch:
// the losing arm is removed before type-checking, so its undeclared symbol is never asked
// for. This is the workhorse use of `when` — one source tree that compiles on every target.
import "core:sys/windows"

main :: proc() {
	when ODIN_OS == .Windows {
		_ = windows.GetLastError()
	}
}
