package main

// Lesson 16 "Low-level note": the non-taken `when` branch is NOT type-checked. On a
// Windows host the `.Windows` arm is taken; the `.Linux` arm loses and is removed before
// type-checking, so the call to a name that was never declared anywhere in the program is
// never looked up and the build still succeeds. This is what keeps cross-platform code
// clean -- and the double edge: a typo in a dead arm hides until somebody builds that target.
main :: proc() {
	when ODIN_OS == .Windows {
		_ = 1
	} else when ODIN_OS == .Linux {
		this_name_was_never_declared_anywhere()
	}
}
