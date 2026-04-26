package strings - pkg.odin-lang.org 






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



Current Package: *[strings](/core/strings)*

  

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
2. [strings](/core/strings)

# package core:strings [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A `string` builder, as well as procedures to manipulate `UTF-8` encoded strings.

## Index

Types (6)

* [Ascii\_Set](#Ascii_Set)
* [Builder](#Builder)
* [Builder\_Flush\_Proc](#Builder_Flush_Proc)
* [Intern](#Intern)
* [Intern\_Entry](#Intern_Entry)
* [Reader](#Reader)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (170)

* [ascii\_set\_contains](#ascii_set_contains)
* [ascii\_set\_make](#ascii_set_make)
* [builder\_cap](#builder_cap)
* [builder\_destroy](#builder_destroy)
* [builder\_from\_bytes](#builder_from_bytes)
* [builder\_from\_slice](#builder_from_slice)
* [builder\_grow](#builder_grow)
* [builder\_init\_len](#builder_init_len)
* [builder\_init\_len\_cap](#builder_init_len_cap)
* [builder\_init\_none](#builder_init_none)
* [builder\_len](#builder_len)
* [builder\_make\_len](#builder_make_len)
* [builder\_make\_len\_cap](#builder_make_len_cap)
* [builder\_make\_none](#builder_make_none)
* [builder\_replace](#builder_replace)
* [builder\_replace\_all](#builder_replace_all)
* [builder\_reset](#builder_reset)
* [builder\_space](#builder_space)
* [center\_justify](#center_justify)
* [centre\_justify](#centre_justify)
* [clone](#clone)
* [clone\_from\_bytes](#clone_from_bytes)
* [clone\_from\_cstring](#clone_from_cstring)
* [clone\_from\_cstring\_bounded](#clone_from_cstring_bounded)
* [clone\_from\_ptr](#clone_from_ptr)
* [clone\_to\_cstring](#clone_to_cstring)
* [common\_prefix](#common_prefix)
* [concatenate](#concatenate)
* [contains](#contains)
* [contains\_any](#contains_any)
* [contains\_rune](#contains_rune)
* [contains\_space](#contains_space)
* [count](#count)
* [cut](#cut)
* [cut\_clone](#cut_clone)
* [ends\_with](#ends_with)
* [equal\_fold](#equal_fold)
* [expand\_tabs](#expand_tabs)
* [fields](#fields)
* [fields\_iterator](#fields_iterator)
* [fields\_proc](#fields_proc)
* [has\_prefix](#has_prefix)
* [has\_suffix](#has_suffix)
* [index](#index)
* [index\_any](#index_any)
* [index\_byte](#index_byte)
* [index\_multi](#index_multi)
* [index\_proc](#index_proc)
* [index\_proc\_with\_state](#index_proc_with_state)
* [index\_rune](#index_rune)
* [intern\_destroy](#intern_destroy)
* [intern\_get](#intern_get)
* [intern\_get\_cstring](#intern_get_cstring)
* [intern\_init](#intern_init)
* [is\_ascii\_space](#is_ascii_space)
* [is\_delimiter](#is_delimiter)
* [is\_in\_cutset](#is_in_cutset)
* [is\_null](#is_null)
* [is\_separator](#is_separator)
* [is\_space](#is_space)
* [join](#join)
* [last\_index](#last_index)
* [last\_index\_any](#last_index_any)
* [last\_index\_byte](#last_index_byte)
* [last\_index\_proc](#last_index_proc)
* [last\_index\_proc\_with\_state](#last_index_proc_with_state)
* [left\_justify](#left_justify)
* [levenshtein\_distance](#levenshtein_distance)
* [partition](#partition)
* [pop\_byte](#pop_byte)
* [pop\_rune](#pop_rune)
* [prefix\_length](#prefix_length)
* [reader\_init](#reader_init)
* [reader\_length](#reader_length)
* [reader\_read](#reader_read)
* [reader\_read\_at](#reader_read_at)
* [reader\_read\_byte](#reader_read_byte)
* [reader\_read\_rune](#reader_read_rune)
* [reader\_seek](#reader_seek)
* [reader\_size](#reader_size)
* [reader\_to\_stream](#reader_to_stream)
* [reader\_unread\_byte](#reader_unread_byte)
* [reader\_unread\_rune](#reader_unread_rune)
* [reader\_write\_to](#reader_write_to)
* [remove](#remove)
* [remove\_all](#remove_all)
* [repeat](#repeat)
* [replace](#replace)
* [replace\_all](#replace_all)
* [reverse](#reverse)
* [right\_justify](#right_justify)
* [rune\_count](#rune_count)
* [scrub](#scrub)
* [split](#split)
* [split\_after](#split_after)
* [split\_after\_iterator](#split_after_iterator)
* [split\_after\_n](#split_after_n)
* [split\_by\_byte\_iterator](#split_by_byte_iterator)
* [split\_iterator](#split_iterator)
* [split\_lines](#split_lines)
* [split\_lines\_after](#split_lines_after)
* [split\_lines\_after\_iterator](#split_lines_after_iterator)
* [split\_lines\_after\_n](#split_lines_after_n)
* [split\_lines\_iterator](#split_lines_iterator)
* [split\_lines\_n](#split_lines_n)
* [split\_multi](#split_multi)
* [split\_multi\_iterate](#split_multi_iterate)
* [split\_n](#split_n)
* [starts\_with](#starts_with)
* [string\_case\_iterator](#string_case_iterator)
* [string\_from\_null\_terminated\_ptr](#string_from_null_terminated_ptr)
* [string\_from\_ptr](#string_from_ptr)
* [substring](#substring)
* [substring\_from](#substring_from)
* [substring\_to](#substring_to)
* [to\_ada\_case](#to_ada_case)
* [to\_camel\_case](#to_camel_case)
* [to\_cstring](#to_cstring)
* [to\_delimiter\_case](#to_delimiter_case)
* [to\_kebab\_case](#to_kebab_case)
* [to\_lower](#to_lower)
* [to\_lower\_camel\_case](#to_lower_camel_case)
* [to\_pascal\_case](#to_pascal_case)
* [to\_reader](#to_reader)
* [to\_reader\_at](#to_reader_at)
* [to\_screaming\_snake\_case](#to_screaming_snake_case)
* [to\_snake\_case](#to_snake_case)
* [to\_stream](#to_stream)
* [to\_string](#to_string)
* [to\_upper](#to_upper)
* [to\_upper\_camel\_case](#to_upper_camel_case)
* [to\_upper\_kebab\_case](#to_upper_kebab_case)
* [to\_upper\_snake\_case](#to_upper_snake_case)
* [to\_valid\_utf8](#to_valid_utf8)
* [to\_writer](#to_writer)
* [trim](#trim)
* [trim\_left](#trim_left)
* [trim\_left\_null](#trim_left_null)
* [trim\_left\_proc](#trim_left_proc)
* [trim\_left\_proc\_with\_state](#trim_left_proc_with_state)
* [trim\_left\_space](#trim_left_space)
* [trim\_null](#trim_null)
* [trim\_prefix](#trim_prefix)
* [trim\_right](#trim_right)
* [trim\_right\_null](#trim_right_null)
* [trim\_right\_proc](#trim_right_proc)
* [trim\_right\_proc\_with\_state](#trim_right_proc_with_state)
* [trim\_right\_space](#trim_right_space)
* [trim\_space](#trim_space)
* [trim\_suffix](#trim_suffix)
* [truncate\_to\_byte](#truncate_to_byte)
* [truncate\_to\_rune](#truncate_to_rune)
* [unsafe\_string\_to\_cstring](#unsafe_string_to_cstring)
* [unsafe\_to\_cstring](#unsafe_to_cstring)
* [write\_byte](#write_byte)
* [write\_bytes](#write_bytes)
* [write\_encoded\_rune](#write_encoded_rune)
* [write\_escaped\_rune](#write_escaped_rune)
* [write\_f16](#write_f16)
* [write\_f32](#write_f32)
* [write\_f64](#write_f64)
* [write\_float](#write_float)
* [write\_i64](#write_i64)
* [write\_int](#write_int)
* [write\_quoted\_rune](#write_quoted_rune)
* [write\_quoted\_string](#write_quoted_string)
* [write\_rune](#write_rune)
* [write\_string](#write_string)
* [write\_u64](#write_u64)
* [write\_uint](#write_uint)

Procedure Groups (3)

* [builder\_init](#builder_init)
* [builder\_make](#builder_make)
* [clone\_from](#clone_from)

## Types

### [Ascii\_Set ¶](#Ascii_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/ascii_set.odin#L10)

```
Ascii_Set :: distinct [8]u32
```

 

Ascii\_Set is designed to store ASCII characters efficiently as a bit-array
Each bit in the array corresponds to a specific ASCII character, where the value of the bit (0 or 1)
indicates if the character is present in the set or not.




##### Related Procedures With Parameters

* [ascii\_set\_contains](/core/strings/#ascii_set_contains)



##### Related Procedures With Returns

* [ascii\_set\_make](/core/strings/#ascii_set_make)

### [Builder ¶](#Builder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L22)

```
Builder :: struct {
	buf: [dynamic]u8,
}
```

 

A dynamic byte buffer / string builder with helper procedures
The dynamic array is wrapped inside the struct to be more opaque
You can use `fmt.sbprint*` procedures with a `^strings.Builder` directly




##### Related Procedures With Parameters

* [builder\_cap](/core/strings/#builder_cap)
* [builder\_destroy](/core/strings/#builder_destroy)
* [builder\_grow](/core/strings/#builder_grow)
* [builder\_init\_len](/core/strings/#builder_init_len)
* [builder\_init\_len\_cap](/core/strings/#builder_init_len_cap)
* [builder\_init\_none](/core/strings/#builder_init_none)
* [builder\_len](/core/strings/#builder_len)
* [builder\_replace](/core/strings/#builder_replace)
* [builder\_replace\_all](/core/strings/#builder_replace_all)
* [builder\_reset](/core/strings/#builder_reset)
* [builder\_space](/core/strings/#builder_space)
* [pop\_byte](/core/strings/#pop_byte)
* [pop\_rune](/core/strings/#pop_rune)
* [to\_cstring](/core/strings/#to_cstring)
* [to\_stream](/core/strings/#to_stream)
* [to\_string](/core/strings/#to_string)
* [to\_writer](/core/strings/#to_writer)
* [unsafe\_to\_cstring](/core/strings/#unsafe_to_cstring)
* [write\_byte](/core/strings/#write_byte)
* [write\_bytes](/core/strings/#write_bytes)
* [write\_encoded\_rune](/core/strings/#write_encoded_rune)
* [write\_escaped\_rune](/core/strings/#write_escaped_rune)
* [write\_f16](/core/strings/#write_f16)
* [write\_f32](/core/strings/#write_f32)
* [write\_f64](/core/strings/#write_f64)
* [write\_float](/core/strings/#write_float)
* [write\_i64](/core/strings/#write_i64)
* [write\_int](/core/strings/#write_int)
* [write\_quoted\_rune](/core/strings/#write_quoted_rune)
* [write\_quoted\_string](/core/strings/#write_quoted_string)
* [write\_rune](/core/strings/#write_rune)
* [write\_string](/core/strings/#write_string)
* [write\_u64](/core/strings/#write_u64)
* [write\_uint](/core/strings/#write_uint)
* [builder\_init](/core/strings/#builder_init) *(procedure groups)*



##### Related Procedures With Returns

* [builder\_from\_bytes](/core/strings/#builder_from_bytes)
* [builder\_make\_len](/core/strings/#builder_make_len)
* [builder\_make\_len\_cap](/core/strings/#builder_make_len_cap)
* [builder\_make\_none](/core/strings/#builder_make_none)
* [builder\_make](/core/strings/#builder_make) *(procedure groups)*

### [Builder\_Flush\_Proc ¶](#Builder_Flush_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L16)

```
Builder_Flush_Proc :: proc(b: ^Builder) -> (do_reset: bool)
```

 

Type definition for a procedure that flushes a Builder

**Inputs:**  
b: A pointer to the Builder

**Returns:**  
A boolean indicating whether the Builder should be reset

### [Intern ¶](#Intern) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/intern.odin#L19)

```
Intern :: struct {
	allocator: runtime.Allocator,
	entries:   map[string]^Intern_Entry,
}
```

 

Intern is a more memory efficient string map

Uses Specified Allocator for `Intern_Entry` strings

Fields:
allocator: The allocator used for the Intern\_Entry strings
entries: A map of strings to interned string entries




##### Related Procedures With Parameters

* [intern\_destroy](/core/strings/#intern_destroy)
* [intern\_get](/core/strings/#intern_get)
* [intern\_get\_cstring](/core/strings/#intern_get_cstring)
* [intern\_init](/core/strings/#intern_init)

### [Intern\_Entry ¶](#Intern_Entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/intern.odin#L6)

```
Intern_Entry :: struct {
	len: int,
	str: [1]u8,
}
```

 

Custom string entry struct

### [Reader ¶](#Reader) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L11)

```
Reader :: struct {
	s:         string,
	// read-only buffer
	i:         i64,
	// current reading index
	prev_rune: int,
}
```

 

io stream data for a string reader that can read based on bytes or runes
implements the vtable when using the `io.Reader` variants
"read" calls advance the current reading offset `i`




##### Related Procedures With Parameters

* [reader\_init](/core/strings/#reader_init)
* [reader\_length](/core/strings/#reader_length)
* [reader\_read](/core/strings/#reader_read)
* [reader\_read\_at](/core/strings/#reader_read_at)
* [reader\_read\_byte](/core/strings/#reader_read_byte)
* [reader\_read\_rune](/core/strings/#reader_read_rune)
* [reader\_seek](/core/strings/#reader_seek)
* [reader\_size](/core/strings/#reader_size)
* [reader\_to\_stream](/core/strings/#reader_to_stream)
* [reader\_unread\_byte](/core/strings/#reader_unread_byte)
* [reader\_unread\_rune](/core/strings/#reader_unread_rune)
* [reader\_write\_to](/core/strings/#reader_write_to)
* [to\_reader](/core/strings/#to_reader)
* [to\_reader\_at](/core/strings/#to_reader_at)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [ascii\_set\_contains ¶](#ascii_set_contains) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/ascii_set.odin#L42)

```
ascii_set_contains :: proc(as: Ascii_Set, c: u8) -> (res: bool) {…}
```

 

Determines if a given char is contained within an Ascii\_Set.

**Inputs:**  
as: The Ascii\_Set to search.
c: The char to check for in the Ascii\_Set.

**Returns:**  
res: A boolean indicating if the byte is contained in the Ascii\_Set (true) or not (false).

### [ascii\_set\_make ¶](#ascii_set_make) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/ascii_set.odin#L21)

```
ascii_set_make :: proc(chars: string) -> (as: Ascii_Set, ok: bool) {…}
```

 

Creates an Ascii\_Set with unique characters from the input string.

**Inputs:**  
chars: A string containing characters to include in the Ascii\_Set.

**Returns:**  
as: An Ascii\_Set with unique characters from the input string.
ok: false if any character in the input string is not a valid ASCII character.

### [builder\_cap ¶](#builder_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L356)

```
builder_cap :: proc(b: Builder) -> (res: int) {…}
```

 

Returns the capacity of the Builder's buffer, in bytes

**Inputs:**  
b: A Builder

**Returns:**  
res: The capacity of the Builder's buffer

### [builder\_destroy ¶](#builder_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L217)

```
builder_destroy :: proc(b: ^Builder) {…}
```

 

Deletes the Builder byte buffer content

**Inputs:**  
b: A pointer to the Builder

### [builder\_from\_bytes ¶](#builder_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L270)

```
builder_from_bytes :: proc(backing: []u8) -> (res: Builder) {…}
```

 

Creates a Builder from a slice of bytes with the same slice length as its capacity. Used in fmt.bprint\*

*Uses Nil Allocator - Does NOT allocate*

**Inputs:**  
backing: A slice of bytes to be used as the backing buffer

**Returns:**  
res: The new Builder

**Example:**

```
import "core:fmt"
import "core:strings"
builder_from_bytes_example :: proc() {
	bytes: [8]byte // <-- gets filled
	builder := strings.builder_from_bytes(bytes[:])
	strings.write_byte(&builder, 'a')
	fmt.println(strings.to_string(builder)) // -> "a"
	strings.write_byte(&builder, 'b')
	fmt.println(strings.to_string(builder)) // -> "ab"
}
```

**Output:**

```
a
ab
```

### [builder\_from\_slice ¶](#builder_from_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L270)

```
builder_from_slice :: builder_from_bytes
```

 

Creates a Builder from a slice of bytes with the same slice length as its capacity. Used in fmt.bprint\*

*Uses Nil Allocator - Does NOT allocate*

**Inputs:**  
backing: A slice of bytes to be used as the backing buffer

**Returns:**  
res: The new Builder

**Example:**

```
import "core:fmt"
import "core:strings"
builder_from_bytes_example :: proc() {
	bytes: [8]byte // <-- gets filled
	builder := strings.builder_from_bytes(bytes[:])
	strings.write_byte(&builder, 'a')
	fmt.println(strings.to_string(builder)) // -> "a"
	strings.write_byte(&builder, 'b')
	fmt.println(strings.to_string(builder)) // -> "ab"
}
```

**Output:**

```
a
ab
```

### [builder\_grow ¶](#builder_grow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L228)

```
builder_grow :: proc(b: ^Builder, cap: int) {…}
```

 

Reserves the Builder byte buffer to a specific capacity, when it's higher than before

**Inputs:**  
b: A pointer to the Builder
cap: The desired capacity for the Builder's buffer

### [builder\_init\_len ¶](#builder_init_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L137)

```
builder_init_len :: proc(b: ^Builder, len: int, allocator := context.allocator, loc := #caller_location) -> (res: ^Builder, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Initializes a Builder with specified length and capacity `len`.
It replaces the existing `buf`

*Allocates Using Provided Allocator*

**Inputs:**  
b: A pointer to the Builder
len: The desired length of the Builder's buffer
allocator: (default is context.allocator)

**Returns:**  
res: A pointer to the initialized Builder
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [builder\_init](/core/strings/#builder_init)

### [builder\_init\_len\_cap ¶](#builder_init_len_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L155)

```
builder_init_len_cap :: proc(b: ^Builder, len, cap: int, allocator := context.allocator, loc := #caller_location) -> (res: ^Builder, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Initializes a Builder with specified length `len` and capacity `cap`.
It replaces the existing `buf`

**Inputs:**  
b: A pointer to the Builder
len: The desired length of the Builder's buffer
cap: The desired capacity of the Builder's buffer, actual max(len,cap)
allocator: (default is context.allocator)

**Returns:**  
res: A pointer to the initialized Builder
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [builder\_init](/core/strings/#builder_init)

### [builder\_init\_none ¶](#builder_init_none) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L118)

```
builder_init_none :: proc(b: ^Builder, allocator := context.allocator, loc := #caller_location) -> (res: ^Builder, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Initializes an empty Builder
It replaces the existing `buf`

*Allocates Using Provided Allocator*

**Inputs:**  
b: A pointer to the Builder
allocator: (default is context.allocator)

**Returns:**  
res: A pointer to the initialized Builder
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [builder\_init](/core/strings/#builder_init)

### [builder\_len ¶](#builder_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L344)

```
builder_len :: proc(b: Builder) -> (res: int) {…}
```

 

Returns the length of the Builder's buffer, in bytes

**Inputs:**  
b: A Builder

**Returns:**  
res: The length of the Builder's buffer

### [builder\_make\_len ¶](#builder_make_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L53)

```
builder_make_len :: proc(len: int, allocator := context.allocator, loc := #caller_location) -> (res: Builder, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Produces a Builder with specified length and capacity `len`.

*Allocates Using Provided Allocator*

**Inputs:**  
len: The desired length of the Builder's buffer
allocator: (default is context.allocator)

**Returns:**  
res: The new Builder
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [builder\_make](/core/strings/#builder_make)

### [builder\_make\_len\_cap ¶](#builder_make_len_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L70)

```
builder_make_len_cap :: proc(len, cap: int, allocator := context.allocator, loc := #caller_location) -> (res: Builder, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Produces a Builder with specified length `len` and capacity `cap`.

*Allocates Using Provided Allocator*

**Inputs:**  
len: The desired length of the Builder's buffer
cap: The desired capacity of the Builder's buffer, cap is max(cap, len)
allocator: (default is context.allocator)

**Returns:**  
res: The new Builder
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [builder\_make](/core/strings/#builder_make)

### [builder\_make\_none ¶](#builder_make_none) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L37)

```
builder_make_none :: proc(allocator := context.allocator, loc := #caller_location) -> (res: Builder, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Produces an empty Builder

*Allocates Using Provided Allocator*

**Inputs:**  
allocator: (default is context.allocator)

**Returns:**  
res: The new Builder
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [builder\_make](/core/strings/#builder_make)

### [builder\_replace ¶](#builder_replace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L883)

```
builder_replace :: proc(b: ^Builder, old, new: string, n: int, loc := #caller_location) -> (replaced: int, err: runtime.Allocator_Error) {…}
```

 

Replaces n instances of `old` in the string in a Builder `b` with the `new` string

*Allocates Using The Allocator On The Builder*

**Inputs:**  
b: The input `Builder`
old: The substring to be replaced
new: The replacement string
n: The number of instances to replace (if `n < 0`, no limit on the number of replacements)

**Returns:**  
replaced: The number of replacements
err: if any allocation errors occurred

### [builder\_replace\_all ¶](#builder_replace_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L864)

```
builder_replace_all :: proc(b: ^Builder, old, new: string) -> (replaced: int, err: runtime.Allocator_Error) {…}
```

 

Replaces all instances of `old` in the string in a Builder `b` with the `new` string

*Allocates Using The Allocator On The Builder*

**Inputs:**  
b: The input `Builder`
old: The substring to be replaced
new: The replacement string

**Returns:**  
replaced: The number of replacements
err: if any allocation errors occurred

### [builder\_reset ¶](#builder_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L237)

```
builder_reset :: proc(b: ^Builder) {…}
```

 

Clears the Builder byte buffer content (sets len to zero)

**Inputs:**  
b: A pointer to the Builder

### [builder\_space ¶](#builder_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L368)

```
builder_space :: proc(b: Builder) -> (res: int) {…}
```

 

The free space left in the Builder's buffer, in bytes

**Inputs:**  
b: A Builder

**Returns:**  
res: The available space left in the Builder's buffer

### [center\_justify ¶](#center_justify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3063)

```
center_justify :: centre_justify
```

 

Centers the input string within a field of specified length by adding pad string on both sides, if its length is less than the target length.

*Allocates Using Provided Allocator*

**Inputs:**  
str: The input string
length: The desired length of the centered string, in runes
pad: The string used for padding on both sides
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A new string centered within a field of the specified length
err: An optional allocator error if one occured, `nil` otherwise

### [centre\_justify ¶](#centre_justify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3063)

```
centre_justify :: proc(str: string, length: int, pad: string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Centers the input string within a field of specified length by adding pad string on both sides, if its length is less than the target length.

*Allocates Using Provided Allocator*

**Inputs:**  
str: The input string
length: The desired length of the centered string, in runes
pad: The string used for padding on both sides
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A new string centered within a field of the specified length
err: An optional allocator error if one occured, `nil` otherwise

### [clone ¶](#clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L25)

```
clone :: proc(s: string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Clones a string

*Allocates Using Provided Allocator*

**Inputs:**  
s: The string to be cloned
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: #caller\_location)

**Returns:**  
res: The cloned string
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [clone\_from](/core/strings/#clone_from)

### [clone\_from\_bytes ¶](#clone_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L155)

```
clone_from_bytes :: proc(s: []u8, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Clones a byte array `s` and appends a null-byte

*Allocates Using Provided Allocator*

**Inputs:**  
s: The byte array to be cloned
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The cloned string from the byte array with a null-byte
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [clone\_from](/core/strings/#clone_from)

### [clone\_from\_cstring ¶](#clone_from_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L176)

```
clone_from_cstring :: proc(s: cstring, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Clones a cstring `s` as a string

*Allocates Using Provided Allocator*

**Inputs:**  
s: The cstring to be cloned
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The cloned string from the cstring
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [clone\_from](/core/strings/#clone_from)

### [clone\_from\_cstring\_bounded ¶](#clone_from_cstring_bounded) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L227)

```
clone_from_cstring_bounded :: proc(ptr: cstring, len: int, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Clones a string from a null-terminated cstring `ptr` and a byte length `len`

*Allocates Using Provided Allocator*

**Inputs:**  
ptr: A pointer to the start of the null-terminated cstring
len: The byte length of the cstring
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

NOTE: Truncates at the first null-byte encountered or the byte length.

**Returns:**  
res: The cloned string from the null-terminated cstring and byte length
err: An optional allocator error if one occured, `nil` otherwise

### [clone\_from\_ptr ¶](#clone_from_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L197)

```
clone_from_ptr :: proc(ptr: ^u8, len: int, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Clones a string from a byte pointer `ptr` and a byte length `len`

*Allocates Using Provided Allocator*

**Inputs:**  
ptr: A pointer to the start of the byte sequence
len: The length of the byte sequence
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

NOTE: Same as `string_from_ptr`, but perform an additional `clone` operation

**Returns:**  
res: The cloned string from the byte pointer and length
err: An optional allocator error if one occured, `nil` otherwise




##### Related Procedure Groups

* [clone\_from](/core/strings/#clone_from)

### [clone\_to\_cstring ¶](#clone_to_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L45)

```
clone_to_cstring :: proc(s: string, allocator := context.allocator, loc := #caller_location) -> (res: cstring, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Clones a string and appends a null-byte to make it a cstring

*Allocates Using Provided Allocator*

**Inputs:**  
s: The string to be cloned
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: #caller\_location)

**Returns:**  
res: A cloned cstring with an appended null-byte
err: An optional allocator error if one occured, `nil` otherwise

### [common\_prefix ¶](#common_prefix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L527)

```
common_prefix :: proc(a, b: string) -> string {…}
```

 

Returns the common prefix between strings `a` and `b`

**Inputs:**  
a: The first input string
b: The second input string

**Returns:**  
n: The string prefix common between strings `a` and `b`

**Example:**

```
import "core:fmt"
import "core:strings"

common_prefix_example :: proc() {
	fmt.println(strings.common_prefix("testing", "test"))
	fmt.println(strings.common_prefix("testing", "te"))
	fmt.println(strings.common_prefix("telephone", "te"))
}
```

**Output:**

```
test
te
te
```

### [concatenate ¶](#concatenate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L681)

```
concatenate :: proc(a: []string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Returns a combined string from the slice of strings `a` without a separator

*Allocates Using Provided Allocator*

**Inputs:**  
a: A slice of strings to concatenate
allocator: (default is context.allocator)

**Returns:**  
res: The concatenated string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

concatenate_example :: proc() {
	a := [?]string { "a", "b", "c" }
	fmt.println(strings.concatenate(a[:]))
}
```

**Output:**

```
abc
```

### [contains ¶](#contains) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L293)

```
contains :: proc(s, substr: string) -> (res: bool) {…}
```

 

Returns true when the string `substr` is contained inside the string `s`

**Inputs:**  
s: The input string
substr: The substring to search for

**Returns:**  
res: `true` if `substr` is contained inside the string `s`, `false` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

contains_example :: proc() {
	fmt.println(strings.contains("testing", "test"))
	fmt.println(strings.contains("testing", "ing"))
	fmt.println(strings.contains("testing", "text"))
}
```

**Output:**

```
true
true
false
```

### [contains\_any ¶](#contains_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L327)

```
contains_any :: proc(s, chars: string) -> (res: bool) {…}
```

 

Returns `true` when the string `s` contains any of the characters inside the string `chars`

**Inputs:**  
s: The input string
chars: The characters to search for

**Returns:**  
res: `true` if the string `s` contains any of the characters in `chars`, `false` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

contains_any_example :: proc() {
	fmt.println(strings.contains_any("test", "test"))
	fmt.println(strings.contains_any("test", "ts"))
	fmt.println(strings.contains_any("test", "et"))
	fmt.println(strings.contains_any("test", "a"))
}
```

**Output:**

```
true
true
true
false
```

### [contains\_rune ¶](#contains_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L256)

```
contains_rune :: proc(s: string, r: rune) -> (result: bool) {…}
```

 

Checks if rune `r` in the string `s`

**Inputs:**  
s: The input string
r: The rune to search for

**Returns:**  
result: `true` if the rune `r` in the string `s`, `false` otherwise

### [contains\_space ¶](#contains_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L332)

```
contains_space :: proc(s: string) -> (res: bool) {…}
```

### [count ¶](#count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1942)

```
count :: proc(s, substr: string) -> (res: int) {…}
```

 

Counts the number of non-overlapping occurrences of `substr` in `s`

**Inputs:**  
s: The string to search in
substr: The substring to count

**Returns:**  
res: The number of occurrences of `substr` in `s`, returns the rune\_count + 1 of the string `s` on empty `substr`

**Example:**

```
import "core:fmt"
import "core:strings"

count_example :: proc() {
	fmt.println(strings.count("abbccc", "a"))
	fmt.println(strings.count("abbccc", "b"))
	fmt.println(strings.count("abbccc", "c"))
	fmt.println(strings.count("abbccc", "ab"))
	fmt.println(strings.count("abbccc", " "))
}
```

**Output:**

```
1
2
3
1
0
```

### [cut ¶](#cut) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L727)

```
cut :: proc(s: string, rune_offset: int = int(0), rune_length: int = int(0)) -> (res: string) {…}
```

 

Returns a substring of the input string `s` with the specified rune offset and length

**Inputs:**  
s: The input string to cut
rune\_offset: The starting rune index (default is 0). In runes, not bytes.
rune\_length: The number of runes to include in the substring (default is 0, which returns the remainder of the string). In runes, not bytes.

**Returns:**  
res: The substring

**Example:**

```
import "core:fmt"
import "core:strings"

cut_example :: proc() {
	fmt.println(strings.cut("some example text", 0, 4)) // -> "some"
	fmt.println(strings.cut("some example text", 2, 2)) // -> "me"
	fmt.println(strings.cut("some example text", 5, 7)) // -> "example"
}
```

**Output:**

```
some
me
example
```

### [cut\_clone ¶](#cut_clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L788)

```
cut_clone :: proc(s: string, rune_offset: int = int(0), rune_length: int = int(0), allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Returns a substring of the input string `s` with the specified rune offset and length

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to cut
rune\_offset: The starting rune index (default is 0). In runes, not bytes.
rune\_length: The number of runes to include in the substring (default is 0, which returns the remainder of the string). In runes, not bytes.
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The substring
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

cut_clone_example :: proc() {
	fmt.println(strings.cut_clone("some example text", 0, 4)) // -> "some"
	fmt.println(strings.cut_clone("some example text", 2, 2)) // -> "me"
	fmt.println(strings.cut_clone("some example text", 5, 7)) // -> "example"
}
```

**Output:**

```
some
me
example
```

### [ends\_with ¶](#ends_with) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L595)

```
ends_with :: has_suffix
```

 

Determines if a string `s` ends with a given `suffix`

**Inputs:**  
s: The string to check for the `suffix`
suffix: The suffix to look for

**Returns:**  
result: `true` if the string `s` ends with the `suffix`, otherwise `false`

**Example:**

```
import "core:fmt"
import "core:strings"

has_suffix_example :: proc() {
	fmt.println(strings.has_suffix("todo.txt", ".txt"))
	fmt.println(strings.has_suffix("todo.doc", ".txt"))
	fmt.println(strings.has_suffix("todo.doc.txt", ".txt"))
}
```

**Output:**

```
true
false
true
```

### [equal\_fold ¶](#equal_fold) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L401)

```
equal_fold :: proc(u, v: string) -> (res: bool) {…}
```

 

Returns whether the strings `u` and `v` are the same alpha characters, ignoring different casings
Works with UTF-8 string content

**Inputs:**  
u: The first string for comparison
v: The second string for comparison

**Returns:**  
res: `true` if the strings `u` and `v` are the same alpha characters (ignoring case)

**Example:**

```
import "core:fmt"
import "core:strings"

equal_fold_example :: proc() {
	fmt.println(strings.equal_fold("test", "test"))
	fmt.println(strings.equal_fold("Test", "test"))
	fmt.println(strings.equal_fold("Test", "tEsT"))
	fmt.println(strings.equal_fold("test", "tes"))
}
```

**Output:**

```
true
true
true
false
```

### [expand\_tabs ¶](#expand_tabs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2951)

```
expand_tabs :: proc(s: string, tab_size: int, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Expands the input string by replacing tab characters with spaces to align to a specified tab size

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
tab\_size: The number of spaces to use for each tab character
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A new string with tab characters expanded to the specified tab size
err: An optional allocator error if one occured, `nil` otherwise

WARNING: Panics if tab\_size <= 0

**Example:**

```
import "core:fmt"
import "core:strings"

expand_tabs_example :: proc() {
	text := "abc1\tabc2\tabc3"
	fmt.println(strings.expand_tabs(text, 4))
}
```

**Output:**

```
abc1    abc2    abc3
```

### [fields ¶](#fields) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3197)

```
fields :: proc(s: string, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits a string into a slice of substrings at each instance of one or more consecutive white space characters, as defined by `unicode.is_space`

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A slice of substrings of the input string, or an empty slice if the input string only contains white space
err: An optional allocator error if one occured, `nil` otherwise

### [fields\_iterator ¶](#fields_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3300)

```
fields_iterator :: proc(s: ^string) -> (field: string, ok: bool) {…}
```

 

Retrieves the first non-space substring from a mutable string reference and advances the reference. `s` is advanced from any space after the substring, or be an empty string if the substring was the remaining characters

**Inputs:**  
s: A mutable string reference to be iterated

**Returns:**  
field: The first non-space substring found
ok: A boolean indicating if a non-space substring was found

### [fields\_proc ¶](#fields_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3263)

```
fields_proc :: proc(s: string, f: proc(rune) -> bool, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits a string into a slice of substrings at each run of unicode code points `r` satisfying the predicate `f(r)`

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
f: A predicate function to determine the split points
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

NOTE: fields\_proc makes no guarantee about the order in which it calls `f(r)`, it assumes that `f` always returns the same value for a given `r`

**Returns:**  
res: A slice of substrings of the input string, or an empty slice if all code points in the input string satisfy the predicate or if the input string is empty
err: An optional allocator error if one occured, `nil` otherwise

### [has\_prefix ¶](#has_prefix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L561)

```
has_prefix :: proc(s, prefix: string) -> (result: bool) {…}
```

 

Determines if a string `s` starts with a given `prefix`

**Inputs:**  
s: The string to check for the `prefix`
prefix: The prefix to look for

**Returns:**  
result: `true` if the string `s` starts with the `prefix`, otherwise `false`

**Example:**

```
import "core:fmt"
import "core:strings"

has_prefix_example :: proc() {
	fmt.println(strings.has_prefix("testing", "test"))
	fmt.println(strings.has_prefix("testing", "te"))
	fmt.println(strings.has_prefix("telephone", "te"))
	fmt.println(strings.has_prefix("testing", "est"))
}
```

**Output:**

```
true
true
true
false
```

### [has\_suffix ¶](#has_suffix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L595)

```
has_suffix :: proc(s, suffix: string) -> (result: bool) {…}
```

 

Determines if a string `s` ends with a given `suffix`

**Inputs:**  
s: The string to check for the `suffix`
suffix: The suffix to look for

**Returns:**  
result: `true` if the string `s` ends with the `suffix`, otherwise `false`

**Example:**

```
import "core:fmt"
import "core:strings"

has_suffix_example :: proc() {
	fmt.println(strings.has_suffix("todo.txt", ".txt"))
	fmt.println(strings.has_suffix("todo.doc", ".txt"))
	fmt.println(strings.has_suffix("todo.doc.txt", ".txt"))
}
```

**Output:**

```
true
false
true
```

### [index ¶](#index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1594)

```
index :: proc "contextless" (s, substr: string) -> (res: int) {…}
```

 

Returns the byte offset of the string `substr` in the string `s`, -1 when not found.

**Inputs:**  
s: The input string to search in.
substr: The substring to search for.

**Returns:**  
res: The byte offset of the first occurrence of `substr` in `s`, or -1 if not found.

**Example:**

```
import "core:fmt"
import "core:strings"

index_example :: proc() {
	fmt.println(strings.index("test", "t"))
	fmt.println(strings.index("test", "te"))
	fmt.println(strings.index("test", "st"))
	fmt.println(strings.index("test", "tt"))
}
```

**Output:**

```
0
0
2
-1
```

### [index\_any ¶](#index_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1754)

```
index_any :: proc(s, chars: string) -> (res: int) {…}
```

 

Returns the index of any first char of `chars` found in `s`, -1 if not found.

**Inputs:**  
s: The input string to search in.
chars: The characters to look for

**Returns:**  
res: The index of the first character of `chars` found in `s`, or -1 if not found.

**Example:**

```
import "core:fmt"
import "core:strings"

index_any_example :: proc() {
	fmt.println(strings.index_any("test", "s"))
	fmt.println(strings.index_any("test", "se"))
	fmt.println(strings.index_any("test", "et"))
	fmt.println(strings.index_any("test", "set"))
	fmt.println(strings.index_any("test", "x"))
}
```

**Output:**

```
2
1
0
0
-1
```

### [index\_byte ¶](#index_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1463)

```
index_byte :: proc "contextless" (s: string, c: u8) -> (res: int) {…}
```

 

Returns the byte offset of the first byte `c` in the string s it finds, -1 when not found.
NOTE: Can't find UTF-8 based runes.

**Inputs:**  
s: The input string to search in.
c: The byte to search for.

**Returns:**  
res: The byte offset of the first occurrence of `c` in `s`, or -1 if not found.

**Example:**

```
import "core:fmt"
import "core:strings"

index_byte_example :: proc() {
	fmt.println(strings.index_byte("test", 't'))
	fmt.println(strings.index_byte("test", 'e'))
	fmt.println(strings.index_byte("test", 'x'))
	fmt.println(strings.index_byte("teäst", 'ä'))
}
```

**Output:**

```
0
1
-1
-1
```

### [index\_multi ¶](#index_multi) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1879)

```
index_multi :: proc(s: string, substrs: []string) -> (idx: int, width: int) {…}
```

 

Finds the first occurrence of any substring in `substrs` within `s`

**Inputs:**  
s: The string to search in
substrs: The substrings to look for

**Returns:**  
idx: the index of the first matching substring
width: the length of the found substring

### [index\_proc ¶](#index_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2315)

```
index_proc :: proc(s: string, p: proc(rune) -> bool, truth: bool = true) -> (res: int) {…}
```

 

Find the index of the first rune `r` in string `s` for which procedure `p` returns the same as truth, or -1 if no such rune appears.

**Inputs:**  
s: The input string
p: A procedure that takes a rune and returns a boolean
truth: The boolean value to be matched (default: `true`)

**Returns:**  
res: The index of the first matching rune, or -1 if no match was found

**Example:**

```
import "core:fmt"
import "core:strings"

index_proc_example :: proc() {
	call :: proc(r: rune) -> bool {
		return r == 'a'
	}
	fmt.println(strings.index_proc("abcabc", call))
	fmt.println(strings.index_proc("cbacba", call))
	fmt.println(strings.index_proc("cbacba", call, false))
	fmt.println(strings.index_proc("abcabc", call, false))
	fmt.println(strings.index_proc("xyz", call))
}
```

**Output:**

```
0
2
0
1
-1
```

### [index\_proc\_with\_state ¶](#index_proc_with_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2325)

```
index_proc_with_state :: proc(s: string, p: proc(rawptr, rune) -> bool, state: rawptr, truth: bool = true) -> (res: int) {…}
```

 

Same as `index_proc`, but the procedure p takes a raw pointer for state

### [index\_rune ¶](#index_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1542)

```
index_rune :: proc(s: string, r: rune) -> (res: int) {…}
```

 

Returns the byte offset of the first rune `r` in the string `s` it finds, -1 when not found.
Invalid runes return -1

**Inputs:**  
s: The input string to search in.
r: The rune to search for.

**Returns:**  
res: The byte offset of the first occurrence of `r` in `s`, or -1 if not found.

**Example:**

```
import "core:fmt"
import "core:strings"

index_rune_example :: proc() {
	fmt.println(strings.index_rune("abcädef", 'x'))
	fmt.println(strings.index_rune("abcädef", 'a'))
	fmt.println(strings.index_rune("abcädef", 'b'))
	fmt.println(strings.index_rune("abcädef", 'c'))
	fmt.println(strings.index_rune("abcädef", 'ä'))
	fmt.println(strings.index_rune("abcädef", 'd'))
	fmt.println(strings.index_rune("abcädef", 'e'))
	fmt.println(strings.index_rune("abcädef", 'f'))
}
```

**Output:**

```
-1
0
1
2
3
5
6
7
```

### [intern\_destroy ¶](#intern_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/intern.odin#L48)

```
intern_destroy :: proc(m: ^Intern) {…}
```

 

Frees the map and all its content allocated using the `.allocator`.

**Inputs:**  
m: A pointer to the Intern struct to be destroyed

### [intern\_get ¶](#intern_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/intern.odin#L69)

```
intern_get :: proc(m: ^Intern, text: string) -> (str: string, err: runtime.Allocator_Error) {…}
```

 

Returns an interned copy of the given text, adding it to the map if not already present.

*Allocate using the Intern's Allocator (First time string is seen only)*

**Inputs:**  
m: A pointer to the Intern struct
text: The string to be interned

NOTE: The returned string lives as long as the map entry lives.

**Returns:**  
str: The interned string
err: An allocator error if one occured, `nil` otherwise

### [intern\_get\_cstring ¶](#intern_get_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/intern.odin#L89)

```
intern_get_cstring :: proc(m: ^Intern, text: string, loc := #caller_location) -> (str: cstring, err: runtime.Allocator_Error) {…}
```

 

Returns an interned copy of the given text as a cstring, adding it to the map if not already present.

*Allocate using the Intern's Allocator (First time string is seen only)*

**Inputs:**  
m: A pointer to the Intern struct
text: The string to be interned
loc: The caller location for debugging purposes (default: `#caller_location`)

NOTE: The returned cstring lives as long as the map entry lives

**Returns:**  
str: The interned cstring
err: An allocator error if one occured, `nil` otherwise

### [intern\_init ¶](#intern_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/intern.odin#L37)

```
intern_init :: proc(m: ^Intern, allocator := context.allocator, map_allocator := context.allocator, loc := #caller_location) -> (err: runtime.Allocator_Error) {…}
```

 

Initializes the entries map and sets the allocator for the string entries

*Allocates Using Provided Allocators*

**Inputs:**  
m: A pointer to the Intern struct to be initialized
allocator: The allocator for the Intern\_Entry strings (Default: context.allocator)
map\_allocator: The allocator for the map of entries (Default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
err: An allocator error if one occured, `nil` otherwise

### [is\_ascii\_space ¶](#is_ascii_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2232)

```
is_ascii_space :: proc(r: rune) -> (res: bool) {…}
```

 

Returns true when the `r` rune is an ASCII whitespace character.

**Inputs:**  
r: the rune to test

**Returns:**  
-res: `true` if `r` is a whitespace character, `false` if otherwise

### [is\_delimiter ¶](#is_delimiter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L156)

```
is_delimiter :: proc(r: rune) -> (res: bool) {…}
```

 

Checks if the rune `r` is a delimiter (' ', '-', or '\_').

**Inputs:**  
r: Rune to check for delimiter status.

**Returns:**  
res: True if `r` is a delimiter, false otherwise.

### [is\_in\_cutset ¶](#is_in_cutset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2475)

```
is_in_cutset :: proc(state: rawptr, r: rune) -> (res: bool) {…}
```

 

Procedure for `trim_*_proc` variants, which has a string rawptr cast + rune comparison

### [is\_null ¶](#is_null) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2275)

```
is_null :: proc(r: rune) -> (res: bool) {…}
```

 

Returns true when the `r` rune is `0x0`

**Inputs:**  
r: the rune to test

**Returns:**  
-res: `true` if `r` is `0x0`, `false` if otherwise

### [is\_separator ¶](#is_separator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L168)

```
is_separator :: proc(r: rune) -> (res: bool) {…}
```

 

Checks if the rune `r` is a non-alphanumeric or space character.

**Inputs:**  
r: Rune to check for separator status.

**Returns:**  
res: True if `r` is a non-alpha or `unicode.is_space` rune.

### [is\_space ¶](#is_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2248)

```
is_space :: proc(r: rune) -> (res: bool) {…}
```

 

Returns true when the `r` rune is an ASCII or UTF-8 whitespace character.

**Inputs:**  
r: the rune to test

**Returns:**  
-res: `true` if `r` is a whitespace character, `false` if otherwise

### [join ¶](#join) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L634)

```
join :: proc(a: []string, sep: string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Joins a slice of strings `a` with a `sep` string

*Allocates Using Provided Allocator*

**Inputs:**  
a: A slice of strings to join
sep: The separator string
allocator: (default is context.allocator)

**Returns:**  
res: A combined string from the slice of strings `a` separated with the `sep` string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

join_example :: proc() {
	a := [?]string { "a", "b", "c" }
	fmt.println(strings.join(a[:], " "))
	fmt.println(strings.join(a[:], "-"))
	fmt.println(strings.join(a[:], "..."))
}
```

**Output:**

```
a b c
a-b-c
a...b...c
```

### [last\_index ¶](#last_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1674)

```
last_index :: proc(s, substr: string) -> (res: int) {…}
```

 

Returns the last byte offset of the string `substr` in the string `s`, -1 when not found.

**Inputs:**  
s: The input string to search in.
substr: The substring to search for.

**Returns:**  
res: The byte offset of the last occurrence of `substr` in `s`, or -1 if not found.

**Example:**

```
import "core:fmt"
import "core:strings"

last_index_example :: proc() {
	fmt.println(strings.last_index("test", "t"))
	fmt.println(strings.last_index("test", "te"))
	fmt.println(strings.last_index("test", "st"))
	fmt.println(strings.last_index("test", "tt"))
}
```

**Output:**

```
3
0
2
-1
```

### [last\_index\_any ¶](#last_index_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1818)

```
last_index_any :: proc(s, chars: string) -> (res: int) {…}
```

 

Finds the last occurrence of any character in `chars` within `s`. Iterates in reverse.

**Inputs:**  
s: The string to search in
chars: The characters to look for

**Returns:**  
res: The index of the last matching character, or -1 if not found

**Example:**

```
import "core:fmt"
import "core:strings"

last_index_any_example :: proc() {
	fmt.println(strings.last_index_any("test", "s"))
	fmt.println(strings.last_index_any("test", "se"))
	fmt.println(strings.last_index_any("test", "et"))
	fmt.println(strings.last_index_any("test", "set"))
	fmt.println(strings.last_index_any("test", "x"))
}
```

**Output:**

```
2
2
3
3
-1
```

### [last\_index\_byte ¶](#last_index_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1499)

```
last_index_byte :: proc "contextless" (s: string, c: u8) -> (res: int) {…}
```

 

Returns the byte offset of the last byte `c` in the string `s`, -1 when not found.

**Inputs:**  
s: The input string to search in.
c: The byte to search for.

**Returns:**  
res: The byte offset of the last occurrence of `c` in `s`, or -1 if not found.

NOTE: Can't find UTF-8 based runes.

**Example:**

```
import "core:fmt"
import "core:strings"

last_index_byte_example :: proc() {
	fmt.println(strings.last_index_byte("test", 't'))
	fmt.println(strings.last_index_byte("test", 'e'))
	fmt.println(strings.last_index_byte("test", 'x'))
	fmt.println(strings.last_index_byte("teäst", 'ä'))
}
```

**Output:**

```
3
1
-1
-1
```

### [last\_index\_proc ¶](#last_index_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2335)

```
last_index_proc :: proc(s: string, p: proc(rune) -> bool, truth: bool = true) -> (res: int) {…}
```

 

Finds the index of the *last* rune in the string s for which the procedure p returns the same value as truth

### [last\_index\_proc\_with\_state ¶](#last_index_proc_with_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2348)

```
last_index_proc_with_state :: proc(s: string, p: proc(rawptr, rune) -> bool, state: rawptr, truth: bool = true) -> (res: int) {…}
```

 

Same as `index_proc_with_state`, runs through the string in reverse

### [left\_justify ¶](#left_justify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3100)

```
left_justify :: proc(str: string, length: int, pad: string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Left-justifies the input string within a field of specified length by adding pad string on the right side, if its length is less than the target length.

*Allocates Using Provided Allocator*

**Inputs:**  
str: The input string
length: The desired length of the left-justified string
pad: The string used for padding on the right side
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A new string left-justified within a field of the specified length
err: An optional allocator error if one occured, `nil` otherwise

### [levenshtein\_distance ¶](#levenshtein_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3347)

```
levenshtein_distance :: proc(a, b: string, allocator := context.allocator, loc := #caller_location) -> (res: int, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Computes the Levenshtein edit distance between two strings

*Allocates Using Provided Allocator (deletion occurs internal to proc)*

NOTE: Does not perform internal allocation if length of string `b`, in runes, is smaller than 64

**Inputs:**  
a, b: The two strings to compare
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The Levenshtein edit distance between the two strings
err: An optional allocator error if one occured, `nil` otherwise

NOTE: This implementation is a single-row-version of the Wagner–Fischer algorithm, based on C code by Martin Ettl.

### [partition ¶](#partition) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3031)

```
partition :: proc(str, sep: string) -> (head, match, tail: string) {…}
```

 

Splits the input string `str` by the separator `sep` string and returns 3 parts. The values are slices of the original string.

**Inputs:**  
str: The input string
sep: The separator string

**Returns:**  
head: the string before the split
match: the seperator string
tail: the string after the split

**Example:**

```
import "core:fmt"
import "core:strings"

partition_example :: proc() {
	text := "testing this out"
	head, match, tail := strings.partition(text, " this ") // -> head: "testing", match: " this ", tail: "out"
	fmt.println(head, match, tail)
	head, match, tail = strings.partition(text, "hi") // -> head: "testing t", match: "hi", tail: "s out"
	fmt.println(head, match, tail)
	head, match, tail = strings.partition(text, "xyz")    // -> head: "testing this out", match: "", tail: ""
	fmt.println(head)
	fmt.println(match == "")
	fmt.println(tail == "")
}
```

**Output:**

```
testing  this  out
testing t hi s out
testing this out
true
true
```

### [pop\_byte ¶](#pop_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L546)

```
pop_byte :: proc(b: ^Builder) -> (r: u8) {…}
```

 

Pops and returns the last byte in the Builder or 0 when the Builder is empty

**Inputs:**  
b: A pointer to the Builder

**Returns:**  
r: The last byte in the Builder or 0 if empty

### [pop\_rune ¶](#pop_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L566)

```
pop_rune :: proc(b: ^Builder) -> (r: rune, width: int) {…}
```

 

Pops the last rune in the Builder and returns the popped rune and its rune width or (0, 0) if empty

**Inputs:**  
b: A pointer to the Builder

**Returns:**  
r: The popped rune
width: The rune width or 0 if the builder was empty

### [prefix\_length ¶](#prefix_length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L479)

```
prefix_length :: proc "contextless" (a, b: string) -> (n: int) {…}
```

 

Returns the prefix length common between strings `a` and `b`

**Inputs:**  
a: The first input string
b: The second input string

**Returns:**  
n: The prefix length common between strings `a` and `b`

**Example:**

```
import "core:fmt"
import "core:strings"

prefix_length_example :: proc() {
	fmt.println(strings.prefix_length("testing", "test"))
	fmt.println(strings.prefix_length("testing", "te"))
	fmt.println(strings.prefix_length("telephone", "te"))
	fmt.println(strings.prefix_length("testing", "est"))
}
```

**Output:**

```
4
2
2
0
```

### [reader\_init ¶](#reader_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L23)

```
reader_init :: proc(r: ^Reader, s: string) {…}
```

 

Initializes a string Reader with the provided string

**Inputs:**  
r: A pointer to a Reader struct
s: The input string to be read

### [reader\_length ¶](#reader_length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L81)

```
reader_length :: proc(r: ^Reader) -> (res: int) {…}
```

 

Returns the remaining length of the Reader

**Inputs:**  
r: A pointer to a Reader struct

**Returns:**  
res: The remaining length of the Reader

### [reader\_read ¶](#reader_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L110)

```
reader_read :: proc(r: ^Reader, p: []u8) -> (n: int, err: io.Error) {…}
```

 

Reads len(p) bytes from the Reader's string and copies into the provided slice.

**Inputs:**  
r: A pointer to a Reader struct
p: A byte slice to copy data into

**Returns:**  
n: The number of bytes read
err: An `io.Error` if an error occurs while reading, including `.EOF`, otherwise `nil` denotes success.

### [reader\_read\_at ¶](#reader_read_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L131)

```
reader_read_at :: proc(r: ^Reader, p: []u8, off: i64) -> (n: int, err: io.Error) {…}
```

 

Reads len(p) bytes from the Reader's string and copies into the provided slice, at the specified offset from the current index.

**Inputs:**  
r: A pointer to a Reader struct
p: A byte slice to copy data into
off: The offset from which to read

**Returns:**  
n: The number of bytes read
err: An `io.Error` if an error occurs while reading, including `.EOF`, otherwise `nil` denotes success.

### [reader\_read\_byte ¶](#reader_read_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L154)

```
reader_read_byte :: proc(r: ^Reader) -> (res: u8, err: io.Error) {…}
```

 

Reads and returns a single byte from the Reader's string

**Inputs:**  
r: A pointer to a Reader struct

**Returns:**  
The byte read from the Reader
err: An `io.Error` if an error occurs while reading, including `.EOF`, otherwise `nil` denotes success.

### [reader\_read\_rune ¶](#reader_read_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L191)

```
reader_read_rune :: proc(r: ^Reader) -> (rr: rune, size: int, err: io.Error) {…}
```

 

Reads and returns a single rune and its `size` from the Reader's string

**Inputs:**  
r: A pointer to a Reader struct

**Returns:**  
rr: The rune read from the Reader
size: The size of the rune in bytes
err: An `io.Error` if an error occurs while reading

### [reader\_seek ¶](#reader_seek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L239)

```
reader_seek :: proc(r: ^Reader, offset: i64, whence: io.Seek_From) -> (res: i64, err: io.Error) {…}
```

 

Seeks the Reader's index to a new position

**Inputs:**  
r: A pointer to a Reader struct
offset: The new offset position
whence: The reference point for the new position (`.Start`, `.Current`, or `.End`)

**Returns:**  
The absolute offset after seeking
err: An `io.Error` if an error occurs while seeking (`.Invalid_Whence`, `.Invalid_Offset`)

### [reader\_size ¶](#reader_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L96)

```
reader_size :: proc(r: ^Reader) -> (res: i64) {…}
```

 

Returns the length of the string stored in the Reader

**Inputs:**  
r: A pointer to a Reader struct

**Returns:**  
res: The length of the string stored in the Reader

### [reader\_to\_stream ¶](#reader_to_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L37)

```
reader_to_stream :: proc(r: ^Reader) -> (s: io.Stream) {…}
```

 

Converts a Reader into an `io.Stream`

**Inputs:**  
r: A pointer to a Reader struct

**Returns:**  
s: An io.Stream for the given Reader

### [reader\_unread\_byte ¶](#reader_unread_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L172)

```
reader_unread_byte :: proc(r: ^Reader) -> (err: io.Error) {…}
```

 

Decrements the Reader's index (i) by 1

**Inputs:**  
r: A pointer to a Reader struct

**Returns:**  
err: An `io.Error` if `r.i <= 0` (`.Invalid_Unread`), otherwise `nil` denotes success.

### [reader\_unread\_rune ¶](#reader_unread_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L216)

```
reader_unread_rune :: proc(r: ^Reader) -> (err: io.Error) {…}
```

 

Decrements the Reader's index (i) by the size of the last read rune

**Inputs:**  
r: A pointer to a Reader struct

WARNING: May only be used once and after a valid `read_rune` call

**Returns:**  
err: An `io.Error` if an error occurs while unreading (`.Invalid_Unread`), else `nil` denotes success.

### [reader\_write\_to ¶](#reader_write_to) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L272)

```
reader_write_to :: proc(r: ^Reader, w: io.Stream) -> (n: i64, err: io.Error) {…}
```

 

Writes the remaining content of the Reader's string into the provided `io.Writer`

**Inputs:**  
r: A pointer to a Reader struct
w: The io.Writer to write the remaining content into

WARNING: Panics if writer writes more bytes than remainig length of string.

**Returns:**  
n: The number of bytes written
err: An io.Error if an error occurs while writing (`.Short_Write`)

### [remove ¶](#remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2179)

```
remove :: proc(s, key: string, n: int, allocator := context.allocator, loc := #caller_location) -> (output: string, was_allocation: bool) {…}
```

 

Removes the key string `n` times from the `s` string

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
key: The substring to be removed
n: The number of instances to remove (if `n < 0`, no limit on the number of removes)
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
output: The modified string
was\_allocation: `true` if an allocation occurred during the replacement, `false` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

remove_example :: proc() {
	fmt.println(strings.remove("abcabc", "abc", 1))
	fmt.println(strings.remove("abcabc", "abc", -1))
	fmt.println(strings.remove("abcabc", "a", -1))
	fmt.println(strings.remove("abcabc", "x", -1))
}
```

**Output:**

```
abc true
 true
bcbc true
abcabc false
```

### [remove\_all ¶](#remove_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2216)

```
remove_all :: proc(s, key: string, allocator := context.allocator, loc := #caller_location) -> (output: string, was_allocation: bool) {…}
```

 

Removes all the `key` string instances from the `s` string

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
key: The substring to be removed
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
output: The modified string
was\_allocation: `true` if an allocation occurred during the replacement, `false` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

remove_all_example :: proc() {
	fmt.println(strings.remove_all("abcabc", "abc"))
	fmt.println(strings.remove_all("abcabc", "a"))
	fmt.println(strings.remove_all("abcabc", "x"))
}
```

**Output:**

```
 true
bcbc true
abcabc false
```

### [repeat ¶](#repeat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2008)

```
repeat :: proc(s: string, count: int, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Repeats the string `s` `count` times, concatenating the result

*Allocates Using Provided Allocator*

**Inputs:**  
s: The string to repeat
count: The number of times to repeat `s`
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The concatenated repeated string
err: An optional allocator error if one occured, `nil` otherwise

WARNING: Panics if count < 0

**Example:**

```
import "core:fmt"
import "core:strings"

repeat_example :: proc() {
	fmt.println(strings.repeat("abc", 2))
}
```

**Output:**

```
abcabc
```

### [replace ¶](#replace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2100)

```
replace :: proc(
	s, old, new: string, 
	n:           int, 
	allocator := context.allocator, 
	loc := #caller_location, 
) -> (output: string, was_allocation: bool) {…}
```

 

Replaces n instances of old in the string s with the new string

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
old: The substring to be replaced
new: The replacement string
n: The number of instances to replace (if `n < 0`, no limit on the number of replacements)
allocator: (default: context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
output: The modified string
was\_allocation: `true` if an allocation occurred during the replacement, `false` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

replace_example :: proc() {
	fmt.println(strings.replace("xyzxyz", "xyz", "abc", 2))
	fmt.println(strings.replace("xyzxyz", "xyz", "abc", 1))
	fmt.println(strings.replace("xyzxyz", "abc", "xyz", -1))
	fmt.println(strings.replace("xyzxyz", "xy", "z", -1))
}
```

**Output:**

```
abcabc true
abcxyz true
xyzxyz false
zzzz true
```

### [replace\_all ¶](#replace_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2059)

```
replace_all :: proc(s, old, new: string, allocator := context.allocator, loc := #caller_location) -> (output: string, was_allocation: bool) {…}
```

### [reverse ¶](#reverse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2904)

```
reverse :: proc(s: string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Reverses the input string `s`

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A reversed version of the input string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

reverse_example :: proc() {
	a := "abcxyz"
	b := strings.reverse(a)
	fmt.println(a, b)
}
```

**Output:**

```
abcxyz zyxcba
```

### [right\_justify ¶](#right_justify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3136)

```
right_justify :: proc(str: string, length: int, pad: string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Right-justifies the input string within a field of specified length by adding pad string on the left side, if its length is less than the target length.

*Allocates Using Provided Allocator*

**Inputs:**  
str: The input string
length: The desired length of the right-justified string
pad: The string used for padding on the left side
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A new string right-justified within a field of the specified length
err: An optional allocator error if one occured, `nil` otherwise

### [rune\_count ¶](#rune_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L366)

```
rune_count :: proc(s: string) -> (res: int) {…}
```

 

Returns the UTF-8 rune count of the string `s`

**Inputs:**  
s: The input string

**Returns:**  
res: The UTF-8 rune count of the string `s`

**Example:**

```
import "core:fmt"
import "core:strings"

rune_count_example :: proc() {
	fmt.println(strings.rune_count("test"))
	fmt.println(strings.rune_count("testö")) // where len("testö") == 6
}
```

**Output:**

```
4
5
```

### [scrub ¶](#scrub) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2842)

```
scrub :: proc(s: string, replacement: string, allocator := context.allocator, loc := #caller_location) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Replaces invalid UTF-8 characters in the input string with a specified replacement string. Adjacent invalid bytes are only replaced once.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
replacement: The string used to replace invalid UTF-8 characters
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: A new string with invalid UTF-8 characters replaced
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

scrub_example :: proc() {
	text := "Hello\xC0\x80World"
	fmt.println(strings.scrub(text, "?")) // -> "Hello?World"
}
```

**Output:**

```
Hello?
```

### [split ¶](#split) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L895)

```
split :: proc(s, sep: string, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits a string into parts based on a separator.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The string to split.
sep: The separator string used to split the input string.
allocator: (default is context.allocator).
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice of strings, each representing a part of the split string.
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_example :: proc() {
	s := "aaa.bbb.ccc.ddd.eee"    // 5 parts
	ss := strings.split(s, ".")
	fmt.println(ss)
}
```

**Output:**

```
["aaa", "bbb", "ccc", "ddd", "eee"]
```

### [split\_after ¶](#split_after) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L970)

```
split_after :: proc(s, sep: string, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits a string into parts after the separator, retaining it in the substrings.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The string to split.
sep: The separator string used to split the input string.
allocator: (default is context.allocator).
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice of strings, each representing a part of the split string after the separator
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_after_example :: proc() {
	a := "aaa.bbb.ccc.ddd.eee"         // 5 parts
	aa := strings.split_after(a, ".")
	fmt.println(aa)
}
```

**Output:**

```
["aaa.", "bbb.", "ccc.", "ddd.", "eee"]
```

### [split\_after\_iterator ¶](#split_after_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1168)

```
split_after_iterator :: proc(s: ^string, sep: string) -> (res: string, ok: bool) {…}
```

 

Splits the input string after every separator string in an iterator fashion.

**Inputs:**  
s: Pointer to the input string, which is modified during the search.
sep: The separator string to search for.

**Returns:**  
res: The resulting substring
ok: `true` if an iteration result was returned, `false` if the iterator has reached the end

**Example:**

```
import "core:fmt"
import "core:strings"

split_after_iterator_example :: proc() {
	text := "a.b.c.d.e"
	for str in strings.split_after_iterator(&text, ".") {
		fmt.println(str)
	}
}
```

**Output:**

```
a.
b.
c.
d.
e
```

### [split\_after\_n ¶](#split_after_n) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1008)

```
split_after_n :: proc(s, sep: string, n: int, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits a string into a total of `n` parts after the separator.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The string to split.
sep: The separator string used to split the input string.
n: The maximum number of parts to split the string into.
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice of strings with `n` parts or fewer if there weren't
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_after_n_example :: proc() {
	a := "aaa.bbb.ccc.ddd.eee"
	aa := strings.split_after_n(a, ".", 3)
	fmt.println(aa)
}
```

**Output:**

```
["aaa.", "bbb.", "ccc.ddd.eee"]
```

### [split\_by\_byte\_iterator ¶](#split_by_byte_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1085)

```
split_by_byte_iterator :: proc(s: ^string, sep: u8) -> (res: string, ok: bool) {…}
```

 

Splits the input string by the byte separator in an iterator fashion.

**Inputs:**  
s: Pointer to the input string, which is modified during the search.
sep: The byte separator to search for.

**Returns:**  
res: The resulting substring
ok: `true` if an iteration result was returned, `false` if the iterator has reached the end

**Example:**

```
import "core:fmt"
import "core:strings"

split_by_byte_iterator_example :: proc() {
	text := "a.b.c.d.e"
	for str in strings.split_by_byte_iterator(&text, '.') {
		fmt.println(str) // every loop -> a b c d e
	}
}
```

**Output:**

```
a
b
c
d
e
```

### [split\_iterator ¶](#split_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1132)

```
split_iterator :: proc(s: ^string, sep: string) -> (res: string, ok: bool) {…}
```

 

Splits the input string by the separator string in an iterator fashion.

**Inputs:**  
s: Pointer to the input string, which is modified during the search.
sep: The separator string to search for.

**Returns:**  
res: The resulting substring
ok: `true` if an iteration result was returned, `false` if the iterator has reached the end

**Example:**

```
import "core:fmt"
import "core:strings"

split_iterator_example :: proc() {
	text := "a.b.c.d.e"
	for str in strings.split_iterator(&text, ".") {
		fmt.println(str)
	}
}
```

**Output:**

```
a
b
c
d
e
```

### [split\_lines ¶](#split_lines) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1224)

```
split_lines :: proc(s: string, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits the input string at every line break `\n`.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to split.
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice (allocated) of the split string (slices into original string)
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

split_lines_example :: proc() {
	a := "a\nb\nc\nd\ne"
	b := strings.split_lines(a)
	fmt.println(b)
}
```

**Output:**

```
["a", "b", "c", "d", "e"]
```

### [split\_lines\_after ¶](#split_lines_after) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1307)

```
split_lines_after :: proc(s: string, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits the input string at every line break `\n` leaving the `\n` in the resulting strings.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to split.
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice (allocated) of the split string (slices into original string), with `\n` included
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_lines_after_example :: proc() {
	a := "a\nb\nc\nd\ne"
	b := strings.split_lines_after(a)
	fmt.println(b)
}
```

**Output:**

```
["a\n", "b\n", "c\n", "d\n", "e"]
```

### [split\_lines\_after\_iterator ¶](#split_lines_after_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1426)

```
split_lines_after_iterator :: proc(s: ^string) -> (line: string, ok: bool) {…}
```

 

Splits the input string at every line break `\n`.
Returns the current split string with line breaks included every iteration until the string is consumed.

**Inputs:**  
s: Pointer to the input string, which is modified during the search.

**Returns:**  
line: The resulting substring with line breaks included
ok: `true` if an iteration result was returned, `false` if the iterator has reached the end

**Example:**

```
import "core:fmt"
import "core:strings"

split_lines_after_iterator_example :: proc() {
	text := "a\nb\nc\nd\ne\n"
	for str in strings.split_lines_after_iterator(&text) {
		fmt.print(str) // every loop -> a\n b\n c\n d\n e\n
	}
}
```

**Output:**

```
a
b
c
d
e
```

### [split\_lines\_after\_n ¶](#split_lines_after_n) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1350)

```
split_lines_after_n :: proc(s: string, n: int, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits the input string at every line break `\n` leaving the `\n` in the resulting strings.
Only runs for n parts.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to split.
n: The number of parts to split into.
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice (allocated) of the split string (slices into original string), with `\n` included
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_lines_after_n_example :: proc() {
	a := "a\nb\nc\nd\ne"
	b := strings.split_lines_after_n(a, 3)
	fmt.println(b)
}
```

**Output:**

```
["a\n", "b\n", "c\nd\ne"]
```

### [split\_lines\_iterator ¶](#split_lines_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1388)

```
split_lines_iterator :: proc(s: ^string) -> (line: string, ok: bool) {…}
```

 

Splits the input string at every line break `\n`.
Returns the current split string every iteration until the string is consumed.

**Inputs:**  
s: Pointer to the input string, which is modified during the search.

**Returns:**  
line: The resulting substring
ok: `true` if an iteration result was returned, `false` if the iterator has reached the end

**Example:**

```
import "core:fmt"
import "core:strings"

split_lines_iterator_example :: proc() {
	text := "a\nb\nc\nd\ne"
	for str in strings.split_lines_iterator(&text) {
		fmt.print(str)    // every loop -> a b c d e
	}
	fmt.print("\n")
}
```

**Output:**

```
abcde
```

### [split\_lines\_n ¶](#split_lines_n) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L1266)

```
split_lines_n :: proc(s: string, n: int, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits the input string at every line break `\n` for `n` parts.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to split.
n: The number of parts to split into.
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice (allocated) of the split string (slices into original string)
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_lines_n_example :: proc() {
	a := "a\nb\nc\nd\ne"
	b := strings.split_lines_n(a, 3)
	fmt.println(b)
}
```

**Output:**

```
["a", "b", "c\nd\ne"]
```

### [split\_multi ¶](#split_multi) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2711)

```
split_multi :: proc(s: string, substrs: []string, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits the input string `s` by all possible `substrs` and returns an allocated array of strings

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string
substrs: An array of substrings used for splitting
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: An array of strings, or nil on empty substring or no matches
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_multi_example :: proc() {
	splits := [?]string { "---", "~~~", ".", "_", "," }
	res := strings.split_multi("testing,this.out_nice---done~~~last", splits[:])
	fmt.println(res) // -> [testing, this, out, nice, done, last]
}
```

**Output:**

```
["testing", "this", "out", "nice", "done", "last"]
```

### [split\_multi\_iterate ¶](#split_multi_iterate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2786)

```
split_multi_iterate :: proc(it: ^string, substrs: []string) -> (res: string, ok: bool) {…}
```

 

Splits the input string `s` by all possible `substrs` in an iterator fashion. The full string is returned if no match.

**Inputs:**  
it: A pointer to the input string
substrs: An array of substrings used for splitting

**Returns:**  
res: The split string
ok: `true` if an iteration result was returned, `false` if the iterator has reached the end

**Example:**

```
import "core:fmt"
import "core:strings"

split_multi_iterate_example :: proc() {
	it := "testing,this.out_nice---done~~~last"
	splits := [?]string { "---", "~~~", ".", "_", "," }
	for str in strings.split_multi_iterate(⁢, splits[:]) {
		fmt.println(str)
	}
}
```

**Output:**

```
testing
this
out
nice
done
last
```

### [split\_n ¶](#split_n) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L933)

```
split_n :: proc(s, sep: string, n: int, allocator := context.allocator, loc := #caller_location) -> (res: []string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Splits a string into parts based on a separator. If n < count of seperators, the remainder of the string is returned in the last entry.

*Allocates Using Provided Allocator*

**Inputs:**  
s: The string to split.
sep: The separator string used to split the input string.
n: The maximum amount of parts to split the string into.
allocator: (default is context.allocator)
loc: The caller location for debugging purposes (default: `#caller_location`)

**Returns:**  
res: The slice of strings, each representing a part of the split string.
err: An optional allocator error if one occured, `nil` otherwise

NOTE: Allocation occurs for the array, the splits are all views of the original string.

**Example:**

```
import "core:fmt"
import "core:strings"

split_n_example :: proc() {
	s := "aaa.bbb.ccc.ddd.eee"  // 5 parts present
	ss := strings.split_n(s, ".",3) // total of 3 wanted
	fmt.println(ss)
}
```

**Output:**

```
["aaa", "bbb", "ccc.ddd.eee"]
```

### [starts\_with ¶](#starts_with) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L561)

```
starts_with :: has_prefix
```

 

Determines if a string `s` starts with a given `prefix`

**Inputs:**  
s: The string to check for the `prefix`
prefix: The prefix to look for

**Returns:**  
result: `true` if the string `s` starts with the `prefix`, otherwise `false`

**Example:**

```
import "core:fmt"
import "core:strings"

has_prefix_example :: proc() {
	fmt.println(strings.has_prefix("testing", "test"))
	fmt.println(strings.has_prefix("testing", "te"))
	fmt.println(strings.has_prefix("telephone", "te"))
	fmt.println(strings.has_prefix("testing", "est"))
}
```

**Output:**

```
true
true
true
false
```

### [string\_case\_iterator ¶](#string_case_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L225)

```
string_case_iterator :: proc(w: io.Stream, s: string, callback: proc(w: io.Stream, prev, curr, next: rune)) {…}
```

 

Iterates over a string, calling a callback for each rune with the previous, current, and next runes as arguments.

**Inputs:**  
w: An io.Writer to be used by the callback for writing output.
s: The input string to be iterated over.
callback: A procedure to be called for each rune in the string, with arguments (w: io.Writer, prev, curr, next: rune).
The callback can utilize the provided io.Writer to write output during the iteration.

**Example:**

```
import "core:fmt"
import "core:strings"
import "core:io"

string_case_iterator_example :: proc() {
	my_callback :: proc(w: io.Writer, prev, curr, next: rune) {
		fmt.println("my_callback", curr) // <-- Custom logic here
	}
	s := "hello"
	b: strings.Builder
	strings.builder_init_len(&b, len(s))
	w := strings.to_writer(&b)
	strings.string_case_iterator(w, s, my_callback)
}
```

**Output:**

```
my_callback h
my_callback e
my_callback l
my_callback l
my_callback o
```

### [string\_from\_null\_terminated\_ptr ¶](#string_from_null_terminated_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L81)

```
string_from_null_terminated_ptr :: proc "contextless" (ptr: [^]u8, len: int) -> (res: string) {…}
```

 

Transmutes a raw pointer (null-terminated) into a string. Non-allocating. Searches for a null-byte from `0..<len`, otherwise `len` will be the end size

NOTE: The created string is only valid as long as the pointer and length are valid.

```
  The string is truncated at the first null-byte encountered.
```

**Inputs:**  
ptr: A pointer to the start of the null-terminated byte sequence
len: The length of the byte sequence

**Returns:**  
res: A string created from the null-terminated byte pointer and length

### [string\_from\_ptr ¶](#string_from_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L64)

```
string_from_ptr :: proc(ptr: ^u8, len: int) -> (res: string) {…}
```

 

Transmutes a raw pointer into a string. Non-allocating.

**Inputs:**  
ptr: A pointer to the start of the byte sequence
len: The length of the byte sequence

NOTE: The created string is only valid as long as the pointer and length are valid.

**Returns:**  
res: A string created from the byte pointer and length

### [substring ¶](#substring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3461)

```
substring :: proc(s: string, rune_start: int, rune_end: int) -> (sub: string, ok: bool) {…}
```

 

Returns a substring of `s` that starts at rune index `rune_start` and goes up to `rune_end`.

Think of it as slicing `s[rune_start:rune_end]` but rune-wise.

**Inputs:**  
s: the string to substring
rune\_start: the start (inclusive) rune
rune\_end: the end (exclusive) rune

**Returns:**  
sub: the substring
ok: whether the rune indexes where in bounds of the original string

### [substring\_from ¶](#substring_from) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3482)

```
substring_from :: proc(s: string, rune_start: int) -> (sub: string, ok: bool) {…}
```

 

Returns a substring of `s` that starts at rune index `rune_start` and goes up to the end of the string.

Think of it as slicing `s[rune_start:]` but rune-wise.

**Inputs:**  
s: the string to substring
rune\_start: the start (inclusive) rune

**Returns:**  
sub: the substring
ok: whether the rune indexes where in bounds of the original string

### [substring\_to ¶](#substring_to) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L3503)

```
substring_to :: proc(s: string, rune_end: int) -> (sub: string, ok: bool) {…}
```

 

Returns a substring of `s` that goes up to rune index `rune_end`.

Think of it as slicing `s[:rune_end]` but rune-wise.

**Inputs:**  
s: the string to substring
rune\_end: the end (exclusive) rune

**Returns:**  
sub: the substring
ok: whether the rune indexes where in bounds of the original string

### [to\_ada\_case ¶](#to_ada_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L547)

```
to_ada_case :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts a string to "Ada\_Case"

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to be converted
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_ada_case_example :: proc() {
	fmt.println(strings.to_ada_case("HelloWorld"))
}
```

**Output:**

```
Hello_World
```

### [to\_camel\_case ¶](#to_camel_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L263)

```
to_camel_case :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts the input string `s` to "lowerCamelCase".

*Allocates Using Provided Allocator*

**Inputs:**  
s: Input string to be converted.
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

### [to\_cstring ¶](#to_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L324)

```
to_cstring :: proc(b: ^Builder, loc := #caller_location) -> (res: cstring, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Appends a trailing null byte after the end of the current Builder byte buffer and then casts it to a cstring

**Inputs:**  
b: A pointer to builder

**Returns:**  
res: A cstring of the Builder's buffer upon success
err: An optional allocator error if one occured, `nil` otherwise

### [to\_delimiter\_case ¶](#to_delimiter_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L353)

```
to_delimiter_case :: proc(s: string, delimiter: rune, all_upper_case: bool, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Returns a string converted to a delimiter-separated case with configurable casing

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to be converted
delimiter: The rune to be used as the delimiter between words
all\_upper\_case: A boolean indicating if the output should be all uppercased (true) or lowercased (false)
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_delimiter_case_example :: proc() {
	fmt.println(strings.to_delimiter_case("Hello World", '_', false))
	fmt.println(strings.to_delimiter_case("Hello World", ' ', true))
	fmt.println(strings.to_delimiter_case("aBC", '_', false))
}
```

**Output:**

```
hello_world
HELLO WORLD
a_bc
```

### [to\_kebab\_case ¶](#to_kebab_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L487)

```
to_kebab_case :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts a string to "kebab-case" with all runes lowercased

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to be converted
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_kebab_case_example :: proc() {
	fmt.println(strings.to_kebab_case("HelloWorld"))
}
```

**Output:**

```
hello-world
```

### [to\_lower ¶](#to_lower) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L104)

```
to_lower :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts the input string `s` to all lowercase characters.

*Allocates Using Provided Allocator*

**Inputs:**  
s: Input string to be converted.
allocator: (default: context.allocator).

**Returns:**  
res: The new string with all characters converted to lowercase
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_lower_example :: proc() {
	fmt.println(strings.to_lower("TeST"))
}
```

**Output:**

```
test
```

### [to\_lower\_camel\_case ¶](#to_lower_camel_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L263)

```
to_lower_camel_case :: to_camel_case
```

 

Converts the input string `s` to "lowerCamelCase".

*Allocates Using Provided Allocator*

**Inputs:**  
s: Input string to be converted.
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

### [to\_pascal\_case ¶](#to_pascal_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L299)

```
to_pascal_case :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts the input string `s` to "UpperCamelCase" (PascalCase).

*Allocates Using Provided Allocator*

**Inputs:**  
s: Input string to be converted.
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

### [to\_reader ¶](#to_reader) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L52)

```
to_reader :: proc(r: ^Reader, s: string) -> (res: io.Stream) {…}
```

 

Initializes a string Reader and returns an `io.Reader` for the given string

**Inputs:**  
r: A pointer to a Reader struct
s: The input string to be read

**Returns:**  
res: An io.Reader for the given string

### [to\_reader\_at ¶](#to_reader_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin#L67)

```
to_reader_at :: proc(r: ^Reader, s: string) -> (res: io.Stream) {…}
```

 

Initializes a string Reader and returns an `io.Reader_At` for the given string

**Inputs:**  
r: A pointer to a Reader struct
s: The input string to be read

**Returns:**  
res: An `io.Reader_At` for the given string

### [to\_screaming\_snake\_case ¶](#to_screaming_snake_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L457)

```
to_screaming_snake_case :: to_upper_snake_case
```

 

Converts a string to "SNAKE\_CASE" with all runes uppercased

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to be converted
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_upper_snake_case_example :: proc() {
	fmt.println(strings.to_upper_snake_case("HelloWorld"))
}
```

**Output:**

```
HELLO_WORLD
```

### [to\_snake\_case ¶](#to_snake_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L425)

```
to_snake_case :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts a string to "snake\_case" with all runes lowercased

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to be converted
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_snake_case_example :: proc() {
	fmt.println(strings.to_snake_case("HelloWorld"))
	fmt.println(strings.to_snake_case("Hello World"))
}
```

**Output:**

```
hello_world
hello_world
```

### [to\_stream ¶](#to_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L196)

```
to_stream :: proc(b: ^Builder) -> (res: io.Stream) {…}
```

 

Returns an io.Stream from a Builder

**Inputs:**  
b: A pointer to the Builder

**Returns:**  
res: the io.Stream

### [to\_string ¶](#to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L295)

```
to_string :: proc(b: Builder) -> (res: string) {…}
```

 

Casts the Builder byte buffer to a string and returns it

**Inputs:**  
b: A Builder

**Returns:**  
res: The contents of the Builder's buffer, as a string

### [to\_upper ¶](#to_upper) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L139)

```
to_upper :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts the input string `s` to all uppercase characters.

*Allocates Using Provided Allocator*

**Inputs:**  
s: Input string to be converted.
allocator: (default: context.allocator).

**Returns:**  
res: The new string with all characters converted to uppercase
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_upper_example :: proc() {
	fmt.println(strings.to_upper("Test"))
}
```

**Output:**

```
TEST
```

### [to\_upper\_camel\_case ¶](#to_upper_camel_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L299)

```
to_upper_camel_case :: to_pascal_case
```

 

Converts the input string `s` to "UpperCamelCase" (PascalCase).

*Allocates Using Provided Allocator*

**Inputs:**  
s: Input string to be converted.
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

### [to\_upper\_kebab\_case ¶](#to_upper_kebab_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L517)

```
to_upper_kebab_case :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts a string to "KEBAB-CASE" with all runes uppercased

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to be converted
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_upper_kebab_case_example :: proc() {
	fmt.println(strings.to_upper_kebab_case("HelloWorld"))
}
```

**Output:**

```
HELLO-WORLD
```

### [to\_upper\_snake\_case ¶](#to_upper_snake_case) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L457)

```
to_upper_snake_case :: proc(s: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts a string to "SNAKE\_CASE" with all runes uppercased

*Allocates Using Provided Allocator*

**Inputs:**  
s: The input string to be converted
allocator: (default: context.allocator).

**Returns:**  
res: The converted string
err: An optional allocator error if one occured, `nil` otherwise

**Example:**

```
import "core:fmt"
import "core:strings"

to_upper_snake_case_example :: proc() {
	fmt.println(strings.to_upper_snake_case("HelloWorld"))
}
```

**Output:**

```
HELLO_WORLD
```

### [to\_valid\_utf8 ¶](#to_valid_utf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin#L24)

```
to_valid_utf8 :: proc(s, replacement: string, allocator := context.allocator) -> (res: string, err: runtime.Allocator_Error) #optional_ok {…}
```

 

Converts invalid UTF-8 sequences in the input string `s` to the `replacement` string.

*Allocates Using Provided Allocator*

**Inputs:**  
s: Input string that may contain invalid UTF-8 sequences.
replacement: String to replace invalid UTF-8 sequences with.
allocator: (default: context.allocator).

WARNING: Allocation does not occur when len(s) == 0

**Returns:**  
res: A valid UTF-8 string with invalid sequences replaced by `replacement`.
err: An optional allocator error if one occured, `nil` otherwise

### [to\_writer ¶](#to_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L208)

```
to_writer :: proc(b: ^Builder) -> (res: io.Stream) {…}
```

 

Returns an io.Writer from a Builder

**Inputs:**  
b: A pointer to the Builder

**Returns:**  
res: The io.Writer

### [trim ¶](#trim) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2531)

```
trim :: proc(s: string, cutset: string) -> (res: string) {…}
```

 

Trims the cutset string from the `s` string, both from left and right

**Inputs:**  
s: The input string
cutset: The set of characters to be trimmed from both sides of the input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_left ¶](#trim_left) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2495)

```
trim_left :: proc(s: string, cutset: string) -> (res: string) {…}
```

 

Trims the cutset string from the `s` string

**Inputs:**  
s: The input string
cutset: The set of characters to be trimmed from the left of the input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_left\_null ¶](#trim_left_null) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2583)

```
trim_left_null :: proc(s: string) -> (res: string) {…}
```

 

Trims null runes from the left, "\x00\x00testing\x00\x00" -> "testing\x00\x00"

**Inputs:**  
s: The input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_left\_proc ¶](#trim_left_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2387)

```
trim_left_proc :: proc(s: string, p: proc(rune) -> bool) -> (res: string) {…}
```

 

Trims the input string `s` from the left until the procedure `p` returns false

**Inputs:**  
s: The input string
p: A procedure that takes a rune and returns a boolean

**Returns:**  
res: The trimmed string as a slice of the original

**Example:**

```
import "core:fmt"
import "core:strings"

trim_left_proc_example :: proc() {
	find :: proc(r: rune) -> bool {
		return r == 'x'
	}
	fmt.println(strings.trim_left_proc("xxxxxxtesting", find))
}
```

**Output:**

```
testing
```

### [trim\_left\_proc\_with\_state ¶](#trim_left_proc_with_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2406)

```
trim_left_proc_with_state :: proc(s: string, p: proc(rawptr, rune) -> bool, state: rawptr) -> (res: string) {…}
```

 

Trims the input string `s` from the left until the procedure `p` with state returns false

**Inputs:**  
s: The input string
p: A procedure that takes a raw pointer and a rune and returns a boolean
state: The raw pointer to be passed to the procedure `p`

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_left\_space ¶](#trim_left_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2544)

```
trim_left_space :: proc(s: string) -> (res: string) {…}
```

 

Trims until a valid non-space rune from the left, "\t\txyz\t\t" -> "xyz\t\t"

**Inputs:**  
s: The input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_null ¶](#trim_null) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2608)

```
trim_null :: proc(s: string) -> (res: string) {…}
```

 

Trims null runes from both sides, "\x00\x00testing\x00\x00" -> "testing"

**Inputs:**  
s: The input string
Returns:
res: The trimmed string as a slice of the original

### [trim\_prefix ¶](#trim_prefix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2638)

```
trim_prefix :: proc(s, prefix: string) -> (res: string) {…}
```

 

Trims a `prefix` string from the start of the `s` string and returns the trimmed string

**Inputs:**  
s: The input string
prefix: The prefix string to be removed

**Returns:**  
res: The trimmed string as a slice of original, or the input string if no prefix was found

**Example:**

```
import "core:fmt"
import "core:strings"

trim_prefix_example :: proc() {
	fmt.println(strings.trim_prefix("testing", "test"))
	fmt.println(strings.trim_prefix("testing", "abc"))
}
```

**Output:**

```
ing
testing
```

### [trim\_right ¶](#trim_right) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2513)

```
trim_right :: proc(s: string, cutset: string) -> (res: string) {…}
```

 

Trims the cutset string from the `s` string from the right

**Inputs:**  
s: The input string
cutset: The set of characters to be trimmed from the right of the input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_right\_null ¶](#trim_right_null) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2596)

```
trim_right_null :: proc(s: string) -> (res: string) {…}
```

 

Trims null runes from the right, "\x00\x00testing\x00\x00" -> "\x00\x00testing"

**Inputs:**  
s: The input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_right\_proc ¶](#trim_right_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2441)

```
trim_right_proc :: proc(s: string, p: proc(rune) -> bool) -> (res: string) {…}
```

 

Trims the input string `s` from the right until the procedure `p` returns `false`

**Inputs:**  
s: The input string
p: A procedure that takes a rune and returns a boolean

**Returns:**  
res: The trimmed string as a slice of the original

**Example:**

```
import "core:fmt"
import "core:strings"

trim_right_proc_example :: proc() {
	find :: proc(r: rune) -> bool {
		return r != 't'
	}
	fmt.println(strings.trim_right_proc("testing", find))
}
```

**Output:**

```
test
```

### [trim\_right\_proc\_with\_state ¶](#trim_right_proc_with_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2463)

```
trim_right_proc_with_state :: proc(s: string, p: proc(rawptr, rune) -> bool, state: rawptr) -> (res: string) {…}
```

 

Trims the input string `s` from the right until the procedure `p` with state returns `false`

**Inputs:**  
s: The input string
p: A procedure that takes a raw pointer and a rune and returns a boolean
state: The raw pointer to be passed to the procedure `p`

**Returns:**  
res: The trimmed string as a slice of the original, empty when no match

### [trim\_right\_space ¶](#trim_right_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2557)

```
trim_right_space :: proc(s: string) -> (res: string) {…}
```

 

Trims from the right until a valid non-space rune, "\t\txyz\t\t" -> "\t\txyz"

**Inputs:**  
s: The input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_space ¶](#trim_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2570)

```
trim_space :: proc(s: string) -> (res: string) {…}
```

 

Trims from both sides until a valid non-space rune, "\t\txyz\t\t" -> "xyz"

**Inputs:**  
s: The input string

**Returns:**  
res: The trimmed string as a slice of the original

### [trim\_suffix ¶](#trim_suffix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L2671)

```
trim_suffix :: proc(s, suffix: string) -> (res: string) {…}
```

 

Trims a `suffix` string from the end of the `s` string and returns the trimmed string

**Inputs:**  
s: The input string
suffix: The suffix string to be removed

**Returns:**  
res: The trimmed string as a slice of original, or the input string if no suffix was found

**Example:**

```
import "core:fmt"
import "core:strings"

trim_suffix_example :: proc() {
	fmt.println(strings.trim_suffix("todo.txt", ".txt"))
	fmt.println(strings.trim_suffix("todo.doc", ".txt"))
}
```

**Output:**

```
todo
todo.doc
```

### [truncate\_to\_byte ¶](#truncate_to_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L115)

```
truncate_to_byte :: proc "contextless" (str: string, b: u8) -> (res: string) {…}
```

 

Truncates a string `str` at the first occurrence of char/byte `b`

**Inputs:**  
str: The input string
b: The byte to truncate the string at

NOTE: Failure to find the byte results in returning the entire string.

**Returns:**  
res: The truncated string

### [truncate\_to\_rune ¶](#truncate_to_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L133)

```
truncate_to_rune :: proc(str: string, r: rune) -> (res: string) {…}
```

 

Truncates a string `str` at the first occurrence of rune `r` as a slice of the original, entire string if not found

**Inputs:**  
str: The input string
r: The rune to truncate the string at

**Returns:**  
res: The truncated string

### [unsafe\_string\_to\_cstring ¶](#unsafe_string_to_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L98)

```
unsafe_string_to_cstring :: proc(str: string) -> (res: cstring) {…}
```

 

Converts a string `str` to a cstring

**Inputs:**  
str: The input string

WARNING: This is unsafe because the original string may not contain a null-byte.

**Returns:**  
res: The converted cstring

### [unsafe\_to\_cstring ¶](#unsafe_to_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L309)

```
unsafe_to_cstring :: proc(b: ^Builder, loc := #caller_location) -> (res: cstring) {…}
```

 

Appends a trailing null byte after the end of the current Builder byte buffer and then casts it to a cstring

NOTE: This procedure will not check if the backing buffer has enough space to include the extra null byte.

**Inputs:**  
b: A pointer to builder

**Returns:**  
res: A cstring of the Builder's buffer

### [write\_byte ¶](#write_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L400)

```
write_byte :: proc(b: ^Builder, x: u8, loc := #caller_location) -> (n: int) {…}
```

 

Appends a byte to the Builder and returns the number of bytes appended

**Inputs:**  
b: A pointer to the Builder
x: The byte to be appended

**Returns:**  
n: The number of bytes appended

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Example:**

```
import "core:fmt"
import "core:strings"

write_byte_example :: proc() {
	builder := strings.builder_make()
	strings.write_byte(&builder, 'a')        // 1
	strings.write_byte(&builder, 'b')        // 1
	fmt.println(strings.to_string(builder))  // -> ab
}
```

**Output:**

```
ab
```

### [write\_bytes ¶](#write_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L430)

```
write_bytes :: proc(b: ^Builder, x: []u8, loc := #caller_location) -> (n: int) {…}
```

 

Appends a slice of bytes to the Builder and returns the number of bytes appended

**Inputs:**  
b: A pointer to the Builder
x: The slice of bytes to be appended

**Example:**

```
import "core:fmt"
import "core:strings"

write_bytes_example :: proc() {
	builder := strings.builder_make()
	bytes := [?]byte { 'a', 'b', 'c' }
	strings.write_bytes(&builder, bytes[:]) // 3
	fmt.println(strings.to_string(builder)) // -> abc
}
```

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of bytes appended

### [write\_encoded\_rune ¶](#write_encoded_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L642)

```
write_encoded_rune :: proc(b: ^Builder, r: rune, write_quote: bool = true) -> (n: int) {…}
```

 

Appends a rune to the Builder and returns the number of bytes written

**Inputs:**  
b: A pointer to the Builder
r: The rune to be appended
write\_quote: Optional boolean flag to wrap in single-quotes (') (default is true)

**Returns:**  
n: The number of bytes written

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Example:**

```
import "core:fmt"
import "core:strings"

write_encoded_rune_example :: proc() {
	builder := strings.builder_make()
	strings.write_encoded_rune(&builder, 'a', false) // 1
	strings.write_encoded_rune(&builder, '\"', true) // 3
	strings.write_encoded_rune(&builder, 'x', false) // 1
	fmt.println(strings.to_string(builder))
}
```

**Output:**

```
a'"'x
```

### [write\_escaped\_rune ¶](#write_escaped_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L666)

```
write_escaped_rune :: proc(b: ^Builder, r: rune, quote: u8, html_safe: bool = false) -> (n: int) {…}
```

 

Appends an escaped rune to the Builder and returns the number of bytes written

**Inputs:**  
b: A pointer to the Builder
r: The rune to be appended
quote: The quote character
html\_safe: Optional boolean flag to encode '<', '>', '&' as digits (default is false)

**Usage**
'\a' will be written as such
`r` and `quote` match and `quote` is `\\` - they will be written as two slashes
`html_safe` flag in case the runes '<', '>', '&' should be encoded as digits e.g. `\u0026`

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of bytes written

### [write\_f16 ¶](#write_f16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L710)

```
write_f16 :: proc(b: ^Builder, f: f16, fmt: u8, always_signed: bool = false) -> (n: int) {…}
```

 

Writes a f16 value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
f: The f16 value to be appended
fmt: The format byte
always\_signed: Optional boolean flag to always include the sign

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of characters written

### [write\_f32 ¶](#write_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L750)

```
write_f32 :: proc(b: ^Builder, f: f32, fmt: u8, always_signed: bool = false) -> (n: int) {…}
```

 

Writes a f32 value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
f: The f32 value to be appended
fmt: The format byte
always\_signed: Optional boolean flag to always include the sign

**Returns:**  
n: The number of characters written

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Example:**

```
import "core:fmt"
import "core:strings"

write_f32_example :: proc() {
	builder := strings.builder_make()
	strings.write_f32(&builder, 3.14159, 'f') // 6
	strings.write_string(&builder, " - ")     // 3
	strings.write_f32(&builder, -0.123, 'e')  // 8
	fmt.println(strings.to_string(builder))   // -> 3.14159012 - -1.23000003e-01
}
```

**Output:**

```
3.14159012 - -1.23000003e-01
```

### [write\_f64 ¶](#write_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L772)

```
write_f64 :: proc(b: ^Builder, f: f64, fmt: u8, always_signed: bool = false) -> (n: int) {…}
```

 

Writes a f64 value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
f: The f64 value to be appended
fmt: The format byte
always\_signed: Optional boolean flag to always include the sign

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of characters written

### [write\_float ¶](#write_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L686)

```
write_float :: proc(
	b:              ^Builder, 
	f:              f64, 
	fmt:            u8, 
	prec, bit_size: int, 
	always_signed:  bool = false, 
) -> (n: int) {…}
```

 

Writes a f64 value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
f: The f64 value to be appended
fmt: The format byte
prec: The precision
bit\_size: The bit size
always\_signed: Optional boolean flag to always include the sign (default is false)

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of characters written

### [write\_i64 ¶](#write_i64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L811)

```
write_i64 :: proc(b: ^Builder, i: i64, base: int = 10) -> (n: int) {…}
```

 

Writes a i64 value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
i: The i64 value to be appended
base: The optional base for the numeric representation

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of characters written

### [write\_int ¶](#write_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L845)

```
write_int :: proc(b: ^Builder, i: int, base: int = 10) -> (n: int) {…}
```

 

Writes a int value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
i: The int value to be appended
base: The optional base for the numeric representation

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of characters written

### [write\_quoted\_rune ¶](#write_quoted_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L499)

```
write_quoted_rune :: proc(b: ^Builder, r: rune) -> (n: int) {…}
```

 

Appends a quoted rune to the Builder and returns the number of bytes written

**Inputs:**  
b: A pointer to the Builder
r: The rune to be appended

**Returns:**  
n: The number of bytes written

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Example:**

```
import "core:fmt"
import "core:strings"

write_quoted_rune_example :: proc() {
	builder := strings.builder_make()
	strings.write_string(&builder, "abc")      // 3
	strings.write_quoted_rune(&builder, 'ä') // 4
	strings.write_string(&builder, "abc")      // 3
	fmt.println(strings.to_string(builder))    // -> abc'ä'abc
}
```

**Output:**

```
abc'ä'abc
```

### [write\_quoted\_string ¶](#write_quoted_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L607)

```
write_quoted_string :: proc(b: ^Builder, str: string, quote: u8 = '"') -> (n: int) {…}
```

 

**Inputs:**  
b: A pointer to the Builder
str: The string to be quoted and appended
quote: The optional quote character (default is double quotes)

**Returns:**  
n: The number of bytes written

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Example:**

```
import "core:fmt"
import "core:strings"

write_quoted_string_example :: proc() {
	builder := strings.builder_make()
	strings.write_quoted_string(&builder, "a")        // 3
	strings.write_quoted_string(&builder, "bc", '\'') // 4
	strings.write_quoted_string(&builder, "xyz")      // 5
	fmt.println(strings.to_string(builder))
}
```

**Output:**

```
"a"'bc'"xyz"
```

### [write\_rune ¶](#write_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L466)

```
write_rune :: proc(b: ^Builder, r: rune) -> (res: int, err: io.Error) {…}
```

 

Appends a single rune to the Builder and returns the number of bytes written and an `io.Error`

**Inputs:**  
b: A pointer to the Builder
r: The rune to be appended

**Returns:**  
res: The number of bytes written
err: An io.Error if one occured, `nil` otherwise

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Example:**

```
import "core:fmt"
import "core:strings"

write_rune_example :: proc() {
	builder := strings.builder_make()
	strings.write_rune(&builder, 'ä')     // 2 None
	strings.write_rune(&builder, 'b')       // 1 None
	fmt.println(strings.to_string(builder)) // -> äb
}
```

**Output:**

```
äb
```

### [write\_string ¶](#write_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L531)

```
write_string :: proc(b: ^Builder, s: string, loc := #caller_location) -> (n: int) {…}
```

 

Appends a string to the Builder and returns the number of bytes written

**Inputs:**  
b: A pointer to the Builder
s: The string to be appended

**Returns:**  
n: The number of bytes written

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Example:**

```
import "core:fmt"
import "core:strings"

write_string_example :: proc() {
	builder := strings.builder_make()
	strings.write_string(&builder, "a")     // 1
	strings.write_string(&builder, "bc")    // 2
	fmt.println(strings.to_string(builder)) // -> abc
}
```

**Output:**

```
abc
```

### [write\_u64 ¶](#write_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L793)

```
write_u64 :: proc(b: ^Builder, i: u64, base: int = 10) -> (n: int) {…}
```

 

Writes a u64 value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
i: The u64 value to be appended
base: The optional base for the numeric representation

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of characters written

### [write\_uint ¶](#write_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L829)

```
write_uint :: proc(b: ^Builder, i: uint, base: int = 10) -> (n: int) {…}
```

 

Writes a uint value to the Builder and returns the number of characters written

**Inputs:**  
b: A pointer to the Builder
i: The uint value to be appended
base: The optional base for the numeric representation

NOTE: The backing dynamic array may be fixed in capacity or fail to resize, `n` states the number actually written.

**Returns:**  
n: The number of characters written

## Procedure Groups

### [builder\_init ¶](#builder_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L160)

```
builder_init :: proc{
	builder_init_none,
	builder_init_len,
	builder_init_len_cap,
}
```

 

Overload simple `builder_init_*` with or without len / ap parameters

### [builder\_make ¶](#builder_make) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin#L99)

```
builder_make :: proc{
	builder_make_none,
	builder_make_len,
	builder_make_len_cap,
}
```

 

Produces a String Builder

*Allocates Using Provided Allocator*

**Example:**

```
import "core:fmt"
import "core:strings"
builder_make_example :: proc() {
	sb := strings.builder_make()
	strings.write_byte(&sb, 'a')
	strings.write_string(&sb, " slice of ")
	strings.write_f64(&sb, 3.14,'g',true) // See `fmt.fmt_float` byte codes
	strings.write_string(&sb, " is ")
	strings.write_int(&sb, 180)
	strings.write_rune(&sb,'°')
	the_string :=strings.to_string(sb)
	fmt.println(the_string)
}
```

**Output:**

```
a slice of +3.14 is 180°
```

### [clone\_from ¶](#clone_from) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin#L203)

```
clone_from :: proc{
	clone,
	clone_from_bytes,
	clone_from_cstring,
	clone_from_ptr,
}
```

 

Overloaded procedure to clone from a string, `[]byte`, `cstring` or a `^byte` + length

## Source Files

* [ascii\_set.odin](https://github.com/odin-lang/Odin/tree/master/core/strings/ascii_set.odin)
* [builder.odin](https://github.com/odin-lang/Odin/tree/master/core/strings/builder.odin)
* [conversion.odin](https://github.com/odin-lang/Odin/tree/master/core/strings/conversion.odin)
* [intern.odin](https://github.com/odin-lang/Odin/tree/master/core/strings/intern.odin)
* [reader.odin](https://github.com/odin-lang/Odin/tree/master/core/strings/reader.odin)
* [strings.odin](https://github.com/odin-lang/Odin/tree/master/core/strings/strings.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.327109300 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Ascii\_Set](#Ascii_Set)
    + [Builder](#Builder)
    + [Builder\_Flush\_Proc](#Builder_Flush_Proc)
    + [Intern](#Intern)
    + [Intern\_Entry](#Intern_Entry)
    + [Reader](#Reader)
  * [Procedures](#pkg-Procedures)
    + [ascii\_set\_contains](#ascii_set_contains)
    + [ascii\_set\_make](#ascii_set_make)
    + [builder\_cap](#builder_cap)
    + [builder\_destroy](#builder_destroy)
    + [builder\_from\_bytes](#builder_from_bytes)
    + [builder\_from\_slice](#builder_from_slice)
    + [builder\_grow](#builder_grow)
    + [builder\_init\_len](#builder_init_len)
    + [builder\_init\_len\_cap](#builder_init_len_cap)
    + [builder\_init\_none](#builder_init_none)
    + [builder\_len](#builder_len)
    + [builder\_make\_len](#builder_make_len)
    + [builder\_make\_len\_cap](#builder_make_len_cap)
    + [builder\_make\_none](#builder_make_none)
    + [builder\_replace](#builder_replace)
    + [builder\_replace\_all](#builder_replace_all)
    + [builder\_reset](#builder_reset)
    + [builder\_space](#builder_space)
    + [center\_justify](#center_justify)
    + [centre\_justify](#centre_justify)
    + [clone](#clone)
    + [clone\_from\_bytes](#clone_from_bytes)
    + [clone\_from\_cstring](#clone_from_cstring)
    + [clone\_from\_cstring\_bounded](#clone_from_cstring_bounded)
    + [clone\_from\_ptr](#clone_from_ptr)
    + [clone\_to\_cstring](#clone_to_cstring)
    + [common\_prefix](#common_prefix)
    + [concatenate](#concatenate)
    + [contains](#contains)
    + [contains\_any](#contains_any)
    + [contains\_rune](#contains_rune)
    + [contains\_space](#contains_space)
    + [count](#count)
    + [cut](#cut)
    + [cut\_clone](#cut_clone)
    + [ends\_with](#ends_with)
    + [equal\_fold](#equal_fold)
    + [expand\_tabs](#expand_tabs)
    + [fields](#fields)
    + [fields\_iterator](#fields_iterator)
    + [fields\_proc](#fields_proc)
    + [has\_prefix](#has_prefix)
    + [has\_suffix](#has_suffix)
    + [index](#index)
    + [index\_any](#index_any)
    + [index\_byte](#index_byte)
    + [index\_multi](#index_multi)
    + [index\_proc](#index_proc)
    + [index\_proc\_with\_state](#index_proc_with_state)
    + [index\_rune](#index_rune)
    + [intern\_destroy](#intern_destroy)
    + [intern\_get](#intern_get)
    + [intern\_get\_cstring](#intern_get_cstring)
    + [intern\_init](#intern_init)
    + [is\_ascii\_space](#is_ascii_space)
    + [is\_delimiter](#is_delimiter)
    + [is\_in\_cutset](#is_in_cutset)
    + [is\_null](#is_null)
    + [is\_separator](#is_separator)
    + [is\_space](#is_space)
    + [join](#join)
    + [last\_index](#last_index)
    + [last\_index\_any](#last_index_any)
    + [last\_index\_byte](#last_index_byte)
    + [last\_index\_proc](#last_index_proc)
    + [last\_index\_proc\_with\_state](#last_index_proc_with_state)
    + [left\_justify](#left_justify)
    + [levenshtein\_distance](#levenshtein_distance)
    + [partition](#partition)
    + [pop\_byte](#pop_byte)
    + [pop\_rune](#pop_rune)
    + [prefix\_length](#prefix_length)
    + [reader\_init](#reader_init)
    + [reader\_length](#reader_length)
    + [reader\_read](#reader_read)
    + [reader\_read\_at](#reader_read_at)
    + [reader\_read\_byte](#reader_read_byte)
    + [reader\_read\_rune](#reader_read_rune)
    + [reader\_seek](#reader_seek)
    + [reader\_size](#reader_size)
    + [reader\_to\_stream](#reader_to_stream)
    + [reader\_unread\_byte](#reader_unread_byte)
    + [reader\_unread\_rune](#reader_unread_rune)
    + [reader\_write\_to](#reader_write_to)
    + [remove](#remove)
    + [remove\_all](#remove_all)
    + [repeat](#repeat)
    + [replace](#replace)
    + [replace\_all](#replace_all)
    + [reverse](#reverse)
    + [right\_justify](#right_justify)
    + [rune\_count](#rune_count)
    + [scrub](#scrub)
    + [split](#split)
    + [split\_after](#split_after)
    + [split\_after\_iterator](#split_after_iterator)
    + [split\_after\_n](#split_after_n)
    + [split\_by\_byte\_iterator](#split_by_byte_iterator)
    + [split\_iterator](#split_iterator)
    + [split\_lines](#split_lines)
    + [split\_lines\_after](#split_lines_after)
    + [split\_lines\_after\_iterator](#split_lines_after_iterator)
    + [split\_lines\_after\_n](#split_lines_after_n)
    + [split\_lines\_iterator](#split_lines_iterator)
    + [split\_lines\_n](#split_lines_n)
    + [split\_multi](#split_multi)
    + [split\_multi\_iterate](#split_multi_iterate)
    + [split\_n](#split_n)
    + [starts\_with](#starts_with)
    + [string\_case\_iterator](#string_case_iterator)
    + [string\_from\_null\_terminated\_ptr](#string_from_null_terminated_ptr)
    + [string\_from\_ptr](#string_from_ptr)
    + [substring](#substring)
    + [substring\_from](#substring_from)
    + [substring\_to](#substring_to)
    + [to\_ada\_case](#to_ada_case)
    + [to\_camel\_case](#to_camel_case)
    + [to\_cstring](#to_cstring)
    + [to\_delimiter\_case](#to_delimiter_case)
    + [to\_kebab\_case](#to_kebab_case)
    + [to\_lower](#to_lower)
    + [to\_lower\_camel\_case](#to_lower_camel_case)
    + [to\_pascal\_case](#to_pascal_case)
    + [to\_reader](#to_reader)
    + [to\_reader\_at](#to_reader_at)
    + [to\_screaming\_snake\_case](#to_screaming_snake_case)
    + [to\_snake\_case](#to_snake_case)
    + [to\_stream](#to_stream)
    + [to\_string](#to_string)
    + [to\_upper](#to_upper)
    + [to\_upper\_camel\_case](#to_upper_camel_case)
    + [to\_upper\_kebab\_case](#to_upper_kebab_case)
    + [to\_upper\_snake\_case](#to_upper_snake_case)
    + [to\_valid\_utf8](#to_valid_utf8)
    + [to\_writer](#to_writer)
    + [trim](#trim)
    + [trim\_left](#trim_left)
    + [trim\_left\_null](#trim_left_null)
    + [trim\_left\_proc](#trim_left_proc)
    + [trim\_left\_proc\_with\_state](#trim_left_proc_with_state)
    + [trim\_left\_space](#trim_left_space)
    + [trim\_null](#trim_null)
    + [trim\_prefix](#trim_prefix)
    + [trim\_right](#trim_right)
    + [trim\_right\_null](#trim_right_null)
    + [trim\_right\_proc](#trim_right_proc)
    + [trim\_right\_proc\_with\_state](#trim_right_proc_with_state)
    + [trim\_right\_space](#trim_right_space)
    + [trim\_space](#trim_space)
    + [trim\_suffix](#trim_suffix)
    + [truncate\_to\_byte](#truncate_to_byte)
    + [truncate\_to\_rune](#truncate_to_rune)
    + [unsafe\_string\_to\_cstring](#unsafe_string_to_cstring)
    + [unsafe\_to\_cstring](#unsafe_to_cstring)
    + [write\_byte](#write_byte)
    + [write\_bytes](#write_bytes)
    + [write\_encoded\_rune](#write_encoded_rune)
    + [write\_escaped\_rune](#write_escaped_rune)
    + [write\_f16](#write_f16)
    + [write\_f32](#write_f32)
    + [write\_f64](#write_f64)
    + [write\_float](#write_float)
    + [write\_i64](#write_i64)
    + [write\_int](#write_int)
    + [write\_quoted\_rune](#write_quoted_rune)
    + [write\_quoted\_string](#write_quoted_string)
    + [write\_rune](#write_rune)
    + [write\_string](#write_string)
    + [write\_u64](#write_u64)
    + [write\_uint](#write_uint)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [builder\_init](#builder_init)
    + [builder\_make](#builder_make)
    + [clone\_from](#clone_from)
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