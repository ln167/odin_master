package container/bit\_array - pkg.odin-lang.org 






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



Current Package: *[container\_dynamic\_bit\_array](/core/container/bit_array)*

  

#### [core Library](/core)

* [bufio](/core/bufio)
* [bytes](/core/bytes)
* [c](/core/c)
  + [libc](/core/c/libc)
* [compress](/core/compress)
  + [gzip](/core/compress/gzip)
  + [shoco](/core/compress/shoco)
  + [zlib](/core/compress/zlib)
* container
  + [avl](/core/container/avl)
  + [bit\_array](/core/container/bit_array)
  + [handle\_map](/core/container/handle_map)
  + [intrusive/list](/core/container/intrusive/list)
  + [lru](/core/container/lru)
  + [pool](/core/container/pool)
  + [priority\_queue](/core/container/priority_queue)
  + [queue](/core/container/queue)
  + [rbtree](/core/container/rbtree)
  + [small\_array](/core/container/small_array)
  + [topological\_sort](/core/container/topological_sort)
  + [xar](/core/container/xar)
* [crypto](/core/crypto)
  + [aead](/core/crypto/aead)
  + [aegis](/core/crypto/aegis)
  + [aes](/core/crypto/aes)
  + [argon2id](/core/crypto/argon2id)
  + [blake2b](/core/crypto/blake2b)
  + [blake2s](/core/crypto/blake2s)
  + [chacha20](/core/crypto/chacha20)
  + [chacha20poly1305](/core/crypto/chacha20poly1305)
  + [deoxysii](/core/crypto/deoxysii)
  + [ecdh](/core/crypto/ecdh)
  + [ecdsa](/core/crypto/ecdsa)
  + [ed25519](/core/crypto/ed25519)
  + [hash](/core/crypto/hash)
  + [hkdf](/core/crypto/hkdf)
  + [hmac](/core/crypto/hmac)
  + [kmac](/core/crypto/kmac)
  + [legacy/keccak](/core/crypto/legacy/keccak)
  + [legacy/md5](/core/crypto/legacy/md5)
  + [legacy/sha1](/core/crypto/legacy/sha1)
  + [pbkdf2](/core/crypto/pbkdf2)
  + [poly1305](/core/crypto/poly1305)
  + [ristretto255](/core/crypto/ristretto255)
  + [sha2](/core/crypto/sha2)
  + [sha3](/core/crypto/sha3)
  + [shake](/core/crypto/shake)
  + [sm3](/core/crypto/sm3)
  + [tuplehash](/core/crypto/tuplehash)
  + [x25519](/core/crypto/x25519)
  + [x448](/core/crypto/x448)
* debug
  + [pe](/core/debug/pe)
  + [trace](/core/debug/trace)
* [dynlib](/core/dynlib)
* encoding
  + [base32](/core/encoding/base32)
  + [base64](/core/encoding/base64)
  + [cbor](/core/encoding/cbor)
  + [csv](/core/encoding/csv)
  + [endian](/core/encoding/endian)
  + [entity](/core/encoding/entity)
  + [hex](/core/encoding/hex)
  + [hxa](/core/encoding/hxa)
  + [ini](/core/encoding/ini)
  + [json](/core/encoding/json)
  + [uuid](/core/encoding/uuid)
  + [uuid/legacy](/core/encoding/uuid/legacy)
  + [varint](/core/encoding/varint)
  + [xml](/core/encoding/xml)
* [flags](/core/flags)
* [fmt](/core/fmt)
* [hash](/core/hash)
  + [xxhash](/core/hash/xxhash)
* [image](/core/image)
  + [bmp](/core/image/bmp)
  + [jpeg](/core/image/jpeg)
  + [netpbm](/core/image/netpbm)
  + [png](/core/image/png)
  + [qoi](/core/image/qoi)
  + [tga](/core/image/tga)
* [io](/core/io)
* [log](/core/log)
* [math](/core/math)
  + [big](/core/math/big)
  + [bits](/core/math/bits)
  + [cmplx](/core/math/cmplx)
  + [ease](/core/math/ease)
  + [fixed](/core/math/fixed)
  + [linalg](/core/math/linalg)
  + [linalg/glsl](/core/math/linalg/glsl)
  + [linalg/hlsl](/core/math/linalg/hlsl)
  + [noise](/core/math/noise)
  + [rand](/core/math/rand)
* [mem](/core/mem)
  + [tlsf](/core/mem/tlsf)
  + [virtual](/core/mem/virtual)
* [nbio](/core/nbio)
* [net](/core/net)
* odin
  + [ast](/core/odin/ast)
  + [doc-format](/core/odin/doc-format)
  + [parser](/core/odin/parser)
  + [tokenizer](/core/odin/tokenizer)
* [os](/core/os)
  + [old](/core/os/old)
* path
  + [filepath](/core/path/filepath)
  + [slashpath](/core/path/slashpath)
* prof
  + [spall](/core/prof/spall)
* [reflect](/core/reflect)
* [relative](/core/relative)
* [simd](/core/simd)
  + [x86](/core/simd/x86)
* [slice](/core/slice)
  + [heap](/core/slice/heap)
* [sort](/core/sort)
* [strconv](/core/strconv)
  + [decimal](/core/strconv/decimal)
* [strings](/core/strings)
* [sync](/core/sync)
  + [chan](/core/sync/chan)
* sys
  + [darwin](/core/sys/darwin)
  + [darwin/CoreFoundation](/core/sys/darwin/CoreFoundation)
  + [darwin/CoreGraphics](/core/sys/darwin/CoreGraphics)
  + [darwin/Foundation](/core/sys/darwin/Foundation)
  + [darwin/Security](/core/sys/darwin/Security)
  + [freebsd](/core/sys/freebsd)
  + [haiku](/core/sys/haiku)
  + [info](/core/sys/info)
  + [kqueue](/core/sys/kqueue)
  + [linux](/core/sys/linux)
  + [linux/uring](/core/sys/linux/uring)
  + [orca](/core/sys/orca)
  + [posix](/core/sys/posix)
  + [unix](/core/sys/unix)
  + [valgrind](/core/sys/valgrind)
  + [wasm/js](/core/sys/wasm/js)
  + [wasm/wasi](/core/sys/wasm/wasi)
  + [windows](/core/sys/windows)
* [terminal](/core/terminal)
  + [ansi](/core/terminal/ansi)
* [testing](/core/testing)
* text
  + [edit](/core/text/edit)
  + [i18n](/core/text/i18n)
  + [match](/core/text/match)
  + [regex](/core/text/regex)
  + [regex/common](/core/text/regex/common)
  + [regex/compiler](/core/text/regex/compiler)
  + [regex/optimizer](/core/text/regex/optimizer)
  + [regex/parser](/core/text/regex/parser)
  + [regex/tokenizer](/core/text/regex/tokenizer)
  + [regex/virtual\_machine](/core/text/regex/virtual_machine)
  + [scanner](/core/text/scanner)
  + [table](/core/text/table)
* [thread](/core/thread)
* [time](/core/time)
* [unicode](/core/unicode)
  + [utf16](/core/unicode/utf16)
  + [utf8](/core/unicode/utf8)
  + [utf8/utf8string](/core/unicode/utf8/utf8string)

1. [core](/core)
2. container
3. [bit\_array](/core/container/bit_array)

# package core:container/bit\_array [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A dynamically-sized array of bits.

The Bit Array can be used in several ways:

By default you don't need to instantiate a `Bit_Array`.

**Example:**

```
package test

import "core:fmt"
import "core:container/bit_array"

main :: proc() {
	using bit_array

	bits: Bit_Array

	// returns `true`
	fmt.println(set(&bits, 42))

	// returns `false`, `false`, because this Bit Array wasn't created to allow negative indices.
	was_set, was_retrieved := get(&bits, -1)
	fmt.println(was_set, was_retrieved)
	destroy(&bits)
}
```

A `Bit_Array` can optionally allow for negative indices, if the minimum value was given during creation.

**Example:**

```
package test

import "core:fmt"
import "core:container/bit_array"

main :: proc() {
	Foo :: enum int {
		Negative_Test = -42,
		Bar           = 420,
		Leaves        = 69105,
	}

	using bit_array

	bits := create(int(max(Foo)), int(min(Foo)))
	defer destroy(bits)

	fmt.printf("Set(Bar):           %v\n",     set(bits, Foo.Bar))
	fmt.printf("Get(Bar):           %v, %v\n", get(bits, Foo.Bar))
	fmt.printf("Set(Negative_Test): %v\n",     set(bits, Foo.Negative_Test))
	fmt.printf("Get(Leaves):        %v, %v\n", get(bits, Foo.Leaves))
	fmt.printf("Get(Negative_Test): %v, %v\n", get(bits, Foo.Negative_Test))
	fmt.printf("Freed.\n")
}
```

## Index

Types (2)

* [Bit\_Array](#Bit_Array)
* [Bit\_Array\_Iterator](#Bit_Array_Iterator)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (16)

* [clear](#clear)
* [create](#create)
* [destroy](#destroy)
* [get](#get)
* [init](#init)
* [iterate\_by\_all](#iterate_by_all)
* [iterate\_by\_set](#iterate_by_set)
* [iterate\_by\_unset](#iterate_by_unset)
* [len](#len)
* [make\_iterator](#make_iterator)
* [set](#set)
* [shrink](#shrink)
* [unsafe\_get](#unsafe_get)
* [unsafe\_set](#unsafe_set)
* [unsafe\_unset](#unsafe_unset)
* [unset](#unset)

Procedure Groups (0)

This section is empty.

## Types

### [Bit\_Array ¶](#Bit_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L18)

```
Bit_Array :: struct {
	bits:         [dynamic]u64,
	bias:         int,
	length:       int,
	free_pointer: bool,
}
```

##### Related Procedures With Parameters

* [clear](/core/container/bit_array/#clear)
* [destroy](/core/container/bit_array/#destroy)
* [get](/core/container/bit_array/#get)
* [init](/core/container/bit_array/#init)
* [len](/core/container/bit_array/#len)
* [make\_iterator](/core/container/bit_array/#make_iterator)
* [set](/core/container/bit_array/#set)
* [shrink](/core/container/bit_array/#shrink)
* [unsafe\_get](/core/container/bit_array/#unsafe_get)
* [unsafe\_set](/core/container/bit_array/#unsafe_set)
* [unsafe\_unset](/core/container/bit_array/#unsafe_unset)
* [unset](/core/container/bit_array/#unset)



##### Related Procedures With Returns

* [create](/core/container/bit_array/#create)

### [Bit\_Array\_Iterator ¶](#Bit_Array_Iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L25)

```
Bit_Array_Iterator :: struct {
	array:    ^Bit_Array,
	word_idx: int,
	bit_idx:  uint,
}
```

##### Related Procedures With Parameters

* [iterate\_by\_all](/core/container/bit_array/#iterate_by_all)
* [iterate\_by\_set](/core/container/bit_array/#iterate_by_set)
* [iterate\_by\_unset](/core/container/bit_array/#iterate_by_unset)



##### Related Procedures With Returns

* [make\_iterator](/core/container/bit_array/#make_iterator)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [clear ¶](#clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L329)

```
clear :: proc(ba: ^Bit_Array) {…}
```

 

Sets all values in the Bit\_Array to zero.

**Inputs:**  
ba: The target Bit\_Array

### [create ¶](#create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L278)

```
create :: proc(max_index: int, min_index: int = 0, allocator := context.allocator) -> (res: ^Bit_Array, ok: bool) #optional_ok {…}
```

 

A helper function to create a Bit Array with optional bias, in case your smallest index is non-zero (including negative).

The range of bits created by this procedure is `min_index..<max_index`, and the
array will be able to expand beyond `max_index` if needed.

*Allocates (`new(Bit\_Array) & make(ba.bits)`)*

**Inputs:**  
max\_index: maximum starting index
min\_index: minimum starting index (used as a bias)
allocator: (default is context.allocator)

**Returns:**  
ba: Allocates a bit\_Array, backing data is set to `max-min / 64` indices, rounded up (eg 65 - 0 allocates for [2]u64).

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L381)

```
destroy :: proc(ba: ^Bit_Array) {…}
```

 

Deallocates the Bit\_Array and its backing storage

**Inputs:**  
ba: The target Bit\_Array

### [get ¶](#get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L151)

```
get :: proc(ba: ^Bit_Array, #any_int index: uint) -> (res: bool, ok: bool) #optional_ok {…}
```

 

Gets the state of a bit in the bit-array

**Inputs:**  
ba: Pointer to the Bit\_Array
index: Which bit in the array

**Returns:**  
res: `true` if the bit at `index` is set.
ok: Whether the index was valid. Returns `false` if the index is smaller than the bias.

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L305)

```
init :: proc(res: ^Bit_Array, max_index: int, min_index: int = 0, allocator := context.allocator) -> (ok: bool) {…}
```

 

A helper function to initialize a Bit Array with optional bias, in case your smallest index is non-zero (including negative).

The range of bits created by this procedure is `min_index..<max_index`, and the
array will be able to expand beyond `max_index` if needed.

*Allocates (`make(ba.bits)`)*

**Inputs:**  
max\_index: maximum starting index
min\_index: minimum starting index (used as a bias)
allocator: (default is context.allocator)

### [iterate\_by\_all ¶](#iterate_by_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L53)

```
iterate_by_all :: proc(it: ^Bit_Array_Iterator) -> (set: bool, index: int, ok: bool) {…}
```

 

Returns the next bit, including its set-state. ok=false once exhausted

**Inputs:**  
it: The iterator that holds the state.

**Returns:**  
set: `true` if the bit at `index` is set.
index: The next bit of the Bit\_Array referenced by `it`.
ok: `true` if the iterator can continue, `false` if the iterator is done

### [iterate\_by\_set ¶](#iterate_by_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L78)

```
iterate_by_set :: proc(it: ^Bit_Array_Iterator) -> (index: int, ok: bool) {…}
```

 

Returns the next Set Bit, for example if `0b1010`, then the iterator will return index={1, 3} over two calls.

**Inputs:**  
it: The iterator that holds the state.

**Returns:**  
index: The next *set* bit of the Bit\_Array referenced by `it`.
ok: `true` if the iterator can continue, `false` if the iterator is done

### [iterate\_by\_unset ¶](#iterate_by_unset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L91)

```
iterate_by_unset :: proc(it: ^Bit_Array_Iterator) -> (index: int, ok: bool) {…}
```

 

Returns the next Unset Bit, for example if `0b1010`, then the iterator will return index={0, 2} over two calls.

**Inputs:**  
it: The iterator that holds the state.

**Returns:**  
index: The next *unset* bit of the Bit\_Array referenced by `it`.
ok: `true` if the iterator can continue, `false` if the iterator is done

### [len ¶](#len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L342)

```
len :: proc(ba: ^Bit_Array) -> (length: int) {…}
```

 

Gets the length of set and unset valid bits in the Bit\_Array.

**Inputs:**  
ba: The target Bit\_Array

**Returns:**  
length: The length of valid bits.

### [make\_iterator ¶](#make_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L39)

```
make_iterator :: proc(ba: ^Bit_Array) -> (it: Bit_Array_Iterator) {…}
```

 

Wraps a `Bit_Array` into an Iterator

**Inputs:**  
ba: Pointer to the Bit\_Array

**Returns:**  
it: Iterator struct

### [set ¶](#set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L199)

```
set :: proc(ba: ^Bit_Array, #any_int index: uint, set_to: bool = true, allocator := context.allocator) -> (ok: bool) {…}
```

 

Sets the state of a bit in the bit-array

*Conditionally Allocates (Resizes backing data when `index > len(ba.bits)`)*

**Inputs:**  
ba: Pointer to the Bit\_Array
index: Which bit in the array
set\_to: `true` sets the bit on, `false` to turn it off
allocator: (default is context.allocator)

**Returns:**  
ok: Whether the set was successful, `false` on allocation failure or bad index

### [shrink ¶](#shrink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L352)

```
shrink :: proc(ba: ^Bit_Array) {…}
```

 

Shrinks the Bit\_Array's backing storage to the smallest possible size.

**Inputs:**  
ba: The target Bit\_Array

### [unsafe\_get ¶](#unsafe_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L182)

```
unsafe_get :: proc(ba: ^Bit_Array, #any_int index: uint) -> bool {…}
```

 

Gets the state of a bit in the bit-array

*Bypasses all Checks*

**Inputs:**  
ba: Pointer to the Bit\_Array
index: Which bit in the array

**Returns:**  
`true` if bit is set

### [unsafe\_set ¶](#unsafe_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L230)

```
unsafe_set :: proc(ba: ^Bit_Array, bit: int) {…}
```

 

Sets the state of a bit in the bit-array

*Bypasses all checks*

**Inputs:**  
ba: Pointer to the Bit\_Array
index: Which bit in the array

### [unsafe\_unset ¶](#unsafe_unset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L258)

```
unsafe_unset :: proc(b: ^Bit_Array, bit: int) {…}
```

 

Unsets the state of a bit in the bit-array

*Bypasses all Checks*

**Inputs:**  
ba: Pointer to the Bit\_Array
index: Which bit in the array

### [unset ¶](#unset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin#L246)

```
unset :: proc(ba: ^Bit_Array, #any_int index: uint, allocator := context.allocator) -> (ok: bool) {…}
```

 

Unsets the state of a bit in the bit-array. (Convienence wrapper for `set`)

*Conditionally Allocates (Resizes backing data when `index > len(ba.bits)`)*

**Inputs:**  
ba: Pointer to the Bit\_Array
index: Which bit in the array
allocator: (default is context.allocator)

**Returns:**  
ok: Whether the unset was successful, `false` on allocation failure or bad index

## Procedure Groups

This section is empty.

## Source Files

* [bit\_array.odin](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/bit_array.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/container/bit_array/doc.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.063701400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Bit\_Array](#Bit_Array)
    + [Bit\_Array\_Iterator](#Bit_Array_Iterator)
  * [Procedures](#pkg-Procedures)
    + [clear](#clear)
    + [create](#create)
    + [destroy](#destroy)
    + [get](#get)
    + [init](#init)
    + [iterate\_by\_all](#iterate_by_all)
    + [iterate\_by\_set](#iterate_by_set)
    + [iterate\_by\_unset](#iterate_by_unset)
    + [len](#len)
    + [make\_iterator](#make_iterator)
    + [set](#set)
    + [shrink](#shrink)
    + [unsafe\_get](#unsafe_get)
    + [unsafe\_set](#unsafe_set)
    + [unsafe\_unset](#unsafe_unset)
    + [unset](#unset)
  * [Source Files](#pkg-source-files)



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