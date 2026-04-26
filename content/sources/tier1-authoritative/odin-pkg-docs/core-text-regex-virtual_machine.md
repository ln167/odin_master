package text/regex/virtual\_machine - pkg.odin-lang.org 






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



Current Package: *[regex\_vm](/core/text/regex/virtual_machine)*

  

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
4. [virtual\_machine](/core/text/regex/virtual_machine)

# package core:text/regex/virtual\_machine [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A threaded virtual machine for interpreting regular expressions.
Based on the designs described by Russ Cox and attributed to both Ken Thompson and Rob Pike.

The virtual machine executes all threads in lock step, i.e. the string pointer
does not advance until all threads have finished processing the current rune.
The algorithm does not look backwards.

Threads merge when splitting or jumping to positions already visited by another
thread, based on the observation that each thread having visited one PC
(Program Counter) state will execute identically to the previous thread.

Each thread keeps a save state of its capture groups, and thread priority is
used to allow higher precedence operations to complete first with correct save
states, such as greedy versus non-greedy repetition.

For more information, see: https://swtch.com/~rsc/regexp/regexp2.html

**Implementation Details:**

Each opcode is 8 bits in size, and most instructions have no operands.

All operands larger than `u8` are read in system endian order.

Jump and Split instructions operate on absolute positions in `u16` operands.

Classes such as `[0-9]` are stored in a RegEx-specific slice of structs which
are then dereferenced by a `u8` index from the `Rune_Class` instructions.

Each Byte and Rune opcode have their operands stored inline after the opcode,
sized `u8` and `i32` respectively.

A bitmap is used to determine which PC positions are occupied by a thread to
perform merging. The bitmap is cleared with every new frame.

The VM supports two modes: ASCII and Unicode, decided by a compile-time
boolean constant argument provided to `run`. The procedure differs only in
string decoding. This was done for the sake of performance.

No allocations are ever freed; the VM expects an arena or temporary allocator
to be used in the context preceding it.

**Opcode Reference:**

```
(0x00) Match

The terminal opcode which ends a thread. This always comes at the end of
the program.

(0x01) Match_And_Exit

A modified version of Match which stops the virtual machine entirely. It is
only compiled for `No_Capture` expressions, as those expressions do not
need to determine which thread may have saved the most appropriate capture
groups.

(0x02) Byte

Consumes one byte from the text using its operand, which is also a byte.

(0x03) Rune

Consumes one Unicode codepoint from the text using its operand, which is
four bytes long in a system-dependent endian order.

(0x04) Rune_Class

Consumes one character (which may be an ASCII byte or Unicode codepoint,
wholly dependent on which mode the virtual machine is running in) from the
text.

The actual data storing what runes and ranges of runes apply to the class
are stored alongside the program in the Regular_Expression structure and
the operand for this opcode is a single byte which indexes into a
collection of these data structures.

(0x05) Rune_Class_Negated

A modified version of Rune_Class that functions the same, save for how it
returns the opposite of what Rune_Class matches.

(0x06) Wildcard

Consumes one byte or one Unicode codepoint, depending on the VM mode.

(0x07) Jump

Sets the Program Counter of a VM thread to the operand, which is a u16.
This opcode is used to implement Alternation (coming at the end of the left
choice) and Repeat_Zero (to cause the thread to loop backwards).

(0x08) Split

Spawns a new thread for the X operand and causes the current thread to jump
to the Y operand. This opcode is used to implement Alternation, all the
Repeat variations, and the Optional nodes.

Splitting threads is how the virtual machine is able to execute optional
control flow paths, letting it evaluate different possible ways to match
text.

(0x09) Save

Saves the current string index to a slot on the thread dictated by the
operand. These values will be used later to reconstruct capture groups.

(0x0A) Assert_Start

Asserts that the thread is at the beginning of the string.

(0x0B) Assert_Start_Multiline

This opcode is compiled in only when the `Multiline` flag is present as a
replacement for the `^` text anchor.

Asserts that the thread is at the beginning of the string or previously
parsed either a "\n" or "\r".

(0x0C) Assert_End

Asserts that the thread is at the end of the string.

(0x0D) Assert_Word_Boundary

Asserts that the thread is on a word boundary, which can be the start or
end of the text. This examines both the current rune and the next rune.

(0x0E) Assert_Non_Word_Boundary

A modified version of Assert_Word_Boundary that returns the opposite value.

(0x0F) Multiline_Open

This opcode is compiled in only when the `Multiline` flag is present as a
replacement for the `$` text anchor.

It asserts that either the current thread is at the end of the string,
or it consumes a `\n` or `\r` character.

If a `\r` character is consumed, the PC will be advanced to the sibling
`Multiline_Close` opcode to optionally consume a `\n` character on the next
frame.

(0x10) Multiline_Close

This opcode is always present after `Multiline_Open`.

It handles consuming the second half of a complete newline, if necessary.
For example, Windows newlines are represented by the characters `\r\n`,
whereas UNIX newlines are `\n` and Macintosh newlines are `\r`.

(0x11) Wait_For_Byte
(0x12) Wait_For_Rune
(0x13) Wait_For_Rune_Class
(0x14) Wait_For_Rune_Class_Negated

These opcodes are an optimization around restarting threads on failed
matches when the beginning to a pattern is predictable and the Global flag
is set.

They will cause the VM to wait for the next rune to match before splitting,
as would happen in the un-optimized version.

(0x15) Match_All_And_Escape

This opcode is an optimized version of `.*$` or `.+$` that causes the
active thread to immediately work on escaping the program by following all
Jumps out to the end.

While running through the rest of the program, the thread will trigger on
every Save instruction it passes to store the length of the string.

This way, any time a program hits one of these `.*$` constructs, the
virtual machine can exit early, vastly improving processing times.

Be aware, this opcode is not compiled in if the `Multiline` flag is on, as
the meaning of `$` changes with that flag.
```

## Index

Types (7)

* [Machine](#Machine)
* [Opcode](#Opcode)
* [Opcode\_Iterator](#Opcode_Iterator)
* [Program](#Program)
* [Rune\_Class\_Data](#Rune_Class_Data)
* [Rune\_Class\_Range](#Rune_Class_Range)
* [Thread](#Thread)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (10)

* [add\_thread](#add_thread)
* [check\_busy\_map](#check_busy_map)
* [create](#create)
* [destroy](#destroy)
* [is\_word\_class](#is_word_class)
* [iterate\_opcodes](#iterate_opcodes)
* [opcode\_count](#opcode_count)
* [opcode\_to\_name](#opcode_to_name)
* [run](#run)
* [set\_busy\_map](#set_busy_map)

Procedure Groups (0)

This section is empty.

## Types

### [Machine ¶](#Machine) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L60)

```
Machine :: struct {
	// Program state
	memory:            string,
	class_data:        []Rune_Class_Data,
	code:              []Opcode,
	// Thread state
	top_thread:        int,
	threads:           [^]Thread,
	next_threads:      [^]Thread,
	// The busy map is used to merge threads based on their program counters.
	busy_map:          []u64,
	// Global state
	string_pointer:    int,
	current_rune:      rune,
	current_rune_size: int,
	next_rune:         rune,
	next_rune_size:    int,
	last_rune:         rune,
}
```

##### Related Procedures With Parameters

* [add\_thread](/core/text/regex/virtual_machine/#add_thread)
* [check\_busy\_map](/core/text/regex/virtual_machine/#check_busy_map)
* [destroy](/core/text/regex/virtual_machine/#destroy)
* [run](/core/text/regex/virtual_machine/#run)
* [set\_busy\_map](/core/text/regex/virtual_machine/#set_busy_map)



##### Related Procedures With Returns

* [create](/core/text/regex/virtual_machine/#create)

### [Opcode ¶](#Opcode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L27)

```
Opcode :: enum u8 {
	// | [ operands ]
	Match                       = 0,  // |
	Match_And_Exit              = 1,  // |
	Byte                        = 2,  // | u8
	Rune                        = 3,  // | i32
	Rune_Class                  = 4,  // | u8
	Rune_Class_Negated          = 5,  // | u8
	Wildcard                    = 6,  // |
	Jump                        = 7,  // | u16
	Split                       = 8,  // | u16, u16
	Save                        = 9,  // | u8
	Assert_Start                = 10, // |
	Assert_Start_Multiline      = 11, // |
	Assert_End                  = 12, // |
	Assert_Word_Boundary        = 13, // |
	Assert_Non_Word_Boundary    = 14, // |
	Multiline_Open              = 15, // |
	Multiline_Close             = 16, // |
	Wait_For_Byte               = 17, // | u8
	Wait_For_Rune               = 18, // | i32
	Wait_For_Rune_Class         = 19, // | u8
	Wait_For_Rune_Class_Negated = 20, // | u8
	Match_All_And_Escape        = 21, // |
}
```

##### Related Procedures With Parameters

* [opcode\_to\_name](/core/text/regex/virtual_machine/#opcode_to_name)



##### Related Procedures With Returns

* [iterate\_opcodes](/core/text/regex/virtual_machine/#iterate_opcodes)

### [Opcode\_Iterator ¶](#Opcode_Iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/util.odin#L11)

```
Opcode_Iterator :: struct {
	code: []Opcode,
	pc:   int,
}
```

##### Related Procedures With Parameters

* [iterate\_opcodes](/core/text/regex/virtual_machine/#iterate_opcodes)

### [Program ¶](#Program) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L58)

```
Program :: []Opcode
```

##### Related Procedures With Parameters

* [create](/core/text/regex/virtual_machine/#create)
* [opcode\_count](/core/text/regex/virtual_machine/#opcode_count)

### [Rune\_Class\_Data ¶](#Rune_Class_Data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L22)

```
Rune_Class_Data :: struct {
	runes:  []rune,
	ranges: []regex_parser.Rune_Class_Range,
}
```

 

NOTE: This structure differs intentionally from the one in `regex/parser`,
as this data doesn't need to be a dynamic array once it hits the VM.

### [Rune\_Class\_Range ¶](#Rune_Class_Range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L18)

```
Rune_Class_Range :: regex_parser.Rune_Class_Range
```

### [Thread ¶](#Thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L53)

```
Thread :: struct {
	pc:    int,
	saved: ^[20]int,
}
```

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [add\_thread ¶](#add_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L113)

```
add_thread :: proc(vm: ^Machine, saved: ^[20]int, pc: int) {…}
```

### [check\_busy\_map ¶](#check_busy_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L107)

```
check_busy_map :: proc "contextless" (vm: ^Machine, pc: int) -> bool {…}
```

### [create ¶](#create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L624)

```
create :: proc(code: []Opcode, str: string, allocator := context.allocator) -> (vm: Machine) {…}
```

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L643)

```
destroy :: proc(vm: Machine, allocator := context.allocator) {…}
```

### [is\_word\_class ¶](#is_word_class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L88)

```
is_word_class :: proc "contextless" (r: rune) -> bool {…}
```

 

@MetaCharacter
NOTE: This must be kept in sync with the compiler & tokenizer.

### [iterate\_opcodes ¶](#iterate_opcodes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/util.odin#L16)

```
iterate_opcodes :: proc(iter: ^Opcode_Iterator) -> (opcode: Opcode, pc: int, ok: bool) {…}
```

### [opcode\_count ¶](#opcode_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L616)

```
opcode_count :: proc(code: []Opcode) -> (opcodes: int) {…}
```

### [opcode\_to\_name ¶](#opcode_to_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/util.odin#L55)

```
opcode_to_name :: proc(opcode: Opcode) -> (str: string) {…}
```

### [run ¶](#run) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L323)

```
run :: proc(vm: ^Machine, $UNICODE_MODE: bool) -> (saved: ^[20]int, ok: bool) {…}
```

### [set\_busy\_map ¶](#set_busy_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin#L97)

```
set_busy_map :: proc "contextless" (vm: ^Machine, pc: int) -> bool {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/doc.odin)
* [util.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/util.odin)
* [virtual\_machine.odin](https://github.com/odin-lang/Odin/tree/master/core/text/regex/virtual_machine/virtual_machine.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:51.376066500 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Machine](#Machine)
    + [Opcode](#Opcode)
    + [Opcode\_Iterator](#Opcode_Iterator)
    + [Program](#Program)
    + [Rune\_Class\_Data](#Rune_Class_Data)
    + [Rune\_Class\_Range](#Rune_Class_Range)
    + [Thread](#Thread)
  * [Procedures](#pkg-Procedures)
    + [add\_thread](#add_thread)
    + [check\_busy\_map](#check_busy_map)
    + [create](#create)
    + [destroy](#destroy)
    + [is\_word\_class](#is_word_class)
    + [iterate\_opcodes](#iterate_opcodes)
    + [opcode\_count](#opcode_count)
    + [opcode\_to\_name](#opcode_to_name)
    + [run](#run)
    + [set\_busy\_map](#set_busy_map)
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