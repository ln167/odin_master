package text/regex/compiler - pkg.odin-lang.org 






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



Current Package: *[regex\_compiler](/core/text/regex/compiler)*

  

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
4. [compiler](/core/text/regex/compiler)

# package core:text/regex/compiler [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A bytecode compiler for the virtual machine included alongside it.

Operands larger than u8 are written in system endian order.

More details can be found in the documentation for the virtual machine.

## Index

Types (26)

* [Compiler](#Compiler)
* [Error](#Error)
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
* [Opcode](#Opcode)
* [Program](#Program)
* [Rune\_Class\_Data](#Rune_Class_Data)
* [Rune\_Class\_Range](#Rune_Class_Range)
* [Token](#Token)
* [Token\_Kind](#Token_Kind)
* [Tokenizer](#Tokenizer)

Constants (2)

* [JUMP\_SIZE](#JUMP_SIZE)
* [SPLIT\_SIZE](#SPLIT_SIZE)

Variables (0)

This section is empty.

Procedures (8)

* [append\_raw](#append_raw)
* [classes\_are\_exact](#classes_are_exact)
* [compile](#compile)
* [generate\_code](#generate_code)
* [get\_jump\_targets](#get_jump_targets)
* [inject\_raw](#inject_raw)
* [map\_all\_classes](#map_all_classes)
* [trace](#trace)

Procedure Groups (0)

This section is empty.

## Types

### [Compiler ¶](#Compiler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L50)

```
Compiler :: struct {
	flags:      bit_set[regex_common.Flag; u8],
	class_data: [dynamic]regex_parser.Rune_Class_Data,
}
```

##### Related Procedures With Parameters

* [generate\_code](/core/text/regex/compiler/#generate_code)

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L56)

```
Error :: enum int {
	None, 
	Program_Too_Big, 
	Too_Many_Classes, 
}
```

##### Related Procedures With Returns

* [compile](/core/text/regex/compiler/#compile)

### [Node ¶](#Node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L25)

```
Node :: regex_parser.Node
```

##### Related Procedures With Parameters

* [compile](/core/text/regex/compiler/#compile)
* [generate\_code](/core/text/regex/compiler/#generate_code)
* [map\_all\_classes](/core/text/regex/compiler/#map_all_classes)

### [Node\_Alternation ¶](#Node_Alternation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L30)

```
Node_Alternation :: regex_parser.Node_Alternation
```

### [Node\_Anchor ¶](#Node_Anchor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L39)

```
Node_Anchor :: regex_parser.Node_Anchor
```

### [Node\_Concatenation ¶](#Node_Concatenation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L29)

```
Node_Concatenation :: regex_parser.Node_Concatenation
```

### [Node\_Group ¶](#Node_Group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L38)

```
Node_Group :: regex_parser.Node_Group
```

### [Node\_Match\_All\_And\_Escape ¶](#Node_Match_All_And_Escape) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L41)

```
Node_Match_All_And_Escape :: regex_parser.Node_Match_All_And_Escape
```

### [Node\_Optional ¶](#Node_Optional) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L36)

```
Node_Optional :: regex_parser.Node_Optional
```

### [Node\_Optional\_Non\_Greedy ¶](#Node_Optional_Non_Greedy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L37)

```
Node_Optional_Non_Greedy :: regex_parser.Node_Optional_Non_Greedy
```

### [Node\_Repeat\_N ¶](#Node_Repeat_N) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L35)

```
Node_Repeat_N :: regex_parser.Node_Repeat_N
```

### [Node\_Repeat\_One ¶](#Node_Repeat_One) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L33)

```
Node_Repeat_One :: regex_parser.Node_Repeat_One
```

### [Node\_Repeat\_One\_Non\_Greedy ¶](#Node_Repeat_One_Non_Greedy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L34)

```
Node_Repeat_One_Non_Greedy :: regex_parser.Node_Repeat_One_Non_Greedy
```

### [Node\_Repeat\_Zero ¶](#Node_Repeat_Zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L31)

```
Node_Repeat_Zero :: regex_parser.Node_Repeat_Zero
```

### [Node\_Repeat\_Zero\_Non\_Greedy ¶](#Node_Repeat_Zero_Non_Greedy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L32)

```
Node_Repeat_Zero_Non_Greedy :: regex_parser.Node_Repeat_Zero_Non_Greedy
```

### [Node\_Rune ¶](#Node_Rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L26)

```
Node_Rune :: regex_parser.Node_Rune
```

### [Node\_Rune\_Class ¶](#Node_Rune_Class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L27)

```
Node_Rune_Class :: regex_parser.Node_Rune_Class
```

### [Node\_Wildcard ¶](#Node_Wildcard) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L28)

```
Node_Wildcard :: regex_parser.Node_Wildcard
```

### [Node\_Word\_Boundary ¶](#Node_Word_Boundary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L40)

```
Node_Word_Boundary :: regex_parser.Node_Word_Boundary
```

### [Opcode ¶](#Opcode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L43)

```
Opcode :: regex_vm.Opcode
```

### [Program ¶](#Program) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L44)

```
Program :: [dynamic]regex_vm.Opcode
```

##### Related Procedures With Parameters

* [append\_raw](/core/text/regex/compiler/#append_raw)
* [inject\_raw](/core/text/regex/compiler/#inject_raw)



##### Related Procedures With Returns

* [compile](/core/text/regex/compiler/#compile)
* [generate\_code](/core/text/regex/compiler/#generate_code)

### [Rune\_Class\_Data ¶](#Rune_Class_Data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L23)

```
Rune_Class_Data :: regex_parser.Rune_Class_Data
```

##### Related Procedures With Parameters

* [classes\_are\_exact](/core/text/regex/compiler/#classes_are_exact)

### [Rune\_Class\_Range ¶](#Rune_Class_Range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L22)

```
Rune_Class_Range :: regex_parser.Rune_Class_Range
```

### [Token ¶](#Token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L18)

```
Token :: regex_tokenizer.Token
```

### [Token\_Kind ¶](#Token_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L19)

```
Token_Kind :: regex_tokenizer.Token_Kind
```

### [Tokenizer ¶](#Tokenizer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L20)

```
Tokenizer :: regex_tokenizer.Tokenizer
```

## Constants

### [JUMP\_SIZE ¶](#JUMP_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L46)

```
JUMP_SIZE :: size_of(Opcode) + 1 * size_of(u16)
```

### [SPLIT\_SIZE ¶](#SPLIT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L47)

```
SPLIT_SIZE :: size_of(Opcode) + 2 * size_of(u16)
```

## Variables

This section is empty.

## Procedures

### [append\_raw ¶](#append_raw) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L142)

```
append_raw :: proc(code: ^[dynamic]regex_vm.Opcode, data: $T) {…}
```

### [classes\_are\_exact ¶](#classes_are_exact) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L62)

```
classes_are_exact :: proc(q, w: ^regex_parser.Rune_Class_Data) -> bool {…}
```

### [compile ¶](#compile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L382)

```
compile :: proc(tree: regex_parser.Node, flags: bit_set[regex_common.Flag; u8]) -> (code: [dynamic]regex_vm.Opcode, class_data: [dynamic]regex_parser.Rune_Class_Data, err: Error) {…}
```

### [generate\_code ¶](#generate_code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L156)

```
generate_code :: proc(c: ^Compiler, node: regex_parser.Node) -> (code: [dynamic]regex_vm.Opcode) {…}
```

### [get\_jump\_targets ¶](#get_jump_targets) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/debugging.odin#L16)

```
get_jump_targets :: proc(code: []regex_vm.Opcode) -> (jump_targets: map[int]int) {…}
```

### [inject\_raw ¶](#inject_raw) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L148)

```
inject_raw :: proc(code: ^[dynamic]regex_vm.Opcode, start: int, data: $T) {…}
```

### [map\_all\_classes ¶](#map_all_classes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin#L89)

```
map_all_classes :: proc(tree: regex_parser.Node, collection: ^[dynamic]regex_parser.Rune_Class_Data) {…}
```

### [trace ¶](#trace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/debugging.odin#L33)

```
trace :: proc(w: io.Stream, code: []regex_vm.Opcode) {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [compiler.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/compiler.odin)
* [debugging.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/debugging.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/compiler/doc.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:51.353763900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Compiler](#Compiler)
    + [Error](#Error)
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
    + [Opcode](#Opcode)
    + [Program](#Program)
    + [Rune\_Class\_Data](#Rune_Class_Data)
    + [Rune\_Class\_Range](#Rune_Class_Range)
    + [Token](#Token)
    + [Token\_Kind](#Token_Kind)
    + [Tokenizer](#Tokenizer)
  * [Constants](#pkg-Constants)
    + [JUMP\_SIZE](#JUMP_SIZE)
    + [SPLIT\_SIZE](#SPLIT_SIZE)
  * [Procedures](#pkg-Procedures)
    + [append\_raw](#append_raw)
    + [classes\_are\_exact](#classes_are_exact)
    + [compile](#compile)
    + [generate\_code](#generate_code)
    + [get\_jump\_targets](#get_jump_targets)
    + [inject\_raw](#inject_raw)
    + [map\_all\_classes](#map_all_classes)
    + [trace](#trace)
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