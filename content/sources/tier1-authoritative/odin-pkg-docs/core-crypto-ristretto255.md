package crypto/ristretto255 - pkg.odin-lang.org 






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



Current Package: *[ristretto255](/core/crypto/ristretto255)*

  

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
2. [crypto](/core/crypto)
3. [ristretto255](/core/crypto/ristretto255)

# package core:crypto/ristretto255 [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Ristretto255 prime-order group.

See:
<https://www.rfc-editor.org/rfc/rfc9496>

## Index

Types (2)

* [Group\_Element](#Group_Element)
* [Scalar](#Scalar)

Constants (4)

* [ELEMENT\_SIZE](#ELEMENT_SIZE)
* [SCALAR\_SIZE](#SCALAR_SIZE)
* [WIDE\_ELEMENT\_SIZE](#WIDE_ELEMENT_SIZE)
* [WIDE\_SCALAR\_SIZE](#WIDE_SCALAR_SIZE)

Variables (0)

This section is empty.

Procedures (32)

* [ge\_add](#ge_add)
* [ge\_bytes](#ge_bytes)
* [ge\_clear](#ge_clear)
* [ge\_cond\_assign](#ge_cond_assign)
* [ge\_cond\_negate](#ge_cond_negate)
* [ge\_cond\_select](#ge_cond_select)
* [ge\_double](#ge_double)
* [ge\_double\_scalarmult\_generator\_vartime](#ge_double_scalarmult_generator_vartime)
* [ge\_equal](#ge_equal)
* [ge\_generator](#ge_generator)
* [ge\_identity](#ge_identity)
* [ge\_is\_identity](#ge_is_identity)
* [ge\_negate](#ge_negate)
* [ge\_scalarmult](#ge_scalarmult)
* [ge\_scalarmult\_generator](#ge_scalarmult_generator)
* [ge\_scalarmult\_vartime](#ge_scalarmult_vartime)
* [ge\_set](#ge_set)
* [ge\_set\_bytes](#ge_set_bytes)
* [ge\_set\_wide\_bytes](#ge_set_wide_bytes)
* [sc\_add](#sc_add)
* [sc\_bytes](#sc_bytes)
* [sc\_clear](#sc_clear)
* [sc\_cond\_assign](#sc_cond_assign)
* [sc\_equal](#sc_equal)
* [sc\_mul](#sc_mul)
* [sc\_negate](#sc_negate)
* [sc\_set](#sc_set)
* [sc\_set\_bytes](#sc_set_bytes)
* [sc\_set\_bytes\_wide](#sc_set_bytes_wide)
* [sc\_set\_u64](#sc_set_u64)
* [sc\_square](#sc_square)
* [sc\_sub](#sc_sub)

Procedure Groups (0)

This section is empty.

## Types

### [Group\_Element ¶](#Group_Element) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L64)

```
Group_Element :: struct {
	// WARNING: While the internal representation is an Edwards25519
	// group element, this is not guaranteed to always be the case,
	// and your code *WILL* break if you mess with `_p`.
	_p:              _edwards25519.Group_Element,
	_is_initialized: bool,
}
```

 

Group\_Element is a ristretto255 group element. The zero-initialized
value is invalid.




##### Related Procedures With Parameters

* [ge\_add](/core/crypto/ristretto255/#ge_add)
* [ge\_bytes](/core/crypto/ristretto255/#ge_bytes)
* [ge\_clear](/core/crypto/ristretto255/#ge_clear)
* [ge\_cond\_assign](/core/crypto/ristretto255/#ge_cond_assign)
* [ge\_cond\_negate](/core/crypto/ristretto255/#ge_cond_negate)
* [ge\_cond\_select](/core/crypto/ristretto255/#ge_cond_select)
* [ge\_double](/core/crypto/ristretto255/#ge_double)
* [ge\_double\_scalarmult\_generator\_vartime](/core/crypto/ristretto255/#ge_double_scalarmult_generator_vartime)
* [ge\_equal](/core/crypto/ristretto255/#ge_equal)
* [ge\_generator](/core/crypto/ristretto255/#ge_generator)
* [ge\_identity](/core/crypto/ristretto255/#ge_identity)
* [ge\_is\_identity](/core/crypto/ristretto255/#ge_is_identity)
* [ge\_negate](/core/crypto/ristretto255/#ge_negate)
* [ge\_scalarmult](/core/crypto/ristretto255/#ge_scalarmult)
* [ge\_scalarmult\_generator](/core/crypto/ristretto255/#ge_scalarmult_generator)
* [ge\_scalarmult\_vartime](/core/crypto/ristretto255/#ge_scalarmult_vartime)
* [ge\_set](/core/crypto/ristretto255/#ge_set)
* [ge\_set\_bytes](/core/crypto/ristretto255/#ge_set_bytes)
* [ge\_set\_wide\_bytes](/core/crypto/ristretto255/#ge_set_wide_bytes)

### [Scalar ¶](#Scalar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L13)

```
Scalar :: field_scalar25519.Montgomery_Domain_Field_Element
```

 

Scalar is a ristretto255 scalar. The zero-initialized value is valid,
and represents `0`.




##### Related Procedures With Parameters

* [ge\_double\_scalarmult\_generator\_vartime](/core/crypto/ristretto255/#ge_double_scalarmult_generator_vartime)
* [ge\_scalarmult](/core/crypto/ristretto255/#ge_scalarmult)
* [ge\_scalarmult\_generator](/core/crypto/ristretto255/#ge_scalarmult_generator)
* [ge\_scalarmult\_vartime](/core/crypto/ristretto255/#ge_scalarmult_vartime)
* [sc\_add](/core/crypto/ristretto255/#sc_add)
* [sc\_bytes](/core/crypto/ristretto255/#sc_bytes)
* [sc\_clear](/core/crypto/ristretto255/#sc_clear)
* [sc\_cond\_assign](/core/crypto/ristretto255/#sc_cond_assign)
* [sc\_equal](/core/crypto/ristretto255/#sc_equal)
* [sc\_mul](/core/crypto/ristretto255/#sc_mul)
* [sc\_negate](/core/crypto/ristretto255/#sc_negate)
* [sc\_set](/core/crypto/ristretto255/#sc_set)
* [sc\_set\_bytes](/core/crypto/ristretto255/#sc_set_bytes)
* [sc\_set\_bytes\_wide](/core/crypto/ristretto255/#sc_set_bytes_wide)
* [sc\_set\_u64](/core/crypto/ristretto255/#sc_set_u64)
* [sc\_square](/core/crypto/ristretto255/#sc_square)
* [sc\_sub](/core/crypto/ristretto255/#sc_sub)

## Constants

### [ELEMENT\_SIZE ¶](#ELEMENT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L14)

```
ELEMENT_SIZE :: 32
```

 

ELEMENT\_SIZE is the size of a byte-encoded ristretto255 group element.

### [SCALAR\_SIZE ¶](#SCALAR_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L6)

```
SCALAR_SIZE :: 32
```

 

SCALAR\_SIZE is the size of a byte-encoded ristretto255 scalar.

### [WIDE\_ELEMENT\_SIZE ¶](#WIDE_ELEMENT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L17)

```
WIDE_ELEMENT_SIZE :: 64
```

 

WIDE\_ELEMENT\_SIZE is the side of a wide byte-encoded ristretto255
group element.

### [WIDE\_SCALAR\_SIZE ¶](#WIDE_SCALAR_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L9)

```
WIDE_SCALAR_SIZE :: 64
```

 

WIDE\_SCALAR\_SIZE is the size of a wide byte-encoded ristretto255
scalar.

## Variables

This section is empty.

## Procedures

### [ge\_add ¶](#ge_add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L304)

```
ge_add :: proc(ge, a, b: ^Group_Element) {…}
```

 

ge\_add sets `ge = a + b`.

### [ge\_bytes ¶](#ge_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L222)

```
ge_bytes :: proc(ge: ^Group_Element, dst: []u8) {…}
```

 

ge\_bytes sets dst to the canonical encoding of ge.

### [ge\_clear ¶](#ge_clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L73)

```
ge_clear :: proc "contextless" (ge: ^Group_Element) {…}
```

 

ge\_clear clears ge to the uninitialized state.

### [ge\_cond\_assign ¶](#ge_cond_assign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L374)

```
ge_cond_assign :: proc(ge, a: ^Group_Element, ctrl: int) {…}
```

 

ge\_cond\_assign sets `ge = ge` iff `ctrl == 0` and `ge = a` iff `ctrl == 1`.
Behavior for all other values of ctrl are undefined,

### [ge\_cond\_negate ¶](#ge_cond_negate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L365)

```
ge_cond_negate :: proc(ge, a: ^Group_Element, ctrl: int) {…}
```

 

ge\_cond\_negate sets `ge = a` iff `ctrl == 0` and `ge = -a` iff `ctrl == 1`.
Behavior for all other values of ctrl are undefined,

### [ge\_cond\_select ¶](#ge_cond_select) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L382)

```
ge_cond_select :: proc(ge, a, b: ^Group_Element, ctrl: int) {…}
```

 

ge\_cond\_select sets `ge = a` iff `ctrl == 0` and `ge = b` iff `ctrl == 1`.
Behavior for all other values of ctrl are undefined,

### [ge\_double ¶](#ge_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L312)

```
ge_double :: proc(ge, a: ^Group_Element) {…}
```

 

ge\_double sets `ge = a + a`.

### [ge\_double\_scalarmult\_generator\_vartime ¶](#ge_double_scalarmult_generator_vartime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L351)

```
ge_double_scalarmult_generator_vartime :: proc(ge: ^Group_Element, a: ^field_scalar25519.Montgomery_Domain_Field_Element, A: ^Group_Element, b: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

ge\_double\_scalarmult\_generator\_vartime sets `ge = A * a + G * b` in variable
time.

### [ge\_equal ¶](#ge_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L391)

```
ge_equal :: proc(a, b: ^Group_Element) -> int {…}
```

 

ge\_equal returns 1 iff `a == b`, and 0 otherwise.

### [ge\_generator ¶](#ge_generator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L92)

```
ge_generator :: proc "contextless" (ge: ^Group_Element) {…}
```

 

ge\_generator sets ge to the group generator.

### [ge\_identity ¶](#ge_identity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L86)

```
ge_identity :: proc "contextless" (ge: ^Group_Element) {…}
```

 

ge\_identity sets ge to the identity (neutral) element.

### [ge\_is\_identity ¶](#ge_is_identity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L410)

```
ge_is_identity :: proc(ge: ^Group_Element) -> int {…}
```

 

ge\_is\_identity returns 1 iff `ge` is the identity element, and 0 otherwise.

### [ge\_negate ¶](#ge_negate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L320)

```
ge_negate :: proc(ge, a: ^Group_Element) {…}
```

 

ge\_negate sets `ge = -a`.

### [ge\_scalarmult ¶](#ge_scalarmult) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L328)

```
ge_scalarmult :: proc(ge, A: ^Group_Element, sc: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

ge\_scalarmult sets `ge = A * sc`.

### [ge\_scalarmult\_generator ¶](#ge_scalarmult_generator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L336)

```
ge_scalarmult_generator :: proc "contextless" (ge: ^Group_Element, sc: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

ge\_scalarmult\_generator sets `ge = G * sc`

### [ge\_scalarmult\_vartime ¶](#ge_scalarmult_vartime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L342)

```
ge_scalarmult_vartime :: proc(ge, A: ^Group_Element, sc: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

ge\_scalarmult\_vartime sets `ge = A * sc` in variable time.

### [ge\_set ¶](#ge_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L78)

```
ge_set :: proc(ge, a: ^Group_Element) {…}
```

 

ge\_set sets `ge = a`.

### [ge\_set\_bytes ¶](#ge_set_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L100)

```
ge_set_bytes :: proc "contextless" (ge: ^Group_Element, b: []u8) -> bool {…}
```

 

ge\_set\_bytes sets ge to the result of decoding b as a ristretto255
group element, and returns true on success.

### [ge\_set\_wide\_bytes ¶](#ge_set_wide_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin#L201)

```
ge_set_wide_bytes :: proc(ge: ^Group_Element, b: []u8) {…}
```

 

ge\_set\_wide\_bytes sets ge to the result of deriving a ristretto255
group element, from a wide (512-bit) byte string.

### [sc\_add ¶](#sc_add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L59)

```
sc_add :: proc "contextless" (sc, a, b: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

sc\_add sets `sc = a + b`.

### [sc\_bytes ¶](#sc_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L52)

```
sc_bytes :: proc(sc: ^field_scalar25519.Montgomery_Domain_Field_Element, dst: []u8) {…}
```

 

sc\_bytes sets dst to the canonical encoding of sc.

### [sc\_clear ¶](#sc_clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L16)

```
sc_clear :: proc "contextless" (sc: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

sc\_clear clears sc to the uninitialized state.

### [sc\_cond\_assign ¶](#sc_cond_assign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L85)

```
sc_cond_assign :: proc(sc, a: ^field_scalar25519.Montgomery_Domain_Field_Element, ctrl: int) {…}
```

 

sc\_cond\_assign sets `sc = sc` iff `ctrl == 0` and `sc = a` iff `ctrl == 1`.
Behavior for all other values of ctrl are undefined,

### [sc\_equal ¶](#sc_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L91)

```
sc_equal :: proc(a, b: ^field_scalar25519.Montgomery_Domain_Field_Element) -> int {…}
```

 

sc\_equal returns 1 iff `a == b`, and 0 otherwise.

### [sc\_mul ¶](#sc_mul) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L74)

```
sc_mul :: proc "contextless" (sc, a, b: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

sc\_mul sets `sc = a * b`.

### [sc\_negate ¶](#sc_negate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L69)

```
sc_negate :: proc "contextless" (sc, a: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

sc\_negate sets `sc = -a`.

### [sc\_set ¶](#sc_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L21)

```
sc_set :: proc "contextless" (sc, a: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

sc\_set sets `sc = a`.

### [sc\_set\_bytes ¶](#sc_set_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L33)

```
sc_set_bytes :: proc(sc: ^field_scalar25519.Montgomery_Domain_Field_Element, b: []u8) -> bool {…}
```

 

sc\_set\_bytes sets sc to the result of decoding b as a ristretto255
scalar, and returns true on success.

### [sc\_set\_bytes\_wide ¶](#sc_set_bytes_wide) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L44)

```
sc_set_bytes_wide :: proc(sc: ^field_scalar25519.Montgomery_Domain_Field_Element, b: []u8) {…}
```

 

sc\_set\_wide\_bytes sets sc to the result of deriving a ristretto255
scalar, from a wide (512-bit) byte string by interpreting b as a
little-endian value, and reducing it mod the group order.

### [sc\_set\_u64 ¶](#sc_set_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L26)

```
sc_set_u64 :: proc "contextless" (sc: ^field_scalar25519.Montgomery_Domain_Field_Element, i: u64) {…}
```

 

sc\_set\_u64 sets `sc = i`.

### [sc\_square ¶](#sc_square) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L79)

```
sc_square :: proc "contextless" (sc, a: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

sc\_square sets `sc = a^2`.

### [sc\_sub ¶](#sc_sub) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin#L64)

```
sc_sub :: proc "contextless" (sc, a, b: ^field_scalar25519.Montgomery_Domain_Field_Element) {…}
```

 

sc\_sub sets `sc = a - b`.

## Procedure Groups

This section is empty.

## Source Files

* [ristretto255.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255.odin)
* [ristretto255\_scalar.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/ristretto255/ristretto255_scalar.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.255856100 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Group\_Element](#Group_Element)
    + [Scalar](#Scalar)
  * [Constants](#pkg-Constants)
    + [ELEMENT\_SIZE](#ELEMENT_SIZE)
    + [SCALAR\_SIZE](#SCALAR_SIZE)
    + [WIDE\_ELEMENT\_SIZE](#WIDE_ELEMENT_SIZE)
    + [WIDE\_SCALAR\_SIZE](#WIDE_SCALAR_SIZE)
  * [Procedures](#pkg-Procedures)
    + [ge\_add](#ge_add)
    + [ge\_bytes](#ge_bytes)
    + [ge\_clear](#ge_clear)
    + [ge\_cond\_assign](#ge_cond_assign)
    + [ge\_cond\_negate](#ge_cond_negate)
    + [ge\_cond\_select](#ge_cond_select)
    + [ge\_double](#ge_double)
    + [ge\_double\_scalarmult\_generator\_vartime](#ge_double_scalarmult_generator_vartime)
    + [ge\_equal](#ge_equal)
    + [ge\_generator](#ge_generator)
    + [ge\_identity](#ge_identity)
    + [ge\_is\_identity](#ge_is_identity)
    + [ge\_negate](#ge_negate)
    + [ge\_scalarmult](#ge_scalarmult)
    + [ge\_scalarmult\_generator](#ge_scalarmult_generator)
    + [ge\_scalarmult\_vartime](#ge_scalarmult_vartime)
    + [ge\_set](#ge_set)
    + [ge\_set\_bytes](#ge_set_bytes)
    + [ge\_set\_wide\_bytes](#ge_set_wide_bytes)
    + [sc\_add](#sc_add)
    + [sc\_bytes](#sc_bytes)
    + [sc\_clear](#sc_clear)
    + [sc\_cond\_assign](#sc_cond_assign)
    + [sc\_equal](#sc_equal)
    + [sc\_mul](#sc_mul)
    + [sc\_negate](#sc_negate)
    + [sc\_set](#sc_set)
    + [sc\_set\_bytes](#sc_set_bytes)
    + [sc\_set\_bytes\_wide](#sc_set_bytes_wide)
    + [sc\_set\_u64](#sc_set_u64)
    + [sc\_square](#sc_square)
    + [sc\_sub](#sc_sub)
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