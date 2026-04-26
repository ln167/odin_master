package encoding/uuid - pkg.odin-lang.org 






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



Current Package: *[uuid](/core/encoding/uuid)*

  

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
2. encoding
3. [uuid](/core/encoding/uuid)

# package core:encoding/uuid [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Universally Unique Identifiers (`UUID`) according to [RFC 4122](https://tools.ietf.org/html/rfc4122.html), with additions from [RFC 9562](https://tools.ietf.org/html/rfc9562.html).

The UUIDs are textually represented and read in the following string format:
`00000000-0000-v000-V000-000000000000`

`v` is where the version bits reside, and `V` is where the variant bits reside.
The meaning of the other bits is version-dependent.

Outside of string representations, UUIDs are represented in memory by a 128-bit
structure organized as an array of 16 bytes.

Of the UUID versions which may make use of random number generation, a
requirement is placed upon them that the underlying generator be
cryptographically-secure, per RFC 9562's suggestion.

Version 1 without a node argument.
Version 4 in all cases.
Version 6 without either a clock or node argument.
Version 7 in all cases.

**Example:**

```
package main

import "core:crypto"
import "core:encoding/uuid"

main :: proc() {
	my_uuid: uuid.Identifier

	{
		// This scope will have a CSPRNG.
		context.random_generator = crypto.random_generator()
		my_uuid = uuid.generate_v7()
	}

	// Back to the default random number generator.
}
```

For more information on the specifications, see here:
<https://www.rfc-editor.org/rfc/rfc4122.html>
<https://www.rfc-editor.org/rfc/rfc9562.html>

## Index

Types (3)

* [Identifier](#Identifier)
* [Read\_Error](#Read_Error)
* [Variant\_Type](#Variant_Type)

Constants (8)

* [EXPECTED\_LENGTH](#EXPECTED_LENGTH)
* [HNS\_INTERVALS\_BETWEEN\_GREG\_AND\_UNIX](#HNS_INTERVALS_BETWEEN_GREG_AND_UNIX)
* [VARIANT\_BYTE\_INDEX](#VARIANT_BYTE_INDEX)
* [VERSION\_7\_COUNTER\_MASK](#VERSION_7_COUNTER_MASK)
* [VERSION\_7\_COUNTER\_SHIFT](#VERSION_7_COUNTER_SHIFT)
* [VERSION\_7\_TIME\_MASK](#VERSION_7_TIME_MASK)
* [VERSION\_7\_TIME\_SHIFT](#VERSION_7_TIME_SHIFT)
* [VERSION\_BYTE\_INDEX](#VERSION_BYTE_INDEX)

Variables (4)

* [Namespace\_DNS](#Namespace_DNS)
* [Namespace\_OID](#Namespace_OID)
* [Namespace\_URL](#Namespace_URL)
* [Namespace\_X500](#Namespace_X500)

Procedures (26)

* [clock\_seq](#clock_seq)
* [counter\_v7](#counter_v7)
* [generate\_v1](#generate_v1)
* [generate\_v4](#generate_v4)
* [generate\_v6](#generate_v6)
* [generate\_v7\_basic](#generate_v7_basic)
* [generate\_v7\_with\_counter](#generate_v7_with_counter)
* [generate\_v8\_hash\_bytes](#generate_v8_hash_bytes)
* [generate\_v8\_hash\_string](#generate_v8_hash_string)
* [node](#node)
* [raw\_time\_v1](#raw_time_v1)
* [raw\_time\_v6](#raw_time_v6)
* [raw\_time\_v7](#raw_time_v7)
* [read](#read)
* [stamp\_v8\_array](#stamp_v8_array)
* [stamp\_v8\_int](#stamp_v8_int)
* [stamp\_v8\_slice](#stamp_v8_slice)
* [time\_v1](#time_v1)
* [time\_v6](#time_v6)
* [time\_v7](#time_v7)
* [to\_string\_allocated](#to_string_allocated)
* [to\_string\_buffer](#to_string_buffer)
* [unsafe\_write](#unsafe_write)
* [variant](#variant)
* [version](#version)
* [write](#write)

Procedure Groups (4)

* [generate\_v7](#generate_v7)
* [generate\_v8\_hash](#generate_v8_hash)
* [stamp\_v8](#stamp_v8)
* [to\_string](#to_string)

## Types

### [Identifier ¶](#Identifier) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L4)

```
Identifier :: distinct [16]u8
```

 

A RFC 4122 Universally Unique Identifier




##### Related Procedures With Parameters

* [clock\_seq](/core/encoding/uuid/#clock_seq)
* [counter\_v7](/core/encoding/uuid/#counter_v7)
* [generate\_v8\_hash\_bytes](/core/encoding/uuid/#generate_v8_hash_bytes)
* [generate\_v8\_hash\_string](/core/encoding/uuid/#generate_v8_hash_string)
* [node](/core/encoding/uuid/#node)
* [raw\_time\_v1](/core/encoding/uuid/#raw_time_v1)
* [raw\_time\_v6](/core/encoding/uuid/#raw_time_v6)
* [raw\_time\_v7](/core/encoding/uuid/#raw_time_v7)
* [time\_v1](/core/encoding/uuid/#time_v1)
* [time\_v6](/core/encoding/uuid/#time_v6)
* [time\_v7](/core/encoding/uuid/#time_v7)
* [to\_string\_allocated](/core/encoding/uuid/#to_string_allocated)
* [to\_string\_buffer](/core/encoding/uuid/#to_string_buffer)
* [unsafe\_write](/core/encoding/uuid/#unsafe_write)
* [variant](/core/encoding/uuid/#variant)
* [version](/core/encoding/uuid/#version)
* [write](/core/encoding/uuid/#write)
* [generate\_v8\_hash](/core/encoding/uuid/#generate_v8_hash) *(procedure groups)*
* [to\_string](/core/encoding/uuid/#to_string) *(procedure groups)*



##### Related Procedures With Returns

* [generate\_v1](/core/encoding/uuid/#generate_v1)
* [generate\_v4](/core/encoding/uuid/#generate_v4)
* [generate\_v6](/core/encoding/uuid/#generate_v6)
* [generate\_v7\_basic](/core/encoding/uuid/#generate_v7_basic)
* [generate\_v7\_with\_counter](/core/encoding/uuid/#generate_v7_with_counter)
* [read](/core/encoding/uuid/#read)
* [stamp\_v8\_array](/core/encoding/uuid/#stamp_v8_array)
* [stamp\_v8\_int](/core/encoding/uuid/#stamp_v8_int)
* [stamp\_v8\_slice](/core/encoding/uuid/#stamp_v8_slice)
* [generate\_v7](/core/encoding/uuid/#generate_v7) *(procedure groups)*
* [stamp\_v8](/core/encoding/uuid/#stamp_v8) *(procedure groups)*

### [Read\_Error ¶](#Read_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L26)

```
Read_Error :: enum int {
	None, 
	Invalid_Length, 
	Invalid_Hexadecimal, 
	Invalid_Separator, 
}
```

##### Related Procedures With Returns

* [read](/core/encoding/uuid/#read)

### [Variant\_Type ¶](#Variant_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L33)

```
Variant_Type :: enum int {
	Unknown, 
	Reserved_Apollo_NCS,    // 0b0xx
	RFC_4122,               // 0b10x
	Reserved_Microsoft_COM, // 0b110
	Reserved_Future,        // 0b111
}
```

##### Related Procedures With Returns

* [variant](/core/encoding/uuid/#variant)

## Constants

### [EXPECTED\_LENGTH ¶](#EXPECTED_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L6)

```
EXPECTED_LENGTH :: 8 + 4 + 4 + 4 + 12 + 4
```

### [HNS\_INTERVALS\_BETWEEN\_GREG\_AND\_UNIX ¶](#HNS_INTERVALS_BETWEEN_GREG_AND_UNIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L12)

```
HNS_INTERVALS_BETWEEN_GREG_AND_UNIX :: 141427 * 24 * 60 * 60 * 1000 * 1000 * 10
```

 

The number of 100-nanosecond intervals between 1582-10-15 and 1970-01-01.

### [VARIANT\_BYTE\_INDEX ¶](#VARIANT_BYTE_INDEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L9)

```
VARIANT_BYTE_INDEX :: 8
```

### [VERSION\_7\_COUNTER\_MASK ¶](#VERSION_7_COUNTER_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L16)

```
VERSION_7_COUNTER_MASK :: 0x00000000_00000fff_00000000_00000000
```

### [VERSION\_7\_COUNTER\_SHIFT ¶](#VERSION_7_COUNTER_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L17)

```
VERSION_7_COUNTER_SHIFT :: 64
```

### [VERSION\_7\_TIME\_MASK ¶](#VERSION_7_TIME_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L14)

```
VERSION_7_TIME_MASK :: 0xffffffff_ffff0000_00000000_00000000
```

### [VERSION\_7\_TIME\_SHIFT ¶](#VERSION_7_TIME_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L15)

```
VERSION_7_TIME_SHIFT :: 80
```

### [VERSION\_BYTE\_INDEX ¶](#VERSION_BYTE_INDEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L8)

```
VERSION_BYTE_INDEX :: 6
```

## Variables

### [Namespace\_DNS ¶](#Namespace_DNS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L43)

```
@(rodata)
Namespace_DNS: Identifier = …
```

 

Name string is a fully-qualified domain name.

### [Namespace\_OID ¶](#Namespace_OID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L57)

```
@(rodata)
Namespace_OID: Identifier = …
```

 

Name string is an ISO OID.

### [Namespace\_URL ¶](#Namespace_URL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L50)

```
@(rodata)
Namespace_URL: Identifier = …
```

 

Name string is a URL.

### [Namespace\_X500 ¶](#Namespace_X500) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin#L64)

```
@(rodata)
Namespace_X500: Identifier = …
```

 

Name string is an X.500 DN (in DER or a text output format).

## Procedures

### [clock\_seq ¶](#clock_seq) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L111)

```
clock_seq :: proc "contextless" (id: Identifier) -> (clock_seq: u16) {…}
```

 

Get the clock sequence of a version 1 or version 6 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
clock\_seq: The 14-bit clock sequence field.

### [counter\_v7 ¶](#counter_v7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L239)

```
counter_v7 :: proc "contextless" (id: Identifier) -> (counter: u16) {…}
```

 

Get the 12-bit counter value of a version 7 UUID.

The UUID must have been generated with a counter, otherwise this procedure will
return random bits.

**Inputs:**  
id: The identifier.

**Returns:**  
counter: The 12-bit counter value.

### [generate\_v1 ¶](#generate_v1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L20)

```
generate_v1 :: proc(clock_seq: u16, node: runtime.Maybe($T=[6]u8) = nil, timestamp: runtime.Maybe($T=Time) = nil) -> (result: Identifier) {…}
```

 

Generate a version 1 UUID.

**Inputs:**  
clock\_seq: The clock sequence, a number which must be initialized to a random number once in the lifetime of a system.
node: An optional 48-bit spatially unique identifier, specified to be the IEEE 802 address of the system.
If one is not provided or available, 48 bits of random state will take its place.
timestamp: A timestamp from the `core:time` package, or `nil` to use the current time.

**Returns:**  
result: The generated UUID.

### [generate\_v4 ¶](#generate_v4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L63)

```
generate_v4 :: proc() -> (result: Identifier) {…}
```

 

Generate a version 4 UUID.

This UUID will be pseudorandom, save for 6 pre-determined version and variant bits.

**Returns:**  
result: The generated UUID.

### [generate\_v6 ¶](#generate_v6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L90)

```
generate_v6 :: proc(clock_seq: runtime.Maybe($T=u16) = nil, node: runtime.Maybe($T=[6]u8) = nil, timestamp: runtime.Maybe($T=Time) = nil) -> (result: Identifier) {…}
```

 

Generate a version 6 UUID.

**Inputs:**  
clock\_seq: The clock sequence from version 1, now made optional.
If unspecified, it will be replaced with random bits.
node: An optional 48-bit spatially unique identifier, specified to be the IEEE 802 address of the system.
If one is not provided or available, 48 bits of random state will take its place.
timestamp: A timestamp from the `core:time` package, or `nil` to use the current time.

**Returns:**  
result: The generated UUID.

### [generate\_v7\_basic ¶](#generate_v7_basic) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L143)

```
generate_v7_basic :: proc(timestamp: runtime.Maybe($T=Time) = nil) -> (result: Identifier) {…}
```

 

Generate a version 7 UUID.

This UUID will be pseudorandom, save for 6 pre-determined version and variant
bits and a 48-bit timestamp.

It is designed with time-based sorting in mind, such as for database usage, as
the highest bits are allocated from the timestamp of when it is created.

**Inputs:**  
timestamp: A timestamp from the `core:time` package, or `nil` to use the current time.

**Returns:**  
result: The generated UUID.




##### Related Procedure Groups

* [generate\_v7](/core/encoding/uuid/#generate_v7)

### [generate\_v7\_with\_counter ¶](#generate_v7_with_counter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L193)

```
generate_v7_with_counter :: proc(counter: u16, timestamp: runtime.Maybe($T=Time) = nil) -> (result: Identifier) {…}
```

 

Generate a version 7 UUID that has an incremented counter.

This UUID will be pseudorandom, save for 6 pre-determined version and variant
bits, a 48-bit timestamp, and 12 bits of counter state.

It is designed with time-based sorting in mind, such as for database usage, as
the highest bits are allocated from the timestamp of when it is created.

This procedure is preferable if you are generating hundreds or thousands of
UUIDs as a batch within the span of a millisecond. Do note that the counter
only has 12 bits of state, thus `counter` cannot exceed the number 4,095.

**Example:**

```
import "core:uuid"

// Create a batch of UUIDs all at once.
batch: [dynamic]uuid.Identifier

for i: u16 = 0; i < 1000; i += 1 {
	my_uuid := uuid.generate_v7_counter(i)
	append(&batch, my_uuid)
}
```

**Inputs:**  
counter: A 12-bit value which should be incremented each time a UUID is generated in a batch.
timestamp: A timestamp from the `core:time` package, or `nil` to use the current time.

**Returns:**  
result: The generated UUID.




##### Related Procedure Groups

* [generate\_v7](/core/encoding/uuid/#generate_v7)

### [generate\_v8\_hash\_bytes ¶](#generate_v8_hash_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L254)

```
generate_v8_hash_bytes :: proc(namespace: Identifier, name: []u8, algorithm: crypto_hash.Algorithm) -> (result: Identifier) {…}
```

 

Generate a version 8 UUID using a specific hashing algorithm.

This UUID is generated by hashing a name with a namespace.

Note that all version 8 UUIDs are for experimental or vendor-specific use
cases, per the specification. This use case in particular is for offering a
non-legacy alternative to UUID versions 3 and 5.

**Inputs:**  
namespace: An `Identifier` that is used to represent the underlying namespace.
This can be any one of the `Namespace_*` values provided in this package.
name: The byte slice which will be hashed with the namespace.
algorithm: A hashing algorithm from `core:crypto/hash`.

**Returns:**  
result: The generated UUID.

**Example:**

```
import "core:crypto/hash"
import "core:encoding/uuid"
import "core:fmt"

generate_v8_hash_bytes_example :: proc() {
	my_uuid := uuid.generate_v8_hash(uuid.Namespace_DNS, "www.odin-lang.org", .SHA256)
	my_uuid_string := uuid.to_string(my_uuid, context.temp_allocator)
	fmt.println(my_uuid_string)
}
```

**Output:**

```
3730f688-4bff-8dce-9cbf-74a3960c5703
```




##### Related Procedure Groups

* [generate\_v8\_hash](/core/encoding/uuid/#generate_v8_hash)

### [generate\_v8\_hash\_string ¶](#generate_v8_hash_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L320)

```
generate_v8_hash_string :: proc(namespace: Identifier, name: string, algorithm: crypto_hash.Algorithm) -> (result: Identifier) {…}
```

 

Generate a version 8 UUID using a specific hashing algorithm.

This UUID is generated by hashing a name with a namespace.

Note that all version 8 UUIDs are for experimental or vendor-specific use
cases, per the specification. This use case in particular is for offering a
non-legacy alternative to UUID versions 3 and 5.

**Inputs:**  
namespace: An `Identifier` that is used to represent the underlying namespace.
This can be any one of the `Namespace_*` values provided in this package.
name: The string which will be hashed with the namespace.
algorithm: A hashing algorithm from `core:crypto/hash`.

**Returns:**  
result: The generated UUID.

**Example:**

```
import "core:crypto/hash"
import "core:encoding/uuid"
import "core:fmt"

generate_v8_hash_string_example :: proc() {
	my_uuid := uuid.generate_v8_hash(uuid.Namespace_DNS, "www.odin-lang.org", .SHA256)
	my_uuid_string := uuid.to_string(my_uuid, context.temp_allocator)
	fmt.println(my_uuid_string)
}
```

**Output:**

```
3730f688-4bff-8dce-9cbf-74a3960c5703
```




##### Related Procedure Groups

* [generate\_v8\_hash](/core/encoding/uuid/#generate_v8_hash)

### [node ¶](#node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L124)

```
node :: proc "contextless" (id: Identifier) -> (node: [6]u8) {…}
```

 

Get the node of a version 1 or version 6 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
node: The 48-bit spatially unique identifier.

### [raw\_time\_v1 ¶](#raw_time_v1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L139)

```
raw_time_v1 :: proc "contextless" (id: Identifier) -> (timestamp: u64) {…}
```

 

Get the raw timestamp of a version 1 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
timestamp: The timestamp, in 100-nanosecond intervals since 1582-10-15.

### [raw\_time\_v6 ¶](#raw_time_v6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L178)

```
raw_time_v6 :: proc "contextless" (id: Identifier) -> (timestamp: u64) {…}
```

 

Get the raw timestamp of a version 6 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
timestamp: The timestamp, in 100-nanosecond intervals since 1582-10-15.

### [raw\_time\_v7 ¶](#raw_time_v7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L209)

```
raw_time_v7 :: proc "contextless" (id: Identifier) -> (timestamp: u64) {…}
```

 

Get the raw timestamp of a version 7 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
timestamp: The timestamp, in milliseconds since the UNIX epoch.

### [read ¶](#read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L16)

```
read :: proc "contextless" (str: string) -> (id: Identifier, error: Read_Error) {…}
```

 

Convert a string to a UUID.

**Inputs:**  
str: A string in the 8-4-4-4-12 format.

**Returns:**  
id: The converted identifier, or `nil` if there is an error.
error: A description of the error, or `nil` if successful.

### [stamp\_v8\_array ¶](#stamp_v8_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/stamping.odin#L43)

```
stamp_v8_array :: proc(array: [16]u8) -> (result: Identifier) {…}
```

 

Stamp an array of 16 bytes as being a valid version 8 UUID.

Per the specification, all version 8 UUIDs are either for experimental or
vendor-specific purposes. This procedure allows for converting arbitrary data
into custom UUIDs.

**Inputs:**  
array: An array of 16 bytes.

**Returns:**  
result: A valid version 8 UUID.




##### Related Procedure Groups

* [stamp\_v8](/core/encoding/uuid/#stamp_v8)

### [stamp\_v8\_int ¶](#stamp_v8_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/stamping.odin#L18)

```
stamp_v8_int :: proc(#any_int integer: u128) -> (result: Identifier) {…}
```

 

Stamp a 128-bit integer as being a valid version 8 UUID.

Per the specification, all version 8 UUIDs are either for experimental or
vendor-specific purposes. This procedure allows for converting arbitrary data
into custom UUIDs.

**Inputs:**  
integer: Any integer type.

**Returns:**  
result: A valid version 8 UUID.




##### Related Procedure Groups

* [stamp\_v8](/core/encoding/uuid/#stamp_v8)

### [stamp\_v8\_slice ¶](#stamp_v8_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/stamping.odin#L73)

```
stamp_v8_slice :: proc(slice: []u8) -> (result: Identifier) {…}
```

 

Stamp a slice of bytes as being a valid version 8 UUID.

If the slice is less than 16 bytes long, the data available will be used.
If it is longer than 16 bytes, only the first 16 will be used.

This procedure does not modify the underlying slice.

Per the specification, all version 8 UUIDs are either for experimental or
vendor-specific purposes. This procedure allows for converting arbitrary data
into custom UUIDs.

**Inputs:**  
slice: A slice of bytes.

**Returns:**  
result: A valid version 8 UUID.




##### Related Procedure Groups

* [stamp\_v8](/core/encoding/uuid/#stamp_v8)

### [time\_v1 ¶](#time_v1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L165)

```
time_v1 :: proc "contextless" (id: Identifier) -> (timestamp: time.Time) {…}
```

 

Get the timestamp of a version 1 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
timestamp: The timestamp of the UUID.

### [time\_v6 ¶](#time_v6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L196)

```
time_v6 :: proc "contextless" (id: Identifier) -> (timestamp: time.Time) {…}
```

 

Get the timestamp of a version 6 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
timestamp: The timestamp, in 100-nanosecond intervals since 1582-10-15.

### [time\_v7 ¶](#time_v7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L223)

```
time_v7 :: proc "contextless" (id: Identifier) -> (timestamp: time.Time) {…}
```

 

Get the timestamp of a version 7 UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
timestamp: The timestamp, in milliseconds since the UNIX epoch.

### [to\_string\_allocated ¶](#to_string_allocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/writing.odin#L90)

```
to_string_allocated :: proc(id: Identifier, allocator := context.allocator, loc := #caller_location) -> (str: string, error: runtime.Allocator_Error) #optional_ok {…}
```

 

Convert a UUID to a string in the 8-4-4-4-12 format.

*Allocates Using Provided Allocator*

**Inputs:**  
id: The identifier to convert.
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: #caller\_location)

**Returns:**  
str: The allocated and converted string.
error: An optional allocator error if one occured, `nil` otherwise.




##### Related Procedure Groups

* [to\_string](/core/encoding/uuid/#to_string)

### [to\_string\_buffer ¶](#to_string_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/writing.odin#L115)

```
to_string_buffer :: proc(id: Identifier, buffer: []u8, loc := #caller_location) -> (str: string) {…}
```

 

Convert a UUID to a string in the 8-4-4-4-12 format.

**Inputs:**  
id: The identifier to convert.
buffer: A byte buffer to store the result. Must be at least 36 bytes large.
loc: The caller location for debugging purposes (default: #caller\_location)

**Returns:**  
str: The converted string which will be stored in `buffer`.




##### Related Procedure Groups

* [to\_string](/core/encoding/uuid/#to_string)

### [unsafe\_write ¶](#unsafe_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/writing.odin#L56)

```
unsafe_write :: proc(w: io.Stream, id: Identifier) {…}
```

 

Write a UUID in the 8-4-4-4-12 format.

This procedure performs no error checking on the underlying stream.

**Inputs:**  
w: A writable stream.
id: The identifier to convert.

### [variant ¶](#variant) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L87)

```
variant :: proc "contextless" (id: Identifier) -> (variant: Variant_Type) {…}
```

 

Get the variant of a UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
variant: The variant type.

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin#L74)

```
version :: proc "contextless" (id: Identifier) -> (number: int) {…}
```

 

Get the version of a UUID.

**Inputs:**  
id: The identifier.

**Returns:**  
number: The version number.

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/writing.odin#L24)

```
write :: proc(w: io.Stream, id: Identifier) -> (error: io.Error) {…}
```

 

Write a UUID in the 8-4-4-4-12 format.

This procedure performs error checking with every byte written.

If you can guarantee beforehand that your stream has enough space to hold the
UUID (36 bytes), then it is better to use `unsafe_write` instead as that will
be faster.

**Inputs:**  
w: A writable stream.
id: The identifier to convert.

**Returns:**  
error: An `io` error, if one occurred, otherwise `nil`.

## Procedure Groups

### [generate\_v7 ¶](#generate_v7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L215)

```
generate_v7 :: proc{
	generate_v7_basic,
	generate_v7_with_counter,
}
```

### [generate\_v8\_hash ¶](#generate_v8_hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin#L330)

```
generate_v8_hash :: proc{
	generate_v8_hash_bytes,
	generate_v8_hash_string,
}
```

### [stamp\_v8 ¶](#stamp_v8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/stamping.odin#L85)

```
stamp_v8 :: proc{
	stamp_v8_int,
	stamp_v8_array,
	stamp_v8_slice,
}
```

### [to\_string ¶](#to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/writing.odin#L132)

```
to_string :: proc{
	to_string_allocated,
	to_string_buffer,
}
```

## Source Files

* [definitions.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/definitions.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/doc.odin)
* [generation.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/generation.odin)
* [reading.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/reading.odin)
* [stamping.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/stamping.odin)
* [writing.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/uuid/writing.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.380565600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Identifier](#Identifier)
    + [Read\_Error](#Read_Error)
    + [Variant\_Type](#Variant_Type)
  * [Constants](#pkg-Constants)
    + [EXPECTED\_LENGTH](#EXPECTED_LENGTH)
    + [HNS\_INTERVALS\_BETWEEN\_GREG\_AND\_UNIX](#HNS_INTERVALS_BETWEEN_GREG_AND_UNIX)
    + [VARIANT\_BYTE\_INDEX](#VARIANT_BYTE_INDEX)
    + [VERSION\_7\_COUNTER\_MASK](#VERSION_7_COUNTER_MASK)
    + [VERSION\_7\_COUNTER\_SHIFT](#VERSION_7_COUNTER_SHIFT)
    + [VERSION\_7\_TIME\_MASK](#VERSION_7_TIME_MASK)
    + [VERSION\_7\_TIME\_SHIFT](#VERSION_7_TIME_SHIFT)
    + [VERSION\_BYTE\_INDEX](#VERSION_BYTE_INDEX)
  * [Variables](#pkg-Variables)
    + [Namespace\_DNS](#Namespace_DNS)
    + [Namespace\_OID](#Namespace_OID)
    + [Namespace\_URL](#Namespace_URL)
    + [Namespace\_X500](#Namespace_X500)
  * [Procedures](#pkg-Procedures)
    + [clock\_seq](#clock_seq)
    + [counter\_v7](#counter_v7)
    + [generate\_v1](#generate_v1)
    + [generate\_v4](#generate_v4)
    + [generate\_v6](#generate_v6)
    + [generate\_v7\_basic](#generate_v7_basic)
    + [generate\_v7\_with\_counter](#generate_v7_with_counter)
    + [generate\_v8\_hash\_bytes](#generate_v8_hash_bytes)
    + [generate\_v8\_hash\_string](#generate_v8_hash_string)
    + [node](#node)
    + [raw\_time\_v1](#raw_time_v1)
    + [raw\_time\_v6](#raw_time_v6)
    + [raw\_time\_v7](#raw_time_v7)
    + [read](#read)
    + [stamp\_v8\_array](#stamp_v8_array)
    + [stamp\_v8\_int](#stamp_v8_int)
    + [stamp\_v8\_slice](#stamp_v8_slice)
    + [time\_v1](#time_v1)
    + [time\_v6](#time_v6)
    + [time\_v7](#time_v7)
    + [to\_string\_allocated](#to_string_allocated)
    + [to\_string\_buffer](#to_string_buffer)
    + [unsafe\_write](#unsafe_write)
    + [variant](#variant)
    + [version](#version)
    + [write](#write)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [generate\_v7](#generate_v7)
    + [generate\_v8\_hash](#generate_v8_hash)
    + [stamp\_v8](#stamp_v8)
    + [to\_string](#to_string)
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