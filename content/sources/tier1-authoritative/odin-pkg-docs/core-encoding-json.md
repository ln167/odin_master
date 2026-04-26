package encoding/json - pkg.odin-lang.org 






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



Current Package: *[encoding\_json](/core/encoding/json)*

  

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
3. [json](/core/encoding/json)

# package core:encoding/json [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Encoding and decoding JSON in strict `JSON`, [JSON5](https://json5.org/) and [BitSquid](https://bitsquid.blogspot.com/2009/10/simplified-json-notation.html) variants.

Using one of these `Specification`s.

```
JSON
	strict JSON
JSON5
	pure superset of JSON and valid JavaScript
	https://json5.org/

	* Object keys may be an ECMAScript 5.1 IdentifierName.
	* Objects may have a single trailing comma.
	* Arrays may have a single trailing comma.
	* Strings may be single quoted.
	* Strings may span multiple lines by escaping new line characters.
	* Strings may include character escapes
	* Numbers may be hexadecimal.
	* Numbers may have a leading or trailing decimal point.
	* Numbers may be IEEE 754 positive infinity, negative infinity, and NaN.
	* Numbers may begin with an explicit plus sign.
	* Single and multi-line comments are allowed.
	* Additional white space characters are allowed.

MJSON
	pure superset of JSON5, may not be valid JavaScript
	https://bitsquid.blogspot.com/2009/10/simplified-json-notation.html

	* All the same features as JSON5 plus extras.
	* Assume an object definition at the root level (no need to surround entire file with { } ).
	* Commas are optional, using comma insertion rules with newlines.
	* Quotes around object keys are optional if the keys are valid identifiers.
	* : can be replaced with =
```

## Index

Types (25)

* [Array](#Array)
* [Boolean](#Boolean)
* [Error](#Error)
* [Float](#Float)
* [Integer](#Integer)
* [Marshal\_Data\_Error](#Marshal_Data_Error)
* [Marshal\_Error](#Marshal_Error)
* [Marshal\_Options](#Marshal_Options)
* [Null](#Null)
* [Object](#Object)
* [Parser](#Parser)
* [Pos](#Pos)
* [Register\_User\_Marshaler\_Error](#Register_User_Marshaler_Error)
* [Register\_User\_Unmarshaler\_Error](#Register_User_Unmarshaler_Error)
* [Specification](#Specification)
* [String](#String)
* [Token](#Token)
* [Token\_Kind](#Token_Kind)
* [Tokenizer](#Tokenizer)
* [Unmarshal\_Data\_Error](#Unmarshal_Data_Error)
* [Unmarshal\_Error](#Unmarshal_Error)
* [Unsupported\_Type\_Error](#Unsupported_Type_Error)
* [User\_Marshaler](#User_Marshaler)
* [User\_Unmarshaler](#User_Unmarshaler)
* [Value](#Value)

Constants (1)

* [DEFAULT\_SPECIFICATION](#DEFAULT_SPECIFICATION)

Variables (0)

This section is empty.

Procedures (46)

* [advance\_token](#advance_token)
* [allow\_token](#allow_token)
* [clone\_string](#clone_string)
* [clone\_value](#clone_value)
* [destroy\_value](#destroy_value)
* [expect\_token](#expect_token)
* [get\_token](#get_token)
* [is\_valid](#is_valid)
* [is\_valid\_number](#is_valid_number)
* [is\_valid\_string\_literal](#is_valid_string_literal)
* [make\_parser](#make_parser)
* [make\_parser\_from\_string](#make_parser_from_string)
* [make\_tokenizer](#make_tokenizer)
* [marshal](#marshal)
* [marshal\_to\_builder](#marshal_to_builder)
* [marshal\_to\_writer](#marshal_to_writer)
* [next\_rune](#next_rune)
* [opt\_write\_comment](#opt_write_comment)
* [opt\_write\_end](#opt_write_end)
* [opt\_write\_indentation](#opt_write_indentation)
* [opt\_write\_iteration](#opt_write_iteration)
* [opt\_write\_key](#opt_write_key)
* [opt\_write\_start](#opt_write_start)
* [parse](#parse)
* [parse\_array](#parse_array)
* [parse\_colon](#parse_colon)
* [parse\_comma](#parse_comma)
* [parse\_object](#parse_object)
* [parse\_object\_body](#parse_object_body)
* [parse\_object\_key](#parse_object_key)
* [parse\_string](#parse_string)
* [parse\_value](#parse_value)
* [register\_user\_marshaler](#register_user_marshaler)
* [register\_user\_unmarshaler](#register_user_unmarshaler)
* [set\_user\_marshalers](#set_user_marshalers)
* [set\_user\_unmarshalers](#set_user_unmarshalers)
* [token\_end\_pos](#token_end_pos)
* [unmarshal](#unmarshal)
* [unmarshal\_any](#unmarshal_any)
* [unmarshal\_string](#unmarshal_string)
* [unquote\_string](#unquote_string)
* [validate\_array](#validate_array)
* [validate\_object](#validate_object)
* [validate\_object\_body](#validate_object_body)
* [validate\_object\_key](#validate_object_key)
* [validate\_value](#validate_value)

Procedure Groups (0)

This section is empty.

## Types

### [Array ¶](#Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L56)

```
Array :: distinct [dynamic]Value
```

### [Boolean ¶](#Boolean) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L54)

```
Boolean :: bool
```

##### Related Procedures With Parameters

* [is\_valid](/core/encoding/json/#is_valid)
* [make\_parser](/core/encoding/json/#make_parser)
* [make\_parser\_from\_string](/core/encoding/json/#make_parser_from_string)
* [make\_tokenizer](/core/encoding/json/#make_tokenizer)
* [opt\_write\_iteration](/core/encoding/json/#opt_write_iteration)
* [parse](/core/encoding/json/#parse)
* [parse\_string](/core/encoding/json/#parse_string)



##### Related Procedures With Returns

* [allow\_token](/core/encoding/json/#allow_token)
* [is\_valid\_number](/core/encoding/json/#is_valid_number)
* [is\_valid\_string\_literal](/core/encoding/json/#is_valid_string_literal)
* [parse\_comma](/core/encoding/json/#parse_comma)
* [validate\_array](/core/encoding/json/#validate_array)
* [validate\_object](/core/encoding/json/#validate_object)
* [validate\_object\_body](/core/encoding/json/#validate_object_body)
* [validate\_object\_key](/core/encoding/json/#validate_object_key)
* [validate\_value](/core/encoding/json/#validate_value)

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L69)

```
Error :: enum int {
	None, 
	EOF,                            // Not necessarily an error
	// Tokenizing Errors
	Illegal_Character, 
	Invalid_Number, 
	String_Not_Terminated, 
	Invalid_String, 
	Invalid_Rune, 
	// Parsing Errors
	Unexpected_Token, 
	Expected_String_For_Object_Key, 
	Duplicate_Object_Key, 
	Expected_Colon_After_Key, 
	// Allocating Errors
	Invalid_Allocator, 
	Out_Of_Memory, 
}
```

##### Related Procedures With Returns

* [advance\_token](/core/encoding/json/#advance_token)
* [clone\_string](/core/encoding/json/#clone_string)
* [expect\_token](/core/encoding/json/#expect_token)
* [get\_token](/core/encoding/json/#get_token)
* [parse](/core/encoding/json/#parse)
* [parse\_array](/core/encoding/json/#parse_array)
* [parse\_colon](/core/encoding/json/#parse_colon)
* [parse\_object](/core/encoding/json/#parse_object)
* [parse\_object\_body](/core/encoding/json/#parse_object_body)
* [parse\_object\_key](/core/encoding/json/#parse_object_key)
* [parse\_string](/core/encoding/json/#parse_string)
* [parse\_value](/core/encoding/json/#parse_value)
* [unquote\_string](/core/encoding/json/#unquote_string)

### [Float ¶](#Float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L53)

```
Float :: f64
```

### [Integer ¶](#Integer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L52)

```
Integer :: i64
```

### [Marshal\_Data\_Error ¶](#Marshal_Data_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L12)

```
Marshal_Data_Error :: enum int {
	None, 
	Unsupported_Type, 
}
```

### [Marshal\_Error ¶](#Marshal_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L17)

```
Marshal_Error :: union {
	Marshal_Data_Error, 
	io.Error, 
}
```

##### Related Procedures With Returns

* [marshal](/core/encoding/json/#marshal)
* [marshal\_to\_builder](/core/encoding/json/#marshal_to_builder)
* [marshal\_to\_writer](/core/encoding/json/#marshal_to_writer)

### [Marshal\_Options ¶](#Marshal_Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L23)

```
Marshal_Options :: struct {
	// output based on spec
	spec:                             Specification,
	// Use line breaks & tabs/spaces
	pretty:                           bool,
	// Use spaces for indentation instead of tabs
	use_spaces:                       bool,
	// Given use_spaces true, use this many spaces per indent level. 0 means 4 spaces.
	spaces:                           int,
	// Output uint as hex in JSON5 & MJSON
	write_uint_as_hex:                bool,
	// If spec is MJSON and this is true, then keys will be quoted.
	// 
	// WARNING: If your keys contain whitespace and this is false, then the
	// output will be bad.
	mjson_keys_use_quotes:            bool,
	// If spec is MJSON and this is true, then use '=' as delimiter between
	// keys and values, otherwise ':' is used.
	mjson_keys_use_equal_sign:        bool,
	// When outputting a map, sort the output by key.
	// 
	// NOTE: This will temp allocate and sort a list for each map.
	sort_maps_by_key:                 bool,
	// Output enum value's name instead of its underlying value.
	// 
	// NOTE: If a name isn't found it'll use the underlying value.
	use_enum_names:                   bool,
	// Internal state
	indentation:                      int,
	mjson_skipped_first_braces_start: bool,
	mjson_skipped_first_braces_end:   bool,
}
```

 

careful with MJSON maps & non quotes usage as keys with whitespace will lead to bad results




##### Related Procedures With Parameters

* [marshal](/core/encoding/json/#marshal)
* [marshal\_to\_builder](/core/encoding/json/#marshal_to_builder)
* [marshal\_to\_writer](/core/encoding/json/#marshal_to_writer)
* [opt\_write\_comment](/core/encoding/json/#opt_write_comment)
* [opt\_write\_end](/core/encoding/json/#opt_write_end)
* [opt\_write\_indentation](/core/encoding/json/#opt_write_indentation)
* [opt\_write\_iteration](/core/encoding/json/#opt_write_iteration)
* [opt\_write\_key](/core/encoding/json/#opt_write_key)
* [opt\_write\_start](/core/encoding/json/#opt_write_start)

### [Null ¶](#Null) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L51)

```
Null :: distinct rawptr
```

### [Object ¶](#Object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L57)

```
Object :: distinct map[string]Value
```

##### Related Procedures With Returns

* [parse\_object\_body](/core/encoding/json/#parse_object_body)

### [Parser ¶](#Parser) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L8)

```
Parser :: struct {
	tok:            Tokenizer,
	prev_token:     Token,
	curr_token:     Token,
	spec:           Specification,
	allocator:      runtime.Allocator,
	parse_integers: bool,
}
```

##### Related Procedures With Parameters

* [advance\_token](/core/encoding/json/#advance_token)
* [allow\_token](/core/encoding/json/#allow_token)
* [expect\_token](/core/encoding/json/#expect_token)
* [parse\_array](/core/encoding/json/#parse_array)
* [parse\_colon](/core/encoding/json/#parse_colon)
* [parse\_comma](/core/encoding/json/#parse_comma)
* [parse\_object](/core/encoding/json/#parse_object)
* [parse\_object\_body](/core/encoding/json/#parse_object_body)
* [parse\_object\_key](/core/encoding/json/#parse_object_key)
* [parse\_value](/core/encoding/json/#parse_value)
* [validate\_array](/core/encoding/json/#validate_array)
* [validate\_object](/core/encoding/json/#validate_object)
* [validate\_object\_body](/core/encoding/json/#validate_object_body)
* [validate\_object\_key](/core/encoding/json/#validate_object_key)
* [validate\_value](/core/encoding/json/#validate_value)



##### Related Procedures With Returns

* [make\_parser](/core/encoding/json/#make_parser)
* [make\_parser\_from\_string](/core/encoding/json/#make_parser_from_string)

### [Pos ¶](#Pos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L5)

```
Pos :: struct {
	offset: int,
	line:   int,
	column: int,
}
```

##### Related Procedures With Returns

* [token\_end\_pos](/core/encoding/json/#token_end_pos)

### [Register\_User\_Marshaler\_Error ¶](#Register_User_Marshaler_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L67)

```
Register_User_Marshaler_Error :: enum int {
	None, 
	No_User_Marshaler, 
	Marshaler_Previously_Found, 
}
```

##### Related Procedures With Returns

* [register\_user\_marshaler](/core/encoding/json/#register_user_marshaler)

### [Register\_User\_Unmarshaler\_Error ¶](#Register_User_Unmarshaler_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L31)

```
Register_User_Unmarshaler_Error :: enum int {
	None, 
	No_User_Unmarshaler, 
	Unmarshaler_Previously_Found, 
}
```

##### Related Procedures With Returns

* [register\_user\_unmarshaler](/core/encoding/json/#register_user_unmarshaler)

### [Specification ¶](#Specification) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L38)

```
Specification :: enum int {
	JSON, 
	JSON5,        // https://json5.org/
	SJSON,        // https://bitsquid.blogspot.com/2009/10/simplified-json-notation.html
	Bitsquid = 2, 
	MJSON    = 2, 
}
```

##### Related Procedures With Parameters

* [is\_valid](/core/encoding/json/#is_valid)
* [is\_valid\_number](/core/encoding/json/#is_valid_number)
* [is\_valid\_string\_literal](/core/encoding/json/#is_valid_string_literal)
* [make\_parser](/core/encoding/json/#make_parser)
* [make\_parser\_from\_string](/core/encoding/json/#make_parser_from_string)
* [make\_tokenizer](/core/encoding/json/#make_tokenizer)
* [parse](/core/encoding/json/#parse)
* [parse\_string](/core/encoding/json/#parse_string)
* [unmarshal](/core/encoding/json/#unmarshal)
* [unmarshal\_any](/core/encoding/json/#unmarshal_any)
* [unmarshal\_string](/core/encoding/json/#unmarshal_string)
* [unquote\_string](/core/encoding/json/#unquote_string)

##### Related Constants

* [DEFAULT\_SPECIFICATION](/core/encoding/json/#DEFAULT_SPECIFICATION)

### [String ¶](#String) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L55)

```
String :: string
```

##### Related Procedures With Parameters

* [clone\_string](/core/encoding/json/#clone_string)
* [is\_valid\_number](/core/encoding/json/#is_valid_number)
* [is\_valid\_string\_literal](/core/encoding/json/#is_valid_string_literal)
* [make\_parser\_from\_string](/core/encoding/json/#make_parser_from_string)
* [make\_tokenizer](/core/encoding/json/#make_tokenizer)
* [opt\_write\_comment](/core/encoding/json/#opt_write_comment)
* [opt\_write\_key](/core/encoding/json/#opt_write_key)
* [parse\_string](/core/encoding/json/#parse_string)
* [unmarshal\_string](/core/encoding/json/#unmarshal_string)



##### Related Procedures With Returns

* [parse\_object\_key](/core/encoding/json/#parse_object_key)
* [unquote\_string](/core/encoding/json/#unquote_string)

### [Token ¶](#Token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L11)

```
Token :: struct {
	using pos: Pos,
	kind: Token_Kind,
	text: string,
}
```

##### Related Procedures With Parameters

* [token\_end\_pos](/core/encoding/json/#token_end_pos)
* [unquote\_string](/core/encoding/json/#unquote_string)



##### Related Procedures With Returns

* [advance\_token](/core/encoding/json/#advance_token)
* [get\_token](/core/encoding/json/#get_token)

### [Token\_Kind ¶](#Token_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L17)

```
Token_Kind :: enum int {
	Invalid, 
	EOF, 
	Null, 
	False, 
	True, 
	Infinity, 
	NaN, 
	Ident, 
	Integer, 
	Float, 
	String, 
	Colon, 
	Comma, 
	Open_Brace, 
	Close_Brace, 
	Open_Bracket, 
	Close_Bracket, 
}
```

##### Related Procedures With Parameters

* [allow\_token](/core/encoding/json/#allow_token)
* [expect\_token](/core/encoding/json/#expect_token)
* [parse\_object\_body](/core/encoding/json/#parse_object_body)
* [validate\_object\_body](/core/encoding/json/#validate_object_body)

### [Tokenizer ¶](#Tokenizer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L44)

```
Tokenizer :: struct {
	using pos:        Pos,
	data:             string,
	r:                rune,
	// current rune
	w:                int,
	// current rune width in bytes
	curr_line_offset: int,
	spec:             Specification,
	parse_integers:   bool,
	insert_comma:     bool,
}
```

##### Related Procedures With Parameters

* [get\_token](/core/encoding/json/#get_token)
* [next\_rune](/core/encoding/json/#next_rune)



##### Related Procedures With Returns

* [make\_tokenizer](/core/encoding/json/#make_tokenizer)

### [Unmarshal\_Data\_Error ¶](#Unmarshal_Data_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L11)

```
Unmarshal_Data_Error :: enum int {
	Invalid_Data, 
	Invalid_Parameter, 
	Non_Pointer_Parameter, 
	Multiple_Use_Field, 
}
```

### [Unmarshal\_Error ¶](#Unmarshal_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L23)

```
Unmarshal_Error :: union {
	Error, 
	Unmarshal_Data_Error, 
	Unsupported_Type_Error, 
}
```

##### Related Procedures With Returns

* [unmarshal](/core/encoding/json/#unmarshal)
* [unmarshal\_any](/core/encoding/json/#unmarshal_any)
* [unmarshal\_string](/core/encoding/json/#unmarshal_string)

### [Unsupported\_Type\_Error ¶](#Unsupported_Type_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L18)

```
Unsupported_Type_Error :: struct {
	id:    typeid,
	token: Token,
}
```

### [User\_Marshaler ¶](#User_Marshaler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L65)

```
User_Marshaler :: proc(w: io.Stream, v: any, opt: ^Marshal_Options) -> Marshal_Error
```

##### Related Procedures With Parameters

* [register\_user\_marshaler](/core/encoding/json/#register_user_marshaler)

### [User\_Unmarshaler ¶](#User_Unmarshaler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L29)

```
User_Unmarshaler :: proc(p: ^Parser, v: any) -> Unmarshal_Error
```

##### Related Procedures With Parameters

* [register\_user\_unmarshaler](/core/encoding/json/#register_user_unmarshaler)

### [Value ¶](#Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L59)

```
Value :: union {
	Null, 
	i64, 
	f64, 
	bool, 
	string, 
	Array, 
	Object, 
}
```

##### Related Procedures With Parameters

* [clone\_value](/core/encoding/json/#clone_value)
* [destroy\_value](/core/encoding/json/#destroy_value)



##### Related Procedures With Returns

* [parse](/core/encoding/json/#parse)
* [parse\_array](/core/encoding/json/#parse_array)
* [parse\_object](/core/encoding/json/#parse_object)
* [parse\_string](/core/encoding/json/#parse_string)
* [parse\_value](/core/encoding/json/#parse_value)

## Constants

### [DEFAULT\_SPECIFICATION ¶](#DEFAULT_SPECIFICATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L49)

```
DEFAULT_SPECIFICATION :: Specification.JSON5
```

## Variables

This section is empty.

## Procedures

### [advance\_token ¶](#advance_token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L60)

```
advance_token :: proc(p: ^Parser) -> (Token, Error) {…}
```

### [allow\_token ¶](#allow_token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L68)

```
allow_token :: proc(p: ^Parser, kind: Token_Kind) -> bool {…}
```

### [clone\_string ¶](#clone_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L220)

```
clone_string :: proc(s: string, allocator: runtime.Allocator, loc := #caller_location) -> (str: string, err: Error) {…}
```

### [clone\_value ¶](#clone_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L115)

```
clone_value :: proc(value: Value, allocator := context.allocator) -> Value {…}
```

### [destroy\_value ¶](#destroy_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin#L96)

```
destroy_value :: proc(value: Value, allocator := context.allocator, loc := #caller_location) {…}
```

### [expect\_token ¶](#expect_token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L76)

```
expect_token :: proc(p: ^Parser, kind: Token_Kind) -> Error {…}
```

### [get\_token ¶](#get_token) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L81)

```
get_token :: proc(t: ^Tokenizer) -> (token: Token, err: Error) {…}
```

### [is\_valid ¶](#is_valid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/validator.odin#L6)

```
is_valid :: proc(data: []u8, spec: Specification = DEFAULT_SPECIFICATION, parse_integers: bool = false) -> bool {…}
```

 

NOTE(bill): is\_valid will not check for duplicate keys

### [is\_valid\_number ¶](#is_valid_number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L388)

```
is_valid_number :: proc(str: string, spec: Specification) -> bool {…}
```

### [is\_valid\_string\_literal ¶](#is_valid_string_literal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L476)

```
is_valid_string_literal :: proc(str: string, spec: Specification) -> bool {…}
```

### [make\_parser ¶](#make_parser) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L17)

```
make_parser :: proc(data: []u8, spec: Specification = DEFAULT_SPECIFICATION, parse_integers: bool = false, allocator := context.allocator) -> Parser {…}
```

### [make\_parser\_from\_string ¶](#make_parser_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L20)

```
make_parser_from_string :: proc(data: string, spec: Specification = DEFAULT_SPECIFICATION, parse_integers: bool = false, allocator := context.allocator) -> Parser {…}
```

### [make\_tokenizer ¶](#make_tokenizer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L57)

```
make_tokenizer :: proc(data: string, spec: Specification = DEFAULT_SPECIFICATION, parse_integers: bool = false) -> Tokenizer {…}
```

### [marshal ¶](#marshal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L137)

```
marshal :: proc(v: any, opt: Marshal_Options = {}, allocator := context.allocator, loc := #caller_location) -> (data: []u8, err: Marshal_Error) {…}
```

### [marshal\_to\_builder ¶](#marshal_to_builder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L156)

```
marshal_to_builder :: proc(b: ^strings.Builder, v: any, opt: ^Marshal_Options) -> Marshal_Error {…}
```

### [marshal\_to\_writer ¶](#marshal_to_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L160)

```
marshal_to_writer :: proc(w: io.Stream, v: any, opt: ^Marshal_Options) -> (err: Marshal_Error) {…}
```

### [next\_rune ¶](#next_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin#L66)

```
next_rune :: proc(t: ^Tokenizer) -> rune {…}
```

### [opt\_write\_comment ¶](#opt_write_comment) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L632)

```
opt_write_comment :: proc(w: io.Stream, opt: ^Marshal_Options, comment: ^string) -> (err: io.Error) {…}
```

 

Newlines are split into multiple comment lines

### [opt\_write\_end ¶](#opt_write_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L726)

```
opt_write_end :: proc(w: io.Stream, opt: ^Marshal_Options, c: u8) -> (err: io.Error) {…}
```

 

decrease indent, write spacing and insert end byte

### [opt\_write\_indentation ¶](#opt_write_indentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L744)

```
opt_write_indentation :: proc(w: io.Stream, opt: ^Marshal_Options) -> (err: io.Error) {…}
```

 

writes current indentation level based on options

### [opt\_write\_iteration ¶](#opt_write_iteration) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L695)

```
opt_write_iteration :: proc(w: io.Stream, opt: ^Marshal_Options, first_iteration: bool) -> (err: io.Error) {…}
```

 

insert comma separation and write indentations

### [opt\_write\_key ¶](#opt_write_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L652)

```
opt_write_key :: proc(w: io.Stream, opt: ^Marshal_Options, name: string) -> (err: io.Error) {…}
```

 

write key as quoted string or with optional quotes in mjson

### [opt\_write\_start ¶](#opt_write_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L676)

```
opt_write_start :: proc(w: io.Stream, opt: ^Marshal_Options, c: u8) -> (err: io.Error) {…}
```

 

insert start byte and increase indentation on pretty

### [parse ¶](#parse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L31)

```
parse :: proc(data: []u8, spec: Specification = DEFAULT_SPECIFICATION, parse_integers: bool = false, allocator := context.allocator, loc := #caller_location) -> (Value, Error) {…}
```

### [parse\_array ¶](#parse_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L179)

```
parse_array :: proc(p: ^Parser, loc := #caller_location) -> (value: Value, err: Error) {…}
```

### [parse\_colon ¶](#parse_colon) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L86)

```
parse_colon :: proc(p: ^Parser) -> (err: Error) {…}
```

### [parse\_comma ¶](#parse_comma) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L94)

```
parse_comma :: proc(p: ^Parser) -> (do_break: bool) {…}
```

### [parse\_object ¶](#parse_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L285)

```
parse_object :: proc(p: ^Parser, loc := #caller_location) -> (value: Value, err: Error) {…}
```

### [parse\_object\_body ¶](#parse_object_body) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L245)

```
parse_object_body :: proc(p: ^Parser, end_token: Token_Kind, loc := #caller_location) -> (obj: Object, err: Error) {…}
```

### [parse\_object\_key ¶](#parse_object_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L231)

```
parse_object_key :: proc(p: ^Parser, key_allocator: runtime.Allocator, loc := #caller_location) -> (key: string, err: Error) {…}
```

### [parse\_string ¶](#parse_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L35)

```
parse_string :: proc(data: string, spec: Specification = DEFAULT_SPECIFICATION, parse_integers: bool = false, allocator := context.allocator, loc := #caller_location) -> (Value, Error) {…}
```

### [parse\_value ¶](#parse_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L109)

```
parse_value :: proc(p: ^Parser, loc := #caller_location) -> (value: Value, err: Error) {…}
```

### [register\_user\_marshaler ¶](#register_user_marshaler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L126)

```
register_user_marshaler :: proc(id: typeid, marshaler: User_Marshaler) -> Register_User_Marshaler_Error {…}
```

 

Registers a user-defined marshaler for a specific typeid

**Inputs:**  
id: The typeid of the custom type.
formatter: The User\_Marshaler function for the custom type.

**Returns:**  
A Register\_User\_Marshaler\_Error value indicating the success or failure of the operation.

WARNING: set\_user\_marshalers must be called before using this procedure.

### [register\_user\_unmarshaler ¶](#register_user_unmarshaler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L100)

```
register_user_unmarshaler :: proc(id: typeid, unmarshaler: User_Unmarshaler) -> Register_User_Unmarshaler_Error {…}
```

 

Registers a user-defined unmarshaler for a specific `typeid`.

WARNING: set\_user\_unmarshalers must be called before using this procedure.

**Inputs:**  
id: The `typeid` of the custom type.
unmarshaler: The `User_Unmarshaler` function for the custom type.

**Example:**

```
import "core:fmt"
import "core:encoding/json"
import "core:strconv"

// Custom Unmarshaler for `int`
some_unmarshaler :: proc(p: ^json.Parser, v: any) -> json.Unmarshal_Error {
	token := p.curr_token.text
	i, ok := strconv.parse_i64_of_base(token, 2)
	if !ok {
		return .Invalid_Data
	}

	(^int)(v.data)^ = int(i)

	json.advance_token(p)
	return nil
}

register_user_unmarshaler_example :: proc() {
	// Ensure the `json._user_unmarshalers` map is initialized.
	json.set_user_unmarshalers(new(map[typeid]json.User_Unmarshaler))
	reg_err := json.register_user_unmarshaler(typeid_of(int), some_unmarshaler)
	assert(reg_err == .None)

	data := `{"value":101010}`
	SomeType :: struct {
		value: int,
	}
	y: SomeType

	unmarshal_err := json.unmarshal(transmute([]byte)data, &y)
	fmt.println(y, unmarshal_err)
}
```

**Output:**

```
SomeType{value = 42} nil
```

### [set\_user\_marshalers ¶](#set_user_marshalers) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin#L111)

```
set_user_marshalers :: proc(m: ^map[typeid]User_Marshaler) {…}
```

 

Sets user-defined marshalers for custom json marshaling of specific types

**Inputs:**  
m: A pointer to a map of typeids to User\_Marshaler procs.

NOTE: Must be called before using register\_user\_marshaler.

### [set\_user\_unmarshalers ¶](#set_user_unmarshalers) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L48)

```
set_user_unmarshalers :: proc(m: ^map[typeid]User_Unmarshaler) {…}
```

 

Sets user-defined unmarshalers for custom json unmarshaling of specific types

**Inputs:**  
m: A pointer to a map of typeids to User\_Unmarshaler procs.

NOTE: Must be called before using `register_user_unmarshaler`.

### [token\_end\_pos ¶](#token_end_pos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L54)

```
token_end_pos :: proc(tok: Token) -> Pos {…}
```

### [unmarshal ¶](#unmarshal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L148)

```
unmarshal :: proc(data: []u8, ptr: ^$T, spec: Specification = DEFAULT_SPECIFICATION, allocator := context.allocator) -> Unmarshal_Error {…}
```

### [unmarshal\_any ¶](#unmarshal_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L111)

```
unmarshal_any :: proc(data: []u8, v: any, spec: Specification = DEFAULT_SPECIFICATION, allocator := context.allocator) -> Unmarshal_Error {…}
```

### [unmarshal\_string ¶](#unmarshal_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin#L152)

```
unmarshal_string :: proc(data: string, ptr: ^$T, spec: Specification = DEFAULT_SPECIFICATION, allocator := context.allocator) -> Unmarshal_Error {…}
```

### [unquote\_string ¶](#unquote_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin#L294)

```
unquote_string :: proc(token: Token, spec: Specification, allocator := context.allocator, loc := #caller_location) -> (value: string, err: Error) {…}
```

 

IMPORTANT NOTE(bill): unquote\_string assumes a mostly valid string

### [validate\_array ¶](#validate_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/validator.odin#L64)

```
validate_array :: proc(p: ^Parser) -> bool {…}
```

### [validate\_object ¶](#validate_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/validator.odin#L51)

```
validate_object :: proc(p: ^Parser) -> bool {…}
```

### [validate\_object\_body ¶](#validate_object_body) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/validator.odin#L34)

```
validate_object_body :: proc(p: ^Parser, end_token: Token_Kind) -> bool {…}
```

### [validate\_object\_key ¶](#validate_object_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/validator.odin#L24)

```
validate_object_key :: proc(p: ^Parser) -> bool {…}
```

### [validate\_value ¶](#validate_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/validator.odin#L86)

```
validate_value :: proc(p: ^Parser) -> bool {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [marshal.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/marshal.odin)
* [parser.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/parser.odin)
* [tokenizer.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/tokenizer.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/types.odin)
* [unmarshal.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/unmarshal.odin)
* [validator.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/json/validator.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.373784900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Array](#Array)
    + [Boolean](#Boolean)
    + [Error](#Error)
    + [Float](#Float)
    + [Integer](#Integer)
    + [Marshal\_Data\_Error](#Marshal_Data_Error)
    + [Marshal\_Error](#Marshal_Error)
    + [Marshal\_Options](#Marshal_Options)
    + [Null](#Null)
    + [Object](#Object)
    + [Parser](#Parser)
    + [Pos](#Pos)
    + [Register\_User\_Marshaler\_Error](#Register_User_Marshaler_Error)
    + [Register\_User\_Unmarshaler\_Error](#Register_User_Unmarshaler_Error)
    + [Specification](#Specification)
    + [String](#String)
    + [Token](#Token)
    + [Token\_Kind](#Token_Kind)
    + [Tokenizer](#Tokenizer)
    + [Unmarshal\_Data\_Error](#Unmarshal_Data_Error)
    + [Unmarshal\_Error](#Unmarshal_Error)
    + [Unsupported\_Type\_Error](#Unsupported_Type_Error)
    + [User\_Marshaler](#User_Marshaler)
    + [User\_Unmarshaler](#User_Unmarshaler)
    + [Value](#Value)
  * [Constants](#pkg-Constants)
    + [DEFAULT\_SPECIFICATION](#DEFAULT_SPECIFICATION)
  * [Procedures](#pkg-Procedures)
    + [advance\_token](#advance_token)
    + [allow\_token](#allow_token)
    + [clone\_string](#clone_string)
    + [clone\_value](#clone_value)
    + [destroy\_value](#destroy_value)
    + [expect\_token](#expect_token)
    + [get\_token](#get_token)
    + [is\_valid](#is_valid)
    + [is\_valid\_number](#is_valid_number)
    + [is\_valid\_string\_literal](#is_valid_string_literal)
    + [make\_parser](#make_parser)
    + [make\_parser\_from\_string](#make_parser_from_string)
    + [make\_tokenizer](#make_tokenizer)
    + [marshal](#marshal)
    + [marshal\_to\_builder](#marshal_to_builder)
    + [marshal\_to\_writer](#marshal_to_writer)
    + [next\_rune](#next_rune)
    + [opt\_write\_comment](#opt_write_comment)
    + [opt\_write\_end](#opt_write_end)
    + [opt\_write\_indentation](#opt_write_indentation)
    + [opt\_write\_iteration](#opt_write_iteration)
    + [opt\_write\_key](#opt_write_key)
    + [opt\_write\_start](#opt_write_start)
    + [parse](#parse)
    + [parse\_array](#parse_array)
    + [parse\_colon](#parse_colon)
    + [parse\_comma](#parse_comma)
    + [parse\_object](#parse_object)
    + [parse\_object\_body](#parse_object_body)
    + [parse\_object\_key](#parse_object_key)
    + [parse\_string](#parse_string)
    + [parse\_value](#parse_value)
    + [register\_user\_marshaler](#register_user_marshaler)
    + [register\_user\_unmarshaler](#register_user_unmarshaler)
    + [set\_user\_marshalers](#set_user_marshalers)
    + [set\_user\_unmarshalers](#set_user_unmarshalers)
    + [token\_end\_pos](#token_end_pos)
    + [unmarshal](#unmarshal)
    + [unmarshal\_any](#unmarshal_any)
    + [unmarshal\_string](#unmarshal_string)
    + [unquote\_string](#unquote_string)
    + [validate\_array](#validate_array)
    + [validate\_object](#validate_object)
    + [validate\_object\_body](#validate_object_body)
    + [validate\_object\_key](#validate_object_key)
    + [validate\_value](#validate_value)
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