package strconv/decimal - pkg.odin-lang.org 






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



Current Package: *[strconv\_decimal](/core/strconv/decimal)*

  

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
2. [strconv](/core/strconv)
3. [decimal](/core/strconv/decimal)

# package core:strconv/decimal [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Multiple precision decimal numbers for use by the `strconv` package.

NOTE: This is only for floating point printing and nothing else.

## Index

Types (1)

* [Decimal](#Decimal)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (13)

* [assign](#assign)
* [can\_round\_up](#can_round_up)
* [decimal\_to\_string](#decimal_to_string)
* [println](#println)
* [round](#round)
* [round\_down](#round_down)
* [round\_up](#round_up)
* [rounded\_integer](#rounded_integer)
* [set](#set)
* [shift](#shift)
* [shift\_left](#shift_left)
* [shift\_right](#shift_right)
* [trim](#trim)

Procedure Groups (0)

This section is empty.

## Types

### [Decimal ¶](#Decimal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L6)

```
Decimal :: struct {
	digits:        [384]u8,
	// big-endian digits
	count:         int,
	decimal_point: int,
	neg:           bool,
	trunc:         bool,
}
```

##### Related Procedures With Parameters

* [assign](/core/strconv/decimal/#assign)
* [can\_round\_up](/core/strconv/decimal/#can_round_up)
* [decimal\_to\_string](/core/strconv/decimal/#decimal_to_string)
* [round](/core/strconv/decimal/#round)
* [round\_down](/core/strconv/decimal/#round_down)
* [round\_up](/core/strconv/decimal/#round_up)
* [rounded\_integer](/core/strconv/decimal/#rounded_integer)
* [set](/core/strconv/decimal/#set)
* [shift](/core/strconv/decimal/#shift)
* [shift\_left](/core/strconv/decimal/#shift_left)
* [shift\_right](/core/strconv/decimal/#shift_right)
* [trim](/core/strconv/decimal/#trim)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [assign ¶](#assign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L174)

```
assign :: proc(a: ^Decimal, idx: u64) {…}
```

 

Converts a given u64 integer `idx` to its Decimal representation in the provided Decimal struct.

**Used for internal Decimal Operations.**

**Inputs**
a: Where the result will be stored
idx: The value to be assigned to the Decimal

### [can\_round\_up ¶](#can_round_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L445)

```
can_round_up :: proc(a: ^Decimal, nd: int) -> bool {…}
```

 

Determines if the Decimal can be rounded up at the given digit index

**Inputs**
a: The Decimal to check
nd: The digit index to consider for rounding up

**Returns** Boolean if can be rounded up at the given index (>=5)

### [decimal\_to\_string ¶](#decimal_to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L115)

```
decimal_to_string :: proc(buf: []u8, a: ^Decimal) -> string {…}
```

 

Converts a Decimal to a string representation, using the provided buffer as storage.

**Inputs**
buf: A byte slice buffer to hold the resulting string
a: The struct to be converted to a string

**Returns**
A string representation of the Decimal

### [println ¶](#println) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L254)

```
println :: proc(.. args: ..any) {…}
```

### [round ¶](#round) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L463)

```
round :: proc(a: ^Decimal, nd: int) {…}
```

 

Rounds the Decimal at the given digit index

**Inputs**
a: The Decimal to be modified
nd: The digit index to round

### [round\_down ¶](#round_down) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L518)

```
round_down :: proc(a: ^Decimal, nd: int) {…}
```

 

Rounds down the decimal value to the specified number of decimal places

**Inputs**
a: The Decimal value to be rounded down
nd: The number of decimal places to round down to

**Example:**

```
import "core:fmt"
import "core:strconv/decimal"
round_down_example :: proc() {
	d: decimal.Decimal
	str := [64]u8{}
	ok := decimal.set(&d, "123.456")
	decimal.round_down(&d, 5)
	fmt.println(decimal.decimal_to_string(str[:], &d))
}
```

**Output:**

```
123.45
```

### [round\_up ¶](#round_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L478)

```
round_up :: proc(a: ^Decimal, nd: int) {…}
```

 

Rounds the Decimal up at the given digit index

**Inputs**
a: The Decimal to be modified
nd: The digit index to round up

### [rounded\_integer ¶](#rounded_integer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L548)

```
rounded_integer :: proc(a: ^Decimal) -> u64 {…}
```

 

Extracts the rounded integer part of a decimal value

**Inputs**
a: A pointer to the Decimal value to extract the rounded integer part from

WARNING: There are no guarantees about overflow.

**Returns** The rounded integer part of the input decimal value

**Example:**

```
import "core:fmt"
import "core:strconv/decimal"
rounded_integer_example :: proc() {
	d: decimal.Decimal
	ok := decimal.set(&d, "123.456")
	fmt.println(decimal.rounded_integer(&d))
}
```

**Output:**

```
123
```

### [set ¶](#set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L23)

```
set :: proc(d: ^Decimal, s: string) -> (ok: bool) {…}
```

 

Sets a Decimal from a given string `s`. The string is expected to represent a float. Stores parsed number in the given Decimal structure.
If parsing fails, the Decimal will be left in an undefined state.

**Inputs**
d: Pointer to a Decimal struct where the parsed result will be stored
s: The input string representing the floating-point number

**Returns**
ok: A boolean indicating whether the parsing was successful

### [shift ¶](#shift) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L413)

```
shift :: proc(a: ^Decimal, i: int) {…}
```

 

Shifts the decimal of the input value by the specified number of places

**Inputs**
a: The Decimal to be modified
i: The number of places to shift the decimal (positive for left shift, negative for right shift)

### [shift\_left ¶](#shift_left) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L352)

```
shift_left :: proc(a: ^Decimal, k: uint) {…}
```

 

Shifts the decimal of the input value to the left by `k` places

WARNING: asserts `k < 61`

**Inputs**
a: The Decimal to be modified
k: The number of places to shift the decimal to the left

### [shift\_right ¶](#shift_right) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L202)

```
shift_right :: proc(a: ^Decimal, k: uint) {…}
```

 

Shifts the Decimal value to the right by k positions.

**Used for internal Decimal Operations.**

**Inputs**
a: The Decimal struct to be shifted
k: The number of positions to shift right

### [trim ¶](#trim) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin#L157)

```
trim :: proc(a: ^Decimal) {…}
```

 

Trims trailing zeros in the given Decimal, updating the count and decimal\_point values as needed.

**Inputs**
a: Pointer to the Decimal struct to be trimmed

## Procedure Groups

This section is empty.

## Source Files

* [decimal.odin](https://github.com/odin-lang/Odin/tree/master/core/strconv/decimal/decimal.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.313049000 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Decimal](#Decimal)
  * [Procedures](#pkg-Procedures)
    + [assign](#assign)
    + [can\_round\_up](#can_round_up)
    + [decimal\_to\_string](#decimal_to_string)
    + [println](#println)
    + [round](#round)
    + [round\_down](#round_down)
    + [round\_up](#round_up)
    + [rounded\_integer](#rounded_integer)
    + [set](#set)
    + [shift](#shift)
    + [shift\_left](#shift_left)
    + [shift\_right](#shift_right)
    + [trim](#trim)
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