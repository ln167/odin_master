package odin/tokenizer - pkg.odin-lang.org 






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



Current Package: *[odin\_tokenizer](/core/odin/tokenizer)*

  

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
2. odin
3. [tokenizer](/core/odin/tokenizer)

# package core:odin/tokenizer [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

The tokenizer (lexer) for `Odin` files, used to create tooling.

## Index

Types (9)

* [Error\_Handler](#Error_Handler)
* [Flag](#Flag)
* [Flags](#Flags)
* [Keyword\_Hash\_Entry](#Keyword_Hash_Entry)
* [Keyword\_LUT](#Keyword_LUT)
* [Pos](#Pos)
* [Token](#Token)
* [Token\_Kind](#Token_Kind)
* [Tokenizer](#Tokenizer)

Constants (2)

* [KEYWORD\_LUT\_LEN](#KEYWORD_LUT_LEN)
* [KEYWORD\_LUT\_MASK](#KEYWORD_LUT_MASK)

Variables (3)

* [custom\_keyword\_tokens](#custom_keyword_tokens)
* [global\_keyword\_lut](#global_keyword_lut)
* [tokens](#tokens)

Procedures (28)

* [advance\_rune](#advance_rune)
* [default\_error\_handler](#default_error_handler)
* [digit\_val](#digit_val)
* [error](#error)
* [init](#init)
* [is\_assignment\_operator](#is_assignment_operator)
* [is\_digit](#is_digit)
* [is\_keyword](#is_keyword)
* [is\_letter](#is_letter)
* [is\_literal](#is_literal)
* [is\_newline](#is_newline)
* [is\_operator](#is_operator)
* [keyword\_hash](#keyword_hash)
* [keyword\_lut\_init](#keyword_lut_init)
* [peek\_byte](#peek_byte)
* [pos\_compare](#pos_compare)
* [scan](#scan)
* [scan\_comment](#scan_comment)
* [scan\_escape](#scan_escape)
* [scan\_file\_tag](#scan_file_tag)
* [scan\_identifier](#scan_identifier)
* [scan\_number](#scan_number)
* [scan\_raw\_string](#scan_raw_string)
* [scan\_rune](#scan_rune)
* [scan\_string](#scan_string)
* [skip\_whitespace](#skip_whitespace)
* [to\_string](#to_string)
* [token\_to\_string](#token_to_string)

Procedure Groups (0)

This section is empty.

## Types

### [Error\_Handler ¶](#Error_Handler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L9)

```
Error_Handler :: proc(pos: Pos, fmt: string, .. args: ..any)
```

##### Related Procedures With Parameters

* [init](/core/odin/tokenizer/#init)

### [Flag ¶](#Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L11)

```
Flag :: enum int {
	Insert_Semicolon, 
}
```

### [Flags ¶](#Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L14)

```
Flags :: distinct bit_set[Flag; u32]
```

### [Keyword\_Hash\_Entry ¶](#Keyword_Hash_Entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L37)

```
Keyword_Hash_Entry :: struct {
	hash: u32,
	kind: Token_Kind,
	name: string,
}
```

### [Keyword\_LUT ¶](#Keyword_LUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L45)

```
Keyword_LUT :: [512]Keyword_Hash_Entry
```

##### Related Procedures With Parameters

* [keyword\_lut\_init](/core/odin/tokenizer/#keyword_lut_init)

### [Pos ¶](#Pos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L11)

```
Pos :: struct {
	file:   string,
	offset: int,
	// starting at 0
	line:   int,
	// starting at 1
	column: int,
}
```

##### Related Procedures With Parameters

* [default\_error\_handler](/core/odin/tokenizer/#default_error_handler)
* [pos\_compare](/core/odin/tokenizer/#pos_compare)

### [Token ¶](#Token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L5)

```
Token :: struct {
	kind: Token_Kind,
	text: string,
	pos:  Pos,
}
```

##### Related Procedures With Parameters

* [is\_newline](/core/odin/tokenizer/#is_newline)
* [token\_to\_string](/core/odin/tokenizer/#token_to_string)



##### Related Procedures With Returns

* [scan](/core/odin/tokenizer/#scan)

### [Token\_Kind ¶](#Token_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L31)

```
Token_Kind :: enum u32 {
	Invalid, 
	EOF, 
	Comment, 
	File_Tag, 
	B_Literal_Begin, 
	Ident,                        // main
	Integer,                      // 12345
	Float,                        // 123.45
	Imag,                         // 123.45i
	Rune,                         // 'a'
	String,                       // "abc"
	B_Literal_End, 
	B_Operator_Begin, 
	Eq,                           // =
	Not,                          // !
	Hash,                         // #
	At,                           // @
	Dollar,                       // $
	Pointer,                      // ^
	Question,                     // ?
	Add, 
	Sub,                          // -
	Mul,                          // *
	Quo,                          // /
	Mod,                          // %
	Mod_Mod,                      // %%
	And,                          // &
	Or,                           // |
	Xor,                          // ~
	And_Not,                      // &~
	Shl,                          // <<
	Shr,                          // >>
	Cmp_And,                      // &&
	Cmp_Or,                       // ||
	B_Assign_Op_Begin, 
	Add_Eq, 
	Sub_Eq,                       // -=
	Mul_Eq,                       // *=
	Quo_Eq,                       // /=
	Mod_Eq,                       // %=
	Mod_Mod_Eq,                   // %%=
	And_Eq,                       // &=
	Or_Eq,                        // |=
	Xor_Eq,                       // ~=
	And_Not_Eq,                   // &~=
	Shl_Eq,                       // <<=
	Shr_Eq,                       // >>=
	Cmp_And_Eq,                   // &&=
	Cmp_Or_Eq,                    // ||=
	B_Assign_Op_End, 
	Increment, 
	Decrement,                    // --
	Arrow_Right,                  // ->
	Undef,                        // ---
	B_Comparison_Begin, 
	Cmp_Eq,                       // ==
	Not_Eq,                       // !=
	Lt,                           // <
	Gt,                           // >
	Lt_Eq,                        // <=
	Gt_Eq,                        // >=
	B_Comparison_End, 
	Open_Paren,                   // (
	Close_Paren,                  // )
	Open_Bracket,                 // [
	Close_Bracket,                // ]
	Open_Brace,                   // {
	Close_Brace,                  // }
	Colon,                        // :
	Semicolon,                    // ;
	Period,                       // .
	Comma,                        // ,
	Ellipsis,                     // ..
	Range_Half,                   // ..<
	Range_Full,                   // ..=
	B_Operator_End, 
	B_Keyword_Begin, 
	Import,                       // import
	Foreign,                      // foreign
	Package,                      // package
	Typeid,                       // typeid
	When,                         // when
	Where,                        // where
	If,                           // if
	Else,                         // else
	For,                          // for
	Switch,                       // switch
	In,                           // in
	Not_In,                       // not_in
	Do,                           // do
	Case,                         // case
	Break,                        // break
	Continue,                     // continue
	Fallthrough,                  // fallthrough
	Defer,                        // defer
	Return,                       // return
	Proc,                         // proc
	Struct,                       // struct
	Union,                        // union
	Enum,                         // enum
	Bit_Set,                      // bit_set
	Bit_Field,                    // bit_field
	Map,                          // map
	Dynamic,                      // dynamic
	Auto_Cast,                    // auto_cast
	Cast,                         // cast
	Transmute,                    // transmute
	Distinct,                     // distinct
	Using,                        // using
	Context,                      // context
	Or_Else,                      // or_else
	Or_Return,                    // or_return
	Or_Break,                     // or_break
	Or_Continue,                  // or_continue
	Asm,                          // asm
	Inline,                       // inline
	No_Inline,                    // no_inline
	Matrix,                       // matrix
	B_Keyword_End, 
	COUNT, 
	B_Custom_Keyword_Begin = 120, 
}
```

##### Related Procedures With Parameters

* [is\_assignment\_operator](/core/odin/tokenizer/#is_assignment_operator)
* [is\_keyword](/core/odin/tokenizer/#is_keyword)
* [is\_literal](/core/odin/tokenizer/#is_literal)
* [is\_operator](/core/odin/tokenizer/#is_operator)
* [to\_string](/core/odin/tokenizer/#to_string)



##### Related Procedures With Returns

* [scan\_number](/core/odin/tokenizer/#scan_number)

### [Tokenizer ¶](#Tokenizer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L16)

```
Tokenizer :: struct {
	// Immutable data
	path:             string,
	src:              string,
	err:              Error_Handler,
	flags:            Flags,
	// Tokenizing state
	ch:               rune,
	offset:           int,
	read_offset:      int,
	line_offset:      int,
	line_count:       int,
	insert_semicolon: bool,
	// Mutable data
	error_count:      int,
}
```

##### Related Procedures With Parameters

* [advance\_rune](/core/odin/tokenizer/#advance_rune)
* [error](/core/odin/tokenizer/#error)
* [init](/core/odin/tokenizer/#init)
* [peek\_byte](/core/odin/tokenizer/#peek_byte)
* [scan](/core/odin/tokenizer/#scan)
* [scan\_comment](/core/odin/tokenizer/#scan_comment)
* [scan\_escape](/core/odin/tokenizer/#scan_escape)
* [scan\_file\_tag](/core/odin/tokenizer/#scan_file_tag)
* [scan\_identifier](/core/odin/tokenizer/#scan_identifier)
* [scan\_number](/core/odin/tokenizer/#scan_number)
* [scan\_raw\_string](/core/odin/tokenizer/#scan_raw_string)
* [scan\_rune](/core/odin/tokenizer/#scan_rune)
* [scan\_string](/core/odin/tokenizer/#scan_string)
* [skip\_whitespace](/core/odin/tokenizer/#skip_whitespace)

## Constants

### [KEYWORD\_LUT\_LEN ¶](#KEYWORD_LUT_LEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L43)

```
KEYWORD_LUT_LEN :: 1 << 9
```

### [KEYWORD\_LUT\_MASK ¶](#KEYWORD_LUT_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L44)

```
KEYWORD_LUT_MASK :: KEYWORD_LUT_LEN - 1
```

## Variables

### [custom\_keyword\_tokens ¶](#custom_keyword_tokens) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L296)

```
custom_keyword_tokens: []string
```

### [global\_keyword\_lut ¶](#global_keyword_lut) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L47)

```
global_keyword_lut: [512]Keyword_Hash_Entry
```

 

protected by `_global_keyword_lut_spinlock`

### [tokens ¶](#tokens) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L166)

```
tokens: [119]string = …
```

## Procedures

### [advance\_rune ¶](#advance_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L150)

```
advance_rune :: proc(t: ^Tokenizer) {…}
```

### [default\_error\_handler ¶](#default_error_handler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L136)

```
default_error_handler :: proc(pos: Pos, msg: string, .. args: ..any) {…}
```

### [digit\_val ¶](#digit_val) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L346)

```
digit_val :: proc(r: rune) -> int {…}
```

### [error ¶](#error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L142)

```
error :: proc(t: ^Tokenizer, offset: int, msg: string, .. args: ..any) {…}
```

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L98)

```
init :: proc(t: ^Tokenizer, src: string, path: string, err: Error_Handler = default_error_handler) {…}
```

### [is\_assignment\_operator ¶](#is_assignment_operator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L339)

```
is_assignment_operator :: proc(kind: Token_Kind) -> bool {…}
```

### [is\_digit ¶](#is_digit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L221)

```
is_digit :: proc(r: rune) -> bool {…}
```

### [is\_keyword ¶](#is_keyword) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L342)

```
is_keyword :: proc(kind: Token_Kind) -> bool {…}
```

### [is\_letter ¶](#is_letter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L210)

```
is_letter :: proc(r: rune) -> bool {…}
```

### [is\_literal ¶](#is_literal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L325)

```
is_literal :: proc(kind: Token_Kind) -> bool {…}
```

### [is\_newline ¶](#is_newline) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L299)

```
is_newline :: proc(tok: Token) -> bool {…}
```

### [is\_operator ¶](#is_operator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L328)

```
is_operator :: proc(kind: Token_Kind) -> bool {…}
```

### [keyword\_hash ¶](#keyword_hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L62)

```
keyword_hash :: proc(text: string) -> u32 {…}
```

### [keyword\_lut\_init ¶](#keyword_lut_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L70)

```
keyword_lut_init :: proc(lut: ^[512]Keyword_Hash_Entry) -> bool {…}
```

### [peek\_byte ¶](#peek_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L181)

```
peek_byte :: proc(t: ^Tokenizer, offset: int = 0) -> u8 {…}
```

### [pos\_compare ¶](#pos_compare) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L18)

```
pos_compare :: proc(lhs, rhs: Pos) -> int {…}
```

### [scan ¶](#scan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L562)

```
scan :: proc(t: ^Tokenizer) -> Token {…}
```

### [scan\_comment ¶](#scan_comment) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L229)

```
scan_comment :: proc(t: ^Tokenizer) -> string {…}
```

### [scan\_escape ¶](#scan_escape) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L358)

```
scan_escape :: proc(t: ^Tokenizer) -> bool {…}
```

### [scan\_file\_tag ¶](#scan_file_tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L280)

```
scan_file_tag :: proc(t: ^Tokenizer) -> string {…}
```

### [scan\_identifier ¶](#scan_identifier) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L297)

```
scan_identifier :: proc(t: ^Tokenizer) -> string {…}
```

### [scan\_number ¶](#scan_number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L444)

```
scan_number :: proc(t: ^Tokenizer, seen_decimal_point: bool) -> (Token_Kind, string) {…}
```

### [scan\_raw\_string ¶](#scan_raw_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L328)

```
scan_raw_string :: proc(t: ^Tokenizer) -> string {…}
```

### [scan\_rune ¶](#scan_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L412)

```
scan_rune :: proc(t: ^Tokenizer) -> string {…}
```

### [scan\_string ¶](#scan_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L307)

```
scan_string :: proc(t: ^Tokenizer) -> string {…}
```

### [skip\_whitespace ¶](#skip_whitespace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin#L188)

```
skip_whitespace :: proc(t: ^Tokenizer) {…}
```

### [to\_string ¶](#to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L311)

```
to_string :: proc(kind: Token_Kind) -> string {…}
```

### [token\_to\_string ¶](#token_to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin#L304)

```
token_to_string :: proc(tok: Token) -> string {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [token.odin](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/token.odin)
* [tokenizer.odin](https://github.com/odin-lang/Odin/tree/master/core/odin/tokenizer/tokenizer.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.155361700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error\_Handler](#Error_Handler)
    + [Flag](#Flag)
    + [Flags](#Flags)
    + [Keyword\_Hash\_Entry](#Keyword_Hash_Entry)
    + [Keyword\_LUT](#Keyword_LUT)
    + [Pos](#Pos)
    + [Token](#Token)
    + [Token\_Kind](#Token_Kind)
    + [Tokenizer](#Tokenizer)
  * [Constants](#pkg-Constants)
    + [KEYWORD\_LUT\_LEN](#KEYWORD_LUT_LEN)
    + [KEYWORD\_LUT\_MASK](#KEYWORD_LUT_MASK)
  * [Variables](#pkg-Variables)
    + [custom\_keyword\_tokens](#custom_keyword_tokens)
    + [global\_keyword\_lut](#global_keyword_lut)
    + [tokens](#tokens)
  * [Procedures](#pkg-Procedures)
    + [advance\_rune](#advance_rune)
    + [default\_error\_handler](#default_error_handler)
    + [digit\_val](#digit_val)
    + [error](#error)
    + [init](#init)
    + [is\_assignment\_operator](#is_assignment_operator)
    + [is\_digit](#is_digit)
    + [is\_keyword](#is_keyword)
    + [is\_letter](#is_letter)
    + [is\_literal](#is_literal)
    + [is\_newline](#is_newline)
    + [is\_operator](#is_operator)
    + [keyword\_hash](#keyword_hash)
    + [keyword\_lut\_init](#keyword_lut_init)
    + [peek\_byte](#peek_byte)
    + [pos\_compare](#pos_compare)
    + [scan](#scan)
    + [scan\_comment](#scan_comment)
    + [scan\_escape](#scan_escape)
    + [scan\_file\_tag](#scan_file_tag)
    + [scan\_identifier](#scan_identifier)
    + [scan\_number](#scan_number)
    + [scan\_raw\_string](#scan_raw_string)
    + [scan\_rune](#scan_rune)
    + [scan\_string](#scan_string)
    + [skip\_whitespace](#skip_whitespace)
    + [to\_string](#to_string)
    + [token\_to\_string](#token_to_string)
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