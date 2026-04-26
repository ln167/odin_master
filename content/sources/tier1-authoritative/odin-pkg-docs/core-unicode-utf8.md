package unicode/utf8 - pkg.odin-lang.org 






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



Current Package: *[utf8](/core/unicode/utf8)*

  

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
2. [unicode](/core/unicode)
3. [utf8](/core/unicode/utf8)

# package core:unicode/utf8 [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Procedures and constants to support text-encoding in the `UTF-8` character encoding.

## Index

Types (4)

* [Accept\_Range](#Accept_Range)
* [Grapheme](#Grapheme)
* [Grapheme\_Cluster\_Sequence](#Grapheme_Cluster_Sequence)
* [Grapheme\_Iterator](#Grapheme_Iterator)

Constants (26)

* [HICB](#HICB)
* [LOCB](#LOCB)
* [MASK2](#MASK2)
* [MASK3](#MASK3)
* [MASK4](#MASK4)
* [MASKX](#MASKX)
* [MAX\_RUNE](#MAX_RUNE)
* [RUNE1\_MAX](#RUNE1_MAX)
* [RUNE2\_MAX](#RUNE2_MAX)
* [RUNE3\_MAX](#RUNE3_MAX)
* [RUNE\_BOM](#RUNE_BOM)
* [RUNE\_EOF](#RUNE_EOF)
* [RUNE\_ERROR](#RUNE_ERROR)
* [RUNE\_SELF](#RUNE_SELF)
* [SURROGATE\_HIGH\_MAX](#SURROGATE_HIGH_MAX)
* [SURROGATE\_LOW\_MIN](#SURROGATE_LOW_MIN)
* [SURROGATE\_MAX](#SURROGATE_MAX)
* [SURROGATE\_MIN](#SURROGATE_MIN)
* [T1](#T1)
* [T2](#T2)
* [T3](#T3)
* [T4](#T4)
* [T5](#T5)
* [TX](#TX)
* [UTF\_MAX](#UTF_MAX)
* [ZERO\_WIDTH\_JOINER](#ZERO_WIDTH_JOINER)

Variables (2)

* [accept\_ranges](#accept_ranges)
* [accept\_sizes](#accept_sizes)

Procedures (23)

* [decode\_grapheme\_clusters](#decode_grapheme_clusters)
* [decode\_grapheme\_iterate](#decode_grapheme_iterate)
* [decode\_grapheme\_iterator\_make](#decode_grapheme_iterator_make)
* [decode\_last\_rune\_in\_bytes](#decode_last_rune_in_bytes)
* [decode\_last\_rune\_in\_string](#decode_last_rune_in_string)
* [decode\_rune\_in\_bytes](#decode_rune_in_bytes)
* [decode\_rune\_in\_string](#decode_rune_in_string)
* [encode\_rune](#encode_rune)
* [full\_rune\_in\_bytes](#full_rune_in_bytes)
* [full\_rune\_in\_string](#full_rune_in_string)
* [grapheme\_count](#grapheme_count)
* [rune\_at](#rune_at)
* [rune\_at\_pos](#rune_at_pos)
* [rune\_count\_in\_bytes](#rune_count_in_bytes)
* [rune\_count\_in\_string](#rune_count_in_string)
* [rune\_offset](#rune_offset)
* [rune\_size](#rune_size)
* [rune\_start](#rune_start)
* [rune\_string\_at\_pos](#rune_string_at_pos)
* [runes\_to\_string](#runes_to_string)
* [string\_to\_runes](#string_to_runes)
* [valid\_rune](#valid_rune)
* [valid\_string](#valid_string)

Procedure Groups (4)

* [decode\_last\_rune](#decode_last_rune)
* [decode\_rune](#decode_rune)
* [full\_rune](#full_rune)
* [rune\_count](#rune_count)

## Types

### [Accept\_Range ¶](#Accept_Range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L41)

```
Accept_Range :: struct {
	lo: u8,
	hi: u8,
}
```

### [Grapheme ¶](#Grapheme) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L23)

```
Grapheme :: struct {
	byte_index: int,
	rune_index: int,
	width:      int,
}
```

##### Related Procedures With Returns

* [decode\_grapheme\_iterate](/core/unicode/utf8/#decode_grapheme_iterate)

### [Grapheme\_Cluster\_Sequence ¶](#Grapheme_Cluster_Sequence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L30)

```
Grapheme_Cluster_Sequence :: enum int {
	None, 
	Indic, 
	Emoji, 
	Regional, 
}
```

### [Grapheme\_Iterator ¶](#Grapheme_Iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L37)

```
Grapheme_Iterator :: struct {
	str:                        string,
	curr_offset:                int,
	grapheme_count:             int,
	// The number of graphemes in the string
	rune_count:                 int,
	// The number of runes in the string
	width:                      int,
	// The widrth of the string in number of monospace cells
	last_rune:                  rune,
	last_rune_breaks_forward:   bool,
	last_width:                 int,
	last_grapheme_count:        int,
	bypass_next_rune:           bool,
	regional_indicator_counter: int,
	current_sequence:           Grapheme_Cluster_Sequence,
	continue_sequence:          bool,
}
```

##### Related Procedures With Parameters

* [decode\_grapheme\_iterate](/core/unicode/utf8/#decode_grapheme_iterate)



##### Related Procedures With Returns

* [decode\_grapheme\_iterator\_make](/core/unicode/utf8/#decode_grapheme_iterator_make)

## Constants

### [HICB ¶](#HICB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L39)

```
HICB :: 0b1011_1111
```

### [LOCB ¶](#LOCB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L38)

```
LOCB :: 0b1000_0000
```

 

The default lowest and highest continuation byte.

### [MASK2 ¶](#MASK2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L29)

```
MASK2 :: 0b0001_1111
```

### [MASK3 ¶](#MASK3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L30)

```
MASK3 :: 0b0000_1111
```

### [MASK4 ¶](#MASK4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L31)

```
MASK4 :: 0b0000_0111
```

### [MASKX ¶](#MASKX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L28)

```
MASKX :: 0b0011_1111
```

### [MAX\_RUNE ¶](#MAX_RUNE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L10)

```
MAX_RUNE :: '\U0010ffff'
```

### [RUNE1\_MAX ¶](#RUNE1_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L33)

```
RUNE1_MAX :: 1 << 7 - 1
```

### [RUNE2\_MAX ¶](#RUNE2_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L34)

```
RUNE2_MAX :: 1 << 11 - 1
```

### [RUNE3\_MAX ¶](#RUNE3_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L35)

```
RUNE3_MAX :: 1 << 16 - 1
```

### [RUNE\_BOM ¶](#RUNE_BOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L8)

```
RUNE_BOM :: 0xfeff
```

### [RUNE\_EOF ¶](#RUNE_EOF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L9)

```
RUNE_EOF: rune : ~rune(0)
```

### [RUNE\_ERROR ¶](#RUNE_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L6)

```
RUNE_ERROR :: '\ufffd'
```

### [RUNE\_SELF ¶](#RUNE_SELF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L7)

```
RUNE_SELF :: 0x80
```

### [SURROGATE\_HIGH\_MAX ¶](#SURROGATE_HIGH_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L18)

```
SURROGATE_HIGH_MAX :: 0xdbff
```

 

A high/leading surrogate is in range SURROGATE\_MIN..SURROGATE\_HIGH\_MAX,
A low/trailing surrogate is in range SURROGATE\_LOW\_MIN..SURROGATE\_MAX.

### [SURROGATE\_LOW\_MIN ¶](#SURROGATE_LOW_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L19)

```
SURROGATE_LOW_MIN :: 0xdc00
```

### [SURROGATE\_MAX ¶](#SURROGATE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L14)

```
SURROGATE_MAX :: 0xdfff
```

### [SURROGATE\_MIN ¶](#SURROGATE_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L13)

```
SURROGATE_MIN :: 0xd800
```

### [T1 ¶](#T1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L21)

```
T1 :: 0b0000_0000
```

### [T2 ¶](#T2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L23)

```
T2 :: 0b1100_0000
```

### [T3 ¶](#T3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L24)

```
T3 :: 0b1110_0000
```

### [T4 ¶](#T4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L25)

```
T4 :: 0b1111_0000
```

### [T5 ¶](#T5) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L26)

```
T5 :: 0b1111_1000
```

### [TX ¶](#TX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L22)

```
TX :: 0b1000_0000
```

### [UTF\_MAX ¶](#UTF_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L11)

```
UTF_MAX :: 4
```

### [ZERO\_WIDTH\_JOINER ¶](#ZERO_WIDTH_JOINER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L5)

```
ZERO_WIDTH_JOINER :: unicode.ZERO_WIDTH_JOINER
```

## Variables

### [accept\_ranges ¶](#accept_ranges) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L43)

```
accept_ranges: [5]Accept_Range = …
```

### [accept\_sizes ¶](#accept_sizes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L51)

```
accept_sizes: [256]u8 = …
```

## Procedures

### [decode\_grapheme\_clusters ¶](#decode_grapheme_clusters) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L96)

```
decode_grapheme_clusters :: proc(str: string, track_graphemes: bool = true, allocator := context.allocator) -> (graphemes: [dynamic]Grapheme, grapheme_count: int, rune_count: int, width: int) {…}
```

 

Decode the individual graphemes in a UTF-8 string.

*Allocates Using Provided Allocator*

**Inputs:**  
str: The input string.
track\_graphemes: Whether or not to allocate and return `graphemes` with extra data about each grapheme.
allocator: (default: context.allocator)

**Returns:**  
graphemes: Extra data about each grapheme.
grapheme\_count: The number of graphemes in the string.
rune\_count: The number of runes in the string.
width: The width of the string in number of monospace cells.

### [decode\_grapheme\_iterate ¶](#decode_grapheme_iterate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L128)

```
decode_grapheme_iterate :: proc(it: ^Grapheme_Iterator) -> (text: string, grapheme: Grapheme, ok: bool) {…}
```

### [decode\_grapheme\_iterator\_make ¶](#decode_grapheme_iterator_make) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L122)

```
decode_grapheme_iterator_make :: proc(str: string) -> (it: Grapheme_Iterator) {…}
```

### [decode\_last\_rune\_in\_bytes ¶](#decode_last_rune_in_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L193)

```
decode_last_rune_in_bytes :: proc "contextless" (s: []u8) -> (rune, int) {…}
```

##### Related Procedure Groups

* [decode\_last\_rune](/core/unicode/utf8/#decode_last_rune)

### [decode\_last\_rune\_in\_string ¶](#decode_last_rune_in_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L189)

```
decode_last_rune_in_string :: proc "contextless" (s: string) -> (rune, int) {…}
```

##### Related Procedure Groups

* [decode\_last\_rune](/core/unicode/utf8/#decode_last_rune)

### [decode\_rune\_in\_bytes ¶](#decode_rune_in_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L112)

```
decode_rune_in_bytes :: proc "contextless" (s: []u8) -> (rune, int) {…}
```

##### Related Procedure Groups

* [decode\_rune](/core/unicode/utf8/#decode_rune)

### [decode\_rune\_in\_string ¶](#decode_rune_in_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L108)

```
decode_rune_in_string :: proc "contextless" (s: string) -> (rune, int) {…}
```

##### Related Procedure Groups

* [decode\_rune](/core/unicode/utf8/#decode_rune)

### [encode\_rune ¶](#encode_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L66)

```
encode_rune :: proc "contextless" (c: rune) -> ([4]u8, int) {…}
```

### [full\_rune\_in\_bytes ¶](#full_rune_in_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L405)

```
full_rune_in_bytes :: proc "contextless" (b: []u8) -> bool {…}
```

 

full\_rune\_in\_bytes reports if the bytes in b begin with a full utf-8 encoding of a rune or not
An invalid encoding is considered a full rune since it will convert as an error rune of width 1 (RUNE\_ERROR)




##### Related Procedure Groups

* [full\_rune](/core/unicode/utf8/#full_rune)

### [full\_rune\_in\_string ¶](#full_rune_in_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L426)

```
full_rune_in_string :: proc "contextless" (s: string) -> bool {…}
```

 

full\_rune\_in\_string reports if the bytes in s begin with a full utf-8 encoding of a rune or not
An invalid encoding is considered a full rune since it will convert as an error rune of width 1 (RUNE\_ERROR)




##### Related Procedure Groups

* [full\_rune](/core/unicode/utf8/#full_rune)

### [grapheme\_count ¶](#grapheme_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin#L72)

```
grapheme_count :: proc(str: string) -> (graphemes, runes, width: int) {…}
```

 

Count the individual graphemes in a UTF-8 string.

**Inputs:**  
str: The input string.

**Returns:**  
graphemes: The number of graphemes in the string.
runes: The number of runes in the string.
width: The width of the string in number of monospace cells.

### [rune\_at ¶](#rune_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L259)

```
rune_at :: proc "contextless" (s: string, byte_index: int) -> rune {…}
```

### [rune\_at\_pos ¶](#rune_at_pos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L226)

```
rune_at_pos :: proc "contextless" (s: string, pos: int) -> rune {…}
```

### [rune\_count\_in\_bytes ¶](#rune_count_in_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L343)

```
rune_count_in_bytes :: proc "contextless" (s: []u8) -> int {…}
```

##### Related Procedure Groups

* [rune\_count](/core/unicode/utf8/#rune_count)

### [rune\_count\_in\_string ¶](#rune_count_in_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L339)

```
rune_count_in_string :: proc(s: string) -> int {…}
```

##### Related Procedure Groups

* [rune\_count](/core/unicode/utf8/#rune_count)

### [rune\_offset ¶](#rune_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L267)

```
rune_offset :: proc "contextless" (s: string, pos: int, start: int = 0) -> int {…}
```

 

Returns the byte position of rune at position pos in s with an optional start byte position.
Returns -1 if it runs out of the string.

### [rune\_size ¶](#rune_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L383)

```
rune_size :: proc "contextless" (r: rune) -> int {…}
```

### [rune\_start ¶](#rune_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L329)

```
rune_start :: proc "contextless" (b: u8) -> bool {…}
```

### [rune\_string\_at\_pos ¶](#rune_string_at_pos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L242)

```
rune_string_at_pos :: proc "contextless" (s: string, pos: int) -> string {…}
```

### [runes\_to\_string ¶](#runes_to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L163)

```
runes_to_string :: proc(runes: []rune, allocator := context.allocator) -> (s: string, err: runtime.Allocator_Error) #optional_ok {…}
```

### [string\_to\_runes ¶](#string_to_runes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L150)

```
string_to_runes :: proc(s: string, allocator := context.allocator) -> (runes: []rune, err: runtime.Allocator_Error) #optional_ok {…}
```

### [valid\_rune ¶](#valid_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L283)

```
valid_rune :: proc "contextless" (r: rune) -> bool {…}
```

### [valid\_string ¶](#valid_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L295)

```
valid_string :: proc "contextless" (s: string) -> bool {…}
```

## Procedure Groups

### [decode\_last\_rune ¶](#decode_last_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L183)

```
decode_last_rune :: proc{
	decode_last_rune_in_string,
	decode_last_rune_in_bytes,
}
```

### [decode\_rune ¶](#decode_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L103)

```
decode_rune :: proc{
	decode_rune_in_string,
	decode_rune_in_bytes,
}
```

### [full\_rune ¶](#full_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L397)

```
full_rune :: proc{
	full_rune_in_bytes,
	full_rune_in_string,
}
```

 

full\_rune reports if the bytes in b begin with a full utf-8 encoding of a rune or not
An invalid encoding is considered a full rune since it will convert as an error rune of width 1 (RUNE\_ERROR)

### [rune\_count ¶](#rune_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin#L333)

```
rune_count :: proc{
	rune_count_in_string,
	rune_count_in_bytes,
}
```

## Source Files

* [grapheme.odin](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/grapheme.odin)
* [utf8.odin](https://github.com/odin-lang/Odin/tree/master/core/unicode/utf8/utf8.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:51.417428700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Accept\_Range](#Accept_Range)
    + [Grapheme](#Grapheme)
    + [Grapheme\_Cluster\_Sequence](#Grapheme_Cluster_Sequence)
    + [Grapheme\_Iterator](#Grapheme_Iterator)
  * [Constants](#pkg-Constants)
    + [HICB](#HICB)
    + [LOCB](#LOCB)
    + [MASK2](#MASK2)
    + [MASK3](#MASK3)
    + [MASK4](#MASK4)
    + [MASKX](#MASKX)
    + [MAX\_RUNE](#MAX_RUNE)
    + [RUNE1\_MAX](#RUNE1_MAX)
    + [RUNE2\_MAX](#RUNE2_MAX)
    + [RUNE3\_MAX](#RUNE3_MAX)
    + [RUNE\_BOM](#RUNE_BOM)
    + [RUNE\_EOF](#RUNE_EOF)
    + [RUNE\_ERROR](#RUNE_ERROR)
    + [RUNE\_SELF](#RUNE_SELF)
    + [SURROGATE\_HIGH\_MAX](#SURROGATE_HIGH_MAX)
    + [SURROGATE\_LOW\_MIN](#SURROGATE_LOW_MIN)
    + [SURROGATE\_MAX](#SURROGATE_MAX)
    + [SURROGATE\_MIN](#SURROGATE_MIN)
    + [T1](#T1)
    + [T2](#T2)
    + [T3](#T3)
    + [T4](#T4)
    + [T5](#T5)
    + [TX](#TX)
    + [UTF\_MAX](#UTF_MAX)
    + [ZERO\_WIDTH\_JOINER](#ZERO_WIDTH_JOINER)
  * [Variables](#pkg-Variables)
    + [accept\_ranges](#accept_ranges)
    + [accept\_sizes](#accept_sizes)
  * [Procedures](#pkg-Procedures)
    + [decode\_grapheme\_clusters](#decode_grapheme_clusters)
    + [decode\_grapheme\_iterate](#decode_grapheme_iterate)
    + [decode\_grapheme\_iterator\_make](#decode_grapheme_iterator_make)
    + [decode\_last\_rune\_in\_bytes](#decode_last_rune_in_bytes)
    + [decode\_last\_rune\_in\_string](#decode_last_rune_in_string)
    + [decode\_rune\_in\_bytes](#decode_rune_in_bytes)
    + [decode\_rune\_in\_string](#decode_rune_in_string)
    + [encode\_rune](#encode_rune)
    + [full\_rune\_in\_bytes](#full_rune_in_bytes)
    + [full\_rune\_in\_string](#full_rune_in_string)
    + [grapheme\_count](#grapheme_count)
    + [rune\_at](#rune_at)
    + [rune\_at\_pos](#rune_at_pos)
    + [rune\_count\_in\_bytes](#rune_count_in_bytes)
    + [rune\_count\_in\_string](#rune_count_in_string)
    + [rune\_offset](#rune_offset)
    + [rune\_size](#rune_size)
    + [rune\_start](#rune_start)
    + [rune\_string\_at\_pos](#rune_string_at_pos)
    + [runes\_to\_string](#runes_to_string)
    + [string\_to\_runes](#string_to_runes)
    + [valid\_rune](#valid_rune)
    + [valid\_string](#valid_string)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [decode\_last\_rune](#decode_last_rune)
    + [decode\_rune](#decode_rune)
    + [full\_rune](#full_rune)
    + [rune\_count](#rune_count)
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