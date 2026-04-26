package encoding/cbor - pkg.odin-lang.org 






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



Current Package: *[encoding\_cbor](/core/encoding/cbor)*

  

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
2. encoding
3. [cbor](/core/encoding/cbor)

# package core:encoding/cbor [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Encodes and decodes types from/into [RCF 8949](https://www.rfc-editor.org/rfc/rfc8949.html) compatible `CBOR` binary.

Also provided are conversion to and from JSON and the CBOR diagnostic format.

**Allocations:**

In general, when in the following table it says allocations are done on the `temp_allocator`, these allocations
are still attempted to be deallocated.
This allows you to use an allocator with freeing implemented as the `temp_allocator` which is handy with big CBOR.

*Encoding*: If the `.Deterministic_Map_Sorting` flag is set on the encoder, this allocates on the given `temp_allocator`
some space for the keys of maps in order to sort them and then write them.
Other than that there are no allocations (only for the final bytes if you use `cbor.encode_into_bytes`.

*Decoding*: Allocates everything on the given allocator and input given can be deleted after decoding.
*No* temporary allocations are done.

*Marshal*: Same allocation strategy as encoding.

*Unmarshal*: Allocates everything on the given allocator and input given can be deleted after unmarshalling.
Some temporary allocations are done on the given `temp_allocator`.

**Determinism:**

CBOR defines a deterministic en/decoder, which among other things uses the smallest type possible for integers and floats,
and sorts map keys by their (encoded) lexical bytewise order.

You can enable this behaviour using a combination of flags, also available as the `cbor.ENCODE_FULLY_DETERMINISTIC` constant.
If you just want the small size that comes with this, but not the map sorting (which has a performance cost) you can use the
`cbor.ENCODE_SMALL` constant for the flags.

A deterministic float is a float in the smallest type (f16, f32, f64) that hasn't changed after conversion.
A deterministic integer is an integer in the smallest representation (u8, u16, u32, u64) it fits in.

**Untrusted Input:**

By default input is treated as untrusted, this means the sizes that are encoded in the CBOR are not blindly trusted.
If you were to trust these sizes, and allocate space for them an attacker would be able to cause massive allocations with small payloads.

The decoder has a `max_pre_alloc` field that specifies the maximum amount of bytes (roughly) to pre allocate, a KiB by default.

This does mean reallocations are more common though, you can, if you know the input is trusted, add the `.Trusted_Input` flag to the decoder.

**Tags:**

CBOR describes tags that you can wrap values with to assign a number to describe what type of data will follow.

More information and a list of default tags can be found here: [RFC 8949 Section 3.4](https://www.rfc-editor.org/rfc/rfc8949.html#name-tagging-of-items).

A list of registered extension types can be found here: [IANA CBOR assignments](https://www.iana.org/assignments/cbor-tags/cbor-tags.xhtml).

Tags can either be assigned to a distinct Odin type (used by default),
or be used with struct tags (`cbor_tag:"base64"`, or `cbor_tag:"1"` for example).

By default, the following tags are supported/provided by this implementation:

*1/epoch*: Assign this tag to `time.Time` or integer fields to use the defined seconds since epoch format.

*24/cbor*: Assign this tag to string or byte fields to store encoded CBOR (not decoding it).

*34/base64*: Assign this tag to string or byte fields to store and decode the contents in base64.

*2 & 3*: Used automatically by the implementation to encode and decode big numbers into/from `core:math/big`.

*55799*: Self described CBOR, used when `.Self_Described_CBOR` flag is used to wrap the entire binary.
This shows other implementations that we are dealing with CBOR by just looking at the first byte of input.

*1010*: An extension tag that defines a string type followed by its value, this is used by this implementation to support Odin's unions.

Users can provide their own tag implementations using the `cbor.tag_register_type(...)` to register a tag for a distinct Odin type
used automatically when it is encountered during marshal and unmarshal.
Or with `cbor.tag_register_number(...)` to register a tag number along with an identifier for convenience that can be used with struct tags,
e.g. `cbor_tag:"69"` or `cbor_tag:"my_tag"`.

You can look at the default tags provided for pointers on how these implementations work.

**Example:**

```
package main

import "base:intrinsics"

import "core:encoding/cbor"
import "core:fmt"
import "core:reflect"
import "core:time"

Possibilities :: union {
	string,
	int,
}

Data :: struct {
	str: string,
	neg: cbor.Negative_U16,            // Store a CBOR value directly.
	now: time.Time `cbor_tag:"epoch"`, // Wrapped in the epoch tag.
	ignore_this: ^Data `cbor:"-"`,     // Ignored by implementation.
	renamed: f32 `cbor:"renamed :)"`,  // Renamed when encoded.
	my_union: Possibilities,           // Union support.

	my_raw: [8]u32 `cbor_tag:"raw"`, // Custom tag that just writes the value as bytes.
}

main :: proc() {
	// Example custom tag implementation that instead of breaking down all parts,
	// just writes the value as a big byte blob. This is an advanced feature but very powerful.
	RAW_TAG_NR :: 200
	cbor.tag_register_number({
		marshal = proc(_: ^cbor.Tag_Implementation, e: cbor.Encoder, v: any) -> cbor.Marshal_Error {
			cbor._encode_u8(e.writer, RAW_TAG_NR, .Tag) or_return
			return cbor.err_conv(cbor._encode_bytes(e, reflect.as_bytes(v)))
		},
		unmarshal = proc(_: ^cbor.Tag_Implementation, d: cbor.Decoder, _: cbor.Tag_Number, v: any) -> (cbor.Unmarshal_Error) {
			hdr := cbor._decode_header(d.reader) or_return
			maj, add := cbor._header_split(hdr)
			if maj != .Bytes {
				return .Bad_Tag_Value
			}

			bytes := cbor.err_conv(cbor._decode_bytes(d, add, maj)) or_return
			intrinsics.mem_copy_non_overlapping(v.data, raw_data(bytes), len(bytes))
			return nil
		},
	}, RAW_TAG_NR, "raw")

	now := time.Time{_nsec = 1701117968 * 1e9}

	data := Data{
		str         = "Hello, World!",
		neg         = 300,
		now         = now,
		ignore_this = &Data{},
		renamed     = 123123.125,
		my_union    = 3,
		my_raw      = {1=1, 2=2, 3=3},
	}

	// Marshal the struct into binary CBOR.
	binary, err := cbor.marshal(data, cbor.ENCODE_FULLY_DETERMINISTIC)
	fmt.assertf(err == nil, "marshal error: %v", err)
	defer delete(binary)

	// Decode the binary data into a `cbor.Value`.
	decoded, derr := cbor.decode(string(binary))
	fmt.assertf(derr == nil, "decode error: %v", derr)
	defer cbor.destroy(decoded)

	// Turn the CBOR into a human readable representation defined as the diagnostic format in [[RFC 8949 Section 8;https://www.rfc-editor.org/rfc/rfc8949.html#name-diagnostic-notation]].
	diagnosis, eerr := cbor.to_diagnostic_format(decoded)
	fmt.assertf(eerr == nil, "to diagnostic error: %v", eerr)
	defer delete(diagnosis)

	fmt.println(diagnosis)
}
```

**Output:**

```
{
	"my_raw": 200(h'00001000200030000000000000000000'),
	"my_union": 1010([
		"int",
		3
	]),
	"neg": -301,
	"now": 1(1701117968),
	"renamed :)": 123123.12500000,
	"str": "Hello, World!"
}
```

## Index

Types (37)

* [Add](#Add)
* [Array](#Array)
* [Atom](#Atom)
* [Bytes](#Bytes)
* [Decode\_Data\_Error](#Decode_Data_Error)
* [Decode\_Error](#Decode_Error)
* [Decoder](#Decoder)
* [Decoder\_Flag](#Decoder_Flag)
* [Decoder\_Flags](#Decoder_Flags)
* [Encode\_Data\_Error](#Encode_Data_Error)
* [Encode\_Error](#Encode_Error)
* [Encoder](#Encoder)
* [Encoder\_Flag](#Encoder_Flag)
* [Encoder\_Flags](#Encoder_Flags)
* [Header](#Header)
* [Major](#Major)
* [Map](#Map)
* [Map\_Entry](#Map_Entry)
* [Marshal\_Data\_Error](#Marshal_Data_Error)
* [Marshal\_Error](#Marshal_Error)
* [Negative\_U16](#Negative_U16)
* [Negative\_U32](#Negative_U32)
* [Negative\_U64](#Negative_U64)
* [Negative\_U8](#Negative_U8)
* [Nil](#Nil)
* [Simple](#Simple)
* [Tag](#Tag)
* [Tag\_Implementation](#Tag_Implementation)
* [Tag\_Marshal\_Proc](#Tag_Marshal_Proc)
* [Tag\_Number](#Tag_Number)
* [Tag\_Unmarshal\_Proc](#Tag_Unmarshal_Proc)
* [Text](#Text)
* [Undefined](#Undefined)
* [Unmarshal\_Data\_Error](#Unmarshal_Data_Error)
* [Unmarshal\_Error](#Unmarshal_Error)
* [Unsupported\_Type\_Error](#Unsupported_Type_Error)
* [Value](#Value)

Constants (16)

* [DEFAULT\_MAX\_PRE\_ALLOC](#DEFAULT_MAX_PRE_ALLOC)
* [ENCODE\_FULLY\_DETERMINISTIC](#ENCODE_FULLY_DETERMINISTIC)
* [ENCODE\_SMALL](#ENCODE_SMALL)
* [INITIALIZE\_DEFAULT\_TAGS](#INITIALIZE_DEFAULT_TAGS)
* [INITIAL\_STREAMED\_BYTES\_CAPACITY](#INITIAL_STREAMED_BYTES_CAPACITY)
* [INITIAL\_STREAMED\_CONTAINER\_CAPACITY](#INITIAL_STREAMED_CONTAINER_CAPACITY)
* [TAG\_BASE64\_ID](#TAG_BASE64_ID)
* [TAG\_BASE64\_NR](#TAG_BASE64_NR)
* [TAG\_CBOR\_ID](#TAG_CBOR_ID)
* [TAG\_CBOR\_NR](#TAG_CBOR_NR)
* [TAG\_EPOCH\_TIME\_ID](#TAG_EPOCH_TIME_ID)
* [TAG\_EPOCH\_TIME\_NR](#TAG_EPOCH_TIME_NR)
* [TAG\_NEGATIVE\_BIG\_NR](#TAG_NEGATIVE_BIG_NR)
* [TAG\_OBJECT\_TYPE](#TAG_OBJECT_TYPE)
* [TAG\_SELF\_DESCRIBED\_CBOR](#TAG_SELF_DESCRIBED_CBOR)
* [TAG\_UNSIGNED\_BIG\_NR](#TAG_UNSIGNED_BIG_NR)

Variables (0)

This section is empty.

Procedures (35)

* [decode\_from\_decoder](#decode_from_decoder)
* [decode\_from\_reader](#decode_from_reader)
* [decode\_from\_string](#decode_from_string)
* [decode\_to\_unmarshal\_err](#decode_to_unmarshal_err)
* [decode\_to\_unmarshal\_err\_p](#decode_to_unmarshal_err_p)
* [decode\_to\_unmarshal\_err\_p2](#decode_to_unmarshal_err_p2)
* [destroy](#destroy)
* [encode\_into\_builder](#encode_into_builder)
* [encode\_into\_bytes](#encode_into_bytes)
* [encode\_into\_encoder](#encode_into_encoder)
* [encode\_into\_writer](#encode_into_writer)
* [encode\_stream\_begin](#encode_stream_begin)
* [encode\_stream\_end](#encode_stream_end)
* [encode\_stream\_map\_entry](#encode_stream_map_entry)
* [encode\_to\_marshal\_err](#encode_to_marshal_err)
* [encode\_to\_marshal\_err\_p2](#encode_to_marshal_err_p2)
* [from\_json](#from_json)
* [marshal\_into\_builder](#marshal_into_builder)
* [marshal\_into\_bytes](#marshal_into_bytes)
* [marshal\_into\_encoder](#marshal_into_encoder)
* [marshal\_into\_writer](#marshal_into_writer)
* [negative\_u16\_to\_int](#negative_u16_to_int)
* [negative\_u32\_to\_int](#negative_u32_to_int)
* [negative\_u64\_to\_int](#negative_u64_to_int)
* [negative\_u8\_to\_int](#negative_u8_to_int)
* [tag\_register\_number](#tag_register_number)
* [tag\_register\_type](#tag_register_type)
* [tags\_register\_defaults](#tags_register_defaults)
* [to\_diagnostic\_format\_string](#to_diagnostic_format_string)
* [to\_diagnostic\_format\_writer](#to_diagnostic_format_writer)
* [to\_json](#to_json)
* [unmarshal\_from\_bytes](#unmarshal_from_bytes)
* [unmarshal\_from\_decoder](#unmarshal_from_decoder)
* [unmarshal\_from\_reader](#unmarshal_from_reader)
* [unmarshal\_from\_string](#unmarshal_from_string)

Procedure Groups (11)

* [decode](#decode)
* [decode\_from](#decode_from)
* [encode](#encode)
* [encode\_into](#encode_into)
* [encode\_stream\_array\_item](#encode_stream_array_item)
* [err\_conv](#err_conv)
* [marshal](#marshal)
* [marshal\_into](#marshal_into)
* [negative\_to\_int](#negative_to_int)
* [to\_diagnostic\_format](#to_diagnostic_format)
* [unmarshal](#unmarshal)

`#config` values (1)

* [INITIALIZE\_DEFAULT\_TAGS](#INITIALIZE_DEFAULT_TAGS)

## Types

### [Add ¶](#Add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L63)

```
Add :: enum u8 {
	False          = 20, 
	True           = 21, 
	Nil            = 22, 
	Undefined      = 23, 
	One_Byte       = 24, 
	Two_Bytes      = 25, 
	Four_Bytes     = 26, 
	Eight_Bytes    = 27, 
	Length_Unknown = 31, 
	Break          = 31, 
}
```

 

The lower 3 bits of the header which denotes additional information for the type of value.

### [Array ¶](#Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L108)

```
Array :: []Value
```

### [Atom ¶](#Atom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L128)

```
Atom :: Simple
```

### [Bytes ¶](#Bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L105)

```
Bytes :: []u8
```

##### Related Procedures With Parameters

* [unmarshal\_from\_bytes](/core/encoding/cbor/#unmarshal_from_bytes)
* [unmarshal](/core/encoding/cbor/#unmarshal) *(procedure groups)*



##### Related Procedures With Returns

* [encode\_into\_bytes](/core/encoding/cbor/#encode_into_bytes)
* [marshal\_into\_bytes](/core/encoding/cbor/#marshal_into_bytes)
* [encode](/core/encoding/cbor/#encode) *(procedure groups)*
* [encode\_into](/core/encoding/cbor/#encode_into) *(procedure groups)*
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item) *(procedure groups)*
* [marshal](/core/encoding/cbor/#marshal) *(procedure groups)*
* [marshal\_into](/core/encoding/cbor/#marshal_into) *(procedure groups)*

### [Decode\_Data\_Error ¶](#Decode_Data_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L158)

```
Decode_Data_Error :: enum int {
	None, 
	Bad_Major,                // An invalid major type was encountered.
	Bad_Argument,             // A general unexpected value (most likely invalid additional info in header).
	Bad_Tag_Value,            // When the type of value for the given tag is not valid.
	Nested_Indefinite_Length, // When an streamed/indefinite length container nests another, this is not allowed.
	Nested_Tag,               // When a tag's value is another tag, this is not allowed.
	Length_Too_Big,           // When the length of a container (map, array, bytes, string) is more than `max(int)`.
	Disallowed_Streaming,     // When the `.Disallow_Streaming` flag is set and a streaming header is encountered.
	Break,                    // When the `break` header was found without any stream to break off.
}
```

### [Decode\_Error ¶](#Decode_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L146)

```
Decode_Error :: union {
	io.Error, 
	runtime.Allocator_Error, 
	Decode_Data_Error, 
}
```

##### Related Procedures With Parameters

* [decode\_to\_unmarshal\_err](/core/encoding/cbor/#decode_to_unmarshal_err)
* [decode\_to\_unmarshal\_err\_p](/core/encoding/cbor/#decode_to_unmarshal_err_p)
* [decode\_to\_unmarshal\_err\_p2](/core/encoding/cbor/#decode_to_unmarshal_err_p2)
* [err\_conv](/core/encoding/cbor/#err_conv) *(procedure groups)*



##### Related Procedures With Returns

* [decode\_from\_decoder](/core/encoding/cbor/#decode_from_decoder)
* [decode\_from\_reader](/core/encoding/cbor/#decode_from_reader)
* [decode\_from\_string](/core/encoding/cbor/#decode_from_string)
* [decode](/core/encoding/cbor/#decode) *(procedure groups)*
* [decode\_from](/core/encoding/cbor/#decode_from) *(procedure groups)*

### [Decoder ¶](#Decoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L61)

```
Decoder :: struct {
	// The max amount of bytes allowed to pre-allocate when `.Trusted_Input` is not set on the
	// flags.
	max_pre_alloc: int,
	flags:         bit_set[Decoder_Flag],
	reader:        io.Stream,
}
```

##### Related Procedures With Parameters

* [decode\_from\_decoder](/core/encoding/cbor/#decode_from_decoder)
* [unmarshal\_from\_decoder](/core/encoding/cbor/#unmarshal_from_decoder)
* [decode](/core/encoding/cbor/#decode) *(procedure groups)*
* [decode\_from](/core/encoding/cbor/#decode_from) *(procedure groups)*

### [Decoder\_Flag ¶](#Decoder_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L45)

```
Decoder_Flag :: enum int {
	// Rejects (with an error `.Disallowed_Streaming`) when a streaming CBOR header is encountered.
	Disallow_Streaming, 
	// Pre-allocates buffers and containers with the size that was set in the CBOR header.
	// This should only be enabled when you control both ends of the encoding, if you don't,
	// attackers can craft input that causes massive (`max(u64)`) byte allocations for a few bytes of
	// CBOR.
	Trusted_Input, 
	// Makes the decoder shrink of excess capacity from allocated buffers/containers before returning.
	Shrink_Excess, 
}
```

### [Decoder\_Flags ¶](#Decoder_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L59)

```
Decoder_Flags :: bit_set[Decoder_Flag]
```

##### Related Procedures With Parameters

* [decode\_from\_reader](/core/encoding/cbor/#decode_from_reader)
* [decode\_from\_string](/core/encoding/cbor/#decode_from_string)
* [unmarshal\_from\_bytes](/core/encoding/cbor/#unmarshal_from_bytes)
* [unmarshal\_from\_reader](/core/encoding/cbor/#unmarshal_from_reader)
* [unmarshal\_from\_string](/core/encoding/cbor/#unmarshal_from_string)
* [decode](/core/encoding/cbor/#decode) *(procedure groups)*
* [decode\_from](/core/encoding/cbor/#decode_from) *(procedure groups)*
* [unmarshal](/core/encoding/cbor/#unmarshal) *(procedure groups)*

### [Encode\_Data\_Error ¶](#Encode_Data_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L170)

```
Encode_Data_Error :: enum int {
	None, 
	Invalid_Simple, // When a simple is being encoded that is out of the range `0..=19` and `32..=max(u8)`.
	Int_Too_Big,    // When an int is being encoded that is larger than `max(u64)` or smaller than `min(u64)`.
	Bad_Tag_Value,  // When the type of value is not supported by the tag implementation.
}
```

### [Encode\_Error ¶](#Encode_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L152)

```
Encode_Error :: union {
	io.Error, 
	runtime.Allocator_Error, 
	Encode_Data_Error, 
}
```

##### Related Procedures With Parameters

* [encode\_to\_marshal\_err](/core/encoding/cbor/#encode_to_marshal_err)
* [encode\_to\_marshal\_err\_p2](/core/encoding/cbor/#encode_to_marshal_err_p2)
* [err\_conv](/core/encoding/cbor/#err_conv) *(procedure groups)*



##### Related Procedures With Returns

* [encode\_into\_builder](/core/encoding/cbor/#encode_into_builder)
* [encode\_into\_bytes](/core/encoding/cbor/#encode_into_bytes)
* [encode\_into\_encoder](/core/encoding/cbor/#encode_into_encoder)
* [encode\_into\_writer](/core/encoding/cbor/#encode_into_writer)
* [encode\_stream\_map\_entry](/core/encoding/cbor/#encode_stream_map_entry)
* [encode](/core/encoding/cbor/#encode) *(procedure groups)*
* [encode\_into](/core/encoding/cbor/#encode_into) *(procedure groups)*
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item) *(procedure groups)*

### [Encoder ¶](#Encoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L39)

```
Encoder :: struct {
	flags:          bit_set[Encoder_Flag],
	writer:         io.Stream,
	temp_allocator: runtime.Allocator,
}
```

##### Related Procedures With Parameters

* [encode\_into\_encoder](/core/encoding/cbor/#encode_into_encoder)
* [encode\_stream\_map\_entry](/core/encoding/cbor/#encode_stream_map_entry)
* [marshal\_into\_encoder](/core/encoding/cbor/#marshal_into_encoder)
* [encode](/core/encoding/cbor/#encode) *(procedure groups)*
* [encode\_into](/core/encoding/cbor/#encode_into) *(procedure groups)*
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item) *(procedure groups)*
* [marshal](/core/encoding/cbor/#marshal) *(procedure groups)*
* [marshal\_into](/core/encoding/cbor/#marshal_into) *(procedure groups)*

### [Encoder\_Flag ¶](#Encoder_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L12)

```
Encoder_Flag :: enum int {
	// CBOR defines a tag header that also acts as a file/binary header,
	// this way decoders can check the first header of the binary and see if it is CBOR.
	Self_Described_CBOR, 
	// Integers are stored in the smallest integer type it fits.
	// This involves checking each int against the max of all its smaller types.
	Deterministic_Int_Size, 
	// Floats are stored in the smallest size float type without losing precision.
	// This involves casting each float down to its smaller types and checking if it changed.
	Deterministic_Float_Size, 
	// Sort maps by their keys in bytewise lexicographic order of their deterministic encoding.
	// NOTE: In order to do this, all keys of a map have to be pre-computed, sorted, and
	// then written, this involves temporary allocations for the keys and a copy of the map itself.
	Deterministic_Map_Sorting, 
}
```

### [Encoder\_Flags ¶](#Encoder_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L31)

```
Encoder_Flags :: bit_set[Encoder_Flag]
```

##### Related Procedures With Parameters

* [encode\_into\_builder](/core/encoding/cbor/#encode_into_builder)
* [encode\_into\_bytes](/core/encoding/cbor/#encode_into_bytes)
* [encode\_into\_writer](/core/encoding/cbor/#encode_into_writer)
* [marshal\_into\_builder](/core/encoding/cbor/#marshal_into_builder)
* [marshal\_into\_bytes](/core/encoding/cbor/#marshal_into_bytes)
* [marshal\_into\_writer](/core/encoding/cbor/#marshal_into_writer)
* [encode](/core/encoding/cbor/#encode) *(procedure groups)*
* [encode\_into](/core/encoding/cbor/#encode_into) *(procedure groups)*
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item) *(procedure groups)*
* [marshal](/core/encoding/cbor/#marshal) *(procedure groups)*
* [marshal\_into](/core/encoding/cbor/#marshal_into) *(procedure groups)*

##### Related Constants

* [ENCODE\_FULLY\_DETERMINISTIC](/core/encoding/cbor/#ENCODE_FULLY_DETERMINISTIC)
* [ENCODE\_SMALL](/core/encoding/cbor/#ENCODE_SMALL)

### [Header ¶](#Header) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L24)

```
Header :: enum u8 {
	U8        = 24, 
	U16       = 25, 
	U32       = 26, 
	U64       = 27, 
	Neg_U8    = 56, 
	Neg_U16   = 57, 
	Neg_U32   = 58, 
	Neg_U64   = 59, 
	False     = 244, 
	True      = 245, 
	Nil       = 246, 
	Undefined = 247, 
	Simple    = 248, 
	F16       = 249, 
	F32       = 250, 
	F64       = 251, 
	Break     = 255, 
}
```

 

Known/common headers are defined, undefined headers can still be valid.
Higher 3 bits is for the major type and lower 5 bits for the additional information.

### [Major ¶](#Major) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L51)

```
Major :: enum u8 {
	Unsigned, 
	Negative, 
	Bytes, 
	Text, 
	Array, 
	Map, 
	Tag, 
	Other, 
}
```

 

The higher 3 bits of the header which denotes what type of value it is.




##### Related Procedures With Parameters

* [encode\_stream\_begin](/core/encoding/cbor/#encode_stream_begin)

### [Map ¶](#Map) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L110)

```
Map :: []Map_Entry
```

### [Map\_Entry ¶](#Map_Entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L111)

```
Map_Entry :: struct {
	key:   Value,
	// Can be any unsigned, negative, float, Simple, bool, Text.
	value: Value,
}
```

### [Marshal\_Data\_Error ¶](#Marshal_Data_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L183)

```
Marshal_Data_Error :: enum int {
	None, 
	Invalid_CBOR_Tag, // When the struct tag `cbor_tag:""` is not a registered name or number.
}
```

### [Marshal\_Error ¶](#Marshal_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L138)

```
Marshal_Error :: union {
	io.Error, 
	runtime.Allocator_Error, 
	Encode_Data_Error, 
	Marshal_Data_Error, 
	runtime.Maybe($T=Unsupported_Type_Error), 
}
```

##### Related Procedures With Returns

* [encode\_to\_marshal\_err](/core/encoding/cbor/#encode_to_marshal_err)
* [encode\_to\_marshal\_err\_p2](/core/encoding/cbor/#encode_to_marshal_err_p2)
* [marshal\_into\_builder](/core/encoding/cbor/#marshal_into_builder)
* [marshal\_into\_bytes](/core/encoding/cbor/#marshal_into_bytes)
* [marshal\_into\_encoder](/core/encoding/cbor/#marshal_into_encoder)
* [marshal\_into\_writer](/core/encoding/cbor/#marshal_into_writer)
* [err\_conv](/core/encoding/cbor/#err_conv) *(procedure groups)*
* [marshal](/core/encoding/cbor/#marshal) *(procedure groups)*
* [marshal\_into](/core/encoding/cbor/#marshal_into) *(procedure groups)*

### [Negative\_U16 ¶](#Negative_U16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L207)

```
Negative_U16 :: distinct u16
```

##### Related Procedures With Parameters

* [negative\_u16\_to\_int](/core/encoding/cbor/#negative_u16_to_int)
* [negative\_to\_int](/core/encoding/cbor/#negative_to_int) *(procedure groups)*

### [Negative\_U32 ¶](#Negative_U32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L208)

```
Negative_U32 :: distinct u32
```

##### Related Procedures With Parameters

* [negative\_u32\_to\_int](/core/encoding/cbor/#negative_u32_to_int)
* [negative\_to\_int](/core/encoding/cbor/#negative_to_int) *(procedure groups)*

### [Negative\_U64 ¶](#Negative_U64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L209)

```
Negative_U64 :: distinct u64
```

##### Related Procedures With Parameters

* [negative\_u64\_to\_int](/core/encoding/cbor/#negative_u64_to_int)
* [negative\_to\_int](/core/encoding/cbor/#negative_to_int) *(procedure groups)*

### [Negative\_U8 ¶](#Negative_U8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L206)

```
Negative_U8 :: distinct u8
```

##### Related Procedures With Parameters

* [negative\_u8\_to\_int](/core/encoding/cbor/#negative_u8_to_int)
* [negative\_to\_int](/core/encoding/cbor/#negative_to_int) *(procedure groups)*

### [Nil ¶](#Nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L123)

```
Nil :: distinct rawptr
```

### [Simple ¶](#Simple) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L127)

```
Simple :: distinct u8
```

 

A distinct atom-like number, range from `0..=19` and `32..=max(u8)`.

### [Tag ¶](#Tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L116)

```
Tag :: struct {
	number: u64,
	value:  Value,
}
```

### [Tag\_Implementation ¶](#Tag_Implementation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L58)

```
Tag_Implementation :: struct {
	data:      rawptr,
	unmarshal: Tag_Unmarshal_Proc,
	marshal:   Tag_Marshal_Proc,
}
```

 

A tag implementation that handles marshals and unmarshals for the tag it is registered on.




##### Related Procedures With Parameters

* [tag\_register\_number](/core/encoding/cbor/#tag_register_number)
* [tag\_register\_type](/core/encoding/cbor/#tag_register_type)

### [Tag\_Marshal\_Proc ¶](#Tag_Marshal_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L68)

```
Tag_Marshal_Proc :: proc(self: ^Tag_Implementation, e: Encoder, v: any) -> Marshal_Error
```

 

Procedure responsible for marshalling the tag in the given `any` into the given encoder.

### [Tag\_Number ¶](#Tag_Number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L121)

```
Tag_Number :: u64
```

##### Related Procedures With Parameters

* [tag\_register\_number](/core/encoding/cbor/#tag_register_number)
* [tag\_register\_type](/core/encoding/cbor/#tag_register_type)

### [Tag\_Unmarshal\_Proc ¶](#Tag_Unmarshal_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L65)

```
Tag_Unmarshal_Proc :: proc(self: ^Tag_Implementation, d: Decoder, tag_nr: u64, v: any) -> Unmarshal_Error
```

 

Procedure responsible for umarshalling the tag out of the reader into the given `any`.

### [Text ¶](#Text) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L106)

```
Text :: string
```

##### Related Procedures With Parameters

* [decode\_from\_string](/core/encoding/cbor/#decode_from_string)
* [tag\_register\_number](/core/encoding/cbor/#tag_register_number)
* [unmarshal\_from\_string](/core/encoding/cbor/#unmarshal_from_string)
* [decode](/core/encoding/cbor/#decode) *(procedure groups)*
* [decode\_from](/core/encoding/cbor/#decode_from) *(procedure groups)*
* [unmarshal](/core/encoding/cbor/#unmarshal) *(procedure groups)*



##### Related Procedures With Returns

* [to\_diagnostic\_format\_string](/core/encoding/cbor/#to_diagnostic_format_string)
* [to\_diagnostic\_format](/core/encoding/cbor/#to_diagnostic_format) *(procedure groups)*

### [Undefined ¶](#Undefined) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L124)

```
Undefined :: distinct rawptr
```

### [Unmarshal\_Data\_Error ¶](#Unmarshal_Data_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L177)

```
Unmarshal_Data_Error :: enum int {
	None, 
	Invalid_Parameter,     // When the given `any` can not be unmarshalled into.
	Non_Pointer_Parameter, // When the given `any` is not a pointer.
}
```

### [Unmarshal\_Error ¶](#Unmarshal_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L130)

```
Unmarshal_Error :: union {
	io.Error, 
	runtime.Allocator_Error, 
	Decode_Data_Error, 
	Unmarshal_Data_Error, 
	runtime.Maybe($T=Unsupported_Type_Error), 
}
```

##### Related Procedures With Returns

* [decode\_to\_unmarshal\_err](/core/encoding/cbor/#decode_to_unmarshal_err)
* [decode\_to\_unmarshal\_err\_p](/core/encoding/cbor/#decode_to_unmarshal_err_p)
* [decode\_to\_unmarshal\_err\_p2](/core/encoding/cbor/#decode_to_unmarshal_err_p2)
* [unmarshal\_from\_bytes](/core/encoding/cbor/#unmarshal_from_bytes)
* [unmarshal\_from\_decoder](/core/encoding/cbor/#unmarshal_from_decoder)
* [unmarshal\_from\_reader](/core/encoding/cbor/#unmarshal_from_reader)
* [unmarshal\_from\_string](/core/encoding/cbor/#unmarshal_from_string)
* [err\_conv](/core/encoding/cbor/#err_conv) *(procedure groups)*
* [unmarshal](/core/encoding/cbor/#unmarshal) *(procedure groups)*

### [Unsupported\_Type\_Error ¶](#Unsupported_Type_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L190)

```
Unsupported_Type_Error :: struct {
	id:  typeid,
	hdr: Header,
	add: Add,
}
```

 

Error that is returned when a type couldn't be marshalled into or out of, as much information
as possible/available is added.

### [Value ¶](#Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L78)

```
Value :: union {
	u8, 
	u16, 
	u32, 
	u64, 
	Negative_U8, 
	Negative_U16, 
	Negative_U32, 
	Negative_U64, 
	^[]u8, 
	^string, 
	^[]Value, 
	^[]Map_Entry, 
	^Tag, 
	Simple, 
	f16, 
	f32, 
	f64, 
	bool, 
	Undefined, 
	Nil, 
}
```

##### Related Procedures With Parameters

* [destroy](/core/encoding/cbor/#destroy)
* [encode\_into\_builder](/core/encoding/cbor/#encode_into_builder)
* [encode\_into\_bytes](/core/encoding/cbor/#encode_into_bytes)
* [encode\_into\_encoder](/core/encoding/cbor/#encode_into_encoder)
* [encode\_into\_writer](/core/encoding/cbor/#encode_into_writer)
* [encode\_stream\_map\_entry](/core/encoding/cbor/#encode_stream_map_entry)
* [to\_diagnostic\_format\_string](/core/encoding/cbor/#to_diagnostic_format_string)
* [to\_diagnostic\_format\_writer](/core/encoding/cbor/#to_diagnostic_format_writer)
* [to\_json](/core/encoding/cbor/#to_json)
* [encode](/core/encoding/cbor/#encode) *(procedure groups)*
* [encode\_into](/core/encoding/cbor/#encode_into) *(procedure groups)*
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item) *(procedure groups)*
* [to\_diagnostic\_format](/core/encoding/cbor/#to_diagnostic_format) *(procedure groups)*



##### Related Procedures With Returns

* [decode\_from\_decoder](/core/encoding/cbor/#decode_from_decoder)
* [decode\_from\_reader](/core/encoding/cbor/#decode_from_reader)
* [decode\_from\_string](/core/encoding/cbor/#decode_from_string)
* [from\_json](/core/encoding/cbor/#from_json)
* [decode](/core/encoding/cbor/#decode) *(procedure groups)*
* [decode\_from](/core/encoding/cbor/#decode_from) *(procedure groups)*

## Constants

### [DEFAULT\_MAX\_PRE\_ALLOC ¶](#DEFAULT_MAX_PRE_ALLOC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L20)

```
DEFAULT_MAX_PRE_ALLOC :: mem.Kilobyte
```

 

The default maximum amount of bytes to allocate on a buffer/container at once to prevent
malicious input from causing massive allocations.

### [ENCODE\_FULLY\_DETERMINISTIC ¶](#ENCODE_FULLY_DETERMINISTIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L34)

```
ENCODE_FULLY_DETERMINISTIC: bit_set[Encoder_Flag] : Encoder_Flags{.Deterministic_Int_Size, .Deterministic_Float_Size, .Deterministic_Map_Sorting}
```

 

Flags for fully deterministic output (if you are not using streaming/indeterminate length).

### [ENCODE\_SMALL ¶](#ENCODE_SMALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L37)

```
ENCODE_SMALL: bit_set[Encoder_Flag] : Encoder_Flags{.Deterministic_Int_Size, .Deterministic_Float_Size}
```

 

Flags for the smallest encoding output.

### [INITIALIZE\_DEFAULT\_TAGS ¶](#INITIALIZE_DEFAULT_TAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L100)

```
INITIALIZE_DEFAULT_TAGS :: #config(CBOR_INITIALIZE_DEFAULT_TAGS, !ODIN_DEFAULT_TO_PANIC_ALLOCATOR && !ODIN_DEFAULT_TO_NIL_ALLOCATOR)
```

 

Controls initialization of default tag implementations.

### [INITIAL\_STREAMED\_BYTES\_CAPACITY ¶](#INITIAL_STREAMED_BYTES_CAPACITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L16)

```
INITIAL_STREAMED_BYTES_CAPACITY :: 16
```

 

If we are decoding a stream of either text or bytes, the initial capacity will be this value.

### [INITIAL\_STREAMED\_CONTAINER\_CAPACITY ¶](#INITIAL_STREAMED_CONTAINER_CAPACITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L13)

```
INITIAL_STREAMED_CONTAINER_CAPACITY :: 8
```

 

If we are decoding a stream of either a map or list, the initial capacity will be this value.

### [TAG\_BASE64\_ID ¶](#TAG_BASE64_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L40)

```
TAG_BASE64_ID :: "base64"
```

### [TAG\_BASE64\_NR ¶](#TAG_BASE64_NR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L39)

```
TAG_BASE64_NR :: 34
```

 

The contents of this tag are base64 encoded during marshal and decoded during unmarshal.
Use the struct tag `cbor_tag:"34"` or `cbor_tag:"base64"` to have your field string or bytes field en/decoded as base64.

### [TAG\_CBOR\_ID ¶](#TAG_CBOR_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L35)

```
TAG_CBOR_ID :: "cbor"
```

### [TAG\_CBOR\_NR ¶](#TAG_CBOR_NR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L34)

```
TAG_CBOR_NR :: 24
```

 

Sometimes it is beneficial to carry an embedded CBOR data item that is not meant to be decoded
immediately at the time the enclosing data item is being decoded. Tag number 24 (CBOR data item)
can be used to tag the embedded byte string as a single data item encoded in CBOR format.
Use the struct tag `cbor_tag:"24"` or `cbor_tag:"cbor"` to keep a non-decoded field (string or bytes) of raw CBOR.

### [TAG\_EPOCH\_TIME\_ID ¶](#TAG_EPOCH_TIME_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L19)

```
TAG_EPOCH_TIME_ID :: "epoch"
```

### [TAG\_EPOCH\_TIME\_NR ¶](#TAG_EPOCH_TIME_NR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L18)

```
TAG_EPOCH_TIME_NR :: 1
```

 

UTC time in seconds, unmarshalled into a `core:time` `time.Time` or integer.
Use the struct tag `cbor_tag:"1"` or `cbor_tag:"epoch"` to have your `time.Time` field en/decoded as epoch time.

### [TAG\_NEGATIVE\_BIG\_NR ¶](#TAG_NEGATIVE_BIG_NR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L26)

```
TAG_NEGATIVE_BIG_NR :: 3
```

 

Using `core:math/big`, big integers are properly encoded and decoded during marshal and unmarshal.
These fields use this tag by default, no struct tag required.

### [TAG\_OBJECT\_TYPE ¶](#TAG_OBJECT_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L55)

```
TAG_OBJECT_TYPE :: 1010
```

 

A tag that is used to assign a textual type to the object following it.
The tag's value must be an array of 2 items, where the first is text (describing the following type)
and the second is any valid CBOR value.

See the registration: https://datatracker.ietf.org/doc/draft-rundgren-cotx/05/

We use this in Odin to marshal and unmarshal unions.

### [TAG\_SELF\_DESCRIBED\_CBOR ¶](#TAG_SELF_DESCRIBED_CBOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L46)

```
TAG_SELF_DESCRIBED_CBOR :: 55799
```

 

A tag that is used to detect the contents of a binary buffer (like a file) are CBOR.
This tag would wrap everything else, decoders can then check for this header and see if the
given content is definitely CBOR.
Added by the encoder if it has the flag `.Self_Described_CBOR`, decoded by default.

### [TAG\_UNSIGNED\_BIG\_NR ¶](#TAG_UNSIGNED_BIG_NR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L23)

```
TAG_UNSIGNED_BIG_NR :: 2
```

 

Using `core:math/big`, big integers are properly encoded and decoded during marshal and unmarshal.
These fields use this tag by default, no struct tag required.

## Variables

This section is empty.

## Procedures

### [decode\_from\_decoder ¶](#decode_from_decoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L116)

```
decode_from_decoder :: proc(d: Decoder, allocator := context.allocator, loc := #caller_location) -> (v: Value, err: Decode_Error) {…}
```

 

Reads a CBOR value from the given decoder.
See docs on the proc group `decode` for more information.




##### Related Procedure Groups

* [decode](/core/encoding/cbor/#decode)
* [decode\_from](/core/encoding/cbor/#decode_from)

### [decode\_from\_reader ¶](#decode_from_reader) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L106)

```
decode_from_reader :: proc(r: io.Stream, flags: bit_set[Decoder_Flag] = {}, allocator := context.allocator, loc := #caller_location) -> (v: Value, err: Decode_Error) {…}
```

 

Reads a CBOR value from the given reader.
See docs on the proc group `decode` for more information.




##### Related Procedure Groups

* [decode](/core/encoding/cbor/#decode)
* [decode\_from](/core/encoding/cbor/#decode_from)

### [decode\_from\_string ¶](#decode_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L98)

```
decode_from_string :: proc(s: string, flags: bit_set[Decoder_Flag] = {}, allocator := context.allocator, loc := #caller_location) -> (v: Value, err: Decode_Error) {…}
```

 

Decodes the given string as CBOR.
See docs on the proc group `decode` for more information.




##### Related Procedure Groups

* [decode](/core/encoding/cbor/#decode)
* [decode\_from](/core/encoding/cbor/#decode_from)

### [decode\_to\_unmarshal\_err ¶](#decode_to_unmarshal_err) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L258)

```
decode_to_unmarshal_err :: proc(err: Decode_Error) -> Unmarshal_Error {…}
```

##### Related Procedure Groups

* [err\_conv](/core/encoding/cbor/#err_conv)

### [decode\_to\_unmarshal\_err\_p ¶](#decode_to_unmarshal_err_p) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L268)

```
decode_to_unmarshal_err_p :: proc(v: $T, err: Decode_Error) -> ($$deferred_return, Unmarshal_Error) {…}
```

##### Related Procedure Groups

* [err\_conv](/core/encoding/cbor/#err_conv)

### [decode\_to\_unmarshal\_err\_p2 ¶](#decode_to_unmarshal_err_p2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L272)

```
decode_to_unmarshal_err_p2 :: proc(v: $T, v2: $T2, err: Decode_Error) -> ($$deferred_return, $$deferred_return, Unmarshal_Error) {…}
```

##### Related Procedure Groups

* [err\_conv](/core/encoding/cbor/#err_conv)

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L277)

```
destroy :: proc(val: Value, allocator := context.allocator) {…}
```

 

Recursively frees all memory allocated when decoding the passed value.

### [encode\_into\_builder ¶](#encode_into_builder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L215)

```
encode_into_builder :: proc(b: ^strings.Builder, v: Value, flags: bit_set[Encoder_Flag] = ENCODE_SMALL, temp_allocator := context.temp_allocator, loc := #caller_location) -> Encode_Error {…}
```

 

Encodes the CBOR value into binary CBOR written to the given builder.
See the docs on the proc group `encode_into` for more info.




##### Related Procedure Groups

* [encode](/core/encoding/cbor/#encode)
* [encode\_into](/core/encoding/cbor/#encode_into)
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item)

### [encode\_into\_bytes ¶](#encode_into_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L207)

```
encode_into_bytes :: proc(v: Value, flags: bit_set[Encoder_Flag] = ENCODE_SMALL, allocator := context.allocator, temp_allocator := context.temp_allocator, loc := #caller_location) -> (data: []u8, err: Encode_Error) {…}
```

 

Encodes the CBOR value into binary CBOR allocated on the given allocator.
See the docs on the proc group `encode_into` for more info.




##### Related Procedure Groups

* [encode](/core/encoding/cbor/#encode)
* [encode\_into](/core/encoding/cbor/#encode_into)
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item)

### [encode\_into\_encoder ¶](#encode_into_encoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L227)

```
encode_into_encoder :: proc(e: Encoder, v: Value, loc := #caller_location) -> Encode_Error {…}
```

 

Encodes the CBOR value into binary CBOR written to the given encoder.
See the docs on the proc group `encode_into` for more info.




##### Related Procedure Groups

* [encode](/core/encoding/cbor/#encode)
* [encode\_into](/core/encoding/cbor/#encode_into)
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item)

### [encode\_into\_writer ¶](#encode_into_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L221)

```
encode_into_writer :: proc(w: io.Stream, v: Value, flags: bit_set[Encoder_Flag] = ENCODE_SMALL, temp_allocator := context.temp_allocator, loc := #caller_location) -> Encode_Error {…}
```

 

Encodes the CBOR value into binary CBOR written to the given writer.
See the docs on the proc group `encode_into` for more info.




##### Related Procedure Groups

* [encode](/core/encoding/cbor/#encode)
* [encode\_into](/core/encoding/cbor/#encode_into)
* [encode\_stream\_array\_item](/core/encoding/cbor/#encode_stream_array_item)

### [encode\_stream\_begin ¶](#encode_stream_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L741)

```
encode_stream_begin :: proc(w: io.Stream, major: Major) -> (err: io.Error) {…}
```

### [encode\_stream\_end ¶](#encode_stream_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L749)

```
encode_stream_end :: proc(w: io.Stream) -> io.Error {…}
```

### [encode\_stream\_map\_entry ¶](#encode_stream_map_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L759)

```
encode_stream_map_entry :: proc(e: Encoder, key: Value, val: Value) -> Encode_Error {…}
```

### [encode\_to\_marshal\_err ¶](#encode_to_marshal_err) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L244)

```
encode_to_marshal_err :: proc(err: Encode_Error) -> Marshal_Error {…}
```

##### Related Procedure Groups

* [err\_conv](/core/encoding/cbor/#err_conv)

### [encode\_to\_marshal\_err\_p2 ¶](#encode_to_marshal_err_p2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L254)

```
encode_to_marshal_err_p2 :: proc(v: $T, v2: $T2, err: Encode_Error) -> ($$deferred_return, $$deferred_return, Marshal_Error) {…}
```

##### Related Procedure Groups

* [err\_conv](/core/encoding/cbor/#err_conv)

### [from\_json ¶](#from_json) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L479)

```
from_json :: proc(val: encoding_json.Value, allocator := context.allocator) -> (Value, runtime.Allocator_Error) #optional_ok {…}
```

 

Converts from JSON to CBOR.

Everything is copied to the given allocator, the passed in JSON value can be deleted after.

### [marshal\_into\_builder ¶](#marshal_into_builder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/marshal.odin#L66)

```
marshal_into_builder :: proc(b: ^strings.Builder, v: any, flags: bit_set[Encoder_Flag] = ENCODE_SMALL, temp_allocator := context.temp_allocator) -> Marshal_Error {…}
```

 

Marshals the given value into a CBOR byte stream written to the given builder.
See docs on the `marshal_into` proc group for more info.




##### Related Procedure Groups

* [marshal](/core/encoding/cbor/#marshal)
* [marshal\_into](/core/encoding/cbor/#marshal_into)

### [marshal\_into\_bytes ¶](#marshal_into_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/marshal.odin#L48)

```
marshal_into_bytes :: proc(v: any, flags: bit_set[Encoder_Flag] = ENCODE_SMALL, allocator := context.allocator, temp_allocator := context.temp_allocator, loc := #caller_location) -> (bytes: []u8, err: Marshal_Error) {…}
```

 

Marshals the given value into a CBOR byte stream (allocated using the given allocator).
See docs on the `marshal_into` proc group for more info.




##### Related Procedure Groups

* [marshal](/core/encoding/cbor/#marshal)
* [marshal\_into](/core/encoding/cbor/#marshal_into)

### [marshal\_into\_encoder ¶](#marshal_into_encoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/marshal.odin#L79)

```
marshal_into_encoder :: proc(e: Encoder, v: any) -> (err: Marshal_Error) {…}
```

 

Marshals the given value into a CBOR byte stream written to the given encoder.
See docs on the `marshal_into` proc group for more info.




##### Related Procedure Groups

* [marshal](/core/encoding/cbor/#marshal)
* [marshal\_into](/core/encoding/cbor/#marshal_into)

### [marshal\_into\_writer ¶](#marshal_into_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/marshal.odin#L72)

```
marshal_into_writer :: proc(w: io.Stream, v: any, flags: bit_set[Encoder_Flag] = ENCODE_SMALL, temp_allocator := context.temp_allocator) -> Marshal_Error {…}
```

 

Marshals the given value into a CBOR byte stream written to the given writer.
See docs on the `marshal_into` proc group for more info.




##### Related Procedure Groups

* [marshal](/core/encoding/cbor/#marshal)
* [marshal\_into](/core/encoding/cbor/#marshal_into)

### [negative\_u16\_to\_int ¶](#negative_u16_to_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L223)

```
negative_u16_to_int :: proc(u: Negative_U16) -> i32 {…}
```

##### Related Procedure Groups

* [negative\_to\_int](/core/encoding/cbor/#negative_to_int)

### [negative\_u32\_to\_int ¶](#negative_u32_to_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L227)

```
negative_u32_to_int :: proc(u: Negative_U32) -> i64 {…}
```

##### Related Procedure Groups

* [negative\_to\_int](/core/encoding/cbor/#negative_to_int)

### [negative\_u64\_to\_int ¶](#negative_u64_to_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L231)

```
negative_u64_to_int :: proc(u: Negative_U64) -> i128 {…}
```

##### Related Procedure Groups

* [negative\_to\_int](/core/encoding/cbor/#negative_to_int)

### [negative\_u8\_to\_int ¶](#negative_u8_to_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L219)

```
negative_u8_to_int :: proc(u: Negative_U8) -> i16 {…}
```

##### Related Procedure Groups

* [negative\_to\_int](/core/encoding/cbor/#negative_to_int)

### [tag\_register\_number ¶](#tag_register_number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L93)

```
tag_register_number :: proc "contextless" (impl: Tag_Implementation, nr: u64, id: string) {…}
```

 

Register a custom tag implementation to be used when marshalling that tag number or marshalling
a field with the struct tag `cbor_tag:"nr"`.

### [tag\_register\_type ¶](#tag_register_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L85)

```
tag_register_type :: proc "contextless" (impl: Tag_Implementation, nr: u64, type: typeid) {…}
```

 

Register a custom tag implementation to be used when marshalling that type and unmarshalling that tag number.

### [tags\_register\_defaults ¶](#tags_register_defaults) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L109)

```
tags_register_defaults :: proc "contextless" () {…}
```

 

Registers tags that have implementations provided by this package.
This is done by default and can be controlled with the `CBOR_INITIALIZE_DEFAULT_TAGS` define.

### [to\_diagnostic\_format\_string ¶](#to_diagnostic_format_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L324)

```
to_diagnostic_format_string :: proc(val: Value, padding: int = 0, allocator := context.allocator, loc := #caller_location) -> (string, runtime.Allocator_Error) #optional_ok {…}
```

 

Turns the given CBOR value into a human-readable string.
See docs on the proc group `diagnose` for more info.




##### Related Procedure Groups

* [to\_diagnostic\_format](/core/encoding/cbor/#to_diagnostic_format)

### [to\_diagnostic\_format\_writer ¶](#to_diagnostic_format_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L339)

```
to_diagnostic_format_writer :: proc(w: io.Stream, val: Value, padding: int = 0) -> io.Error {…}
```

 

Writes the given CBOR value into the writer as human-readable text.
See docs on the proc group `diagnose` for more info.




##### Related Procedure Groups

* [to\_diagnostic\_format](/core/encoding/cbor/#to_diagnostic_format)

### [to\_json ¶](#to_json) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L530)

```
to_json :: proc(val: Value, allocator := context.allocator) -> (encoding_json.Value, runtime.Allocator_Error) #optional_ok {…}
```

 

Converts from CBOR to JSON.

NOTE: overflow on integers or floats is not handled.

Everything is copied to the given allocator, the passed in CBOR value can be `destroy`'ed after.

If a CBOR map with non-string keys is encountered it is turned into an array of tuples.

### [unmarshal\_from\_bytes ¶](#unmarshal_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/unmarshal.odin#L56)

```
unmarshal_from_bytes :: proc(
	bytes:          []u8, 
	ptr:            ^$T, 
	flags:          bit_set[Decoder_Flag] = Decoder_Flags{}, 
	allocator := context.allocator, 
	temp_allocator := context.temp_allocator, 
	loc := #caller_location, 
) -> (err: Unmarshal_Error) {…}
```

 

Unmarshals from a slice of bytes, see docs on the proc group `Unmarshal` for more info.




##### Related Procedure Groups

* [unmarshal](/core/encoding/cbor/#unmarshal)

### [unmarshal\_from\_decoder ¶](#unmarshal_from_decoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/unmarshal.odin#L60)

```
unmarshal_from_decoder :: proc(d: Decoder, ptr: ^$T, allocator := context.allocator, temp_allocator := context.temp_allocator, loc := #caller_location) -> (err: Unmarshal_Error) {…}
```

### [unmarshal\_from\_reader ¶](#unmarshal_from_reader) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/unmarshal.odin#L35)

```
unmarshal_from_reader :: proc(
	r:              io.Stream, 
	ptr:            ^$T, 
	flags:          bit_set[Decoder_Flag] = Decoder_Flags{}, 
	allocator := context.allocator, 
	temp_allocator := context.temp_allocator, 
	loc := #caller_location, 
) -> (err: Unmarshal_Error) {…}
```

##### Related Procedure Groups

* [unmarshal](/core/encoding/cbor/#unmarshal)

### [unmarshal\_from\_string ¶](#unmarshal_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/unmarshal.odin#L44)

```
unmarshal_from_string :: proc(
	s:              string, 
	ptr:            ^$T, 
	flags:          bit_set[Decoder_Flag] = Decoder_Flags{}, 
	allocator := context.allocator, 
	temp_allocator := context.temp_allocator, 
	loc := #caller_location, 
) -> (err: Unmarshal_Error) {…}
```

 

Unmarshals from a string, see docs on the proc group `Unmarshal` for more info.




##### Related Procedure Groups

* [unmarshal](/core/encoding/cbor/#unmarshal)

## Procedure Groups

### [decode ¶](#decode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L94)

```
decode :: proc{
	decode_from_string,
	decode_from_reader,
	decode_from_decoder,
}
```

### [decode\_from ¶](#decode_from) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L89)

```
decode_from :: proc{
	decode_from_string,
	decode_from_reader,
	decode_from_decoder,
}
```

 

Decodes both deterministic and non-deterministic CBOR into a `Value` variant.

`Text` and `Bytes` can safely be cast to cstrings because of an added 0 byte.

Allocations are done using the given allocator,
*no* allocations are done on the `context.temp_allocator`.

A value can be (fully and recursively) deallocated using the `destroy` proc in this package.

Disable streaming/indeterminate lengths with the `.Disallow_Streaming` flag.

Shrink excess bytes in buffers and containers with the `.Shrink_Excess` flag.

Mark the input as trusted input with the `.Trusted_Input` flag, this turns off the safety feature
of not pre-allocating more than `max_pre_alloc` bytes before reading into the bytes. You should only
do this when you own both sides of the encoding and are sure there can't be malicious bytes used as
an input.

### [encode ¶](#encode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L203)

```
encode :: proc{
	encode_into_bytes,
	encode_into_builder,
	encode_into_writer,
	encode_into_encoder,
}
```

### [encode\_into ¶](#encode_into) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L197)

```
encode_into :: proc{
	encode_into_bytes,
	encode_into_builder,
	encode_into_writer,
	encode_into_encoder,
}
```

 

Encodes the CBOR value into a binary CBOR.

Flags can be used to control the output (mainly determinism, which coincidently affects size).

The default flags `ENCODE_SMALL` (`.Deterministic_Int_Size`, `.Deterministic_Float_Size`) will try
to put ints and floats into their smallest possible byte size without losing equality.

Adding the `.Self_Described_CBOR` flag will wrap the value in a tag that lets generic decoders know
the contents are CBOR from just reading the first byte.

Adding the `.Deterministic_Map_Sorting` flag will sort the encoded maps by the byte content of the
encoded key. This flag has a cost on performance and memory efficiency because all keys in a map
have to be precomputed, sorted and only then written to the output.

Empty flags will do nothing extra to the value.

The allocations for the `.Deterministic_Map_Sorting` flag are done using the given temp\_allocator.
but are followed by the necessary `delete` and `free` calls if the allocator supports them.
This is helpful when the CBOR size is so big that you don't want to collect all the temporary
allocations until the end.

### [encode\_stream\_array\_item ¶](#encode_stream_array_item) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin#L757)

```
encode_stream_array_item :: proc{
	encode_into_bytes,
	encode_into_builder,
	encode_into_writer,
	encode_into_encoder,
}
```

### [err\_conv ¶](#err_conv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L236)

```
err_conv :: proc{
	encode_to_marshal_err,
	encode_to_marshal_err_p2,
	decode_to_unmarshal_err,
	decode_to_unmarshal_err_p,
	decode_to_unmarshal_err_p2,
}
```

 

Utility for converting between the different errors when they are subsets of the other.

### [marshal ¶](#marshal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/marshal.odin#L44)

```
marshal :: proc{
	marshal_into_bytes,
	marshal_into_builder,
	marshal_into_writer,
	marshal_into_encoder,
}
```

### [marshal\_into ¶](#marshal_into) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/marshal.odin#L37)

```
marshal_into :: proc{
	marshal_into_bytes,
	marshal_into_builder,
	marshal_into_writer,
	marshal_into_encoder,
}
```

 

Marshal a value into binary CBOR.

Flags can be used to control the output (mainly determinism, which coincidently affects size).

The default flags `ENCODE_SMALL` (`.Deterministic_Int_Size`, `.Deterministic_Float_Size`) will try
to put ints and floats into their smallest possible byte size without losing equality.

Adding the `.Self_Described_CBOR` flag will wrap the value in a tag that lets generic decoders know
the contents are CBOR from just reading the first byte.

Adding the `.Deterministic_Map_Sorting` flag will sort the encoded maps by the byte content of the
encoded key. This flag has a cost on performance and memory efficiency because all keys in a map
have to be precomputed, sorted and only then written to the output.

Empty flags will do nothing extra to the value.

The allocations for the `.Deterministic_Map_Sorting` flag are done using the given `temp_allocator`.
but are followed by the necessary `delete` and `free` calls if the allocator supports them.
This is helpful when the CBOR size is so big that you don't want to collect all the temporary
allocations until the end.

### [negative\_to\_int ¶](#negative_to_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L212)

```
negative_to_int :: proc{
	negative_u8_to_int,
	negative_u16_to_int,
	negative_u32_to_int,
	negative_u64_to_int,
}
```

 

Turns the CBOR negative unsigned int type into a signed integer type.

### [to\_diagnostic\_format ¶](#to_diagnostic_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin#L317)

```
to_diagnostic_format :: proc{
	to_diagnostic_format_string,
	to_diagnostic_format_writer,
}
```

 

to\_diagnostic\_format either writes or returns a human-readable representation of the value,
optionally formatted, defined as the diagnostic format in [RFC 8949 Section 8](https://www.rfc-editor.org/rfc/rfc8949.html#name-diagnostic-notation).

Incidentally, if the CBOR does not contain any of the additional types defined on top of JSON
this will also be valid JSON.

### [unmarshal ¶](#unmarshal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/unmarshal.odin#L29)

```
unmarshal :: proc{
	unmarshal_from_reader,
	unmarshal_from_string,
	unmarshal_from_bytes,
}
```

 

Unmarshals the given CBOR into the given pointer using reflection.
Types that require allocation are allocated using the given allocator.

Some temporary allocations are done on the given `temp_allocator`, but, if you want to,
this can be set to a "normal" allocator, because the necessary `delete` and `free` calls are still made.
This is helpful when the CBOR size is so big that you don't want to collect all the temporary allocations until the end.

Disable streaming/indeterminate lengths with the `.Disallow_Streaming` flag.

Shrink excess bytes in buffers and containers with the `.Shrink_Excess` flag.

Mark the input as trusted input with the `.Trusted_Input` flag, this turns off the safety feature
of not pre-allocating more than `max_pre_alloc` bytes before reading into the bytes. You should only
do this when you own both sides of the encoding and are sure there can't be malicious bytes used as
an input.

## `#config` values

### [INITIALIZE\_DEFAULT\_TAGS ¶](#INITIALIZE_DEFAULT_TAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin#L100)

```
INITIALIZE_DEFAULT_TAGS :: #config(CBOR_INITIALIZE_DEFAULT_TAGS, !ODIN_DEFAULT_TO_PANIC_ALLOCATOR && !ODIN_DEFAULT_TO_NIL_ALLOCATOR)
```

 

Controls initialization of default tag implementations.

## Source Files

* [cbor.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/cbor.odin)
* [coding.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/coding.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/doc.odin)
* [marshal.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/marshal.odin)
* [tags.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/tags.odin)
* [unmarshal.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/cbor/unmarshal.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.327919200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Add](#Add)
    + [Array](#Array)
    + [Atom](#Atom)
    + [Bytes](#Bytes)
    + [Decode\_Data\_Error](#Decode_Data_Error)
    + [Decode\_Error](#Decode_Error)
    + [Decoder](#Decoder)
    + [Decoder\_Flag](#Decoder_Flag)
    + [Decoder\_Flags](#Decoder_Flags)
    + [Encode\_Data\_Error](#Encode_Data_Error)
    + [Encode\_Error](#Encode_Error)
    + [Encoder](#Encoder)
    + [Encoder\_Flag](#Encoder_Flag)
    + [Encoder\_Flags](#Encoder_Flags)
    + [Header](#Header)
    + [Major](#Major)
    + [Map](#Map)
    + [Map\_Entry](#Map_Entry)
    + [Marshal\_Data\_Error](#Marshal_Data_Error)
    + [Marshal\_Error](#Marshal_Error)
    + [Negative\_U16](#Negative_U16)
    + [Negative\_U32](#Negative_U32)
    + [Negative\_U64](#Negative_U64)
    + [Negative\_U8](#Negative_U8)
    + [Nil](#Nil)
    + [Simple](#Simple)
    + [Tag](#Tag)
    + [Tag\_Implementation](#Tag_Implementation)
    + [Tag\_Marshal\_Proc](#Tag_Marshal_Proc)
    + [Tag\_Number](#Tag_Number)
    + [Tag\_Unmarshal\_Proc](#Tag_Unmarshal_Proc)
    + [Text](#Text)
    + [Undefined](#Undefined)
    + [Unmarshal\_Data\_Error](#Unmarshal_Data_Error)
    + [Unmarshal\_Error](#Unmarshal_Error)
    + [Unsupported\_Type\_Error](#Unsupported_Type_Error)
    + [Value](#Value)
  * [Constants](#pkg-Constants)
    + [DEFAULT\_MAX\_PRE\_ALLOC](#DEFAULT_MAX_PRE_ALLOC)
    + [ENCODE\_FULLY\_DETERMINISTIC](#ENCODE_FULLY_DETERMINISTIC)
    + [ENCODE\_SMALL](#ENCODE_SMALL)
    + [INITIALIZE\_DEFAULT\_TAGS](#INITIALIZE_DEFAULT_TAGS)
    + [INITIAL\_STREAMED\_BYTES\_CAPACITY](#INITIAL_STREAMED_BYTES_CAPACITY)
    + [INITIAL\_STREAMED\_CONTAINER\_CAPACITY](#INITIAL_STREAMED_CONTAINER_CAPACITY)
    + [TAG\_BASE64\_ID](#TAG_BASE64_ID)
    + [TAG\_BASE64\_NR](#TAG_BASE64_NR)
    + [TAG\_CBOR\_ID](#TAG_CBOR_ID)
    + [TAG\_CBOR\_NR](#TAG_CBOR_NR)
    + [TAG\_EPOCH\_TIME\_ID](#TAG_EPOCH_TIME_ID)
    + [TAG\_EPOCH\_TIME\_NR](#TAG_EPOCH_TIME_NR)
    + [TAG\_NEGATIVE\_BIG\_NR](#TAG_NEGATIVE_BIG_NR)
    + [TAG\_OBJECT\_TYPE](#TAG_OBJECT_TYPE)
    + [TAG\_SELF\_DESCRIBED\_CBOR](#TAG_SELF_DESCRIBED_CBOR)
    + [TAG\_UNSIGNED\_BIG\_NR](#TAG_UNSIGNED_BIG_NR)
  * [Procedures](#pkg-Procedures)
    + [decode\_from\_decoder](#decode_from_decoder)
    + [decode\_from\_reader](#decode_from_reader)
    + [decode\_from\_string](#decode_from_string)
    + [decode\_to\_unmarshal\_err](#decode_to_unmarshal_err)
    + [decode\_to\_unmarshal\_err\_p](#decode_to_unmarshal_err_p)
    + [decode\_to\_unmarshal\_err\_p2](#decode_to_unmarshal_err_p2)
    + [destroy](#destroy)
    + [encode\_into\_builder](#encode_into_builder)
    + [encode\_into\_bytes](#encode_into_bytes)
    + [encode\_into\_encoder](#encode_into_encoder)
    + [encode\_into\_writer](#encode_into_writer)
    + [encode\_stream\_begin](#encode_stream_begin)
    + [encode\_stream\_end](#encode_stream_end)
    + [encode\_stream\_map\_entry](#encode_stream_map_entry)
    + [encode\_to\_marshal\_err](#encode_to_marshal_err)
    + [encode\_to\_marshal\_err\_p2](#encode_to_marshal_err_p2)
    + [from\_json](#from_json)
    + [marshal\_into\_builder](#marshal_into_builder)
    + [marshal\_into\_bytes](#marshal_into_bytes)
    + [marshal\_into\_encoder](#marshal_into_encoder)
    + [marshal\_into\_writer](#marshal_into_writer)
    + [negative\_u16\_to\_int](#negative_u16_to_int)
    + [negative\_u32\_to\_int](#negative_u32_to_int)
    + [negative\_u64\_to\_int](#negative_u64_to_int)
    + [negative\_u8\_to\_int](#negative_u8_to_int)
    + [tag\_register\_number](#tag_register_number)
    + [tag\_register\_type](#tag_register_type)
    + [tags\_register\_defaults](#tags_register_defaults)
    + [to\_diagnostic\_format\_string](#to_diagnostic_format_string)
    + [to\_diagnostic\_format\_writer](#to_diagnostic_format_writer)
    + [to\_json](#to_json)
    + [unmarshal\_from\_bytes](#unmarshal_from_bytes)
    + [unmarshal\_from\_decoder](#unmarshal_from_decoder)
    + [unmarshal\_from\_reader](#unmarshal_from_reader)
    + [unmarshal\_from\_string](#unmarshal_from_string)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [decode](#decode)
    + [decode\_from](#decode_from)
    + [encode](#encode)
    + [encode\_into](#encode_into)
    + [encode\_stream\_array\_item](#encode_stream_array_item)
    + [err\_conv](#err_conv)
    + [marshal](#marshal)
    + [marshal\_into](#marshal_into)
    + [negative\_to\_int](#negative_to_int)
    + [to\_diagnostic\_format](#to_diagnostic_format)
    + [unmarshal](#unmarshal)
  * [`#config` values](#pkg-`#config` values)
    + [INITIALIZE\_DEFAULT\_TAGS](#INITIALIZE_DEFAULT_TAGS)
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