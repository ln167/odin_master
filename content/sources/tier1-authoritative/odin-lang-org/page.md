Odin Programming Language


[![Odin](/logo.svg)](/)


* [Home](/)
* [Docs](/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](/news)
* [Showcase](/showcase)
* [Forum](https://forum.odin-lang.org)
* [Community](/community)
* [GitHub](https://github.com/odin-lang/Odin)
* Appearance:

![Odin](/logo.svg)

# **Odin** Programming Language

## The Data-Oriented Language for Sane Software Development.

[Overview](/docs/overview)[Download](/docs/install)

## Programming Done Right

Odin is a general-purpose programming language with distinct typing built for high performance, modern systems and data-oriented programming.

Odin is the C alternative for the Joy of Programming.

[Read the Docs](/docs)[See the Full Demo](https://github.com/odin-lang/Odin/blob/master/examples/demo/demo.odin)[See More Examples](https://github.com/odin-lang/examples)

HellopeArray ProgrammingSOA TypesContext SystemReflection

```
package main

import "core:fmt"

main :: proc() {
	program := "+ + * 😃 - /"
	accumulator := 0

	for token in program {
		switch token {
		case '+': accumulator += 1
		case '-': accumulator -= 1
		case '*': accumulator *= 2
		case '/': accumulator /= 2
		case '😃': accumulator *= accumulator
		case: // Ignore everything else
		}
	}

	fmt.printf("The program \"%s\" calculates the value %d\n",
	           program, accumulator)
}
```

```
package main

import "core:fmt"

main :: proc() {
	{
		a := [3]f32{1, 2, 3}
		b := [3]f32{5, 6, 7}
		c := a * b
		d := a + b
		e := 1 + (c - d) / 2
		fmt.printf("%.1f\n", e) // [0.5, 3.0, 6.5]
	}

	{
		a := [3]f32{1, 2, 3}
		b := swizzle(a, 2, 1, 0)
		assert(b == [3]f32{3, 2, 1})

		c := a.xx
		assert(c == [2]f32{1, 1})
		assert(c == 1)

		d := swizzle(a, 0, 0)
		assert(d == [2]f32{1, 1})
		assert(d == 1)
	}

	{
		Vector3 :: distinct [3]f32
		a := Vector3{1, 2, 3}
		b := Vector3{5, 6, 7}
		c := (a * b)/2 + 1
		d := c.x + c.y + c.z
		fmt.printf("%.1f\n", d) // 22.0

		cross :: proc(a, b: Vector3) -> Vector3 {
			i := a.yzx * b.zxy
			j := a.zxy * b.yzx
			return i - j
		}

		cross_explicit :: proc(a, b: Vector3) -> Vector3 {
			i := swizzle(a, 1, 2, 0) * swizzle(b, 2, 0, 1)
			j := swizzle(a, 2, 0, 1) * swizzle(b, 1, 2, 0)
			return i - j
		}

		blah :: proc(a: Vector3) -> f32 {
			return a.x + a.y + a.z
		}

		x := cross(a, b)
		fmt.println(x)
		fmt.println(blah(x))
	}
}
```

```
package main

import "core:fmt"

main :: proc() {
	{
		Vector3 :: struct {x, y, z: f32}

		N :: 2
		v_aos: [N]Vector3
		v_aos[0].x = 1
		v_aos[0].y = 4
		v_aos[0].z = 9

		fmt.println(len(v_aos))
		fmt.println(v_aos[0])
		fmt.println(v_aos[0].x)
		fmt.println(&v_aos[0].x)

		v_aos[1] = {0, 3, 4}
		v_aos[1].x = 2
		fmt.println(v_aos[1])
		fmt.println(v_aos)

		v_soa: #soa[N]Vector3

		v_soa[0].x = 1
		v_soa[0].y = 4
		v_soa[0].z = 9


		// Same syntax as AOS and treat as if it was an array
		fmt.println(len(v_soa))
		fmt.println(v_soa[0])
		fmt.println(v_soa[0].x)
		fmt.println(&v_soa[0].x)
		v_soa[1] = {0, 3, 4}
		v_soa[1].x = 2
		fmt.println(v_soa[1])

		// Can use SOA syntax if necessary
		v_soa.x[0] = 1
		v_soa.y[0] = 4
		v_soa.z[0] = 9
		fmt.println(v_soa.x[0])

		// Same pointer addresses with both syntaxes
		assert(&v_soa[0].x == &v_soa.x[0])


		// Same fmt printing
		fmt.println(v_aos)
		fmt.println(v_soa)
	}
	{
		// Works with arrays of length <= 4 which have the implicit fields xyzw/rgba
		Vector3 :: distinct [3]f32

		N :: 2
		v_aos: [N]Vector3
		v_aos[0].x = 1
		v_aos[0].y = 4
		v_aos[0].z = 9

		v_soa: #soa[N]Vector3

		v_soa[0].x = 1
		v_soa[0].y = 4
		v_soa[0].z = 9
	}
	{
		// SOA Slices
		// Vector3 :: struct {x, y, z: f32}
		Vector3 :: struct {x: i8, y: i16, z: f32}

		N :: 3
		v: #soa[N]Vector3
		v[0].x = 1
		v[0].y = 4
		v[0].z = 9

		s: #soa[]Vector3
		s = v[:]
		assert(len(s) == N)
		fmt.println(s)
		fmt.println(s[0].x)

		a := s[1:2]
		assert(len(a) == 1)
		fmt.println(a)

		d: #soa[dynamic]Vector3

		append_soa(&d, Vector3{1, 2, 3}, Vector3{4, 5, 9}, Vector3{-4, -4, 3})
		fmt.println(d)
		fmt.println(len(d))
		fmt.println(cap(d))
		fmt.println(d[:])
	}
	{ // soa_zip and soa_unzip
		fmt.println("\nsoa_zip and soa_unzip")

		x := []i32{1, 3, 9}
		y := []f32{2, 4, 16}
		z := []b32{true, false, true}

		// produce an #soa slice the normal slices passed
		s := soa_zip(a=x, b=y, c=z)

		// iterate over the #soa slice
		for v, i in s {
			fmt.println(v, i) // exactly the same as s[i]
			// NOTE: 'v' is NOT a temporary value but has a specialized addressing mode
			// which means that when accessing v.a etc, it does the correct transformation
			// internally:
			//         s[i].a === s.a[i]
			fmt.println(v.a, v.b, v.c)
		}

		// Recover the slices from the #soa slice
		a, b, c := soa_unzip(s)
		fmt.println(a, b, c)
	}
}
```

```
package main

import "core:mem"

main :: proc() {
	// In each scope, there is an implicit value named context. This
	// context variable is local to each scope and is implicitly passed
	// by pointer to any procedure call in that scope (if the procedure
	// has the Odin calling convention).

	// The main purpose of the implicit context system is for the ability
	// to intercept third-party code and libraries and modify their
	// functionality. One such case is modifying how a library allocates
	// something or logs something. In C, this was usually achieved with
	// the library defining macros which could be overridden so that the
	// user could define what they wanted. However, not many libraries
	// supported this in many languages by default which meant intercepting
	// third-party code to see what it does and to change how it does it is
	// not possible.

	c := context // copy the current scope's context

	context.user_index = 456
	{
		context.allocator = my_custom_allocator()
		context.user_index = 123
		what_a_fool_believes() // the `context` for this scope is implicitly passed to `what_a_fool_believes`
	}

	// `context` value is local to the scope it is in
	assert(context.user_index == 456)

	what_a_fool_believes :: proc() {
		c := context // this `context` is the same as the parent procedure that it was called from
		// From this example, context.user_index == 123
		// An context.allocator is assigned to the return value of `my_custom_allocator()`
		assert(context.user_index == 123)

		// The memory management procedure use the `context.allocator` by
		// default unless explicitly specified otherwise
		china_grove := new(int)
		free(china_grove)

		_ = c
	}

	my_custom_allocator :: mem.nil_allocator
	_ = c

	// By default, the context value has default values for its parameters which is
	// decided in the package runtime. What the defaults are are compiler specific.

	// To see what the implicit context value contains, please see the following
	// definition in package runtime.
}
```

```
package main

import "core:fmt"
import "core:reflect"

main :: proc() {
	Foo :: struct {
		x: int    `tag1`,
		y: string `json:"y_field"`,
		z: bool, // no tag
	}

	id := typeid_of(Foo)
	names := reflect.struct_field_names(id)
	types := reflect.struct_field_types(id)
	tags  := reflect.struct_field_tags(id)

	assert(len(names) == len(types) && len(names) == len(tags))

	fmt.println("Foo :: struct {")
	for tag, i in tags {
		name, type := names[i], types[i]
		if tag != "" {
			fmt.printf("\t%s: %T `%s`,\n", name, type, tag)
		} else {
			fmt.printf("\t%s: %T,\n", name, type)
		}
	}
	fmt.println("}")

	for tag, i in tags {
		if val, ok := reflect.struct_tag_lookup(tag, "json"); ok {
			fmt.printf("json: %s -> %s\n", names[i], val)
		}
	}
}
```

## Join the Odin community on Discord.

[Join Discord](https://discord.gg/vafXTdubwr)

## The Odin Principles

### Simplicity

Odin has been designed for readability, scalability, and [orthogonality](https://en.wikipedia.org/wiki/Orthogonality_(programming)) of concepts. Simplicity is complicated to get right, clear is better than clever.

### High Performance

Odin allows for the highest performance through low-level control over the memory layout, [memory management](/docs/overview/#implicit-context-system) and custom [allocators](/docs/overview/#allocators) and so much more.

### For Modern Systems

Odin is designed from the bottom up for the modern computer, with built-in support for [SOA data types](/docs/overview/#soa-data-types), [array programming](/docs/overview/#fixed-arrays), and other features.

### Joy of Programming

We go into programming because we love to solve problems. Why shouldn't our tools bring us joy whilst doing it? Enjoy programming again, with Odin!

[See Overview](/docs/overview)

## Odin in Production

[JangaFX](https://jangafx.com/) are the creators of the 3D animation software [EmberGen](https://jangafx.com/software/embergen/), [GeoGen](https://jangafx.com/software/geogen/), and LiquiGen, which are *all* written *fully* in Odin.

[EmberGen](https://jangafx.com/software/embergen/) is a real-time volumetric fluid simulator that can instantly simulate, render, and export flipbooks, image sequences, and VDB volumes. With EmberGen, you can create anything from fire and smoke, to explosions and magic wisps. EmberGen gives you the creative freedom to iterate on your simulations in a few milliseconds instead of hours.

[LiquiGen](https://jangafx.com/software/liquigen/) is a real-time volumetric liquid simulator that can instantly simulate, render, and export flipbooks, image sequences, and VDB volumes.

[GeoGen](https://jangafx.com/software/geogen/) is a real-time terrain generation tool.

Through EmberGen, Odin runs in production among the giants of the games and film industries: Bethesda, CAPCOM, Codemasters, THQNordic, Warner Bros, Weta Digital, and many others.

[![JangaFX](/jangafx/logo.png)

### JangaFX](https://jangafx.com/)
[![EmberGen](/jangafx/em_logo.png)

### EmberGen](https://jangafx.com/software/embergen/)  
[![GeoGen](/jangafx/geo_logo.png)](https://jangafx.com/software/geogen/)
[![LiquiGen](/jangafx/liquigen.svg)](https://jangafx.com/software/liquigen/)

Companies who use products by JangaFX

![JangaFX Customers](/jangafx/companies/jangafx_logos_cluster.png)

All product names, logos, and brands are property of their respective owners.

[Learn More](/showcase/embergen)

[ChiAha™](https://chiaha.ai) Digital Twin Toolkit is written in Odin, and can help answer your factory flow questions.

[![ChiAha](/chiaha/logo.png)
![ChiAha](/chiaha/flow.png)](https://chiaha.ai)

[ChiAha™](https://chiaha.ai) can predict production line performance and OEE within 1% accuracy. High-fidelity modeling constructs with statistically modeled data-driven behavior. Provide answers to many of the questions related to the design, operation and improvement of lines for optimum OEE:

* What is the effect on OEE of close-coupling?
* What speeds should each machine run?
* How can production be increased?
* How much will OEE improve with changes to the system?

[Learn More](https://chiaha.ai)

## Batteries Included

Odin comes with high quality packages out of the box in its [`core`](https://github.com/odin-lang/Odin/tree/master/core) library.

Odin provides official libraries for all major graphics APIs: [OpenGL](https://pkg.odin-lang.org/vendor/OpenGL), [Vulkan](https://pkg.odin-lang.org/vendor/vulkan), [Direct3D11](https://pkg.odin-lang.org/vendor/directx/d3d11), [Direct3D12](https://pkg.odin-lang.org/vendor/directx/d3d12), [Metal](https://pkg.odin-lang.org/vendor/darwin/Metal), [wgpu](https://pkg.odin-lang.org/vendor/wgpu), and [WebGL 1 & 2](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL).

Odin additionally brings you officially maintained bindings for popular libraries such as [SDL2](https://pkg.odin-lang.org/vendor/sdl2), [GLFW](https://pkg.odin-lang.org/vendor/glfw), [raylib](https://pkg.odin-lang.org/vendor/raylib), [microui](https://pkg.odin-lang.org/vendor/microui), [miniaudio](https://pkg.odin-lang.org/vendor/miniaudio) and much more, in its [`vendor`](https://pkg.odin-lang.org/vendor) library!

[See Core Library](https://github.com/odin-lang/Odin/tree/master/core)[See Vendor Library](https://github.com/odin-lang/Odin/tree/master/vendor)

[![Simple DirectMedia Layer](/vendor/companies/Simple_DirectMedia_Layer_Logo.svg)](https://pkg.odin-lang.org/vendor/sdl2)
[![raylib](/vendor/companies/raylib_64x64.png)](https://pkg.odin-lang.org/vendor/raylib)
[![OpenGL](/vendor/companies/OpenGL_logo.svg)](https://pkg.odin-lang.org/vendor/OpenGL)
[![WebGL](/vendor/companies/WebGL_Logo.svg)](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL)
[![Vulkan](/vendor/companies/Vulkan_logo.svg)](https://pkg.odin-lang.org/vendor/vulkan)
[![Metal](/vendor/companies/Metal_2_Logo.png)](https://pkg.odin-lang.org/vendor/darwin/Metal)
[![DirectX](/vendor/companies/DirectX_logo.svg)](https://github.com/odin-lang/Odin/tree/master/vendor/directx)
[gpu](https://pkg.odin-lang.org/vendor/wgpu)[![microui](/vendor/companies/microui_logo.png)](https://pkg.odin-lang.org/vendor/microui)
[![miniaudio](/vendor/companies/miniaudio_logo.png)](https://pkg.odin-lang.org/vendor/miniaudio)

All product names, logos, and brands are property of their respective owners.

## The Odin Community

### Odin is Open Source

Odin is an open source programming language and contributions from the community are welcome!
If you want to help out, check the [issue tracker](https://github.com/odin-lang/odin/issues) for open issues that may interest you. Those labelled [help wanted](https://github.com/odin-lang/Odin/issues?q=is%3Aopen+is%3Aissue+label%3A%22help+wanted%22) are in particular need of community assistance right now.

Join the Odin Discord and help us bring the joy of programming in Odin to all. 🥳

[Browse Source](https://github.com/odin-lang/Odin)[Join Discord](https://discord.gg/vafXTdubwr)

### Thank You!

[![Odin GitHub Sponsors](/images/github-sponsors-logo.png)](https://github.com/sponsors/odin-lang/)

[![Odin Patreon](/Digital-Patreon-Wordmark_White.png)](https://www.patreon.com/gingerbill)

[Sponsor Odin](https://github.com/sponsors/odin-lang/)

  

#### GitHub Sponsors

Thank you to everyone who sponsor [Odin](https://github.com/sponsors/odin-lang/).

[![Odin](/logo.svg)](/)

The Data-Oriented Language for Sane Software Development.

#### Resources

* [Docs](/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](/news)

#### Community

* [GitHub](https://github.com/odin-lang/Odin)
* [Discord](https://discord.gg/vafXTdubwr)
* [Twitch](https://www.twitch.tv/ginger_bill)
* [YouTube](https://www.youtube.com/channel/UCUSck1dOH7VKmG4lRW7tZXg)
* [Showcase](/showcase)

#### Contribute

* [Issues](https://github.com/odin-lang/Odin/issues)
* [Donate](https://www.patreon.com/gingerbill)

© 2016–2024 Ginger Bill