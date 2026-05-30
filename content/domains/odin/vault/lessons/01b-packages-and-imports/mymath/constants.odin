package mymath

// Both files in this folder declare `package mymath`. That's the only
// reason this constant is visible to vectors.odin without an import
// statement between the two files. They share scope automatically.

PI :: 3.14159265358979

// A version tag, just to have a second exported name. The lack of any
// @(private) attribute means main.odin (in a different package) can
// read this as `mymath.VERSION`.
VERSION :: "0.1.0"
