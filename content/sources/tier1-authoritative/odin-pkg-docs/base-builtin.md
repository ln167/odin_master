package builtin - pkg.odin-lang.org 






[![Odin](https://odin-lang.org/logo.svg)](https://odin-lang.org/)


* [Home](https://odin-lang.org/)
* [Docs](https://odin-lang.org/docs)
* [Packages](/)
* [News](https://odin-lang.org/news)
* [Showcase](https://odin-lang.org/showcase)
* [Forum](https://forum.odin-lang.org)
* [Community](https://odin-lang.org/community)
* [GitHub](https://github.com/odin-lang/Odin)
* Appearance:



Current Package: *[builtin](/base/builtin)*

  

#### [base Library](/base)

* [builtin](/base/builtin)
* [intrinsics](/base/intrinsics)
* [runtime](/base/runtime)
* [sanitizer](/base/sanitizer)

1. [base](/base)
2. builtin

# package base:builtin [*Source*](https://github.com/odin-lang/Odin/tree/master/base/builtin)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

package builtin provides documentation for Odin's predeclared identifiers. The items documented here are not actually in package builtin but here to allow for better documentation for the language's special identifiers.

## Index

Constants (22)

* [ODIN\_ARCH](#ODIN_ARCH)
* [ODIN\_BUILD\_MODE](#ODIN_BUILD_MODE)
* [ODIN\_COMPILE\_TIMESTAMP](#ODIN_COMPILE_TIMESTAMP)
* [ODIN\_DEBUG](#ODIN_DEBUG)
* [ODIN\_DEFAULT\_TO\_NIL\_ALLOCATOR](#ODIN_DEFAULT_TO_NIL_ALLOCATOR)
* [ODIN\_DEFAULT\_TO\_PANIC\_ALLOCATOR](#ODIN_DEFAULT_TO_PANIC_ALLOCATOR)
* [ODIN\_DISABLE\_ASSERT](#ODIN_DISABLE_ASSERT)
* [ODIN\_ENDIAN](#ODIN_ENDIAN)
* [ODIN\_ERROR\_POS\_STYLE](#ODIN_ERROR_POS_STYLE)
* [ODIN\_NO\_CRT](#ODIN_NO_CRT)
* [ODIN\_NO\_ENTRY\_POINT](#ODIN_NO_ENTRY_POINT)
* [ODIN\_NO\_RTTI](#ODIN_NO_RTTI)
* [ODIN\_OS](#ODIN_OS)
* [ODIN\_PLATFORM\_SUBTARGET](#ODIN_PLATFORM_SUBTARGET)
* [ODIN\_ROOT](#ODIN_ROOT)
* [ODIN\_VENDOR](#ODIN_VENDOR)
* [ODIN\_VERSION](#ODIN_VERSION)
* [ODIN\_WINDOWS\_SUBSYSTEM](#ODIN_WINDOWS_SUBSYSTEM)
* [false](#false)
* [nil](#nil)
* [true](#true)
* [runtime](/base/runtime).[ODIN\_PLATFORM\_SUBTARGET\_IOS](#ODIN_PLATFORM_SUBTARGET_IOS)

Types (60)

* [any](#any)
* [b16](#b16)
* [b32](#b32)
* [b64](#b64)
* [b8](#b8)
* [bool](#bool)
* [byte](#byte)
* [complex128](#complex128)
* [complex32](#complex32)
* [complex64](#complex64)
* [cstring](#cstring)
* [cstring16](#cstring16)
* [f16](#f16)
* [f16be](#f16be)
* [f16le](#f16le)
* [f32](#f32)
* [f32be](#f32be)
* [f32le](#f32le)
* [f64](#f64)
* [f64be](#f64be)
* [f64le](#f64le)
* [i128](#i128)
* [i128be](#i128be)
* [i128le](#i128le)
* [i16](#i16)
* [i16be](#i16be)
* [i16le](#i16le)
* [i32](#i32)
* [i32be](#i32be)
* [i32le](#i32le)
* [i64](#i64)
* [i64be](#i64be)
* [i64le](#i64le)
* [i8](#i8)
* [int](#int)
* [quaternion128](#quaternion128)
* [quaternion256](#quaternion256)
* [quaternion64](#quaternion64)
* [rawptr](#rawptr)
* [rune](#rune)
* [string](#string)
* [string16](#string16)
* [typeid](#typeid)
* [u128](#u128)
* [u128be](#u128be)
* [u128le](#u128le)
* [u16](#u16)
* [u16be](#u16be)
* [u16le](#u16le)
* [u32](#u32)
* [u32be](#u32be)
* [u32le](#u32le)
* [u64](#u64)
* [u64be](#u64be)
* [u64le](#u64le)
* [u8](#u8)
* [uint](#uint)
* [uintptr](#uintptr)
* [runtime](/base/runtime).[Maybe](#Maybe)
* [runtime](/base/runtime).[Objc\_Block](#Objc_Block)

Procedures (138)

* [abs](#abs)
* [align\_of](#align_of)
* [cap](#cap)
* [clamp](#clamp)
* [complex](#complex)
* [compress\_values](#compress_values)
* [conj](#conj)
* [expand\_values](#expand_values)
* [imag](#imag)
* [jmag](#jmag)
* [kmag](#kmag)
* [len](#len)
* [max](#max)
* [min](#min)
* [offset\_of](#offset_of)
* [offset\_of\_by\_string](#offset_of_by_string)
* [offset\_of\_member](#offset_of_member)
* [offset\_of\_selector](#offset_of_selector)
* [quaternion](#quaternion)
* [raw\_data](#raw_data)
* [real](#real)
* [size\_of](#size_of)
* [soa\_unzip](#soa_unzip)
* [soa\_zip](#soa_zip)
* [swizzle](#swizzle)
* [type\_info\_of](#type_info_of)
* [type\_of](#type_of)
* [typeid\_of](#typeid_of)
* [runtime](/base/runtime).[append\_elem](#append_elem)
* [runtime](/base/runtime).[append\_elem\_string](#append_elem_string)
* [runtime](/base/runtime).[append\_elems](#append_elems)
* [runtime](/base/runtime).[append\_fixed\_capacity\_elem](#append_fixed_capacity_elem)
* [runtime](/base/runtime).[append\_fixed\_capacity\_elems](#append_fixed_capacity_elems)
* [runtime](/base/runtime).[append\_fixed\_capacity\_string](#append_fixed_capacity_string)
* [runtime](/base/runtime).[append\_nothing\_dynamic\_array](#append_nothing_dynamic_array)
* [runtime](/base/runtime).[append\_nothing\_fixed\_capacity\_dynamic\_array](#append_nothing_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[append\_nothing\_soa](#append_nothing_soa)
* [runtime](/base/runtime).[append\_soa\_elem](#append_soa_elem)
* [runtime](/base/runtime).[append\_soa\_elems](#append_soa_elems)
* [runtime](/base/runtime).[append\_string](#append_string)
* [runtime](/base/runtime).[assert](#assert)
* [runtime](/base/runtime).[assert\_contextless](#assert_contextless)
* [runtime](/base/runtime).[assign\_at\_elem](#assign_at_elem)
* [runtime](/base/runtime).[assign\_at\_elem\_fixed\_capacity\_dynamic\_array](#assign_at_elem_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[assign\_at\_elem\_string](#assign_at_elem_string)
* [runtime](/base/runtime).[assign\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](#assign_at_elem_string_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[assign\_at\_elems](#assign_at_elems)
* [runtime](/base/runtime).[assign\_at\_elems\_fixed\_capacity\_dynamic\_array](#assign_at_elems_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[card](#card)
* [runtime](/base/runtime).[clear\_dynamic\_array](#clear_dynamic_array)
* [runtime](/base/runtime).[clear\_fixed\_capacity\_dynamic\_array](#clear_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[clear\_map](#clear_map)
* [runtime](/base/runtime).[clear\_soa\_dynamic\_array](#clear_soa_dynamic_array)
* [runtime](/base/runtime).[container\_of](#container_of)
* [runtime](/base/runtime).[copy\_from\_string](#copy_from_string)
* [runtime](/base/runtime).[copy\_from\_string16](#copy_from_string16)
* [runtime](/base/runtime).[copy\_slice](#copy_slice)
* [runtime](/base/runtime).[delete\_cstring](#delete_cstring)
* [runtime](/base/runtime).[delete\_cstring16](#delete_cstring16)
* [runtime](/base/runtime).[delete\_dynamic\_array](#delete_dynamic_array)
* [runtime](/base/runtime).[delete\_key](#delete_key)
* [runtime](/base/runtime).[delete\_map](#delete_map)
* [runtime](/base/runtime).[delete\_slice](#delete_slice)
* [runtime](/base/runtime).[delete\_soa\_dynamic\_array](#delete_soa_dynamic_array)
* [runtime](/base/runtime).[delete\_soa\_slice](#delete_soa_slice)
* [runtime](/base/runtime).[delete\_string](#delete_string)
* [runtime](/base/runtime).[delete\_string16](#delete_string16)
* [runtime](/base/runtime).[ensure](#ensure)
* [runtime](/base/runtime).[ensure\_contextless](#ensure_contextless)
* [runtime](/base/runtime).[init\_global\_temporary\_allocator](#init_global_temporary_allocator)
* [runtime](/base/runtime).[inject\_at\_elem](#inject_at_elem)
* [runtime](/base/runtime).[inject\_at\_elem\_fixed\_capacity\_dynamic\_array](#inject_at_elem_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[inject\_at\_elem\_soa](#inject_at_elem_soa)
* [runtime](/base/runtime).[inject\_at\_elem\_string](#inject_at_elem_string)
* [runtime](/base/runtime).[inject\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](#inject_at_elem_string_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[inject\_at\_elems](#inject_at_elems)
* [runtime](/base/runtime).[inject\_at\_elems\_fixed\_capacity\_dynamic\_array](#inject_at_elems_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[inject\_at\_elems\_soa](#inject_at_elems_soa)
* [runtime](/base/runtime).[make\_dynamic\_array](#make_dynamic_array)
* [runtime](/base/runtime).[make\_dynamic\_array\_len](#make_dynamic_array_len)
* [runtime](/base/runtime).[make\_dynamic\_array\_len\_cap](#make_dynamic_array_len_cap)
* [runtime](/base/runtime).[make\_map](#make_map)
* [runtime](/base/runtime).[make\_map\_cap](#make_map_cap)
* [runtime](/base/runtime).[make\_multi\_pointer](#make_multi_pointer)
* [runtime](/base/runtime).[make\_slice](#make_slice)
* [runtime](/base/runtime).[make\_soa\_aligned](#make_soa_aligned)
* [runtime](/base/runtime).[make\_soa\_dynamic\_array](#make_soa_dynamic_array)
* [runtime](/base/runtime).[make\_soa\_dynamic\_array\_len](#make_soa_dynamic_array_len)
* [runtime](/base/runtime).[make\_soa\_dynamic\_array\_len\_cap](#make_soa_dynamic_array_len_cap)
* [runtime](/base/runtime).[make\_soa\_slice](#make_soa_slice)
* [runtime](/base/runtime).[map\_entry](#map_entry)
* [runtime](/base/runtime).[map\_insert](#map_insert)
* [runtime](/base/runtime).[map\_upsert](#map_upsert)
* [runtime](/base/runtime).[mem\_free](#mem_free)
* [runtime](/base/runtime).[mem\_free\_all](#mem_free_all)
* [runtime](/base/runtime).[new](#new)
* [runtime](/base/runtime).[new\_clone](#new_clone)
* [runtime](/base/runtime).[non\_zero\_append\_elem](#non_zero_append_elem)
* [runtime](/base/runtime).[non\_zero\_append\_elem\_fixed\_capacity\_string](#non_zero_append_elem_fixed_capacity_string)
* [runtime](/base/runtime).[non\_zero\_append\_elem\_string](#non_zero_append_elem_string)
* [runtime](/base/runtime).[non\_zero\_append\_elems](#non_zero_append_elems)
* [runtime](/base/runtime).[non\_zero\_append\_soa\_elem](#non_zero_append_soa_elem)
* [runtime](/base/runtime).[non\_zero\_append\_soa\_elems](#non_zero_append_soa_elems)
* [runtime](/base/runtime).[non\_zero\_reserve\_dynamic\_array](#non_zero_reserve_dynamic_array)
* [runtime](/base/runtime).[non\_zero\_reserve\_soa](#non_zero_reserve_soa)
* [runtime](/base/runtime).[non\_zero\_resize\_dynamic\_array](#non_zero_resize_dynamic_array)
* [runtime](/base/runtime).[non\_zero\_resize\_fixed\_capacity\_dynamic\_array](#non_zero_resize_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[non\_zero\_resize\_soa](#non_zero_resize_soa)
* [runtime](/base/runtime).[ordered\_remove\_dynamic\_array](#ordered_remove_dynamic_array)
* [runtime](/base/runtime).[ordered\_remove\_fixed\_capacity\_dynamic\_array](#ordered_remove_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[ordered\_remove\_soa](#ordered_remove_soa)
* [runtime](/base/runtime).[panic](#panic)
* [runtime](/base/runtime).[panic\_contextless](#panic_contextless)
* [runtime](/base/runtime).[pop\_dynamic\_array](#pop_dynamic_array)
* [runtime](/base/runtime).[pop\_fixed\_capacity\_dynamic\_array](#pop_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[pop\_front\_dynamic\_array](#pop_front_dynamic_array)
* [runtime](/base/runtime).[pop\_front\_fixed\_capacity\_dynamic\_array](#pop_front_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[pop\_front\_safe\_dynamic\_array](#pop_front_safe_dynamic_array)
* [runtime](/base/runtime).[pop\_front\_safe\_fixed\_capacity\_dynamic\_array](#pop_front_safe_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[pop\_safe\_dynamic\_array](#pop_safe_dynamic_array)
* [runtime](/base/runtime).[pop\_safe\_fixed\_capacity\_dynamic\_array](#pop_safe_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[raw\_soa\_footer\_dynamic\_array](#raw_soa_footer_dynamic_array)
* [runtime](/base/runtime).[raw\_soa\_footer\_slice](#raw_soa_footer_slice)
* [runtime](/base/runtime).[remove\_range\_dynamic\_array](#remove_range_dynamic_array)
* [runtime](/base/runtime).[remove\_range\_fixed\_capacity\_dynamic\_array](#remove_range_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[reserve\_dynamic\_array](#reserve_dynamic_array)
* [runtime](/base/runtime).[reserve\_map](#reserve_map)
* [runtime](/base/runtime).[reserve\_soa](#reserve_soa)
* [runtime](/base/runtime).[resize\_dynamic\_array](#resize_dynamic_array)
* [runtime](/base/runtime).[resize\_fixed\_capacity\_dynamic\_array](#resize_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[resize\_soa](#resize_soa)
* [runtime](/base/runtime).[shrink\_dynamic\_array](#shrink_dynamic_array)
* [runtime](/base/runtime).[shrink\_map](#shrink_map)
* [runtime](/base/runtime).[unimplemented](#unimplemented)
* [runtime](/base/runtime).[unimplemented\_contextless](#unimplemented_contextless)
* [runtime](/base/runtime).[unordered\_remove\_dynamic\_array](#unordered_remove_dynamic_array)
* [runtime](/base/runtime).[unordered\_remove\_fixed\_capacity\_dynamic\_array](#unordered_remove_fixed_capacity_dynamic_array)
* [runtime](/base/runtime).[unordered\_remove\_soa](#unordered_remove_soa)

Procedure Groups (28)

* [runtime](/base/runtime).[append](#append)
* [runtime](/base/runtime).[append\_nothing](#append_nothing)
* [runtime](/base/runtime).[append\_soa](#append_soa)
* [runtime](/base/runtime).[assign\_at](#assign_at)
* [runtime](/base/runtime).[clear](#clear)
* [runtime](/base/runtime).[clear\_soa](#clear_soa)
* [runtime](/base/runtime).[copy](#copy)
* [runtime](/base/runtime).[delete](#delete)
* [runtime](/base/runtime).[delete\_soa](#delete_soa)
* [runtime](/base/runtime).[free](#free)
* [runtime](/base/runtime).[free\_all](#free_all)
* [runtime](/base/runtime).[inject\_at](#inject_at)
* [runtime](/base/runtime).[inject\_at\_soa](#inject_at_soa)
* [runtime](/base/runtime).[make](#make)
* [runtime](/base/runtime).[make\_soa](#make_soa)
* [runtime](/base/runtime).[non\_zero\_append](#non_zero_append)
* [runtime](/base/runtime).[non\_zero\_reserve](#non_zero_reserve)
* [runtime](/base/runtime).[non\_zero\_resize](#non_zero_resize)
* [runtime](/base/runtime).[ordered\_remove](#ordered_remove)
* [runtime](/base/runtime).[pop](#pop)
* [runtime](/base/runtime).[pop\_front](#pop_front)
* [runtime](/base/runtime).[pop\_front\_safe](#pop_front_safe)
* [runtime](/base/runtime).[pop\_safe](#pop_safe)
* [runtime](/base/runtime).[remove\_range](#remove_range)
* [runtime](/base/runtime).[reserve](#reserve)
* [runtime](/base/runtime).[resize](#resize)
* [runtime](/base/runtime).[shrink](#shrink)
* [runtime](/base/runtime).[unordered\_remove](#unordered_remove)

## Constants

### [ODIN\_ARCH ¶](#ODIN_ARCH)

```
ODIN_ARCH : runtime.Odin_Arch_Type : …
```

 

An enum value specifying the target platform's architecture.

**Example:**

```
// Defined internally by the compiler
Odin_Arch_Type :: enum int {
	Unknown,
	amd64,
	i386,
	arm32,
	arm64,
	wasm32,
	wasm64p32,
	riscv64,
}
```

### [ODIN\_BUILD\_MODE ¶](#ODIN_BUILD_MODE)

```
ODIN_BUILD_MODE : runtime.Odin_Build_Mode_Type : …
```

 

An enum value specifying the "build-mode".

**Example:**

```
// Defined internally by the compiler
Odin_Build_Mode_Type :: enum int {
	Executable,
	Dynamic,
	Static,
	Object,
	Assembly,
	LLVM_IR,
}
```

### [ODIN\_COMPILE\_TIMESTAMP ¶](#ODIN_COMPILE_TIMESTAMP)

```
ODIN_COMPILE_TIMESTAMP :: … // untyped integer
```

 

Equal to the UNIX timestamp in nanoseconds at the time of the program's compilation.

### [ODIN\_DEBUG ¶](#ODIN_DEBUG)

```
ODIN_DEBUG :: … // untyped boolean
```

 

Equal to `true` if the `-debug` flag has been set during compilation, otherwise `false`.

### [ODIN\_DEFAULT\_TO\_NIL\_ALLOCATOR ¶](#ODIN_DEFAULT_TO_NIL_ALLOCATOR)

```
ODIN_DEFAULT_TO_NIL_ALLOCATOR :: … // untyped boolean
```

 

Equal to `true` if the `-default-to-nil-allocator` flag has been set during compilation or whether the current target defaults to the "nil allocator", otherwise `false`.

### [ODIN\_DEFAULT\_TO\_PANIC\_ALLOCATOR ¶](#ODIN_DEFAULT_TO_PANIC_ALLOCATOR)

```
ODIN_DEFAULT_TO_PANIC_ALLOCATOR :: … // untyped boolean
```

 

Equal to `true` if the `-default-to-panic-allocator` flag has been set during compilation or whether the current target defaults to the "panic allocator", otherwise `false`.

### [ODIN\_DISABLE\_ASSERT ¶](#ODIN_DISABLE_ASSERT)

```
ODIN_DISABLE_ASSERT :: … // untyped boolean
```

 

Equal to `true` if the `-disable-assert` flag has been set during compilation, otherwise `false`.

### [ODIN\_ENDIAN ¶](#ODIN_ENDIAN)

```
ODIN_ENDIAN : runtime.Odin_Endian_Type : …
```

 

An enum value specifying the target platform's endianness.

**Example:**

```
// Defined internally by the compiler
Odin_Endian_Type :: enum int {
	Unknown,
	Little,
	Big,
}
```

### [ODIN\_ERROR\_POS\_STYLE ¶](#ODIN_ERROR_POS_STYLE)

```
ODIN_ERROR_POS_STYLE : runtime.Odin_Error_Pos_Style_Type : …
```

 

An enum value specifying whether errors should be stylized in the default (MSVC-like) style or a UNIX (GCC-like) style.

Default = `path(1:2)
Unix = `path:1:2:

### [ODIN\_NO\_CRT ¶](#ODIN_NO_CRT)

```
ODIN_NO_CRT :: … // untyped boolean
```

 

Equal to `true` if the `-no-crt` flag has been set during compilation (disallowing the C Run-Time library), otherwise `false`.

### [ODIN\_NO\_ENTRY\_POINT ¶](#ODIN_NO_ENTRY_POINT)

```
ODIN_NO_ENTRY_POINT :: … // untyped boolean
```

 

Equal to `true` if the `-no-entry-point` flag has been set during compilation, otherwise `false`.

### [ODIN\_NO\_RTTI ¶](#ODIN_NO_RTTI)

```
ODIN_NO_RTTI :: … // untyped boolean
```

 

Equal to `true` if the `-no-rtti` flag has been set during compilation (disabling Odin's Run-Time Type Information, only allowed on freestanding targets), otherwise `false`.

### [ODIN\_OS ¶](#ODIN_OS)

```
ODIN_OS : runtime.Odin_OS_Type : …
```

 

An enum value specifying the target platform's operating system.

**Example:**

```
// Defined internally by the compiler
Odin_OS_Type :: enum int {
	Unknown,
	Windows,
	Darwin,
	Linux,
	Essence,
	FreeBSD,
	OpenBSD,
	NetBSD,
	Haiku,
	WASI,
	JS,
	Orca,
	Freestanding,
}
```

### [ODIN\_PLATFORM\_SUBTARGET ¶](#ODIN_PLATFORM_SUBTARGET)

```
ODIN_PLATFORM_SUBTARGET : runtime.Odin_Platform_Subtarget_Type : …
```

 

An enum value specifying the selected subtarget type, only useful for Darwin targets.

**Example:**

```
// Defined internally by the compiler
Odin_Platform_Subtarget_Type :: enum int {
	Default,
	iPhone,
	iPhoneSimulator
	Android,
}
```

### [ODIN\_ROOT ¶](#ODIN_ROOT)

```
ODIN_ROOT :: … // untyped string
```

 

The path to the root Odin directory.

### [ODIN\_VENDOR ¶](#ODIN_VENDOR)

```
ODIN_VENDOR :: … // untyped string
```

 

A string specifying the current Odin compiler vendor.

### [ODIN\_VERSION ¶](#ODIN_VERSION)

```
ODIN_VERSION :: … // untyped string
```

 

A string specifying the current Odin version.

### [ODIN\_WINDOWS\_SUBSYSTEM ¶](#ODIN_WINDOWS_SUBSYSTEM)

```
ODIN_WINDOWS_SUBSYSTEM :: … // untyped string
```

 

A string specifying the current Windows subsystem, only useful on Windows targets.

### [false ¶](#false)

```
false :: 0 != 0 // untyped boolean
```

### [nil ¶](#nil)

```
nil :: … // untyped nil
```

 

`nil` is a predeclared identifier representing the zero value for a pointer, multi-pointer, enum, bit\_set, slice, dynamic array, map, procedure, any, typeid, cstring, union, #soa array, #soa pointer, #relative type

### [true ¶](#true)

```
true :: 0 == 0 // untyped boolean
```

### [ODIN\_PLATFORM\_SUBTARGET\_IOS ¶](#ODIN_PLATFORM_SUBTARGET_IOS) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L606)

```
ODIN_PLATFORM_SUBTARGET_IOS :: ODIN_PLATFORM_SUBTARGET == .iPhone || ODIN_PLATFORM_SUBTARGET == .iPhoneSimulator
```

## Types

### [any ¶](#any)

```
any :: any
```

 

`any` can reference any data type at runtime. Internally it contains a pointer to the underlying data and its relevant `typeid`. This is a very useful construct in order to have a runtime type-safe printing procedure.

**Note:** The `any` value is only valid for as long as the underlying data is still valid. Passing a literal to an `any` will allocate the literal in the current stack frame.

**Note:** It is highly recommended that you **do not** use this unless you know what you are doing. Its primary use is for printing procedures.

### [b16 ¶](#b16)

```
b16 :: b16
```

 

`b16` is the set of boolean values, `false` and `true`. `b16` has a size of 2 bytes (16 bits).

### [b32 ¶](#b32)

```
b32 :: b32
```

 

`b32` is the set of boolean values, `false` and `true`. `b32` has a size of 4 bytes (32 bits).

### [b64 ¶](#b64)

```
b64 :: b64
```

 

`b64` is the set of boolean values, `false` and `true`. `b64` has a size of 8 bytes (64 bits).

### [b8 ¶](#b8)

```
b8 :: b8
```

 

`b8` is the set of boolean values, `false` and `true`. This is distinct from `bool`. `b8` has a size of 1 byte (8 bits).

### [bool ¶](#bool)

```
bool :: bool
```

 

`bool` is the set of boolean values, `false` and `true`. This is distinct from `b8`. `bool` has a size of 1 byte (8 bits).

### [byte ¶](#byte)

```
byte :: u8
```

 

`byte` is an alias for `u8` and is equivalent to `u8` in all ways. It is used as a convention to distinguish values from 8-bit unsigned integer values.

### [complex128 ¶](#complex128)

```
complex128 :: complex128
```

 

`complex128` is the set of all complex numbers with `f64` real and imaginary parts.

### [complex32 ¶](#complex32)

```
complex32 :: complex32
```

 

`complex32` is the set of all complex numbers with `f16` real and imaginary parts.

### [complex64 ¶](#complex64)

```
complex64 :: complex64
```

 

`complex64` is the set of all complex numbers with `f32` real and imaginary parts.

### [cstring ¶](#cstring)

```
cstring :: cstring
```

 

`cstring` is the set of all strings of 8-bit bytes terminated with a NUL (0) byte, conventionally but not necessarily representing UTF-8 encoding text. A `cstring` may be empty or `nil`. Elements of `cstring` type are immutable but not indexable.

### [cstring16 ¶](#cstring16)

```
cstring16 :: cstring16
```

 

`cstring16` is the set of all strings of 16-bit code units terminated with a NUL (0) code unit, conventionally but not necessarily representing UTF-16 encoding text. A `cstring16` may be empty or `nil`. Elements of `cstring16` type are immutable but not indexable.

### [f16 ¶](#f16)

```
f16 :: f16
```

 

`f16` is the set of all IEEE-754 16-bit floating-point numbers with native endianness.

### [f16be ¶](#f16be)

```
f16be :: f16be
```

 

`f16be` is the set of all IEEE-754 16-bit floating-point numbers with big endianness.

### [f16le ¶](#f16le)

```
f16le :: f16le
```

 

`f16le` is the set of all IEEE-754 16-bit floating-point numbers with little endianness.

### [f32 ¶](#f32)

```
f32 :: f32
```

 

`f32` is the set of all IEEE-754 32-bit floating-point numbers with native endianness.

### [f32be ¶](#f32be)

```
f32be :: f32be
```

 

`f32be` is the set of all IEEE-754 32-bit floating-point numbers with big endianness.

### [f32le ¶](#f32le)

```
f32le :: f32le
```

 

`f32le` is the set of all IEEE-754 32-bit floating-point numbers with little endianness.

### [f64 ¶](#f64)

```
f64 :: f64
```

 

`f64` is the set of all IEEE-754 64-bit floating-point numbers with native endianness.

### [f64be ¶](#f64be)

```
f64be :: f64be
```

 

`f64be` is the set of all IEEE-754 64-bit floating-point numbers with big endianness.

### [f64le ¶](#f64le)

```
f64le :: f64le
```

 

`f64le` is the set of all IEEE-754 64-bit floating-point numbers with little endianness.

### [i128 ¶](#i128)

```
i128 :: i128
```

 

`i128` is the set of all signed 128-bit integers with native endianness. Range -170141183460469231731687303715884105728 through 170141183460469231731687303715884105727.

### [i128be ¶](#i128be)

```
i128be :: i128be
```

 

`i128be` is the set of all signed 128-bit integers with big endianness. Range -170141183460469231731687303715884105728 through 170141183460469231731687303715884105727.

### [i128le ¶](#i128le)

```
i128le :: i128le
```

 

`i128le` is the set of all signed 128-bit integers with little endianness. Range -170141183460469231731687303715884105728 through 170141183460469231731687303715884105727.

### [i16 ¶](#i16)

```
i16 :: i16
```

 

`i16` is the set of all signed 16-bit integers with native endianness. Range -32768 through 32767.

### [i16be ¶](#i16be)

```
i16be :: i16be
```

 

`i16be` is the set of all signed 16-bit integers with big endianness. Range -32768 through 32767.

### [i16le ¶](#i16le)

```
i16le :: i16le
```

 

`i16le` is the set of all signed 16-bit integers with little endianness. Range -32768 through 32767.

### [i32 ¶](#i32)

```
i32 :: i32
```

 

`i32` is the set of all signed 32-bit integers with native endianness. Range -2147483648 through 2147483647.

### [i32be ¶](#i32be)

```
i32be :: i32be
```

 

`i32be` is the set of all signed 32-bit integers with big endianness. Range -2147483648 through 2147483647.

### [i32le ¶](#i32le)

```
i32le :: i32le
```

 

`i32le` is the set of all signed 32-bit integers with little endianness. Range -2147483648 through 2147483647.

### [i64 ¶](#i64)

```
i64 :: i64
```

 

`i64` is the set of all signed 64-bit integers with native endianness. Range -9223372036854775808 through 9223372036854775807.

### [i64be ¶](#i64be)

```
i64be :: i64be
```

 

`i64be` is the set of all signed 64-bit integers with big endianness. Range -9223372036854775808 through 9223372036854775807.

### [i64le ¶](#i64le)

```
i64le :: i64le
```

 

`i64le` is the set of all signed 64-bit integers with little endianness. Range -9223372036854775808 through 9223372036854775807.

### [i8 ¶](#i8)

```
i8 :: i8
```

 

`i8` is the set of all signed 8-bit integers. Range -128 through 127.

### [int ¶](#int)

```
int :: int
```

 

`int` is a signed integer type that is at least 32 bits in size. It is a distinct type, however, and not an alias for say, `i32`.

### [quaternion128 ¶](#quaternion128)

```
quaternion128 :: quaternion128
```

 

`quaternion128` is the set of all complex numbers with `f32` real and imaginary (i, j, & k) parts.

### [quaternion256 ¶](#quaternion256)

```
quaternion256 :: quaternion256
```

 

`quaternion256` is the set of all complex numbers with `f64` real and imaginary (i, j, & k) parts.

### [quaternion64 ¶](#quaternion64)

```
quaternion64 :: quaternion64
```

 

`quaternion64` is the set of all complex numbers with `f16` real and imaginary (i, j, & k) parts.

### [rawptr ¶](#rawptr)

```
rawptr :: rawptr
```

 

`rawptr` represents a pointer to an arbitrary type. It is equivalent to `void *` in C.

### [rune ¶](#rune)

```
rune :: rune
```

 

`rune` is the set of all Unicode code points. It is internally the same as `i32` but distinct.

### [string ¶](#string)

```
string :: string
```

 

`string` is the set of all strings of 8-bit bytes, conventionally but not necessarily representing UTF-8 encoding text. A `string` may be empty but not `nil`. Elements of `string` type are immutable and indexable.

### [string16 ¶](#string16)

```
string16 :: string16
```

 

`string16` is the set of all strings of 16-bit code units, conventionally but not necessarily representing UTF-16 encoding text. A `string` may be empty but not `nil`. Elements of `string` type are immutable and indexable.

### [typeid ¶](#typeid)

```
typeid :: typeid
```

 

`typeid` is a unique identifier for an Odin type at runtime. It can be mapped to relevant type information through `type_info_of`.

### [u128 ¶](#u128)

```
u128 :: u128
```

 

`u128` is the set of all unsigned 128-bit integers with native endianness. Range 0 through 340282366920938463463374607431768211455.

### [u128be ¶](#u128be)

```
u128be :: u128be
```

 

`u128be` is the set of all unsigned 128-bit integers with big endianness. Range 0 through 340282366920938463463374607431768211455.

### [u128le ¶](#u128le)

```
u128le :: u128le
```

 

`u128le` is the set of all unsigned 128-bit integers with little endianness. Range 0 through 340282366920938463463374607431768211455.

### [u16 ¶](#u16)

```
u16 :: u16
```

 

`u16` is the set of all unsigned 16-bit integers with native endianness. Range 0 through 65535.

### [u16be ¶](#u16be)

```
u16be :: u16be
```

 

`u16be` is the set of all unsigned 16-bit integers with big endianness. Range 0 through 65535.

### [u16le ¶](#u16le)

```
u16le :: u16le
```

 

`u16le` is the set of all unsigned 16-bit integers with little endianness. Range 0 through 65535.

### [u32 ¶](#u32)

```
u32 :: u32
```

 

`u32` is the set of all unsigned 32-bit integers with native endianness. Range 0 through 4294967295.

### [u32be ¶](#u32be)

```
u32be :: u32be
```

 

`u32be` is the set of all unsigned 32-bit integers with big endianness. Range 0 through 4294967295.

### [u32le ¶](#u32le)

```
u32le :: u32le
```

 

`u32le` is the set of all unsigned 32-bit integers with little endianness. Range 0 through 4294967295.

### [u64 ¶](#u64)

```
u64 :: u64
```

 

`u64` is the set of all unsigned 64-bit integers with native endianness. Range 0 through 18446744073709551615.

### [u64be ¶](#u64be)

```
u64be :: u64be
```

 

`u64be` is the set of all unsigned 64-bit integers with big endianness. Range 0 through 18446744073709551615.

### [u64le ¶](#u64le)

```
u64le :: u64le
```

 

`u64le` is the set of all unsigned 64-bit integers with little endianness. Range 0 through 18446744073709551615.

### [u8 ¶](#u8)

```
u8 :: u8
```

 

`u8` is the set of all unsigned 8-bit integers. Range 0 through 255.

### [uint ¶](#uint)

```
uint :: uint
```

 

`uint` is an unsigned integer type that is at least 32 bits in size. It is a distinct type, however, and not an alias for say, `u32`.

### [uintptr ¶](#uintptr)

```
uintptr :: uintptr
```

 

`uintptr` is an unsigned integer type that is large enough to hold the bit pattern of any pointer.

### [Maybe ¶](#Maybe) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L6)

```
Maybe :: union($T: typeid) {
	… // See source for fields
}
```

### [Objc\_Block ¶](#Objc_Block) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L12)

```
Objc_Block :: struct($T: typeid) {
	… // See source for fields
}
```

 

Represents an Objective-C block with a given procedure signature T

## Procedures

### [abs ¶](#abs)

```
abs :: proc(value: T) -> T {…}
```

 

`abs` returns the absolute value of passed argument.
If the argument is a complex or quaternion, this is equivalent to `real(conj(value) * value)`.

### [align\_of ¶](#align_of)

```
align_of :: proc($T: typeid) -> int {…}
```

 

`align_of` takes an expression or type, and returns the alignment in bytes of the type of the expression if it was hypothetically instantiated as a variable `v`. It is the largest value `m` such that the address of `v` is always `0 mod m`.

### [cap ¶](#cap)

```
cap :: proc(v: Array_Type) -> int {…}
```

 

The `cap` built-in procedure returns the length of `v` according to its type:

```
Array: the number of elements in v.
Pointer to (any) array: the number of elements in `v^` (even if `v` is `nil`).
Dynamic array, or map: the reserved number of elements in `v`; if `v` is `nil`, `len(v)` is zero.
Enum type: equal to `max(Enum)-min(Enum)+1`.
#soa dynamic array: the reserved number of elements in `v`; if `v` is `nil`, `len(v)` is zero.
```

For some arguments, such as a string literal or a simple array expression, the result can be constant.

### [clamp ¶](#clamp)

```
clamp :: proc(v, minimum, maximum: T) -> T {…}
```

 

`clamp` returns a value `v` clamped between `minimum` and `maximum`.
This is calculated as follows: `minimum if v < minimum else maximum if v > maximum else v`.

### [complex ¶](#complex)

```
complex :: proc(real, imag: Float) -> Complex_Type {…}
```

### [compress\_values ¶](#compress_values)

```
compress_values :: proc(values: ...) -> Struct_Or_Array_Like_Type {…}
```

 

`compress_values` returns an unnamed fixed-length array if all arguments are of the same type. It returns an unnamed struct if the argument types differ. If there is only a single argument, it returns that argument. At least one argument is required.

### [conj ¶](#conj)

```
conj :: proc(v: Complex_Or_Quaternion) -> Complex_Or_Quaternion {…}
```

 

`conj` returns the complex conjugate of a complex or quaternion number `v`. This negates the imaginary component(s) whilst keeping the real component untouched.

### [expand\_values ¶](#expand_values)

```
expand_values :: proc(value: Struct_Or_Array) -> (A, B, C, ...) {…}
```

 

`expand_values` returns multiple values corresponding to the multiple fields of the passed struct or the multiple elements of a passed fixed length array.

### [imag ¶](#imag)

```
imag :: proc(v: Complex_Or_Quaternion) -> Float {…}
```

 

`imag` returns the i-imaginary part of a complex or quaternion number `v`. The return value will be the floating-point type corresponding to the type of `v`.

### [jmag ¶](#jmag)

```
jmag :: proc(v: Quaternion) -> Float {…}
```

 

`jmag` returns the j-imaginary part of a quaternion number `v`. The return value will be the floating-point type corresponding to the type of `v`.

### [kmag ¶](#kmag)

```
kmag :: proc(v: Quaternion) -> Float {…}
```

 

`kmag` returns the k-imaginary part of a quaternion number `v`. The return value will be the floating-point type corresponding to the type of `v`.

### [len ¶](#len)

```
len :: proc(v: Array_Type) -> int {…}
```

 

The `len` built-in procedure returns the length of `v` according to its type:

```
Array: the number of elements in v.
Pointer to (any) array: the number of elements in `v^` (even if `v` is `nil`).
Slice, dynamic array, or map: the number of elements in `v`; if `v` is `nil`, `len(v)` is zero.
String: the number of bytes in `v`
Enumerated array: the number of elements in v.`
Enum type: the number of enumeration fields.
#soa array: the number of elements in `v`; if `v` is `nil`, `len(v)` is zero.
#simd vector: the number of elements in `v`.
```

For some arguments, such as a string literal or a simple array expression, the result can be constant.

### [max ¶](#max)

```
max :: proc(values: ..T) -> T {…}
```

 

`max` returns the maximum value of passed arguments of all the same type.
If one argument is passed and it is an enum or numeric type, then `max` returns the maximum value of the enum type's fields or its maximum numeric value respectively.

### [min ¶](#min)

```
min :: proc(values: ..T) -> T {…}
```

 

`min` returns the minimum value of passed arguments of all the same type.
If one argument is passed and it is an enum or numeric type, then `min` returns the minimum value of the enum type's fields or its minimum / most negative numeric value respectively.

### [offset\_of ¶](#offset_of)

```
offset_of :: proc{offset_of_selector, offset_of_member} {…}
```

 

`offset_of` returns the byte offset of the field within the struct.

### [offset\_of\_by\_string ¶](#offset_of_by_string)

```
offset_of_by_string :: proc($T: typeid, member: string) -> uintptr {…}
```

 

e.g. offset\_of(T, "f"), where T can be the type instead of a variable

### [offset\_of\_member ¶](#offset_of_member)

```
offset_of_member :: proc($T: typeid, member: $M) -> uintptr {…}
```

 

e.g. offset\_of(T, f), where T can be the type instead of a variable

### [offset\_of\_selector ¶](#offset_of_selector)

```
offset_of_selector :: proc(selector: $T) -> uintptr {…}
```

 

e.g. offset\_of(t.f), where t is an instance of the type T

### [quaternion ¶](#quaternion)

```
quaternion :: proc(real, imag, jmag, kmag: Float) -> Quaternion_Type {…}
```

### [raw\_data ¶](#raw_data)

```
raw_data :: proc(value: $T) -> [^]$E {…}
```

 

`raw_data` returns the underlying data of a built-in data type as a [multi-pointer](https://odin-lang.org/docs/overview/#multi-pointers).

```
raw_data([]$E)         -> [^]E    // slices
raw_data([dynamic]$E)  -> [^]E    // dynamic arrays
raw_data(^[$N]$E)      -> [^]E    // fixed array and enumerated arrays 
raw_data(^#simd[$N]$E) -> [^]E    // simd vectors 
raw_data(string)       -> [^]byte // string
```

### [real ¶](#real)

```
real :: proc(v: Complex_Or_Quaternion) -> Float {…}
```

 

`real` returns the real part of a complex or quaternion number `v`. The return value will be the floating-point type corresponding to the type of `v`.

### [size\_of ¶](#size_of)

```
size_of :: proc($T: typeid) -> int {…}
```

 

`size_of` takes an expression or type, and returns the size in bytes of the type of the expression if it was hypothetically instantiated as a variable. The size does not include any memory possibly referenced by a value. For instance, if a slice is given, `size_of` returns the size of the internal slice data structure and not the size of the memory referenced by the slice. For a struct, the size includes any padding introduced by field alignment (if not specified with `#packed`. Other types follow similar rules. The return value of `size_of` is a compile time known integer constant.

### [soa\_unzip ¶](#soa_unzip)

```
soa_unzip :: proc(value: $S/#soa[]$E) -> (slices: ...) {…}
```

 

See: <https://odin-lang.org/docs/overview/#soa_zip-and-soa_unzip>

### [soa\_zip ¶](#soa_zip)

```
soa_zip :: proc(slices: ...) -> #soa[]Struct {…}
```

 

See: <https://odin-lang.org/docs/overview/#soa_zip-and-soa_unzip>

### [swizzle ¶](#swizzle)

```
swizzle :: proc(x: [N]T, indices: ..int) -> [len(indices)]T {…}
```

### [type\_info\_of ¶](#type_info_of)

```
type_info_of :: proc($T: typeid) -> ^runtime.Type_Info {…}
```

 

`type_info_of` returns the runtime type information from a given `typeid`.

### [type\_of ¶](#type_of)

```
type_of :: proc(x: expr) -> type {…}
```

 

`type_of` returns the type of a given expression

### [typeid\_of ¶](#typeid_of)

```
typeid_of :: proc($T: typeid) -> typeid {…}
```

 

`typeid_of` returns the associated runtime known `typeid` of the specified type.

### [append\_elem ¶](#append_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L736)

```
append_elem :: proc(array: ^$T/[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_elem` appends an element to the end of a dynamic array.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_elem\_string ¶](#append_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L824)

```
append_elem_string :: proc(array: ^$T/[dynamic]$E/u8, arg: $A/string, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_elem_string` appends a string to the end of a dynamic array of bytes

Note: Prefer using the procedure group `append`.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_elems ¶](#append_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L791)

```
append_elems :: proc(array: ^$T/[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_elems` appends `args` to the end of a dynamic array.

Note: Prefer using the procedure group `append`.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_fixed\_capacity\_elem ¶](#append_fixed_capacity_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L864)

```
append_fixed_capacity_elem :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #no_broadcast arg: $E) -> (n: int) {…}
```

 

`append_fixed_capacity_elem` appends an element to the end of a fixed capacity dynamic array. Returns 0 on failure




##### Related Procedure Groups

* [append](/base/runtime/#append)
* [non\_zero\_append](/base/runtime/#non_zero_append)

### [append\_fixed\_capacity\_elems ¶](#append_fixed_capacity_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L881)

```
append_fixed_capacity_elems :: proc "contextless" (array: ^$T/[dynamic; $N]$E, .. #no_broadcast args: ..$E) -> (n: int) {…}
```

 

`append_fixed_capacity_elem` appends an element to the end of a fixed capacity dynamic array. Returns 0 on failure




##### Related Procedure Groups

* [append](/base/runtime/#append)
* [non\_zero\_append](/base/runtime/#non_zero_append)

### [append\_fixed\_capacity\_string ¶](#append_fixed_capacity_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L899)

```
append_fixed_capacity_string :: proc "contextless" (array: ^$T/[dynamic; $N]$E/u8, .. args: ..string) -> (n: int) {…}
```

 

The append\_fixed\_capacity\_string built-in procedure appends multiple strings to the end of a [dynamic]u8 like type

Note: Prefer using the procedure group `append`.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_nothing\_dynamic\_array ¶](#append_nothing_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L945)

```
append_nothing_dynamic_array :: proc(array: ^$T/[dynamic]$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_nothing` appends an empty value to a dynamic array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.




##### Related Procedure Groups

* [append\_nothing](/base/runtime/#append_nothing)

### [append\_nothing\_fixed\_capacity\_dynamic\_array ¶](#append_nothing_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L957)

```
append_nothing_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) -> (n: int, ok: bool) {…}
```

 

`append_nothing` appends an empty value to a dynamic array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.




##### Related Procedure Groups

* [append\_nothing](/base/runtime/#append_nothing)

### [append\_nothing\_soa ¶](#append_nothing_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L507)

```
append_nothing_soa :: proc(array: ^$T/#soa[dynamic]$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_nothing_soa` appends an empty value to a dynamic SOA array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.

### [append\_soa\_elem ¶](#append_soa_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L375)

```
append_soa_elem :: proc(array: ^$T/#soa[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [append](/base/runtime/#append)
* [append\_soa](/base/runtime/#append_soa)

### [append\_soa\_elems ¶](#append_soa_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L432)

```
append_soa_elems :: proc(array: ^$T/#soa[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [append](/base/runtime/#append)
* [append\_soa](/base/runtime/#append_soa)

### [append\_string ¶](#append_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L849)

```
append_string :: proc(array: ^$T/[dynamic]$E/u8, .. args: ..string, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

The append\_string built-in procedure appends multiple strings to the end of a [dynamic]u8 like type

Note: Prefer using the procedure group `append`.

### [assert ¶](#assert) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1536)

```
assert :: proc(condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `context.assertion_failure_procedure` to assert.

This routine will be ignored when `ODIN_DISABLE_ASSERT` is true.

### [assert\_contextless ¶](#assert_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1600)

```
assert_contextless :: proc "contextless" (condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `default_assertion_contextless_failure_proc` to assert.

This routine will be ignored when `ODIN_DISABLE_ASSERT` is true.

### [assign\_at\_elem ¶](#assign_at_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1138)

```
assign_at_elem :: proc(array: ^$T/[dynamic]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`assign_at_elem` assigns a value at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+1` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elem\_fixed\_capacity\_dynamic\_array ¶](#assign_at_elem_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1191)

```
assign_at_elem_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int index: int, arg: $E) -> (ok: bool) {…}
```

 

`assign_at_elem_fixed_capacity_dynamic_array` assigns a value at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+1` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elem\_string ¶](#assign_at_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1172)

```
assign_at_elem_string :: proc(array: ^$T/[dynamic]$E/u8, #any_int index: int, arg: string, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`assign_at_elem_string` assigns a string at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(arg)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elem\_string\_fixed\_capacity\_dynamic\_array ¶](#assign_at_elem_string_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1225)

```
assign_at_elem_string_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E/u8, #any_int index: int, arg: string) -> (ok: bool) {…}
```

 

`assign_at_elem_string_fixed_capacity_dynamic_array` assigns a string at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(arg)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elems ¶](#assign_at_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1154)

```
assign_at_elems :: proc(array: ^$T/[dynamic]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`assign_at_elems` assigns a values at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(args)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elems\_fixed\_capacity\_dynamic\_array ¶](#assign_at_elems_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1207)

```
assign_at_elems_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int index: int, .. #no_broadcast args: ..$E) -> (ok: bool) {…}
```

 

`assign_at_elems_fixed_capacity_dynamic_array` assigns a values at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(args)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [card ¶](#card) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1524)

```
card :: proc "contextless" (s: $S/bit_set[$E]) -> int {…}
```

 

`card` returns the number of bits that are set in a bit\_set—its cardinality

### [clear\_dynamic\_array ¶](#clear_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1260)

```
clear_dynamic_array :: proc "contextless" (array: ^$T/[dynamic]$E) {…}
```

 

`clear_dynamic_array` will set the length of a passed dynamic array to `0`

Note: Prefer the procedure group `clear`.




##### Related Procedure Groups

* [clear](/base/runtime/#clear)

### [clear\_fixed\_capacity\_dynamic\_array ¶](#clear_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1270)

```
clear_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) {…}
```

 

`clear_fixed_capacity_dynamic_array` will set the length of a passed dynamic array to `0`

Note: Prefer the procedure group `clear`.




##### Related Procedure Groups

* [clear](/base/runtime/#clear)

### [clear\_map ¶](#clear_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L668)

```
clear_map :: proc "contextless" (m: ^$T/map[$K]$V) {…}
```

 

`clear_map` will set the length of a passed map to `0`

Note: Prefer the procedure group `clear`




##### Related Procedure Groups

* [clear](/base/runtime/#clear)

### [clear\_soa\_dynamic\_array ¶](#clear_soa_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L649)

```
clear_soa_dynamic_array :: proc(array: ^$T/#soa[dynamic]$E) {…}
```

##### Related Procedure Groups

* [clear](/base/runtime/#clear)
* [clear\_soa](/base/runtime/#clear_soa)

### [container\_of ¶](#container_of) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L48)

```
container_of :: proc "contextless" (ptr: $P/^$Field_Type, $T: typeid, $field_name: string) -> ^typeid {…}
```

 

Recovers the containing/parent struct from a pointer to one of its fields.
Works by "walking back" to the struct's starting address using the offset between the field and the struct.

**Inputs:**  
ptr: Pointer to the field of a container struct
T: The type of the container struct
field\_name: The name of the field in the `T` struct

**Returns:**  
A pointer to the container struct based on a pointer to a field in it

**Example:**

```
package container_of
import "base:runtime"

Node :: struct {
	value: int,
	prev:  ^Node,
	next:  ^Node,
}

main :: proc() {
	node: Node
	field_ptr := &node.next
	container_struct_ptr: ^Node = runtime.container_of(field_ptr, Node, "next")
	assert(container_struct_ptr == &node)
	assert(uintptr(field_ptr) - uintptr(container_struct_ptr) == size_of(node.value) + size_of(node.prev))
}
```

**Output:**

```
^Node
```

### [copy\_from\_string ¶](#copy_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L100)

```
copy_from_string :: proc "contextless" (dst: $T/[]$E/u8, src: $S/string) -> int {…}
```

 

`copy_from_string` is a built-in procedure that copies elements from a source string `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

Prefer the procedure group `copy`.




##### Related Procedure Groups

* [copy](/base/runtime/#copy)

### [copy\_from\_string16 ¶](#copy_from_string16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L110)

```
copy_from_string16 :: proc "contextless" (dst: $T/[]$E/u16, src: $S/string16) -> int {…}
```

 

`copy_from_string16` is a built-in procedure that copies elements from a source string `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

Prefer the procedure group `copy`.




##### Related Procedure Groups

* [copy](/base/runtime/#copy)

### [copy\_slice ¶](#copy_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L90)

```
copy_slice :: proc "contextless" (dst, src: $T/[]$E) -> int {…}
```

 

`copy_slice` is a built-in procedure that copies elements from a source slice `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

Prefer the procedure group `copy`.




##### Related Procedure Groups

* [copy](/base/runtime/#copy)

### [delete\_cstring ¶](#delete_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L457)

```
delete_cstring :: proc(str: cstring, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_cstring` will try to free the underlying data of the passed string, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_cstring16 ¶](#delete_cstring16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L488)

```
delete_cstring16 :: proc(str: cstring16, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_dynamic\_array ¶](#delete_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L464)

```
delete_dynamic_array :: proc(array: $T/[dynamic]$E, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_dynamic_array` will try to free the underlying data of the passed dynamic array, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_key ¶](#delete_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L699)

```
delete_key :: proc(m: ^$T/map[$K]$V, key: $K) -> (deleted_key: $$deferred_return, deleted_value: $$deferred_return) {…}
```

 

The delete\_key built-in procedure deletes the element with the specified key (m[key]) from the map.
If m is nil, or there is no such element, this procedure is a no-op
It is safe to use `delete_key` while iterating a map.
But if you iterate across a map and insert a new key, it could resize which means you are not iterating across all of the elements.

### [delete\_map ¶](#delete_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L478)

```
delete_map :: proc(m: $T/map[$K]$V, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_map` will try to free the underlying data of the passed map, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_slice ¶](#delete_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L471)

```
delete_slice :: proc(array: $T/[]$E, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_slice` will try to free the underlying data of the passed sliced, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_soa\_dynamic\_array ¶](#delete_soa_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L630)

```
delete_soa_dynamic_array :: proc(array: $T/#soa[dynamic]$E, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)
* [delete\_soa](/base/runtime/#delete_soa)

### [delete\_soa\_slice ¶](#delete_soa_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L619)

```
delete_soa_slice :: proc(array: $T/#soa[]$E, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)
* [delete\_soa](/base/runtime/#delete_soa)

### [delete\_string ¶](#delete_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L450)

```
delete_string :: proc(str: string, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_string` will try to free the underlying data of the passed string, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_string16 ¶](#delete_string16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L484)

```
delete_string16 :: proc(str: string16, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [ensure ¶](#ensure) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1558)

```
ensure :: proc(condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `context.assertion_failure_procedure` to assert.
This routine ignores `ODIN_DISABLE_ASSERT`, and will always execute.

### [ensure\_contextless ¶](#ensure_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1617)

```
ensure_contextless :: proc "contextless" (condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `default_assertion_contextless_failure_proc` to assert.

### [init\_global\_temporary\_allocator ¶](#init_global_temporary_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L68)

```
init_global_temporary_allocator :: proc(size: int, backup_allocator := context.allocator) {…}
```

 

Initializes the global temporary allocator used as the default `context.temp_allocator`.
This is ignored when `NO_DEFAULT_TEMP_ALLOCATOR` is true.

### [inject\_at\_elem ¶](#inject_at_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L978)

```
inject_at_elem :: proc(array: ^$T/[dynamic]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elem` injects an element in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elem\_fixed\_capacity\_dynamic\_array ¶](#inject_at_elem_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1053)

```
inject_at_elem_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool) {…}
```

 

`inject_at_elem_fixed_capacity_dynamic_array` injects an element in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elem\_soa ¶](#inject_at_elem_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L519)

```
inject_at_elem_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elem_soa` injects an element in a dynamic SOA array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at\_soa](/base/runtime/#inject_at_soa)

### [inject\_at\_elem\_string ¶](#inject_at_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1027)

```
inject_at_elem_string :: proc(array: ^$T/[dynamic]$E/u8, #any_int index: int, arg: string, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elem_string` injects a string into a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elem\_string\_fixed\_capacity\_dynamic\_array ¶](#inject_at_elem_string_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1099)

```
inject_at_elem_string_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E/u8, #any_int index: int, arg: string, loc := #caller_location) -> (ok: bool) {…}
```

 

`inject_at_elem_string_fixed_capacity_dynamic_array` injects a string into a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elems ¶](#inject_at_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1000)

```
inject_at_elems :: proc(array: ^$T/[dynamic]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elems` injects multiple elements in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elems\_fixed\_capacity\_dynamic\_array ¶](#inject_at_elems_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1074)

```
inject_at_elems_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool) {…}
```

 

`inject_at_elems_fixed_capacity_dynamic_array` injects multiple elements in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elems\_soa ¶](#inject_at_elems_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L564)

```
inject_at_elems_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elems_soa` injects multiple elements in a dynamic SOA array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at\_soa](/base/runtime/#inject_at_soa)

### [make\_dynamic\_array ¶](#make_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L565)

```
make_dynamic_array :: proc($T: typeid/[dynamic]$E, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_dynamic_array` allocates and initializes a dynamic array. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_dynamic\_array\_len ¶](#make_dynamic_array_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L574)

```
make_dynamic_array_len :: proc($T: typeid/[dynamic]$E, #any_int len: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_dynamic_array_len` allocates and initializes a dynamic array. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_dynamic\_array\_len\_cap ¶](#make_dynamic_array_len_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L583)

```
make_dynamic_array_len_cap :: proc($T: typeid/[dynamic]$E, #any_int len: int, #any_int cap: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) {…}
```

 

`make_dynamic_array_len_cap` allocates and initializes a dynamic array. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_map ¶](#make_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L605)

```
make_map :: proc($T: typeid/map[$K]$E, allocator := context.allocator, loc := #caller_location) -> (m: $$deferred_return) {…}
```

 

`make_map` initializes a map with an allocator. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_map\_cap ¶](#make_map_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L616)

```
make_map_cap :: proc($T: typeid/map[$K]$E, #any_int capacity: int, allocator := context.allocator, loc := #caller_location) -> (m: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_map_cap` initializes a map with an allocator and allocates space using `capacity`.
Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_multi\_pointer ¶](#make_multi_pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L630)

```
make_multi_pointer :: proc($T: typeid/[^]$E, #any_int len: int, allocator := context.allocator, loc := #caller_location) -> (mp: $$deferred_return, err: Allocator_Error) {…}
```

 

`make_multi_pointer` allocates and initializes a multi-pointer. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

This is "similar" to doing `raw_data(make([]E, len, allocator))`.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_slice ¶](#make_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L556)

```
make_slice :: proc($T: typeid/[]$E, #any_int len: int, allocator := context.allocator, loc := #caller_location) -> (res: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_slice` allocates and initializes a slice. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_soa\_aligned ¶](#make_soa_aligned) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L79)

```
make_soa_aligned :: proc($T: typeid/#soa[]$E, #any_int length, #any_int alignment: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

### [make\_soa\_dynamic\_array ¶](#make_soa_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L143)

```
make_soa_dynamic_array :: proc($T: typeid/#soa[dynamic]$E, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [make\_soa\_dynamic\_array\_len ¶](#make_soa_dynamic_array_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L151)

```
make_soa_dynamic_array_len :: proc($T: typeid/#soa[dynamic]$E, #any_int length: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [make\_soa\_dynamic\_array\_len\_cap ¶](#make_soa_dynamic_array_len_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L159)

```
make_soa_dynamic_array_len_cap :: proc($T: typeid/#soa[dynamic]$E, #any_int length, #any_int capacity: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [make\_soa\_slice ¶](#make_soa_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L138)

```
make_soa_slice :: proc($T: typeid/#soa[]$E, #any_int length: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [map\_entry ¶](#map_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1509)

```
map_entry :: proc(m: ^$T/map[$K]$V, key: $K, loc := #caller_location) -> (key_ptr: $$deferred_return, value_ptr: $$deferred_return, just_inserted: bool, err: Allocator_Error) {…}
```

 

Retrieves a pointer to the key and value for a possibly just inserted entry into the map.

If the `key` was not in the map `m`, an entry is inserted with the zero value and `just_inserted` will be `true`.
Otherwise the existing entry is left untouched and pointers to its key and value are returned.

If the map has to grow in order to insert the entry and the allocation fails, `err` is set and returned.

If `err` is `nil`, `key_ptr` and `value_ptr` are valid pointers and will not be `nil`.

WARN: User modification of the key pointed at by `key_ptr` should only be done if the new key is equal to (in hash) the old key.
If that is not the case you will corrupt the map.

### [map\_insert ¶](#map_insert) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1474)

```
map_insert :: proc(m: ^$T/map[$K]$V, key: $K, value: $V, loc := #caller_location) -> (ptr: $$deferred_return) {…}
```

### [map\_upsert ¶](#map_upsert) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1484)

```
map_upsert :: proc(m: ^$T/map[$K]$V, key: $K, value: $V, loc := #caller_location) -> (prev_key: $$deferred_return, value_ptr: $$deferred_return, found_previous: bool) {…}
```

 

Explicitly inserts a key and value into a map `m`, the same as `map_insert`, but the return values differ.
`prev_key` will return the previous pointer of a key if it exists, check `found_previous` if was previously found
`value_ptr` will return the pointer of the memory where the insertion happens, and `nil` if the map failed to resize
`found_previous` will be true a previous key was found

### [mem\_free ¶](#mem_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L142)

```
mem_free :: proc(ptr: rawptr, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [free](/base/runtime/#free)

### [mem\_free\_all ¶](#mem_free_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L167)

```
mem_free_all :: proc(allocator := context.allocator, loc := #caller_location) -> (err: Allocator_Error) {…}
```

##### Related Procedure Groups

* [free\_all](/base/runtime/#free_all)

### [new ¶](#new) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L512)

```
new :: proc($T: typeid, allocator := context.allocator, loc := #caller_location) -> (t: ^typeid, err: Allocator_Error) #optional_ok {…}
```

 

The new built-in procedure allocates memory. The first argument is a type, not a value, and the value
return is a pointer to a newly allocated value of that type using the specified allocator, default is context.allocator

### [new\_clone ¶](#new_clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L523)

```
new_clone :: proc(data: $T, allocator := context.allocator, loc := #caller_location) -> (t: $$deferred_return, err: Allocator_Error) {…}
```

### [non\_zero\_append\_elem ¶](#non_zero_append_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L750)

```
non_zero_append_elem :: proc(array: ^$T/[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`non_zero_append_elem` appends an element to the end of a dynamic array, without zeroing any reserved memory

Note: Prefer using the procedure group `non\_zero\_append




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_elem\_fixed\_capacity\_string ¶](#non_zero_append_elem_fixed_capacity_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L839)

```
non_zero_append_elem_fixed_capacity_string :: proc "contextless" (array: ^$T/[dynamic; $N]$E/u8, arg: $A/string) -> (n: int) {…}
```

 

`non_zero_append_elem_fixed_capacity_string` appends a string to the end of a dynamic array of bytes, without zeroing any reserved memory

Note: Prefer using the procedure group `non_zero_append`.




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_elem\_string ¶](#non_zero_append_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L831)

```
non_zero_append_elem_string :: proc(array: ^$T/[dynamic]$E/u8, arg: $A/string, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`non_zero_append_elem_string` appends a string to the end of a dynamic array of bytes, without zeroing any reserved memory

Note: Prefer using the procedure group `non_zero_append`.




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_elems ¶](#non_zero_append_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L805)

```
non_zero_append_elems :: proc(array: ^$T/[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`non_zero_append_elems` appends `args` to the end of a dynamic array, without zeroing any reserved memory

Note: Prefer using the procedure group `non\_zero\_append




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_soa\_elem ¶](#non_zero_append_soa_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L380)

```
non_zero_append_soa_elem :: proc(array: ^$T/#soa[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_soa\_elems ¶](#non_zero_append_soa_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L437)

```
non_zero_append_soa_elems :: proc(array: ^$T/#soa[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_reserve\_dynamic\_array ¶](#non_zero_reserve_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1330)

```
non_zero_reserve_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`non_zero_reserve_dynamic_array` will try to reserve memory of a passed dynamic array or map to the requested element count (setting the `cap`).

When a memory resize allocation is required, the memory will be asked to not be zeroed (i.e. it calls `non_zero_mem_resize`).

Note: Prefer the procedure group `non_zero_reserve`.




##### Related Procedure Groups

* [non\_zero\_reserve](/base/runtime/#non_zero_reserve)

### [non\_zero\_reserve\_soa ¶](#non_zero_reserve_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L227)

```
non_zero_reserve_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [non\_zero\_reserve](/base/runtime/#non_zero_reserve)

### [non\_zero\_resize\_dynamic\_array ¶](#non_zero_resize_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1391)

```
non_zero_resize_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`non_zero_resize_dynamic_array` will try to resize memory of a passed dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

When a memory resize allocation is required, the memory will be asked to not be zeroed (i.e. it calls `non_zero_mem_resize`).

Note: Prefer the procedure group `non_zero_resize`




##### Related Procedure Groups

* [non\_zero\_resize](/base/runtime/#non_zero_resize)

### [non\_zero\_resize\_fixed\_capacity\_dynamic\_array ¶](#non_zero_resize_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1422)

```
non_zero_resize_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int length: int) -> bool {…}
```

 

`non_zero_resize_fixed_capacity_dynamic_array` will try to resize memory of a passed fixed capacity dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

Note: Prefer the procedure group `resize`




##### Related Procedure Groups

* [non\_zero\_resize](/base/runtime/#non_zero_resize)

### [non\_zero\_resize\_soa ¶](#non_zero_resize_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L211)

```
non_zero_resize_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [non\_zero\_resize](/base/runtime/#non_zero_resize)

### [ordered\_remove\_dynamic\_array ¶](#ordered_remove_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L143)

```
ordered_remove_dynamic_array :: proc(array: ^$D/[dynamic]$T, #any_int index: int, loc := #caller_location) {…}
```

 

`ordered_remove_dynamic_array` removed the element at the specified `index` whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the elements do not have to remain in their order, prefer `unordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [ordered\_remove](/base/runtime/#ordered_remove)

### [ordered\_remove\_fixed\_capacity\_dynamic\_array ¶](#ordered_remove_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L188)

```
ordered_remove_fixed_capacity_dynamic_array :: proc(array: ^$D/[dynamic; $N]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`ordered_remove_fixed_capacity_dynamic_array` removed the element at the specified `index` whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the elements do not have to remain in their order, prefer `unordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [ordered\_remove](/base/runtime/#ordered_remove)

### [ordered\_remove\_soa ¶](#ordered_remove_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L718)

```
ordered_remove_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`ordered_remove_soa` removed the element at the specified `index` whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If you the elements do not have to remain in their order, prefer `unordered_remove_soa`.
Note: If the index is out of bounds, this procedure will panic.

### [panic ¶](#panic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1575)

```
panic :: proc(message: string, loc := #caller_location) -> ! {…}
```

 

Panics the program with a message.
This uses the `context.assertion_failure_procedure` to panic.

### [panic\_contextless ¶](#panic_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1630)

```
panic_contextless :: proc "contextless" (message: string, loc := #caller_location) -> ! {…}
```

 

Panics the program with a message to indicate something has yet to be implemented.
This uses the `default_assertion_contextless_failure_proc` to assert.

### [pop\_dynamic\_array ¶](#pop_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L237)

```
pop_dynamic_array :: proc(array: ^$T/[dynamic]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_dynamic_array` will remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array has no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop](/base/runtime/#pop)

### [pop\_fixed\_capacity\_dynamic\_array ¶](#pop_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L254)

```
pop_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_fixed_capacity_dynamic_array` will remove and return the end value of fixed capacity dynamic array `array` and reduces the length of `array` by 1.

Note: If the fixed capacity dynamic array has no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop](/base/runtime/#pop)

### [pop\_front\_dynamic\_array ¶](#pop_front_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L311)

```
pop_front_dynamic_array :: proc(array: ^$T/[dynamic]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_front_dynamic_array` will remove and return the first value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array as no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop\_front](/base/runtime/#pop_front)

### [pop\_front\_fixed\_capacity\_dynamic\_array ¶](#pop_front_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L325)

```
pop_front_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_front_fixed_capacity_dynamic_array` will remove and return the first value of fixed capacity dynamic array `array` and reduces the length of `array` by 1.

Note: If the fixed capacity dynamic array as no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop\_front](/base/runtime/#pop_front)

### [pop\_front\_safe\_dynamic\_array ¶](#pop_front_safe_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L349)

```
pop_front_safe_dynamic_array :: proc "contextless" (array: ^$T/[dynamic]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_front_safe_dynamic_array` trys to return and remove the first value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_front\_safe](/base/runtime/#pop_front_safe)

### [pop\_front\_safe\_fixed\_capacity\_dynamic\_array ¶](#pop_front_safe_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L364)

```
pop_front_safe_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_front_safe_fixed_capacity_dynamic_array` trys to return and remove the first value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_front\_safe](/base/runtime/#pop_front_safe)

### [pop\_safe\_dynamic\_array ¶](#pop_safe_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L277)

```
pop_safe_dynamic_array :: proc "contextless" (array: ^$T/[dynamic]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_safe_dynamic_array` trys to remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_safe](/base/runtime/#pop_safe)

### [pop\_safe\_fixed\_capacity\_dynamic\_array ¶](#pop_safe_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L289)

```
pop_safe_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_safe_fixed_capacity_dynamic_array` trys to remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_safe](/base/runtime/#pop_safe)

### [raw\_soa\_footer\_dynamic\_array ¶](#raw_soa_footer_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L63)

```
raw_soa_footer_dynamic_array :: proc(array: ^$T/#soa[dynamic]$E) -> (footer: ^Raw_SOA_Footer_Dynamic_Array) {…}
```

##### Related Procedure Groups

* [raw\_soa\_footer](/base/runtime/#raw_soa_footer)

### [raw\_soa\_footer\_slice ¶](#raw_soa_footer_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L54)

```
raw_soa_footer_slice :: proc(array: ^$T/#soa[]$E) -> (footer: ^Raw_SOA_Footer_Slice) {…}
```

##### Related Procedure Groups

* [raw\_soa\_footer](/base/runtime/#raw_soa_footer)

### [remove\_range\_dynamic\_array ¶](#remove_range_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L156)

```
remove_range_dynamic_array :: proc(array: ^$D/[dynamic]$T, #any_int lo, #any_int hi: int, loc := #caller_location) {…}
```

 

`remove_range_dynamic_array` removes a range of elements specified by the range `lo` and `hi`, whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the range is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [remove\_range](/base/runtime/#remove_range)

### [remove\_range\_fixed\_capacity\_dynamic\_array ¶](#remove_range_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L201)

```
remove_range_fixed_capacity_dynamic_array :: proc(array: ^$D/[dynamic; $N]$E, #any_int lo, #any_int hi: int, loc := #caller_location) {…}
```

 

`remove_range_fixed_capacity_dynamic_array` removes a range of elements specified by the range `lo` and `hi`, whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the range is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [remove\_range](/base/runtime/#remove_range)

### [reserve\_dynamic\_array ¶](#reserve_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1320)

```
reserve_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`reserve_dynamic_array` will try to reserve memory of a passed dynamic array or map to the requested element count (setting the `cap`).

When a memory resize allocation is required, the memory will be asked to be zeroed (i.e. it calls `mem_resize`).

Note: Prefer the procedure group `reserve`.




##### Related Procedure Groups

* [reserve](/base/runtime/#reserve)

### [reserve\_map ¶](#reserve_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L679)

```
reserve_map :: proc(m: ^$T/map[$K]$V, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`reserve_map` will try to reserve memory of a passed map to the requested element count (setting the `cap`).

Note: Prefer the procedure group `reserve`




##### Related Procedure Groups

* [reserve](/base/runtime/#reserve)

### [reserve\_soa ¶](#reserve_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L222)

```
reserve_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [reserve](/base/runtime/#reserve)

### [resize\_dynamic\_array ¶](#resize_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1381)

```
resize_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`resize_dynamic_array` will try to resize memory of a passed dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

When a memory resize allocation is required, the memory will be asked to be zeroed (i.e. it calls `mem_resize`).

Note: Prefer the procedure group `resize`




##### Related Procedure Groups

* [resize](/base/runtime/#resize)

### [resize\_fixed\_capacity\_dynamic\_array ¶](#resize_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1401)

```
resize_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int length: int) -> bool {…}
```

 

`resize_fixed_capacity_dynamic_array` will try to resize memory of a passed fixed capacity dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

Note: Prefer the procedure group `resize`




##### Related Procedure Groups

* [resize](/base/runtime/#resize)

### [resize\_soa ¶](#resize_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L177)

```
resize_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [resize](/base/runtime/#resize)

### [shrink\_dynamic\_array ¶](#shrink_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1442)

```
shrink_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int new_cap: int = -1, loc := #caller_location) -> (did_shrink: bool, err: Allocator_Error) {…}
```

 

Shrinks the capacity of a dynamic array down to the current length, or the given capacity.

If `new_cap` is negative, then `len(array)` is used.

Returns false if `cap(array) < new_cap`, or the allocator report failure.

If `len(array) < new_cap`, then `len(array)` will be left unchanged.

Note: Prefer the procedure group `shrink`




##### Related Procedure Groups

* [shrink](/base/runtime/#shrink)

### [shrink\_map ¶](#shrink_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L687)

```
shrink_map :: proc(m: ^$T/map[$K]$V, loc := #caller_location) -> (did_shrink: bool, err: Allocator_Error) {…}
```

 

Shrinks the capacity of a map down to the current length.

Note: Prefer the procedure group `shrink`




##### Related Procedure Groups

* [shrink](/base/runtime/#shrink)

### [unimplemented ¶](#unimplemented) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1586)

```
unimplemented :: proc(message: string = "", loc := #caller_location) -> ! {…}
```

 

Panics the program with a message to indicate something has yet to be implemented.
This uses the `context.assertion_failure_procedure` to assert.

### [unimplemented\_contextless ¶](#unimplemented_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1637)

```
unimplemented_contextless :: proc "contextless" (message: string = "", loc := #caller_location) -> ! {…}
```

 

Panics the program with a message.
This uses the `default_assertion_contextless_failure_proc` to assert.

### [unordered\_remove\_dynamic\_array ¶](#unordered_remove_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L129)

```
unordered_remove_dynamic_array :: proc(array: ^$D/[dynamic]$T, #any_int index: int, loc := #caller_location) {…}
```

 

`unordered_remove_dynamic_array` removed the element at the specified `index`. It does so by replacing the current end value
with the old value, and reducing the length of the dynamic array by 1.

Note: This is an O(1) operation.
Note: If you want the elements to remain in their order, use `ordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [unordered\_remove](/base/runtime/#unordered_remove)

### [unordered\_remove\_fixed\_capacity\_dynamic\_array ¶](#unordered_remove_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L174)

```
unordered_remove_fixed_capacity_dynamic_array :: proc(array: ^$D/[dynamic; $N]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`unordered_remove_fixed_capacity_dynamic_array` removed the element at the specified `index`. It does so by replacing the current end value
with the old value, and reducing the length of the dynamic array by 1.

Note: This is an O(1) operation.
Note: If you want the elements to remain in their order, use `ordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [unordered\_remove](/base/runtime/#unordered_remove)

### [unordered\_remove\_soa ¶](#unordered_remove_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L690)

```
unordered_remove_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`unordered_remove_soa` removed the element at the specified `index`. It does so by replacing the current end value
with the old value, and reducing the length of the dynamic array by 1.

Note: This is an O(1) operation.
Note: If you the elements to remain in their order, use `ordered_remove_soa`.
Note: If the index is out of bounds, this procedure will panic.

## Procedure Groups

### [append ¶](#append) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L914)

```
append :: proc{
	append_elem,
	append_elems,
	append_elem_string,
	append_fixed_capacity_elem,
	append_fixed_capacity_elems,
	append_fixed_capacity_string,
	append_soa_elem,
	append_soa_elems,
}
```

 

The append built-in procedure appends elements to the end of a dynamic array

### [append\_nothing ¶](#append_nothing) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L970)

```
append_nothing :: proc{
	append_nothing_dynamic_array,
	append_nothing_fixed_capacity_dynamic_array,
}
```

 

`append_nothing` appends an empty value to a dynamic array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.

### [append\_soa ¶](#append_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L498)

```
append_soa :: proc{
	append_soa_elem,
	append_soa_elems,
}
```

 

The append\_soa built-in procedure appends elements to the end of an #soa dynamic array

### [assign\_at ¶](#assign_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1244)

```
assign_at :: proc{
	assign_at_elem,
	assign_at_elems,
	assign_at_elem_string,
	assign_at_elem_fixed_capacity_dynamic_array,
	assign_at_elems_fixed_capacity_dynamic_array,
	assign_at_elem_string_fixed_capacity_dynamic_array,
}
```

 

`assign_at` assigns a value at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+size_needed` and then assign as `index`.

### [clear ¶](#clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L388)

```
clear :: proc{
	clear_dynamic_array,
	clear_map,
	clear_fixed_capacity_dynamic_array,
	clear_soa_dynamic_array,
}
```

 

`clear` will set the length of a passed dynamic array or map to `0`

### [clear\_soa ¶](#clear_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L658)

```
clear_soa :: proc{
	clear_soa_dynamic_array,
}
```

### [copy ¶](#copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L118)

```
copy :: proc{
	copy_slice,
	copy_from_string,
	copy_from_string16,
}
```

 

`copy` is a built-in procedure that copies elements from a source slice/string `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

### [delete ¶](#delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L496)

```
delete :: proc{
	delete_string,
	delete_cstring,
	delete_dynamic_array,
	delete_slice,
	delete_map,
	delete_soa_slice,
	delete_soa_dynamic_array,
	delete_string16,
	delete_cstring16,
}
```

 

`delete` will try to free the underlying data of the passed built-in data structure (string, cstring, dynamic array, slice, or map), with the given `allocator` if the allocator supports this operation.

Note: Prefer `delete` over the specific `delete_*` procedures where possible.

### [delete\_soa ¶](#delete_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L643)

```
delete_soa :: proc{
	delete_soa_slice,
	delete_soa_dynamic_array,
}
```

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L438)

```
free :: proc{
	mem_free,
}
```

 

`free` will try to free the passed pointer, with the given `allocator` if the allocator supports this operation.

### [free\_all ¶](#free_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L442)

```
free_all :: proc{
	mem_free_all,
}
```

 

`free_all` will try to free/reset all of the memory of the given `allocator` if the allocator supports this operation.

### [inject\_at ¶](#inject_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1123)

```
inject_at :: proc{
	inject_at_elem,
	inject_at_elems,
	inject_at_elem_string,
	inject_at_elem_fixed_capacity_dynamic_array,
	inject_at_elems_fixed_capacity_dynamic_array,
	inject_at_elem_string_fixed_capacity_dynamic_array,
}
```

 

`inject_at` injects something into a dynamic array at a specified index and moves the previous elements after that index "across"

### [inject\_at\_soa ¶](#inject_at_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L616)

```
inject_at_soa :: proc{
	inject_at_elem_soa,
	inject_at_elems_soa,
}
```

 

`inject_at_soa` injects something into a dynamic SOA array at a specified index and moves the previous elements after that index "across"

### [make ¶](#make) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L647)

```
make :: proc{
	make_slice,
	make_dynamic_array,
	make_dynamic_array_len,
	make_dynamic_array_len_cap,
	make_map,
	make_map_cap,
	make_multi_pointer,
	make_soa_slice,
	make_soa_dynamic_array,
	make_soa_dynamic_array_len,
	make_soa_dynamic_array_len_cap,
}
```

 

`make` built-in procedure allocates and initializes a value of type slice, dynamic array, map, or multi-pointer (only).

Similar to `new`, the first argument is a type, not a value. Unlike new, make's return type is the same as the
type of its argument, not a pointer to it.
Make uses the specified allocator, default is context.allocator.

### [make\_soa ¶](#make_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L168)

```
make_soa :: proc{
	make_soa_slice,
	make_soa_dynamic_array,
	make_soa_dynamic_array_len,
	make_soa_dynamic_array_len_cap,
}
```

### [non\_zero\_append ¶](#non_zero_append) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L928)

```
non_zero_append :: proc{
	non_zero_append_elem,
	non_zero_append_elems,
	non_zero_append_elem_string,
	append_fixed_capacity_elem,
	append_fixed_capacity_elems,
	non_zero_append_elem_fixed_capacity_string,
	non_zero_append_soa_elem,
	non_zero_append_soa_elems,
}
```

### [non\_zero\_reserve ¶](#non_zero_reserve) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L406)

```
non_zero_reserve :: proc{
	non_zero_reserve_dynamic_array,
	non_zero_reserve_soa,
}
```

### [non\_zero\_resize ¶](#non_zero_resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L422)

```
non_zero_resize :: proc{
	non_zero_resize_dynamic_array,
	non_zero_resize_fixed_capacity_dynamic_array,
	non_zero_resize_soa,
}
```

### [ordered\_remove ¶](#ordered_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L220)

```
ordered_remove :: proc{
	ordered_remove_dynamic_array,
	ordered_remove_fixed_capacity_dynamic_array,
}
```

### [pop ¶](#pop) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L269)

```
pop :: proc{
	pop_dynamic_array,
	pop_fixed_capacity_dynamic_array,
}
```

 

`pop` will remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array has no elements (`len(array) == 0`), this procedure will panic.

### [pop\_front ¶](#pop_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L340)

```
pop_front :: proc{
	pop_front_dynamic_array,
	pop_front_fixed_capacity_dynamic_array,
}
```

 

`pop_front` will remove and return the first value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array as no elements (`len(array) == 0`), this procedure will panic.

### [pop\_front\_safe ¶](#pop_front_safe) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L379)

```
pop_front_safe :: proc{
	pop_front_safe_dynamic_array,
	pop_front_safe_fixed_capacity_dynamic_array,
}
```

 

`pop_front_safe` trys to return and remove the first value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.

### [pop\_safe ¶](#pop_safe) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L301)

```
pop_safe :: proc{
	pop_safe_dynamic_array,
	pop_safe_fixed_capacity_dynamic_array,
}
```

 

`pop_safe` trys to remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.

### [remove\_range ¶](#remove_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L226)

```
remove_range :: proc{
	remove_range_dynamic_array,
	remove_range_fixed_capacity_dynamic_array,
}
```

### [reserve ¶](#reserve) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L398)

```
reserve :: proc{
	reserve_dynamic_array,
	reserve_map,
	reserve_soa,
}
```

 

`reserve` will try to reserve memory of a passed dynamic array or map to the requested element count (setting the `cap`).

### [resize ¶](#resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L414)

```
resize :: proc{
	resize_dynamic_array,
	resize_fixed_capacity_dynamic_array,
	resize_soa,
}
```

 

`resize` will try to resize memory of a passed dynamic array to the requested element count (setting the `len`, and possibly `cap`).

### [shrink ¶](#shrink) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L431)

```
shrink :: proc{
	shrink_dynamic_array,
	shrink_map,
}
```

 

Shrinks the capacity of a dynamic array or map down to the current length, or the given capacity.

### [unordered\_remove ¶](#unordered_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L213)

```
unordered_remove :: proc{
	unordered_remove_dynamic_array,
	unordered_remove_fixed_capacity_dynamic_array,
}
```

* [Overview](#pkg-overview)
* [Constants](#pkg-Constants)
  + [ODIN\_ARCH](#ODIN_ARCH)
  + [ODIN\_BUILD\_MODE](#ODIN_BUILD_MODE)
  + [ODIN\_COMPILE\_TIMESTAMP](#ODIN_COMPILE_TIMESTAMP)
  + [ODIN\_DEBUG](#ODIN_DEBUG)
  + [ODIN\_DEFAULT\_TO\_NIL\_ALLOCATOR](#ODIN_DEFAULT_TO_NIL_ALLOCATOR)
  + [ODIN\_DEFAULT\_TO\_PANIC\_ALLOCATOR](#ODIN_DEFAULT_TO_PANIC_ALLOCATOR)
  + [ODIN\_DISABLE\_ASSERT](#ODIN_DISABLE_ASSERT)
  + [ODIN\_ENDIAN](#ODIN_ENDIAN)
  + [ODIN\_ERROR\_POS\_STYLE](#ODIN_ERROR_POS_STYLE)
  + [ODIN\_NO\_CRT](#ODIN_NO_CRT)
  + [ODIN\_NO\_ENTRY\_POINT](#ODIN_NO_ENTRY_POINT)
  + [ODIN\_NO\_RTTI](#ODIN_NO_RTTI)
  + [ODIN\_OS](#ODIN_OS)
  + [ODIN\_PLATFORM\_SUBTARGET](#ODIN_PLATFORM_SUBTARGET)
  + [ODIN\_ROOT](#ODIN_ROOT)
  + [ODIN\_VENDOR](#ODIN_VENDOR)
  + [ODIN\_VERSION](#ODIN_VERSION)
  + [ODIN\_WINDOWS\_SUBSYSTEM](#ODIN_WINDOWS_SUBSYSTEM)
  + [false](#false)
  + [nil](#nil)
  + [true](#true)
* [Types](#pkg-Types)
  + [any](#any)
  + [b16](#b16)
  + [b32](#b32)
  + [b64](#b64)
  + [b8](#b8)
  + [bool](#bool)
  + [byte](#byte)
  + [complex128](#complex128)
  + [complex32](#complex32)
  + [complex64](#complex64)
  + [cstring](#cstring)
  + [cstring16](#cstring16)
  + [f16](#f16)
  + [f16be](#f16be)
  + [f16le](#f16le)
  + [f32](#f32)
  + [f32be](#f32be)
  + [f32le](#f32le)
  + [f64](#f64)
  + [f64be](#f64be)
  + [f64le](#f64le)
  + [i128](#i128)
  + [i128be](#i128be)
  + [i128le](#i128le)
  + [i16](#i16)
  + [i16be](#i16be)
  + [i16le](#i16le)
  + [i32](#i32)
  + [i32be](#i32be)
  + [i32le](#i32le)
  + [i64](#i64)
  + [i64be](#i64be)
  + [i64le](#i64le)
  + [i8](#i8)
  + [int](#int)
  + [quaternion128](#quaternion128)
  + [quaternion256](#quaternion256)
  + [quaternion64](#quaternion64)
  + [rawptr](#rawptr)
  + [rune](#rune)
  + [string](#string)
  + [string16](#string16)
  + [typeid](#typeid)
  + [u128](#u128)
  + [u128be](#u128be)
  + [u128le](#u128le)
  + [u16](#u16)
  + [u16be](#u16be)
  + [u16le](#u16le)
  + [u32](#u32)
  + [u32be](#u32be)
  + [u32le](#u32le)
  + [u64](#u64)
  + [u64be](#u64be)
  + [u64le](#u64le)
  + [u8](#u8)
  + [uint](#uint)
  + [uintptr](#uintptr)
* [Procedures](#pkg-Procedures)
  + [abs](#abs)
  + [align\_of](#align_of)
  + [cap](#cap)
  + [clamp](#clamp)
  + [complex](#complex)
  + [compress\_values](#compress_values)
  + [conj](#conj)
  + [expand\_values](#expand_values)
  + [imag](#imag)
  + [jmag](#jmag)
  + [kmag](#kmag)
  + [len](#len)
  + [max](#max)
  + [min](#min)
  + [offset\_of](#offset_of)
  + [offset\_of\_by\_string](#offset_of_by_string)
  + [offset\_of\_member](#offset_of_member)
  + [offset\_of\_selector](#offset_of_selector)
  + [quaternion](#quaternion)
  + [raw\_data](#raw_data)
  + [real](#real)
  + [size\_of](#size_of)
  + [soa\_unzip](#soa_unzip)
  + [soa\_zip](#soa_zip)
  + [swizzle](#swizzle)
  + [type\_info\_of](#type_info_of)
  + [type\_of](#type_of)
  + [typeid\_of](#typeid_of)
* [Procedure Groups](#pkg-Procedure Groups)
  + [append](#append)
  + [append\_nothing](#append_nothing)
  + [append\_soa](#append_soa)
  + [assign\_at](#assign_at)
  + [clear](#clear)
  + [clear\_soa](#clear_soa)
  + [copy](#copy)
  + [delete](#delete)
  + [delete\_soa](#delete_soa)
  + [free](#free)
  + [free\_all](#free_all)
  + [inject\_at](#inject_at)
  + [inject\_at\_soa](#inject_at_soa)
  + [make](#make)
  + [make\_soa](#make_soa)
  + [non\_zero\_append](#non_zero_append)
  + [non\_zero\_reserve](#non_zero_reserve)
  + [non\_zero\_resize](#non_zero_resize)
  + [ordered\_remove](#ordered_remove)
  + [pop](#pop)
  + [pop\_front](#pop_front)
  + [pop\_front\_safe](#pop_front_safe)
  + [pop\_safe](#pop_safe)
  + [remove\_range](#remove_range)
  + [reserve](#reserve)
  + [resize](#resize)
  + [shrink](#shrink)
  + [unordered\_remove](#unordered_remove)



[![Odin](https://odin-lang.org/logo.svg)](https://odin-lang.org)

The Data-Oriented Language for Sane Software Development.

#### Resources

* [Docs](https://odin-lang.org/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](https://odin-lang.org/news)


#### Community

* [GitHub](https://github.com/odin-lang/Odin)
* [Forum](https://forum.odin-lang.org)
* [Discord](https://discord.com/invite/sVBPHEv)
* [Twitch](https://www.twitch.tv/ginger_bill)
* [YouTube](https://www.youtube.com/channel/UCUSck1dOH7VKmG4lRW7tZXg)
* [Showcase](https://odin-lang.org/showcase)


#### Contribute

* [Issues](https://github.com/odin-lang/Odin/issues)
* [Donate](https://www.patreon.com/gingerbill)

© 2016–2023 Ginger Bill