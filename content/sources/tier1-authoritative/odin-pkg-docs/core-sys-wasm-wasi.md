package sys/wasm/wasi - pkg.odin-lang.org 






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



Current Package: *[sys\_wasi](/core/sys/wasm/wasi)*

  

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
3. wasm
4. [wasi](/core/sys/wasm/wasi)

# package core:sys/wasm/wasi [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi)

#### **Warning:**This was generated for `-target:js_wasm32` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (54)

* [advice\_t](#advice_t)
* [ciovec\_t](#ciovec_t)
* [clockid\_t](#clockid_t)
* [device\_t](#device_t)
* [dircookie\_t](#dircookie_t)
* [dirent\_t](#dirent_t)
* [dirnamlen\_t](#dirnamlen_t)
* [errno\_t](#errno_t)
* [event\_fd\_readwrite\_t](#event_fd_readwrite_t)
* [event\_t](#event_t)
* [eventrwflag\_t](#eventrwflag_t)
* [eventrwflags\_t](#eventrwflags_t)
* [eventtype\_t](#eventtype_t)
* [exitcode\_t](#exitcode_t)
* [fd\_t](#fd_t)
* [fdflag\_t](#fdflag_t)
* [fdflags\_t](#fdflags_t)
* [fdstat\_t](#fdstat_t)
* [filedelta\_t](#filedelta_t)
* [filesize\_t](#filesize_t)
* [filestat\_t](#filestat_t)
* [filetype\_t](#filetype_t)
* [fstflag\_t](#fstflag_t)
* [fstflags\_t](#fstflags_t)
* [inode\_t](#inode_t)
* [iovec\_t](#iovec_t)
* [linkcount\_t](#linkcount_t)
* [lookupflag\_t](#lookupflag_t)
* [lookupflags\_t](#lookupflags_t)
* [oflag\_t](#oflag_t)
* [oflags\_t](#oflags_t)
* [preopentype\_t](#preopentype_t)
* [prestat\_dir\_t](#prestat_dir_t)
* [prestat\_t](#prestat_t)
* [riflag\_t](#riflag_t)
* [riflags\_t](#riflags_t)
* [rights\_flag\_t](#rights_flag_t)
* [rights\_t](#rights_t)
* [roflag\_t](#roflag_t)
* [roflags\_t](#roflags_t)
* [sdflag\_t](#sdflag_t)
* [sdflags\_t](#sdflags_t)
* [siflag\_t](#siflag_t)
* [siflags\_t](#siflags_t)
* [signal\_t](#signal_t)
* [size\_t](#size_t)
* [subclockflag\_t](#subclockflag_t)
* [subclockflags\_t](#subclockflags_t)
* [subscription\_clock\_t](#subscription_clock_t)
* [subscription\_fd\_readwrite\_t](#subscription_fd_readwrite_t)
* [subscription\_t](#subscription_t)
* [timestamp\_t](#timestamp_t)
* [userdata\_t](#userdata_t)
* [whence\_t](#whence_t)

Constants (5)

* [CLOCK\_MONOTONIC](#CLOCK_MONOTONIC)
* [CLOCK\_PROCESS\_CPUTIME\_ID](#CLOCK_PROCESS_CPUTIME_ID)
* [CLOCK\_REALTIME](#CLOCK_REALTIME)
* [CLOCK\_THREAD\_CPUTIME\_ID](#CLOCK_THREAD_CPUTIME_ID)
* [DIRCOOKIE\_START](#DIRCOOKIE_START)

Variables (0)

This section is empty.

Procedures (65)

* [args\_get](#args_get)
* [args\_sizes\_get](#args_sizes_get)
* [clock\_res\_get](#clock_res_get)
* [clock\_time\_get](#clock_time_get)
* [environ\_get](#environ_get)
* [environ\_sizes\_get](#environ_sizes_get)
* [fd\_advise](#fd_advise)
* [fd\_allocate](#fd_allocate)
* [fd\_close](#fd_close)
* [fd\_datasync](#fd_datasync)
* [fd\_fdstat\_get](#fd_fdstat_get)
* [fd\_fdstat\_set\_flags](#fd_fdstat_set_flags)
* [fd\_fdstat\_set\_rights](#fd_fdstat_set_rights)
* [fd\_filestat\_get](#fd_filestat_get)
* [fd\_filestat\_set\_size](#fd_filestat_set_size)
* [fd\_filestat\_set\_times](#fd_filestat_set_times)
* [fd\_pread](#fd_pread)
* [fd\_prestat\_dir\_name](#fd_prestat_dir_name)
* [fd\_prestat\_get](#fd_prestat_get)
* [fd\_pwrite](#fd_pwrite)
* [fd\_read](#fd_read)
* [fd\_readdir](#fd_readdir)
* [fd\_renumber](#fd_renumber)
* [fd\_seek](#fd_seek)
* [fd\_sync](#fd_sync)
* [fd\_tell](#fd_tell)
* [fd\_write](#fd_write)
* [path\_create\_directory](#path_create_directory)
* [path\_filestat\_get](#path_filestat_get)
* [path\_filestat\_set\_times](#path_filestat_set_times)
* [path\_link](#path_link)
* [path\_open](#path_open)
* [path\_readlink](#path_readlink)
* [path\_remove\_directory](#path_remove_directory)
* [path\_rename](#path_rename)
* [path\_symlink](#path_symlink)
* [path\_unlink\_file](#path_unlink_file)
* [poll\_oneoff](#poll_oneoff)
* [proc\_exit](#proc_exit)
* [proc\_raise](#proc_raise)
* [random\_get](#random_get)
* [sched\_yield](#sched_yield)
* [sock\_recv](#sock_recv)
* [sock\_send](#sock_send)
* [sock\_shutdown](#sock_shutdown)
* [wasi\_args\_sizes\_get](#wasi_args_sizes_get)
* [wasi\_clock\_res\_get](#wasi_clock_res_get)
* [wasi\_clock\_time\_get](#wasi_clock_time_get)
* [wasi\_environ\_sizes\_get](#wasi_environ_sizes_get)
* [wasi\_fd\_fdstat\_get](#wasi_fd_fdstat_get)
* [wasi\_fd\_filestat\_get](#wasi_fd_filestat_get)
* [wasi\_fd\_pread](#wasi_fd_pread)
* [wasi\_fd\_prestat\_get](#wasi_fd_prestat_get)
* [wasi\_fd\_pwrite](#wasi_fd_pwrite)
* [wasi\_fd\_read](#wasi_fd_read)
* [wasi\_fd\_readdir](#wasi_fd_readdir)
* [wasi\_fd\_seek](#wasi_fd_seek)
* [wasi\_fd\_tell](#wasi_fd_tell)
* [wasi\_fd\_write](#wasi_fd_write)
* [wasi\_path\_filestat\_get](#wasi_path_filestat_get)
* [wasi\_path\_open](#wasi_path_open)
* [wasi\_path\_readlink](#wasi_path_readlink)
* [wasi\_poll\_oneoff](#wasi_poll_oneoff)
* [wasi\_sock\_recv](#wasi_sock_recv)
* [wasi\_sock\_send](#wasi_sock_send)

Procedure Groups (0)

This section is empty.

## Types

### [advice\_t ¶](#advice_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L412)

```
advice_t :: enum u8 {
	// *
	// 	 * The application has no advice to give on its behavior with respect to the specified data.
	NORMAL     = 0, 
	// *
	// 	 * The application expects to access the specified data sequentially from lower offsets to higher offsets.
	SEQUENTIAL = 1, 
	// *
	// 	 * The application expects to access the specified data in a random order.
	RANDOM     = 2, 
	// *
	// 	 * The application expects to access the specified data in the near future.
	WILLNEED   = 3, 
	// *
	// 	 * The application expects that it will not access the specified data in the near future.
	DONTNEED   = 4, 
	// *
	// 	 * The application expects to access the specified data once and then not reuse it thereafter.
	NOREUSE    = 5, 
}
```

##### Related Procedures With Parameters

* [fd\_advise](/core/sys/wasm/wasi/#fd_advise)

### [ciovec\_t ¶](#ciovec_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L348)

```
ciovec_t :: []u8
```

##### Related Procedures With Parameters

* [fd\_prestat\_dir\_name](/core/sys/wasm/wasi/#fd_prestat_dir_name)
* [fd\_readdir](/core/sys/wasm/wasi/#fd_readdir)
* [path\_readlink](/core/sys/wasm/wasi/#path_readlink)
* [random\_get](/core/sys/wasm/wasi/#random_get)
* [wasi\_fd\_readdir](/core/sys/wasm/wasi/#wasi_fd_readdir)
* [wasi\_path\_readlink](/core/sys/wasm/wasi/#wasi_path_readlink)

### [clockid\_t ¶](#clockid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L12)

```
clockid_t :: distinct u32
```

##### Related Procedures With Parameters

* [clock\_res\_get](/core/sys/wasm/wasi/#clock_res_get)
* [clock\_time\_get](/core/sys/wasm/wasi/#clock_time_get)
* [wasi\_clock\_res\_get](/core/sys/wasm/wasi/#wasi_clock_res_get)
* [wasi\_clock\_time\_get](/core/sys/wasm/wasi/#wasi_clock_time_get)

##### Related Constants

* [CLOCK\_MONOTONIC](/core/sys/wasm/wasi/#CLOCK_MONOTONIC)
* [CLOCK\_PROCESS\_CPUTIME\_ID](/core/sys/wasm/wasi/#CLOCK_PROCESS_CPUTIME_ID)
* [CLOCK\_REALTIME](/core/sys/wasm/wasi/#CLOCK_REALTIME)
* [CLOCK\_THREAD\_CPUTIME\_ID](/core/sys/wasm/wasi/#CLOCK_THREAD_CPUTIME_ID)

### [device\_t ¶](#device_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L497)

```
device_t :: distinct u64
```

### [dircookie\_t ¶](#dircookie_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L359)

```
dircookie_t :: distinct u64
```

##### Related Procedures With Parameters

* [fd\_readdir](/core/sys/wasm/wasi/#fd_readdir)
* [wasi\_fd\_readdir](/core/sys/wasm/wasi/#wasi_fd_readdir)

### [dirent\_t ¶](#dirent_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L405)

```
dirent_t :: struct {
	d_next:   dircookie_t,
	d_ino:    inode_t,
	d_namlen: dirnamlen_t,
	d_type:   filetype_t,
}
```

### [dirnamlen\_t ¶](#dirnamlen_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L360)

```
dirnamlen_t :: distinct u32
```

### [errno\_t ¶](#errno_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L18)

```
errno_t :: enum u16 {
	NONE           = 0, 
	// No error occurred. System call completed successfully.
	SUCCESS        = 0, 
	// Argument list too long.
	TOOBIG         = 1, 
	// Permission denied.
	ACCESS         = 2, 
	// Address in use.
	ADDRINUSE      = 3, 
	// Address not available.
	ADDRNOTAVAIL   = 4, 
	// Address family not supported.
	AFNOSUPPORT    = 5, 
	// Resource unavailable, or operation would block.
	AGAIN          = 6, 
	// Connection already in progress.
	ALREADY        = 7, 
	// Bad file descriptor.
	BADF           = 8, 
	// Bad message.
	BADMSG         = 9, 
	// Device or resource busy.
	BUSY           = 10, 
	// Operation canceled.
	CANCELED       = 11, 
	// No child processes.
	CHILD          = 12, 
	// Connection aborted.
	CONNABORTED    = 13, 
	// Connection refused.
	CONNREFUSED    = 14, 
	// Connection reset.
	CONNRESET      = 15, 
	// Resource deadlock would occur.
	DEADLK         = 16, 
	// Destination address required.
	DESTADDRREQ    = 17, 
	// Mathematics argument out of domain of function.
	DOM            = 18, 
	// Reserved.
	DQUOT          = 19, 
	// File exists.
	EXIST          = 20, 
	// Bad address.
	FAULT          = 21, 
	// File too large.
	FBIG           = 22, 
	// Host is unreachable.
	HOSTUNREACH    = 23, 
	// Identifier removed.
	IDRM           = 24, 
	// Illegal byte sequence.
	ILSEQ          = 25, 
	// Operation in progress.
	INPROGRESS     = 26, 
	// Interrupted function.
	INTR           = 27, 
	// Invalid argument.
	INVAL          = 28, 
	// I/O error.
	IO             = 29, 
	// Socket is connected.
	ISCONN         = 30, 
	// Is a directory.
	ISDIR          = 31, 
	// Too many levels of symbolic links.
	LOOP           = 32, 
	// File descriptor value too large.
	MFILE          = 33, 
	// Too many links.
	MLINK          = 34, 
	// Message too large.
	MSGSIZE        = 35, 
	// Reserved.
	MULTIHOP       = 36, 
	// Filename too long.
	NAMETOOLONG    = 37, 
	// Network is down.
	NETDOWN        = 38, 
	// Connection aborted by network.
	NETRESET       = 39, 
	// Network unreachable.
	NETUNREACH     = 40, 
	// Too many files open in system.
	NFILE          = 41, 
	// No buffer space available.
	NOBUFS         = 42, 
	// No such device.
	NODEV          = 43, 
	// No such file or directory.
	NOENT          = 44, 
	// Executable file format error.
	NOEXEC         = 45, 
	// No locks available.
	NOLCK          = 46, 
	// Reserved.
	NOLINK         = 47, 
	// Not enough space.
	NOMEM          = 48, 
	// No message of the desired type.
	NOMSG          = 49, 
	// Protocol not available.
	NOPROTOOPT     = 50, 
	// No space left on device.
	NOSPC          = 51, 
	// Function not supported.
	NOSYS          = 52, 
	// The socket is not connected.
	NOTCONN        = 53, 
	// Not a directory or a symbolic link to a directory.
	NOTDIR         = 54, 
	// Directory not empty.
	NOTEMPTY       = 55, 
	// State not recoverable.
	NOTRECOVERABLE = 56, 
	// Not a socket.
	NOTSOCK        = 57, 
	// Not supported, or operation not supported on socket.
	NOTSUP         = 58, 
	// Inappropriate I/O control operation.
	NOTTY          = 59, 
	// No such device or address.
	NXIO           = 60, 
	// Value too large to be stored in data type.
	OVERFLOW       = 61, 
	// Previous owner died.
	OWNERDEAD      = 62, 
	// Operation not permitted.
	PERM           = 63, 
	// Broken pipe.
	PIPE           = 64, 
	// Protocol error.
	PROTO          = 65, 
	// Protocol not supported.
	PROTONOSUPPORT = 66, 
	// Protocol wrong type for socket.
	PROTOTYPE      = 67, 
	// Result too large.
	RANGE          = 68, 
	// Read-only file system.
	ROFS           = 69, 
	// Invalid seek.
	SPIPE          = 70, 
	// No such process.
	SRCH           = 71, 
	// Reserved.
	STALE          = 72, 
	// Connection timed out.
	TIMEDOUT       = 73, 
	// Text file busy.
	TXTBSY         = 74, 
	// Cross-device link.
	XDEV           = 75, 
	// Extension: Capabilities insufficient.
	NOTCAPABLE     = 76, 
}
```

##### Related Procedures With Returns

* [args\_get](/core/sys/wasm/wasi/#args_get)
* [args\_sizes\_get](/core/sys/wasm/wasi/#args_sizes_get)
* [clock\_res\_get](/core/sys/wasm/wasi/#clock_res_get)
* [clock\_time\_get](/core/sys/wasm/wasi/#clock_time_get)
* [environ\_get](/core/sys/wasm/wasi/#environ_get)
* [environ\_sizes\_get](/core/sys/wasm/wasi/#environ_sizes_get)
* [fd\_advise](/core/sys/wasm/wasi/#fd_advise)
* [fd\_allocate](/core/sys/wasm/wasi/#fd_allocate)
* [fd\_close](/core/sys/wasm/wasi/#fd_close)
* [fd\_datasync](/core/sys/wasm/wasi/#fd_datasync)
* [fd\_fdstat\_get](/core/sys/wasm/wasi/#fd_fdstat_get)
* [fd\_fdstat\_set\_flags](/core/sys/wasm/wasi/#fd_fdstat_set_flags)
* [fd\_fdstat\_set\_rights](/core/sys/wasm/wasi/#fd_fdstat_set_rights)
* [fd\_filestat\_get](/core/sys/wasm/wasi/#fd_filestat_get)
* [fd\_filestat\_set\_size](/core/sys/wasm/wasi/#fd_filestat_set_size)
* [fd\_filestat\_set\_times](/core/sys/wasm/wasi/#fd_filestat_set_times)
* [fd\_pread](/core/sys/wasm/wasi/#fd_pread)
* [fd\_prestat\_dir\_name](/core/sys/wasm/wasi/#fd_prestat_dir_name)
* [fd\_prestat\_get](/core/sys/wasm/wasi/#fd_prestat_get)
* [fd\_pwrite](/core/sys/wasm/wasi/#fd_pwrite)
* [fd\_read](/core/sys/wasm/wasi/#fd_read)
* [fd\_readdir](/core/sys/wasm/wasi/#fd_readdir)
* [fd\_renumber](/core/sys/wasm/wasi/#fd_renumber)
* [fd\_seek](/core/sys/wasm/wasi/#fd_seek)
* [fd\_sync](/core/sys/wasm/wasi/#fd_sync)
* [fd\_tell](/core/sys/wasm/wasi/#fd_tell)
* [fd\_write](/core/sys/wasm/wasi/#fd_write)
* [path\_create\_directory](/core/sys/wasm/wasi/#path_create_directory)
* [path\_filestat\_get](/core/sys/wasm/wasi/#path_filestat_get)
* [path\_filestat\_set\_times](/core/sys/wasm/wasi/#path_filestat_set_times)
* [path\_link](/core/sys/wasm/wasi/#path_link)
* [path\_open](/core/sys/wasm/wasi/#path_open)
* [path\_readlink](/core/sys/wasm/wasi/#path_readlink)
* [path\_remove\_directory](/core/sys/wasm/wasi/#path_remove_directory)
* [path\_rename](/core/sys/wasm/wasi/#path_rename)
* [path\_symlink](/core/sys/wasm/wasi/#path_symlink)
* [path\_unlink\_file](/core/sys/wasm/wasi/#path_unlink_file)
* [poll\_oneoff](/core/sys/wasm/wasi/#poll_oneoff)
* [proc\_raise](/core/sys/wasm/wasi/#proc_raise)
* [random\_get](/core/sys/wasm/wasi/#random_get)
* [sched\_yield](/core/sys/wasm/wasi/#sched_yield)
* [sock\_recv](/core/sys/wasm/wasi/#sock_recv)
* [sock\_send](/core/sys/wasm/wasi/#sock_send)
* [sock\_shutdown](/core/sys/wasm/wasi/#sock_shutdown)
* [wasi\_args\_sizes\_get](/core/sys/wasm/wasi/#wasi_args_sizes_get)
* [wasi\_clock\_res\_get](/core/sys/wasm/wasi/#wasi_clock_res_get)
* [wasi\_clock\_time\_get](/core/sys/wasm/wasi/#wasi_clock_time_get)
* [wasi\_environ\_sizes\_get](/core/sys/wasm/wasi/#wasi_environ_sizes_get)
* [wasi\_fd\_fdstat\_get](/core/sys/wasm/wasi/#wasi_fd_fdstat_get)
* [wasi\_fd\_filestat\_get](/core/sys/wasm/wasi/#wasi_fd_filestat_get)
* [wasi\_fd\_pread](/core/sys/wasm/wasi/#wasi_fd_pread)
* [wasi\_fd\_prestat\_get](/core/sys/wasm/wasi/#wasi_fd_prestat_get)
* [wasi\_fd\_pwrite](/core/sys/wasm/wasi/#wasi_fd_pwrite)
* [wasi\_fd\_read](/core/sys/wasm/wasi/#wasi_fd_read)
* [wasi\_fd\_readdir](/core/sys/wasm/wasi/#wasi_fd_readdir)
* [wasi\_fd\_seek](/core/sys/wasm/wasi/#wasi_fd_seek)
* [wasi\_fd\_tell](/core/sys/wasm/wasi/#wasi_fd_tell)
* [wasi\_fd\_write](/core/sys/wasm/wasi/#wasi_fd_write)
* [wasi\_path\_filestat\_get](/core/sys/wasm/wasi/#wasi_path_filestat_get)
* [wasi\_path\_open](/core/sys/wasm/wasi/#wasi_path_open)
* [wasi\_path\_readlink](/core/sys/wasm/wasi/#wasi_path_readlink)
* [wasi\_poll\_oneoff](/core/sys/wasm/wasi/#wasi_poll_oneoff)
* [wasi\_sock\_recv](/core/sys/wasm/wasi/#wasi_sock_recv)
* [wasi\_sock\_send](/core/sys/wasm/wasi/#wasi_sock_send)

### [event\_fd\_readwrite\_t ¶](#event_fd_readwrite_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L629)

```
event_fd_readwrite_t :: struct {
	// *
	// 	 * The number of bytes available for reading or writing.
	nbytes: filesize_t,
	// *
	// 	 * The state of the file descriptor.
	flags:  eventrwflags_t,
}
```

### [event\_t ¶](#event_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L641)

```
event_t :: struct {
	// *
	// 	 * User-provided value that got attached to `subscription::userdata`.
	userdata:     userdata_t,
	// *
	// 	 * If non-zero, an error that occurred while processing the subscription request.
	error:        errno_t,
	// *
	// 	 * The type of event that occured
	type:         eventtype_t,
	// *
	// 	 * The contents of the event, if it is an `eventtype::fd_read` or
	// 	 * `eventtype::fd_write`. `eventtype::clock` events ignore this field.
	fd_readwrite: event_fd_readwrite_t,
}
```

##### Related Procedures With Parameters

* [poll\_oneoff](/core/sys/wasm/wasi/#poll_oneoff)
* [wasi\_poll\_oneoff](/core/sys/wasm/wasi/#wasi_poll_oneoff)

### [eventrwflag\_t ¶](#eventrwflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L622)

```
eventrwflag_t :: enum u16 {
	// *
	// 	 * The peer of this socket has closed or disconnected.
	FD_READWRITE_HANGUP = 0, 
}
```

### [eventrwflags\_t ¶](#eventrwflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L621)

```
eventrwflags_t :: distinct bit_set[eventrwflag_t; u16]
```

### [eventtype\_t ¶](#eventtype_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L601)

```
eventtype_t :: enum u8 {
	// *
	// 	 * The time value of clock `subscription_clock::id` has
	// 	 * reached timestamp `subscription_clock::timeout`.
	CLOCK    = 0, 
	// *
	// 	 * File descriptor `subscription_fd_readwrite::file_descriptor` has data
	// 	 * available for reading. This event always triggers for regular files.
	FD_READ  = 1, 
	// *
	// 	 * File descriptor `subscription_fd_readwrite::file_descriptor` has capacity
	// 	 * available for writing. This event always triggers for regular files.
	FD_WRITE = 2, 
}
```

### [exitcode\_t ¶](#exitcode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L727)

```
exitcode_t :: distinct u32
```

##### Related Procedures With Parameters

* [proc\_exit](/core/sys/wasm/wasi/#proc_exit)

### [fd\_t ¶](#fd_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L337)

```
fd_t :: distinct i32
```

##### Related Procedures With Parameters

* [fd\_advise](/core/sys/wasm/wasi/#fd_advise)
* [fd\_allocate](/core/sys/wasm/wasi/#fd_allocate)
* [fd\_close](/core/sys/wasm/wasi/#fd_close)
* [fd\_datasync](/core/sys/wasm/wasi/#fd_datasync)
* [fd\_fdstat\_get](/core/sys/wasm/wasi/#fd_fdstat_get)
* [fd\_fdstat\_set\_flags](/core/sys/wasm/wasi/#fd_fdstat_set_flags)
* [fd\_fdstat\_set\_rights](/core/sys/wasm/wasi/#fd_fdstat_set_rights)
* [fd\_filestat\_get](/core/sys/wasm/wasi/#fd_filestat_get)
* [fd\_filestat\_set\_size](/core/sys/wasm/wasi/#fd_filestat_set_size)
* [fd\_filestat\_set\_times](/core/sys/wasm/wasi/#fd_filestat_set_times)
* [fd\_pread](/core/sys/wasm/wasi/#fd_pread)
* [fd\_prestat\_dir\_name](/core/sys/wasm/wasi/#fd_prestat_dir_name)
* [fd\_prestat\_get](/core/sys/wasm/wasi/#fd_prestat_get)
* [fd\_pwrite](/core/sys/wasm/wasi/#fd_pwrite)
* [fd\_read](/core/sys/wasm/wasi/#fd_read)
* [fd\_readdir](/core/sys/wasm/wasi/#fd_readdir)
* [fd\_renumber](/core/sys/wasm/wasi/#fd_renumber)
* [fd\_seek](/core/sys/wasm/wasi/#fd_seek)
* [fd\_sync](/core/sys/wasm/wasi/#fd_sync)
* [fd\_tell](/core/sys/wasm/wasi/#fd_tell)
* [fd\_write](/core/sys/wasm/wasi/#fd_write)
* [path\_create\_directory](/core/sys/wasm/wasi/#path_create_directory)
* [path\_filestat\_get](/core/sys/wasm/wasi/#path_filestat_get)
* [path\_filestat\_set\_times](/core/sys/wasm/wasi/#path_filestat_set_times)
* [path\_link](/core/sys/wasm/wasi/#path_link)
* [path\_open](/core/sys/wasm/wasi/#path_open)
* [path\_readlink](/core/sys/wasm/wasi/#path_readlink)
* [path\_remove\_directory](/core/sys/wasm/wasi/#path_remove_directory)
* [path\_rename](/core/sys/wasm/wasi/#path_rename)
* [path\_symlink](/core/sys/wasm/wasi/#path_symlink)
* [path\_unlink\_file](/core/sys/wasm/wasi/#path_unlink_file)
* [sock\_recv](/core/sys/wasm/wasi/#sock_recv)
* [sock\_send](/core/sys/wasm/wasi/#sock_send)
* [sock\_shutdown](/core/sys/wasm/wasi/#sock_shutdown)
* [wasi\_fd\_fdstat\_get](/core/sys/wasm/wasi/#wasi_fd_fdstat_get)
* [wasi\_fd\_filestat\_get](/core/sys/wasm/wasi/#wasi_fd_filestat_get)
* [wasi\_fd\_pread](/core/sys/wasm/wasi/#wasi_fd_pread)
* [wasi\_fd\_prestat\_get](/core/sys/wasm/wasi/#wasi_fd_prestat_get)
* [wasi\_fd\_pwrite](/core/sys/wasm/wasi/#wasi_fd_pwrite)
* [wasi\_fd\_read](/core/sys/wasm/wasi/#wasi_fd_read)
* [wasi\_fd\_readdir](/core/sys/wasm/wasi/#wasi_fd_readdir)
* [wasi\_fd\_seek](/core/sys/wasm/wasi/#wasi_fd_seek)
* [wasi\_fd\_tell](/core/sys/wasm/wasi/#wasi_fd_tell)
* [wasi\_fd\_write](/core/sys/wasm/wasi/#wasi_fd_write)
* [wasi\_path\_filestat\_get](/core/sys/wasm/wasi/#wasi_path_filestat_get)
* [wasi\_path\_open](/core/sys/wasm/wasi/#wasi_path_open)
* [wasi\_path\_readlink](/core/sys/wasm/wasi/#wasi_path_readlink)
* [wasi\_sock\_recv](/core/sys/wasm/wasi/#wasi_sock_recv)
* [wasi\_sock\_send](/core/sys/wasm/wasi/#wasi_sock_send)

### [fdflag\_t ¶](#fdflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L445)

```
fdflag_t :: enum u16 {
	// *
	// 	 * Append mode: Data written to the file is always appended to the file's end.
	APPEND   = 0, 
	// *
	// 	 * Write according to synchronized I/O data integrity completion. Only the data stored in the file is synchronized.
	DSYNC    = 1, 
	// *
	// 	 * Non-blocking mode.
	NONBLOCK = 2, 
	// *
	// 	 * Synchronized read I/O operations.
	RSYNC    = 3, 
	// *
	// 	 * Write according to synchronized I/O file integrity completion. In
	// 	 * addition to synchronizing the data stored in the file, the implementation
	// 	 * may also synchronously update the file's metadata.
	SYNC     = 4, 
}
```

### [fdflags\_t ¶](#fdflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L444)

```
fdflags_t :: distinct bit_set[fdflag_t; u16]
```

##### Related Procedures With Parameters

* [fd\_fdstat\_set\_flags](/core/sys/wasm/wasi/#fd_fdstat_set_flags)
* [path\_open](/core/sys/wasm/wasi/#path_open)
* [wasi\_path\_open](/core/sys/wasm/wasi/#wasi_path_open)

### [fdstat\_t ¶](#fdstat_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L474)

```
fdstat_t :: struct {
	// *
	// 	 * File type.
	fs_filetype:          filetype_t,
	// *
	// 	 * File descriptor flags.
	fs_flags:             fdflags_t,
	// *
	// 	 * Rights that apply to this file descriptor.
	fs_rights_base:       rights_t,
	// *
	// 	 * Maximum set of rights that may be installed on new file descriptors that
	// 	 * are created through this file descriptor, e.g., through `path_open`.
	fs_rights_inheriting: rights_t,
}
```

##### Related Procedures With Parameters

* [wasi\_fd\_fdstat\_get](/core/sys/wasm/wasi/#wasi_fd_fdstat_get)



##### Related Procedures With Returns

* [fd\_fdstat\_get](/core/sys/wasm/wasi/#fd_fdstat_get)

### [filedelta\_t ¶](#filedelta_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L351)

```
filedelta_t :: distinct i64
```

##### Related Procedures With Parameters

* [fd\_seek](/core/sys/wasm/wasi/#fd_seek)
* [wasi\_fd\_seek](/core/sys/wasm/wasi/#wasi_fd_seek)

### [filesize\_t ¶](#filesize_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L9)

```
filesize_t :: distinct u64
```

##### Related Procedures With Parameters

* [fd\_advise](/core/sys/wasm/wasi/#fd_advise)
* [fd\_allocate](/core/sys/wasm/wasi/#fd_allocate)
* [fd\_filestat\_set\_size](/core/sys/wasm/wasi/#fd_filestat_set_size)
* [fd\_pread](/core/sys/wasm/wasi/#fd_pread)
* [fd\_pwrite](/core/sys/wasm/wasi/#fd_pwrite)
* [wasi\_fd\_pread](/core/sys/wasm/wasi/#wasi_fd_pread)
* [wasi\_fd\_pwrite](/core/sys/wasm/wasi/#wasi_fd_pwrite)
* [wasi\_fd\_seek](/core/sys/wasm/wasi/#wasi_fd_seek)
* [wasi\_fd\_tell](/core/sys/wasm/wasi/#wasi_fd_tell)



##### Related Procedures With Returns

* [fd\_seek](/core/sys/wasm/wasi/#fd_seek)
* [fd\_tell](/core/sys/wasm/wasi/#fd_tell)

### [filestat\_t ¶](#filestat_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L557)

```
filestat_t :: struct {
	// *
	// 	 * Device ID of device containing the file.
	dev:      device_t,
	// *
	// 	 * File serial number.
	ino:      inode_t,
	// *
	// 	 * File type.
	filetype: filetype_t,
	// *
	// 	 * Number of hard links to the file.
	nlink:    linkcount_t,
	// *
	// 	 * For regular files, the file size in bytes. For symbolic links, the length in bytes of the pathname contained in the symbolic link.
	size:     filesize_t,
	// *
	// 	 * Last data access timestamp.
	atim:     timestamp_t,
	// *
	// 	 * Last data modification timestamp.
	mtim:     timestamp_t,
	// *
	// 	 * Last file status change timestamp.
	ctim:     timestamp_t,
}
```

##### Related Procedures With Parameters

* [wasi\_fd\_filestat\_get](/core/sys/wasm/wasi/#wasi_fd_filestat_get)
* [wasi\_path\_filestat\_get](/core/sys/wasm/wasi/#wasi_path_filestat_get)



##### Related Procedures With Returns

* [fd\_filestat\_get](/core/sys/wasm/wasi/#fd_filestat_get)
* [path\_filestat\_get](/core/sys/wasm/wasi/#path_filestat_get)

### [filetype\_t ¶](#filetype_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L363)

```
filetype_t :: enum u8 {
	// *
	// 	 * The type of the file descriptor or file is unknown or is different from any of the other types specified.
	UNKNOWN          = 0, 
	// *
	// 	 * The file descriptor or file refers to a block device inode.
	BLOCK_DEVICE     = 1, 
	// *
	// 	 * The file descriptor or file refers to a character device inode.
	CHARACTER_DEVICE = 2, 
	// *
	// 	 * The file descriptor or file refers to a directory inode.
	DIRECTORY        = 3, 
	// *
	// 	 * The file descriptor or file refers to a regular file inode.
	REGULAR_FILE     = 4, 
	// *
	// 	 * The file descriptor or file refers to a datagram socket.
	SOCKET_DGRAM     = 5, 
	// *
	// 	 * The file descriptor or file refers to a byte-stream socket.
	SOCKET_STREAM    = 6, 
	// *
	// 	 * The file refers to a symbolic link inode.
	SYMBOLIC_LINK    = 7, 
}
```

### [fstflag\_t ¶](#fstflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L501)

```
fstflag_t :: enum u16 {
	// *
	// 	 * Adjust the last data access timestamp to the value stored in `filestat::atim`.
	ATIM     = 0, 
	// *
	// 	 * Adjust the last data access timestamp to the time of clock `clockid::realtime`.
	ATIM_NOW = 1, 
	// *
	// 	 * Adjust the last data modification timestamp to the value stored in `filestat::mtim`.
	MTIM     = 2, 
	// *
	// 	 * Adjust the last data modification timestamp to the time of clock `clockid::realtime`.
	MTIM_NOW = 3, 
}
```

### [fstflags\_t ¶](#fstflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L500)

```
fstflags_t :: distinct bit_set[fstflag_t; u16]
```

##### Related Procedures With Parameters

* [fd\_filestat\_set\_times](/core/sys/wasm/wasi/#fd_filestat_set_times)
* [path\_filestat\_set\_times](/core/sys/wasm/wasi/#path_filestat_set_times)

### [inode\_t ¶](#inode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L361)

```
inode_t :: distinct u64
```

### [iovec\_t ¶](#iovec_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L347)

```
iovec_t :: []u8
```

 

iovec\_t :: struct {

```
buf: [^]u8,
buf_len: size_t,
```

}
ciovec\_t :: struct {

```
buf: [^]u8,
buf_len: size_t,
```

}




##### Related Procedures With Parameters

* [fd\_prestat\_dir\_name](/core/sys/wasm/wasi/#fd_prestat_dir_name)
* [fd\_readdir](/core/sys/wasm/wasi/#fd_readdir)
* [path\_readlink](/core/sys/wasm/wasi/#path_readlink)
* [random\_get](/core/sys/wasm/wasi/#random_get)
* [wasi\_fd\_readdir](/core/sys/wasm/wasi/#wasi_fd_readdir)
* [wasi\_path\_readlink](/core/sys/wasm/wasi/#wasi_path_readlink)

### [linkcount\_t ¶](#linkcount_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L555)

```
linkcount_t :: distinct u64
```

### [lookupflag\_t ¶](#lookupflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L525)

```
lookupflag_t :: enum u32 {
	// *
	// 	 * As long as the resolved path corresponds to a symbolic link, it is expanded.
	SYMLINK_FOLLOW = 0, 
}
```

### [lookupflags\_t ¶](#lookupflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L524)

```
lookupflags_t :: distinct bit_set[lookupflag_t; u32]
```

##### Related Procedures With Parameters

* [path\_filestat\_get](/core/sys/wasm/wasi/#path_filestat_get)
* [path\_filestat\_set\_times](/core/sys/wasm/wasi/#path_filestat_set_times)
* [path\_link](/core/sys/wasm/wasi/#path_link)
* [path\_open](/core/sys/wasm/wasi/#path_open)
* [wasi\_path\_filestat\_get](/core/sys/wasm/wasi/#wasi_path_filestat_get)
* [wasi\_path\_open](/core/sys/wasm/wasi/#wasi_path_open)

### [oflag\_t ¶](#oflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L533)

```
oflag_t :: enum u16 {
	// *
	// 	 * Create file if it does not exist.
	CREATE    = 0, 
	// *
	// 	 * Fail if not a directory.
	DIRECTORY = 1, 
	// *
	// 	 * Fail if file already exists.
	EXCL      = 2, 
	// *
	// 	 * Truncate file to size 0.
	TRUNC     = 3, 
}
```

### [oflags\_t ¶](#oflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L532)

```
oflags_t :: distinct bit_set[oflag_t; u16]
```

##### Related Procedures With Parameters

* [path\_open](/core/sys/wasm/wasi/#path_open)
* [wasi\_path\_open](/core/sys/wasm/wasi/#wasi_path_open)

### [preopentype\_t ¶](#preopentype_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L957)

```
preopentype_t :: enum u8 {
	DIR = 0, 
}
```

### [prestat\_dir\_t ¶](#prestat_dir_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L961)

```
prestat_dir_t :: struct {
	pr_name_len: uint,
}
```

### [prestat\_t ¶](#prestat_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L965)

```
prestat_t :: struct {
	tag: preopentype_t,
	using u: struct {
		dir: prestat_dir_t,
	},
}
```

##### Related Procedures With Parameters

* [wasi\_fd\_prestat\_get](/core/sys/wasm/wasi/#wasi_fd_prestat_get)



##### Related Procedures With Returns

* [fd\_prestat\_get](/core/sys/wasm/wasi/#fd_prestat_get)

### [riflag\_t ¶](#riflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L919)

```
riflag_t :: enum u16 {
	// *
	// 	 * Returns the message without removing it from the socket's receive queue.
	RECV_PEEK    = 0, 
	// *
	// 	 * On byte-stream sockets, block until the full amount of data can be returned.
	RECV_WAITALL = 1, 
}
```

### [riflags\_t ¶](#riflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L918)

```
riflags_t :: distinct bit_set[riflag_t; u16]
```

##### Related Procedures With Parameters

* [sock\_recv](/core/sys/wasm/wasi/#sock_recv)
* [wasi\_sock\_recv](/core/sys/wasm/wasi/#wasi_sock_recv)

### [rights\_flag\_t ¶](#rights_flag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L178)

```
rights_flag_t :: enum u64 {
	// *
	// 	 * The right to invoke `fd_datasync`.
	// 	 * If `path_open` is set, includes the right to invoke
	// 	 * `path_open` with `fdflags::dsync`.
	FD_DATASYNC             = 0, 
	// *
	// 	 * The right to invoke `fd_read` and `sock_recv`.
	// 	 * If `rights::fd_seek` is set, includes the right to invoke `fd_pread`.
	FD_READ                 = 1, 
	// *
	// 	 * The right to invoke `fd_seek`. This flag implies `rights::fd_tell`.
	FD_SEEK                 = 2, 
	// *
	// 	 * The right to invoke `fd_fdstat_set_flags`.
	FD_FDSTAT_SET_FLAGS     = 3, 
	// *
	// 	 * The right to invoke `fd_sync`.
	// 	 * If `path_open` is set, includes the right to invoke
	// 	 * `path_open` with `fdflags::rsync` and `fdflags::dsync`.
	FD_SYNC                 = 4, 
	// *
	// 	 * The right to invoke `fd_seek` in such a way that the file offset
	// 	 * remains unaltered (i.e., `whence::cur` with offset zero), or to
	// 	 * invoke `fd_tell`.
	FD_TELL                 = 5, 
	// *
	// 	 * The right to invoke `fd_write` and `sock_send`.
	// 	 * If `rights::fd_seek` is set, includes the right to invoke `fd_pwrite`.
	FD_WRITE                = 6, 
	// *
	// 	 * The right to invoke `fd_advise`.
	FD_ADVISE               = 7, 
	// *
	// 	 * The right to invoke `fd_allocate`.
	FD_ALLOCATE             = 8, 
	// *
	// 	 * The right to invoke `path_create_directory`.
	PATH_CREATE_DIRECTORY   = 9, 
	// *
	// 	 * If `path_open` is set, the right to invoke `path_open` with `oflags::creat`.
	PATH_CREATE_FILE        = 10, 
	// *
	// 	 * The right to invoke `path_link` with the file descriptor as the
	// 	 * source directory.
	PATH_LINK_SOURCE        = 11, 
	// *
	// 	 * The right to invoke `path_link` with the file descriptor as the
	// 	 * target directory.
	PATH_LINK_TARGET        = 12, 
	// *
	// 	 * The right to invoke `path_open`.
	PATH_OPEN               = 13, 
	// *
	// 	 * The right to invoke `fd_readdir`.
	FD_READDIR              = 14, 
	// *
	// 	 * The right to invoke `path_readlink`.
	PATH_READLINK           = 15, 
	// *
	// 	 * The right to invoke `path_rename` with the file descriptor as the source directory.
	PATH_RENAME_SOURCE      = 16, 
	// *
	// 	 * The right to invoke `path_rename` with the file descriptor as the target directory.
	PATH_RENAME_TARGET      = 17, 
	// *
	// 	 * The right to invoke `path_filestat_get`.
	PATH_FILESTAT_GET       = 18, 
	// *
	// 	 * The right to change a file's size (there is no `path_filestat_set_size`).
	// 	 * If `path_open` is set, includes the right to invoke `path_open` with `oflags::trunc`.
	PATH_FILESTAT_SET_SIZE  = 19, 
	// *
	// 	 * The right to invoke `path_filestat_set_times`.
	PATH_FILESTAT_SET_TIMES = 20, 
	// *
	// 	 * The right to invoke `fd_filestat_get`.
	FD_FILESTAT_GET         = 21, 
	// *
	// 	 * The right to invoke `fd_filestat_set_size`.
	FD_FILESTAT_SET_SIZE    = 22, 
	// *
	// 	 * The right to invoke `fd_filestat_set_times`.
	FD_FILESTAT_SET_TIMES   = 23, 
	// *
	// 	 * The right to invoke `path_symlink`.
	PATH_SYMLINK            = 24, 
	// *
	// 	 * The right to invoke `path_remove_directory`.
	PATH_REMOVE_DIRECTORY   = 25, 
	// *
	// 	 * The right to invoke `path_unlink_file`.
	PATH_UNLINK_FILE        = 26, 
	// *
	// 	 * If `rights::fd_read` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype::fd_read`.
	// 	 * If `rights::fd_write` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype::fd_write`.
	POLL_FD_READWRITE       = 27, 
	// *
	// 	 * The right to invoke `sock_shutdown`.
	SOCK_SHUTDOWN           = 28, 
}
```

### [rights\_t ¶](#rights_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L177)

```
rights_t :: distinct bit_set[rights_flag_t; u64]
```

##### Related Procedures With Parameters

* [fd\_fdstat\_set\_rights](/core/sys/wasm/wasi/#fd_fdstat_set_rights)
* [path\_open](/core/sys/wasm/wasi/#path_open)
* [wasi\_path\_open](/core/sys/wasm/wasi/#wasi_path_open)

### [roflag\_t ¶](#roflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L932)

```
roflag_t :: enum u16 {
	// *
	// 	 * Returned by `sock_recv`: Message data has been truncated.
	RECV_DATA_TRUNCATED = 0, 
}
```

### [roflags\_t ¶](#roflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L931)

```
roflags_t :: distinct bit_set[roflag_t; u16]
```

##### Related Procedures With Parameters

* [wasi\_sock\_recv](/core/sys/wasm/wasi/#wasi_sock_recv)



##### Related Procedures With Returns

* [sock\_recv](/core/sys/wasm/wasi/#sock_recv)

### [sdflag\_t ¶](#sdflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L945)

```
sdflag_t :: enum u8 {
	// *
	// 	 * Disables further receive operations.
	RD = 0, 
	// *
	// 	 * Disables further send operations.
	WR = 1, 
}
```

### [sdflags\_t ¶](#sdflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L944)

```
sdflags_t :: distinct bit_set[sdflag_t; u8]
```

##### Related Procedures With Parameters

* [sock\_shutdown](/core/sys/wasm/wasi/#sock_shutdown)

### [siflag\_t ¶](#siflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L940)

```
siflag_t :: enum u16 {
}
```

### [siflags\_t ¶](#siflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L939)

```
siflags_t :: distinct bit_set[siflag_t; u16]
```

##### Related Procedures With Parameters

* [sock\_send](/core/sys/wasm/wasi/#sock_send)
* [wasi\_sock\_send](/core/sys/wasm/wasi/#wasi_sock_send)

### [signal\_t ¶](#signal_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L729)

```
signal_t :: enum u8 {
	// *
	// 	 * No signal. Note that POSIX has special semantics for `kill(pid, 0)`,
	// 	 * so this value is reserved.
	NONE   = 0, 
	// *
	// 	 * Hangup.
	// 	 * Action: Terminates the process.
	HUP    = 1, 
	// *
	// 	 * Terminate interrupt signal.
	// 	 * Action: Terminates the process.
	INT    = 2, 
	// *
	// 	 * Terminal quit signal.
	// 	 * Action: Terminates the process.
	QUIT   = 3, 
	// *
	// 	 * Illegal instruction.
	// 	 * Action: Terminates the process.
	ILL    = 4, 
	// *
	// 	 * Trace/breakpoint trap.
	// 	 * Action: Terminates the process.
	TRAP   = 5, 
	// *
	// 	 * Process abort signal.
	// 	 * Action: Terminates the process.
	ABRT   = 6, 
	// *
	// 	 * Access to an undefined portion of a memory object.
	// 	 * Action: Terminates the process.
	BUS    = 7, 
	// *
	// 	 * Erroneous arithmetic operation.
	// 	 * Action: Terminates the process.
	FPE    = 8, 
	// *
	// 	 * Kill.
	// 	 * Action: Terminates the process.
	KILL   = 9, 
	// *
	// 	 * User-defined signal 1.
	// 	 * Action: Terminates the process.
	USR1   = 10, 
	// *
	// 	 * Invalid memory reference.
	// 	 * Action: Terminates the process.
	SEGV   = 11, 
	// *
	// 	 * User-defined signal 2.
	// 	 * Action: Terminates the process.
	USR2   = 12, 
	// *
	// 	 * Write on a pipe with no one to read it.
	// 	 * Action: Ignored.
	PIPE   = 13, 
	// *
	// 	 * Alarm clock.
	// 	 * Action: Terminates the process.
	ALRM   = 14, 
	// *
	// 	 * Termination signal.
	// 	 * Action: Terminates the process.
	TERM   = 15, 
	// *
	// 	 * Child process terminated, stopped, or continued.
	// 	 * Action: Ignored.
	CHLD   = 16, 
	// *
	// 	 * Continue executing, if stopped.
	// 	 * Action: Continues executing, if stopped.
	CONT   = 17, 
	// *
	// 	 * Stop executing.
	// 	 * Action: Stops executing.
	STOP   = 18, 
	// *
	// 	 * Terminal stop signal.
	// 	 * Action: Stops executing.
	TSTP   = 19, 
	// *
	// 	 * Background process attempting read.
	// 	 * Action: Stops executing.
	TTIN   = 20, 
	// *
	// 	 * Background process attempting write.
	// 	 * Action: Stops executing.
	TTOU   = 21, 
	// *
	// 	 * High bandwidth data is available at a socket.
	// 	 * Action: Ignored.
	URG    = 22, 
	// *
	// 	 * CPU time limit exceeded.
	// 	 * Action: Terminates the process.
	XCPU   = 23, 
	// *
	// 	 * File size limit exceeded.
	// 	 * Action: Terminates the process.
	XFSZ   = 24, 
	// *
	// 	 * Virtual timer expired.
	// 	 * Action: Terminates the process.
	VTALRM = 25, 
	// *
	// 	 * Profiling timer expired.
	// 	 * Action: Terminates the process.
	PROF   = 26, 
	// *
	// 	 * Window changed.
	// 	 * Action: Ignored.
	WINCH  = 27, 
	// *
	// 	 * I/O possible.
	// 	 * Action: Terminates the process.
	POLL   = 28, 
	// *
	// 	 * Power failure.
	// 	 * Action: Terminates the process.
	PWR    = 29, 
	// *
	// 	 * Bad system call.
	// 	 * Action: Terminates the process.
	SYS    = 30, 
}
```

##### Related Procedures With Parameters

* [proc\_raise](/core/sys/wasm/wasi/#proc_raise)

### [size\_t ¶](#size_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L7)

```
size_t :: uint
```

##### Related Procedures With Parameters

* [poll\_oneoff](/core/sys/wasm/wasi/#poll_oneoff)
* [wasi\_args\_sizes\_get](/core/sys/wasm/wasi/#wasi_args_sizes_get)
* [wasi\_environ\_sizes\_get](/core/sys/wasm/wasi/#wasi_environ_sizes_get)
* [wasi\_fd\_pread](/core/sys/wasm/wasi/#wasi_fd_pread)
* [wasi\_fd\_pwrite](/core/sys/wasm/wasi/#wasi_fd_pwrite)
* [wasi\_fd\_read](/core/sys/wasm/wasi/#wasi_fd_read)
* [wasi\_fd\_readdir](/core/sys/wasm/wasi/#wasi_fd_readdir)
* [wasi\_fd\_write](/core/sys/wasm/wasi/#wasi_fd_write)
* [wasi\_path\_readlink](/core/sys/wasm/wasi/#wasi_path_readlink)
* [wasi\_poll\_oneoff](/core/sys/wasm/wasi/#wasi_poll_oneoff)
* [wasi\_sock\_recv](/core/sys/wasm/wasi/#wasi_sock_recv)
* [wasi\_sock\_send](/core/sys/wasm/wasi/#wasi_sock_send)



##### Related Procedures With Returns

* [args\_sizes\_get](/core/sys/wasm/wasi/#args_sizes_get)
* [environ\_sizes\_get](/core/sys/wasm/wasi/#environ_sizes_get)
* [fd\_pread](/core/sys/wasm/wasi/#fd_pread)
* [fd\_pwrite](/core/sys/wasm/wasi/#fd_pwrite)
* [fd\_read](/core/sys/wasm/wasi/#fd_read)
* [fd\_readdir](/core/sys/wasm/wasi/#fd_readdir)
* [fd\_write](/core/sys/wasm/wasi/#fd_write)
* [path\_readlink](/core/sys/wasm/wasi/#path_readlink)
* [sock\_recv](/core/sys/wasm/wasi/#sock_recv)
* [sock\_send](/core/sys/wasm/wasi/#sock_send)

### [subclockflag\_t ¶](#subclockflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L665)

```
subclockflag_t :: enum u16 {
	// *
	// 	 * If set, treat the timestamp provided in
	// 	 * `subscription_clock::timeout` as an absolute timestamp of clock
	// 	 * `subscription_clock::id`. If clear, treat the timestamp
	// 	 * provided in `subscription_clock::timeout` relative to the
	// 	 * current time value of clock `subscription_clock::id`.
	SUBSCRIPTION_CLOCK_ABSTIME = 0, 
}
```

### [subclockflags\_t ¶](#subclockflags_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L664)

```
subclockflags_t :: distinct bit_set[subclockflag_t; u16]
```

### [subscription\_clock\_t ¶](#subscription_clock_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L677)

```
subscription_clock_t :: struct {
	// *
	// 	 * The clock against which to compare the timestamp.
	id:        clockid_t,
	// *
	// 	 * The absolute or relative timestamp.
	timeout:   timestamp_t,
	// *
	// 	 * The amount of time that the implementation may wait additionally
	// 	 * to coalesce with other events.
	precision: timestamp_t,
	// *
	// 	 * Flags specifying whether the timeout is absolute or relative
	flags:     subclockflags_t,
}
```

### [subscription\_fd\_readwrite\_t ¶](#subscription_fd_readwrite_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L700)

```
subscription_fd_readwrite_t :: struct {
	// *
	// 	 * The file descriptor on which to wait for it to become ready for reading or writing.
	file_descriptor: fd_t,
}
```

### [subscription\_t ¶](#subscription_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L707)

```
subscription_t :: struct {
	// *
	// 	 * User-provided value that is attached to the subscription in the
	// 	 * implementation and returned through `event::userdata`.
	userdata: userdata_t,
	// *
	// 	 * The type of the event to which to subscribe, and its contents
	using contents: struct {
		tag: eventtype_t,
		using u: struct #raw_union {
			clock:    subscription_clock_t,
			fd_read:  subscription_fd_readwrite_t,
			fd_write: subscription_fd_readwrite_t,
		},
	},
}
```

##### Related Procedures With Parameters

* [poll\_oneoff](/core/sys/wasm/wasi/#poll_oneoff)
* [wasi\_poll\_oneoff](/core/sys/wasm/wasi/#wasi_poll_oneoff)

### [timestamp\_t ¶](#timestamp_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L10)

```
timestamp_t :: distinct u64
```

##### Related Procedures With Parameters

* [clock\_time\_get](/core/sys/wasm/wasi/#clock_time_get)
* [fd\_filestat\_set\_times](/core/sys/wasm/wasi/#fd_filestat_set_times)
* [path\_filestat\_set\_times](/core/sys/wasm/wasi/#path_filestat_set_times)
* [wasi\_clock\_res\_get](/core/sys/wasm/wasi/#wasi_clock_res_get)
* [wasi\_clock\_time\_get](/core/sys/wasm/wasi/#wasi_clock_time_get)



##### Related Procedures With Returns

* [clock\_res\_get](/core/sys/wasm/wasi/#clock_res_get)

### [userdata\_t ¶](#userdata_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L599)

```
userdata_t :: distinct u64
```

### [whence\_t ¶](#whence_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L353)

```
whence_t :: enum u8 {
	SET = 0, 
	CUR = 1, 
	END = 2, 
}
```

##### Related Procedures With Parameters

* [fd\_seek](/core/sys/wasm/wasi/#fd_seek)
* [wasi\_fd\_seek](/core/sys/wasm/wasi/#wasi_fd_seek)

## Constants

### [CLOCK\_MONOTONIC ¶](#CLOCK_MONOTONIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L14)

```
CLOCK_MONOTONIC :: clockid_t(1)
```

### [CLOCK\_PROCESS\_CPUTIME\_ID ¶](#CLOCK_PROCESS_CPUTIME_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L15)

```
CLOCK_PROCESS_CPUTIME_ID :: clockid_t(2)
```

### [CLOCK\_REALTIME ¶](#CLOCK_REALTIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L13)

```
CLOCK_REALTIME :: clockid_t(0)
```

### [CLOCK\_THREAD\_CPUTIME\_ID ¶](#CLOCK_THREAD_CPUTIME_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L16)

```
CLOCK_THREAD_CPUTIME_ID :: clockid_t(3)
```

### [DIRCOOKIE\_START ¶](#DIRCOOKIE_START) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L6)

```
DIRCOOKIE_START :: u64(0)
```

## Variables

This section is empty.

## Procedures

### [args\_get ¶](#args_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L978)

```
args_get :: proc "contextless" (argv: [^]cstring, argv_buf: [^]u8) -> errno_t ---
```

 

\*

```
 * Read command-line argument data.
 * The size of the array should match that returned by `args_sizes_get`
```

### [args\_sizes\_get ¶](#args_sizes_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1310)

```
args_sizes_get :: proc "contextless" () -> (num_args, size_of_args: uint, err: errno_t) {…}
```

 

\*
\* Return command-line argument data sizes.
\* @return
\* Returns the number of arguments and the size of the argument string
\* data, or an error.

### [clock\_res\_get ¶](#clock_res_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1332)

```
clock_res_get :: proc "contextless" (id: clockid_t) -> (ts: timestamp_t, err: errno_t) {…}
```

 

\*
\* Return the resolution of a clock.
\* Implementations are required to provide a non-zero value for supported clocks. For unsupported clocks,
\* return `errno::inval`.
\* Note: This is similar to `clock_getres` in POSIX.
\* @return
\* The resolution of the clock, or an error if one happened.

### [clock\_time\_get ¶](#clock_time_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1347)

```
clock_time_get :: proc "contextless" (id: clockid_t, precision: timestamp_t) -> (ts: timestamp_t, err: errno_t) {…}
```

 

\*
\* Return the time value of a clock.
\* Note: This is similar to `clock_gettime` in POSIX.
\* @return
\* The time value of the clock.

### [environ\_get ¶](#environ_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L986)

```
environ_get :: proc "contextless" (environ: [^]cstring, environ_buf: [^]u8) -> errno_t ---
```

 

\*

```
 * Read environment variable data.
 * The sizes of the buffers should match that returned by `environ_sizes_get`.
```

### [environ\_sizes\_get ¶](#environ_sizes_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1320)

```
environ_sizes_get :: proc "contextless" () -> (num_envs, size_of_envs: uint, err: errno_t) {…}
```

 

\*
\* Return environment variable data sizes.
\* @return
\* Returns the number of environment variable arguments and the size of the
\* environment variable data.

### [fd\_advise ¶](#fd_advise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L994)

```
fd_advise :: proc "contextless" (fd: fd_t, offset: filesize_t, len: filesize_t, advice: advice_t) -> errno_t ---
```

 

\*

```
 * Provide file advisory information on a file descriptor.
 * Note: This is similar to `posix_fadvise` in POSIX.
```

### [fd\_allocate ¶](#fd_allocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1013)

```
fd_allocate :: proc "contextless" (fd: fd_t, offset: filesize_t, len: filesize_t) -> errno_t ---
```

 

\*

```
 * Force the allocation of space in a file.
 * Note: This is similar to `posix_fallocate` in POSIX.
```

### [fd\_close ¶](#fd_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1028)

```
fd_close :: proc "contextless" (fd: fd_t) -> errno_t ---
```

 

\*

```
 * Close a file descriptor.
 * Note: This is similar to `close` in POSIX.
```

### [fd\_datasync ¶](#fd_datasync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1035)

```
fd_datasync :: proc "contextless" (fd: fd_t) -> errno_t ---
```

 

\*

```
 * Synchronize the data of a file to disk.
 * Note: This is similar to `fdatasync` in POSIX.
```

### [fd\_fdstat\_get ¶](#fd_fdstat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1366)

```
fd_fdstat_get :: proc "contextless" (fd: fd_t) -> (stat: fdstat_t, err: errno_t) {…}
```

 

\*
\* Get the attributes of a file descriptor.
\* Note: This returns similar flags to `fsync(fd, F_GETFL)` in POSIX, as well as additional fields.
\* @return
\* The buffer where the file descriptor's attributes are stored.

### [fd\_fdstat\_set\_flags ¶](#fd_fdstat_set_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1042)

```
fd_fdstat_set_flags :: proc "contextless" (fd: fd_t, flags: fdflags_t) -> errno_t ---
```

 

\*

```
 * Adjust the flags associated with a file descriptor.
 * Note: This is similar to `fcntl(fd, F_SETFL, flags)` in POSIX.
```

### [fd\_fdstat\_set\_rights ¶](#fd_fdstat_set_rights) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1053)

```
fd_fdstat_set_rights :: proc "contextless" (fd: fd_t, fs_rights_base: rights_t, fs_rights_inheritin: rights_t) -> errno_t ---
```

 

\*

```
 * Adjust the rights associated with a file descriptor.
 * This can only be used to remove rights, and returns `errno::notcapable` if called in a way that would attempt to add rights
```

### [fd\_filestat\_get ¶](#fd_filestat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1377)

```
fd_filestat_get :: proc "contextless" (fd: fd_t) -> (stat: filestat_t, err: errno_t) {…}
```

 

\*
\* Return the attributes of an open file.
\* @return
\* The buffer where the file's attributes are stored.

### [fd\_filestat\_set\_size ¶](#fd_filestat_set_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1065)

```
fd_filestat_set_size :: proc "contextless" (fd: fd_t, size: filesize_t) -> errno_t ---
```

 

\*

```
 * Adjust the size of an open file. If this increases the file's size, the extra bytes are filled with zeros.
 * Note: This is similar to `ftruncate` in POSIX.
```

### [fd\_filestat\_set\_times ¶](#fd_filestat_set_times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1076)

```
fd_filestat_set_times :: proc "contextless" (fd: fd_t, atim: timestamp_t, mtim: timestamp_t, fst_flags: fstflags_t) -> errno_t ---
```

 

\*

```
 * Adjust the timestamps of an open file or directory.
 * Note: This is similar to `futimens` in POSIX.
```

### [fd\_pread ¶](#fd_pread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1393)

```
fd_pread :: proc "contextless" (fd: fd_t, iovs: [][]u8, offset: filesize_t) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Read from a file descriptor, without using and updating the file descriptor's offset.
\* Note: This is similar to `preadv` in POSIX.
\* @return
\* The number of bytes read.

### [fd\_prestat\_dir\_name ¶](#fd_prestat_dir_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1157)

```
fd_prestat_dir_name :: proc "contextless" (fd: fd_t, path: []u8) -> errno_t ---
```

 

\*

```
 * Return a description of the given preopened file descriptor.
```

### [fd\_prestat\_get ¶](#fd_prestat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1412)

```
fd_prestat_get :: proc "contextless" (fd: fd_t) -> (desc: prestat_t, err: errno_t) {…}
```

 

\*
\* Return a description of the given preopened file descriptor.
\* @return
\* The buffer where the description is stored.

### [fd\_pwrite ¶](#fd_pwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1424)

```
fd_pwrite :: proc "contextless" (fd: fd_t, iovs: [][]u8, offset: filesize_t) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Write to a file descriptor, without using and updating the file descriptor's offset.
\* Note: This is similar to `pwritev` in POSIX.
\* @return
\* The number of bytes written.

### [fd\_read ¶](#fd_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1444)

```
fd_read :: proc "contextless" (fd: fd_t, iovs: [][]u8) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Read from a file descriptor.
\* Note: This is similar to `readv` in POSIX.
\* @return
\* The number of bytes read.

### [fd\_readdir ¶](#fd_readdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1467)

```
fd_readdir :: proc "contextless" (fd: fd_t, buf: []u8, cookie: dircookie_t) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Read directory entries from a directory.
\* When successful, the contents of the output buffer consist of a sequence of
\* directory entries. Each directory entry consists of a `dirent` object,
\* followed by `dirent::d_namlen` bytes holding the name of the directory
\* entry.
\* This function fills the output buffer as much as possible, potentially
\* truncating the last directory entry. This allows the caller to grow its
\* read buffer size in case it's too small to fit a single large directory
\* entry, or skip the oversized directory entry.
\* @return
\* The number of bytes stored in the read buffer. If less than the size of the read buffer, the end of the directory has been reached.

### [fd\_renumber ¶](#fd_renumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1101)

```
fd_renumber :: proc "contextless" (fd: fd_t, to: fd_t) -> errno_t ---
```

 

\*

```
 * Atomically replace a file descriptor by renumbering another file descriptor.
 * Due to the strong focus on thread safety, this environment does not provide
 * a mechanism to duplicate or renumber a file descriptor to an arbitrary
 * number, like `dup2()`. This would be prone to race conditions, as an actual
 * file descriptor with the same number could be allocated by a different
 * thread at the same time.
 * This function provides a way to atomically renumber file descriptors, which
 * would disappear if `dup2()` were to be removed entirely.
```

### [fd\_seek ¶](#fd_seek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1487)

```
fd_seek :: proc "contextless" (fd: fd_t, offset: filedelta_t, whence: whence_t) -> (new_offset: filesize_t, err: errno_t) {…}
```

 

\*
\* Move the offset of a file descriptor.
\* Note: This is similar to `lseek` in POSIX.
\* @return
\* The new offset of the file descriptor, relative to the start of the file.

### [fd\_sync ¶](#fd_sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1112)

```
fd_sync :: proc "contextless" (f: fd_t) -> errno_t ---
```

 

\*

```
 * Synchronize the data and metadata of a file to disk.
 * Note: This is similar to `fsync` in POSIX.
```

### [fd\_tell ¶](#fd_tell) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1507)

```
fd_tell :: proc "contextless" (fd: fd_t) -> (offset: filesize_t, err: errno_t) {…}
```

 

\*
\* Return the current offset of a file descriptor.
\* Note: This is similar to `lseek(fd, 0, SEEK_CUR)` in POSIX.
\* @return
\* The current offset of the file descriptor, relative to the start of the file.

### [fd\_write ¶](#fd_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1517)

```
fd_write :: proc "contextless" (fd: fd_t, iovs: [][]u8) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Write to a file descriptor.
\* Note: This is similar to `writev` in POSIX.

### [path\_create\_directory ¶](#path_create_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1168)

```
path_create_directory :: proc "contextless" (fd: fd_t, path: string) -> errno_t ---
```

 

\*

```
 * Create a directory.
 * Note: This is similar to `mkdirat` in POSIX.
```

### [path\_filestat\_get ¶](#path_filestat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1533)

```
path_filestat_get :: proc "contextless" (fd: fd_t, flags: lookupflags_t, path: string) -> (offset: filestat_t, err: errno_t) {…}
```

 

\*
\* Return the attributes of a file or directory.
\* Note: This is similar to `stat` in POSIX.
\* @return
\* The buffer where the file's attributes are stored.

### [path\_filestat\_set\_times ¶](#path_filestat_set_times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1179)

```
path_filestat_set_times :: proc "contextless" (
	fd:        fd_t, 
	flags:     lookupflags_t, 
	path:      string, 
	atim:      timestamp_t, 
	mtim:      timestamp_t, 
	fst_flags: fstflags_t, 
) -> errno_t ---
```

 

\*

```
 * Adjust the timestamps of a file or directory.
 * Note: This is similar to `utimensat` in POSIX.
```

### [path\_link ¶](#path_link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1218)

```
path_link :: proc "contextless" (old_fd: fd_t, old_flags: lookupflags_t, old_path: string, new_fd: fd_t, new_path: string) -> errno_t ---
```

 

\*

```
 * Create a hard link.
 * Note: This is similar to `linkat` in POSIX.
```

### [path\_open ¶](#path_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1558)

```
path_open :: proc "contextless" (
	fd:                   fd_t, 
	dirflags:             lookupflags_t, 
	path:                 string, 
	oflags:               oflags_t, 
	fs_rights_base:       rights_t, 
	fs_rights_inheriting: rights_t, 
	fdflags:              fdflags_t, 
) -> (file: fd_t, err: errno_t) {…}
```

 

\*
\* Open a file or directory.
\* The returned file descriptor is not guaranteed to be the lowest-numbered
\* file descriptor not currently open; it is randomized to prevent
\* applications from depending on making assumptions about indexes, since this
\* is error-prone in multi-threaded contexts. The returned file descriptor is
 *guaranteed to be less than 2*\*31.
\* Note: This is similar to `openat` in POSIX.
\* @return
\* The file descriptor of the file that has been opened.

### [path\_readlink ¶](#path_readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1595)

```
path_readlink :: proc "contextless" (fd: fd_t, path: string, buf: []u8) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Read the contents of a symbolic link.
\* Note: This is similar to `readlinkat` in POSIX.
\* @return
\* The number of bytes placed in the buffer.

### [path\_remove\_directory ¶](#path_remove_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1207)

```
path_remove_directory :: proc "contextless" (fd: fd_t, path: string) -> errno_t ---
```

 

\*

```
 * Remove a directory.
 * Return `errno::notempty` if the directory is not empty.
 * Note: This is similar to `unlinkat(fd, path, AT_REMOVEDIR)` in POSIX.
```

### [path\_rename ¶](#path_rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1242)

```
path_rename :: proc "contextless" (fd: fd_t, old_path: string, new_fd: fd_t, new_path: string) -> errno_t ---
```

 

\*

```
 * Rename a file or directory.
 * Note: This is similar to `renameat` in POSIX.
```

### [path\_symlink ¶](#path_symlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1262)

```
path_symlink :: proc "contextless" (old_path: string, fd: fd_t, new_path: string) -> errno_t ---
```

 

\*

```
 * Create a symbolic link.
 * Note: This is similar to `symlinkat` in POSIX.
```

### [path\_unlink\_file ¶](#path_unlink_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1279)

```
path_unlink_file :: proc "contextless" (fd: fd_t, path: string) -> errno_t ---
```

 

\*

```
 * Unlink a file.
 * Return `errno::isdir` if the path refers to a directory.
 * Note: This is similar to `unlinkat(fd, path, 0)` in POSIX.
```

### [poll\_oneoff ¶](#poll_oneoff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1614)

```
poll_oneoff :: proc "contextless" (subscription_in: ^subscription_t, event_out: ^event_t, nsubscriptions: uint) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Concurrently poll for the occurrence of a set of events.
\* @return
\* The number of events stored.

### [proc\_exit ¶](#proc_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1120)

```
proc_exit :: proc "contextless" (rval: exitcode_t) -> ! ---
```

 

\*

```
 * Terminate the process normally. An exit code of 0 indicates successful
 * termination of the program. The meanings of other values is dependent on
 * the environment.
```

### [proc\_raise ¶](#proc_raise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1130)

```
proc_raise :: proc "contextless" (sig: signal_t) -> errno_t ---
```

 

\*

```
 * Send a signal to the process of the calling thread.
 * Note: This is similar to `raise` in POSIX.
```

### [random\_get ¶](#random_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1295)

```
random_get :: proc "contextless" (buf: []u8) -> errno_t ---
```

 

\*

```
 * Write high-quality random data into a buffer.
 * This function blocks when the implementation is unable to immediately
 * provide sufficient high-quality random data.
 * This function may execute slowly, so when large mounts of random data are
 * required, it's advisable to use this function to seed a pseudo-random
 * number generator, rather than to provide the random data directly.
```

### [sched\_yield ¶](#sched_yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1140)

```
sched_yield :: proc "contextless" () -> errno_t ---
```

 

\*

```
 * Temporarily yield execution of the calling thread.
 * Note: This is similar to `sched_yield` in POSIX.
```

### [sock\_recv ¶](#sock_recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1638)

```
sock_recv :: proc "contextless" (fd: fd_t, ri_data: [][]u8, ri_flags: riflags_t) -> (n: uint, flags: roflags_t, err: errno_t) {…}
```

 

\*
\* Receive a message from a socket.
\* Note: This is similar to `recv` in POSIX, though it also supports reading
\* the data into multiple buffers in the manner of `readv`.
\* @return
\* Number of bytes stored in ri\_data and message flags.

### [sock\_send ¶](#sock_send) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1659)

```
sock_send :: proc "contextless" (fd: fd_t, si_data: [][]u8, si_flags: siflags_t) -> (n: uint, err: errno_t) {…}
```

 

\*
\* Send a message on a socket.
\* Note: This is similar to `send` in POSIX, though it also supports writing
\* the data from multiple buffers in the manner of `writev`.
\* @return
\* Number of bytes transmitted.

### [sock\_shutdown ¶](#sock_shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1145)

```
sock_shutdown :: proc "contextless" (fd: fd_t, how: sdflags_t) -> errno_t ---
```

 

\*

```
 * Shut down socket send and receive channels.
 * Note: This is similar to `shutdown` in POSIX.
```

### [wasi\_args\_sizes\_get ¶](#wasi_args_sizes_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1682)

```
wasi_args_sizes_get :: proc "contextless" (retptr0: ^uint, retptr1: ^uint) -> errno_t ---
```

### [wasi\_clock\_res\_get ¶](#wasi_clock_res_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1692)

```
wasi_clock_res_get :: proc "contextless" (id: clockid_t, retptr0: ^timestamp_t) -> errno_t ---
```

### [wasi\_clock\_time\_get ¶](#wasi_clock_time_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1697)

```
wasi_clock_time_get :: proc "contextless" (id: clockid_t, precision: timestamp_t, retptr0: ^timestamp_t) -> errno_t ---
```

### [wasi\_environ\_sizes\_get ¶](#wasi_environ_sizes_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1687)

```
wasi_environ_sizes_get :: proc "contextless" (retptr0: ^uint, retptr1: ^uint) -> errno_t ---
```

### [wasi\_fd\_fdstat\_get ¶](#wasi_fd_fdstat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1703)

```
wasi_fd_fdstat_get :: proc "contextless" (fd: fd_t, retptr0: ^fdstat_t) -> errno_t ---
```

### [wasi\_fd\_filestat\_get ¶](#wasi_fd_filestat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1708)

```
wasi_fd_filestat_get :: proc "contextless" (fd: fd_t, retptr0: ^filestat_t) -> errno_t ---
```

### [wasi\_fd\_pread ¶](#wasi_fd_pread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1713)

```
wasi_fd_pread :: proc "contextless" (fd: fd_t, iovs: [][]u8, offset: filesize_t, retptr0: ^uint) -> errno_t ---
```

### [wasi\_fd\_prestat\_get ¶](#wasi_fd_prestat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1720)

```
wasi_fd_prestat_get :: proc "contextless" (fd: fd_t, retptr0: ^prestat_t) -> errno_t ---
```

### [wasi\_fd\_pwrite ¶](#wasi_fd_pwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1725)

```
wasi_fd_pwrite :: proc "contextless" (fd: fd_t, iovs: [][]u8, offset: filesize_t, retptr0: ^uint) -> errno_t ---
```

### [wasi\_fd\_read ¶](#wasi_fd_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1732)

```
wasi_fd_read :: proc "contextless" (fd: fd_t, iovs: [][]u8, retptr0: ^uint) -> errno_t ---
```

### [wasi\_fd\_readdir ¶](#wasi_fd_readdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1738)

```
wasi_fd_readdir :: proc "contextless" (fd: fd_t, buf: []u8, cookie: dircookie_t, retptr0: ^uint) -> errno_t ---
```

### [wasi\_fd\_seek ¶](#wasi_fd_seek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1745)

```
wasi_fd_seek :: proc "contextless" (fd: fd_t, offset: filedelta_t, whence: whence_t, retptr0: ^filesize_t) -> errno_t ---
```

### [wasi\_fd\_tell ¶](#wasi_fd_tell) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1752)

```
wasi_fd_tell :: proc "contextless" (fd: fd_t, retptr0: ^filesize_t) -> errno_t ---
```

### [wasi\_fd\_write ¶](#wasi_fd_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1757)

```
wasi_fd_write :: proc "contextless" (fd: fd_t, iovs: [][]u8, retptr0: ^uint) -> errno_t ---
```

### [wasi\_path\_filestat\_get ¶](#wasi_path_filestat_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1763)

```
wasi_path_filestat_get :: proc "contextless" (fd: fd_t, flags: lookupflags_t, path: string, retptr0: ^filestat_t) -> errno_t ---
```

### [wasi\_path\_open ¶](#wasi_path_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1773)

```
wasi_path_open :: proc "contextless" (
	fd:                   fd_t, 
	dirflags:             lookupflags_t, 
	path:                 string, 
	oflags:               oflags_t, 
	fs_rights_base:       rights_t, 
	fs_rights_inheriting: rights_t, 
	fdflags:              fdflags_t, 
	retptr:               ^fd_t, 
) -> errno_t ---
```

### [wasi\_path\_readlink ¶](#wasi_path_readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1784)

```
wasi_path_readlink :: proc "contextless" (fd: fd_t, path: string, buf: []u8, retptr0: ^uint) -> errno_t ---
```

### [wasi\_poll\_oneoff ¶](#wasi_poll_oneoff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1791)

```
wasi_poll_oneoff :: proc "contextless" (subscription_in: ^subscription_t, event_out: ^event_t, nsubscriptions: uint, retptr0: ^uint) -> errno_t ---
```

### [wasi\_sock\_recv ¶](#wasi_sock_recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1798)

```
wasi_sock_recv :: proc "contextless" (fd: fd_t, ri_data: [][]u8, ri_flags: riflags_t, retptr0: ^uint, retptr1: ^roflags_t) -> errno_t ---
```

### [wasi\_sock\_send ¶](#wasi_sock_send) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin#L1806)

```
wasi_sock_send :: proc "contextless" (fd: fd_t, si_data: [][]u8, si_flags: siflags_t, retptr0: ^uint) -> errno_t ---
```

## Procedure Groups

This section is empty.

## Source Files

* [wasi\_api.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/wasi/wasi_api.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:49.002045000 +0000 UTC`

* [Types](#pkg-Types)
  + [advice\_t](#advice_t)
  + [ciovec\_t](#ciovec_t)
  + [clockid\_t](#clockid_t)
  + [device\_t](#device_t)
  + [dircookie\_t](#dircookie_t)
  + [dirent\_t](#dirent_t)
  + [dirnamlen\_t](#dirnamlen_t)
  + [errno\_t](#errno_t)
  + [event\_fd\_readwrite\_t](#event_fd_readwrite_t)
  + [event\_t](#event_t)
  + [eventrwflag\_t](#eventrwflag_t)
  + [eventrwflags\_t](#eventrwflags_t)
  + [eventtype\_t](#eventtype_t)
  + [exitcode\_t](#exitcode_t)
  + [fd\_t](#fd_t)
  + [fdflag\_t](#fdflag_t)
  + [fdflags\_t](#fdflags_t)
  + [fdstat\_t](#fdstat_t)
  + [filedelta\_t](#filedelta_t)
  + [filesize\_t](#filesize_t)
  + [filestat\_t](#filestat_t)
  + [filetype\_t](#filetype_t)
  + [fstflag\_t](#fstflag_t)
  + [fstflags\_t](#fstflags_t)
  + [inode\_t](#inode_t)
  + [iovec\_t](#iovec_t)
  + [linkcount\_t](#linkcount_t)
  + [lookupflag\_t](#lookupflag_t)
  + [lookupflags\_t](#lookupflags_t)
  + [oflag\_t](#oflag_t)
  + [oflags\_t](#oflags_t)
  + [preopentype\_t](#preopentype_t)
  + [prestat\_dir\_t](#prestat_dir_t)
  + [prestat\_t](#prestat_t)
  + [riflag\_t](#riflag_t)
  + [riflags\_t](#riflags_t)
  + [rights\_flag\_t](#rights_flag_t)
  + [rights\_t](#rights_t)
  + [roflag\_t](#roflag_t)
  + [roflags\_t](#roflags_t)
  + [sdflag\_t](#sdflag_t)
  + [sdflags\_t](#sdflags_t)
  + [siflag\_t](#siflag_t)
  + [siflags\_t](#siflags_t)
  + [signal\_t](#signal_t)
  + [size\_t](#size_t)
  + [subclockflag\_t](#subclockflag_t)
  + [subclockflags\_t](#subclockflags_t)
  + [subscription\_clock\_t](#subscription_clock_t)
  + [subscription\_fd\_readwrite\_t](#subscription_fd_readwrite_t)
  + [subscription\_t](#subscription_t)
  + [timestamp\_t](#timestamp_t)
  + [userdata\_t](#userdata_t)
  + [whence\_t](#whence_t)
* [Constants](#pkg-Constants)
  + [CLOCK\_MONOTONIC](#CLOCK_MONOTONIC)
  + [CLOCK\_PROCESS\_CPUTIME\_ID](#CLOCK_PROCESS_CPUTIME_ID)
  + [CLOCK\_REALTIME](#CLOCK_REALTIME)
  + [CLOCK\_THREAD\_CPUTIME\_ID](#CLOCK_THREAD_CPUTIME_ID)
  + [DIRCOOKIE\_START](#DIRCOOKIE_START)
* [Procedures](#pkg-Procedures)
  + [args\_get](#args_get)
  + [args\_sizes\_get](#args_sizes_get)
  + [clock\_res\_get](#clock_res_get)
  + [clock\_time\_get](#clock_time_get)
  + [environ\_get](#environ_get)
  + [environ\_sizes\_get](#environ_sizes_get)
  + [fd\_advise](#fd_advise)
  + [fd\_allocate](#fd_allocate)
  + [fd\_close](#fd_close)
  + [fd\_datasync](#fd_datasync)
  + [fd\_fdstat\_get](#fd_fdstat_get)
  + [fd\_fdstat\_set\_flags](#fd_fdstat_set_flags)
  + [fd\_fdstat\_set\_rights](#fd_fdstat_set_rights)
  + [fd\_filestat\_get](#fd_filestat_get)
  + [fd\_filestat\_set\_size](#fd_filestat_set_size)
  + [fd\_filestat\_set\_times](#fd_filestat_set_times)
  + [fd\_pread](#fd_pread)
  + [fd\_prestat\_dir\_name](#fd_prestat_dir_name)
  + [fd\_prestat\_get](#fd_prestat_get)
  + [fd\_pwrite](#fd_pwrite)
  + [fd\_read](#fd_read)
  + [fd\_readdir](#fd_readdir)
  + [fd\_renumber](#fd_renumber)
  + [fd\_seek](#fd_seek)
  + [fd\_sync](#fd_sync)
  + [fd\_tell](#fd_tell)
  + [fd\_write](#fd_write)
  + [path\_create\_directory](#path_create_directory)
  + [path\_filestat\_get](#path_filestat_get)
  + [path\_filestat\_set\_times](#path_filestat_set_times)
  + [path\_link](#path_link)
  + [path\_open](#path_open)
  + [path\_readlink](#path_readlink)
  + [path\_remove\_directory](#path_remove_directory)
  + [path\_rename](#path_rename)
  + [path\_symlink](#path_symlink)
  + [path\_unlink\_file](#path_unlink_file)
  + [poll\_oneoff](#poll_oneoff)
  + [proc\_exit](#proc_exit)
  + [proc\_raise](#proc_raise)
  + [random\_get](#random_get)
  + [sched\_yield](#sched_yield)
  + [sock\_recv](#sock_recv)
  + [sock\_send](#sock_send)
  + [sock\_shutdown](#sock_shutdown)
  + [wasi\_args\_sizes\_get](#wasi_args_sizes_get)
  + [wasi\_clock\_res\_get](#wasi_clock_res_get)
  + [wasi\_clock\_time\_get](#wasi_clock_time_get)
  + [wasi\_environ\_sizes\_get](#wasi_environ_sizes_get)
  + [wasi\_fd\_fdstat\_get](#wasi_fd_fdstat_get)
  + [wasi\_fd\_filestat\_get](#wasi_fd_filestat_get)
  + [wasi\_fd\_pread](#wasi_fd_pread)
  + [wasi\_fd\_prestat\_get](#wasi_fd_prestat_get)
  + [wasi\_fd\_pwrite](#wasi_fd_pwrite)
  + [wasi\_fd\_read](#wasi_fd_read)
  + [wasi\_fd\_readdir](#wasi_fd_readdir)
  + [wasi\_fd\_seek](#wasi_fd_seek)
  + [wasi\_fd\_tell](#wasi_fd_tell)
  + [wasi\_fd\_write](#wasi_fd_write)
  + [wasi\_path\_filestat\_get](#wasi_path_filestat_get)
  + [wasi\_path\_open](#wasi_path_open)
  + [wasi\_path\_readlink](#wasi_path_readlink)
  + [wasi\_poll\_oneoff](#wasi_poll_oneoff)
  + [wasi\_sock\_recv](#wasi_sock_recv)
  + [wasi\_sock\_send](#wasi_sock_send)
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