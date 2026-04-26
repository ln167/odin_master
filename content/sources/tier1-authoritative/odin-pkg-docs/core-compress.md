package compress - pkg.odin-lang.org 






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



Current Package: *[compress](/core/compress)*

  

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
2. [compress](/core/compress)

# package core:compress [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A collection of utilities to aid with other `compress`ion packages.

## Index

Types (8)

* [Context\_Memory\_Input](#Context_Memory_Input)
* [Context\_Stream\_Input](#Context_Stream_Input)
* [Deflate\_Error](#Deflate_Error)
* [Error](#Error)
* [GZIP\_Error](#GZIP_Error)
* [General\_Error](#General_Error)
* [ZIP\_Error](#ZIP_Error)
* [ZLIB\_Error](#ZLIB_Error)

Constants (2)

* [COMPRESS\_OUTPUT\_ALLOCATE\_MAX](#COMPRESS_OUTPUT_ALLOCATE_MAX)
* [COMPRESS\_OUTPUT\_ALLOCATE\_MIN](#COMPRESS_OUTPUT_ALLOCATE_MIN)

Variables (0)

This section is empty.

Procedures (27)

* [consume\_bits\_lsb\_from\_memory](#consume_bits_lsb_from_memory)
* [consume\_bits\_lsb\_from\_stream](#consume_bits_lsb_from_stream)
* [discard\_to\_next\_byte\_lsb\_from\_memory](#discard_to_next_byte_lsb_from_memory)
* [discard\_to\_next\_byte\_lsb\_from\_stream](#discard_to_next_byte_lsb_from_stream)
* [input\_size\_from\_memory](#input_size_from_memory)
* [input\_size\_from\_stream](#input_size_from_stream)
* [peek\_back\_byte](#peek_back_byte)
* [peek\_bits\_lsb\_from\_memory](#peek_bits_lsb_from_memory)
* [peek\_bits\_lsb\_from\_stream](#peek_bits_lsb_from_stream)
* [peek\_bits\_no\_refill\_lsb\_from\_memory](#peek_bits_no_refill_lsb_from_memory)
* [peek\_bits\_no\_refill\_lsb\_from\_stream](#peek_bits_no_refill_lsb_from_stream)
* [peek\_data\_at\_offset\_from\_memory](#peek_data_at_offset_from_memory)
* [peek\_data\_at\_offset\_from\_stream](#peek_data_at_offset_from_stream)
* [peek\_data\_from\_memory](#peek_data_from_memory)
* [peek\_data\_from\_stream](#peek_data_from_stream)
* [read\_bits\_lsb\_from\_memory](#read_bits_lsb_from_memory)
* [read\_bits\_lsb\_from\_stream](#read_bits_lsb_from_stream)
* [read\_bits\_no\_refill\_lsb\_from\_memory](#read_bits_no_refill_lsb_from_memory)
* [read\_bits\_no\_refill\_lsb\_from\_stream](#read_bits_no_refill_lsb_from_stream)
* [read\_data](#read_data)
* [read\_slice\_from\_memory](#read_slice_from_memory)
* [read\_slice\_from\_stream](#read_slice_from_stream)
* [read\_u8\_from\_memory](#read_u8_from_memory)
* [read\_u8\_from\_stream](#read_u8_from_stream)
* [read\_u8\_prefer\_code\_buffer\_lsb](#read_u8_prefer_code_buffer_lsb)
* [refill\_lsb\_from\_memory](#refill_lsb_from_memory)
* [refill\_lsb\_from\_stream](#refill_lsb_from_stream)

Procedure Groups (11)

* [consume\_bits\_lsb](#consume_bits_lsb)
* [discard\_to\_next\_byte\_lsb](#discard_to_next_byte_lsb)
* [input\_size](#input_size)
* [peek\_bits\_lsb](#peek_bits_lsb)
* [peek\_bits\_no\_refill\_lsb](#peek_bits_no_refill_lsb)
* [peek\_data](#peek_data)
* [read\_bits\_lsb](#read_bits_lsb)
* [read\_bits\_no\_refill\_lsb](#read_bits_no_refill_lsb)
* [read\_slice](#read_slice)
* [read\_u8](#read_u8)
* [refill\_lsb](#refill_lsb)

## Types

### [Context\_Memory\_Input ¶](#Context_Memory_Input) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L126)

```
Context_Memory_Input :: struct #packed {
	input_data:    []u8,
	output:        ^bytes.Buffer,
	bytes_written: i64,
	code_buffer:   u64,
	num_bits:      u64,
	size_packed:   i64,
	size_unpacked: i64,
}
```

 

General I/O context for ZLIB, LZW, etc.




##### Related Procedures With Parameters

* [consume\_bits\_lsb\_from\_memory](/core/compress/#consume_bits_lsb_from_memory)
* [discard\_to\_next\_byte\_lsb\_from\_memory](/core/compress/#discard_to_next_byte_lsb_from_memory)
* [input\_size\_from\_memory](/core/compress/#input_size_from_memory)
* [peek\_bits\_lsb\_from\_memory](/core/compress/#peek_bits_lsb_from_memory)
* [peek\_bits\_no\_refill\_lsb\_from\_memory](/core/compress/#peek_bits_no_refill_lsb_from_memory)
* [peek\_data\_at\_offset\_from\_memory](/core/compress/#peek_data_at_offset_from_memory)
* [peek\_data\_from\_memory](/core/compress/#peek_data_from_memory)
* [read\_bits\_lsb\_from\_memory](/core/compress/#read_bits_lsb_from_memory)
* [read\_bits\_no\_refill\_lsb\_from\_memory](/core/compress/#read_bits_no_refill_lsb_from_memory)
* [read\_slice\_from\_memory](/core/compress/#read_slice_from_memory)
* [read\_u8\_from\_memory](/core/compress/#read_u8_from_memory)
* [refill\_lsb\_from\_memory](/core/compress/#refill_lsb_from_memory)
* [consume\_bits\_lsb](/core/compress/#consume_bits_lsb) *(procedure groups)*
* [discard\_to\_next\_byte\_lsb](/core/compress/#discard_to_next_byte_lsb) *(procedure groups)*
* [input\_size](/core/compress/#input_size) *(procedure groups)*
* [peek\_bits\_lsb](/core/compress/#peek_bits_lsb) *(procedure groups)*
* [peek\_bits\_no\_refill\_lsb](/core/compress/#peek_bits_no_refill_lsb) *(procedure groups)*
* [peek\_data](/core/compress/#peek_data) *(procedure groups)*
* [read\_bits\_lsb](/core/compress/#read_bits_lsb) *(procedure groups)*
* [read\_bits\_no\_refill\_lsb](/core/compress/#read_bits_no_refill_lsb) *(procedure groups)*
* [read\_slice](/core/compress/#read_slice) *(procedure groups)*
* [read\_u8](/core/compress/#read_u8) *(procedure groups)*
* [refill\_lsb](/core/compress/#refill_lsb) *(procedure groups)*

### [Context\_Stream\_Input ¶](#Context_Stream_Input) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L143)

```
Context_Stream_Input :: struct #packed {
	input_data:            []u8,
	input:                 io.Stream,
	output:                ^bytes.Buffer,
	bytes_written:         i64,
	code_buffer:           u64,
	num_bits:              u64,
	size_packed:           i64,
	size_unpacked:         i64,
	input_fully_in_memory: b8,
	padding:               [1]u8,
}
```

##### Related Procedures With Parameters

* [consume\_bits\_lsb\_from\_stream](/core/compress/#consume_bits_lsb_from_stream)
* [discard\_to\_next\_byte\_lsb\_from\_stream](/core/compress/#discard_to_next_byte_lsb_from_stream)
* [input\_size\_from\_stream](/core/compress/#input_size_from_stream)
* [peek\_bits\_lsb\_from\_stream](/core/compress/#peek_bits_lsb_from_stream)
* [peek\_bits\_no\_refill\_lsb\_from\_stream](/core/compress/#peek_bits_no_refill_lsb_from_stream)
* [peek\_data\_at\_offset\_from\_stream](/core/compress/#peek_data_at_offset_from_stream)
* [peek\_data\_from\_stream](/core/compress/#peek_data_from_stream)
* [read\_bits\_lsb\_from\_stream](/core/compress/#read_bits_lsb_from_stream)
* [read\_bits\_no\_refill\_lsb\_from\_stream](/core/compress/#read_bits_no_refill_lsb_from_stream)
* [read\_slice\_from\_stream](/core/compress/#read_slice_from_stream)
* [read\_u8\_from\_stream](/core/compress/#read_u8_from_stream)
* [refill\_lsb\_from\_stream](/core/compress/#refill_lsb_from_stream)
* [consume\_bits\_lsb](/core/compress/#consume_bits_lsb) *(procedure groups)*
* [discard\_to\_next\_byte\_lsb](/core/compress/#discard_to_next_byte_lsb) *(procedure groups)*
* [input\_size](/core/compress/#input_size) *(procedure groups)*
* [peek\_bits\_lsb](/core/compress/#peek_bits_lsb) *(procedure groups)*
* [peek\_bits\_no\_refill\_lsb](/core/compress/#peek_bits_no_refill_lsb) *(procedure groups)*
* [peek\_data](/core/compress/#peek_data) *(procedure groups)*
* [read\_bits\_lsb](/core/compress/#read_bits_lsb) *(procedure groups)*
* [read\_bits\_no\_refill\_lsb](/core/compress/#read_bits_no_refill_lsb) *(procedure groups)*
* [read\_slice](/core/compress/#read_slice) *(procedure groups)*
* [read\_u8](/core/compress/#read_u8) *(procedure groups)*
* [refill\_lsb](/core/compress/#refill_lsb) *(procedure groups)*

### [Deflate\_Error ¶](#Deflate_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L114)

```
Deflate_Error :: enum int {
	None                     = 0, 
	Huffman_Bad_Sizes, 
	Huffman_Bad_Code_Lengths, 
	Inflate_Error, 
	Bad_Distance, 
	Bad_Huffman_Code, 
	Len_Nlen_Mismatch, 
	BType_3, 
}
```

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L46)

```
Error :: union {
	General_Error, 
	Deflate_Error, 
	ZLIB_Error, 
	GZIP_Error, 
	ZIP_Error, 
	runtime.Allocator_Error, 
}
```

##### Related Procedures With Returns

* [input\_size\_from\_memory](/core/compress/#input_size_from_memory)
* [input\_size\_from\_stream](/core/compress/#input_size_from_stream)
* [input\_size](/core/compress/#input_size) *(procedure groups)*

### [GZIP\_Error ¶](#GZIP_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L74)

```
GZIP_Error :: enum int {
	None                                        = 0, 
	Invalid_GZIP_Signature, 
	Reserved_Flag_Set, 
	Invalid_Extra_Data, 
	Original_Name_Too_Long, 
	Comment_Too_Long, 
	Payload_Length_Invalid, 
	Payload_CRC_Invalid, 
	Payload_Size_Exceeds_Max_Payload, 
	Output_Exceeds_COMPRESS_OUTPUT_ALLOCATE_MAX, 
}
```

### [General\_Error ¶](#General_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L56)

```
General_Error :: enum int {
	None                       = 0, 
	File_Not_Found, 
	Cannot_Open_File, 
	File_Too_Short, 
	Stream_Too_Short, 
	Output_Too_Short, 
	Unknown_Compression_Method, 
	Checksum_Failed, 
	Incompatible_Options, 
	Unimplemented, 
	Allocation_Failed, 
	Resize_Failed, 
}
```

### [ZIP\_Error ¶](#ZIP_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L98)

```
ZIP_Error :: enum int {
	None                                     = 0, 
	Invalid_ZIP_File_Signature, 
	Unexpected_Signature, 
	Insert_Next_Disk, 
	Expected_End_of_Central_Directory_Record, 
}
```

### [ZLIB\_Error ¶](#ZLIB_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L106)

```
ZLIB_Error :: enum int {
	None                          = 0, 
	Unsupported_Window_Size, 
	FDICT_Unsupported, 
	Unsupported_Compression_Level, 
	Code_Buffer_Malformed, 
}
```

## Constants

### [COMPRESS\_OUTPUT\_ALLOCATE\_MAX ¶](#COMPRESS_OUTPUT_ALLOCATE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L38)

```
COMPRESS_OUTPUT_ALLOCATE_MAX :: int(#config(COMPRESS_OUTPUT_ALLOCATE_MAX, 1 << 32))
```

 

For 64-bit platforms, we set the default max buffer size to 4 GiB,
which is GZIP and PKZIP's max payload size.

### [COMPRESS\_OUTPUT\_ALLOCATE\_MIN ¶](#COMPRESS_OUTPUT_ALLOCATE_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L25)

```
COMPRESS_OUTPUT_ALLOCATE_MIN :: int(#config(COMPRESS_OUTPUT_ALLOCATE_MIN, 1 << 20))
```

 

When a decompression routine doesn't stream its output, but writes to a buffer,
we pre-allocate an output buffer to speed up decompression. The default is 1 MiB.

## Variables

This section is empty.

## Procedures

### [consume\_bits\_lsb\_from\_memory ¶](#consume_bits_lsb_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L417)

```
consume_bits_lsb_from_memory :: proc(z: ^Context_Memory_Input, width: u8) {…}
```

##### Related Procedure Groups

* [consume\_bits\_lsb](/core/compress/#consume_bits_lsb)

### [consume\_bits\_lsb\_from\_stream ¶](#consume_bits_lsb_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L423)

```
consume_bits_lsb_from_stream :: proc(z: ^Context_Stream_Input, width: u8) {…}
```

##### Related Procedure Groups

* [consume\_bits\_lsb](/core/compress/#consume_bits_lsb)

### [discard\_to\_next\_byte\_lsb\_from\_memory ¶](#discard_to_next_byte_lsb_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L496)

```
discard_to_next_byte_lsb_from_memory :: proc(z: ^Context_Memory_Input) {…}
```

##### Related Procedure Groups

* [discard\_to\_next\_byte\_lsb](/core/compress/#discard_to_next_byte_lsb)

### [discard\_to\_next\_byte\_lsb\_from\_stream ¶](#discard_to_next_byte_lsb_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L503)

```
discard_to_next_byte_lsb_from_stream :: proc(z: ^Context_Stream_Input) {…}
```

##### Related Procedure Groups

* [discard\_to\_next\_byte\_lsb](/core/compress/#discard_to_next_byte_lsb)

### [input\_size\_from\_memory ¶](#input_size_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L174)

```
input_size_from_memory :: proc(z: ^Context_Memory_Input) -> (res: i64, err: Error) {…}
```

##### Related Procedure Groups

* [input\_size](/core/compress/#input_size)

### [input\_size\_from\_stream ¶](#input_size_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L178)

```
input_size_from_stream :: proc(z: ^Context_Stream_Input) -> (res: i64, err: Error) {…}
```

##### Related Procedure Groups

* [input\_size](/core/compress/#input_size)

### [peek\_back\_byte ¶](#peek_back_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L352)

```
peek_back_byte :: proc(z: ^$C, offset: i64) -> (res: u8, err: io.Error) {…}
```

 

Sliding window read back

### [peek\_bits\_lsb\_from\_memory ¶](#peek_bits_lsb_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L431)

```
peek_bits_lsb_from_memory :: proc(z: ^Context_Memory_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [peek\_bits\_lsb](/core/compress/#peek_bits_lsb)

### [peek\_bits\_lsb\_from\_stream ¶](#peek_bits_lsb_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L439)

```
peek_bits_lsb_from_stream :: proc(z: ^Context_Stream_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [peek\_bits\_lsb](/core/compress/#peek_bits_lsb)

### [peek\_bits\_no\_refill\_lsb\_from\_memory ¶](#peek_bits_no_refill_lsb_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L449)

```
peek_bits_no_refill_lsb_from_memory :: proc(z: ^Context_Memory_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [peek\_bits\_no\_refill\_lsb](/core/compress/#peek_bits_no_refill_lsb)

### [peek\_bits\_no\_refill\_lsb\_from\_stream ¶](#peek_bits_no_refill_lsb_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L455)

```
peek_bits_no_refill_lsb_from_stream :: proc(z: ^Context_Stream_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [peek\_bits\_no\_refill\_lsb](/core/compress/#peek_bits_no_refill_lsb)

### [peek\_data\_at\_offset\_from\_memory ¶](#peek_data_at_offset_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L275)

```
peek_data_at_offset_from_memory :: proc(z: ^Context_Memory_Input, $T: typeid, #any_int offset: int) -> (res: typeid, err: io.Error) {…}
```

##### Related Procedure Groups

* [peek\_data](/core/compress/#peek_data)

### [peek\_data\_at\_offset\_from\_stream ¶](#peek_data_at_offset_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L317)

```
peek_data_at_offset_from_stream :: proc(z: ^Context_Stream_Input, $T: typeid, #any_int offset: int) -> (res: typeid, err: io.Error) {…}
```

##### Related Procedure Groups

* [peek\_data](/core/compress/#peek_data)

### [peek\_data\_from\_memory ¶](#peek_data_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L257)

```
peek_data_from_memory :: proc(z: ^Context_Memory_Input, $T: typeid) -> (res: typeid, err: io.Error) {…}
```

##### Related Procedure Groups

* [peek\_data](/core/compress/#peek_data)

### [peek\_data\_from\_stream ¶](#peek_data_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L293)

```
peek_data_from_stream :: proc(z: ^Context_Stream_Input, $T: typeid) -> (res: typeid, err: io.Error) {…}
```

##### Related Procedure Groups

* [peek\_data](/core/compress/#peek_data)

### [read\_bits\_lsb\_from\_memory ¶](#read_bits_lsb_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L463)

```
read_bits_lsb_from_memory :: proc(z: ^Context_Memory_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [read\_bits\_lsb](/core/compress/#read_bits_lsb)

### [read\_bits\_lsb\_from\_stream ¶](#read_bits_lsb_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L470)

```
read_bits_lsb_from_stream :: proc(z: ^Context_Stream_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [read\_bits\_lsb](/core/compress/#read_bits_lsb)

### [read\_bits\_no\_refill\_lsb\_from\_memory ¶](#read_bits_no_refill_lsb_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L479)

```
read_bits_no_refill_lsb_from_memory :: proc(z: ^Context_Memory_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [read\_bits\_no\_refill\_lsb](/core/compress/#read_bits_no_refill_lsb)

### [read\_bits\_no\_refill\_lsb\_from\_stream ¶](#read_bits_no_refill_lsb_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L486)

```
read_bits_no_refill_lsb_from_stream :: proc(z: ^Context_Stream_Input, width: u8) -> u32 {…}
```

##### Related Procedure Groups

* [read\_bits\_no\_refill\_lsb](/core/compress/#read_bits_no_refill_lsb)

### [read\_data ¶](#read_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L214)

```
read_data :: proc(z: ^$C, $T: typeid) -> (res: typeid, err: io.Error) {…}
```

### [read\_slice\_from\_memory ¶](#read_slice_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L186)

```
read_slice_from_memory :: proc(z: ^Context_Memory_Input, size: int) -> (res: []u8, err: io.Error) {…}
```

##### Related Procedure Groups

* [read\_slice](/core/compress/#read_slice)

### [read\_slice\_from\_stream ¶](#read_slice_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L203)

```
read_slice_from_stream :: proc(z: ^Context_Stream_Input, size: int) -> (res: []u8, err: io.Error) {…}
```

##### Related Procedure Groups

* [read\_slice](/core/compress/#read_slice)

### [read\_u8\_from\_memory ¶](#read_u8_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L220)

```
read_u8_from_memory :: proc(z: ^Context_Memory_Input) -> (res: u8, err: io.Error) {…}
```

##### Related Procedure Groups

* [read\_u8](/core/compress/#read_u8)

### [read\_u8\_from\_stream ¶](#read_u8_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L232)

```
read_u8_from_stream :: proc(z: ^Context_Stream_Input) -> (res: u8, err: io.Error) {…}
```

##### Related Procedure Groups

* [read\_u8](/core/compress/#read_u8)

### [read\_u8\_prefer\_code\_buffer\_lsb ¶](#read_u8_prefer_code_buffer_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L242)

```
read_u8_prefer_code_buffer_lsb :: proc(z: ^$C) -> (res: u8, err: io.Error) {…}
```

 

You would typically only use this at the end of Inflate, to drain bits from the code buffer
preferentially.

### [refill\_lsb\_from\_memory ¶](#refill_lsb_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L359)

```
refill_lsb_from_memory :: proc(z: ^Context_Memory_Input, width: i8 = i8(48)) {…}
```

 

Generalized bit reader LSB




##### Related Procedure Groups

* [refill\_lsb](/core/compress/#refill_lsb)

### [refill\_lsb\_from\_stream ¶](#refill_lsb_from_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L388)

```
refill_lsb_from_stream :: proc(z: ^Context_Stream_Input, width: i8 = i8(24)) {…}
```

 

Generalized bit reader LSB




##### Related Procedure Groups

* [refill\_lsb](/core/compress/#refill_lsb)

## Procedure Groups

### [consume\_bits\_lsb ¶](#consume_bits_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L428)

```
consume_bits_lsb :: proc{
	consume_bits_lsb_from_memory,
	consume_bits_lsb_from_stream,
}
```

### [discard\_to\_next\_byte\_lsb ¶](#discard_to_next_byte_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L508)

```
discard_to_next_byte_lsb :: proc{
	discard_to_next_byte_lsb_from_memory,
	discard_to_next_byte_lsb_from_stream,
}
```

### [input\_size ¶](#input_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L183)

```
input_size :: proc{
	input_size_from_memory,
	input_size_from_stream,
}
```

### [peek\_bits\_lsb ¶](#peek_bits_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L446)

```
peek_bits_lsb :: proc{
	peek_bits_lsb_from_memory,
	peek_bits_lsb_from_stream,
}
```

### [peek\_bits\_no\_refill\_lsb ¶](#peek_bits_no_refill_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L460)

```
peek_bits_no_refill_lsb :: proc{
	peek_bits_no_refill_lsb_from_memory,
	peek_bits_no_refill_lsb_from_stream,
}
```

### [peek\_data ¶](#peek_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L346)

```
peek_data :: proc{
	peek_data_from_memory,
	peek_data_from_stream,
	peek_data_at_offset_from_memory,
	peek_data_at_offset_from_stream,
}
```

### [read\_bits\_lsb ¶](#read_bits_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L476)

```
read_bits_lsb :: proc{
	read_bits_lsb_from_memory,
	read_bits_lsb_from_stream,
}
```

### [read\_bits\_no\_refill\_lsb ¶](#read_bits_no_refill_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L492)

```
read_bits_no_refill_lsb :: proc{
	read_bits_no_refill_lsb_from_memory,
	read_bits_no_refill_lsb_from_stream,
}
```

### [read\_slice ¶](#read_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L211)

```
read_slice :: proc{
	read_slice_from_memory,
	read_slice_from_stream,
}
```

### [read\_u8 ¶](#read_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L237)

```
read_u8 :: proc{
	read_u8_from_memory,
	read_u8_from_stream,
}
```

### [refill\_lsb ¶](#refill_lsb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin#L413)

```
refill_lsb :: proc{
	refill_lsb_from_memory,
	refill_lsb_from_stream,
}
```

## Source Files

* [common.odin](https://github.com/odin-lang/Odin/tree/master/core/compress/common.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.029292000 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context\_Memory\_Input](#Context_Memory_Input)
    + [Context\_Stream\_Input](#Context_Stream_Input)
    + [Deflate\_Error](#Deflate_Error)
    + [Error](#Error)
    + [GZIP\_Error](#GZIP_Error)
    + [General\_Error](#General_Error)
    + [ZIP\_Error](#ZIP_Error)
    + [ZLIB\_Error](#ZLIB_Error)
  * [Constants](#pkg-Constants)
    + [COMPRESS\_OUTPUT\_ALLOCATE\_MAX](#COMPRESS_OUTPUT_ALLOCATE_MAX)
    + [COMPRESS\_OUTPUT\_ALLOCATE\_MIN](#COMPRESS_OUTPUT_ALLOCATE_MIN)
  * [Procedures](#pkg-Procedures)
    + [consume\_bits\_lsb\_from\_memory](#consume_bits_lsb_from_memory)
    + [consume\_bits\_lsb\_from\_stream](#consume_bits_lsb_from_stream)
    + [discard\_to\_next\_byte\_lsb\_from\_memory](#discard_to_next_byte_lsb_from_memory)
    + [discard\_to\_next\_byte\_lsb\_from\_stream](#discard_to_next_byte_lsb_from_stream)
    + [input\_size\_from\_memory](#input_size_from_memory)
    + [input\_size\_from\_stream](#input_size_from_stream)
    + [peek\_back\_byte](#peek_back_byte)
    + [peek\_bits\_lsb\_from\_memory](#peek_bits_lsb_from_memory)
    + [peek\_bits\_lsb\_from\_stream](#peek_bits_lsb_from_stream)
    + [peek\_bits\_no\_refill\_lsb\_from\_memory](#peek_bits_no_refill_lsb_from_memory)
    + [peek\_bits\_no\_refill\_lsb\_from\_stream](#peek_bits_no_refill_lsb_from_stream)
    + [peek\_data\_at\_offset\_from\_memory](#peek_data_at_offset_from_memory)
    + [peek\_data\_at\_offset\_from\_stream](#peek_data_at_offset_from_stream)
    + [peek\_data\_from\_memory](#peek_data_from_memory)
    + [peek\_data\_from\_stream](#peek_data_from_stream)
    + [read\_bits\_lsb\_from\_memory](#read_bits_lsb_from_memory)
    + [read\_bits\_lsb\_from\_stream](#read_bits_lsb_from_stream)
    + [read\_bits\_no\_refill\_lsb\_from\_memory](#read_bits_no_refill_lsb_from_memory)
    + [read\_bits\_no\_refill\_lsb\_from\_stream](#read_bits_no_refill_lsb_from_stream)
    + [read\_data](#read_data)
    + [read\_slice\_from\_memory](#read_slice_from_memory)
    + [read\_slice\_from\_stream](#read_slice_from_stream)
    + [read\_u8\_from\_memory](#read_u8_from_memory)
    + [read\_u8\_from\_stream](#read_u8_from_stream)
    + [read\_u8\_prefer\_code\_buffer\_lsb](#read_u8_prefer_code_buffer_lsb)
    + [refill\_lsb\_from\_memory](#refill_lsb_from_memory)
    + [refill\_lsb\_from\_stream](#refill_lsb_from_stream)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [consume\_bits\_lsb](#consume_bits_lsb)
    + [discard\_to\_next\_byte\_lsb](#discard_to_next_byte_lsb)
    + [input\_size](#input_size)
    + [peek\_bits\_lsb](#peek_bits_lsb)
    + [peek\_bits\_no\_refill\_lsb](#peek_bits_no_refill_lsb)
    + [peek\_data](#peek_data)
    + [read\_bits\_lsb](#read_bits_lsb)
    + [read\_bits\_no\_refill\_lsb](#read_bits_no_refill_lsb)
    + [read\_slice](#read_slice)
    + [read\_u8](#read_u8)
    + [refill\_lsb](#refill_lsb)
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