package sys/freebsd - pkg.odin-lang.org 






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



Current Package: *[sys\_freebsd](/core/sys/freebsd)*

  

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
3. [freebsd](/core/sys/freebsd)

# package core:sys/freebsd [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd)

#### **Warning:**This was generated for `-target:freebsd_amd64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (54)

* [Address\_Family](#Address_Family)
* [Errno](#Errno)
* [Fd](#Fd)
* [File\_Control\_Command](#File_Control_Command)
* [File\_Lock](#File_Lock)
* [File\_Seal\_Index](#File_Seal_Index)
* [File\_Seals](#File_Seals)
* [File\_Status\_Flag](#File_Status_Flag)
* [File\_Status\_Flags](#File_Status_Flags)
* [File\_Status\_Index](#File_Status_Index)
* [IP4\_Address](#IP4_Address)
* [IP6\_Address](#IP6_Address)
* [Interface\_Address\_Message\_Header\_Len](#Interface_Address_Message_Header_Len)
* [Interface\_Data](#Interface_Data)
* [Interface\_Message\_Header\_Len](#Interface_Message_Header_Len)
* [Interface\_Type](#Interface_Type)
* [Link\_State](#Link_State)
* [MIB\_Identifier](#MIB_Identifier)
* [Message\_Flag](#Message_Flag)
* [Protocol](#Protocol)
* [Protocol\_Family](#Protocol_Family)
* [Record\_Lock\_Flag](#Record_Lock_Flag)
* [Recv\_Flags](#Recv_Flags)
* [Route\_Address\_Flag](#Route_Address_Flag)
* [Route\_Address\_Flags](#Route_Address_Flags)
* [Route\_Address\_Index](#Route_Address_Index)
* [Route\_Message\_Header](#Route_Message_Header)
* [Route\_Message\_Type](#Route_Message_Type)
* [Route\_Metrics](#Route_Metrics)
* [Send\_Flags](#Send_Flags)
* [Shutdown\_Method](#Shutdown_Method)
* [Socket\_Address\_Basic](#Socket_Address_Basic)
* [Socket\_Address\_Data\_Link](#Socket_Address_Data_Link)
* [Socket\_Address\_Header](#Socket_Address_Header)
* [Socket\_Address\_Internet](#Socket_Address_Internet)
* [Socket\_Address\_Internet6](#Socket_Address_Internet6)
* [Socket\_Address\_Storage](#Socket_Address_Storage)
* [Socket\_Flag\_Index](#Socket_Flag_Index)
* [Socket\_Flags](#Socket_Flags)
* [Socket\_Option](#Socket_Option)
* [Socket\_Option\_Level](#Socket_Option_Level)
* [Socket\_Type](#Socket_Type)
* [Userland\_Mutex\_Operation](#Userland_Mutex_Operation)
* [Valid\_Socket\_Option\_Level](#Valid_Socket_Option_Level)
* [in\_addr\_t](#in_addr_t)
* [in\_port\_t](#in_port_t)
* [off\_t](#off_t)
* [pid\_t](#pid_t)
* [sa\_family\_t](#sa_family_t)
* [socklen\_t](#socklen_t)
* [suseconds\_t](#suseconds_t)
* [time\_t](#time_t)
* [timespec](#timespec)
* [timeval](#timeval)

Constants (30)

* [FD\_CLOEXEC](#FD_CLOEXEC)
* [RTM\_VERSION](#RTM_VERSION)
* [STDERR\_FILENO](#STDERR_FILENO)
* [STDIN\_FILENO](#STDIN_FILENO)
* [STDOUT\_FILENO](#STDOUT_FILENO)
* [SYS\_\_umtx\_op](#SYS__umtx_op)
* [SYS\_accept](#SYS_accept)
* [SYS\_accept4](#SYS_accept4)
* [SYS\_bind](#SYS_bind)
* [SYS\_close](#SYS_close)
* [SYS\_connect](#SYS_connect)
* [SYS\_fcntl](#SYS_fcntl)
* [SYS\_fsync](#SYS_fsync)
* [SYS\_getpeername](#SYS_getpeername)
* [SYS\_getpid](#SYS_getpid)
* [SYS\_getsockname](#SYS_getsockname)
* [SYS\_ioctl](#SYS_ioctl)
* [SYS\_listen](#SYS_listen)
* [SYS\_open](#SYS_open)
* [SYS\_pread](#SYS_pread)
* [SYS\_pwrite](#SYS_pwrite)
* [SYS\_read](#SYS_read)
* [SYS\_recvfrom](#SYS_recvfrom)
* [SYS\_sendto](#SYS_sendto)
* [SYS\_setsockopt](#SYS_setsockopt)
* [SYS\_shutdown](#SYS_shutdown)
* [SYS\_socket](#SYS_socket)
* [SYS\_sysctl](#SYS_sysctl)
* [SYS\_write](#SYS_write)
* [TIOCGWINSZ](#TIOCGWINSZ)

Variables (0)

This section is empty.

Procedures (39)

* [accept4\_T](#accept4_T)
* [accept4\_nil](#accept4_nil)
* [accept\_T](#accept_T)
* [accept\_nil](#accept_nil)
* [bind](#bind)
* [close](#close)
* [connect](#connect)
* [fcntl](#fcntl)
* [fcntl\_add\_seals](#fcntl_add_seals)
* [fcntl\_dupfd](#fcntl_dupfd)
* [fcntl\_get\_seals](#fcntl_get_seals)
* [fcntl\_getfd](#fcntl_getfd)
* [fcntl\_getfl](#fcntl_getfl)
* [fcntl\_getlk](#fcntl_getlk)
* [fcntl\_getown](#fcntl_getown)
* [fcntl\_setfd](#fcntl_setfd)
* [fcntl\_setfl](#fcntl_setfl)
* [fcntl\_setlk](#fcntl_setlk)
* [fcntl\_setown](#fcntl_setown)
* [fsync](#fsync)
* [getpeername](#getpeername)
* [getpid](#getpid)
* [getsockname](#getsockname)
* [getsockname\_or\_peername](#getsockname_or_peername)
* [ioctl](#ioctl)
* [listen](#listen)
* [open](#open)
* [pread](#pread)
* [pwrite](#pwrite)
* [read](#read)
* [recv](#recv)
* [recvfrom](#recvfrom)
* [send](#send)
* [sendto](#sendto)
* [setsockopt](#setsockopt)
* [shutdown](#shutdown)
* [socket](#socket)
* [sysctl](#sysctl)
* [write](#write)

Procedure Groups (2)

* [accept](#accept)
* [accept4](#accept4)

## Types

### [Address\_Family ¶](#Address_Family) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L344)

```
Address_Family :: enum sa_family_t {
	UNSPEC      = 0, 
	LOCAL       = 1, 
	UNIX        = 1, 
	INET        = 2, 
	IMPLINK     = 3, 
	PUP         = 4, 
	CHAOS       = 5, 
	NETBIOS     = 6, 
	ISO         = 7, 
	OSI         = 7, 
	ECMA        = 8, 
	DATAKIT     = 9, 
	CCITT       = 10, 
	SNA         = 11, 
	DECnet      = 12, 
	DLI         = 13, 
	LAT         = 14, 
	HYLINK      = 15, 
	APPLETALK   = 16, 
	ROUTE       = 17, 
	LINK        = 18, 
	PSEUDO_XTP  = 19, 
	COIP        = 20, 
	CNT         = 21, 
	PSEUDO_RTIP = 22, 
	IPX         = 23, 
	SIP         = 24, 
	PSEUDO_PIP  = 25, 
	ISDN        = 26, 
	E164        = 26, 
	PSEUDO_KEY  = 27, 
	INET6       = 28, 
	NATM        = 29, 
	ATM         = 30, 
	NETGRAPH    = 32, 
	SLOW        = 33, 
	SCLUSTER    = 34, 
	ARP         = 35, 
	BLUETOOTH   = 36, 
	IEEE80211   = 37, 
	NETLINK     = 38, 
	INET_SDP    = 40, 
	INET6_SDP   = 42, 
	HYPERV      = 43, 
	DIVERT      = 44, 
	MAX         = 44, 
	VENDOR00    = 39, 
	VENDOR01    = 41, 
	VENDOR03    = 45, 
	VENDOR04    = 47, 
	VENDOR05    = 49, 
	VENDOR06    = 51, 
	VENDOR07    = 53, 
	VENDOR08    = 55, 
	VENDOR09    = 57, 
	VENDOR10    = 59, 
	VENDOR11    = 61, 
	VENDOR12    = 63, 
	VENDOR13    = 65, 
	VENDOR14    = 67, 
	VENDOR15    = 69, 
	VENDOR16    = 71, 
	VENDOR17    = 73, 
	VENDOR18    = 75, 
	VENDOR19    = 77, 
	VENDOR20    = 79, 
	VENDOR21    = 81, 
	VENDOR22    = 83, 
	VENDOR23    = 85, 
	VENDOR24    = 87, 
	VENDOR25    = 89, 
	VENDOR26    = 91, 
	VENDOR27    = 93, 
	VENDOR28    = 95, 
	VENDOR29    = 97, 
	VENDOR30    = 99, 
	VENDOR31    = 101, 
	VENDOR32    = 103, 
	VENDOR33    = 105, 
	VENDOR34    = 107, 
	VENDOR35    = 109, 
	VENDOR36    = 111, 
	VENDOR37    = 113, 
	VENDOR38    = 115, 
	VENDOR39    = 117, 
	VENDOR40    = 119, 
	VENDOR41    = 121, 
	VENDOR42    = 123, 
	VENDOR43    = 125, 
	VENDOR44    = 127, 
	VENDOR45    = 129, 
	VENDOR46    = 131, 
	VENDOR47    = 133, 
}
```

 

#define AF\_\*

### [Errno ¶](#Errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L70)

```
Errno :: enum i32 {
	NONE            = 0, 
	EPERM           = 1, 
	ENOENT          = 2, 
	ESRCH           = 3, 
	EINTR           = 4, 
	EIO             = 5, 
	ENXIO           = 6, 
	E2BIG           = 7, 
	ENOEXEC         = 8, 
	EBADF           = 9, 
	ECHILD          = 10, 
	EDEADLK         = 11, 
	ENOMEM          = 12, 
	EACCES          = 13, 
	EFAULT          = 14, 
	ENOTBLK         = 15, 
	EBUSY           = 16, 
	EEXIST          = 17, 
	EXDEV           = 18, 
	ENODEV          = 19, 
	ENOTDIR         = 20, 
	EISDIR          = 21, 
	EINVAL          = 22, 
	ENFILE          = 23, 
	EMFILE          = 24, 
	ENOTTY          = 25, 
	ETXTBSY         = 26, 
	EFBIG           = 27, 
	ENOSPC          = 28, 
	ESPIPE          = 29, 
	EROFS           = 30, 
	EMLINK          = 31, 
	EPIPE           = 32, 
	EDOM            = 33, 
	ERANGE          = 34, 
	EAGAIN          = 35, 
	EWOULDBLOCK     = 35, 
	EINPROGRESS     = 36, 
	EALREADY        = 37, 
	ENOTSOCK        = 38, 
	EDESTADDRREQ    = 39, 
	EMSGSIZE        = 40, 
	EPROTOTYPE      = 41, 
	ENOPROTOOPT     = 42, 
	EPROTONOSUPPORT = 43, 
	ESOCKTNOSUPPORT = 44, 
	EOPNOTSUPP      = 45, 
	ENOTSUP         = 45, 
	EPFNOSUPPORT    = 46, 
	EAFNOSUPPORT    = 47, 
	EADDRINUSE      = 48, 
	EADDRNOTAVAIL   = 49, 
	ENETDOWN        = 50, 
	ENETUNREACH     = 51, 
	ENETRESET       = 52, 
	ECONNABORTED    = 53, 
	ECONNRESET      = 54, 
	ENOBUFS         = 55, 
	EISCONN         = 56, 
	ENOTCONN        = 57, 
	ESHUTDOWN       = 58, 
	ETOOMANYREFS    = 59, 
	ETIMEDOUT       = 60, 
	ECONNREFUSED    = 61, 
	ELOOP           = 62, 
	ENAMETOOLONG    = 63, 
	EHOSTDOWN       = 64, 
	EHOSTUNREACH    = 65, 
	ENOTEMPTY       = 66, 
	EPROCLIM        = 67, 
	EUSERS          = 68, 
	EDQUOT          = 69, 
	ESTALE          = 70, 
	EREMOTE         = 71, 
	EBADRPC         = 72, 
	ERPCMISMATCH    = 73, 
	EPROGUNAVAIL    = 74, 
	EPROGMISMATCH   = 75, 
	EPROCUNAVAIL    = 76, 
	ENOLCK          = 77, 
	ENOSYS          = 78, 
	EFTYPE          = 79, 
	EAUTH           = 80, 
	ENEEDAUTH       = 81, 
	EIDRM           = 82, 
	ENOMSG          = 83, 
	EOVERFLOW       = 84, 
	ECANCELED       = 85, 
	EILSEQ          = 86, 
	ENOATTR         = 87, 
	EDOOFUS         = 88, 
	EBADMSG         = 89, 
	EMULTIHOP       = 90, 
	ENOLINK         = 91, 
	EPROTO          = 92, 
	ENOTCAPABLE     = 93, 
	ECAPMODE        = 94, 
	ENOTRECOVERABLE = 95, 
	EOWNERDEAD      = 96, 
	EINTEGRITY      = 97, 
}
```

##### Related Procedures With Returns

* [accept4\_T](/core/sys/freebsd/#accept4_T)
* [accept4\_nil](/core/sys/freebsd/#accept4_nil)
* [accept\_T](/core/sys/freebsd/#accept_T)
* [accept\_nil](/core/sys/freebsd/#accept_nil)
* [bind](/core/sys/freebsd/#bind)
* [close](/core/sys/freebsd/#close)
* [connect](/core/sys/freebsd/#connect)
* [fcntl](/core/sys/freebsd/#fcntl)
* [fcntl\_add\_seals](/core/sys/freebsd/#fcntl_add_seals)
* [fcntl\_dupfd](/core/sys/freebsd/#fcntl_dupfd)
* [fcntl\_get\_seals](/core/sys/freebsd/#fcntl_get_seals)
* [fcntl\_getfd](/core/sys/freebsd/#fcntl_getfd)
* [fcntl\_getfl](/core/sys/freebsd/#fcntl_getfl)
* [fcntl\_getlk](/core/sys/freebsd/#fcntl_getlk)
* [fcntl\_getown](/core/sys/freebsd/#fcntl_getown)
* [fcntl\_setfd](/core/sys/freebsd/#fcntl_setfd)
* [fcntl\_setfl](/core/sys/freebsd/#fcntl_setfl)
* [fcntl\_setlk](/core/sys/freebsd/#fcntl_setlk)
* [fcntl\_setown](/core/sys/freebsd/#fcntl_setown)
* [fsync](/core/sys/freebsd/#fsync)
* [getpeername](/core/sys/freebsd/#getpeername)
* [getsockname](/core/sys/freebsd/#getsockname)
* [getsockname\_or\_peername](/core/sys/freebsd/#getsockname_or_peername)
* [ioctl](/core/sys/freebsd/#ioctl)
* [listen](/core/sys/freebsd/#listen)
* [open](/core/sys/freebsd/#open)
* [pread](/core/sys/freebsd/#pread)
* [pwrite](/core/sys/freebsd/#pwrite)
* [read](/core/sys/freebsd/#read)
* [recv](/core/sys/freebsd/#recv)
* [recvfrom](/core/sys/freebsd/#recvfrom)
* [send](/core/sys/freebsd/#send)
* [sendto](/core/sys/freebsd/#sendto)
* [setsockopt](/core/sys/freebsd/#setsockopt)
* [shutdown](/core/sys/freebsd/#shutdown)
* [socket](/core/sys/freebsd/#socket)
* [sysctl](/core/sys/freebsd/#sysctl)
* [write](/core/sys/freebsd/#write)
* [accept](/core/sys/freebsd/#accept) *(procedure groups)*
* [accept4](/core/sys/freebsd/#accept4) *(procedure groups)*

### [Fd ¶](#Fd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L22)

```
Fd :: distinct i32
```

##### Related Procedures With Parameters

* [accept4\_T](/core/sys/freebsd/#accept4_T)
* [accept4\_nil](/core/sys/freebsd/#accept4_nil)
* [accept\_T](/core/sys/freebsd/#accept_T)
* [accept\_nil](/core/sys/freebsd/#accept_nil)
* [bind](/core/sys/freebsd/#bind)
* [close](/core/sys/freebsd/#close)
* [connect](/core/sys/freebsd/#connect)
* [fcntl](/core/sys/freebsd/#fcntl)
* [fcntl\_add\_seals](/core/sys/freebsd/#fcntl_add_seals)
* [fcntl\_dupfd](/core/sys/freebsd/#fcntl_dupfd)
* [fcntl\_get\_seals](/core/sys/freebsd/#fcntl_get_seals)
* [fcntl\_getfd](/core/sys/freebsd/#fcntl_getfd)
* [fcntl\_getfl](/core/sys/freebsd/#fcntl_getfl)
* [fcntl\_getlk](/core/sys/freebsd/#fcntl_getlk)
* [fcntl\_getown](/core/sys/freebsd/#fcntl_getown)
* [fcntl\_setfd](/core/sys/freebsd/#fcntl_setfd)
* [fcntl\_setfl](/core/sys/freebsd/#fcntl_setfl)
* [fcntl\_setlk](/core/sys/freebsd/#fcntl_setlk)
* [fcntl\_setown](/core/sys/freebsd/#fcntl_setown)
* [fsync](/core/sys/freebsd/#fsync)
* [getpeername](/core/sys/freebsd/#getpeername)
* [getsockname](/core/sys/freebsd/#getsockname)
* [getsockname\_or\_peername](/core/sys/freebsd/#getsockname_or_peername)
* [ioctl](/core/sys/freebsd/#ioctl)
* [listen](/core/sys/freebsd/#listen)
* [pread](/core/sys/freebsd/#pread)
* [pwrite](/core/sys/freebsd/#pwrite)
* [read](/core/sys/freebsd/#read)
* [recv](/core/sys/freebsd/#recv)
* [recvfrom](/core/sys/freebsd/#recvfrom)
* [send](/core/sys/freebsd/#send)
* [sendto](/core/sys/freebsd/#sendto)
* [setsockopt](/core/sys/freebsd/#setsockopt)
* [shutdown](/core/sys/freebsd/#shutdown)
* [write](/core/sys/freebsd/#write)
* [accept](/core/sys/freebsd/#accept) *(procedure groups)*
* [accept4](/core/sys/freebsd/#accept4) *(procedure groups)*



##### Related Procedures With Returns

* [open](/core/sys/freebsd/#open)
* [socket](/core/sys/freebsd/#socket)

##### Related Constants

* [STDERR\_FILENO](/core/sys/freebsd/#STDERR_FILENO)
* [STDIN\_FILENO](/core/sys/freebsd/#STDIN_FILENO)
* [STDOUT\_FILENO](/core/sys/freebsd/#STDOUT_FILENO)

### [File\_Control\_Command ¶](#File_Control_Command) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L646)

```
File_Control_Command :: enum i32 {
	DUPFD          = 0,  // duplicate file descriptor
	GETFD          = 1,  // get file descriptor flags
	SETFD          = 2,  // set file descriptor flags
	GETFL          = 3,  // get file status flags
	SETFL          = 4,  // set file status flags
	GETOWN         = 5,  // get SIGIO/SIGURG proc/pgrp
	SETOWN         = 6,  // set SIGIO/SIGURG proc/pgrp
	OGETLK         = 7,  // get record locking information
	OSETLK         = 8,  // set record locking information
	OSETLKW        = 9,  // F_SETLK; wait if blocked
	DUP2FD         = 10, // duplicate file descriptor to arg
	GETLK          = 11, // get record locking information
	SETLK          = 12, // set record locking information
	SETLKW         = 13, // F_SETLK; wait if blocked
	SETLK_REMOTE   = 14, // debugging support for remote locks
	READAHEAD      = 15, // read ahead
	RDAHEAD        = 16, // Darwin compatible read ahead
	DUPFD_CLOEXEC  = 17, // Like F_DUPFD, but FD_CLOEXEC is set
	DUP2FD_CLOEXEC = 18, // Like F_DUP2FD, but FD_CLOEXEC is set
	ADD_SEALS      = 19, 
	GET_SEALS      = 20, 
	ISUNIONSTACK   = 21, // Kludge for libc, don't use it.
	KINFO          = 22, // Return kinfo_file for this fd
}
```

 

command values
#define F\_\*




##### Related Procedures With Parameters

* [fcntl](/core/sys/freebsd/#fcntl)

### [File\_Lock ¶](#File_Lock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L697)

```
File_Lock :: struct {
	start:  off_t,
	// starting offset 
	len:    off_t,
	// len = 0 means until end of file 
	pid:    pid_t,
	// lock owner 
	type:   Record_Lock_Flag,
	// lock type: read/write, etc. 
	whence: i16,
	// type of l_start 
	sysid:  i32,
}
```

 

struct flock




##### Related Procedures With Parameters

* [fcntl\_getlk](/core/sys/freebsd/#fcntl_getlk)
* [fcntl\_setlk](/core/sys/freebsd/#fcntl_setlk)

### [File\_Seal\_Index ¶](#File_Seal_Index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L674)

```
File_Seal_Index :: enum i32 {
	SEAL   = 0, // 0x0001, /* Prevent adding sealings */
	SHRINK = 1, // 0x0002, /* May not shrink */
	GROW   = 2, // 0x0004, /* May not grow */
	WRITE  = 3, // 0x0008, /* May not write */
}
```

 

Seals (F\_ADD\_SEALS, F\_GET\_SEALS).
#define F\_SEAL\_\*

### [File\_Seals ¶](#File_Seals) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L681)

```
File_Seals :: bit_set[File_Seal_Index; i32]
```

##### Related Procedures With Parameters

* [fcntl\_add\_seals](/core/sys/freebsd/#fcntl_add_seals)



##### Related Procedures With Returns

* [fcntl\_get\_seals](/core/sys/freebsd/#fcntl_get_seals)

### [File\_Status\_Flag ¶](#File_Status_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L713)

```
File_Status_Flag :: enum i32 {
	// open-only flags 
	RDONLY          = 0,        // open for reading only
	WRONLY          = 1,        // open for writing only
	RDWR            = 2,        // open for reading and writing
	ACCMODE         = 3,        // mask for above modes
	NONBLOCK        = 4,        // no delay
	APPEND          = 8,        // set append mode
	SHLOCK          = 16,       // open with shared file lock
	EXLOCK          = 32,       // open with exclusive file lock
	ASYNC           = 64,       // signal pgrp when data ready
	FSYNC           = 128,      // synchronous writes
	SYNC            = 128,      // POSIX synonym for O_FSYNC
	NOFOLLOW        = 256,      // don't follow symlinks
	CREAT           = 512,      // create if nonexistent
	TRUNC           = 1024,     // truncate to zero length
	EXCL            = 2048,     // error if already exists
	// Defined by POSIX 1003.1; BSD default, but must be distinct from O_RDONLY. 
	NOCTTY          = 32768,    // don't assign controlling terminal
	// Attempt to bypass buffer cache 
	DIRECT          = 65536, 
	DIRECTORY       = 131072,   // Fail if not directory
	EXEC            = 262144,   // Open for execute only
	SEARCH          = 262144, 
	// Defined by POSIX 1003.1-2008; BSD default, but reserve for future use. 
	TTY_INIT        = 524288,   // Restore default termios attributes
	CLOEXEC         = 1048576, 
	VERIFY          = 2097152,  // open only after verification
	PATH            = 4194304,  // fd is only a path
	RESOLVE_BENEATH = 8388608,  // Do not allow name resolution to walk out of cwd
	DSYNC           = 16777216, // POSIX data sync
	EMPTY_PATH      = 33554432, 
}
```

 

\* File status flags: these are used by open(2), fcntl(2).
\* They are also used (indirectly) in the kernel file structure f\_flags,
\* which is a superset of the open/fcntl flags. Open flags and f\_flags
\* are inter-convertible using OFLAGS(fflags) and FFLAGS(oflags).
\* Open/fcntl flags begin with O\_; kernel-internal flags begin with F.

### [File\_Status\_Flags ¶](#File_Status_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L812)

```
File_Status_Flags :: bit_set[File_Status_Index; i32]
```

##### Related Procedures With Parameters

* [fcntl\_setfl](/core/sys/freebsd/#fcntl_setfl)
* [open](/core/sys/freebsd/#open)



##### Related Procedures With Returns

* [fcntl\_getfl](/core/sys/freebsd/#fcntl_getfl)

### [File\_Status\_Index ¶](#File_Status_Index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L754)

```
File_Status_Index :: enum i32 {
	// The comments below come from the documentation for `fcntl`.
	WRONLY          = 0, 
	RDWR            = 1, 
	// Non-blocking I/O; if no data is available to a read(2)
	// 	   system call, or if a write(2) operation would block, the
	// 	   read or write call returns -1 with the error EAGAIN. 
	NONBLOCK        = 2, 
	// Force each write to append at the end of file; corresponds
	// 	   to the O_APPEND flag of open(2). 
	APPEND          = 3, 
	SHLOCK          = 4, 
	EXLOCK          = 5, 
	// Enable the SIGIO signal to be sent to the process group when
	// 	   I/O is possible, e.g., upon availability of data to be read. 
	ASYNC           = 6, 
	// Enable synchronous writes.  Corresponds to the O_SYNC flag
	// 	   of open(2).  O_FSYNC is an historical synonym for O_SYNC. 
	SYNC            = 7, 
	FSYNC           = 7, 
	NOFOLLOW        = 8, 
	CREAT           = 9, 
	TRUNC           = 10, 
	EXCL            = 11, 
	NOCTTY          = 15, 
	// Minimize or eliminate the cache effects of reading and
	// 	   writing.  The system will attempt to avoid caching the data
	// 	   you read or write.  If it cannot avoid caching the data, it
	// 	   will minimize the impact the data has on the cache.  Use of
	// 	   this flag can drastically reduce performance if not used
	// 	   with care. 
	DIRECT          = 16, 
	DIRECTORY       = 17, 
	EXEC            = 18, 
	TTY_INIT        = 19, 
	CLOEXEC         = 20, 
	VERIFY          = 21, 
	PATH            = 22, 
	RESOLVE_BENEATH = 23, 
	// Enable synchronous data writes.  Corresponds to the O_DSYNC
	// 	   flag of open(2). 
	DSYNC           = 24, 
	EMPTY_PATH      = 25, 
}
```

### [IP4\_Address ¶](#IP4_Address) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1509)

```
IP4_Address :: struct #raw_union {
	// NOTE(Feoramund): I have modified this struct from its C definition by
	// introducing the byte variant to make it easier to work with.
	addr8:  [4]u8,
	addr32: in_addr_t,
}
```

 

Internet address (a structure for historical reasons).
struct in\_addr

### [IP6\_Address ¶](#IP6_Address) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1533)

```
IP6_Address :: struct #raw_union {
	addr8:  [16]u8,
	addr16: [8]u16be,
	addr32: [4]u32be,
}
```

 

\* IPv6 address

struct in6\_addr

### [Interface\_Address\_Message\_Header\_Len ¶](#Interface_Address_Message_Header_Len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1249)

```
Interface_Address_Message_Header_Len :: struct {
	msglen:   u16,
	// to skip over non-understood messages 
	version:  u8,
	// future binary compatibility 
	type:     u8,
	// message type 
	addrs:    bit_set[Route_Address_Index; i32],
	// like rtm_addrs 
	flags:    i32,
	// value of ifa_flags 
	index:    u16,
	// index for associated ifp 
	_spare1:  u16,
	// spare space to grow if_index, see if_var.h 
	len:      u16,
	// length of ifa_msghdrl incl. if_data 
	data_off: u16,
	// offset of if_data from beginning 
	metric:   i32,
	// value of ifa_ifp->if_metric 
	data:     Interface_Data,
}
```

 

\* The 'l' version shall be used by new interfaces, like NET\_RT\_IFLISTL. It is
\* extensible after ifam\_metric or within ifam\_data. Both the ifa\_msghdrl and
\* if\_data now have a member field detailing the struct length in addition to
\* the routing message length. Macros are provided to find the start of
\* ifm\_data and the start of the socket address strucutres immediately following
\* struct ifa\_msghdrl given a pointer to struct ifa\_msghdrl.

struct ifa\_msghdrl

### [Interface\_Data ¶](#Interface_Data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1175)

```
Interface_Data :: struct {
	// generic interface information 
	type:        u8,
	// ethernet, tokenring, etc 
	physical:    u8,
	// e.g., AUI, Thinnet, 10base-T, etc 
	addrlen:     u8,
	// media address length 
	hdrlen:      u8,
	// media header length 
	link_state:  Link_State,
	// current link state 
	vhid:        u8,
	// carp vhid 
	datalen:     u16,
	// length of this data struct 
	mtu:         u32,
	// maximum transmission unit 
	metric:      u32,
	// routing metric (external only) 
	baudrate:    u64,
	// volatile statistics 
	ipackets:    u64,
	// packets received on interface 
	ierrors:     u64,
	// input errors on interface 
	opackets:    u64,
	// packets sent on interface 
	oerrors:     u64,
	// output errors on interface 
	collisions:  u64,
	// collisions on csma interfaces 
	ibytes:      u64,
	// total number of octets received 
	obytes:      u64,
	// total number of octets sent 
	imcasts:     u64,
	// packets received via multicast 
	omcasts:     u64,
	// packets sent via multicast 
	iqdrops:     u64,
	// dropped on input 
	oqdrops:     u64,
	// dropped on output 
	noproto:     u64,
	// destined for unsupported protocol 
	hwassist:    u64,
	// Unions are here to make sizes MI. 
	_epoch:      struct #raw_union {
		// uptime at attach or stat reset 
		tt: time_t,
		ph: u64,
	},
	_lastchange: struct #raw_union {
		// time of last administrative change 
		tv: timeval,
		ph: struct {
			ph1: u64,
			ph2: u64,
		},
	},
}
```

 

\* Structure describing information about an interface
\* which may be of interest to management entities.

struct if\_data

### [Interface\_Message\_Header\_Len ¶](#Interface_Message_Header_Len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1226)

```
Interface_Message_Header_Len :: struct {
	msglen:   u16,
	// to skip over non-understood messages 
	version:  u8,
	// future binary compatibility 
	type:     u8,
	// message type 
	addrs:    bit_set[Route_Address_Index; i32],
	// like rtm_addrs 
	flags:    i32,
	// value of if_flags 
	index:    u16,
	// index for associated ifp 
	_spare1:  u16,
	// spare space to grow if_index, see if_var.h 
	len:      u16,
	// length of if_msghdrl incl. if_data 
	data_off: u16,
	// offset of if_data from beginning 
	_spare2:  i32,
	data:     Interface_Data,
}
```

 

\* The 'l' version shall be used by new interfaces, like NET\_RT\_IFLISTL. It is
\* extensible after ifm\_data\_off or within ifm\_data. Both the if\_msghdr and
\* if\_data now have a member field detailing the struct length in addition to
\* the routing message length. Macros are provided to find the start of
\* ifm\_data and the start of the socket address strucutres immediately following
\* struct if\_msghdrl given a pointer to struct if\_msghdrl.

struct if\_msghdrl

### [Interface\_Type ¶](#Interface_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1268)

```
Interface_Type :: enum u8 {
	OTHER                         = 1,   // none of the following
	ARPA_1822                     = 2,   // old-style arpanet imp
	HDH1822                       = 3,   // HDH arpanet imp
	X25DDN                        = 4,   // x25 to imp
	X25                           = 5,   // PDN X25 interface (RFC877)
	ETHER                         = 6,   // Ethernet CSMA/CD
	ISO88023                      = 7,   // CMSA/CD
	ISO88024                      = 8,   // Token Bus
	ISO88025                      = 9,   // Token Ring
	ISO88026                      = 10,  // MAN
	STARLAN                       = 11, 
	P10                           = 12,  // Proteon 10MBit ring
	P80                           = 13,  // Proteon 80MBit ring
	HY                            = 14,  // Hyperchannel
	FDDI                          = 15, 
	LAPB                          = 16, 
	SDLC                          = 17, 
	T1                            = 18, 
	CEPT                          = 19,  // E1 - european T1
	ISDNBASIC                     = 20, 
	ISDNPRIMARY                   = 21, 
	PTPSERIAL                     = 22,  // Proprietary PTP serial
	PPP                           = 23,  // RFC 1331
	LOOP                          = 24,  // loopback
	EON                           = 25,  // ISO over IP
	XETHER                        = 26,  // obsolete 3MB experimental ethernet
	NSIP                          = 27,  // XNS over IP
	SLIP                          = 28,  // IP over generic TTY
	ULTRA                         = 29,  // Ultra Technologies
	DS3                           = 30,  // Generic T3
	SIP                           = 31,  // SMDS
	FRELAY                        = 32,  // Frame Relay DTE only
	RS232                         = 33, 
	PARA                          = 34,  // parallel-port
	ARCNET                        = 35, 
	ARCNETPLUS                    = 36, 
	ATM                           = 37,  // ATM cells
	MIOX25                        = 38, 
	SONET                         = 39,  // SONET or SDH
	X25PLE                        = 40, 
	ISO88022LLC                   = 41, 
	LOCALTALK                     = 42, 
	SMDSDXI                       = 43, 
	FRELAYDCE                     = 44,  // Frame Relay DCE
	V35                           = 45, 
	HSSI                          = 46, 
	HIPPI                         = 47, 
	MODEM                         = 48,  // Generic Modem
	AAL5                          = 49,  // AAL5 over ATM
	SONETPATH                     = 50, 
	SONETVT                       = 51, 
	SMDSICIP                      = 52,  // SMDS InterCarrier Interface
	PROPVIRTUAL                   = 53,  // Proprietary Virtual/internal
	PROPMUX                       = 54,  // Proprietary Multiplexing
	IEEE80212                     = 55,  // 100BaseVG
	FIBRECHANNEL                  = 56,  // Fibre Channel
	HIPPIINTERFACE                = 57,  // HIPPI interfaces
	FRAMERELAYINTERCONNECT        = 58,  // Obsolete, use 0x20 either 0x2c
	AFLANE8023                    = 59,  // ATM Emulated LAN for 802.3
	AFLANE8025                    = 60,  // ATM Emulated LAN for 802.5
	CCTEMUL                       = 61,  // ATM Emulated circuit
	FASTETHER                     = 62,  // Fast Ethernet (100BaseT)
	ISDN                          = 63,  // ISDN and X.25
	V11                           = 64,  // CCITT V.11/X.21
	V36                           = 65,  // CCITT V.36
	G703AT64K                     = 66,  // CCITT G703 at 64Kbps
	G703AT2MB                     = 67,  // Obsolete see DS1-MIB
	QLLC                          = 68,  // SNA QLLC
	FASTETHERFX                   = 69,  // Fast Ethernet (100BaseFX)
	CHANNEL                       = 70,  // channel
	IEEE80211                     = 71,  // radio spread spectrum (unused)
	IBM370PARCHAN                 = 72,  // IBM System 360/370 OEMI Channel
	ESCON                         = 73,  // IBM Enterprise Systems Connection
	DLSW                          = 74,  // Data Link Switching
	ISDNS                         = 75,  // ISDN S/T interface
	ISDNU                         = 76,  // ISDN U interface
	LAPD                          = 77,  // Link Access Protocol D
	IPSWITCH                      = 78,  // IP Switching Objects
	RSRB                          = 79,  // Remote Source Route Bridging
	ATMLOGICAL                    = 80,  // ATM Logical Port
	DS0                           = 81,  // Digital Signal Level 0
	DS0BUNDLE                     = 82,  // group of ds0s on the same ds1
	BSC                           = 83,  // Bisynchronous Protocol
	ASYNC                         = 84,  // Asynchronous Protocol
	CNR                           = 85,  // Combat Net Radio
	ISO88025DTR                   = 86,  // ISO 802.5r DTR
	EPLRS                         = 87,  // Ext Pos Loc Report Sys
	ARAP                          = 88,  // Appletalk Remote Access Protocol
	PROPCNLS                      = 89,  // Proprietary Connectionless Protocol
	HOSTPAD                       = 90,  // CCITT-ITU X.29 PAD Protocol
	TERMPAD                       = 91,  // CCITT-ITU X.3 PAD Facility
	FRAMERELAYMPI                 = 92,  // Multiproto Interconnect over FR
	X213                          = 93,  // CCITT-ITU X213
	ADSL                          = 94,  // Asymmetric Digital Subscriber Loop
	RADSL                         = 95,  // Rate-Adapt. Digital Subscriber Loop
	SDSL                          = 96,  // Symmetric Digital Subscriber Loop
	VDSL                          = 97,  // Very H-Speed Digital Subscrib. Loop
	ISO88025CRFPINT               = 98,  // ISO 802.5 CRFP
	MYRINET                       = 99,  // Myricom Myrinet
	VOICEEM                       = 100, // voice recEive and transMit
	VOICEFXO                      = 101, // voice Foreign Exchange Office
	VOICEFXS                      = 102, // voice Foreign Exchange Station
	VOICEENCAP                    = 103, // voice encapsulation
	VOICEOVERIP                   = 104, // voice over IP encapsulation
	ATMDXI                        = 105, // ATM DXI
	ATMFUNI                       = 106, // ATM FUNI
	ATMIMA                        = 107, // ATM IMA
	PPPMULTILINKBUNDLE            = 108, // PPP Multilink Bundle
	IPOVERCDLC                    = 109, // IBM ipOverCdlc
	IPOVERCLAW                    = 110, // IBM Common Link Access to Workstn
	STACKTOSTACK                  = 111, // IBM stackToStack
	VIRTUALIPADDRESS              = 112, // IBM VIPA
	MPC                           = 113, // IBM multi-protocol channel support
	IPOVERATM                     = 114, // IBM ipOverAtm
	ISO88025FIBER                 = 115, // ISO 802.5j Fiber Token Ring
	TDLC                          = 116, // IBM twinaxial data link control
	GIGABITETHERNET               = 117, // Gigabit Ethernet
	HDLC                          = 118, // HDLC
	LAPF                          = 119, // LAP F
	V37                           = 120, // V.37
	X25MLP                        = 121, // Multi-Link Protocol
	X25HUNTGROUP                  = 122, // X25 Hunt Group
	TRANSPHDLC                    = 123, // Transp HDLC
	INTERLEAVE                    = 124, // Interleave channel
	FAST                          = 125, // Fast channel
	IP                            = 126, // IP (for APPN HPR in IP networks)
	DOCSCABLEMACLAYER             = 127, // CATV Mac Layer
	DOCSCABLEDOWNSTREAM           = 128, // CATV Downstream interface
	DOCSCABLEUPSTREAM             = 129, // CATV Upstream interface
	A12MPPSWITCH                  = 130, // Avalon Parallel Processor
	TUNNEL                        = 131, // Encapsulation interface
	COFFEE                        = 132, // coffee pot
	CES                           = 133, // Circiut Emulation Service
	ATMSUBINTERFACE               = 134, // (x)  ATM Sub Interface
	L2VLAN                        = 135, // Layer 2 Virtual LAN using 802.1Q
	L3IPVLAN                      = 136, // Layer 3 Virtual LAN - IP Protocol
	L3IPXVLAN                     = 137, // Layer 3 Virtual LAN - IPX Prot.
	DIGITALPOWERLINE              = 138, // IP over Power Lines
	MEDIAMAILOVERIP               = 139, // (xxx)  Multimedia Mail over IP
	DTM                           = 140, // Dynamic synchronous Transfer Mode
	DCN                           = 141, // Data Communications Network
	IPFORWARD                     = 142, // IP Forwarding Interface
	MSDSL                         = 143, // Multi-rate Symmetric DSL
	IEEE1394                      = 144, // IEEE1394 High Performance SerialBus
	IFGSN                         = 145, // HIPPI-6400
	DVBRCCMACLAYER                = 146, // DVB-RCC MAC Layer
	DVBRCCDOWNSTREAM              = 147, // DVB-RCC Downstream Channel
	DVBRCCUPSTREAM                = 148, // DVB-RCC Upstream Channel
	ATMVIRTUAL                    = 149, // ATM Virtual Interface
	MPLSTUNNEL                    = 150, // MPLS Tunnel Virtual Interface
	SRP                           = 151, // Spatial Reuse Protocol
	VOICEOVERATM                  = 152, // Voice over ATM
	VOICEOVERFRAMERELAY           = 153, // Voice Over Frame Relay
	IDSL                          = 154, // Digital Subscriber Loop over ISDN
	COMPOSITELINK                 = 155, // Avici Composite Link Interface
	SS7SIGLINK                    = 156, // SS7 Signaling Link
	PROPWIRELESSP2P               = 157, // Prop. P2P wireless interface
	FRFORWARD                     = 158, // Frame forward Interface
	RFC1483                       = 159, // Multiprotocol over ATM AAL5
	USB                           = 160, // USB Interface
	IEEE8023ADLAG                 = 161, // IEEE 802.3ad Link Aggregate
	BGPPOLICYACCOUNTING           = 162, // BGP Policy Accounting
	FRF16MFRBUNDLE                = 163, // FRF.16 Multilink Frame Relay
	H323GATEKEEPER                = 164, // H323 Gatekeeper
	H323PROXY                     = 165, // H323 Voice and Video Proxy
	MPLS                          = 166, // MPLS
	MFSIGLINK                     = 167, // Multi-frequency signaling link
	HDSL2                         = 168, // High Bit-Rate DSL, 2nd gen.
	SHDSL                         = 169, // Multirate HDSL2
	DS1FDL                        = 170, // Facility Data Link (4Kbps) on a DS1
	POS                           = 171, // Packet over SONET/SDH Interface
	DVBASILN                      = 172, // DVB-ASI Input
	DVBASIOUT                     = 173, // DVB-ASI Output
	PLC                           = 174, // Power Line Communications
	NFAS                          = 175, // Non-Facility Associated Signaling
	TR008                         = 176, // TROO8
	GR303RDT                      = 177, // Remote Digital Terminal
	GR303IDT                      = 178, // Integrated Digital Terminal
	ISUP                          = 179, // ISUP
	PROPDOCSWIRELESSMACLAYER      = 180, // prop/Wireless MAC Layer
	PROPDOCSWIRELESSDOWNSTREAM    = 181, // prop/Wireless Downstream
	PROPDOCSWIRELESSUPSTREAM      = 182, // prop/Wireless Upstream
	HIPERLAN2                     = 183, // HIPERLAN Type 2 Radio Interface
	PROPBWAP2MP                   = 184, // PropBroadbandWirelessAccess P2MP
	SONETOVERHEADCHANNEL          = 185, // SONET Overhead Channel
	DIGITALWRAPPEROVERHEADCHANNEL = 186, // Digital Wrapper Overhead
	AAL2                          = 187, // ATM adaptation layer 2
	RADIOMAC                      = 188, // MAC layer over radio links
	ATMRADIO                      = 189, // ATM over radio links
	IMT                           = 190, // Inter-Machine Trunks
	MVL                           = 191, // Multiple Virtual Lines DSL
	REACHDSL                      = 192, // Long Reach DSL
	FRDLCIENDPT                   = 193, // Frame Relay DLCI End Point
	ATMVCIENDPT                   = 194, // ATM VCI End Point
	OPTICALCHANNEL                = 195, // Optical Channel
	OPTICALTRANSPORT              = 196, // Optical Transport
	INFINIBAND                    = 199, // Infiniband
	INFINIBANDLAG                 = 200, // Infiniband Link Aggregate
	BRIDGE                        = 209, // Transparent bridge interface
	STF                           = 215, // 6to4 interface
	// 	 * Not based on IANA assignments.  Conflicting with IANA assignments.
	// 	 * We should make them negative probably.
	// 	 * This requires changes to struct if_data.
	GIF                           = 240, // Generic tunnel interface
	PVC                           = 241, // Unused
	ENC                           = 244, // Encapsulating interface
	PFLOG                         = 246, // PF packet filter logging
	PFSYNC                        = 247, // PF packet filter synchronization
	WIREGUARD                     = 248, // WireGuard tunnel
}
```

 

enum ifType

### [Link\_State ¶](#Link_State) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1164)

```
Link_State :: enum u8 {
	UNKNOWN = 0, // link invalid/unknown
	DOWN    = 1, // link is down
	UP      = 2, // link is up
}
```

 

\* Values for if\_link\_state.

#define LINK\_STATE\_\*

### [MIB\_Identifier ¶](#MIB_Identifier) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L839)

```
MIB_Identifier :: enum i32 {
	// 	* Top-level identifiers
	CTL_SYSCTL                         = 0,  // "magic" numbers
	CTL_KERN                           = 1,  // "high kernel": proc, limits
	CTL_VM                             = 2,  // virtual memory
	CTL_VFS                            = 3,  // filesystem, mount type is next
	CTL_NET                            = 4,  // network, see socket.h
	CTL_DEBUG                          = 5,  // debugging parameters
	CTL_HW                             = 6,  // generic cpu/io
	CTL_MACHDEP                        = 7,  // machine dependent
	CTL_USER                           = 8,  // user-level
	CTL_P1003_1B                       = 9,  // POSIX 1003.1B
	// 	* CTL_SYSCTL identifiers
	CTL_SYSCTL_DEBUG                   = 0,  // printf all nodes
	CTL_SYSCTL_NAME                    = 1,  // string name of OID
	CTL_SYSCTL_NEXT                    = 2,  // next OID, honoring CTLFLAG_SKIP
	CTL_SYSCTL_NAME2OID                = 3,  // int array of name
	CTL_SYSCTL_OIDFMT                  = 4,  // OID's kind and format
	CTL_SYSCTL_OIDDESCR                = 5,  // OID's description
	CTL_SYSCTL_OIDLABEL                = 6,  // aggregation label
	CTL_SYSCTL_NEXTNOSKIP              = 7,  // next OID, ignoring CTLFLAG_SKIP
	// 	* CTL_KERN identifiers
	KERN_OSTYPE                        = 1,  // string: system version
	KERN_OSRELEASE                     = 2,  // string: system release
	KERN_OSREV                         = 3,  // int: system revision
	KERN_VERSION                       = 4,  // string: compile time info
	KERN_MAXVNODES                     = 5,  // int: max vnodes
	KERN_MAXPROC                       = 6,  // int: max processes
	KERN_MAXFILES                      = 7,  // int: max open files
	KERN_ARGMAX                        = 8,  // int: max arguments to exec
	KERN_SECURELVL                     = 9,  // int: system security level
	KERN_HOSTNAME                      = 10, // string: hostname
	KERN_HOSTID                        = 11, // int: host identifier
	KERN_CLOCKRATE                     = 12, // struct: struct clockrate
	// was: #define KERN_VNODE13; disabled in 2003 and removed in 2023 
	KERN_PROC                          = 14, // struct: process entries
	KERN_FILE                          = 15, // struct: file entries
	KERN_PROF                          = 16, // node: kernel profiling info
	KERN_POSIX1                        = 17, // int: POSIX.1 version
	KERN_NGROUPS                       = 18, // int: # of supplemental group ids
	KERN_JOB_CONTROL                   = 19, // int: is job control available
	KERN_SAVED_IDS                     = 20, // int: saved set-user/group-ID
	KERN_BOOTTIME                      = 21, // struct: time kernel was booted
	KERN_NISDOMAINNAME                 = 22, // string: YP domain name
	KERN_UPDATEINTERVAL                = 23, // int: update process sleep time
	KERN_OSRELDATE                     = 24, // int: kernel release date
	KERN_NTP_PLL                       = 25, // node: NTP PLL control
	KERN_BOOTFILE                      = 26, // string: name of booted kernel
	KERN_MAXFILESPERPROC               = 27, // int: max open files per proc
	KERN_MAXPROCPERUID                 = 28, // int: max processes per uid
	KERN_DUMPDEV                       = 29, // struct cdev *: device to dump on
	KERN_IPC                           = 30, // node: anything related to IPC
	KERN_DUMMY                         = 31, // unused
	KERN_PS_STRINGS                    = 32, // int: address of PS_STRINGS
	KERN_USRSTACK                      = 33, // int: address of USRSTACK
	KERN_LOGSIGEXIT                    = 34, // int: do we log sigexit procs?
	KERN_IOV_MAX                       = 35, // int: value of UIO_MAXIOV
	KERN_HOSTUUID                      = 36, // string: host UUID identifier
	KERN_ARND                          = 37, // int: from arc4rand()
	KERN_MAXPHYS                       = 38, // int: MAXPHYS value
	KERN_LOCKF                         = 39, // struct: lockf reports
	// 	* KERN_PROC subtypes
	KERN_PROC_ALL                      = 0,  // everything
	KERN_PROC_PID                      = 1,  // by process id
	KERN_PROC_PGRP                     = 2,  // by process group id
	KERN_PROC_SESSION                  = 3,  // by session of pid
	KERN_PROC_TTY                      = 4,  // by controlling tty
	KERN_PROC_UID                      = 5,  // by effective uid
	KERN_PROC_RUID                     = 6,  // by real uid
	KERN_PROC_ARGS                     = 7,  // get/set arguments/proctitle
	KERN_PROC_PROC                     = 8,  // only return procs
	KERN_PROC_SV_NAME                  = 9,  // get syscall vector name
	KERN_PROC_RGID                     = 10, // by real group id
	KERN_PROC_GID                      = 11, // by effective group id
	KERN_PROC_PATHNAME                 = 12, // path to executable
	KERN_PROC_OVMMAP                   = 13, // Old VM map entries for process
	KERN_PROC_OFILEDESC                = 14, // Old file descriptors for process
	KERN_PROC_KSTACK                   = 15, // Kernel stacks for process
	KERN_PROC_INC_THREAD               = 16, // modifier for pid, pgrp, tty, uid, ruid, gid, rgid and proc. This effectively uses 16-31
	KERN_PROC_VMMAP                    = 32, // VM map entries for process
	KERN_PROC_FILEDESC                 = 33, // File descriptors for process
	KERN_PROC_GROUPS                   = 34, // process groups
	KERN_PROC_ENV                      = 35, // get environment
	KERN_PROC_AUXV                     = 36, // get ELF auxiliary vector
	KERN_PROC_RLIMIT                   = 37, // process resource limits
	KERN_PROC_PS_STRINGS               = 38, // get ps_strings location
	KERN_PROC_UMASK                    = 39, // process umask
	KERN_PROC_OSREL                    = 40, // osreldate for process binary
	KERN_PROC_SIGTRAMP                 = 41, // signal trampoline location
	KERN_PROC_CWD                      = 42, // process current working directory
	KERN_PROC_NFDS                     = 43, // number of open file descriptors
	KERN_PROC_SIGFASTBLK               = 44, // address of fastsigblk magic word
	KERN_PROC_VM_LAYOUT                = 45, // virtual address space layout info
	// 	* KERN_IPC identifiers
	KIPC_MAXSOCKBUF                    = 1,  // int: max size of a socket buffer
	KIPC_SOCKBUF_WASTE                 = 2,  // int: wastage factor in sockbuf
	KIPC_SOMAXCONN                     = 3,  // int: max length of connection q
	KIPC_MAX_LINKHDR                   = 4,  // int: max length of link header
	KIPC_MAX_PROTOHDR                  = 5,  // int: max length of network header
	KIPC_MAX_HDR                       = 6,  // int: max total length of headers
	KIPC_MAX_DATALEN                   = 7,  // int: max length of data?
	// 	 * PF_ROUTE - Routing table
	// 	 *
	// 	 * Three additional levels are defined:
	// 	 *      Fourth: address family, 0 is wildcard
	// 	 *      Fifth: type of info, defined below
	// 	 *      Sixth: flag(s) to mask with for NET_RT_FLAGS
	NET_RT_DUMP                        = 1,  // dump; may limit to a.f.
	NET_RT_FLAGS                       = 2,  // by flags, e.g. RESOLVING
	NET_RT_IFLIST                      = 3,  // survey interface list
	NET_RT_IFMALIST                    = 4,  // return multicast address list
	NET_RT_IFLISTL                     = 5,  // Survey interface list, using 'l'en versions of msghdr structs.
	NET_RT_NHOP                        = 6,  // dump routing nexthops
	NET_RT_NHGRP                       = 7,  // dump routing nexthop groups
	// 	* CTL_HW identifiers
	HW_MACHINE                         = 1,  // string: machine class
	HW_MODEL                           = 2,  // string: specific machine model
	HW_NCPU                            = 3,  // int: number of cpus
	HW_BYTEORDER                       = 4,  // int: machine byte order
	HW_PHYSMEM                         = 5,  // int: total memory
	HW_USERMEM                         = 6,  // int: non-kernel memory
	HW_PAGESIZE                        = 7,  // int: software page size
	HW_DISKNAMES                       = 8,  // strings: disk drive names
	HW_DISKSTATS                       = 9,  // struct: diskstats[]
	HW_FLOATINGPT                      = 10, // int: has HW floating point?
	HW_MACHINE_ARCH                    = 11, // string: machine architecture
	HW_REALMEM                         = 12, // int: 'real' memory
	// 	* CTL_USER definitions
	USER_CS_PATH                       = 1,  // string: _CS_PATH
	USER_BC_BASE_MAX                   = 2,  // int: BC_BASE_MAX
	USER_BC_DIM_MAX                    = 3,  // int: BC_DIM_MAX
	USER_BC_SCALE_MAX                  = 4,  // int: BC_SCALE_MAX
	USER_BC_STRING_MAX                 = 5,  // int: BC_STRING_MAX
	USER_COLL_WEIGHTS_MAX              = 6,  // int: COLL_WEIGHTS_MAX
	USER_EXPR_NEST_MAX                 = 7,  // int: EXPR_NEST_MAX
	USER_LINE_MAX                      = 8,  // int: LINE_MAX
	USER_RE_DUP_MAX                    = 9,  // int: RE_DUP_MAX
	USER_POSIX2_VERSION                = 10, // int: POSIX2_VERSION
	USER_POSIX2_C_BIND                 = 11, // int: POSIX2_C_BIND
	USER_POSIX2_C_DEV                  = 12, // int: POSIX2_C_DEV
	USER_POSIX2_CHAR_TERM              = 13, // int: POSIX2_CHAR_TERM
	USER_POSIX2_FORT_DEV               = 14, // int: POSIX2_FORT_DEV
	USER_POSIX2_FORT_RUN               = 15, // int: POSIX2_FORT_RUN
	USER_POSIX2_LOCALEDEF              = 16, // int: POSIX2_LOCALEDEF
	USER_POSIX2_SW_DEV                 = 17, // int: POSIX2_SW_DEV
	USER_POSIX2_UPE                    = 18, // int: POSIX2_UPE
	USER_STREAM_MAX                    = 19, // int: POSIX2_STREAM_MAX
	USER_TZNAME_MAX                    = 20, // int: POSIX2_TZNAME_MAX
	USER_LOCALBASE                     = 21, // string: _PATH_LOCALBASE
	CTL_P1003_1B_ASYNCHRONOUS_IO       = 1,  // boolean
	CTL_P1003_1B_MAPPED_FILES          = 2,  // boolean
	CTL_P1003_1B_MEMLOCK               = 3,  // boolean
	CTL_P1003_1B_MEMLOCK_RANGE         = 4,  // boolean
	CTL_P1003_1B_MEMORY_PROTECTION     = 5,  // boolean
	CTL_P1003_1B_MESSAGE_PASSING       = 6,  // boolean
	CTL_P1003_1B_PRIORITIZED_IO        = 7,  // boolean
	CTL_P1003_1B_PRIORITY_SCHEDULING   = 8,  // boolean
	CTL_P1003_1B_REALTIME_SIGNALS      = 9,  // boolean
	CTL_P1003_1B_SEMAPHORES            = 10, // boolean
	CTL_P1003_1B_FSYNC                 = 11, // boolean
	CTL_P1003_1B_SHARED_MEMORY_OBJECTS = 12, // boolean
	CTL_P1003_1B_SYNCHRONIZED_IO       = 13, // boolean
	CTL_P1003_1B_TIMERS                = 14, // boolean
	CTL_P1003_1B_AIO_LISTIO_MAX        = 15, // int
	CTL_P1003_1B_AIO_MAX               = 16, // int
	CTL_P1003_1B_AIO_PRIO_DELTA_MAX    = 17, // int
	CTL_P1003_1B_DELAYTIMER_MAX        = 18, // int
	CTL_P1003_1B_MQ_OPEN_MAX           = 19, // int
	CTL_P1003_1B_PAGESIZE              = 20, // int
	CTL_P1003_1B_RTSIG_MAX             = 21, // int
	CTL_P1003_1B_SEM_NSEMS_MAX         = 22, // int
	CTL_P1003_1B_SEM_VALUE_MAX         = 23, // int
	CTL_P1003_1B_SIGQUEUE_MAX          = 24, // int
	CTL_P1003_1B_TIMER_MAX             = 25, // int
}
```

 

MIB, or Management Information Base. Used in sysctl().

### [Message\_Flag ¶](#Message_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L272)

```
Message_Flag :: enum i32 {
	OOB          = 1,      // process out-of-band data
	PEEK         = 2,      // peek at incoming message
	DONTROUTE    = 4,      // send without using routing tables
	EOR          = 8,      // data completes record
	TRUNC        = 16,     // data discarded before delivery
	CTRUNC       = 32,     // control data lost before delivery
	WAITALL      = 64,     // wait for full request or error
	DONTWAIT     = 128,    // this message should be nonblocking
	EOF          = 256,    // data completes connection
	//             0x00000200     unused 
	//             0x00000400     unused 
	//             0x00000800     unused 
	//             0x00001000     unused 
	NOTIFICATION = 8192,   // SCTP notification
	NBIO         = 16384,  // FIONBIO mode, used by fifofs
	COMPAT       = 32768,  // used in sendit()
	SOCALLBCK    = 65536,  // for use by socket callbacks - soreceive (TCP)
	NOSIGNAL     = 131072, // do not generate SIGPIPE on EOF
	CMSG_CLOEXEC = 262144, // make received fds close-on-exec
	WAITFORONE   = 524288, // for recvmmsg()
}
```

 

#define MSG\_\*

### [Protocol ¶](#Protocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L492)

```
Protocol :: enum i32 {
	IP              = 0, 
	ICMP            = 1, 
	IGMP            = 2, 
	GGP             = 3, 
	IP_ENCAP        = 4, 
	ST2             = 5, 
	TCP             = 6, 
	CBT             = 7, 
	EGP             = 8, 
	IGP             = 9, 
	BBN_RCC_MON     = 10, 
	NVP_II          = 11, 
	PUP             = 12, 
	ARGUS           = 13, 
	EMCON           = 14, 
	XNET            = 15, 
	CHAOS           = 16, 
	UDP             = 17, 
	MUX             = 18, 
	DCN_MEAS        = 19, 
	HMP             = 20, 
	PRM             = 21, 
	XNS_IDP         = 22, 
	TRUNK_1         = 23, 
	TRUNK_2         = 24, 
	LEAF_1          = 25, 
	LEAF_2          = 26, 
	RDP             = 27, 
	IRTP            = 28, 
	ISO_TP4         = 29, 
	NETBLT          = 30, 
	MFE_NSP         = 31, 
	MERIT_INP       = 32, 
	DCCP            = 33, 
	THREE_PC        = 34, 
	IDPR            = 35, 
	XTP             = 36, 
	DDP             = 37, 
	IDPR_CMTP       = 38, 
	TP_PlusPlus     = 39, 
	IL              = 40, 
	IPV6            = 41, 
	SDRP            = 42, 
	IPV6_ROUTE      = 43, 
	IPV6_FRAG       = 44, 
	IDRP            = 45, 
	RSVP            = 46, 
	GRE             = 47, 
	DSR             = 48, 
	BNA             = 49, 
	ESP             = 50, 
	AH              = 51, 
	I_NLSP          = 52, 
	SWIPE           = 53, 
	NARP            = 54, 
	MOBILE          = 55, 
	TLSP            = 56, 
	SKIP            = 57, 
	IPV6_ICMP       = 58, 
	IPV6_NONXT      = 59, 
	IPV6_OPTS       = 60, 
	CFTP            = 62, 
	SAT_EXPAK       = 64, 
	KRYPTOLAN       = 65, 
	RVD             = 66, 
	IPPC            = 67, 
	SAT_MON         = 69, 
	VISA            = 70, 
	IPCV            = 71, 
	CPNX            = 72, 
	CPHB            = 73, 
	WSN             = 74, 
	PVP             = 75, 
	BR_SAT_MON      = 76, 
	SUN_ND          = 77, 
	WB_MON          = 78, 
	WB_EXPAK        = 79, 
	ISO_IP          = 80, 
	VMTP            = 81, 
	SECURE_VMTP     = 82, 
	VINES           = 83, 
	TTP             = 84, 
	IPTM            = 84, 
	NSFNET_IGP      = 85, 
	DGP             = 86, 
	TCF             = 87, 
	EIGRP           = 88, 
	OSPFIGP         = 89, 
	Sprite_RPC      = 90, 
	LARP            = 91, 
	MTP             = 92, 
	AX_25           = 93, 
	IPIP            = 94, 
	MICP            = 95, 
	SCC_SP          = 96, 
	ETHERIP         = 97, 
	ENCAP           = 98, 
	GMTP            = 100, 
	IFMP            = 101, 
	PNNI            = 102, 
	PIM             = 103, 
	ARIS            = 104, 
	SCPS            = 105, 
	QNX             = 106, 
	A_N             = 107, 
	IPComp          = 108, 
	SNP             = 109, 
	Compaq_Peer     = 110, 
	IPX_in_IP       = 111, 
	CARP            = 112, 
	PGM             = 113, 
	L2TP            = 115, 
	DDX             = 116, 
	IATP            = 117, 
	STP             = 118, 
	SRP             = 119, 
	UTI             = 120, 
	SMP             = 121, 
	SM              = 122, 
	PTP             = 123, 
	ISIS            = 124, 
	FIRE            = 125, 
	CRTP            = 126, 
	CRUDP           = 127, 
	SSCOPMCE        = 128, 
	IPLT            = 129, 
	SPS             = 130, 
	PIPE            = 131, 
	SCTP            = 132, 
	FC              = 133, 
	RSVP_E2E_IGNORE = 134, 
	Mobility_Header = 135, 
	UDPLite         = 136, 
	MPLS_IN_IP      = 137, 
	MANET           = 138, 
	HIP             = 139, 
	SHIM6           = 140, 
	WESP            = 141, 
	ROHC            = 142, 
	PFSYNC          = 240, 
	DIVERT          = 258, 
}
```

##### Related Procedures With Parameters

* [socket](/core/sys/freebsd/#socket)

### [Protocol\_Family ¶](#Protocol_Family) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L441)

```
Protocol_Family :: enum sa_family_t {
	UNSPEC    = 0, 
	LOCAL     = 1, 
	UNIX      = 1, 
	INET      = 2, 
	IMPLINK   = 3, 
	PUP       = 4, 
	CHAOS     = 5, 
	NETBIOS   = 6, 
	ISO       = 7, 
	OSI       = 7, 
	ECMA      = 8, 
	DATAKIT   = 9, 
	CCITT     = 10, 
	SNA       = 11, 
	DECnet    = 12, 
	DLI       = 13, 
	LAT       = 14, 
	HYLINK    = 15, 
	APPLETALK = 16, 
	ROUTE     = 17, 
	LINK      = 18, 
	XTP       = 19, 
	COIP      = 20, 
	CNT       = 21, 
	SIP       = 24, 
	IPX       = 23, 
	RTIP      = 22, 
	PIP       = 25, 
	ISDN      = 26, 
	KEY       = 27, 
	INET6     = 28, 
	NATM      = 29, 
	ATM       = 30, 
	NETGRAPH  = 32, 
	SLOW      = 33, 
	SCLUSTER  = 34, 
	ARP       = 35, 
	BLUETOOTH = 36, 
	IEEE80211 = 37, 
	NETLINK   = 38, 
	INET_SDP  = 40, 
	INET6_SDP = 42, 
	DIVERT    = 44, 
	MAX       = 44, 
}
```

 

#define PF\_\*




##### Related Procedures With Parameters

* [socket](/core/sys/freebsd/#socket)

### [Record\_Lock\_Flag ¶](#Record_Lock_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L688)

```
Record_Lock_Flag :: enum i32 {
	RDLCK    = 1, // shared or read lock
	UNLCK    = 2, // unlock
	WRLCK    = 3, // exclusive or write lock
	UNLCKSYS = 4, // purge locks for a given system ID
	CANCEL   = 5, // cancel an async lock request
}
```

 

record locking flags (F\_GETLK, F\_SETLK, F\_SETLKW)
#define F\_\*

### [Recv\_Flags ¶](#Recv_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L296)

```
Recv_Flags :: enum i32 {
	NONE         = 0, 
	OOB          = 1,      // process out-of-band data
	PEEK         = 2,      // peek at incoming message
	TRUNC        = 16,     // return real packet or datagram length
	WAITALL      = 64,     // wait for full request or error
	DONTWAIT     = 128,    // do not block
	CMSG_CLOEXEC = 262144, // set received fds close-on-exec
	WAITFORONE   = 524288, // do not block after receiving the first message
}
```

 

Specific subset of `MSG_*` defines that are only for `recv*`.




##### Related Procedures With Parameters

* [recv](/core/sys/freebsd/#recv)
* [recvfrom](/core/sys/freebsd/#recvfrom)

### [Route\_Address\_Flag ¶](#Route_Address_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1126)

```
Route_Address_Flag :: enum i32 {
	DST     = 1,   // destination sockaddr present
	GATEWAY = 2,   // gateway sockaddr present
	NETMASK = 4,   // netmask sockaddr present
	GENMASK = 8,   // cloning mask sockaddr present
	IFP     = 16,  // interface name sockaddr present
	IFA     = 32,  // interface addr sockaddr present
	AUTHOR  = 64,  // sockaddr for author of redirect
	BRD     = 128, // for NEWADDR, broadcast or p-p dest addr
}
```

 

\* Bitmask values for rtm\_addrs.

#define RTA\_\*

### [Route\_Address\_Flags ¶](#Route_Address_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1154)

```
Route_Address_Flags :: bit_set[Route_Address_Index; i32]
```

 

The value stored in rtm\_addrs and similar (ifm\_addrs, etc.)

### [Route\_Address\_Index ¶](#Route_Address_Index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1141)

```
Route_Address_Index :: enum i32 {
	DST     = 0, // destination sockaddr present
	GATEWAY = 1, // gateway sockaddr present
	NETMASK = 2, // netmask sockaddr present
	GENMASK = 3, // cloning mask sockaddr present
	IFP     = 4, // interface name sockaddr present
	IFA     = 5, // interface addr sockaddr present
	AUTHOR  = 6, // sockaddr for author of redirect
	BRD     = 7, // for NEWADDR, broadcast or p-p dest addr
	MAX     = 8, // size of array to allocate
}
```

 

\* Index offsets for sockaddr array for alternate internal encoding.

#define RTAX\_\*

### [Route\_Message\_Header ¶](#Route_Message_Header) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1069)

```
Route_Message_Header :: struct {
	msglen:  u16,
	// to skip over non-understood messages 
	version: u8,
	// future binary compatibility 
	type:    Route_Message_Type,
	// message type 
	index:   u16,
	// index for associated ifp 
	_spare1: u16,
	flags:   i32,
	// flags, incl. kern & message, e.g. DONE 
	addrs:   i32,
	// bitmask identifying sockaddrs in msg 
	pid:     pid_t,
	// identify sender 
	seq:     i32,
	// for sender to identify action 
	errno:   i32,
	// why failed 
	fmask:   i32,
	// bitmask used in RTM_CHANGE message 
	inits:   u64,
	// which metrics we are initializing 
	rmx:     Route_Metrics,
}
```

 

struct rt\_msghdr

### [Route\_Message\_Type ¶](#Route_Message_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1101)

```
Route_Message_Type :: enum u8 {
	ADD        = 1,  // (1) Add Route
	DELETE     = 2,  // (1) Delete Route
	CHANGE     = 3,  // (1) Change Metrics or flags
	GET        = 4,  // (1) Report Metrics
	LOSING     = 5,  // (1) Kernel Suspects Partitioning
	REDIRECT   = 6,  // (1) Told to use different route
	MISS       = 7,  // (1) Lookup failed on this address
	LOCK       = 8,  // (1) fix specified metrics
	// = 0x9  
	// = 0xa  
	RESOLVE    = 11, // (1) req to resolve dst to LL addr
	NEWADDR    = 12, // (2) address being added to iface
	DELADDR    = 13, // (2) address being removed from iface
	IFINFO     = 14, // (3) iface going up/down etc.
	NEWMADDR   = 15, // (4) mcast group membership being added to if
	DELMADDR   = 16, // (4) mcast group membership being deleted
	IFANNOUNCE = 17, // (5) iface arrival/departure
	IEEE80211  = 18, // (5) IEEE80211 wireless event
}
```

 

\* Message types.
\*
\* The format for each message is annotated below using the following
\* identifiers:
\*
\* (1) struct rt\_msghdr
\* (2) struct ifa\_msghdr
\* (3) struct if\_msghdr
\* (4) struct ifma\_msghdr
\* (5) struct if\_announcemsghdr
\*

#define RTM\_\*

### [Route\_Metrics ¶](#Route_Metrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1052)

```
Route_Metrics :: struct {
	locks:    u64,
	// Kernel must leave these values alone 
	mtu:      u64,
	// MTU for this path 
	hopcount: u64,
	// max hops expected 
	expire:   u64,
	// lifetime for route, e.g. redirect 
	recvpipe: u64,
	// inbound delay-bandwidth product 
	sendpipe: u64,
	// outbound delay-bandwidth product 
	ssthresh: u64,
	// outbound gateway buffer limit 
	rtt:      u64,
	// estimated round trip time 
	rttvar:   u64,
	// estimated rtt variance 
	pksent:   u64,
	// packets sent using this route 
	weight:   u64,
	// route weight 
	nhidx:    u64,
	// route nexhop index 
	filler:   [2]u64,
}
```

 

struct rt\_metrics

### [Send\_Flags ¶](#Send_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L308)

```
Send_Flags :: enum i32 {
	NONE      = 0, 
	OOB       = 1,      // process out-of-band data
	DONTROUTE = 4,      // bypass routing, use direct interface
	EOR       = 8,      // data completes record
	DONTWAIT  = 128,    // do not block
	EOF       = 256,    // data completes transaction
	NOSIGNAL  = 131072, // do not generate SIGPIPE on EOF
}
```

 

Specific subset of `MSG_*` defines that are only for `send*`.




##### Related Procedures With Parameters

* [send](/core/sys/freebsd/#send)
* [sendto](/core/sys/freebsd/#sendto)

### [Shutdown\_Method ¶](#Shutdown_Method) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L337)

```
Shutdown_Method :: enum i32 {
	RD   = 0, // shut down the reading side
	WR   = 1, // shut down the writing side
	RDWR = 2, // shut down both sides
}
```

 

\* howto arguments for shutdown(2), specified by Posix.1g.

#define SHUT\_\*




##### Related Procedures With Parameters

* [shutdown](/core/sys/freebsd/#shutdown)

### [Socket\_Address\_Basic ¶](#Socket_Address_Basic) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L328)

```
Socket_Address_Basic :: struct #packed {
	using _: Socket_Address_Header,
	data: [14]u8,
}
```

 

struct sockaddr

### [Socket\_Address\_Data\_Link ¶](#Socket_Address_Data_Link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1491)

```
Socket_Address_Data_Link :: struct {
	using _: Socket_Address_Header,
	index: u16,
	// if != 0, system given index for interface 
	type:  Interface_Type,
	// interface type 
	nlen:  u8,
	// interface name length, no trailing 0 reqd. 
	alen:  u8,
	// link level address length 
	slen:  u8,
	// link layer selector length 
	data:  [46]u8,
}
```

 

\* Structure of a Link-Level sockaddr:

struct sockaddr\_dl

### [Socket\_Address\_Header ¶](#Socket_Address_Header) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L322)

```
Socket_Address_Header :: struct #packed {
	len:    u8,
	// address length 
	family: Address_Family,
}
```

 

Socket address struct header without protocol-specific data.

Inherit from this if you want a custom socket address datatype for use with
bind(), listen(), et cetera.

### [Socket\_Address\_Internet ¶](#Socket_Address_Internet) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1518)

```
Socket_Address_Internet :: struct #packed {
	using _: Socket_Address_Header,
	port: in_port_t,
	addr: IP4_Address,
	zero: [8]u8,
}
```

 

Socket address, internet style.
struct sockaddr\_in

### [Socket\_Address\_Internet6 ¶](#Socket_Address_Internet6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1543)

```
Socket_Address_Internet6 :: struct #packed {
	using _:  Socket_Address_Header,
	port:     in_port_t,
	// Transport layer port # 
	flowinfo: u32,
	// IP6 flow information 
	addr:     IP6_Address,
	// IP6 address 
	scope_id: u32,
}
```

 

\* Socket address for IPv6

struct sockaddr\_in6

### [Socket\_Address\_Storage ¶](#Socket_Address_Storage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L827)

```
Socket_Address_Storage :: struct {
	using _: Socket_Address_Header,
	_pad1:  [6]u8,
	_align: i64,
	// force desired struct alignment 
	_pad2:  [112]u8,
}
```

 

\* RFC 2553: protocol-independent placeholder for socket addresses

struct sockaddr\_storage

### [Socket\_Flag\_Index ¶](#Socket_Flag_Index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L195)

```
Socket_Flag_Index :: enum i32 {
	CLOEXEC  = 28, // 0x10000000
	NONBLOCK = 29, // 0x20000000
}
```

### [Socket\_Flags ¶](#Socket_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L200)

```
Socket_Flags :: bit_set[Socket_Flag_Index; i32]
```

##### Related Procedures With Parameters

* [accept4\_T](/core/sys/freebsd/#accept4_T)
* [accept4\_nil](/core/sys/freebsd/#accept4_nil)
* [accept4](/core/sys/freebsd/#accept4) *(procedure groups)*

### [Socket\_Option ¶](#Socket_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L206)

```
Socket_Option :: enum i32 {
	DEBUG             = 1,      // turn on debugging info recording
	ACCEPTCONN        = 2,      // socket has had listen()
	REUSEADDR         = 4,      // allow local address reuse
	KEEPALIVE         = 8,      // keep connections alive
	DONTROUTE         = 16,     // just use interface addresses
	BROADCAST         = 32,     // permit sending of broadcast msgs
	USELOOPBACK       = 64,     // bypass hardware when possible
	LINGER            = 128,    // linger on close if data present
	OOBINLINE         = 256,    // leave received OOB data in line
	REUSEPORT         = 512,    // allow local address & port reuse
	TIMESTAMP         = 1024,   // timestamp received dgram traffic
	NOSIGPIPE         = 2048,   // no SIGPIPE from EPIPE
	ACCEPTFILTER      = 4096,   // there is an accept filter
	BINTIME           = 8192,   // timestamp received dgram traffic
	NO_OFFLOAD        = 16384,  // socket cannot be offloaded
	NO_DDP            = 32768,  // disable direct data placement
	REUSEPORT_LB      = 65536,  // reuse with load balancing
	RERROR            = 131072, // keep track of receive errors
	// 	 * Additional options, not kept in so_options.
	SNDBUF            = 4097,   // send buffer size
	RCVBUF            = 4098,   // receive buffer size
	SNDLOWAT          = 4099,   // send low-water mark
	RCVLOWAT          = 4100,   // receive low-water mark
	SNDTIMEO          = 4101,   // send timeout
	RCVTIMEO          = 4102,   // receive timeout
	ERROR             = 4103,   // get error status and clear
	TYPE              = 4104,   // get socket type
	LABEL             = 4105,   // socket's MAC label
	PEERLABEL         = 4112,   // socket's peer's MAC label
	LISTENQLIMIT      = 4113,   // socket's backlog limit
	LISTENQLEN        = 4114,   // socket's complete queue length
	LISTENINCQLEN     = 4115,   // socket's incomplete queue length
	SETFIB            = 4116,   // use this FIB to route
	USER_COOKIE       = 4117,   // user cookie (dummynet etc.)
	PROTOCOL          = 4118,   // get socket protocol (Linux name)
	PROTOTYPE         = 4118,   // alias for SO_PROTOCOL (SunOS name)
	TS_CLOCK          = 4119,   // clock type used for SO_TIMESTAMP
	MAX_PACING_RATE   = 4120,   // socket's max TX pacing rate (Linux name)
	DOMAIN            = 4121,   // get socket domain
	TS_REALTIME_MICRO = 0,      // microsecond resolution, realtime
	TS_BINTIME        = 1,      // sub-nanosecond resolution, realtime
	TS_REALTIME       = 2,      // nanosecond resolution, realtime
	TS_MONOTONIC      = 3,      // nanosecond resolution, monotonic
	TS_DEFAULT        = 0, 
	TS_CLOCK_MAX      = 3, 
}
```

 

\* Option flags per-socket.

#define SO\_\*




##### Related Procedures With Parameters

* [setsockopt](/core/sys/freebsd/#setsockopt)

### [Socket\_Option\_Level ¶](#Socket_Option_Level) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L267)

```
Socket_Option_Level :: enum i32 {
	SOCKET = 65535, // options for socket level
}
```

 

\* Level number for (get/set)sockopt() to apply to socket itself.

#define SOL\_\*

### [Socket\_Type ¶](#Socket_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L181)

```
Socket_Type :: enum i32 {
	STREAM    = 1,         // stream socket
	DGRAM     = 2,         // datagram socket
	RAW       = 3,         // raw-protocol interface
	RDM       = 4,         // reliably-delivered message
	SEQPACKET = 5,         // sequenced packet stream
	// 	 * Creation flags, OR'ed into socket() and socketpair() type argument.
	CLOEXEC   = 268435456, 
	NONBLOCK  = 536870912, 
}
```

 

\* Types

#define SOCK\_\*




##### Related Procedures With Parameters

* [socket](/core/sys/freebsd/#socket)

### [Userland\_Mutex\_Operation ¶](#Userland_Mutex_Operation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1557)

```
Userland_Mutex_Operation :: enum i32 {
	LOCK              = 0,  // COMPAT10
	UNLOCK            = 1,  // COMPAT10
	WAIT              = 2, 
	WAKE              = 3, 
	MUTEX_TRYLOCK     = 4, 
	MUTEX_LOCK        = 5, 
	MUTEX_UNLOCK      = 6, 
	SET_CEILING       = 7, 
	CV_WAIT           = 8, 
	CV_SIGNAL         = 9, 
	CV_BROADCAST      = 10, 
	WAIT_UINT         = 11, 
	RW_RDLOCK         = 12, 
	RW_WRLOCK         = 13, 
	RW_UNLOCK         = 14, 
	WAIT_UINT_PRIVATE = 15, 
	WAKE_PRIVATE      = 16, 
	MUTEX_WAIT        = 17, 
	MUTEX_WAKE        = 18, // deprecated
	SEM_WAIT          = 19, // deprecated
	SEM_WAKE          = 20, // deprecated
	NWAKE_PRIVATE     = 21, 
	MUTEX_WAKE2       = 22, 
	SEM2_WAIT         = 23, 
	SEM2_WAKE         = 24, 
	SHM               = 25, 
	ROBUST_LISTS      = 26, 
	GET_MIN_TIMEOUT   = 27, 
	SET_MIN_TIMEOUT   = 28, 
}
```

 

op code for \_umtx\_op
#define UMTX\_OP\_\*

### [Valid\_Socket\_Option\_Level ¶](#Valid_Socket_Option_Level) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L258)

```
Valid_Socket_Option_Level :: union #no_nil {
	Protocol_Family, 
	Socket_Option_Level, 
}
```

##### Related Procedures With Parameters

* [setsockopt](/core/sys/freebsd/#setsockopt)

### [in\_addr\_t ¶](#in_addr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1505)

```
in_addr_t :: distinct u32be
```

### [in\_port\_t ¶](#in_port_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L46)

```
in_port_t :: distinct u16be
```

### [off\_t ¶](#off_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L36)

```
off_t :: distinct i64
```

##### Related Procedures With Parameters

* [pread](/core/sys/freebsd/#pread)
* [pwrite](/core/sys/freebsd/#pwrite)

### [pid\_t ¶](#pid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L37)

```
pid_t :: distinct i32
```

##### Related Procedures With Parameters

* [fcntl\_setown](/core/sys/freebsd/#fcntl_setown)



##### Related Procedures With Returns

* [fcntl\_getown](/core/sys/freebsd/#fcntl_getown)
* [getpid](/core/sys/freebsd/#getpid)

### [sa\_family\_t ¶](#sa_family_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L38)

```
sa_family_t :: distinct u8
```

### [socklen\_t ¶](#socklen_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L39)

```
socklen_t :: distinct u32
```

##### Related Procedures With Parameters

* [bind](/core/sys/freebsd/#bind)
* [connect](/core/sys/freebsd/#connect)
* [setsockopt](/core/sys/freebsd/#setsockopt)

### [suseconds\_t ¶](#suseconds_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L40)

```
suseconds_t :: distinct i64
```

 

microseconds (signed)

### [time\_t ¶](#time_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L30)

```
time_t :: distinct i64
```

### [timespec ¶](#timespec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L52)

```
timespec :: struct {
	sec:  time_t,
	// seconds 
	nsec: i64,
}
```

### [timeval ¶](#timeval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L61)

```
timeval :: struct {
	sec:  time_t,
	// seconds 
	usec: suseconds_t,
}
```

## Constants

### [FD\_CLOEXEC ¶](#FD_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L684)

```
FD_CLOEXEC :: 1
```

 

file descriptor flags (F\_GETFD, F\_SETFD)

### [RTM\_VERSION ¶](#RTM_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin#L1085)

```
RTM_VERSION :: 5
```

 

Up the ante and ignore older versions

### [STDERR\_FILENO ¶](#STDERR_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/constants.odin#L19)

```
STDERR_FILENO :: Fd(2)
```

 

Standard error file descriptor

### [STDIN\_FILENO ¶](#STDIN_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/constants.odin#L9)

```
STDIN_FILENO :: Fd(0)
```

 

Standard input file descriptor

### [STDOUT\_FILENO ¶](#STDOUT_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/constants.odin#L14)

```
STDOUT_FILENO :: Fd(1)
```

 

Standard output file descriptor

### [SYS\_\_umtx\_op ¶](#SYS__umtx_op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L37)

```
SYS__umtx_op: uintptr : 454
```

### [SYS\_accept ¶](#SYS_accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L23)

```
SYS_accept: uintptr : 30
```

### [SYS\_accept4 ¶](#SYS_accept4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L40)

```
SYS_accept4: uintptr : 541
```

### [SYS\_bind ¶](#SYS_bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L31)

```
SYS_bind: uintptr : 104
```

### [SYS\_close ¶](#SYS_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L20)

```
SYS_close: uintptr : 6
```

### [SYS\_connect ¶](#SYS_connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L30)

```
SYS_connect: uintptr : 98
```

### [SYS\_fcntl ¶](#SYS_fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L27)

```
SYS_fcntl: uintptr : 92
```

### [SYS\_fsync ¶](#SYS_fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L28)

```
SYS_fsync: uintptr : 95
```

### [SYS\_getpeername ¶](#SYS_getpeername) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L24)

```
SYS_getpeername: uintptr : 31
```

### [SYS\_getpid ¶](#SYS_getpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L21)

```
SYS_getpid: uintptr : 20
```

### [SYS\_getsockname ¶](#SYS_getsockname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L25)

```
SYS_getsockname: uintptr : 32
```

### [SYS\_ioctl ¶](#SYS_ioctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L26)

```
SYS_ioctl: uintptr : 54
```

### [SYS\_listen ¶](#SYS_listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L32)

```
SYS_listen: uintptr : 106
```

### [SYS\_open ¶](#SYS_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L19)

```
SYS_open: uintptr : 5
```

### [SYS\_pread ¶](#SYS_pread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L38)

```
SYS_pread: uintptr : 475
```

### [SYS\_pwrite ¶](#SYS_pwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L39)

```
SYS_pwrite: uintptr : 476
```

### [SYS\_read ¶](#SYS_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L17)

```
SYS_read: uintptr : 3
```

### [SYS\_recvfrom ¶](#SYS_recvfrom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L22)

```
SYS_recvfrom: uintptr : 29
```

### [SYS\_sendto ¶](#SYS_sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L33)

```
SYS_sendto: uintptr : 133
```

### [SYS\_setsockopt ¶](#SYS_setsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L35)

```
SYS_setsockopt: uintptr : 105
```

### [SYS\_shutdown ¶](#SYS_shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L34)

```
SYS_shutdown: uintptr : 134
```

### [SYS\_socket ¶](#SYS_socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L29)

```
SYS_socket: uintptr : 97
```

### [SYS\_sysctl ¶](#SYS_sysctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L36)

```
SYS_sysctl: uintptr : 202
```

### [SYS\_write ¶](#SYS_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L18)

```
SYS_write: uintptr : 4
```

### [TIOCGWINSZ ¶](#TIOCGWINSZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/constants.odin#L4)

```
TIOCGWINSZ :: 0x40087468
```

 

Get window size

## Variables

This section is empty.

## Procedures

### [accept4\_T ¶](#accept4_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L597)

```
accept4_T :: proc "contextless" (s: Fd, sockaddr: ^$T, flags: bit_set[Socket_Flag_Index; i32] = {}) -> (Fd, Errno) {…}
```

 

Accept a connection on a socket.

The accept4() system call appeared in FreeBSD 10.0.




##### Related Procedure Groups

* [accept4](/core/sys/freebsd/#accept4)

### [accept4\_nil ¶](#accept4_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L623)

```
accept4_nil :: proc "contextless" (s: Fd, flags: bit_set[Socket_Flag_Index; i32] = {}) -> (Fd, Errno) {…}
```

 

Accept a connection on a socket.

The accept4() system call appeared in FreeBSD 10.0.




##### Related Procedure Groups

* [accept4](/core/sys/freebsd/#accept4)

### [accept\_T ¶](#accept_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L166)

```
accept_T :: proc "contextless" (s: Fd, sockaddr: ^$T) -> (Fd, Errno) {…}
```

 

Accept a connection on a socket.

The accept() system call appeared in 4.2BSD.




##### Related Procedure Groups

* [accept](/core/sys/freebsd/#accept)

### [accept\_nil ¶](#accept_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L192)

```
accept_nil :: proc "contextless" (s: Fd) -> (Fd, Errno) {…}
```

 

Accept a connection on a socket.

The accept() system call appeared in 4.2BSD.




##### Related Procedure Groups

* [accept](/core/sys/freebsd/#accept)

### [bind ¶](#bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L425)

```
bind :: proc "contextless" (s: Fd, sockaddr: ^$T, addrlen: socklen_t) -> Errno {…}
```

 

Assign a local protocol address to a socket.

The bind() system call appeared in 4.2BSD.

### [close ¶](#close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L98)

```
close :: proc "contextless" (fd: Fd) -> Errno {…}
```

 

Delete a descriptor.

The open() function appeared in Version 1 AT&T UNIX.

### [connect ¶](#connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L409)

```
connect :: proc "contextless" (fd: Fd, sockaddr: ^$T, addrlen: socklen_t) -> Errno {…}
```

 

Initiate a connection on a socket.

The connect() system call appeared in 4.2BSD.

### [fcntl ¶](#fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L256)

```
fcntl :: proc "contextless" (fd: Fd, cmd: File_Control_Command, arg: i32) -> (int, Errno) {…}
```

 

File control.

The fcntl() system call appeared in 4.2BSD.
The F\_DUP2FD constant first appeared in FreeBSD 7.1.

NOTE: If you know at compile-time what command you're calling, use one of the
`fcntl_*` procedures instead to preserve type safety.

### [fcntl\_add\_seals ¶](#fcntl_add_seals) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L365)

```
fcntl_add_seals :: proc "contextless" (fd: Fd, seals: bit_set[File_Seal_Index; i32]) -> Errno {…}
```

### [fcntl\_dupfd ¶](#fcntl_dupfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L271)

```
fcntl_dupfd :: proc "contextless" (fd: Fd, newfd: Fd) -> (Fd, Errno) {…}
```

### [fcntl\_get\_seals ¶](#fcntl_get_seals) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L374)

```
fcntl_get_seals :: proc "contextless" (fd: Fd) -> (bit_set[File_Seal_Index; i32], Errno) {…}
```

### [fcntl\_getfd ¶](#fcntl_getfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L284)

```
fcntl_getfd :: proc "contextless" (fd: Fd) -> (bool, Errno) {…}
```

### [fcntl\_getfl ¶](#fcntl_getfl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L305)

```
fcntl_getfl :: proc "contextless" (fd: Fd) -> (bit_set[File_Status_Index; i32], Errno) {…}
```

### [fcntl\_getlk ¶](#fcntl_getlk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L347)

```
fcntl_getlk :: proc "contextless" (fd: Fd, flock: ^File_Lock) -> Errno {…}
```

### [fcntl\_getown ¶](#fcntl_getown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L326)

```
fcntl_getown :: proc "contextless" (fd: Fd) -> (pid_t, Errno) {…}
```

### [fcntl\_setfd ¶](#fcntl_setfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L296)

```
fcntl_setfd :: proc "contextless" (fd: Fd, close_on_exec: bool) -> Errno {…}
```

### [fcntl\_setfl ¶](#fcntl_setfl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L317)

```
fcntl_setfl :: proc "contextless" (fd: Fd, flags: bit_set[File_Status_Index; i32]) -> Errno {…}
```

### [fcntl\_setlk ¶](#fcntl_setlk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L356)

```
fcntl_setlk :: proc "contextless" (fd: Fd, flock: ^File_Lock) -> Errno {…}
```

### [fcntl\_setown ¶](#fcntl_setown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L338)

```
fcntl_setown :: proc "contextless" (fd: Fd, pid: pid_t) -> Errno {…}
```

### [fsync ¶](#fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L242)

```
fsync :: proc "contextless" (fd: Fd) -> Errno {…}
```

 

Synchronize changes to a file.

The fsync() system call appeared in 4.2BSD.

### [getpeername ¶](#getpeername) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L228)

```
getpeername :: proc "contextless" (s: Fd, sockaddr: ^$T) -> Errno {…}
```

 

Get name of connected peer

The getpeername() system call appeared in 4.2BSD.

### [getpid ¶](#getpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L108)

```
getpid :: proc "contextless" () -> pid_t {…}
```

 

Get parent or calling process identification.

The getpid() function appeared in Version 7 AT&T UNIX.

### [getsockname ¶](#getsockname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L235)

```
getsockname :: proc "contextless" (s: Fd, sockaddr: ^$T) -> Errno {…}
```

 

Get socket name.

The getsockname() system call appeared in 4.2BSD.

### [getsockname\_or\_peername ¶](#getsockname_or_peername) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L207)

```
getsockname_or_peername :: proc "contextless" (s: Fd, sockaddr: ^$T, is_peer: bool) -> Errno {…}
```

### [ioctl ¶](#ioctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L639)

```
ioctl :: proc "contextless" (fd: Fd, request: u64, arg: uintptr) -> (int, Errno) {…}
```

### [listen ¶](#listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L440)

```
listen :: proc "contextless" (s: Fd, backlog: int) -> Errno {…}
```

 

Listen for connections on a socket.

The listen() system call appeared in 4.2BSD.

### [open ¶](#open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L82)

```
open :: proc "contextless" (path: string, flags: bit_set[File_Status_Index; i32], mode: int = 0o000) -> (Fd, Errno) {…}
```

 

Open or create a file for reading, writing or executing.

The open() function appeared in Version 1 AT&T UNIX.
The openat() function was introduced in FreeBSD 8.0.

### [pread ¶](#pread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L557)

```
pread :: proc "contextless" (fd: Fd, buf: []u8, offset: off_t) -> (int, Errno) {…}
```

 

Read input without modifying the file pointer.

The pread() function appeared in AT&T System V Release 4 UNIX.

### [pwrite ¶](#pwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L580)

```
pwrite :: proc "contextless" (fd: Fd, buf: []u8, offset: off_t) -> (int, Errno) {…}
```

 

Write output without modifying the file pointer.

The pwrite() function appeared in AT&T System V Release 4 UNIX.

BUGS

The pwrite() system call appends the file without changing the file
offset if O\_APPEND is set, contrary to IEEE Std 1003.1-2008 (“POSIX.1”)
where pwrite() writes into offset regardless of whether O\_APPEND is set.

### [read ¶](#read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L49)

```
read :: proc "contextless" (fd: Fd, buf: []u8) -> (int, Errno) {…}
```

 

Read input.

The read() function appeared in Version 1 AT&T UNIX.

### [recv ¶](#recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L146)

```
recv :: proc "contextless" (s: Fd, buf: []u8, flags: Recv_Flags) -> (int, Errno) {…}
```

 

Receive message(s) from a socket.

The recv() function appeared in 4.2BSD.
The recvmmsg() function appeared in FreeBSD 11.0.

### [recvfrom ¶](#recvfrom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L118)

```
recvfrom :: proc "contextless" (s: Fd, buf: []u8, flags: Recv_Flags, from: ^$T) -> (int, Errno) {…}
```

 

Receive message(s) from a socket.

The recv() function appeared in 4.2BSD.
The recvmmsg() function appeared in FreeBSD 11.0.

### [send ¶](#send) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L475)

```
send :: proc "contextless" (s: Fd, msg: []u8, flags: Send_Flags) -> (int, Errno) {…}
```

 

Send message(s) from a socket.

The send() function appeared in 4.2BSD.
The sendmmsg() function appeared in FreeBSD 11.0.

### [sendto ¶](#sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L452)

```
sendto :: proc "contextless" (s: Fd, msg: []u8, flags: Send_Flags, to: ^$T) -> (int, Errno) {…}
```

 

Send message(s) from a socket.

The send() function appeared in 4.2BSD.
The sendmmsg() function appeared in FreeBSD 11.0.

### [setsockopt ¶](#setsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L506)

```
setsockopt :: proc "contextless" (s: Fd, level: Valid_Socket_Option_Level, optname: Socket_Option, optval: rawptr, optlen: socklen_t) -> Errno {…}
```

 

Get and set options on sockets.

The getsockopt() and setsockopt() system calls appeared in 4.2BSD.

### [shutdown ¶](#shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L495)

```
shutdown :: proc "contextless" (s: Fd, how: Shutdown_Method) -> Errno {…}
```

 

Disable sends and/or receives on a socket.

The shutdown() system call appeared in 4.2BSD.

### [socket ¶](#socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L393)

```
socket :: proc "contextless" (domain: Protocol_Family, type: Socket_Type, protocol: Protocol) -> (Fd, Errno) {…}
```

 

Create an endpoint for communication.

The socket() system call appeared in 4.2BSD.

### [sysctl ¶](#sysctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L526)

```
sysctl :: proc "contextless" (mib: []MIB_Identifier, oldp: rawptr, oldlenp: ^uint, newp: rawptr, newlen: uint) -> Errno {…}
```

 

Get or set system information.

The sysctl() function first appeared in 4.4BSD.

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L65)

```
write :: proc "contextless" (fd: Fd, buf: []u8) -> (int, Errno) {…}
```

 

Write output.

The write() function appeared in Version 1 AT&T UNIX.

## Procedure Groups

### [accept ¶](#accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L205)

```
accept :: proc{
	accept_T,
	accept_nil,
}
```

### [accept4 ¶](#accept4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin#L637)

```
accept4 :: proc{
	accept4_nil,
	accept4_T,
}
```

## Source Files

* [constants.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/constants.odin)
* [syscalls.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/syscalls.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/freebsd/types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.557075200 +0000 UTC`

* [Types](#pkg-Types)
  + [Address\_Family](#Address_Family)
  + [Errno](#Errno)
  + [Fd](#Fd)
  + [File\_Control\_Command](#File_Control_Command)
  + [File\_Lock](#File_Lock)
  + [File\_Seal\_Index](#File_Seal_Index)
  + [File\_Seals](#File_Seals)
  + [File\_Status\_Flag](#File_Status_Flag)
  + [File\_Status\_Flags](#File_Status_Flags)
  + [File\_Status\_Index](#File_Status_Index)
  + [IP4\_Address](#IP4_Address)
  + [IP6\_Address](#IP6_Address)
  + [Interface\_Address\_Message\_Header\_Len](#Interface_Address_Message_Header_Len)
  + [Interface\_Data](#Interface_Data)
  + [Interface\_Message\_Header\_Len](#Interface_Message_Header_Len)
  + [Interface\_Type](#Interface_Type)
  + [Link\_State](#Link_State)
  + [MIB\_Identifier](#MIB_Identifier)
  + [Message\_Flag](#Message_Flag)
  + [Protocol](#Protocol)
  + [Protocol\_Family](#Protocol_Family)
  + [Record\_Lock\_Flag](#Record_Lock_Flag)
  + [Recv\_Flags](#Recv_Flags)
  + [Route\_Address\_Flag](#Route_Address_Flag)
  + [Route\_Address\_Flags](#Route_Address_Flags)
  + [Route\_Address\_Index](#Route_Address_Index)
  + [Route\_Message\_Header](#Route_Message_Header)
  + [Route\_Message\_Type](#Route_Message_Type)
  + [Route\_Metrics](#Route_Metrics)
  + [Send\_Flags](#Send_Flags)
  + [Shutdown\_Method](#Shutdown_Method)
  + [Socket\_Address\_Basic](#Socket_Address_Basic)
  + [Socket\_Address\_Data\_Link](#Socket_Address_Data_Link)
  + [Socket\_Address\_Header](#Socket_Address_Header)
  + [Socket\_Address\_Internet](#Socket_Address_Internet)
  + [Socket\_Address\_Internet6](#Socket_Address_Internet6)
  + [Socket\_Address\_Storage](#Socket_Address_Storage)
  + [Socket\_Flag\_Index](#Socket_Flag_Index)
  + [Socket\_Flags](#Socket_Flags)
  + [Socket\_Option](#Socket_Option)
  + [Socket\_Option\_Level](#Socket_Option_Level)
  + [Socket\_Type](#Socket_Type)
  + [Userland\_Mutex\_Operation](#Userland_Mutex_Operation)
  + [Valid\_Socket\_Option\_Level](#Valid_Socket_Option_Level)
  + [in\_addr\_t](#in_addr_t)
  + [in\_port\_t](#in_port_t)
  + [off\_t](#off_t)
  + [pid\_t](#pid_t)
  + [sa\_family\_t](#sa_family_t)
  + [socklen\_t](#socklen_t)
  + [suseconds\_t](#suseconds_t)
  + [time\_t](#time_t)
  + [timespec](#timespec)
  + [timeval](#timeval)
* [Constants](#pkg-Constants)
  + [FD\_CLOEXEC](#FD_CLOEXEC)
  + [RTM\_VERSION](#RTM_VERSION)
  + [STDERR\_FILENO](#STDERR_FILENO)
  + [STDIN\_FILENO](#STDIN_FILENO)
  + [STDOUT\_FILENO](#STDOUT_FILENO)
  + [SYS\_\_umtx\_op](#SYS__umtx_op)
  + [SYS\_accept](#SYS_accept)
  + [SYS\_accept4](#SYS_accept4)
  + [SYS\_bind](#SYS_bind)
  + [SYS\_close](#SYS_close)
  + [SYS\_connect](#SYS_connect)
  + [SYS\_fcntl](#SYS_fcntl)
  + [SYS\_fsync](#SYS_fsync)
  + [SYS\_getpeername](#SYS_getpeername)
  + [SYS\_getpid](#SYS_getpid)
  + [SYS\_getsockname](#SYS_getsockname)
  + [SYS\_ioctl](#SYS_ioctl)
  + [SYS\_listen](#SYS_listen)
  + [SYS\_open](#SYS_open)
  + [SYS\_pread](#SYS_pread)
  + [SYS\_pwrite](#SYS_pwrite)
  + [SYS\_read](#SYS_read)
  + [SYS\_recvfrom](#SYS_recvfrom)
  + [SYS\_sendto](#SYS_sendto)
  + [SYS\_setsockopt](#SYS_setsockopt)
  + [SYS\_shutdown](#SYS_shutdown)
  + [SYS\_socket](#SYS_socket)
  + [SYS\_sysctl](#SYS_sysctl)
  + [SYS\_write](#SYS_write)
  + [TIOCGWINSZ](#TIOCGWINSZ)
* [Procedures](#pkg-Procedures)
  + [accept4\_T](#accept4_T)
  + [accept4\_nil](#accept4_nil)
  + [accept\_T](#accept_T)
  + [accept\_nil](#accept_nil)
  + [bind](#bind)
  + [close](#close)
  + [connect](#connect)
  + [fcntl](#fcntl)
  + [fcntl\_add\_seals](#fcntl_add_seals)
  + [fcntl\_dupfd](#fcntl_dupfd)
  + [fcntl\_get\_seals](#fcntl_get_seals)
  + [fcntl\_getfd](#fcntl_getfd)
  + [fcntl\_getfl](#fcntl_getfl)
  + [fcntl\_getlk](#fcntl_getlk)
  + [fcntl\_getown](#fcntl_getown)
  + [fcntl\_setfd](#fcntl_setfd)
  + [fcntl\_setfl](#fcntl_setfl)
  + [fcntl\_setlk](#fcntl_setlk)
  + [fcntl\_setown](#fcntl_setown)
  + [fsync](#fsync)
  + [getpeername](#getpeername)
  + [getpid](#getpid)
  + [getsockname](#getsockname)
  + [getsockname\_or\_peername](#getsockname_or_peername)
  + [ioctl](#ioctl)
  + [listen](#listen)
  + [open](#open)
  + [pread](#pread)
  + [pwrite](#pwrite)
  + [read](#read)
  + [recv](#recv)
  + [recvfrom](#recvfrom)
  + [send](#send)
  + [sendto](#sendto)
  + [setsockopt](#setsockopt)
  + [shutdown](#shutdown)
  + [socket](#socket)
  + [sysctl](#sysctl)
  + [write](#write)
* [Procedure Groups](#pkg-Procedure Groups)
  + [accept](#accept)
  + [accept4](#accept4)
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