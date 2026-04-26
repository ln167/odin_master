package os - pkg.odin-lang.org 






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



Current Package: *[os](/core/os)*

  

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
2. [os](/core/os)

# package core:os [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A cross-platform API for things like `I/O`, intended to be uniform across all operating systems.
Features not generally available appear in the system-specific packages under `core:sys`.

## Index

Types (24)

* [Error](#Error)
* [File](#File)
* [File\_Flag](#File_Flag)
* [File\_Flags](#File_Flags)
* [File\_Info](#File_Info)
* [File\_Stream](#File_Stream)
* [File\_Stream\_Mode](#File_Stream_Mode)
* [File\_Stream\_Proc](#File_Stream_Proc)
* [File\_Type](#File_Type)
* [Fstat\_Callback](#Fstat_Callback)
* [General\_Error](#General_Error)
* [Permission\_Flag](#Permission_Flag)
* [Permissions](#Permissions)
* [Platform\_Error](#Platform_Error)
* [Process](#Process)
* [Process\_Desc](#Process_Desc)
* [Process\_Info](#Process_Info)
* [Process\_Info\_Field](#Process_Info_Field)
* [Process\_Info\_Fields](#Process_Info_Fields)
* [Process\_Open\_Flag](#Process_Open_Flag)
* [Process\_Open\_Flags](#Process_Open_Flags)
* [Process\_State](#Process_State)
* [Read\_Directory\_Iterator](#Read_Directory_Iterator)
* [Walker](#Walker)

Constants (25)

* [ALL\_INFO](#ALL_INFO)
* [ERROR\_NONE](#ERROR_NONE)
* [O\_APPEND](#O_APPEND)
* [O\_CREATE](#O_CREATE)
* [O\_EXCL](#O_EXCL)
* [O\_INHERITABLE](#O_INHERITABLE)
* [O\_RDONLY](#O_RDONLY)
* [O\_RDWR](#O_RDWR)
* [O\_SPARSE](#O_SPARSE)
* [O\_SYNC](#O_SYNC)
* [O\_TRUNC](#O_TRUNC)
* [O\_WRONLY](#O_WRONLY)
* [Path\_List\_Separator](#Path_List_Separator)
* [Path\_Separator](#Path_Separator)
* [Path\_Separator\_Chars](#Path_Separator_Chars)
* [Path\_Separator\_String](#Path_Separator_String)
* [Permissions\_All](#Permissions_All)
* [Permissions\_Default](#Permissions_Default)
* [Permissions\_Default\_Directory](#Permissions_Default_Directory)
* [Permissions\_Default\_File](#Permissions_Default_File)
* [Permissions\_Execute\_All](#Permissions_Execute_All)
* [Permissions\_Read\_All](#Permissions_Read_All)
* [Permissions\_Read\_Write\_All](#Permissions_Read_Write_All)
* [Permissions\_Write\_All](#Permissions_Write_All)
* [TIMEOUT\_INFINITE](#TIMEOUT_INFINITE)

Variables (4)

* [args](#args)
* [stderr](#stderr)
* [stdin](#stdin)
* [stdout](#stdout)

Procedures (183)

* [are\_paths\_identical](#are_paths_identical)
* [base](#base)
* [change\_directory](#change_directory)
* [change\_mode](#change_mode)
* [change\_owner](#change_owner)
* [change\_owner\_do\_not\_follow\_links](#change_owner_do_not_follow_links)
* [change\_times](#change_times)
* [chdir](#chdir)
* [chmod](#chmod)
* [chown](#chown)
* [chtimes](#chtimes)
* [clean\_path](#clean_path)
* [clear\_env](#clear_env)
* [clone](#clone)
* [close](#close)
* [copy\_directory\_all](#copy_directory_all)
* [copy\_file](#copy_file)
* [create](#create)
* [create\_temp\_file](#create_temp_file)
* [current\_process\_info](#current_process_info)
* [dir](#dir)
* [environ](#environ)
* [error\_string](#error_string)
* [exists](#exists)
* [exit](#exit)
* [ext](#ext)
* [fchange\_directory](#fchange_directory)
* [fchange\_mode](#fchange_mode)
* [fchange\_owner](#fchange_owner)
* [fchange\_times](#fchange_times)
* [fchdir](#fchdir)
* [fchmod](#fchmod)
* [fchown](#fchown)
* [fchtimes](#fchtimes)
* [fd](#fd)
* [file\_info\_clone](#file_info_clone)
* [file\_info\_delete](#file_info_delete)
* [file\_info\_slice\_delete](#file_info_slice_delete)
* [file\_size](#file_size)
* [flush](#flush)
* [free\_process\_info](#free_process_info)
* [fstat](#fstat)
* [get\_absolute\_path](#get_absolute_path)
* [get\_current\_thread\_id](#get_current_thread_id)
* [get\_egid](#get_egid)
* [get\_env\_alloc](#get_env_alloc)
* [get\_env\_buf](#get_env_buf)
* [get\_euid](#get_euid)
* [get\_executable\_directory](#get_executable_directory)
* [get\_executable\_path](#get_executable_path)
* [get\_gid](#get_gid)
* [get\_pid](#get_pid)
* [get\_ppid](#get_ppid)
* [get\_processor\_core\_count](#get_processor_core_count)
* [get\_relative\_path](#get_relative_path)
* [get\_uid](#get_uid)
* [get\_working\_directory](#get_working_directory)
* [getwd](#getwd)
* [glob](#glob)
* [heap\_allocator](#heap_allocator)
* [heap\_allocator\_proc](#heap_allocator_proc)
* [is\_absolute\_path](#is_absolute_path)
* [is\_dir](#is_dir)
* [is\_directory](#is_directory)
* [is\_file](#is_file)
* [is\_path\_separator](#is_path_separator)
* [is\_platform\_error](#is_platform_error)
* [is\_reserved\_name](#is_reserved_name)
* [is\_tty](#is_tty)
* [join\_filename](#join_filename)
* [join\_path](#join_path)
* [last\_write\_time](#last_write_time)
* [last\_write\_time\_by\_name](#last_write_time_by_name)
* [lchown](#lchown)
* [link](#link)
* [long\_ext](#long_ext)
* [lookup\_env\_alloc](#lookup_env_alloc)
* [lookup\_env\_buf](#lookup_env_buf)
* [lstat](#lstat)
* [make\_directory](#make_directory)
* [make\_directory\_all](#make_directory_all)
* [make\_directory\_temp](#make_directory_temp)
* [match](#match)
* [mkdir](#mkdir)
* [mkdir\_all](#mkdir_all)
* [mkdir\_temp](#mkdir_temp)
* [modification\_time](#modification_time)
* [modification\_time\_by\_path](#modification_time_by_path)
* [name](#name)
* [new\_file](#new_file)
* [open](#open)
* [perm\_number](#perm_number)
* [pipe](#pipe)
* [pipe\_has\_data](#pipe_has_data)
* [print\_error](#print_error)
* [process\_exec](#process_exec)
* [process\_info\_by\_handle](#process_info_by_handle)
* [process\_info\_by\_pid](#process_info_by_pid)
* [process\_kill](#process_kill)
* [process\_list](#process_list)
* [process\_open](#process_open)
* [process\_start](#process_start)
* [process\_terminate](#process_terminate)
* [process\_wait](#process_wait)
* [read](#read)
* [read\_all\_directory](#read_all_directory)
* [read\_all\_directory\_by\_path](#read_all_directory_by_path)
* [read\_at](#read_at)
* [read\_at\_least](#read_at_least)
* [read\_dir](#read_dir)
* [read\_directory](#read_directory)
* [read\_directory\_by\_path](#read_directory_by_path)
* [read\_directory\_iterator](#read_directory_iterator)
* [read\_directory\_iterator\_create](#read_directory_iterator_create)
* [read\_directory\_iterator\_destroy](#read_directory_iterator_destroy)
* [read\_directory\_iterator\_error](#read_directory_iterator_error)
* [read\_directory\_iterator\_init](#read_directory_iterator_init)
* [read\_entire\_file\_from\_file](#read_entire_file_from_file)
* [read\_entire\_file\_from\_path](#read_entire_file_from_path)
* [read\_full](#read_full)
* [read\_link](#read_link)
* [read\_ptr](#read_ptr)
* [read\_slice](#read_slice)
* [remove](#remove)
* [remove\_all](#remove_all)
* [rename](#rename)
* [replace\_environment\_placeholders](#replace_environment_placeholders)
* [replace\_path\_separators](#replace_path_separators)
* [same\_file](#same_file)
* [seek](#seek)
* [set\_env](#set_env)
* [set\_working\_directory](#set_working_directory)
* [setwd](#setwd)
* [short\_stem](#short_stem)
* [split\_filename](#split_filename)
* [split\_filename\_all](#split_filename_all)
* [split\_path](#split_path)
* [split\_path\_list](#split_path_list)
* [stat](#stat)
* [stat\_do\_not\_follow\_links](#stat_do_not_follow_links)
* [stem](#stem)
* [symlink](#symlink)
* [sync](#sync)
* [temp\_dir](#temp_dir)
* [temp\_directory](#temp_directory)
* [to\_reader](#to_reader)
* [to\_stream](#to_stream)
* [to\_writer](#to_writer)
* [truncate](#truncate)
* [unset\_env](#unset_env)
* [user\_cache\_dir](#user_cache_dir)
* [user\_config\_dir](#user_config_dir)
* [user\_data\_dir](#user_data_dir)
* [user\_desktop\_dir](#user_desktop_dir)
* [user\_documents\_dir](#user_documents_dir)
* [user\_downloads\_dir](#user_downloads_dir)
* [user\_home\_dir](#user_home_dir)
* [user\_log\_dir](#user_log_dir)
* [user\_music\_dir](#user_music_dir)
* [user\_pictures\_dir](#user_pictures_dir)
* [user\_public\_dir](#user_public_dir)
* [user\_state\_dir](#user_state_dir)
* [user\_videos\_dir](#user_videos_dir)
* [volume\_name](#volume_name)
* [walker\_create\_file](#walker_create_file)
* [walker\_create\_path](#walker_create_path)
* [walker\_destroy](#walker_destroy)
* [walker\_error](#walker_error)
* [walker\_init\_file](#walker_init_file)
* [walker\_init\_path](#walker_init_path)
* [walker\_skip\_dir](#walker_skip_dir)
* [walker\_walk](#walker_walk)
* [write](#write)
* [write\_at](#write_at)
* [write\_byte](#write_byte)
* [write\_encoded\_rune](#write_encoded_rune)
* [write\_entire\_file\_from\_bytes](#write_entire_file_from_bytes)
* [write\_entire\_file\_from\_string](#write_entire_file_from_string)
* [write\_ptr](#write_ptr)
* [write\_rune](#write_rune)
* [write\_slice](#write_slice)
* [write\_string](#write_string)
* [write\_strings](#write_strings)

Procedure Groups (8)

* [get\_env](#get_env)
* [lookup\_env](#lookup_env)
* [perm](#perm)
* [process\_info](#process_info)
* [read\_entire\_file](#read_entire_file)
* [walker\_create](#walker_create)
* [walker\_init](#walker_init)
* [write\_entire\_file](#write_entire_file)

## Types

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin#L39)

```
Error :: union {
	General_Error, 
	io.Error, 
	runtime.Allocator_Error, 
	sys_windows.System_Error, 
}
```

 

`Error` is a union of different classes of errors that could be returned from procedures in this package.




##### Related Procedures With Parameters

* [error\_string](/core/os/#error_string)
* [is\_platform\_error](/core/os/#is_platform_error)
* [print\_error](/core/os/#print_error)



##### Related Procedures With Returns

* [change\_directory](/core/os/#change_directory)
* [change\_mode](/core/os/#change_mode)
* [change\_owner](/core/os/#change_owner)
* [change\_owner\_do\_not\_follow\_links](/core/os/#change_owner_do_not_follow_links)
* [change\_times](/core/os/#change_times)
* [clone](/core/os/#clone)
* [close](/core/os/#close)
* [copy\_directory\_all](/core/os/#copy_directory_all)
* [copy\_file](/core/os/#copy_file)
* [create](/core/os/#create)
* [create\_temp\_file](/core/os/#create_temp_file)
* [current\_process\_info](/core/os/#current_process_info)
* [environ](/core/os/#environ)
* [fchange\_directory](/core/os/#fchange_directory)
* [fchange\_mode](/core/os/#fchange_mode)
* [fchange\_owner](/core/os/#fchange_owner)
* [fchange\_times](/core/os/#fchange_times)
* [file\_size](/core/os/#file_size)
* [flush](/core/os/#flush)
* [fstat](/core/os/#fstat)
* [get\_absolute\_path](/core/os/#get_absolute_path)
* [get\_executable\_directory](/core/os/#get_executable_directory)
* [get\_executable\_path](/core/os/#get_executable_path)
* [get\_relative\_path](/core/os/#get_relative_path)
* [get\_working\_directory](/core/os/#get_working_directory)
* [glob](/core/os/#glob)
* [join\_filename](/core/os/#join_filename)
* [link](/core/os/#link)
* [lookup\_env\_buf](/core/os/#lookup_env_buf)
* [make\_directory](/core/os/#make_directory)
* [make\_directory\_all](/core/os/#make_directory_all)
* [make\_directory\_temp](/core/os/#make_directory_temp)
* [match](/core/os/#match)
* [modification\_time](/core/os/#modification_time)
* [modification\_time\_by\_path](/core/os/#modification_time_by_path)
* [open](/core/os/#open)
* [pipe](/core/os/#pipe)
* [pipe\_has\_data](/core/os/#pipe_has_data)
* [process\_exec](/core/os/#process_exec)
* [process\_info\_by\_handle](/core/os/#process_info_by_handle)
* [process\_info\_by\_pid](/core/os/#process_info_by_pid)
* [process\_kill](/core/os/#process_kill)
* [process\_list](/core/os/#process_list)
* [process\_open](/core/os/#process_open)
* [process\_start](/core/os/#process_start)
* [process\_terminate](/core/os/#process_terminate)
* [process\_wait](/core/os/#process_wait)
* [read](/core/os/#read)
* [read\_all\_directory](/core/os/#read_all_directory)
* [read\_all\_directory\_by\_path](/core/os/#read_all_directory_by_path)
* [read\_at](/core/os/#read_at)
* [read\_at\_least](/core/os/#read_at_least)
* [read\_directory](/core/os/#read_directory)
* [read\_directory\_by\_path](/core/os/#read_directory_by_path)
* [read\_directory\_iterator\_error](/core/os/#read_directory_iterator_error)
* [read\_entire\_file\_from\_file](/core/os/#read_entire_file_from_file)
* [read\_entire\_file\_from\_path](/core/os/#read_entire_file_from_path)
* [read\_full](/core/os/#read_full)
* [read\_link](/core/os/#read_link)
* [read\_ptr](/core/os/#read_ptr)
* [read\_slice](/core/os/#read_slice)
* [remove](/core/os/#remove)
* [remove\_all](/core/os/#remove_all)
* [rename](/core/os/#rename)
* [replace\_path\_separators](/core/os/#replace_path_separators)
* [seek](/core/os/#seek)
* [set\_env](/core/os/#set_env)
* [set\_working\_directory](/core/os/#set_working_directory)
* [split\_path\_list](/core/os/#split_path_list)
* [stat](/core/os/#stat)
* [stat\_do\_not\_follow\_links](/core/os/#stat_do_not_follow_links)
* [symlink](/core/os/#symlink)
* [sync](/core/os/#sync)
* [temp\_directory](/core/os/#temp_directory)
* [truncate](/core/os/#truncate)
* [user\_cache\_dir](/core/os/#user_cache_dir)
* [user\_config\_dir](/core/os/#user_config_dir)
* [user\_data\_dir](/core/os/#user_data_dir)
* [user\_desktop\_dir](/core/os/#user_desktop_dir)
* [user\_documents\_dir](/core/os/#user_documents_dir)
* [user\_downloads\_dir](/core/os/#user_downloads_dir)
* [user\_home\_dir](/core/os/#user_home_dir)
* [user\_log\_dir](/core/os/#user_log_dir)
* [user\_music\_dir](/core/os/#user_music_dir)
* [user\_pictures\_dir](/core/os/#user_pictures_dir)
* [user\_public\_dir](/core/os/#user_public_dir)
* [user\_state\_dir](/core/os/#user_state_dir)
* [user\_videos\_dir](/core/os/#user_videos_dir)
* [walker\_error](/core/os/#walker_error)
* [write](/core/os/#write)
* [write\_at](/core/os/#write_at)
* [write\_byte](/core/os/#write_byte)
* [write\_encoded\_rune](/core/os/#write_encoded_rune)
* [write\_entire\_file\_from\_bytes](/core/os/#write_entire_file_from_bytes)
* [write\_entire\_file\_from\_string](/core/os/#write_entire_file_from_string)
* [write\_ptr](/core/os/#write_ptr)
* [write\_rune](/core/os/#write_rune)
* [write\_slice](/core/os/#write_slice)
* [write\_string](/core/os/#write_string)
* [write\_strings](/core/os/#write_strings)
* [lookup\_env](/core/os/#lookup_env) *(procedure groups)*
* [process\_info](/core/os/#process_info) *(procedure groups)*
* [read\_entire\_file](/core/os/#read_entire_file) *(procedure groups)*
* [write\_entire\_file](/core/os/#write_entire_file) *(procedure groups)*

##### Related Constants

* [ERROR\_NONE](/core/os/#ERROR_NONE)

### [File ¶](#File) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L23)

```
File :: struct {
	impl:   rawptr,
	stream: File_Stream,
}
```

 

Type representing a file handle.

This struct represents an OS-specific file-handle, which can be one of
the following:
File
Directory
Pipe
Named pipe
Block Device
Character device
Symlink
Socket

See `File_Type` enum for more information on file types.




##### Related Procedures With Parameters

* [clone](/core/os/#clone)
* [close](/core/os/#close)
* [fchange\_directory](/core/os/#fchange_directory)
* [fchange\_mode](/core/os/#fchange_mode)
* [fchange\_owner](/core/os/#fchange_owner)
* [fchange\_times](/core/os/#fchange_times)
* [fd](/core/os/#fd)
* [file\_size](/core/os/#file_size)
* [flush](/core/os/#flush)
* [fstat](/core/os/#fstat)
* [is\_tty](/core/os/#is_tty)
* [modification\_time](/core/os/#modification_time)
* [name](/core/os/#name)
* [pipe\_has\_data](/core/os/#pipe_has_data)
* [print\_error](/core/os/#print_error)
* [read](/core/os/#read)
* [read\_all\_directory](/core/os/#read_all_directory)
* [read\_at](/core/os/#read_at)
* [read\_at\_least](/core/os/#read_at_least)
* [read\_directory](/core/os/#read_directory)
* [read\_directory\_iterator\_create](/core/os/#read_directory_iterator_create)
* [read\_directory\_iterator\_init](/core/os/#read_directory_iterator_init)
* [read\_entire\_file\_from\_file](/core/os/#read_entire_file_from_file)
* [read\_full](/core/os/#read_full)
* [read\_ptr](/core/os/#read_ptr)
* [read\_slice](/core/os/#read_slice)
* [seek](/core/os/#seek)
* [sync](/core/os/#sync)
* [to\_stream](/core/os/#to_stream)
* [truncate](/core/os/#truncate)
* [walker\_create\_file](/core/os/#walker_create_file)
* [walker\_init\_file](/core/os/#walker_init_file)
* [write](/core/os/#write)
* [write\_at](/core/os/#write_at)
* [write\_byte](/core/os/#write_byte)
* [write\_encoded\_rune](/core/os/#write_encoded_rune)
* [write\_ptr](/core/os/#write_ptr)
* [write\_rune](/core/os/#write_rune)
* [write\_slice](/core/os/#write_slice)
* [write\_string](/core/os/#write_string)
* [write\_strings](/core/os/#write_strings)
* [read\_entire\_file](/core/os/#read_entire_file) *(procedure groups)*
* [walker\_create](/core/os/#walker_create) *(procedure groups)*
* [walker\_init](/core/os/#walker_init) *(procedure groups)*



##### Related Procedures With Returns

* [create](/core/os/#create)
* [create\_temp\_file](/core/os/#create_temp_file)
* [new\_file](/core/os/#new_file)
* [open](/core/os/#open)
* [pipe](/core/os/#pipe)

### [File\_Flag ¶](#File_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L60)

```
File_Flag :: enum int {
	Read, 
	Write, 
	Append, 
	Create, 
	Excl, 
	Sync, 
	Trunc, 
	Sparse, 
	Inheritable, 
	Non_Blocking, 
	Unbuffered_IO, 
}
```

### [File\_Flags ¶](#File_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L59)

```
File_Flags :: distinct bit_set[File_Flag; uint]
```

 

Represents the file flags for a file handle




##### Related Procedures With Parameters

* [create\_temp\_file](/core/os/#create_temp_file)
* [open](/core/os/#open)

##### Related Constants

* [O\_APPEND](/core/os/#O_APPEND)
* [O\_CREATE](/core/os/#O_CREATE)
* [O\_EXCL](/core/os/#O_EXCL)
* [O\_INHERITABLE](/core/os/#O_INHERITABLE)
* [O\_RDONLY](/core/os/#O_RDONLY)
* [O\_RDWR](/core/os/#O_RDWR)
* [O\_SPARSE](/core/os/#O_SPARSE)
* [O\_SYNC](/core/os/#O_SYNC)
* [O\_TRUNC](/core/os/#O_TRUNC)
* [O\_WRONLY](/core/os/#O_WRONLY)

### [File\_Info ¶](#File_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L12)

```
File_Info :: struct {
	fullpath:          string,
	// fullpath of the file
	name:              string,
	// base name of the file
	inode:             u128,
	// might be zero if cannot be determined
	size:              i64 `fmt:"M"`,
	// length in bytes for regular files; system-dependent for other file types
	mode:              Permissions,
	// file permission flags
	type:              File_Type,
	creation_time:     time.Time,
	modification_time: time.Time,
	access_time:       time.Time,
}
```

 

`File_Info` describes a file and is returned from `stat`, `fstat`, and `lstat`.




##### Related Procedures With Parameters

* [file\_info\_clone](/core/os/#file_info_clone)
* [file\_info\_delete](/core/os/#file_info_delete)
* [same\_file](/core/os/#same_file)



##### Related Procedures With Returns

* [fstat](/core/os/#fstat)
* [read\_directory\_iterator](/core/os/#read_directory_iterator)
* [stat](/core/os/#stat)
* [stat\_do\_not\_follow\_links](/core/os/#stat_do_not_follow_links)
* [walker\_walk](/core/os/#walker_walk)

### [File\_Stream ¶](#File_Stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_stream.odin#L34)

```
File_Stream :: struct {
	procedure: File_Stream_Proc,
	data:      rawptr,
}
```

### [File\_Stream\_Mode ¶](#File_Stream_Mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_stream.odin#L8)

```
File_Stream_Mode :: enum int {
	Close, 
	Flush, 
	Read, 
	Read_At, 
	Write, 
	Write_At, 
	Seek, 
	Size, 
	Destroy, 
	Query,    // query what modes are available on `io.Stream`
	Fstat,    // File specific (not available on io.Stream)
}
```

 

A subset of the io.Stream\_Mode with added File specific modes

### [File\_Stream\_Proc ¶](#File_Stream_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_stream.odin#L25)

```
File_Stream_Proc :: proc(stream_data: rawptr, mode: File_Stream_Mode, p: []u8, offset: i64, whence: io.Seek_From, allocator: runtime.Allocator) -> (n: i64, err: Error)
```

 

Superset interface of io.Stream\_Proc with the added `runtime.Allocator` parameter needed for the Fstat mode

### [File\_Type ¶](#File_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L36)

```
File_Type :: enum int {
	// The type of a file could not be determined for the current platform.
	Undetermined, 
	// Represents a regular file.
	Regular, 
	// Represents a directory.
	Directory, 
	// Represents a symbolic link.
	Symlink, 
	// Represents a named pipe (FIFO).
	Named_Pipe, 
	// Represents a socket.
	// **Note(windows)**: Not returned on windows
	Socket, 
	// Represents a block device.
	// **Note(windows)**: On windows represents all devices.
	Block_Device, 
	// Represents a character device.
	// **Note(windows)**: Not returned on windows
	Character_Device, 
}
```

 

Type representing the type of a file handle.

**Note(windows)**: Socket handles can not be distinguished from
files, as they are just a normal file handle that is being treated by
a special driver. Windows also makes no distinction between block and
character devices.

### [Fstat\_Callback ¶](#Fstat_Callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L7)

```
Fstat_Callback :: proc(f: ^File, allocator: runtime.Allocator) -> (File_Info, Error)
```

### [General\_Error ¶](#General_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin#L10)

```
General_Error :: enum u32 {
	None, 
	Exist, 
	Not_Exist, 
	Timeout, 
	Broken_Pipe, 
	Invalid_File, 
	Invalid_Dir, 
	Invalid_Path, 
	Invalid_Callback, 
	Invalid_Command, 
	Pattern_Has_Separator, 
	Pattern_Syntax_Error,  // Indicates an error in `glob` or `match` pattern.
	No_HOME_Variable, 
	Env_Var_Not_Found, 
}
```

 

General errors that are common within this package which cannot
be categorized by `io.Error` nor `runtime.Allocator_Error`.

### [Permission\_Flag ¶](#Permission_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L94)

```
Permission_Flag :: enum u32 {
	Execute_Other = 0, 
	Write_Other   = 1, 
	Read_Other    = 2, 
	Execute_Group = 3, 
	Write_Group   = 4, 
	Read_Group    = 5, 
	Execute_User  = 6, 
	Write_User    = 7, 
	Read_User     = 8, 
}
```

### [Permissions ¶](#Permissions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L93)

```
Permissions :: distinct bit_set[Permission_Flag; u32]
```

##### Related Procedures With Parameters

* [change\_mode](/core/os/#change_mode)
* [copy\_directory\_all](/core/os/#copy_directory_all)
* [fchange\_mode](/core/os/#fchange_mode)
* [make\_directory](/core/os/#make_directory)
* [make\_directory\_all](/core/os/#make_directory_all)
* [open](/core/os/#open)
* [write\_entire\_file\_from\_bytes](/core/os/#write_entire_file_from_bytes)
* [write\_entire\_file\_from\_string](/core/os/#write_entire_file_from_string)
* [write\_entire\_file](/core/os/#write_entire_file) *(procedure groups)*



##### Related Procedures With Returns

* [perm\_number](/core/os/#perm_number)
* [perm](/core/os/#perm) *(procedure groups)*

##### Related Constants

* [Permissions\_All](/core/os/#Permissions_All)
* [Permissions\_Default](/core/os/#Permissions_Default)
* [Permissions\_Default\_Directory](/core/os/#Permissions_Default_Directory)
* [Permissions\_Default\_File](/core/os/#Permissions_Default_File)
* [Permissions\_Execute\_All](/core/os/#Permissions_Execute_All)
* [Permissions\_Read\_All](/core/os/#Permissions_Read_All)
* [Permissions\_Read\_Write\_All](/core/os/#Permissions_Read_Write_All)
* [Permissions\_Write\_All](/core/os/#Permissions_Write_All)

### [Platform\_Error ¶](#Platform_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin#L34)

```
Platform_Error :: sys_windows.System_Error
```

 

A platform specific error

### [Process ¶](#Process) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L298)

```
Process :: struct {
	pid:    int,
	handle: uintptr,
}
```

 

Represents a process handle.

When a process dies, the OS is free to re-use the pid of that process. The
`Process` struct represents a handle to the process that will refer to a
specific process, even after it has died.

**Note(linux)**: The `handle` will be referring to pidfd.




##### Related Procedures With Parameters

* [process\_info\_by\_handle](/core/os/#process_info_by_handle)
* [process\_kill](/core/os/#process_kill)
* [process\_terminate](/core/os/#process_terminate)
* [process\_wait](/core/os/#process_wait)
* [process\_info](/core/os/#process_info) *(procedure groups)*



##### Related Procedures With Returns

* [process\_open](/core/os/#process_open)
* [process\_start](/core/os/#process_start)

### [Process\_Desc ¶](#Process_Desc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L329)

```
Process_Desc :: struct {
	// The working directory of the process. If the string has length 0, the
	// working directory is assumed to be the current working directory of the
	// current process.
	working_dir: string,
	// The command to run. Each element of the slice is a separate argument to
	// the process. The first element of the slice would be the executable.
	command:     []string,
	// A slice of strings, each having the format `KEY=VALUE` representing the
	// full environment that the child process will receive.
	// In case this slice is `nil`, the current process' environment is used.
	// NOTE(laytan): maybe should be `Maybe([]string)` so you can do `nil` == current env, empty == empty/no env.
	env:         []string,
	// The `stderr` handle to give to the child process. It can be either a file
	// or a writeable end of a pipe. Passing `nil` will shut down the process'
	// stderr output.
	stderr:      ^File,
	// The `stdout` handle to give to the child process. It can be either a file
	// or a writeabe end of a pipe. Passing a `nil` will shut down the process'
	// stdout output.
	stdout:      ^File,
	// The `stdin` handle to give to the child process. It can either be a file
	// or a readable end of a pipe. Passing a `nil` will shut down the process'
	// input.
	stdin:       ^File,
}
```

 

The description of how a process should be created.




##### Related Procedures With Parameters

* [process\_exec](/core/os/#process_exec)
* [process\_start](/core/os/#process_start)

### [Process\_Info ¶](#Process_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L173)

```
Process_Info :: struct {
	// The information about a process the struct contains. `pid` is always
	// stored, no matter what.
	fields:          bit_set[Process_Info_Field],
	// The ID of the process.
	pid:             int,
	// The ID of the parent process.
	ppid:            int,
	// The process priority.
	priority:        int,
	// The path to the executable, which the process runs.
	executable_path: string,
	// The command line supplied to the process.
	command_line:    string,
	// The arguments supplied to the process.
	command_args:    []string,
	// The environment of the process.
	environment:     []string,
	// The username of the user who started the process.
	username:        string,
	// The current working directory of the process.
	working_dir:     string,
}
```

 

Contains information about the process as obtained by the `process_info()`
procedure.




##### Related Procedures With Parameters

* [free\_process\_info](/core/os/#free_process_info)



##### Related Procedures With Returns

* [current\_process\_info](/core/os/#current_process_info)
* [process\_info\_by\_handle](/core/os/#process_info_by_handle)
* [process\_info\_by\_pid](/core/os/#process_info_by_pid)
* [process\_info](/core/os/#process_info) *(procedure groups)*

### [Process\_Info\_Field ¶](#Process_Info_Field) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L156)

```
Process_Info_Field :: enum int {
	Executable_Path, 
	PPid, 
	Priority, 
	Command_Line, 
	Command_Args, 
	Environment, 
	Username, 
	Working_Dir, 
}
```

### [Process\_Info\_Fields ¶](#Process_Info_Fields) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L155)

```
Process_Info_Fields :: bit_set[Process_Info_Field]
```

 

Bit set specifying which fields of the `Process_Info` struct need to be
obtained by the `process_info()` procedure. Each bit corresponds to a
field in the `Process_Info` struct.




##### Related Procedures With Parameters

* [current\_process\_info](/core/os/#current_process_info)
* [process\_info\_by\_handle](/core/os/#process_info_by_handle)
* [process\_info\_by\_pid](/core/os/#process_info_by_pid)
* [process\_info](/core/os/#process_info) *(procedure groups)*

##### Related Constants

* [ALL\_INFO](/core/os/#ALL_INFO)

### [Process\_Open\_Flag ¶](#Process_Open_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L304)

```
Process_Open_Flag :: enum int {
	// Request for reading from the virtual memory of another process.
	Mem_Read, 
	// Request for writing to the virtual memory of another process.
	Mem_Write, 
}
```

### [Process\_Open\_Flags ¶](#Process_Open_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L303)

```
Process_Open_Flags :: bit_set[Process_Open_Flag]
```

##### Related Procedures With Parameters

* [process\_open](/core/os/#process_open)

### [Process\_State ¶](#Process_State) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L492)

```
Process_State :: struct {
	// The ID of the process.
	pid:         int,
	// Specifies whether the process has terminated or is still running.
	exited:      bool,
	// The exit code of the process, if it has exited.
	// Will also store the number of the exception or signal that has crashed the
	// process.
	exit_code:   int,
	// Specifies whether the termination of the process was successful or not,
	// i.e. whether it has crashed or not.
	// **Note(windows)**: On windows `true` is always returned, as there is no
	// reliable way to obtain information about whether the process has crashed.
	success:     bool,
	// The time the process has spend executing in kernel time.
	system_time: time.Duration,
	// The time the process has spend executing in userspace.
	user_time:   time.Duration,
}
```

 

The state of the process after it has finished execution.




##### Related Procedures With Returns

* [process\_exec](/core/os/#process_exec)
* [process\_wait](/core/os/#process_wait)

### [Read\_Directory\_Iterator ¶](#Read_Directory_Iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L83)

```
Read_Directory_Iterator :: struct {
	f:     ^File,
	err:   struct {
		err:  Error,
		path: [dynamic]u8,
	},
	index: int,
	impl:  Read_Directory_Iterator_Impl,
}
```

##### Related Procedures With Parameters

* [read\_directory\_iterator](/core/os/#read_directory_iterator)
* [read\_directory\_iterator\_destroy](/core/os/#read_directory_iterator_destroy)
* [read\_directory\_iterator\_error](/core/os/#read_directory_iterator_error)
* [read\_directory\_iterator\_init](/core/os/#read_directory_iterator_init)



##### Related Procedures With Returns

* [read\_directory\_iterator\_create](/core/os/#read_directory_iterator_create)

### [Walker ¶](#Walker) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L10)

```
Walker :: struct {
	todo:     container_queue.Queue($T=string),
	skip_dir: bool,
	err:      struct {
		path: [dynamic]u8,
		err:  Error,
	},
	iter:     Read_Directory_Iterator,
}
```

 

A recursive directory walker.

Note that none of the fields should be accessed directly.




##### Related Procedures With Parameters

* [walker\_destroy](/core/os/#walker_destroy)
* [walker\_error](/core/os/#walker_error)
* [walker\_init\_file](/core/os/#walker_init_file)
* [walker\_init\_path](/core/os/#walker_init_path)
* [walker\_skip\_dir](/core/os/#walker_skip_dir)
* [walker\_walk](/core/os/#walker_walk)
* [walker\_init](/core/os/#walker_init) *(procedure groups)*



##### Related Procedures With Returns

* [walker\_create\_file](/core/os/#walker_create_file)
* [walker\_create\_path](/core/os/#walker_create_path)
* [walker\_create](/core/os/#walker_create) *(procedure groups)*

## Constants

### [ALL\_INFO ¶](#ALL_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L167)

```
ALL_INFO: bit_set[Process_Info_Field] : Process_Info_Fields{.Executable_Path, .PPid, .Priority, .Command_Line, .Command_Args, .Environment, .Username, .Working_Dir}
```

### [ERROR\_NONE ¶](#ERROR_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin#L47)

```
ERROR_NONE :: Error{}
```

### [O\_APPEND ¶](#O_APPEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L77)

```
O_APPEND :: File_Flags{.Append}
```

### [O\_CREATE ¶](#O_CREATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L78)

```
O_CREATE :: File_Flags{.Create}
```

### [O\_EXCL ¶](#O_EXCL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L79)

```
O_EXCL :: File_Flags{.Excl}
```

### [O\_INHERITABLE ¶](#O_INHERITABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L91)

```
O_INHERITABLE :: File_Flags{.Inheritable}
```

 

If specified, the file handle is inherited upon the creation of a child
process. By default all handles are created non-inheritable.

**Note**: The standard file handles (stderr, stdout and stdin) are always
initialized as inheritable.

### [O\_RDONLY ¶](#O_RDONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L74)

```
O_RDONLY :: File_Flags{.Read}
```

### [O\_RDWR ¶](#O_RDWR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L76)

```
O_RDWR :: File_Flags{.Read, .Write}
```

### [O\_SPARSE ¶](#O_SPARSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L82)

```
O_SPARSE :: File_Flags{.Sparse}
```

### [O\_SYNC ¶](#O_SYNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L80)

```
O_SYNC :: File_Flags{.Sync}
```

### [O\_TRUNC ¶](#O_TRUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L81)

```
O_TRUNC :: File_Flags{.Trunc}
```

### [O\_WRONLY ¶](#O_WRONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L75)

```
O_WRONLY :: File_Flags{.Write}
```

### [Path\_List\_Separator ¶](#Path_List_Separator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L12)

```
Path_List_Separator :: _Path_List_Separator
```

 

OS-Specific

### [Path\_Separator ¶](#Path_Separator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L9)

```
Path_Separator :: _Path_Separator
```

 

OS-Specific

### [Path\_Separator\_Chars ¶](#Path_Separator_Chars) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L11)

```
Path_Separator_Chars :: `/\`
```

### [Path\_Separator\_String ¶](#Path_Separator_String) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L10)

```
Path_Separator_String :: _Path_Separator_String
```

 

OS-Specific

### [Permissions\_All ¶](#Permissions_All) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L114)

```
Permissions_All :: Permissions_Read_All + Permissions_Write_All + Permissions_Execute_All
```

### [Permissions\_Default ¶](#Permissions_Default) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L118)

```
Permissions_Default :: Permissions_Default_Directory
```

### [Permissions\_Default\_Directory ¶](#Permissions_Default_Directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L117)

```
Permissions_Default_Directory :: Permissions_Read_All + Permissions_Write_All + Permissions_Execute_All
```

### [Permissions\_Default\_File ¶](#Permissions_Default_File) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L116)

```
Permissions_Default_File :: Permissions_Read_All + Permissions_Write_All
```

### [Permissions\_Execute\_All ¶](#Permissions_Execute_All) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L108)

```
Permissions_Execute_All :: Permissions{.Execute_User, .Execute_Group, .Execute_Other}
```

### [Permissions\_Read\_All ¶](#Permissions_Read_All) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L110)

```
Permissions_Read_All :: Permissions{.Read_User, .Read_Group, .Read_Other}
```

### [Permissions\_Read\_Write\_All ¶](#Permissions_Read_Write_All) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L112)

```
Permissions_Read_Write_All :: Permissions_Read_All + Permissions_Write_All
```

### [Permissions\_Write\_All ¶](#Permissions_Write_All) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L109)

```
Permissions_Write_All :: Permissions{.Write_User, .Write_Group, .Write_Other}
```

### [TIMEOUT\_INFINITE ¶](#TIMEOUT_INFINITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L11)

```
TIMEOUT_INFINITE: time.Duration : time.MIN_DURATION
```

 

In procedures that explicitly state this as one of the allowed values,
specifies an infinite timeout.

## Variables

### [args ¶](#args) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L16)

```
args: []string = …
```

 

Arguments to the current process.

### [stderr ¶](#stderr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L141)

```
stderr: ^File = …
```

 

`stderr` is an open file pointing to the standard error file stream

### [stdin ¶](#stdin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L135)

```
stdin: ^File = …
```

 

`stdin` is an open file pointing to the standard input file stream

### [stdout ¶](#stdout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L138)

```
stdout: ^File = …
```

 

`stdout` is an open file pointing to the standard output file stream

## Procedures

### [are\_paths\_identical ¶](#are_paths_identical) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L152)

```
are_paths_identical :: proc(a, b: string) -> (identical: bool) {…}
```

 

Compare two paths for exactness without normalization.

This procedure takes into account case-sensitivity on differing systems.

### [base ¶](#base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L377)

```
base :: proc(path: string) -> string {…}
```

 

Gets the file name and extension from a path.

e.g.

```
'path/to/name.tar.gz' -> 'name.tar.gz'
'path/to/name.txt'    -> 'name.txt'
'path/to/name'        -> 'name'
```

Returns "." if the path is an empty string.

### [change\_directory ¶](#change_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L411)

```
change_directory :: proc(name: string) -> Error {…}
```

 

Changes the current working directory to the named directory.

### [change\_mode ¶](#change_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L425)

```
change_mode :: proc(name: string, mode: Permissions) -> Error {…}
```

 

Changes the mode/permissions of the named file to `mode`.
If the file is a symbolic link, it changes the mode of the link's target.

On Windows, only `{.Write_User}` of `mode` is used, and controls whether or not
the file has a read-only attribute. Use `{.Read_User}` for a read-only file and
`{.Read_User, .Write_User}` for a readable & writable file.

### [change\_owner ¶](#change_owner) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L437)

```
change_owner :: proc(name: string, uid, gid: int) -> Error {…}
```

 

Changes the numeric `uid` and `gid` of a named file. If the file is a symbolic link,
it changes the `uid` and `gid` of the link's target.

On Windows, it always returns an error.

### [change\_owner\_do\_not\_follow\_links ¶](#change_owner_do_not_follow_links) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L480)

```
change_owner_do_not_follow_links :: proc(name: string, uid, gid: int) -> Error {…}
```

 

Changes the numeric `uid` and `gid` of the file `f`. If the file is a symbolic link,
it changes the `uid` and `gid` of the lin itself.

On Windows, it always returns an error.

### [change\_times ¶](#change_times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L489)

```
change_times :: proc(name: string, atime, mtime: time.Time) -> Error {…}
```

 

Changes the access `atime` and modification `mtime` times of a named file.

### [chdir ¶](#chdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L411)

```
chdir :: change_directory
```

 

Changes the current working directory to the named directory.

### [chmod ¶](#chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L425)

```
chmod :: change_mode
```

 

Changes the mode/permissions of the named file to `mode`.
If the file is a symbolic link, it changes the mode of the link's target.

On Windows, only `{.Write_User}` of `mode` is used, and controls whether or not
the file has a read-only attribute. Use `{.Read_User}` for a read-only file and
`{.Read_User, .Write_User}` for a readable & writable file.

### [chown ¶](#chown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L437)

```
chown :: change_owner
```

 

Changes the numeric `uid` and `gid` of a named file. If the file is a symbolic link,
it changes the `uid` and `gid` of the link's target.

On Windows, it always returns an error.

### [chtimes ¶](#chtimes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L489)

```
chtimes :: change_times
```

 

Changes the access `atime` and modification `mtime` times of a named file.

### [clean\_path ¶](#clean_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L165)

```
clean_path :: proc(path: string, allocator: runtime.Allocator) -> (cleaned: string, err: runtime.Allocator_Error) {…}
```

 

Normalize a path.

*Allocates Using Provided Allocator*

This will remove duplicate separators and unneeded references to the current or
parent directory.

### [clear\_env ¶](#clear_env) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L59)

```
clear_env :: proc() {…}
```

### [clone ¶](#clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L192)

```
clone :: proc(f: ^File) -> (^File, Error) {…}
```

 

`clone` returns a new `^File` based on the passed file `f` with the same underlying file descriptor.

### [close ¶](#close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L218)

```
close :: proc(f: ^File) -> Error {…}
```

 

Close a file and its stream.

Any further use of the file or its stream should be considered to be in the
same class of bugs as a use-after-free.

### [copy\_directory\_all ¶](#copy_directory_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L211)

```
copy_directory_all :: proc(dst, src: string, dst_perm: Permissions = Permissions_Default) -> Error {…}
```

 

Recursively copies a directory to `dst` from `src`

### [copy\_file ¶](#copy_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L546)

```
copy_file :: proc(dst_path, src_path: string) -> Error {…}
```

### [create ¶](#create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L151)

```
create :: proc(name: string) -> (^File, Error) {…}
```

 

`create` creates or truncates a named file `name`.
If the file already exists, it is truncated.
If the file does not exist, it is created with the `Permissions_Default_File` permissions.
If successful, a `^File` is return which can be used for I/O.
And error is returned if any is encountered.

### [create\_temp\_file ¶](#create_temp_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/temp_file.odin#L17)

```
create_temp_file :: proc(dir, pattern: string, additional_flags: File_Flags = {}) -> (f: ^File, err: Error) {…}
```

 

Creates a new temperatory file in the directory `dir`.

Opens the file for reading and writing, with `Permissions_Read_Write_All` permissions, and returns the new `^File`.
The filename is generated by taking a pattern, and adding a randomized string to the end.
If the pattern includes an "*", the random string replaces the last "*".
If `dir` is an empty string, `temp_directory()` will be used.

The caller must `close` the file once finished with.

### [current\_process\_info ¶](#current_process_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L254)

```
current_process_info :: proc(selection: bit_set[Process_Info_Field], allocator: runtime.Allocator) -> (Process_Info, Error) {…}
```

 

Obtain information about the current process.

This procedure obtains the information, specified by `selection` parameter
about the currently running process.

Use `free_process_info` to free the memory allocated by this procedure. The
`free_process_info` procedure needs to be called, even if this procedure
returned an error, as some of the fields may have been allocated.

**Note**: The resulting information may or may contain the fields specified
by the `selection` parameter. Always check whether the returned
`Process_Info` struct has the required fields before checking the error code
returned by this procedure.




##### Related Procedure Groups

* [process\_info](/core/os/#process_info)

### [dir ¶](#dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L395)

```
dir :: proc(path: string) -> string {…}
```

 

Gets the parent directory path from a path.

e.g.

```
'/home/foo/bar.tar.gz' -> '/home/foo'
'path/to/name.tar.gz'  -> 'path/to'
```

Returns "." if the path is an empty string.

### [environ ¶](#environ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L67)

```
environ :: proc(allocator: runtime.Allocator) -> ([]string, Error) {…}
```

 

environ returns a copy of strings representing the environment, in the form "key=value"
NOTE: the slice of strings and the strings with be allocated using the supplied allocator

### [error\_string ¶](#error_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin#L60)

```
error_string :: proc(ferr: Error) -> string {…}
```

 

Attempts to return the error `ferr` as a string without any allocation

### [exists ¶](#exists) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L506)

```
exists :: proc(path: string) -> bool {…}
```

 

`exists` returns whether or not a named file exists.

### [exit ¶](#exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L47)

```
exit :: proc "contextless" (code: int) -> ! {…}
```

 

Tells the OS to exit the current process directly.

IMPORTANT: `@(fini)` blocks won't be executed.

If you want `@(fini)` cleanup to happen, call `runtime._cleanup_runtime` first.

### [ext ¶](#ext) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L480)

```
ext :: proc(path: string) -> string {…}
```

 

Gets the file extension from a path, including the dot.

The file extension is such that `stem_path(path)` + `ext(path)` = `base(path)`.

Only the last dot is considered when splitting the file extension.
See `long_ext`.

e.g.

```
'name.tar.gz' -> '.gz'
'name.txt'    -> '.txt'
```

Returns an empty string if there is no dot.
Returns an empty string if there is a trailing path separator.

### [fchange\_directory ¶](#fchange_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L446)

```
fchange_directory :: proc(f: ^File) -> Error {…}
```

 

Changes the current working directory to the file, which must be a directory.

### [fchange\_mode ¶](#fchange_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L455)

```
fchange_mode :: proc(f: ^File, mode: Permissions) -> Error {…}
```

 

Changes the current `mode` permissions of the file `f`.

### [fchange\_owner ¶](#fchange_owner) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L467)

```
fchange_owner :: proc(f: ^File, uid, gid: int) -> Error {…}
```

 

Changes the numeric `uid` and `gid` of the file `f`. If the file is a symbolic link,
it changes the `uid` and `gid` of the link's target.

On Windows, it always returns an error.

### [fchange\_times ¶](#fchange_times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L498)

```
fchange_times :: proc(f: ^File, atime, mtime: time.Time) -> Error {…}
```

 

Changes the access `atime` and modification `mtime` times of the file `f`.

### [fchdir ¶](#fchdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L446)

```
fchdir :: fchange_directory
```

 

Changes the current working directory to the file, which must be a directory.

### [fchmod ¶](#fchmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L455)

```
fchmod :: fchange_mode
```

 

Changes the current `mode` permissions of the file `f`.

### [fchown ¶](#fchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L467)

```
fchown :: fchange_owner
```

 

Changes the numeric `uid` and `gid` of the file `f`. If the file is a symbolic link,
it changes the `uid` and `gid` of the link's target.

On Windows, it always returns an error.

### [fchtimes ¶](#fchtimes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L498)

```
fchtimes :: fchange_times
```

 

Changes the access `atime` and modification `mtime` times of the file `f`.

### [fd ¶](#fd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L200)

```
fd :: proc(f: ^File) -> uintptr {…}
```

 

`fd` returns the file descriptor of the file `f` passed. If the file is not valid, an invalid handle will be returned.

### [file\_info\_clone ¶](#file_info_clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L27)

```
file_info_clone :: proc(fi: File_Info, allocator: runtime.Allocator) -> (cloned: File_Info, err: runtime.Allocator_Error) {…}
```

### [file\_info\_delete ¶](#file_info_delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L41)

```
file_info_delete :: proc(fi: File_Info, allocator: runtime.Allocator) {…}
```

### [file\_info\_slice\_delete ¶](#file_info_slice_delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L34)

```
file_info_slice_delete :: proc(infos: []File_Info, allocator: runtime.Allocator) {…}
```

### [file\_size ¶](#file_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L321)

```
file_size :: proc(f: ^File) -> (n: i64, err: Error) {…}
```

 

`file_size` returns the length of the file `f` in bytes and an error, if any is encountered.

### [flush ¶](#flush) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L342)

```
flush :: proc(f: ^File) -> Error {…}
```

 

`flush` flushes a file `f`

### [free\_process\_info ¶](#free_process_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L274)

```
free_process_info :: proc(pi: Process_Info, allocator: runtime.Allocator) {…}
```

 

Free the information about the process.

This procedure frees the memory occupied by process info using the provided
allocator. The allocator needs to be the same allocator that was supplied
to the `process_info` function.

### [fstat ¶](#fstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L46)

```
fstat :: proc(f: ^File, allocator: runtime.Allocator) -> (File_Info, Error) {…}
```

### [get\_absolute\_path ¶](#get_absolute_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L250)

```
get_absolute_path :: proc(path: string, allocator: runtime.Allocator) -> (absolute_path: string, err: Error) {…}
```

 

Get the absolute path to `path` with respect to the process's current directory.

*Allocates Using Provided Allocator*

### [get\_current\_thread\_id ¶](#get_current_thread_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L131)

```
get_current_thread_id :: proc "contextless" () -> int {…}
```

 

Obtain the current thread id

### [get\_egid ¶](#get_egid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L101)

```
get_egid :: proc() -> int {…}
```

 

Obtain the effective GID of the current process.

The effective GID is typically the same as the GID of the process. In case
the process was run by a user with elevated permissions, the process may
lower the privilege to perform some tasks without privilege. In these cases
the real GID of the process and the effective GID are different.

**Note(windows)**: Windows doesn't follow the posix permissions model, so
the function simply returns -1.

### [get\_env\_alloc ¶](#get_env_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L11)

```
get_env_alloc :: proc(key: string, allocator: runtime.Allocator) -> string {…}
```

 

`get_env` retrieves the value of the environment variable named by the key
It returns the value, which will be empty if the variable is not present
To distinguish between an empty value and an unset value, use lookup\_env
NOTE: the value will be allocated with the supplied allocator




##### Related Procedure Groups

* [get\_env](/core/os/#get_env)

### [get\_env\_buf ¶](#get_env_buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L21)

```
get_env_buf :: proc(buf: []u8, key: string) -> string {…}
```

 

`get_env` retrieves the value of the environment variable named by the key
It returns the value, which will be empty if the variable is not present
To distinguish between an empty value and an unset value, use lookup\_env
NOTE: this version takes a backing buffer for the string value




##### Related Procedure Groups

* [get\_env](/core/os/#get_env)

### [get\_euid ¶](#get_euid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L74)

```
get_euid :: proc() -> int {…}
```

 

Obtain the effective UID of the current process.

The effective UID is typically the same as the UID of the process. In case
the process was run by a user with elevated permissions, the process may
lower the privilege to perform some tasks without privilege. In these cases
the real UID of the process and the effective UID are different.

**Note(windows)**: Windows doesn't follow the posix permissions model, so
the function simply returns -1.

### [get\_executable\_directory ¶](#get_executable_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L140)

```
get_executable_directory :: proc(allocator: runtime.Allocator) -> (path: string, err: Error) {…}
```

 

Get the directory for the currently running executable.

*Allocates Using Provided Allocator*

### [get\_executable\_path ¶](#get_executable_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L130)

```
get_executable_path :: proc(allocator: runtime.Allocator) -> (path: string, err: Error) {…}
```

 

Get the path for the currently running executable.

*Allocates Using Provided Allocator*

### [get\_gid ¶](#get_gid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L85)

```
get_gid :: proc() -> int {…}
```

 

Obtain the GID of the current process.

**Note(windows)**: Windows doesn't follow the posix permissions model, so
the function simply returns -1.

### [get\_pid ¶](#get_pid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L109)

```
get_pid :: proc() -> int {…}
```

 

Obtain the ID of the current process.

### [get\_ppid ¶](#get_ppid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L123)

```
get_ppid :: proc() -> int {…}
```

 

Obtain the ID of the parent process.

**Note(windows)**: Windows does not mantain strong relationships between
parent and child processes. This function returns the ID of the process
that has created the current process. In case the parent has died, the ID
returned by this function can identify a non-existent or a different
process.

### [get\_processor\_core\_count ¶](#get_processor_core_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L138)

```
get_processor_core_count :: proc() -> int {…}
```

 

Return the number of cores

### [get\_relative\_path ¶](#get_relative_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L269)

```
get_relative_path :: proc(base, target: string, allocator: runtime.Allocator) -> (path: string, err: Error) {…}
```

 

Get the relative path needed to change directories from `base` to `target`.

*Allocates Using Provided Allocator*

The result is such that `join_path(base, get_relative_path(base, target))` is equivalent to `target`.

NOTE: This procedure expects both `base` and `target` to be normalized first,
which can be done by calling `clean_path` on them if needed.

This procedure will return an `Invalid_Path` error if `base` begins with a
reference to the parent directory (`".."`). Use `get_working_directory` with
`join_path` to construct absolute paths for both arguments instead.

### [get\_uid ¶](#get_uid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L58)

```
get_uid :: proc() -> int {…}
```

 

Obtain the UID of the current process.

**Note(windows)**: Windows doesn't follow the posix permissions model, so
the function simply returns -1.

### [get\_working\_directory ¶](#get_working_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L109)

```
get_working_directory :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

Get the working directory of the current process.

*Allocates Using Provided Allocator*

### [getwd ¶](#getwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L109)

```
getwd :: get_working_directory
```

 

Get the working directory of the current process.

*Allocates Using Provided Allocator*

### [glob ¶](#glob) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L734)

```
glob :: proc(pattern: string, allocator := context.allocator) -> (matches: []string, err: Error) {…}
```

 

glob returns the names of all files matching pattern or nil if there are no matching files
The syntax of patterns is the same as "match".
The pattern may describe hierarchical names such as /usr/\*/bin (assuming '/' is a separator)

glob ignores file system errors

### [heap\_allocator ¶](#heap_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/heap.odin#L9)

```
heap_allocator :: proc() -> runtime.Allocator {…}
```

 

Returns the default `heap_allocator` for this specific platform.

### [heap\_allocator\_proc ¶](#heap_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/heap.odin#L18)

```
heap_allocator_proc :: proc(
	allocator_data:  rawptr, 
	mode:            runtime.Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	loc := #caller_location, 
) -> ([]u8, runtime.Allocator_Error) {…}
```

### [is\_absolute\_path ¶](#is_absolute_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L240)

```
is_absolute_path :: proc(path: string) -> bool {…}
```

 

Return true if `path` is an absolute path as opposed to a relative one.

### [is\_dir ¶](#is_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L529)

```
is_dir :: is_directory
```

 

Returns whether or not the type of a named file is a `File_Type.Directory` file.

### [is\_directory ¶](#is_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L529)

```
is_directory :: proc(path: string) -> bool {…}
```

 

Returns whether or not the type of a named file is a `File_Type.Directory` file.

### [is\_file ¶](#is_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L514)

```
is_file :: proc(path: string) -> bool {…}
```

 

`is_file` returns whether or not the type of a named file is a `File_Type.Regular` file.

### [is\_path\_separator ¶](#is_path_separator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L21)

```
is_path_separator :: proc(c: u8) -> bool {…}
```

 

Return true if `c` is a character used to separate paths into directory and
file hierarchies on the current system.

### [is\_platform\_error ¶](#is_platform_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin#L52)

```
is_platform_error :: proc(ferr: Error) -> (err: i32, ok: bool) {…}
```

 

Attempts to convert an `Error` into a platform specific error as an integer. `ok` is false if not possible

### [is\_reserved\_name ¶](#is_reserved_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L115)

```
is_reserved_name :: proc(path: string) -> bool {…}
```

### [is\_tty ¶](#is_tty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L542)

```
is_tty :: proc "contextless" (f: ^File) -> bool {…}
```

 

`copy_file` copies a file from `src_path` to `dst_path` and returns an error if any was encountered.

### [join\_filename ¶](#join_filename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L594)

```
join_filename :: proc(base: string, ext: string, allocator: runtime.Allocator) -> (joined: string, err: Error) {…}
```

 

Join `base` and `ext` with the system's filename extension separator.

*Allocates Using Provided Allocator*

For example, `join_filename("foo", "tar.gz")` will result in `"foo.tar.gz"`.

### [join\_path ¶](#join_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L530)

```
join_path :: proc(elems: []string, allocator: runtime.Allocator) -> (joined: string, err: runtime.Allocator_Error) {…}
```

 

Join all `elems` with the system's path separator and normalize the result.

*Allocates Using Provided Allocator*

For example, `join_path({"/home", "foo", "bar.txt"})` will result in `"/home/foo/bar.txt"`.

### [last\_write\_time ¶](#last_write_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L98)

```
last_write_time :: modification_time
```

 

Returns the modification time of the file `f`.
The resolution of the timestamp is system-dependent.

### [last\_write\_time\_by\_name ¶](#last_write_time_by_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L109)

```
last_write_time_by_name :: modification_time_by_path
```

 

Returns the modification time of the named file `path`.
The resolution of the timestamp is system-dependent.

### [lchown ¶](#lchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L480)

```
lchown :: change_owner_do_not_follow_links
```

 

Changes the numeric `uid` and `gid` of the file `f`. If the file is a symbolic link,
it changes the `uid` and `gid` of the lin itself.

On Windows, it always returns an error.

### [link ¶](#link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L387)

```
link :: proc(old_name, new_name: string) -> Error {…}
```

 

`link` creates a `new_name` as a hard link to the `old_name` file.

### [long\_ext ¶](#long_ext) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L503)

```
long_ext :: proc(path: string) -> string {…}
```

 

Gets the file extension from a path, including the dot.

The long file extension is such that `short_stem(path)` + `long_ext(path)` = `base(path)`.

The first dot is used to split off the file extension, unlike `ext` which uses the last dot.

e.g.

```
'name.tar.gz' -> '.tar.gz'
'name.txt'    -> '.txt'
```

Returns an empty string if there is no dot.
Returns an empty string if there is a trailing path separator.

### [lookup\_env\_alloc ¶](#lookup_env_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L33)

```
lookup_env_alloc :: proc(key: string, allocator: runtime.Allocator) -> (value: string, found: bool) {…}
```

 

`lookup_env` gets the value of the environment variable named by the key
If the variable is found in the environment the value (which can be empty) is returned and the boolean is true
Otherwise the returned value will be empty and the boolean will be false
NOTE: the value will be allocated with the supplied allocator




##### Related Procedure Groups

* [lookup\_env](/core/os/#lookup_env)

### [lookup\_env\_buf ¶](#lookup_env_buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L41)

```
lookup_env_buf :: proc(buf: []u8, key: string) -> (value: string, err: Error) {…}
```

 

This version of `lookup_env` doesn't allocate and instead requires the user to provide a buffer.
Note that it is limited to environment names and values of 512 utf-16 values each
due to the necessary utf-8 <> utf-16 conversion.




##### Related Procedure Groups

* [lookup\_env](/core/os/#lookup_env)

### [lstat ¶](#lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L76)

```
lstat :: stat_do_not_follow_links
```

 

Returns a `File_Info` describing the named file from the file system.
If the file is a symbolic link, the `File_Info` returns describes the symbolic link,
rather than following the link.
The resulting `File_Info` must be deleted with `file_info_delete`.

### [make\_directory ¶](#make_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L77)

```
make_directory :: proc(name: string, perm: Permissions = Permissions_Default_Directory) -> Error {…}
```

 

Make a new directory.

If `path` is relative, it will be relative to the process's current working directory.

### [make\_directory\_all ¶](#make_directory_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L88)

```
make_directory_all :: proc(path: string, perm: Permissions = Permissions_Default_Directory) -> Error {…}
```

 

Make a new directory, creating new intervening directories when needed.

If `path` is relative, it will be relative to the process's current working directory.

### [make\_directory\_temp ¶](#make_directory_temp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/temp_file.odin#L49)

```
make_directory_temp :: proc(dir, pattern: string, allocator: runtime.Allocator) -> (temp_path: string, err: Error) {…}
```

 

Creates a new temporary directory in the directory `dir`, and returns the path of the new directory.

The directory name is generated by taking a pattern, and adding a randomized string to the end.
If the pattern includes an "*", the random string replaces the last "*".
If `dir` is an empty tring, `temp_directory()` will be used.

### [match ¶](#match) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L692)

```
match :: proc(pattern, name: string) -> (matched: bool, err: Error) {…}
```

 

`match` states whether "name" matches the shell pattern

Pattern syntax is:

```
pattern:
	{term}
term:
	'*'	        matches any sequence of non-/ characters
	'?'             matches any single non-/ character
	'[' ['^']  { character-range } ']'
									character classification (cannot be empty)
	c               matches character c (c != '*', '?', '\\', '[')
	'\\' c          matches character c

character-range
	c               matches character c (c != '\\', '-', ']')
	'\\' c          matches character c
	lo '-' hi       matches character c for lo <= c <= hi
```

`match` requires that the pattern matches the entirety of the name, not just a substring.
The only possible error returned is `.Syntax_Error` or an allocation error.

NOTE(bill): This is effectively the shell pattern matching system found

### [mkdir ¶](#mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L77)

```
mkdir :: make_directory
```

 

Make a new directory.

If `path` is relative, it will be relative to the process's current working directory.

### [mkdir\_all ¶](#mkdir_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L88)

```
mkdir_all :: make_directory_all
```

 

Make a new directory, creating new intervening directories when needed.

If `path` is relative, it will be relative to the process's current working directory.

### [mkdir\_temp ¶](#mkdir_temp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/temp_file.odin#L49)

```
mkdir_temp :: make_directory_temp
```

 

Creates a new temporary directory in the directory `dir`, and returns the path of the new directory.

The directory name is generated by taking a pattern, and adding a randomized string to the end.
If the pattern includes an "*", the random string replaces the last "*".
If `dir` is an empty tring, `temp_directory()` will be used.

### [modification\_time ¶](#modification_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L98)

```
modification_time :: proc(f: ^File) -> (time.Time, Error) {…}
```

 

Returns the modification time of the file `f`.
The resolution of the timestamp is system-dependent.

### [modification\_time\_by\_path ¶](#modification_time_by_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L109)

```
modification_time_by_path :: proc(path: string) -> (time.Time, Error) {…}
```

 

Returns the modification time of the named file `path`.
The resolution of the timestamp is system-dependent.

### [name ¶](#name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L208)

```
name :: proc(f: ^File) -> string {…}
```

 

`name` returns the name of the file. The lifetime of this string lasts as long as the file handle itself.

### [new\_file ¶](#new_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L180)

```
new_file :: proc(handle: uintptr, name: string) -> ^File {…}
```

 

`new_file` returns a new `^File` with the given file descriptor `handle` and `name`.
The return value will only be `nil` IF the `handle` is not a valid file descriptor.

### [open ¶](#open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L163)

```
open :: proc(name: string, flags: File_Flags = File_Flags{.Read}, perm: Permissions = Permissions_Default) -> (^File, Error) {…}
```

 

`open` is a generalized open call, which defaults to opening for reading.
If the file does not exist, and the `{.Create}` flag is passed, it is created with the permissions `perm`,
and please note that the containing directory must exist otherwise and an error will be returned.
If successful, a `^File` is return which can be used for I/O.
And error is returned if any is encountered.

### [perm\_number ¶](#perm_number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L128)

```
perm_number :: proc "contextless" (perm: int) -> Permissions {…}
```

 

`perm_number` converts an integer value `perm` to the bit set `Permissions`




##### Related Procedure Groups

* [perm](/core/os/#perm)

### [pipe ¶](#pipe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/pipe.odin#L24)

```
pipe :: proc() -> (r, w: ^File, err: Error) {…}
```

 

Create an anonymous pipe.

This procedure creates an anonymous pipe, returning two ends of the pipe, `r`
and `w`. The file `r` is the readable end of the pipe. The file `w` is a
writeable end of the pipe.

Pipes are used as an inter-process communication mechanism, to communicate
between a parent and a child process. The child uses one end of the pipe to
write data, and the parent uses the other end to read from the pipe
(or vice-versa). When a parent passes one of the ends of the pipe to the child
process, that end of the pipe needs to be closed by the parent, before any data
is attempted to be read.

Although pipes look like files and is compatible with most file APIs in package
os, the way it's meant to be read is different. Due to asynchronous nature of
the communication channel, the data may not be present at the time of a read
request. The other scenario is when a pipe has no data because the other end
of the pipe was closed by the child process.

### [pipe\_has\_data ¶](#pipe_has_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/pipe.odin#L41)

```
pipe_has_data :: proc(r: ^File) -> (ok: bool, err: Error) {…}
```

 

Check if the pipe has any data.

This procedure checks whether a read-end of the pipe has data that can be
read, and returns `true`, if the pipe has readable data, and `false` if the
pipe is empty. This procedure does not block the execution of the current
thread.

**Note**: If the other end of the pipe was closed by the child process, the
`.Broken_Pipe`
can be returned by this procedure. Handle these errors accordingly.

### [print\_error ¶](#print_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin#L122)

```
print_error :: proc(f: ^File, ferr: Error, msg: string) {…}
```

 

`print_error` is a utility procedure which will print an error `ferr` to a specified file `f`.

### [process\_exec ¶](#process_exec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L397)

```
process_exec :: proc(desc: Process_Desc, allocator: runtime.Allocator, loc := #caller_location) -> (state: Process_State, stdout: []u8, stderr: []u8, err: Error) {…}
```

 

Execute the process and capture stdout and stderr streams.

This procedure creates a new process, with a given command and environment
strings as parameters, and waits until the process finishes execution. While
the process is running, this procedure accumulates the output of its stdout
and stderr streams and returns byte slices containing the captured data from
the streams.

This procedure expects that `stdout` and `stderr` fields of the `desc` parameter
are left at default, i.e. a `nil` value. You can not capture stdout/stderr and
redirect it to a file at the same time.

This procedure does not free `stdout` and `stderr` slices before an error is
returned. Make sure to call `delete` on these slices.

### [process\_info\_by\_handle ¶](#process_info_by_handle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L234)

```
process_info_by_handle :: proc(process: Process, selection: bit_set[Process_Info_Field], allocator: runtime.Allocator) -> (Process_Info, Error) {…}
```

 

Obtain information about a process.

This procedure obtains information, specified by `selection` parameter
about a process that has been opened by the application, specified in
the `process` parameter.

Use `free_process_info` to free the memory allocated by this procedure. The
`free_process_info` procedure needs to be called, even if this procedure
returned an error, as some of the fields may have been allocated.

**Note**: The resulting information may or may contain the fields specified
by the `selection` parameter. Always check whether the returned
`Process_Info` struct has the required fields before checking the error code
returned by this procedure.




##### Related Procedure Groups

* [process\_info](/core/os/#process_info)

### [process\_info\_by\_pid ¶](#process_info_by_pid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L213)

```
process_info_by_pid :: proc(pid: int, selection: bit_set[Process_Info_Field], allocator: runtime.Allocator) -> (Process_Info, Error) {…}
```

 

Obtain information about a process.

This procedure obtains an information, specified by `selection` parameter of
a process given by `pid`.

Use `free_process_info` to free the memory allocated by this procedure. The
`free_process_info` procedure needs to be called, even if this procedure
returned an error, as some of the fields may have been allocated.

**Note**: The resulting information may or may contain the fields specified
by the `selection` parameter. Always check whether the returned
`Process_Info` struct has the required fields before checking the error code
returned by this procedure.




##### Related Procedure Groups

* [process\_info](/core/os/#process_info)

### [process\_kill ¶](#process_kill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L540)

```
process_kill :: proc(process: Process) -> Error {…}
```

 

Kill a process.

This procedure kills a process, specified by it's handle, `process`.

The process is forced to exit and can't ignore the request.

### [process\_list ¶](#process_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L146)

```
process_list :: proc(allocator: runtime.Allocator) -> ([]int, Error) {…}
```

 

Obtain ID's of all processes running in the system.

### [process\_open ¶](#process_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L322)

```
process_open :: proc(pid: int, flags: bit_set[Process_Open_Flag] = Process_Open_Flags{}) -> (Process, Error) {…}
```

 

Open a process handle using it's pid.

This procedure obtains a process handle of a process specified by `pid`.
This procedure can be subject to race conditions. See the description of
`Process`.

Use the `process_wait()` procedure (optionally prefaced with a `process_kill()`)
to close and free the process handle.

### [process\_start ¶](#process_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L376)

```
process_start :: proc(desc: Process_Desc) -> (Process, Error) {…}
```

 

Create a new process and obtain its handle.

This procedure creates a new process, with a given command and environment
strings as parameters. Use `environ()` to inherit the environment of the
current process.

The `desc` parameter specifies the description of how the process should
be created. It contains information such as the command line, the
environment of the process, the starting directory and many other options.
Most of the fields in the struct can be set to `nil` or an empty value.

Use the `process_wait()` procedure (optionally prefaced with a `process_kill()`)
to close and free the process handle.

This procedure is not thread-safe. It may alter the inheritance properties
of file handles in an unpredictable manner. In case multiple threads change
handle inheritance properties, make sure to serialize all those calls.

### [process\_terminate ¶](#process_terminate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L552)

```
process_terminate :: proc(process: Process) -> Error {…}
```

 

Terminate a process.

This procedure terminates a process, specified by it's handle, `process`.

The process is requested to exit and can ignore the request.

### [process\_wait ¶](#process_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L528)

```
process_wait :: proc(process: Process, timeout: time.Duration = TIMEOUT_INFINITE) -> (Process_State, Error) {…}
```

 

Wait for a process event.

This procedure blocks the execution until the process has exited or the
timeout (if specified) has reached zero. If the timeout is `TIMEOUT_INFINITE`,
no timeout restriction is imposed and the procedure can block indefinitely.

If the timeout is 0, no blocking will be done and the current state is returned.

If the timeout has expired, the `General_Error.Timeout` is returned as
the error.

If an error is returned for any other reason, other than timeout, the
process state is considered undetermined.

### [read ¶](#read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L254)

```
read :: proc(f: ^File, p: []u8) -> (n: int, err: Error) {…}
```

 

`read` reads up to len(p) bytes from the file `f`, and then stores them in `p`.
It returns the number of bytes read and an error, if any is encountered.
At the end of a file, it returns `0, io.EOF`.

### [read\_all\_directory ¶](#read_all_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L58)

```
read_all_directory :: proc(f: ^File, allocator: runtime.Allocator) -> (fi: []File_Info, err: Error) {…}
```

 

Reads the file `f` (assuming it is a directory) and returns all of the unsorted directory entries.

### [read\_all\_directory\_by\_path ¶](#read_all_directory_by_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L77)

```
read_all_directory_by_path :: proc(path: string, allocator: runtime.Allocator) -> (fi: []File_Info, err: Error) {…}
```

 

Reads the named directory by path (assuming it is a directory) and returns all of the unsorted directory entries.

### [read\_at ¶](#read_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L272)

```
read_at :: proc(f: ^File, p: []u8, offset: i64) -> (n: int, err: Error) {…}
```

 

`read_at` reads up to len(p) bytes from the file `f` at the byte offset `offset`, and then stores them in `p`.
It returns the number of bytes read and an error, if any is encountered.
`read_at` always returns a non-nil error when `n < len(p)`.
At the end of a file, the error is `io.EOF`.

### [read\_at\_least ¶](#read_at_least) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L139)

```
read_at_least :: proc(f: ^File, buf: []u8, min: int) -> (n: int, err: Error) {…}
```

 

`read_at_least` reads from `f` into `buf` until it has read at least `min` bytes.
It returns the number of bytes copied and an error if fewer bytes were read.
The error is only an `io.EOF` if no bytes were read.

### [read\_dir ¶](#read_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L14)

```
read_dir :: read_directory
```

 

Reads the file `f` (assuming it is a directory) and returns the unsorted directory entries.
This returns up to `n` entries OR all of them if `n <= 0`.

### [read\_directory ¶](#read_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L14)

```
read_directory :: proc(f: ^File, n: int, allocator: runtime.Allocator) -> (files: []File_Info, err: Error) {…}
```

 

Reads the file `f` (assuming it is a directory) and returns the unsorted directory entries.
This returns up to `n` entries OR all of them if `n <= 0`.

### [read\_directory\_by\_path ¶](#read_directory_by_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L67)

```
read_directory_by_path :: proc(path: string, n: int, allocator: runtime.Allocator) -> (fi: []File_Info, err: Error) {…}
```

 

Reads the named directory by path (assuming it is a directory) and returns the unsorted directory entries.
This returns up to `n` entries OR all of them if `n <= 0`.

### [read\_directory\_iterator ¶](#read_directory_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L198)

```
read_directory_iterator :: proc(it: ^Read_Directory_Iterator) -> (fi: File_Info, index: int, ok: bool) {…}
```

 

Returns the next file info entry for the iterator's directory.

The given `File_Info` is reused in subsequent calls so a copy (`file_info_clone`) has to be made to
extend its lifetime.

**Example:**

```
package main

import "core:fmt"
import "core:os"

main :: proc() {
	f, oerr := os.open("core")
	ensure(oerr == nil)
	defer os.close(f)

	it := os.read_directory_iterator_create(f)
	defer os.read_directory_iterator_destroy(⁢)

	for info in os.read_directory_iterator(⁢) {
		// Optionally break on the first error:
		// Supports not doing this, and keeping it going with remaining items.
		// _ = os.read_directory_iterator_error(⁢) or_break

		// Handle error as we go:
		// Again, no need to do this as it will keep going with remaining items.
		if path, err := os.read_directory_iterator_error(⁢); err != nil {
			fmt.eprintfln("failed reading %s: %s", path, err)
			continue
		}

		// Or, do not handle errors during iteration, and just check the error at the end.


		fmt.printfln("%#v", info)
	}

	// Handle error if one happened during iteration at the end:
	if path, err := os.read_directory_iterator_error(⁢); err != nil {
		fmt.eprintfln("read directory failed at %s: %s", path, err)
	}
}
```

### [read\_directory\_iterator\_create ¶](#read_directory_iterator_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L98)

```
read_directory_iterator_create :: proc(f: ^File) -> (it: Read_Directory_Iterator) {…}
```

 

Creates a directory iterator with the given directory.

For an example on how to use the iterator, see `read_directory_iterator`.

### [read\_directory\_iterator\_destroy ¶](#read_directory_iterator_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L124)

```
read_directory_iterator_destroy :: proc(it: ^Read_Directory_Iterator) {…}
```

 

Destroys a directory iterator.

### [read\_directory\_iterator\_error ¶](#read_directory_iterator_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L138)

```
read_directory_iterator_error :: proc(it: ^Read_Directory_Iterator) -> (path: string, err: Error) {…}
```

 

Retrieve the last error that happened during iteration.

### [read\_directory\_iterator\_init ¶](#read_directory_iterator_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin#L110)

```
read_directory_iterator_init :: proc(it: ^Read_Directory_Iterator, f: ^File) {…}
```

 

Initialize a directory iterator with the given directory.

This procedure may be called on an existing iterator to reuse it for another directory.

For an example on how to use the iterator, see `read_directory_iterator`.

### [read\_entire\_file\_from\_file ¶](#read_entire_file_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L191)

```
read_entire_file_from_file :: proc(f: ^File, allocator: runtime.Allocator, loc := #caller_location) -> (data: []u8, err: Error) {…}
```

 

`read_entire_file_from_file` reads the entire file `f` into memory allocated with `allocator`.
A slice of bytes and an error is returned, if any error is encountered.




##### Related Procedure Groups

* [read\_entire\_file](/core/os/#read_entire_file)

### [read\_entire\_file\_from\_path ¶](#read_entire_file_from_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L177)

```
read_entire_file_from_path :: proc(name: string, allocator: runtime.Allocator, loc := #caller_location) -> (data: []u8, err: Error) {…}
```

 

`read_entire_file_from_path` reads the entire named file `name` into memory allocated with `allocator`.
A slice of bytes and an error is returned, if any error is encountered.




##### Related Procedure Groups

* [read\_entire\_file](/core/os/#read_entire_file)

### [read\_full ¶](#read_full) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L161)

```
read_full :: proc(f: ^File, buf: []u8) -> (n: int, err: Error) {…}
```

 

`read_full` reads exactly `len(buf)` bytes from `f` into `buf`.
It returns the number of bytes copied and an error if fewer bytes were read.
The error is only an `io.EOF` if no bytes were read.

It is equivalent to `read_at_least(f, buf, len(buf))`.

### [read\_link ¶](#read_link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L401)

```
read_link :: proc(name: string, allocator: runtime.Allocator) -> (string, Error) {…}
```

 

`read_link` returns the destinction of the named symbolic link `name`.

### [read\_ptr ¶](#read_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L109)

```
read_ptr :: proc(f: ^File, data: rawptr, len: int) -> (n: int, err: Error) {…}
```

 

`read_ptr` is a utility procedure that reads the bytes points at `data` with length `len`.

It is equivalent to: `read(f, ([^]byte)(data)[:len])`

### [read\_slice ¶](#read_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L128)

```
read_slice :: proc(f: ^File, slice: $S/[]$T) -> (n: int, err: Error) {…}
```

 

`read_slice` is a utility procedure that writes the bytes points at `slice`.

It is equivalent to: `read(f, ([^]byte)(raw_data(slice))[:len(slice)*size_of(slice[0])])`

### [remove ¶](#remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L373)

```
remove :: proc(name: string) -> Error {…}
```

 

`remove` removes a named file or (empty) directory.

### [remove\_all ¶](#remove_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L97)

```
remove_all :: proc(path: string) -> Error {…}
```

 

Delete `path` and all files and directories inside of `path` if it is a directory.

If `path` is relative, it will be relative to the process's current working directory.

### [rename ¶](#rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L380)

```
rename :: proc(old_path, new_path: string) -> Error {…}
```

 

`rename` renames (moves) `old_path` to `new_path`.

### [replace\_environment\_placeholders ¶](#replace_environment_placeholders) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L72)

```
replace_environment_placeholders :: proc(path: string, allocator: runtime.Allocator) -> (res: string) {…}
```

 

Always allocates for consistency.

### [replace\_path\_separators ¶](#replace_path_separators) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L31)

```
replace_path_separators :: proc(path: string, new_sep: rune, allocator: runtime.Allocator) -> (new_path: string, err: Error) {…}
```

 

Returns the result of replacing each path separator character in the path
with the `new_sep` rune.

*Allocates Using Provided Allocator*

### [same\_file ¶](#same_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L85)

```
same_file :: proc(fi1, fi2: File_Info) -> bool {…}
```

 

Returns true if two `File_Info`s are equivalent.

### [seek ¶](#seek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L239)

```
seek :: proc(f: ^File, offset: i64, whence: io.Seek_From) -> (ret: i64, err: Error) {…}
```

 

seek sets the offsets for the next read or write on a file to a specified `offset`,
according to what `whence` is set.
`.Start` is relative to the origin of the file.
`.Current` is relative to the current offset.
`.End` is relative to the end.
It returns the new offset and an error, if any is encountered.
Prefer `read_at` or `write_at` if the offset does not want to be changed.

### [set\_env ¶](#set_env) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L49)

```
set_env :: proc(key, value: string) -> Error {…}
```

 

set\_env sets the value of the environment variable named by the key
Returns Error on failure

### [set\_working\_directory ¶](#set_working_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L120)

```
set_working_directory :: proc(dir: string) -> (err: Error) {…}
```

 

Change the working directory of the current process.

*Allocates Using Provided Allocator*

### [setwd ¶](#setwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L120)

```
setwd :: set_working_directory
```

 

Change the working directory of the current process.

*Allocates Using Provided Allocator*

### [short\_stem ¶](#short_stem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L457)

```
short_stem :: proc(path: string) -> string {…}
```

 

Gets the name of a file from a path.

The short stem is such that `short_stem(path)` + `long_ext(path)` = `base(path)`,
where `long_ext` is the extension returned by `split_filename_all`.

The first dot is used to split off the file extension, unlike `stem` which uses the last dot.

e.g.

```
'name.tar.gz' -> 'name'
'name.txt'    -> 'name'
```

Returns an empty string if there is no stem. e.g: '.gitignore'.
Returns an empty string if there's a trailing path separator.

### [split\_filename ¶](#split_filename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L552)

```
split_filename :: proc(filename: string) -> (base, ext: string) {…}
```

 

Split a filename from its extension.

This procedure splits on the last separator.

If the filename begins with a separator, such as `".readme.txt"`, the separator
will be included in the filename, resulting in `".readme"` and `"txt"`.

For example, `split_filename("foo.tar.gz")` will return `"foo.tar"` and `"gz"`.

### [split\_filename\_all ¶](#split_filename_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L571)

```
split_filename_all :: proc(filename: string) -> (base, ext: string) {…}
```

 

Split a filename from its extension.

This procedure splits on the first separator.

If the filename begins with a separator, such as `".readme.txt.gz"`, the separator
will be included in the filename, resulting in `".readme"` and `"txt.gz"`.

For example, `split_filename_all("foo.tar.gz")` will return `"foo"` and `"tar.gz"`.

### [split\_path ¶](#split_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L362)

```
split_path :: proc(path: string) -> (dir, filename: string) {…}
```

 

Split a path into a directory hierarchy and a filename.

For example, `split_path("/home/foo/bar.tar.gz")` will return `"/home/foo"` and `"bar.tar.gz"`.

### [split\_path\_list ¶](#split_path_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L619)

```
split_path_list :: proc(path: string, allocator: runtime.Allocator) -> (list: []string, err: Error) {…}
```

 

Split a string that is separated by a system-specific separator, typically used
for environment variables specifying multiple directories.

*Allocates Using Provided Allocator*

For example, there is the "PATH" environment variable on POSIX systems which
this procedure can split into separate entries.

### [stat ¶](#stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L63)

```
stat :: proc(name: string, allocator: runtime.Allocator) -> (File_Info, Error) {…}
```

 

`stat` returns a `File_Info` describing the named file from the file system.
The resulting `File_Info` must be deleted with `file_info_delete`.

### [stat\_do\_not\_follow\_links ¶](#stat_do_not_follow_links) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin#L76)

```
stat_do_not_follow_links :: proc(name: string, allocator: runtime.Allocator) -> (File_Info, Error) {…}
```

 

Returns a `File_Info` describing the named file from the file system.
If the file is a symbolic link, the `File_Info` returns describes the symbolic link,
rather than following the link.
The resulting `File_Info` must be deleted with `file_info_delete`.

### [stem ¶](#stem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L420)

```
stem :: proc(path: string) -> string {…}
```

 

Gets the name of a file from a path.

The stem of a file is such that `stem(path)` + `ext(path)` = `base(path)`.

Only the last dot is considered when splitting the file extension.
See `short_stem`.

e.g.

```
'name.tar.gz' -> 'name.tar'
'name.txt'    -> 'name'
```

Returns an empty string if the path is empty
Returns an empty string if there is no stem. e.g: '.gitignore'.
Returns an empty string if there's a trailing path separator.

### [symlink ¶](#symlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L394)

```
symlink :: proc(old_name, new_name: string) -> Error {…}
```

 

`symlink` creates a `new_name` as a symbolic link to the `old_name` file.

### [sync ¶](#sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L357)

```
sync :: proc(f: ^File) -> Error {…}
```

 

`sync` commits the current contents of the file `f` to stable storage.
This usually means flushing the file system's in-memory copy to disk.

### [temp\_dir ¶](#temp_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/temp_file.odin#L97)

```
temp_dir :: temp_directory
```

 

Returns the default directory to use for temporary files.

On Unix systems, it typically returns $TMPDIR if non-empty, otherwlse `/tmp`.
On Windows, it uses `GetTempPathW`, returning the first non-empty value from one of the following:
\* `%TMP%`
\* `%TEMP%`
\* `%USERPROFILE %`
\* or the Windows directory
See https://learn.microsoft.com/en-us/windows/win32/api/fileapi/nf-fileapi-gettemppathw for more information.
On wasi, it returns `/tmp`.

### [temp\_directory ¶](#temp_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/temp_file.odin#L97)

```
temp_directory :: proc(allocator: runtime.Allocator) -> (string, Error) {…}
```

 

Returns the default directory to use for temporary files.

On Unix systems, it typically returns $TMPDIR if non-empty, otherwlse `/tmp`.
On Windows, it uses `GetTempPathW`, returning the first non-empty value from one of the following:
\* `%TMP%`
\* `%TEMP%`
\* `%USERPROFILE %`
\* or the Windows directory
See https://learn.microsoft.com/en-us/windows/win32/api/fileapi/nf-fileapi-gettemppathw for more information.
On wasi, it returns `/tmp`.

### [to\_reader ¶](#to_reader) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_stream.odin#L41)

```
to_reader :: to_stream
```

 

Converts a file `f` into an `io.Stream`

### [to\_stream ¶](#to_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_stream.odin#L41)

```
to_stream :: proc(f: ^File) -> (s: io.Stream) {…}
```

 

Converts a file `f` into an `io.Stream`

### [to\_writer ¶](#to_writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_stream.odin#L41)

```
to_writer :: to_stream
```

 

Converts a file `f` into an `io.Stream`

### [truncate ¶](#truncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L366)

```
truncate :: proc(f: ^File, size: i64) -> Error {…}
```

 

`truncate` changes the size of the file `f` to `size` in bytes.
This can be used to shorten or lengthen a file.
It does not change the "offset" of the file.

### [unset\_env ¶](#unset_env) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L55)

```
unset_env :: proc(key: string) -> bool {…}
```

 

unset\_env unsets a single environment variable
Returns true on success, false on failure

### [user\_cache\_dir ¶](#user_cache_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L25)

```
user_cache_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

Files that applications can regenerate/refetch at a loss of speed, e.g. shader caches

Sometimes deleted for system maintenance

`
Windows: C:\Users\Alice\AppData\Local
macOS: /Users/Alice/Library/Caches
Linux: /home/alice/.cache
`

### [user\_config\_dir ¶](#user_config_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L77)

```
user_config_dir :: proc(allocator: runtime.Allocator, roaming: bool = false) -> (dir: string, err: Error) {…}
```

 

Application settings/preferences

`
Windows: C:\Users\Alice\AppData\Local ("C:\Users\Alice\AppData\Roaming" if `roaming`)
macOS: /Users/Alice/Library/Application Support
Linux: /home/alice/.config
`

NOTE: (Windows only) `roaming` is for syncing across multiple devices within a *domain network*

### [user\_data\_dir ¶](#user_data_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L39)

```
user_data_dir :: proc(allocator: runtime.Allocator, roaming: bool = false) -> (dir: string, err: Error) {…}
```

 

User-hidden application data

`
Windows: C:\Users\Alice\AppData\Local ("C:\Users\Alice\AppData\Roaming" if `roaming`)
macOS: /Users/Alice/Library/Application Support
Linux: /home/alice/.local/share
`

NOTE: (Windows only) `roaming` is for syncing across multiple devices within a *domain network*

### [user\_desktop\_dir ¶](#user_desktop_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L97)

```
user_desktop_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice\Desktop
macOS: /Users/Alice/Desktop
Linux: /home/alice/Desktop
`

### [user\_documents\_dir ¶](#user_documents_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L107)

```
user_documents_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice\Documents
macOS: /Users/Alice/Documents
Linux: /home/alice/Documents
`

### [user\_downloads\_dir ¶](#user_downloads_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L117)

```
user_downloads_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice\Downloads
macOS: /Users/Alice/Downloads
Linux: /home/alice/Downloads
`

### [user\_home\_dir ¶](#user_home_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L11)

```
user_home_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice
macOS: /Users/Alice
Linux: /home/alice
`

### [user\_log\_dir ¶](#user_log_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L63)

```
user_log_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

Application log files

`
Windows: C:\Users\Alice\AppData\Local
macOS: /Users/Alice/Library/Logs
Linux: /home/alice/.local/state
`

### [user\_music\_dir ¶](#user_music_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L87)

```
user_music_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice\Music
macOS: /Users/Alice/Music
Linux: /home/alice/Music
`

### [user\_pictures\_dir ¶](#user_pictures_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L127)

```
user_pictures_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice\Pictures
macOS: /Users/Alice/Pictures
Linux: /home/alice/Pictures
`

### [user\_public\_dir ¶](#user_public_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L137)

```
user_public_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice\Public
macOS: /Users/Alice/Public
Linux: /home/alice/Public
`

### [user\_state\_dir ¶](#user_state_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L51)

```
user_state_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

Non-essential application data, e.g. history, ui layout state

`
Windows: C:\Users\Alice\AppData\Local
macOS: /Users/Alice/Library/Application Support
Linux: /home/alice/.local/state
`

### [user\_videos\_dir ¶](#user_videos_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin#L147)

```
user_videos_dir :: proc(allocator: runtime.Allocator) -> (dir: string, err: Error) {…}
```

 

`
Windows: C:\Users\Alice\Videos
macOS: /Users/Alice/Movies
Linux: /home/alice/Videos
`

### [volume\_name ¶](#volume_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin#L793)

```
volume_name :: proc(path: string) -> string {…}
```

 

Returns leading volume name.

e.g.

```
"C:\foo\bar\baz" will return "C:" on Windows.
Everything else will be "".
```

### [walker\_create\_file ¶](#walker_create_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L67)

```
walker_create_file :: proc(f: ^File) -> (w: Walker) {…}
```

##### Related Procedure Groups

* [walker\_create](/core/os/#walker_create)

### [walker\_create\_path ¶](#walker_create_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L61)

```
walker_create_path :: proc(path: string) -> (w: Walker) {…}
```

##### Related Procedure Groups

* [walker\_create](/core/os/#walker_create)

### [walker\_destroy ¶](#walker_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L118)

```
walker_destroy :: proc(w: ^Walker) {…}
```

### [walker\_error ¶](#walker_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L88)

```
walker_error :: proc(w: ^Walker) -> (path: string, err: Error) {…}
```

 

Returns the last error that occurred during the walker's operations.

Can be called while iterating, or only at the end to check if anything failed.

### [walker\_init\_file ¶](#walker_init_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L35)

```
walker_init_file :: proc(w: ^Walker, f: ^File) {…}
```

##### Related Procedure Groups

* [walker\_init](/core/os/#walker_init)

### [walker\_init\_path ¶](#walker_init_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L20)

```
walker_init_path :: proc(w: ^Walker, path: string) {…}
```

##### Related Procedure Groups

* [walker\_init](/core/os/#walker_init)

### [walker\_skip\_dir ¶](#walker_skip_dir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L126)

```
walker_skip_dir :: proc(w: ^Walker) {…}
```

 

Marks the current directory to be skipped (not entered into).

### [walker\_walk ¶](#walker_walk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L177)

```
walker_walk :: proc(w: ^Walker) -> (fi: File_Info, ok: bool) {…}
```

 

Returns the next file info in the iterator, files are iterated in breadth-first order.

If an error occurred opening a directory, you may get zero'd info struct and
`walker_error` will return the error.

**Example:**

```
package main

import "core:fmt"
import "core:strings"
import "core:os"

main :: proc() {
	w := os.walker_create("core")
	defer os.walker_destroy(&w)

	for info in os.walker_walk(&w) {
		// Optionally break on the first error:
		// _ = walker_error(&w) or_break

		// Or, handle error as we go:
		if path, err := os.walker_error(&w); err != nil {
			fmt.eprintfln("failed walking %s: %s", path, err)
			continue
		}

		// Or, do not handle errors during iteration, and just check the error at the end.



		// Skip a directory:
		if strings.has_suffix(info.fullpath, ".git") {
			os.walker_skip_dir(&w)
			continue
		}

		fmt.printfln("%#v", info)
	}

	// Handle error if one happened during iteration at the end:
	if path, err := os.walker_error(&w); err != nil {
		fmt.eprintfln("failed walking %s: %v", path, err)
	}
}
```

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L289)

```
write :: proc(f: ^File, p: []u8) -> (n: int, err: Error) {…}
```

 

`write` writes `len(p)` bytes from `p` to the file `f`. It returns the number of bytes written to
and an error, if any is encountered.
`write` returns a non-nil error when `n != len(p)`.

### [write\_at ¶](#write_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L306)

```
write_at :: proc(f: ^File, p: []u8, offset: i64) -> (n: int, err: Error) {…}
```

 

`write_at` writes `len(p)` bytes from `p` to the file `f` starting at byte offset `offset`.
It returns the number of bytes written to and an error, if any is encountered.
`write_at` returns a non-nil error when `n != len(p)`.

### [write\_byte ¶](#write_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L34)

```
write_byte :: proc(f: ^File, b: u8) -> (n: int, err: Error) {…}
```

 

`write_byte` writes a byte `b` to file `f`.
Returns the number of bytes written and an error, if any is encountered.

### [write\_encoded\_rune ¶](#write_encoded_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L56)

```
write_encoded_rune :: proc(f: ^File, r: rune) -> (n: int, err: Error) {…}
```

 

`write_encoded_rune` writes a rune `r` as an UTF-8 encoded string which with escaped control codes to file `f`.
Returns the number of bytes written and an error, if any is encountered.

### [write\_entire\_file\_from\_bytes ¶](#write_entire_file_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L253)

```
write_entire_file_from_bytes :: proc(name: string, data: []u8, perm: Permissions = Permissions_Read_All + {.Write_User}, truncate: bool = true) -> Error {…}
```

 

`write_entire_file_from_bytes` writes the contents of `data` into named file `name`.
It defaults with the permssions `perm := Permissions_Read_All + {.Write_User}`, and `truncate`s by default.
An error is returned if any is encountered.




##### Related Procedure Groups

* [write\_entire\_file](/core/os/#write_entire_file)

### [write\_entire\_file\_from\_string ¶](#write_entire_file_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L274)

```
write_entire_file_from_string :: proc(name: string, data: string, perm: Permissions = Permissions_Read_All + {.Write_User}, truncate: bool = true) -> Error {…}
```

 

`write_entire_file_from_string` writes the contents of `data` into named file `name`.
It defaults with the permssions `perm := Permissions_Read_All + {.Write_User}`, and `truncate`s by default.
An error is returned if any is encountered.




##### Related Procedure Groups

* [write\_entire\_file](/core/os/#write_entire_file)

### [write\_ptr ¶](#write_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L100)

```
write_ptr :: proc(f: ^File, data: rawptr, len: int) -> (n: int, err: Error) {…}
```

 

`write_ptr` is a utility procedure that writes the bytes points at `data` with length `len`.

It is equivalent to: `write(f, ([^]byte)(data)[:len])`

### [write\_rune ¶](#write_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L42)

```
write_rune :: proc(f: ^File, r: rune) -> (n: int, err: Error) {…}
```

 

`write_rune` writes a rune `r` as an UTF-8 encoded string to file `f`.
Returns the number of bytes written and an error, if any is encountered.

### [write\_slice ¶](#write_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L119)

```
write_slice :: proc(f: ^File, slice: $S/[]$T) -> (n: int, err: Error) {…}
```

 

`write_slice` is a utility procedure that writes the bytes points at `slice`.

It is equivalent to: `write(f, ([^]byte)(raw_data(slice))[:len(slice)*size_of(slice[0])])`

### [write\_string ¶](#write_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L11)

```
write_string :: proc(f: ^File, s: string) -> (n: int, err: Error) {…}
```

 

`write_string` writes a string `s` to file `f`.
Returns the number of bytes written and an error, if any is encountered.

### [write\_strings ¶](#write_strings) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L19)

```
write_strings :: proc(f: ^File, .. strings: ..string) -> (n: int, err: Error) {…}
```

 

`write_strings` writes a variadic list of strings `strings` to file `f`.
Returns the number of bytes written and an error, if any is encountered.

## Procedure Groups

### [get\_env ¶](#get_env) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L26)

```
get_env :: proc{
	get_env_alloc,
	get_env_buf,
}
```

### [lookup\_env ¶](#lookup_env) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin#L45)

```
lookup_env :: proc{
	lookup_env_alloc,
	lookup_env_buf,
}
```

### [perm ¶](#perm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin#L120)

```
perm :: proc{
	perm_number,
}
```

### [process\_info ¶](#process_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin#L261)

```
process_info :: proc{
	process_info_by_pid,
	process_info_by_handle,
	current_process_info,
}
```

 

Obtain information about the specified process.

### [read\_entire\_file ¶](#read_entire_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L167)

```
read_entire_file :: proc{
	read_entire_file_from_path,
	read_entire_file_from_file,
}
```

### [walker\_create ¶](#walker_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L77)

```
walker_create :: proc{
	walker_create_path,
	walker_create_file,
}
```

 

Creates a walker, either using a path or a file pointer to a directory the walker will start at.

For an example on how to use the walker, see `walker_walk`.

### [walker\_init ¶](#walker_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin#L55)

```
walker_init :: proc{
	walker_init_path,
	walker_init_file,
}
```

 

Initializes a walker, either using a path or a file pointer to a directory the walker will start at.

You are allowed to repeatedly call this to reuse it for later walks.

For an example on how to use the walker, see `walker_walk`.

### [write\_entire\_file ¶](#write_entire_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin#L242)

```
write_entire_file :: proc{
	write_entire_file_from_bytes,
	write_entire_file_from_string,
}
```

 

`write_entire_file` writes the contents of `data` into named file `name`.
It defaults with the permssions `perm := Permissions_Read_All + {.Write_User}`, and `truncate`s by default.
An error is returned if any is encountered.

## Source Files

* [allocators.odin](https://github.com/odin-lang/Odin/tree/master/core/os/allocators.odin)
* [dir.odin](https://github.com/odin-lang/Odin/tree/master/core/os/dir.odin)
* [dir\_walker.odin](https://github.com/odin-lang/Odin/tree/master/core/os/dir_walker.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/os/doc.odin)
* [env.odin](https://github.com/odin-lang/Odin/tree/master/core/os/env.odin)
* [errors.odin](https://github.com/odin-lang/Odin/tree/master/core/os/errors.odin)
* [file.odin](https://github.com/odin-lang/Odin/tree/master/core/os/file.odin)
* [file\_stream.odin](https://github.com/odin-lang/Odin/tree/master/core/os/file_stream.odin)
* [file\_util.odin](https://github.com/odin-lang/Odin/tree/master/core/os/file_util.odin)
* [heap.odin](https://github.com/odin-lang/Odin/tree/master/core/os/heap.odin)
* [internal\_util.odin](https://github.com/odin-lang/Odin/tree/master/core/os/internal_util.odin)
* [path.odin](https://github.com/odin-lang/Odin/tree/master/core/os/path.odin)
* [pipe.odin](https://github.com/odin-lang/Odin/tree/master/core/os/pipe.odin)
* [process.odin](https://github.com/odin-lang/Odin/tree/master/core/os/process.odin)
* [stat.odin](https://github.com/odin-lang/Odin/tree/master/core/os/stat.odin)
* [temp\_file.odin](https://github.com/odin-lang/Odin/tree/master/core/os/temp_file.odin)
* [user.odin](https://github.com/odin-lang/Odin/tree/master/core/os/user.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.173097700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error](#Error)
    + [File](#File)
    + [File\_Flag](#File_Flag)
    + [File\_Flags](#File_Flags)
    + [File\_Info](#File_Info)
    + [File\_Stream](#File_Stream)
    + [File\_Stream\_Mode](#File_Stream_Mode)
    + [File\_Stream\_Proc](#File_Stream_Proc)
    + [File\_Type](#File_Type)
    + [Fstat\_Callback](#Fstat_Callback)
    + [General\_Error](#General_Error)
    + [Permission\_Flag](#Permission_Flag)
    + [Permissions](#Permissions)
    + [Platform\_Error](#Platform_Error)
    + [Process](#Process)
    + [Process\_Desc](#Process_Desc)
    + [Process\_Info](#Process_Info)
    + [Process\_Info\_Field](#Process_Info_Field)
    + [Process\_Info\_Fields](#Process_Info_Fields)
    + [Process\_Open\_Flag](#Process_Open_Flag)
    + [Process\_Open\_Flags](#Process_Open_Flags)
    + [Process\_State](#Process_State)
    + [Read\_Directory\_Iterator](#Read_Directory_Iterator)
    + [Walker](#Walker)
  * [Constants](#pkg-Constants)
    + [ALL\_INFO](#ALL_INFO)
    + [ERROR\_NONE](#ERROR_NONE)
    + [O\_APPEND](#O_APPEND)
    + [O\_CREATE](#O_CREATE)
    + [O\_EXCL](#O_EXCL)
    + [O\_INHERITABLE](#O_INHERITABLE)
    + [O\_RDONLY](#O_RDONLY)
    + [O\_RDWR](#O_RDWR)
    + [O\_SPARSE](#O_SPARSE)
    + [O\_SYNC](#O_SYNC)
    + [O\_TRUNC](#O_TRUNC)
    + [O\_WRONLY](#O_WRONLY)
    + [Path\_List\_Separator](#Path_List_Separator)
    + [Path\_Separator](#Path_Separator)
    + [Path\_Separator\_Chars](#Path_Separator_Chars)
    + [Path\_Separator\_String](#Path_Separator_String)
    + [Permissions\_All](#Permissions_All)
    + [Permissions\_Default](#Permissions_Default)
    + [Permissions\_Default\_Directory](#Permissions_Default_Directory)
    + [Permissions\_Default\_File](#Permissions_Default_File)
    + [Permissions\_Execute\_All](#Permissions_Execute_All)
    + [Permissions\_Read\_All](#Permissions_Read_All)
    + [Permissions\_Read\_Write\_All](#Permissions_Read_Write_All)
    + [Permissions\_Write\_All](#Permissions_Write_All)
    + [TIMEOUT\_INFINITE](#TIMEOUT_INFINITE)
  * [Variables](#pkg-Variables)
    + [args](#args)
    + [stderr](#stderr)
    + [stdin](#stdin)
    + [stdout](#stdout)
  * [Procedures](#pkg-Procedures)
    + [are\_paths\_identical](#are_paths_identical)
    + [base](#base)
    + [change\_directory](#change_directory)
    + [change\_mode](#change_mode)
    + [change\_owner](#change_owner)
    + [change\_owner\_do\_not\_follow\_links](#change_owner_do_not_follow_links)
    + [change\_times](#change_times)
    + [chdir](#chdir)
    + [chmod](#chmod)
    + [chown](#chown)
    + [chtimes](#chtimes)
    + [clean\_path](#clean_path)
    + [clear\_env](#clear_env)
    + [clone](#clone)
    + [close](#close)
    + [copy\_directory\_all](#copy_directory_all)
    + [copy\_file](#copy_file)
    + [create](#create)
    + [create\_temp\_file](#create_temp_file)
    + [current\_process\_info](#current_process_info)
    + [dir](#dir)
    + [environ](#environ)
    + [error\_string](#error_string)
    + [exists](#exists)
    + [exit](#exit)
    + [ext](#ext)
    + [fchange\_directory](#fchange_directory)
    + [fchange\_mode](#fchange_mode)
    + [fchange\_owner](#fchange_owner)
    + [fchange\_times](#fchange_times)
    + [fchdir](#fchdir)
    + [fchmod](#fchmod)
    + [fchown](#fchown)
    + [fchtimes](#fchtimes)
    + [fd](#fd)
    + [file\_info\_clone](#file_info_clone)
    + [file\_info\_delete](#file_info_delete)
    + [file\_info\_slice\_delete](#file_info_slice_delete)
    + [file\_size](#file_size)
    + [flush](#flush)
    + [free\_process\_info](#free_process_info)
    + [fstat](#fstat)
    + [get\_absolute\_path](#get_absolute_path)
    + [get\_current\_thread\_id](#get_current_thread_id)
    + [get\_egid](#get_egid)
    + [get\_env\_alloc](#get_env_alloc)
    + [get\_env\_buf](#get_env_buf)
    + [get\_euid](#get_euid)
    + [get\_executable\_directory](#get_executable_directory)
    + [get\_executable\_path](#get_executable_path)
    + [get\_gid](#get_gid)
    + [get\_pid](#get_pid)
    + [get\_ppid](#get_ppid)
    + [get\_processor\_core\_count](#get_processor_core_count)
    + [get\_relative\_path](#get_relative_path)
    + [get\_uid](#get_uid)
    + [get\_working\_directory](#get_working_directory)
    + [getwd](#getwd)
    + [glob](#glob)
    + [heap\_allocator](#heap_allocator)
    + [heap\_allocator\_proc](#heap_allocator_proc)
    + [is\_absolute\_path](#is_absolute_path)
    + [is\_dir](#is_dir)
    + [is\_directory](#is_directory)
    + [is\_file](#is_file)
    + [is\_path\_separator](#is_path_separator)
    + [is\_platform\_error](#is_platform_error)
    + [is\_reserved\_name](#is_reserved_name)
    + [is\_tty](#is_tty)
    + [join\_filename](#join_filename)
    + [join\_path](#join_path)
    + [last\_write\_time](#last_write_time)
    + [last\_write\_time\_by\_name](#last_write_time_by_name)
    + [lchown](#lchown)
    + [link](#link)
    + [long\_ext](#long_ext)
    + [lookup\_env\_alloc](#lookup_env_alloc)
    + [lookup\_env\_buf](#lookup_env_buf)
    + [lstat](#lstat)
    + [make\_directory](#make_directory)
    + [make\_directory\_all](#make_directory_all)
    + [make\_directory\_temp](#make_directory_temp)
    + [match](#match)
    + [mkdir](#mkdir)
    + [mkdir\_all](#mkdir_all)
    + [mkdir\_temp](#mkdir_temp)
    + [modification\_time](#modification_time)
    + [modification\_time\_by\_path](#modification_time_by_path)
    + [name](#name)
    + [new\_file](#new_file)
    + [open](#open)
    + [perm\_number](#perm_number)
    + [pipe](#pipe)
    + [pipe\_has\_data](#pipe_has_data)
    + [print\_error](#print_error)
    + [process\_exec](#process_exec)
    + [process\_info\_by\_handle](#process_info_by_handle)
    + [process\_info\_by\_pid](#process_info_by_pid)
    + [process\_kill](#process_kill)
    + [process\_list](#process_list)
    + [process\_open](#process_open)
    + [process\_start](#process_start)
    + [process\_terminate](#process_terminate)
    + [process\_wait](#process_wait)
    + [read](#read)
    + [read\_all\_directory](#read_all_directory)
    + [read\_all\_directory\_by\_path](#read_all_directory_by_path)
    + [read\_at](#read_at)
    + [read\_at\_least](#read_at_least)
    + [read\_dir](#read_dir)
    + [read\_directory](#read_directory)
    + [read\_directory\_by\_path](#read_directory_by_path)
    + [read\_directory\_iterator](#read_directory_iterator)
    + [read\_directory\_iterator\_create](#read_directory_iterator_create)
    + [read\_directory\_iterator\_destroy](#read_directory_iterator_destroy)
    + [read\_directory\_iterator\_error](#read_directory_iterator_error)
    + [read\_directory\_iterator\_init](#read_directory_iterator_init)
    + [read\_entire\_file\_from\_file](#read_entire_file_from_file)
    + [read\_entire\_file\_from\_path](#read_entire_file_from_path)
    + [read\_full](#read_full)
    + [read\_link](#read_link)
    + [read\_ptr](#read_ptr)
    + [read\_slice](#read_slice)
    + [remove](#remove)
    + [remove\_all](#remove_all)
    + [rename](#rename)
    + [replace\_environment\_placeholders](#replace_environment_placeholders)
    + [replace\_path\_separators](#replace_path_separators)
    + [same\_file](#same_file)
    + [seek](#seek)
    + [set\_env](#set_env)
    + [set\_working\_directory](#set_working_directory)
    + [setwd](#setwd)
    + [short\_stem](#short_stem)
    + [split\_filename](#split_filename)
    + [split\_filename\_all](#split_filename_all)
    + [split\_path](#split_path)
    + [split\_path\_list](#split_path_list)
    + [stat](#stat)
    + [stat\_do\_not\_follow\_links](#stat_do_not_follow_links)
    + [stem](#stem)
    + [symlink](#symlink)
    + [sync](#sync)
    + [temp\_dir](#temp_dir)
    + [temp\_directory](#temp_directory)
    + [to\_reader](#to_reader)
    + [to\_stream](#to_stream)
    + [to\_writer](#to_writer)
    + [truncate](#truncate)
    + [unset\_env](#unset_env)
    + [user\_cache\_dir](#user_cache_dir)
    + [user\_config\_dir](#user_config_dir)
    + [user\_data\_dir](#user_data_dir)
    + [user\_desktop\_dir](#user_desktop_dir)
    + [user\_documents\_dir](#user_documents_dir)
    + [user\_downloads\_dir](#user_downloads_dir)
    + [user\_home\_dir](#user_home_dir)
    + [user\_log\_dir](#user_log_dir)
    + [user\_music\_dir](#user_music_dir)
    + [user\_pictures\_dir](#user_pictures_dir)
    + [user\_public\_dir](#user_public_dir)
    + [user\_state\_dir](#user_state_dir)
    + [user\_videos\_dir](#user_videos_dir)
    + [volume\_name](#volume_name)
    + [walker\_create\_file](#walker_create_file)
    + [walker\_create\_path](#walker_create_path)
    + [walker\_destroy](#walker_destroy)
    + [walker\_error](#walker_error)
    + [walker\_init\_file](#walker_init_file)
    + [walker\_init\_path](#walker_init_path)
    + [walker\_skip\_dir](#walker_skip_dir)
    + [walker\_walk](#walker_walk)
    + [write](#write)
    + [write\_at](#write_at)
    + [write\_byte](#write_byte)
    + [write\_encoded\_rune](#write_encoded_rune)
    + [write\_entire\_file\_from\_bytes](#write_entire_file_from_bytes)
    + [write\_entire\_file\_from\_string](#write_entire_file_from_string)
    + [write\_ptr](#write_ptr)
    + [write\_rune](#write_rune)
    + [write\_slice](#write_slice)
    + [write\_string](#write_string)
    + [write\_strings](#write_strings)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [get\_env](#get_env)
    + [lookup\_env](#lookup_env)
    + [perm](#perm)
    + [process\_info](#process_info)
    + [read\_entire\_file](#read_entire_file)
    + [walker\_create](#walker_create)
    + [walker\_init](#walker_init)
    + [write\_entire\_file](#write_entire_file)
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