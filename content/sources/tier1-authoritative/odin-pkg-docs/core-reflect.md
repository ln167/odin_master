package reflect - pkg.odin-lang.org 






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



Current Package: *[reflect](/core/reflect)*

  

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
2. [reflect](/core/reflect)

# package core:reflect [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Utility procedures and types to perform runtime type introspection/reflection (`RTTI`).

WARNING! THIS IS ADVANCED BEHAVIOUR FOR ODIN! THIS SHOULD NOT BE USED BY BEGINNERS TO ODIN!

This package is only to be used by individuals who know exactly how the RTTI works as well as EXACTLY how `any` works.
Especially since `any` can be unintuitive in its use to many, it can be dangerous to use. It is highly recommend that you **do not**
use `any` unless you know exactly what you are doing.

RTTI is an extremely powerful tool which should only be used when absolutely necessary (such runtime-type-safe formatted printing).

#### The Type System of Odin

It is important to understand how the type systems works in Odin before using any RTTI. A good example of this is Odin's `distinct` type system.
In Odin, `distinct` types are represented by `Type_Info_Named`. A named struct is a `Type_Info_Named` which then points to a `Type_Info_Struct`.
This means you must use something like `type_info_base` to restrict the `Type_Info_Named` aspect and get the base-type directly. Doing a type-assertion
on the variant will not work as (incorrectly) expected without doing this.

#### Advanced Information of How `any` Works

An overview of how `any` works:

An `any` type can reference any data type. It is functionally equivalent to `struct {data: rawptr, id: typeid}` with extra semantics on
how assignment and type assertion works.

This is commonly used to construct runtime-type-safe printing, such as in `core:fmt`.
The use of `any` outside of this is heavily discourage and should be only used by people who FULLY understand its semantics.

The `any` value is only valid as long as the underlying data is still valid. Passing a literal to an `any` will allocate the literal in
the current stack frame.

**Example:**

```
x: int = 123
a: any = x
// equivalent to
a: any
a.data = &x
a.id   = typeid_of(type_of(x))
// With literals
v: any = 123
// equivalent to
v: any
_tmp: int = 123
v.data = &_tmp
v.id   = typeid_of(type_of(_tmp))
```

`any` is a topologically-dual to a `union` in terms of its usage. Both support assignments of differing types
(`any` being open to any type, `union` being closed to a specific set of types), type assertions (`x.(T)`), and `switch in`.
The main internal difference is how the memory is stored. `any` being open is a pointer+typeid, a `union`
is a blob+tag. A `union` does not need to store a `typeid` because it is a closed ABI-consistent set of variant types.

## Index

Types (36)

* [Bit\_Field](#Bit_Field)
* [Enum\_Field](#Enum_Field)
* [Struct\_Field](#Struct_Field)
* [Struct\_Field\_Count\_Method](#Struct_Field_Count_Method)
* [Struct\_Tag](#Struct_Tag)
* [Type\_Info](#Type_Info)
* [Type\_Info\_Any](#Type_Info_Any)
* [Type\_Info\_Array](#Type_Info_Array)
* [Type\_Info\_Bit\_Field](#Type_Info_Bit_Field)
* [Type\_Info\_Bit\_Set](#Type_Info_Bit_Set)
* [Type\_Info\_Boolean](#Type_Info_Boolean)
* [Type\_Info\_Complex](#Type_Info_Complex)
* [Type\_Info\_Dynamic\_Array](#Type_Info_Dynamic_Array)
* [Type\_Info\_Enum](#Type_Info_Enum)
* [Type\_Info\_Enum\_Value](#Type_Info_Enum_Value)
* [Type\_Info\_Enumerated\_Array](#Type_Info_Enumerated_Array)
* [Type\_Info\_Fixed\_Capacity\_Dynamic\_Array](#Type_Info_Fixed_Capacity_Dynamic_Array)
* [Type\_Info\_Float](#Type_Info_Float)
* [Type\_Info\_Integer](#Type_Info_Integer)
* [Type\_Info\_Map](#Type_Info_Map)
* [Type\_Info\_Matrix](#Type_Info_Matrix)
* [Type\_Info\_Multi\_Pointer](#Type_Info_Multi_Pointer)
* [Type\_Info\_Named](#Type_Info_Named)
* [Type\_Info\_Parameters](#Type_Info_Parameters)
* [Type\_Info\_Pointer](#Type_Info_Pointer)
* [Type\_Info\_Procedure](#Type_Info_Procedure)
* [Type\_Info\_Quaternion](#Type_Info_Quaternion)
* [Type\_Info\_Rune](#Type_Info_Rune)
* [Type\_Info\_Simd\_Vector](#Type_Info_Simd_Vector)
* [Type\_Info\_Slice](#Type_Info_Slice)
* [Type\_Info\_Soa\_Pointer](#Type_Info_Soa_Pointer)
* [Type\_Info\_String](#Type_Info_String)
* [Type\_Info\_Struct](#Type_Info_Struct)
* [Type\_Info\_Type\_Id](#Type_Info_Type_Id)
* [Type\_Info\_Union](#Type_Info_Union)
* [Type\_Kind](#Type_Kind)

Constants (1)

* [DEFAULT\_EQUAL\_MAX\_RECURSION\_LEVEL](#DEFAULT_EQUAL_MAX_RECURSION_LEVEL)

Variables (0)

This section is empty.

Procedures (112)

* [align\_of\_typeid](#align_of_typeid)
* [any\_base](#any_base)
* [any\_core](#any_core)
* [any\_data](#any_data)
* [are\_types\_identical](#are_types_identical)
* [as\_bool](#as_bool)
* [as\_bytes](#as_bytes)
* [as\_f64](#as_f64)
* [as\_i64](#as_i64)
* [as\_int](#as_int)
* [as\_pointer](#as_pointer)
* [as\_raw\_data](#as_raw_data)
* [as\_string](#as_string)
* [as\_string16](#as_string16)
* [as\_u64](#as_u64)
* [as\_uint](#as_uint)
* [backing\_type\_kind](#backing_type_kind)
* [bit\_field\_names](#bit_field_names)
* [bit\_field\_offsets](#bit_field_offsets)
* [bit\_field\_sizes](#bit_field_sizes)
* [bit\_field\_tags](#bit_field_tags)
* [bit\_field\_types](#bit_field_types)
* [bit\_fields\_zipped](#bit_fields_zipped)
* [bit\_set\_is\_big\_endian](#bit_set_is_big_endian)
* [capacity](#capacity)
* [default\_map\_hash\_by\_ptr](#default_map_hash_by_ptr)
* [deref](#deref)
* [enum\_field\_names](#enum_field_names)
* [enum\_field\_values](#enum_field_values)
* [enum\_fields\_zipped](#enum_fields_zipped)
* [enum\_from\_name](#enum_from_name)
* [enum\_from\_name\_any](#enum_from_name_any)
* [enum\_name\_from\_value](#enum_name_from_value)
* [enum\_name\_from\_value\_any](#enum_name_from_value_any)
* [enum\_string](#enum_string)
* [enum\_value\_has\_name](#enum_value_has_name)
* [eq](#eq)
* [equal](#equal)
* [get\_union\_as\_ptr\_variants](#get_union_as_ptr_variants)
* [get\_union\_variant](#get_union_variant)
* [get\_union\_variant\_raw\_tag](#get_union_variant_raw_tag)
* [has\_no\_indirections](#has_no_indirections)
* [index](#index)
* [is\_any](#is_any)
* [is\_array](#is_array)
* [is\_bit\_set](#is_bit_set)
* [is\_boolean](#is_boolean)
* [is\_byte](#is_byte)
* [is\_complex](#is_complex)
* [is\_cstring](#is_cstring)
* [is\_cstring16](#is_cstring16)
* [is\_dynamic\_array](#is_dynamic_array)
* [is\_dynamic\_map](#is_dynamic_map)
* [is\_endian\_big](#is_endian_big)
* [is\_endian\_little](#is_endian_little)
* [is\_endian\_platform](#is_endian_platform)
* [is\_enum](#is_enum)
* [is\_enumerated\_array](#is_enumerated_array)
* [is\_fixed\_capacity\_dynamic\_array](#is_fixed_capacity_dynamic_array)
* [is\_float](#is_float)
* [is\_integer](#is_integer)
* [is\_multi\_pointer](#is_multi_pointer)
* [is\_nil](#is_nil)
* [is\_parameters](#is_parameters)
* [is\_pointer](#is_pointer)
* [is\_pointer\_internally](#is_pointer_internally)
* [is\_procedure](#is_procedure)
* [is\_quaternion](#is_quaternion)
* [is\_raw\_union](#is_raw_union)
* [is\_rune](#is_rune)
* [is\_signed](#is_signed)
* [is\_simd\_vector](#is_simd_vector)
* [is\_slice](#is_slice)
* [is\_soa\_pointer](#is_soa_pointer)
* [is\_string](#is_string)
* [is\_string16](#is_string16)
* [is\_struct](#is_struct)
* [is\_union](#is_union)
* [is\_unsigned](#is_unsigned)
* [iterate\_array](#iterate_array)
* [iterate\_map](#iterate_map)
* [length](#length)
* [ne](#ne)
* [not\_equal](#not_equal)
* [relative\_pointer\_to\_absolute\_raw](#relative_pointer_to_absolute_raw)
* [set\_union\_value](#set_union_value)
* [set\_union\_variant\_raw\_tag](#set_union_variant_raw_tag)
* [set\_union\_variant\_type\_info](#set_union_variant_type_info)
* [set\_union\_variant\_typeid](#set_union_variant_typeid)
* [size\_of\_typeid](#size_of_typeid)
* [struct\_field\_at](#struct_field_at)
* [struct\_field\_by\_name](#struct_field_by_name)
* [struct\_field\_count](#struct_field_count)
* [struct\_field\_names](#struct_field_names)
* [struct\_field\_offsets](#struct_field_offsets)
* [struct\_field\_tags](#struct_field_tags)
* [struct\_field\_types](#struct_field_types)
* [struct\_field\_value](#struct_field_value)
* [struct\_field\_value\_by\_name](#struct_field_value_by_name)
* [struct\_fields\_zipped](#struct_fields_zipped)
* [struct\_tag\_get](#struct_tag_get)
* [struct\_tag\_lookup](#struct_tag_lookup)
* [type\_info\_union\_is\_pure\_maybe](#type_info_union_is_pure_maybe)
* [type\_kind](#type_kind)
* [typeid\_elem](#typeid_elem)
* [underlying\_type\_kind](#underlying_type_kind)
* [union\_variant\_type\_info](#union_variant_type_info)
* [union\_variant\_typeid](#union_variant_typeid)
* [write\_type\_builder](#write_type_builder)
* [write\_type\_writer](#write_type_writer)
* [write\_typeid\_builder](#write_typeid_builder)
* [write\_typeid\_writer](#write_typeid_writer)

Procedure Groups (2)

* [write\_type](#write_type)
* [write\_typeid](#write_typeid)

## Types

### [Bit\_Field ¶](#Bit_Field) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1197)

```
Bit_Field :: struct {
	name:   string,
	type:   ^runtime.Type_Info,
	size:   uintptr,
	// Size in bits
	offset: uintptr,
	// Offset in bits
	tag:    Struct_Tag,
}
```

### [Enum\_Field ¶](#Enum_Field) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L904)

```
Enum_Field :: struct {
	name:  string,
	value: runtime.Type_Info_Enum_Value,
}
```

 

Represents an `Enum_Field` storing the `name` and `value`

### [Struct\_Field ¶](#Struct_Field) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L482)

```
Struct_Field :: struct {
	name:     string,
	type:     ^runtime.Type_Info,
	tag:      Struct_Tag,
	offset:   uintptr,
	// in bytes
	is_using: bool,
}
```

 

`Struct_Field` represents a information of a field of a struct




##### Related Procedures With Parameters

* [struct\_field\_value](/core/reflect/#struct_field_value)



##### Related Procedures With Returns

* [struct\_field\_at](/core/reflect/#struct_field_at)
* [struct\_field\_by\_name](/core/reflect/#struct_field_by_name)

### [Struct\_Field\_Count\_Method ¶](#Struct_Field_Count_Method) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L614)

```
Struct_Field_Count_Method :: enum int {
	Top_Level, 
	Using, 
	Recursive, 
}
```

 

Struct\_Field\_Count\_Method is the count method used by `struct_field_count` in order to find the number of fields




##### Related Procedures With Parameters

* [struct\_field\_count](/core/reflect/#struct_field_count)

### [Struct\_Tag ¶](#Struct_Tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L479)

```
Struct_Tag :: distinct string
```

 

`Struct_Tag` represents the type of the `string` of a struct field

Through convention, tags are the concatenation of optionally space-separated key:"value" pairs.
Each key is a non-empty string which contains no control characters other than space, quotes, and colon.




##### Related Procedures With Parameters

* [struct\_tag\_get](/core/reflect/#struct_tag_get)
* [struct\_tag\_lookup](/core/reflect/#struct_tag_lookup)

### [Type\_Info ¶](#Type_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L7)

```
Type_Info :: runtime.Type_Info
```

##### Related Procedures With Parameters

* [are\_types\_identical](/core/reflect/#are_types_identical)
* [has\_no\_indirections](/core/reflect/#has_no_indirections)
* [is\_any](/core/reflect/#is_any)
* [is\_array](/core/reflect/#is_array)
* [is\_bit\_set](/core/reflect/#is_bit_set)
* [is\_boolean](/core/reflect/#is_boolean)
* [is\_byte](/core/reflect/#is_byte)
* [is\_complex](/core/reflect/#is_complex)
* [is\_cstring](/core/reflect/#is_cstring)
* [is\_cstring16](/core/reflect/#is_cstring16)
* [is\_dynamic\_array](/core/reflect/#is_dynamic_array)
* [is\_dynamic\_map](/core/reflect/#is_dynamic_map)
* [is\_endian\_big](/core/reflect/#is_endian_big)
* [is\_endian\_little](/core/reflect/#is_endian_little)
* [is\_endian\_platform](/core/reflect/#is_endian_platform)
* [is\_enum](/core/reflect/#is_enum)
* [is\_enumerated\_array](/core/reflect/#is_enumerated_array)
* [is\_fixed\_capacity\_dynamic\_array](/core/reflect/#is_fixed_capacity_dynamic_array)
* [is\_float](/core/reflect/#is_float)
* [is\_integer](/core/reflect/#is_integer)
* [is\_multi\_pointer](/core/reflect/#is_multi_pointer)
* [is\_parameters](/core/reflect/#is_parameters)
* [is\_pointer](/core/reflect/#is_pointer)
* [is\_pointer\_internally](/core/reflect/#is_pointer_internally)
* [is\_procedure](/core/reflect/#is_procedure)
* [is\_quaternion](/core/reflect/#is_quaternion)
* [is\_raw\_union](/core/reflect/#is_raw_union)
* [is\_rune](/core/reflect/#is_rune)
* [is\_signed](/core/reflect/#is_signed)
* [is\_simd\_vector](/core/reflect/#is_simd_vector)
* [is\_slice](/core/reflect/#is_slice)
* [is\_soa\_pointer](/core/reflect/#is_soa_pointer)
* [is\_string](/core/reflect/#is_string)
* [is\_string16](/core/reflect/#is_string16)
* [is\_struct](/core/reflect/#is_struct)
* [is\_union](/core/reflect/#is_union)
* [is\_unsigned](/core/reflect/#is_unsigned)
* [set\_union\_variant\_type\_info](/core/reflect/#set_union_variant_type_info)
* [write\_type\_builder](/core/reflect/#write_type_builder)
* [write\_type\_writer](/core/reflect/#write_type_writer)
* [write\_type](/core/reflect/#write_type) *(procedure groups)*



##### Related Procedures With Returns

* [union\_variant\_type\_info](/core/reflect/#union_variant_type_info)

### [Type\_Info\_Any ¶](#Type_Info_Any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L17)

```
Type_Info_Any :: runtime.Type_Info_Any
```

### [Type\_Info\_Array ¶](#Type_Info_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L22)

```
Type_Info_Array :: runtime.Type_Info_Array
```

### [Type\_Info\_Bit\_Field ¶](#Type_Info_Bit_Field) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L35)

```
Type_Info_Bit_Field :: runtime.Type_Info_Bit_Field
```

### [Type\_Info\_Bit\_Set ¶](#Type_Info_Bit_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L31)

```
Type_Info_Bit_Set :: runtime.Type_Info_Bit_Set
```

### [Type\_Info\_Boolean ¶](#Type_Info_Boolean) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L16)

```
Type_Info_Boolean :: runtime.Type_Info_Boolean
```

### [Type\_Info\_Complex ¶](#Type_Info_Complex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L13)

```
Type_Info_Complex :: runtime.Type_Info_Complex
```

### [Type\_Info\_Dynamic\_Array ¶](#Type_Info_Dynamic_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L24)

```
Type_Info_Dynamic_Array :: runtime.Type_Info_Dynamic_Array
```

### [Type\_Info\_Enum ¶](#Type_Info_Enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L29)

```
Type_Info_Enum :: runtime.Type_Info_Enum
```

### [Type\_Info\_Enum\_Value ¶](#Type_Info_Enum_Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L38)

```
Type_Info_Enum_Value :: runtime.Type_Info_Enum_Value
```

##### Related Procedures With Returns

* [enum\_from\_name\_any](/core/reflect/#enum_from_name_any)

### [Type\_Info\_Enumerated\_Array ¶](#Type_Info_Enumerated_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L23)

```
Type_Info_Enumerated_Array :: runtime.Type_Info_Enumerated_Array
```

### [Type\_Info\_Fixed\_Capacity\_Dynamic\_Array ¶](#Type_Info_Fixed_Capacity_Dynamic_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L36)

```
Type_Info_Fixed_Capacity_Dynamic_Array :: runtime.Type_Info_Fixed_Capacity_Dynamic_Array
```

### [Type\_Info\_Float ¶](#Type_Info_Float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L12)

```
Type_Info_Float :: runtime.Type_Info_Float
```

### [Type\_Info\_Integer ¶](#Type_Info_Integer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L10)

```
Type_Info_Integer :: runtime.Type_Info_Integer
```

### [Type\_Info\_Map ¶](#Type_Info_Map) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L30)

```
Type_Info_Map :: runtime.Type_Info_Map
```

### [Type\_Info\_Matrix ¶](#Type_Info_Matrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L33)

```
Type_Info_Matrix :: runtime.Type_Info_Matrix
```

### [Type\_Info\_Multi\_Pointer ¶](#Type_Info_Multi_Pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L20)

```
Type_Info_Multi_Pointer :: runtime.Type_Info_Multi_Pointer
```

### [Type\_Info\_Named ¶](#Type_Info_Named) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L9)

```
Type_Info_Named :: runtime.Type_Info_Named
```

### [Type\_Info\_Parameters ¶](#Type_Info_Parameters) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L26)

```
Type_Info_Parameters :: runtime.Type_Info_Parameters
```

### [Type\_Info\_Pointer ¶](#Type_Info_Pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L19)

```
Type_Info_Pointer :: runtime.Type_Info_Pointer
```

### [Type\_Info\_Procedure ¶](#Type_Info_Procedure) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L21)

```
Type_Info_Procedure :: runtime.Type_Info_Procedure
```

### [Type\_Info\_Quaternion ¶](#Type_Info_Quaternion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L14)

```
Type_Info_Quaternion :: runtime.Type_Info_Quaternion
```

### [Type\_Info\_Rune ¶](#Type_Info_Rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L11)

```
Type_Info_Rune :: runtime.Type_Info_Rune
```

### [Type\_Info\_Simd\_Vector ¶](#Type_Info_Simd_Vector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L32)

```
Type_Info_Simd_Vector :: runtime.Type_Info_Simd_Vector
```

### [Type\_Info\_Slice ¶](#Type_Info_Slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L25)

```
Type_Info_Slice :: runtime.Type_Info_Slice
```

### [Type\_Info\_Soa\_Pointer ¶](#Type_Info_Soa_Pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L34)

```
Type_Info_Soa_Pointer :: runtime.Type_Info_Soa_Pointer
```

### [Type\_Info\_String ¶](#Type_Info_String) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L15)

```
Type_Info_String :: runtime.Type_Info_String
```

### [Type\_Info\_Struct ¶](#Type_Info_Struct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L27)

```
Type_Info_Struct :: runtime.Type_Info_Struct
```

### [Type\_Info\_Type\_Id ¶](#Type_Info_Type_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L18)

```
Type_Info_Type_Id :: runtime.Type_Info_Type_Id
```

### [Type\_Info\_Union ¶](#Type_Info_Union) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L28)

```
Type_Info_Union :: runtime.Type_Info_Union
```

##### Related Procedures With Parameters

* [type\_info\_union\_is\_pure\_maybe](/core/reflect/#type_info_union_is_pure_maybe)

### [Type\_Kind ¶](#Type_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L41)

```
Type_Kind :: enum int {
	Invalid, 
	Named, 
	Integer, 
	Rune, 
	Float, 
	Complex, 
	Quaternion, 
	String, 
	Boolean, 
	Any, 
	Type_Id, 
	Pointer, 
	Multi_Pointer, 
	Procedure, 
	Array, 
	Enumerated_Array, 
	Dynamic_Array, 
	Slice, 
	Parameters, 
	Struct, 
	Union, 
	Enum, 
	Map, 
	Bit_Set, 
	Simd_Vector, 
	Matrix, 
	Soa_Pointer, 
	Bit_Field, 
	Fixed_Capacity_Dynamic_Array, 
}
```

##### Related Procedures With Returns

* [backing\_type\_kind](/core/reflect/#backing_type_kind)
* [type\_kind](/core/reflect/#type_kind)
* [underlying\_type\_kind](/core/reflect/#underlying_type_kind)

## Constants

### [DEFAULT\_EQUAL\_MAX\_RECURSION\_LEVEL ¶](#DEFAULT_EQUAL_MAX_RECURSION_LEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1808)

```
DEFAULT_EQUAL_MAX_RECURSION_LEVEL :: 32
```

## Variables

This section is empty.

## Procedures

### [align\_of\_typeid ¶](#align_of_typeid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L238)

```
align_of_typeid :: proc(T: typeid) -> int {…}
```

 

returns the alignment of the type that the passed typeid represents

### [any\_base ¶](#any_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L161)

```
any_base :: proc(v: any) -> any {…}
```

 

any\_base returns an `any` where the `typeid` has been replaced with the `base-type` equivalent

### [any\_core ¶](#any_core) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L171)

```
any_core :: proc(v: any) -> any {…}
```

 

any\_core returns an `any` where the `typeid` has been replaced with the `core-type` equivalent

### [any\_data ¶](#any_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L257)

```
any_data :: proc(v: any) -> (data: rawptr, id: typeid) {…}
```

 

Splits the data stored in `any` into its two components: `data` and `id`

### [are\_types\_identical ¶](#are_types_identical) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L11)

```
are_types_identical :: proc(a, b: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the `^Type_Info`s are semantically equivalent types
Note: The pointers being identical should be enough to check but this is done to make sure in certain cases where it is non-trivial
and each value wants to be checked directly.

### [as\_bool ¶](#as_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1276)

```
as_bool :: proc(a: any) -> (value: bool, valid: bool) {…}
```

 

as\_bool attempts to convert an `any` to a `bool`.

### [as\_bytes ¶](#as_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L247)

```
as_bytes :: proc(v: any) -> []u8 {…}
```

 

Reinterprets the data stored at `v` as a slice of bytes

### [as\_f64 ¶](#as_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1538)

```
as_f64 :: proc(a: any) -> (value: f64, valid: bool) {…}
```

 

as\_f64 attempts to convert an `any` to a `f64`.

### [as\_i64 ¶](#as_i64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1318)

```
as_i64 :: proc(a: any) -> (value: i64, valid: bool) {…}
```

 

as\_i64 attempts to convert an `any` to a `i64`.

### [as\_int ¶](#as_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1300)

```
as_int :: proc(a: any) -> (value: int, valid: bool) {…}
```

 

as\_int attempts to convert an `any` to a `int`.

### [as\_pointer ¶](#as_pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1742)

```
as_pointer :: proc(a: any) -> (value: rawptr, valid: bool) {…}
```

 

as\_pointer attempts to convert an `any` to a `rawptr`.
This only works for `^T`, `[^]T`, `cstring`, `cstring16` based types

### [as\_raw\_data ¶](#as_raw_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1768)

```
as_raw_data :: proc(a: any) -> (value: rawptr, valid: bool) {…}
```

 

Returns the equivalent of doing `raw_data(v)` where `v` is a non-any value

### [as\_string ¶](#as_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1656)

```
as_string :: proc(a: any) -> (value: string, valid: bool) {…}
```

 

as\_string attempts to convert an `any` to a `string`.

### [as\_string16 ¶](#as_string16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1677)

```
as_string16 :: proc(a: any) -> (value: string16, valid: bool) {…}
```

 

as\_string16 attempts to convert an `any` to a `string16`.

### [as\_u64 ¶](#as_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1427)

```
as_u64 :: proc(a: any) -> (value: u64, valid: bool) {…}
```

 

as\_u64 attempts to convert an `any` to a `u64`.

### [as\_uint ¶](#as_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1309)

```
as_uint :: proc(a: any) -> (value: uint, valid: bool) {…}
```

 

as\_uint attempts to convert an `any` to a `uint`.

### [backing\_type\_kind ¶](#backing_type_kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L123)

```
backing_type_kind :: proc(T: typeid) -> Type_Kind {…}
```

 

Returns the `Type_Kind` of the core-type of a typeid. See

### [bit\_field\_names ¶](#bit_field_names) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1226)

```
bit_field_names :: proc(T: typeid) -> []string {…}
```

 

bit\_field\_names returns a `[]string` of the field names of a `bit_field` type `T`

### [bit\_field\_offsets ¶](#bit_field_offsets) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1256)

```
bit_field_offsets :: proc(T: typeid) -> []uintptr {…}
```

 

bit\_field\_types returns a `[]uintptr` of the field offsets in bits of a `bit_field` type `T`

### [bit\_field\_sizes ¶](#bit_field_sizes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1246)

```
bit_field_sizes :: proc(T: typeid) -> []uintptr {…}
```

 

bit\_field\_types returns a `[]uintptr` of the field bit-width-sizes of a `bit_field` type `T`

### [bit\_field\_tags ¶](#bit_field_tags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1266)

```
bit_field_tags :: proc(T: typeid) -> []Struct_Tag {…}
```

 

bit\_field\_types returns a `[]Struct_Tag` of the field tags of a `bit_field` type `T`

### [bit\_field\_types ¶](#bit_field_types) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1236)

```
bit_field_types :: proc(T: typeid) -> []^runtime.Type_Info {…}
```

 

bit\_field\_types returns a `[]^Type_Info` of the field representation types of a `bit_field` type `T`, not the backing integer-bit-width types

### [bit\_fields\_zipped ¶](#bit_fields_zipped) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1210)

```
bit_fields_zipped :: proc(T: typeid) -> (fields: #soa[]Bit_Field) {…}
```

 

Returns the fields of a `bit_field` type `T` as an `#soa` slice.
This is useful to iterate over.

**Example:**

```
for field, i in reflect.bit_fields_zipped(Foo_Bit_Field) { ... }
```

### [bit\_set\_is\_big\_endian ¶](#bit_set_is_big_endian) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1175)

```
bit_set_is_big_endian :: proc(value: any, loc := #caller_location) -> bool {…}
```

 

UNSAFE: Checks to see if the data stored is a `bit_set` and is big endian. Panics if a `bit_set` was not passed.

### [capacity ¶](#capacity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L348)

```
capacity :: proc(val: any) -> int {…}
```

 

Returns the capacity of the type that represents the `any` value, or returns 0 if not possible
cap(^T) -> cap(T)
cap([N]T) -> N
cap(#simd[N]T) -> N
cap([dynamic]T)
cap(map[K]V)

### [default\_map\_hash\_by\_ptr ¶](#default_map_hash_by_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L2048)

```
default_map_hash_by_ptr :: proc(ptr: ^$T, seed: uintptr = 0) -> uintptr {…}
```

### [deref ¶](#deref) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L460)

```
deref :: proc(val: any) -> any {…}
```

 

Dereferences `any` if it represents a pointer-based value (`^T -> T`)

### [enum\_field\_names ¶](#enum_field_names) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L886)

```
enum_field_names :: proc(Enum_Type: typeid) -> []string {…}
```

 

enum\_field\_names returns `[]string` of the names of the fields of type `Enum_Type`

### [enum\_field\_values ¶](#enum_field_values) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L895)

```
enum_field_values :: proc(Enum_Type: typeid) -> []runtime.Type_Info_Enum_Value {…}
```

 

enum\_field\_values returns `[]Type_Info_Enum_Value` of the values of the fields of type `Enum_Type`

### [enum\_fields\_zipped ¶](#enum_fields_zipped) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L914)

```
enum_fields_zipped :: proc(Enum_Type: typeid) -> (fields: #soa[]Enum_Field) {…}
```

 

Returns a #soa slice of the enum field information of type `Enum_Type`
This is useful to iterate over.

**Example:**

```
for field, i in reflect.enum_fields_zipped(Foo) { ... }
```

### [enum\_from\_name ¶](#enum_from_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L792)

```
enum_from_name :: proc($Enum_Type: typeid, name: string) -> (value: typeid, ok: bool) {…}
```

 

Given an enum type and a value name, get the enum value.

### [enum\_from\_name\_any ¶](#enum_from_name_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L810)

```
enum_from_name_any :: proc(Enum_Type: typeid, name: string) -> (value: runtime.Type_Info_Enum_Value, ok: bool) {…}
```

 

enum\_from\_name\_any returns the value of an enum field's name if found, returns `0, false` otherwise.

### [enum\_name\_from\_value ¶](#enum_name_from_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L827)

```
enum_name_from_value :: proc(value: $Enum_Type) -> (name: string, ok: bool) {…}
```

 

enum\_name\_from\_value returns the name of enum field if a valid name using parametric polymorphism, otherwise returns `"", false`

### [enum\_name\_from\_value\_any ¶](#enum_name_from_value_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L844)

```
enum_name_from_value_any :: proc(value: any) -> (name: string, ok: bool) {…}
```

 

enum\_name\_from\_value\_any returns the name of enum field if a valid name using reflection, otherwise returns `"", false`

### [enum\_string ¶](#enum_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L773)

```
enum_string :: proc(a: any) -> string {…}
```

 

Returns the string representation of an enum value. It will panic if the value passed is not an enum.

### [enum\_value\_has\_name ¶](#enum_value_has_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L864)

```
enum_value_has_name :: proc(value: $T) -> bool {…}
```

 

Returns whether the value given has a defined name in the enum type.

### [eq ¶](#eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1818)

```
eq :: equal
```

 

Checks to see if two `any` values are semantically equivalent

### [equal ¶](#equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1818)

```
equal :: proc(a, b: any, including_indirect_array_recursion: bool = false, recursion_level: int = 0) -> bool {…}
```

 

Checks to see if two `any` values are semantically equivalent

### [get\_union\_as\_ptr\_variants ¶](#get_union_as_ptr_variants) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1032)

```
get_union_as_ptr_variants :: proc(val: ^$T) -> (res: $$deferred_return) {…}
```

 

Converts a pointer to a union, to a union containing the pointers to the variant types, and stores a pointer of the variant value in the new union

**Example:**

```
val: union{i32, f32, string}
val = "123"
ptr: union{^i32, ^f32, ^string} = get_union_as_ptr_variants(&val)
sp := ptr.(^string)
assert(sp^ == "123")
```

### [get\_union\_variant ¶](#get_union_variant) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1012)

```
get_union_variant :: proc(a: any) -> any {…}
```

 

Returns the underlying variant value of a union. Panics if a union was not passed.

### [get\_union\_variant\_raw\_tag ¶](#get_union_variant_raw_tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L980)

```
get_union_variant_raw_tag :: proc(a: any) -> i64 {…}
```

 

UNSAFE: Returns the underlying tag value of a union. Panics if a union was not passed.

### [has\_no\_indirections ¶](#has_no_indirections) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L822)

```
has_no_indirections :: proc(ti: ^runtime.Type_Info) -> bool {…}
```

 

The `^Type_Info` type refers to absolutely no internal pointers, meaning it can be trivially copied

### [index ¶](#index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L383)

```
index :: proc(val: any, i: int, loc := #caller_location) -> any {…}
```

 

Dynamically indexes `any` as an indexable-type if possible. Returns `nil` if not possible

### [is\_any ¶](#is_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L268)

```
is_any :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is an `any`, false otherwise.

### [is\_array ¶](#is_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L355)

```
is_array :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a fixed-array type ([N]T), false otherwise.

### [is\_bit\_set ¶](#is_bit_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L383)

```
is_bit_set :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a bit\_set type, false otherwise.

### [is\_boolean ¶](#is_boolean) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L306)

```
is_boolean :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a boolean of any kind, false otherwise.

### [is\_byte ¶](#is_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L222)

```
is_byte :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when it is a 1-byte wide integer type, false otherwise.

### [is\_complex ¶](#is_complex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L254)

```
is_complex :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a complex-type of any kind, false otherwise.

### [is\_cstring ¶](#is_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L283)

```
is_cstring :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a cstring of any kind (cstring, cstring16), false otherwise.

### [is\_cstring16 ¶](#is_cstring16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L298)

```
is_cstring16 :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a cstring of any kind (cstring16), false otherwise.

### [is\_dynamic\_array ¶](#is_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L369)

```
is_dynamic_array :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a dynamic-array type ([dynamic]T), false otherwise.

### [is\_dynamic\_map ¶](#is_dynamic_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L376)

```
is_dynamic_map :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a map type (map[K]V), false otherwise.

### [is\_endian\_big ¶](#is_endian_big) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L498)

```
is_endian_big :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the core-type is represented with a platform-native endian type or the same endianness as the system.
This will also return false when the type is not an integer, pointer, or bit\_set.
If the type is the same as the platform-native endian type (e.g. `u32be` on a big-endian system), this will return true.

### [is\_endian\_little ¶](#is_endian_little) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L471)

```
is_endian_little :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the core-type is represented with a platform-native endian type or the same endianness as the system.
This will also return false when the type is not an integer, pointer, or bit\_set.
If the type is the same as the platform-native endian type (e.g. `u32le` on a little-endian system), this will return true.

### [is\_endian\_platform ¶](#is_endian_platform) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L450)

```
is_endian_platform :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the core-type is represented with a platform-native endian type, and returns false otherwise.
This will also return false when the type is not an integer, pointer, or bit\_set.
If the type is the same as the platform-native endian type (e.g. `u32le` on a little-endian system), this will return false.

### [is\_enum ¶](#is_enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L425)

```
is_enum :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is an enum type, false otherwise.

### [is\_enumerated\_array ¶](#is_enumerated_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L362)

```
is_enumerated_array :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is an enumerated-array type ([Enum]T), false otherwise.

### [is\_fixed\_capacity\_dynamic\_array ¶](#is_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L439)

```
is_fixed_capacity_dynamic_array :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a fixed-capacity dynamic-array type ([dynamic; N]T), false otherwise.

### [is\_float ¶](#is_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L247)

```
is_float :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a float of any kind, false otherwise.

### [is\_integer ¶](#is_integer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L233)

```
is_integer :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is an integer of any kind, false otherwise.

### [is\_multi\_pointer ¶](#is_multi_pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L320)

```
is_multi_pointer :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a pointer-type of any kind ([^]T), false otherwise.

### [is\_nil ¶](#is_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L263)

```
is_nil :: proc(v: any) -> bool {…}
```

 

Returns true if the `any` value is either `nil` or the data stored at the address is all zeroed

### [is\_parameters ¶](#is_parameters) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L397)

```
is_parameters :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type represents a set of parameters for a procedure (inputs or outputs), false otherwise.

### [is\_pointer ¶](#is_pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L313)

```
is_pointer :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a pointer-type of any kind (^T or rawptr), false otherwise.

### [is\_pointer\_internally ¶](#is_pointer_internally) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L334)

```
is_pointer_internally :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a pointer-like type, false otherwise.

### [is\_procedure ¶](#is_procedure) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L348)

```
is_procedure :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a procedure type, false otherwise.

### [is\_quaternion ¶](#is_quaternion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L261)

```
is_quaternion :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a quaternions any kind, false otherwise.

### [is\_raw\_union ¶](#is_raw_union) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L411)

```
is_raw_union :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a struct type with `#raw_union` applied, when `#raw_union` is not applied, the value will be false. All other types will be false otherwise.

### [is\_rune ¶](#is_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L240)

```
is_rune :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a rune, false otherwise.

### [is\_signed ¶](#is_signed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L201)

```
is_signed :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true if the base-type is a signed integer or just a float, false otherwise.

### [is\_simd\_vector ¶](#is_simd_vector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L432)

```
is_simd_vector :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a #simd-array type (#simd[N]T), false otherwise.

### [is\_slice ¶](#is_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L390)

```
is_slice :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a slice type ([]T), false otherwise.

### [is\_soa\_pointer ¶](#is_soa_pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L327)

```
is_soa_pointer :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a pointer-type of any kind (#soa^T), false otherwise.

### [is\_string ¶](#is_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L276)

```
is_string :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a string of any kind (string, cstring, string16, cstring16), false otherwise.

### [is\_string16 ¶](#is_string16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L291)

```
is_string16 :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true the base-type is a string of any kind (string16, cstring16), false otherwise.

### [is\_struct ¶](#is_struct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L404)

```
is_struct :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a struct type, `#raw_union` will be false. All other types will be false otherwise.

### [is\_union ¶](#is_union) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L418)

```
is_union :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true when the type is a union type (not `#raw_union`), false otherwise.

### [is\_unsigned ¶](#is_unsigned) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L211)

```
is_unsigned :: proc(info: ^runtime.Type_Info) -> bool {…}
```

 

Returns true if the base-type is an usigned integer, false otherwise.

### [iterate\_array ¶](#iterate_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/iterator.odin#L10)

```
iterate_array :: proc(val: any, it: ^int) -> (elem: any, index: int, ok: bool) {…}
```

 

An iterator to dynamically iterate across something that is array-like (or pointer-to-array-like)

**Example:**

```
it: int // used as a tracking value
for elem, idx in iterate_array(any_array_val, ⁢) { ... }
```

### [iterate\_map ¶](#iterate_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/iterator.odin#L66)

```
iterate_map :: proc(val: any, it: ^int) -> (key, value: any, ok: bool) {…}
```

 

An iterator to dynamically iterate across map (or pointer-to-map)

**Example:**

```
it: int // used as a tracking value
for key, val in iterate_map(any_map_val, ⁢) { ... }
```

### [length ¶](#length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L290)

```
length :: proc(val: any) -> int {…}
```

 

Returns the length of the type that represents the `any` value, or returns 0 if not possible
len(^T) -> len(T)
len([N]T) -> N
len(#simd[N]T) -> N
len([]T)
len([dynamic]T)
len(map[K]V)
len(string) or len(cstring)
len(string16) or len(cstring16)

### [ne ¶](#ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1812)

```
ne :: not_equal
```

 

Checks to see if two `any` values are not semantically equivalent

### [not\_equal ¶](#not_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1812)

```
not_equal :: proc(a, b: any, including_indirect_array_recursion: bool = false, recursion_level: int = 0) -> bool {…}
```

 

Checks to see if two `any` values are not semantically equivalent

### [relative\_pointer\_to\_absolute\_raw ¶](#relative_pointer_to_absolute_raw) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1697)

```
relative_pointer_to_absolute_raw :: proc(data: rawptr, base_integer_id: typeid) -> rawptr {…}
```

### [set\_union\_value ¶](#set_union_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1135)

```
set_union_value :: proc(dst: any, value: any) -> bool {…}
```

 

UNSAFE: Manually set the variant value of a union using an `any`. Panics if a union was not passed.

### [set\_union\_variant\_raw\_tag ¶](#set_union_variant_raw_tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1042)

```
set_union_variant_raw_tag :: proc(a: any, tag: i64) {…}
```

 

UNSAFE: Manually set the tag value of a union using an integer. Panics if a union was not passed.

### [set\_union\_variant\_type\_info ¶](#set_union_variant_type_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1104)

```
set_union_variant_type_info :: proc(a: any, tag_ti: ^runtime.Type_Info) {…}
```

 

UNSAFE: Manually set the tag value of a union using a `^Type_Info`. Panics if a union was not passed.

### [set\_union\_variant\_typeid ¶](#set_union_variant_typeid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L1073)

```
set_union_variant_typeid :: proc(a: any, id: typeid) {…}
```

 

UNSAFE: Manually set the tag value of a union using a `typeid`. Panics if a union was not passed.

### [size\_of\_typeid ¶](#size_of_typeid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L229)

```
size_of_typeid :: proc(T: typeid) -> int {…}
```

 

returns the size of the type that the passed typeid represents

### [struct\_field\_at ¶](#struct_field_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L492)

```
struct_field_at :: proc(T: typeid, i: int) -> (field: Struct_Field) {…}
```

 

Returns a `Struct_Field` containing the information for a struct field of a typeid `T` at index `i`

### [struct\_field\_by\_name ¶](#struct_field_by_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L508)

```
struct_field_by_name :: proc(T: typeid, name: string) -> (field: Struct_Field) {…}
```

 

Returns a `Struct_Field` containing the information for a struct field by `name` of a typeid `T`

### [struct\_field\_count ¶](#struct_field_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L645)

```
struct_field_count :: proc(T: typeid, method: Struct_Field_Count_Method = Struct_Field_Count_Method.Top_Level) -> (count: int) {…}
```

 

Counts the number of fields in a struct

This procedure returns the number of fields in a struct, counting in one of three ways:
.Top\_Level: Only counts the top-level fields
.Using: Same count as .Top\_Level, and adds the field count of any `using s: Struct` it encounters (in addition to itself)
.Recursive: The count of all top-level fields, plus the count of any child struct's fields, recursively

**Inputs:**  
T: The struct type
method: The counting method

**Returns:**  
The `count`, enumerated using the `method`, which will be `0` if the type is not a struct

**Example:**

```
symbols_loaded, ok := dynlib.initialize_symbols(&game_api, "game.dll")
symbols_expected   := reflect.struct_field_count(Game_Api) - API_PRIVATE_COUNT

if symbols_loaded != symbols_expected {
	fmt.eprintf("Expected %v symbols, got %v", symbols_expected, symbols_loaded)
	return
}
```

### [struct\_field\_names ¶](#struct_field_names) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L574)

```
struct_field_names :: proc(T: typeid) -> []string {…}
```

 

Returns a `[]string` of the names of the struct fields of type `T`

### [struct\_field\_offsets ¶](#struct_field_offsets) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L605)

```
struct_field_offsets :: proc(T: typeid) -> []uintptr {…}
```

 

Returns a `[]uintptr` of the offsets in bytes of the struct fields of type `T`

### [struct\_field\_tags ¶](#struct_field_tags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L595)

```
struct_field_tags :: proc(T: typeid) -> []Struct_Tag {…}
```

 

Returns a `[]Struct_Tag` of the tags of the struct fields of type `T`

### [struct\_field\_types ¶](#struct_field_types) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L584)

```
struct_field_types :: proc(T: typeid) -> []^runtime.Type_Info {…}
```

 

Returns a `[]^Type_Info` of the types of the struct fields of type `T`

### [struct\_field\_value ¶](#struct_field_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L564)

```
struct_field_value :: proc(a: any, field: Struct_Field) -> any {…}
```

 

Returns an `any` of a struct field specified by a `Struct_Field`

**Example:**

```
field := struct_field_value_by_name(the_struct, "field_name")
value_by_field := struct_field_value(the_struct, field)
```

### [struct\_field\_value\_by\_name ¶](#struct_field_value_by_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L530)

```
struct_field_value_by_name :: proc(a: any, field: string, allow_using: bool = false) -> any {…}
```

 

Returns an `any` of a struct field specified by name

**Example:**

```
v := struct_field_value_by_name(the_struct, "field_name")
nested_value_through_using := struct_field_value_by_name(the_struct, "field_name", allow_using=true)
```

### [struct\_fields\_zipped ¶](#struct_fields_zipped) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L677)

```
struct_fields_zipped :: proc(T: typeid) -> (fields: #soa[]Struct_Field) {…}
```

 

Returns the fields of a struct type `T` as an `#soa` slice.
This is useful to iterate over.

**Example:**

```
for field, i in reflect.struct_fields_zipped(Foo) { ... }
```

### [struct\_tag\_get ¶](#struct_tag_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L700)

```
struct_tag_get :: proc(tag: Struct_Tag, key: string) -> (value: string) {…}
```

 

struct\_tag\_get returns the value associated with a key in the tag string.
If the key is present in the tag, the value (which might be empty) is returned. Otherwise an empty string is returned.
This is just a wrapper around `struct_tag_lookup` with the `ok` value being ignored.

The convention for struct tags is usually of the form:

```
`key:"value" another:"set" and:"whatever"`
```

### [struct\_tag\_lookup ¶](#struct_tag_lookup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L713)

```
struct_tag_lookup :: proc(tag: Struct_Tag, key: string) -> (value: string, ok: bool) {…}
```

 

struct\_tag\_lookup returns the value associated with a key in the tag string.
If the key is present in the tag, the value (which might be empty) is return. Otherwise an empty string is returned.
The `ok` value returns whether the value was explicit set in the tag string.

The convention for struct tags is usually of the form:

```
`key:"value" another:"set" and:"whatever"`
```

### [type\_info\_union\_is\_pure\_maybe ¶](#type_info_union_is_pure_maybe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L933)

```
type_info_union_is_pure_maybe :: proc(info: runtime.Type_Info_Union) -> bool {…}
```

 

Returns whether the `Type_Info_Union` store no tag (called a "pure maybe").

### [type\_kind ¶](#type_kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L77)

```
type_kind :: proc(T: typeid) -> Type_Kind {…}
```

 

type\_kind returns a enum `Type_Kind` to state what kind of type a typeid is

### [typeid\_elem ¶](#typeid_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L194)

```
typeid_elem :: proc(id: typeid) -> typeid {…}
```

 

typeid\_elem returns a `typeid` of the element-type of a type if possible, otherwise it returns itself
complex32 -> f16
complex64 -> f32
complex128 -> f64
quaternion64 -> f16
quaternion128 -> f32
quaternion256 -> f64
^T -> T
[^]T -> T
#soa^T -> T
[N]T -> T
[]T -> T
[dynamic]T -> T
#simd[N]T -> T

### [underlying\_type\_kind ¶](#underlying_type_kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L117)

```
underlying_type_kind :: proc(T: typeid) -> Type_Kind {…}
```

 

Returns the `Type_Kind` of the base-type of a typeid.

### [union\_variant\_type\_info ¶](#union_variant_type_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L926)

```
union_variant_type_info :: proc(a: any) -> ^runtime.Type_Info {…}
```

 

Returns `^Type_Info` of a any-encoded union type. Panics if a union was not passed.

### [union\_variant\_typeid ¶](#union_variant_typeid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin#L939)

```
union_variant_typeid :: proc(a: any) -> typeid {…}
```

 

UNSAFE: Returns `typeid` of a any-encoded union type. Panics if a union was not passed.

### [write\_type\_builder ¶](#write_type_builder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L546)

```
write_type_builder :: proc(buf: ^strings.Builder, ti: ^runtime.Type_Info) -> int {…}
```

 

Writes a `^Type_Info` in standard (non-canonical) form to a `strings.Builder`




##### Related Procedure Groups

* [write\_type](/core/reflect/#write_type)

### [write\_type\_writer ¶](#write_type_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L551)

```
write_type_writer :: proc(w: io.Stream, ti: ^runtime.Type_Info, n_written: ^int = nil) -> (n: int, err: io.Error) {…}
```

 

Writes a `^Type_Info` in standard (non-canonical) form to an `io.Writer`




##### Related Procedure Groups

* [write\_type](/core/reflect/#write_type)

### [write\_typeid\_builder ¶](#write_typeid_builder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L525)

```
write_typeid_builder :: proc(buf: ^strings.Builder, id: typeid, n_written: ^int = nil) -> (n: int, err: io.Error) {…}
```

 

Writes a typeid in standard (non-canonical) form to a `strings.Builder`




##### Related Procedure Groups

* [write\_typeid](/core/reflect/#write_typeid)

### [write\_typeid\_writer ¶](#write_typeid_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L529)

```
write_typeid_writer :: proc(writer: io.Stream, id: typeid, n_written: ^int = nil) -> (n: int, err: io.Error) {…}
```

 

Writes a typeid in standard (non-canonical) form to an `io.Writer`




##### Related Procedure Groups

* [write\_typeid](/core/reflect/#write_typeid)

## Procedure Groups

### [write\_type ¶](#write_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L540)

```
write_type :: proc{
	write_type_builder,
	write_type_writer,
}
```

 

Writes a `^Type_Info` in standard (non-canonical) form

### [write\_typeid ¶](#write_typeid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin#L534)

```
write_typeid :: proc{
	write_typeid_builder,
	write_typeid_writer,
}
```

 

Writes a typeid in standard (non-canonical) form

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/reflect/doc.odin)
* [iterator.odin](https://github.com/odin-lang/Odin/tree/master/core/reflect/iterator.odin)
* [reflect.odin](https://github.com/odin-lang/Odin/tree/master/core/reflect/reflect.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/core/reflect/types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.217176600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Bit\_Field](#Bit_Field)
    + [Enum\_Field](#Enum_Field)
    + [Struct\_Field](#Struct_Field)
    + [Struct\_Field\_Count\_Method](#Struct_Field_Count_Method)
    + [Struct\_Tag](#Struct_Tag)
    + [Type\_Info](#Type_Info)
    + [Type\_Info\_Any](#Type_Info_Any)
    + [Type\_Info\_Array](#Type_Info_Array)
    + [Type\_Info\_Bit\_Field](#Type_Info_Bit_Field)
    + [Type\_Info\_Bit\_Set](#Type_Info_Bit_Set)
    + [Type\_Info\_Boolean](#Type_Info_Boolean)
    + [Type\_Info\_Complex](#Type_Info_Complex)
    + [Type\_Info\_Dynamic\_Array](#Type_Info_Dynamic_Array)
    + [Type\_Info\_Enum](#Type_Info_Enum)
    + [Type\_Info\_Enum\_Value](#Type_Info_Enum_Value)
    + [Type\_Info\_Enumerated\_Array](#Type_Info_Enumerated_Array)
    + [Type\_Info\_Fixed\_Capacity\_Dynamic\_Array](#Type_Info_Fixed_Capacity_Dynamic_Array)
    + [Type\_Info\_Float](#Type_Info_Float)
    + [Type\_Info\_Integer](#Type_Info_Integer)
    + [Type\_Info\_Map](#Type_Info_Map)
    + [Type\_Info\_Matrix](#Type_Info_Matrix)
    + [Type\_Info\_Multi\_Pointer](#Type_Info_Multi_Pointer)
    + [Type\_Info\_Named](#Type_Info_Named)
    + [Type\_Info\_Parameters](#Type_Info_Parameters)
    + [Type\_Info\_Pointer](#Type_Info_Pointer)
    + [Type\_Info\_Procedure](#Type_Info_Procedure)
    + [Type\_Info\_Quaternion](#Type_Info_Quaternion)
    + [Type\_Info\_Rune](#Type_Info_Rune)
    + [Type\_Info\_Simd\_Vector](#Type_Info_Simd_Vector)
    + [Type\_Info\_Slice](#Type_Info_Slice)
    + [Type\_Info\_Soa\_Pointer](#Type_Info_Soa_Pointer)
    + [Type\_Info\_String](#Type_Info_String)
    + [Type\_Info\_Struct](#Type_Info_Struct)
    + [Type\_Info\_Type\_Id](#Type_Info_Type_Id)
    + [Type\_Info\_Union](#Type_Info_Union)
    + [Type\_Kind](#Type_Kind)
  * [Constants](#pkg-Constants)
    + [DEFAULT\_EQUAL\_MAX\_RECURSION\_LEVEL](#DEFAULT_EQUAL_MAX_RECURSION_LEVEL)
  * [Procedures](#pkg-Procedures)
    + [align\_of\_typeid](#align_of_typeid)
    + [any\_base](#any_base)
    + [any\_core](#any_core)
    + [any\_data](#any_data)
    + [are\_types\_identical](#are_types_identical)
    + [as\_bool](#as_bool)
    + [as\_bytes](#as_bytes)
    + [as\_f64](#as_f64)
    + [as\_i64](#as_i64)
    + [as\_int](#as_int)
    + [as\_pointer](#as_pointer)
    + [as\_raw\_data](#as_raw_data)
    + [as\_string](#as_string)
    + [as\_string16](#as_string16)
    + [as\_u64](#as_u64)
    + [as\_uint](#as_uint)
    + [backing\_type\_kind](#backing_type_kind)
    + [bit\_field\_names](#bit_field_names)
    + [bit\_field\_offsets](#bit_field_offsets)
    + [bit\_field\_sizes](#bit_field_sizes)
    + [bit\_field\_tags](#bit_field_tags)
    + [bit\_field\_types](#bit_field_types)
    + [bit\_fields\_zipped](#bit_fields_zipped)
    + [bit\_set\_is\_big\_endian](#bit_set_is_big_endian)
    + [capacity](#capacity)
    + [default\_map\_hash\_by\_ptr](#default_map_hash_by_ptr)
    + [deref](#deref)
    + [enum\_field\_names](#enum_field_names)
    + [enum\_field\_values](#enum_field_values)
    + [enum\_fields\_zipped](#enum_fields_zipped)
    + [enum\_from\_name](#enum_from_name)
    + [enum\_from\_name\_any](#enum_from_name_any)
    + [enum\_name\_from\_value](#enum_name_from_value)
    + [enum\_name\_from\_value\_any](#enum_name_from_value_any)
    + [enum\_string](#enum_string)
    + [enum\_value\_has\_name](#enum_value_has_name)
    + [eq](#eq)
    + [equal](#equal)
    + [get\_union\_as\_ptr\_variants](#get_union_as_ptr_variants)
    + [get\_union\_variant](#get_union_variant)
    + [get\_union\_variant\_raw\_tag](#get_union_variant_raw_tag)
    + [has\_no\_indirections](#has_no_indirections)
    + [index](#index)
    + [is\_any](#is_any)
    + [is\_array](#is_array)
    + [is\_bit\_set](#is_bit_set)
    + [is\_boolean](#is_boolean)
    + [is\_byte](#is_byte)
    + [is\_complex](#is_complex)
    + [is\_cstring](#is_cstring)
    + [is\_cstring16](#is_cstring16)
    + [is\_dynamic\_array](#is_dynamic_array)
    + [is\_dynamic\_map](#is_dynamic_map)
    + [is\_endian\_big](#is_endian_big)
    + [is\_endian\_little](#is_endian_little)
    + [is\_endian\_platform](#is_endian_platform)
    + [is\_enum](#is_enum)
    + [is\_enumerated\_array](#is_enumerated_array)
    + [is\_fixed\_capacity\_dynamic\_array](#is_fixed_capacity_dynamic_array)
    + [is\_float](#is_float)
    + [is\_integer](#is_integer)
    + [is\_multi\_pointer](#is_multi_pointer)
    + [is\_nil](#is_nil)
    + [is\_parameters](#is_parameters)
    + [is\_pointer](#is_pointer)
    + [is\_pointer\_internally](#is_pointer_internally)
    + [is\_procedure](#is_procedure)
    + [is\_quaternion](#is_quaternion)
    + [is\_raw\_union](#is_raw_union)
    + [is\_rune](#is_rune)
    + [is\_signed](#is_signed)
    + [is\_simd\_vector](#is_simd_vector)
    + [is\_slice](#is_slice)
    + [is\_soa\_pointer](#is_soa_pointer)
    + [is\_string](#is_string)
    + [is\_string16](#is_string16)
    + [is\_struct](#is_struct)
    + [is\_union](#is_union)
    + [is\_unsigned](#is_unsigned)
    + [iterate\_array](#iterate_array)
    + [iterate\_map](#iterate_map)
    + [length](#length)
    + [ne](#ne)
    + [not\_equal](#not_equal)
    + [relative\_pointer\_to\_absolute\_raw](#relative_pointer_to_absolute_raw)
    + [set\_union\_value](#set_union_value)
    + [set\_union\_variant\_raw\_tag](#set_union_variant_raw_tag)
    + [set\_union\_variant\_type\_info](#set_union_variant_type_info)
    + [set\_union\_variant\_typeid](#set_union_variant_typeid)
    + [size\_of\_typeid](#size_of_typeid)
    + [struct\_field\_at](#struct_field_at)
    + [struct\_field\_by\_name](#struct_field_by_name)
    + [struct\_field\_count](#struct_field_count)
    + [struct\_field\_names](#struct_field_names)
    + [struct\_field\_offsets](#struct_field_offsets)
    + [struct\_field\_tags](#struct_field_tags)
    + [struct\_field\_types](#struct_field_types)
    + [struct\_field\_value](#struct_field_value)
    + [struct\_field\_value\_by\_name](#struct_field_value_by_name)
    + [struct\_fields\_zipped](#struct_fields_zipped)
    + [struct\_tag\_get](#struct_tag_get)
    + [struct\_tag\_lookup](#struct_tag_lookup)
    + [type\_info\_union\_is\_pure\_maybe](#type_info_union_is_pure_maybe)
    + [type\_kind](#type_kind)
    + [typeid\_elem](#typeid_elem)
    + [underlying\_type\_kind](#underlying_type_kind)
    + [union\_variant\_type\_info](#union_variant_type_info)
    + [union\_variant\_typeid](#union_variant_typeid)
    + [write\_type\_builder](#write_type_builder)
    + [write\_type\_writer](#write_type_writer)
    + [write\_typeid\_builder](#write_typeid_builder)
    + [write\_typeid\_writer](#write_typeid_writer)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [write\_type](#write_type)
    + [write\_typeid](#write_typeid)
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