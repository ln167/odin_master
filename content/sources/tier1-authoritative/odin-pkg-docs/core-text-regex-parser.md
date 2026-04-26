package text/regex/parser - pkg.odin-lang.org 






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



Current Package: *[regex\_parser](/core/text/regex/parser)*

  

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
4. [parser](/core/text/regex/parser)

# package core:text/regex/parser [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A `Pratt` parser (a.k.a. Top-Down Operator Precedence parser) for parsing tokenized regular expression patterns.

References:
https://dl.acm.org/doi/10.1145/512927.512931
https://tdop.github.io/
http://crockford.com/javascript/tdop/tdop.html

## Index

Types (30)

* [Error](#Error)
* [Expected\_Token](#Expected_Token)
* [Invalid\_Repetition](#Invalid_Repetition)
* [Invalid\_Token](#Invalid_Token)
* [Invalid\_Unicode](#Invalid_Unicode)
* [Node](#Node)
* [Node\_Alternation](#Node_Alternation)
* [Node\_Anchor](#Node_Anchor)
* [Node\_Concatenation](#Node_Concatenation)
* [Node\_Group](#Node_Group)
* [Node\_Match\_All\_And\_Escape](#Node_Match_All_And_Escape)
* [Node\_Optional](#Node_Optional)
* [Node\_Optional\_Non\_Greedy](#Node_Optional_Non_Greedy)
* [Node\_Repeat\_N](#Node_Repeat_N)
* [Node\_Repeat\_One](#Node_Repeat_One)
* [Node\_Repeat\_One\_Non\_Greedy](#Node_Repeat_One_Non_Greedy)
* [Node\_Repeat\_Zero](#Node_Repeat_Zero)
* [Node\_Repeat\_Zero\_Non\_Greedy](#Node_Repeat_Zero_Non_Greedy)
* [Node\_Rune](#Node_Rune)
* [Node\_Rune\_Class](#Node_Rune_Class)
* [Node\_Wildcard](#Node_Wildcard)
* [Node\_Word\_Boundary](#Node_Word_Boundary)
* [Parser](#Parser)
* [Rune\_Class\_Data](#Rune_Class_Data)
* [Rune\_Class\_Range](#Rune_Class_Range)
* [Token](#Token)
* [Token\_Kind](#Token_Kind)
* [Tokenizer](#Tokenizer)
* [Too\_Many\_Capture\_Groups](#Too_Many_Capture_Groups)
* [Unexpected\_EOF](#Unexpected_EOF)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (8)

* [advance](#advance)
* [expect](#expect)
* [left\_binding\_power](#left_binding_power)
* [left\_denotation](#left_denotation)
* [null\_denotation](#null_denotation)
* [parse](#parse)
* [parse\_expression](#parse_expression)
* [write\_node](#write_node)

Procedure Groups (0)

This section is empty.

## Types

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L155)

```
Error :: union {
	Expected_Token, 
	Invalid_Repetition, 
	Invalid_Token, 
	Invalid_Unicode, 
	Too_Many_Capture_Groups, 
	Unexpected_EOF, 
}
```

##### Related Procedures With Returns

* [advance](/core/text/regex/parser/#advance)
* [expect](/core/text/regex/parser/#expect)
* [left\_denotation](/core/text/regex/parser/#left_denotation)
* [null\_denotation](/core/text/regex/parser/#null_denotation)
* [parse](/core/text/regex/parser/#parse)
* [parse\_expression](/core/text/regex/parser/#parse_expression)

### [Expected\_Token ¶](#Expected_Token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L129)

```
Expected_Token :: struct {
	pos:  int,
	kind: regex_tokenizer.Token_Kind,
}
```

### [Invalid\_Repetition ¶](#Invalid_Repetition) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L134)

```
Invalid_Repetition :: struct {
	pos: int,
}
```

### [Invalid\_Token ¶](#Invalid_Token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L138)

```
Invalid_Token :: struct {
	pos:  int,
	kind: regex_tokenizer.Token_Kind,
}
```

### [Invalid\_Unicode ¶](#Invalid_Unicode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L143)

```
Invalid_Unicode :: struct {
	pos: int,
}
```

### [Node ¶](#Node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L91)

```
Node :: union {
	^Node_Rune, 
	^Node_Rune_Class, 
	^Node_Wildcard, 
	^Node_Concatenation, 
	^Node_Alternation, 
	^Node_Repeat_Zero, 
	^Node_Repeat_Zero_Non_Greedy, 
	^Node_Repeat_One, 
	^Node_Repeat_One_Non_Greedy, 
	^Node_Repeat_N, 
	^Node_Optional, 
	^Node_Optional_Non_Greedy, 
	^Node_Group, 
	^Node_Anchor, 
	^Node_Word_Boundary, 
	^Node_Match_All_And_Escape, 
}
```

##### Related Procedures With Parameters

* [left\_denotation](/core/text/regex/parser/#left_denotation)
* [write\_node](/core/text/regex/parser/#write_node)



##### Related Procedures With Returns

* [null\_denotation](/core/text/regex/parser/#null_denotation)
* [parse](/core/text/regex/parser/#parse)
* [parse\_expression](/core/text/regex/parser/#parse_expression)

### [Node\_Alternation ¶](#Node_Alternation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L43)

```
Node_Alternation :: struct {
	left:  Node,
	right: Node,
}
```

### [Node\_Anchor ¶](#Node_Anchor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L82)

```
Node_Anchor :: struct {
	start: bool,
}
```

### [Node\_Concatenation ¶](#Node_Concatenation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L47)

```
Node_Concatenation :: struct {
	nodes: [dynamic]Node,
}
```

### [Node\_Group ¶](#Node_Group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L76)

```
Node_Group :: struct {
	inner:      Node,
	capture_id: int,
	capture:    bool,
}
```

### [Node\_Match\_All\_And\_Escape ¶](#Node_Match_All_And_Escape) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L89)

```
Node_Match_All_And_Escape :: struct {}
```

### [Node\_Optional ¶](#Node_Optional) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L69)

```
Node_Optional :: struct {
	inner: Node,
}
```

### [Node\_Optional\_Non\_Greedy ¶](#Node_Optional_Non_Greedy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L72)

```
Node_Optional_Non_Greedy :: struct {
	inner: Node,
}
```

### [Node\_Repeat\_N ¶](#Node_Repeat_N) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L64)

```
Node_Repeat_N :: struct {
	inner: Node,
	lower: int,
	upper: int,
}
```

### [Node\_Repeat\_One ¶](#Node_Repeat_One) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L57)

```
Node_Repeat_One :: struct {
	inner: Node,
}
```

### [Node\_Repeat\_One\_Non\_Greedy ¶](#Node_Repeat_One_Non_Greedy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L60)

```
Node_Repeat_One_Non_Greedy :: struct {
	inner: Node,
}
```

### [Node\_Repeat\_Zero ¶](#Node_Repeat_Zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L51)

```
Node_Repeat_Zero :: struct {
	inner: Node,
}
```

### [Node\_Repeat\_Zero\_Non\_Greedy ¶](#Node_Repeat_Zero_Non_Greedy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L54)

```
Node_Repeat_Zero_Non_Greedy :: struct {
	inner: Node,
}
```

### [Node\_Rune ¶](#Node_Rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L32)

```
Node_Rune :: struct {
	data: rune,
}
```

### [Node\_Rune\_Class ¶](#Node_Rune_Class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L36)

```
Node_Rune_Class :: struct {
	negating: bool,
	using data: Rune_Class_Data,
}
```

### [Node\_Wildcard ¶](#Node_Wildcard) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L41)

```
Node_Wildcard :: struct {}
```

### [Node\_Word\_Boundary ¶](#Node_Word_Boundary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L85)

```
Node_Word_Boundary :: struct {
	non_word: bool,
}
```

### [Parser ¶](#Parser) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L165)

```
Parser :: struct {
	flags:     bit_set[regex_common.Flag; u8],
	t:         regex_tokenizer.Tokenizer,
	cur_token: regex_tokenizer.Token,
	groups:    int,
}
```

##### Related Procedures With Parameters

* [advance](/core/text/regex/parser/#advance)
* [expect](/core/text/regex/parser/#expect)
* [left\_denotation](/core/text/regex/parser/#left_denotation)
* [null\_denotation](/core/text/regex/parser/#null_denotation)
* [parse\_expression](/core/text/regex/parser/#parse_expression)

### [Rune\_Class\_Data ¶](#Rune_Class_Data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L26)

```
Rune_Class_Data :: struct {
	runes:  [dynamic]rune,
	ranges: [dynamic]Rune_Class_Range,
}
```

### [Rune\_Class\_Range ¶](#Rune_Class_Range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L23)

```
Rune_Class_Range :: struct {
	lower: rune,
	upper: rune,
}
```

### [Token ¶](#Token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L19)

```
Token :: regex_tokenizer.Token
```

##### Related Procedures With Parameters

* [left\_denotation](/core/text/regex/parser/#left_denotation)
* [null\_denotation](/core/text/regex/parser/#null_denotation)

### [Token\_Kind ¶](#Token_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L20)

```
Token_Kind :: regex_tokenizer.Token_Kind
```

##### Related Procedures With Parameters

* [expect](/core/text/regex/parser/#expect)
* [left\_binding\_power](/core/text/regex/parser/#left_binding_power)

### [Tokenizer ¶](#Tokenizer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L21)

```
Tokenizer :: regex_tokenizer.Tokenizer
```

### [Too\_Many\_Capture\_Groups ¶](#Too_Many_Capture_Groups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L147)

```
Too_Many_Capture_Groups :: struct {
	pos: int,
}
```

### [Unexpected\_EOF ¶](#Unexpected_EOF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L151)

```
Unexpected_EOF :: struct {
	pos: int,
}
```

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [advance ¶](#advance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L176)

```
advance :: proc(p: ^Parser) -> Error {…}
```

### [expect ¶](#expect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L184)

```
expect :: proc(p: ^Parser, kind: regex_tokenizer.Token_Kind) -> (err: Error) {…}
```

### [left\_binding\_power ¶](#left_binding_power) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L113)

```
left_binding_power :: proc(kind: regex_tokenizer.Token_Kind) -> int {…}
```

### [left\_denotation ¶](#left_denotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L411)

```
left_denotation :: proc(p: ^Parser, token: regex_tokenizer.Token, left: Node) -> (result: Node, err: Error) {…}
```

### [null\_denotation ¶](#null_denotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L196)

```
null_denotation :: proc(p: ^Parser, token: regex_tokenizer.Token) -> (result: Node, err: Error) {…}
```

### [parse ¶](#parse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L570)

```
parse :: proc(str: string, flags: bit_set[regex_common.Flag; u8]) -> (result: Node, err: Error) {…}
```

### [parse\_expression ¶](#parse_expression) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin#L554)

```
parse_expression :: proc(p: ^Parser, rbp: int) -> (result: Node, err: Error) {…}
```

### [write\_node ¶](#write_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/debugging.odin#L13)

```
write_node :: proc(w: io.Stream, node: Node) {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [debugging.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/debugging.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/doc.odin)
* [parser.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/parser/parser.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:51.365244600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error](#Error)
    + [Expected\_Token](#Expected_Token)
    + [Invalid\_Repetition](#Invalid_Repetition)
    + [Invalid\_Token](#Invalid_Token)
    + [Invalid\_Unicode](#Invalid_Unicode)
    + [Node](#Node)
    + [Node\_Alternation](#Node_Alternation)
    + [Node\_Anchor](#Node_Anchor)
    + [Node\_Concatenation](#Node_Concatenation)
    + [Node\_Group](#Node_Group)
    + [Node\_Match\_All\_And\_Escape](#Node_Match_All_And_Escape)
    + [Node\_Optional](#Node_Optional)
    + [Node\_Optional\_Non\_Greedy](#Node_Optional_Non_Greedy)
    + [Node\_Repeat\_N](#Node_Repeat_N)
    + [Node\_Repeat\_One](#Node_Repeat_One)
    + [Node\_Repeat\_One\_Non\_Greedy](#Node_Repeat_One_Non_Greedy)
    + [Node\_Repeat\_Zero](#Node_Repeat_Zero)
    + [Node\_Repeat\_Zero\_Non\_Greedy](#Node_Repeat_Zero_Non_Greedy)
    + [Node\_Rune](#Node_Rune)
    + [Node\_Rune\_Class](#Node_Rune_Class)
    + [Node\_Wildcard](#Node_Wildcard)
    + [Node\_Word\_Boundary](#Node_Word_Boundary)
    + [Parser](#Parser)
    + [Rune\_Class\_Data](#Rune_Class_Data)
    + [Rune\_Class\_Range](#Rune_Class_Range)
    + [Token](#Token)
    + [Token\_Kind](#Token_Kind)
    + [Tokenizer](#Tokenizer)
    + [Too\_Many\_Capture\_Groups](#Too_Many_Capture_Groups)
    + [Unexpected\_EOF](#Unexpected_EOF)
  * [Procedures](#pkg-Procedures)
    + [advance](#advance)
    + [expect](#expect)
    + [left\_binding\_power](#left_binding_power)
    + [left\_denotation](#left_denotation)
    + [null\_denotation](#null_denotation)
    + [parse](#parse)
    + [parse\_expression](#parse_expression)
    + [write\_node](#write_node)
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