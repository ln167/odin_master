package text/regex/tokenizer - pkg.odin-lang.org 






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



Current Package: *[regex\_tokenizer](/core/text/regex/tokenizer)*

  

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
2. text
3. [regex](/core/text/regex)
4. [tokenizer](/core/text/regex/tokenizer)

# package core:text/regex/tokenizer [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Tokenizes regular expressions.

## Index

Types (4)

* [Error](#Error)
* [Token](#Token)
* [Token\_Kind](#Token_Kind)
* [Tokenizer](#Tokenizer)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (9)

* [advance\_rune](#advance_rune)
* [init](#init)
* [peek\_byte](#peek_byte)
* [scan](#scan)
* [scan\_class](#scan_class)
* [scan\_comment](#scan_comment)
* [scan\_non\_capture\_group](#scan_non_capture_group)
* [scan\_non\_greedy](#scan_non_greedy)
* [scan\_repeat](#scan_repeat)

Procedure Groups (0)

This section is empty.

## Types

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L69)

```
Error :: enum int {
	None, 
	Illegal_Null_Character, 
	Illegal_Codepoint, 
	Illegal_Byte_Order_Mark, 
}
```

##### Related Procedures With Returns

* [advance\_rune](/core/text/regex/tokenizer/#advance_rune)

### [Token ¶](#Token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L49)

```
Token :: struct {
	kind: Token_Kind,
	text: string,
	pos:  int,
}
```

##### Related Procedures With Returns

* [scan](/core/text/regex/tokenizer/#scan)

### [Token\_Kind ¶](#Token_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L15)

```
Token_Kind :: enum int {
	Invalid, 
	EOF, 
	Rune, 
	Wildcard, 
	Alternate, 
	Concatenate, 
	Repeat_Zero, 
	Repeat_Zero_Non_Greedy, 
	Repeat_One, 
	Repeat_One_Non_Greedy, 
	Repeat_N, 
	Optional, 
	Optional_Non_Greedy, 
	Rune_Class, 
	Open_Paren, 
	Open_Paren_Non_Capture, 
	Close_Paren, 
	Anchor_Start, 
	Anchor_End, 
	Word_Boundary, 
	Non_Word_Boundary, 
}
```

### [Tokenizer ¶](#Tokenizer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L55)

```
Tokenizer :: struct {
	flags:           bit_set[regex_common.Flag; u8],
	src:             string,
	ch:              rune,
	offset:          int,
	read_offset:     int,
	last_token_kind: Token_Kind,
	held_token:      Token,
	error_state:     Error,
	paren_depth:     int,
}
```

##### Related Procedures With Parameters

* [advance\_rune](/core/text/regex/tokenizer/#advance_rune)
* [init](/core/text/regex/tokenizer/#init)
* [peek\_byte](/core/text/regex/tokenizer/#peek_byte)
* [scan](/core/text/regex/tokenizer/#scan)
* [scan\_class](/core/text/regex/tokenizer/#scan_class)
* [scan\_comment](/core/text/regex/tokenizer/#scan_comment)
* [scan\_non\_capture\_group](/core/text/regex/tokenizer/#scan_non_capture_group)
* [scan\_non\_greedy](/core/text/regex/tokenizer/#scan_non_greedy)
* [scan\_repeat](/core/text/regex/tokenizer/#scan_repeat)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [advance\_rune ¶](#advance_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L89)

```
advance_rune :: proc(t: ^Tokenizer) -> (err: Error) {…}
```

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L76)

```
init :: proc(t: ^Tokenizer, str: string, flags: bit_set[regex_common.Flag; u8]) {…}
```

### [peek\_byte ¶](#peek_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L82)

```
peek_byte :: proc(t: ^Tokenizer, offset: int = 0) -> u8 {…}
```

### [scan ¶](#scan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L204)

```
scan :: proc(t: ^Tokenizer) -> (token: Token) {…}
```

### [scan\_class ¶](#scan_class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L121)

```
scan_class :: proc(t: ^Tokenizer) -> (str: string, ok: bool) {…}
```

### [scan\_comment ¶](#scan_comment) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L170)

```
scan_comment :: proc(t: ^Tokenizer) {…}
```

### [scan\_non\_capture\_group ¶](#scan_non_capture_group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L193)

```
scan_non_capture_group :: proc(t: ^Tokenizer) -> bool {…}
```

### [scan\_non\_greedy ¶](#scan_non_greedy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L161)

```
scan_non_greedy :: proc(t: ^Tokenizer) -> bool {…}
```

### [scan\_repeat ¶](#scan_repeat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin#L144)

```
scan_repeat :: proc(t: ^Tokenizer) -> (str: string, ok: bool) {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [tokenizer.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/tokenizer/tokenizer.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:51.370589600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error](#Error)
    + [Token](#Token)
    + [Token\_Kind](#Token_Kind)
    + [Tokenizer](#Tokenizer)
  * [Procedures](#pkg-Procedures)
    + [advance\_rune](#advance_rune)
    + [init](#init)
    + [peek\_byte](#peek_byte)
    + [scan](#scan)
    + [scan\_class](#scan_class)
    + [scan\_comment](#scan_comment)
    + [scan\_non\_capture\_group](#scan_non_capture_group)
    + [scan\_non\_greedy](#scan_non_greedy)
    + [scan\_repeat](#scan_repeat)
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