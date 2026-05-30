package main

import "core:fmt"

// 1. DECLARE THE STRUCT.
//
//    A Particle has a position (3 floats), a velocity (3 floats), and
//    a mass (1 float). Total: 7 floats = 28 bytes, since f32 aligns to
//    4 and 28 is already a multiple of 4 (no trailing padding).
//
//    Declared at package scope so the parametric and #soa demos below
//    can all reach it.

Particle :: struct {
	pos:  [3]f32,
	vel:  [3]f32,
	mass: f32,
}

N :: 4

main :: proc() {
	// 2. CONSTRUCT ONE PARTICLE TWO WAYS.
	//
	//    First with a named-field literal (the form you'll use 95% of
	//    the time - it's the safe one because adding a field later
	//    doesn't silently shift everything):
	//
	//        a := Particle{pos = {1, 2, 3}, vel = {0, -10, 0}, mass = 1.5}
	//
	//    Then with a zero-initialized declaration - no literal at all,
	//    just a typed name. Every field gets its zero value:
	//
	//        b: Particle
	//
	//    Print both with `fmt.println("a:", a)` and `fmt.println("b:", b)`.
	//    Notice that `b` prints as all zeros, including the [3]f32
	//    fields. Odin guarantees zero-initialization; there is no
	//    "uninitialized" state for a struct.

	a := Particle{pos = {1, 2, 3}, vel = {0, -10, 0}, mass = 1.5}
	b: Particle
	fmt.println("a:", a)
	fmt.println("b:", b)

	// 3. SIZES.
	//
	//    Print `size_of(Particle)`, `size_of([N]Particle)`, and
	//    `size_of(#soa [N]Particle)`. They should be 28, 112, and 112.
	//    The pivot does not change the byte count - it rearranges the
	//    bytes. This is the most important fact about #soa.
	//
	//    Use fmt.println with labels so the output reads clearly:
	//
	//        fmt.println("size_of(Particle):       ", size_of(Particle))
	//        fmt.println("size_of([N]Particle):    ", size_of([N]Particle))
	//        fmt.println("size_of(#soa [N]Particle):", size_of(#soa [N]Particle))

	fmt.println("size_of(Particle):       ", size_of(Particle))
	fmt.println("size_of([N]Particle):    ", size_of([N]Particle))
	fmt.println("size_of(#soa [N]Particle):", size_of(#soa [N]Particle))

	// 4. BUILD AN AoS ARRAY AND AN SoA ARRAY SIDE BY SIDE.
	//
	//    Declare both as locals:
	//
	//        aos: [N]Particle
	//        soa: #soa [N]Particle
	//
	//    Loop `for i in 0..<N` and assign the SAME particle to both at
	//    index i. Give each a different position so we can tell them
	//    apart, e.g. pos = {f32(i), 0, 0}, vel = {1, 0, 0}, mass = 1.
	//
	//    The assignment syntax is identical for both arrays:
	//
	//        p := Particle{pos = {f32(i), 0, 0}, vel = {1, 0, 0}, mass = 1}
	//        aos[i] = p
	//        soa[i] = p
	//
	//    This is the whole point. The two arrays have different memory
	//    layouts, but the code that fills them is character-for-
	//    character the same.

	aos: [N]Particle
	soa: #soa [N]Particle
	for i in 0 ..< N {
		p := Particle{pos = {f32(i), 0, 0}, vel = {1, 0, 0}, mass = 1}
		aos[i] = p
		soa[i] = p
	}

	// 5. STEP THE SIMULATION IN BOTH LAYOUTS WITH THE EXACT SAME LOOP.
	//
	//    A particle's position update is `pos += vel * dt`. The vector
	//    math works because [3]f32 supports element-wise operators (you
	//    saw this in lesson 05).
	//
	//    Use dt: f32 = 0.5 and run the loop twice - once over aos,
	//    once over soa. The code reads the same; the bytes touched
	//    underneath differ.
	//
	//        for i in 0..<N { aos[i].pos += aos[i].vel * dt }
	//        for i in 0..<N { soa[i].pos += soa[i].vel * dt }
	//
	//    Then print both arrays. They should be identical row-by-row.
	//    Odin's fmt prints #soa arrays in the AoS row view because
	//    that's the natural way to read them - the storage difference
	//    is invisible at the print level.

	dt: f32 = 0.5
	for i in 0 ..< N {
		aos[i].pos += aos[i].vel * dt
	}
	for i in 0 ..< N {
		soa[i].pos += soa[i].vel * dt
	}
	fmt.println("aos after step:", aos)
	fmt.println("soa after step:", soa)

	// 6. THE SoA SUPERPOWER: PER-FIELD COLUMN ACCESS.
	//
	//    Only `soa` has this. On a regular array there is no `aos.pos`
	//    field (try it after the lesson - the compiler rejects it).
	//    On #soa, every struct field becomes an array view of length N.
	//
	//    Print the pos column and the mass column as slices:
	//
	//        fmt.println("soa.pos column: ", soa.pos)
	//        fmt.println("soa.mass column:", soa.mass)
	//
	//    soa.pos has type [N][3]f32 - the inner Vec3 stays AoS, only
	//    the outer pivot happened. If you wanted three separate scalar
	//    columns (soa.pos.x, etc.) you'd flatten Particle to scalar
	//    fields. Pick the granularity based on which loops dominate.
	//
	//    Finally, prove the two layouts agree on the i-th element by
	//    address: `assert(&soa[0].pos == &soa.pos[0])`. Same address,
	//    different way of getting there. Print "addresses agree" so
	//    expected-output has something to match.

	fmt.println("soa.pos column: ", soa.pos)
	fmt.println("soa.mass column:", soa.mass)
	assert(&soa[0].pos == &soa.pos[0])
	fmt.println("addresses agree")

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
