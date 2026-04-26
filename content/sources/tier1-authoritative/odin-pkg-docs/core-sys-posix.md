package sys/posix - pkg.odin-lang.org 






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



Current Package: *[posix](/core/sys/posix)*

  

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
3. [posix](/core/sys/posix)

# package core:sys/posix [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix)

#### **Warning:**This was generated for `-target:darwin_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Raw bindings for most `POSIX` APIs.

Targets glibc and musl compatibility.

APIs that have been left out are due to not being useful,
being fully replaced (and better) by other Odin packages,
or when one of the targets hasn't implemented the API or option.

The struct fields that are cross-platform are documented with `[PSX]`.
Accessing these fields on one target should be the same on others.
Other fields are implementation specific.

The parts of POSIX that Windows implements are also supported here, but
other symbols are undefined on Windows targets.

Most macros have been reimplemented in Odin with inlined functions.

Unimplemented headers:
aio.h
complex.h | See `core:c/libc` and our own complex types
cpio.h
ctype.h | See `core:c/libc` for most of it
ndbm.h
fenv.h
float.h
fmtmsg.h
ftw.h
semaphore.h | See `core:sync`
inttypes.h | See `core:c`
iso646.h | Impossible
math.h | See `core:c/libc`
mqueue.h | Targets don't seem to have implemented it
regex.h | See `core:text/regex`
search.h | Not useful in Odin
spawn.h | Use `fork`, `execve`, etc.
stdarg.h | See `core:c/libc`
stdint.h | See `core:c`
stropts.h
syslog.h
pthread.h | Only the actual threads API is bound, see `core:sync` for synchronization primitives
string.h | Most of this is not useful in Odin, only a select few symbols are bound
tar.h
tgmath.h
trace.h
wchar.h
wctype.h

## Index

Types (200)

* [AF](#AF)
* [AT\_Flag\_Bits](#AT_Flag_Bits)
* [AT\_Flags](#AT_Flags)
* [Addrinfo\_Flag\_Bits](#Addrinfo_Flag_Bits)
* [Addrinfo\_Flags](#Addrinfo_Flags)
* [Any\_Code](#Any_Code)
* [BUS\_Code](#BUS_Code)
* [CControl\_Flag\_Bits](#CControl_Flag_Bits)
* [CControl\_Flags](#CControl_Flags)
* [CInput\_Flag\_Bits](#CInput_Flag_Bits)
* [CInput\_Flags](#CInput_Flags)
* [CLD\_Code](#CLD_Code)
* [CLocal\_Flag\_Bits](#CLocal_Flag_Bits)
* [CLocal\_Flags](#CLocal_Flags)
* [COutput\_Flag\_Bits](#COutput_Flag_Bits)
* [COutput\_Flags](#COutput_Flags)
* [CS](#CS)
* [Cancel\_State](#Cancel_State)
* [Cancel\_Type](#Cancel_Type)
* [Clock](#Clock)
* [Control\_Char](#Control_Char)
* [DIR](#DIR)
* [D\_Type](#D_Type)
* [Detach\_State](#Detach_State)
* [Errno](#Errno)
* [FCNTL\_Cmd](#FCNTL_Cmd)
* [FD](#FD)
* [FILE](#FILE)
* [FNM\_Flag\_Bits](#FNM_Flag_Bits)
* [FNM\_Flags](#FNM_Flags)
* [FPE\_Code](#FPE_Code)
* [Glob\_Flag\_Bits](#Glob_Flag_Bits)
* [Glob\_Flags](#Glob_Flags)
* [Glob\_Result](#Glob_Result)
* [ILL\_Code](#ILL_Code)
* [IPC\_Cmd](#IPC_Cmd)
* [IPC\_Flag\_Bits](#IPC_Flag_Bits)
* [IPC\_Flags](#IPC_Flags)
* [ITimer](#ITimer)
* [Info\_Errno](#Info_Errno)
* [Inherit\_Sched](#Inherit_Sched)
* [Locale\_Category](#Locale_Category)
* [Lock\_Flag\_Bits](#Lock_Flag_Bits)
* [Lock\_Flags](#Lock_Flags)
* [Lock\_Function](#Lock_Function)
* [Lock\_Type](#Lock_Type)
* [MAdvice](#MAdvice)
* [Map\_Flag\_Bits](#Map_Flag_Bits)
* [Map\_Flags](#Map_Flags)
* [Mode\_Bits](#Mode_Bits)
* [Mode\_Flag\_Bits](#Mode_Flag_Bits)
* [Mode\_Flags](#Mode_Flags)
* [Msg\_Flag\_Bits](#Msg_Flag_Bits)
* [Msg\_Flags](#Msg_Flags)
* [Nameinfo\_Flag\_Bits](#Nameinfo_Flag_Bits)
* [Nameinfo\_Flags](#Nameinfo_Flags)
* [O\_Flag\_Bits](#O_Flag_Bits)
* [O\_Flags](#O_Flags)
* [PC](#PC)
* [POLL\_Code](#POLL_Code)
* [Poll\_Event](#Poll_Event)
* [Poll\_Event\_Bits](#Poll_Event_Bits)
* [Prot\_Flag\_Bits](#Prot_Flag_Bits)
* [Prot\_Flags](#Prot_Flags)
* [Protocol](#Protocol)
* [RTLD\_Flag\_Bits](#RTLD_Flag_Bits)
* [RTLD\_Flags](#RTLD_Flags)
* [Resource](#Resource)
* [SA\_Flags](#SA_Flags)
* [SA\_Flags\_Bits](#SA_Flags_Bits)
* [SC](#SC)
* [SEGV\_Code](#SEGV_Code)
* [SHM\_Flag\_Bits](#SHM_Flag_Bits)
* [SHM\_Flags](#SHM_Flags)
* [SS\_Flag\_Bits](#SS_Flag_Bits)
* [SS\_Flags](#SS_Flags)
* [Sched\_Policy](#Sched_Policy)
* [Sem\_Cmd](#Sem_Cmd)
* [Shut](#Shut)
* [Sig](#Sig)
* [Signal](#Signal)
* [Sock](#Sock)
* [Sock\_Option](#Sock_Option)
* [Symbol\_Table](#Symbol_Table)
* [Sync\_Flags](#Sync_Flags)
* [Sync\_Flags\_Bits](#Sync_Flags_Bits)
* [TC\_Action](#TC_Action)
* [TC\_Optional\_Action](#TC_Optional_Action)
* [TC\_Queue](#TC_Queue)
* [TRAP\_Code](#TRAP_Code)
* [Thread\_Scope](#Thread_Scope)
* [Ulimit\_Cmd](#Ulimit_Cmd)
* [VFS\_Flag\_Bits](#VFS_Flag_Bits)
* [VFS\_Flags](#VFS_Flags)
* [WRDE\_Errno](#WRDE_Errno)
* [WRDE\_Flag\_Bits](#WRDE_Flag_Bits)
* [WRDE\_Flags](#WRDE_Flags)
* [Wait\_Flag\_Bits](#Wait_Flag_Bits)
* [Wait\_Flags](#Wait_Flags)
* [Whence](#Whence)
* [Which\_Prio](#Which_Prio)
* [Which\_Usage](#Which_Usage)
* [addrinfo](#addrinfo)
* [blkcnt\_t](#blkcnt_t)
* [blksize\_t](#blksize_t)
* [cc\_t](#cc_t)
* [clock\_t](#clock_t)
* [clockid\_t](#clockid_t)
* [cmsghdr](#cmsghdr)
* [dev\_t](#dev_t)
* [dir\_loc](#dir_loc)
* [dirent](#dirent)
* [div\_t](#div_t)
* [fd\_set](#fd_set)
* [flock](#flock)
* [fpos\_t](#fpos_t)
* [fsblkcnt\_t](#fsblkcnt_t)
* [gid\_t](#gid_t)
* [glob\_t](#glob_t)
* [group](#group)
* [hostent](#hostent)
* [iconv\_t](#iconv_t)
* [id\_t](#id_t)
* [idtype\_t](#idtype_t)
* [if\_nameindex\_t](#if_nameindex_t)
* [in6\_addr](#in6_addr)
* [in\_addr](#in_addr)
* [in\_addr\_t](#in_addr_t)
* [in\_port\_t](#in_port_t)
* [ino\_t](#ino_t)
* [iovec](#iovec)
* [ipc\_perm](#ipc_perm)
* [ipv6\_mreq](#ipv6_mreq)
* [itimerval](#itimerval)
* [jmp\_buf](#jmp_buf)
* [key\_t](#key_t)
* [lconv](#lconv)
* [ldiv\_t](#ldiv_t)
* [linger](#linger)
* [lldiv\_t](#lldiv_t)
* [mode\_t](#mode_t)
* [msghdr](#msghdr)
* [msglen\_t](#msglen_t)
* [msgqnum\_t](#msgqnum_t)
* [msqid\_ds](#msqid_ds)
* [netent](#netent)
* [nfds\_t](#nfds_t)
* [nl\_item](#nl_item)
* [nl\_item\_t](#nl_item_t)
* [nlink\_t](#nlink_t)
* [off\_t](#off_t)
* [passwd](#passwd)
* [pid\_t](#pid_t)
* [pollfd](#pollfd)
* [protoent](#protoent)
* [pthread\_attr\_t](#pthread_attr_t)
* [pthread\_cond\_t](#pthread_cond_t)
* [pthread\_key\_t](#pthread_key_t)
* [pthread\_mutex\_t](#pthread_mutex_t)
* [pthread\_t](#pthread_t)
* [pton\_result](#pton_result)
* [result](#result)
* [rlim\_t](#rlim_t)
* [rlimit](#rlimit)
* [rusage](#rusage)
* [sa\_family\_t](#sa_family_t)
* [sched\_param](#sched_param)
* [sembuf](#sembuf)
* [semid\_ds](#semid_ds)
* [semun](#semun)
* [servent](#servent)
* [shmatt\_t](#shmatt_t)
* [shmid\_ds](#shmid_ds)
* [sigaction\_t](#sigaction_t)
* [siginfo\_t](#siginfo_t)
* [sigjmp\_buf](#sigjmp_buf)
* [sigset\_t](#sigset_t)
* [sigval](#sigval)
* [sockaddr](#sockaddr)
* [sockaddr\_in](#sockaddr_in)
* [sockaddr\_in6](#sockaddr_in6)
* [sockaddr\_storage](#sockaddr_storage)
* [sockaddr\_un](#sockaddr_un)
* [socklen\_t](#socklen_t)
* [speed\_t](#speed_t)
* [stack\_t](#stack_t)
* [stat\_t](#stat_t)
* [statvfs\_t](#statvfs_t)
* [suseconds\_t](#suseconds_t)
* [tcflag\_t](#tcflag_t)
* [termios](#termios)
* [time\_t](#time_t)
* [timespec](#timespec)
* [timeval](#timeval)
* [tm](#tm)
* [tms](#tms)
* [uid\_t](#uid_t)
* [utimbuf](#utimbuf)
* [utsname](#utsname)
* [wordexp\_t](#wordexp_t)

Constants (639)

* [ABDAY\_1](#ABDAY_1)
* [ABDAY\_2](#ABDAY_2)
* [ABDAY\_3](#ABDAY_3)
* [ABDAY\_4](#ABDAY_4)
* [ABDAY\_5](#ABDAY_5)
* [ABDAY\_6](#ABDAY_6)
* [ABDAY\_7](#ABDAY_7)
* [ABMON\_1](#ABMON_1)
* [ABMON\_10](#ABMON_10)
* [ABMON\_11](#ABMON_11)
* [ABMON\_12](#ABMON_12)
* [ABMON\_2](#ABMON_2)
* [ABMON\_3](#ABMON_3)
* [ABMON\_4](#ABMON_4)
* [ABMON\_5](#ABMON_5)
* [ABMON\_6](#ABMON_6)
* [ABMON\_7](#ABMON_7)
* [ABMON\_8](#ABMON_8)
* [ABMON\_9](#ABMON_9)
* [AF\_INET](#AF_INET)
* [AF\_INET6](#AF_INET6)
* [AF\_UNIX](#AF_UNIX)
* [AF\_UNSPEC](#AF_UNSPEC)
* [AI\_ADDRCONFIG](#AI_ADDRCONFIG)
* [AI\_ALL](#AI_ALL)
* [AI\_CANONNAME](#AI_CANONNAME)
* [AI\_NUMERICHOST](#AI_NUMERICHOST)
* [AI\_NUMERICSERV](#AI_NUMERICSERV)
* [AI\_PASSIVE](#AI_PASSIVE)
* [AI\_V4MAPPED](#AI_V4MAPPED)
* [ALT\_DIGITS](#ALT_DIGITS)
* [AM\_STR](#AM_STR)
* [ARG\_MAX](#ARG_MAX)
* [AT\_EACCESS](#AT_EACCESS)
* [AT\_FDCWD](#AT_FDCWD)
* [AT\_REMOVEDIR](#AT_REMOVEDIR)
* [AT\_SYMLINK\_FOLLOW](#AT_SYMLINK_FOLLOW)
* [AT\_SYMLINK\_NOFOLLOW](#AT_SYMLINK_NOFOLLOW)
* [B0](#B0)
* [B110](#B110)
* [B1200](#B1200)
* [B134](#B134)
* [B150](#B150)
* [B1800](#B1800)
* [B19200](#B19200)
* [B200](#B200)
* [B2400](#B2400)
* [B300](#B300)
* [B38400](#B38400)
* [B4800](#B4800)
* [B50](#B50)
* [B600](#B600)
* [B75](#B75)
* [B9600](#B9600)
* [BC\_BASE\_MAX](#BC_BASE_MAX)
* [BC\_DIM\_MAX](#BC_DIM_MAX)
* [BC\_SCALE\_MAX](#BC_SCALE_MAX)
* [BC\_STRING\_MAX](#BC_STRING_MAX)
* [BRKINT](#BRKINT)
* [BS0](#BS0)
* [BS1](#BS1)
* [BSDLY](#BSDLY)
* [BUFSIZ](#BUFSIZ)
* [BUS\_ADRALN](#BUS_ADRALN)
* [BUS\_ADRERR](#BUS_ADRERR)
* [BUS\_OBJERR](#BUS_OBJERR)
* [CHARCLASS\_NAME\_MAX](#CHARCLASS_NAME_MAX)
* [CHILD\_MAX](#CHILD_MAX)
* [CLD\_CONTINUED](#CLD_CONTINUED)
* [CLD\_DUMPED](#CLD_DUMPED)
* [CLD\_EXITED](#CLD_EXITED)
* [CLD\_KILLED](#CLD_KILLED)
* [CLD\_STOPPED](#CLD_STOPPED)
* [CLD\_TRAPPED](#CLD_TRAPPED)
* [CLOCAL](#CLOCAL)
* [CLOCKS\_PER\_SEC](#CLOCKS_PER_SEC)
* [CLOCK\_MONOTONIC](#CLOCK_MONOTONIC)
* [CLOCK\_PROCESS\_CPUTIME\_ID](#CLOCK_PROCESS_CPUTIME_ID)
* [CLOCK\_REALTIME](#CLOCK_REALTIME)
* [CLOCK\_THREAD\_CPUTIME\_ID](#CLOCK_THREAD_CPUTIME_ID)
* [CODESET](#CODESET)
* [COLL\_WEIGHTS\_MAX](#COLL_WEIGHTS_MAX)
* [CR0](#CR0)
* [CR1](#CR1)
* [CR2](#CR2)
* [CR3](#CR3)
* [CRDLY](#CRDLY)
* [CREAD](#CREAD)
* [CRNCYSTR](#CRNCYSTR)
* [CS5](#CS5)
* [CS6](#CS6)
* [CS7](#CS7)
* [CS8](#CS8)
* [CSIZE](#CSIZE)
* [CSTOPB](#CSTOPB)
* [DAY\_1](#DAY_1)
* [DAY\_2](#DAY_2)
* [DAY\_3](#DAY_3)
* [DAY\_4](#DAY_4)
* [DAY\_5](#DAY_5)
* [DAY\_6](#DAY_6)
* [DAY\_7](#DAY_7)
* [D\_FMT](#D_FMT)
* [D\_T\_FMT](#D_T_FMT)
* [E2BIG](#E2BIG)
* [EACCES](#EACCES)
* [EADDRINUSE](#EADDRINUSE)
* [EADDRNOTAVAIL](#EADDRNOTAVAIL)
* [EAFNOSUPPORT](#EAFNOSUPPORT)
* [EAGAIN](#EAGAIN)
* [EAI\_AGAIN](#EAI_AGAIN)
* [EAI\_BADFLAGS](#EAI_BADFLAGS)
* [EAI\_FAIL](#EAI_FAIL)
* [EAI\_FAMILY](#EAI_FAMILY)
* [EAI\_MEMORY](#EAI_MEMORY)
* [EAI\_NONAME](#EAI_NONAME)
* [EAI\_OVERFLOW](#EAI_OVERFLOW)
* [EAI\_SERVICE](#EAI_SERVICE)
* [EAI\_SOCKTYPE](#EAI_SOCKTYPE)
* [EAI\_SYSTEM](#EAI_SYSTEM)
* [EALREADY](#EALREADY)
* [EBADF](#EBADF)
* [EBADMSG](#EBADMSG)
* [EBUSY](#EBUSY)
* [ECANCELED](#ECANCELED)
* [ECHILD](#ECHILD)
* [ECHO](#ECHO)
* [ECHOE](#ECHOE)
* [ECHOK](#ECHOK)
* [ECHONL](#ECHONL)
* [ECONNABORTED](#ECONNABORTED)
* [ECONNREFUSED](#ECONNREFUSED)
* [ECONNRESET](#ECONNRESET)
* [EDEADLK](#EDEADLK)
* [EDESTADDRREQ](#EDESTADDRREQ)
* [EDOM](#EDOM)
* [EDQUOT](#EDQUOT)
* [EEXIST](#EEXIST)
* [EFAULT](#EFAULT)
* [EFBIG](#EFBIG)
* [EHOSTUNREACH](#EHOSTUNREACH)
* [EIDRM](#EIDRM)
* [EILSEQ](#EILSEQ)
* [EINPROGRESS](#EINPROGRESS)
* [EINTR](#EINTR)
* [EINVAL](#EINVAL)
* [EIO](#EIO)
* [EISCONN](#EISCONN)
* [EISDIR](#EISDIR)
* [ELOOP](#ELOOP)
* [EMFILE](#EMFILE)
* [EMLINK](#EMLINK)
* [EMSGSIZE](#EMSGSIZE)
* [EMULTIHOP](#EMULTIHOP)
* [ENAMETOOLONG](#ENAMETOOLONG)
* [ENETDOWN](#ENETDOWN)
* [ENETRESET](#ENETRESET)
* [ENETUNREACH](#ENETUNREACH)
* [ENFILE](#ENFILE)
* [ENOBUFS](#ENOBUFS)
* [ENODATA](#ENODATA)
* [ENODEV](#ENODEV)
* [ENOENT](#ENOENT)
* [ENOEXEC](#ENOEXEC)
* [ENOLCK](#ENOLCK)
* [ENOLINK](#ENOLINK)
* [ENOMEM](#ENOMEM)
* [ENOMSG](#ENOMSG)
* [ENOPROTOOPT](#ENOPROTOOPT)
* [ENOSPC](#ENOSPC)
* [ENOSR](#ENOSR)
* [ENOSTR](#ENOSTR)
* [ENOSYS](#ENOSYS)
* [ENOTCONN](#ENOTCONN)
* [ENOTDIR](#ENOTDIR)
* [ENOTEMPTY](#ENOTEMPTY)
* [ENOTRECOVERABLE](#ENOTRECOVERABLE)
* [ENOTSOCK](#ENOTSOCK)
* [ENOTSUP](#ENOTSUP)
* [ENOTTY](#ENOTTY)
* [ENXIO](#ENXIO)
* [EOF](#EOF)
* [EOPNOTSUPP](#EOPNOTSUPP)
* [EOVERFLOW](#EOVERFLOW)
* [EOWNERDEAD](#EOWNERDEAD)
* [EPERM](#EPERM)
* [EPIPE](#EPIPE)
* [EPROTO](#EPROTO)
* [EPROTONOSUPPORT](#EPROTONOSUPPORT)
* [EPROTOTYPE](#EPROTOTYPE)
* [ERA](#ERA)
* [ERANGE](#ERANGE)
* [ERA\_D\_FMT](#ERA_D_FMT)
* [ERA\_D\_T\_FMT](#ERA_D_T_FMT)
* [ERA\_T\_FMT](#ERA_T_FMT)
* [EROFS](#EROFS)
* [ESPIPE](#ESPIPE)
* [ESRCH](#ESRCH)
* [ESTALE](#ESTALE)
* [ETIME](#ETIME)
* [ETIMEDOUT](#ETIMEDOUT)
* [ETXTBSY](#ETXTBSY)
* [EWOULDBLOCK](#EWOULDBLOCK)
* [EXDEV](#EXDEV)
* [EXIT\_FAILURE](#EXIT_FAILURE)
* [EXIT\_SUCCESS](#EXIT_SUCCESS)
* [EXPR\_NEST\_MAX](#EXPR_NEST_MAX)
* [FD\_CLOEXEC](#FD_CLOEXEC)
* [FD\_SETSIZE](#FD_SETSIZE)
* [FF0](#FF0)
* [FF1](#FF1)
* [FFDLY](#FFDLY)
* [FILENAME\_MAX](#FILENAME_MAX)
* [FNM\_NOESCAPE](#FNM_NOESCAPE)
* [FNM\_NOMATCH](#FNM_NOMATCH)
* [FNM\_PATHNAME](#FNM_PATHNAME)
* [FNM\_PERIOD](#FNM_PERIOD)
* [FOPEN\_MAX](#FOPEN_MAX)
* [FPE\_FLTDIV](#FPE_FLTDIV)
* [FPE\_FLTINV](#FPE_FLTINV)
* [FPE\_FLTOVF](#FPE_FLTOVF)
* [FPE\_FLTRES](#FPE_FLTRES)
* [FPE\_FLTSUB](#FPE_FLTSUB)
* [FPE\_FLTUND](#FPE_FLTUND)
* [FPE\_INTDIV](#FPE_INTDIV)
* [FPE\_INTOVF](#FPE_INTOVF)
* [F\_DUPFD](#F_DUPFD)
* [F\_DUPFD\_CLOEXEC](#F_DUPFD_CLOEXEC)
* [F\_GETFD](#F_GETFD)
* [F\_GETFL](#F_GETFL)
* [F\_GETLK](#F_GETLK)
* [F\_GETOWN](#F_GETOWN)
* [F\_LOCK](#F_LOCK)
* [F\_OK](#F_OK)
* [F\_RDLCK](#F_RDLCK)
* [F\_SETFD](#F_SETFD)
* [F\_SETFL](#F_SETFL)
* [F\_SETLK](#F_SETLK)
* [F\_SETLKW](#F_SETLKW)
* [F\_SETOWN](#F_SETOWN)
* [F\_TEST](#F_TEST)
* [F\_TLOCK](#F_TLOCK)
* [F\_ULOCK](#F_ULOCK)
* [F\_UNLCK](#F_UNLCK)
* [F\_WRLCK](#F_WRLCK)
* [GETALL](#GETALL)
* [GETNCNT](#GETNCNT)
* [GETPID](#GETPID)
* [GETVAL](#GETVAL)
* [GETZCNT](#GETZCNT)
* [GLOB\_ABORTED](#GLOB_ABORTED)
* [GLOB\_APPEND](#GLOB_APPEND)
* [GLOB\_DOOFFS](#GLOB_DOOFFS)
* [GLOB\_ERR](#GLOB_ERR)
* [GLOB\_MARK](#GLOB_MARK)
* [GLOB\_NOCHECK](#GLOB_NOCHECK)
* [GLOB\_NOESCAPE](#GLOB_NOESCAPE)
* [GLOB\_NOMATCH](#GLOB_NOMATCH)
* [GLOB\_NOSORT](#GLOB_NOSORT)
* [GLOB\_NOSPACE](#GLOB_NOSPACE)
* [HUPCL](#HUPCL)
* [ICANON](#ICANON)
* [ICRNL](#ICRNL)
* [IEXTEN](#IEXTEN)
* [IF\_NAMESIZE](#IF_NAMESIZE)
* [IGNBRK](#IGNBRK)
* [IGNCR](#IGNCR)
* [IGNPAR](#IGNPAR)
* [ILL\_BADSTK](#ILL_BADSTK)
* [ILL\_COPROC](#ILL_COPROC)
* [ILL\_ILLADR](#ILL_ILLADR)
* [ILL\_ILLOPC](#ILL_ILLOPC)
* [ILL\_ILLOPN](#ILL_ILLOPN)
* [ILL\_ILLTRP](#ILL_ILLTRP)
* [ILL\_PRVOPC](#ILL_PRVOPC)
* [ILL\_PRVREG](#ILL_PRVREG)
* [INADDR\_ANY](#INADDR_ANY)
* [INADDR\_BROADCAST](#INADDR_BROADCAST)
* [INET6\_ADDRSTRLEN](#INET6_ADDRSTRLEN)
* [INET\_ADDRSTRLEN](#INET_ADDRSTRLEN)
* [INLCR](#INLCR)
* [INPCK](#INPCK)
* [IOV\_MAX](#IOV_MAX)
* [IPC\_CREAT](#IPC_CREAT)
* [IPC\_EXCL](#IPC_EXCL)
* [IPC\_NOWAIT](#IPC_NOWAIT)
* [IPC\_PRIVATE](#IPC_PRIVATE)
* [IPC\_RMID](#IPC_RMID)
* [IPC\_SET](#IPC_SET)
* [IPC\_STAT](#IPC_STAT)
* [IPPORT\_RESERVED](#IPPORT_RESERVED)
* [IPPROTO\_ICMP](#IPPROTO_ICMP)
* [IPPROTO\_IP](#IPPROTO_IP)
* [IPPROTO\_IPV6](#IPPROTO_IPV6)
* [IPPROTO\_RAW](#IPPROTO_RAW)
* [IPPROTO\_TCP](#IPPROTO_TCP)
* [IPPROTO\_UDP](#IPPROTO_UDP)
* [IPV6\_JOIN\_GROUP](#IPV6_JOIN_GROUP)
* [IPV6\_LEAVE\_GROUP](#IPV6_LEAVE_GROUP)
* [IPV6\_MULTICAST\_HOPS](#IPV6_MULTICAST_HOPS)
* [IPV6\_MULTICAST\_IF](#IPV6_MULTICAST_IF)
* [IPV6\_MULTICAST\_LOOP](#IPV6_MULTICAST_LOOP)
* [IPV6\_UNICAST\_HOPS](#IPV6_UNICAST_HOPS)
* [IPV6\_V6ONLY](#IPV6_V6ONLY)
* [ISIG](#ISIG)
* [ISTRIP](#ISTRIP)
* [IS\_SUPPORTED](#IS_SUPPORTED)
* [ITIMER\_PROF](#ITIMER_PROF)
* [ITIMER\_REAL](#ITIMER_REAL)
* [ITIMER\_VIRTUAL](#ITIMER_VIRTUAL)
* [IXANY](#IXANY)
* [IXOFF](#IXOFF)
* [IXON](#IXON)
* [LINE\_MAX](#LINE_MAX)
* [LINK\_MAX](#LINK_MAX)
* [LPSELECT](#LPSELECT)
* [LSELECT](#LSELECT)
* [L\_ctermid](#L_ctermid)
* [L\_tmpnam](#L_tmpnam)
* [MAP\_ANONYMOUS](#MAP_ANONYMOUS)
* [MAP\_FAILED](#MAP_FAILED)
* [MAP\_FIXED](#MAP_FIXED)
* [MAP\_PRIVATE](#MAP_PRIVATE)
* [MAP\_SHARED](#MAP_SHARED)
* [MAX\_CANON](#MAX_CANON)
* [MAX\_INPUT](#MAX_INPUT)
* [MCL\_CURRENT](#MCL_CURRENT)
* [MCL\_FUTURE](#MCL_FUTURE)
* [MINSIGSTKSZ](#MINSIGSTKSZ)
* [MON\_1](#MON_1)
* [MON\_10](#MON_10)
* [MON\_11](#MON_11)
* [MON\_12](#MON_12)
* [MON\_2](#MON_2)
* [MON\_3](#MON_3)
* [MON\_4](#MON_4)
* [MON\_5](#MON_5)
* [MON\_6](#MON_6)
* [MON\_7](#MON_7)
* [MON\_8](#MON_8)
* [MON\_9](#MON_9)
* [MSG\_CTRUNC](#MSG_CTRUNC)
* [MSG\_DONTROUTE](#MSG_DONTROUTE)
* [MSG\_EOR](#MSG_EOR)
* [MSG\_NOERROR](#MSG_NOERROR)
* [MSG\_NOSIGNAL](#MSG_NOSIGNAL)
* [MSG\_OOB](#MSG_OOB)
* [MSG\_PEEK](#MSG_PEEK)
* [MSG\_TRUNC](#MSG_TRUNC)
* [MSG\_WAITALL](#MSG_WAITALL)
* [MS\_ASYNC](#MS_ASYNC)
* [MS\_INVALIDATE](#MS_INVALIDATE)
* [MS\_SYNC](#MS_SYNC)
* [NAME\_MAX](#NAME_MAX)
* [NCCS](#NCCS)
* [NGROUPS\_MAX](#NGROUPS_MAX)
* [NI\_DGRAM](#NI_DGRAM)
* [NI\_NAMEREQD](#NI_NAMEREQD)
* [NI\_NOFQDN](#NI_NOFQDN)
* [NI\_NUMERICHOST](#NI_NUMERICHOST)
* [NI\_NUMERICSCOPE](#NI_NUMERICSCOPE)
* [NI\_NUMERICSERV](#NI_NUMERICSERV)
* [NL0](#NL0)
* [NL1](#NL1)
* [NLDLY](#NLDLY)
* [NL\_ARGMAX](#NL_ARGMAX)
* [NL\_LANGMAX](#NL_LANGMAX)
* [NL\_MSGMAX](#NL_MSGMAX)
* [NL\_SETMAX](#NL_SETMAX)
* [NL\_TEXTMAX](#NL_TEXTMAX)
* [NOEXPR](#NOEXPR)
* [NOFLSH](#NOFLSH)
* [NZERO](#NZERO)
* [OCRNL](#OCRNL)
* [OFDEL](#OFDEL)
* [OFILL](#OFILL)
* [ONLCR](#ONLCR)
* [ONLRET](#ONLRET)
* [ONOCR](#ONOCR)
* [OPOST](#OPOST)
* [O\_ACCMODE](#O_ACCMODE)
* [O\_APPEND](#O_APPEND)
* [O\_CLOEXEC](#O_CLOEXEC)
* [O\_CREAT](#O_CREAT)
* [O\_DIRECTORY](#O_DIRECTORY)
* [O\_DSYNC](#O_DSYNC)
* [O\_EXCL](#O_EXCL)
* [O\_EXEC](#O_EXEC)
* [O\_NOCTTY](#O_NOCTTY)
* [O\_NOFOLLOW](#O_NOFOLLOW)
* [O\_NONBLOCK](#O_NONBLOCK)
* [O\_RDONLY](#O_RDONLY)
* [O\_RDWR](#O_RDWR)
* [O\_RSYNC](#O_RSYNC)
* [O\_SEARCH](#O_SEARCH)
* [O\_SYNC](#O_SYNC)
* [O\_TRUNC](#O_TRUNC)
* [O\_TTY\_INIT](#O_TTY_INIT)
* [O\_WRONLY](#O_WRONLY)
* [PAGESIZE](#PAGESIZE)
* [PAGE\_SIZE](#PAGE_SIZE)
* [PARENB](#PARENB)
* [PARMRK](#PARMRK)
* [PARODD](#PARODD)
* [PATH\_MAX](#PATH_MAX)
* [PIPE\_BUF](#PIPE_BUF)
* [PM\_STR](#PM_STR)
* [POLLERR](#POLLERR)
* [POLLHUP](#POLLHUP)
* [POLLIN](#POLLIN)
* [POLLNVAL](#POLLNVAL)
* [POLLOUT](#POLLOUT)
* [POLLPRI](#POLLPRI)
* [POLLRDBAND](#POLLRDBAND)
* [POLLRDNORM](#POLLRDNORM)
* [POLLWRBAND](#POLLWRBAND)
* [POLLWRNORM](#POLLWRNORM)
* [POLL\_ERR](#POLL_ERR)
* [POLL\_HUP](#POLL_HUP)
* [POLL\_IN](#POLL_IN)
* [POLL\_MSG](#POLL_MSG)
* [POLL\_OUT](#POLL_OUT)
* [POLL\_PRI](#POLL_PRI)
* [POSIX\_MADV\_DONTNEED](#POSIX_MADV_DONTNEED)
* [POSIX\_MADV\_NORMAL](#POSIX_MADV_NORMAL)
* [POSIX\_MADV\_RANDOM](#POSIX_MADV_RANDOM)
* [POSIX\_MADV\_SEQUENTIAL](#POSIX_MADV_SEQUENTIAL)
* [POSIX\_MADV\_WILLNEED](#POSIX_MADV_WILLNEED)
* [PRIO\_PGRP](#PRIO_PGRP)
* [PRIO\_PROCESS](#PRIO_PROCESS)
* [PRIO\_USER](#PRIO_USER)
* [PROT\_EXEC](#PROT_EXEC)
* [PROT\_NONE](#PROT_NONE)
* [PROT\_READ](#PROT_READ)
* [PROT\_WRITE](#PROT_WRITE)
* [PTHREAD\_CANCELED](#PTHREAD_CANCELED)
* [PTHREAD\_CANCEL\_ASYNCHRONOUS](#PTHREAD_CANCEL_ASYNCHRONOUS)
* [PTHREAD\_CANCEL\_DEFERRED](#PTHREAD_CANCEL_DEFERRED)
* [PTHREAD\_CANCEL\_DISABLE](#PTHREAD_CANCEL_DISABLE)
* [PTHREAD\_CANCEL\_ENABLE](#PTHREAD_CANCEL_ENABLE)
* [PTHREAD\_CREATE\_DETACHED](#PTHREAD_CREATE_DETACHED)
* [PTHREAD\_CREATE\_JOINABLE](#PTHREAD_CREATE_JOINABLE)
* [PTHREAD\_DESTRUCTOR\_ITERATIONS](#PTHREAD_DESTRUCTOR_ITERATIONS)
* [PTHREAD\_EXPLICIT\_SCHED](#PTHREAD_EXPLICIT_SCHED)
* [PTHREAD\_INHERIT\_SCHED](#PTHREAD_INHERIT_SCHED)
* [PTHREAD\_KEYS\_MAX](#PTHREAD_KEYS_MAX)
* [PTHREAD\_PRIO\_INHERIT](#PTHREAD_PRIO_INHERIT)
* [PTHREAD\_PRIO\_NONE](#PTHREAD_PRIO_NONE)
* [PTHREAD\_PRIO\_PROTECT](#PTHREAD_PRIO_PROTECT)
* [PTHREAD\_PROCESS\_PRIVATE](#PTHREAD_PROCESS_PRIVATE)
* [PTHREAD\_PROCESS\_SHARED](#PTHREAD_PROCESS_SHARED)
* [PTHREAD\_SCOPE\_PROCESS](#PTHREAD_SCOPE_PROCESS)
* [PTHREAD\_SCOPE\_SYSTEM](#PTHREAD_SCOPE_SYSTEM)
* [PTHREAD\_STACK\_MIN](#PTHREAD_STACK_MIN)
* [P\_tmpdir](#P_tmpdir)
* [RADIXCHAR](#RADIXCHAR)
* [RAND\_MAX](#RAND_MAX)
* [RE\_DUP\_MAX](#RE_DUP_MAX)
* [RLIMIT\_AS](#RLIMIT_AS)
* [RLIMIT\_CORE](#RLIMIT_CORE)
* [RLIMIT\_CPU](#RLIMIT_CPU)
* [RLIMIT\_DATA](#RLIMIT_DATA)
* [RLIMIT\_FSIZE](#RLIMIT_FSIZE)
* [RLIMIT\_NOFILE](#RLIMIT_NOFILE)
* [RLIMIT\_STACK](#RLIMIT_STACK)
* [RLIM\_INFINITY](#RLIM_INFINITY)
* [RLIM\_SAVED\_CUR](#RLIM_SAVED_CUR)
* [RLIM\_SAVED\_MAX](#RLIM_SAVED_MAX)
* [RTLD\_GLOBAL](#RTLD_GLOBAL)
* [RTLD\_LAZY](#RTLD_LAZY)
* [RTLD\_LOCAL](#RTLD_LOCAL)
* [RTLD\_NOW](#RTLD_NOW)
* [RUSAGE\_CHILDREN](#RUSAGE_CHILDREN)
* [RUSAGE\_SELF](#RUSAGE_SELF)
* [R\_OK](#R_OK)
* [SA\_NOCLDSTOP](#SA_NOCLDSTOP)
* [SA\_NOCLDWAIT](#SA_NOCLDWAIT)
* [SA\_NODEFER](#SA_NODEFER)
* [SA\_ONSTACK](#SA_ONSTACK)
* [SA\_RESETHAND](#SA_RESETHAND)
* [SA\_RESTART](#SA_RESTART)
* [SA\_SIGINFO](#SA_SIGINFO)
* [SCHED\_FIFO](#SCHED_FIFO)
* [SCHED\_OTHER](#SCHED_OTHER)
* [SCHED\_RR](#SCHED_RR)
* [SCM\_RIGHTS](#SCM_RIGHTS)
* [SEEK\_CUR](#SEEK_CUR)
* [SEEK\_END](#SEEK_END)
* [SEEK\_SET](#SEEK_SET)
* [SEGV\_ACCERR](#SEGV_ACCERR)
* [SEGV\_MAPERR](#SEGV_MAPERR)
* [SEM\_UNDO](#SEM_UNDO)
* [SETALL](#SETALL)
* [SETVAL](#SETVAL)
* [SHMLBA](#SHMLBA)
* [SHM\_RDONLY](#SHM_RDONLY)
* [SHM\_RND](#SHM_RND)
* [SHUT\_RD](#SHUT_RD)
* [SHUT\_RDWR](#SHUT_RDWR)
* [SHUT\_WR](#SHUT_WR)
* [SIGABRT](#SIGABRT)
* [SIGALRM](#SIGALRM)
* [SIGBUS](#SIGBUS)
* [SIGCHLD](#SIGCHLD)
* [SIGCONT](#SIGCONT)
* [SIGFPE](#SIGFPE)
* [SIGHUP](#SIGHUP)
* [SIGILL](#SIGILL)
* [SIGINT](#SIGINT)
* [SIGKILL](#SIGKILL)
* [SIGPIPE](#SIGPIPE)
* [SIGPOLL](#SIGPOLL)
* [SIGPROF](#SIGPROF)
* [SIGQUIT](#SIGQUIT)
* [SIGSEGV](#SIGSEGV)
* [SIGSTKSZ](#SIGSTKSZ)
* [SIGSTOP](#SIGSTOP)
* [SIGSYS](#SIGSYS)
* [SIGTERM](#SIGTERM)
* [SIGTRAP](#SIGTRAP)
* [SIGTSTP](#SIGTSTP)
* [SIGTTIN](#SIGTTIN)
* [SIGTTOU](#SIGTTOU)
* [SIGURG](#SIGURG)
* [SIGUSR1](#SIGUSR1)
* [SIGUSR2](#SIGUSR2)
* [SIGVTALRM](#SIGVTALRM)
* [SIGWINCH](#SIGWINCH)
* [SIGXCPU](#SIGXCPU)
* [SIGXFSZ](#SIGXFSZ)
* [SIG\_BLOCK](#SIG_BLOCK)
* [SIG\_DFL](#SIG_DFL)
* [SIG\_ERR](#SIG_ERR)
* [SIG\_HOLD](#SIG_HOLD)
* [SIG\_IGN](#SIG_IGN)
* [SIG\_SETMASK](#SIG_SETMASK)
* [SIG\_UNBLOCK](#SIG_UNBLOCK)
* [SI\_ASYNCIO](#SI_ASYNCIO)
* [SI\_MESGQ](#SI_MESGQ)
* [SI\_QUEUE](#SI_QUEUE)
* [SI\_TIMER](#SI_TIMER)
* [SI\_USER](#SI_USER)
* [SOCK\_DGRAM](#SOCK_DGRAM)
* [SOCK\_RAW](#SOCK_RAW)
* [SOCK\_SEQPACKET](#SOCK_SEQPACKET)
* [SOCK\_STREAM](#SOCK_STREAM)
* [SOL\_SOCKET](#SOL_SOCKET)
* [SOMAXCONN](#SOMAXCONN)
* [SO\_ACCEPTCONN](#SO_ACCEPTCONN)
* [SO\_BROADCAST](#SO_BROADCAST)
* [SO\_DEBUG](#SO_DEBUG)
* [SO\_DONTROUTE](#SO_DONTROUTE)
* [SO\_ERROR](#SO_ERROR)
* [SO\_KEEPALIVE](#SO_KEEPALIVE)
* [SO\_LINGER](#SO_LINGER)
* [SO\_OOBINLINE](#SO_OOBINLINE)
* [SO\_RCVBUF](#SO_RCVBUF)
* [SO\_RCVLOWAT](#SO_RCVLOWAT)
* [SO\_RCVTIMEO](#SO_RCVTIMEO)
* [SO\_REUSEADDR](#SO_REUSEADDR)
* [SO\_SNDBUF](#SO_SNDBUF)
* [SO\_SNDLOWAT](#SO_SNDLOWAT)
* [SO\_SNDTIMEO](#SO_SNDTIMEO)
* [SO\_TYPE](#SO_TYPE)
* [SS\_DISABLE](#SS_DISABLE)
* [SS\_ONSTACK](#SS_ONSTACK)
* [STDERR\_FILENO](#STDERR_FILENO)
* [STDIN\_FILENO](#STDIN_FILENO)
* [STDOUT\_FILENO](#STDOUT_FILENO)
* [ST\_NOSUID](#ST_NOSUID)
* [ST\_RDONLY](#ST_RDONLY)
* [S\_IFBLK](#S_IFBLK)
* [S\_IFCHR](#S_IFCHR)
* [S\_IFDIR](#S_IFDIR)
* [S\_IFIFO](#S_IFIFO)
* [S\_IFLNK](#S_IFLNK)
* [S\_IFMT](#S_IFMT)
* [S\_IFREG](#S_IFREG)
* [S\_IFSOCK](#S_IFSOCK)
* [S\_IRWXG](#S_IRWXG)
* [S\_IRWXO](#S_IRWXO)
* [S\_IRWXU](#S_IRWXU)
* [TAB0](#TAB0)
* [TAB1](#TAB1)
* [TAB3](#TAB3)
* [TABDLY](#TABDLY)
* [TCIFLUSH](#TCIFLUSH)
* [TCIOFF](#TCIOFF)
* [TCIOFLUSH](#TCIOFLUSH)
* [TCION](#TCION)
* [TCOFLUSH](#TCOFLUSH)
* [TCOOFF](#TCOOFF)
* [TCOON](#TCOON)
* [TCP\_NODELAY](#TCP_NODELAY)
* [THOUSEP](#THOUSEP)
* [TMP\_MAX](#TMP_MAX)
* [TOSTOP](#TOSTOP)
* [TRAP\_BRKPT](#TRAP_BRKPT)
* [TRAP\_TRACE](#TRAP_TRACE)
* [T\_FMT](#T_FMT)
* [T\_FMT\_AMPM](#T_FMT_AMPM)
* [UL\_GETFSIZE](#UL_GETFSIZE)
* [UL\_SETFSIZE](#UL_SETFSIZE)
* [UTIME\_NOW](#UTIME_NOW)
* [UTIME\_OMIT](#UTIME_OMIT)
* [VEOF](#VEOF)
* [VEOL](#VEOL)
* [VERASE](#VERASE)
* [VINTR](#VINTR)
* [VKILL](#VKILL)
* [VMIN](#VMIN)
* [VQUIT](#VQUIT)
* [VSTART](#VSTART)
* [VSTOP](#VSTOP)
* [VSUSP](#VSUSP)
* [VT0](#VT0)
* [VT1](#VT1)
* [VTDLY](#VTDLY)
* [VTIME](#VTIME)
* [WCONTINUED](#WCONTINUED)
* [WEXITED](#WEXITED)
* [WNOHANG](#WNOHANG)
* [WNOWAIT](#WNOWAIT)
* [WRDE\_APPEND](#WRDE_APPEND)
* [WRDE\_BADCHAR](#WRDE_BADCHAR)
* [WRDE\_BADVAL](#WRDE_BADVAL)
* [WRDE\_CMDSUB](#WRDE_CMDSUB)
* [WRDE\_DOOFFS](#WRDE_DOOFFS)
* [WRDE\_NOCMD](#WRDE_NOCMD)
* [WRDE\_NOSPACE](#WRDE_NOSPACE)
* [WRDE\_REUSE](#WRDE_REUSE)
* [WRDE\_SHOWERR](#WRDE_SHOWERR)
* [WRDE\_SYNTAX](#WRDE_SYNTAX)
* [WRDE\_UNDEF](#WRDE_UNDEF)
* [WSTOPPED](#WSTOPPED)
* [WUNTRACED](#WUNTRACED)
* [W\_OK](#W_OK)
* [X\_OK](#X_OK)
* [YESEXPR](#YESEXPR)

Variables (14)

* [daylight](#daylight)
* [environ](#environ)
* [getdate\_err](#getdate_err)
* [in6addr\_any](#in6addr_any)
* [in6addr\_loopback](#in6addr_loopback)
* [optarg](#optarg)
* [opterr](#opterr)
* [optind](#optind)
* [optopt](#optopt)
* [stderr](#stderr)
* [stdin](#stdin)
* [stdout](#stdout)
* [timezone](#timezone)
* [tzname](#tzname)

Procedures (416)

* [CMSG\_DATA](#CMSG_DATA)
* [CMSG\_FIRSTHDR](#CMSG_FIRSTHDR)
* [CMSG\_NXTHDR](#CMSG_NXTHDR)
* [FD\_CLR](#FD_CLR)
* [FD\_ISSET](#FD_ISSET)
* [FD\_SET](#FD_SET)
* [FD\_ZERO](#FD_ZERO)
* [IN6\_IS\_ADDR\_LINKLOCAL](#IN6_IS_ADDR_LINKLOCAL)
* [IN6\_IS\_ADDR\_LOOPBACK](#IN6_IS_ADDR_LOOPBACK)
* [IN6\_IS\_ADDR\_MC\_GLOBAL](#IN6_IS_ADDR_MC_GLOBAL)
* [IN6\_IS\_ADDR\_MC\_LINKLOCAL](#IN6_IS_ADDR_MC_LINKLOCAL)
* [IN6\_IS\_ADDR\_MC\_NODELOCAL](#IN6_IS_ADDR_MC_NODELOCAL)
* [IN6\_IS\_ADDR\_MC\_ORGLOCAL](#IN6_IS_ADDR_MC_ORGLOCAL)
* [IN6\_IS\_ADDR\_MC\_SITELOCAL](#IN6_IS_ADDR_MC_SITELOCAL)
* [IN6\_IS\_ADDR\_MULTICAST](#IN6_IS_ADDR_MULTICAST)
* [IN6\_IS\_ADDR\_SITELOCAL](#IN6_IS_ADDR_SITELOCAL)
* [IN6\_IS\_ADDR\_UNSPECIFIED](#IN6_IS_ADDR_UNSPECIFIED)
* [IN6\_IS\_ADDR\_V4COMPAT](#IN6_IS_ADDR_V4COMPAT)
* [IN6\_IS\_ADDR\_V4MAPPED](#IN6_IS_ADDR_V4MAPPED)
* [S\_ISBLK](#S_ISBLK)
* [S\_ISCHR](#S_ISCHR)
* [S\_ISDIR](#S_ISDIR)
* [S\_ISFIFO](#S_ISFIFO)
* [S\_ISLNK](#S_ISLNK)
* [S\_ISREG](#S_ISREG)
* [S\_ISSOCK](#S_ISSOCK)
* [WEXITSTATUS](#WEXITSTATUS)
* [WIFCONTINUED](#WIFCONTINUED)
* [WIFEXITED](#WIFEXITED)
* [WIFSIGNALED](#WIFSIGNALED)
* [WIFSTOPPED](#WIFSTOPPED)
* [WSTOPSIG](#WSTOPSIG)
* [WTERMSIG](#WTERMSIG)
* [a64l](#a64l)
* [accept](#accept)
* [access](#access)
* [alarm](#alarm)
* [alphasort](#alphasort)
* [asctime\_r](#asctime_r)
* [basename](#basename)
* [bind](#bind)
* [cfgetispeed](#cfgetispeed)
* [cfgetospeed](#cfgetospeed)
* [cfsetispeed](#cfsetispeed)
* [cfsetospeed](#cfsetospeed)
* [chdir](#chdir)
* [chmod](#chmod)
* [chown](#chown)
* [clock\_getres](#clock_getres)
* [clock\_gettime](#clock_gettime)
* [clock\_settime](#clock_settime)
* [close](#close)
* [closedir](#closedir)
* [confstr](#confstr)
* [connect](#connect)
* [creat](#creat)
* [crypt](#crypt)
* [ctermid](#ctermid)
* [ctime\_r](#ctime_r)
* [dirfd](#dirfd)
* [dirname](#dirname)
* [dlclose](#dlclose)
* [dlerror](#dlerror)
* [dlopen](#dlopen)
* [dlsym](#dlsym)
* [dprintf](#dprintf)
* [drand48](#drand48)
* [dup](#dup)
* [dup2](#dup2)
* [encrypt](#encrypt)
* [endgrent](#endgrent)
* [endhostent](#endhostent)
* [endnetent](#endnetent)
* [endprotoent](#endprotoent)
* [endpwent](#endpwent)
* [endservent](#endservent)
* [erand48](#erand48)
* [execl](#execl)
* [execle](#execle)
* [execlp](#execlp)
* [execv](#execv)
* [execve](#execve)
* [execvp](#execvp)
* [faccessat](#faccessat)
* [fchdir](#fchdir)
* [fchmod](#fchmod)
* [fchmodat](#fchmodat)
* [fchown](#fchown)
* [fchownat](#fchownat)
* [fcntl](#fcntl)
* [fdatasync](#fdatasync)
* [fdopen](#fdopen)
* [fdopendir](#fdopendir)
* [fexecve](#fexecve)
* [fileno](#fileno)
* [flockfile](#flockfile)
* [fmemopen](#fmemopen)
* [fnmatch](#fnmatch)
* [fork](#fork)
* [fpathconf](#fpathconf)
* [free](#free)
* [freeaddrinfo](#freeaddrinfo)
* [fseeko](#fseeko)
* [fstat](#fstat)
* [fstatat](#fstatat)
* [fstatvfs](#fstatvfs)
* [fsync](#fsync)
* [ftello](#ftello)
* [ftok](#ftok)
* [ftruncate](#ftruncate)
* [ftrylockfile](#ftrylockfile)
* [funlockfile](#funlockfile)
* [futimens](#futimens)
* [gai\_strerror](#gai_strerror)
* [get\_errno](#get_errno)
* [getaddrinfo](#getaddrinfo)
* [getc\_unlocked](#getc_unlocked)
* [getchar\_unlocked](#getchar_unlocked)
* [getcwd](#getcwd)
* [getdate](#getdate)
* [getdelim](#getdelim)
* [getegid](#getegid)
* [geteuid](#geteuid)
* [getgid](#getgid)
* [getgrent](#getgrent)
* [getgrgid](#getgrgid)
* [getgrgid\_r](#getgrgid_r)
* [getgrnam](#getgrnam)
* [getgrnam\_r](#getgrnam_r)
* [getgroups](#getgroups)
* [gethostent](#gethostent)
* [gethostid](#gethostid)
* [gethostname](#gethostname)
* [getitimer](#getitimer)
* [getline](#getline)
* [getlogin](#getlogin)
* [getlogin\_r](#getlogin_r)
* [getnameinfo](#getnameinfo)
* [getnetbyaddr](#getnetbyaddr)
* [getnetbyname](#getnetbyname)
* [getnetent](#getnetent)
* [getopt](#getopt)
* [getpeername](#getpeername)
* [getpgid](#getpgid)
* [getpgrp](#getpgrp)
* [getpid](#getpid)
* [getppid](#getppid)
* [getpriority](#getpriority)
* [getprotobyname](#getprotobyname)
* [getprotobynumber](#getprotobynumber)
* [getprotoent](#getprotoent)
* [getpwent](#getpwent)
* [getpwnam](#getpwnam)
* [getpwnam\_r](#getpwnam_r)
* [getpwuid](#getpwuid)
* [getpwuid\_r](#getpwuid_r)
* [getrlimit](#getrlimit)
* [getrusage](#getrusage)
* [gets](#gets)
* [getservbyname](#getservbyname)
* [getservbyport](#getservbyport)
* [getservent](#getservent)
* [getsid](#getsid)
* [getsockname](#getsockname)
* [getsockopt](#getsockopt)
* [getsubopt](#getsubopt)
* [gettimeofday](#gettimeofday)
* [getuid](#getuid)
* [glob](#glob)
* [globfree](#globfree)
* [gmtime\_r](#gmtime_r)
* [grantpt](#grantpt)
* [iconv](#iconv)
* [iconv\_close](#iconv_close)
* [iconv\_open](#iconv_open)
* [if\_freenameindex](#if_freenameindex)
* [if\_indextoname](#if_indextoname)
* [if\_nameindex](#if_nameindex)
* [if\_nametoindex](#if_nametoindex)
* [inet\_ntoa](#inet_ntoa)
* [inet\_ntop](#inet_ntop)
* [inet\_pton](#inet_pton)
* [initstate](#initstate)
* [isatty](#isatty)
* [jrand48](#jrand48)
* [kill](#kill)
* [killpg](#killpg)
* [l64a](#l64a)
* [lchown](#lchown)
* [lcong48](#lcong48)
* [link](#link)
* [linkat](#linkat)
* [listen](#listen)
* [localtime\_r](#localtime_r)
* [lockf](#lockf)
* [lrand48](#lrand48)
* [lseek](#lseek)
* [lstat](#lstat)
* [mkdir](#mkdir)
* [mkdirat](#mkdirat)
* [mkdtemp](#mkdtemp)
* [mkfifo](#mkfifo)
* [mkfifoat](#mkfifoat)
* [mknod](#mknod)
* [mknodat](#mknodat)
* [mkstemp](#mkstemp)
* [mlock](#mlock)
* [mlockall](#mlockall)
* [mmap](#mmap)
* [mprotect](#mprotect)
* [mrand48](#mrand48)
* [msgctl](#msgctl)
* [msgget](#msgget)
* [msgrcv](#msgrcv)
* [msgsnd](#msgsnd)
* [msync](#msync)
* [munlock](#munlock)
* [munlockall](#munlockall)
* [munmap](#munmap)
* [nanosleep](#nanosleep)
* [nice](#nice)
* [nl\_langinfo](#nl_langinfo)
* [nrand48](#nrand48)
* [open](#open)
* [open\_memstream](#open_memstream)
* [openat](#openat)
* [opendir](#opendir)
* [pathconf](#pathconf)
* [pause](#pause)
* [pclose](#pclose)
* [pipe](#pipe)
* [poll](#poll)
* [popen](#popen)
* [posix\_madvise](#posix_madvise)
* [posix\_memalign](#posix_memalign)
* [posix\_openpt](#posix_openpt)
* [posix\_spawn](#posix_spawn)
* [posix\_spawnp](#posix_spawnp)
* [pread](#pread)
* [pselect](#pselect)
* [psignal](#psignal)
* [pthread\_atfork](#pthread_atfork)
* [pthread\_attr\_destroy](#pthread_attr_destroy)
* [pthread\_attr\_getdetachstate](#pthread_attr_getdetachstate)
* [pthread\_attr\_getguardsize](#pthread_attr_getguardsize)
* [pthread\_attr\_getinheritsched](#pthread_attr_getinheritsched)
* [pthread\_attr\_getschedparam](#pthread_attr_getschedparam)
* [pthread\_attr\_getschedpolicy](#pthread_attr_getschedpolicy)
* [pthread\_attr\_getscope](#pthread_attr_getscope)
* [pthread\_attr\_getstack](#pthread_attr_getstack)
* [pthread\_attr\_getstacksize](#pthread_attr_getstacksize)
* [pthread\_attr\_init](#pthread_attr_init)
* [pthread\_attr\_setdetachstate](#pthread_attr_setdetachstate)
* [pthread\_attr\_setguardsize](#pthread_attr_setguardsize)
* [pthread\_attr\_setinheritsched](#pthread_attr_setinheritsched)
* [pthread\_attr\_setschedparam](#pthread_attr_setschedparam)
* [pthread\_attr\_setschedpolicy](#pthread_attr_setschedpolicy)
* [pthread\_attr\_setscope](#pthread_attr_setscope)
* [pthread\_attr\_setstack](#pthread_attr_setstack)
* [pthread\_attr\_setstacksize](#pthread_attr_setstacksize)
* [pthread\_cancel](#pthread_cancel)
* [pthread\_create](#pthread_create)
* [pthread\_detach](#pthread_detach)
* [pthread\_equal](#pthread_equal)
* [pthread\_exit](#pthread_exit)
* [pthread\_getconcurrency](#pthread_getconcurrency)
* [pthread\_getcpuclockid](#pthread_getcpuclockid)
* [pthread\_getschedparam](#pthread_getschedparam)
* [pthread\_getspecific](#pthread_getspecific)
* [pthread\_join](#pthread_join)
* [pthread\_key\_create](#pthread_key_create)
* [pthread\_key\_delete](#pthread_key_delete)
* [pthread\_kill](#pthread_kill)
* [pthread\_self](#pthread_self)
* [pthread\_setcancelstate](#pthread_setcancelstate)
* [pthread\_setcanceltype](#pthread_setcanceltype)
* [pthread\_setconcurrency](#pthread_setconcurrency)
* [pthread\_setschedparam](#pthread_setschedparam)
* [pthread\_setschedprio](#pthread_setschedprio)
* [pthread\_setspecific](#pthread_setspecific)
* [pthread\_sigmask](#pthread_sigmask)
* [pthread\_testcancel](#pthread_testcancel)
* [ptsname](#ptsname)
* [putc\_unlocked](#putc_unlocked)
* [putchar\_unlocked](#putchar_unlocked)
* [putenv](#putenv)
* [pwrite](#pwrite)
* [raise](#raise)
* [rand\_r](#rand_r)
* [random](#random)
* [read](#read)
* [readdir](#readdir)
* [readlink](#readlink)
* [readlinkat](#readlinkat)
* [readv](#readv)
* [realpath](#realpath)
* [recv](#recv)
* [recvfrom](#recvfrom)
* [recvmsg](#recvmsg)
* [renameat](#renameat)
* [rewinddir](#rewinddir)
* [rmdir](#rmdir)
* [scandir](#scandir)
* [sched\_get\_priority\_max](#sched_get_priority_max)
* [sched\_get\_priority\_min](#sched_get_priority_min)
* [sched\_yield](#sched_yield)
* [seed48](#seed48)
* [seekdir](#seekdir)
* [select](#select)
* [semctl](#semctl)
* [semget](#semget)
* [semop](#semop)
* [send](#send)
* [sendmsg](#sendmsg)
* [sendto](#sendto)
* [set\_errno](#set_errno)
* [setegid](#setegid)
* [setenv](#setenv)
* [seteuid](#seteuid)
* [setgid](#setgid)
* [setgrent](#setgrent)
* [sethostent](#sethostent)
* [setitimer](#setitimer)
* [setkey](#setkey)
* [setnetent](#setnetent)
* [setpgid](#setpgid)
* [setpgrp](#setpgrp)
* [setpriority](#setpriority)
* [setprotoent](#setprotoent)
* [setpwent](#setpwent)
* [setregid](#setregid)
* [setreuid](#setreuid)
* [setrlimit](#setrlimit)
* [setservent](#setservent)
* [setsid](#setsid)
* [setsockopt](#setsockopt)
* [setstate](#setstate)
* [setuid](#setuid)
* [shm\_open](#shm_open)
* [shm\_unlink](#shm_unlink)
* [shmat](#shmat)
* [shmctl](#shmctl)
* [shmdt](#shmdt)
* [shmget](#shmget)
* [shutdown](#shutdown)
* [sigaction](#sigaction)
* [sigaddset](#sigaddset)
* [sigaltstack](#sigaltstack)
* [sigdelset](#sigdelset)
* [sigemptyset](#sigemptyset)
* [sigfillset](#sigfillset)
* [sighold](#sighold)
* [sigignore](#sigignore)
* [siginterrupt](#siginterrupt)
* [sigismember](#sigismember)
* [siglongjmp](#siglongjmp)
* [signal](#signal)
* [sigpause](#sigpause)
* [sigpending](#sigpending)
* [sigprocmask](#sigprocmask)
* [sigrelse](#sigrelse)
* [sigsetjmp](#sigsetjmp)
* [sigsuspend](#sigsuspend)
* [sigwait](#sigwait)
* [sleep](#sleep)
* [sockatmark](#sockatmark)
* [socket](#socket)
* [socketpair](#socketpair)
* [sprintf](#sprintf)
* [srand48](#srand48)
* [srandom](#srandom)
* [stat](#stat)
* [statvfs](#statvfs)
* [strerror](#strerror)
* [strerror\_r](#strerror_r)
* [strfmon](#strfmon)
* [strptime](#strptime)
* [strsignal](#strsignal)
* [swab](#swab)
* [symlink](#symlink)
* [symlinkat](#symlinkat)
* [sync](#sync)
* [sysconf](#sysconf)
* [tcdrain](#tcdrain)
* [tcflow](#tcflow)
* [tcflush](#tcflush)
* [tcgetattr](#tcgetattr)
* [tcgetpgrp](#tcgetpgrp)
* [tcgetsid](#tcgetsid)
* [tcsendbreak](#tcsendbreak)
* [tcsetattr](#tcsetattr)
* [tcsetpgrp](#tcsetpgrp)
* [telldir](#telldir)
* [tempnam](#tempnam)
* [times](#times)
* [truncate](#truncate)
* [ttyname](#ttyname)
* [ttyname\_r](#ttyname_r)
* [tzset](#tzset)
* [ulimit](#ulimit)
* [umask](#umask)
* [uname](#uname)
* [unlink](#unlink)
* [unlinkat](#unlinkat)
* [unlockpt](#unlockpt)
* [unsetenv](#unsetenv)
* [utime](#utime)
* [utimensat](#utimensat)
* [utimes](#utimes)
* [wait](#wait)
* [waitid](#waitid)
* [waitpid](#waitpid)
* [wordexp](#wordexp)
* [wordfree](#wordfree)
* [write](#write)
* [writev](#writev)

Procedure Groups (1)

* [errno](#errno)

`#config` values (1)

* [FD\_SETSIZE](#FD_SETSIZE)

## Types

### [AF ¶](#AF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L229)

```
AF :: enum i32 {
	// Unspecified.
	UNSPEC = 0, 
	// Internet domain sockets for use with IPv4 addresses.
	INET   = 2, 
	// Internet domain sockets for use with IPv6 addresses.
	INET6  = 30, 
	// UNIX domain sockets.
	UNIX   = 1, 
}
```

##### Related Procedures With Parameters

* [getnetbyaddr](/core/sys/posix/#getnetbyaddr)
* [inet\_ntop](/core/sys/posix/#inet_ntop)
* [inet\_pton](/core/sys/posix/#inet_pton)
* [socket](/core/sys/posix/#socket)
* [socketpair](/core/sys/posix/#socketpair)

### [AT\_Flag\_Bits ¶](#AT_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L143)

```
AT_Flag_Bits :: enum i32 {
	EACCESS          = 4, 
	SYMLINK_NOFOLLOW = 5, 
	SYMLINK_FOLLOW   = 6, 
	REMOVEDIR        = 7, 
}
```

### [AT\_Flags ¶](#AT_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L149)

```
AT_Flags :: bit_set[AT_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [faccessat](/core/sys/posix/#faccessat)
* [fchmodat](/core/sys/posix/#fchmodat)
* [fchownat](/core/sys/posix/#fchownat)
* [fstatat](/core/sys/posix/#fstatat)
* [linkat](/core/sys/posix/#linkat)
* [unlinkat](/core/sys/posix/#unlinkat)
* [utimensat](/core/sys/posix/#utimensat)

### [Addrinfo\_Flag\_Bits ¶](#Addrinfo_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L262)

```
Addrinfo_Flag_Bits :: enum i32 {
	// Socket address is intended for bind().
	PASSIVE     = 0, 
	// Request for canonical name.
	CANONNAME   = 1, 
	// Return numeric host address as name.
	NUMERICHOST = 2, 
	// Inhibit service name resolution.
	NUMERICSERV = 12, 
	// If no IPv6 addresses are found, query for IPv4 addresses and return them to the
	// caller as IPv4-mapped IPv6 addresses.
	V4MAPPED    = 11, 
	// Query for both IPv4 and IPv6 addresses.
	ALL         = 8, 
	// Query for IPv4 addresses only when an IPv4 address is configured; query for IPv6 addresses
	// only when an IPv6 address is configured.
	ADDRCONFIG  = 10, 
}
```

### [Addrinfo\_Flags ¶](#Addrinfo_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L280)

```
Addrinfo_Flags :: bit_set[Addrinfo_Flag_Bits; i32]
```

### [Any\_Code ¶](#Any_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L296)

```
Any_Code :: enum i32 {
	// Signal sent by kill().
	USER    = 65537, 
	// Signal sent by sigqueue().
	QUEUE   = 65538, 
	// Signal generated by expiration of a timer set by timer_settime().
	TIMER   = 65539, 
	// Signal generated by completion of an asynchronous I/O request.
	ASYNCIO = 65540, 
	// Signal generated by arrival of a message on an empty message queue.
	MESGQ   = 65541, 
}
```

### [BUS\_Code ¶](#BUS_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L250)

```
BUS_Code :: enum i32 {
	// Invalid address alignment.
	ADRALN = 1, 
	// Nonexistent physical address.
	ADRERR = 2, 
	// Object-specific hardware error.
	OBJERR = 3, 
}
```

### [CControl\_Flag\_Bits ¶](#CControl_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L153)

```
CControl_Flag_Bits :: enum tcflag_t {
	// CS5    = log2(CS5), /* 5 bits (pseudo) (default) */
	CS6    = 8,  // 6 bits
	CS7    = 9,  // 7 bits
	CS8    = 9,  // 8 bits
	CSTOPB = 10, // send 2 stop bits
	CREAD  = 11, // enable receiver
	PARENB = 12, // parity enable
	PARODD = 13, // odd parity, else even
	HUPCL  = 14, // hang up on last close
	CLOCAL = 15, // ignore modem status lines
}
```

### [CControl\_Flags ¶](#CControl_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L166)

```
CControl_Flags :: bit_set[CControl_Flag_Bits; tcflag_t]
```

##### Related Constants

* [CSIZE](/core/sys/posix/#CSIZE)

### [CInput\_Flag\_Bits ¶](#CInput_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L112)

```
CInput_Flag_Bits :: enum tcflag_t {
	IGNBRK = 0,  // ignore BREAK condition
	BRKINT = 1,  // map BREAK to SIGINTR
	IGNPAR = 2,  // ignore (discard) parity errors
	PARMRK = 3,  // mark parity and framing errors
	INPCK  = 4,  // enable checking of parity errors
	ISTRIP = 5,  // strip 8th bit off chars
	INLCR  = 6,  // map NL into CR
	IGNCR  = 7,  // ignore CR
	ICRNL  = 8,  // map CR to NL (ala CRMOD)
	IXON   = 9,  // enable output flow control
	IXOFF  = 10, // enable input flow control
	IXANY  = 11, // any char will restart after stop
}
```

### [CInput\_Flags ¶](#CInput_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L126)

```
CInput_Flags :: bit_set[CInput_Flag_Bits; tcflag_t]
```

### [CLD\_Code ¶](#CLD_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L266)

```
CLD_Code :: enum i32 {
	// Child has exited..
	EXITED    = 1, 
	// Child has terminated abnormally and did not create a core file.
	KILLED    = 2, 
	// Child has terminated abnormally and created a core file.
	DUMPED    = 3, 
	// Traced child trapped.
	TRAPPED   = 4, 
	// Child has stopped.
	STOPPED   = 5, 
	// Stopped child has continued.
	CONTINUED = 6, 
}
```

### [CLocal\_Flag\_Bits ¶](#CLocal_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L128)

```
CLocal_Flag_Bits :: enum tcflag_t {
	ECHO   = 3,  // visual erase for line kill
	ECHOE  = 1,  // visually erase chars
	ECHOK  = 2,  // echo NL after line kill
	ECHONL = 4,  // echo NL even if ECHO is off
	ICANON = 8,  // canonicalize input lines
	IEXTEN = 10, // enable DISCARD and LNEXT
	ISIG   = 7,  // enable signals INTR, QUIT, [D]SUSP
	NOFLSH = 31, // don't flush after interrupt
	TOSTOP = 22, // stop background jobs from output
}
```

### [CLocal\_Flags ¶](#CLocal_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L139)

```
CLocal_Flags :: bit_set[CLocal_Flag_Bits; tcflag_t]
```

### [COutput\_Flag\_Bits ¶](#COutput_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L171)

```
COutput_Flag_Bits :: enum tcflag_t {
	OPOST  = 0,  // enable following output processing
	ONLCR  = 1,  // map NL to CR-NL (ala CRMOD)
	OCRNL  = 4,  // map CR to NL on output
	ONOCR  = 5,  // no CR output at column 0
	ONLRET = 6,  // NL performs CR function
	OFDEL  = 17, // fill is DEL, else NUL
	OFILL  = 7,  // use fill characters for delay
	// NL0    = log2(NL0), /* \n delay 0 (default) */
	NL1    = 8,  // \n delay 1
	// CR0    = log2(CR0), /* \r delay 0 (default) */
	CR1    = 12, // \r delay 1
	CR2    = 13, // \r delay 2
	CR3    = 13, // \r delay 3
	// TAB0   = log2(TAB0),/* horizontal tab delay 0 (default) */
	TAB1   = 10, // horizontal tab delay 1
	TAB3   = 11, // horizontal tab delay 3
	// BS0    = log2(BS0), /* \b delay 0 (default) */
	BS1    = 15, // \b delay 1
	// VT0    = log2(VT0), /* vertical tab delay 0 (default) */
	VT1    = 16, // vertical tab delay 1
	// FF0    = log2(FF0), /* form feed delay 0 (default) */
	FF1    = 14, // form feed delay 1
}
```

### [COutput\_Flags ¶](#COutput_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L195)

```
COutput_Flags :: bit_set[COutput_Flag_Bits; tcflag_t]
```

##### Related Constants

* [BSDLY](/core/sys/posix/#BSDLY)
* [CRDLY](/core/sys/posix/#CRDLY)
* [FFDLY](/core/sys/posix/#FFDLY)
* [NLDLY](/core/sys/posix/#NLDLY)
* [TABDLY](/core/sys/posix/#TABDLY)
* [VTDLY](/core/sys/posix/#VTDLY)

### [CS ¶](#CS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L884)

```
CS :: enum i32 {
	_PATH                           = 1, 
	_POSIX_V6_ILP32_OFF32_CFLAGS    = 2, 
	_POSIX_V6_ILP32_OFF32_LDFLAGS   = 3, 
	_POSIX_V6_ILP32_OFF32_LIBS      = 4, 
	_POSIX_V6_ILP32_OFFBIG_CFLAGS   = 5, 
	_POSIX_V6_ILP32_OFFBIG_LDFLAGS  = 6, 
	_POSIX_V6_ILP32_OFFBIG_LIBS     = 7, 
	_POSIX_V6_LP64_OFF64_CFLAGS     = 8, 
	_POSIX_V6_LP64_OFF64_LDFLAGS    = 9, 
	_POSIX_V6_LP64_OFF64_LIBS       = 10, 
	_POSIX_V6_LPBIG_OFFBIG_CFLAGS   = 11, 
	_POSIX_V6_LPBIG_OFFBIG_LDFLAGS  = 12, 
	_POSIX_V6_LPBIG_OFFBIG_LIBS     = 13, 
	_POSIX_V6_WIDTH_RESTRICTED_ENVS = 14, 
}
```

##### Related Procedures With Parameters

* [confstr](/core/sys/posix/#confstr)

### [Cancel\_State ¶](#Cancel_State) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L357)

```
Cancel_State :: enum i32 {
	// Cancel takes place at next cancellation point.
	ENABLE  = 1, 
	// Cancel postponed.
	DISABLE = 0, 
}
```

##### Related Procedures With Parameters

* [pthread\_setcancelstate](/core/sys/posix/#pthread_setcancelstate)

### [Cancel\_Type ¶](#Cancel_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L364)

```
Cancel_Type :: enum i32 {
	// Cancel waits until cancellation point.
	DEFERRED     = 2, 
	// Cancel occurs immediately.
	ASYNCHRONOUS = 0, 
}
```

##### Related Procedures With Parameters

* [pthread\_setcanceltype](/core/sys/posix/#pthread_setcanceltype)

### [Clock ¶](#Clock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L151)

```
Clock :: enum clockid_t {
	// system-wide monotonic clock, defined as clock measuring real time,
	// can be set with clock_settime() and cannot have negative clock jumps.
	MONOTONIC          = 6, 
	// CPU-time clock associated with the process making a clock() function call.
	PROCESS_CPUTIME_ID = 12, 
	// system-wide clock measuring real time.
	REALTIME           = 0, 
	// CPU-time clock associated with the thread making a clock() function call.
	THREAD_CPUTIME_ID  = 16, 
}
```

##### Related Procedures With Parameters

* [clock\_getres](/core/sys/posix/#clock_getres)
* [clock\_gettime](/core/sys/posix/#clock_gettime)
* [clock\_settime](/core/sys/posix/#clock_settime)

### [Control\_Char ¶](#Control_Char) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L95)

```
Control_Char :: enum i32 {
	VEOF   = 0, 
	VEOL   = 1, 
	VERASE = 3, 
	VINTR  = 8, 
	VKILL  = 5, 
	VMIN   = 16, 
	VQUIT  = 9, 
	VSTART = 12, 
	VSTOP  = 13, 
	VSUSP  = 10, 
	VTIME  = 17, 
	NCCS   = 19, 
}
```

### [DIR ¶](#DIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L133)

```
DIR :: distinct rawptr
```

##### Related Procedures With Parameters

* [closedir](/core/sys/posix/#closedir)
* [dirfd](/core/sys/posix/#dirfd)
* [readdir](/core/sys/posix/#readdir)
* [rewinddir](/core/sys/posix/#rewinddir)
* [seekdir](/core/sys/posix/#seekdir)
* [telldir](/core/sys/posix/#telldir)



##### Related Procedures With Returns

* [fdopendir](/core/sys/posix/#fdopendir)
* [opendir](/core/sys/posix/#opendir)

### [D\_Type ¶](#D_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L138)

```
D_Type :: enum u8 {
	UNKNOWN = 0, 
	FIFO    = 1, 
	CHR     = 2, 
	DIR     = 4, 
	BLK     = 6, 
	REG     = 8, 
	LNK     = 10, 
	SOCK    = 12, 
	WHT     = 14, 
}
```

 

NOTE: `d_type` is not a POSIX standard field, but all targets we support add it.

### [Detach\_State ¶](#Detach_State) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L336)

```
Detach_State :: enum i32 {
	// Causes all threads to be in the joinable state.
	CREATE_JOINABLE = 1, 
	// Causes all threads to be in the detached state.
	CREATE_DETACHED = 2, 
}
```

##### Related Procedures With Parameters

* [pthread\_attr\_getdetachstate](/core/sys/posix/#pthread_attr_getdetachstate)
* [pthread\_attr\_setdetachstate](/core/sys/posix/#pthread_attr_setdetachstate)

### [Errno ¶](#Errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L27)

```
Errno :: enum i32 {
	NONE            = 0, 
	EDOM            = 33, 
	EILSEQ          = 92, 
	ERANGE          = 34, 
	E2BIG           = 7, 
	EACCES          = 13, 
	EADDRINUSE      = 48, 
	EADDRNOTAVAIL   = 49, 
	EAFNOSUPPORT    = 47, 
	EAGAIN          = 35, 
	EALREADY        = 37, 
	EBADF           = 9, 
	EBADMSG         = 94, 
	EBUSY           = 16, 
	ECANCELED       = 89, 
	ECHILD          = 10, 
	ECONNABORTED    = 53, 
	ECONNREFUSED    = 61, 
	ECONNRESET      = 54, 
	EDEADLK         = 11, 
	EDESTADDRREQ    = 39, 
	EDQUOT          = 69, 
	EEXIST          = 17, 
	EFAULT          = 14, 
	EFBIG           = 27, 
	EHOSTUNREACH    = 65, 
	EIDRM           = 90, 
	EINPROGRESS     = 36, 
	EINTR           = 4, 
	EINVAL          = 22, 
	EIO             = 5, 
	EISCONN         = 56, 
	EISDIR          = 21, 
	ELOOP           = 62, 
	EMFILE          = 24, 
	EMLINK          = 31, 
	EMSGSIZE        = 40, 
	EMULTIHOP       = 95, 
	ENAMETOOLONG    = 63, 
	ENETDOWN        = 50, 
	ENETRESET       = 52, 
	ENETUNREACH     = 51, 
	ENFILE          = 23, 
	ENOBUFS         = 55, 
	ENODATA         = 96, 
	ENODEV          = 19, 
	ENOENT          = 2, 
	ENOEXEC         = 8, 
	ENOLCK          = 77, 
	ENOLINK         = 97, 
	ENOMEM          = 12, 
	ENOMSG          = 91, 
	ENOPROTOOPT     = 42, 
	ENOSPC          = 28, 
	ENOSR           = 98, 
	ENOSTR          = 99, 
	ENOSYS          = 78, 
	ENOTCONN        = 57, 
	ENOTDIR         = 20, 
	ENOTEMPTY       = 66, 
	ENOTRECOVERABLE = 104, 
	ENOTSOCK        = 38, 
	ENOTSUP         = 45, 
	ENOTTY          = 25, 
	ENXIO           = 6, 
	EOPNOTSUPP      = 45, 
	EOVERFLOW       = 84, 
	EOWNERDEAD      = 105, 
	EPERM           = 1, 
	EPIPE           = 32, 
	EPROTO          = 100, 
	EPROTONOSUPPORT = 43, 
	EPROTOTYPE      = 41, 
	EROFS           = 30, 
	ESPIPE          = 29, 
	ESRCH           = 3, 
	ESTALE          = 70, 
	ETIME           = 101, 
	ETIMEDOUT       = 60, 
	ETXTBSY         = 26, 
	EWOULDBLOCK     = 35, 
	EXDEV           = 18, 
}
```

##### Related Procedures With Parameters

* [set\_errno](/core/sys/posix/#set_errno)
* [strerror\_r](/core/sys/posix/#strerror_r)
* [errno](/core/sys/posix/#errno) *(procedure groups)*



##### Related Procedures With Returns

* [get\_errno](/core/sys/posix/#get_errno)
* [getgrgid\_r](/core/sys/posix/#getgrgid_r)
* [getgrnam\_r](/core/sys/posix/#getgrnam_r)
* [getlogin\_r](/core/sys/posix/#getlogin_r)
* [getpwnam\_r](/core/sys/posix/#getpwnam_r)
* [getpwuid\_r](/core/sys/posix/#getpwuid_r)
* [posix\_madvise](/core/sys/posix/#posix_madvise)
* [posix\_memalign](/core/sys/posix/#posix_memalign)
* [posix\_spawn](/core/sys/posix/#posix_spawn)
* [posix\_spawnp](/core/sys/posix/#posix_spawnp)
* [pthread\_atfork](/core/sys/posix/#pthread_atfork)
* [pthread\_attr\_destroy](/core/sys/posix/#pthread_attr_destroy)
* [pthread\_attr\_getdetachstate](/core/sys/posix/#pthread_attr_getdetachstate)
* [pthread\_attr\_getguardsize](/core/sys/posix/#pthread_attr_getguardsize)
* [pthread\_attr\_getinheritsched](/core/sys/posix/#pthread_attr_getinheritsched)
* [pthread\_attr\_getschedparam](/core/sys/posix/#pthread_attr_getschedparam)
* [pthread\_attr\_getschedpolicy](/core/sys/posix/#pthread_attr_getschedpolicy)
* [pthread\_attr\_getscope](/core/sys/posix/#pthread_attr_getscope)
* [pthread\_attr\_getstack](/core/sys/posix/#pthread_attr_getstack)
* [pthread\_attr\_getstacksize](/core/sys/posix/#pthread_attr_getstacksize)
* [pthread\_attr\_init](/core/sys/posix/#pthread_attr_init)
* [pthread\_attr\_setdetachstate](/core/sys/posix/#pthread_attr_setdetachstate)
* [pthread\_attr\_setguardsize](/core/sys/posix/#pthread_attr_setguardsize)
* [pthread\_attr\_setinheritsched](/core/sys/posix/#pthread_attr_setinheritsched)
* [pthread\_attr\_setschedparam](/core/sys/posix/#pthread_attr_setschedparam)
* [pthread\_attr\_setschedpolicy](/core/sys/posix/#pthread_attr_setschedpolicy)
* [pthread\_attr\_setscope](/core/sys/posix/#pthread_attr_setscope)
* [pthread\_attr\_setstack](/core/sys/posix/#pthread_attr_setstack)
* [pthread\_attr\_setstacksize](/core/sys/posix/#pthread_attr_setstacksize)
* [pthread\_cancel](/core/sys/posix/#pthread_cancel)
* [pthread\_create](/core/sys/posix/#pthread_create)
* [pthread\_detach](/core/sys/posix/#pthread_detach)
* [pthread\_getcpuclockid](/core/sys/posix/#pthread_getcpuclockid)
* [pthread\_getschedparam](/core/sys/posix/#pthread_getschedparam)
* [pthread\_join](/core/sys/posix/#pthread_join)
* [pthread\_key\_create](/core/sys/posix/#pthread_key_create)
* [pthread\_key\_delete](/core/sys/posix/#pthread_key_delete)
* [pthread\_kill](/core/sys/posix/#pthread_kill)
* [pthread\_setcancelstate](/core/sys/posix/#pthread_setcancelstate)
* [pthread\_setcanceltype](/core/sys/posix/#pthread_setcanceltype)
* [pthread\_setconcurrency](/core/sys/posix/#pthread_setconcurrency)
* [pthread\_setschedparam](/core/sys/posix/#pthread_setschedparam)
* [pthread\_setschedprio](/core/sys/posix/#pthread_setschedprio)
* [pthread\_setspecific](/core/sys/posix/#pthread_setspecific)
* [pthread\_sigmask](/core/sys/posix/#pthread_sigmask)
* [sigwait](/core/sys/posix/#sigwait)
* [ttyname\_r](/core/sys/posix/#ttyname_r)

### [FCNTL\_Cmd ¶](#FCNTL_Cmd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L76)

```
FCNTL_Cmd :: enum i32 {
	DUPFD         = 0, 
	DUPFD_CLOEXEC = 67, 
	GETFD         = 1, 
	SETFD         = 2, 
	GETFL         = 3, 
	SETFL         = 4, 
	GETLK         = 7, 
	SETLK         = 8, 
	SETLKW        = 9, 
	GETOWN        = 5, 
	SETOWN        = 6, 
}
```

##### Related Procedures With Parameters

* [fcntl](/core/sys/posix/#fcntl)

### [FD ¶](#FD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/posix.odin#L65)

```
FD :: distinct i32
```

##### Related Procedures With Parameters

* [FD\_CLR](/core/sys/posix/#FD_CLR)
* [FD\_ISSET](/core/sys/posix/#FD_ISSET)
* [FD\_SET](/core/sys/posix/#FD_SET)
* [accept](/core/sys/posix/#accept)
* [bind](/core/sys/posix/#bind)
* [close](/core/sys/posix/#close)
* [connect](/core/sys/posix/#connect)
* [dprintf](/core/sys/posix/#dprintf)
* [dup](/core/sys/posix/#dup)
* [dup2](/core/sys/posix/#dup2)
* [faccessat](/core/sys/posix/#faccessat)
* [fchdir](/core/sys/posix/#fchdir)
* [fchmod](/core/sys/posix/#fchmod)
* [fchmodat](/core/sys/posix/#fchmodat)
* [fchown](/core/sys/posix/#fchown)
* [fchownat](/core/sys/posix/#fchownat)
* [fcntl](/core/sys/posix/#fcntl)
* [fdatasync](/core/sys/posix/#fdatasync)
* [fdopen](/core/sys/posix/#fdopen)
* [fdopendir](/core/sys/posix/#fdopendir)
* [fexecve](/core/sys/posix/#fexecve)
* [fpathconf](/core/sys/posix/#fpathconf)
* [fstat](/core/sys/posix/#fstat)
* [fstatat](/core/sys/posix/#fstatat)
* [fstatvfs](/core/sys/posix/#fstatvfs)
* [fsync](/core/sys/posix/#fsync)
* [ftruncate](/core/sys/posix/#ftruncate)
* [futimens](/core/sys/posix/#futimens)
* [getpeername](/core/sys/posix/#getpeername)
* [getsockname](/core/sys/posix/#getsockname)
* [getsockopt](/core/sys/posix/#getsockopt)
* [grantpt](/core/sys/posix/#grantpt)
* [isatty](/core/sys/posix/#isatty)
* [linkat](/core/sys/posix/#linkat)
* [listen](/core/sys/posix/#listen)
* [lockf](/core/sys/posix/#lockf)
* [lseek](/core/sys/posix/#lseek)
* [mkdirat](/core/sys/posix/#mkdirat)
* [mkfifoat](/core/sys/posix/#mkfifoat)
* [mknodat](/core/sys/posix/#mknodat)
* [mmap](/core/sys/posix/#mmap)
* [msgctl](/core/sys/posix/#msgctl)
* [msgrcv](/core/sys/posix/#msgrcv)
* [msgsnd](/core/sys/posix/#msgsnd)
* [openat](/core/sys/posix/#openat)
* [pread](/core/sys/posix/#pread)
* [ptsname](/core/sys/posix/#ptsname)
* [pwrite](/core/sys/posix/#pwrite)
* [read](/core/sys/posix/#read)
* [readlinkat](/core/sys/posix/#readlinkat)
* [readv](/core/sys/posix/#readv)
* [recv](/core/sys/posix/#recv)
* [recvfrom](/core/sys/posix/#recvfrom)
* [recvmsg](/core/sys/posix/#recvmsg)
* [renameat](/core/sys/posix/#renameat)
* [semctl](/core/sys/posix/#semctl)
* [semop](/core/sys/posix/#semop)
* [send](/core/sys/posix/#send)
* [sendmsg](/core/sys/posix/#sendmsg)
* [sendto](/core/sys/posix/#sendto)
* [setsockopt](/core/sys/posix/#setsockopt)
* [shmat](/core/sys/posix/#shmat)
* [shmctl](/core/sys/posix/#shmctl)
* [shutdown](/core/sys/posix/#shutdown)
* [sockatmark](/core/sys/posix/#sockatmark)
* [symlinkat](/core/sys/posix/#symlinkat)
* [tcdrain](/core/sys/posix/#tcdrain)
* [tcflow](/core/sys/posix/#tcflow)
* [tcflush](/core/sys/posix/#tcflush)
* [tcgetattr](/core/sys/posix/#tcgetattr)
* [tcgetpgrp](/core/sys/posix/#tcgetpgrp)
* [tcgetsid](/core/sys/posix/#tcgetsid)
* [tcsendbreak](/core/sys/posix/#tcsendbreak)
* [tcsetattr](/core/sys/posix/#tcsetattr)
* [tcsetpgrp](/core/sys/posix/#tcsetpgrp)
* [ttyname](/core/sys/posix/#ttyname)
* [ttyname\_r](/core/sys/posix/#ttyname_r)
* [unlinkat](/core/sys/posix/#unlinkat)
* [unlockpt](/core/sys/posix/#unlockpt)
* [utimensat](/core/sys/posix/#utimensat)
* [write](/core/sys/posix/#write)
* [writev](/core/sys/posix/#writev)



##### Related Procedures With Returns

* [creat](/core/sys/posix/#creat)
* [dirfd](/core/sys/posix/#dirfd)
* [fileno](/core/sys/posix/#fileno)
* [mkstemp](/core/sys/posix/#mkstemp)
* [msgget](/core/sys/posix/#msgget)
* [open](/core/sys/posix/#open)
* [posix\_openpt](/core/sys/posix/#posix_openpt)
* [semget](/core/sys/posix/#semget)
* [shm\_open](/core/sys/posix/#shm_open)
* [shmget](/core/sys/posix/#shmget)
* [socket](/core/sys/posix/#socket)

##### Related Constants

* [AT\_FDCWD](/core/sys/posix/#AT_FDCWD)

### [FILE ¶](#FILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L186)

```
FILE :: c.FILE
```

##### Related Procedures With Parameters

* [fileno](/core/sys/posix/#fileno)
* [flockfile](/core/sys/posix/#flockfile)
* [fseeko](/core/sys/posix/#fseeko)
* [ftello](/core/sys/posix/#ftello)
* [ftrylockfile](/core/sys/posix/#ftrylockfile)
* [funlockfile](/core/sys/posix/#funlockfile)
* [getc\_unlocked](/core/sys/posix/#getc_unlocked)
* [getdelim](/core/sys/posix/#getdelim)
* [getline](/core/sys/posix/#getline)
* [pclose](/core/sys/posix/#pclose)
* [putc\_unlocked](/core/sys/posix/#putc_unlocked)



##### Related Procedures With Returns

* [fdopen](/core/sys/posix/#fdopen)
* [fmemopen](/core/sys/posix/#fmemopen)
* [open\_memstream](/core/sys/posix/#open_memstream)
* [popen](/core/sys/posix/#popen)

### [FNM\_Flag\_Bits ¶](#FNM_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin#L31)

```
FNM_Flag_Bits :: enum i32 {
	// A <slash> character ( '/' ) in string shall be explicitly matched by a <slash> in pattern;
	// it shall not be matched by either the <asterisk> or <question-mark> special characters,
	// nor by a bracket expression.
	PATHNAME = 1, 
	// A leading <period> ( '.' ) in string shall match a <period> in pattern;
	// as described by rule 2 in XCU [[ Patterns Used for Filename Expansion; https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_13_03 ]]
	// where the location of "leading" is indicated by the value of PATHNAME:
	// 1. If PATHNAME is set, a <period> is "leading" if it is the first character in string or if it immediately follows a <slash>.
	// 2. If PATHNAME is not set, a <period> is "leading" only if it is the first character of string.
	PERIOD   = 2, 
	// A <backslash> character shall be treated as an ordinary character.
	NOESCAPE = 0, 
}
```

### [FNM\_Flags ¶](#FNM_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin#L47)

```
FNM_Flags :: bit_set[FNM_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [fnmatch](/core/sys/posix/#fnmatch)

### [FPE\_Code ¶](#FPE_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L224)

```
FPE_Code :: enum i32 {
	// Integer divide by zero.
	INTDIV = 7, 
	// Integer overflow.
	INTOVF = 8, 
	// Floating-point divide by zero.
	FLTDIV = 1, 
	// Floating-point overflow.
	FLTOVF = 2, 
	// Floating-point underflow.
	FLTUND = 3, 
	// Floating-point inexact result.
	FLTRES = 4, 
	// Invalid floating-point operation.
	FLTINV = 5, 
	// Subscript out of range.
	FLTSUB = 6, 
}
```

### [Glob\_Flag\_Bits ¶](#Glob_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L39)

```
Glob_Flag_Bits :: enum i32 {
	// Append pathnames generated to the ones from a previous call to glob().
	APPEND   = 0, 
	// Make use of pglob->gl_offs. If this flag is set, pglob->gl_offs is used to specify how many null pointers to add to the beginning of pglob->gl_pathv.
	// In other words, pglob->gl_pathv shall point to pglob->gl_offs null pointers, followed by pglob->gl_pathc pathname pointers, followed by a null pointer.
	DOOFFS   = 1, 
	// Cause glob() to return when it encounters a directory that it cannot open or read. Ordinarily,
	// glob() continues to find matches.
	ERR      = 2, 
	// Each pathname that is a directory that matches pattern shall have a <slash> appended.
	MARK     = 3, 
	// Supports rule 3 in [[ XCU Patterns Used for Filename Expansion; https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_13_03 ]].
	// If pattern does not match any pathname, then glob() shall return a list consisting of only pattern,
	// and the number of matched pathnames is 1.
	NOCHECK  = 4, 
	// Disable backslash escaping.
	NOESCAPE = 13, 
	// Ordinarily, glob() sorts the matching pathnames according to the current setting of the
	// LC_COLLATE category; see XBD LC_COLLATE. When this flag is used,
	// the order of pathnames returned is unspecified.
	NOSORT   = 5, 
}
```

### [Glob\_Flags ¶](#Glob_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L61)

```
Glob_Flags :: bit_set[Glob_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [glob](/core/sys/posix/#glob)

### [Glob\_Result ¶](#Glob_Result) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L63)

```
Glob_Result :: enum i32 {
	SUCCESS = 0, 
	ABORTED = -2, 
	NOMATCH = -3, 
	NOSPACE = -1, 
}
```

##### Related Procedures With Returns

* [glob](/core/sys/posix/#glob)

### [ILL\_Code ¶](#ILL_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L205)

```
ILL_Code :: enum i32 {
	// Illegal opcode.
	ILLOPC = 1, 
	// Illegal operand.
	ILLOPN = 4, 
	// Illegal addressing mode.
	ILLADR = 5, 
	// Illegal trap.
	ILLTRP = 2, 
	// Priviledged opcode.
	PRVOPC = 3, 
	// Priviledged register.
	PRVREG = 6, 
	// Coprocessor error.
	COPROC = 7, 
	// Internal stack error.
	BADSTK = 8, 
}
```

### [IPC\_Cmd ¶](#IPC_Cmd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L25)

```
IPC_Cmd :: enum i32 {
	RMID = 0, 
	SET  = 1, 
	STAT = 2, 
}
```

##### Related Procedures With Parameters

* [msgctl](/core/sys/posix/#msgctl)
* [shmctl](/core/sys/posix/#shmctl)

### [IPC\_Flag\_Bits ¶](#IPC_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L31)

```
IPC_Flag_Bits :: enum i32 {
	CREAT       = 9, 
	EXCL        = 10, 
	NOWAIT      = 11, 
	MSG_NOERROR = 12, 
}
```

### [IPC\_Flags ¶](#IPC_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L38)

```
IPC_Flags :: bit_set[IPC_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [msgget](/core/sys/posix/#msgget)
* [msgrcv](/core/sys/posix/#msgrcv)
* [msgsnd](/core/sys/posix/#msgsnd)
* [semget](/core/sys/posix/#semget)

### [ITimer ¶](#ITimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L48)

```
ITimer :: enum i32 {
	// Decrements in real time.
	REAL    = 0, 
	// Decrements in process virtual time, only when the process is executing.
	VIRTUAL = 1, 
	// Decrements both in process virtual time and when the system is running on 
	// behalf of the process.
	PROF    = 2, 
}
```

##### Related Procedures With Parameters

* [getitimer](/core/sys/posix/#getitimer)
* [setitimer](/core/sys/posix/#setitimer)

### [Info\_Errno ¶](#Info_Errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L298)

```
Info_Errno :: enum i32 {
	NONE     = 0, 
	// The name could not be resolved at this time. Future attempts may succeed.
	AGAIN    = 2, 
	// The flags had an invalid value.
	BADFLAGS = 3, 
	// A non-recoverable error ocurred.
	FAIL     = 4, 
	// The address family was not recognized or the address length was invald for the specified family.
	FAMILY   = 5, 
	// There was a memory allocation failure.
	MEMORY   = 6, 
	// The name does not resolve for the supplied parameters.
	NONAME   = 8, 
	// The service passed was not recognized for the specified socket.
	SERVICE  = 9, 
	// The intended socket type was not recognized.
	SOCKTYPE = 10, 
	// A system error occurred. The error code can be found in errno.
	SYSTEM   = 11, 
	// An argument buffer overflowed.
	OVERFLOW = 14, 
}
```

##### Related Procedures With Parameters

* [gai\_strerror](/core/sys/posix/#gai_strerror)



##### Related Procedures With Returns

* [getaddrinfo](/core/sys/posix/#getaddrinfo)
* [getnameinfo](/core/sys/posix/#getnameinfo)

### [Inherit\_Sched ¶](#Inherit_Sched) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L343)

```
Inherit_Sched :: enum i32 {
	// Threads inherit from the creating thread.
	INHERIT_SCHED  = 1, 
	// Threads scheduling shall be set to the corresponding values from the attributes object.
	EXPLICIT_SCHED = 2, 
}
```

##### Related Procedures With Parameters

* [pthread\_attr\_getinheritsched](/core/sys/posix/#pthread_attr_getinheritsched)
* [pthread\_attr\_setinheritsched](/core/sys/posix/#pthread_attr_setinheritsched)

### [Locale\_Category ¶](#Locale_Category) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/locale.odin#L11)

```
Locale_Category :: libc.Locale_Category
```

### [Lock\_Flag\_Bits ¶](#Lock_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L135)

```
Lock_Flag_Bits :: enum i32 {
	// Lock all pages currently mapped into the address space of the process.
	CURRENT = 0, 
	// Lock all pages that become mapped into the address space of the process in the future, 
	// when those mappings are established.
	FUTURE  = 1, 
}
```

### [Lock\_Flags ¶](#Lock_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L142)

```
Lock_Flags :: bit_set[Lock_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [mlockall](/core/sys/posix/#mlockall)

### [Lock\_Function ¶](#Lock_Function) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1045)

```
Lock_Function :: enum i32 {
	// Lock a section for exclusive use.
	LOCK  = 1, 
	// Test a section for locks by other processes.
	TEST  = 3, 
	// Test and lock a section for exclusive use.
	TLOCK = 2, 
	// Unlock locked sections.
	ULOCK = 0, 
}
```

##### Related Procedures With Parameters

* [lockf](/core/sys/posix/#lockf)

### [Lock\_Type ¶](#Lock_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L90)

```
Lock_Type :: enum i16 {
	RDLCK = 1, 
	UNLCK = 2, 
	WRLCK = 3, 
}
```

### [MAdvice ¶](#MAdvice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L160)

```
MAdvice :: enum i32 {
	DONTNEED   = 4, 
	NORMAL     = 0, 
	RANDOM     = 1, 
	SEQUENTIAL = 2, 
	WILLNEED   = 3, 
}
```

##### Related Procedures With Parameters

* [posix\_madvise](/core/sys/posix/#posix_madvise)

### [Map\_Flag\_Bits ¶](#Map_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L123)

```
Map_Flag_Bits :: enum i32 {
	// Map anonymous memory.
	ANONYMOUS = 12, 
	// Interpret addr exactly.
	FIXED     = 4, 
	// Changes are private.
	PRIVATE   = 1, 
	// Changes are shared.
	SHARED    = 0, 
}
```

### [Map\_Flags ¶](#Map_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L133)

```
Map_Flags :: bit_set[Map_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [mmap](/core/sys/posix/#mmap)

### [Mode\_Bits ¶](#Mode_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L155)

```
Mode_Bits :: enum i32 {
	IFCHR = 13, // Character special
	IFIFO = 12, // FIFO special
	IFREG = 15, // Regular
	IFDIR = 14, // Directory
	IRUSR = 8,  // R for owner
	IWUSR = 7,  // W for owner
	IXUSR = 6,  // X for owner
	IRGRP = 5,  // R for group
	IWGRP = 4,  // W for group
	IXGRP = 3,  // X for group
	IROTH = 2,  // R for other
	IWOTH = 1,  // W for other
	IXOTH = 0,  // X for other
	ISUID = 11, // Set user ID on execution
	ISGID = 10, // Set group ID on execution
	ISVXT = 9,  // On directories, restricted deletion flag
}
```

### [Mode\_Flag\_Bits ¶](#Mode_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L137)

```
Mode_Flag_Bits :: enum i32 {
	X_OK = 0, 
	W_OK = 1, 
	R_OK = 2, 
}
```

### [Mode\_Flags ¶](#Mode_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L142)

```
Mode_Flags :: bit_set[Mode_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [access](/core/sys/posix/#access)
* [faccessat](/core/sys/posix/#faccessat)

##### Related Constants

* [F\_OK](/core/sys/posix/#F_OK)

### [Msg\_Flag\_Bits ¶](#Msg_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L271)

```
Msg_Flag_Bits :: enum i32 {
	// Control data truncated.
	CTRUNC    = 5, 
	// Send without using routing table.
	DONTROUTE = 2, 
	// Terminates a record (if supported by protocol).
	EOR       = 3, 
	// Out-of-band data.
	OOB       = 0, 
	// No SIGPIPE is generated when an attempt to send is made on a stream-oriented socket that is
	// no longer connected.
	NOSIGNAL  = 19, 
	// Leave received data in queue.
	PEEK      = 1, 
	// Normal data truncated.
	TRUNC     = 4, 
	// Attempt to fill the read buffer.
	WAITALL   = 6, 
}
```

### [Msg\_Flags ¶](#Msg_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L290)

```
Msg_Flags :: bit_set[Msg_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [recv](/core/sys/posix/#recv)
* [recvfrom](/core/sys/posix/#recvfrom)
* [recvmsg](/core/sys/posix/#recvmsg)
* [send](/core/sys/posix/#send)
* [sendmsg](/core/sys/posix/#sendmsg)
* [sendto](/core/sys/posix/#sendto)

### [Nameinfo\_Flag\_Bits ¶](#Nameinfo_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L282)

```
Nameinfo_Flag_Bits :: enum i32 {
	// Only the nodename portion of the FQDN is returned for local hosts.
	NOFQDN       = 0, 
	// The numeric form of the node's address is returned instead of its name.
	NUMERICHOST  = 1, 
	// Return an error if the node's name cannot be located in the database.
	NAMEREQD     = 2, 
	// The numeric form of the service address is returned instead of its name.
	NUMERICSERV  = 3, 
	// For IPv6 addresses, the numeric form of the scope identifier is returned instead of its name.
	NUMERICSCOPE = 8, 
	// Indicates that the service is a datagram service (SOCK_DGRAM).
	DGRAM        = 4, 
}
```

### [Nameinfo\_Flags ¶](#Nameinfo_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L296)

```
Nameinfo_Flags :: bit_set[Nameinfo_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [getnameinfo](/core/sys/posix/#getnameinfo)

### [O\_Flag\_Bits ¶](#O_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L96)

```
O_Flag_Bits :: enum i32 {
	// Sets FD_CLOEXEC on the file descriptor.
	CLOEXEC   = 24, 
	// If not exists, combined with DIRECTORY will cause creation of a directory, otherwise a regular file.
	CREAT     = 9, 
	// Fails if the opened descriptor would not be a directory.
	DIRECTORY = 20, 
	// If combined with CREAT, causes a failure if the file already exists.
	EXCL      = 11, 
	// If terminal device, do not make it the controlling terminal for the process.
	NOCTTY    = 17, 
	// Don't follow symbolic links, fail with errno ELOOP.
	NOFOLLOW  = 8, 
	// If exists and regular, truncate the length to 0.
	TRUNC     = 10, 
	// Set file offset to end of file prior to each write.
	APPEND    = 3, 
	// Write I/O shall complete as defined by synchronized I/O data integrity completion.
	DSYNC     = 22, 
	// Causes nonblocking behaviour in various situations.
	NONBLOCK  = 2, 
	// Write I/O shall complete as defined by synchronized I/O file integrity completion.
	SYNC      = 7, 
	// Execute only.
	EXEC      = 30, 
	// Reading and writing.
	RDWR      = 1, 
	// Writing only.
	WRONLY    = 0, 
}
```

### [O\_Flags ¶](#O_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L139)

```
O_Flags :: bit_set[O_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [open](/core/sys/posix/#open)
* [openat](/core/sys/posix/#openat)
* [posix\_openpt](/core/sys/posix/#posix_openpt)
* [shm\_open](/core/sys/posix/#shm_open)

##### Related Constants

* [O\_ACCMODE](/core/sys/posix/#O_ACCMODE)
* [O\_RSYNC](/core/sys/posix/#O_RSYNC)
* [O\_SEARCH](/core/sys/posix/#O_SEARCH)
* [O\_TTY\_INIT](/core/sys/posix/#O_TTY_INIT)

### [PC ¶](#PC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L901)

```
PC :: enum i32 {
	_2_SYMLINKS         = 15, 
	_ALLOC_SIZE_MIN     = 16, 
	_ASYNC_IO           = 17, 
	_CHOWN_RESTRICTED   = 7, 
	_FILESIZEBITS       = 18, 
	_LINK_MAX           = 1, 
	_MAX_CANON          = 2, 
	_MAX_INPUT          = 3, 
	_NAME_MAX           = 4, 
	_NO_TRUNC           = 8, 
	_PATH_MAX           = 5, 
	_PIPE_BUF           = 6, 
	_PRIO_IO            = 19, 
	_REC_INCR_XFER_SIZE = 20, 
	_REC_MAX_XFER_SIZE  = 21, 
	_REC_MIN_XFER_SIZE  = 22, 
	_REC_XFER_ALIGN     = 23, 
	_SYMLINK_MAX        = 24, 
	_SYNC_IO            = 25, 
	_VDISABLE           = 9, 
}
```

##### Related Procedures With Parameters

* [fpathconf](/core/sys/posix/#fpathconf)
* [pathconf](/core/sys/posix/#pathconf)

### [POLL\_Code ¶](#POLL_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L281)

```
POLL_Code :: enum i32 {
	// Data input is available.
	IN  = 1, 
	// Output buffers available.
	OUT = 2, 
	// Input message available.
	MSG = 3, 
	// I/O error.
	ERR = 4, 
	// High priority input available.
	PRI = 5, 
	// Device disconnected.
	HUP = 6, 
}
```

### [Poll\_Event ¶](#Poll_Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L58)

```
Poll_Event :: bit_set[Poll_Event_Bits; i16]
```

### [Poll\_Event\_Bits ¶](#Poll_Event_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L34)

```
Poll_Event_Bits :: enum i16 {
	// Data other than high-priority data may be read without blocking.
	IN     = 0, 
	// Normal data may be read without blocking.
	RDNORM = 6, 
	// Priority data may be read without blocking.
	RDBAND = 7, 
	// High priority data may be read without blocking.
	PRI    = 1, 
	// Normal data may be written without blocking.
	OUT    = 2, 
	// Equivalent to POLLOUT.
	WRNORM = 2, 
	// Priority data may be written.
	WRBAND = 8, 
	// An error has occurred (revents only).
	ERR    = 3, 
	// Device hsa been disconnected (revents only).
	HUP    = 4, 
	// Invalid fd member (revents only).
	NVAL   = 5, 
}
```

### [Prot\_Flag\_Bits ¶](#Prot_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L113)

```
Prot_Flag_Bits :: enum i32 {
	// Data can be executed.
	EXEC  = 2, 
	// Data can be read.
	READ  = 0, 
	// Data can be written.
	WRITE = 1, 
}
```

### [Prot\_Flags ¶](#Prot_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L121)

```
Prot_Flags :: bit_set[Prot_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [mmap](/core/sys/posix/#mmap)
* [mprotect](/core/sys/posix/#mprotect)

##### Related Constants

* [PROT\_NONE](/core/sys/posix/#PROT_NONE)

### [Protocol ¶](#Protocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L25)

```
Protocol :: enum i32 {
	IP   = 0, 
	ICMP = 1, 
	IPV6 = 41, 
	RAW  = 255, 
	TCP  = 6, 
	UDP  = 17, 
}
```

##### Related Procedures With Parameters

* [socket](/core/sys/posix/#socket)
* [socketpair](/core/sys/posix/#socketpair)

### [RTLD\_Flag\_Bits ¶](#RTLD_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L76)

```
RTLD_Flag_Bits :: enum i32 {
	LAZY   = 0, 
	NOW    = 1, 
	GLOBAL = 3, 
	_MAX   = 31, 
}
```

### [RTLD\_Flags ¶](#RTLD_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L87)

```
RTLD_Flags :: bit_set[RTLD_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [dlopen](/core/sys/posix/#dlopen)

##### Related Constants

* [RTLD\_LOCAL](/core/sys/posix/#RTLD_LOCAL)

### [Resource ¶](#Resource) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L76)

```
Resource :: enum i32 {
	// Maximum byte size of a core file that may be created by a process.
	CORE   = 4, 
	// Maximum amount of CPU time, in seconds, used by a process.
	CPU    = 0, 
	// Maximum size of data segment of the process, in bytes.
	DATA   = 2, 
	// Maximum size of a file, in bytes, that may be created by a process.
	FSIZE  = 1, 
	// A number one greater than the maximum value that the system may assign to a newly-created descriptor.
	NOFILE = 8, 
	// The maximum size of the initial thread's stack, in bytes.
	STACK  = 3, 
	// Maximum size of total available memory of the process, in bytes.
	AS     = 5, 
}
```

##### Related Procedures With Parameters

* [getrlimit](/core/sys/posix/#getrlimit)
* [setrlimit](/core/sys/posix/#setrlimit)

### [SA\_Flags ¶](#SA_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L325)

```
SA_Flags :: bit_set[SA_Flags_Bits; i32]
```

### [SA\_Flags\_Bits ¶](#SA_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L309)

```
SA_Flags_Bits :: enum i32 {
	// Do not generate SIGCHLD when children stop or stopped children continue.
	NOCLDSTOP  = 3, 
	// Cause signal delivery to occur on an alternate stack.
	ONSTACK    = 0, 
	// Cause signal disposition to be set to SIG_DFL on entry to signal handlers.
	RESETHAND  = 2, 
	// Cause certain functions to become restartable.
	RESTART    = 1, 
	// Cause extra information to be passed to signal handlers at the time of receipt of a signal.
	SIGINFO    = 6, 
	// Cause implementation not to create zombie processes or status information on child termination.
	NOCLDWAIT  = 5, 
	// Cause signal not to be automatically blocked on entry to signal handler.
	SA_NODEFER = 4, 
}
```

### [SC ¶](#SC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L924)

```
SC :: enum i32 {
	_2_C_BIND                     = 18, 
	_2_C_DEV                      = 19, 
	_2_CHAR_TERM                  = 20, 
	_2_FORT_DEV                   = 21, 
	_2_FORT_RUN                   = 22, 
	_2_LOCALEDEF                  = 23, 
	_2_PBS                        = 59, 
	_2_PBS_ACCOUNTING             = 60, 
	_2_PBS_CHECKPOINT             = 61, 
	_2_PBS_LOCATE                 = 62, 
	_2_PBS_MESSAGE                = 63, 
	_2_PBS_TRACK                  = 64, 
	_2_SW_DEV                     = 24, 
	_2_UPE                        = 25, 
	_2_VERSION                    = 17, 
	_ADVISORY_INFO                = 65, 
	_AIO_LISTIO_MAX               = 42, 
	_AIO_MAX                      = 43, 
	_AIO_PRIO_DELTA_MAX           = 44, 
	_ARG_MAX                      = 1, 
	_ASYNCHRONOUS_IO              = 28, 
	_ATEXIT_MAX                   = 107, 
	_BARRIERS                     = 66, 
	_BC_BASE_MAX                  = 9, 
	_BC_DIM_MAX                   = 10, 
	_BC_SCALE_MAX                 = 11, 
	_BC_STRING_MAX                = 12, 
	_CHILD_MAX                    = 2, 
	_CLK_TCK                      = 3, 
	_CLOCK_SELECTION              = 67, 
	_COLL_WEIGHTS_MAX             = 13, 
	_CPUTIME                      = 68, 
	_DELAYTIMER_MAX               = 45, 
	_EXPR_NEST_MAX                = 14, 
	_FSYNC                        = 38, 
	_GETGR_R_SIZE_MAX             = 70, 
	_GETPW_R_SIZE_MAX             = 71, 
	_HOST_NAME_MAX                = 72, 
	_IOV_MAX                      = 56, 
	_IPV6                         = 118, 
	_JOB_CONTROL                  = 6, 
	_LINE_MAX                     = 15, 
	_LOGIN_NAME_MAX               = 73, 
	_MAPPED_FILES                 = 47, 
	_MEMLOCK                      = 30, 
	_MEMLOCK_RANGE                = 31, 
	_MEMORY_PROTECTION            = 32, 
	_MESSAGE_PASSING              = 33, 
	_MONOTONIC_CLOCK              = 74, 
	_MQ_OPEN_MAX                  = 46, 
	_MQ_PRIO_MAX                  = 75, 
	_NGROUPS_MAX                  = 4, 
	_OPEN_MAX                     = 5, 
	_PAGE_SIZE                    = 29, 
	_PAGESIZE                     = 29, 
	_PRIORITIZED_IO               = 34, 
	_PRIORITY_SCHEDULING          = 35, 
	_RAW_SOCKETS                  = 119, 
	_RE_DUP_MAX                   = 16, 
	_READER_WRITER_LOCKS          = 76, 
	_REALTIME_SIGNALS             = 36, 
	_REGEXP                       = 77, 
	_RTSIG_MAX                    = 48, 
	_SAVED_IDS                    = 7, 
	_SEM_NSEMS_MAX                = 49, 
	_SEM_VALUE_MAX                = 50, 
	_SEMAPHORES                   = 37, 
	_SHARED_MEMORY_OBJECTS        = 39, 
	_SHELL                        = 78, 
	_SIGQUEUE_MAX                 = 51, 
	_SPAWN                        = 79, 
	_SPIN_LOCKS                   = 80, 
	_SPORADIC_SERVER              = 81, 
	_SS_REPL_MAX                  = 126, 
	_STREAM_MAX                   = 26, 
	_SYMLOOP_MAX                  = 120, 
	_SYNCHRONIZED_IO              = 40, 
	_THREAD_ATTR_STACKADDR        = 82, 
	_THREAD_ATTR_STACKSIZE        = 83, 
	_THREAD_CPUTIME               = 84, 
	_THREAD_DESTRUCTOR_ITERATIONS = 85, 
	_THREAD_KEYS_MAX              = 86, 
	_THREAD_PRIO_INHERIT          = 87, 
	_THREAD_PRIO_PROTECT          = 88, 
	_THREAD_PRIORITY_SCHEDULING   = 89, 
	_THREAD_PROCESS_SHARED        = 90, 
	_THREAD_SAFE_FUNCTIONS        = 91, 
	_THREAD_SPORADIC_SERVER       = 92, 
	_THREAD_STACK_MIN             = 93, 
	_THREAD_THREADS_MAX           = 94, 
	_THREADS                      = 96, 
	_TIMEOUTS                     = 95, 
	_TIMER_MAX                    = 52, 
	_TIMERS                       = 41, 
	_TRACE                        = 97, 
	_TRACE_EVENT_FILTER           = 98, 
	_TRACE_EVENT_NAME_MAX         = 127, 
	_TRACE_INHERIT                = 99, 
	_TRACE_LOG                    = 100, 
	_TRACE_NAME_MAX               = 128, 
	_TRACE_SYS_MAX                = 129, 
	_TRACE_USER_EVENT_MAX         = 130, 
	_TTY_NAME_MAX                 = 101, 
	_TYPED_MEMORY_OBJECTS         = 102, 
	_TZNAME_MAX                   = 27, 
	_V6_ILP32_OFF32               = 103, 
	_V6_ILP32_OFFBIG              = 104, 
	_V6_LP64_OFF64                = 105, 
	_V6_LPBIG_OFFBIG              = 106, 
	_VERSION                      = 8, 
	_XOPEN_CRYPT                  = 108, 
	_XOPEN_ENH_I18N               = 109, 
	_XOPEN_REALTIME               = 111, 
	_XOPEN_REALTIME_THREADS       = 112, 
	_XOPEN_SHM                    = 113, 
	_XOPEN_STREAMS                = 114, 
	_XOPEN_UNIX                   = 115, 
	_XOPEN_VERSION                = 116, 
}
```

##### Related Procedures With Parameters

* [sysconf](/core/sys/posix/#sysconf)

### [SEGV\_Code ¶](#SEGV_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L243)

```
SEGV_Code :: enum i32 {
	// Address not mapped to object.
	MAPERR = 1, 
	// Invalid permissions for mapped object.
	ACCERR = 2, 
}
```

### [SHM\_Flag\_Bits ¶](#SHM_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L50)

```
SHM_Flag_Bits :: enum i32 {
	RDONLY = 12, 
	RND    = 13, 
}
```

### [SHM\_Flags ¶](#SHM_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L54)

```
SHM_Flags :: bit_set[SHM_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [shmat](/core/sys/posix/#shmat)
* [shmget](/core/sys/posix/#shmget)

### [SS\_Flag\_Bits ¶](#SS_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L327)

```
SS_Flag_Bits :: enum i32 {
	// Process is executing on an alternate signal stack.
	ONSTACK = 0, 
	// Alternate signal stack is disabled.
	DISABLE = 2, 
}
```

### [SS\_Flags ¶](#SS_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L333)

```
SS_Flags :: bit_set[SS_Flag_Bits; i32]
```

### [Sched\_Policy ¶](#Sched_Policy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin#L74)

```
Sched_Policy :: enum i32 {
	// Error condition of sched_getscheduler.
	ERROR = -1, 
	// First in-first out (FIFO) scheduling policy.
	FIFO  = 4, 
	// Round robin scheduling policy.
	RR    = 2, 
	// Another scheduling policy.
	OTHER = 1, 
}
```

##### Related Procedures With Parameters

* [pthread\_attr\_getschedpolicy](/core/sys/posix/#pthread_attr_getschedpolicy)
* [pthread\_attr\_setschedpolicy](/core/sys/posix/#pthread_attr_setschedpolicy)
* [pthread\_getschedparam](/core/sys/posix/#pthread_getschedparam)
* [pthread\_setschedparam](/core/sys/posix/#pthread_setschedparam)
* [sched\_get\_priority\_max](/core/sys/posix/#sched_get_priority_max)
* [sched\_get\_priority\_min](/core/sys/posix/#sched_get_priority_min)

### [Sem\_Cmd ¶](#Sem_Cmd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L41)

```
Sem_Cmd :: enum i32 {
	RMID    = 0, 
	SET     = 1, 
	STAT    = 2, 
	// Returns the value of semncnt.
	GETNCNT = 3, 
	// Returns the value of sempid.
	GETPID  = 4, 
	// Return the value of semval.
	GETVAL  = 5, 
	// Returns the value of semval for each semaphore in the semaphore set.
	GETALL  = 6, 
	// Returns the value of semzcnt.
	GETZCNT = 7, 
	// Sets the value of semval to arg.val.
	SETVAL  = 8, 
	// Sets the value of semval for each semaphore in the set.
	SETALL  = 9, 
}
```

##### Related Procedures With Parameters

* [semctl](/core/sys/posix/#semctl)

### [Shut ¶](#Shut) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L262)

```
Shut :: enum i32 {
	// Disables further receive operations.
	RD   = 0, 
	// Disables further send and receive operations.
	RDWR = 2, 
	// Disables further send operations.
	WR   = 1, 
}
```

##### Related Procedures With Parameters

* [shutdown](/core/sys/posix/#shutdown)

### [Sig ¶](#Sig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L335)

```
Sig :: enum i32 {
	// Resulting set is the union of the current set and the signal set and the complement of
	// the signal set pointed to by the argument.
	BLOCK   = 1, 
	// Resulting set is the intersection of the current set and the complement of the signal set
	// pointed to by the argument.
	UNBLOCK = 2, 
	// Resulting set is the signal set pointed to by the argument.
	SETMASK = 3, 
}
```

##### Related Procedures With Parameters

* [pthread\_sigmask](/core/sys/posix/#pthread_sigmask)
* [sigprocmask](/core/sys/posix/#sigprocmask)

### [Signal ¶](#Signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L42)

```
Signal :: enum i32 {
	NONE, 
	// Process abort signal.
	SIGABRT   = 6, 
	// Erronous arithemtic operation.
	SIGFPE    = 8, 
	// Illegal instruction.
	SIGILL    = 4, 
	// Terminal interrupt signal.
	SIGINT    = 2, 
	// Invalid memory reference.
	SIGSEGV   = 11, 
	// Termination signal.
	SIGTERM   = 15, 
	// Process abort signal.
	SIGALRM   = 14, 
	// Access to an undefined portion of a memory object.
	SIGBUS    = 10, 
	// Child process terminated, stopped, or continued.
	SIGCHLD   = 20, 
	// Continue execution, if stopped.
	SIGCONT   = 19, 
	// Hangup.
	SIGHUP    = 1, 
	// Kill (cannot be caught or ignored).
	SIGKILL   = 9, 
	// Write on a pipe with no one to read it.
	SIGPIPE   = 13, 
	// Terminal quit signal.
	SIGQUIT   = 3, 
	// Stop executing (cannot be caught or ignored).
	SIGSTOP   = 17, 
	// Terminal stop process.
	SIGTSTP   = 18, 
	// Background process attempting read.
	SIGTTIN   = 21, 
	// Background process attempting write.
	SIGTTOU   = 22, 
	// User-defined signal 1.
	SIGUSR1   = 30, 
	// User-defined signal 2.
	SIGUSR2   = 31, 
	// Pollable event.
	SIGPOLL   = 7, 
	// Profiling timer expired.
	SIGPROF   = 27, 
	// Bad system call.
	SIGSYS    = 12, 
	// Trace/breakpoint trap.
	SIGTRAP   = 5, 
	// High bandwidth data is available at a socket.
	SIGURG    = 16, 
	// Virtual timer expired.
	SIGVTALRM = 26, 
	// CPU time limit exceeded.
	SIGXCPU   = 24, 
	// File size limit exceeded.
	SIGXFSZ   = 25, 
}
```

##### Related Procedures With Parameters

* [kill](/core/sys/posix/#kill)
* [killpg](/core/sys/posix/#killpg)
* [psignal](/core/sys/posix/#psignal)
* [pthread\_kill](/core/sys/posix/#pthread_kill)
* [raise](/core/sys/posix/#raise)
* [sigaction](/core/sys/posix/#sigaction)
* [sigaddset](/core/sys/posix/#sigaddset)
* [sigdelset](/core/sys/posix/#sigdelset)
* [sighold](/core/sys/posix/#sighold)
* [sigignore](/core/sys/posix/#sigignore)
* [siginterrupt](/core/sys/posix/#siginterrupt)
* [sigismember](/core/sys/posix/#sigismember)
* [signal](/core/sys/posix/#signal)
* [sigpause](/core/sys/posix/#sigpause)
* [sigrelse](/core/sys/posix/#sigrelse)
* [sigwait](/core/sys/posix/#sigwait)
* [strsignal](/core/sys/posix/#strsignal)



##### Related Procedures With Returns

* [WSTOPSIG](/core/sys/posix/#WSTOPSIG)
* [WTERMSIG](/core/sys/posix/#WTERMSIG)

### [Sock ¶](#Sock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L251)

```
Sock :: enum i32 {
	// Datagram socket.
	DGRAM     = 2, 
	// Raw Protocol Interface.
	RAW       = 3, 
	// Sequenced-packet socket.
	SEQPACKET = 5, 
	// Byte-stream socket.
	STREAM    = 1, 
}
```

##### Related Procedures With Parameters

* [socket](/core/sys/posix/#socket)
* [socketpair](/core/sys/posix/#socketpair)

### [Sock\_Option ¶](#Sock_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L292)

```
Sock_Option :: enum i32 {
	// Transmission of broadcast message is supported.
	BROADCAST = 32, 
	// Debugging information is being recorded.
	DEBUG     = 1, 
	// Bypass normal routing.
	DONTROUTE = 16, 
	// Socket error status.
	ERROR     = 4103, 
	// Connections are kept alive with periodic messages.
	KEEPALIVE = 8, 
	// Socket lingers on close.
	LINGER    = 4224, 
	// Out-of-band data is transmitted in line.
	OOBINLINE = 256, 
	// Receive buffer size.
	RCVBUF    = 4098, 
	// Receive low water mark.
	RCVLOWAT  = 4100, 
	// Receive timeout.
	RCVTIMEO  = 4102, 
	// Reuse of local addresses is supported.
	REUSEADDR = 4, 
	// Send buffer size.
	SNDBUF    = 4097, 
	// Send low water mark.
	SNDLOWAT  = 4099, 
	// Send timeout.
	SNDTIMEO  = 4101, 
	// Socket type.
	TYPE      = 4104, 
}
```

##### Related Procedures With Parameters

* [getsockopt](/core/sys/posix/#getsockopt)
* [setsockopt](/core/sys/posix/#setsockopt)

### [Symbol\_Table ¶](#Symbol_Table) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L89)

```
Symbol_Table :: distinct rawptr
```

##### Related Procedures With Parameters

* [dlclose](/core/sys/posix/#dlclose)
* [dlsym](/core/sys/posix/#dlsym)



##### Related Procedures With Returns

* [dlopen](/core/sys/posix/#dlopen)

### [Sync\_Flags ¶](#Sync_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L158)

```
Sync_Flags :: bit_set[Sync_Flags_Bits; i32]
```

##### Related Procedures With Parameters

* [msync](/core/sys/posix/#msync)

##### Related Constants

* [MS\_SYNC](/core/sys/posix/#MS_SYNC)

### [Sync\_Flags\_Bits ¶](#Sync_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L144)

```
Sync_Flags_Bits :: enum i32 {
	// Perform asynchronous writes.
	ASYNC      = 0, 
	// Invalidate cached data.
	INVALIDATE = 1, 
	_MAX       = 31, 
}
```

### [TC\_Action ¶](#TC_Action) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L229)

```
TC_Action :: enum i32 {
	TCIOFF = 3, 
	TCION  = 4, 
	TCOOFF = 1, 
	TCOON  = 2, 
}
```

##### Related Procedures With Parameters

* [tcflow](/core/sys/posix/#tcflow)

### [TC\_Optional\_Action ¶](#TC_Optional_Action) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L236)

```
TC_Optional_Action :: enum i32 {
	TCSANOW, 
	TCSADRAIN, 
	TCSAFLUSH, 
}
```

##### Related Procedures With Parameters

* [tcsetattr](/core/sys/posix/#tcsetattr)

### [TC\_Queue ¶](#TC_Queue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L242)

```
TC_Queue :: enum i32 {
	TCIFLUSH  = 1, 
	TCOFLUSH  = 2, 
	TCIOFLUSH = 3, 
}
```

##### Related Procedures With Parameters

* [tcflush](/core/sys/posix/#tcflush)

### [TRAP\_Code ¶](#TRAP_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L259)

```
TRAP_Code :: enum i32 {
	// Process breakpoint.
	BRKPT = 1, 
	// Process trace trap.
	TRACE = 2, 
}
```

### [Thread\_Scope ¶](#Thread_Scope) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L350)

```
Thread_Scope :: enum i32 {
	// System scheduling contention scope.
	SYSTEM  = 1, 
	// Process scheduling contention scope.
	PROCESS = 2, 
}
```

##### Related Procedures With Parameters

* [pthread\_attr\_getscope](/core/sys/posix/#pthread_attr_getscope)
* [pthread\_attr\_setscope](/core/sys/posix/#pthread_attr_setscope)

### [Ulimit\_Cmd ¶](#Ulimit_Cmd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/ulimit.odin#L28)

```
Ulimit_Cmd :: enum i32 {
	// Returns the file size limit of the process in units of 512-byte blocks inherited by children.
	GETFSIZE = 1, 
	// Set the file size limit for output operations, taken as a long, multiplied by 512.
	SETFSIZE = 2, 
}
```

### [VFS\_Flag\_Bits ¶](#VFS_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L33)

```
VFS_Flag_Bits :: enum u64 {
	// Read-only file system.
	RDONLY = 0, 
	// Does not support the semantics of the ST_ISUID and ST_ISGID file mode bits.
	NOSUID = 1, 
}
```

### [VFS\_Flags ¶](#VFS_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L39)

```
VFS_Flags :: bit_set[VFS_Flag_Bits; u64]
```

### [WRDE\_Errno ¶](#WRDE_Errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L47)

```
WRDE_Errno :: enum i32 {
	OK      = 0, 
	// One of the unquoted characters- <newline>, '|', '&', ';', '<', '>', '(', ')', '{', '}' -
	// appears in words in an inappropriate context.
	BADCHAR = 1, 
	// Reference to undefined shell variable when WRDE_UNDEF is set in flags.
	BADVAL  = 2, 
	// Command substitution requested when WRDE_NOCMD was set in flags.
	CMDSUB  = 3, 
	// Attempt to allocate memory failed.
	NOSPACE = 4, 
	// Shell syntax error, such as unbalanced parentheses or an unterminated string.
	SYNTAX  = 6, 
}
```

##### Related Procedures With Returns

* [wordexp](/core/sys/posix/#wordexp)

### [WRDE\_Flag\_Bits ¶](#WRDE_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L30)

```
WRDE_Flag_Bits :: enum i32 {
	// Appends words to those previously generated.
	APPEND  = 0, 
	// Number of null pointers to prepend to we_wordv.
	DOOFFS  = 1, 
	// Fail if command substitution is requested.
	NOCMD   = 2, 
	// The pwordexp argument was passed to a previous successful call to wordexp(),
	// and has not been passed to wordfree().
	REUSE   = 3, 
	// Do not redirect stderr to /dev/null.
	SHOWERR = 4, 
	// Report error on attempt to expand an undefined shell variable.
	UNDEF   = 5, 
}
```

### [WRDE\_Flags ¶](#WRDE_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L45)

```
WRDE_Flags :: bit_set[WRDE_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [wordexp](/core/sys/posix/#wordexp)

### [Wait\_Flag\_Bits ¶](#Wait_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L135)

```
Wait_Flag_Bits :: enum i32 {
	// Report the status of any continued child process specified by pid whose status has not been
	// reported since it continued from a job control stop.
	CONTINUED = 4, 
	// Don't suspend execution of the calling thread if status is not immediately available for one
	// of the child processes specified by pid.
	NOHANG    = 0, 
	// The status of any child process specified by pid that are stopped, and whose status has not
	// yet been reported since they stopped, shall also be reported to the requesting process.
	UNTRACED  = 1, 
	// Wait for processes that have exited.
	EXITED    = 2, 
	// Keep the process whose status is returned in a waitable state, so it may be waited on again.
	NOWAIT    = 5, 
	// Children that have stopped upon receipt of a signal, and whose status either hasn't been reported
	// or has been reported but that report was called with NOWAIT.
	STOPPED   = 3, 
}
```

### [Wait\_Flags ¶](#Wait_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L156)

```
Wait_Flags :: bit_set[Wait_Flag_Bits; i32]
```

##### Related Procedures With Parameters

* [waitid](/core/sys/posix/#waitid)
* [waitpid](/core/sys/posix/#waitpid)

### [Whence ¶](#Whence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L185)

```
Whence :: libc.Whence
```

##### Related Procedures With Parameters

* [fseeko](/core/sys/posix/#fseeko)
* [lseek](/core/sys/posix/#lseek)

### [Which\_Prio ¶](#Which_Prio) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L65)

```
Which_Prio :: enum i32 {
	PROCESS = 0, 
	PGRP    = 1, 
	USER    = 2, 
}
```

##### Related Procedures With Parameters

* [getpriority](/core/sys/posix/#getpriority)
* [setpriority](/core/sys/posix/#setpriority)

### [Which\_Usage ¶](#Which_Usage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L71)

```
Which_Usage :: enum i32 {
	SELF     = 0, 
	CHILDREN = -1, 
}
```

##### Related Procedures With Parameters

* [getrusage](/core/sys/posix/#getrusage)

### [addrinfo ¶](#addrinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L367)

```
addrinfo :: struct {
	ai_flags:     bit_set[Addrinfo_Flag_Bits; i32],
	// [PSX] input flags 
	ai_family:    AF,
	// [PSX] address family of socket 
	ai_socktype:  Sock,
	// [PSX] socket type 
	ai_protocol:  Protocol,
	// [PSX] protocol of socket 
	ai_addrlen:   socklen_t,
	// [PSX] length of socket address 
	ai_canonname: cstring,
	// [PSX] canonical name of service location 
	ai_addr:      ^sockaddr,
	// [PSX] binary address 
	ai_next:      ^addrinfo,
}
```

##### Related Procedures With Parameters

* [freeaddrinfo](/core/sys/posix/#freeaddrinfo)
* [getaddrinfo](/core/sys/posix/#getaddrinfo)

### [blkcnt\_t ¶](#blkcnt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L279)

```
blkcnt_t :: distinct i64
```

### [blksize\_t ¶](#blksize_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L280)

```
blksize_t :: distinct i32
```

### [cc\_t ¶](#cc_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L250)

```
cc_t :: distinct u8
```

### [clock\_t ¶](#clock_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L134)

```
clock_t :: libc.clock_t
```

##### Related Procedures With Returns

* [times](/core/sys/posix/#times)

### [clockid\_t ¶](#clockid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L185)

```
clockid_t :: distinct i32
```

##### Related Procedures With Parameters

* [pthread\_getcpuclockid](/core/sys/posix/#pthread_getcpuclockid)

### [cmsghdr ¶](#cmsghdr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L428)

```
cmsghdr :: struct {
	cmsg_len:   socklen_t,
	// [PSX] data byte count, including cmsghdr 
	cmsg_level: i32,
	// [PSX] originating protocol 
	cmsg_type:  i32,
}
```

##### Related Procedures With Parameters

* [CMSG\_DATA](/core/sys/posix/#CMSG_DATA)
* [CMSG\_NXTHDR](/core/sys/posix/#CMSG_NXTHDR)



##### Related Procedures With Returns

* [CMSG\_FIRSTHDR](/core/sys/posix/#CMSG_FIRSTHDR)

### [dev\_t ¶](#dev_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L276)

```
dev_t :: distinct i32
```

##### Related Procedures With Parameters

* [mknod](/core/sys/posix/#mknod)
* [mknodat](/core/sys/posix/#mknodat)

### [dir\_loc ¶](#dir_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L135)

```
dir_loc :: i64
```

##### Related Procedures With Parameters

* [l64a](/core/sys/posix/#l64a)
* [msgrcv](/core/sys/posix/#msgrcv)
* [seekdir](/core/sys/posix/#seekdir)
* [srand48](/core/sys/posix/#srand48)



##### Related Procedures With Returns

* [a64l](/core/sys/posix/#a64l)
* [fpathconf](/core/sys/posix/#fpathconf)
* [gethostid](/core/sys/posix/#gethostid)
* [jrand48](/core/sys/posix/#jrand48)
* [lrand48](/core/sys/posix/#lrand48)
* [mrand48](/core/sys/posix/#mrand48)
* [nrand48](/core/sys/posix/#nrand48)
* [pathconf](/core/sys/posix/#pathconf)
* [random](/core/sys/posix/#random)
* [sysconf](/core/sys/posix/#sysconf)
* [telldir](/core/sys/posix/#telldir)
* [ulimit](/core/sys/posix/#ulimit)

### [dirent ¶](#dirent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L189)

```
dirent :: struct {
	d_ino:     ino_t,
	// [PSX] file number of entry 
	d_seekoff: u64,
	// seek offset 
	d_reclen:  u16,
	// length of this record 
	d_namelen: u16,
	// length of string in d_name 
	d_type:    D_Type,
	// file type  
	d_name:    [1024]u8 `fmt:"s,0"`,
}
```

##### Related Procedures With Returns

* [readdir](/core/sys/posix/#readdir)

### [div\_t ¶](#div_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L91)

```
div_t :: libc.div_t
```

### [fd\_set ¶](#fd_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L83)

```
fd_set :: struct #align (ALIGN) {
	fds_bits: [32]i32,
}
```

##### Related Procedures With Parameters

* [FD\_CLR](/core/sys/posix/#FD_CLR)
* [FD\_ISSET](/core/sys/posix/#FD_ISSET)
* [FD\_SET](/core/sys/posix/#FD_SET)
* [FD\_ZERO](/core/sys/posix/#FD_ZERO)
* [pselect](/core/sys/posix/#pselect)
* [select](/core/sys/posix/#select)

### [flock ¶](#flock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L208)

```
flock :: struct {
	l_start:  off_t,
	// [PSX] relative offset in bytes 
	l_len:    off_t,
	// [PSX] size; if 0 then until EOF 
	l_pid:    pid_t,
	// [PSX] process ID of the process holding the lock 
	l_type:   Lock_Type,
	// [PSX] type of lock 
	l_whence: i16,
}
```

### [fpos\_t ¶](#fpos_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L187)

```
fpos_t :: libc.fpos_t
```

### [fsblkcnt\_t ¶](#fsblkcnt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L51)

```
fsblkcnt_t :: distinct u32
```

### [gid\_t ¶](#gid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L120)

```
gid_t :: distinct u32
```

##### Related Procedures With Parameters

* [chown](/core/sys/posix/#chown)
* [fchown](/core/sys/posix/#fchown)
* [fchownat](/core/sys/posix/#fchownat)
* [getgrgid](/core/sys/posix/#getgrgid)
* [getgrgid\_r](/core/sys/posix/#getgrgid_r)
* [getgroups](/core/sys/posix/#getgroups)
* [lchown](/core/sys/posix/#lchown)
* [setegid](/core/sys/posix/#setegid)
* [setgid](/core/sys/posix/#setgid)
* [setregid](/core/sys/posix/#setregid)



##### Related Procedures With Returns

* [getegid](/core/sys/posix/#getegid)
* [getgid](/core/sys/posix/#getgid)

### [glob\_t ¶](#glob_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L80)

```
glob_t :: struct {
	gl_pathc:    uint,
	// [PSX] count of paths matched by pattern 
	gl_matchc:   i32,
	// count of paths matching pattern 
	gl_offs:     uint,
	// [PSX] slots to reserve at the beginning of gl_pathv 
	gl_flags:    bit_set[Glob_Flag_Bits; i32],
	// copy of flags parameter to glob 
	gl_pathv:    [^]cstring `fmt:"v,gl_pathc"`,
	using _:     struct #raw_union {
		gl_errfunc: proc "c" (cstring, i32) -> i32,
		gl_errblk:  proc "c" (cstring, i32) -> i32,
	},
	gl_closedir: proc "c" (dirp: DIR),
	gl_readdir:  proc "c" (dirp: DIR) -> ^dirent,
	gl_opendir:  proc "c" (path: cstring) -> DIR,
	gl_lstat:    proc "c" (path: cstring, buf: ^stat_t) -> result,
	gl_stat:     proc "c" (path: cstring, buf: ^stat_t) -> result,
}
```

##### Related Procedures With Parameters

* [glob](/core/sys/posix/#glob)
* [globfree](/core/sys/posix/#globfree)

### [group ¶](#group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L122)

```
group :: struct {
	gr_name:   cstring,
	// [PSX] group name 
	gr_passwd: cstring,
	// group password 
	gr_gid:    gid_t,
	// [PSX] group id 
	gr_mem:    [^]cstring,
}
```

##### Related Procedures With Parameters

* [getgrgid\_r](/core/sys/posix/#getgrgid_r)
* [getgrnam\_r](/core/sys/posix/#getgrnam_r)



##### Related Procedures With Returns

* [getgrent](/core/sys/posix/#getgrent)
* [getgrgid](/core/sys/posix/#getgrgid)
* [getgrnam](/core/sys/posix/#getgrnam)

### [hostent ¶](#hostent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L324)

```
hostent :: struct {
	h_name:      cstring,
	// [PSX] official name of host 
	h_aliases:   [^]cstring `fmt:"v,0"`,
	// [PSX] alias list 
	h_addrtype:  AF,
	// [PSX] host address type 
	h_length:    i32,
	// [PSX] length of address 
	h_addr_list: [^][^]u8 `fmt:"v,0"`,
}
```

##### Related Procedures With Returns

* [gethostent](/core/sys/posix/#gethostent)

### [iconv\_t ¶](#iconv_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/iconv.odin#L15)

```
iconv_t :: distinct rawptr
```

##### Related Procedures With Parameters

* [iconv](/core/sys/posix/#iconv)
* [iconv\_close](/core/sys/posix/#iconv_close)



##### Related Procedures With Returns

* [iconv\_open](/core/sys/posix/#iconv_open)

### [id\_t ¶](#id_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L160)

```
id_t :: distinct u32
```

##### Related Procedures With Parameters

* [getpriority](/core/sys/posix/#getpriority)
* [setpriority](/core/sys/posix/#setpriority)
* [waitid](/core/sys/posix/#waitid)

### [idtype\_t ¶](#idtype_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L126)

```
idtype_t :: enum i32 {
	// Wait for any children and `id` is ignored.
	P_ALL  = 0, 
	// Wait for any child wiith a process group ID equal to `id`.
	P_PID  = 1, 
	// Wait for any child with a process group ID equal to `id`.
	P_PGID = 2, 
}
```

##### Related Procedures With Parameters

* [waitid](/core/sys/posix/#waitid)

### [if\_nameindex\_t ¶](#if_nameindex_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/net_if.odin#L52)

```
if_nameindex_t :: struct {
	if_index: u32,
	// [PSX] 1, 2, ... 
	if_name:  cstring,
}
```

##### Related Procedures With Parameters

* [if\_freenameindex](/core/sys/posix/#if_freenameindex)



##### Related Procedures With Returns

* [if\_nameindex](/core/sys/posix/#if_nameindex)

### [in6\_addr ¶](#in6_addr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L49)

```
in6_addr :: struct {
	using _: struct #raw_union {
		s6_addr:     [16]u8,
		// [PSX] big endian address 
		__u6_addr16: [8]u16,
		__u6_addr32: [4]u32,
	},
}
```

##### Related Procedures With Parameters

* [IN6\_IS\_ADDR\_LINKLOCAL](/core/sys/posix/#IN6_IS_ADDR_LINKLOCAL)
* [IN6\_IS\_ADDR\_LOOPBACK](/core/sys/posix/#IN6_IS_ADDR_LOOPBACK)
* [IN6\_IS\_ADDR\_MC\_GLOBAL](/core/sys/posix/#IN6_IS_ADDR_MC_GLOBAL)
* [IN6\_IS\_ADDR\_MC\_LINKLOCAL](/core/sys/posix/#IN6_IS_ADDR_MC_LINKLOCAL)
* [IN6\_IS\_ADDR\_MC\_NODELOCAL](/core/sys/posix/#IN6_IS_ADDR_MC_NODELOCAL)
* [IN6\_IS\_ADDR\_MC\_ORGLOCAL](/core/sys/posix/#IN6_IS_ADDR_MC_ORGLOCAL)
* [IN6\_IS\_ADDR\_MC\_SITELOCAL](/core/sys/posix/#IN6_IS_ADDR_MC_SITELOCAL)
* [IN6\_IS\_ADDR\_MULTICAST](/core/sys/posix/#IN6_IS_ADDR_MULTICAST)
* [IN6\_IS\_ADDR\_SITELOCAL](/core/sys/posix/#IN6_IS_ADDR_SITELOCAL)
* [IN6\_IS\_ADDR\_UNSPECIFIED](/core/sys/posix/#IN6_IS_ADDR_UNSPECIFIED)
* [IN6\_IS\_ADDR\_V4COMPAT](/core/sys/posix/#IN6_IS_ADDR_V4COMPAT)
* [IN6\_IS\_ADDR\_V4MAPPED](/core/sys/posix/#IN6_IS_ADDR_V4MAPPED)

### [in\_addr ¶](#in_addr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L36)

```
in_addr :: struct {
	s_addr: u32be,
}
```

##### Related Procedures With Parameters

* [inet\_ntoa](/core/sys/posix/#inet_ntoa)

### [in\_addr\_t ¶](#in_addr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L20)

```
in_addr_t :: u32be
```

### [in\_port\_t ¶](#in_port_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L19)

```
in_port_t :: u16be
```

### [ino\_t ¶](#ino_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L281)

```
ino_t :: distinct u64
```

### [iovec ¶](#iovec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_uio.odin#L36)

```
iovec :: struct {
	iov_base: rawptr,
	// [PSX] base address of I/O memory region 
	iov_len:  uint,
}
```

##### Related Procedures With Parameters

* [readv](/core/sys/posix/#readv)
* [writev](/core/sys/posix/#writev)

### [ipc\_perm ¶](#ipc_perm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L44)

```
ipc_perm :: struct {
	uid:  uid_t,
	// [PSX] owner's user ID 
	gid:  gid_t,
	// [PSX] owner's group ID 
	cuid: uid_t,
	// [PSX] creator's user ID 
	cgid: gid_t,
	// [PSX] creator's group ID 
	mode: bit_set[Mode_Bits; _mode_t],
	// [PSX] read/write perms 
	_seq: u16,
	_key: key_t,
}
```

### [ipv6\_mreq ¶](#ipv6_mreq) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L116)

```
ipv6_mreq :: struct {
	ipv6mr_multiaddr: in6_addr,
	// [PSX] IPv6 multicast address 
	ipv6mr_interface: u32,
}
```

### [itimerval ¶](#itimerval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L72)

```
itimerval :: struct {
	it_interval: timeval,
	// [PSX] timer interval 
	it_value:    timeval,
}
```

##### Related Procedures With Parameters

* [getitimer](/core/sys/posix/#getitimer)
* [setitimer](/core/sys/posix/#setitimer)

### [jmp\_buf ¶](#jmp_buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/setjmp_libc.odin#L8)

```
jmp_buf :: libc.jmp_buf
```

### [key\_t ¶](#key_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L42)

```
key_t :: distinct i32
```

##### Related Procedures With Parameters

* [msgget](/core/sys/posix/#msgget)
* [semget](/core/sys/posix/#semget)
* [shmget](/core/sys/posix/#shmget)



##### Related Procedures With Returns

* [ftok](/core/sys/posix/#ftok)

##### Related Constants

* [IPC\_PRIVATE](/core/sys/posix/#IPC_PRIVATE)

### [lconv ¶](#lconv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/locale.odin#L9)

```
lconv :: libc.lconv
```

### [ldiv\_t ¶](#ldiv_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L92)

```
ldiv_t :: libc.ldiv_t
```

### [linger ¶](#linger) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L471)

```
linger :: struct {
	l_onoff:  i32,
	// [PSX] indicates whether linger option is enabled 
	l_linger: i32,
}
```

### [lldiv\_t ¶](#lldiv_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L93)

```
lldiv_t :: libc.lldiv_t
```

### [mode\_t ¶](#mode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L181)

```
mode_t :: bit_set[Mode_Bits; _mode_t]
```

##### Related Procedures With Parameters

* [S\_ISBLK](/core/sys/posix/#S_ISBLK)
* [S\_ISCHR](/core/sys/posix/#S_ISCHR)
* [S\_ISDIR](/core/sys/posix/#S_ISDIR)
* [S\_ISFIFO](/core/sys/posix/#S_ISFIFO)
* [S\_ISLNK](/core/sys/posix/#S_ISLNK)
* [S\_ISREG](/core/sys/posix/#S_ISREG)
* [S\_ISSOCK](/core/sys/posix/#S_ISSOCK)
* [chmod](/core/sys/posix/#chmod)
* [creat](/core/sys/posix/#creat)
* [fchmod](/core/sys/posix/#fchmod)
* [fchmodat](/core/sys/posix/#fchmodat)
* [mkdir](/core/sys/posix/#mkdir)
* [mkdirat](/core/sys/posix/#mkdirat)
* [mkfifo](/core/sys/posix/#mkfifo)
* [mkfifoat](/core/sys/posix/#mkfifoat)
* [mknod](/core/sys/posix/#mknod)
* [mknodat](/core/sys/posix/#mknodat)
* [umask](/core/sys/posix/#umask)

##### Related Constants

* [S\_IFBLK](/core/sys/posix/#S_IFBLK)
* [S\_IFCHR](/core/sys/posix/#S_IFCHR)
* [S\_IFDIR](/core/sys/posix/#S_IFDIR)
* [S\_IFIFO](/core/sys/posix/#S_IFIFO)
* [S\_IFLNK](/core/sys/posix/#S_IFLNK)
* [S\_IFMT](/core/sys/posix/#S_IFMT)
* [S\_IFREG](/core/sys/posix/#S_IFREG)
* [S\_IFSOCK](/core/sys/posix/#S_IFSOCK)
* [S\_IRWXG](/core/sys/posix/#S_IRWXG)
* [S\_IRWXO](/core/sys/posix/#S_IRWXO)
* [S\_IRWXU](/core/sys/posix/#S_IRWXU)

### [msghdr ¶](#msghdr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L418)

```
msghdr :: struct {
	msg_name:       rawptr,
	// [PSX] optional address 
	msg_namelen:    socklen_t,
	// [PSX] size of address 
	msg_iov:        [^]iovec,
	// [PSX] scatter/gather array 
	msg_iovlen:     i32,
	// [PSX] members in msg_iov 
	msg_control:    rawptr,
	// [PSX] ancillary data 
	msg_controllen: socklen_t,
	// [PSX] ancillary data buffer length 
	msg_flags:      bit_set[Msg_Flag_Bits; i32],
}
```

##### Related Procedures With Parameters

* [CMSG\_FIRSTHDR](/core/sys/posix/#CMSG_FIRSTHDR)
* [CMSG\_NXTHDR](/core/sys/posix/#CMSG_NXTHDR)
* [recvmsg](/core/sys/posix/#recvmsg)
* [sendmsg](/core/sys/posix/#sendmsg)

### [msglen\_t ¶](#msglen_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L64)

```
msglen_t :: distinct u64
```

### [msgqnum\_t ¶](#msgqnum_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L63)

```
msgqnum_t :: distinct u64
```

### [msqid\_ds ¶](#msqid_ds) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L68)

```
msqid_ds :: struct {
	msg_perm:   ipc_perm,
	// [PSX] operation permission structure 
	msg_first:  i32,
	msg_last:   i32,
	msg_cbytes: msglen_t,
	msg_qnum:   msgqnum_t,
	// [PSX] number of messages currently on queue 
	msg_qbytes: msglen_t,
	// [PSX] maximum number of bytes allowed on queue 
	msg_lspid:  pid_t,
	// [PSX] process ID of last msgsnd() 
	msg_lrpid:  pid_t,
	// [PSX] process ID of last msgrcv() 
	msg_stime:  libc.time_t,
	// [PSX] time of last msgsnd() 
	msg_pad1:   i32,
	msg_rtime:  libc.time_t,
	// [PSX] time of last msgrcv() 
	msg_pad2:   i32,
	msg_ctime:  libc.time_t,
	// [PSX] time of last change 
	msg_pad3:   i32,
	msg_pad4:   [4]i32,
}
```

##### Related Procedures With Parameters

* [msgctl](/core/sys/posix/#msgctl)

### [netent ¶](#netent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L332)

```
netent :: struct {
	n_name:     cstring,
	// [PSX] official name of net 
	n_aliases:  [^]cstring `fmt:"v,0"`,
	// [PSX] alias list 
	n_addrtype: AF,
	// [PSX] net address type 
	n_net:      u32,
}
```

##### Related Procedures With Returns

* [getnetbyaddr](/core/sys/posix/#getnetbyaddr)
* [getnetbyname](/core/sys/posix/#getnetbyname)
* [getnetent](/core/sys/posix/#getnetent)

### [nfds\_t ¶](#nfds_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L31)

```
nfds_t :: u32
```

##### Related Procedures With Parameters

* [alarm](/core/sys/posix/#alarm)
* [getnetbyaddr](/core/sys/posix/#getnetbyaddr)
* [if\_indextoname](/core/sys/posix/#if_indextoname)
* [initstate](/core/sys/posix/#initstate)
* [poll](/core/sys/posix/#poll)
* [rand\_r](/core/sys/posix/#rand_r)
* [sleep](/core/sys/posix/#sleep)
* [srandom](/core/sys/posix/#srandom)



##### Related Procedures With Returns

* [if\_nametoindex](/core/sys/posix/#if_nametoindex)

### [nl\_item ¶](#nl_item) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L88)

```
nl_item :: enum nl_item_t {
	CODESET     = 0, 
	D_T_FMT     = 1, 
	D_FMT       = 2, 
	T_FMT       = 3, 
	T_FMT_AMPM  = 4, 
	AM_STR      = 5, 
	PM_STR      = 6, 
	DAY_1       = 7, 
	DAY_2       = 8, 
	DAY_3       = 9, 
	DAY_4       = 10, 
	DAY_5       = 11, 
	DAY_6       = 12, 
	DAY_7       = 13, 
	ABDAY_1     = 14, 
	ABDAY_2     = 15, 
	ABDAY_3     = 16, 
	ABDAY_4     = 17, 
	ABDAY_5     = 18, 
	ABDAY_6     = 19, 
	ABDAY_7     = 20, 
	MON_1       = 21, 
	MON_2       = 22, 
	MON_3       = 23, 
	MON_4       = 24, 
	MON_5       = 25, 
	MON_6       = 26, 
	MON_7       = 27, 
	MON_8       = 28, 
	MON_9       = 29, 
	MON_10      = 30, 
	MON_11      = 31, 
	MON_12      = 32, 
	ABMON_1     = 33, 
	ABMON_2     = 34, 
	ABMON_3     = 35, 
	ABMON_4     = 36, 
	ABMON_5     = 37, 
	ABMON_6     = 38, 
	ABMON_7     = 39, 
	ABMON_8     = 40, 
	ABMON_9     = 41, 
	ABMON_10    = 42, 
	ABMON_11    = 43, 
	ABMON_12    = 44, 
	ERA         = 45, 
	ERA_D_FMT   = 46, 
	ERA_D_T_FMT = 47, 
	ERA_T_FMT   = 48, 
	ALT_DIGITS  = 49, 
	RADIXCHAR   = 50, 
	THOUSEP     = 51, 
	YESEXPR     = 52, 
	NOEXPR      = 53, 
	CRNCYSTR    = 56, 
}
```

##### Related Procedures With Parameters

* [nl\_langinfo](/core/sys/posix/#nl_langinfo)

### [nl\_item\_t ¶](#nl_item_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L149)

```
nl_item_t :: distinct i32
```

 

NOTE: declared with `_t` so we can enumerate the real `nl_info`.

### [nlink\_t ¶](#nlink_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L277)

```
nlink_t :: distinct u16
```

### [off\_t ¶](#off_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L153)

```
off_t :: distinct i64
```

##### Related Procedures With Parameters

* [fseeko](/core/sys/posix/#fseeko)
* [ftruncate](/core/sys/posix/#ftruncate)
* [lockf](/core/sys/posix/#lockf)
* [lseek](/core/sys/posix/#lseek)
* [mmap](/core/sys/posix/#mmap)
* [pread](/core/sys/posix/#pread)
* [pwrite](/core/sys/posix/#pwrite)
* [truncate](/core/sys/posix/#truncate)



##### Related Procedures With Returns

* [ftello](/core/sys/posix/#ftello)

### [passwd ¶](#passwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L138)

```
passwd :: struct {
	pw_name:   cstring,
	// [PSX] user name 
	pw_passwd: cstring,
	// encrypted password 
	pw_uid:    uid_t,
	// [PSX] user uid 
	pw_gid:    gid_t,
	// [PSX] user gid 
	pw_change: libc.time_t,
	// password change time 
	pw_class:  cstring,
	// user access class 
	pw_gecos:  cstring,
	// Honeywell login info 
	pw_dir:    cstring,
	// [PSX] home directory 
	pw_shell:  cstring,
	// [PSX] default shell 
	pw_expire: libc.time_t,
}
```

##### Related Procedures With Parameters

* [getpwnam\_r](/core/sys/posix/#getpwnam_r)
* [getpwuid\_r](/core/sys/posix/#getpwuid_r)



##### Related Procedures With Returns

* [getpwent](/core/sys/posix/#getpwent)
* [getpwnam](/core/sys/posix/#getpwnam)
* [getpwuid](/core/sys/posix/#getpwuid)

### [pid\_t ¶](#pid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L154)

```
pid_t :: distinct i32
```

##### Related Procedures With Parameters

* [getpgid](/core/sys/posix/#getpgid)
* [getsid](/core/sys/posix/#getsid)
* [kill](/core/sys/posix/#kill)
* [killpg](/core/sys/posix/#killpg)
* [posix\_spawn](/core/sys/posix/#posix_spawn)
* [posix\_spawnp](/core/sys/posix/#posix_spawnp)
* [setpgid](/core/sys/posix/#setpgid)
* [tcsetpgrp](/core/sys/posix/#tcsetpgrp)
* [waitpid](/core/sys/posix/#waitpid)



##### Related Procedures With Returns

* [fork](/core/sys/posix/#fork)
* [getpgrp](/core/sys/posix/#getpgrp)
* [getpid](/core/sys/posix/#getpid)
* [getppid](/core/sys/posix/#getppid)
* [setpgrp](/core/sys/posix/#setpgrp)
* [setsid](/core/sys/posix/#setsid)
* [tcgetpgrp](/core/sys/posix/#tcgetpgrp)
* [tcgetsid](/core/sys/posix/#tcgetsid)
* [wait](/core/sys/posix/#wait)

### [pollfd ¶](#pollfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L62)

```
pollfd :: struct {
	fd:      FD,
	// [PSX] the following descriptor being polled 
	events:  bit_set[Poll_Event_Bits; i16],
	// [PSX] the input event flags 
	revents: bit_set[Poll_Event_Bits; i16],
}
```

##### Related Procedures With Parameters

* [poll](/core/sys/posix/#poll)

### [protoent ¶](#protoent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L339)

```
protoent :: struct {
	p_name:    cstring,
	// [PSX] official protocol name 
	p_aliases: [^]cstring `fmt:"v,0"`,
	// [PSX] alias list 
	p_proto:   i32,
}
```

##### Related Procedures With Returns

* [getprotobyname](/core/sys/posix/#getprotobyname)
* [getprotobynumber](/core/sys/posix/#getprotobynumber)
* [getprotoent](/core/sys/posix/#getprotoent)

### [pthread\_attr\_t ¶](#pthread_attr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L405)

```
pthread_attr_t :: struct {
	__sig:    i64,
	__opaque: [56]u8,
}
```

##### Related Procedures With Parameters

* [pthread\_attr\_destroy](/core/sys/posix/#pthread_attr_destroy)
* [pthread\_attr\_getdetachstate](/core/sys/posix/#pthread_attr_getdetachstate)
* [pthread\_attr\_getguardsize](/core/sys/posix/#pthread_attr_getguardsize)
* [pthread\_attr\_getinheritsched](/core/sys/posix/#pthread_attr_getinheritsched)
* [pthread\_attr\_getschedparam](/core/sys/posix/#pthread_attr_getschedparam)
* [pthread\_attr\_getschedpolicy](/core/sys/posix/#pthread_attr_getschedpolicy)
* [pthread\_attr\_getscope](/core/sys/posix/#pthread_attr_getscope)
* [pthread\_attr\_getstack](/core/sys/posix/#pthread_attr_getstack)
* [pthread\_attr\_getstacksize](/core/sys/posix/#pthread_attr_getstacksize)
* [pthread\_attr\_init](/core/sys/posix/#pthread_attr_init)
* [pthread\_attr\_setdetachstate](/core/sys/posix/#pthread_attr_setdetachstate)
* [pthread\_attr\_setguardsize](/core/sys/posix/#pthread_attr_setguardsize)
* [pthread\_attr\_setinheritsched](/core/sys/posix/#pthread_attr_setinheritsched)
* [pthread\_attr\_setschedparam](/core/sys/posix/#pthread_attr_setschedparam)
* [pthread\_attr\_setschedpolicy](/core/sys/posix/#pthread_attr_setschedpolicy)
* [pthread\_attr\_setscope](/core/sys/posix/#pthread_attr_setscope)
* [pthread\_attr\_setstack](/core/sys/posix/#pthread_attr_setstack)
* [pthread\_attr\_setstacksize](/core/sys/posix/#pthread_attr_setstacksize)
* [pthread\_create](/core/sys/posix/#pthread_create)

### [pthread\_cond\_t ¶](#pthread_cond_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L417)

```
pthread_cond_t :: struct {
	__sig:    i64,
	__opaque: [40]u8,
}
```

### [pthread\_key\_t ¶](#pthread_key_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L410)

```
pthread_key_t :: distinct u64
```

##### Related Procedures With Parameters

* [pthread\_getspecific](/core/sys/posix/#pthread_getspecific)
* [pthread\_key\_create](/core/sys/posix/#pthread_key_create)
* [pthread\_key\_delete](/core/sys/posix/#pthread_key_delete)
* [pthread\_setspecific](/core/sys/posix/#pthread_setspecific)

### [pthread\_mutex\_t ¶](#pthread_mutex_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L412)

```
pthread_mutex_t :: struct {
	__sig:    i64,
	__opaque: [56]u8,
}
```

### [pthread\_t ¶](#pthread_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L403)

```
pthread_t :: distinct rawptr
```

##### Related Procedures With Parameters

* [pthread\_cancel](/core/sys/posix/#pthread_cancel)
* [pthread\_create](/core/sys/posix/#pthread_create)
* [pthread\_detach](/core/sys/posix/#pthread_detach)
* [pthread\_equal](/core/sys/posix/#pthread_equal)
* [pthread\_getcpuclockid](/core/sys/posix/#pthread_getcpuclockid)
* [pthread\_getschedparam](/core/sys/posix/#pthread_getschedparam)
* [pthread\_join](/core/sys/posix/#pthread_join)
* [pthread\_kill](/core/sys/posix/#pthread_kill)
* [pthread\_setschedparam](/core/sys/posix/#pthread_setschedparam)
* [pthread\_setschedprio](/core/sys/posix/#pthread_setschedprio)



##### Related Procedures With Returns

* [pthread\_self](/core/sys/posix/#pthread_self)

### [pton\_result ¶](#pton_result) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/arpa_inet.odin#L56)

```
pton_result :: enum i32 {
	AFNOSUPPORT = -1, 
	INVALID     = 0, 
	SUCCESS     = 1, 
}
```

##### Related Procedures With Returns

* [inet\_pton](/core/sys/posix/#inet_pton)

### [result ¶](#result) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/posix.odin#L58)

```
result :: enum i32 {
	// Use `errno` and `strerror` for more information.
	FAIL = -1, 
	// Operation succeeded.
	OK   = 0, 
}
```

##### Related Procedures With Returns

* [access](/core/sys/posix/#access)
* [bind](/core/sys/posix/#bind)
* [cfsetispeed](/core/sys/posix/#cfsetispeed)
* [cfsetospeed](/core/sys/posix/#cfsetospeed)
* [chdir](/core/sys/posix/#chdir)
* [chmod](/core/sys/posix/#chmod)
* [chown](/core/sys/posix/#chown)
* [clock\_getres](/core/sys/posix/#clock_getres)
* [clock\_gettime](/core/sys/posix/#clock_gettime)
* [clock\_settime](/core/sys/posix/#clock_settime)
* [close](/core/sys/posix/#close)
* [closedir](/core/sys/posix/#closedir)
* [connect](/core/sys/posix/#connect)
* [faccessat](/core/sys/posix/#faccessat)
* [fchdir](/core/sys/posix/#fchdir)
* [fchmod](/core/sys/posix/#fchmod)
* [fchmodat](/core/sys/posix/#fchmodat)
* [fchown](/core/sys/posix/#fchown)
* [fchownat](/core/sys/posix/#fchownat)
* [fdatasync](/core/sys/posix/#fdatasync)
* [fseeko](/core/sys/posix/#fseeko)
* [fstat](/core/sys/posix/#fstat)
* [fstatat](/core/sys/posix/#fstatat)
* [fstatvfs](/core/sys/posix/#fstatvfs)
* [fsync](/core/sys/posix/#fsync)
* [ftruncate](/core/sys/posix/#ftruncate)
* [futimens](/core/sys/posix/#futimens)
* [gethostname](/core/sys/posix/#gethostname)
* [getitimer](/core/sys/posix/#getitimer)
* [getpeername](/core/sys/posix/#getpeername)
* [getrlimit](/core/sys/posix/#getrlimit)
* [getrusage](/core/sys/posix/#getrusage)
* [getsockname](/core/sys/posix/#getsockname)
* [getsockopt](/core/sys/posix/#getsockopt)
* [gettimeofday](/core/sys/posix/#gettimeofday)
* [grantpt](/core/sys/posix/#grantpt)
* [iconv\_close](/core/sys/posix/#iconv_close)
* [kill](/core/sys/posix/#kill)
* [killpg](/core/sys/posix/#killpg)
* [lchown](/core/sys/posix/#lchown)
* [link](/core/sys/posix/#link)
* [linkat](/core/sys/posix/#linkat)
* [listen](/core/sys/posix/#listen)
* [lockf](/core/sys/posix/#lockf)
* [lstat](/core/sys/posix/#lstat)
* [mkdir](/core/sys/posix/#mkdir)
* [mkdirat](/core/sys/posix/#mkdirat)
* [mkfifo](/core/sys/posix/#mkfifo)
* [mkfifoat](/core/sys/posix/#mkfifoat)
* [mknod](/core/sys/posix/#mknod)
* [mknodat](/core/sys/posix/#mknodat)
* [mlock](/core/sys/posix/#mlock)
* [mlockall](/core/sys/posix/#mlockall)
* [mprotect](/core/sys/posix/#mprotect)
* [msgctl](/core/sys/posix/#msgctl)
* [msgsnd](/core/sys/posix/#msgsnd)
* [msync](/core/sys/posix/#msync)
* [munlock](/core/sys/posix/#munlock)
* [munlockall](/core/sys/posix/#munlockall)
* [munmap](/core/sys/posix/#munmap)
* [nanosleep](/core/sys/posix/#nanosleep)
* [pipe](/core/sys/posix/#pipe)
* [raise](/core/sys/posix/#raise)
* [renameat](/core/sys/posix/#renameat)
* [rmdir](/core/sys/posix/#rmdir)
* [sched\_yield](/core/sys/posix/#sched_yield)
* [semop](/core/sys/posix/#semop)
* [setegid](/core/sys/posix/#setegid)
* [setenv](/core/sys/posix/#setenv)
* [seteuid](/core/sys/posix/#seteuid)
* [setgid](/core/sys/posix/#setgid)
* [setitimer](/core/sys/posix/#setitimer)
* [setpgid](/core/sys/posix/#setpgid)
* [setpriority](/core/sys/posix/#setpriority)
* [setregid](/core/sys/posix/#setregid)
* [setreuid](/core/sys/posix/#setreuid)
* [setrlimit](/core/sys/posix/#setrlimit)
* [setsockopt](/core/sys/posix/#setsockopt)
* [setuid](/core/sys/posix/#setuid)
* [shm\_unlink](/core/sys/posix/#shm_unlink)
* [shmctl](/core/sys/posix/#shmctl)
* [shmdt](/core/sys/posix/#shmdt)
* [shutdown](/core/sys/posix/#shutdown)
* [sigaction](/core/sys/posix/#sigaction)
* [sigaddset](/core/sys/posix/#sigaddset)
* [sigaltstack](/core/sys/posix/#sigaltstack)
* [sighold](/core/sys/posix/#sighold)
* [sigignore](/core/sys/posix/#sigignore)
* [siginterrupt](/core/sys/posix/#siginterrupt)
* [sigpause](/core/sys/posix/#sigpause)
* [sigpending](/core/sys/posix/#sigpending)
* [sigprocmask](/core/sys/posix/#sigprocmask)
* [sigrelse](/core/sys/posix/#sigrelse)
* [sigsuspend](/core/sys/posix/#sigsuspend)
* [socketpair](/core/sys/posix/#socketpair)
* [stat](/core/sys/posix/#stat)
* [statvfs](/core/sys/posix/#statvfs)
* [symlink](/core/sys/posix/#symlink)
* [symlinkat](/core/sys/posix/#symlinkat)
* [tcdrain](/core/sys/posix/#tcdrain)
* [tcflow](/core/sys/posix/#tcflow)
* [tcflush](/core/sys/posix/#tcflush)
* [tcgetattr](/core/sys/posix/#tcgetattr)
* [tcsendbreak](/core/sys/posix/#tcsendbreak)
* [tcsetattr](/core/sys/posix/#tcsetattr)
* [tcsetpgrp](/core/sys/posix/#tcsetpgrp)
* [truncate](/core/sys/posix/#truncate)
* [unlink](/core/sys/posix/#unlink)
* [unlinkat](/core/sys/posix/#unlinkat)
* [unlockpt](/core/sys/posix/#unlockpt)
* [unsetenv](/core/sys/posix/#unsetenv)
* [utime](/core/sys/posix/#utime)
* [utimensat](/core/sys/posix/#utimensat)
* [utimes](/core/sys/posix/#utimes)

### [rlim\_t ¶](#rlim_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L108)

```
rlim_t :: distinct u64
```

##### Related Constants

* [RLIM\_INFINITY](/core/sys/posix/#RLIM_INFINITY)
* [RLIM\_SAVED\_CUR](/core/sys/posix/#RLIM_SAVED_CUR)
* [RLIM\_SAVED\_MAX](/core/sys/posix/#RLIM_SAVED_MAX)

### [rlimit ¶](#rlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L125)

```
rlimit :: struct {
	rlim_cur: rlim_t,
	// [PSX] the current (soft) limit 
	rlim_max: rlim_t,
}
```

##### Related Procedures With Parameters

* [getrlimit](/core/sys/posix/#getrlimit)
* [setrlimit](/core/sys/posix/#setrlimit)

### [rusage ¶](#rusage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L130)

```
rusage :: struct {
	ru_utime:    timeval,
	// [PSX] user time used 
	ru_stime:    timeval,
	ru_maxrss:   i64,
	// max resident set size (PL) 
	ru_ixrss:    i64,
	// integral shared memory size (NU) 
	ru_idrss:    i64,
	// integral unshared data (NU) 
	ru_isrss:    i64,
	// integral unshared stack (NU) 
	ru_minflt:   i64,
	// page reclaims (NU) 
	ru_majflt:   i64,
	// page faults (NU) 
	ru_nswap:    i64,
	// swaps (NU) 
	ru_inblock:  i64,
	// block input operations (atomic) 
	ru_outblock: i64,
	// block output operations (atomic) 
	ru_msgsnd:   i64,
	// messages sent (atomic) 
	ru_msgrcv:   i64,
	// messages received (atomic) 
	ru_nsignals: i64,
	// signals received (atomic) 
	ru_nvcsw:    i64,
	// voluntary context switches (atomic) 
	ru_nivcsw:   i64,
}
```

##### Related Procedures With Parameters

* [getrusage](/core/sys/posix/#getrusage)

### [sa\_family\_t ¶](#sa_family_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L240)

```
sa_family_t :: enum _sa_family_t {
	// Unspecified.
	UNSPEC = 0, 
	// Internet domain sockets for use with IPv4 addresses.
	INET   = 2, 
	// Internet domain sockets for use with IPv6 addresses.
	INET6  = 30, 
	// UNIX domain sockets.
	UNIX   = 1, 
}
```

### [sched\_param ¶](#sched_param) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L422)

```
sched_param :: struct {
	sched_priority: i32,
	// [PSX] process or thread execution scheduling priority 
	_:              [4]u8,
}
```

##### Related Procedures With Parameters

* [pthread\_attr\_getschedparam](/core/sys/posix/#pthread_attr_getschedparam)
* [pthread\_attr\_setschedparam](/core/sys/posix/#pthread_attr_setschedparam)
* [pthread\_getschedparam](/core/sys/posix/#pthread_getschedparam)
* [pthread\_setschedparam](/core/sys/posix/#pthread_setschedparam)

### [sembuf ¶](#sembuf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L124)

```
sembuf :: struct {
	sem_num: u16,
	// [PSX] semaphore number 
	sem_op:  i16,
	// [PSX] semaphore operation 
	sem_flg: i16,
}
```

##### Related Procedures With Parameters

* [semop](/core/sys/posix/#semop)

### [semid\_ds ¶](#semid_ds) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L86)

```
semid_ds :: struct {
	sem_perm:  ipc_perm,
	// [PSX] operation permission structure 
	sem_base:  i32,
	// 32 bit base ptr for semaphore set 
	sem_nsems: u16,
	// [PSX] number of semaphores in set 
	sem_otime: libc.time_t,
	// [PSX] last semop() 
	sem_pad1:  i32,
	sem_ctime: libc.time_t,
	// [PSX] last time changed by semctl() 
	sem_pad2:  i32,
	sem_pad3:  [4]i32,
}
```

### [semun ¶](#semun) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L61)

```
semun :: struct #raw_union {
	val:   i32,
	buf:   ^semid_ds,
	array: [^]u16,
}
```

### [servent ¶](#servent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L345)

```
servent :: struct {
	s_name:    cstring,
	// [PSX] official service name 
	s_aliases: [^]cstring `fmt:"v,0"`,
	// [PSX] alias list 
	s_port:    i32,
	// [PSX] port # 
	s_proto:   cstring,
}
```

##### Related Procedures With Returns

* [getservbyname](/core/sys/posix/#getservbyname)
* [getservbyport](/core/sys/posix/#getservbyport)
* [getservent](/core/sys/posix/#getservent)

### [shmatt\_t ¶](#shmatt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L69)

```
shmatt_t :: distinct u16
```

### [shmid\_ds ¶](#shmid_ds) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L71)

```
shmid_ds :: struct {
	shm_perm:     ipc_perm,
	// [PSX] operation permission structure 
	shm_segsz:    uint,
	// [PSX] size of segment in bytes 
	shm_lpid:     pid_t,
	// [PSX] process ID of last shared memory operation 
	shm_cpid:     pid_t,
	// [PSX] process ID of creator 
	shm_nattch:   shmatt_t,
	// [PSX] number of current attaches 
	shm_atime:    libc.time_t,
	// [PSX] time of last shmat() 
	shm_dtime:    libc.time_t,
	// [PSX] time of last shmdt() 
	shm_ctime:    libc.time_t,
	// [PSX] time of last change by shmctl() 
	shm_internal: rawptr,
}
```

##### Related Procedures With Parameters

* [shmctl](/core/sys/posix/#shmctl)

### [sigaction\_t ¶](#sigaction_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L405)

```
sigaction_t :: struct {
	using _:  struct #raw_union {
		sa_handler:   proc "c" (Signal),
		// [PSX] signal-catching function or one of the SIG_IGN or SIG_DFL 
		sa_sigaction: proc "c" (Signal, ^siginfo_t, rawptr),
	},
	sa_mask:  sigset_t,
	// [PSX] set of signals to be blocked during execution of the signal handling function 
	sa_flags: bit_set[SA_Flags_Bits; i32],
}
```

##### Related Procedures With Parameters

* [sigaction](/core/sys/posix/#sigaction)

### [siginfo\_t ¶](#siginfo_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L438)

```
siginfo_t :: struct {
	si_signo:  Signal,
	// [PSX] signal number 
	si_errno:  Errno,
	// [PSX] errno value associated with this signal 
	si_code:   struct #raw_union {
		// [PSX] specific more detailed codes per signal 
		ill:  ILL_Code,
		fpe:  FPE_Code,
		segv: SEGV_Code,
		bus:  BUS_Code,
		trap: TRAP_Code,
		chld: CLD_Code,
		poll: POLL_Code,
		any:  Any_Code,
	},
	si_pid:    pid_t,
	// [PSX] sending process ID 
	si_uid:    uid_t,
	// [PSX] real user ID of sending process 
	si_status: i32,
	// [PSX] exit value or signal 
	si_addr:   rawptr,
	// [PSX] address of faulting instruction 
	si_value:  sigval,
	// [PSX] signal value 
	si_band:   i64,
	// [PSX] band event for SIGPOLL 
	__pad:     [7]u64,
}
```

##### Related Procedures With Parameters

* [waitid](/core/sys/posix/#waitid)

### [sigjmp\_buf ¶](#sigjmp_buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/setjmp.odin#L46)

```
sigjmp_buf :: struct #align (16) {
	_: [4096]u8,
}
```

##### Related Procedures With Parameters

* [siglongjmp](/core/sys/posix/#siglongjmp)
* [sigsetjmp](/core/sys/posix/#sigsetjmp)

### [sigset\_t ¶](#sigset_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L376)

```
sigset_t :: distinct u32
```

##### Related Procedures With Parameters

* [pselect](/core/sys/posix/#pselect)
* [pthread\_sigmask](/core/sys/posix/#pthread_sigmask)
* [sigaddset](/core/sys/posix/#sigaddset)
* [sigdelset](/core/sys/posix/#sigdelset)
* [sigemptyset](/core/sys/posix/#sigemptyset)
* [sigfillset](/core/sys/posix/#sigfillset)
* [sigismember](/core/sys/posix/#sigismember)
* [sigpending](/core/sys/posix/#sigpending)
* [sigprocmask](/core/sys/posix/#sigprocmask)
* [sigsuspend](/core/sys/posix/#sigsuspend)
* [sigwait](/core/sys/posix/#sigwait)

### [sigval ¶](#sigval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L200)

```
sigval :: struct #raw_union {
	sigval_int: i32,
	// [PSX] integer signal value 
	sigval_ptr: rawptr,
}
```

### [sockaddr ¶](#sockaddr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L353)

```
sockaddr :: struct {
	sa_len:    u8,
	// total length 
	sa_family: sa_family_t,
	// [PSX] address family 
	sa_data:   [14]u8,
}
```

##### Related Procedures With Parameters

* [accept](/core/sys/posix/#accept)
* [bind](/core/sys/posix/#bind)
* [connect](/core/sys/posix/#connect)
* [getnameinfo](/core/sys/posix/#getnameinfo)
* [getpeername](/core/sys/posix/#getpeername)
* [getsockname](/core/sys/posix/#getsockname)
* [recvfrom](/core/sys/posix/#recvfrom)
* [sendto](/core/sys/posix/#sendto)

### [sockaddr\_in ¶](#sockaddr_in) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L99)

```
sockaddr_in :: struct {
	sin_len:    u8,
	sin_family: sa_family_t,
	// [PSX] AF_INET (but a smaller size) 
	sin_port:   u16be,
	// [PSX] port number 
	sin_addr:   in_addr,
	// [PSX] IP address 
	sin_zero:   [8]u8,
}
```

### [sockaddr\_in6 ¶](#sockaddr_in6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L107)

```
sockaddr_in6 :: struct {
	sin6_len:      u8,
	sin6_family:   sa_family_t,
	// [PSX] AF_INET6 (but a smaller size) 
	sin6_port:     u16be,
	// [PSX] port number 
	sin6_flowinfo: u32,
	// [PSX] IPv6 traffic class and flow information 
	sin6_addr:     in6_addr,
	// [PSX] IPv6 address 
	sin6_scope_id: u32,
}
```

### [sockaddr\_storage ¶](#sockaddr_storage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L410)

```
sockaddr_storage :: struct {
	ss_len:     u8,
	// address length 
	ss_family:  sa_family_t,
	// [PSX] address family 
	__ss_pad1:  [6]u8,
	__ss_align: i64,
	// force structure storage alignment 
	__ss_pad2:  [112]u8,
}
```

### [sockaddr\_un ¶](#sockaddr_un) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_un.odin#L10)

```
sockaddr_un :: struct {
	sun_len:    u8,
	// sockaddr len including nil 
	sun_family: sa_family_t,
	// [PSX] address family 
	sun_path:   [104]u8,
}
```

### [socklen\_t ¶](#socklen_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L333)

```
socklen_t :: distinct u32
```

##### Related Procedures With Parameters

* [accept](/core/sys/posix/#accept)
* [bind](/core/sys/posix/#bind)
* [connect](/core/sys/posix/#connect)
* [getnameinfo](/core/sys/posix/#getnameinfo)
* [getpeername](/core/sys/posix/#getpeername)
* [getsockname](/core/sys/posix/#getsockname)
* [getsockopt](/core/sys/posix/#getsockopt)
* [inet\_ntop](/core/sys/posix/#inet_ntop)
* [recvfrom](/core/sys/posix/#recvfrom)
* [sendto](/core/sys/posix/#sendto)
* [setsockopt](/core/sys/posix/#setsockopt)

### [speed\_t ¶](#speed_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L210)

```
speed_t :: enum _speed_t {
	B0     = 0, 
	B50    = 50, 
	B75    = 75, 
	B110   = 110, 
	B134   = 134, 
	B150   = 150, 
	B200   = 200, 
	B300   = 300, 
	B600   = 600, 
	B1200  = 1200, 
	B1800  = 1800, 
	B2400  = 2400, 
	B4800  = 4800, 
	B9600  = 9600, 
	B19200 = 19200, 
	B38400 = 38400, 
}
```

##### Related Procedures With Parameters

* [cfsetispeed](/core/sys/posix/#cfsetispeed)
* [cfsetospeed](/core/sys/posix/#cfsetospeed)



##### Related Procedures With Returns

* [cfgetispeed](/core/sys/posix/#cfgetispeed)
* [cfgetospeed](/core/sys/posix/#cfgetospeed)

### [stack\_t ¶](#stack_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L432)

```
stack_t :: struct {
	ss_sp:    rawptr,
	// [PSX] stack base or pointer 
	ss_size:  uint,
	// [PSX] stack size 
	ss_flags: bit_set[SS_Flag_Bits; i32],
}
```

##### Related Procedures With Parameters

* [sigaltstack](/core/sys/posix/#sigaltstack)

### [stat\_t ¶](#stat_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L283)

```
stat_t :: struct {
	st_dev:           dev_t,
	// [PSX] ID of device containing file 
	st_mode:          bit_set[Mode_Bits; _mode_t],
	// [PSX] mode of file 
	st_nlink:         nlink_t,
	// [PSX] number of hard links 
	st_ino:           ino_t,
	// [PSX] file serial number 
	st_uid:           uid_t,
	// [PSX] user ID of the file 
	st_gid:           gid_t,
	// [PSX] group ID of the file 
	st_rdev:          dev_t,
	// [PSX] device ID 
	st_atim:          libc.timespec,
	// [PSX] time of last access 
	st_mtim:          libc.timespec,
	// [PSX] time of last data modification 
	st_ctim:          libc.timespec,
	// [PSX] time of last status change 
	st_birthtimespec: libc.timespec,
	// time of file creation(birth) 
	st_size:          off_t,
	// [PSX] file size, in bytes 
	st_blocks:        blkcnt_t,
	// [PSX] blocks allocated for file 
	st_blksize:       blksize_t,
	// [PSX] optimal blocksize for I/O 
	st_flags:         u32,
	// user defined flags for file 
	st_gen:           u32,
	// file generation number 
	st_lspare:        i32,
	// RESERVED 
	st_qspare:        [2]i64,
}
```

##### Related Procedures With Parameters

* [fstat](/core/sys/posix/#fstat)
* [fstatat](/core/sys/posix/#fstatat)
* [lstat](/core/sys/posix/#lstat)
* [stat](/core/sys/posix/#stat)

### [statvfs\_t ¶](#statvfs_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L53)

```
statvfs_t :: struct {
	f_bsize:   u64,
	// [PSX] file system block size 
	f_frsize:  u64,
	// [PSX] fundamental file system block size 
	f_blocks:  fsblkcnt_t,
	// [PSX] total number of blocks on file system in units of f_frsize 
	f_bfree:   fsblkcnt_t,
	// [PSX] total number of free blocks 
	f_bavail:  fsblkcnt_t,
	// [PSX] number of free blocks available to non-privileged process 
	f_files:   fsblkcnt_t,
	// [PSX] total number of file serial numbers 
	f_ffree:   fsblkcnt_t,
	// [PSX] total number of free file serial numbers 
	f_favail:  fsblkcnt_t,
	// [PSX] number of file serial numbers available to non-privileged process 
	f_fsid:    u64,
	// [PSX] file system ID 
	f_flag:    bit_set[VFS_Flag_Bits; u64],
	// [PSX] bit mask of f_flag values 
	f_namemax: u64,
}
```

##### Related Procedures With Parameters

* [fstatvfs](/core/sys/posix/#fstatvfs)
* [statvfs](/core/sys/posix/#statvfs)

### [suseconds\_t ¶](#suseconds_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L61)

```
suseconds_t :: distinct i32
```

### [tcflag\_t ¶](#tcflag_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L252)

```
tcflag_t :: distinct u64
```

### [termios ¶](#termios) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L254)

```
termios :: struct {
	c_iflag:  bit_set[CInput_Flag_Bits; tcflag_t],
	// [XBD] input flags 
	c_oflag:  bit_set[COutput_Flag_Bits; tcflag_t],
	// [XBD] output flags 
	c_cflag:  bit_set[CControl_Flag_Bits; tcflag_t],
	// [XBD] control flags 
	c_lflag:  bit_set[CLocal_Flag_Bits; tcflag_t],
	// [XBD] local flag 
	c_cc:     [Control_Char]cc_t,
	// [XBD] control chars 
	c_ispeed: speed_t,
	// input speed 
	c_ospeed: speed_t,
}
```

##### Related Procedures With Parameters

* [cfgetispeed](/core/sys/posix/#cfgetispeed)
* [cfgetospeed](/core/sys/posix/#cfgetospeed)
* [cfsetispeed](/core/sys/posix/#cfsetispeed)
* [cfsetospeed](/core/sys/posix/#cfsetospeed)
* [tcgetattr](/core/sys/posix/#tcgetattr)
* [tcsetattr](/core/sys/posix/#tcsetattr)

### [time\_t ¶](#time_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L133)

```
time_t :: libc.time_t
```

##### Related Procedures With Parameters

* [ctime\_r](/core/sys/posix/#ctime_r)
* [gmtime\_r](/core/sys/posix/#gmtime_r)
* [localtime\_r](/core/sys/posix/#localtime_r)

### [timespec ¶](#timespec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L137)

```
timespec :: libc.timespec
```

##### Related Procedures With Parameters

* [clock\_getres](/core/sys/posix/#clock_getres)
* [clock\_gettime](/core/sys/posix/#clock_gettime)
* [clock\_settime](/core/sys/posix/#clock_settime)
* [nanosleep](/core/sys/posix/#nanosleep)
* [pselect](/core/sys/posix/#pselect)

### [timeval ¶](#timeval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L63)

```
timeval :: struct {
	tv_sec:  libc.time_t,
	// [PSX] seconds 
	tv_usec: suseconds_t,
}
```

##### Related Procedures With Parameters

* [gettimeofday](/core/sys/posix/#gettimeofday)
* [select](/core/sys/posix/#select)

### [tm ¶](#tm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L136)

```
tm :: libc.tm
```

##### Related Procedures With Parameters

* [asctime\_r](/core/sys/posix/#asctime_r)
* [gmtime\_r](/core/sys/posix/#gmtime_r)
* [localtime\_r](/core/sys/posix/#localtime_r)
* [strptime](/core/sys/posix/#strptime)



##### Related Procedures With Returns

* [getdate](/core/sys/posix/#getdate)

### [tms ¶](#tms) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_times.odin#L30)

```
tms :: struct {
	tms_utime:  libc.clock_t,
	// [PSX] user CPU time 
	tms_stime:  libc.clock_t,
	// [PSX] system CPU time 
	tms_cutime: libc.clock_t,
	// [PSX] terminated children user CPU time 
	tms_cstime: libc.clock_t,
}
```

##### Related Procedures With Parameters

* [times](/core/sys/posix/#times)

### [uid\_t ¶](#uid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L375)

```
uid_t :: distinct u32
```

##### Related Procedures With Parameters

* [chown](/core/sys/posix/#chown)
* [fchown](/core/sys/posix/#fchown)
* [fchownat](/core/sys/posix/#fchownat)
* [getpwuid](/core/sys/posix/#getpwuid)
* [getpwuid\_r](/core/sys/posix/#getpwuid_r)
* [lchown](/core/sys/posix/#lchown)
* [seteuid](/core/sys/posix/#seteuid)
* [setreuid](/core/sys/posix/#setreuid)
* [setuid](/core/sys/posix/#setuid)



##### Related Procedures With Returns

* [geteuid](/core/sys/posix/#geteuid)
* [getuid](/core/sys/posix/#getuid)

### [utimbuf ¶](#utimbuf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/utime.odin#L30)

```
utimbuf :: struct {
	actime:  libc.time_t,
	// [PSX] access time (seconds since epoch) 
	modtime: libc.time_t,
}
```

##### Related Procedures With Parameters

* [utime](/core/sys/posix/#utime)

### [utsname ¶](#utsname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_utsname.odin#L46)

```
utsname :: struct {
	sysname:  [256]u8 `fmt:"s,0"`,
	// [PSX] name of OS 
	nodename: [256]u8 `fmt:"s,0"`,
	// [PSX] name of this network node 
	release:  [256]u8 `fmt:"s,0"`,
	// [PSX] release level 
	version:  [256]u8 `fmt:"s,0"`,
	// [PSX] version level 
	machine:  [256]u8 `fmt:"s,0"`,
}
```

##### Related Procedures With Parameters

* [uname](/core/sys/posix/#uname)

### [wordexp\_t ¶](#wordexp_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L64)

```
wordexp_t :: struct {
	we_wordc: uint,
	// [PSX] count of words matched by words 
	we_wordv: [^]cstring,
	// [PSX] pointer to list of expanded words 
	we_offs:  uint,
}
```

##### Related Procedures With Parameters

* [wordexp](/core/sys/posix/#wordexp)
* [wordfree](/core/sys/posix/#wordfree)

## Constants

### [ABDAY\_1 ¶](#ABDAY_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L167)

```
ABDAY_1 :: 14
```

### [ABDAY\_2 ¶](#ABDAY_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L168)

```
ABDAY_2 :: 15
```

### [ABDAY\_3 ¶](#ABDAY_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L169)

```
ABDAY_3 :: 16
```

### [ABDAY\_4 ¶](#ABDAY_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L170)

```
ABDAY_4 :: 17
```

### [ABDAY\_5 ¶](#ABDAY_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L171)

```
ABDAY_5 :: 18
```

### [ABDAY\_6 ¶](#ABDAY_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L172)

```
ABDAY_6 :: 19
```

### [ABDAY\_7 ¶](#ABDAY_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L173)

```
ABDAY_7 :: 20
```

### [ABMON\_1 ¶](#ABMON_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L188)

```
ABMON_1 :: 33
```

### [ABMON\_10 ¶](#ABMON_10) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L197)

```
ABMON_10 :: 42
```

### [ABMON\_11 ¶](#ABMON_11) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L198)

```
ABMON_11 :: 43
```

### [ABMON\_12 ¶](#ABMON_12) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L199)

```
ABMON_12 :: 44
```

### [ABMON\_2 ¶](#ABMON_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L189)

```
ABMON_2 :: 34
```

### [ABMON\_3 ¶](#ABMON_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L190)

```
ABMON_3 :: 35
```

### [ABMON\_4 ¶](#ABMON_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L191)

```
ABMON_4 :: 36
```

### [ABMON\_5 ¶](#ABMON_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L192)

```
ABMON_5 :: 37
```

### [ABMON\_6 ¶](#ABMON_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L193)

```
ABMON_6 :: 38
```

### [ABMON\_7 ¶](#ABMON_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L194)

```
ABMON_7 :: 39
```

### [ABMON\_8 ¶](#ABMON_8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L195)

```
ABMON_8 :: 40
```

### [ABMON\_9 ¶](#ABMON_9) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L196)

```
ABMON_9 :: 41
```

### [AF\_INET ¶](#AF_INET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L598)

```
AF_INET :: 2
```

### [AF\_INET6 ¶](#AF_INET6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L603)

```
AF_INET6 :: 30
```

### [AF\_UNIX ¶](#AF_UNIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L599)

```
AF_UNIX :: 1
```

### [AF\_UNSPEC ¶](#AF_UNSPEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L227)

```
AF_UNSPEC :: 0
```

### [AI\_ADDRCONFIG ¶](#AI_ADDRCONFIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L387)

```
AI_ADDRCONFIG :: 0x00000400
```

### [AI\_ALL ¶](#AI_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L386)

```
AI_ALL :: 0x00000100
```

### [AI\_CANONNAME ¶](#AI_CANONNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L382)

```
AI_CANONNAME :: 0x00000002
```

### [AI\_NUMERICHOST ¶](#AI_NUMERICHOST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L383)

```
AI_NUMERICHOST :: 0x00000004
```

### [AI\_NUMERICSERV ¶](#AI_NUMERICSERV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L384)

```
AI_NUMERICSERV :: 0x00001000
```

### [AI\_PASSIVE ¶](#AI_PASSIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L381)

```
AI_PASSIVE :: 0x00000001
```

### [AI\_V4MAPPED ¶](#AI_V4MAPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L385)

```
AI_V4MAPPED :: 0x00000800
```

### [ALT\_DIGITS ¶](#ALT_DIGITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L205)

```
ALT_DIGITS :: 49
```

### [AM\_STR ¶](#AM_STR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L156)

```
AM_STR :: 5
```

### [ARG\_MAX ¶](#ARG_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L92)

```
ARG_MAX :: 1024 * 1024
```

 

AIO\_LISTIO\_MAX :: sysconf(.\_AIO\_LISTIO\_MAX)
AIO\_MAX :: sysconf(.\_AIO\_MAX)
AIO\_PRIO\_DELTA\_MAX :: sysconf(.\_AIO\_PRIO\_DELTA\_MAX)

### [AT\_EACCESS ¶](#AT_EACCESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L203)

```
AT_EACCESS :: 0x0010
```

### [AT\_FDCWD ¶](#AT_FDCWD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L201)

```
AT_FDCWD: FD : -2
```

### [AT\_REMOVEDIR ¶](#AT_REMOVEDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L206)

```
AT_REMOVEDIR :: 0x0080
```

### [AT\_SYMLINK\_FOLLOW ¶](#AT_SYMLINK_FOLLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L205)

```
AT_SYMLINK_FOLLOW :: 0x0040
```

### [AT\_SYMLINK\_NOFOLLOW ¶](#AT_SYMLINK_NOFOLLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L204)

```
AT_SYMLINK_NOFOLLOW :: 0x0020
```

### [B0 ¶](#B0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L320)

```
B0 :: 0
```

### [B110 ¶](#B110) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L323)

```
B110 :: 110
```

### [B1200 ¶](#B1200) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L329)

```
B1200 :: 1200
```

### [B134 ¶](#B134) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L324)

```
B134 :: 134
```

### [B150 ¶](#B150) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L325)

```
B150 :: 150
```

### [B1800 ¶](#B1800) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L330)

```
B1800 :: 1800
```

### [B19200 ¶](#B19200) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L334)

```
B19200 :: 19200
```

### [B200 ¶](#B200) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L326)

```
B200 :: 200
```

### [B2400 ¶](#B2400) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L331)

```
B2400 :: 2400
```

### [B300 ¶](#B300) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L327)

```
B300 :: 300
```

### [B38400 ¶](#B38400) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L335)

```
B38400 :: 38400
```

### [B4800 ¶](#B4800) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L332)

```
B4800 :: 4800
```

### [B50 ¶](#B50) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L321)

```
B50 :: 50
```

### [B600 ¶](#B600) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L328)

```
B600 :: 600
```

### [B75 ¶](#B75) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L322)

```
B75 :: 75
```

### [B9600 ¶](#B9600) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L333)

```
B9600 :: 9600
```

### [BC\_BASE\_MAX ¶](#BC_BASE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L154)

```
BC_BASE_MAX :: 99
```

### [BC\_DIM\_MAX ¶](#BC_DIM_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L155)

```
BC_DIM_MAX :: 2048
```

### [BC\_SCALE\_MAX ¶](#BC_SCALE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L156)

```
BC_SCALE_MAX :: 99
```

### [BC\_STRING\_MAX ¶](#BC_STRING_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L157)

```
BC_STRING_MAX :: 1000
```

### [BRKINT ¶](#BRKINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L279)

```
BRKINT :: 0x00000002
```

### [BS0 ¶](#BS0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L311)

```
BS0 :: 0x00000000
```

### [BS1 ¶](#BS1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L312)

```
BS1 :: 0x00008000
```

### [BSDLY ¶](#BSDLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L204)

```
BSDLY: bit_set[COutput_Flag_Bits; tcflag_t] : transmute(COutput_Flags)tcflag_t(_BSDLY)
```

 

\b delay mask

### [BUFSIZ ¶](#BUFSIZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L189)

```
BUFSIZ :: libc.BUFSIZ
```

### [BUS\_ADRALN ¶](#BUS_ADRALN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L481)

```
BUS_ADRALN :: 1
```

### [BUS\_ADRERR ¶](#BUS_ADRERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L482)

```
BUS_ADRERR :: 2
```

### [BUS\_OBJERR ¶](#BUS_OBJERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L483)

```
BUS_OBJERR :: 3
```

### [CHARCLASS\_NAME\_MAX ¶](#CHARCLASS_NAME_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L158)

```
CHARCLASS_NAME_MAX :: 14
```

### [CHILD\_MAX ¶](#CHILD_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L94)

```
CHILD_MAX :: 266
```

 

ATEXIT\_MAX :: sysconf(.\_ATEXIT\_MAX)

### [CLD\_CONTINUED ¶](#CLD_CONTINUED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L493)

```
CLD_CONTINUED :: 6
```

### [CLD\_DUMPED ¶](#CLD_DUMPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L490)

```
CLD_DUMPED :: 3
```

### [CLD\_EXITED ¶](#CLD_EXITED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L488)

```
CLD_EXITED :: 1
```

### [CLD\_KILLED ¶](#CLD_KILLED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L489)

```
CLD_KILLED :: 2
```

### [CLD\_STOPPED ¶](#CLD_STOPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L492)

```
CLD_STOPPED :: 5
```

### [CLD\_TRAPPED ¶](#CLD_TRAPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L491)

```
CLD_TRAPPED :: 4
```

### [CLOCAL ¶](#CLOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L347)

```
CLOCAL :: 0x00008000
```

### [CLOCKS\_PER\_SEC ¶](#CLOCKS_PER_SEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L139)

```
CLOCKS_PER_SEC :: libc.CLOCKS_PER_SEC
```

### [CLOCK\_MONOTONIC ¶](#CLOCK_MONOTONIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L187)

```
CLOCK_MONOTONIC :: 6
```

### [CLOCK\_PROCESS\_CPUTIME\_ID ¶](#CLOCK_PROCESS_CPUTIME_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L188)

```
CLOCK_PROCESS_CPUTIME_ID :: 12
```

### [CLOCK\_REALTIME ¶](#CLOCK_REALTIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L189)

```
CLOCK_REALTIME :: 0
```

### [CLOCK\_THREAD\_CPUTIME\_ID ¶](#CLOCK_THREAD_CPUTIME_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L190)

```
CLOCK_THREAD_CPUTIME_ID :: 16
```

### [CODESET ¶](#CODESET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L151)

```
CODESET :: 0
```

### [COLL\_WEIGHTS\_MAX ¶](#COLL_WEIGHTS_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L159)

```
COLL_WEIGHTS_MAX :: 2
```

### [CR0 ¶](#CR0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L302)

```
CR0 :: 0x00000000
```

### [CR1 ¶](#CR1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L303)

```
CR1 :: 0x00001000
```

### [CR2 ¶](#CR2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L304)

```
CR2 :: 0x00002000
```

### [CR3 ¶](#CR3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L305)

```
CR3 :: 0x00003000
```

### [CRDLY ¶](#CRDLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L200)

```
CRDLY: bit_set[COutput_Flag_Bits; tcflag_t] : transmute(COutput_Flags)tcflag_t(_CRDLY)
```

 

\r delay mask

### [CREAD ¶](#CREAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L343)

```
CREAD :: 0x00000800
```

### [CRNCYSTR ¶](#CRNCYSTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L213)

```
CRNCYSTR :: 54 when ODIN_OS == .Haiku else 56
```

### [CS5 ¶](#CS5) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L338)

```
CS5 :: 0x00000000
```

### [CS6 ¶](#CS6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L339)

```
CS6 :: 0x00000100
```

### [CS7 ¶](#CS7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L340)

```
CS7 :: 0x00000200
```

### [CS8 ¶](#CS8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L341)

```
CS8 :: 0x00000300
```

### [CSIZE ¶](#CSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L169)

```
CSIZE: bit_set[CControl_Flag_Bits; tcflag_t] : transmute(CControl_Flags)tcflag_t(_CSIZE)
```

 

character size mask

### [CSTOPB ¶](#CSTOPB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L342)

```
CSTOPB :: 0x00000400
```

### [DAY\_1 ¶](#DAY_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L159)

```
DAY_1 :: 7
```

### [DAY\_2 ¶](#DAY_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L160)

```
DAY_2 :: 8
```

### [DAY\_3 ¶](#DAY_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L161)

```
DAY_3 :: 9
```

### [DAY\_4 ¶](#DAY_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L162)

```
DAY_4 :: 10
```

### [DAY\_5 ¶](#DAY_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L163)

```
DAY_5 :: 11
```

### [DAY\_6 ¶](#DAY_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L164)

```
DAY_6 :: 12
```

### [DAY\_7 ¶](#DAY_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L165)

```
DAY_7 :: 13
```

### [D\_FMT ¶](#D_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L153)

```
D_FMT :: 2
```

### [D\_T\_FMT ¶](#D_T_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L152)

```
D_T_FMT :: 1
```

### [E2BIG ¶](#E2BIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L119)

```
E2BIG :: 7
```

### [EACCES ¶](#EACCES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L125)

```
EACCES :: 13
```

### [EADDRINUSE ¶](#EADDRINUSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L157)

```
EADDRINUSE :: 48
```

### [EADDRNOTAVAIL ¶](#EADDRNOTAVAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L158)

```
EADDRNOTAVAIL :: 49
```

### [EAFNOSUPPORT ¶](#EAFNOSUPPORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L156)

```
EAFNOSUPPORT :: 47
```

### [EAGAIN ¶](#EAGAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L144)

```
EAGAIN :: 35
```

### [EAI\_AGAIN ¶](#EAI_AGAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L494)

```
EAI_AGAIN :: 2
```

### [EAI\_BADFLAGS ¶](#EAI_BADFLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L495)

```
EAI_BADFLAGS :: 3
```

### [EAI\_FAIL ¶](#EAI_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L496)

```
EAI_FAIL :: 4
```

### [EAI\_FAMILY ¶](#EAI_FAMILY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L497)

```
EAI_FAMILY :: 5
```

### [EAI\_MEMORY ¶](#EAI_MEMORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L498)

```
EAI_MEMORY :: 6
```

### [EAI\_NONAME ¶](#EAI_NONAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L499)

```
EAI_NONAME :: 8
```

### [EAI\_OVERFLOW ¶](#EAI_OVERFLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L503)

```
EAI_OVERFLOW :: 14
```

### [EAI\_SERVICE ¶](#EAI_SERVICE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L500)

```
EAI_SERVICE :: 9
```

### [EAI\_SOCKTYPE ¶](#EAI_SOCKTYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L501)

```
EAI_SOCKTYPE :: 10
```

### [EAI\_SYSTEM ¶](#EAI_SYSTEM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L502)

```
EAI_SYSTEM :: 11
```

### [EALREADY ¶](#EALREADY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L147)

```
EALREADY :: 37
```

### [EBADF ¶](#EBADF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L121)

```
EBADF :: 9
```

### [EBADMSG ¶](#EBADMSG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L181)

```
EBADMSG :: 94
```

### [EBUSY ¶](#EBUSY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L127)

```
EBUSY :: 16
```

### [ECANCELED ¶](#ECANCELED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L178)

```
ECANCELED :: 89
```

### [ECHILD ¶](#ECHILD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L122)

```
ECHILD :: 10
```

### [ECHO ¶](#ECHO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L349)

```
ECHO :: 0x00000008
```

### [ECHOE ¶](#ECHOE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L350)

```
ECHOE :: 0x00000002
```

### [ECHOK ¶](#ECHOK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L351)

```
ECHOK :: 0x00000004
```

### [ECHONL ¶](#ECHONL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L352)

```
ECHONL :: 0x00000010
```

### [ECONNABORTED ¶](#ECONNABORTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L162)

```
ECONNABORTED :: 53
```

### [ECONNREFUSED ¶](#ECONNREFUSED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L168)

```
ECONNREFUSED :: 61
```

### [ECONNRESET ¶](#ECONNRESET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L163)

```
ECONNRESET :: 54
```

### [EDEADLK ¶](#EDEADLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L123)

```
EDEADLK :: 11
```

### [EDESTADDRREQ ¶](#EDESTADDRREQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L149)

```
EDESTADDRREQ :: 39
```

### [EDOM ¶](#EDOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L9)

```
EDOM :: libc.EDOM
```

### [EDQUOT ¶](#EDQUOT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L173)

```
EDQUOT :: 69
```

### [EEXIST ¶](#EEXIST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L128)

```
EEXIST :: 17
```

### [EFAULT ¶](#EFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L126)

```
EFAULT :: 14
```

### [EFBIG ¶](#EFBIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L138)

```
EFBIG :: 27
```

### [EHOSTUNREACH ¶](#EHOSTUNREACH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L171)

```
EHOSTUNREACH :: 65
```

### [EIDRM ¶](#EIDRM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L179)

```
EIDRM :: 90
```

### [EILSEQ ¶](#EILSEQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L10)

```
EILSEQ :: libc.EILSEQ
```

### [EINPROGRESS ¶](#EINPROGRESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L146)

```
EINPROGRESS :: 36
```

### [EINTR ¶](#EINTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L116)

```
EINTR :: 4
```

### [EINVAL ¶](#EINVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L133)

```
EINVAL :: 22
```

### [EIO ¶](#EIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L117)

```
EIO :: 5
```

### [EISCONN ¶](#EISCONN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L165)

```
EISCONN :: 56
```

### [EISDIR ¶](#EISDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L132)

```
EISDIR :: 21
```

### [ELOOP ¶](#ELOOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L169)

```
ELOOP :: 62
```

### [EMFILE ¶](#EMFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L135)

```
EMFILE :: 24
```

### [EMLINK ¶](#EMLINK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L142)

```
EMLINK :: 31
```

### [EMSGSIZE ¶](#EMSGSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L150)

```
EMSGSIZE :: 40
```

### [EMULTIHOP ¶](#EMULTIHOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L182)

```
EMULTIHOP :: 95
```

### [ENAMETOOLONG ¶](#ENAMETOOLONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L170)

```
ENAMETOOLONG :: 63
```

### [ENETDOWN ¶](#ENETDOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L159)

```
ENETDOWN :: 50
```

### [ENETRESET ¶](#ENETRESET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L161)

```
ENETRESET :: 52
```

### [ENETUNREACH ¶](#ENETUNREACH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L160)

```
ENETUNREACH :: 51
```

### [ENFILE ¶](#ENFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L134)

```
ENFILE :: 23
```

### [ENOBUFS ¶](#ENOBUFS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L164)

```
ENOBUFS :: 55
```

### [ENODATA ¶](#ENODATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L183)

```
ENODATA :: 96
```

### [ENODEV ¶](#ENODEV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L130)

```
ENODEV :: 19
```

### [ENOENT ¶](#ENOENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L114)

```
ENOENT :: 2
```

### [ENOEXEC ¶](#ENOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L120)

```
ENOEXEC :: 8
```

### [ENOLCK ¶](#ENOLCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L175)

```
ENOLCK :: 77
```

### [ENOLINK ¶](#ENOLINK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L184)

```
ENOLINK :: 97
```

### [ENOMEM ¶](#ENOMEM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L124)

```
ENOMEM :: 12
```

### [ENOMSG ¶](#ENOMSG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L180)

```
ENOMSG :: 91
```

### [ENOPROTOOPT ¶](#ENOPROTOOPT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L152)

```
ENOPROTOOPT :: 42
```

### [ENOSPC ¶](#ENOSPC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L139)

```
ENOSPC :: 28
```

### [ENOSR ¶](#ENOSR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L185)

```
ENOSR :: 98
```

### [ENOSTR ¶](#ENOSTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L186)

```
ENOSTR :: 99
```

### [ENOSYS ¶](#ENOSYS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L176)

```
ENOSYS :: 78
```

### [ENOTCONN ¶](#ENOTCONN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L166)

```
ENOTCONN :: 57
```

### [ENOTDIR ¶](#ENOTDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L131)

```
ENOTDIR :: 20
```

### [ENOTEMPTY ¶](#ENOTEMPTY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L172)

```
ENOTEMPTY :: 66
```

### [ENOTRECOVERABLE ¶](#ENOTRECOVERABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L189)

```
ENOTRECOVERABLE :: 104
```

### [ENOTSOCK ¶](#ENOTSOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L148)

```
ENOTSOCK :: 38
```

### [ENOTSUP ¶](#ENOTSUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L154)

```
ENOTSUP :: 45
```

### [ENOTTY ¶](#ENOTTY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L136)

```
ENOTTY :: 25
```

### [ENXIO ¶](#ENXIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L118)

```
ENXIO :: 6
```

### [EOF ¶](#EOF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L203)

```
EOF: i32 : libc.EOF
```

### [EOPNOTSUPP ¶](#EOPNOTSUPP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L155)

```
EOPNOTSUPP :: ENOTSUP
```

### [EOVERFLOW ¶](#EOVERFLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L177)

```
EOVERFLOW :: 84
```

### [EOWNERDEAD ¶](#EOWNERDEAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L190)

```
EOWNERDEAD :: 105
```

### [EPERM ¶](#EPERM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L113)

```
EPERM :: 1
```

### [EPIPE ¶](#EPIPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L143)

```
EPIPE :: 32
```

### [EPROTO ¶](#EPROTO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L187)

```
EPROTO :: 100
```

### [EPROTONOSUPPORT ¶](#EPROTONOSUPPORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L153)

```
EPROTONOSUPPORT :: 43
```

### [EPROTOTYPE ¶](#EPROTOTYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L151)

```
EPROTOTYPE :: 41
```

### [ERA ¶](#ERA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L201)

```
ERA :: 45
```

### [ERANGE ¶](#ERANGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L11)

```
ERANGE :: libc.ERANGE
```

### [ERA\_D\_FMT ¶](#ERA_D_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L202)

```
ERA_D_FMT :: 46
```

### [ERA\_D\_T\_FMT ¶](#ERA_D_T_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L203)

```
ERA_D_T_FMT :: 47
```

### [ERA\_T\_FMT ¶](#ERA_T_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L204)

```
ERA_T_FMT :: 48
```

### [EROFS ¶](#EROFS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L141)

```
EROFS :: 30
```

### [ESPIPE ¶](#ESPIPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L140)

```
ESPIPE :: 29
```

### [ESRCH ¶](#ESRCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L115)

```
ESRCH :: 3
```

### [ESTALE ¶](#ESTALE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L174)

```
ESTALE :: 70
```

### [ETIME ¶](#ETIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L188)

```
ETIME :: 101
```

### [ETIMEDOUT ¶](#ETIMEDOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L167)

```
ETIMEDOUT :: 60
```

### [ETXTBSY ¶](#ETXTBSY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L137)

```
ETXTBSY :: 26
```

### [EWOULDBLOCK ¶](#EWOULDBLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L145)

```
EWOULDBLOCK :: EAGAIN
```

### [EXDEV ¶](#EXDEV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L129)

```
EXDEV :: 18
```

### [EXIT\_FAILURE ¶](#EXIT_FAILURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L85)

```
EXIT_FAILURE :: libc.EXIT_FAILURE
```

### [EXIT\_SUCCESS ¶](#EXIT_SUCCESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L86)

```
EXIT_SUCCESS :: libc.EXIT_SUCCESS
```

### [EXPR\_NEST\_MAX ¶](#EXPR_NEST_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L160)

```
EXPR_NEST_MAX :: 2
```

### [FD\_CLOEXEC ¶](#FD_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L168)

```
FD_CLOEXEC :: 1
```

### [FD\_SETSIZE ¶](#FD_SETSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L69)

```
FD_SETSIZE :: #config(POSIX_FD_SETSIZE, 256 when ODIN_OS == .NetBSD else 1024)
```

 

Maximum number of file descriptors in the fd\_set structure.

### [FF0 ¶](#FF0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L317)

```
FF0 :: 0x00000000
```

### [FF1 ¶](#FF1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L318)

```
FF1 :: 0x00004000
```

### [FFDLY ¶](#FFDLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L208)

```
FFDLY: bit_set[COutput_Flag_Bits; tcflag_t] : transmute(COutput_Flags)tcflag_t(_FFDLY)
```

 

form feed delay mask

### [FILENAME\_MAX ¶](#FILENAME_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L199)

```
FILENAME_MAX :: libc.FILENAME_MAX
```

### [FNM\_NOESCAPE ¶](#FNM_NOESCAPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin#L55)

```
FNM_NOESCAPE :: 0x01
```

### [FNM\_NOMATCH ¶](#FNM_NOMATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin#L51)

```
FNM_NOMATCH :: 1
```

### [FNM\_PATHNAME ¶](#FNM_PATHNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin#L53)

```
FNM_PATHNAME :: 0x02
```

### [FNM\_PERIOD ¶](#FNM_PERIOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin#L54)

```
FNM_PERIOD :: 0x04
```

### [FOPEN\_MAX ¶](#FOPEN_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L200)

```
FOPEN_MAX :: libc.FOPEN_MAX
```

### [FPE\_FLTDIV ¶](#FPE_FLTDIV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L471)

```
FPE_FLTDIV :: 1
```

### [FPE\_FLTINV ¶](#FPE_FLTINV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L475)

```
FPE_FLTINV :: 5
```

### [FPE\_FLTOVF ¶](#FPE_FLTOVF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L472)

```
FPE_FLTOVF :: 2
```

### [FPE\_FLTRES ¶](#FPE_FLTRES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L474)

```
FPE_FLTRES :: 4
```

### [FPE\_FLTSUB ¶](#FPE_FLTSUB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L476)

```
FPE_FLTSUB :: 6
```

### [FPE\_FLTUND ¶](#FPE_FLTUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L473)

```
FPE_FLTUND :: 3
```

### [FPE\_INTDIV ¶](#FPE_INTDIV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L469)

```
FPE_INTDIV :: 7
```

### [FPE\_INTOVF ¶](#FPE_INTOVF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L470)

```
FPE_INTOVF :: 8
```

### [F\_DUPFD ¶](#F_DUPFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L156)

```
F_DUPFD :: 0
```

### [F\_DUPFD\_CLOEXEC ¶](#F_DUPFD_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L157)

```
F_DUPFD_CLOEXEC :: 67
```

### [F\_GETFD ¶](#F_GETFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L158)

```
F_GETFD :: 1
```

### [F\_GETFL ¶](#F_GETFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L160)

```
F_GETFL :: 3
```

### [F\_GETLK ¶](#F_GETLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L162)

```
F_GETLK :: 7
```

### [F\_GETOWN ¶](#F_GETOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L165)

```
F_GETOWN :: 5
```

### [F\_LOCK ¶](#F_LOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1073)

```
F_LOCK :: 1
```

### [F\_OK ¶](#F_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L145)

```
F_OK: bit_set[Mode_Flag_Bits; i32] : Mode_Flags{}
```

### [F\_RDLCK ¶](#F_RDLCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L170)

```
F_RDLCK :: 1
```

### [F\_SETFD ¶](#F_SETFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L159)

```
F_SETFD :: 2
```

### [F\_SETFL ¶](#F_SETFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L161)

```
F_SETFL :: 4
```

### [F\_SETLK ¶](#F_SETLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L163)

```
F_SETLK :: 8
```

### [F\_SETLKW ¶](#F_SETLKW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L164)

```
F_SETLKW :: 9
```

### [F\_SETOWN ¶](#F_SETOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L166)

```
F_SETOWN :: 6
```

### [F\_TEST ¶](#F_TEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1074)

```
F_TEST :: 3
```

### [F\_TLOCK ¶](#F_TLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1075)

```
F_TLOCK :: 2
```

### [F\_ULOCK ¶](#F_ULOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1076)

```
F_ULOCK :: 0
```

### [F\_UNLCK ¶](#F_UNLCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L171)

```
F_UNLCK :: 2
```

### [F\_WRLCK ¶](#F_WRLCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L172)

```
F_WRLCK :: 3
```

### [GETALL ¶](#GETALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L80)

```
GETALL :: 6
```

### [GETNCNT ¶](#GETNCNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L77)

```
GETNCNT :: 3
```

### [GETPID ¶](#GETPID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L78)

```
GETPID :: 4
```

### [GETVAL ¶](#GETVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L79)

```
GETVAL :: 5
```

### [GETZCNT ¶](#GETZCNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L81)

```
GETZCNT :: 7
```

### [GLOB\_ABORTED ¶](#GLOB_ABORTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L108)

```
GLOB_ABORTED :: -2
```

### [GLOB\_APPEND ¶](#GLOB_APPEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L100)

```
GLOB_APPEND :: 0x0001
```

### [GLOB\_DOOFFS ¶](#GLOB_DOOFFS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L101)

```
GLOB_DOOFFS :: 0x0002
```

### [GLOB\_ERR ¶](#GLOB_ERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L102)

```
GLOB_ERR :: 0x0004
```

### [GLOB\_MARK ¶](#GLOB_MARK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L103)

```
GLOB_MARK :: 0x0008
```

### [GLOB\_NOCHECK ¶](#GLOB_NOCHECK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L104)

```
GLOB_NOCHECK :: 0x0010
```

### [GLOB\_NOESCAPE ¶](#GLOB_NOESCAPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L105)

```
GLOB_NOESCAPE :: 0x2000
```

### [GLOB\_NOMATCH ¶](#GLOB_NOMATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L109)

```
GLOB_NOMATCH :: -3
```

### [GLOB\_NOSORT ¶](#GLOB_NOSORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L106)

```
GLOB_NOSORT :: 0x0020
```

### [GLOB\_NOSPACE ¶](#GLOB_NOSPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L110)

```
GLOB_NOSPACE :: -1
```

### [HUPCL ¶](#HUPCL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L346)

```
HUPCL :: 0x00004000
```

### [ICANON ¶](#ICANON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L353)

```
ICANON :: 0x00000100
```

### [ICRNL ¶](#ICRNL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L286)

```
ICRNL :: 0x00000100
```

### [IEXTEN ¶](#IEXTEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L354)

```
IEXTEN :: 0x00000400
```

### [IF\_NAMESIZE ¶](#IF_NAMESIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/net_if.odin#L57)

```
IF_NAMESIZE :: 16
```

### [IGNBRK ¶](#IGNBRK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L278)

```
IGNBRK :: 0x00000001
```

### [IGNCR ¶](#IGNCR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L285)

```
IGNCR :: 0x00000080
```

### [IGNPAR ¶](#IGNPAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L280)

```
IGNPAR :: 0x00000004
```

### [ILL\_BADSTK ¶](#ILL_BADSTK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L467)

```
ILL_BADSTK :: 8
```

### [ILL\_COPROC ¶](#ILL_COPROC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L466)

```
ILL_COPROC :: 7
```

### [ILL\_ILLADR ¶](#ILL_ILLADR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L462)

```
ILL_ILLADR :: 5
```

### [ILL\_ILLOPC ¶](#ILL_ILLOPC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L460)

```
ILL_ILLOPC :: 1
```

### [ILL\_ILLOPN ¶](#ILL_ILLOPN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L461)

```
ILL_ILLOPN :: 4
```

### [ILL\_ILLTRP ¶](#ILL_ILLTRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L463)

```
ILL_ILLTRP :: 2
```

### [ILL\_PRVOPC ¶](#ILL_PRVOPC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L464)

```
ILL_PRVOPC :: 3
```

### [ILL\_PRVREG ¶](#ILL_PRVREG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L465)

```
ILL_PRVREG :: 6
```

### [INADDR\_ANY ¶](#INADDR_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L148)

```
INADDR_ANY :: 0x00000000
```

### [INADDR\_BROADCAST ¶](#INADDR_BROADCAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L149)

```
INADDR_BROADCAST :: 0xFFFFFFFF
```

### [INET6\_ADDRSTRLEN ¶](#INET6_ADDRSTRLEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L23)

```
INET6_ADDRSTRLEN :: 46
```

### [INET\_ADDRSTRLEN ¶](#INET_ADDRSTRLEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L22)

```
INET_ADDRSTRLEN :: 16
```

### [INLCR ¶](#INLCR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L284)

```
INLCR :: 0x00000040
```

### [INPCK ¶](#INPCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L282)

```
INPCK :: 0x00000010
```

### [IOV\_MAX ¶](#IOV_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L97)

```
IOV_MAX :: 1024
```

 

DELAYTIMER\_MAX :: sysconf(.\_DELAYTIMER\_MAX)
HOST\_NAME\_MAX :: sysconf(.\_HOST\_NAME\_MAX)

### [IPC\_CREAT ¶](#IPC_CREAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L54)

```
IPC_CREAT :: 0o01000
```

### [IPC\_EXCL ¶](#IPC_EXCL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L55)

```
IPC_EXCL :: 0o02000
```

### [IPC\_NOWAIT ¶](#IPC_NOWAIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L56)

```
IPC_NOWAIT :: 0o04000
```

### [IPC\_PRIVATE ¶](#IPC_PRIVATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L58)

```
IPC_PRIVATE :: key_t(0)
```

### [IPC\_RMID ¶](#IPC_RMID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L60)

```
IPC_RMID :: 0
```

### [IPC\_SET ¶](#IPC_SET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L61)

```
IPC_SET :: 1
```

### [IPC\_STAT ¶](#IPC_STAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L62)

```
IPC_STAT :: 2
```

### [IPPORT\_RESERVED ¶](#IPPORT_RESERVED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L353)

```
IPPORT_RESERVED :: 1024
```

 

The highest reserved port number.

### [IPPROTO\_ICMP ¶](#IPPROTO_ICMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L142)

```
IPPROTO_ICMP :: 1
```

### [IPPROTO\_IP ¶](#IPPROTO_IP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L141)

```
IPPROTO_IP :: 0
```

### [IPPROTO\_IPV6 ¶](#IPPROTO_IPV6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L143)

```
IPPROTO_IPV6 :: 41
```

### [IPPROTO\_RAW ¶](#IPPROTO_RAW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L144)

```
IPPROTO_RAW :: 255
```

### [IPPROTO\_TCP ¶](#IPPROTO_TCP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L145)

```
IPPROTO_TCP :: 6
```

### [IPPROTO\_UDP ¶](#IPPROTO_UDP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L146)

```
IPPROTO_UDP :: 17
```

### [IPV6\_JOIN\_GROUP ¶](#IPV6_JOIN_GROUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L130)

```
IPV6_JOIN_GROUP :: 12
```

### [IPV6\_LEAVE\_GROUP ¶](#IPV6_LEAVE_GROUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L131)

```
IPV6_LEAVE_GROUP :: 13
```

### [IPV6\_MULTICAST\_HOPS ¶](#IPV6_MULTICAST_HOPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L132)

```
IPV6_MULTICAST_HOPS :: 10
```

### [IPV6\_MULTICAST\_IF ¶](#IPV6_MULTICAST_IF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L133)

```
IPV6_MULTICAST_IF :: 9
```

### [IPV6\_MULTICAST\_LOOP ¶](#IPV6_MULTICAST_LOOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L134)

```
IPV6_MULTICAST_LOOP :: 11
```

### [IPV6\_UNICAST\_HOPS ¶](#IPV6_UNICAST_HOPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L135)

```
IPV6_UNICAST_HOPS :: 4
```

### [IPV6\_V6ONLY ¶](#IPV6_V6ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L136)

```
IPV6_V6ONLY :: 27
```

### [ISIG ¶](#ISIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L355)

```
ISIG :: 0x00000080
```

### [ISTRIP ¶](#ISTRIP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L283)

```
ISTRIP :: 0x00000020
```

### [IS\_SUPPORTED ¶](#IS_SUPPORTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/posix.odin#L56)

```
IS_SUPPORTED :: _IS_SUPPORTED
```

### [ITIMER\_PROF ¶](#ITIMER_PROF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L79)

```
ITIMER_PROF :: 2
```

### [ITIMER\_REAL ¶](#ITIMER_REAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L77)

```
ITIMER_REAL :: 0
```

### [ITIMER\_VIRTUAL ¶](#ITIMER_VIRTUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L78)

```
ITIMER_VIRTUAL :: 1
```

### [IXANY ¶](#IXANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L289)

```
IXANY :: 0x00000800
```

### [IXOFF ¶](#IXOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L288)

```
IXOFF :: 0x00000400
```

### [IXON ¶](#IXON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L287)

```
IXON :: 0x00000200
```

### [LINE\_MAX ¶](#LINE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L161)

```
LINE_MAX :: 2048
```

### [LINK\_MAX ¶](#LINK_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L132)

```
LINK_MAX :: 32767
```

 

FILESIZEBITS :: pathconf(".", .\_FILESIZEBITS)

### [LPSELECT ¶](#LPSELECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L55)

```
LPSELECT :: "pselect"
```

### [LSELECT ¶](#LSELECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L56)

```
LSELECT :: "select"
```

### [L\_ctermid ¶](#L_ctermid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L156)

```
L_ctermid :: 1024
```

### [L\_tmpnam ¶](#L_tmpnam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L157)

```
L_tmpnam :: 1024
```

### [MAP\_ANONYMOUS ¶](#MAP_ANONYMOUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L184)

```
MAP_ANONYMOUS :: 0x0020 when ODIN_OS == .Linux else 0x1000
```

### [MAP\_FAILED ¶](#MAP_FAILED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L203)

```
MAP_FAILED :: rawptr(~uintptr(0))
```

### [MAP\_FIXED ¶](#MAP_FIXED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L181)

```
MAP_FIXED :: 0x0010
```

### [MAP\_PRIVATE ¶](#MAP_PRIVATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L182)

```
MAP_PRIVATE :: 0x0002
```

### [MAP\_SHARED ¶](#MAP_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L183)

```
MAP_SHARED :: 0x0001
```

### [MAX\_CANON ¶](#MAX_CANON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L133)

```
MAX_CANON :: 1024
```

### [MAX\_INPUT ¶](#MAX_INPUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L134)

```
MAX_INPUT :: 1024
```

### [MCL\_CURRENT ¶](#MCL_CURRENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L200)

```
MCL_CURRENT :: 0x0001
```

### [MCL\_FUTURE ¶](#MCL_FUTURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L201)

```
MCL_FUTURE :: 0x0002
```

### [MINSIGSTKSZ ¶](#MINSIGSTKSZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L429)

```
MINSIGSTKSZ :: 32768
```

### [MON\_1 ¶](#MON_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L175)

```
MON_1 :: 21
```

### [MON\_10 ¶](#MON_10) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L184)

```
MON_10 :: 30
```

### [MON\_11 ¶](#MON_11) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L185)

```
MON_11 :: 31
```

### [MON\_12 ¶](#MON_12) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L186)

```
MON_12 :: 32
```

### [MON\_2 ¶](#MON_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L176)

```
MON_2 :: 22
```

### [MON\_3 ¶](#MON_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L177)

```
MON_3 :: 23
```

### [MON\_4 ¶](#MON_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L178)

```
MON_4 :: 24
```

### [MON\_5 ¶](#MON_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L179)

```
MON_5 :: 25
```

### [MON\_6 ¶](#MON_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L180)

```
MON_6 :: 26
```

### [MON\_7 ¶](#MON_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L181)

```
MON_7 :: 27
```

### [MON\_8 ¶](#MON_8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L182)

```
MON_8 :: 28
```

### [MON\_9 ¶](#MON_9) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L183)

```
MON_9 :: 29
```

### [MSG\_CTRUNC ¶](#MSG_CTRUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L575)

```
MSG_CTRUNC :: 0x20
```

### [MSG\_DONTROUTE ¶](#MSG_DONTROUTE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L576)

```
MSG_DONTROUTE :: 0x4
```

### [MSG\_EOR ¶](#MSG_EOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L577)

```
MSG_EOR :: 0x8
```

### [MSG\_NOERROR ¶](#MSG_NOERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L66)

```
MSG_NOERROR :: 0o10000
```

### [MSG\_NOSIGNAL ¶](#MSG_NOSIGNAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L584)

```
MSG_NOSIGNAL :: 0x80000
```

### [MSG\_OOB ¶](#MSG_OOB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L578)

```
MSG_OOB :: 0x1
```

### [MSG\_PEEK ¶](#MSG_PEEK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L579)

```
MSG_PEEK :: 0x2
```

### [MSG\_TRUNC ¶](#MSG_TRUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L580)

```
MSG_TRUNC :: 0x10
```

### [MSG\_WAITALL ¶](#MSG_WAITALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L581)

```
MSG_WAITALL :: 0x40
```

### [MS\_ASYNC ¶](#MS_ASYNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L197)

```
MS_ASYNC :: 0x0001
```

### [MS\_INVALIDATE ¶](#MS_INVALIDATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L187)

```
MS_INVALIDATE :: 0x0002
```

### [MS\_SYNC ¶](#MS_SYNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L198)

```
MS_SYNC: bit_set[Sync_Flags_Bits; i32] : Sync_Flags{Sync_Flags_Bits(log2(_MS_SYNC))}
```

### [NAME\_MAX ¶](#NAME_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L135)

```
NAME_MAX :: 255
```

### [NCCS ¶](#NCCS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L264)

```
NCCS :: 20
```

### [NGROUPS\_MAX ¶](#NGROUPS_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L162)

```
NGROUPS_MAX :: 16
```

### [NI\_DGRAM ¶](#NI_DGRAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L394)

```
NI_DGRAM :: 0x00000010
```

### [NI\_NAMEREQD ¶](#NI_NAMEREQD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L391)

```
NI_NAMEREQD :: 0x00000004
```

### [NI\_NOFQDN ¶](#NI_NOFQDN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L389)

```
NI_NOFQDN :: 0x00000001
```

### [NI\_NUMERICHOST ¶](#NI_NUMERICHOST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L390)

```
NI_NUMERICHOST :: 0x00000002
```

### [NI\_NUMERICSCOPE ¶](#NI_NUMERICSCOPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L393)

```
NI_NUMERICSCOPE :: 0x00000100
```

### [NI\_NUMERICSERV ¶](#NI_NUMERICSERV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L392)

```
NI_NUMERICSERV :: 0x00000008
```

### [NL0 ¶](#NL0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L299)

```
NL0 :: 0x00000000
```

### [NL1 ¶](#NL1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L300)

```
NL1 :: 0x00000100
```

### [NLDLY ¶](#NLDLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L198)

```
NLDLY: bit_set[COutput_Flag_Bits; tcflag_t] : transmute(COutput_Flags)tcflag_t(_NLDLY)
```

 

\n delay mask

### [NL\_ARGMAX ¶](#NL_ARGMAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L167)

```
NL_ARGMAX :: 9
```

### [NL\_LANGMAX ¶](#NL_LANGMAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L168)

```
NL_LANGMAX :: 14
```

### [NL\_MSGMAX ¶](#NL_MSGMAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L169)

```
NL_MSGMAX :: 32767
```

### [NL\_SETMAX ¶](#NL_SETMAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L170)

```
NL_SETMAX :: 255
```

### [NL\_TEXTMAX ¶](#NL_TEXTMAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L171)

```
NL_TEXTMAX :: 2048
```

### [NOEXPR ¶](#NOEXPR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L211)

```
NOEXPR :: 53
```

### [NOFLSH ¶](#NOFLSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L356)

```
NOFLSH :: 0x80000000
```

### [NZERO ¶](#NZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L172)

```
NZERO :: 20
```

### [OCRNL ¶](#OCRNL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L293)

```
OCRNL :: 0x00000010
```

### [OFDEL ¶](#OFDEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L296)

```
OFDEL :: 0x00020000
```

### [OFILL ¶](#OFILL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L297)

```
OFILL :: 0x00000080
```

### [ONLCR ¶](#ONLCR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L292)

```
ONLCR :: 0x00000002
```

### [ONLRET ¶](#ONLRET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L295)

```
ONLRET :: 0x00000040
```

### [ONOCR ¶](#ONOCR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L294)

```
ONOCR :: 0x00000020
```

### [OPOST ¶](#OPOST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L291)

```
OPOST :: 0x00000001
```

### [O\_ACCMODE ¶](#O_ACCMODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L141)

```
O_ACCMODE: bit_set[O_Flag_Bits; i32] : O_Flags{.EXEC, .RDWR, .WRONLY}
```

### [O\_APPEND ¶](#O_APPEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L185)

```
O_APPEND :: 0x00000008
```

### [O\_CLOEXEC ¶](#O_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L174)

```
O_CLOEXEC :: 0x01000000
```

### [O\_CREAT ¶](#O_CREAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L175)

```
O_CREAT :: 0x00000200
```

### [O\_DIRECTORY ¶](#O_DIRECTORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L176)

```
O_DIRECTORY :: 0x00100000
```

### [O\_DSYNC ¶](#O_DSYNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L186)

```
O_DSYNC :: 0x00400000
```

### [O\_EXCL ¶](#O_EXCL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L177)

```
O_EXCL :: 0x00000800
```

### [O\_EXEC ¶](#O_EXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L193)

```
O_EXEC :: 0x40000000
```

### [O\_NOCTTY ¶](#O_NOCTTY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L178)

```
O_NOCTTY :: 0x00020000
```

### [O\_NOFOLLOW ¶](#O_NOFOLLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L179)

```
O_NOFOLLOW :: 0x00000100
```

### [O\_NONBLOCK ¶](#O_NONBLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L187)

```
O_NONBLOCK :: 0x00000004
```

### [O\_RDONLY ¶](#O_RDONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L194)

```
O_RDONLY :: 0
```

### [O\_RDWR ¶](#O_RDWR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L195)

```
O_RDWR :: 0x0002
```

### [O\_RSYNC ¶](#O_RSYNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L191)

```
O_RSYNC: bit_set[O_Flag_Bits; i32] : O_Flags{}
```

### [O\_SEARCH ¶](#O_SEARCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L199)

```
O_SEARCH: bit_set[O_Flag_Bits; i32] : O_Flags{.EXEC, .DIRECTORY}
```

### [O\_SYNC ¶](#O_SYNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L188)

```
O_SYNC :: 0x0080
```

### [O\_TRUNC ¶](#O_TRUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L180)

```
O_TRUNC :: 0x00000400
```

### [O\_TTY\_INIT ¶](#O_TTY_INIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L183)

```
O_TTY_INIT: bit_set[O_Flag_Bits; i32] : O_Flags{}
```

### [O\_WRONLY ¶](#O_WRONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L196)

```
O_WRONLY :: 0x0001
```

### [PAGESIZE ¶](#PAGESIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L101)

```
PAGESIZE :: PAGE_SIZE
```

 

LOGIN\_NAME\_MAX :: sysconf(.\_LOGIN\_NAME\_MAX)
MQ\_OPEN\_MAX :: sysconf(.\_MQ\_OPEN\_MAX)
MQ\_PRIO\_MAX :: sysconf(.\_MQ\_PRIO\_MAX)

### [PAGE\_SIZE ¶](#PAGE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L102)

```
PAGE_SIZE :: 1 << 12
```

### [PARENB ¶](#PARENB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L344)

```
PARENB :: 0x00001000
```

### [PARMRK ¶](#PARMRK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L281)

```
PARMRK :: 0x00000008
```

### [PARODD ¶](#PARODD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L345)

```
PARODD :: 0x00002000
```

### [PATH\_MAX ¶](#PATH_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L136)

```
PATH_MAX :: 1024
```

### [PIPE\_BUF ¶](#PIPE_BUF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L137)

```
PIPE_BUF :: 512
```

### [PM\_STR ¶](#PM_STR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L157)

```
PM_STR :: 6
```

### [POLLERR ¶](#POLLERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L92)

```
POLLERR :: 0x0008
```

### [POLLHUP ¶](#POLLHUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L93)

```
POLLHUP :: 0x0010
```

### [POLLIN ¶](#POLLIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L84)

```
POLLIN :: 0x0001
```

### [POLLNVAL ¶](#POLLNVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L94)

```
POLLNVAL :: 0x0020
```

### [POLLOUT ¶](#POLLOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L88)

```
POLLOUT :: 0x0004
```

### [POLLPRI ¶](#POLLPRI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L87)

```
POLLPRI :: 0x0002
```

### [POLLRDBAND ¶](#POLLRDBAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L86)

```
POLLRDBAND :: 0x0080
```

### [POLLRDNORM ¶](#POLLRDNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L85)

```
POLLRDNORM :: 0x0040
```

### [POLLWRBAND ¶](#POLLWRBAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L90)

```
POLLWRBAND :: 0x0100
```

### [POLLWRNORM ¶](#POLLWRNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L89)

```
POLLWRNORM :: POLLOUT
```

### [POLL\_ERR ¶](#POLL_ERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L498)

```
POLL_ERR :: 4
```

### [POLL\_HUP ¶](#POLL_HUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L500)

```
POLL_HUP :: 6
```

### [POLL\_IN ¶](#POLL_IN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L495)

```
POLL_IN :: 1
```

### [POLL\_MSG ¶](#POLL_MSG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L497)

```
POLL_MSG :: 3
```

### [POLL\_OUT ¶](#POLL_OUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L496)

```
POLL_OUT :: 2
```

### [POLL\_PRI ¶](#POLL_PRI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L499)

```
POLL_PRI :: 5
```

### [POSIX\_MADV\_DONTNEED ¶](#POSIX_MADV_DONTNEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L205)

```
POSIX_MADV_DONTNEED :: 4
```

### [POSIX\_MADV\_NORMAL ¶](#POSIX_MADV_NORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L206)

```
POSIX_MADV_NORMAL :: 0
```

### [POSIX\_MADV\_RANDOM ¶](#POSIX_MADV_RANDOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L207)

```
POSIX_MADV_RANDOM :: 1
```

### [POSIX\_MADV\_SEQUENTIAL ¶](#POSIX_MADV_SEQUENTIAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L208)

```
POSIX_MADV_SEQUENTIAL :: 2
```

### [POSIX\_MADV\_WILLNEED ¶](#POSIX_MADV_WILLNEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L209)

```
POSIX_MADV_WILLNEED :: 3
```

### [PRIO\_PGRP ¶](#PRIO_PGRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L102)

```
PRIO_PGRP :: 1
```

### [PRIO\_PROCESS ¶](#PRIO_PROCESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L101)

```
PRIO_PROCESS :: 0
```

### [PRIO\_USER ¶](#PRIO_USER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L103)

```
PRIO_USER :: 2
```

### [PROT\_EXEC ¶](#PROT_EXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L176)

```
PROT_EXEC :: 0x04
```

### [PROT\_NONE ¶](#PROT_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L111)

```
PROT_NONE: bit_set[Prot_Flag_Bits; i32] : Prot_Flags{}
```

### [PROT\_READ ¶](#PROT_READ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L178)

```
PROT_READ :: 0x01
```

### [PROT\_WRITE ¶](#PROT_WRITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L179)

```
PROT_WRITE :: 0x02
```

### [PTHREAD\_CANCELED ¶](#PTHREAD_CANCELED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L385)

```
PTHREAD_CANCELED :: rawptr(uintptr(1))
```

### [PTHREAD\_CANCEL\_ASYNCHRONOUS ¶](#PTHREAD_CANCEL_ASYNCHRONOUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L373)

```
PTHREAD_CANCEL_ASYNCHRONOUS :: 0x00
```

### [PTHREAD\_CANCEL\_DEFERRED ¶](#PTHREAD_CANCEL_DEFERRED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L374)

```
PTHREAD_CANCEL_DEFERRED :: 0x02
```

### [PTHREAD\_CANCEL\_DISABLE ¶](#PTHREAD_CANCEL_DISABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L376)

```
PTHREAD_CANCEL_DISABLE :: 0x00
```

### [PTHREAD\_CANCEL\_ENABLE ¶](#PTHREAD_CANCEL_ENABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L377)

```
PTHREAD_CANCEL_ENABLE :: 0x01
```

### [PTHREAD\_CREATE\_DETACHED ¶](#PTHREAD_CREATE_DETACHED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L387)

```
PTHREAD_CREATE_DETACHED :: 2
```

### [PTHREAD\_CREATE\_JOINABLE ¶](#PTHREAD_CREATE_JOINABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L388)

```
PTHREAD_CREATE_JOINABLE :: 1
```

### [PTHREAD\_DESTRUCTOR\_ITERATIONS ¶](#PTHREAD_DESTRUCTOR_ITERATIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L103)

```
PTHREAD_DESTRUCTOR_ITERATIONS :: 4
```

### [PTHREAD\_EXPLICIT\_SCHED ¶](#PTHREAD_EXPLICIT_SCHED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L390)

```
PTHREAD_EXPLICIT_SCHED :: 2
```

### [PTHREAD\_INHERIT\_SCHED ¶](#PTHREAD_INHERIT_SCHED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L391)

```
PTHREAD_INHERIT_SCHED :: 1
```

### [PTHREAD\_KEYS\_MAX ¶](#PTHREAD_KEYS_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L104)

```
PTHREAD_KEYS_MAX :: 512
```

### [PTHREAD\_PRIO\_INHERIT ¶](#PTHREAD_PRIO_INHERIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L393)

```
PTHREAD_PRIO_INHERIT :: 1
```

### [PTHREAD\_PRIO\_NONE ¶](#PTHREAD_PRIO_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L394)

```
PTHREAD_PRIO_NONE :: 0
```

### [PTHREAD\_PRIO\_PROTECT ¶](#PTHREAD_PRIO_PROTECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L395)

```
PTHREAD_PRIO_PROTECT :: 2
```

### [PTHREAD\_PROCESS\_PRIVATE ¶](#PTHREAD_PROCESS_PRIVATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L398)

```
PTHREAD_PROCESS_PRIVATE :: 2
```

### [PTHREAD\_PROCESS\_SHARED ¶](#PTHREAD_PROCESS_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L397)

```
PTHREAD_PROCESS_SHARED :: 1
```

### [PTHREAD\_SCOPE\_PROCESS ¶](#PTHREAD_SCOPE_PROCESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L400)

```
PTHREAD_SCOPE_PROCESS :: 2
```

### [PTHREAD\_SCOPE\_SYSTEM ¶](#PTHREAD_SCOPE_SYSTEM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L401)

```
PTHREAD_SCOPE_SYSTEM :: 1
```

### [PTHREAD\_STACK\_MIN ¶](#PTHREAD_STACK_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L105)

```
PTHREAD_STACK_MIN :: 16384 when ODIN_ARCH == .arm64 else 8192
```

### [P\_tmpdir ¶](#P_tmpdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L159)

```
P_tmpdir :: "/var/tmp/"
```

### [RADIXCHAR ¶](#RADIXCHAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L207)

```
RADIXCHAR :: 50
```

### [RAND\_MAX ¶](#RAND_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L88)

```
RAND_MAX :: libc.RAND_MAX
```

### [RE\_DUP\_MAX ¶](#RE_DUP_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin#L163)

```
RE_DUP_MAX :: 255
```

### [RLIMIT\_AS ¶](#RLIMIT_AS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L173)

```
RLIMIT_AS :: 5
```

### [RLIMIT\_CORE ¶](#RLIMIT_CORE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L163)

```
RLIMIT_CORE :: 4
```

### [RLIMIT\_CPU ¶](#RLIMIT_CPU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L164)

```
RLIMIT_CPU :: 0
```

### [RLIMIT\_DATA ¶](#RLIMIT_DATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L165)

```
RLIMIT_DATA :: 2
```

### [RLIMIT\_FSIZE ¶](#RLIMIT_FSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L166)

```
RLIMIT_FSIZE :: 1
```

### [RLIMIT\_NOFILE ¶](#RLIMIT_NOFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L167)

```
RLIMIT_NOFILE :: 7 when ODIN_OS == .Linux else 8
```

### [RLIMIT\_STACK ¶](#RLIMIT_STACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L168)

```
RLIMIT_STACK :: 3
```

### [RLIM\_INFINITY ¶](#RLIM_INFINITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L116)

```
RLIM_INFINITY: rlim_t : (rlim_t(1) << 63) - 1
```

### [RLIM\_SAVED\_CUR ¶](#RLIM_SAVED_CUR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L120)

```
RLIM_SAVED_CUR: rlim_t : RLIM_INFINITY
```

### [RLIM\_SAVED\_MAX ¶](#RLIM_SAVED_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L119)

```
RLIM_SAVED_MAX: rlim_t : RLIM_INFINITY
```

### [RTLD\_GLOBAL ¶](#RTLD_GLOBAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L96)

```
RTLD_GLOBAL :: 0x8
```

### [RTLD\_LAZY ¶](#RTLD_LAZY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L93)

```
RTLD_LAZY :: 0x1
```

### [RTLD\_LOCAL ¶](#RTLD_LOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L98)

```
RTLD_LOCAL: bit_set[RTLD_Flag_Bits; i32] : RTLD_Flags{RTLD_Flag_Bits(log2(_RTLD_LOCAL))}
```

### [RTLD\_NOW ¶](#RTLD_NOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L94)

```
RTLD_NOW :: 0x2
```

### [RUSAGE\_CHILDREN ¶](#RUSAGE_CHILDREN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L123)

```
RUSAGE_CHILDREN :: -1
```

### [RUSAGE\_SELF ¶](#RUSAGE_SELF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L122)

```
RUSAGE_SELF :: 0
```

### [R\_OK ¶](#R_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1071)

```
R_OK :: 1 << 2
```

### [SA\_NOCLDSTOP ¶](#SA_NOCLDSTOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L418)

```
SA_NOCLDSTOP :: 0x0008
```

### [SA\_NOCLDWAIT ¶](#SA_NOCLDWAIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L423)

```
SA_NOCLDWAIT :: 0x0020
```

### [SA\_NODEFER ¶](#SA_NODEFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L424)

```
SA_NODEFER :: 0x0010
```

### [SA\_ONSTACK ¶](#SA_ONSTACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L419)

```
SA_ONSTACK :: 0x0001
```

### [SA\_RESETHAND ¶](#SA_RESETHAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L420)

```
SA_RESETHAND :: 0x0004
```

### [SA\_RESTART ¶](#SA_RESTART) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L421)

```
SA_RESTART :: 0x0002
```

### [SA\_SIGINFO ¶](#SA_SIGINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L422)

```
SA_SIGINFO :: 0x0040
```

### [SCHED\_FIFO ¶](#SCHED_FIFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin#L87)

```
SCHED_FIFO :: 4
```

### [SCHED\_OTHER ¶](#SCHED_OTHER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin#L90)

```
SCHED_OTHER :: 1
```

 

SCHED\_SPORADIC :: 3 NOTE: not a thing on freebsd, netbsd and probably others, leaving it out

### [SCHED\_RR ¶](#SCHED_RR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin#L88)

```
SCHED_RR :: 2
```

### [SCM\_RIGHTS ¶](#SCM_RIGHTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L435)

```
SCM_RIGHTS :: 0x01
```

### [SEEK\_CUR ¶](#SEEK_CUR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L195)

```
SEEK_CUR :: libc.SEEK_CUR
```

### [SEEK\_END ¶](#SEEK_END) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L196)

```
SEEK_END :: libc.SEEK_END
```

### [SEEK\_SET ¶](#SEEK_SET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L197)

```
SEEK_SET :: libc.SEEK_SET
```

### [SEGV\_ACCERR ¶](#SEGV_ACCERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L479)

```
SEGV_ACCERR :: 2
```

### [SEGV\_MAPERR ¶](#SEGV_MAPERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L478)

```
SEGV_MAPERR :: 1
```

### [SEM\_UNDO ¶](#SEM_UNDO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L75)

```
SEM_UNDO :: 0o10000
```

### [SETALL ¶](#SETALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L83)

```
SETALL :: 9
```

### [SETVAL ¶](#SETVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L82)

```
SETVAL :: 8
```

### [SHMLBA ¶](#SHMLBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L67)

```
SHMLBA :: 16 * 1024 when ODIN_ARCH == .arm64 else 4096
```

### [SHM\_RDONLY ¶](#SHM_RDONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L64)

```
SHM_RDONLY :: 0o10000
```

### [SHM\_RND ¶](#SHM_RND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L65)

```
SHM_RND :: 0o20000
```

### [SHUT\_RD ¶](#SHUT_RD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L614)

```
SHUT_RD :: 0
```

### [SHUT\_RDWR ¶](#SHUT_RDWR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L615)

```
SHUT_RDWR :: 2
```

### [SHUT\_WR ¶](#SHUT_WR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L616)

```
SHUT_WR :: 1
```

### [SIGABRT ¶](#SIGABRT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L115)

```
SIGABRT :: libc.SIGABRT
```

### [SIGALRM ¶](#SIGALRM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L386)

```
SIGALRM :: 14
```

### [SIGBUS ¶](#SIGBUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L383)

```
SIGBUS :: 10
```

### [SIGCHLD ¶](#SIGCHLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L391)

```
SIGCHLD :: 20
```

### [SIGCONT ¶](#SIGCONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L388)

```
SIGCONT :: 19
```

### [SIGFPE ¶](#SIGFPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L116)

```
SIGFPE :: libc.SIGFPE
```

### [SIGHUP ¶](#SIGHUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L378)

```
SIGHUP :: 1
```

### [SIGILL ¶](#SIGILL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L117)

```
SIGILL :: libc.SIGILL
```

### [SIGINT ¶](#SIGINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L118)

```
SIGINT :: libc.SIGINT
```

### [SIGKILL ¶](#SIGKILL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L382)

```
SIGKILL :: 9
```

### [SIGPIPE ¶](#SIGPIPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L385)

```
SIGPIPE :: 13
```

### [SIGPOLL ¶](#SIGPOLL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L381)

```
SIGPOLL :: 7
```

### [SIGPROF ¶](#SIGPROF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L397)

```
SIGPROF :: 27
```

### [SIGQUIT ¶](#SIGQUIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L379)

```
SIGQUIT :: 3
```

### [SIGSEGV ¶](#SIGSEGV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L119)

```
SIGSEGV :: libc.SIGSEGV
```

### [SIGSTKSZ ¶](#SIGSTKSZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L430)

```
SIGSTKSZ :: 131072
```

### [SIGSTOP ¶](#SIGSTOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L389)

```
SIGSTOP :: 17
```

### [SIGSYS ¶](#SIGSYS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L384)

```
SIGSYS :: 12
```

### [SIGTERM ¶](#SIGTERM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L120)

```
SIGTERM :: libc.SIGTERM
```

### [SIGTRAP ¶](#SIGTRAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L380)

```
SIGTRAP :: 5
```

### [SIGTSTP ¶](#SIGTSTP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L390)

```
SIGTSTP :: 18
```

### [SIGTTIN ¶](#SIGTTIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L392)

```
SIGTTIN :: 21
```

### [SIGTTOU ¶](#SIGTTOU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L393)

```
SIGTTOU :: 22
```

### [SIGURG ¶](#SIGURG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L387)

```
SIGURG :: 16
```

### [SIGUSR1 ¶](#SIGUSR1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L399)

```
SIGUSR1 :: 30
```

### [SIGUSR2 ¶](#SIGUSR2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L400)

```
SIGUSR2 :: 31
```

### [SIGVTALRM ¶](#SIGVTALRM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L396)

```
SIGVTALRM :: 26
```

### [SIGWINCH ¶](#SIGWINCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L398)

```
SIGWINCH :: 28
```

### [SIGXCPU ¶](#SIGXCPU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L394)

```
SIGXCPU :: 24
```

### [SIGXFSZ ¶](#SIGXFSZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L395)

```
SIGXFSZ :: 25
```

### [SIG\_BLOCK ¶](#SIG_BLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L414)

```
SIG_BLOCK :: 1
```

### [SIG\_DFL ¶](#SIG_DFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L109)

```
SIG_DFL: rawptr : libc.SIG_DFL
```

 

Request for default signal handling.

### [SIG\_ERR ¶](#SIG_ERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L111)

```
SIG_ERR: rawptr : libc.SIG_ERR
```

 

Return value from signal() in case of error.

### [SIG\_HOLD ¶](#SIG_HOLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L373)

```
SIG_HOLD :: rawptr(uintptr(5))
```

 

Request that signal be held

### [SIG\_IGN ¶](#SIG_IGN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L113)

```
SIG_IGN: rawptr : libc.SIG_IGN
```

 

Request that signal be ignored.

### [SIG\_SETMASK ¶](#SIG_SETMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L416)

```
SIG_SETMASK :: 3
```

### [SIG\_UNBLOCK ¶](#SIG_UNBLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L415)

```
SIG_UNBLOCK :: 2
```

### [SI\_ASYNCIO ¶](#SI_ASYNCIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L505)

```
SI_ASYNCIO :: 0x10004
```

### [SI\_MESGQ ¶](#SI_MESGQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L506)

```
SI_MESGQ :: 0x10005
```

### [SI\_QUEUE ¶](#SI_QUEUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L503)

```
SI_QUEUE :: 0x10002
```

### [SI\_TIMER ¶](#SI_TIMER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L504)

```
SI_TIMER :: 0x10003
```

### [SI\_USER ¶](#SI_USER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L502)

```
SI_USER :: 0x10001
```

### [SOCK\_DGRAM ¶](#SOCK_DGRAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L476)

```
SOCK_DGRAM :: 2
```

### [SOCK\_RAW ¶](#SOCK_RAW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L477)

```
SOCK_RAW :: 3
```

### [SOCK\_SEQPACKET ¶](#SOCK_SEQPACKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L478)

```
SOCK_SEQPACKET :: 5
```

### [SOCK\_STREAM ¶](#SOCK_STREAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L479)

```
SOCK_STREAM :: 1
```

### [SOL\_SOCKET ¶](#SOL_SOCKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L523)

```
SOL_SOCKET :: 0xffff
```

### [SOMAXCONN ¶](#SOMAXCONN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L562)

```
SOMAXCONN :: 128
```

### [SO\_ACCEPTCONN ¶](#SO_ACCEPTCONN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L525)

```
SO_ACCEPTCONN :: 0x0002
```

### [SO\_BROADCAST ¶](#SO_BROADCAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L526)

```
SO_BROADCAST :: 0x0020
```

### [SO\_DEBUG ¶](#SO_DEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L527)

```
SO_DEBUG :: 0x0001
```

### [SO\_DONTROUTE ¶](#SO_DONTROUTE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L528)

```
SO_DONTROUTE :: 0x0010
```

### [SO\_ERROR ¶](#SO_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L529)

```
SO_ERROR :: 0x1007
```

### [SO\_KEEPALIVE ¶](#SO_KEEPALIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L530)

```
SO_KEEPALIVE :: 0x0008
```

### [SO\_LINGER ¶](#SO_LINGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L540)

```
SO_LINGER :: 0x1080
```

### [SO\_OOBINLINE ¶](#SO_OOBINLINE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L531)

```
SO_OOBINLINE :: 0x0100
```

### [SO\_RCVBUF ¶](#SO_RCVBUF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L532)

```
SO_RCVBUF :: 0x1002
```

### [SO\_RCVLOWAT ¶](#SO_RCVLOWAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L533)

```
SO_RCVLOWAT :: 0x1004
```

### [SO\_RCVTIMEO ¶](#SO_RCVTIMEO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L541)

```
SO_RCVTIMEO :: 0x1006
```

### [SO\_REUSEADDR ¶](#SO_REUSEADDR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L534)

```
SO_REUSEADDR :: 0x0004
```

### [SO\_SNDBUF ¶](#SO_SNDBUF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L535)

```
SO_SNDBUF :: 0x1001
```

### [SO\_SNDLOWAT ¶](#SO_SNDLOWAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L536)

```
SO_SNDLOWAT :: 0x1003
```

### [SO\_SNDTIMEO ¶](#SO_SNDTIMEO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L542)

```
SO_SNDTIMEO :: 0x1005
```

### [SO\_TYPE ¶](#SO_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L537)

```
SO_TYPE :: 0x1008
```

### [SS\_DISABLE ¶](#SS_DISABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L427)

```
SS_DISABLE :: 0x0004
```

### [SS\_ONSTACK ¶](#SS_ONSTACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L426)

```
SS_ONSTACK :: 0x0001
```

### [STDERR\_FILENO ¶](#STDERR_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L133)

```
STDERR_FILENO :: 2
```

### [STDIN\_FILENO ¶](#STDIN_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L134)

```
STDIN_FILENO :: 0
```

### [STDOUT\_FILENO ¶](#STDOUT_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L135)

```
STDOUT_FILENO :: 1
```

### [ST\_NOSUID ¶](#ST_NOSUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L68)

```
ST_NOSUID :: 0x00000002
```

### [ST\_RDONLY ¶](#ST_RDONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L67)

```
ST_RDONLY :: 0x00000001
```

### [S\_IFBLK ¶](#S_IFBLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L187)

```
S_IFBLK: bit_set[Mode_Bits; _mode_t] : mode_t{.IFDIR, .IFCHR}
```

### [S\_IFCHR ¶](#S_IFCHR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L189)

```
S_IFCHR: bit_set[Mode_Bits; _mode_t] : mode_t{.IFCHR}
```

### [S\_IFDIR ¶](#S_IFDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L190)

```
S_IFDIR: bit_set[Mode_Bits; _mode_t] : mode_t{.IFDIR}
```

### [S\_IFIFO ¶](#S_IFIFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L188)

```
S_IFIFO: bit_set[Mode_Bits; _mode_t] : mode_t{.IFIFO}
```

### [S\_IFLNK ¶](#S_IFLNK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L186)

```
S_IFLNK: bit_set[Mode_Bits; _mode_t] : mode_t{.IFREG, .IFCHR}
```

### [S\_IFMT ¶](#S_IFMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L184)

```
S_IFMT: bit_set[Mode_Bits; _mode_t] : mode_t{.IFCHR, .IFREG, .IFDIR, .IFIFO}
```

### [S\_IFREG ¶](#S_IFREG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L191)

```
S_IFREG: bit_set[Mode_Bits; _mode_t] : mode_t{.IFREG}
```

### [S\_IFSOCK ¶](#S_IFSOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L185)

```
S_IFSOCK: bit_set[Mode_Bits; _mode_t] : mode_t{.IFREG, .IFDIR}
```

### [S\_IRWXG ¶](#S_IRWXG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L151)

```
S_IRWXG: bit_set[Mode_Bits; _mode_t] : mode_t{.IRGRP, .IWGRP, .IXGRP}
```

 

Read, write, execute group.

### [S\_IRWXO ¶](#S_IRWXO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L153)

```
S_IRWXO: bit_set[Mode_Bits; _mode_t] : mode_t{.IROTH, .IWOTH, .IXOTH}
```

 

Read, write, execute other.

### [S\_IRWXU ¶](#S_IRWXU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L149)

```
S_IRWXU: bit_set[Mode_Bits; _mode_t] : mode_t{.IRUSR, .IWUSR, .IXUSR}
```

 

Read, write, execute user.

### [TAB0 ¶](#TAB0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L307)

```
TAB0 :: 0x00000000
```

### [TAB1 ¶](#TAB1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L308)

```
TAB1 :: 0x00000400
```

### [TAB3 ¶](#TAB3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L309)

```
TAB3 :: 0x00000800
```

### [TABDLY ¶](#TABDLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L202)

```
TABDLY: bit_set[COutput_Flag_Bits; tcflag_t] : transmute(COutput_Flags)tcflag_t(_TABDLY)
```

 

horizontal tab delay mask

### [TCIFLUSH ¶](#TCIFLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L359)

```
TCIFLUSH :: 1
```

### [TCIOFF ¶](#TCIOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L363)

```
TCIOFF :: 3
```

### [TCIOFLUSH ¶](#TCIOFLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L361)

```
TCIOFLUSH :: 3
```

### [TCION ¶](#TCION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L364)

```
TCION :: 4
```

### [TCOFLUSH ¶](#TCOFLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L360)

```
TCOFLUSH :: 2
```

### [TCOOFF ¶](#TCOOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L365)

```
TCOOFF :: 1
```

### [TCOON ¶](#TCOON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L366)

```
TCOON :: 2
```

### [TCP\_NODELAY ¶](#TCP_NODELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_tcp.odin#L8)

```
TCP_NODELAY :: 0x01
```

### [THOUSEP ¶](#THOUSEP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L208)

```
THOUSEP :: 51
```

### [TMP\_MAX ¶](#TMP_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L201)

```
TMP_MAX :: libc.TMP_MAX
```

### [TOSTOP ¶](#TOSTOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L357)

```
TOSTOP :: 0x00400000
```

### [TRAP\_BRKPT ¶](#TRAP_BRKPT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L485)

```
TRAP_BRKPT :: 1
```

### [TRAP\_TRACE ¶](#TRAP_TRACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L486)

```
TRAP_TRACE :: 2
```

### [T\_FMT ¶](#T_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L154)

```
T_FMT :: 3
```

### [T\_FMT\_AMPM ¶](#T_FMT_AMPM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L155)

```
T_FMT_AMPM :: 4
```

### [UL\_GETFSIZE ¶](#UL_GETFSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/ulimit.odin#L37)

```
UL_GETFSIZE :: 1
```

### [UL\_SETFSIZE ¶](#UL_SETFSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/ulimit.odin#L38)

```
UL_SETFSIZE :: 2
```

### [UTIME\_NOW ¶](#UTIME_NOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L304)

```
UTIME_NOW :: -1
```

### [UTIME\_OMIT ¶](#UTIME_OMIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L305)

```
UTIME_OMIT :: -2
```

### [VEOF ¶](#VEOF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L266)

```
VEOF :: 0
```

### [VEOL ¶](#VEOL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L267)

```
VEOL :: 1
```

### [VERASE ¶](#VERASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L268)

```
VERASE :: 3
```

### [VINTR ¶](#VINTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L269)

```
VINTR :: 8
```

### [VKILL ¶](#VKILL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L270)

```
VKILL :: 5
```

### [VMIN ¶](#VMIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L271)

```
VMIN :: 16
```

### [VQUIT ¶](#VQUIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L272)

```
VQUIT :: 9
```

### [VSTART ¶](#VSTART) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L273)

```
VSTART :: 12
```

### [VSTOP ¶](#VSTOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L274)

```
VSTOP :: 13
```

### [VSUSP ¶](#VSUSP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L275)

```
VSUSP :: 10
```

### [VT0 ¶](#VT0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L314)

```
VT0 :: 0x00000000
```

### [VT1 ¶](#VT1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L315)

```
VT1 :: 0x00010000
```

### [VTDLY ¶](#VTDLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L206)

```
VTDLY: bit_set[COutput_Flag_Bits; tcflag_t] : transmute(COutput_Flags)tcflag_t(_VTDLY)
```

 

vertical tab delay mask

### [VTIME ¶](#VTIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L276)

```
VTIME :: 17
```

### [WCONTINUED ¶](#WCONTINUED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L162)

```
WCONTINUED :: 0x00000010
```

### [WEXITED ¶](#WEXITED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L166)

```
WEXITED :: 0x00000004
```

### [WNOHANG ¶](#WNOHANG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L163)

```
WNOHANG :: 0x00000001
```

### [WNOWAIT ¶](#WNOWAIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L167)

```
WNOWAIT :: 0x00000020
```

### [WRDE\_APPEND ¶](#WRDE_APPEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L70)

```
WRDE_APPEND :: 0x01
```

### [WRDE\_BADCHAR ¶](#WRDE_BADCHAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L77)

```
WRDE_BADCHAR :: 1
```

### [WRDE\_BADVAL ¶](#WRDE_BADVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L78)

```
WRDE_BADVAL :: 2
```

### [WRDE\_CMDSUB ¶](#WRDE_CMDSUB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L79)

```
WRDE_CMDSUB :: 3
```

### [WRDE\_DOOFFS ¶](#WRDE_DOOFFS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L71)

```
WRDE_DOOFFS :: 0x02
```

### [WRDE\_NOCMD ¶](#WRDE_NOCMD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L72)

```
WRDE_NOCMD :: 0x04
```

### [WRDE\_NOSPACE ¶](#WRDE_NOSPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L80)

```
WRDE_NOSPACE :: 4
```

### [WRDE\_REUSE ¶](#WRDE_REUSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L73)

```
WRDE_REUSE :: 0x08
```

### [WRDE\_SHOWERR ¶](#WRDE_SHOWERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L74)

```
WRDE_SHOWERR :: 0x10
```

### [WRDE\_SYNTAX ¶](#WRDE_SYNTAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L81)

```
WRDE_SYNTAX :: 6
```

### [WRDE\_UNDEF ¶](#WRDE_UNDEF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L75)

```
WRDE_UNDEF :: 0x20
```

### [WSTOPPED ¶](#WSTOPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L168)

```
WSTOPPED :: 0x00000008
```

### [WUNTRACED ¶](#WUNTRACED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L164)

```
WUNTRACED :: 0x00000002
```

### [W\_OK ¶](#W_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1070)

```
W_OK :: 1 << 1
```

### [X\_OK ¶](#X_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L1069)

```
X_OK :: 1 << 0
```

### [YESEXPR ¶](#YESEXPR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L210)

```
YESEXPR :: 52
```

## Variables

### [daylight ¶](#daylight) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L126)

```
daylight: b32
```

 

Whether daylight saving conversion should be done.

### [environ ¶](#environ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L319)

```
environ: [^]cstring
```

 

**Example:**

```
for i, entry := 0, posix.environ[0]; entry != nil; i, entry = i+1, posix.environ[i] {
	fmt.println(entry)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [getdate\_err ¶](#getdate_err) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L193)

```
getdate_err: Errno
```

### [in6addr\_any ¶](#in6addr_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L15)

```
in6addr_any: in6_addr
```

### [in6addr\_loopback ¶](#in6addr_loopback) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L16)

```
in6addr_loopback: in6_addr
```

### [optarg ¶](#optarg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L509)

```
optarg: cstring
```

### [opterr ¶](#opterr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L510)

```
opterr: i32
```

### [optind ¶](#optind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L511)

```
optind: i32
```

### [optopt ¶](#optopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L512)

```
optopt: i32
```

### [stderr ¶](#stderr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L205)

```
stderr: ^c.FILE = …
```

### [stdin ¶](#stdin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L206)

```
stdin: ^c.FILE = …
```

### [stdout ¶](#stdout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L207)

```
stdout: ^c.FILE = …
```

### [timezone ¶](#timezone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L129)

```
@(link_name=LTIMEZONE)
timezone: i64
```

 

The time in seconds between UTC and local standard time.

### [tzname ¶](#tzname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L130)

```
tzname: [2]cstring
```

## Procedures

### [CMSG\_DATA ¶](#CMSG_DATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L444)

```
CMSG_DATA :: proc "contextless" (cmsg: ^cmsghdr) -> [^]u8 {…}
```

 

Returns a pointer to the data array.

### [CMSG\_FIRSTHDR ¶](#CMSG_FIRSTHDR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L463)

```
CMSG_FIRSTHDR :: proc "contextless" (mhdr: ^msghdr) -> ^cmsghdr {…}
```

 

Returns a pointer to the first cmsghdr or nil.

### [CMSG\_NXTHDR ¶](#CMSG_NXTHDR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L449)

```
CMSG_NXTHDR :: proc "contextless" (mhdr: ^msghdr, cmsg: ^cmsghdr) -> ^cmsghdr {…}
```

 

Returns a pointer to the next cmsghdr or nil.

### [FD\_CLR ¶](#FD_CLR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L101)

```
FD_CLR :: proc "contextless" (_fd: FD, _p: ^fd_set) {…}
```

### [FD\_ISSET ¶](#FD_ISSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L107)

```
FD_ISSET :: proc "contextless" (_fd: FD, _p: ^fd_set) -> bool {…}
```

### [FD\_SET ¶](#FD_SET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L115)

```
FD_SET :: proc "contextless" (_fd: FD, _p: ^fd_set) {…}
```

### [FD\_ZERO ¶](#FD_ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L121)

```
FD_ZERO :: proc "contextless" (_p: ^fd_set) {…}
```

### [IN6\_IS\_ADDR\_LINKLOCAL ¶](#IN6_IS_ADDR_LINKLOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L169)

```
IN6_IS_ADDR_LINKLOCAL :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_LOOPBACK ¶](#IN6_IS_ADDR_LOOPBACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L155)

```
IN6_IS_ADDR_LOOPBACK :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_MC\_GLOBAL ¶](#IN6_IS_ADDR_MC_GLOBAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L254)

```
IN6_IS_ADDR_MC_GLOBAL :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_MC\_LINKLOCAL ¶](#IN6_IS_ADDR_MC_LINKLOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L232)

```
IN6_IS_ADDR_MC_LINKLOCAL :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_MC\_NODELOCAL ¶](#IN6_IS_ADDR_MC_NODELOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L225)

```
IN6_IS_ADDR_MC_NODELOCAL :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_MC\_ORGLOCAL ¶](#IN6_IS_ADDR_MC_ORGLOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L247)

```
IN6_IS_ADDR_MC_ORGLOCAL :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_MC\_SITELOCAL ¶](#IN6_IS_ADDR_MC_SITELOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L240)

```
IN6_IS_ADDR_MC_SITELOCAL :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_MULTICAST ¶](#IN6_IS_ADDR_MULTICAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L165)

```
IN6_IS_ADDR_MULTICAST :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_SITELOCAL ¶](#IN6_IS_ADDR_SITELOCAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L173)

```
IN6_IS_ADDR_SITELOCAL :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_UNSPECIFIED ¶](#IN6_IS_ADDR_UNSPECIFIED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L151)

```
IN6_IS_ADDR_UNSPECIFIED :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_V4COMPAT ¶](#IN6_IS_ADDR_V4COMPAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L186)

```
IN6_IS_ADDR_V4COMPAT :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [IN6\_IS\_ADDR\_V4MAPPED ¶](#IN6_IS_ADDR_V4MAPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin#L177)

```
IN6_IS_ADDR_V4MAPPED :: proc "contextless" (a: in6_addr) -> b32 {…}
```

### [S\_ISBLK ¶](#S_ISBLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L199)

```
S_ISBLK :: proc "contextless" (m: bit_set[Mode_Bits; _mode_t]) -> bool {…}
```

 

Test for a block special file.

### [S\_ISCHR ¶](#S_ISCHR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L204)

```
S_ISCHR :: proc "contextless" (m: bit_set[Mode_Bits; _mode_t]) -> bool {…}
```

 

Test for a character special file.

### [S\_ISDIR ¶](#S_ISDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L219)

```
S_ISDIR :: proc "contextless" (m: bit_set[Mode_Bits; _mode_t]) -> bool {…}
```

 

Test for a directory.

### [S\_ISFIFO ¶](#S_ISFIFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L209)

```
S_ISFIFO :: proc "contextless" (m: bit_set[Mode_Bits; _mode_t]) -> bool {…}
```

 

Test for a pipe or FIFO special file.

### [S\_ISLNK ¶](#S_ISLNK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L224)

```
S_ISLNK :: proc "contextless" (m: bit_set[Mode_Bits; _mode_t]) -> bool {…}
```

 

Test for a symbolic link.

### [S\_ISREG ¶](#S_ISREG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L214)

```
S_ISREG :: proc "contextless" (m: bit_set[Mode_Bits; _mode_t]) -> bool {…}
```

 

Test for a regular file.

### [S\_ISSOCK ¶](#S_ISSOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L229)

```
S_ISSOCK :: proc "contextless" (m: bit_set[Mode_Bits; _mode_t]) -> bool {…}
```

 

Test for a socket.

### [WEXITSTATUS ¶](#WEXITSTATUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L97)

```
WEXITSTATUS :: proc "contextless" (x: i32) -> i32 {…}
```

 

If WIFEXITED is true, returns the exit status.

### [WIFCONTINUED ¶](#WIFCONTINUED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L122)

```
WIFCONTINUED :: proc "contextless" (x: i32) -> bool {…}
```

 

If status was returned for a child process that has continued from a job control stop.

### [WIFEXITED ¶](#WIFEXITED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L92)

```
WIFEXITED :: proc "contextless" (x: i32) -> bool {…}
```

 

If terminated normally.

### [WIFSIGNALED ¶](#WIFSIGNALED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L102)

```
WIFSIGNALED :: proc "contextless" (x: i32) -> bool {…}
```

 

If terminated due to an uncaught signal.

### [WIFSTOPPED ¶](#WIFSTOPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L112)

```
WIFSTOPPED :: proc "contextless" (x: i32) -> bool {…}
```

 

If status was returned for a child process that is currently stopped.

### [WSTOPSIG ¶](#WSTOPSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L117)

```
WSTOPSIG :: proc "contextless" (x: i32) -> Signal {…}
```

 

If WIFSTOPPED, the signal that caused the child process to stop.

### [WTERMSIG ¶](#WTERMSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L107)

```
WTERMSIG :: proc "contextless" (x: i32) -> Signal {…}
```

 

If WIFSIGNALED is true, returns the signal.

### [a64l ¶](#a64l) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L21)

```
a64l :: proc "c" (s: cstring) -> i64 ---
```

 

Takes a pointer to a radix-64 representation, in which the first digit is the least significant,
and return the corresponding long value.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/a64l.html)

### [accept ¶](#accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L36)

```
accept :: proc "c" (socket: FD, address: ^sockaddr, address_len: ^socklen_t) -> FD ---
```

 

Extracts the first connection on the queue of pending connections.

Blocks (if not O\_NONBLOCK) if there is no pending connection.

**Returns:**  
-1 (setting errno) on failure, file descriptor of accepted socket otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/accept.html)

### [access ¶](#access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L29)

```
access :: proc "c" (path: cstring, amode: bit_set[Mode_Flag_Bits; i32] = F_OK) -> result ---
```

 

Checks the file named by the pathname pointed to by the path argument for
accessibility according to the bit pattern contained in amode.

**Example:**

```
if (posix.access("/tmp/myfile", posix.F_OK) != .OK) {
	fmt.printfln("/tmp/myfile access check failed: %v", posix.strerror(posix.errno()))
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/access.html)

### [alarm ¶](#alarm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L31)

```
alarm :: proc "c" (seconds: u32) -> u32 ---
```

 

The alarm() function shall cause the system to generate a SIGALRM signal for the process after the number of realtime seconds specified by seconds have elapsed. Processor scheduling delays may prevent the process from handling the signal as soon as it is generated.

If seconds is 0, a pending alarm request, if any, is canceled.

**Returns:**  
the time left on the previous alarm() or 0

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/alarm.html)

### [alphasort ¶](#alphasort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L21)

```
alphasort :: proc "c" ([^]^dirent, [^]^dirent) -> i32 ---
```

 

can be used as the comparison function for the scandir() function to sort the directory entries, d1 and d2, into alphabetical order.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/scandir.html)

### [asctime\_r ¶](#asctime_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L21)

```
asctime_r :: proc "c" (tm: ^libc.tm, buf: [^]u8) -> cstring ---
```

 

Convert the broken down time in the structure to a string form: Sun Sep 16 01:03:52 1973.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/asctime_r.html)

### [basename ¶](#basename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/libgen.odin#L61)

```
basename :: proc "c" (path: cstring) -> cstring ---
```

 

Takes the pathname pointed to by path and return a pointer to the final component of the
pathname, deleting any trailing '/' characters.

NOTE: may modify input, so don't give it string literals.

**Returns:**  
a string that might be a modification of the input string or a static string overwritten by subsequent calls

**Example:**

```
tests := []string{
	"usr", "usr/", "", "/", "//", "///", "/usr/", "/usr/lib",
	"//usr//lib//", "/home//dwc//test",
}

tbl: table.Table
table.init(&tbl)
table.header(&tbl, "input", "dirname", "basename")

for test in tests {
	din := strings.clone_to_cstring(test); defer delete(din)
	dir := strings.clone_from_cstring(posix.dirname(din))

	bin  := strings.clone_to_cstring(test); defer delete(bin)
	base := strings.clone_from_cstring(posix.basename(bin))
	table.row(&tbl, test, dir, base)
}

table.write_plain_table(os.stream_from_handle(os.stdout), &tbl)
```

**Output:**

```
+----------------+----------+--------+
|input           |dirname   |basename|
+----------------+----------+--------+
|usr             |.         |usr     |
|usr/            |.         |usr     |
|                |.         |.       |
|/               |/         |/       |
|//              |/         |/       |
|///             |/         |/       |
|/usr/           |/         |usr     |
|/usr/lib        |/usr      |lib     |
|//usr//lib//    |//usr     |lib     |
|/home//dwc//test|/home//dwc|test    |
+----------------+----------+--------+
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/basename.html)

### [bind ¶](#bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L63)

```
bind :: proc "c" (socket: FD, address: ^sockaddr, address_len: socklen_t) -> result ---
```

 

Assigns a local socket address to the socket.

**Example:**

```
sfd := posix.socket(.UNIX, .STREAM)
if sfd == -1 {
	/* Handle error */
}

addr: posix.sockaddr_un
addr.sun_family = .UNIX
copy(addr.sun_path[:], "/somepath\x00")

/*
	unlink the socket before binding in case
	of previous runs not cleaning up the socket
*/
posix.unlink("/somepath")

if posix.bind(sfd, (^posix.sockaddr)(&addr), size_of(addr)) != .OK {
	/* Handle error */
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/bind.html)

### [cfgetispeed ¶](#cfgetispeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L20)

```
cfgetispeed :: proc "c" (termios_p: ^termios) -> speed_t ---
```

 

Get the input baud rate.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/cfgetispeed.html)

### [cfgetospeed ¶](#cfgetospeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L34)

```
cfgetospeed :: proc "c" (termios_p: ^termios) -> speed_t ---
```

 

Get the output baud rate.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/cfgetospeed.html)

### [cfsetispeed ¶](#cfsetispeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L27)

```
cfsetispeed :: proc "c" (termios_p: ^termios, rate: speed_t) -> result ---
```

 

Set the input baud rate.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/cfsetispeed.html)

### [cfsetospeed ¶](#cfsetospeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L41)

```
cfsetospeed :: proc "c" (termios_p: ^termios, rate: speed_t) -> result ---
```

 

Set the output baud rate.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/cfsetospeed.html)

### [chdir ¶](#chdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L42)

```
chdir :: proc "c" (path: cstring) -> result ---
```

 

Causes the directory named by path to become the current working directory.

**Example:**

```
if (posix.chdir("/tmp") == .OK) {
	fmt.println("changed current directory to /tmp")
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/chdir.html)

### [chmod ¶](#chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L60)

```
chmod :: proc "c" (path: cstring, mode: bit_set[Mode_Bits; _mode_t]) -> result ---
```

 

Change the mode of a file.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/chmod.html)

### [chown ¶](#chown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L48)

```
chown :: proc "c" (path: cstring, owner: uid_t, group: gid_t) -> result ---
```

 

Changes the user and group ownership of a file.

If owner or group is specified as (uid\_t)-1 or (gid\_t)-1, respectively, the corresponding ID of the file shall not be changed.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/chown.html)

### [clock\_getres ¶](#clock_getres) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L57)

```
clock_getres :: proc "c" (clock_id: Clock, res: ^libc.timespec) -> result ---
```

 

Returns the resolution of any clock.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/clock_getres.html)

### [clock\_gettime ¶](#clock_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L65)

```
clock_gettime :: proc "c" (clock_id: Clock, tp: ^libc.timespec) -> result ---
```

 

Returns the current value tp for the specified clock, clock\_id.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/clock_getres.html)

### [clock\_settime ¶](#clock_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L73)

```
clock_settime :: proc "c" (clock_id: Clock, tp: ^libc.timespec) -> result ---
```

 

Sets the specified clock's time.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/clock_getres.html)

### [close ¶](#close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L85)

```
close :: proc "c" (fildes: FD) -> result ---
```

 

Deallocates the file descriptor indicated by fildes.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/close.html)

### [closedir ¶](#closedir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L55)

```
closedir :: proc "c" (dirp: DIR) -> result ---
```

 

Close the directory stream referred to by the argument dirp.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/closedir.html)

### [confstr ¶](#confstr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L95)

```
confstr :: proc "c" (name: CS, buf: [^]u8, len: uint) -> uint ---
```

 

Return configuration-defined string values.
Its use and purpose are similar to sysconf(), but it is used where string values rather than numeric values are returned.

**Returns:**  
0 (setting errno) if `name` is invalid, need `buf` of `len` bytes if `buf` is `nil`, amount of bytes added to buf otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/confstr.html)

### [connect ¶](#connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L70)

```
connect :: proc "c" (socket: FD, address: ^sockaddr, address_len: socklen_t) -> result ---
```

 

Attempt to make a connection.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/connect.html)

### [creat ¶](#creat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L20)

```
creat :: proc "c" (path: cstring, mode: bit_set[Mode_Bits; _mode_t]) -> FD ---
```

 

Implemented as `return open(path, O_WRONLY|O_CREAT|O_TRUNC, mode);`

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/creat.html)

### [crypt ¶](#crypt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L129)

```
crypt :: proc "c" (key: cstring, salt: cstring) -> cstring ---
```

 

A string encoding function. The algorithm is implementation-defined.

The use of crypt() for anything other than password hashing is not recommended.

**Returns:**  
a static string overwritten by subsequent calls, `nil` (setting errno) on failure

### [ctermid ¶](#ctermid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L24)

```
ctermid :: proc "c" (s: [^]u8) -> cstring ---
```

 

Generates a string that, when used as a pathname,
refers to the current controlling terminal for the current process.

If s is nil, the returned string might be static and overwritten by subsequent calls or other factors.
If s is not nil, s is assumed len(s) >= L\_ctermid.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ctermid.html)

### [ctime\_r ¶](#ctime_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L29)

```
ctime_r :: proc "c" (clock: ^libc.time_t, buf: [^]u8) -> cstring ---
```

 

Convert a time value to a date and time string in the same format as asctime().

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ctime_r.html)

### [dirfd ¶](#dirfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L183)

```
dirfd :: proc "c" (dirp: DIR) -> FD ---
```

 

Return a file descriptor referring to the same directory as the dirp argument.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dirfd.html)

### [dirname ¶](#dirname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/libgen.odin#L75)

```
dirname :: proc "c" (path: cstring) -> cstring ---
```

 

Takes a string that contains a pathname, and returns a string that is a pathname of the parent
directory of that file.

NOTE: may modify input, so don't give it string literals.

**Returns:**  
a string that might be a modification of the input string or a static string overwritten by subsequent calls

See example for basename().

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dirname.html)

### [dlclose ¶](#dlclose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L28)

```
dlclose :: proc "c" (handle: Symbol_Table) -> i32 ---
```

 

inform the system that the object referenced by a handle returned from a previous dlopen()
invocation is no longer needed by the application.

**Returns:**  
0 on success, non-zero on failure (use dlerror() for more information)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dlclose.html)

### [dlerror ¶](#dlerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L36)

```
dlerror :: proc "c" () -> cstring ---
```

 

return a null-terminated character string (with no trailing <newline>) that describes
the last error that occurred during dynamic linking processing.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dlerror.html)

### [dlopen ¶](#dlopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L46)

```
dlopen :: proc "c" (file: cstring, mode: bit_set[RTLD_Flag_Bits; i32]) -> Symbol_Table ---
```

 

Make the symbols (function identifiers and data object identifiers) in the executable object
file specified by file available to the calling program.

**Returns:**  
a reference to the symbol table on success, nil on failure (use dlerror() for more information)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dlopen.html)

### [dlsym ¶](#dlsym) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin#L73)

```
dlsym :: proc "c" (handle: Symbol_Table, name: cstring) -> rawptr ---
```

 

Obtain the address of a symbol (a function identifier or a data object identifier)
defined in the symbol table identified by the handle argument.

**Returns:**  
the address of the matched symbol on success, nil on failure (use dlerror() for more information)

**Example:**

```
handle := posix.dlopen("/usr/home/me/libfoo.so", posix.RTLD_LOCAL + { .RTLD_LAZY })
defer posix.dlclose(handle)

if handle == nil {
	panic(string(posix.dlerror()))
}

foo: proc(a, b: int) -> int
foo = auto_cast posix.dlsym(handle, "foo")

if foo == nil {
	panic(string(posix.dlerror()))
}

fmt.printfln("foo(%v, %v) == %v", 1, 2, foo(1, 2))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dlsym.html)

### [dprintf ¶](#dprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L33)

```
dprintf :: proc "c" (fildse: FD, format: cstring, .. args: ..any) -> i32 ---
```

 

Equivalent to fprintf but output is written to the file descriptor.

Return: number of bytes written, negative (setting errno) on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dprintf.html)

### [drand48 ¶](#drand48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L40)

```
drand48 :: proc "c" () -> f64 ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

**Returns:**  
non-negative, double-precision, floating-point values, uniformly distributed over the interval [0.0,1.0)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [dup ¶](#dup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L167)

```
dup :: proc "c" (fildes: FD) -> FD ---
```

 

Returns a new file descriptor referring to the one given, sharing locks, clearing CLOEXEC.

**Returns:**  
-1 (setting errno) on failure, the new file descriptor on success

**Example:**

```
// Redirecting stdout to a file:
file := posix.open("/tmp/out", { .RDWR })
posix.close(1)
posix.dup(file)
posix.close(file)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dup.html)

### [dup2 ¶](#dup2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L181)

```
dup2 :: proc "c" (fildes, fildes2: FD) -> FD ---
```

 

Causes the file descriptor fildes2 to refer to the same open file description as
the file descriptor fildes and to share any locks, and shall return fildes2.

**Returns:**  
-1 (setting errno) on failure, fildes2 on success

**Example:**

```
// Redirecting stderr to stdout:
posix.dup2(1, 2)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dup.html)

### [encrypt ¶](#encrypt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L151)

```
encrypt :: proc "c" (block: [^]u8, decode: b32) ---
```

 

An implementation-defined encoding algorithm.
The key generated by setkey() is used to encrypt the string block with encrypt().

block must be 64 bytes.

decode controls if the block is encoded or decoded.

May set errno to ENOSYS if the functionality is not supported.

**Example:**

```
block: [64]byte
copy(block[:], "Hello, World!")

posix.set_errno(.NONE)
posix.encrypt(raw_data(block[:]), decode=false)
assert(posix.errno() == .NONE, "encrypt not supported")
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/encrypt.html)

### [endgrent ¶](#endgrent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L22)

```
endgrent :: proc "c" () -> ! ---
```

 

Closes the group database.

Checking status would be done by setting errno to 0, calling this, and checking errno.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/endgrent.html)

### [endhostent ¶](#endhostent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L132)

```
endhostent :: proc "c" () -> ! ---
```

 

Closes the connection to the database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sethostent.html)

### [endnetent ¶](#endnetent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L175)

```
endnetent :: proc "c" () -> ! ---
```

 

Closes the database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setnetent.html)

### [endprotoent ¶](#endprotoent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L217)

```
endprotoent :: proc "c" () -> ! ---
```

 

Closes the database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setprotoent.html)

### [endpwent ¶](#endpwent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L44)

```
endpwent :: proc "c" () -> ! ---
```

 

Closes the user database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setpwent.html)

### [endservent ¶](#endservent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L259)

```
endservent :: proc "c" () -> ! ---
```

 

Closes the database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setservent.html)

### [erand48 ¶](#erand48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L49)

```
erand48 :: proc "c" (xsubi: ^[3]u16) -> f64 ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

**Returns:**  
non-negative, double-precision, floating-point values, uniformly distributed over the interval [0.0,1.0)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [execl ¶](#execl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L197)

```
execl :: proc "c" (path: cstring, arg0: cstring, .. args: ..cstring) -> i32 ---
```

 

The exec family of functions shall replace the current process image with a new process image.
The new image shall be constructed from a regular, executable file called the new process image file.
There shall be no return from a successful exec,
because the calling process image is overlaid by the new process image.

Takes arguments as varargs and the last of them must be nil.

**Example:**

```
ret := posix.execl("/bin/ls", "ls", "-l", nil)
fmt.panicf("could not execute: %v %v", ret, posix.strerror(posix.errno()))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [execle ¶](#execle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L219)

```
execle :: proc "c" (path: cstring, arg0: cstring, .. args: ..any) -> i32 ---
```

 

The exec family of functions shall replace the current process image with a new process image.
The new image shall be constructed from a regular, executable file called the new process image file.
There shall be no return from a successful exec,
because the calling process image is overlaid by the new process image.

Takes arguments as varargs and the last of them must be nil.
After the arguments an array of environment strings (also nil terminated) is expected.

**Example:**

```
env := []cstring{
	"HOME=/usr/home",
	"LOGNAME=home",
	nil,
}
ret := posix.execle("/bin/ls", "ls", cstring("-l"), cstring(nil), raw_data(env))
fmt.panicf("could not execute: %v", posix.strerror(posix.errno()))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [execlp ¶](#execlp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L236)

```
execlp :: proc "c" (file: cstring, arg0: cstring, .. args: ..cstring) -> i32 ---
```

 

The exec family of functions shall replace the current process image with a new process image.
The new image shall be constructed from a regular, executable file called the new process image file.
There shall be no return from a successful exec,
because the calling process image is overlaid by the new process image.

If file does not contain a slash the PATH environment variable is searched for a matching file.
Takes arguments as varargs and the last of them must be nil.

**Example:**

```
ret := posix.execlp("ls", "-l", cstring(nil))
fmt.panicf("could not execute: %v, %v", ret, posix.strerror(posix.errno()))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [execv ¶](#execv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L253)

```
execv :: proc "c" (path: cstring, argv: [^]cstring) -> i32 ---
```

 

The exec family of functions shall replace the current process image with a new process image.
The new image shall be constructed from a regular, executable file called the new process image file.
There shall be no return from a successful exec,
because the calling process image is overlaid by the new process image.

Takes arguments as an array which should be nil terminated.

**Example:**

```
args := []cstring{ "ls", "-l", nil }
ret := posix.execv("/bin/ls", raw_data(args))
fmt.panicf("could not execute: %v, %v", ret, posix.strerror(posix.errno()))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [execve ¶](#execve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L290)

```
execve :: proc "c" (path: cstring, argv: [^]cstring, envp: [^]cstring) -> i32 ---
```

 

The exec family of functions shall replace the current process image with a new process image.
The new image shall be constructed from a regular, executable file called the new process image file.
There shall be no return from a successful exec,
because the calling process image is overlaid by the new process image.

Takes arguments as an array which should be nil terminated.
Takes environment variables as an array which should be nil terminated.

**Example:**

```
cmd := []cstring{ "ls", "-l", nil }
env := []cstring{ "HOME=/usr/home", "LOGNAME=home", nil }
ret := posix.execve("/bin/ls", raw_data(cmd), raw_data(env))
fmt.panicf("could not execute: %v, %v", ret, posix.strerror(posix.errno()))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [execvp ¶](#execvp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L271)

```
execvp :: proc "c" (file: cstring, argv: [^]cstring) -> i32 ---
```

 

The exec family of functions shall replace the current process image with a new process image.
The new image shall be constructed from a regular, executable file called the new process image file.
There shall be no return from a successful exec,
because the calling process image is overlaid by the new process image.

If file does not contain a slash the PATH environment variable is searched for a matching file.
Takes arguments as an array which should be nil terminated.

**Example:**

```
cmd := []cstring{ "ls", "-l", nil }
ret := posix.execvp("ls", raw_data(cmd))
fmt.panicf("could not execute: %v, %v", ret, posix.strerror(posix.errno()))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [faccessat ¶](#faccessat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L20)

```
faccessat :: proc "c" (fd: FD, path: cstring, amode: bit_set[Mode_Flag_Bits; i32], flag: bit_set[AT_Flag_Bits; i32]) -> result ---
```

 

Equivalent to `access` but relative paths are resolved based on `fd`.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/access.html)

### [fchdir ¶](#fchdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L38)

```
fchdir :: proc "c" (fildes: FD) -> result ---
```

 

Equivalent to chdir but instead of a path the fildes is resolved to a directory.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fchdir.html)

### [fchmod ¶](#fchmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L67)

```
fchmod :: proc "c" (fd: FD, mode: bit_set[Mode_Bits; _mode_t]) -> result ---
```

 

Equivalent to chmod but takes an open file descriptor.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fchmod.html)

### [fchmodat ¶](#fchmodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L75)

```
fchmodat :: proc "c" (fd: FD, path: cstring, mode: bit_set[Mode_Bits; _mode_t], flag: bit_set[AT_Flag_Bits; i32]) -> result ---
```

 

Equivalent to chmod but follows (or doesn't) symlinks based on the flag and resolves
relative paths from the given fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/chmod.html)

### [fchown ¶](#fchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L62)

```
fchown :: proc "c" (fildes: FD, owner: uid_t, mode: gid_t) -> result ---
```

 

Equivalent to chown expect that it takes a file descriptor.

**Example:**

```
fildes := posix.open("/home/cnd/mod1", {.RDWR})
pwd := posix.getpwnam("jones")
grp := posix.getgrnam("cnd")
posix.fchown(fildes, pwd.pw_uid, grp.gr_gid)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fchown.html)

### [fchownat ¶](#fchownat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L69)

```
fchownat :: proc "c" (fildes: FD, path: cstring, owner: uid_t, group: gid_t, flag: bit_set[AT_Flag_Bits; i32]) -> result ---
```

 

Equivalent to fchown except that relative paths are based on the given fildes.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/chown.html)

### [fcntl ¶](#fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L27)

```
fcntl :: proc "c" (fd: FD, cmd: FCNTL_Cmd, .. args: ..any) -> i32 ---
```

 

Perform the operations on open files.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fcntl.html)

### [fdatasync ¶](#fdatasync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L327)

```
fdatasync :: proc "c" (fd: FD) -> result ---
```

 

Forcec all currently queued I/O operations associated with the file indicated by file descriptor
fildes to the synchronized I/O completion state.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fdatasync.html)

### [fdopen ¶](#fdopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L42)

```
fdopen :: proc "c" (fildes: FD, mode: cstring) -> ^c.FILE ---
```

 

Associate a stream with a file descriptor.

**Returns:**  
nil (setting errno) on failure, the stream on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fdopen.html)

### [fdopendir ¶](#fdopendir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L66)

```
fdopendir :: proc "c" (dirp: FD) -> DIR ---
```

 

Equivalent to the opendir() function except that the directory is specified by a file descriptor
rather than by a name.
The file offset associated with the file descriptor at the time of the call determines
which entries are returned.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fdopendir.html)

### [fexecve ¶](#fexecve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L309)

```
fexecve :: proc "c" (fd: FD, argv: [^]cstring, envp: [^]cstring) -> i32 ---
```

 

The exec family of functions shall replace the current process image with a new process image.
The new image shall be constructed from a regular, executable file called the new process image file.
There shall be no return from a successful exec,
because the calling process image is overlaid by the new process image.

Equivalent to execve but takes a file descriptor instead of a path.

**Example:**

```
ls := posix.open("/bin/ls", { .EXEC })
cmd := []cstring{ "ls", "-l", nil }
env := []cstring{ "HOME=/usr/home", "LOGNAME=home", nil }
ret := posix.fexecve(ls, raw_data(cmd), raw_data(env))
fmt.panicf("could not execute: %v, %v", ret, posix.strerror(posix.errno()))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/execl.html)

### [fileno ¶](#fileno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L51)

```
fileno :: proc "c" (stream: ^c.FILE) -> FD ---
```

 

Map a stream pointer to a file descriptor.

**Returns:**  
the file descriptor or -1 (setting errno) on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fileno.html)

### [flockfile ¶](#flockfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L58)

```
flockfile :: proc "c" (file: ^c.FILE) ---
```

 

Locks a file.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/flockfile.html)

### [fmemopen ¶](#fmemopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L81)

```
fmemopen :: proc "c" (buf: [^]u8, size: uint, mode: cstring) -> ^c.FILE ---
```

 

Open a memory buffer stream.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fmemopen.html)

### [fnmatch ¶](#fnmatch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin#L28)

```
fnmatch :: proc "c" (pattern: cstring, string: cstring, flags: bit_set[FNM_Flag_Bits; i32]) -> i32 ---
```

 

Match patterns as described in XCU [Patterns Matching a Single Character](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_13_01)
// and [Patterns Matching Multiple Characters](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_13_02).
It checks the string specified by the string argument to see if it matches the pattern specified by the pattern argument.

**Returns:**  
0 when matched. if there is no match, fnmatch() shall return FNM\_NOMATCH. Non-zero on other errors.

**Example:**

```
assert(posix.fnmatch("*.odin", "foo.odin", {}) == 0)
assert(posix.fnmatch("*.txt",  "foo.odin", {}) == posix.FNM_NOMATCH)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fnmatch.html)

### [fork ¶](#fork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L338)

```
fork :: proc "c" () -> pid_t ---
```

 

The fork() function shall create a new process.
The new process (child process) shall be an exact copy of the calling process (parent process).
With some exceptions outlined below.

Result: -1 (setting errno) on failure, otherwise 0 to the child process and the child process id to the parent process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fork.html)

### [fpathconf ¶](#fpathconf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L111)

```
fpathconf :: proc "c" (fildes: FD, name: PC) -> i64 ---
```

 

Equivalent to pathconf but takes a file descriptor instead of a path.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fpathconf.html)

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L63)

```
free :: proc "c" (ptr: $T) {…}
```

### [freeaddrinfo ¶](#freeaddrinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L80)

```
freeaddrinfo :: proc "c" (ai: ^addrinfo) ---
```

 

Frees the given address info linked list.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getaddrinfo.html)

### [fseeko ¶](#fseeko) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L88)

```
fseeko :: proc "c" (stream: ^c.FILE, offset: off_t, whence: libc.Whence) -> result ---
```

 

Reposition a file-position indicator in a stream.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fseeko.html)

### [fstat ¶](#fstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L43)

```
fstat :: proc "c" (fildes: FD, buf: ^stat_t) -> result ---
```

 

Obtain information about an open file.

Follows symbol links.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fstat.html)

### [fstatat ¶](#fstatat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L23)

```
fstatat :: proc "c" (fd: FD, path: cstring, buf: ^stat_t, flag: bit_set[AT_Flag_Bits; i32]) -> result ---
```

 

Equivalent to either stat or lstat (based on the SYMLINK\_NOFOLLOW bit in flags)
but resolves relative paths based on the given fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fstatat.html)

### [fstatvfs ¶](#fstatvfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L22)

```
fstatvfs :: proc "c" (fildes: FD, buf: ^statvfs_t) -> result ---
```

 

Obtains information about the file system containing the fildes.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/statvfs.html)

### [fsync ¶](#fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L346)

```
fsync :: proc "c" (fildes: FD) -> result ---
```

 

Requests that all data for the open file descriptor named by fildes is to be transferred
to the storage device associated with the file described by fildes.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fsync.html)

### [ftello ¶](#ftello) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L97)

```
ftello :: proc "c" (^c.FILE) -> off_t ---
```

 

Return the file offset in a stream.

**Returns:**  
the current file offset, -1 (setting errno) on error

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ftello.html)

### [ftok ¶](#ftok) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin#L22)

```
ftok :: proc "c" (path: cstring, id: i32) -> key_t ---
```

 

Generate an IPC key.

**Returns:**  
-1 (setting errno) on failure, the key otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ftok.html)

### [ftruncate ¶](#ftruncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L360)

```
ftruncate :: proc "c" (fildes: FD, length: off_t) -> result ---
```

 

Truncates a file to the specified length.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ftruncate.html)

### [ftrylockfile ¶](#ftrylockfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L67)

```
ftrylockfile :: proc "c" (file: ^c.FILE) -> i32 ---
```

 

Tries to lock a file.

**Returns:**  
0 if it could be locked, non-zero if it couldn't

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/flockfile.html)

### [funlockfile ¶](#funlockfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L74)

```
funlockfile :: proc "c" (file: ^c.FILE) ---
```

 

Unlocks a file.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/flockfile.html)

### [futimens ¶](#futimens) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L125)

```
futimens :: proc "c" (fd: FD, times: ^[2]libc.timespec) -> result ---
```

 

Sets the file access and modification time of the given file descriptor.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/futimens.html)

### [gai\_strerror ¶](#gai_strerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L99)

```
gai_strerror :: proc "c" (ecode: Info_Errno) -> cstring ---
```

 

Get a textual description for the address info errors.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/gai_strerror.html)

### [get\_errno ¶](#get_errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L14)

```
get_errno :: proc "contextless" () -> Errno {…}
```

##### Related Procedure Groups

* [errno](/core/sys/posix/#errno)

### [getaddrinfo ¶](#getaddrinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L68)

```
getaddrinfo :: proc "c" (nodename: cstring, servname: cstring, hints: ^addrinfo, res: ^^addrinfo) -> Info_Errno ---
```

 

Translate node/serv name and return a set of socket addresses and associated information to be
used in creating a socket with which to address the specified service.

**Example:**

```
// The following (incomplete) program demonstrates the use of getaddrinfo() to obtain the
// socket address structure(s) for the service named in the program's command-line argument.
// The program then loops through each of the address structures attempting to create and bind
// a socket to the address, until it performs a successful bind().

args := runtime.args__
if len(args) != 2 {
	fmt.eprintfln("Usage: %s port", args[0])
	posix.exit(1)
}

hints: posix.addrinfo
hints.ai_socktype = .DGRAM
hints.ai_flags    = { .PASSIVE }

result: ^posix.addrinfo
s := posix.getaddrinfo(nil, args[1], &hints, &result)
if s != .NONE {
	fmt.eprintfln("getaddrinfo: %s", posix.gai_strerror(s))
	posix.exit(1)
}
defer posix.freeaddrinfo(result)

// Try each address until a successful bind().
rp: ^posix.addrinfo
for rp = result; rp != nil; rp = rp.ai_next {
	sfd := posix.socket(rp.ai_family, rp.ai_socktype, rp.ai_protocol)
	if sfd == -1 {
		continue
	}

	if posix.bind(sfd, rp.ai_addr, rp.ai_addrlen) == 0 {
		// Success.
		break
	}

	posix.close(sfd)
}

if rp == nil {
	fmt.eprintln("Could not bind")
	posix.exit(1)
}

// Use the socket...
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getaddrinfo.html)

### [getc\_unlocked ¶](#getc_unlocked) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L55)

```
getc_unlocked :: proc "c" (stream: ^c.FILE) -> i32 ---
```

 

Equivalent to getc but unaffected by locks.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getc_unlocked.html)

### [getchar\_unlocked ¶](#getchar_unlocked) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L63)

```
getchar_unlocked :: proc "c" () -> i32 ---
```

 

Equivalent to getchar but unaffected by locks.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getc_unlocked.html)

### [getcwd ¶](#getcwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L90)

```
getcwd :: proc "c" (buf: [^]u8, size: uint) -> cstring ---
```

 

Places an absolute pathname of the current working directory into buf.

**Returns:**  
buf as a cstring on success, nil (setting errno) on failure

**Example:**

```
size: int
path_max := posix.pathconf(".", ._PATH_MAX)
if path_max == -1 {
	size = 1024
} else if path_max > 10240 {
	size = 10240
} else {
	size = int(path_max)
}

buf: [dynamic]byte
cwd: cstring
for ; cwd == nil; size *= 2 {
	if err := resize(&buf, size); err != nil {
		fmt.panicf("allocation failure: %v", err)
	}

	cwd = posix.getcwd(raw_data(buf), len(buf))
	if cwd == nil {
		errno := posix.errno()
		if errno != .ERANGE {
			fmt.panicf("getcwd failure: %v", posix.strerror(errno))
		}
	}
}

fmt.println(path_max, cwd)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getcwd.html)

### [getdate ¶](#getdate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L82)

```
getdate :: proc "c" (string: cstring) -> ^libc.tm ---
```

 

Converts a string representation of a date or time into a broken-down time.

**Returns:**  
nil (setting getdate\_err) on failure, the broken-down time otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getdate.html)

### [getdelim ¶](#getdelim) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L115)

```
getdelim :: proc "c" (lineptr: ^cstring, n: ^uint, delimiter: i32, stream: ^c.FILE) -> int ---
```

 

Read a delimited record from the stream.

**Returns:**  
the number of bytes written or -1 on failure/EOF

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getdelim.html)

### [getegid ¶](#getegid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L369)

```
getegid :: proc "c" () -> gid_t ---
```

 

Returns the effective group ID of the calling process.

**Returns:**  
the ID, no failure is defined

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getegid.html)

### [geteuid ¶](#geteuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L378)

```
geteuid :: proc "c" () -> uid_t ---
```

 

Returns the effective user ID of the calling process.

**Returns:**  
the ID, no failure is defined

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/geteuid.html)

### [getgid ¶](#getgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L387)

```
getgid :: proc "c" () -> gid_t ---
```

 

Returns the real group ID of the calling process.

**Returns:**  
the ID, no failure is defined

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getgid.html)

### [getgrent ¶](#getgrent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L42)

```
getgrent :: proc "c" () -> ^group ---
```

 

Returns a pointer to an entry of the group database.

Opens the group database if it isn't.

**Returns:**  
nil on failure (setting errno) or EOF (not setting errno), the entry otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/endgrent.html)

### [getgrgid ¶](#getgrgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L51)

```
getgrgid :: proc "c" (gid: gid_t) -> ^group ---
```

 

Searches for an entry with a matching gid in the group database.

**Returns:**  
nil (setting errno) on failure, a pointer to the entry on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getgrgid.html)

### [getgrgid\_r ¶](#getgrgid_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L62)

```
getgrgid_r :: proc "c" (gid: gid_t, grp: ^group, buffer: [^]u8, bufsize: uint, result: ^^group) -> Errno ---
```

 

Searches for an entry with a matching gid in the group database.

Updates grp with the matching entry and stores it (or a nil pointer (setting errno)) into result.

Strings are allocated into the given buffer, you can call `sysconf(._GETGR_R_SIZE_MAX)` for an appropriate size.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getgrgid.html)

### [getgrnam ¶](#getgrnam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L71)

```
getgrnam :: proc "c" (name: cstring) -> ^group ---
```

 

Searches for an entry with a matching gid in the group database.

**Returns:**  
nil (setting errno) on failure, a pointer to the entry on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getgrnam.html)

### [getgrnam\_r ¶](#getgrnam_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L115)

```
getgrnam_r :: proc "c" (name: cstring, grp: ^group, buffer: [^]u8, bufsize: uint, result: ^^group) -> Errno ---
```

 

Searches for an entry with a matching gid in the group database.

Updates grp with the matching entry and stores it (or a nil pointer (setting errno)) into result.

Strings are allocated into the given buffer, you can call `sysconf(._GETGR_R_SIZE_MAX)` for an appropriate size.

**Example:**

```
length := posix.sysconf(._GETGR_R_SIZE_MAX)
if length == -1 {
	length = 1024
}

result:  posix.group
resultp: ^posix.group

e: posix.Errno

buffer: [dynamic]byte
defer delete(buffer)

for {
	mem_err := resize(&buffer, length)
	assert(mem_err == nil)

	e = posix.getgrnam_r("nobody", &result, raw_data(buffer), len(buffer), &resultp)
	if e != .ERANGE {
		break
	}

	length *= 2
	assert(length > 0)
}

if e != .NONE {
	panic(string(posix.strerror(e)))
}

fmt.println(result)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getgrnam.html)

### [getgroups ¶](#getgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L409)

```
getgroups :: proc "c" (gidsetsize: i32, grouplist: [^]gid_t) -> i32 ---
```

 

Fills the grouplist array with the current supplementary group IDs of the calling process.

**Returns:**  
-1 (setting errno) on failure, desired grouplist length if gidsetsize is 0, amount of IDs added otherwise

**Example:**

```
length := posix.getgroups(0, nil)
if length == -1 {
	fmt.panicf("getgroups failure: %v", posix.strerror(posix.errno()))
}

groups := make([]posix.gid_t, length) or_else panic("allocation failure")
if posix.getgroups(length, raw_data(groups)) != length {
	fmt.panicf("getgroups failure: %v", posix.strerror(posix.errno()))
}

fmt.println(groups)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getgroups.html)

### [gethostent ¶](#gethostent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L125)

```
gethostent :: proc "c" () -> ^hostent ---
```

 

Reads the next entry in the database, opening and closing a connection as necessary.

This reads /etc/hosts on most systems.

**Example:**

```
posix.sethostent(true)
defer posix.endhostent()
for ent := posix.gethostent(); ent != nil; ent = posix.gethostent() {
	fmt.println(ent)
	fmt.println(ent.h_addr_list[0][:ent.h_length])
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sethostent.html)

### [gethostid ¶](#gethostid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L418)

```
gethostid :: proc "c" () -> i64 ---
```

 

Retrieves a 32-bit identifier for the current host.

**Returns:**  
the ID, no failure is defined

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/gethostid.html)

### [gethostname ¶](#gethostname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L427)

```
gethostname :: proc "c" (name: [^]u8, namelen: uint) -> result ---
```

 

Returns the standard host name for the current machine.

Host names are limited to HOST\_NAME\_MAX bytes.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/gethostname.html)

### [getitimer ¶](#getitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L21)

```
getitimer :: proc "c" (which: ITimer, value: ^itimerval) -> result ---
```

 

Store the current value of timer into value.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getitimer.html)

### [getline ¶](#getline) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L144)

```
getline :: proc "c" (lineptr: ^cstring, n: ^uint, stream: ^c.FILE) -> int ---
```

 

Read a line delimited record from the stream.

**Returns:**  
the number of bytes written or -1 on failure/EOF

**Example:**

```
fp := posix.fopen(#file, "r")
if fp == nil {
	posix.exit(1)
}

line: cstring
length: uint
for {
	read := posix.getline(&line, &length, fp)
	if read == -1 do break
	posix.printf("Retrieved line of length %zu :\n", read)
	posix.printf("%s", line)
}
if posix.ferror(fp) != 0 {
	/* handle error */
}
posix.free(rawptr(line))
posix.fclose(fp)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getdelim.html)

### [getlogin ¶](#getlogin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L436)

```
getlogin :: proc "c" () -> cstring ---
```

 

Returns a string containing the user name associated by the login activity.

**Returns:**  
nil (setting errno) on failure, the login name otherwise in a potentially static buffer overwritten by subsequent calls

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getlogin.html)

### [getlogin\_r ¶](#getlogin_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L451)

```
getlogin_r :: proc "c" (name: [^]u8, namelen: uint) -> Errno ---
```

 

Equivalent to getlogin but puts the name in the name buffer given.

The name is limited to LOGIN\_NAME\_MAX bytes.

**Example:**

```
max := posix.sysconf(posix._SC_LOGIN_NAME_MAX)+1
buf := make([]byte, max)
posix.getlogin_r(raw_data(buf), uint(len(max)))
fmt.printfln("login: %v", cstring(buf))
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getlogin.html)

### [getnameinfo ¶](#getnameinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L87)

```
getnameinfo :: proc "c" (
	sa:         ^sockaddr, 
	salen:      socklen_t, 
	node:       [^]u8, 
	nodelen:    socklen_t, 
	service:    [^]u8, 
	servicelen: socklen_t, 
	flags:      bit_set[Nameinfo_Flag_Bits; i32], 
) -> Info_Errno ---
```

 

Translate a socket address to a node name and service location.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getnameinfo.html)

### [getnetbyaddr ¶](#getnetbyaddr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L161)

```
getnetbyaddr :: proc "c" (net: u32, type: AF) -> ^netent ---
```

 

Search the database from the beginning, and find the first entry that matches.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setnetent.html)

### [getnetbyname ¶](#getnetbyname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L168)

```
getnetbyname :: proc "c" (name: cstring) -> ^netent ---
```

 

Search the database from the beginning, and find the first entry that matches.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setnetent.html)

### [getnetent ¶](#getnetent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L154)

```
getnetent :: proc "c" () -> ^netent ---
```

 

Reads the next entry of the database.

**Example:**

```
posix.setnetent(true)
defer posix.endnetent()
for ent := posix.getnetent(); ent != nil; ent = posix.getnetent() {
	fmt.println(ent)
	fmt.println(transmute([4]byte)ent.n_net)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setnetent.html)

### [getopt ¶](#getopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L507)

```
getopt :: proc "c" (argc: i32, argv: [^]cstring, optstring: cstring) -> i32 ---
```

 

A command-line parser, see linked docs.

**Example:**

```
// The following code fragment shows how you might process the arguments for a utility that
// can take the mutually-exclusive options a and b and the options f and o, both of which
// require arguments.

bflg, aflg, errflg: bool
ifile: string
ofile: string

for {
	c := posix.getopt(i32(len(runtime.args__)), raw_data(runtime.args__), ":abf:o:")
	(c != -1) or_break

	switch c {
	case 'a':
		if bflg {
			errflg = true
		} else {
			aflg = true
		}
	case 'b':
		if aflg {
			errflg = true
		} else {
			bflg = true
		}
	case 'f':
		ifile = string(posix.optarg)
	case 'o':
		ofile = string(posix.optarg)
	case ':': /* -f or -o without operand */
		fmt.eprintfln("Option -%c requires an operand", posix.optopt)
		errflg = true
	case '?':
		fmt.eprintfln("Unrecognized option: '-%c'", posix.optopt)
		errflg = true
	}
}

if errflg {
	fmt.eprintfln("usage: . . . ")
	posix.exit(2)
}

// Loop through remaining arguments:
for ; posix.optind < i32(len(runtime.args__)); posix.optind += 1 {
	fmt.println(runtime.args__[posix.optind])
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getopt.html)

### [getpeername ¶](#getpeername) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L77)

```
getpeername :: proc "c" (socket: FD, address: ^sockaddr, address_len: ^socklen_t) -> result ---
```

 

Get the peer address of the specified socket.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpeername.html)

### [getpgid ¶](#getpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L522)

```
getpgid :: proc "c" (pid: pid_t) -> pid_t ---
```

 

Returns the process group ID of the process whose process ID is equal to pid.
If pid is 0, it returns the process group ID of the calling process.

**Returns:**  
-1 on failure, the ID otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpgid.html)

### [getpgrp ¶](#getpgrp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L531)

```
getpgrp :: proc "c" () -> pid_t ---
```

 

Returns the process group ID of the calling process.

**Returns:**  
no failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpgrp.html)

### [getpid ¶](#getpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L540)

```
getpid :: proc "c" () -> pid_t ---
```

 

Returns the ID of the calling process.

**Returns:**  
no failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpid.html)

### [getppid ¶](#getppid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L549)

```
getppid :: proc "c" () -> pid_t ---
```

 

Returns the parent process ID.

**Returns:**  
no failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getppid.html)

### [getpriority ¶](#getpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L33)

```
getpriority :: proc "c" (which: Which_Prio, who: id_t) -> i32 ---
```

 

Gets the nice value of the process, process group or user given.

Note that a nice value can be -1, so checking for an error would mean clearing errno, doing the
call and then checking that this returns -1 and it has an errno.

**Returns:**  
-1 (setting errno) on failure, the value otherwise

**Example:**

```
pid := posix.getpid()
posix.set_errno(.NONE)
prio := posix.getpriority(.PROCESS, pid)
if err := posix.errno(); prio == -1 && err != .NONE {
	// Handle error...
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpriority.html)

### [getprotobyname ¶](#getprotobyname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L203)

```
getprotobyname :: proc "c" (name: cstring) -> ^protoent ---
```

 

Search the database from the beginning, and find the first entry that matches.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setprotoent.html)

### [getprotobynumber ¶](#getprotobynumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L210)

```
getprotobynumber :: proc "c" (proto: i32) -> ^protoent ---
```

 

Search the database from the beginning, and find the first entry that matches.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setprotoent.html)

### [getprotoent ¶](#getprotoent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L196)

```
getprotoent :: proc "c" () -> ^protoent ---
```

 

Reads the next entry of the database.

**Example:**

```
posix.setprotoent(true)
defer posix.endprotoent()
for ent := posix.getprotoent(); ent != nil; ent = posix.getprotoent() {
	fmt.println(ent)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setprotoent.html)

### [getpwent ¶](#getpwent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L37)

```
getpwent :: proc "c" () -> ^passwd ---
```

 

Returns the current entry in the user database.

**Returns:**  
nil (setting errno) on error, nil (not setting errno) on success.

**Example:**

```
posix.setpwent()
defer posix.endpwent()
for e := posix.getpwent(); e != nil; e = posix.getpwent() {
	fmt.println(e)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setpwent.html)

### [getpwnam ¶](#getpwnam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L54)

```
getpwnam :: proc "c" (name: cstring) -> ^passwd ---
```

 

Searches the database for an entry with a matching name.

**Returns:**  
nil (setting errno) on error, nil (not setting errno) on success.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpwnam.html)

### [getpwnam\_r ¶](#getpwnam_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L94)

```
getpwnam_r :: proc "c" (name: cstring, pwd: ^passwd, buffer: [^]u8, bufsize: uint, result: ^^passwd) -> Errno ---
```

 

Searches the database for an entry with a matching name.
Populating the pwd fields and using the buffer to allocate strings into.
Setting result to nil on failure and to the address of pwd otherwise.

ERANGE will be returned if there is not enough space in buffer.
sysconf(\_SC\_GETPW\_R\_SIZE\_MAX) can be called for the suggested size of this buffer, note that it could return -1.

**Example:**

```
length := posix.sysconf(._GETPW_R_SIZE_MAX)
length  = length == -1 ? 1024 : length

buffer: [dynamic]byte
defer delete(buffer)

result:  posix.passwd
resultp: ^posix.passwd
errno:   posix.Errno
for {
	if err := resize(&buffer, length); err != nil {
		fmt.panicf("allocation failure: %v", err)
	}

	errno = posix.getpwnam_r("root", &result, raw_data(buffer), len(buffer), &resultp)
	if errno != .ERANGE {
		break
	}
}

if errno != .NONE {
	panic(string(posix.strerror(errno)))
}

fmt.println(result)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpwnam.html)

### [getpwuid ¶](#getpwuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L104)

```
getpwuid :: proc "c" (uid: uid_t) -> ^passwd ---
```

 

Searches the database for an entry with a matching uid.

**Returns:**  
nil (setting errno) on error, nil (not setting errno) on success.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpwuid.html)

### [getpwuid\_r ¶](#getpwuid_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L119)

```
getpwuid_r :: proc "c" (uid: uid_t, pwd: ^passwd, buffer: [^]u8, bufsize: uint, result: ^^passwd) -> Errno ---
```

 

Searches the database for an entry with a matching uid.
Populating the pwd fields and using the buffer to allocate strings into.
Setting result to nil on failure and to the address of pwd otherwise.

ERANGE will be returned if there is not enough space in buffer.
sysconf(\_SC\_GETPW\_R\_SIZE\_MAX) can be called for the suggested size of this buffer, note that it could return -1.

See the example for getpwnam\_r.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpwuid_r.html)

### [getrlimit ¶](#getrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L47)

```
getrlimit :: proc "c" (resource: Resource, rlp: ^rlimit) -> result ---
```

 

Get a resource limit.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getrlimit.html)

### [getrusage ¶](#getrusage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L62)

```
getrusage :: proc "c" (who: Which_Usage, rusage: ^rusage) -> result ---
```

 

Get resource usage.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getrusage.html)

### [gets ¶](#gets) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L88)

```
gets :: proc "c" (s: [^]u8) -> cstring ---
```

 

Get a string from the stdin stream.

It is up to the user to make sure s is big enough.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/gets.html)

### [getservbyname ¶](#getservbyname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L245)

```
getservbyname :: proc "c" (name: cstring, proto: cstring) -> ^servent ---
```

 

Search the database from the beginning, and find the first entry that matches.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setservent.html)

### [getservbyport ¶](#getservbyport) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L252)

```
getservbyport :: proc "c" (port: i32, proto: cstring) -> ^servent ---
```

 

Search the database from the beginning, and find the first entry that matches.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setservent.html)

### [getservent ¶](#getservent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L238)

```
getservent :: proc "c" () -> ^servent ---
```

 

Reads the next entry of the database.

**Example:**

```
posix.setservent(true)
defer posix.endservent()
for ent := posix.getservent(); ent != nil; ent = posix.getservent() {
	fmt.println(ent)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setservent.html)

### [getsid ¶](#getsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L560)

```
getsid :: proc "c" (pid: pid_t) -> pid_t ---
```

 

Get the process group ID of the session leader.
If pid is 0, it is the current process.

**Returns:**  
-1 (setting errno) on failure, the pid otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getsid.html)

### [getsockname ¶](#getsockname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L84)

```
getsockname :: proc "c" (socket: FD, address: ^sockaddr, address_len: ^socklen_t) -> result ---
```

 

Get the socket name.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getsockname.html)

### [getsockopt ¶](#getsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L94)

```
getsockopt :: proc "c" (socket: FD, level: i32, option_name: Sock_Option, option_value: rawptr, option_len: ^socklen_t) -> result ---
```

 

Retrieves the value for the option specified by option\_name.

level: either `c.int(posix.Protocol(...))` to specify a protocol level or `posix.SOL_SOCKET`
to specify the socket local level.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getsockopt.html)

### [getsubopt ¶](#getsubopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L192)

```
getsubopt :: proc "c" (optionp: ^cstring, keylistp: [^]cstring, valuep: ^cstring) -> i32 ---
```

 

Parses suboption arguments in a flag argument.

**Returns:**  
the index of the matched token string, or -1 if no token strings were matched

**Example:**

```
args := runtime.args__

Opt :: enum {
	RO,
	RW,
	NAME,
	NIL,
}
token := [Opt]cstring{
	.RO   = "ro",
	.RW   = "rw",
	.NAME = "name",
	.NIL  = nil,
}

Options :: struct {
	readonly, readwrite: bool,
	name: cstring,

}
opts: Options

errfnd: bool
for {
	opt := posix.getopt(i32(len(args)), raw_data(args), "o:")
	if opt == -1 {
		break
	}

	switch opt {
	case 'o':
		subopt := posix.optarg
		value: cstring
		for subopt != "" && !errfnd {
			o := posix.getsubopt(&subopt, &token[.RO], &value)
			switch Opt(o) {
			case .RO:   opts.readonly  = true
			case .RW:   opts.readwrite = true
			case .NAME:
				if value == nil {
					fmt.eprintfln("missing value for suboption %s", token[.NAME])
					errfnd = true
					continue
				}

				opts.name = value
			case .NIL:
				fallthrough
			case:
				fmt.eprintfln("no match found for token: %s", value)
				errfnd = true
			}
		}
		if opts.readwrite && opts.readonly {
			fmt.eprintfln("Only one of %s and %s can be specified", token[.RO], token[.RW])
			errfnd = true
		}
	case:
		errfnd = true
	}
}

if errfnd || len(args) == 1 {
	fmt.eprintfln("\nUsage: %s -o <suboptstring>", args[0])
	fmt.eprintfln("suboptions are 'ro', 'rw', and 'name=<value>'")
	posix.exit(1)
}

fmt.println(opts)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getsubopt.html)

### [gettimeofday ¶](#gettimeofday) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L37)

```
gettimeofday :: proc "c" (tp: ^timeval, tzp: rawptr = nil) -> result ---
```

 

Obtains the current time.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/gettimeofday.html)

### [getuid ¶](#getuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L569)

```
getuid :: proc "c" () -> uid_t ---
```

 

Returns the real user ID of the calling process.

**Returns:**  
no failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getuid.html)

### [glob ¶](#glob) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L23)

```
glob :: proc "c" (pattern: cstring, flags: bit_set[Glob_Flag_Bits; i32], errfunc: proc "c" (epath: cstring, eerrno: Errno) -> b32 = nil, pglob: ^glob_t) -> Glob_Result ---
```

 

The glob() function is a pathname generator that shall implement the rules defined in
[XCU Pattern Matching Notation](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_13),
with optional support for rule 3 in XCU [Patterns Used for Filename Expansion](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_13_03).

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/glob.html)

### [globfree ¶](#globfree) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin#L36)

```
globfree :: proc "c" (^glob_t) ---
```

 

Free the glob results.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/glob.html)

### [gmtime\_r ¶](#gmtime_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L39)

```
gmtime_r :: proc "c" (timer: ^libc.time_t, result: ^libc.tm) -> ^libc.tm ---
```

 

Converts the time in seconds since epoch to a broken-down tm struct.

**Returns:**  
nil (setting errno) on failure, the result pointer on success.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/gmtime_r.html)

### [grantpt ¶](#grantpt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L199)

```
grantpt :: proc "c" (fildes: FD) -> result ---
```

 

Changes the mode and ownership of the slave pseudo-terminal device associated with its master pseudo-terminal counterpart.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/grantpt.html)

### [iconv ¶](#iconv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/iconv.odin#L26)

```
iconv :: proc "c" (cd: iconv_t, inbuf: ^[^]u8, inbytesleft: ^uint, outbuf: ^[^]u8, outbyteslen: ^uint) -> uint ---
```

 

Convert the sequence of characters from one codeset, in the array specified by inbuf,
into a sequence of corresponding characters in another codeset, in the array specified by outbuf.

**Returns:**  
-1 (setting errno) on failure, the number of non-identical conversions performed on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/iconv.html)

### [iconv\_close ¶](#iconv_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/iconv.odin#L39)

```
iconv_close :: proc "c" (cd: iconv_t) -> result ---
```

 

Deallocates the conversion descriptor cd and all other associated resources allocated by iconv\_open().

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/iconv_close.html)

### [iconv\_open ¶](#iconv_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/iconv.odin#L50)

```
iconv_open :: proc "c" (tocode: cstring, fromcode: cstring) -> iconv_t ---
```

 

Returns a conversion descriptor that describes a conversion from the codeset specified by the
string pointed to by the fromcode argument to the codeset specified by the string pointed to by
the tocode argument.

**Returns:**  
-1 (setting errno) on failure, a conversion descriptor on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/iconv_open.html)

### [if\_freenameindex ¶](#if_freenameindex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/net_if.odin#L45)

```
if_freenameindex :: proc "c" (ptr: ^if_nameindex_t) ---
```

 

Frees memory allocated by if\_nameindex.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/if_freenameindex.html)

### [if\_indextoname ¶](#if_indextoname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/net_if.odin#L38)

```
if_indextoname :: proc "c" (ifindex: u32, ifname: [^]u8) -> cstring ---
```

 

Returns the name corresponding to the index.

ifname should be at least IF\_NAMESIZE bytes in size.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/if_indextoname.html)

### [if\_nameindex ¶](#if_nameindex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/net_if.odin#L22)

```
if_nameindex :: proc "c" () -> [^]if_nameindex_t ---
```

 

Retrieve an array of name indexes. Where the last one has an index of 0 and name of nil.

**Returns:**  
nil (setting errno) on failure, an array that should be freed with if\_freenameindex otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/if_nameindex.html)

### [if\_nametoindex ¶](#if_nametoindex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/net_if.odin#L29)

```
if_nametoindex :: proc "c" (name: cstring) -> u32 ---
```

 

Returns the interface index matching the name or zero.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/if_nametoindex.html)

### [inet\_ntoa ¶](#inet_ntoa) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/arpa_inet.odin#L32)

```
inet_ntoa :: proc "c" (in_addr) -> cstring ---
```

 

Convert the Internet host address specified by in to a string in the Internet standard dot notation.

NOTE: returns a static string overwritten by further calls.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/inet_ntoa.html)

### [inet\_ntop ¶](#inet_ntop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/arpa_inet.odin#L39)

```
inet_ntop :: proc "c" (af: AF, src: rawptr, dst: [^]u8, size: socklen_t) -> cstring ---
```

 

Convert a numeric address into a text string suitable for presentation.

Returns `nil` and sets `errno` on failure.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/inet_ntop.html)

### [inet\_pton ¶](#inet_pton) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/arpa_inet.odin#L49)

```
inet_pton :: proc "c" (af: AF, src: cstring, dst: rawptr) -> pton_result ---
```

 

Convert an address in its standard text presentation form into its numeric binary form.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/inet_ntop.html)

### [initstate ¶](#initstate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L209)

```
initstate :: proc "c" (seed: u32, state: [^]u8, size: uint) -> [^]u8 ---
```

 

Allows a state array, pointed to by the state argument, to be initialized for future use.

**Returns:**  
the previous state array or nil on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/initstate.html)

### [isatty ¶](#isatty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L578)

```
isatty :: proc "c" (fildes: FD) -> b32 ---
```

 

Tests whether fildes is associated with a terminal device.

**Returns:**  
false (setting errno) if fildes is invalid or not a terminal, true otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/isatty.html)

### [jrand48 ¶](#jrand48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L67)

```
jrand48 :: proc "c" (xsubi: ^[3]u16) -> i64 ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

**Returns:**  
return signed long integers uniformly distributed over the interval [-231,231)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [kill ¶](#kill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L29)

```
kill :: proc "c" (pid: pid_t, sig: Signal) -> result ---
```

 

Raise a signal to the process/group specified by pid.

If sig is 0, this function can be used to check if the pid is just checked for validity.

If pid is -1, the signal is sent to all processes that the current process has permission to send.

If pid is negative (not -1), the signal is sent to all processes in the group identifier by the
absolute value.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/kill.html)

### [killpg ¶](#killpg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L36)

```
killpg :: proc "c" (pgrp: pid_t, sig: Signal) -> result ---
```

 

Shorthand for `kill(-pgrp, sig)` which will kill all processes in the given process group.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/killpg.html)

### [l64a ¶](#l64a) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L31)

```
l64a :: proc "c" (value: i64) -> cstring ---
```

 

The l64a() function shall take a long argument and return a pointer to the corresponding
radix-64 representation.

**Returns:**  
a string that may be invalidated by subsequent calls

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/a64l.html)

### [lchown ¶](#lchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L78)

```
lchown :: proc "c" (path: cstring, owner: uid_t, group: gid_t) -> result ---
```

 

If path points to a symbolic link, the owner and group of the link itself is changed.
Equivalent to chown on normal files.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/lchown.html)

### [lcong48 ¶](#lcong48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L103)

```
lcong48 :: proc "c" (param: ^[7]u16) ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

The srand48(), seed48(), and lcong48() functions are initialization entry points, one of which should be invoked before either drand48(), lrand48(), or mrand48() is called.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [link ¶](#link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L585)

```
link :: proc "c" (path1: cstring, path2: cstring) -> result ---
```

 

Creates a new link for the existing file path1 to path2.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/link.html)

### [linkat ¶](#linkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L595)

```
linkat :: proc "c" (fd1: FD, path1: cstring, fd2: FD, path2: cstring, flag: bit_set[AT_Flag_Bits; i32]) -> result ---
```

 

If path1 is relative it is relative to directory fd1.
If path2 is relative it is relative to directory fd2.
If flag is { .SYMLINK\_FOLLOW } path1 is resolved to its link if it is a link.
Equivalent to link otherwise.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/link.html)

### [listen ¶](#listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L127)

```
listen :: proc "c" (socket: FD, backlog: i32) -> result ---
```

 

Mark the socket as a socket accepting connections.

backlog provides a hint to limit the number of connections on the listen queue.
Implementation may silently reduce the backlog, additionally `SOMAXCONN` specifies the maximum
an implementation has to support.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/listen.html)

### [localtime\_r ¶](#localtime_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L49)

```
localtime_r :: proc "c" (timer: ^libc.time_t, result: ^libc.tm) -> ^libc.tm ---
```

 

Convert the time in seconds since epoch to a broken-down tm struct in local time.

**Returns:**  
nil (setting errno) on failure, the result pointer on success.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/localtime_r.html)

### [lockf ¶](#lockf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L628)

```
lockf :: proc "c" (fildes: FD, function: Lock_Function, size: off_t) -> result ---
```

 

Locks sections of a file with advisory-mode locks.

**Example:**

```
fildes := posix.open("/home/cnd/mod1", { .RDWR })
if posix.lockf(fildes, .TLOCK, 10000) != .OK {
	errno := posix.errno(); #partial switch errno {
	case .EACCES, .EAGAIN:
		// File is already locked.
	case:
		// Other error.
		fmt.panicf("lockf failure: %v", posix.strerror(errno))
	}
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/lockf.html)

### [lrand48 ¶](#lrand48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L76)

```
lrand48 :: proc "c" () -> i64 ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

**Returns:**  
non-negative, long integers, uniformly distributed over the interval [0,231)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [lseek ¶](#lseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L641)

```
lseek :: proc "c" (fildes: FD, offset: off_t, whence: libc.Whence) -> off_t ---
```

 

Sets the file offset of the given file descriptor.

If whence is .SET, the offset is set
If whence is .CUR, the offset is the current offset + given offset
If whence is .END, the offset is set to the size of the file + given offset

**Returns:**  
the resulting offset or -1 (setting errno)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/lseek.html)

### [lstat ¶](#lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L53)

```
lstat :: proc "c" (path: cstring, buf: ^stat_t) -> result ---
```

 

Obtain information about a "file" at the given path.

Does not follow symlinks (will stat the symlink itself).

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fstatat.html)

### [mkdir ¶](#mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L82)

```
mkdir :: proc "c" (path: cstring, mode: bit_set[Mode_Bits; _mode_t]) -> result ---
```

 

Make a directory.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mkdir.html)

### [mkdirat ¶](#mkdirat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L89)

```
mkdirat :: proc "c" (fd: FD, path: cstring, mode: bit_set[Mode_Bits; _mode_t]) -> result ---
```

 

Equivalent to mkdir but relative paths are relative to fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mkdir.html)

### [mkdtemp ¶](#mkdtemp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L248)

```
mkdtemp :: proc "c" (template: [^]u8) -> cstring ---
```

 

Creates a directory with a unique name derived from template.
The application shall ensure that the string provided in template is a pathname ending
with at least six trailing 'X' characters.

**Returns:**  
nil (setting errno) on failure, template on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mkdtemp.html)

### [mkfifo ¶](#mkfifo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L96)

```
mkfifo :: proc "c" (path: cstring, mode: bit_set[Mode_Bits; _mode_t]) -> result ---
```

 

Make a FIFO special file.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mkfifo.html)

### [mkfifoat ¶](#mkfifoat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L103)

```
mkfifoat :: proc "c" (fd: FD, path: cstring, mode: bit_set[Mode_Bits; _mode_t]) -> result ---
```

 

Equivalent to mkfifo but relative paths are relative to fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mkfifo.html)

### [mknod ¶](#mknod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L111)

```
mknod :: proc "c" (path: cstring, mode: bit_set[Mode_Bits; _mode_t], dev: dev_t) -> result ---
```

 

Make directory, special file, or regular file.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mknodat.html)

### [mknodat ¶](#mknodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L118)

```
mknodat :: proc "c" (fd: FD, path: cstring, mode: bit_set[Mode_Bits; _mode_t], dev: dev_t) -> result ---
```

 

Equivalent to mknod but relative paths are relative to fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mknodat.html)

### [mkstemp ¶](#mkstemp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L260)

```
mkstemp :: proc "c" (template: cstring) -> FD ---
```

 

Creates a regular file with a unique name derived from template and return a file descriptor
for the file open for reading and writing.
The application shall ensure that the string provided in template is a pathname ending with
at least six trailing 'X' characters.

**Returns:**  
-1 (setting errno) on failure, an open file descriptor on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mkdtemp.html)

### [mlock ¶](#mlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L43)

```
mlock :: proc "c" (addr: rawptr, len: uint) -> result ---
```

 

Locks a range of the process address space.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mlock.html)

### [mlockall ¶](#mlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L57)

```
mlockall :: proc "c" (flags: bit_set[Lock_Flag_Bits; i32]) -> result ---
```

 

Locks all pages of the process address space.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mlockall.html)

### [mmap ¶](#mmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L22)

```
mmap :: proc "c" (
	addr:  rawptr, 
	len:   uint, 
	prot:  bit_set[Prot_Flag_Bits; i32], 
	flags: bit_set[Map_Flag_Bits; i32], 
	fd:    FD = -1, 
	off:   off_t = 0, 
) -> rawptr ---
```

 

Establish a mapping between an address space of a process and a memory object.

**Returns:**  
MAP\_FAILED (setting errno) on failure, the address in memory otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mmap.html)

### [mprotect ¶](#mprotect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L71)

```
mprotect :: proc "c" (addr: rawptr, len: uint, prot: bit_set[Prot_Flag_Bits; i32]) -> result ---
```

 

Set protection of a memory mapping.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mprotect.html)

### [mrand48 ¶](#mrand48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L58)

```
mrand48 :: proc "c" () -> i64 ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

**Returns:**  
return signed long integers uniformly distributed over the interval [-231,231)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [msgctl ¶](#msgctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L21)

```
msgctl :: proc "c" (msqid: FD, cmd: IPC_Cmd, buf: ^msqid_ds) -> result ---
```

 

Provides various operation as specified by the given cmd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/msgctl.html)

### [msgget ¶](#msgget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L30)

```
msgget :: proc "c" (key: key_t, msgflg: bit_set[IPC_Flag_Bits; i32]) -> FD ---
```

 

Returns the message queue identifier associated with the argument key.

**Returns:**  
-1 (setting errno) on failure, the identifier otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/msgget.html)

### [msgrcv ¶](#msgrcv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L39)

```
msgrcv :: proc "c" (msgid: FD, msgp: rawptr, msgsz: uint, msgtyp: i64, msgflg: bit_set[IPC_Flag_Bits; i32]) -> int ---
```

 

Read a message from the queue.

**Returns:**  
-1 (setting errno) on failure, the bytes received otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/msgrcv.html)

### [msgsnd ¶](#msgsnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin#L52)

```
msgsnd :: proc "c" (msgid: FD, msgp: rawptr, msgsz: uint, msgflg: bit_set[IPC_Flag_Bits; i32]) -> result ---
```

 

Send a message on the queue.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/msgsnd.html)

### [msync ¶](#msync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L79)

```
msync :: proc "c" (addr: rawptr, len: uint, flags: bit_set[Sync_Flags_Bits; i32]) -> result ---
```

 

Write all modified data to permanent storage locations.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/msync.html)

### [munlock ¶](#munlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L50)

```
munlock :: proc "c" (addr: rawptr, len: uint) -> result ---
```

 

Unlocks a range of the process address space.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mlock.html)

### [munlockall ¶](#munlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L64)

```
munlockall :: proc "c" () -> result ---
```

 

Unlocks all pages of the process address space.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/mlockall.html)

### [munmap ¶](#munmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L36)

```
munmap :: proc "c" (addr: rawptr, len: uint) -> result ---
```

 

Unmaps pages of memory.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/munmap.html)

### [nanosleep ¶](#nanosleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L94)

```
nanosleep :: proc "c" (rqtp: ^libc.timespec, rmtp: ^libc.timespec) -> result ---
```

 

Causes the current thread to be suspended from execution until either the time interval
specified by rqtp has elapsed or a signal is delivered.

**Returns:**  
-1 on failure (setting errno), if it was due to a signal, rmtp will be filled with the
remaining time, 0 if all time has been slept

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/nanosleep.html)

### [nice ¶](#nice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L663)

```
nice :: proc "c" (incr: i32) -> i32 ---
```

 

Changes the nice value of a process.

Higher values result in less favorable scheduling.

Because -1 is a valid nice value, checking failure would be done by first setting errno to .NONE
and then calling nice.

**Returns:**  
the new nice value, or -1 (setting) errno on failure

**Example:**

```
posix.set_errno(.NONE)
niceness := posix.nice(-20)
if errno := posix.errno(); niceness == -1 && errno != .NONE {
	fmt.panicf("nice failure: %v", posix.strerror(errno))
}
fmt.printfln("Niceness is now: %v", niceness)
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/nice.html)

### [nl\_langinfo ¶](#nl_langinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin#L85)

```
nl_langinfo :: proc "c" (nl_item) -> cstring ---
```

 

Return a pointer to a string containing information relevant to the particular language or
cultural area defined in the current locale.

**Returns:**  
a string that should not be freed or modified, and that can be invalidated at any time later

**Example:**

```
for item in posix.nl_item {
	fmt.printfln("%v: %q", item, posix.nl_langinfo(item))
}
```

**Possible Output:**

```
CODESET: "US-ASCII"
D_T_FMT: "%a %b %e %H:%M:%S %Y"
D_FMT: "%m/%d/%y"
T_FMT: "%H:%M:%S"
T_FMT_AMPM: "%I:%M:%S %p"
AM_STR: "AM"
PM_STR: "PM"
DAY_1: "Sunday"
DAY_2: "Monday"
DAY_3: "Tuesday"
DAY_4: "Wednesday"
DAY_5: "Thursday"
DAY_6: "Friday"
DAY_7: "Saturday"
ABDAY_1: "Sun"
ABDAY_2: "Mon"
ABDAY_3: "Tue"
ABDAY_4: "Wed"
ABDAY_5: "Thu"
ABDAY_6: "Fri"
ABDAY_7: "Sat"
MON_1: "January"
MON_2: "February"
MON_3: "March"
MON_4: "April"
MON_5: "May"
MON_6: "June"
MON_7: "July"
MON_8: "August"
MON_9: "September"
MON_10: "October"
MON_11: "November"
MON_12: "December"
ABMON_1: "Jan"
ABMON_2: "Feb"
ABMON_3: "Mar"
ABMON_4: "Apr"
ABMON_5: "May"
ABMON_6: "Jun"
ABMON_7: "Jul"
ABMON_8: "Aug"
ABMON_9: "Sep"
ABMON_10: "Oct"
ABMON_11: "Nov"
ABMON_12: "Dec"
ERA: ""
ERA_D_FMT: ""
ERA_D_T_FMT: ""
ERA_T_FMT: ""
ALT_DIGITS: ""
RADIXCHAR: "."
THOUSEP: ""
YESEXPR: "^[yY]"
NOEXPR: "^[nN]"
CRNCYSTR: ""
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/nl_langinfo.html)

### [nrand48 ¶](#nrand48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L85)

```
nrand48 :: proc "c" (xsubi: ^[3]u16) -> i64 ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

**Returns:**  
non-negative, long integers, uniformly distributed over the interval [0,231)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [open ¶](#open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L62)

```
open :: proc "c" (path: cstring, flags: bit_set[O_Flag_Bits; i32], .. mode: ..bit_set[Mode_Bits; _mode_t]) -> FD ---
```

 

Establish the connection between a file and a file descriptor.
It shall create an open file description that refers to a file and a file descriptor that
refers to that open file description. The file descriptor is used by other I/O functions to
refer to that file.
The path argument points to a pathname naming the file

**Returns:**  
-1 on failure (setting errno), a file descriptor on success.

**Example:**

```
// The following example opens the file /tmp/file, either by creating it (if it does not already exist),
// or by truncating its length to 0 (if it does exist). In the former case, if the call creates a new file,
// the access permission bits in the file mode of the file are set to permit reading and writing by the owner,
// and to permit reading only by group members and others.
fd := posix.open("/tmp/file", { .WRONLY, .CREAT, .TRUNC }, { .IRUSR, .IWUSR, .IRGRP, .IROTH })

// The following example uses the open() function to try to create the LOCKFILE file and open it for writing.
// Since the open() function specifies the O_EXCL flag, the call fails if the file already exists.
// In that case, the program assumes that someone else is updating the password file and exits.
fd := posix.open("/etc/ptmp", { .WRONLY, .CREAT, .EXCL }, { .IRUSR, .IWUSR, .IRGRP, .IROTH })
if fd == -1 {
	fmt.println("cannot open /etc/ptmp")
}

// The following example opens a file for writing, creating the file if it does not already exist.
// If the file does exist, the system truncates the file to zero bytes.
fd := posix.open("/etc/ptmp", { .WRONLY, .CREAT, .TRUNC }, { .IRUSR, .IWUSR, .IRGRP, .IROTH })
if fd == -1 {
	fmt.println("cannot open output file")
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/open.html)

### [open\_memstream ¶](#open_memstream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L106)

```
open_memstream :: proc "c" (bufp: ^[^]u8, sizep: ^uint) -> ^c.FILE ---
```

 

Open a dynamic memory buffer stream.

**Returns:**  
nil (setting errno) on failure, the stream on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/open_memstream.html)

### [openat ¶](#openat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin#L73)

```
openat :: proc "c" (fd: FD, path: cstring, flags: bit_set[O_Flag_Bits; i32], .. mode: ..bit_set[Mode_Bits; _mode_t]) -> FD ---
```

 

Equivalent to the open() function except in the case where path specifies a relative path.
In this case the file to be opened is determined relative to the directory associated with the
file descriptor fd instead of the current working directory.

**Returns:**  
-1 on failure (setting errno), a file descriptor on success.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/open.html)

### [opendir ¶](#opendir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L74)

```
opendir :: proc "c" (path: cstring) -> DIR ---
```

 

Open a directory stream corresponding to the directory named by the dirname argument.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fdopendir.html)

### [pathconf ¶](#pathconf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L104)

```
pathconf :: proc "c" (path: cstring, name: PC) -> i64 ---
```

 

Determines the current value of a configurable limit or option that is associated with a file or directory.

**Returns:**  
value on success, -1 (setting errno) on failure, -1 (no errno) if the variable should be taken from limits

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fpathconf.html)

### [pause ¶](#pause) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L672)

```
pause :: proc "c" () -> i32 ---
```

 

Suspend the thread until a signal is received.

**Returns:**  
-1 (setting errno to EINTR)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pause.html)

### [pclose ¶](#pclose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L136)

```
pclose :: proc "c" (stream: ^c.FILE) -> i32 ---
```

 

Closes a pipe stream to or from a process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pclose.html)

### [pipe ¶](#pipe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L711)

```
pipe :: proc "c" (fildes: ^[2]FD) -> result ---
```

 

Create an interprocess channel.

**Example:**

```
fildes: [2]posix.FD
if posix.pipe(&fildes) != .OK {
	// Handle error ...
}

switch posix.fork() {
case -1:
	// Handle error ...

case 0: /* Child - reads from pipe */
	BSIZE :: 100
	buf: [BSIZE]byte
	nbytes: int

	posix.close(fildes[1])                                  /* Write end is unused */
	nbytes = posix.read(fildes[0], raw_data(buf[:]), BSIZE) /* Get data from pipe */
	/* At this point, a further read would see end-of-file ... */
	posix.close(fildes[0])                                  /* Finished with pipe */

	fmt.println(string(buf[:nbytes]))

	posix.exit(0)

case: /* Parent - write to pipe */
	msg := raw_data(transmute([]byte)string("Hello world\n"))
	posix.close(fildes[0])           /* Read end is unused */
	posix.write(fildes[1], msg, 12); /* Write data on pipe */
	posix.close(fildes[1])
	posix.exit(0)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pipe.html)

### [poll ¶](#poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin#L25)

```
poll :: proc "c" (fds: [^]pollfd, nfds: u32, timeout: i32) -> i32 ---
```

 

For each pointer in fds, poll() shall examine the given descriptor for the events.
poll will identify on which descriptors writes or reads can be done.

**Returns:**  
-1 (setting errno) on failure, 0 on timeout, the amount of fds that have been changed on success.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/poll.html)

### [popen ¶](#popen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L128)

```
popen :: proc "c" (command: cstring, mode: cstring) -> ^c.FILE ---
```

 

Executes the command specified, creating a pipe and returning a pointer to a stream that can
read or write from/to the pipe.

**Returns:**  
nil (setting errno) on failure or a pointer to the stream

**Example:**

```
fp := posix.popen("ls *", "r")
if fp == nil {
	/* Handle error */
}

path: [1024]byte
for posix.fgets(raw_data(path[:]), len(path), fp) != nil {
	posix.printf("%s", &path)
}

status := posix.pclose(fp)
if status == -1 {
	/* Error reported by pclose() */
} else {
	/* Use functions described under wait() to inspect `status` in order
	   to determine success/failure of the command executed by popen() */
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/popen.html)

### [posix\_madvise ¶](#posix_madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L86)

```
posix_madvise :: proc "c" (addr: rawptr, len: uint, advice: MAdvice) -> Errno ---
```

 

Advise the implementation of expected behavior of the application.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/posix_madvise.html)

### [posix\_memalign ¶](#posix_memalign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L268)

```
posix_memalign :: proc "c" (memptr: ^[^]u8, alignment: uint, size: uint) -> Errno ---
```

 

Allocates size bytes aligned on a boundary specified by alignment, and shall return a pointer
to the allocated memory in memptr.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/posix_memalign.html)

### [posix\_openpt ¶](#posix_openpt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L277)

```
posix_openpt :: proc "c" (oflag: bit_set[O_Flag_Bits; i32]) -> FD ---
```

 

Establishes a connection between a master device for a pseudo-terminal and a file descriptor.

**Returns:**  
-1 (setting errno) on failure, an open file descriptor otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/posix_openpt.html)

### [posix\_spawn ¶](#posix_spawn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/spawn.odin#L19)

```
posix_spawn :: proc "c" (
	pid:          ^pid_t, 
	path:         cstring, 
	file_actions: rawptr, 
	attrp:        rawptr, 
	argv:         [^]cstring, 
	envp:         [^]cstring, 
) -> Errno ---
```

 

Creates a child process from a provided filepath
spawnp searches directories on the path for the file

**Returns:**  
0 on success, with the child pid returned in the pid argument, or error values on failure.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/posix_spawn.html)

### [posix\_spawnp ¶](#posix_spawnp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/spawn.odin#L20)

```
posix_spawnp :: proc "c" (
	pid:          ^pid_t, 
	file:         cstring, 
	file_actions: rawptr, 
	attrp:        rawptr, 
	argv:         [^]cstring, 
	envp:         [^]cstring, 
) -> Errno ---
```

### [pread ¶](#pread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L727)

```
pread :: proc "c" (fd: FD, buf: [^]u8, nbyte: uint, offset: off_t) -> int ---
```

 

Equivalent to read on a specified offset instead of the internal offset.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pread.html)

### [pselect ¶](#pselect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L26)

```
pselect :: proc "c" (
	nfds:     i32, 
	readfds:  ^fd_set, 
	writefds: ^fd_set, 
	errorfds: ^fd_set, 
	timeout:  ^libc.timespec, 
	sigmask:  ^sigset_t, 
) -> i32 ---
```

 

Examines the file descriptor sets to see whether some of their descriptors are ready for writing,
or have an exceptional condition pending, respectively.

**Returns:**  
-1 (setting errno) on failure, total amount of bits set in the bit masks otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pselect.html)

### [psignal ¶](#psignal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L49)

```
psignal :: proc "c" (signum: Signal, message: cstring) ---
```

 

Writes a language-dependent message to stderror.

**Example:**

```
posix.psignal(.SIGSEGV, "that didn't go well")
```

**Possible Output:**

```
that didn't go well: Segmentation fault
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/psignal.html)

### [pthread\_atfork ¶](#pthread_atfork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L162)

```
pthread_atfork :: proc "c" (prepare: proc "c" () -> !, parent: proc "c" () -> !, child: proc "c" () -> !) -> Errno ---
```

 

Register fork handlers to be called before and after fork().

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_atfork.html)

### [pthread\_attr\_destroy ¶](#pthread_attr_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L31)

```
pthread_attr_destroy :: proc "c" (attr: ^pthread_attr_t) -> Errno ---
```

 

Destroys a thread attributes object.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_init.html)

### [pthread\_attr\_getdetachstate ¶](#pthread_attr_getdetachstate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L39)

```
pthread_attr_getdetachstate :: proc "c" (attr: ^pthread_attr_t, detachstate: ^Detach_State) -> Errno ---
```

 

The detachstate attribute controls whether the thread is created in a detached state.
If the thread is created detached, then use of the ID of the newly created thread is an error.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getdetachstate.html)

### [pthread\_attr\_getguardsize ¶](#pthread_attr_getguardsize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L58)

```
pthread_attr_getguardsize :: proc "c" (attr: ^pthread_attr_t, guardsize: ^uint) -> Errno ---
```

 

The guardsize attribute controls the size of the guard area for the created thread's stack.
The guardsize attribute provides protection against overflow of the stack pointer.
If a thread's stack is created with guard protection, the implementation allocates extra memory
at the overflow end of the stack as a buffer against stack overflow of the stack pointer.
If an application overflows into this buffer an error shall result (possibly in a SIGSEGV signal being delivered to the thread).

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_setguardsize.html)

### [pthread\_attr\_getinheritsched ¶](#pthread_attr_getinheritsched) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L77)

```
pthread_attr_getinheritsched :: proc "c" (attr: ^pthread_attr_t, inheritsched: ^Inherit_Sched) -> Errno ---
```

 

When the attributes objects are used by pthread\_create(), the inheritsched attribute determines
how the other scheduling attributes of the created thread shall be set.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_setinheritsched.html)

### [pthread\_attr\_getschedparam ¶](#pthread_attr_getschedparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L92)

```
pthread_attr_getschedparam :: proc "c" (attr: ^pthread_attr_t, param: ^sched_param) -> Errno ---
```

 

Gets the scheduling param.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_setschedparam.html)

### [pthread\_attr\_getschedpolicy ¶](#pthread_attr_getschedpolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L106)

```
pthread_attr_getschedpolicy :: proc "c" (attr: ^pthread_attr_t, policy: ^Sched_Policy) -> Errno ---
```

 

Gets the scheduling poicy.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getschedpolicy.html)

### [pthread\_attr\_getscope ¶](#pthread_attr_getscope) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L120)

```
pthread_attr_getscope :: proc "c" (attr: ^pthread_attr_t, contentionscope: ^Thread_Scope) -> Errno ---
```

 

Gets the contention scope.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getscope.html)

### [pthread\_attr\_getstack ¶](#pthread_attr_getstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L134)

```
pthread_attr_getstack :: proc "c" (attr: ^pthread_attr_t, stackaddr: ^[^]u8, stacksize: ^uint) -> Errno ---
```

 

Get the area of storage to be used for the created thread's stack.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getstack.html)

### [pthread\_attr\_getstacksize ¶](#pthread_attr_getstacksize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L148)

```
pthread_attr_getstacksize :: proc "c" (attr: ^pthread_attr_t, stacksize: ^uint) -> Errno ---
```

 

Gets the stack size.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getstacksize.html)

### [pthread\_attr\_init ¶](#pthread_attr_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L24)

```
pthread_attr_init :: proc "c" (attr: ^pthread_attr_t) -> Errno ---
```

 

Initializes a thread attributes object.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_init.html)

### [pthread\_attr\_setdetachstate ¶](#pthread_attr_setdetachstate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L47)

```
pthread_attr_setdetachstate :: proc "c" (attr: ^pthread_attr_t, detachstate: Detach_State) -> Errno ---
```

 

The detachstate attribute controls whether the thread is created in a detached state.
If the thread is created detached, then use of the ID of the newly created thread is an error.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getdetachstate.html)

### [pthread\_attr\_setguardsize ¶](#pthread_attr_setguardsize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L69)

```
pthread_attr_setguardsize :: proc "c" (attr: ^pthread_attr_t, guardsize: uint) -> Errno ---
```

 

The guardsize attribute controls the size of the guard area for the created thread's stack.
The guardsize attribute provides protection against overflow of the stack pointer.
If a thread's stack is created with guard protection, the implementation allocates extra memory
at the overflow end of the stack as a buffer against stack overflow of the stack pointer.
If an application overflows into this buffer an error shall result (possibly in a SIGSEGV signal being delivered to the thread).

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_setguardsize.html)

### [pthread\_attr\_setinheritsched ¶](#pthread_attr_setinheritsched) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L85)

```
pthread_attr_setinheritsched :: proc "c" (attr: ^pthread_attr_t, inheritsched: Inherit_Sched) -> Errno ---
```

 

When the attributes objects are used by pthread\_create(), the inheritsched attribute determines
how the other scheduling attributes of the created thread shall be set.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_setinheritsched.html)

### [pthread\_attr\_setschedparam ¶](#pthread_attr_setschedparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L99)

```
pthread_attr_setschedparam :: proc "c" (attr: ^pthread_attr_t, param: ^sched_param) -> Errno ---
```

 

Sets the scheduling param.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_setschedparam.html)

### [pthread\_attr\_setschedpolicy ¶](#pthread_attr_setschedpolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L113)

```
pthread_attr_setschedpolicy :: proc "c" (attr: ^pthread_attr_t, policy: Sched_Policy) -> Errno ---
```

 

Sets the scheduling poicy.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getschedpolicy.html)

### [pthread\_attr\_setscope ¶](#pthread_attr_setscope) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L127)

```
pthread_attr_setscope :: proc "c" (attr: ^pthread_attr_t, contentionscope: Thread_Scope) -> Errno ---
```

 

Sets the contention scope.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getscope.html)

### [pthread\_attr\_setstack ¶](#pthread_attr_setstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L141)

```
pthread_attr_setstack :: proc "c" (attr: ^pthread_attr_t, stackaddr: [^]u8, stacksize: uint) -> Errno ---
```

 

Specify the area of storage to be used for the created thread's stack.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getstack.html)

### [pthread\_attr\_setstacksize ¶](#pthread_attr_setstacksize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L155)

```
pthread_attr_setstacksize :: proc "c" (attr: ^pthread_attr_t, stacksize: uint) -> Errno ---
```

 

Sets the stack size.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_attr_getstacksize.html)

### [pthread\_cancel ¶](#pthread_cancel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L170)

```
pthread_cancel :: proc "c" (thread: pthread_t) -> Errno ---
```

 

Cancel the execution of a thread.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_cancel.html)

### [pthread\_create ¶](#pthread_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L177)

```
pthread_create :: proc "c" (thread: ^pthread_t, attr: ^pthread_attr_t, start_routine: proc "c" (arg: rawptr) -> rawptr, arg: rawptr) -> Errno ---
```

 

Creates a new thread with the given attributes.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_create.html)

### [pthread\_detach ¶](#pthread_detach) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L190)

```
pthread_detach :: proc "c" (thread: pthread_t) -> Errno ---
```

 

Indicate that storage for the thread can be reclaimed when the thread terminates.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_detach.html)

### [pthread\_equal ¶](#pthread_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L197)

```
pthread_equal :: proc "c" (t1: pthread_t, t2: pthread_t) -> b32 ---
```

 

Compare thread IDs.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_equal.html)

### [pthread\_exit ¶](#pthread_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L204)

```
pthread_exit :: proc "c" (value_ptr: rawptr) -> ! ---
```

 

Terminates the calling thread and make the given value available to any successfull join calls.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_exit.html)

### [pthread\_getconcurrency ¶](#pthread_getconcurrency) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L211)

```
pthread_getconcurrency :: proc "c" () -> i32 ---
```

 

Gets the current concurrency hint.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_getconcurrency.html)

### [pthread\_getcpuclockid ¶](#pthread_getcpuclockid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L225)

```
pthread_getcpuclockid :: proc "c" (thread_id: pthread_t, clock_id: ^clockid_t) -> Errno ---
```

 

Access a thread CPU-time clock.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_getcpuclockid.html)

### [pthread\_getschedparam ¶](#pthread_getschedparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L232)

```
pthread_getschedparam :: proc "c" (thread: pthread_t, policy: ^Sched_Policy, param: ^sched_param) -> Errno ---
```

 

Gets the scheduling policy and parameters.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_getschedparam.html)

### [pthread\_getspecific ¶](#pthread_getspecific) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L260)

```
pthread_getspecific :: proc "c" (key: pthread_key_t) -> rawptr ---
```

 

Returns the value currently bound to the specified key on behalf of the calling thread.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_getspecific.html)

### [pthread\_join ¶](#pthread_join) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L297)

```
pthread_join :: proc "c" (thread: pthread_t, value_ptr: ^rawptr = nil) -> Errno ---
```

 

Suspends execution of the calling thread until the target thread terminates.

**Example:**

```
ar: [10_000]i32

sb1 := ar[:5_000]
sb2 := ar[5_000:]

th1, th2: posix.pthread_t

posix.pthread_create(&th1, nil, incer, &sb1)
posix.pthread_create(&th2, nil, incer, &sb2)

posix.pthread_join(th1)
posix.pthread_join(th2)

incer :: proc "c" (arg: rawptr) -> rawptr {
	sb := (^[]i32)(arg)
	for &val in sb {
		val += 1
	}

	return nil
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_join.html)

### [pthread\_key\_create ¶](#pthread_key_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L246)

```
pthread_key_create :: proc "c" (key: ^pthread_key_t, destructor: proc "c" (value: rawptr) = nil) -> Errno ---
```

 

Creates a thread-specific data key visible to all threads in the process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_key_create.html)

### [pthread\_key\_delete ¶](#pthread_key_delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L253)

```
pthread_key_delete :: proc "c" (key: pthread_key_t) -> Errno ---
```

 

Deletes a thread-specific data key visible to all threads in the process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_key_delete.html)

### [pthread\_kill ¶](#pthread_kill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L58)

```
pthread_kill :: proc "c" (thread: pthread_t, sig: Signal) -> Errno ---
```

 

Send a signal to a thread.

As with kill, if sig is 0, only validation (of the pthread\_t given) is done and no signal is sent.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_kill.html)

### [pthread\_self ¶](#pthread_self) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L304)

```
pthread_self :: proc "c" () -> pthread_t ---
```

 

Get the calling thread ID.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_self.html)

### [pthread\_setcancelstate ¶](#pthread_setcancelstate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L311)

```
pthread_setcancelstate :: proc "c" (state: Cancel_State, oldstate: ^Cancel_State) -> Errno ---
```

 

Atomically set the calling thread's cancelability and return the previous value.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_setcancelstate.html)

### [pthread\_setcanceltype ¶](#pthread_setcanceltype) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L318)

```
pthread_setcanceltype :: proc "c" (type: Cancel_Type, oldtype: ^Cancel_Type) -> Errno ---
```

 

Atomically set the calling thread's cancel type and return the previous value.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_setcancelstate.html)

### [pthread\_setconcurrency ¶](#pthread_setconcurrency) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L218)

```
pthread_setconcurrency :: proc "c" (new_level: i32) -> Errno ---
```

 

Sets the current desired concurrency hint.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_getconcurrency.html)

### [pthread\_setschedparam ¶](#pthread_setschedparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L239)

```
pthread_setschedparam :: proc "c" (thread: pthread_t, policy: Sched_Policy, param: ^sched_param) -> Errno ---
```

 

Sets the scheduling policy and parameters.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_getschedparam.html)

### [pthread\_setschedprio ¶](#pthread_setschedprio) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L333)

```
pthread_setschedprio :: proc "c" (thread: pthread_t, prio: i32) -> Errno ---
```

 

Sets the scheduling priority for the thread given.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_setschedprio.html)

### [pthread\_setspecific ¶](#pthread_setspecific) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L267)

```
pthread_setspecific :: proc "c" (key: pthread_key_t, value: rawptr) -> Errno ---
```

 

Sets the value currently bound to the specified key on behalf of the calling thread.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_getspecific.html)

### [pthread\_sigmask ¶](#pthread_sigmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L67)

```
pthread_sigmask :: proc "c" (how: Sig, set: ^sigset_t, oset: ^sigset_t) -> Errno ---
```

 

Examine and change blocked signals.

Equivalent to sigprocmask(), without the restriction that the call be made in a single-threaded process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_sigmask.html)

### [pthread\_testcancel ¶](#pthread_testcancel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin#L326)

```
pthread_testcancel :: proc "c" () -> ! ---
```

 

Creates a cancellation point in the calling thread.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_testcancel.html)

### [ptsname ¶](#ptsname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L286)

```
ptsname :: proc "c" (fildes: FD) -> cstring ---
```

 

Returns the name of the slave pseudo-terminal device associated with a master pseudo-terminal device.

**Returns:**  
nil (setting errno) on failure, the name on success, which may be invalidated on subsequent calls

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ptsname.html)

### [putc\_unlocked ¶](#putc_unlocked) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L71)

```
putc_unlocked :: proc "c" (ch: i32, stream: ^c.FILE) -> i32 ---
```

 

Equivalent to putc but unaffected by locks.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getc_unlocked.html)

### [putchar\_unlocked ¶](#putchar_unlocked) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L79)

```
putchar_unlocked :: proc "c" (ch: i32) -> i32 ---
```

 

Equivalent to putchar but unaffected by locks.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getc_unlocked.html)

### [putenv ¶](#putenv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin#L82)

```
putenv :: proc "c" (string: cstring) -> i32 ---
```

 

Uses the string argument to set environment variable values.

**Returns:**  
0 on success, non-zero (setting errno) on failure

**Example:**

```
if posix.putenv("HOME=/usr/home") != 0 {
	fmt.panicf("putenv failure: %v", posix.strerror(posix.errno()))
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/putenv.html)

### [pwrite ¶](#pwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L743)

```
pwrite :: proc "c" (fd: FD, buf: [^]u8, buflen: uint, offset: off_t) -> int ---
```

 

Equivalent to write on a specified offset instead of the internal offset.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/write.html)

### [raise ¶](#raise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L39)

```
raise :: proc "c" (sig: Signal) -> result ---
```

 

Raises a signal, calling its handler and then returning.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/raise.html)

### [rand\_r ¶](#rand_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L323)

```
rand_r :: proc "c" (seed: ^u32) -> i32 ---
```

 

Computes a sequence of pseudo-random integers in the range [0, {RAND\_MAX}].
(The value of the {RAND\_MAX} macro shall be at least 32767.)

If rand\_r() is called with the same initial value for the object pointed to by seed and that object is not modified between successive returns and calls to rand\_r(), the same sequence shall be generated.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/rand_r.html)

### [random ¶](#random) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L229)

```
random :: proc "c" () -> i64 ---
```

 

Use a non-linear additive feedback random-number generator employing a default state array
size of 31 long integers to return successive pseudo-random numbers in the range from 0 to 231-1.
The period of this random-number generator is approximately 16 x (231-1).
The size of the state array determines the period of the random-number generator.
Increasing the state array size shall increase the period.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/initstate.html)

### [read ¶](#read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L720)

```
read :: proc "c" (fd: FD, buf: [^]u8, nbyte: uint) -> int ---
```

 

Read from a file.

**Returns:**  
the amount of bytes read or -1 (setting errno) on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pread.html)

### [readdir ¶](#readdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L99)

```
readdir :: proc "c" (dirp: DIR) -> ^dirent ---
```

 

Returns a pointer to a structure representing the directory entry at the current position
in the directory stream specified by the argument dirp, and position the directory stream at
the next entry.

Returns nil when the end is reached or an error occurred (which sets errno).

**Example:**

```
posix.set_errno(.NONE)
entry := posix.readdir(dirp)
if entry == nil {
	if errno := posix.errno(); errno != .NONE {
		panic(string(posix.strerror(errno)))
	} else {
		fmt.println("end of directory stream")
	}
} else {
	fmt.println(entry)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/readdir.html)

### [readlink ¶](#readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L752)

```
readlink :: proc "c" (path: cstring, buf: [^]u8, bufsize: uint) -> int ---
```

 

Read the contents of a symbolic link.

**Returns:**  
the amount of bytes read or -1 (setting errno) on failure.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/readlink.html)

### [readlinkat ¶](#readlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L759)

```
readlinkat :: proc "c" (fd: FD, path: cstring, buf: [^]u8, bufsize: uint) -> int ---
```

 

Equivalent to readlink but relative paths are resolved based on the dir fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/readlink.html)

### [readv ¶](#readv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_uio.odin#L22)

```
readv :: proc "c" (fildes: FD, iov: [^]iovec, iovcnt: i32) -> int ---
```

 

Equivalent to read() but takes a vector of inputs.

iovcnt can be 0..=IOV\_MAX in length.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/readv.html)

### [realpath ¶](#realpath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L336)

```
realpath :: proc "c" (file_name: cstring, resolved_name: [^]u8 = nil) -> cstring ---
```

 

Derive, from the pathname file\_name, an absolute pathname that resolves to the same directory entry,
whose resolution does not involve '.', '..', or symbolic links.

If resolved\_name is not `nil` it should be larger than `PATH_MAX` and the result will use it as a backing buffer.
If resolved\_name is `nil` the returned string is allocated by `malloc`.

**Returns:**  
`nil` (setting errno) on failure, the "real path" otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/realpath.html)

### [recv ¶](#recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L138)

```
recv :: proc "c" (socket: FD, buffer: rawptr, length: uint, flags: bit_set[Msg_Flag_Bits; i32]) -> int ---
```

 

Receives a message from a socket.

Blocks (besides with O\_NONBLOCK) if there is nothing to receive.

**Returns:**  
0 when the peer shutdown with no more messages, -1 (setting errno) on failure, the amount of bytes received on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/recv.html)

### [recvfrom ¶](#recvfrom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L149)

```
recvfrom :: proc "c" (
	socket:      FD, 
	buffer:      rawptr, 
	length:      uint, 
	flags:       bit_set[Msg_Flag_Bits; i32], 
	address:     ^sockaddr, 
	address_len: ^socklen_t, 
) -> int ---
```

 

Receives a message from a socket.

Equivalent to recv() but retrieves the source address too.

**Returns:**  
0 when the peer shutdown with no more messages, -1 (setting errno) on failure, the amount of bytes received on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/recvfrom.html)

### [recvmsg ¶](#recvmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L165)

```
recvmsg :: proc "c" (socket: FD, message: ^msghdr, flags: bit_set[Msg_Flag_Bits; i32]) -> int ---
```

 

Receives a message from a socket.

**Returns:**  
0 when the peer shutdown with no more messages, -1 (setting errno) on failure, the amount of bytes received on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/recvmsg.html)

### [renameat ¶](#renameat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin#L151)

```
renameat :: proc "c" (oldfd: FD, old: cstring, newfd: FD, new: cstring) -> result ---
```

 

Equivalent to rename but relative directories are resolved from their respective fds.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/renameat.html)

### [rewinddir ¶](#rewinddir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L109)

```
rewinddir :: proc "c" (dirp: DIR) ---
```

 

Reset the position of the directory stream to which dirp refers to the beginning of the directory.
It shall also cause the directory stream to refer to the current state of the corresponding directory,
as a call to opendir() would have done.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/rewinddir.html)

### [rmdir ¶](#rmdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L98)

```
rmdir :: proc "c" (path: cstring) -> result ---
```

 

Remove an (empty) directory.

]] More; https://pubs.opengroup.org/onlinepubs/9699919799/functions/rmdir.html ]]

### [scandir ¶](#scandir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L43)

```
scandir :: proc "c" (dir: cstring, sel: ^[^]^dirent, filter: proc "c" (^dirent) -> b32 = nil, compar: proc "c" ([^]^dirent, [^]^dirent) -> i32 = alphasort) -> i32 ---
```

 

Scan the directory dir, calling the function referenced by sel on each directory entry.

**Example:**

```
list: [^]^posix.dirent
ret := posix.scandir(#directory, &list, nil, posix.alphasort)
if ret < 0 {
	panic(string(posix.strerror(posix.errno())))
}
defer posix.free(list)

entries := list[:ret]
for entry in entries {
	log.info(entry)
	posix.free(entry)
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/scandir.html)

### [sched\_get\_priority\_max ¶](#sched_get_priority_max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin#L20)

```
sched_get_priority_max :: proc "c" (policy: Sched_Policy) -> i32 ---
```

 

Returns the minimum for the given scheduling policy.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sched_get_priority_max.html)

### [sched\_get\_priority\_min ¶](#sched_get_priority_min) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin#L29)

```
sched_get_priority_min :: proc "c" (policy: Sched_Policy) -> i32 ---
```

 

Returns the maximum for the given scheduling policy.

**Returns:**  
-1 (setting errno) on failure, the maximum on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sched_get_priority_max.html)

### [sched\_yield ¶](#sched_yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin#L34)

```
sched_yield :: proc "c" () -> result ---
```

 

Forces the running thread to relinquish the processor until it again becomes the head of its thread list.

### [seed48 ¶](#seed48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L112)

```
seed48 :: proc "c" (seed16v: ^[3]u16) -> ^[3]u16 ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

The srand48(), seed48(), and lcong48() functions are initialization entry points, one of which should be invoked before either drand48(), lrand48(), or mrand48() is called.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [seekdir ¶](#seekdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L118)

```
seekdir :: proc "c" (dirp: DIR, loc: i64) ---
```

 

The seekdir() function shall set the position of the next readdir() operation on the directory
stream specified by dirp to the position specified by loc.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/seekdir.html)

### [select ¶](#select) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L42)

```
select :: proc "c" (nfds: i32, readfds: ^fd_set, writefds: ^fd_set, errorfds: ^fd_set, timeout: ^timeval) -> i32 ---
```

 

Equivalent to pselect() except a more specific timeout resolution (nanoseconds),
does not have a signal mask, and may modify the timeout.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pselect.html)

### [semctl ¶](#semctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L21)

```
semctl :: proc "c" (semid: FD, semnum: i32, cmd: Sem_Cmd, .. args: ..semun) -> i32 ---
```

 

Provides various semaphore control operation as specified by cmd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/semctl.html)

### [semget ¶](#semget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L30)

```
semget :: proc "c" (key: key_t, nsems: i32, semflg: bit_set[IPC_Flag_Bits; i32]) -> FD ---
```

 

Returns the semaphore identifier associated with key.

**Returns:**  
-1 (setting errno) on failure, a semaphore file descriptor otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/semget.html)

### [semop ¶](#semop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin#L38)

```
semop :: proc "c" (semid: FD, sops: [^]sembuf, nsops: uint) -> result ---
```

 

Perform atomically a user-defined array of semaphore operations in array order on the set of
semaphores associated with the semaphore identifier specified by the argument semid.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/semop.html)

### [send ¶](#send) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L174)

```
send :: proc "c" (socket: FD, buffer: rawptr, length: uint, flags: bit_set[Msg_Flag_Bits; i32]) -> int ---
```

 

Sends a message on a socket.

**Returns:**  
-1 (setting errno) on failure, the amount of bytes received on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/send.html)

### [sendmsg ¶](#sendmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L183)

```
sendmsg :: proc "c" (socket: FD, message: ^msghdr, flags: bit_set[Msg_Flag_Bits; i32]) -> int ---
```

 

Sends a message on a socket.

**Returns:**  
-1 (setting errno) on failure, the amount of bytes received on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sendmsg.html)

### [sendto ¶](#sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L194)

```
sendto :: proc "c" (
	socket:    FD, 
	message:   rawptr, 
	length:    uint, 
	flags:     bit_set[Msg_Flag_Bits; i32], 
	dest_addr: ^sockaddr, 
	dest_len:  socklen_t, 
) -> int ---
```

 

Sends a message on a socket.

If the socket is connectionless, the dest\_addr is used to send to.

**Returns:**  
-1 (setting errno) on failure, the amount of bytes received on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sendto.html)

### [set\_errno ¶](#set_errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L18)

```
set_errno :: proc "contextless" (err: Errno) {…}
```

##### Related Procedure Groups

* [errno](/core/sys/posix/#errno)

### [setegid ¶](#setegid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L766)

```
setegid :: proc "c" (gid: gid_t) -> result ---
```

 

Set the effective group ID.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setegid.html)

### [setenv ¶](#setenv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L305)

```
setenv :: proc "c" (envname: cstring, envval: cstring, overwrite: b32) -> result ---
```

 

Updates or add a variable in the environment of the calling process.

**Example:**

```
if posix.setenv("HOME", "/usr/home") != .OK {
	fmt.panicf("putenv failure: %v", posix.strerror(posix.errno()))
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setenv.html)

### [seteuid ¶](#seteuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L773)

```
seteuid :: proc "c" (uid: uid_t) -> result ---
```

 

Sets the effective user ID.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/seteuid.html)

### [setgid ¶](#setgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L780)

```
setgid :: proc "c" (gid: gid_t) -> result ---
```

 

Sets the group ID.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setgid.html)

### [setgrent ¶](#setgrent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin#L31)

```
setgrent :: proc "c" () -> ! ---
```

 

Rewinds the group database so getgrent() returns the first entry again.

Checking status would be done by setting errno to 0, calling this, and checking errno.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/endgrent.html)

### [sethostent ¶](#sethostent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L108)

```
sethostent :: proc "c" (stayopen: b32) ---
```

 

Opens a connection to the database and set the next entry to the first entry in the database.

This reads /etc/hosts on most systems.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sethostent.html)

### [setitimer ¶](#setitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L29)

```
setitimer :: proc "c" (which: ITimer, value: ^itimerval, ovalue: ^itimerval) -> result ---
```

 

Set the timer to the value given, and store the previous value in ovalue if it is not nil.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getitimer.html)

### [setkey ¶](#setkey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L362)

```
setkey :: proc "c" (key: [^]u8) ---
```

 

Provides access to an implementation-defined encoding algorithm.
The argument of setkey() is an array of length 64 bytes containing only the bytes with numerical
value of 0 and 1.

If this string is divided into groups of 8, the low-order bit in each group is ignored; this gives a 56-bit key which is used by the algorithm.
This is the key that shall be used with the algorithm to encode a string block passed to encrypt().

The setkey() function shall not change the setting of errno if successful.
An application wishing to check for error situations should set errno to 0 before calling setkey().
If errno is non-zero on return, an error has occurred.

**Example:**

```
key: [64]byte
// set key bytes...

posix.set_errno(.NONE)
posix.setkey(raw_data(key))
if errno := posix.errno(); errno != .NONE {
	fmt.panicf("setkey failure: %s", posix.strerror(errno))
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setkey.html)

### [setnetent ¶](#setnetent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L139)

```
setnetent :: proc "c" (stayopen: b32) ---
```

 

Opens and rewinds the database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setnetent.html)

### [setpgid ¶](#setpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L787)

```
setpgid :: proc "c" (pid: pid_t, pgid: pid_t) -> result ---
```

 

Set process group ID.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setpgid.html)

### [setpgrp ¶](#setpgrp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L796)

```
setpgrp :: proc "c" () -> pid_t ---
```

 

Set the process group ID to that of the process.

**Returns:**  
the process group id, no failures are defined

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setpgrp.html)

### [setpriority ¶](#setpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L40)

```
setpriority :: proc "c" (which: Which_Prio, who: id_t, value: i32) -> result ---
```

 

Sets the nice value of the process, process group or user given.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getpriority.html)

### [setprotoent ¶](#setprotoent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L182)

```
setprotoent :: proc "c" (stayopen: b32) ---
```

 

Opens and rewinds the database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setprotoent.html)

### [setpwent ¶](#setpwent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin#L20)

```
setpwent :: proc "c" () -> ! ---
```

 

Rewinds the user database so that the next getpwent() returns the first entry.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setpwent.html)

### [setregid ¶](#setregid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L803)

```
setregid :: proc "c" (rgid: gid_t, egid: gid_t) -> result ---
```

 

Set the real and effective group IDs.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setregid.html)

### [setreuid ¶](#setreuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L810)

```
setreuid :: proc "c" (ruid: uid_t, euid: uid_t) -> result ---
```

 

Set real and effective user IDs.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setreuid.html)

### [setrlimit ¶](#setrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin#L54)

```
setrlimit :: proc "c" (resource: Resource, rlp: ^rlimit) -> result ---
```

 

Set a resource limit.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/getrlimit.html)

### [setservent ¶](#setservent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin#L224)

```
setservent :: proc "c" (stayopen: b32) ---
```

 

Opens and rewinds the database.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setservent.html)

### [setsid ¶](#setsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L819)

```
setsid :: proc "c" () -> pid_t ---
```

 

Create session and set process group ID.

**Returns:**  
the new process group ID or -1 (setting errno) on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setsid.html)

### [setsockopt ¶](#setsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L110)

```
setsockopt :: proc "c" (socket: FD, level: i32, option_name: Sock_Option, option_value: rawptr, option_len: socklen_t) -> result ---
```

 

Sets the specified option.

level: either `c.int(posix.Protocol(...))` to specify a protocol level or `posix.SOL_SOCKET`
to specify the socket local level.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setsockopt.html)

### [setstate ¶](#setstate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L218)

```
setstate :: proc "c" (state: [^]u8) -> [^]u8 ---
```

 

Sets the state array of the random number generator.

**Returns:**  
the previous state array or nil on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/initstate.html)

### [setuid ¶](#setuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L826)

```
setuid :: proc "c" (uid: uid_t) -> result ---
```

 

Set user ID.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setuid.html)

### [shm\_open ¶](#shm_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L97)

```
shm_open :: proc "c" (name: cstring, oflag: bit_set[O_Flag_Bits; i32], .. args: ..any) -> FD ---
```

 

https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages\_iPhoneOS/man2/shm\_open.2.html

### [shm\_unlink ¶](#shm_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin#L107)

```
shm_unlink :: proc "c" (name: cstring) -> result ---
```

 

Removes a shared memory object.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/shm_unlink.html)

### [shmat ¶](#shmat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L23)

```
shmat :: proc "c" (shmid: FD, shmaddr: rawptr, shmflag: bit_set[SHM_Flag_Bits; i32]) -> rawptr ---
```

 

Attaches the shared memory segment associated with the identifier
into the address space of the calling process.

**Returns:**  
nil (setting errno) on failure, the address otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/shmat.html)

### [shmctl ¶](#shmctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L31)

```
shmctl :: proc "c" (shmid: FD, cmd: IPC_Cmd, buf: ^shmid_ds) -> result ---
```

 

Provides various shared memory operation as specified by the given cmd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/shmctl.html)

### [shmdt ¶](#shmdt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L38)

```
shmdt :: proc "c" (shmaddr: rawptr) -> result ---
```

 

Detaches the shared memory segment located at the address specified.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/shmdt.html)

### [shmget ¶](#shmget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin#L47)

```
shmget :: proc "c" (key: key_t, size: uint, shmflag: bit_set[SHM_Flag_Bits; i32]) -> FD ---
```

 

Returns the shared memory identifier associated with key.

**Returns:**  
-1 (setting errno) on failure, the shared memory ID otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/shmget.html)

### [shutdown ¶](#shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L208)

```
shutdown :: proc "c" (socket: FD, how: Shut) -> result ---
```

 

Shuts down a socket end or both.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/shutdown.html)

### [sigaction ¶](#sigaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L83)

```
sigaction :: proc "c" (sig: Signal, act: ^sigaction_t, oact: ^sigaction_t) -> result ---
```

 

Examine and change a signal action.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigaction.html)

### [sigaddset ¶](#sigaddset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L86)

```
sigaddset :: proc "c" (set: ^sigset_t, signo: Signal) -> result ---
```

### [sigaltstack ¶](#sigaltstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L110)

```
sigaltstack :: proc "c" (ss: ^stack_t, oss: ^stack_t) -> result ---
```

 

Set and get the signal alternate stack context.

**Example:**

```
sigstk := posix.stack_t {
	ss_sp    = make([^]byte, posix.SIGSTKSZ) or_else panic("allocation failure"),
	ss_size  = posix.SIGSTKSZ,
	ss_flags = {},
}
if posix.sigaltstack(&sigstk, nil) != .OK {
	fmt.panicf("sigaltstack failure: %v", posix.strerror(posix.errno()))
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigaltstack.html)

### [sigdelset ¶](#sigdelset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L88)

```
sigdelset :: proc "c" (^sigset_t, Signal) -> i32 ---
```

### [sigemptyset ¶](#sigemptyset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L90)

```
sigemptyset :: proc "c" (^sigset_t) -> i32 ---
```

### [sigfillset ¶](#sigfillset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L92)

```
sigfillset :: proc "c" (^sigset_t) -> i32 ---
```

### [sighold ¶](#sighold) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L117)

```
sighold :: proc "c" (sig: Signal) -> result ---
```

 

Adds sig to the signal mask of the calling process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sighold.html)

### [sigignore ¶](#sigignore) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L124)

```
sigignore :: proc "c" (sig: Signal) -> result ---
```

 

Sets the disposition of sig to SIG\_IGN.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sighold.html)

### [siginterrupt ¶](#siginterrupt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L150)

```
siginterrupt :: proc "c" (sig: Signal, flag: b32) -> result ---
```

 

Changes the restart behavior when a function is interrupted by the specified signal.

If flag is true, SA\_RESTART is removed, added otherwise.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/siginterrupt.html)

### [sigismember ¶](#sigismember) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L160)

```
sigismember :: proc "c" (set: ^sigset_t, signo: Signal) -> i32 ---
```

 

Test for a signal in a signal set.

**Returns:**  
1 if it is a member, 0 if not, -1 (setting errno) on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigismember.html)

### [siglongjmp ¶](#siglongjmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/setjmp.odin#L35)

```
siglongjmp :: proc "c" (env: ^sigjmp_buf, val: i32) -> ! ---
```

 

Equivalent to longjmp() but restores saved signal masks.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/siglongjump.html)

### [signal ¶](#signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin#L32)

```
signal :: proc "c" (sig: Signal, func: proc "c" (Signal)) -> proc "c" (Signal) ---
```

 

Set a signal handler.

func can either be:
`auto_cast posix.SIG_DFL` setting the default handler for that specific signal
`auto_cast posix.SIG_IGN` causing the specific signal to be ignored
a custom signal handler

**Returns:**  
SIG\_ERR (setting errno), the last value of func on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/signal.html)

### [sigpause ¶](#sigpause) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L132)

```
sigpause :: proc "c" (sig: Signal) -> result ---
```

 

Removes sig from the signal mask of the calling process and suspend the calling process until
a signal is received.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sighold.html)

### [sigpending ¶](#sigpending) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L169)

```
sigpending :: proc "c" (set: ^sigset_t) -> result ---
```

 

Stores the set of signals that are blocked from delivery to the calling thread and that are pending
on the process or the calling thread.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigpending.html)

### [sigprocmask ¶](#sigprocmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L75)

```
sigprocmask :: proc "c" (how: Sig, set: ^sigset_t, oldset: ^sigset_t) -> result ---
```

 

Examine and change blocked signals in a single-threaded process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_sigmask.html)

### [sigrelse ¶](#sigrelse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L141)

```
sigrelse :: proc "c" (sig: Signal) -> result ---
```

 

Removes sig from the signal mask of the calling process.

**Returns:**  
always -1.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sighold.html)

### [sigsetjmp ¶](#sigsetjmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/setjmp.odin#L43)

```
sigsetjmp :: proc "c" (env: ^sigjmp_buf, savemask: b32) -> i32 ---
```

 

Equivalent to setjmp() but restores saved signal masks.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/siglongjump.html)

### [sigsuspend ¶](#sigsuspend) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L179)

```
sigsuspend :: proc "c" (sigmask: ^sigset_t) -> result ---
```

 

Wait for one of the given signals.

**Returns:**  
always -1

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigsuspend.html)

### [sigwait ¶](#sigwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin#L186)

```
sigwait :: proc "c" (set: ^sigset_t, sig: ^Signal) -> Errno ---
```

 

Wait for queued signals.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigwait.html)

### [sleep ¶](#sleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L835)

```
sleep :: proc "c" (seconds: u32) -> u32 ---
```

 

Suspend execution for an interval of time.

**Returns:**  
the time left to sleep (may be > 0 in case of signals)

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sleep.html)

### [sockatmark ¶](#sockatmark) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L217)

```
sockatmark :: proc "c" (socket: FD) -> i32 ---
```

 

Determine wheter a socket is at the out-of-band mark.

**Returns:**  
-1 (setting errno) on failure, 0 if not at the mark, 1 if it is

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sockatmark.html)

### [socket ¶](#socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L25)

```
socket :: proc "c" (domain: AF, type: Sock, protocol: Protocol = .IP) -> FD ---
```

 

Creates a socket.

**Returns:**  
-1 (setting errno) on failure, file descriptor of socket otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/socket.html)

### [socketpair ¶](#socketpair) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin#L224)

```
socketpair :: proc "c" (domain: AF, type: Sock, protocol: Protocol, socket_vector: ^[2]FD) -> result ---
```

 

Create a pair of connected sockets.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/socketpair.html)

### [sprintf ¶](#sprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L47)

```
sprintf :: proc "c" (s: [^]u8, format: cstring, .. args: ..any) -> i32 ---
```

 

Equivalent to fprintf but output is written to s, it is the user's responsibility to
ensure there is enough space.

Return: number of bytes written, negative (setting errno) on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/dprintf.html)

### [srand48 ¶](#srand48) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L94)

```
srand48 :: proc "c" (seedval: i64) ---
```

 

This family of functions shall generate pseudo-random numbers using a linear congruential algorithm and 48-bit integer arithmetic.

The srand48(), seed48(), and lcong48() functions are initialization entry points, one of which should be invoked before either drand48(), lrand48(), or mrand48() is called.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/drand48.html)

### [srandom ¶](#srandom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L237)

```
srandom :: proc "c" (seed: u32) ---
```

 

Initializes the current state array using the value of seed.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/initstate.html)

### [stat ¶](#stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L33)

```
stat :: proc "c" (path: cstring, buf: ^stat_t) -> result ---
```

 

Obtain information about a "file" at the given path.

Follows symbolic links.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/fstatat.html)

### [statvfs ¶](#statvfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin#L30)

```
statvfs :: proc "c" (path: cstring, buf: ^statvfs_t) -> result ---
```

 

Obtains information about the file system containing the file named by path.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/statvfs.html)

### [strerror ¶](#strerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/string_libc.odin#L28)

```
strerror :: proc "contextless" (errnum: runtime.Maybe($T=Errno) = nil) -> cstring {…}
```

### [strerror\_r ¶](#strerror_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/string.odin#L24)

```
strerror_r :: proc "c" (errnum: Errno, strerrbuf: [^]u8, buflen: uint) -> Errno ---
```

 

Map the error number to a locale-dependent error message string and put it in the buffer.

**Returns:**  
ERANGE if the buffer is not big enough

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/strerror_r.html)

### [strfmon ¶](#strfmon) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/monetary.odin#L37)

```
strfmon :: proc "c" (s: [^]u8, maxsize: uint, format: cstring, .. args: ..any) -> uint ---
```

 

Places characters into the array pointed to by s as controlled by the string format.
No more than maxsize bytes are placed into the array.

**Returns:**  
-1 (setting errno) on failure, the number of bytes added to s otherwise

**Example:**

```
posix.setlocale(.ALL, "en_US.UTF-8")
value := 123456.789
buffer: [100]byte
size := posix.strfmon(raw_data(buffer[:]), len(buffer), "%n", value)
if int(size) == -1 {
	fmt.panicf("strfmon failure: %s", posix.strerror(posix.errno()))
}
fmt.println(string(buffer[:size]))
```

**Output:**

```
$123,456.79
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/strfmon.html)

### [strptime ¶](#strptime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L101)

```
strptime :: proc "c" (buf: [^]u8, format: cstring, tm: ^libc.tm) -> cstring ---
```

 

Converts the character string to values which are stored in tm, using the specified format.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/strptime.html)

### [strsignal ¶](#strsignal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/string.odin#L33)

```
strsignal :: proc "c" (sig: Signal) -> cstring ---
```

 

Map the signal number to an implementation-defined string.

**Returns:**  
a string that may be invalidated by subsequent calls

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/strsignal.html)

### [swab ¶](#swab) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L106)

```
swab :: proc "c" (src: [^]u8, dest: [^]u8, nbytes: int) ---
```

 

Copy nbyte bytes, from src, to dest, exchanging adjecent bytes.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/swab.html)

### [symlink ¶](#symlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L602)

```
symlink :: proc "c" (path1: cstring, path2: cstring) -> result ---
```

 

Creates a symbolic link called path2 that contains a link to path1.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/symlink.html)

### [symlinkat ¶](#symlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L609)

```
symlinkat :: proc "c" (path1: cstring, fd: FD, path2: cstring) -> result ---
```

 

Equivalent to symlink but relative paths are resolved to dir fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/symlink.html)

### [sync ¶](#sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L842)

```
sync :: proc "c" () -> ! ---
```

 

Schedule file system updates.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sync.html)

### [sysconf ¶](#sysconf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L120)

```
sysconf :: proc "c" (name: SC) -> i64 ---
```

 

Determines the current value of configurable system limit or options.

**Returns:**  
value on success, -1 (setting errno) on failure, -1 (no errno) if the variable should be taken from limits

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sysconf.html)

### [tcdrain ¶](#tcdrain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L48)

```
tcdrain :: proc "c" (fildes: FD) -> result ---
```

 

Wait for transmission of output.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcdrain.html)

### [tcflow ¶](#tcflow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L55)

```
tcflow :: proc "c" (fildes: FD, action: TC_Action) -> result ---
```

 

Suspend or restart the transmission or reception of data.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcflow.html)

### [tcflush ¶](#tcflush) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L62)

```
tcflush :: proc "c" (fildes: FD, queue_selector: TC_Queue) -> result ---
```

 

Flush non-transmitted output data, non-read input data, or both.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcflush.html)

### [tcgetattr ¶](#tcgetattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L69)

```
tcgetattr :: proc "c" (fildes: FD, termios_p: ^termios) -> result ---
```

 

Get the parameters associated with the terminal.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcgetattr.html)

### [tcgetpgrp ¶](#tcgetpgrp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L851)

```
tcgetpgrp :: proc "c" (fildes: FD) -> pid_t ---
```

 

Get the foreground process group ID.

**Returns:**  
-1 (setting errno) on failure, the id otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcgetpgrp.html)

### [tcgetsid ¶](#tcgetsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L78)

```
tcgetsid :: proc "c" (fildes: FD) -> pid_t ---
```

 

Get the process group ID for the session leader for the controlling terminal.

**Returns:**  
-1 (setting errno) on failure, the pid otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcgetsid.html)

### [tcsendbreak ¶](#tcsendbreak) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L85)

```
tcsendbreak :: proc "c" (fildes: FD, duration: i32) -> result ---
```

 

Send a break for a specific duration.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcsendbreak.html)

### [tcsetattr ¶](#tcsetattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin#L92)

```
tcsetattr :: proc "c" (fildes: FD, optional_actions: TC_Optional_Action, termios_p: ^termios) -> result ---
```

 

Set the parameters associated with the terminal.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcsetattr.html)

### [tcsetpgrp ¶](#tcsetpgrp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L858)

```
tcsetpgrp :: proc "c" (fildes: FD, pgid_id: pid_t) -> result ---
```

 

Set the foreground process group ID.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcsetpgrp.html)

### [telldir ¶](#telldir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin#L127)

```
telldir :: proc "c" (dirp: DIR) -> i64 ---
```

 

The telldir() function shall obtain the current location associated with the directory stream
specified by dirp.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/telldir.html)

### [tempnam ¶](#tempnam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin#L98)

```
tempnam :: proc "c" (dir: cstring, pfx: cstring) -> cstring ---
```

 

Create a name for a temporary file.

**Returns:**  
an allocated cstring that needs to be freed, nil on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tempnam.html)

### [times ¶](#times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_times.odin#L19)

```
times :: proc "c" (buffer: ^tms) -> libc.clock_t ---
```

 

Get time accounting information.

**Returns:**  
-1 (setting errno) on failure, the elapsed real time, since an arbitrary point in the past

### [truncate ¶](#truncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L353)

```
truncate :: proc "c" (path: cstring, length: off_t) -> result ---
```

 

Truncates a file to the specified length.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/truncate.html)

### [ttyname ¶](#ttyname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L867)

```
ttyname :: proc "c" (fildes: FD) -> cstring ---
```

 

Find the path name of a terminal.

**Returns:**  
nil (setting errno) on failure, the name, which may be invalidated by subsequent calls on success

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ttyname.html)

### [ttyname\_r ¶](#ttyname_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L874)

```
ttyname_r :: proc "c" (fildes: FD, name: [^]u8, namesize: uint) -> Errno ---
```

 

Equivalent to ttyname but name is placed into the buf.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ttyname.html)

### [tzset ¶](#tzset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin#L123)

```
tzset :: proc "c" () -> ! ---
```

 

Uses the value of the environment variable TZ (or default) to set time conversion info.

`daylight` is set to whether daylight saving time conversion should be done.
`timezone` is set to the difference, in seconds, between UTC and local standard time.
`tzname` is set by `tzname[0] = "std"` and `tzname[1] = "dst"`

**Example:**

```
posix.tzset()
fmt.println(posix.tzname)
fmt.println(posix.daylight)
fmt.println(posix.timezone)
```

**Possible Output:**

```
["CET", "CEST"]
true
-3600
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/tzset.html)

### [ulimit ¶](#ulimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/ulimit.odin#L25)

```
ulimit :: proc "c" (i: i32, .. arg: ..i64) -> i64 ---
```

 

Control process limits.

Note that -1 is a valid return value, applications should clear errno, do this call and then
check both -1 and the errno to determine status.

**Returns:**  
-1 (setting errno) on failure.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/ulimit.html)

### [umask ¶](#umask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L145)

```
umask :: proc "c" (cmask: bit_set[Mode_Bits; _mode_t]) -> bit_set[Mode_Bits; _mode_t] ---
```

 

Set and get the file mode creation flags.

Makes the file mode permissions bits in cmask the new default for the process.

**Returns:**  
the previous value

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/umask.html)

### [uname ¶](#uname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_utsname.odin#L38)

```
uname :: proc "c" (uname: ^utsname) -> i32 ---
```

 

Stores information identifying the current system in the given structure.

**Returns:**  
non-negative on success, -1 (setting errno) on failure

NOTE: have a look at `core:sys/info` for similar/better system information.

**Example:**

```
uname: posix.utsname
posix.uname(&uname)
fmt.printfln("%#v", uname)
```

**Possible Output:**

```
utsname{
	sysname = Darwin,
	nodename = Laytans-MacBook-Pro.local,
	release = 23.5.0,
	version = Darwin Kernel Version 23.5.0: Wed May  1 20:16:51 PDT 2024; root:xnu-11331.111.3~1/RELEASE_ARM64_T8103,
	machine = arm64,
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/uname.html)

### [unlink ¶](#unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin#L114)

```
unlink :: proc "c" (path: cstring) -> result ---
```

 

Remove a directory entry.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/unlink.html)

### [unlinkat ¶](#unlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L881)

```
unlinkat :: proc "c" (fd: FD, path: cstring, flag: bit_set[AT_Flag_Bits; i32]) -> result ---
```

 

Equivalent to unlink or rmdir (if flag is .REMOVEDIR) but relative paths are relative to the dir fd.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/unlink.html)

### [unlockpt ¶](#unlockpt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L293)

```
unlockpt :: proc "c" (fildes: FD) -> result ---
```

 

Unlocks the slave pseudo-terminal device associated with the master to which fildes refers.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/unlockpt.html)

### [unsetenv ¶](#unsetenv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin#L313)

```
unsetenv :: proc "c" (name: cstring) -> result ---
```

 

Removes an environment variable from the environment of the calling process.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/unsetenv.html)

### [utime ¶](#utime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/utime.odin#L19)

```
utime :: proc "c" (path: cstring, times: ^utimbuf) -> result ---
```

 

Set file access and modification times.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/utime.html)

### [utimensat ¶](#utimensat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin#L134)

```
utimensat :: proc "c" (fd: FD, path: cstring, times: ^[2]libc.timespec, flag: bit_set[AT_Flag_Bits; i32]) -> result ---
```

 

Equivalent to futimens.
Relative directories are based on fd.
Symlinks may or may not be followed based on the flags.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/futimens.html)

### [utimes ¶](#utimes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin#L45)

```
utimes :: proc "c" (path: cstring, times: ^[2]timeval) -> result ---
```

 

Sets the access and modification times of the file at the given path.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/utimes.html)

### [wait ¶](#wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L22)

```
wait :: proc "c" (stat_loc: ^i32) -> pid_t ---
```

 

Obtains status information pertaining to one of the caller's child processes.

**Returns:**  
-1 (setting errno) on failure or signal on calling process, the pid of the process that caused the return otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/wait.html)

### [waitid ¶](#waitid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L88)

```
waitid :: proc "c" (idtype: idtype_t, id: id_t, infop: ^siginfo_t, options: bit_set[Wait_Flag_Bits; i32]) -> i32 ---
```

 

Obtains status information pertaining to the given idtype\_t and id specifier.

**Returns:**  
0 if WNOHANG and no status available, 0 if child changed state, -1 (setting errno) on failure

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/waitid.html)

### [waitpid ¶](#waitpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin#L79)

```
waitpid :: proc "c" (pid: pid_t, stat_loc: ^i32, options: bit_set[Wait_Flag_Bits; i32]) -> pid_t ---
```

 

Obtains status information pertaining to the given pid specifier.

If pid is -1, status is requested for any child process.
If pid is greater than 0, it specifies the process ID of a single child process.
If pid is 0, it specifies any child process whose process group ID is equal to that of the call.
If pid is < -1, status is requested for any child whose process group ID is the absolute value of pid.

**Returns:**  
-1 (setting errno) on failure or signal on calling process, 0 if NOHANG and status is not available, the pid of the process that caused the return otherwise

**Example:**

```
// The following example demonstrates the use of waitpid(), fork(), and the macros used to
// interpret the status value returned by waitpid() (and wait()). The code segment creates a
// child process which does some unspecified work. Meanwhile the parent loops performing calls
// to waitpid() to monitor the status of the child. The loop terminates when child termination
// is detected.

child_pid := posix.fork(); switch child_pid {
case -1: // `fork` failed.
	panic("fork failed")

case 0:  // This is the child.

	// Do some work...

case:
	for {
		status: i32
		wpid := posix.waitpid(child_pid, &status, { .UNTRACED, .CONTINUED })
		if wpid == -1 {
			panic("waitpid failure")
		}

		switch {
		case posix.WIFEXITED(status):
			fmt.printfln("child exited, status=%v", posix.WEXITSTATUS(status))
		case posix.WIFSIGNALED(status):
			fmt.printfln("child killed (signal %v)", posix.WTERMSIG(status))
		case posix.WIFSTOPPED(status):
			fmt.printfln("child stopped (signal %v", posix.WSTOPSIG(status))
		case posix.WIFCONTINUED(status):
			fmt.println("child continued")
		case:
			// Should never happen.
			fmt.println("unexpected status (%x)", status)
		}

		if posix.WIFEXITED(status) || posix.WIFSIGNALED(status) {
			break
		}
	}
}
```

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/wait.html)

### [wordexp ¶](#wordexp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L20)

```
wordexp :: proc "c" (words: cstring, pwordexp: ^wordexp_t, flags: bit_set[WRDE_Flag_Bits; i32]) -> WRDE_Errno ---
```

 

Perform word expansion.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/wordexp.html)

### [wordfree ¶](#wordfree) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin#L27)

```
wordfree :: proc "c" (pwordexp: ^wordexp_t) ---
```

 

Free the space allocated during word expansion.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/wordexp.html)

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin#L736)

```
write :: proc "c" (fd: FD, buf: [^]u8, buflen: uint) -> int ---
```

 

Write on a file.

**Returns:**  
the amount of bytes written or -1 (setting errno) on failure.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/write.html)

### [writev ¶](#writev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_uio.odin#L31)

```
writev :: proc "c" (fildes: FD, iov: [^]iovec, iovcnt: i32) -> int ---
```

 

Equivalent to write() but takes a vector of inputs.

iovcnt can be 0..=IOV\_MAX in length.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/readv.html)

## Procedure Groups

### [errno ¶](#errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin#L22)

```
errno :: proc{
	get_errno,
	set_errno,
}
```

## `#config` values

### [FD\_SETSIZE ¶](#FD_SETSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin#L69)

```
FD_SETSIZE :: #config(POSIX_FD_SETSIZE, 256 when ODIN_OS == .NetBSD else 1024)
```

 

Maximum number of file descriptors in the fd\_set structure.

## Source Files

* [arpa\_inet.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/arpa_inet.odin)
* [dirent.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dirent.odin)
* [dlfcn.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/dlfcn.odin)
* [errno.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/errno.odin)
* [fcntl.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fcntl.odin)
* [fnmatch.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/fnmatch.odin)
* [glob.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/glob.odin)
* [grp.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/grp.odin)
* [iconv.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/iconv.odin)
* [langinfo.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/langinfo.odin)
* [libgen.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/libgen.odin)
* [limits.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/limits.odin)
* [locale.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/locale.odin)
* [monetary.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/monetary.odin)
* [net\_if.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/net_if.odin)
* [netdb.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netdb.odin)
* [netinet\_in.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_in.odin)
* [netinet\_tcp.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/netinet_tcp.odin)
* [poll.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/poll.odin)
* [posix.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/posix.odin)
* [posix\_unix.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/posix_unix.odin)
* [pthread.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pthread.odin)
* [pwd.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/pwd.odin)
* [sched.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sched.odin)
* [setjmp.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/setjmp.odin)
* [setjmp\_libc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/setjmp_libc.odin)
* [signal.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal.odin)
* [signal\_libc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/signal_libc.odin)
* [spawn.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/spawn.odin)
* [stdio.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio.odin)
* [stdio\_libc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdio_libc.odin)
* [stdlib.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib.odin)
* [stdlib\_libc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/stdlib_libc.odin)
* [string.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/string.odin)
* [string\_libc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/string_libc.odin)
* [sys\_ipc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_ipc.odin)
* [sys\_mman.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_mman.odin)
* [sys\_msg.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_msg.odin)
* [sys\_resource.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_resource.odin)
* [sys\_select.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_select.odin)
* [sys\_sem.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_sem.odin)
* [sys\_shm.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_shm.odin)
* [sys\_socket.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_socket.odin)
* [sys\_stat.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_stat.odin)
* [sys\_statvfs.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_statvfs.odin)
* [sys\_time.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_time.odin)
* [sys\_times.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_times.odin)
* [sys\_uio.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_uio.odin)
* [sys\_un.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_un.odin)
* [sys\_utsname.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_utsname.odin)
* [sys\_wait.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/sys_wait.odin)
* [termios.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/termios.odin)
* [time.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/time.odin)
* [ulimit.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/ulimit.odin)
* [unistd.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd.odin)
* [unistd\_libc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/unistd_libc.odin)
* [utime.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/utime.odin)
* [wordexp.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/posix/wordexp.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.966090700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [AF](#AF)
    + [AT\_Flag\_Bits](#AT_Flag_Bits)
    + [AT\_Flags](#AT_Flags)
    + [Addrinfo\_Flag\_Bits](#Addrinfo_Flag_Bits)
    + [Addrinfo\_Flags](#Addrinfo_Flags)
    + [Any\_Code](#Any_Code)
    + [BUS\_Code](#BUS_Code)
    + [CControl\_Flag\_Bits](#CControl_Flag_Bits)
    + [CControl\_Flags](#CControl_Flags)
    + [CInput\_Flag\_Bits](#CInput_Flag_Bits)
    + [CInput\_Flags](#CInput_Flags)
    + [CLD\_Code](#CLD_Code)
    + [CLocal\_Flag\_Bits](#CLocal_Flag_Bits)
    + [CLocal\_Flags](#CLocal_Flags)
    + [COutput\_Flag\_Bits](#COutput_Flag_Bits)
    + [COutput\_Flags](#COutput_Flags)
    + [CS](#CS)
    + [Cancel\_State](#Cancel_State)
    + [Cancel\_Type](#Cancel_Type)
    + [Clock](#Clock)
    + [Control\_Char](#Control_Char)
    + [DIR](#DIR)
    + [D\_Type](#D_Type)
    + [Detach\_State](#Detach_State)
    + [Errno](#Errno)
    + [FCNTL\_Cmd](#FCNTL_Cmd)
    + [FD](#FD)
    + [FILE](#FILE)
    + [FNM\_Flag\_Bits](#FNM_Flag_Bits)
    + [FNM\_Flags](#FNM_Flags)
    + [FPE\_Code](#FPE_Code)
    + [Glob\_Flag\_Bits](#Glob_Flag_Bits)
    + [Glob\_Flags](#Glob_Flags)
    + [Glob\_Result](#Glob_Result)
    + [ILL\_Code](#ILL_Code)
    + [IPC\_Cmd](#IPC_Cmd)
    + [IPC\_Flag\_Bits](#IPC_Flag_Bits)
    + [IPC\_Flags](#IPC_Flags)
    + [ITimer](#ITimer)
    + [Info\_Errno](#Info_Errno)
    + [Inherit\_Sched](#Inherit_Sched)
    + [Locale\_Category](#Locale_Category)
    + [Lock\_Flag\_Bits](#Lock_Flag_Bits)
    + [Lock\_Flags](#Lock_Flags)
    + [Lock\_Function](#Lock_Function)
    + [Lock\_Type](#Lock_Type)
    + [MAdvice](#MAdvice)
    + [Map\_Flag\_Bits](#Map_Flag_Bits)
    + [Map\_Flags](#Map_Flags)
    + [Mode\_Bits](#Mode_Bits)
    + [Mode\_Flag\_Bits](#Mode_Flag_Bits)
    + [Mode\_Flags](#Mode_Flags)
    + [Msg\_Flag\_Bits](#Msg_Flag_Bits)
    + [Msg\_Flags](#Msg_Flags)
    + [Nameinfo\_Flag\_Bits](#Nameinfo_Flag_Bits)
    + [Nameinfo\_Flags](#Nameinfo_Flags)
    + [O\_Flag\_Bits](#O_Flag_Bits)
    + [O\_Flags](#O_Flags)
    + [PC](#PC)
    + [POLL\_Code](#POLL_Code)
    + [Poll\_Event](#Poll_Event)
    + [Poll\_Event\_Bits](#Poll_Event_Bits)
    + [Prot\_Flag\_Bits](#Prot_Flag_Bits)
    + [Prot\_Flags](#Prot_Flags)
    + [Protocol](#Protocol)
    + [RTLD\_Flag\_Bits](#RTLD_Flag_Bits)
    + [RTLD\_Flags](#RTLD_Flags)
    + [Resource](#Resource)
    + [SA\_Flags](#SA_Flags)
    + [SA\_Flags\_Bits](#SA_Flags_Bits)
    + [SC](#SC)
    + [SEGV\_Code](#SEGV_Code)
    + [SHM\_Flag\_Bits](#SHM_Flag_Bits)
    + [SHM\_Flags](#SHM_Flags)
    + [SS\_Flag\_Bits](#SS_Flag_Bits)
    + [SS\_Flags](#SS_Flags)
    + [Sched\_Policy](#Sched_Policy)
    + [Sem\_Cmd](#Sem_Cmd)
    + [Shut](#Shut)
    + [Sig](#Sig)
    + [Signal](#Signal)
    + [Sock](#Sock)
    + [Sock\_Option](#Sock_Option)
    + [Symbol\_Table](#Symbol_Table)
    + [Sync\_Flags](#Sync_Flags)
    + [Sync\_Flags\_Bits](#Sync_Flags_Bits)
    + [TC\_Action](#TC_Action)
    + [TC\_Optional\_Action](#TC_Optional_Action)
    + [TC\_Queue](#TC_Queue)
    + [TRAP\_Code](#TRAP_Code)
    + [Thread\_Scope](#Thread_Scope)
    + [Ulimit\_Cmd](#Ulimit_Cmd)
    + [VFS\_Flag\_Bits](#VFS_Flag_Bits)
    + [VFS\_Flags](#VFS_Flags)
    + [WRDE\_Errno](#WRDE_Errno)
    + [WRDE\_Flag\_Bits](#WRDE_Flag_Bits)
    + [WRDE\_Flags](#WRDE_Flags)
    + [Wait\_Flag\_Bits](#Wait_Flag_Bits)
    + [Wait\_Flags](#Wait_Flags)
    + [Whence](#Whence)
    + [Which\_Prio](#Which_Prio)
    + [Which\_Usage](#Which_Usage)
    + [addrinfo](#addrinfo)
    + [blkcnt\_t](#blkcnt_t)
    + [blksize\_t](#blksize_t)
    + [cc\_t](#cc_t)
    + [clock\_t](#clock_t)
    + [clockid\_t](#clockid_t)
    + [cmsghdr](#cmsghdr)
    + [dev\_t](#dev_t)
    + [dir\_loc](#dir_loc)
    + [dirent](#dirent)
    + [div\_t](#div_t)
    + [fd\_set](#fd_set)
    + [flock](#flock)
    + [fpos\_t](#fpos_t)
    + [fsblkcnt\_t](#fsblkcnt_t)
    + [gid\_t](#gid_t)
    + [glob\_t](#glob_t)
    + [group](#group)
    + [hostent](#hostent)
    + [iconv\_t](#iconv_t)
    + [id\_t](#id_t)
    + [idtype\_t](#idtype_t)
    + [if\_nameindex\_t](#if_nameindex_t)
    + [in6\_addr](#in6_addr)
    + [in\_addr](#in_addr)
    + [in\_addr\_t](#in_addr_t)
    + [in\_port\_t](#in_port_t)
    + [ino\_t](#ino_t)
    + [iovec](#iovec)
    + [ipc\_perm](#ipc_perm)
    + [ipv6\_mreq](#ipv6_mreq)
    + [itimerval](#itimerval)
    + [jmp\_buf](#jmp_buf)
    + [key\_t](#key_t)
    + [lconv](#lconv)
    + [ldiv\_t](#ldiv_t)
    + [linger](#linger)
    + [lldiv\_t](#lldiv_t)
    + [mode\_t](#mode_t)
    + [msghdr](#msghdr)
    + [msglen\_t](#msglen_t)
    + [msgqnum\_t](#msgqnum_t)
    + [msqid\_ds](#msqid_ds)
    + [netent](#netent)
    + [nfds\_t](#nfds_t)
    + [nl\_item](#nl_item)
    + [nl\_item\_t](#nl_item_t)
    + [nlink\_t](#nlink_t)
    + [off\_t](#off_t)
    + [passwd](#passwd)
    + [pid\_t](#pid_t)
    + [pollfd](#pollfd)
    + [protoent](#protoent)
    + [pthread\_attr\_t](#pthread_attr_t)
    + [pthread\_cond\_t](#pthread_cond_t)
    + [pthread\_key\_t](#pthread_key_t)
    + [pthread\_mutex\_t](#pthread_mutex_t)
    + [pthread\_t](#pthread_t)
    + [pton\_result](#pton_result)
    + [result](#result)
    + [rlim\_t](#rlim_t)
    + [rlimit](#rlimit)
    + [rusage](#rusage)
    + [sa\_family\_t](#sa_family_t)
    + [sched\_param](#sched_param)
    + [sembuf](#sembuf)
    + [semid\_ds](#semid_ds)
    + [semun](#semun)
    + [servent](#servent)
    + [shmatt\_t](#shmatt_t)
    + [shmid\_ds](#shmid_ds)
    + [sigaction\_t](#sigaction_t)
    + [siginfo\_t](#siginfo_t)
    + [sigjmp\_buf](#sigjmp_buf)
    + [sigset\_t](#sigset_t)
    + [sigval](#sigval)
    + [sockaddr](#sockaddr)
    + [sockaddr\_in](#sockaddr_in)
    + [sockaddr\_in6](#sockaddr_in6)
    + [sockaddr\_storage](#sockaddr_storage)
    + [sockaddr\_un](#sockaddr_un)
    + [socklen\_t](#socklen_t)
    + [speed\_t](#speed_t)
    + [stack\_t](#stack_t)
    + [stat\_t](#stat_t)
    + [statvfs\_t](#statvfs_t)
    + [suseconds\_t](#suseconds_t)
    + [tcflag\_t](#tcflag_t)
    + [termios](#termios)
    + [time\_t](#time_t)
    + [timespec](#timespec)
    + [timeval](#timeval)
    + [tm](#tm)
    + [tms](#tms)
    + [uid\_t](#uid_t)
    + [utimbuf](#utimbuf)
    + [utsname](#utsname)
    + [wordexp\_t](#wordexp_t)
  * [Constants](#pkg-Constants)
    + [ABDAY\_1](#ABDAY_1)
    + [ABDAY\_2](#ABDAY_2)
    + [ABDAY\_3](#ABDAY_3)
    + [ABDAY\_4](#ABDAY_4)
    + [ABDAY\_5](#ABDAY_5)
    + [ABDAY\_6](#ABDAY_6)
    + [ABDAY\_7](#ABDAY_7)
    + [ABMON\_1](#ABMON_1)
    + [ABMON\_10](#ABMON_10)
    + [ABMON\_11](#ABMON_11)
    + [ABMON\_12](#ABMON_12)
    + [ABMON\_2](#ABMON_2)
    + [ABMON\_3](#ABMON_3)
    + [ABMON\_4](#ABMON_4)
    + [ABMON\_5](#ABMON_5)
    + [ABMON\_6](#ABMON_6)
    + [ABMON\_7](#ABMON_7)
    + [ABMON\_8](#ABMON_8)
    + [ABMON\_9](#ABMON_9)
    + [AF\_INET](#AF_INET)
    + [AF\_INET6](#AF_INET6)
    + [AF\_UNIX](#AF_UNIX)
    + [AF\_UNSPEC](#AF_UNSPEC)
    + [AI\_ADDRCONFIG](#AI_ADDRCONFIG)
    + [AI\_ALL](#AI_ALL)
    + [AI\_CANONNAME](#AI_CANONNAME)
    + [AI\_NUMERICHOST](#AI_NUMERICHOST)
    + [AI\_NUMERICSERV](#AI_NUMERICSERV)
    + [AI\_PASSIVE](#AI_PASSIVE)
    + [AI\_V4MAPPED](#AI_V4MAPPED)
    + [ALT\_DIGITS](#ALT_DIGITS)
    + [AM\_STR](#AM_STR)
    + [ARG\_MAX](#ARG_MAX)
    + [AT\_EACCESS](#AT_EACCESS)
    + [AT\_FDCWD](#AT_FDCWD)
    + [AT\_REMOVEDIR](#AT_REMOVEDIR)
    + [AT\_SYMLINK\_FOLLOW](#AT_SYMLINK_FOLLOW)
    + [AT\_SYMLINK\_NOFOLLOW](#AT_SYMLINK_NOFOLLOW)
    + [B0](#B0)
    + [B110](#B110)
    + [B1200](#B1200)
    + [B134](#B134)
    + [B150](#B150)
    + [B1800](#B1800)
    + [B19200](#B19200)
    + [B200](#B200)
    + [B2400](#B2400)
    + [B300](#B300)
    + [B38400](#B38400)
    + [B4800](#B4800)
    + [B50](#B50)
    + [B600](#B600)
    + [B75](#B75)
    + [B9600](#B9600)
    + [BC\_BASE\_MAX](#BC_BASE_MAX)
    + [BC\_DIM\_MAX](#BC_DIM_MAX)
    + [BC\_SCALE\_MAX](#BC_SCALE_MAX)
    + [BC\_STRING\_MAX](#BC_STRING_MAX)
    + [BRKINT](#BRKINT)
    + [BS0](#BS0)
    + [BS1](#BS1)
    + [BSDLY](#BSDLY)
    + [BUFSIZ](#BUFSIZ)
    + [BUS\_ADRALN](#BUS_ADRALN)
    + [BUS\_ADRERR](#BUS_ADRERR)
    + [BUS\_OBJERR](#BUS_OBJERR)
    + [CHARCLASS\_NAME\_MAX](#CHARCLASS_NAME_MAX)
    + [CHILD\_MAX](#CHILD_MAX)
    + [CLD\_CONTINUED](#CLD_CONTINUED)
    + [CLD\_DUMPED](#CLD_DUMPED)
    + [CLD\_EXITED](#CLD_EXITED)
    + [CLD\_KILLED](#CLD_KILLED)
    + [CLD\_STOPPED](#CLD_STOPPED)
    + [CLD\_TRAPPED](#CLD_TRAPPED)
    + [CLOCAL](#CLOCAL)
    + [CLOCKS\_PER\_SEC](#CLOCKS_PER_SEC)
    + [CLOCK\_MONOTONIC](#CLOCK_MONOTONIC)
    + [CLOCK\_PROCESS\_CPUTIME\_ID](#CLOCK_PROCESS_CPUTIME_ID)
    + [CLOCK\_REALTIME](#CLOCK_REALTIME)
    + [CLOCK\_THREAD\_CPUTIME\_ID](#CLOCK_THREAD_CPUTIME_ID)
    + [CODESET](#CODESET)
    + [COLL\_WEIGHTS\_MAX](#COLL_WEIGHTS_MAX)
    + [CR0](#CR0)
    + [CR1](#CR1)
    + [CR2](#CR2)
    + [CR3](#CR3)
    + [CRDLY](#CRDLY)
    + [CREAD](#CREAD)
    + [CRNCYSTR](#CRNCYSTR)
    + [CS5](#CS5)
    + [CS6](#CS6)
    + [CS7](#CS7)
    + [CS8](#CS8)
    + [CSIZE](#CSIZE)
    + [CSTOPB](#CSTOPB)
    + [DAY\_1](#DAY_1)
    + [DAY\_2](#DAY_2)
    + [DAY\_3](#DAY_3)
    + [DAY\_4](#DAY_4)
    + [DAY\_5](#DAY_5)
    + [DAY\_6](#DAY_6)
    + [DAY\_7](#DAY_7)
    + [D\_FMT](#D_FMT)
    + [D\_T\_FMT](#D_T_FMT)
    + [E2BIG](#E2BIG)
    + [EACCES](#EACCES)
    + [EADDRINUSE](#EADDRINUSE)
    + [EADDRNOTAVAIL](#EADDRNOTAVAIL)
    + [EAFNOSUPPORT](#EAFNOSUPPORT)
    + [EAGAIN](#EAGAIN)
    + [EAI\_AGAIN](#EAI_AGAIN)
    + [EAI\_BADFLAGS](#EAI_BADFLAGS)
    + [EAI\_FAIL](#EAI_FAIL)
    + [EAI\_FAMILY](#EAI_FAMILY)
    + [EAI\_MEMORY](#EAI_MEMORY)
    + [EAI\_NONAME](#EAI_NONAME)
    + [EAI\_OVERFLOW](#EAI_OVERFLOW)
    + [EAI\_SERVICE](#EAI_SERVICE)
    + [EAI\_SOCKTYPE](#EAI_SOCKTYPE)
    + [EAI\_SYSTEM](#EAI_SYSTEM)
    + [EALREADY](#EALREADY)
    + [EBADF](#EBADF)
    + [EBADMSG](#EBADMSG)
    + [EBUSY](#EBUSY)
    + [ECANCELED](#ECANCELED)
    + [ECHILD](#ECHILD)
    + [ECHO](#ECHO)
    + [ECHOE](#ECHOE)
    + [ECHOK](#ECHOK)
    + [ECHONL](#ECHONL)
    + [ECONNABORTED](#ECONNABORTED)
    + [ECONNREFUSED](#ECONNREFUSED)
    + [ECONNRESET](#ECONNRESET)
    + [EDEADLK](#EDEADLK)
    + [EDESTADDRREQ](#EDESTADDRREQ)
    + [EDOM](#EDOM)
    + [EDQUOT](#EDQUOT)
    + [EEXIST](#EEXIST)
    + [EFAULT](#EFAULT)
    + [EFBIG](#EFBIG)
    + [EHOSTUNREACH](#EHOSTUNREACH)
    + [EIDRM](#EIDRM)
    + [EILSEQ](#EILSEQ)
    + [EINPROGRESS](#EINPROGRESS)
    + [EINTR](#EINTR)
    + [EINVAL](#EINVAL)
    + [EIO](#EIO)
    + [EISCONN](#EISCONN)
    + [EISDIR](#EISDIR)
    + [ELOOP](#ELOOP)
    + [EMFILE](#EMFILE)
    + [EMLINK](#EMLINK)
    + [EMSGSIZE](#EMSGSIZE)
    + [EMULTIHOP](#EMULTIHOP)
    + [ENAMETOOLONG](#ENAMETOOLONG)
    + [ENETDOWN](#ENETDOWN)
    + [ENETRESET](#ENETRESET)
    + [ENETUNREACH](#ENETUNREACH)
    + [ENFILE](#ENFILE)
    + [ENOBUFS](#ENOBUFS)
    + [ENODATA](#ENODATA)
    + [ENODEV](#ENODEV)
    + [ENOENT](#ENOENT)
    + [ENOEXEC](#ENOEXEC)
    + [ENOLCK](#ENOLCK)
    + [ENOLINK](#ENOLINK)
    + [ENOMEM](#ENOMEM)
    + [ENOMSG](#ENOMSG)
    + [ENOPROTOOPT](#ENOPROTOOPT)
    + [ENOSPC](#ENOSPC)
    + [ENOSR](#ENOSR)
    + [ENOSTR](#ENOSTR)
    + [ENOSYS](#ENOSYS)
    + [ENOTCONN](#ENOTCONN)
    + [ENOTDIR](#ENOTDIR)
    + [ENOTEMPTY](#ENOTEMPTY)
    + [ENOTRECOVERABLE](#ENOTRECOVERABLE)
    + [ENOTSOCK](#ENOTSOCK)
    + [ENOTSUP](#ENOTSUP)
    + [ENOTTY](#ENOTTY)
    + [ENXIO](#ENXIO)
    + [EOF](#EOF)
    + [EOPNOTSUPP](#EOPNOTSUPP)
    + [EOVERFLOW](#EOVERFLOW)
    + [EOWNERDEAD](#EOWNERDEAD)
    + [EPERM](#EPERM)
    + [EPIPE](#EPIPE)
    + [EPROTO](#EPROTO)
    + [EPROTONOSUPPORT](#EPROTONOSUPPORT)
    + [EPROTOTYPE](#EPROTOTYPE)
    + [ERA](#ERA)
    + [ERANGE](#ERANGE)
    + [ERA\_D\_FMT](#ERA_D_FMT)
    + [ERA\_D\_T\_FMT](#ERA_D_T_FMT)
    + [ERA\_T\_FMT](#ERA_T_FMT)
    + [EROFS](#EROFS)
    + [ESPIPE](#ESPIPE)
    + [ESRCH](#ESRCH)
    + [ESTALE](#ESTALE)
    + [ETIME](#ETIME)
    + [ETIMEDOUT](#ETIMEDOUT)
    + [ETXTBSY](#ETXTBSY)
    + [EWOULDBLOCK](#EWOULDBLOCK)
    + [EXDEV](#EXDEV)
    + [EXIT\_FAILURE](#EXIT_FAILURE)
    + [EXIT\_SUCCESS](#EXIT_SUCCESS)
    + [EXPR\_NEST\_MAX](#EXPR_NEST_MAX)
    + [FD\_CLOEXEC](#FD_CLOEXEC)
    + [FD\_SETSIZE](#FD_SETSIZE)
    + [FF0](#FF0)
    + [FF1](#FF1)
    + [FFDLY](#FFDLY)
    + [FILENAME\_MAX](#FILENAME_MAX)
    + [FNM\_NOESCAPE](#FNM_NOESCAPE)
    + [FNM\_NOMATCH](#FNM_NOMATCH)
    + [FNM\_PATHNAME](#FNM_PATHNAME)
    + [FNM\_PERIOD](#FNM_PERIOD)
    + [FOPEN\_MAX](#FOPEN_MAX)
    + [FPE\_FLTDIV](#FPE_FLTDIV)
    + [FPE\_FLTINV](#FPE_FLTINV)
    + [FPE\_FLTOVF](#FPE_FLTOVF)
    + [FPE\_FLTRES](#FPE_FLTRES)
    + [FPE\_FLTSUB](#FPE_FLTSUB)
    + [FPE\_FLTUND](#FPE_FLTUND)
    + [FPE\_INTDIV](#FPE_INTDIV)
    + [FPE\_INTOVF](#FPE_INTOVF)
    + [F\_DUPFD](#F_DUPFD)
    + [F\_DUPFD\_CLOEXEC](#F_DUPFD_CLOEXEC)
    + [F\_GETFD](#F_GETFD)
    + [F\_GETFL](#F_GETFL)
    + [F\_GETLK](#F_GETLK)
    + [F\_GETOWN](#F_GETOWN)
    + [F\_LOCK](#F_LOCK)
    + [F\_OK](#F_OK)
    + [F\_RDLCK](#F_RDLCK)
    + [F\_SETFD](#F_SETFD)
    + [F\_SETFL](#F_SETFL)
    + [F\_SETLK](#F_SETLK)
    + [F\_SETLKW](#F_SETLKW)
    + [F\_SETOWN](#F_SETOWN)
    + [F\_TEST](#F_TEST)
    + [F\_TLOCK](#F_TLOCK)
    + [F\_ULOCK](#F_ULOCK)
    + [F\_UNLCK](#F_UNLCK)
    + [F\_WRLCK](#F_WRLCK)
    + [GETALL](#GETALL)
    + [GETNCNT](#GETNCNT)
    + [GETPID](#GETPID)
    + [GETVAL](#GETVAL)
    + [GETZCNT](#GETZCNT)
    + [GLOB\_ABORTED](#GLOB_ABORTED)
    + [GLOB\_APPEND](#GLOB_APPEND)
    + [GLOB\_DOOFFS](#GLOB_DOOFFS)
    + [GLOB\_ERR](#GLOB_ERR)
    + [GLOB\_MARK](#GLOB_MARK)
    + [GLOB\_NOCHECK](#GLOB_NOCHECK)
    + [GLOB\_NOESCAPE](#GLOB_NOESCAPE)
    + [GLOB\_NOMATCH](#GLOB_NOMATCH)
    + [GLOB\_NOSORT](#GLOB_NOSORT)
    + [GLOB\_NOSPACE](#GLOB_NOSPACE)
    + [HUPCL](#HUPCL)
    + [ICANON](#ICANON)
    + [ICRNL](#ICRNL)
    + [IEXTEN](#IEXTEN)
    + [IF\_NAMESIZE](#IF_NAMESIZE)
    + [IGNBRK](#IGNBRK)
    + [IGNCR](#IGNCR)
    + [IGNPAR](#IGNPAR)
    + [ILL\_BADSTK](#ILL_BADSTK)
    + [ILL\_COPROC](#ILL_COPROC)
    + [ILL\_ILLADR](#ILL_ILLADR)
    + [ILL\_ILLOPC](#ILL_ILLOPC)
    + [ILL\_ILLOPN](#ILL_ILLOPN)
    + [ILL\_ILLTRP](#ILL_ILLTRP)
    + [ILL\_PRVOPC](#ILL_PRVOPC)
    + [ILL\_PRVREG](#ILL_PRVREG)
    + [INADDR\_ANY](#INADDR_ANY)
    + [INADDR\_BROADCAST](#INADDR_BROADCAST)
    + [INET6\_ADDRSTRLEN](#INET6_ADDRSTRLEN)
    + [INET\_ADDRSTRLEN](#INET_ADDRSTRLEN)
    + [INLCR](#INLCR)
    + [INPCK](#INPCK)
    + [IOV\_MAX](#IOV_MAX)
    + [IPC\_CREAT](#IPC_CREAT)
    + [IPC\_EXCL](#IPC_EXCL)
    + [IPC\_NOWAIT](#IPC_NOWAIT)
    + [IPC\_PRIVATE](#IPC_PRIVATE)
    + [IPC\_RMID](#IPC_RMID)
    + [IPC\_SET](#IPC_SET)
    + [IPC\_STAT](#IPC_STAT)
    + [IPPORT\_RESERVED](#IPPORT_RESERVED)
    + [IPPROTO\_ICMP](#IPPROTO_ICMP)
    + [IPPROTO\_IP](#IPPROTO_IP)
    + [IPPROTO\_IPV6](#IPPROTO_IPV6)
    + [IPPROTO\_RAW](#IPPROTO_RAW)
    + [IPPROTO\_TCP](#IPPROTO_TCP)
    + [IPPROTO\_UDP](#IPPROTO_UDP)
    + [IPV6\_JOIN\_GROUP](#IPV6_JOIN_GROUP)
    + [IPV6\_LEAVE\_GROUP](#IPV6_LEAVE_GROUP)
    + [IPV6\_MULTICAST\_HOPS](#IPV6_MULTICAST_HOPS)
    + [IPV6\_MULTICAST\_IF](#IPV6_MULTICAST_IF)
    + [IPV6\_MULTICAST\_LOOP](#IPV6_MULTICAST_LOOP)
    + [IPV6\_UNICAST\_HOPS](#IPV6_UNICAST_HOPS)
    + [IPV6\_V6ONLY](#IPV6_V6ONLY)
    + [ISIG](#ISIG)
    + [ISTRIP](#ISTRIP)
    + [IS\_SUPPORTED](#IS_SUPPORTED)
    + [ITIMER\_PROF](#ITIMER_PROF)
    + [ITIMER\_REAL](#ITIMER_REAL)
    + [ITIMER\_VIRTUAL](#ITIMER_VIRTUAL)
    + [IXANY](#IXANY)
    + [IXOFF](#IXOFF)
    + [IXON](#IXON)
    + [LINE\_MAX](#LINE_MAX)
    + [LINK\_MAX](#LINK_MAX)
    + [LPSELECT](#LPSELECT)
    + [LSELECT](#LSELECT)
    + [L\_ctermid](#L_ctermid)
    + [L\_tmpnam](#L_tmpnam)
    + [MAP\_ANONYMOUS](#MAP_ANONYMOUS)
    + [MAP\_FAILED](#MAP_FAILED)
    + [MAP\_FIXED](#MAP_FIXED)
    + [MAP\_PRIVATE](#MAP_PRIVATE)
    + [MAP\_SHARED](#MAP_SHARED)
    + [MAX\_CANON](#MAX_CANON)
    + [MAX\_INPUT](#MAX_INPUT)
    + [MCL\_CURRENT](#MCL_CURRENT)
    + [MCL\_FUTURE](#MCL_FUTURE)
    + [MINSIGSTKSZ](#MINSIGSTKSZ)
    + [MON\_1](#MON_1)
    + [MON\_10](#MON_10)
    + [MON\_11](#MON_11)
    + [MON\_12](#MON_12)
    + [MON\_2](#MON_2)
    + [MON\_3](#MON_3)
    + [MON\_4](#MON_4)
    + [MON\_5](#MON_5)
    + [MON\_6](#MON_6)
    + [MON\_7](#MON_7)
    + [MON\_8](#MON_8)
    + [MON\_9](#MON_9)
    + [MSG\_CTRUNC](#MSG_CTRUNC)
    + [MSG\_DONTROUTE](#MSG_DONTROUTE)
    + [MSG\_EOR](#MSG_EOR)
    + [MSG\_NOERROR](#MSG_NOERROR)
    + [MSG\_NOSIGNAL](#MSG_NOSIGNAL)
    + [MSG\_OOB](#MSG_OOB)
    + [MSG\_PEEK](#MSG_PEEK)
    + [MSG\_TRUNC](#MSG_TRUNC)
    + [MSG\_WAITALL](#MSG_WAITALL)
    + [MS\_ASYNC](#MS_ASYNC)
    + [MS\_INVALIDATE](#MS_INVALIDATE)
    + [MS\_SYNC](#MS_SYNC)
    + [NAME\_MAX](#NAME_MAX)
    + [NCCS](#NCCS)
    + [NGROUPS\_MAX](#NGROUPS_MAX)
    + [NI\_DGRAM](#NI_DGRAM)
    + [NI\_NAMEREQD](#NI_NAMEREQD)
    + [NI\_NOFQDN](#NI_NOFQDN)
    + [NI\_NUMERICHOST](#NI_NUMERICHOST)
    + [NI\_NUMERICSCOPE](#NI_NUMERICSCOPE)
    + [NI\_NUMERICSERV](#NI_NUMERICSERV)
    + [NL0](#NL0)
    + [NL1](#NL1)
    + [NLDLY](#NLDLY)
    + [NL\_ARGMAX](#NL_ARGMAX)
    + [NL\_LANGMAX](#NL_LANGMAX)
    + [NL\_MSGMAX](#NL_MSGMAX)
    + [NL\_SETMAX](#NL_SETMAX)
    + [NL\_TEXTMAX](#NL_TEXTMAX)
    + [NOEXPR](#NOEXPR)
    + [NOFLSH](#NOFLSH)
    + [NZERO](#NZERO)
    + [OCRNL](#OCRNL)
    + [OFDEL](#OFDEL)
    + [OFILL](#OFILL)
    + [ONLCR](#ONLCR)
    + [ONLRET](#ONLRET)
    + [ONOCR](#ONOCR)
    + [OPOST](#OPOST)
    + [O\_ACCMODE](#O_ACCMODE)
    + [O\_APPEND](#O_APPEND)
    + [O\_CLOEXEC](#O_CLOEXEC)
    + [O\_CREAT](#O_CREAT)
    + [O\_DIRECTORY](#O_DIRECTORY)
    + [O\_DSYNC](#O_DSYNC)
    + [O\_EXCL](#O_EXCL)
    + [O\_EXEC](#O_EXEC)
    + [O\_NOCTTY](#O_NOCTTY)
    + [O\_NOFOLLOW](#O_NOFOLLOW)
    + [O\_NONBLOCK](#O_NONBLOCK)
    + [O\_RDONLY](#O_RDONLY)
    + [O\_RDWR](#O_RDWR)
    + [O\_RSYNC](#O_RSYNC)
    + [O\_SEARCH](#O_SEARCH)
    + [O\_SYNC](#O_SYNC)
    + [O\_TRUNC](#O_TRUNC)
    + [O\_TTY\_INIT](#O_TTY_INIT)
    + [O\_WRONLY](#O_WRONLY)
    + [PAGESIZE](#PAGESIZE)
    + [PAGE\_SIZE](#PAGE_SIZE)
    + [PARENB](#PARENB)
    + [PARMRK](#PARMRK)
    + [PARODD](#PARODD)
    + [PATH\_MAX](#PATH_MAX)
    + [PIPE\_BUF](#PIPE_BUF)
    + [PM\_STR](#PM_STR)
    + [POLLERR](#POLLERR)
    + [POLLHUP](#POLLHUP)
    + [POLLIN](#POLLIN)
    + [POLLNVAL](#POLLNVAL)
    + [POLLOUT](#POLLOUT)
    + [POLLPRI](#POLLPRI)
    + [POLLRDBAND](#POLLRDBAND)
    + [POLLRDNORM](#POLLRDNORM)
    + [POLLWRBAND](#POLLWRBAND)
    + [POLLWRNORM](#POLLWRNORM)
    + [POLL\_ERR](#POLL_ERR)
    + [POLL\_HUP](#POLL_HUP)
    + [POLL\_IN](#POLL_IN)
    + [POLL\_MSG](#POLL_MSG)
    + [POLL\_OUT](#POLL_OUT)
    + [POLL\_PRI](#POLL_PRI)
    + [POSIX\_MADV\_DONTNEED](#POSIX_MADV_DONTNEED)
    + [POSIX\_MADV\_NORMAL](#POSIX_MADV_NORMAL)
    + [POSIX\_MADV\_RANDOM](#POSIX_MADV_RANDOM)
    + [POSIX\_MADV\_SEQUENTIAL](#POSIX_MADV_SEQUENTIAL)
    + [POSIX\_MADV\_WILLNEED](#POSIX_MADV_WILLNEED)
    + [PRIO\_PGRP](#PRIO_PGRP)
    + [PRIO\_PROCESS](#PRIO_PROCESS)
    + [PRIO\_USER](#PRIO_USER)
    + [PROT\_EXEC](#PROT_EXEC)
    + [PROT\_NONE](#PROT_NONE)
    + [PROT\_READ](#PROT_READ)
    + [PROT\_WRITE](#PROT_WRITE)
    + [PTHREAD\_CANCELED](#PTHREAD_CANCELED)
    + [PTHREAD\_CANCEL\_ASYNCHRONOUS](#PTHREAD_CANCEL_ASYNCHRONOUS)
    + [PTHREAD\_CANCEL\_DEFERRED](#PTHREAD_CANCEL_DEFERRED)
    + [PTHREAD\_CANCEL\_DISABLE](#PTHREAD_CANCEL_DISABLE)
    + [PTHREAD\_CANCEL\_ENABLE](#PTHREAD_CANCEL_ENABLE)
    + [PTHREAD\_CREATE\_DETACHED](#PTHREAD_CREATE_DETACHED)
    + [PTHREAD\_CREATE\_JOINABLE](#PTHREAD_CREATE_JOINABLE)
    + [PTHREAD\_DESTRUCTOR\_ITERATIONS](#PTHREAD_DESTRUCTOR_ITERATIONS)
    + [PTHREAD\_EXPLICIT\_SCHED](#PTHREAD_EXPLICIT_SCHED)
    + [PTHREAD\_INHERIT\_SCHED](#PTHREAD_INHERIT_SCHED)
    + [PTHREAD\_KEYS\_MAX](#PTHREAD_KEYS_MAX)
    + [PTHREAD\_PRIO\_INHERIT](#PTHREAD_PRIO_INHERIT)
    + [PTHREAD\_PRIO\_NONE](#PTHREAD_PRIO_NONE)
    + [PTHREAD\_PRIO\_PROTECT](#PTHREAD_PRIO_PROTECT)
    + [PTHREAD\_PROCESS\_PRIVATE](#PTHREAD_PROCESS_PRIVATE)
    + [PTHREAD\_PROCESS\_SHARED](#PTHREAD_PROCESS_SHARED)
    + [PTHREAD\_SCOPE\_PROCESS](#PTHREAD_SCOPE_PROCESS)
    + [PTHREAD\_SCOPE\_SYSTEM](#PTHREAD_SCOPE_SYSTEM)
    + [PTHREAD\_STACK\_MIN](#PTHREAD_STACK_MIN)
    + [P\_tmpdir](#P_tmpdir)
    + [RADIXCHAR](#RADIXCHAR)
    + [RAND\_MAX](#RAND_MAX)
    + [RE\_DUP\_MAX](#RE_DUP_MAX)
    + [RLIMIT\_AS](#RLIMIT_AS)
    + [RLIMIT\_CORE](#RLIMIT_CORE)
    + [RLIMIT\_CPU](#RLIMIT_CPU)
    + [RLIMIT\_DATA](#RLIMIT_DATA)
    + [RLIMIT\_FSIZE](#RLIMIT_FSIZE)
    + [RLIMIT\_NOFILE](#RLIMIT_NOFILE)
    + [RLIMIT\_STACK](#RLIMIT_STACK)
    + [RLIM\_INFINITY](#RLIM_INFINITY)
    + [RLIM\_SAVED\_CUR](#RLIM_SAVED_CUR)
    + [RLIM\_SAVED\_MAX](#RLIM_SAVED_MAX)
    + [RTLD\_GLOBAL](#RTLD_GLOBAL)
    + [RTLD\_LAZY](#RTLD_LAZY)
    + [RTLD\_LOCAL](#RTLD_LOCAL)
    + [RTLD\_NOW](#RTLD_NOW)
    + [RUSAGE\_CHILDREN](#RUSAGE_CHILDREN)
    + [RUSAGE\_SELF](#RUSAGE_SELF)
    + [R\_OK](#R_OK)
    + [SA\_NOCLDSTOP](#SA_NOCLDSTOP)
    + [SA\_NOCLDWAIT](#SA_NOCLDWAIT)
    + [SA\_NODEFER](#SA_NODEFER)
    + [SA\_ONSTACK](#SA_ONSTACK)
    + [SA\_RESETHAND](#SA_RESETHAND)
    + [SA\_RESTART](#SA_RESTART)
    + [SA\_SIGINFO](#SA_SIGINFO)
    + [SCHED\_FIFO](#SCHED_FIFO)
    + [SCHED\_OTHER](#SCHED_OTHER)
    + [SCHED\_RR](#SCHED_RR)
    + [SCM\_RIGHTS](#SCM_RIGHTS)
    + [SEEK\_CUR](#SEEK_CUR)
    + [SEEK\_END](#SEEK_END)
    + [SEEK\_SET](#SEEK_SET)
    + [SEGV\_ACCERR](#SEGV_ACCERR)
    + [SEGV\_MAPERR](#SEGV_MAPERR)
    + [SEM\_UNDO](#SEM_UNDO)
    + [SETALL](#SETALL)
    + [SETVAL](#SETVAL)
    + [SHMLBA](#SHMLBA)
    + [SHM\_RDONLY](#SHM_RDONLY)
    + [SHM\_RND](#SHM_RND)
    + [SHUT\_RD](#SHUT_RD)
    + [SHUT\_RDWR](#SHUT_RDWR)
    + [SHUT\_WR](#SHUT_WR)
    + [SIGABRT](#SIGABRT)
    + [SIGALRM](#SIGALRM)
    + [SIGBUS](#SIGBUS)
    + [SIGCHLD](#SIGCHLD)
    + [SIGCONT](#SIGCONT)
    + [SIGFPE](#SIGFPE)
    + [SIGHUP](#SIGHUP)
    + [SIGILL](#SIGILL)
    + [SIGINT](#SIGINT)
    + [SIGKILL](#SIGKILL)
    + [SIGPIPE](#SIGPIPE)
    + [SIGPOLL](#SIGPOLL)
    + [SIGPROF](#SIGPROF)
    + [SIGQUIT](#SIGQUIT)
    + [SIGSEGV](#SIGSEGV)
    + [SIGSTKSZ](#SIGSTKSZ)
    + [SIGSTOP](#SIGSTOP)
    + [SIGSYS](#SIGSYS)
    + [SIGTERM](#SIGTERM)
    + [SIGTRAP](#SIGTRAP)
    + [SIGTSTP](#SIGTSTP)
    + [SIGTTIN](#SIGTTIN)
    + [SIGTTOU](#SIGTTOU)
    + [SIGURG](#SIGURG)
    + [SIGUSR1](#SIGUSR1)
    + [SIGUSR2](#SIGUSR2)
    + [SIGVTALRM](#SIGVTALRM)
    + [SIGWINCH](#SIGWINCH)
    + [SIGXCPU](#SIGXCPU)
    + [SIGXFSZ](#SIGXFSZ)
    + [SIG\_BLOCK](#SIG_BLOCK)
    + [SIG\_DFL](#SIG_DFL)
    + [SIG\_ERR](#SIG_ERR)
    + [SIG\_HOLD](#SIG_HOLD)
    + [SIG\_IGN](#SIG_IGN)
    + [SIG\_SETMASK](#SIG_SETMASK)
    + [SIG\_UNBLOCK](#SIG_UNBLOCK)
    + [SI\_ASYNCIO](#SI_ASYNCIO)
    + [SI\_MESGQ](#SI_MESGQ)
    + [SI\_QUEUE](#SI_QUEUE)
    + [SI\_TIMER](#SI_TIMER)
    + [SI\_USER](#SI_USER)
    + [SOCK\_DGRAM](#SOCK_DGRAM)
    + [SOCK\_RAW](#SOCK_RAW)
    + [SOCK\_SEQPACKET](#SOCK_SEQPACKET)
    + [SOCK\_STREAM](#SOCK_STREAM)
    + [SOL\_SOCKET](#SOL_SOCKET)
    + [SOMAXCONN](#SOMAXCONN)
    + [SO\_ACCEPTCONN](#SO_ACCEPTCONN)
    + [SO\_BROADCAST](#SO_BROADCAST)
    + [SO\_DEBUG](#SO_DEBUG)
    + [SO\_DONTROUTE](#SO_DONTROUTE)
    + [SO\_ERROR](#SO_ERROR)
    + [SO\_KEEPALIVE](#SO_KEEPALIVE)
    + [SO\_LINGER](#SO_LINGER)
    + [SO\_OOBINLINE](#SO_OOBINLINE)
    + [SO\_RCVBUF](#SO_RCVBUF)
    + [SO\_RCVLOWAT](#SO_RCVLOWAT)
    + [SO\_RCVTIMEO](#SO_RCVTIMEO)
    + [SO\_REUSEADDR](#SO_REUSEADDR)
    + [SO\_SNDBUF](#SO_SNDBUF)
    + [SO\_SNDLOWAT](#SO_SNDLOWAT)
    + [SO\_SNDTIMEO](#SO_SNDTIMEO)
    + [SO\_TYPE](#SO_TYPE)
    + [SS\_DISABLE](#SS_DISABLE)
    + [SS\_ONSTACK](#SS_ONSTACK)
    + [STDERR\_FILENO](#STDERR_FILENO)
    + [STDIN\_FILENO](#STDIN_FILENO)
    + [STDOUT\_FILENO](#STDOUT_FILENO)
    + [ST\_NOSUID](#ST_NOSUID)
    + [ST\_RDONLY](#ST_RDONLY)
    + [S\_IFBLK](#S_IFBLK)
    + [S\_IFCHR](#S_IFCHR)
    + [S\_IFDIR](#S_IFDIR)
    + [S\_IFIFO](#S_IFIFO)
    + [S\_IFLNK](#S_IFLNK)
    + [S\_IFMT](#S_IFMT)
    + [S\_IFREG](#S_IFREG)
    + [S\_IFSOCK](#S_IFSOCK)
    + [S\_IRWXG](#S_IRWXG)
    + [S\_IRWXO](#S_IRWXO)
    + [S\_IRWXU](#S_IRWXU)
    + [TAB0](#TAB0)
    + [TAB1](#TAB1)
    + [TAB3](#TAB3)
    + [TABDLY](#TABDLY)
    + [TCIFLUSH](#TCIFLUSH)
    + [TCIOFF](#TCIOFF)
    + [TCIOFLUSH](#TCIOFLUSH)
    + [TCION](#TCION)
    + [TCOFLUSH](#TCOFLUSH)
    + [TCOOFF](#TCOOFF)
    + [TCOON](#TCOON)
    + [TCP\_NODELAY](#TCP_NODELAY)
    + [THOUSEP](#THOUSEP)
    + [TMP\_MAX](#TMP_MAX)
    + [TOSTOP](#TOSTOP)
    + [TRAP\_BRKPT](#TRAP_BRKPT)
    + [TRAP\_TRACE](#TRAP_TRACE)
    + [T\_FMT](#T_FMT)
    + [T\_FMT\_AMPM](#T_FMT_AMPM)
    + [UL\_GETFSIZE](#UL_GETFSIZE)
    + [UL\_SETFSIZE](#UL_SETFSIZE)
    + [UTIME\_NOW](#UTIME_NOW)
    + [UTIME\_OMIT](#UTIME_OMIT)
    + [VEOF](#VEOF)
    + [VEOL](#VEOL)
    + [VERASE](#VERASE)
    + [VINTR](#VINTR)
    + [VKILL](#VKILL)
    + [VMIN](#VMIN)
    + [VQUIT](#VQUIT)
    + [VSTART](#VSTART)
    + [VSTOP](#VSTOP)
    + [VSUSP](#VSUSP)
    + [VT0](#VT0)
    + [VT1](#VT1)
    + [VTDLY](#VTDLY)
    + [VTIME](#VTIME)
    + [WCONTINUED](#WCONTINUED)
    + [WEXITED](#WEXITED)
    + [WNOHANG](#WNOHANG)
    + [WNOWAIT](#WNOWAIT)
    + [WRDE\_APPEND](#WRDE_APPEND)
    + [WRDE\_BADCHAR](#WRDE_BADCHAR)
    + [WRDE\_BADVAL](#WRDE_BADVAL)
    + [WRDE\_CMDSUB](#WRDE_CMDSUB)
    + [WRDE\_DOOFFS](#WRDE_DOOFFS)
    + [WRDE\_NOCMD](#WRDE_NOCMD)
    + [WRDE\_NOSPACE](#WRDE_NOSPACE)
    + [WRDE\_REUSE](#WRDE_REUSE)
    + [WRDE\_SHOWERR](#WRDE_SHOWERR)
    + [WRDE\_SYNTAX](#WRDE_SYNTAX)
    + [WRDE\_UNDEF](#WRDE_UNDEF)
    + [WSTOPPED](#WSTOPPED)
    + [WUNTRACED](#WUNTRACED)
    + [W\_OK](#W_OK)
    + [X\_OK](#X_OK)
    + [YESEXPR](#YESEXPR)
  * [Variables](#pkg-Variables)
    + [daylight](#daylight)
    + [environ](#environ)
    + [getdate\_err](#getdate_err)
    + [in6addr\_any](#in6addr_any)
    + [in6addr\_loopback](#in6addr_loopback)
    + [optarg](#optarg)
    + [opterr](#opterr)
    + [optind](#optind)
    + [optopt](#optopt)
    + [stderr](#stderr)
    + [stdin](#stdin)
    + [stdout](#stdout)
    + [timezone](#timezone)
    + [tzname](#tzname)
  * [Procedures](#pkg-Procedures)
    + [CMSG\_DATA](#CMSG_DATA)
    + [CMSG\_FIRSTHDR](#CMSG_FIRSTHDR)
    + [CMSG\_NXTHDR](#CMSG_NXTHDR)
    + [FD\_CLR](#FD_CLR)
    + [FD\_ISSET](#FD_ISSET)
    + [FD\_SET](#FD_SET)
    + [FD\_ZERO](#FD_ZERO)
    + [IN6\_IS\_ADDR\_LINKLOCAL](#IN6_IS_ADDR_LINKLOCAL)
    + [IN6\_IS\_ADDR\_LOOPBACK](#IN6_IS_ADDR_LOOPBACK)
    + [IN6\_IS\_ADDR\_MC\_GLOBAL](#IN6_IS_ADDR_MC_GLOBAL)
    + [IN6\_IS\_ADDR\_MC\_LINKLOCAL](#IN6_IS_ADDR_MC_LINKLOCAL)
    + [IN6\_IS\_ADDR\_MC\_NODELOCAL](#IN6_IS_ADDR_MC_NODELOCAL)
    + [IN6\_IS\_ADDR\_MC\_ORGLOCAL](#IN6_IS_ADDR_MC_ORGLOCAL)
    + [IN6\_IS\_ADDR\_MC\_SITELOCAL](#IN6_IS_ADDR_MC_SITELOCAL)
    + [IN6\_IS\_ADDR\_MULTICAST](#IN6_IS_ADDR_MULTICAST)
    + [IN6\_IS\_ADDR\_SITELOCAL](#IN6_IS_ADDR_SITELOCAL)
    + [IN6\_IS\_ADDR\_UNSPECIFIED](#IN6_IS_ADDR_UNSPECIFIED)
    + [IN6\_IS\_ADDR\_V4COMPAT](#IN6_IS_ADDR_V4COMPAT)
    + [IN6\_IS\_ADDR\_V4MAPPED](#IN6_IS_ADDR_V4MAPPED)
    + [S\_ISBLK](#S_ISBLK)
    + [S\_ISCHR](#S_ISCHR)
    + [S\_ISDIR](#S_ISDIR)
    + [S\_ISFIFO](#S_ISFIFO)
    + [S\_ISLNK](#S_ISLNK)
    + [S\_ISREG](#S_ISREG)
    + [S\_ISSOCK](#S_ISSOCK)
    + [WEXITSTATUS](#WEXITSTATUS)
    + [WIFCONTINUED](#WIFCONTINUED)
    + [WIFEXITED](#WIFEXITED)
    + [WIFSIGNALED](#WIFSIGNALED)
    + [WIFSTOPPED](#WIFSTOPPED)
    + [WSTOPSIG](#WSTOPSIG)
    + [WTERMSIG](#WTERMSIG)
    + [a64l](#a64l)
    + [accept](#accept)
    + [access](#access)
    + [alarm](#alarm)
    + [alphasort](#alphasort)
    + [asctime\_r](#asctime_r)
    + [basename](#basename)
    + [bind](#bind)
    + [cfgetispeed](#cfgetispeed)
    + [cfgetospeed](#cfgetospeed)
    + [cfsetispeed](#cfsetispeed)
    + [cfsetospeed](#cfsetospeed)
    + [chdir](#chdir)
    + [chmod](#chmod)
    + [chown](#chown)
    + [clock\_getres](#clock_getres)
    + [clock\_gettime](#clock_gettime)
    + [clock\_settime](#clock_settime)
    + [close](#close)
    + [closedir](#closedir)
    + [confstr](#confstr)
    + [connect](#connect)
    + [creat](#creat)
    + [crypt](#crypt)
    + [ctermid](#ctermid)
    + [ctime\_r](#ctime_r)
    + [dirfd](#dirfd)
    + [dirname](#dirname)
    + [dlclose](#dlclose)
    + [dlerror](#dlerror)
    + [dlopen](#dlopen)
    + [dlsym](#dlsym)
    + [dprintf](#dprintf)
    + [drand48](#drand48)
    + [dup](#dup)
    + [dup2](#dup2)
    + [encrypt](#encrypt)
    + [endgrent](#endgrent)
    + [endhostent](#endhostent)
    + [endnetent](#endnetent)
    + [endprotoent](#endprotoent)
    + [endpwent](#endpwent)
    + [endservent](#endservent)
    + [erand48](#erand48)
    + [execl](#execl)
    + [execle](#execle)
    + [execlp](#execlp)
    + [execv](#execv)
    + [execve](#execve)
    + [execvp](#execvp)
    + [faccessat](#faccessat)
    + [fchdir](#fchdir)
    + [fchmod](#fchmod)
    + [fchmodat](#fchmodat)
    + [fchown](#fchown)
    + [fchownat](#fchownat)
    + [fcntl](#fcntl)
    + [fdatasync](#fdatasync)
    + [fdopen](#fdopen)
    + [fdopendir](#fdopendir)
    + [fexecve](#fexecve)
    + [fileno](#fileno)
    + [flockfile](#flockfile)
    + [fmemopen](#fmemopen)
    + [fnmatch](#fnmatch)
    + [fork](#fork)
    + [fpathconf](#fpathconf)
    + [free](#free)
    + [freeaddrinfo](#freeaddrinfo)
    + [fseeko](#fseeko)
    + [fstat](#fstat)
    + [fstatat](#fstatat)
    + [fstatvfs](#fstatvfs)
    + [fsync](#fsync)
    + [ftello](#ftello)
    + [ftok](#ftok)
    + [ftruncate](#ftruncate)
    + [ftrylockfile](#ftrylockfile)
    + [funlockfile](#funlockfile)
    + [futimens](#futimens)
    + [gai\_strerror](#gai_strerror)
    + [get\_errno](#get_errno)
    + [getaddrinfo](#getaddrinfo)
    + [getc\_unlocked](#getc_unlocked)
    + [getchar\_unlocked](#getchar_unlocked)
    + [getcwd](#getcwd)
    + [getdate](#getdate)
    + [getdelim](#getdelim)
    + [getegid](#getegid)
    + [geteuid](#geteuid)
    + [getgid](#getgid)
    + [getgrent](#getgrent)
    + [getgrgid](#getgrgid)
    + [getgrgid\_r](#getgrgid_r)
    + [getgrnam](#getgrnam)
    + [getgrnam\_r](#getgrnam_r)
    + [getgroups](#getgroups)
    + [gethostent](#gethostent)
    + [gethostid](#gethostid)
    + [gethostname](#gethostname)
    + [getitimer](#getitimer)
    + [getline](#getline)
    + [getlogin](#getlogin)
    + [getlogin\_r](#getlogin_r)
    + [getnameinfo](#getnameinfo)
    + [getnetbyaddr](#getnetbyaddr)
    + [getnetbyname](#getnetbyname)
    + [getnetent](#getnetent)
    + [getopt](#getopt)
    + [getpeername](#getpeername)
    + [getpgid](#getpgid)
    + [getpgrp](#getpgrp)
    + [getpid](#getpid)
    + [getppid](#getppid)
    + [getpriority](#getpriority)
    + [getprotobyname](#getprotobyname)
    + [getprotobynumber](#getprotobynumber)
    + [getprotoent](#getprotoent)
    + [getpwent](#getpwent)
    + [getpwnam](#getpwnam)
    + [getpwnam\_r](#getpwnam_r)
    + [getpwuid](#getpwuid)
    + [getpwuid\_r](#getpwuid_r)
    + [getrlimit](#getrlimit)
    + [getrusage](#getrusage)
    + [gets](#gets)
    + [getservbyname](#getservbyname)
    + [getservbyport](#getservbyport)
    + [getservent](#getservent)
    + [getsid](#getsid)
    + [getsockname](#getsockname)
    + [getsockopt](#getsockopt)
    + [getsubopt](#getsubopt)
    + [gettimeofday](#gettimeofday)
    + [getuid](#getuid)
    + [glob](#glob)
    + [globfree](#globfree)
    + [gmtime\_r](#gmtime_r)
    + [grantpt](#grantpt)
    + [iconv](#iconv)
    + [iconv\_close](#iconv_close)
    + [iconv\_open](#iconv_open)
    + [if\_freenameindex](#if_freenameindex)
    + [if\_indextoname](#if_indextoname)
    + [if\_nameindex](#if_nameindex)
    + [if\_nametoindex](#if_nametoindex)
    + [inet\_ntoa](#inet_ntoa)
    + [inet\_ntop](#inet_ntop)
    + [inet\_pton](#inet_pton)
    + [initstate](#initstate)
    + [isatty](#isatty)
    + [jrand48](#jrand48)
    + [kill](#kill)
    + [killpg](#killpg)
    + [l64a](#l64a)
    + [lchown](#lchown)
    + [lcong48](#lcong48)
    + [link](#link)
    + [linkat](#linkat)
    + [listen](#listen)
    + [localtime\_r](#localtime_r)
    + [lockf](#lockf)
    + [lrand48](#lrand48)
    + [lseek](#lseek)
    + [lstat](#lstat)
    + [mkdir](#mkdir)
    + [mkdirat](#mkdirat)
    + [mkdtemp](#mkdtemp)
    + [mkfifo](#mkfifo)
    + [mkfifoat](#mkfifoat)
    + [mknod](#mknod)
    + [mknodat](#mknodat)
    + [mkstemp](#mkstemp)
    + [mlock](#mlock)
    + [mlockall](#mlockall)
    + [mmap](#mmap)
    + [mprotect](#mprotect)
    + [mrand48](#mrand48)
    + [msgctl](#msgctl)
    + [msgget](#msgget)
    + [msgrcv](#msgrcv)
    + [msgsnd](#msgsnd)
    + [msync](#msync)
    + [munlock](#munlock)
    + [munlockall](#munlockall)
    + [munmap](#munmap)
    + [nanosleep](#nanosleep)
    + [nice](#nice)
    + [nl\_langinfo](#nl_langinfo)
    + [nrand48](#nrand48)
    + [open](#open)
    + [open\_memstream](#open_memstream)
    + [openat](#openat)
    + [opendir](#opendir)
    + [pathconf](#pathconf)
    + [pause](#pause)
    + [pclose](#pclose)
    + [pipe](#pipe)
    + [poll](#poll)
    + [popen](#popen)
    + [posix\_madvise](#posix_madvise)
    + [posix\_memalign](#posix_memalign)
    + [posix\_openpt](#posix_openpt)
    + [posix\_spawn](#posix_spawn)
    + [posix\_spawnp](#posix_spawnp)
    + [pread](#pread)
    + [pselect](#pselect)
    + [psignal](#psignal)
    + [pthread\_atfork](#pthread_atfork)
    + [pthread\_attr\_destroy](#pthread_attr_destroy)
    + [pthread\_attr\_getdetachstate](#pthread_attr_getdetachstate)
    + [pthread\_attr\_getguardsize](#pthread_attr_getguardsize)
    + [pthread\_attr\_getinheritsched](#pthread_attr_getinheritsched)
    + [pthread\_attr\_getschedparam](#pthread_attr_getschedparam)
    + [pthread\_attr\_getschedpolicy](#pthread_attr_getschedpolicy)
    + [pthread\_attr\_getscope](#pthread_attr_getscope)
    + [pthread\_attr\_getstack](#pthread_attr_getstack)
    + [pthread\_attr\_getstacksize](#pthread_attr_getstacksize)
    + [pthread\_attr\_init](#pthread_attr_init)
    + [pthread\_attr\_setdetachstate](#pthread_attr_setdetachstate)
    + [pthread\_attr\_setguardsize](#pthread_attr_setguardsize)
    + [pthread\_attr\_setinheritsched](#pthread_attr_setinheritsched)
    + [pthread\_attr\_setschedparam](#pthread_attr_setschedparam)
    + [pthread\_attr\_setschedpolicy](#pthread_attr_setschedpolicy)
    + [pthread\_attr\_setscope](#pthread_attr_setscope)
    + [pthread\_attr\_setstack](#pthread_attr_setstack)
    + [pthread\_attr\_setstacksize](#pthread_attr_setstacksize)
    + [pthread\_cancel](#pthread_cancel)
    + [pthread\_create](#pthread_create)
    + [pthread\_detach](#pthread_detach)
    + [pthread\_equal](#pthread_equal)
    + [pthread\_exit](#pthread_exit)
    + [pthread\_getconcurrency](#pthread_getconcurrency)
    + [pthread\_getcpuclockid](#pthread_getcpuclockid)
    + [pthread\_getschedparam](#pthread_getschedparam)
    + [pthread\_getspecific](#pthread_getspecific)
    + [pthread\_join](#pthread_join)
    + [pthread\_key\_create](#pthread_key_create)
    + [pthread\_key\_delete](#pthread_key_delete)
    + [pthread\_kill](#pthread_kill)
    + [pthread\_self](#pthread_self)
    + [pthread\_setcancelstate](#pthread_setcancelstate)
    + [pthread\_setcanceltype](#pthread_setcanceltype)
    + [pthread\_setconcurrency](#pthread_setconcurrency)
    + [pthread\_setschedparam](#pthread_setschedparam)
    + [pthread\_setschedprio](#pthread_setschedprio)
    + [pthread\_setspecific](#pthread_setspecific)
    + [pthread\_sigmask](#pthread_sigmask)
    + [pthread\_testcancel](#pthread_testcancel)
    + [ptsname](#ptsname)
    + [putc\_unlocked](#putc_unlocked)
    + [putchar\_unlocked](#putchar_unlocked)
    + [putenv](#putenv)
    + [pwrite](#pwrite)
    + [raise](#raise)
    + [rand\_r](#rand_r)
    + [random](#random)
    + [read](#read)
    + [readdir](#readdir)
    + [readlink](#readlink)
    + [readlinkat](#readlinkat)
    + [readv](#readv)
    + [realpath](#realpath)
    + [recv](#recv)
    + [recvfrom](#recvfrom)
    + [recvmsg](#recvmsg)
    + [renameat](#renameat)
    + [rewinddir](#rewinddir)
    + [rmdir](#rmdir)
    + [scandir](#scandir)
    + [sched\_get\_priority\_max](#sched_get_priority_max)
    + [sched\_get\_priority\_min](#sched_get_priority_min)
    + [sched\_yield](#sched_yield)
    + [seed48](#seed48)
    + [seekdir](#seekdir)
    + [select](#select)
    + [semctl](#semctl)
    + [semget](#semget)
    + [semop](#semop)
    + [send](#send)
    + [sendmsg](#sendmsg)
    + [sendto](#sendto)
    + [set\_errno](#set_errno)
    + [setegid](#setegid)
    + [setenv](#setenv)
    + [seteuid](#seteuid)
    + [setgid](#setgid)
    + [setgrent](#setgrent)
    + [sethostent](#sethostent)
    + [setitimer](#setitimer)
    + [setkey](#setkey)
    + [setnetent](#setnetent)
    + [setpgid](#setpgid)
    + [setpgrp](#setpgrp)
    + [setpriority](#setpriority)
    + [setprotoent](#setprotoent)
    + [setpwent](#setpwent)
    + [setregid](#setregid)
    + [setreuid](#setreuid)
    + [setrlimit](#setrlimit)
    + [setservent](#setservent)
    + [setsid](#setsid)
    + [setsockopt](#setsockopt)
    + [setstate](#setstate)
    + [setuid](#setuid)
    + [shm\_open](#shm_open)
    + [shm\_unlink](#shm_unlink)
    + [shmat](#shmat)
    + [shmctl](#shmctl)
    + [shmdt](#shmdt)
    + [shmget](#shmget)
    + [shutdown](#shutdown)
    + [sigaction](#sigaction)
    + [sigaddset](#sigaddset)
    + [sigaltstack](#sigaltstack)
    + [sigdelset](#sigdelset)
    + [sigemptyset](#sigemptyset)
    + [sigfillset](#sigfillset)
    + [sighold](#sighold)
    + [sigignore](#sigignore)
    + [siginterrupt](#siginterrupt)
    + [sigismember](#sigismember)
    + [siglongjmp](#siglongjmp)
    + [signal](#signal)
    + [sigpause](#sigpause)
    + [sigpending](#sigpending)
    + [sigprocmask](#sigprocmask)
    + [sigrelse](#sigrelse)
    + [sigsetjmp](#sigsetjmp)
    + [sigsuspend](#sigsuspend)
    + [sigwait](#sigwait)
    + [sleep](#sleep)
    + [sockatmark](#sockatmark)
    + [socket](#socket)
    + [socketpair](#socketpair)
    + [sprintf](#sprintf)
    + [srand48](#srand48)
    + [srandom](#srandom)
    + [stat](#stat)
    + [statvfs](#statvfs)
    + [strerror](#strerror)
    + [strerror\_r](#strerror_r)
    + [strfmon](#strfmon)
    + [strptime](#strptime)
    + [strsignal](#strsignal)
    + [swab](#swab)
    + [symlink](#symlink)
    + [symlinkat](#symlinkat)
    + [sync](#sync)
    + [sysconf](#sysconf)
    + [tcdrain](#tcdrain)
    + [tcflow](#tcflow)
    + [tcflush](#tcflush)
    + [tcgetattr](#tcgetattr)
    + [tcgetpgrp](#tcgetpgrp)
    + [tcgetsid](#tcgetsid)
    + [tcsendbreak](#tcsendbreak)
    + [tcsetattr](#tcsetattr)
    + [tcsetpgrp](#tcsetpgrp)
    + [telldir](#telldir)
    + [tempnam](#tempnam)
    + [times](#times)
    + [truncate](#truncate)
    + [ttyname](#ttyname)
    + [ttyname\_r](#ttyname_r)
    + [tzset](#tzset)
    + [ulimit](#ulimit)
    + [umask](#umask)
    + [uname](#uname)
    + [unlink](#unlink)
    + [unlinkat](#unlinkat)
    + [unlockpt](#unlockpt)
    + [unsetenv](#unsetenv)
    + [utime](#utime)
    + [utimensat](#utimensat)
    + [utimes](#utimes)
    + [wait](#wait)
    + [waitid](#waitid)
    + [waitpid](#waitpid)
    + [wordexp](#wordexp)
    + [wordfree](#wordfree)
    + [write](#write)
    + [writev](#writev)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [errno](#errno)
  * [`#config` values](#pkg-`#config` values)
    + [FD\_SETSIZE](#FD_SETSIZE)
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