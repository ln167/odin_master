package crypto/ecdh - pkg.odin-lang.org 






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



Current Package: *[ecdh](/core/crypto/ecdh)*

  

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
3. [ecdh](/core/crypto/ecdh)

# package core:crypto/ecdh [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A generic interface to Elliptic Curve Diffie-Hellman key exchange.

## Index

Types (3)

* [Curve](#Curve)
* [Private\_Key](#Private_Key)
* [Public\_Key](#Public_Key)

Constants (0)

This section is empty.

Variables (4)

* [CURVE\_NAMES](#CURVE_NAMES)
* [PRIVATE\_KEY\_SIZES](#PRIVATE_KEY_SIZES)
* [PUBLIC\_KEY\_SIZES](#PUBLIC_KEY_SIZES)
* [SHARED\_SECRET\_SIZES](#SHARED_SECRET_SIZES)

Procedures (14)

* [curve](#curve)
* [ecdh](#ecdh)
* [key\_size](#key_size)
* [private\_key\_bytes](#private_key_bytes)
* [private\_key\_clear](#private_key_clear)
* [private\_key\_equal](#private_key_equal)
* [private\_key\_generate](#private_key_generate)
* [private\_key\_set\_bytes](#private_key_set_bytes)
* [public\_key\_bytes](#public_key_bytes)
* [public\_key\_clear](#public_key_clear)
* [public\_key\_equal](#public_key_equal)
* [public\_key\_set\_bytes](#public_key_set_bytes)
* [public\_key\_set\_priv](#public_key_set_priv)
* [shared\_secret\_size](#shared_secret_size)

Procedure Groups (0)

This section is empty.

## Types

### [Curve ¶](#Curve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L17)

```
Curve :: enum int {
	Invalid, 
	SECP256R1, 
	SECP384R1, 
	X25519, 
	X448, 
}
```

 

Curve the curve identifier associated with a given Private\_Key
or Public\_Key




##### Related Procedures With Parameters

* [private\_key\_generate](/core/crypto/ecdh/#private_key_generate)
* [private\_key\_set\_bytes](/core/crypto/ecdh/#private_key_set_bytes)
* [public\_key\_set\_bytes](/core/crypto/ecdh/#public_key_set_bytes)



##### Related Procedures With Returns

* [curve](/core/crypto/ecdh/#curve)

### [Private\_Key ¶](#Private_Key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L80)

```
Private_Key :: struct {
	// WARNING: All of the members are to be treated as internal (ie:
	// the Private_Key structure is intended to be opaque).
	_curve:   Curve,
	_impl:    union {
		field_scalarp256r1.Montgomery_Domain_Field_Element, 
		field_scalarp384r1.Montgomery_Domain_Field_Element, 
		[32]u8, 
		[56]u8, 
	},
	_pub_key: Public_Key,
}
```

 

Private\_Key is an ECDH private key.




##### Related Procedures With Parameters

* [ecdh](/core/crypto/ecdh/#ecdh)
* [private\_key\_bytes](/core/crypto/ecdh/#private_key_bytes)
* [private\_key\_clear](/core/crypto/ecdh/#private_key_clear)
* [private\_key\_equal](/core/crypto/ecdh/#private_key_equal)
* [private\_key\_generate](/core/crypto/ecdh/#private_key_generate)
* [private\_key\_set\_bytes](/core/crypto/ecdh/#private_key_set_bytes)
* [public\_key\_set\_priv](/core/crypto/ecdh/#public_key_set_priv)

### [Public\_Key ¶](#Public_Key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L94)

```
Public_Key :: struct {
	// WARNING: All of the members are to be treated as internal (ie:
	// the Public_Key structure is intended to be opaque).
	_curve: Curve,
	_impl:  union {
		_weierstrass.Point_p256r1, 
		_weierstrass.Point_p384r1, 
		[32]u8, 
		[56]u8, 
	},
}
```

 

Public\_Key is an ECDH public key.




##### Related Procedures With Parameters

* [ecdh](/core/crypto/ecdh/#ecdh)
* [public\_key\_bytes](/core/crypto/ecdh/#public_key_bytes)
* [public\_key\_clear](/core/crypto/ecdh/#public_key_clear)
* [public\_key\_equal](/core/crypto/ecdh/#public_key_equal)
* [public\_key\_set\_bytes](/core/crypto/ecdh/#public_key_set_bytes)
* [public\_key\_set\_priv](/core/crypto/ecdh/#public_key_set_priv)

## Constants

This section is empty.

## Variables

### [CURVE\_NAMES ¶](#CURVE_NAMES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L26)

```
CURVE_NAMES: [Curve]string = …
```

 

CURVE\_NAMES is the Curve to curve name string.

### [PRIVATE\_KEY\_SIZES ¶](#PRIVATE_KEY_SIZES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L35)

```
PRIVATE_KEY_SIZES: [Curve]int = …
```

 

PRIVATE\_KEY\_SIZES is the Curve to private key size in bytes.

### [PUBLIC\_KEY\_SIZES ¶](#PUBLIC_KEY_SIZES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L44)

```
PUBLIC_KEY_SIZES: [Curve]int = …
```

 

PUBLIC\_KEY\_SIZES is the Curve to public key size in bytes.

### [SHARED\_SECRET\_SIZES ¶](#SHARED_SECRET_SIZES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L53)

```
SHARED_SECRET_SIZES: [Curve]int = …
```

 

SHARED\_SECRET\_SIZES is the Curve to shared secret size in bytes.

## Procedures

### [curve ¶](#curve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L438)

```
curve :: proc(k: ^$T) -> Curve {…}
```

 

curve returns the Curve used by a Private\_Key or Public\_Key instance.

### [ecdh ¶](#ecdh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L403)

```
ecdh :: proc(priv_key: ^Private_Key, pub_key: ^Public_Key, dst: []u8) -> bool {…}
```

 

ecdh performs an Elliptic Curve Diffie-Hellman key exchange betwween
the Private\_Key and Public\_Key, writing the shared secret to dst.

The neutral element is rejected as an error.

### [key\_size ¶](#key_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L443)

```
key_size :: proc(k: ^$T) -> int {…}
```

 

key\_size returns the key size of a Private\_Key or Public\_Key in bytes.

### [private\_key\_bytes ¶](#private_key_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L226)

```
private_key_bytes :: proc(priv_key: ^Private_Key, dst: []u8) {…}
```

 

private\_key\_bytes sets dst to byte-encoding of priv\_key.

### [private\_key\_clear ¶](#private_key_clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L274)

```
private_key_clear :: proc "contextless" (priv_key: ^Private_Key) {…}
```

 

private\_key\_clear clears priv\_key to the uninitialized state.

### [private\_key\_equal ¶](#private_key_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L250)

```
private_key_equal :: proc(p, q: ^Private_Key) -> bool {…}
```

 

private\_key\_equal returns true iff the private keys are equal,
in constant time.

### [private\_key\_generate ¶](#private_key_generate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L109)

```
private_key_generate :: proc(priv_key: ^Private_Key, curve: Curve) -> bool {…}
```

 

private\_key\_generate uses the system entropy source to generate a new
Private\_Key. This will only fail iff the system entropy source is
missing or broken.

### [private\_key\_set\_bytes ¶](#private_key_set_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L146)

```
private_key_set_bytes :: proc(priv_key: ^Private_Key, curve: Curve, b: []u8) -> bool {…}
```

 

private\_key\_set\_bytes decodes a byte-encoded private key, and returns
true iff the operation was successful.

### [public\_key\_bytes ¶](#public_key_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L336)

```
public_key_bytes :: proc(pub_key: ^Public_Key, dst: []u8) {…}
```

 

public\_key\_bytes sets dst to byte-encoding of pub\_key.

### [public\_key\_clear ¶](#public_key_clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L394)

```
public_key_clear :: proc "contextless" (pub_key: ^Public_Key) {…}
```

 

public\_key\_clear clears pub\_key to the uninitialized state.

### [public\_key\_equal ¶](#public_key_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L370)

```
public_key_equal :: proc(p, q: ^Public_Key) -> bool {…}
```

 

public\_key\_equal returns true iff the public keys are equal,
in constant time.

### [public\_key\_set\_bytes ¶](#public_key_set_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L280)

```
public_key_set_bytes :: proc(pub_key: ^Public_Key, curve: Curve, b: []u8) -> bool {…}
```

 

public\_key\_set\_bytes decodes a byte-encoded public key, and returns
true iff the operation was successful.

### [public\_key\_set\_priv ¶](#public_key_set_priv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L329)

```
public_key_set_priv :: proc(pub_key: ^Public_Key, priv_key: ^Private_Key) {…}
```

 

public\_key\_set\_priv sets pub\_key to the public component of priv\_key.

### [shared\_secret\_size ¶](#shared_secret_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin#L453)

```
shared_secret_size :: proc(k: ^$T) -> int {…}
```

 

shared\_secret\_size returns the shared secret size of a key exchange
in bytes.

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/doc.odin)
* [ecdh.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/ecdh/ecdh.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.190514500 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Curve](#Curve)
    + [Private\_Key](#Private_Key)
    + [Public\_Key](#Public_Key)
  * [Variables](#pkg-Variables)
    + [CURVE\_NAMES](#CURVE_NAMES)
    + [PRIVATE\_KEY\_SIZES](#PRIVATE_KEY_SIZES)
    + [PUBLIC\_KEY\_SIZES](#PUBLIC_KEY_SIZES)
    + [SHARED\_SECRET\_SIZES](#SHARED_SECRET_SIZES)
  * [Procedures](#pkg-Procedures)
    + [curve](#curve)
    + [ecdh](#ecdh)
    + [key\_size](#key_size)
    + [private\_key\_bytes](#private_key_bytes)
    + [private\_key\_clear](#private_key_clear)
    + [private\_key\_equal](#private_key_equal)
    + [private\_key\_generate](#private_key_generate)
    + [private\_key\_set\_bytes](#private_key_set_bytes)
    + [public\_key\_bytes](#public_key_bytes)
    + [public\_key\_clear](#public_key_clear)
    + [public\_key\_equal](#public_key_equal)
    + [public\_key\_set\_bytes](#public_key_set_bytes)
    + [public\_key\_set\_priv](#public_key_set_priv)
    + [shared\_secret\_size](#shared_secret_size)
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