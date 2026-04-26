package sys/darwin/CoreFoundation - pkg.odin-lang.org 






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



Current Package: *[CoreFoundation](/core/sys/darwin/CoreFoundation)*

  

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
2. sys
3. [darwin](/core/sys/darwin)
4. [CoreFoundation](/core/sys/darwin/CoreFoundation)

# package core:sys/darwin/CoreFoundation [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation)

#### **Warning:**This was generated for `-target:darwin_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (14)

* [CGFloat](#CGFloat)
* [CGPoint](#CGPoint)
* [CGRect](#CGRect)
* [CGSize](#CGSize)
* [HashCode](#HashCode)
* [Index](#Index)
* [OptionFlags](#OptionFlags)
* [Range](#Range)
* [String](#String)
* [StringBuiltInEncodings](#StringBuiltInEncodings)
* [StringEncoding](#StringEncoding)
* [StringEncodings](#StringEncodings)
* [TypeID](#TypeID)
* [TypeRef](#TypeRef)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (11)

* [CFRelease](#CFRelease)
* [ReleaseObject](#ReleaseObject)
* [ReleaseString](#ReleaseString)
* [STR](#STR)
* [StringCopyToOdinString](#StringCopyToOdinString)
* [StringGetBytes](#StringGetBytes)
* [StringGetCString](#StringGetCString)
* [StringGetLength](#StringGetLength)
* [StringGetMaximumSizeForEncoding](#StringGetMaximumSizeForEncoding)
* [StringIsEncodingAvailable](#StringIsEncodingAvailable)
* [StringMakeConstantString](#StringMakeConstantString)

Procedure Groups (1)

* [Release](#Release)

## Types

### [CGFloat ¶](#CGFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFCGTypes.odin#L3)

```
CGFloat :: distinct f64
```

### [CGPoint ¶](#CGPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFCGTypes.odin#L5)

```
CGPoint :: struct {
	x: CGFloat,
	y: CGFloat,
}
```

### [CGRect ¶](#CGRect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFCGTypes.odin#L10)

```
CGRect :: struct {
	using origin: CGPoint,
	using size: CGSize,
}
```

### [CGSize ¶](#CGSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFCGTypes.odin#L15)

```
CGSize :: struct {
	width:  CGFloat,
	height: CGFloat,
}
```

### [HashCode ¶](#HashCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L7)

```
HashCode :: distinct uint
```

### [Index ¶](#Index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L8)

```
Index :: distinct int
```

##### Related Procedures With Parameters

* [StringGetBytes](/core/sys/darwin/CoreFoundation/#StringGetBytes)
* [StringGetCString](/core/sys/darwin/CoreFoundation/#StringGetCString)
* [StringGetMaximumSizeForEncoding](/core/sys/darwin/CoreFoundation/#StringGetMaximumSizeForEncoding)



##### Related Procedures With Returns

* [StringGetLength](/core/sys/darwin/CoreFoundation/#StringGetLength)

### [OptionFlags ¶](#OptionFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L6)

```
OptionFlags :: distinct uint
```

### [Range ¶](#Range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L11)

```
Range :: struct {
	location: Index,
	length:   Index,
}
```

##### Related Procedures With Parameters

* [StringGetBytes](/core/sys/darwin/CoreFoundation/#StringGetBytes)

### [String ¶](#String) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L7)

```
String :: distinct rawptr
```

 

same as CFStringRef




##### Related Procedures With Parameters

* [ReleaseString](/core/sys/darwin/CoreFoundation/#ReleaseString)
* [StringCopyToOdinString](/core/sys/darwin/CoreFoundation/#StringCopyToOdinString)
* [StringGetBytes](/core/sys/darwin/CoreFoundation/#StringGetBytes)
* [StringGetCString](/core/sys/darwin/CoreFoundation/#StringGetCString)
* [StringGetLength](/core/sys/darwin/CoreFoundation/#StringGetLength)
* [Release](/core/sys/darwin/CoreFoundation/#Release) *(procedure groups)*



##### Related Procedures With Returns

* [StringMakeConstantString](/core/sys/darwin/CoreFoundation/#StringMakeConstantString)

### [StringBuiltInEncodings ¶](#StringBuiltInEncodings) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L11)

```
StringBuiltInEncodings :: enum StringEncoding {
	MacRoman      = 0, 
	WindowsLatin1 = 1280, 
	ISOLatin1     = 513, 
	NextStepLatin = 2817, 
	ASCII         = 1536, 
	Unicode       = 256, 
	UTF8          = 134217984, 
	NonLossyASCII = 3071, 
	UTF16         = 256, 
	UTF16BE       = 268435712, 
	UTF16LE       = 335544576, 
	UTF32         = 201326848, 
	UTF32BE       = 402653440, 
	UTF32LE       = 469762304, 
}
```

### [StringEncoding ¶](#StringEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L9)

```
StringEncoding :: distinct i32
```

##### Related Procedures With Parameters

* [StringGetBytes](/core/sys/darwin/CoreFoundation/#StringGetBytes)
* [StringGetCString](/core/sys/darwin/CoreFoundation/#StringGetCString)
* [StringGetMaximumSizeForEncoding](/core/sys/darwin/CoreFoundation/#StringGetMaximumSizeForEncoding)
* [StringIsEncodingAvailable](/core/sys/darwin/CoreFoundation/#StringIsEncodingAvailable)

### [StringEncodings ¶](#StringEncodings) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L30)

```
StringEncodings :: enum Index {
	MacJapanese             = 1, 
	MacChineseTrad          = 2, 
	MacKorean               = 3, 
	MacArabic               = 4, 
	MacHebrew               = 5, 
	MacGreek                = 6, 
	MacCyrillic             = 7, 
	MacDevanagari           = 9, 
	MacGurmukhi             = 10, 
	MacGujarati             = 11, 
	MacOriya                = 12, 
	MacBengali              = 13, 
	MacTamil                = 14, 
	MacTelugu               = 15, 
	MacKannada              = 16, 
	MacMalayalam            = 17, 
	MacSinhalese            = 18, 
	MacBurmese              = 19, 
	MacKhmer                = 20, 
	MacThai                 = 21, 
	MacLaotian              = 22, 
	MacGeorgian             = 23, 
	MacArmenian             = 24, 
	MacChineseSimp          = 25, 
	MacTibetan              = 26, 
	MacMongolian            = 27, 
	MacEthiopic             = 28, 
	MacCentralEurRoman      = 29, 
	MacVietnamese           = 30, 
	MacExtArabic            = 31, 
	MacSymbol               = 33, 
	MacDingbats             = 34, 
	MacTurkish              = 35, 
	MacCroatian             = 36, 
	MacIcelandic            = 37, 
	MacRomanian             = 38, 
	MacCeltic               = 39, 
	MacGaelic               = 40, 
	MacFarsi                = 140, 
	MacUkrainian            = 152, 
	MacInuit                = 236, 
	MacVT100                = 252, 
	MacHFS                  = 255, 
	ISOLatin2               = 514, 
	ISOLatin3               = 515, 
	ISOLatin4               = 516, 
	ISOLatinCyrillic        = 517, 
	ISOLatinArabic          = 518, 
	ISOLatinGreek           = 519, 
	ISOLatinHebrew          = 520, 
	ISOLatin5               = 521, 
	ISOLatin6               = 522, 
	ISOLatinThai            = 523, 
	ISOLatin7               = 525, 
	ISOLatin8               = 526, 
	ISOLatin9               = 527, 
	ISOLatin10              = 528, 
	DOSLatinUS              = 1024, 
	DOSGreek                = 1029, 
	DOSBalticRim            = 1030, 
	DOSLatin1               = 1040, 
	DOSGreek1               = 1041, 
	DOSLatin2               = 1042, 
	DOSCyrillic             = 1043, 
	DOSTurkish              = 1044, 
	DOSPortuguese           = 1045, 
	DOSIcelandic            = 1046, 
	DOSHebrew               = 1047, 
	DOSCanadianFrench       = 1048, 
	DOSArabic               = 1049, 
	DOSNordic               = 1050, 
	DOSRussian              = 1051, 
	DOSGreek2               = 1052, 
	DOSThai                 = 1053, 
	DOSJapanese             = 1056, 
	DOSChineseSimplif       = 1057, 
	DOSKorean               = 1058, 
	DOSChineseTrad          = 1059, 
	WindowsLatin2           = 1281, 
	WindowsCyrillic         = 1282, 
	WindowsGreek            = 1283, 
	WindowsLatin5           = 1284, 
	WindowsHebrew           = 1285, 
	WindowsArabic           = 1286, 
	WindowsBalticRim        = 1287, 
	WindowsVietnamese       = 1288, 
	WindowsKoreanJohab      = 1296, 
	ANSEL                   = 1537, 
	JIS_X0201_76            = 1568, 
	JIS_X0208_83            = 1569, 
	JIS_X0208_90            = 1570, 
	JIS_X0212_90            = 1571, 
	JIS_C6226_78            = 1572, 
	ShiftJIS_X0213          = 1576, 
	ShiftJIS_X0213_MenKuTen = 1577, 
	GB_2312_80              = 1584, 
	GBK_95                  = 1585, 
	GB_18030_2000           = 1586, 
	KSC_5601_87             = 1600, 
	KSC_5601_92_Johab       = 1601, 
	CNS_11643_92_P1         = 1617, 
	CNS_11643_92_P2         = 1618, 
	CNS_11643_92_P3         = 1619, 
	ISO_2022_JP             = 2080, 
	ISO_2022_JP_2           = 2081, 
	ISO_2022_JP_1           = 2082, 
	ISO_2022_JP_3           = 2083, 
	ISO_2022_CN             = 2096, 
	ISO_2022_CN_EXT         = 2097, 
	ISO_2022_KR             = 2112, 
	EUC_JP                  = 2336, 
	EUC_CN                  = 2352, 
	EUC_TW                  = 2353, 
	EUC_KR                  = 2368, 
	ShiftJIS                = 2561, 
	KOI8_R                  = 2562, 
	Big5                    = 2563, 
	MacRomanLatin1          = 2564, 
	HZ_GB_2312              = 2565, 
	Big5_HKSCS_1999         = 2566, 
	VISCII                  = 2567, 
	KOI8_U                  = 2568, 
	Big5_E                  = 2569, 
	NextStepJapanese        = 2818, 
	EBCDIC_US               = 3073, 
	EBCDIC_CP037            = 3074, 
	UTF7                    = 67109120, 
	UTF7_IMAP               = 2576, 
	ShiftJIS_X0213_00       = 1576,     // Deprecated. Use `ShiftJIS_X0213` instead.
}
```

### [TypeID ¶](#TypeID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L5)

```
TypeID :: distinct uint
```

### [TypeRef ¶](#TypeRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L9)

```
TypeRef :: distinct rawptr
```

##### Related Procedures With Parameters

* [CFRelease](/core/sys/darwin/CoreFoundation/#CFRelease)
* [ReleaseObject](/core/sys/darwin/CoreFoundation/#ReleaseObject)
* [Release](/core/sys/darwin/CoreFoundation/#Release) *(procedure groups)*

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [CFRelease ¶](#CFRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L18)

```
CFRelease :: proc "c" (cf: TypeRef) ---
```

 

Releases a Core Foundation object.

### [ReleaseObject ¶](#ReleaseObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L27)

```
ReleaseObject :: proc(cf: TypeRef) {…}
```

##### Related Procedure Groups

* [Release](/core/sys/darwin/CoreFoundation/#Release)

### [ReleaseString ¶](#ReleaseString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L32)

```
ReleaseString :: proc(theString: String) {…}
```

 

Releases a Core Foundation string.




##### Related Procedure Groups

* [Release](/core/sys/darwin/CoreFoundation/#Release)

### [STR ¶](#STR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L179)

```
STR :: StringMakeConstantString
```

### [StringCopyToOdinString ¶](#StringCopyToOdinString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L184)

```
StringCopyToOdinString :: proc(theString: String, allocator := context.allocator) -> (str: string, ok: bool) #optional_ok {…}
```

### [StringGetBytes ¶](#StringGetBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L174)

```
StringGetBytes :: proc "c" (
	thestring:                String, 
	range:                    Range, 
	encoding:                 StringEncoding, 
	lossByte:                 u8, 
	isExternalRepresentation: b8, 
	buffer:                   [^]u8, 
	maxBufLen:                Index, 
	usedBufLen:               ^Index, 
) -> Index ---
```

 

Fetches a range of the characters from a string into a byte buffer after converting the characters to a specified encoding.

### [StringGetCString ¶](#StringGetCString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L165)

```
StringGetCString :: proc "c" (theString: String, buffer: [^]u8, bufferSize: Index, encoding: StringEncoding) -> b8 ---
```

 

Copies the character contents of a string to a local C string buffer after converting the characters to a given encoding.

### [StringGetLength ¶](#StringGetLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L168)

```
StringGetLength :: proc "c" (theString: String) -> Index ---
```

 

Returns the number (in terms of UTF-16 code pairs) of Unicode characters in a string.

### [StringGetMaximumSizeForEncoding ¶](#StringGetMaximumSizeForEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L171)

```
StringGetMaximumSizeForEncoding :: proc "c" (length: Index, encoding: StringEncoding) -> Index ---
```

 

Returns the maximum number of bytes a string of a specified length (in Unicode characters) will take up if encoded in a specified encoding.

### [StringIsEncodingAvailable ¶](#StringIsEncodingAvailable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L176)

```
StringIsEncodingAvailable :: proc "c" (encoding: StringEncoding) -> b8 ---
```

### [StringMakeConstantString ¶](#StringMakeConstantString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin#L179)

```
StringMakeConstantString :: proc "c" (#const c: cstring) -> String ---
```

## Procedure Groups

### [Release ¶](#Release) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin#L22)

```
Release :: proc{
	ReleaseObject,
	ReleaseString,
}
```

 

Releases a Core Foundation object.

## Source Files

* [CFBase.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFBase.odin)
* [CFCGTypes.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFCGTypes.odin)
* [CFString.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreFoundation/CFString.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.379003000 +0000 UTC`

* [Types](#pkg-Types)
  + [CGFloat](#CGFloat)
  + [CGPoint](#CGPoint)
  + [CGRect](#CGRect)
  + [CGSize](#CGSize)
  + [HashCode](#HashCode)
  + [Index](#Index)
  + [OptionFlags](#OptionFlags)
  + [Range](#Range)
  + [String](#String)
  + [StringBuiltInEncodings](#StringBuiltInEncodings)
  + [StringEncoding](#StringEncoding)
  + [StringEncodings](#StringEncodings)
  + [TypeID](#TypeID)
  + [TypeRef](#TypeRef)
* [Procedures](#pkg-Procedures)
  + [CFRelease](#CFRelease)
  + [ReleaseObject](#ReleaseObject)
  + [ReleaseString](#ReleaseString)
  + [STR](#STR)
  + [StringCopyToOdinString](#StringCopyToOdinString)
  + [StringGetBytes](#StringGetBytes)
  + [StringGetCString](#StringGetCString)
  + [StringGetLength](#StringGetLength)
  + [StringGetMaximumSizeForEncoding](#StringGetMaximumSizeForEncoding)
  + [StringIsEncodingAvailable](#StringIsEncodingAvailable)
  + [StringMakeConstantString](#StringMakeConstantString)
* [Procedure Groups](#pkg-Procedure Groups)
  + [Release](#Release)
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