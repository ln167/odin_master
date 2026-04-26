package sys/haiku - pkg.odin-lang.org 






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



Current Package: *[sys\_haiku](/core/sys/haiku)*

  

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
3. [haiku](/core/sys/haiku)

# package core:sys/haiku [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku)

#### **Warning:**This was generated for `-target:haiku_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (70)

* [Errno](#Errno)
* [addr\_t](#addr_t)
* [address\_spec](#address_spec)
* [alarm\_mode](#alarm_mode)
* [area\_id](#area_id)
* [area\_info](#area_info)
* [area\_locking](#area_locking)
* [area\_protection\_flag](#area_protection_flag)
* [area\_protection\_flags](#area_protection_flags)
* [bigtime\_t](#bigtime_t)
* [blkcnt\_t](#blkcnt_t)
* [blksize\_t](#blksize_t)
* [caddr\_t](#caddr_t)
* [clockid\_t](#clockid_t)
* [cnt\_t](#cnt_t)
* [cpu\_info](#cpu_info)
* [cpu\_platform](#cpu_platform)
* [cpu\_topology\_node\_info](#cpu_topology_node_info)
* [cpu\_vendor](#cpu_vendor)
* [cpuid\_info](#cpuid_info)
* [dev\_t](#dev_t)
* [directory\_which](#directory_which)
* [find\_path\_flag](#find_path_flag)
* [find\_path\_flags](#find_path_flags)
* [fsblkcnt\_t](#fsblkcnt_t)
* [fsfilcnt\_t](#fsfilcnt_t)
* [generic\_addr\_t](#generic_addr_t)
* [generic\_size\_t](#generic_size_t)
* [gid\_t](#gid_t)
* [id\_t](#id_t)
* [image\_id](#image_id)
* [ino\_t](#ino_t)
* [key\_t](#key_t)
* [mode\_t](#mode_t)
* [nanotime\_t](#nanotime_t)
* [nlink\_t](#nlink_t)
* [off\_t](#off_t)
* [path\_base\_directory](#path_base_directory)
* [perform\_code](#perform_code)
* [phys\_addr\_t](#phys_addr_t)
* [phys\_size\_t](#phys_size_t)
* [pid\_t](#pid_t)
* [port\_flag](#port_flag)
* [port\_flags](#port_flags)
* [port\_id](#port_id)
* [port\_info](#port_info)
* [pthread\_t](#pthread_t)
* [sem\_id](#sem_id)
* [sem\_info](#sem_info)
* [semaphore\_flag](#semaphore_flag)
* [semaphore\_flags](#semaphore_flags)
* [sig\_atomic\_t](#sig_atomic_t)
* [sigset\_t](#sigset_t)
* [status\_t](#status_t)
* [system\_info](#system_info)
* [team\_id](#team_id)
* [team\_info](#team_info)
* [team\_usage\_info](#team_usage_info)
* [team\_usage\_who](#team_usage_who)
* [thread\_func](#thread_func)
* [thread\_id](#thread_id)
* [thread\_info](#thread_info)
* [thread\_priority](#thread_priority)
* [thread\_state](#thread_state)
* [time\_t](#time_t)
* [timespec](#timespec)
* [topology\_level\_type](#topology_level_type)
* [type\_code](#type_code)
* [uid\_t](#uid_t)
* [umode\_t](#umode_t)

Constants (26)

* [APP\_ERROR\_BASE](#APP_ERROR_BASE)
* [APP\_IMAGE\_SYMBOL](#APP_IMAGE_SYMBOL)
* [CURRENT\_TEAM](#CURRENT_TEAM)
* [DEVICE\_ERROR\_BASE](#DEVICE_ERROR_BASE)
* [ERRORS\_END](#ERRORS_END)
* [FILE\_NAME\_LENGTH](#FILE_NAME_LENGTH)
* [FIRST\_REAL\_TIME\_PRIORITY](#FIRST_REAL_TIME_PRIORITY)
* [GENERAL\_ERROR\_BASE](#GENERAL_ERROR_BASE)
* [INTERFACE\_ERROR\_BASE](#INTERFACE_ERROR_BASE)
* [MAIL\_ERROR\_BASE](#MAIL_ERROR_BASE)
* [MAXPATHLEN](#MAXPATHLEN)
* [MEDIA\_ERROR\_BASE](#MEDIA_ERROR_BASE)
* [MIDI\_ERROR\_BASE](#MIDI_ERROR_BASE)
* [NAME\_MAX](#NAME_MAX)
* [OS\_ERROR\_BASE](#OS_ERROR_BASE)
* [OS\_NAME\_LENGTH](#OS_NAME_LENGTH)
* [PATH\_MAX](#PATH_MAX)
* [PATH\_NAME\_LENGTH](#PATH_NAME_LENGTH)
* [POSIX\_ERROR\_BASE](#POSIX_ERROR_BASE)
* [POSIX\_ERROR\_FACTOR](#POSIX_ERROR_FACTOR)
* [PRINT\_ERROR\_BASE](#PRINT_ERROR_BASE)
* [STORAGE\_ERROR\_BASE](#STORAGE_ERROR_BASE)
* [SYSTEM\_TEAM](#SYSTEM_TEAM)
* [SYSTEM\_TIMEBASE](#SYSTEM_TIMEBASE)
* [TRANSLATION\_ERROR\_BASE](#TRANSLATION_ERROR_BASE)
* [USE\_POSITIVE\_POSIX\_ERRORS](#USE_POSITIVE_POSIX_ERRORS)

Variables (0)

This section is empty.

Procedures (70)

* [acquire\_sem](#acquire_sem)
* [acquire\_sem\_etc](#acquire_sem_etc)
* [area\_for](#area_for)
* [clone\_area](#clone_area)
* [close\_port](#close_port)
* [create\_area](#create_area)
* [create\_port](#create_port)
* [create\_sem](#create_sem)
* [current\_image\_symbol](#current_image_symbol)
* [debugger](#debugger)
* [delete\_area](#delete_area)
* [delete\_port](#delete_port)
* [delete\_sem](#delete_sem)
* [disable\_debugger](#disable_debugger)
* [exit\_thread](#exit_thread)
* [find\_area](#find_area)
* [find\_directory](#find_directory)
* [find\_path](#find_path)
* [find\_path\_etc](#find_path_etc)
* [find\_path\_for\_path](#find_path_for_path)
* [find\_path\_for\_path\_etc](#find_path_for_path_etc)
* [find\_paths](#find_paths)
* [find\_paths\_etc](#find_paths_etc)
* [find\_port](#find_port)
* [find\_thread](#find_thread)
* [get\_cpu\_topology\_info](#get_cpu_topology_info)
* [get\_cpuid](#get_cpuid)
* [get\_pthread\_thread\_id](#get_pthread_thread_id)
* [get\_sem\_count](#get_sem_count)
* [get\_system\_info](#get_system_info)
* [has\_data](#has_data)
* [is\_computer\_on](#is_computer_on)
* [is\_computer\_on\_fire](#is_computer_on_fire)
* [kill\_team](#kill_team)
* [kill\_thread](#kill_thread)
* [on\_exit\_thread](#on_exit_thread)
* [port\_buffer\_size](#port_buffer_size)
* [port\_buffer\_size\_etc](#port_buffer_size_etc)
* [port\_count](#port_count)
* [read\_port](#read_port)
* [read\_port\_etc](#read_port_etc)
* [real\_time\_clock](#real_time_clock)
* [real\_time\_clock\_usecs](#real_time_clock_usecs)
* [receive\_data](#receive_data)
* [release\_sem](#release_sem)
* [release\_sem\_etc](#release_sem_etc)
* [rename\_thread](#rename_thread)
* [resize\_area](#resize_area)
* [resume\_thread](#resume_thread)
* [send\_data](#send_data)
* [set\_alarm](#set_alarm)
* [set\_area\_protection](#set_area_protection)
* [set\_port\_owner](#set_port_owner)
* [set\_real\_time\_clock](#set_real_time_clock)
* [set\_sem\_owner](#set_sem_owner)
* [set\_thread\_priority](#set_thread_priority)
* [sigtimedwait](#sigtimedwait)
* [snooze](#snooze)
* [snooze\_etc](#snooze_etc)
* [snooze\_until](#snooze_until)
* [spawn\_thread](#spawn_thread)
* [suspend\_thread](#suspend_thread)
* [switch\_sem](#switch_sem)
* [switch\_sem\_etc](#switch_sem_etc)
* [system\_time](#system_time)
* [system\_time\_nsecs](#system_time_nsecs)
* [wait\_for\_thread](#wait_for_thread)
* [wait\_for\_thread\_etc](#wait_for_thread_etc)
* [write\_port](#write_port)
* [write\_port\_etc](#write_port_etc)

Procedure Groups (0)

This section is empty.

## Types

### [Errno ¶](#Errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L28)

```
Errno :: enum i32 {
	// General Errors
	NO_MEMORY                         = -2147843648, 
	IO_ERROR                          = -2147843647, 
	PERMISSION_DENIED                 = -2147843646, 
	BAD_INDEX                         = -2147843645, 
	BAD_TYPE                          = -2147843644, 
	BAD_VALUE                         = -2147843643, 
	MISMATCHED_VALUES                 = -2147843642, 
	NAME_NOT_FOUND                    = -2147843641, 
	NAME_IN_USE                       = -2147843640, 
	TIMED_OUT                         = -2147843639, 
	INTERRUPTED                       = -2147843638, 
	WOULD_BLOCK                       = -2147843637, 
	CANCELED                          = -2147843636, 
	NO_INIT                           = -2147843635, 
	NOT_INITIALIZED                   = -2147843635, 
	BUSY                              = -2147843634, 
	NOT_ALLOWED                       = -2147843633, 
	BAD_DATA                          = -2147843632, 
	DONT_DO_THAT                      = -2147843631, 
	ERROR                             = -1, 
	OK                                = 0, 
	NO_ERROR                          = 0, 
	// Kernel Kit Errors
	BAD_SEM_ID                        = -2147749552, 
	NO_MORE_SEMS                      = -2147749551, 
	BAD_THREAD_ID                     = -2147749296, 
	NO_MORE_THREADS                   = -2147749295, 
	BAD_THREAD_STATE                  = -2147749294, 
	BAD_TEAM_ID                       = -2147749293, 
	NO_MORE_TEAMS                     = -2147749292, 
	BAD_PORT_ID                       = -2147749040, 
	NO_MORE_PORTS                     = -2147749039, 
	BAD_IMAGE_ID                      = -2147748784, 
	BAD_ADDRESS                       = -2147748783, 
	NOT_AN_EXECUTABLE                 = -2147748782, 
	MISSING_LIBRARY                   = -2147748781, 
	MISSING_SYMBOL                    = -2147748780, 
	UNKNOWN_EXECUTABLE                = -2147748779, 
	LEGACY_EXECUTABLE                 = -2147748778, 
	DEBUGGER_ALREADY_INSTALLED        = -2147748528, 
	// Application Kit Errors
	BAD_REPLY                         = -2147745456, 
	DUPLICATE_REPLY                   = -2147745455, 
	MESSAGE_TO_SELF                   = -2147745454, 
	BAD_HANDLER                       = -2147745453, 
	ALREADY_RUNNING                   = -2147745452, 
	LAUNCH_FAILED                     = -2147745451, 
	AMBIGUOUS_APP_LAUNCH              = -2147745450, 
	UNKNOWN_MIME_TYPE                 = -2147745449, 
	BAD_SCRIPT_SYNTAX                 = -2147745448, 
	LAUNCH_FAILED_NO_RESOLVE_LINK     = -2147745447, 
	LAUNCH_FAILED_EXECUTABLE          = -2147745446, 
	LAUNCH_FAILED_APP_NOT_FOUND       = -2147745445, 
	LAUNCH_FAILED_APP_IN_TRASH        = -2147745444, 
	LAUNCH_FAILED_NO_PREFERRED_APP    = -2147745443, 
	LAUNCH_FAILED_FILES_APP_NOT_FOUND = -2147745442, 
	BAD_MIME_SNIFFER_RULE             = -2147745441, 
	NOT_A_MESSAGE                     = -2147745440, 
	SHUTDOWN_CANCELLED                = -2147745439, 
	SHUTTING_DOWN                     = -2147745438, 
	// Storage Kit/File System Errors
	FILE_ERROR                        = -2147549072, 
	// 1 was B_FILE_NOT_FOUND (deprecated)
	FILE_EXISTS                       = -2147549070, 
	ENTRY_NOT_FOUND                   = -2147549069, 
	NAME_TOO_LONG                     = -2147549068, 
	NOT_A_DIRECTORY                   = -2147549067, 
	DIRECTORY_NOT_EMPTY               = -2147549066, 
	DEVICE_FULL                       = -2147549065, 
	READ_ONLY_DEVICE                  = -2147549064, 
	IS_A_DIRECTORY                    = -2147549063, 
	NO_MORE_FDS                       = -2147549062, 
	CROSS_DEVICE_LINK                 = -2147549061, 
	LINK_LIMIT                        = -2147549060, 
	BUSTED_PIPE                       = -2147549059, 
	UNSUPPORTED                       = -2147549058, 
	PARTITION_TOO_SMALL               = -2147549057, 
	PARTIAL_READ                      = -2147549056, 
	PARTIAL_WRITE                     = -2147549055, 
	EIO                               = -2147843647, 
	EACCES                            = -2147843646, 
	EINVAL                            = -2147843643, 
	ETIMEDOUT                         = -2147843639, 
	EINTR                             = -2147843638, 
	EAGAIN                            = -2147843637, 
	EWOULDBLOCK                       = -2147843637, 
	EBUSY                             = -2147843634, 
	EPERM                             = -2147843633, 
	EFAULT                            = -2147748783, 
	ENOEXEC                           = -2147748782, 
	EBADF                             = -2147549072, 
	EEXIST                            = -2147549070, 
	ENOENT                            = -2147549069, 
	ENAMETOOLONG                      = -2147549068, 
	ENOTDIR                           = -2147549067, 
	ENOTEMPTY                         = -2147549066, 
	ENOSPC                            = -2147549065, 
	EROFS                             = -2147549064, 
	EISDIR                            = -2147549063, 
	EMFILE                            = -2147549062, 
	EXDEV                             = -2147549061, 
	ELOOP                             = -2147549060, 
	EPIPE                             = -2147549059, 
	ENOMEM                            = -2147843648, 
	E2BIG                             = -2147544975, 
	ECHILD                            = -2147544974, 
	EDEADLK                           = -2147544973, 
	EFBIG                             = -2147544972, 
	EMLINK                            = -2147544971, 
	ENFILE                            = -2147544970, 
	ENODEV                            = -2147544969, 
	ENOLCK                            = -2147544968, 
	ENOSYS                            = -2147544967, 
	ENOTTY                            = -2147544966, 
	ENXIO                             = -2147544965, 
	ESPIPE                            = -2147544964, 
	ESRCH                             = -2147544963, 
	EDOM                              = -2147544960, 
	ERANGE                            = -2147544959, 
	EPROTOTYPE                        = -2147544958, 
	EPROTONOSUPPORT                   = -2147544957, 
	EAFNOSUPPORT                      = -2147544955, 
	EADDRINUSE                        = -2147544954, 
	EADDRNOTAVAIL                     = -2147544953, 
	ENETDOWN                          = -2147544952, 
	ENETUNREACH                       = -2147544951, 
	ENETRESET                         = -2147544950, 
	ECONNABORTED                      = -2147544949, 
	ECONNRESET                        = -2147544948, 
	EISCONN                           = -2147544947, 
	ENOTCONN                          = -2147544946, 
	ECONNREFUSED                      = -2147544944, 
	EHOSTUNREACH                      = -2147544943, 
	ENOPROTOOPT                       = -2147544942, 
	ENOBUFS                           = -2147544941, 
	EINPROGRESS                       = -2147544940, 
	EALREADY                          = -2147544939, 
	EILSEQ                            = -2147544938, 
	ENOMSG                            = -2147544937, 
	ESTALE                            = -2147544936, 
	EOVERFLOW                         = -2147544935, 
	EMSGSIZE                          = -2147544934, 
	EOPNOTSUPP                        = -2147544933, 
	ENOTSOCK                          = -2147544932, 
	EBADMSG                           = -2147544930, 
	ECANCELED                         = -2147544929, 
	EDESTADDRREQ                      = -2147544928, 
	EDQUOT                            = -2147544927, 
	EIDRM                             = -2147544926, 
	EMULTIHOP                         = -2147544925, 
	ENODATA                           = -2147544924, 
	ENOLINK                           = -2147544923, 
	ENOSR                             = -2147544922, 
	ENOSTR                            = -2147544921, 
	ENOTSUP                           = -2147544920, 
	EPROTO                            = -2147544919, 
	ETIME                             = -2147544918, 
	ETXTBSY                           = -2147544917, 
	ENOTRECOVERABLE                   = -2147544915, 
	EOWNERDEAD                        = -2147544914, 
	// New error codes that can be mapped to POSIX errors
	TOO_MANY_ARGS                     = -2147544975, 
	FILE_TOO_LARGE                    = -2147544972, 
	DEVICE_NOT_FOUND                  = -2147544969, 
	RESULT_NOT_REPRESENTABLE          = -2147544959, 
	BUFFER_OVERFLOW                   = -2147544935, 
	NOT_SUPPORTED                     = -2147544933, 
	// Media Kit Errors
	STREAM_NOT_FOUND                  = -2147647264, 
	SERVER_NOT_FOUND                  = -2147647263, 
	RESOURCE_NOT_FOUND                = -2147647262, 
	RESOURCE_UNAVAILABLE              = -2147647261, 
	BAD_SUBSCRIBER                    = -2147647260, 
	SUBSCRIBER_NOT_ENTERED            = -2147647259, 
	BUFFER_NOT_AVAILABLE              = -2147647258, 
	LAST_BUFFER_ERROR                 = -2147647257, 
	MEDIA_SYSTEM_FAILURE              = -2147647164, 
	MEDIA_BAD_NODE                    = -2147647163, 
	MEDIA_NODE_BUSY                   = -2147647162, 
	MEDIA_BAD_FORMAT                  = -2147647161, 
	MEDIA_BAD_BUFFER                  = -2147647160, 
	MEDIA_TOO_MANY_NODES              = -2147647159, 
	MEDIA_TOO_MANY_BUFFERS            = -2147647158, 
	MEDIA_NODE_ALREADY_EXISTS         = -2147647157, 
	MEDIA_BUFFER_ALREADY_EXISTS       = -2147647156, 
	MEDIA_CANNOT_SEEK                 = -2147647155, 
	MEDIA_CANNOT_CHANGE_RUN_MODE      = -2147647154, 
	MEDIA_APP_ALREADY_REGISTERED      = -2147647153, 
	MEDIA_APP_NOT_REGISTERED          = -2147647152, 
	MEDIA_CANNOT_RECLAIM_BUFFERS      = -2147647151, 
	MEDIA_BUFFERS_NOT_RECLAIMED       = -2147647150, 
	MEDIA_TIME_SOURCE_STOPPED         = -2147647149, 
	MEDIA_TIME_SOURCE_BUSY            = -2147647148, 
	MEDIA_BAD_SOURCE                  = -2147647147, 
	MEDIA_BAD_DESTINATION             = -2147647146, 
	MEDIA_ALREADY_CONNECTED           = -2147647145, 
	MEDIA_NOT_CONNECTED               = -2147647144, 
	MEDIA_BAD_CLIP_FORMAT             = -2147647143, 
	MEDIA_ADDON_FAILED                = -2147647142, 
	MEDIA_ADDON_DISABLED              = -2147647141, 
	MEDIA_CHANGE_IN_PROGRESS          = -2147647140, 
	MEDIA_STALE_CHANGE_COUNT          = -2147647139, 
	MEDIA_ADDON_RESTRICTED            = -2147647138, 
	MEDIA_NO_HANDLER                  = -2147647137, 
	MEDIA_DUPLICATE_FORMAT            = -2147647136, 
	MEDIA_REALTIME_DISABLED           = -2147647135, 
	MEDIA_REALTIME_UNAVAILABLE        = -2147647134, 
	// Mail Kit Errors
	MAIL_NO_DAEMON                    = -2147540880, 
	MAIL_UNKNOWN_USER                 = -2147540879, 
	MAIL_WRONG_PASSWORD               = -2147540878, 
	MAIL_UNKNOWN_HOST                 = -2147540877, 
	MAIL_ACCESS_ERROR                 = -2147540876, 
	MAIL_UNKNOWN_FIELD                = -2147540875, 
	MAIL_NO_RECIPIENT                 = -2147540874, 
	MAIL_INVALID_MAIL                 = -2147540873, 
	// Printing Errors
	NO_PRINT_SERVER                   = -2147446784, 
	// Device Kit Errors
	DEV_INVALID_IOCTL                 = -2147442688, 
	DEV_NO_MEMORY                     = -2147442687, 
	DEV_BAD_DRIVE_NUM                 = -2147442686, 
	DEV_NO_MEDIA                      = -2147442685, 
	DEV_UNREADABLE                    = -2147442684, 
	DEV_FORMAT_ERROR                  = -2147442683, 
	DEV_TIMEOUT                       = -2147442682, 
	DEV_RECALIBRATE_ERROR             = -2147442681, 
	DEV_SEEK_ERROR                    = -2147442680, 
	DEV_ID_ERROR                      = -2147442679, 
	DEV_READ_ERROR                    = -2147442678, 
	DEV_WRITE_ERROR                   = -2147442677, 
	DEV_NOT_READY                     = -2147442676, 
	DEV_MEDIA_CHANGED                 = -2147442675, 
	DEV_MEDIA_CHANGE_REQUESTED        = -2147442674, 
	DEV_RESOURCE_CONFLICT             = -2147442673, 
	DEV_CONFIGURATION_ERROR           = -2147442672, 
	DEV_DISABLED_BY_USER              = -2147442671, 
	DEV_DOOR_OPEN                     = -2147442670, 
	DEV_INVALID_PIPE                  = -2147442669, 
	DEV_CRC_ERROR                     = -2147442668, 
	DEV_STALLED                       = -2147442667, 
	DEV_BAD_PID                       = -2147442666, 
	DEV_UNEXPECTED_PID                = -2147442665, 
	DEV_DATA_OVERRUN                  = -2147442664, 
	DEV_DATA_UNDERRUN                 = -2147442663, 
	DEV_FIFO_OVERRUN                  = -2147442662, 
	DEV_FIFO_UNDERRUN                 = -2147442661, 
	DEV_PENDING                       = -2147442660, 
	DEV_MULTIPLE_ERRORS               = -2147442659, 
	DEV_TOO_LATE                      = -2147442658, 
	// Translation Kit Errors
	TRANSLATION_BASE_ERROR            = -2147645216, 
	NO_TRANSLATOR                     = -2147645215, 
	ILLEGAL_DATA                      = -2147645214, 
}
```

##### Related Procedures With Parameters

* [exit\_thread](/core/sys/haiku/#exit_thread)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)



##### Related Procedures With Returns

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [close\_port](/core/sys/haiku/#close_port)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [find\_directory](/core/sys/haiku/#find_directory)
* [find\_path](/core/sys/haiku/#find_path)
* [find\_path\_etc](/core/sys/haiku/#find_path_etc)
* [find\_path\_for\_path](/core/sys/haiku/#find_path_for_path)
* [find\_path\_for\_path\_etc](/core/sys/haiku/#find_path_for_path_etc)
* [find\_paths](/core/sys/haiku/#find_paths)
* [find\_paths\_etc](/core/sys/haiku/#find_paths_etc)
* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [get\_system\_info](/core/sys/haiku/#get_system_info)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [on\_exit\_thread](/core/sys/haiku/#on_exit_thread)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)

### [addr\_t ¶](#addr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L40)

```
addr_t :: uintptr
```

### [address\_spec ¶](#address_spec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L44)

```
address_spec :: enum u32 {
	ANY_ADDRESS             = 0, 
	EXACT_ADDRESS           = 1, 
	BASE_ADDRESS            = 2, 
	CLONE_ADDRESS           = 3, 
	ANY_KERNEL_ADDRESS      = 4, 
	// ANY_KERNEL_BLOCK_ADDRESS = 5,
	RANDOMIZED_ANY_ADDRESS  = 6, 
	RANDOMIZED_BASE_ADDRESS = 7, 
}
```

 

for create\_area() and clone\_area()




##### Related Procedures With Parameters

* [clone\_area](/core/sys/haiku/#clone_area)
* [create\_area](/core/sys/haiku/#create_area)

### [alarm\_mode ¶](#alarm_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L286)

```
alarm_mode :: enum u32 {
	ONE_SHOT_ABSOLUTE_ALARM = 1, 
	ONE_SHOT_RELATIVE_ALARM, 
	PERIODIC_ALARM,              // "when" specifies the period
}
```

##### Related Procedures With Parameters

* [set\_alarm](/core/sys/haiku/#set_alarm)

### [area\_id ¶](#area_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L15)

```
area_id :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [area\_info ¶](#area_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L19)

```
area_info :: struct {
	area:       i32,
	name:       [32]u8,
	size:       uint,
	lock:       u32,
	protection: u32,
	team:       i32,
	ram_size:   u32,
	copy_count: u32,
	in_count:   u32,
	out_count:  u32,
	address:    rawptr,
}
```

### [area\_locking ¶](#area_locking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L33)

```
area_locking :: enum u32 {
	NO_LOCK            = 0, 
	LAZY_LOCK          = 1, 
	FULL_LOCK          = 2, 
	CONTIGUOUS         = 3, 
	LOMEM              = 4, // CONTIGUOUS, < 16 MB physical address
	_32_BIT_FULL_LOCK  = 5, // FULL_LOCK, < 4 GB physical addresses
	_32_BIT_CONTIGUOUS = 6, // CONTIGUOUS, < 4 GB physical address
}
```

##### Related Procedures With Parameters

* [create\_area](/core/sys/haiku/#create_area)

### [area\_protection\_flag ¶](#area_protection_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L55)

```
area_protection_flag :: enum u32 {
	READ_AREA      = 0, 
	WRITE_AREA     = 1, 
	EXECUTE_AREA   = 2, 
	// "stack" protection is not available on most platforms - it's used
	// to only commit memory as needed, and have guard pages at the
	// bottom of the stack.
	STACK_AREA     = 3, 
	CLONEABLE_AREA = 8, 
}
```

### [area\_protection\_flags ¶](#area_protection_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L65)

```
area_protection_flags :: distinct bit_set[area_protection_flag; u32]
```

##### Related Procedures With Parameters

* [clone\_area](/core/sys/haiku/#clone_area)
* [create\_area](/core/sys/haiku/#create_area)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)

### [bigtime\_t ¶](#bigtime_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L5)

```
bigtime_t :: i64
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [set\_alarm](/core/sys/haiku/#set_alarm)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [real\_time\_clock\_usecs](/core/sys/haiku/#real_time_clock_usecs)
* [system\_time](/core/sys/haiku/#system_time)
* [system\_time\_nsecs](/core/sys/haiku/#system_time_nsecs)

### [blkcnt\_t ¶](#blkcnt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L21)

```
blkcnt_t :: i64
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [set\_alarm](/core/sys/haiku/#set_alarm)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [real\_time\_clock\_usecs](/core/sys/haiku/#real_time_clock_usecs)
* [system\_time](/core/sys/haiku/#system_time)
* [system\_time\_nsecs](/core/sys/haiku/#system_time_nsecs)

### [blksize\_t ¶](#blksize_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L22)

```
blksize_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [caddr\_t ¶](#caddr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L38)

```
caddr_t :: [^]u8
```

##### Related Procedures With Parameters

* [find\_directory](/core/sys/haiku/#find_directory)
* [find\_path](/core/sys/haiku/#find_path)
* [find\_path\_etc](/core/sys/haiku/#find_path_etc)
* [find\_path\_for\_path](/core/sys/haiku/#find_path_for_path)
* [find\_path\_for\_path\_etc](/core/sys/haiku/#find_path_for_path_etc)

### [clockid\_t ¶](#clockid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L43)

```
clockid_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [cnt\_t ¶](#cnt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L27)

```
cnt_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [cpu\_info ¶](#cpu_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L315)

```
cpu_info :: struct {
	active_time:       i64,
	enabled:           bool,
	current_frequency: u64,
}
```

### [cpu\_platform ¶](#cpu_platform) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L368)

```
cpu_platform :: enum i32 {
	UNKNOWN, 
	x86, 
	x86_64, 
	PPC, 
	PPC_64, 
	M68K, 
	ARM, 
	ARM_64, 
	ALPHA, 
	MIPS, 
	SH, 
	SPARC, 
	RISC_V, 
}
```

### [cpu\_topology\_node\_info ¶](#cpu_topology_node_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L402)

```
cpu_topology_node_info :: struct {
	id:    u32,
	type:  topology_level_type,
	level: u32,
	data:  struct #raw_union {
		_root:    struct {
			platform: cpu_platform,
		},
		_package: struct {
			vendor:          cpu_vendor,
			cache_line_size: u32,
		},
		_core:    struct {
			model:             u32,
			default_frequency: u64,
		},
	},
}
```

##### Related Procedures With Parameters

* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)

### [cpu\_vendor ¶](#cpu_vendor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L384)

```
cpu_vendor :: enum i32 {
	UNKNOWN, 
	AMD, 
	CYRIX, 
	IDT, 
	INTEL, 
	NATIONAL_SEMICONDUCTOR, 
	RISE, 
	TRANSMETA, 
	VIA, 
	IBM, 
	MOTOROLA, 
	NEC, 
	HYGON, 
	SUN, 
	FUJITSU, 
}
```

### [cpuid\_info ¶](#cpuid_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L423)

```
cpuid_info :: struct #raw_union {
	eax_0:    struct {
		max_eax:   u32,
		vendor_id: [12]u8,
	},
	eax_1:    struct {
		using _:           bit_field u32 {
			stepping:        u32 | 4,
			model:           u32 | 4,
			family:          u32 | 4,
			type:            u32 | 2,
			reserved_0:      u32 | 2,
			extended_model:  u32 | 4,
			extended_family: u32 | 8,
			reserved_1:      u32 | 4,
		},
		using _:           bit_field u32 {
			brand_index:  u32 | 8,
			clflush:      u32 | 8,
			logical_cpus: u32 | 8,
			apic_id:      u32 | 8,
		},
		features:          u32,
		extended_features: u32,
	},
	eax_2:    struct {
		call_num:          u8,
		cache_descriptors: [15]u8,
	},
	eax_3:    struct {
		reserved:           [2]u32,
		serial_number_high: u32,
		serial_number_low:  u32,
	},
	as_chars: [16]u8,
	regs:     struct {
		eax: u32,
		ebx: u32,
		edx: u32,
		ecx: u32,
	},
}
```

##### Related Procedures With Parameters

* [get\_cpuid](/core/sys/haiku/#get_cpuid)

### [dev\_t ¶](#dev_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L28)

```
dev_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [directory\_which ¶](#directory_which) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L8)

```
directory_which :: enum i32 {
	// Per volume directories
	DESKTOP_DIRECTORY                          = 0, 
	TRASH_DIRECTORY, 
	// System directories
	SYSTEM_DIRECTORY                           = 1000, 
	SYSTEM_ADDONS_DIRECTORY                    = 1002, 
	SYSTEM_BOOT_DIRECTORY, 
	SYSTEM_FONTS_DIRECTORY, 
	SYSTEM_LIB_DIRECTORY, 
	SYSTEM_SERVERS_DIRECTORY, 
	SYSTEM_APPS_DIRECTORY, 
	SYSTEM_BIN_DIRECTORY, 
	SYSTEM_DOCUMENTATION_DIRECTORY             = 1010, 
	SYSTEM_PREFERENCES_DIRECTORY, 
	SYSTEM_TRANSLATORS_DIRECTORY, 
	SYSTEM_MEDIA_NODES_DIRECTORY, 
	SYSTEM_SOUNDS_DIRECTORY, 
	SYSTEM_DATA_DIRECTORY, 
	SYSTEM_DEVELOP_DIRECTORY, 
	SYSTEM_PACKAGES_DIRECTORY, 
	SYSTEM_HEADERS_DIRECTORY, 
	SYSTEM_ETC_DIRECTORY                       = 2008, 
	SYSTEM_SETTINGS_DIRECTORY                  = 2010, 
	SYSTEM_LOG_DIRECTORY                       = 2012, 
	SYSTEM_SPOOL_DIRECTORY, 
	SYSTEM_TEMP_DIRECTORY, 
	SYSTEM_VAR_DIRECTORY, 
	SYSTEM_CACHE_DIRECTORY                     = 2020, 
	SYSTEM_NONPACKAGED_DIRECTORY               = 2023, 
	SYSTEM_NONPACKAGED_ADDONS_DIRECTORY, 
	SYSTEM_NONPACKAGED_TRANSLATORS_DIRECTORY, 
	SYSTEM_NONPACKAGED_MEDIA_NODES_DIRECTORY, 
	SYSTEM_NONPACKAGED_BIN_DIRECTORY, 
	SYSTEM_NONPACKAGED_DATA_DIRECTORY, 
	SYSTEM_NONPACKAGED_FONTS_DIRECTORY, 
	SYSTEM_NONPACKAGED_SOUNDS_DIRECTORY, 
	SYSTEM_NONPACKAGED_DOCUMENTATION_DIRECTORY, 
	SYSTEM_NONPACKAGED_LIB_DIRECTORY, 
	SYSTEM_NONPACKAGED_HEADERS_DIRECTORY, 
	SYSTEM_NONPACKAGED_DEVELOP_DIRECTORY, 
	// User directories. These are interpreted in the context of the user making the find_directory call.
	USER_DIRECTORY                             = 3000, 
	USER_CONFIG_DIRECTORY, 
	USER_ADDONS_DIRECTORY, 
	USER_BOOT_DIRECTORY, 
	USER_FONTS_DIRECTORY, 
	USER_LIB_DIRECTORY, 
	USER_SETTINGS_DIRECTORY, 
	USER_DESKBAR_DIRECTORY, 
	USER_PRINTERS_DIRECTORY, 
	USER_TRANSLATORS_DIRECTORY, 
	USER_MEDIA_NODES_DIRECTORY, 
	USER_SOUNDS_DIRECTORY, 
	USER_DATA_DIRECTORY, 
	USER_CACHE_DIRECTORY, 
	USER_PACKAGES_DIRECTORY, 
	USER_HEADERS_DIRECTORY, 
	USER_NONPACKAGED_DIRECTORY, 
	USER_NONPACKAGED_ADDONS_DIRECTORY, 
	USER_NONPACKAGED_TRANSLATORS_DIRECTORY, 
	USER_NONPACKAGED_MEDIA_NODES_DIRECTORY, 
	USER_NONPACKAGED_BIN_DIRECTORY, 
	USER_NONPACKAGED_DATA_DIRECTORY, 
	USER_NONPACKAGED_FONTS_DIRECTORY, 
	USER_NONPACKAGED_SOUNDS_DIRECTORY, 
	USER_NONPACKAGED_DOCUMENTATION_DIRECTORY, 
	USER_NONPACKAGED_LIB_DIRECTORY, 
	USER_NONPACKAGED_HEADERS_DIRECTORY, 
	USER_NONPACKAGED_DEVELOP_DIRECTORY, 
	USER_DEVELOP_DIRECTORY, 
	USER_DOCUMENTATION_DIRECTORY, 
	USER_SERVERS_DIRECTORY, 
	USER_APPS_DIRECTORY, 
	USER_BIN_DIRECTORY, 
	USER_PREFERENCES_DIRECTORY, 
	USER_ETC_DIRECTORY, 
	USER_LOG_DIRECTORY, 
	USER_SPOOL_DIRECTORY, 
	USER_VAR_DIRECTORY, 
	// Global directories
	APPS_DIRECTORY                             = 4000, 
	PREFERENCES_DIRECTORY, 
	UTILITIES_DIRECTORY, 
	PACKAGE_LINKS_DIRECTORY, 
	// Obsolete: Legacy BeOS definition to be phased out
	BEOS_DIRECTORY                             = 1000, 
	BEOS_SYSTEM_DIRECTORY, 
	BEOS_ADDONS_DIRECTORY, 
	BEOS_BOOT_DIRECTORY, 
	BEOS_FONTS_DIRECTORY, 
	BEOS_LIB_DIRECTORY, 
	BEOS_SERVERS_DIRECTORY, 
	BEOS_APPS_DIRECTORY, 
	BEOS_BIN_DIRECTORY, 
	BEOS_ETC_DIRECTORY, 
	BEOS_DOCUMENTATION_DIRECTORY, 
	BEOS_PREFERENCES_DIRECTORY, 
	BEOS_TRANSLATORS_DIRECTORY, 
	BEOS_MEDIA_NODES_DIRECTORY, 
	BEOS_SOUNDS_DIRECTORY, 
}
```

##### Related Procedures With Parameters

* [find\_directory](/core/sys/haiku/#find_directory)

### [find\_path\_flag ¶](#find_path_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L115)

```
find_path_flag :: enum u32 {
	CREATE_DIRECTORY        = 0, 
	CREATE_PARENT_DIRECTORY = 1, 
	EXISTING_ONLY           = 2, 
	// find_paths() only
	SYSTEM_ONLY             = 4, 
	USER_ONLY               = 5, 
}
```

### [find\_path\_flags ¶](#find_path_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L124)

```
find_path_flags :: distinct bit_set[find_path_flag; u32]
```

##### Related Procedures With Parameters

* [find\_path\_etc](/core/sys/haiku/#find_path_etc)
* [find\_path\_for\_path\_etc](/core/sys/haiku/#find_path_for_path_etc)
* [find\_paths\_etc](/core/sys/haiku/#find_paths_etc)

### [fsblkcnt\_t ¶](#fsblkcnt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L23)

```
fsblkcnt_t :: i64
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [set\_alarm](/core/sys/haiku/#set_alarm)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [real\_time\_clock\_usecs](/core/sys/haiku/#real_time_clock_usecs)
* [system\_time](/core/sys/haiku/#system_time)
* [system\_time\_nsecs](/core/sys/haiku/#system_time_nsecs)

### [fsfilcnt\_t ¶](#fsfilcnt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L24)

```
fsfilcnt_t :: i64
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [set\_alarm](/core/sys/haiku/#set_alarm)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [real\_time\_clock\_usecs](/core/sys/haiku/#real_time_clock_usecs)
* [system\_time](/core/sys/haiku/#system_time)
* [system\_time\_nsecs](/core/sys/haiku/#system_time_nsecs)

### [generic\_addr\_t ¶](#generic_addr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L12)

```
generic_addr_t :: uintptr
```

### [generic\_size\_t ¶](#generic_size_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L13)

```
generic_size_t :: uintptr
```

### [gid\_t ¶](#gid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L33)

```
gid_t :: u32
```

##### Related Procedures With Parameters

* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)

### [id\_t ¶](#id_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L30)

```
id_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [image\_id ¶](#image_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L54)

```
image_id :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [ino\_t ¶](#ino_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L26)

```
ino_t :: i64
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [set\_alarm](/core/sys/haiku/#set_alarm)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [real\_time\_clock\_usecs](/core/sys/haiku/#real_time_clock_usecs)
* [system\_time](/core/sys/haiku/#system_time)
* [system\_time\_nsecs](/core/sys/haiku/#system_time_nsecs)

### [key\_t ¶](#key_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L41)

```
key_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [mode\_t ¶](#mode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L34)

```
mode_t :: u32
```

##### Related Procedures With Parameters

* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)

### [nanotime\_t ¶](#nanotime_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L6)

```
nanotime_t :: i64
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [set\_alarm](/core/sys/haiku/#set_alarm)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [real\_time\_clock\_usecs](/core/sys/haiku/#real_time_clock_usecs)
* [system\_time](/core/sys/haiku/#system_time)
* [system\_time\_nsecs](/core/sys/haiku/#system_time_nsecs)

### [nlink\_t ¶](#nlink_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L36)

```
nlink_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [off\_t ¶](#off_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L25)

```
off_t :: i64
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [set\_alarm](/core/sys/haiku/#set_alarm)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [real\_time\_clock\_usecs](/core/sys/haiku/#real_time_clock_usecs)
* [system\_time](/core/sys/haiku/#system_time)
* [system\_time\_nsecs](/core/sys/haiku/#system_time_nsecs)

### [path\_base\_directory ¶](#path_base_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L126)

```
path_base_directory :: enum i32 {
	INSTALLATION_LOCATION_DIRECTORY, 
	ADD_ONS_DIRECTORY, 
	APPS_DIRECTORY, 
	BIN_DIRECTORY, 
	BOOT_DIRECTORY, 
	CACHE_DIRECTORY, 
	DATA_DIRECTORY, 
	DEVELOP_DIRECTORY, 
	DEVELOP_LIB_DIRECTORY, 
	DOCUMENTATION_DIRECTORY, 
	ETC_DIRECTORY, 
	FONTS_DIRECTORY, 
	HEADERS_DIRECTORY, 
	LIB_DIRECTORY, 
	LOG_DIRECTORY, 
	MEDIA_NODES_DIRECTORY, 
	PACKAGES_DIRECTORY, 
	PREFERENCES_DIRECTORY, 
	SERVERS_DIRECTORY, 
	SETTINGS_DIRECTORY, 
	SOUNDS_DIRECTORY, 
	SPOOL_DIRECTORY, 
	TRANSLATORS_DIRECTORY, 
	VAR_DIRECTORY, 
	// find_path() only
	IMAGE_PATH                      = 1000, 
	PACKAGE_PATH, 
}
```

##### Related Procedures With Parameters

* [find\_path](/core/sys/haiku/#find_path)
* [find\_path\_etc](/core/sys/haiku/#find_path_etc)
* [find\_path\_for\_path](/core/sys/haiku/#find_path_for_path)
* [find\_path\_for\_path\_etc](/core/sys/haiku/#find_path_for_path_etc)
* [find\_paths](/core/sys/haiku/#find_paths)
* [find\_paths\_etc](/core/sys/haiku/#find_paths_etc)

### [perform\_code ¶](#perform_code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L8)

```
perform_code :: u32
```

##### Related Procedures With Parameters

* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)

### [phys\_addr\_t ¶](#phys_addr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L10)

```
phys_addr_t :: uintptr
```

### [phys\_size\_t ¶](#phys_size_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L11)

```
phys_size_t :: uintptr
```

### [pid\_t ¶](#pid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L29)

```
pid_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [port\_flag ¶](#port_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L91)

```
port_flag :: enum u32 {
	USE_USER_MEMCPY   = 31, 
	// read the message, but don't remove it; kernel-only; memory must be locked
	PEEK_PORT_MESSAGE = 8, 
}
```

### [port\_flags ¶](#port_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L96)

```
port_flags :: distinct bit_set[port_flag; u32]
```

##### Related Procedures With Parameters

* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)

### [port\_id ¶](#port_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L16)

```
port_id :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [port\_info ¶](#port_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L82)

```
port_info :: struct {
	port:        i32,
	team:        i32,
	name:        [32]u8,
	capacity:    i32,
	// queue depth
	queue_count: i32,
	// # msgs waiting to be read
	total_count: i32,
}
```

### [pthread\_t ¶](#pthread_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L56)

```
pthread_t :: rawptr
```

##### Related Procedures With Parameters

* [area\_for](/core/sys/haiku/#area_for)
* [clone\_area](/core/sys/haiku/#clone_area)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_path](/core/sys/haiku/#find_path)
* [find\_path\_etc](/core/sys/haiku/#find_path_etc)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [on\_exit\_thread](/core/sys/haiku/#on_exit_thread)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [send\_data](/core/sys/haiku/#send_data)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [current\_image\_symbol](/core/sys/haiku/#current_image_symbol)

### [sem\_id ¶](#sem_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L17)

```
sem_id :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [sem\_info ¶](#sem_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L118)

```
sem_info :: struct {
	sem:           i32,
	team:          i32,
	name:          [32]u8,
	count:         i32,
	latest_holder: i32,
}
```

### [semaphore\_flag ¶](#semaphore_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L126)

```
semaphore_flag :: enum u32 {
	CAN_INTERRUPT           = 0, // acquisition of the semaphore can be interrupted (system use only)
	CHECK_PERMISSION        = 2, // ownership will be checked (system use only)
	KILL_CAN_INTERRUPT      = 5, // acquisition of the semaphore can be interrupted by SIGKILL[THR], even if not CAN_INTERRUPT (system use only)
	// release_sem_etc() only flags
	DO_NOT_RESCHEDULE       = 1, // thread is not rescheduled
	RELEASE_ALL             = 3, // all waiting threads will be woken up, count will be zeroed
	RELEASE_IF_WAITING_ONLY = 4, // release count only if there are any threads waiting
}
```

### [semaphore\_flags ¶](#semaphore_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L136)

```
semaphore_flags :: distinct bit_set[semaphore_flag; u32]
```

##### Related Procedures With Parameters

* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)

### [sig\_atomic\_t ¶](#sig_atomic_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L51)

```
sig_atomic_t :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [sigset\_t ¶](#sigset_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L52)

```
sigset_t :: u64
```

### [status\_t ¶](#status_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L4)

```
status_t :: Errno
```

##### Related Procedures With Parameters

* [exit\_thread](/core/sys/haiku/#exit_thread)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)



##### Related Procedures With Returns

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [close\_port](/core/sys/haiku/#close_port)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [find\_directory](/core/sys/haiku/#find_directory)
* [find\_path](/core/sys/haiku/#find_path)
* [find\_path\_etc](/core/sys/haiku/#find_path_etc)
* [find\_path\_for\_path](/core/sys/haiku/#find_path_for_path)
* [find\_path\_for\_path\_etc](/core/sys/haiku/#find_path_for_path_etc)
* [find\_paths](/core/sys/haiku/#find_paths)
* [find\_paths\_etc](/core/sys/haiku/#find_paths_etc)
* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [get\_system\_info](/core/sys/haiku/#get_system_info)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [on\_exit\_thread](/core/sys/haiku/#on_exit_thread)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze](/core/sys/haiku/#snooze)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)

### [system\_info ¶](#system_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L321)

```
system_info :: struct {
	boot_time:         i64,
	// time of boot (usecs since 1/1/1970)
	cpu_count:         u32,
	// number of cpus
	max_pages:         u64,
	// total # of accessible pages
	used_pages:        u64,
	// # of accessible pages in use
	cached_pages:      u64,
	block_cache_pages: u64,
	ignored_pages:     u64,
	// # of ignored/inaccessible pages
	needed_memory:     u64,
	free_memory:       u64,
	max_swap_pages:    u64,
	free_swap_pages:   u64,
	page_faults:       u32,
	// # of page faults
	max_sems:          u32,
	used_sems:         u32,
	max_ports:         u32,
	used_ports:        u32,
	max_threads:       u32,
	used_threads:      u32,
	max_teams:         u32,
	used_teams:        u32,
	kernel_name:       [256]u8,
	kernel_build_date: [32]u8,
	kernel_build_time: [32]u8,
	kernel_version:    i64,
	abi:               u32,
}
```

##### Related Procedures With Parameters

* [get\_system\_info](/core/sys/haiku/#get_system_info)

### [team\_id ¶](#team_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L18)

```
team_id :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [team\_info ¶](#team_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L156)

```
team_info :: struct {
	team:                i32,
	thread_count:        i32,
	image_count:         i32,
	area_count:          i32,
	debugger_nub_thread: i32,
	debugger_nub_port:   i32,
	argc:                i32,
	args:                [64]u8,
	uid:                 u32,
	gid:                 u32,
	// Haiku R1 extensions
	real_uid:            u32,
	real_gid:            u32,
	group_id:            i32,
	session_id:          i32,
	parent:              i32,
	name:                [32]u8,
	start_time:          i64,
}
```

### [team\_usage\_info ¶](#team_usage_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L181)

```
team_usage_info :: struct {
	user_time:   i64,
	kernel_time: i64,
}
```

### [team\_usage\_who ¶](#team_usage_who) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L186)

```
team_usage_who :: enum i32 {
	SELF     = 0, 
	CHILDREN = -1, 
}
```

### [thread\_func ¶](#thread_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L242)

```
thread_func :: proc "c" (rawptr) -> Errno
```

### [thread\_id ¶](#thread_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L19)

```
thread_id :: i32
```

##### Related Procedures With Parameters

* [acquire\_sem](/core/sys/haiku/#acquire_sem)
* [acquire\_sem\_etc](/core/sys/haiku/#acquire_sem_etc)
* [clone\_area](/core/sys/haiku/#clone_area)
* [close\_port](/core/sys/haiku/#close_port)
* [create\_port](/core/sys/haiku/#create_port)
* [create\_sem](/core/sys/haiku/#create_sem)
* [delete\_area](/core/sys/haiku/#delete_area)
* [delete\_port](/core/sys/haiku/#delete_port)
* [delete\_sem](/core/sys/haiku/#delete_sem)
* [disable\_debugger](/core/sys/haiku/#disable_debugger)
* [find\_directory](/core/sys/haiku/#find_directory)
* [get\_sem\_count](/core/sys/haiku/#get_sem_count)
* [has\_data](/core/sys/haiku/#has_data)
* [kill\_team](/core/sys/haiku/#kill_team)
* [kill\_thread](/core/sys/haiku/#kill_thread)
* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)
* [receive\_data](/core/sys/haiku/#receive_data)
* [release\_sem](/core/sys/haiku/#release_sem)
* [release\_sem\_etc](/core/sys/haiku/#release_sem_etc)
* [rename\_thread](/core/sys/haiku/#rename_thread)
* [resize\_area](/core/sys/haiku/#resize_area)
* [resume\_thread](/core/sys/haiku/#resume_thread)
* [send\_data](/core/sys/haiku/#send_data)
* [set\_area\_protection](/core/sys/haiku/#set_area_protection)
* [set\_port\_owner](/core/sys/haiku/#set_port_owner)
* [set\_sem\_owner](/core/sys/haiku/#set_sem_owner)
* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [snooze\_until](/core/sys/haiku/#snooze_until)
* [suspend\_thread](/core/sys/haiku/#suspend_thread)
* [switch\_sem](/core/sys/haiku/#switch_sem)
* [switch\_sem\_etc](/core/sys/haiku/#switch_sem_etc)
* [wait\_for\_thread](/core/sys/haiku/#wait_for_thread)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)
* [write\_port](/core/sys/haiku/#write_port)
* [write\_port\_etc](/core/sys/haiku/#write_port_etc)



##### Related Procedures With Returns

* [area\_for](/core/sys/haiku/#area_for)
* [create\_area](/core/sys/haiku/#create_area)
* [find\_area](/core/sys/haiku/#find_area)
* [find\_port](/core/sys/haiku/#find_port)
* [find\_thread](/core/sys/haiku/#find_thread)
* [get\_pthread\_thread\_id](/core/sys/haiku/#get_pthread_thread_id)
* [is\_computer\_on](/core/sys/haiku/#is_computer_on)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

### [thread\_info ¶](#thread_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L212)

```
thread_info :: struct {
	thread:      i32,
	team:        i32,
	name:        [32]u8,
	state:       thread_state,
	priority:    thread_priority,
	sem:         i32,
	user_time:   i64,
	kernel_time: i64,
	stack_base:  rawptr,
	stack_end:   rawptr,
}
```

### [thread\_priority ¶](#thread_priority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L225)

```
thread_priority :: enum i32 {
	IDLE_PRIORITY              = 0, 
	LOWEST_ACTIVE_PRIORITY     = 1, 
	LOW_PRIORITY               = 5, 
	NORMAL_PRIORITY            = 10, 
	DISPLAY_PRIORITY           = 15, 
	URGENT_DISPLAY_PRIORITY    = 20, 
	REAL_TIME_DISPLAY_PRIORITY = 100, 
	URGENT_PRIORITY            = 110, 
	REAL_TIME_PRIORITY         = 120, 
}
```

##### Related Procedures With Parameters

* [set\_thread\_priority](/core/sys/haiku/#set_thread_priority)
* [spawn\_thread](/core/sys/haiku/#spawn_thread)

##### Related Constants

* [FIRST\_REAL\_TIME\_PRIORITY](/core/sys/haiku/#FIRST_REAL_TIME_PRIORITY)

### [thread\_state ¶](#thread_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L203)

```
thread_state :: enum i32 {
	RUNNING   = 1, 
	READY, 
	RECEIVING, 
	ASLEEP, 
	SUSPENDED, 
	WAITING, 
}
```

### [time\_t ¶](#time_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L45)

```
time_t :: int
```

##### Related Procedures With Returns

* [port\_buffer\_size](/core/sys/haiku/#port_buffer_size)
* [port\_buffer\_size\_etc](/core/sys/haiku/#port_buffer_size_etc)
* [port\_count](/core/sys/haiku/#port_count)
* [read\_port](/core/sys/haiku/#read_port)
* [read\_port\_etc](/core/sys/haiku/#read_port_etc)

### [timespec ¶](#timespec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L46)

```
timespec :: struct {
	tv_sec:  int,
	tv_nsec: int,
}
```

### [topology\_level\_type ¶](#topology_level_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L360)

```
topology_level_type :: enum i32 {
	UNKNOWN, 
	ROOT, 
	SMT, 
	CORE, 
	PACKAGE, 
}
```

### [type\_code ¶](#type_code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L7)

```
type_code :: u32
```

##### Related Procedures With Parameters

* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)

### [uid\_t ¶](#uid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L32)

```
uid_t :: u32
```

##### Related Procedures With Parameters

* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)

### [umode\_t ¶](#umode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin#L35)

```
umode_t :: u32
```

##### Related Procedures With Parameters

* [get\_cpu\_topology\_info](/core/sys/haiku/#get_cpu_topology_info)
* [get\_cpuid](/core/sys/haiku/#get_cpuid)
* [snooze\_etc](/core/sys/haiku/#snooze_etc)
* [wait\_for\_thread\_etc](/core/sys/haiku/#wait_for_thread_etc)

## Constants

### [APP\_ERROR\_BASE ¶](#APP_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L14)

```
APP_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x2000
```

### [APP\_IMAGE\_SYMBOL ¶](#APP_IMAGE_SYMBOL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L158)

```
APP_IMAGE_SYMBOL :: rawptr(addr_t(0))
```

 

value that can be used instead of a pointer to a symbol in the program image

### [CURRENT\_TEAM ¶](#CURRENT_TEAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L178)

```
CURRENT_TEAM :: 0
```

### [DEVICE\_ERROR\_BASE ¶](#DEVICE_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L23)

```
DEVICE_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0xA000
```

### [ERRORS\_END ¶](#ERRORS_END) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L26)

```
ERRORS_END: i32 : GENERAL_ERROR_BASE + 0xFFFF
```

 

Developer-defined errors start at (ERRORS\_END+1)

### [FILE\_NAME\_LENGTH ¶](#FILE_NAME_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L13)

```
FILE_NAME_LENGTH :: NAME_MAX
```

### [FIRST\_REAL\_TIME\_PRIORITY ¶](#FIRST_REAL_TIME_PRIORITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L237)

```
FIRST_REAL_TIME_PRIORITY :: thread_priority.REAL_TIME_PRIORITY
```

### [GENERAL\_ERROR\_BASE ¶](#GENERAL_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L12)

```
GENERAL_ERROR_BASE: i32 : min(i32)
```

 

Error baselines

### [INTERFACE\_ERROR\_BASE ¶](#INTERFACE_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L15)

```
INTERFACE_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x3000
```

### [MAIL\_ERROR\_BASE ¶](#MAIL_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L21)

```
MAIL_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x8000
```

### [MAXPATHLEN ¶](#MAXPATHLEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L11)

```
MAXPATHLEN :: PATH_MAX
```

### [MEDIA\_ERROR\_BASE ¶](#MEDIA_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L16)

```
MEDIA_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x4000
```

### [MIDI\_ERROR\_BASE ¶](#MIDI_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L18)

```
MIDI_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x5000
```

### [NAME\_MAX ¶](#NAME_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L10)

```
NAME_MAX :: 256
```

### [OS\_ERROR\_BASE ¶](#OS_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L13)

```
OS_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x1000
```

### [OS\_NAME\_LENGTH ¶](#OS_NAME_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L15)

```
OS_NAME_LENGTH :: 32
```

### [PATH\_MAX ¶](#PATH_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L9)

```
PATH_MAX :: 1024
```

### [PATH\_NAME\_LENGTH ¶](#PATH_NAME_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L14)

```
PATH_NAME_LENGTH :: MAXPATHLEN
```

### [POSIX\_ERROR\_BASE ¶](#POSIX_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L20)

```
POSIX_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x7000
```

### [POSIX\_ERROR\_FACTOR ¶](#POSIX_ERROR_FACTOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L9)

```
POSIX_ERROR_FACTOR :: posix._POSIX_ERROR_FACTOR
```

### [PRINT\_ERROR\_BASE ¶](#PRINT_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L22)

```
PRINT_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x9000
```

### [STORAGE\_ERROR\_BASE ¶](#STORAGE_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L19)

```
STORAGE_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x6000
```

### [SYSTEM\_TEAM ¶](#SYSTEM_TEAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L179)

```
SYSTEM_TEAM :: 1
```

### [SYSTEM\_TIMEBASE ¶](#SYSTEM_TIMEBASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L240)

```
SYSTEM_TIMEBASE :: 0
```

 

time base for snooze\_\*(), compatible with the clockid\_t constants defined in <time.h>

### [TRANSLATION\_ERROR\_BASE ¶](#TRANSLATION_ERROR_BASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L17)

```
TRANSLATION_ERROR_BASE: i32 : GENERAL_ERROR_BASE + 0x4800
```

### [USE\_POSITIVE\_POSIX\_ERRORS ¶](#USE_POSITIVE_POSIX_ERRORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin#L8)

```
USE_POSITIVE_POSIX_ERRORS :: posix._HAIKU_USE_POSITIVE_POSIX_ERRORS
```

## Variables

This section is empty.

## Procedures

### [acquire\_sem ¶](#acquire_sem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L142)

```
acquire_sem :: proc "c" (id: i32) -> Errno ---
```

### [acquire\_sem\_etc ¶](#acquire_sem_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L143)

```
acquire_sem_etc :: proc "c" (id: i32, count: i32, flags: semaphore_flags, timeout: i64) -> Errno ---
```

### [area\_for ¶](#area_for) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L72)

```
area_for :: proc "c" (address: rawptr) -> i32 ---
```

### [clone\_area ¶](#clone_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L70)

```
clone_area :: proc "c" (name: cstring, destAddress: ^rawptr, addressSpec: address_spec, protection: area_protection_flags, source: i32) -> i32 ---
```

### [close\_port ¶](#close_port) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L106)

```
close_port :: proc "c" (port: i32) -> Errno ---
```

### [create\_area ¶](#create_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L69)

```
create_area :: proc "c" (
	name:         cstring, 
	startAddress: ^rawptr, 
	addressSpec:  address_spec, 
	size:         uint, 
	lock:         area_locking, 
	protection:   area_protection_flags, 
) -> i32 ---
```

### [create\_port ¶](#create_port) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L100)

```
create_port :: proc "c" (capacity: i32, name: cstring) -> i32 ---
```

### [create\_sem ¶](#create_sem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L140)

```
create_sem :: proc "c" (count: i32, name: cstring) -> i32 ---
```

### [current\_image\_symbol ¶](#current_image_symbol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L160)

```
current_image_symbol :: proc "contextless" () -> rawptr {…}
```

 

pointer to a symbol in the callers image (same as B\_CURRENT\_IMAGE\_SYMBOL)

### [debugger ¶](#debugger) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L301)

```
debugger :: proc "c" (message: cstring) ---
```

### [delete\_area ¶](#delete_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L73)

```
delete_area :: proc "c" (id: i32) -> Errno ---
```

### [delete\_port ¶](#delete_port) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L107)

```
delete_port :: proc "c" (port: i32) -> Errno ---
```

### [delete\_sem ¶](#delete_sem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L141)

```
delete_sem :: proc "c" (id: i32) -> Errno ---
```

### [disable\_debugger ¶](#disable_debugger) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L310)

```
disable_debugger :: proc "c" (state: i32) -> i32 ---
```

 

calling this function with a non-zero value will cause your thread
to receive signals for any exceptional conditions that occur (i.e.
you'll get SIGSEGV for data access exceptions, SIGFPE for floating
point errors, SIGILL for illegal instructions, etc).

to re-enable the default debugger pass a zero.

### [exit\_thread ¶](#exit_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L252)

```
exit_thread :: proc "c" (status: Errno) ---
```

### [find\_area ¶](#find_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L71)

```
find_area :: proc "c" (name: cstring) -> i32 ---
```

### [find\_directory ¶](#find_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L164)

```
find_directory :: proc "c" (which: directory_which, volume: i32, createIt: bool, pathString: [^]u8, length: i32) -> Errno ---
```

### [find\_path ¶](#find_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L165)

```
find_path :: proc "c" (codePointer: rawptr, baseDirectory: path_base_directory, subPath: cstring, pathBuffer: [^]u8, bufferSize: uint) -> Errno ---
```

### [find\_path\_etc ¶](#find_path_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L166)

```
find_path_etc :: proc "c" (
	codePointer:   rawptr, 
	dependency:    cstring, 
	architecture:  cstring, 
	baseDirectory: path_base_directory, 
	subPath:       cstring, 
	flags:         find_path_flags, 
	pathBuffer:    [^]u8, 
	bufferSize:    uint, 
) -> Errno ---
```

### [find\_path\_for\_path ¶](#find_path_for_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L167)

```
find_path_for_path :: proc "c" (path: cstring, baseDirectory: path_base_directory, subPath: cstring, pathBuffer: [^]u8, bufferSize: uint) -> Errno ---
```

### [find\_path\_for\_path\_etc ¶](#find_path_for_path_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L168)

```
find_path_for_path_etc :: proc "c" (
	path:          cstring, 
	dependency:    cstring, 
	architecture:  cstring, 
	baseDirectory: path_base_directory, 
	subPath:       cstring, 
	flags:         find_path_flags, 
	pathBuffer:    [^]u8, 
	bufferSize:    uint, 
) -> Errno ---
```

### [find\_paths ¶](#find_paths) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L169)

```
find_paths :: proc "c" (baseDirectory: path_base_directory, subPath: cstring, _paths: ^[^][^]u8, _pathCount: ^uint) -> Errno ---
```

### [find\_paths\_etc ¶](#find_paths_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin#L170)

```
find_paths_etc :: proc "c" (
	architecture:  cstring, 
	baseDirectory: path_base_directory, 
	subPath:       cstring, 
	flags:         find_path_flags, 
	_paths:        ^[^][^]u8, 
	_pathCount:    ^uint, 
) -> Errno ---
```

### [find\_port ¶](#find_port) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L101)

```
find_port :: proc "c" (name: cstring) -> i32 ---
```

### [find\_thread ¶](#find_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L257)

```
find_thread :: proc "c" (name: cstring) -> i32 ---
```

### [get\_cpu\_topology\_info ¶](#get_cpu_topology_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L478)

```
get_cpu_topology_info :: proc "c" (topologyInfos: [^]cpu_topology_node_info, topologyInfoCount: ^u32) -> Errno ---
```

### [get\_cpuid ¶](#get_cpuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L481)

```
get_cpuid :: proc "c" (info: ^cpuid_info, eaxRegister: u32, cpuNum: u32) -> Errno ---
```

### [get\_pthread\_thread\_id ¶](#get_pthread_thread_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L268)

```
get_pthread_thread_id :: proc "c" (thread: rawptr) -> i32 ---
```

 

bridge to the pthread API

### [get\_sem\_count ¶](#get_sem_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L148)

```
get_sem_count :: proc "c" (id: i32, threadCount: ^i32) -> Errno ---
```

### [get\_system\_info ¶](#get_system_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L476)

```
get_system_info :: proc "c" (info: ^system_info) -> Errno ---
```

### [has\_data ¶](#has_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L260)

```
has_data :: proc "c" (thread: i32) -> bool ---
```

### [is\_computer\_on ¶](#is_computer_on) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L484)

```
is_computer_on :: proc "c" () -> i32 ---
```

### [is\_computer\_on\_fire ¶](#is_computer_on_fire) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L485)

```
is_computer_on_fire :: proc "c" () -> f64 ---
```

### [kill\_team ¶](#kill_team) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L195)

```
kill_team :: proc "c" (team: i32) -> Errno ---
```

 

see also: send\_signal()

### [kill\_thread ¶](#kill_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L247)

```
kill_thread :: proc "c" (thread: i32) -> Errno ---
```

### [on\_exit\_thread ¶](#on_exit_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L256)

```
on_exit_thread :: proc "c" (callback: proc "c" (rawptr), data: rawptr) -> Errno ---
```

### [port\_buffer\_size ¶](#port_buffer_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L108)

```
port_buffer_size :: proc "c" (port: i32) -> int ---
```

### [port\_buffer\_size\_etc ¶](#port_buffer_size_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L109)

```
port_buffer_size_etc :: proc "c" (port: i32, flags: port_flags, timeout: i64) -> int ---
```

### [port\_count ¶](#port_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L110)

```
port_count :: proc "c" (port: i32) -> int ---
```

### [read\_port ¶](#read_port) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L102)

```
read_port :: proc "c" (port: i32, code: ^i32, buffer: rawptr, bufferSize: uint) -> int ---
```

### [read\_port\_etc ¶](#read_port_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L103)

```
read_port_etc :: proc "c" (
	port:       i32, 
	code:       ^i32, 
	buffer:     rawptr, 
	bufferSize: uint, 
	flags:      port_flags, 
	timeout:    i64, 
) -> int ---
```

### [real\_time\_clock ¶](#real_time_clock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L275)

```
real_time_clock :: proc "c" () -> uint ---
```

### [real\_time\_clock\_usecs ¶](#real_time_clock_usecs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L277)

```
real_time_clock_usecs :: proc "c" () -> i64 ---
```

### [receive\_data ¶](#receive_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L259)

```
receive_data :: proc "c" (sender: ^i32, buffer: rawptr, bufferSize: uint) -> i32 ---
```

### [release\_sem ¶](#release_sem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L144)

```
release_sem :: proc "c" (id: i32) -> Errno ---
```

### [release\_sem\_etc ¶](#release_sem_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L145)

```
release_sem_etc :: proc "c" (id: i32, count: i32, flags: semaphore_flags) -> Errno ---
```

### [rename\_thread ¶](#rename_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L250)

```
rename_thread :: proc "c" (thread: i32, newName: cstring) -> Errno ---
```

### [resize\_area ¶](#resize_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L74)

```
resize_area :: proc "c" (id: i32, newSize: uint) -> Errno ---
```

### [resume\_thread ¶](#resume_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L248)

```
resume_thread :: proc "c" (thread: i32) -> Errno ---
```

### [send\_data ¶](#send_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L258)

```
send_data :: proc "c" (thread: i32, code: i32, buffer: rawptr, bufferSize: uint) -> Errno ---
```

### [set\_alarm ¶](#set_alarm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L294)

```
set_alarm :: proc "c" (_when: i64, mode: alarm_mode) -> i64 ---
```

### [set\_area\_protection ¶](#set_area_protection) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L75)

```
set_area_protection :: proc "c" (id: i32, newProtection: area_protection_flags) -> Errno ---
```

### [set\_port\_owner ¶](#set_port_owner) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L111)

```
set_port_owner :: proc "c" (port: i32, team: i32) -> Errno ---
```

### [set\_real\_time\_clock ¶](#set_real_time_clock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L276)

```
set_real_time_clock :: proc "c" (secsSinceJan1st1970: uint) ---
```

### [set\_sem\_owner ¶](#set_sem_owner) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L149)

```
set_sem_owner :: proc "c" (id: i32, team: i32) -> Errno ---
```

### [set\_thread\_priority ¶](#set_thread_priority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L251)

```
set_thread_priority :: proc "c" (thread: i32, newPriority: thread_priority) -> Errno ---
```

### [sigtimedwait ¶](#sigtimedwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L497)

```
sigtimedwait :: proc "c" (set: ^posix.sigset_t, info: ^posix.siginfo_t, timeout: ^libc.timespec) -> posix.result ---
```

 

Wait for queued signals.

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigtimedwait.html)

### [snooze ¶](#snooze) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L261)

```
snooze :: proc "c" (amount: i64) -> Errno ---
```

### [snooze\_etc ¶](#snooze_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L263)

```
snooze_etc :: proc "c" (amount: i64, timeBase: i32, flags: u32) -> Errno ---
```

 

FIXME: Find and define those flags.

### [snooze\_until ¶](#snooze_until) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L264)

```
snooze_until :: proc "c" (time: i64, timeBase: i32) -> Errno ---
```

### [spawn\_thread ¶](#spawn_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L246)

```
spawn_thread :: proc "c" (thread_func, name: cstring, priority: thread_priority, data: rawptr) -> i32 ---
```

### [suspend\_thread ¶](#suspend_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L249)

```
suspend_thread :: proc "c" (thread: i32) -> Errno ---
```

### [switch\_sem ¶](#switch_sem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L146)

```
switch_sem :: proc "c" (semToBeReleased: i32) -> Errno ---
```

### [switch\_sem\_etc ¶](#switch_sem_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L147)

```
switch_sem_etc :: proc "c" (semToBeReleased: i32, id: i32, count: i32, flags: semaphore_flags, timeout: i64) -> Errno ---
```

### [system\_time ¶](#system_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L279)

```
system_time :: proc "c" () -> i64 ---
```

 

time since booting in microseconds

### [system\_time\_nsecs ¶](#system_time_nsecs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L281)

```
system_time_nsecs :: proc "c" () -> i64 ---
```

 

time since booting in nanoseconds

### [wait\_for\_thread ¶](#wait_for_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L253)

```
wait_for_thread :: proc "c" (thread: i32, returnValue: ^Errno) -> Errno ---
```

### [wait\_for\_thread\_etc ¶](#wait_for_thread_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L255)

```
wait_for_thread_etc :: proc "c" (id: i32, flags: u32, timeout: i64, _returnCode: ^Errno) -> Errno ---
```

 

FIXME: Find and define those flags.

### [write\_port ¶](#write_port) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L104)

```
write_port :: proc "c" (port: i32, code: i32, buffer: rawptr, bufferSize: uint) -> Errno ---
```

### [write\_port\_etc ¶](#write_port_etc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin#L105)

```
write_port_etc :: proc "c" (
	port:       i32, 
	code:       i32, 
	buffer:     rawptr, 
	bufferSize: uint, 
	flags:      port_flags, 
	timeout:    i64, 
) -> Errno ---
```

## Procedure Groups

This section is empty.

## Source Files

* [errno.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/errno.odin)
* [find\_directory.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/find_directory.odin)
* [os.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/os.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/haiku/types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.569366900 +0000 UTC`

* [Types](#pkg-Types)
  + [Errno](#Errno)
  + [addr\_t](#addr_t)
  + [address\_spec](#address_spec)
  + [alarm\_mode](#alarm_mode)
  + [area\_id](#area_id)
  + [area\_info](#area_info)
  + [area\_locking](#area_locking)
  + [area\_protection\_flag](#area_protection_flag)
  + [area\_protection\_flags](#area_protection_flags)
  + [bigtime\_t](#bigtime_t)
  + [blkcnt\_t](#blkcnt_t)
  + [blksize\_t](#blksize_t)
  + [caddr\_t](#caddr_t)
  + [clockid\_t](#clockid_t)
  + [cnt\_t](#cnt_t)
  + [cpu\_info](#cpu_info)
  + [cpu\_platform](#cpu_platform)
  + [cpu\_topology\_node\_info](#cpu_topology_node_info)
  + [cpu\_vendor](#cpu_vendor)
  + [cpuid\_info](#cpuid_info)
  + [dev\_t](#dev_t)
  + [directory\_which](#directory_which)
  + [find\_path\_flag](#find_path_flag)
  + [find\_path\_flags](#find_path_flags)
  + [fsblkcnt\_t](#fsblkcnt_t)
  + [fsfilcnt\_t](#fsfilcnt_t)
  + [generic\_addr\_t](#generic_addr_t)
  + [generic\_size\_t](#generic_size_t)
  + [gid\_t](#gid_t)
  + [id\_t](#id_t)
  + [image\_id](#image_id)
  + [ino\_t](#ino_t)
  + [key\_t](#key_t)
  + [mode\_t](#mode_t)
  + [nanotime\_t](#nanotime_t)
  + [nlink\_t](#nlink_t)
  + [off\_t](#off_t)
  + [path\_base\_directory](#path_base_directory)
  + [perform\_code](#perform_code)
  + [phys\_addr\_t](#phys_addr_t)
  + [phys\_size\_t](#phys_size_t)
  + [pid\_t](#pid_t)
  + [port\_flag](#port_flag)
  + [port\_flags](#port_flags)
  + [port\_id](#port_id)
  + [port\_info](#port_info)
  + [pthread\_t](#pthread_t)
  + [sem\_id](#sem_id)
  + [sem\_info](#sem_info)
  + [semaphore\_flag](#semaphore_flag)
  + [semaphore\_flags](#semaphore_flags)
  + [sig\_atomic\_t](#sig_atomic_t)
  + [sigset\_t](#sigset_t)
  + [status\_t](#status_t)
  + [system\_info](#system_info)
  + [team\_id](#team_id)
  + [team\_info](#team_info)
  + [team\_usage\_info](#team_usage_info)
  + [team\_usage\_who](#team_usage_who)
  + [thread\_func](#thread_func)
  + [thread\_id](#thread_id)
  + [thread\_info](#thread_info)
  + [thread\_priority](#thread_priority)
  + [thread\_state](#thread_state)
  + [time\_t](#time_t)
  + [timespec](#timespec)
  + [topology\_level\_type](#topology_level_type)
  + [type\_code](#type_code)
  + [uid\_t](#uid_t)
  + [umode\_t](#umode_t)
* [Constants](#pkg-Constants)
  + [APP\_ERROR\_BASE](#APP_ERROR_BASE)
  + [APP\_IMAGE\_SYMBOL](#APP_IMAGE_SYMBOL)
  + [CURRENT\_TEAM](#CURRENT_TEAM)
  + [DEVICE\_ERROR\_BASE](#DEVICE_ERROR_BASE)
  + [ERRORS\_END](#ERRORS_END)
  + [FILE\_NAME\_LENGTH](#FILE_NAME_LENGTH)
  + [FIRST\_REAL\_TIME\_PRIORITY](#FIRST_REAL_TIME_PRIORITY)
  + [GENERAL\_ERROR\_BASE](#GENERAL_ERROR_BASE)
  + [INTERFACE\_ERROR\_BASE](#INTERFACE_ERROR_BASE)
  + [MAIL\_ERROR\_BASE](#MAIL_ERROR_BASE)
  + [MAXPATHLEN](#MAXPATHLEN)
  + [MEDIA\_ERROR\_BASE](#MEDIA_ERROR_BASE)
  + [MIDI\_ERROR\_BASE](#MIDI_ERROR_BASE)
  + [NAME\_MAX](#NAME_MAX)
  + [OS\_ERROR\_BASE](#OS_ERROR_BASE)
  + [OS\_NAME\_LENGTH](#OS_NAME_LENGTH)
  + [PATH\_MAX](#PATH_MAX)
  + [PATH\_NAME\_LENGTH](#PATH_NAME_LENGTH)
  + [POSIX\_ERROR\_BASE](#POSIX_ERROR_BASE)
  + [POSIX\_ERROR\_FACTOR](#POSIX_ERROR_FACTOR)
  + [PRINT\_ERROR\_BASE](#PRINT_ERROR_BASE)
  + [STORAGE\_ERROR\_BASE](#STORAGE_ERROR_BASE)
  + [SYSTEM\_TEAM](#SYSTEM_TEAM)
  + [SYSTEM\_TIMEBASE](#SYSTEM_TIMEBASE)
  + [TRANSLATION\_ERROR\_BASE](#TRANSLATION_ERROR_BASE)
  + [USE\_POSITIVE\_POSIX\_ERRORS](#USE_POSITIVE_POSIX_ERRORS)
* [Procedures](#pkg-Procedures)
  + [acquire\_sem](#acquire_sem)
  + [acquire\_sem\_etc](#acquire_sem_etc)
  + [area\_for](#area_for)
  + [clone\_area](#clone_area)
  + [close\_port](#close_port)
  + [create\_area](#create_area)
  + [create\_port](#create_port)
  + [create\_sem](#create_sem)
  + [current\_image\_symbol](#current_image_symbol)
  + [debugger](#debugger)
  + [delete\_area](#delete_area)
  + [delete\_port](#delete_port)
  + [delete\_sem](#delete_sem)
  + [disable\_debugger](#disable_debugger)
  + [exit\_thread](#exit_thread)
  + [find\_area](#find_area)
  + [find\_directory](#find_directory)
  + [find\_path](#find_path)
  + [find\_path\_etc](#find_path_etc)
  + [find\_path\_for\_path](#find_path_for_path)
  + [find\_path\_for\_path\_etc](#find_path_for_path_etc)
  + [find\_paths](#find_paths)
  + [find\_paths\_etc](#find_paths_etc)
  + [find\_port](#find_port)
  + [find\_thread](#find_thread)
  + [get\_cpu\_topology\_info](#get_cpu_topology_info)
  + [get\_cpuid](#get_cpuid)
  + [get\_pthread\_thread\_id](#get_pthread_thread_id)
  + [get\_sem\_count](#get_sem_count)
  + [get\_system\_info](#get_system_info)
  + [has\_data](#has_data)
  + [is\_computer\_on](#is_computer_on)
  + [is\_computer\_on\_fire](#is_computer_on_fire)
  + [kill\_team](#kill_team)
  + [kill\_thread](#kill_thread)
  + [on\_exit\_thread](#on_exit_thread)
  + [port\_buffer\_size](#port_buffer_size)
  + [port\_buffer\_size\_etc](#port_buffer_size_etc)
  + [port\_count](#port_count)
  + [read\_port](#read_port)
  + [read\_port\_etc](#read_port_etc)
  + [real\_time\_clock](#real_time_clock)
  + [real\_time\_clock\_usecs](#real_time_clock_usecs)
  + [receive\_data](#receive_data)
  + [release\_sem](#release_sem)
  + [release\_sem\_etc](#release_sem_etc)
  + [rename\_thread](#rename_thread)
  + [resize\_area](#resize_area)
  + [resume\_thread](#resume_thread)
  + [send\_data](#send_data)
  + [set\_alarm](#set_alarm)
  + [set\_area\_protection](#set_area_protection)
  + [set\_port\_owner](#set_port_owner)
  + [set\_real\_time\_clock](#set_real_time_clock)
  + [set\_sem\_owner](#set_sem_owner)
  + [set\_thread\_priority](#set_thread_priority)
  + [sigtimedwait](#sigtimedwait)
  + [snooze](#snooze)
  + [snooze\_etc](#snooze_etc)
  + [snooze\_until](#snooze_until)
  + [spawn\_thread](#spawn_thread)
  + [suspend\_thread](#suspend_thread)
  + [switch\_sem](#switch_sem)
  + [switch\_sem\_etc](#switch_sem_etc)
  + [system\_time](#system_time)
  + [system\_time\_nsecs](#system_time_nsecs)
  + [wait\_for\_thread](#wait_for_thread)
  + [wait\_for\_thread\_etc](#wait_for_thread_etc)
  + [write\_port](#write_port)
  + [write\_port\_etc](#write_port_etc)
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