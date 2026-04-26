package compress/gzip - pkg.odin-lang.org 






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



Current Package: *[compress\_gzip](/core/compress/gzip)*

  

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
3. [gzip](/core/compress/gzip)

# package core:compress/gzip [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A small `GZIP` unpacker.

**Example:**

```
import "core:bytes"
import "core:os"
import "core:compress"
import "core:compress/gzip"
import "core:fmt"

// Small GZIP file with fextra, fname and fcomment present.
@private
TEST: []u8 = {
	0x1f, 0x8b, 0x08, 0x1c, 0xcb, 0x3b, 0x3a, 0x5a,
	0x02, 0x03, 0x07, 0x00, 0x61, 0x62, 0x03, 0x00,
	0x63, 0x64, 0x65, 0x66, 0x69, 0x6c, 0x65, 0x6e,
	0x61, 0x6d, 0x65, 0x00, 0x54, 0x68, 0x69, 0x73,
	0x20, 0x69, 0x73, 0x20, 0x61, 0x20, 0x63, 0x6f,
	0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x00, 0x2b, 0x48,
	0xac, 0xcc, 0xc9, 0x4f, 0x4c, 0x01, 0x00, 0x15,
	0x6a, 0x2c, 0x42, 0x07, 0x00, 0x00, 0x00,
}

main :: proc() {
	// Set up output buffer.
	buf: bytes.Buffer
	defer bytes.buffer_destroy(&buf)

	stdout :: proc(s: string) {
		os.write_string(os.stdout, s)
	}
	stderr :: proc(s: string) {
		os.write_string(os.stderr, s)
	}

	if len(os.args) < 2 {
		stderr("No input file specified.\n")
		err := gzip.load(data=TEST, buf=&buf, known_gzip_size=len(TEST))
		if err == nil {
			stdout("Displaying test vector: \"")
			stdout(bytes.buffer_to_string(&buf))
			stdout("\"\n")
		} else {
			fmt.printf("gzip.load returned %v\n", err)
		}
		bytes.buffer_destroy(&buf)
		os.exit(0)
	}

	for file in os.args[1:] {
		err: gzip.Error

		if file == "-" {
			// Read from stdin
			ctx := &compress.Context_Stream_Input{
				input = os.stdin.stream,
			}
			err = gzip.load(ctx, &buf)
		} else {
			err = gzip.load(file, &buf)
		}
		switch err {
		case nil:
			stdout(bytes.buffer_to_string(&buf))
		case gzip.E_General.File_Not_Found:
			stderr("File not found: ")
			stderr(file)
			stderr("\n")
			os.exit(1)
		case:
			stderr("GZIP returned an error.\n")
			os.exit(2)
		}
	}
}
```

## Index

Types (12)

* [Compression](#Compression)
* [Compression\_Flags](#Compression_Flags)
* [E\_Deflate](#E_Deflate)
* [E\_GZIP](#E_GZIP)
* [E\_General](#E_General)
* [E\_ZLIB](#E_ZLIB)
* [Error](#Error)
* [Header](#Header)
* [Header\_Flag](#Header_Flag)
* [Header\_Flags](#Header_Flags)
* [Magic](#Magic)
* [OS](#OS)

Constants (2)

* [GZIP\_MAX\_PAYLOAD\_SIZE](#GZIP_MAX_PAYLOAD_SIZE)
* [OS\_Name](#OS_Name)

Variables (0)

This section is empty.

Procedures (3)

* [load\_from\_bytes](#load_from_bytes)
* [load\_from\_context](#load_from_context)
* [load\_from\_file](#load_from_file)

Procedure Groups (1)

* [load](#load)

## Types

### [Compression ¶](#Compression) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L88)

```
Compression :: enum u8 {
	DEFLATE = 8, 
}
```

### [Compression\_Flags ¶](#Compression_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L92)

```
Compression_Flags :: enum u8 {
	Maximum_Compression = 2, 
	Fastest_Compression = 4, 
}
```

### [E\_Deflate ¶](#E_Deflate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L101)

```
E_Deflate :: compress.Deflate_Error
```

### [E\_GZIP ¶](#E_GZIP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L99)

```
E_GZIP :: compress.GZIP_Error
```

### [E\_General ¶](#E_General) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L98)

```
E_General :: compress.General_Error
```

### [E\_ZLIB ¶](#E_ZLIB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L100)

```
E_ZLIB :: compress.ZLIB_Error
```

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L97)

```
Error :: compress.Error
```

##### Related Procedures With Returns

* [load\_from\_bytes](/core/compress/gzip/#load_from_bytes)
* [load\_from\_context](/core/compress/gzip/#load_from_context)
* [load\_from\_file](/core/compress/gzip/#load_from_file)
* [load](/core/compress/gzip/#load) *(procedure groups)*

### [Header ¶](#Header) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L28)

```
Header :: struct #packed {
	magic:              Magic,
	compression_method: Compression,
	flags:              Header_Flags,
	modification_time:  u32le,
	xfl:                Compression_Flags,
	os:                 OS,
}
```

### [Header\_Flag ¶](#Header_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L38)

```
Header_Flag :: enum u8 {
	// Order is important
	text       = 0, 
	header_crc = 1, 
	extra      = 2, 
	name       = 3, 
	comment    = 4, 
	reserved_1 = 5, 
	reserved_2 = 6, 
	reserved_3 = 7, 
}
```

### [Header\_Flags ¶](#Header_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L49)

```
Header_Flags :: distinct bit_set[Header_Flag; u8]
```

### [Magic ¶](#Magic) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L24)

```
Magic :: enum u16le {
	GZIP = 35615, 
}
```

### [OS ¶](#OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L51)

```
OS :: enum u8 {
	FAT          = 0, 
	Amiga        = 1, 
	VMS          = 2, 
	Unix         = 3, 
	VM_CMS       = 4, 
	Atari_TOS    = 5, 
	HPFS         = 6, 
	Macintosh    = 7, 
	Z_System     = 8, 
	CP_M         = 9, 
	TOPS_20      = 10, 
	NTFS         = 11, 
	QDOS         = 12, 
	Acorn_RISCOS = 13, 
	_Unknown     = 14, 
	Unknown      = 255, 
}
```

## Constants

### [GZIP\_MAX\_PAYLOAD\_SIZE ¶](#GZIP_MAX_PAYLOAD_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L103)

```
GZIP_MAX_PAYLOAD_SIZE :: i64(max(u32le))
```

### [OS\_Name ¶](#OS_Name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L69)

```
OS_Name: [OS]string : #sparse[OS]string{._Unknown = "", .FAT = "FAT", .Amiga = "Amiga", .VMS = "VMS/OpenVMS", .Unix = "Unix", .VM_CMS = "VM/CMS", .Atari_TOS = "Atari TOS", .HPFS = "HPFS", .Macintosh = "Macintosh", .Z_System = "Z-System", .CP_M = "CP/M", .TOPS_20 = "TOPS-20", .NTFS = "NTFS", .QDOS = "QDOS", .Acorn_RISCOS = "Acorn RISCOS", .Unknown = "Unknown"}
```

## Variables

This section is empty.

## Procedures

### [load\_from\_bytes ¶](#load_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L116)

```
load_from_bytes :: proc(data: []u8, buf: ^bytes.Buffer, known_gzip_size: int = -1, expected_output_size: int = -1, allocator := context.allocator) -> (err: compress.Error) {…}
```

##### Related Procedure Groups

* [load](/core/compress/gzip/#load)

### [load\_from\_context ¶](#load_from_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L126)

```
load_from_context :: proc(z: ^$C, buf: ^bytes.Buffer, known_gzip_size: int = -1, expected_output_size: int = -1, allocator := context.allocator) -> (err: compress.Error) {…}
```

##### Related Procedure Groups

* [load](/core/compress/gzip/#load)

### [load\_from\_file ¶](#load_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L107)

```
load_from_file :: proc(filename: string, buf: ^bytes.Buffer, expected_output_size: int = -1, allocator := context.allocator) -> (err: compress.Error) {…}
```

##### Related Procedure Groups

* [load](/core/compress/gzip/#load)

## Procedure Groups

### [load ¶](#load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin#L105)

```
load :: proc{
	load_from_bytes,
	load_from_file,
	load_from_context,
}
```

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/doc.odin)
* [gzip.odin](https://github.com/odin-lang/Odin/tree/master/core/compress/gzip/gzip.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.037664900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Compression](#Compression)
    + [Compression\_Flags](#Compression_Flags)
    + [E\_Deflate](#E_Deflate)
    + [E\_GZIP](#E_GZIP)
    + [E\_General](#E_General)
    + [E\_ZLIB](#E_ZLIB)
    + [Error](#Error)
    + [Header](#Header)
    + [Header\_Flag](#Header_Flag)
    + [Header\_Flags](#Header_Flags)
    + [Magic](#Magic)
    + [OS](#OS)
  * [Constants](#pkg-Constants)
    + [GZIP\_MAX\_PAYLOAD\_SIZE](#GZIP_MAX_PAYLOAD_SIZE)
    + [OS\_Name](#OS_Name)
  * [Procedures](#pkg-Procedures)
    + [load\_from\_bytes](#load_from_bytes)
    + [load\_from\_context](#load_from_context)
    + [load\_from\_file](#load_from_file)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [load](#load)
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