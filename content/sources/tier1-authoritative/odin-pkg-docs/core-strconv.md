package strconv - pkg.odin-lang.org 






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



Current Package: *[strconv](/core/strconv)*

  

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

# package core:strconv [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Conversions to and from `string` representations of other data types like integers and booleans.

## Index

Types (4)

* [Decimal\_Slice](#Decimal_Slice)
* [Float\_Info](#Float_Info)
* [Int\_Flag](#Int_Flag)
* [Int\_Flags](#Int_Flags)

Constants (1)

* [MAX\_BASE](#MAX_BASE)

Variables (1)

* [digits](#digits)

Procedures (43)

* [atof](#atof)
* [atoi](#atoi)
* [decimal\_to\_float\_bits](#decimal_to_float_bits)
* [digit\_to\_int](#digit_to_int)
* [format\_digits](#format_digits)
* [ftoa](#ftoa)
* [generic\_ftoa](#generic_ftoa)
* [is\_integer\_negative](#is_integer_negative)
* [is\_integer\_negative\_128](#is_integer_negative_128)
* [itoa](#itoa)
* [parse\_bool](#parse_bool)
* [parse\_complex128](#parse_complex128)
* [parse\_complex32](#parse_complex32)
* [parse\_complex64](#parse_complex64)
* [parse\_f32](#parse_f32)
* [parse\_f32\_prefix](#parse_f32_prefix)
* [parse\_f64](#parse_f64)
* [parse\_f64\_prefix](#parse_f64_prefix)
* [parse\_i128\_maybe\_prefixed](#parse_i128_maybe_prefixed)
* [parse\_i128\_of\_base](#parse_i128_of_base)
* [parse\_i64\_maybe\_prefixed](#parse_i64_maybe_prefixed)
* [parse\_i64\_of\_base](#parse_i64_of_base)
* [parse\_int](#parse_int)
* [parse\_quaternion128](#parse_quaternion128)
* [parse\_quaternion256](#parse_quaternion256)
* [parse\_quaternion64](#parse_quaternion64)
* [parse\_u128\_maybe\_prefixed](#parse_u128_maybe_prefixed)
* [parse\_u128\_of\_base](#parse_u128_of_base)
* [parse\_u64\_maybe\_prefixed](#parse_u64_maybe_prefixed)
* [parse\_u64\_of\_base](#parse_u64_of_base)
* [parse\_uint](#parse_uint)
* [quote](#quote)
* [quote\_rune](#quote_rune)
* [round\_shortest](#round_shortest)
* [unquote\_char](#unquote_char)
* [unquote\_string](#unquote_string)
* [write\_bits](#write_bits)
* [write\_bits\_128](#write_bits_128)
* [write\_bool](#write_bool)
* [write\_float](#write_float)
* [write\_int](#write_int)
* [write\_u128](#write_u128)
* [write\_uint](#write_uint)

Procedure Groups (4)

* [parse\_i128](#parse_i128)
* [parse\_i64](#parse_i64)
* [parse\_u128](#parse_u128)
* [parse\_u64](#parse_u64)

## Types

### [Decimal\_Slice ¶](#Decimal_Slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/generic_float.odin#L5)

```
Decimal_Slice :: struct {
	digits:        []u8,
	count:         int,
	decimal_point: int,
	neg:           bool,
}
```

##### Related Procedures With Parameters

* [format\_digits](/core/strconv/#format_digits)

### [Float\_Info ¶](#Float_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/generic_float.odin#L12)

```
Float_Info :: struct {
	mantbits: uint,
	expbits:  uint,
	bias:     int,
}
```

##### Related Procedures With Parameters

* [decimal\_to\_float\_bits](/core/strconv/#decimal_to_float_bits)
* [round\_shortest](/core/strconv/#round_shortest)

### [Int\_Flag ¶](#Int_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L3)

```
Int_Flag :: enum int {
	Prefix, 
	Plus, 
}
```

### [Int\_Flags ¶](#Int_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L7)

```
Int_Flags :: bit_set[Int_Flag]
```

##### Related Procedures With Parameters

* [write\_bits](/core/strconv/#write_bits)
* [write\_bits\_128](/core/strconv/#write_bits_128)

## Constants

### [MAX\_BASE ¶](#MAX_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L9)

```
MAX_BASE :: 32
```

## Variables

### [digits ¶](#digits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L10)

```
digits: string = …
```

## Procedures

### [atof ¶](#atof) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/deprecated.odin#L17)

```
atof :: proc(s: string) -> f64 {…}
```

### [atoi ¶](#atoi) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/deprecated.odin#L11)

```
atoi :: proc(s: string) -> int {…}
```

### [decimal\_to\_float\_bits ¶](#decimal_to_float_bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/generic_float.odin#L342)

```
decimal_to_float_bits :: proc(d: ^strconv_decimal.Decimal, info: ^Float_Info) -> (b: u64, overflow: bool) {…}
```

 

Converts a decimal number to its floating-point representation with the given format and returns the resulting bits

**Inputs**
d: Pointer to the decimal number to convert
info: Pointer to the Float\_Info structure containing information about the floating-point format

**Returns**
b: The bits representing the floating-point number
overflow: A boolean indicating whether an overflow occurred during conversion

### [digit\_to\_int ¶](#digit_to_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1583)

```
digit_to_int :: proc(r: rune) -> (value: int, ok: bool) {…}
```

 

Accepts '0'..='9', otherwise returns ok = false

### [format\_digits ¶](#format_digits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/generic_float.odin#L136)

```
format_digits :: proc(
	buf:       []u8, 
	shortest:  bool, 
	neg:       bool, 
	digs:      Decimal_Slice, 
	precision: int, 
	fmt:       u8, 
) -> []u8 {…}
```

 

Converts a decimal floating-point number into a byte buffer with the given format

**Inputs**
buf: The byte buffer to store the formatted number
shortest: If true, generates the shortest representation of the number
neg: If true, the number is negative
digs: The decimal number to be formatted
precision: The number of digits after the decimal point
fmt: The format specifier (accepted values: 'f', 'F', 'e', 'E', 'g', 'G')

**Returns**
A byte slice containing the formatted decimal floating-point number

### [ftoa ¶](#ftoa) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/deprecated.odin#L23)

```
ftoa :: proc(buf: []u8, f: f64, fmt: u8, prec, bit_size: int) -> string {…}
```

### [generic\_ftoa ¶](#generic_ftoa) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/generic_float.odin#L46)

```
generic_ftoa :: proc(buf: []u8, val: f64, fmt: u8, precision, bit_size: int) -> []u8 {…}
```

 

Converts a floating-point number to a string with the specified format and precision.

**Inputs**

buf: A byte slice to store the resulting string
val: The floating-point value to be converted
fmt: The formatting byte, accepted values are 'e', 'E', 'f', 'F', 'g', 'G'
precision: The number of decimal places to round to
bit\_size: The size of the floating-point number in bits, valid values are 16, 32, 64

**Example:**

```
buf: [32]byte
val := 3.141592
fmt := 'f'
precision := 2
bit_size := 64
result := strconv.generic_ftoa(buf[:], val, fmt, precision, bit_size) -> "3.14"
```

**Returns**
A byte slice containing the formatted string

### [is\_integer\_negative ¶](#is_integer_negative) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L24)

```
is_integer_negative :: proc(x: u64, is_signed: bool, bit_size: int) -> (u: u64, neg: bool) {…}
```

 

Determines whether the given unsigned 64-bit integer is a negative value by interpreting it as a signed integer with the specified bit size.

**Inputs**
x: The unsigned 64-bit integer to check for negativity
is\_signed: A boolean indicating if the input should be treated as a signed integer
bit\_size: The bit size of the signed integer representation (8, 16, 32, or 64)

**Returns**
u: The absolute value of the input integer
neg: A boolean indicating whether the input integer is negative

### [is\_integer\_negative\_128 ¶](#is_integer_negative_128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L118)

```
is_integer_negative_128 :: proc(x: u128, is_signed: bool, bit_size: int) -> (u: u128, neg: bool) {…}
```

 

Determines whether the given unsigned 128-bit integer is a negative value by interpreting it as a signed integer with the specified bit size.

**Inputs**
x: The unsigned 128-bit integer to check for negativity
is\_signed: A boolean indicating if the input should be treated as a signed integer
bit\_size: The bit size of the signed integer representation (8, 16, 32, 64, or 128)

**Returns**
u: The absolute value of the input integer
neg: A boolean indicating whether the input integer is negative

### [itoa ¶](#itoa) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/deprecated.odin#L6)

```
itoa :: proc(buf: []u8, i: int) -> string {…}
```

### [parse\_bool ¶](#parse_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L19)

```
parse_bool :: proc(s: string, n: ^int = nil) -> (result: bool = false, ok: bool) {…}
```

 

Parses a boolean value from the input string

**Inputs**
s: The input string

```
- true: "1", "t", "T", "true", "TRUE", "True"
- false: "0", "f", "F", "false", "FALSE", "False"
```

n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Returns**
result: The parsed boolean value (default: false)
ok: A boolean indicating whether the parsing was successful

### [parse\_complex128 ¶](#parse_complex128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1214)

```
parse_complex128 :: proc(str: string, n: ^int = nil) -> (value: complex128, ok: bool) {…}
```

 

Parses a 128-bit complex number from a string

**Inputs**
str: The input string containing a 128-bit complex number.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_complex128_example :: proc() {
	n: int
	c, ok := strconv.parse_complex128("3+1i", &n)
	fmt.printfln("%v %i %t", c, n, ok)

	c, ok = strconv.parse_complex128("5+7i hellope", &n)
	fmt.printfln("%v %i %t", c, n, ok)
}
```

**Output:**

```
3+1i 4 true
5+7i 4 false
```

**Returns**
value: The parsed 128-bit complex number.
ok: `false` if a complex number could not be found, or if the input string contained more than just the number.

### [parse\_complex32 ¶](#parse_complex32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1301)

```
parse_complex32 :: proc(str: string, n: ^int = nil) -> (value: complex32, ok: bool) {…}
```

 

Parses a 32-bit complex number from a string

**Inputs**
str: The input string containing a 32-bit complex number.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_complex32_example :: proc() {
	n: int
	c, ok := strconv.parse_complex32("3+1i", &n)
	fmt.printfln("%v %i %t", c, n, ok)

	c, ok = strconv.parse_complex32("5+7i hellope", &n)
	fmt.printfln("%v %i %t", c, n, ok)
}
```

**Output:**

```
3+1i 4 true
5+7i 4 false
```

**Returns**
value: The parsed 32-bit complex number.
ok: `false` if a complex number could not be found, or if the input string contained more than just the number.

### [parse\_complex64 ¶](#parse_complex64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1267)

```
parse_complex64 :: proc(str: string, n: ^int = nil) -> (value: complex64, ok: bool) {…}
```

 

Parses a 64-bit complex number from a string

**Inputs**
str: The input string containing a 64-bit complex number.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_complex64_example :: proc() {
	n: int
	c, ok := strconv.parse_complex64("3+1i", &n)
	fmt.printfln("%v %i %t", c, n, ok)

	c, ok = strconv.parse_complex64("5+7i hellope", &n)
	fmt.printfln("%v %i %t", c, n, ok)
}
```

**Output:**

```
3+1i 4 true
5+7i 4 false
```

**Returns**
value: The parsed 64-bit complex number.
ok: `false` if a complex number could not be found, or if the input string contained more than just the number.

### [parse\_f32 ¶](#parse_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L746)

```
parse_f32 :: proc(s: string, n: ^int = nil) -> (value: f32, ok: bool) {…}
```

 

Parses a 32-bit floating point number from a string

**Inputs**
s: The input string containing a 32-bit floating point number.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_f32_example :: proc() {
	n, ok := strconv.parse_f32("1234eee")
	fmt.printfln("%.3f %v", n, ok)

	n, ok = strconv.parse_f32("5678e2")
	fmt.printfln("%.3f %v", n, ok)
}
```

**Output:**

```
0.000 false
567800.000 true
```

**Returns**
value: The parsed 32-bit floating point number.
ok: `false` if a base 10 float could not be found, or if the input string contained more than just the number.

### [parse\_f32\_prefix ¶](#parse_f32_prefix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L817)

```
parse_f32_prefix :: proc(str: string) -> (value: f32, nr: int, ok: bool) {…}
```

 

Parses a 32-bit floating point number from a string and returns the parsed number, the length of the parsed substring, and a boolean indicating whether the parsing was successful

**Inputs**
str: The input string containing a 32-bit floating point number.

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_f32_prefix_example :: proc() {
	n, _, ok := strconv.parse_f32_prefix("1234eee")
	fmt.printfln("%.3f %v", n, ok)

	n, _, ok = strconv.parse_f32_prefix("5678e2")
	fmt.printfln("%.3f %v", n, ok)
}
```

**Output:**

```
0.000 false
567800.000 true
```

**Returns**
value: The parsed 32-bit floating point number.
nr: The length of the parsed substring.
ok: A boolean indicating whether the parsing was successful.

### [parse\_f64 ¶](#parse_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L779)

```
parse_f64 :: proc(str: string, n: ^int = nil) -> (value: f64, ok: bool) {…}
```

 

Parses a 64-bit floating point number from a string

**Inputs**
str: The input string containing a 64-bit floating point number.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_f64_example :: proc() {
	n, ok := strconv.parse_f64("1234eee")
	fmt.printfln("%.3f %v", n, ok)

	n, ok = strconv.parse_f64("5678e2")
	fmt.printfln("%.3f %v", n, ok)
}
```

**Output:**

```
0.000 false
567800.000 true
```

**Returns**
value: The parsed 64-bit floating point number.
ok: `false` if a base 10 float could not be found, or if the input string contained more than just the number.

### [parse\_f64\_prefix ¶](#parse_f64_prefix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L855)

```
parse_f64_prefix :: proc(str: string) -> (value: f64, nr: int, ok: bool) {…}
```

 

Parses a 64-bit floating point number from a string and returns the parsed number, the length of the parsed substring, and a boolean indicating whether the parsing was successful

**Inputs**
str: The input string containing a 64-bit floating point number.

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_f64_prefix_example :: proc() {
	n, _, ok := strconv.parse_f64_prefix("12.34eee")
	fmt.printfln("%.3f %v", n, ok)

	n, _, ok = strconv.parse_f64_prefix("12.34e2")
	fmt.printfln("%.3f %v", n, ok)

	n, _, ok = strconv.parse_f64_prefix("13.37 hellope")
	fmt.printfln("%.3f %v", n, ok)
}
```

**Output:**

```
0.000 false
1234.000 true
13.370 true
```

**Returns**
value: The parsed 64-bit floating point number.
nr: The length of the parsed substring.
ok: `false` if a base 10 float could not be found

### [parse\_i128\_maybe\_prefixed ¶](#parse_i128_maybe_prefixed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L520)

```
parse_i128_maybe_prefixed :: proc(str: string, n: ^int = nil) -> (value: i128, ok: bool) {…}
```

 

Parses an integer value from a string in base 10, unless there's a prefix

**Inputs**
str: The input string containing the integer value
n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_i128_maybe_prefixed_example :: proc() {
	n, ok := strconv.parse_i128_maybe_prefixed("1234")
	fmt.println(n, ok)

	n, ok = strconv.parse_i128_maybe_prefixed("0xeeee")
	fmt.println(n, ok)
}
```

**Output:**

```
1234 true
61166 true
```

**Returns**
value: The parsed i128 value
ok: `false` if a valid integer could not be found, or if the input string contained more than just the number.




##### Related Procedure Groups

* [parse\_i128](/core/strconv/#parse_i128)

### [parse\_i128\_of\_base ¶](#parse_i128_of_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L449)

```
parse_i128_of_base :: proc(str: string, base: int, n: ^int = nil) -> (value: i128, ok: bool) {…}
```

 

Parses an integer value from a string in the given base, without any prefix

**Inputs**
str: The input string containing the integer value
base: The base (radix) to use for parsing the integer (1-16)
n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_i128_of_base_example :: proc() {
	n, ok := strconv.parse_i128_of_base("-1234eeee", 10)
	fmt.println(n,ok)
}
```

**Output:**

```
-1234 false
```

**Returns**
value: The parsed i128 value
ok: false if no numeric value of the appropriate base could be found, or if the input string contained more than just the number.




##### Related Procedure Groups

* [parse\_i128](/core/strconv/#parse_i128)

### [parse\_i64\_maybe\_prefixed ¶](#parse_i64_maybe_prefixed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L146)

```
parse_i64_maybe_prefixed :: proc(str: string, n: ^int = nil) -> (value: i64, ok: bool) {…}
```

 

Parses an integer value from the input string in base 10, unless there's a prefix

**Inputs**
str: The input string to parse the integer value from
n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_i64_maybe_prefixed_example :: proc() {
	n, ok := strconv.parse_i64_maybe_prefixed("1234")
	fmt.println(n,ok)

	n, ok = strconv.parse_i64_maybe_prefixed("0xeeee")
	fmt.println(n,ok)
}
```

**Output:**

```
1234 true
61166 true
```

**Returns**
value: The parsed integer value
ok: ok=false if a valid integer could not be found, or if the input string contained more than just the number.




##### Related Procedure Groups

* [parse\_i64](/core/strconv/#parse_i64)

### [parse\_i64\_of\_base ¶](#parse_i64_of_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L73)

```
parse_i64_of_base :: proc(str: string, base: int, n: ^int = nil) -> (value: i64, ok: bool) {…}
```

 

Parses an integer value from the input string in the given base, without a prefix

**Inputs**
str: The input string to parse the integer value from
base: The base of the integer value to be parsed (must be between 1 and 16)
n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_i64_of_base_example :: proc() {
	n, ok := strconv.parse_i64_of_base("-1234e3", 10)
	fmt.println(n, ok)
}
```

**Output:**

```
-1234 false
```

**Returns**
value: Parses an integer value from a string, in the given base, without a prefix.
ok: ok=false if no numeric value of the appropriate base could be found, or if the input string contained more than just the number.




##### Related Procedure Groups

* [parse\_i64](/core/strconv/#parse_i64)

### [parse\_int ¶](#parse_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L371)

```
parse_int :: proc(s: string, base: int = 0, n: ^int = nil) -> (value: int, ok: bool) {…}
```

 

Parses a signed integer value from the input string, using the specified base or inferring the base from a prefix

**Inputs**
s: The input string to parse
base: The base of the number system to use for parsing (default: 0)

```
- If base is 0, it will be inferred based on the prefix in the input string (e.g. '0x' for hexadecimal)
- If base is not 0, it will be used for parsing regardless of any prefix in the input string
```

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_int_example :: proc() {
	n, ok := strconv.parse_int("1234") // without prefix, inferred base 10
	fmt.println(n,ok)

	n, ok = strconv.parse_int("ffff", 16) // without prefix, explicit base
	fmt.println(n,ok)

	n, ok = strconv.parse_int("0xffff") // with prefix and inferred base
	fmt.println(n,ok)
}
```

**Output:**

```
1234 true
65535 true
65535 true
```

**Returns**
value: The parsed int value
ok: `false` if no appropriate value could be found, or if the input string contained more than just the number.

### [parse\_quaternion128 ¶](#parse_quaternion128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1415)

```
parse_quaternion128 :: proc(str: string, n: ^int = nil) -> (value: quaternion128, ok: bool) {…}
```

 

Parses a 128-bit quaternion from a string

**Inputs**
str: The input string containing a 128-bit quaternion.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_quaternion128_example :: proc() {
	n: int
	q, ok := strconv.parse_quaternion128("1+2i+3j+4k", &n)
	fmt.printfln("%v %i %t", q, n, ok)

	q, ok = strconv.parse_quaternion128("1+2i+3j+4k hellope", &n)
	fmt.printfln("%v %i %t", q, n, ok)
}
```

**Output:**

```
1+2i+3j+4k 10 true
1+2i+3j+4k 10 false
```

**Returns**
value: The parsed 128-bit quaternion.
ok: `false` if a quaternion could not be found, or if the input string contained more than just the quaternion.

### [parse\_quaternion256 ¶](#parse_quaternion256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1335)

```
parse_quaternion256 :: proc(str: string, n: ^int = nil) -> (value: quaternion256, ok: bool) {…}
```

 

Parses a 256-bit quaternion from a string

**Inputs**
str: The input string containing a 256-bit quaternion.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_quaternion256_example :: proc() {
	n: int
	q, ok := strconv.parse_quaternion256("1+2i+3j+4k", &n)
	fmt.printfln("%v %i %t", q, n, ok)

	q, ok = strconv.parse_quaternion256("1+2i+3j+4k hellope", &n)
	fmt.printfln("%v %i %t", q, n, ok)
}
```

**Output:**

```
1+2i+3j+4k 10 true
1+2i+3j+4k 10 false
```

**Returns**
value: The parsed 256-bit quaternion.
ok: `false` if a quaternion could not be found, or if the input string contained more than just the quaternion.

### [parse\_quaternion64 ¶](#parse_quaternion64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1449)

```
parse_quaternion64 :: proc(str: string, n: ^int = nil) -> (value: quaternion64, ok: bool) {…}
```

 

Parses a 64-bit quaternion from a string

**Inputs**
str: The input string containing a 64-bit quaternion.
n: An optional pointer to an int to store the length of the parsed substring (default: nil).

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_quaternion64_example :: proc() {
	n: int
	q, ok := strconv.parse_quaternion64("1+2i+3j+4k", &n)
	fmt.printfln("%v %i %t", q, n, ok)

	q, ok = strconv.parse_quaternion64("1+2i+3j+4k hellope", &n)
	fmt.printfln("%v %i %t", q, n, ok)
}
```

**Output:**

```
1+2i+3j+4k 10 true
1+2i+3j+4k 10 false
```

**Returns**
value: The parsed 64-bit quaternion.
ok: `false` if a quaternion could not be found, or if the input string contained more than just the quaternion.

### [parse\_u128\_maybe\_prefixed ¶](#parse_u128_maybe_prefixed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L663)

```
parse_u128_maybe_prefixed :: proc(str: string, n: ^int = nil) -> (value: u128, ok: bool) {…}
```

 

Parses an unsigned integer value from a string in base 10, unless there's a prefix

**Inputs**
str: The input string containing the integer value
n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_u128_maybe_prefixed_example :: proc() {
	n, ok := strconv.parse_u128_maybe_prefixed("1234")
	fmt.println(n, ok)

	n, ok = strconv.parse_u128_maybe_prefixed("5678eeee")
	fmt.println(n, ok)
}
```

**Output:**

```
1234 true
5678 false
```

**Returns**
value: The parsed u128 value
ok: false if a valid integer could not be found, if the value was negative, or if the input string contained more than just the number.




##### Related Procedure Groups

* [parse\_u128](/core/strconv/#parse_u128)

### [parse\_u128\_of\_base ¶](#parse_u128_of_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L604)

```
parse_u128_of_base :: proc(str: string, base: int, n: ^int = nil) -> (value: u128, ok: bool) {…}
```

 

Parses an unsigned integer value from a string in the given base, without any prefix

**Inputs**
str: The input string containing the integer value
base: The base (radix) to use for parsing the integer (1-16)
n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_u128_of_base_example :: proc() {
	n, ok := strconv.parse_u128_of_base("1234eeee", 10)
	fmt.println(n, ok)

	n, ok = strconv.parse_u128_of_base("5678eeee", 16)
	fmt.println(n, ok)
}
```

**Output:**

```
1234 false
1450766062 true
```

**Returns**
value: The parsed u128 value
ok: `false` if no numeric value of the appropriate base could be found, or if the input string contained more than just the number.




##### Related Procedure Groups

* [parse\_u128](/core/strconv/#parse_u128)

### [parse\_u64\_maybe\_prefixed ¶](#parse_u64_maybe_prefixed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L293)

```
parse_u64_maybe_prefixed :: proc(str: string, n: ^int = nil) -> (value: u64, ok: bool) {…}
```

 

Parses an unsigned 64-bit integer value from the input string, using the specified base or inferring the base from a prefix

**Inputs**
str: The input string to parse
base: The base of the number system to use for parsing (default: 0)

```
- If base is 0, it will be inferred based on the prefix in the input string (e.g. '0x' for hexadecimal)
- If base is not 0, it will be used for parsing regardless of any prefix in the input string
```

n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_u64_maybe_prefixed_example :: proc() {
	n, ok := strconv.parse_u64_maybe_prefixed("1234")
	fmt.println(n,ok)

	n, ok = strconv.parse_u64_maybe_prefixed("0xee")
	fmt.println(n,ok)
}
```

**Output:**

```
1234 true
238 true
```

**Returns**
value: The parsed uint64 value
ok: ok=false if a valid integer could not be found, if the value was negative, or if the input string contained more than just the number.




##### Related Procedure Groups

* [parse\_u64](/core/strconv/#parse_u64)

### [parse\_u64\_of\_base ¶](#parse_u64_of_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L231)

```
parse_u64_of_base :: proc(str: string, base: int, n: ^int = nil) -> (value: u64, ok: bool) {…}
```

 

Parses an unsigned 64-bit integer value from the input string without a prefix, using the specified base

**Inputs**
str: The input string to parse
base: The base of the number system to use for parsing

```
- Must be between 1 and 16 (inclusive)
```

n: An optional pointer to an int to store the length of the parsed substring (default: nil)

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_u64_of_base_example :: proc() {
	n, ok := strconv.parse_u64_of_base("1234e3", 10)
	fmt.println(n,ok)

	n, ok = strconv.parse_u64_of_base("5678eee",16)
	fmt.println(n,ok)
}
```

**Output:**

```
1234 false
90672878 true
```

**Returns**
value: The parsed uint64 value
ok: A boolean indicating whether the parsing was successful




##### Related Procedure Groups

* [parse\_u64](/core/strconv/#parse_u64)

### [parse\_uint ¶](#parse_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L415)

```
parse_uint :: proc(s: string, base: int = 0, n: ^int = nil) -> (value: uint, ok: bool) {…}
```

 

Parses an unsigned integer value from the input string, using the specified base or inferring the base from a prefix

**Inputs**
s: The input string to parse
base: The base of the number system to use for parsing (default: 0, inferred)

```
- If base is 0, it will be inferred based on the prefix in the input string (e.g. '0x' for hexadecimal)
- If base is not 0, it will be used for parsing regardless of any prefix in the input string
```

**Example:**

```
import "core:fmt"
import "core:strconv"
parse_uint_example :: proc() {
	n, ok := strconv.parse_uint("1234") // without prefix, inferred base 10
	fmt.println(n,ok)

	n, ok = strconv.parse_uint("ffff", 16) // without prefix, explicit base
	fmt.println(n,ok)

	n, ok = strconv.parse_uint("0xffff") // with prefix and inferred base
	fmt.println(n,ok)
}
```

**Output:**

```
1234 true
65535 true
65535 true
```

**Returns**

value: The parsed uint value
ok: `false` if no appropriate value could be found; the value was negative; he input string contained more than just the number

### [quote ¶](#quote) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1615)

```
quote :: proc(buf: []u8, str: string) -> string {…}
```

 

Writes a quoted string representation of the input string to a given byte slice and returns the result as a string

**Inputs**
buf: The byte slice to which the quoted string will be written
str: The input string to be quoted

!! ISSUE !! NOT EXPECTED -- "\"hello\"" was expected

**Example:**

```
import "core:fmt"
import "core:strconv"
quote_example :: proc() {
	buf: [20]byte
	result := strconv.quote(buf[:], "hello")
	fmt.println(result, buf)
}
```

**Output:**

```
"'h''e''l''l''o'" [34, 39, 104, 39, 39, 101, 39, 39, 108, 39, 39, 108, 39, 39, 111, 39, 34, 0, 0, 0]
```

**Returns**
The resulting string after writing the quoted string representation

### [quote\_rune ¶](#quote_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1676)

```
quote_rune :: proc(buf: []u8, r: rune) -> string {…}
```

 

Writes a quoted rune representation of the input rune to a given byte slice and returns the result as a string

**Inputs**
buf: The byte slice to which the quoted rune will be written
r: The input rune to be quoted

**Example:**

```
import "core:fmt"
import "core:strconv"
quote_rune_example :: proc() {
	buf: [4]byte
	result := strconv.quote_rune(buf[:], 'A')
	fmt.println(result, buf)
}
```

**Output:**

```
'A' [39, 65, 39, 0]
```

**Returns**
The resulting string after writing the quoted rune representation

### [round\_shortest ¶](#round_shortest) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/generic_float.odin#L265)

```
round_shortest :: proc(d: ^strconv_decimal.Decimal, mant: u64, exp: int, flt: ^Float_Info) {…}
```

 

Rounds the given decimal number to its shortest representation, considering the provided floating-point format

**Inputs**
d: The decimal number to round
mant: The mantissa of the floating-point number
exp: The exponent of the floating-point number
flt: Pointer to the Float\_Info structure containing information about the floating-point format

### [unquote\_char ¶](#unquote_char) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1760)

```
unquote_char :: proc(str: string, quote: u8) -> (r: rune, multiple_bytes: bool, tail_string: string, success: bool) {…}
```

 

Unquotes a single character from the input string, considering the given quote character

**Inputs**
str: The input string containing the character to unquote
quote: The quote character to consider (e.g., '"')

**Example:**

```
import "core:fmt"
import "core:strconv"
unquote_char_example :: proc() {
	src:="\'The\' raven"
	r, multiple_bytes, tail_string, success  := strconv.unquote_char(src,'\'')
	fmt.println("Source:", src)
	fmt.printf("r: <%v>, multiple_bytes:%v, tail_string:<%s>, success:%v\n",r, multiple_bytes, tail_string, success)
}
```

**Output:**

```
Source: 'The' raven
r: <'>, multiple_bytes:false, tail_string:<The' raven>, success:true
```

**Returns**
r: The unquoted rune
multiple\_bytes: A boolean indicating if the rune has multiple bytes
tail\_string: The remaining portion of the input string after unquoting the character
success: A boolean indicating whether the unquoting was successful

### [unquote\_string ¶](#unquote_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1902)

```
unquote_string :: proc(lit: string, allocator := context.allocator) -> (res: string, allocated, success: bool) {…}
```

 

Unquotes the input string considering any type of quote character and returns the unquoted string

**Inputs**
lit: The input string to unquote
allocator: (default: context.allocator)

WARNING: This procedure gives unexpected results if the quotes are not the first and last characters.

**Example:**

```
import "core:fmt"
import "core:strconv"
unquote_string_example :: proc() {
	src:="\"The raven Huginn is black.\""
	s, allocated, ok := strconv.unquote_string(src)
	fmt.println(src)
	fmt.printf("Unquoted: <%s>, alloc:%v, ok:%v\n\n", s, allocated, ok)

	src="\'The raven Huginn\' is black."
	s, allocated, ok = strconv.unquote_string(src)
	fmt.println(src)
	fmt.printf("Unquoted: <%s>, alloc:%v, ok:%v\n\n", s, allocated, ok)

	src="The raven \'Huginn\' is black."
	s, allocated, ok = strconv.unquote_string(src) // Will produce undesireable results
	fmt.println(src)
	fmt.printf("Unquoted: <%s>, alloc:%v, ok:%v\n", s, allocated, ok)
}
```

**Output:**

```
"The raven Huginn is black."
Unquoted: <The raven Huginn is black.>, alloc:false, ok:true

'The raven Huginn' is black.
Unquoted: <The raven Huginn' is black>, alloc:false, ok:true

The raven 'Huginn' is black.
Unquoted: <he raven 'Huginn' is black>, alloc:false, ok:true
```

**Returns**
res: The resulting unquoted string
allocated: A boolean indicating if the resulting string was allocated using the provided allocator
success: A boolean indicating whether the unquoting was successful

NOTE: If unquoting is unsuccessful, the allocated memory for the result will be freed.

### [write\_bits ¶](#write_bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L65)

```
write_bits :: proc(
	buf:       []u8, 
	x:         u64, 
	base:      int, 
	is_signed: bool, 
	bit_size:  int, 
	digits:    string, 
	flags:     bit_set[Int_Flag], 
) -> string {…}
```

 

Writes the string representation of an integer to a buffer with specified base, flags, and digit set.

**Inputs**
buf: The buffer to append the integer representation to
x: The integer value to convert
base: The base for the integer representation (2 <= base <= MAX\_BASE)
is\_signed: A boolean indicating if the input should be treated as a signed integer
bit\_size: The bit size of the signed integer representation (8, 16, 32, or 64)
digits: The digit set used for the integer representation
flags: The Int\_Flags bit set to control integer formatting

**Returns**
The string containing the integer representation appended to the buffer

### [write\_bits\_128 ¶](#write_bits_128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin#L163)

```
write_bits_128 :: proc(
	buf:       []u8, 
	x:         u128, 
	base:      int, 
	is_signed: bool, 
	bit_size:  int, 
	digits:    string, 
	flags:     bit_set[Int_Flag], 
) -> string {…}
```

 

Writes the string representation of a 128-bit integer to a buffer with specified base, flags, and digit set.

**Inputs**
buf: The buffer to append the integer representation to
x: The 128-bit integer value to convert
base: The base for the integer representation (2 <= base <= MAX\_BASE)
is\_signed: A boolean indicating if the input should be treated as a signed integer
bit\_size: The bit size of the signed integer representation (8, 16, 32, 64, or 128)
digits: The digit set used for the integer representation
flags: The Int\_Flags bit set to control integer formatting

**Returns**
The string containing the integer representation written to the buffer

### [write\_bool ¶](#write_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1478)

```
write_bool :: proc(buf: []u8, b: bool) -> string {…}
```

 

Writes a boolean value as a string to the given buffer

**Inputs**
buf: The buffer to write the boolean value to
b: The boolean value to be written

**Example:**

```
import "core:fmt"
import "core:strconv"
write_bool_example :: proc() {
	buf: [6]byte
	result := strconv.write_bool(buf[:], true)
	fmt.println(result, buf)
}
```

**Output:**

```
true [116, 114, 117, 101, 0, 0]
```

**Returns**
The resulting string after writing the boolean value

### [write\_float ¶](#write_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1579)

```
write_float :: proc(buf: []u8, f: f64, fmt: u8, prec, bit_size: int) -> string {…}
```

 

`ftoa` C name deprecated, use `write_float` instead (same procedure)

Writes a float64 value as a string to the given buffer with the specified format and precision

**Inputs**
buf: The buffer to write the float64 value to
f: The float64 value to be written
fmt: The byte specifying the format to use for the conversion
prec: The precision to use for the conversion
bit\_size: The size of the float in bits (32 or 64)

**Example:**

```
import "core:fmt"
import "core:strconv"
write_float_example :: proc() {
	buf: [8]byte
	result := strconv.write_float(buf[:], 3.14159, 'f', 2, 64)
	fmt.println(result, buf)
}
```

**Output:**

```
+3.14 [43, 51, 46, 49, 52, 0, 0, 0]
```

**Returns**
The resulting string after writing the float

### [write\_int ¶](#write_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1540)

```
write_int :: proc(buf: []u8, i: i64, base: int) -> string {…}
```

 

Writes a signed integer value as a string to the given buffer with the specified base

**Inputs**
buf: The buffer to write the signed integer value to
i: The signed integer value to be written
base: The base to use for converting the integer value

**Example:**

```
import "core:fmt"
import "core:strconv"
write_int_example :: proc() {
	buf: [4]byte
	result := strconv.write_int(buf[:], -42, 10)
	fmt.println(result, buf)
}
```

**Output:**

```
-42 [45, 52, 50, 0]
```

**Returns**
The resulting string after writing the signed integer value

### [write\_u128 ¶](#write_u128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1546)

```
write_u128 :: proc(buf: []u8, u: u128, base: int) -> string {…}
```

### [write\_uint ¶](#write_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L1512)

```
write_uint :: proc(buf: []u8, u: u64, base: int) -> string {…}
```

 

Writes an unsigned integer value as a string to the given buffer with the specified base

**Inputs**
buf: The buffer to write the unsigned integer value to
u: The unsigned integer value to be written
base: The base to use for converting the integer value

**Example:**

```
import "core:fmt"
import "core:strconv"
write_uint_example :: proc() {
	buf: [4]byte
	result := strconv.write_uint(buf[:], 42, 16)
	fmt.println(result, buf)
}
```

**Output:**

```
2a [50, 97, 0, 0]
```

**Returns**
The resulting string after writing the unsigned integer value

## Procedure Groups

### [parse\_i128 ¶](#parse_i128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L574)

```
parse_i128 :: proc{
	parse_i128_maybe_prefixed,
	parse_i128_of_base,
}
```

### [parse\_i64 ¶](#parse_i64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L200)

```
parse_i64 :: proc{
	parse_i64_maybe_prefixed,
	parse_i64_of_base,
}
```

### [parse\_u128 ¶](#parse_u128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L706)

```
parse_u128 :: proc{
	parse_u128_maybe_prefixed,
	parse_u128_of_base,
}
```

### [parse\_u64 ¶](#parse_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin#L336)

```
parse_u64 :: proc{
	parse_u64_maybe_prefixed,
	parse_u64_of_base,
}
```

## Source Files

* [deprecated.odin](https://github.com/odin-lang/Odin/tree/master/core/strconv/deprecated.odin)
* [generic\_float.odin](https://github.com/odin-lang/Odin/tree/master/core/strconv/generic_float.odin)
* [integers.odin](https://github.com/odin-lang/Odin/tree/master/core/strconv/integers.odin)
* [strconv.odin](https://github.com/odin-lang/Odin/tree/master/core/strconv/strconv.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.307112600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Decimal\_Slice](#Decimal_Slice)
    + [Float\_Info](#Float_Info)
    + [Int\_Flag](#Int_Flag)
    + [Int\_Flags](#Int_Flags)
  * [Constants](#pkg-Constants)
    + [MAX\_BASE](#MAX_BASE)
  * [Variables](#pkg-Variables)
    + [digits](#digits)
  * [Procedures](#pkg-Procedures)
    + [atof](#atof)
    + [atoi](#atoi)
    + [decimal\_to\_float\_bits](#decimal_to_float_bits)
    + [digit\_to\_int](#digit_to_int)
    + [format\_digits](#format_digits)
    + [ftoa](#ftoa)
    + [generic\_ftoa](#generic_ftoa)
    + [is\_integer\_negative](#is_integer_negative)
    + [is\_integer\_negative\_128](#is_integer_negative_128)
    + [itoa](#itoa)
    + [parse\_bool](#parse_bool)
    + [parse\_complex128](#parse_complex128)
    + [parse\_complex32](#parse_complex32)
    + [parse\_complex64](#parse_complex64)
    + [parse\_f32](#parse_f32)
    + [parse\_f32\_prefix](#parse_f32_prefix)
    + [parse\_f64](#parse_f64)
    + [parse\_f64\_prefix](#parse_f64_prefix)
    + [parse\_i128\_maybe\_prefixed](#parse_i128_maybe_prefixed)
    + [parse\_i128\_of\_base](#parse_i128_of_base)
    + [parse\_i64\_maybe\_prefixed](#parse_i64_maybe_prefixed)
    + [parse\_i64\_of\_base](#parse_i64_of_base)
    + [parse\_int](#parse_int)
    + [parse\_quaternion128](#parse_quaternion128)
    + [parse\_quaternion256](#parse_quaternion256)
    + [parse\_quaternion64](#parse_quaternion64)
    + [parse\_u128\_maybe\_prefixed](#parse_u128_maybe_prefixed)
    + [parse\_u128\_of\_base](#parse_u128_of_base)
    + [parse\_u64\_maybe\_prefixed](#parse_u64_maybe_prefixed)
    + [parse\_u64\_of\_base](#parse_u64_of_base)
    + [parse\_uint](#parse_uint)
    + [quote](#quote)
    + [quote\_rune](#quote_rune)
    + [round\_shortest](#round_shortest)
    + [unquote\_char](#unquote_char)
    + [unquote\_string](#unquote_string)
    + [write\_bits](#write_bits)
    + [write\_bits\_128](#write_bits_128)
    + [write\_bool](#write_bool)
    + [write\_float](#write_float)
    + [write\_int](#write_int)
    + [write\_u128](#write_u128)
    + [write\_uint](#write_uint)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [parse\_i128](#parse_i128)
    + [parse\_i64](#parse_i64)
    + [parse\_u128](#parse_u128)
    + [parse\_u64](#parse_u64)
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