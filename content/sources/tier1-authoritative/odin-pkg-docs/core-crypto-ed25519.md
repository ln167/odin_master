package crypto/ed25519 - pkg.odin-lang.org 






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



Current Package: *[ed25519](/core/crypto/ed25519)*

  

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
3. [ed25519](/core/crypto/ed25519)

# package core:crypto/ed25519 [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`Ed25519` EdDSA signature algorithm.

See:
<https://datatracker.ietf.org/doc/html/rfc8032>
<https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-5.pdf>
<https://eprint.iacr.org/2020/1244.pdf>

## Index

Types (2)

* [Private\_Key](#Private_Key)
* [Public\_Key](#Public_Key)

Constants (3)

* [PRIVATE\_KEY\_SIZE](#PRIVATE_KEY_SIZE)
* [PUBLIC\_KEY\_SIZE](#PUBLIC_KEY_SIZE)
* [SIGNATURE\_SIZE](#SIGNATURE_SIZE)

Variables (0)

This section is empty.

Procedures (10)

* [private\_key\_bytes](#private_key_bytes)
* [private\_key\_clear](#private_key_clear)
* [private\_key\_generate](#private_key_generate)
* [private\_key\_set\_bytes](#private_key_set_bytes)
* [public\_key\_bytes](#public_key_bytes)
* [public\_key\_equal](#public_key_equal)
* [public\_key\_set\_bytes](#public_key_set_bytes)
* [public\_key\_set\_priv](#public_key_set_priv)
* [sign](#sign)
* [verify](#verify)

Procedure Groups (0)

This section is empty.

## Types

### [Private\_Key ¶](#Private_Key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L26)

```
Private_Key :: struct {
	// WARNING: All of the members are to be treated as internal (ie:
	// the Private_Key structure is intended to be opaque).  There are
	// subtle vulnerabilities that can be introduced if the internal
	// values are allowed to be altered.
	// 
	// See: https://github.com/MystenLabs/ed25519-unsafe-libs
	_b:              [32]u8,
	_s:              field_scalar25519.Montgomery_Domain_Field_Element,
	_hdigest2:       [32]u8,
	_pub_key:        Public_Key,
	_is_initialized: bool,
}
```

 

Private\_Key is an Ed25519 private key.




##### Related Procedures With Parameters

* [private\_key\_bytes](/core/crypto/ed25519/#private_key_bytes)
* [private\_key\_clear](/core/crypto/ed25519/#private_key_clear)
* [private\_key\_generate](/core/crypto/ed25519/#private_key_generate)
* [private\_key\_set\_bytes](/core/crypto/ed25519/#private_key_set_bytes)
* [public\_key\_set\_priv](/core/crypto/ed25519/#public_key_set_priv)
* [sign](/core/crypto/ed25519/#sign)

### [Public\_Key ¶](#Public_Key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L41)

```
Public_Key :: struct {
	// WARNING: All of the members are to be treated as internal (ie:
	// the Public_Key structure is intended to be opaque).
	_b:              [32]u8,
	_neg_A:          _edwards25519.Group_Element,
	_is_valid:       bool,
	_is_initialized: bool,
}
```

 

Public\_Key is an Ed25519 public key.




##### Related Procedures With Parameters

* [public\_key\_bytes](/core/crypto/ed25519/#public_key_bytes)
* [public\_key\_equal](/core/crypto/ed25519/#public_key_equal)
* [public\_key\_set\_bytes](/core/crypto/ed25519/#public_key_set_bytes)
* [public\_key\_set\_priv](/core/crypto/ed25519/#public_key_set_priv)
* [verify](/core/crypto/ed25519/#verify)

## Constants

### [PRIVATE\_KEY\_SIZE ¶](#PRIVATE_KEY_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L16)

```
PRIVATE_KEY_SIZE :: 32
```

 

PRIVATE\_KEY\_SIZE is the byte-encoded private key size.

### [PUBLIC\_KEY\_SIZE ¶](#PUBLIC_KEY_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L18)

```
PUBLIC_KEY_SIZE :: 32
```

 

PUBLIC\_KEY\_SIZE is the byte-encoded public key size.

### [SIGNATURE\_SIZE ¶](#SIGNATURE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L20)

```
SIGNATURE_SIZE :: 64
```

 

SIGNATURE\_SIZE is the byte-encoded signature size.

## Variables

This section is empty.

## Procedures

### [private\_key\_bytes ¶](#private_key_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L101)

```
private_key_bytes :: proc(priv_key: ^Private_Key, dst: []u8) {…}
```

 

private\_key\_bytes sets dst to byte-encoding of priv\_key.

### [private\_key\_clear ¶](#private_key_clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L109)

```
private_key_clear :: proc "contextless" (priv_key: ^Private_Key) {…}
```

 

private\_key\_clear clears priv\_key to the uninitialized state.

### [private\_key\_generate ¶](#private_key_generate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L53)

```
private_key_generate :: proc(priv_key: ^Private_Key) -> bool {…}
```

 

private\_key\_generate uses the system entropy source to generate a new
Private\_Key. This will only fail iff the system entropy source is
missing or broken.

### [private\_key\_set\_bytes ¶](#private_key_set_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L71)

```
private_key_set_bytes :: proc(priv_key: ^Private_Key, b: []u8) -> bool {…}
```

 

private\_key\_set\_bytes decodes a byte-encoded private key, and returns
true iff the operation was successful.

### [public\_key\_bytes ¶](#public_key_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L201)

```
public_key_bytes :: proc(pub_key: ^Public_Key, dst: []u8) {…}
```

 

public\_key\_bytes sets dst to byte-encoding of pub\_key.

### [public\_key\_equal ¶](#public_key_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L209)

```
public_key_equal :: proc(pub_key, other: ^Public_Key) -> bool {…}
```

 

public\_key\_equal returns true iff pub\_key is equal to other.

### [public\_key\_set\_bytes ¶](#public_key_set_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L171)

```
public_key_set_bytes :: proc "contextless" (pub_key: ^Public_Key, b: []u8) -> bool {…}
```

 

public\_key\_set\_bytes decodes a byte-encoded public key, and returns
true iff the operation was successful.

### [public\_key\_set\_priv ¶](#public_key_set_priv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L190)

```
public_key_set_priv :: proc(pub_key: ^Public_Key, priv_key: ^Private_Key) {…}
```

 

public\_key\_set\_priv sets pub\_key to the public component of priv\_key.

### [sign ¶](#sign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L114)

```
sign :: proc(priv_key: ^Private_Key, msg, sig: []u8) {…}
```

 

sign writes the signature by priv\_key over msg to sig.

### [verify ¶](#verify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin#L221)

```
verify :: proc(pub_key: ^Public_Key, msg, sig: []u8, allow_small_order_A: bool = false) -> bool {…}
```

 

verify returns true iff sig is a valid signature by pub\_key over msg.

The optional `allow_small_order_A` parameter will make this
implementation strictly compatible with FIPS 186-5, at the expense of
SBS-security. Doing so is NOT recommended, and the disallowed
public keys all have a known discrete-log.

## Procedure Groups

This section is empty.

## Source Files

* [ed25519.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/ed25519/ed25519.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.201696900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Private\_Key](#Private_Key)
    + [Public\_Key](#Public_Key)
  * [Constants](#pkg-Constants)
    + [PRIVATE\_KEY\_SIZE](#PRIVATE_KEY_SIZE)
    + [PUBLIC\_KEY\_SIZE](#PUBLIC_KEY_SIZE)
    + [SIGNATURE\_SIZE](#SIGNATURE_SIZE)
  * [Procedures](#pkg-Procedures)
    + [private\_key\_bytes](#private_key_bytes)
    + [private\_key\_clear](#private_key_clear)
    + [private\_key\_generate](#private_key_generate)
    + [private\_key\_set\_bytes](#private_key_set_bytes)
    + [public\_key\_bytes](#public_key_bytes)
    + [public\_key\_equal](#public_key_equal)
    + [public\_key\_set\_bytes](#public_key_set_bytes)
    + [public\_key\_set\_priv](#public_key_set_priv)
    + [sign](#sign)
    + [verify](#verify)
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