package strings

// Lesson 01b "break it" #4: a local package that also declares `package strings`.
// Importing both this and core:strings without an alias binds the name `strings`
// twice in main.odin -> the compiler rejects the duplicate import name.
greet :: proc() -> string {
	return "local strings package"
}
