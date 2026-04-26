package runtime - pkg.odin-lang.org 






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



Current Package: *[runtime](/base/runtime)*

  

#### [base Library](/base)

* [builtin](/base/builtin)
* [intrinsics](/base/intrinsics)
* [runtime](/base/runtime)
* [sanitizer](/base/sanitizer)

1. [base](/base)
2. [runtime](/base/runtime)

# package base:runtime [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Declarations which are required by the compiler

#### Descriptions of files

There are a lot of files in this package and below is described roughly what
kind of functionality is placed in different files:

| File pattern | Description
|----------------------|------------------------------------------------------|
| `core.odin` | Contains the declarations that compiler will require to be present. Contains context-related declarations, `Type_Info` declarations and some other types used to implement the runtime and other packages. |
| `core_builtin*.odin` | Contain `@(builtin)` declarations that can be used without importing the package. Most of them aren't required by the compiler |
| `default_*.odin` | Contain default implementations for context allocators |
| `entry_*.odin` | Contain OS-specific entry points |
| `os_specific_*.odin` | Contain OS-specific utility procedures |
| `*internal*.odin` | Contain implementations for internal procedures that can be called by the compiler |

#### Implementing custom runtime

For embedded and kernel development it might be required to re-implement parts
of the `base:runtime` package. This can include changing the default printing
procedures that handle console output when the program panics, custom
entry-points, tailored for a specific platform or execution environment, or
simply switching up implementations of some procedures.

In case this is required, the following is suggested:

1. Define `$ODIN_ROOT` environment variable to point to a directory within your
project that contains the following directories: `base/`, `core/` and `vendor/`.
2. Inside the `$ODIN_ROOT/base` subdirectory, implement the \*necessary
declarations\*.

What constitutes the necessary definitions is described below.

##### Context-related

The compiler will require these declarations as they concern the `context`
variable.

`Maybe`
`Source_Code_Location`
`Context`
`Allocator`
`Random_Generator`
`Logger`
`__init_context`

##### Runtime initialization/cleanup

These are not strictly required for compilation, but if global variables or
`@(init)`/`@(fini)` blocks are used, these procedures need to be called inside
the entry point.

`_startup_runtime`
`_cleanup_runtime`

##### Type assertion check

These procedures are called every time `.(Type)` expressions are used in order
to check the union tag or the underlying type of `any` before returning the
value of the underlying type. These are not required if `-no-type-assert` is
specified.

`type_assertion_check`
`type_assertion_check2` (takes in typeid)

##### Bounds checking procedures

These procedures are called every time index or slicing expression are used in
order to perform bounds-checking before the actual operation. These are not
required if the `-no-bounds-check` option is specified.

`bounds_check_error`
`matrix_bounds_check_error`
`slice_expr_error_hi`
`slice_expr_error_lo_hi`
`multi_pointer_slice_expr_error`

##### cstring calls

If `cstring` or `cstring16` types are used, these procedures are required.

`cstring_to_string`
`cstring_len`
`cstring16_to_string16`
`cstring16_len`

##### Comparison

These procedures are required for comparison operators between strings and other
compound types to function properly. If strings, structs nor unions are compared,
only `string_eq` procedure is required.

`memory_equal`
`memory_compare`
`memory_compare_zero`
`cstring_eq`
`cstring16_eq`
`cstring_ne`
`cstring16_ne`
`cstring_lt`
`cstring16_lt`
`cstring_gt`
`cstring16_gt`
`cstring_le`
`cstring16_le`
`cstring_ge`
`cstring16_ge`
`string_eq`
`string16_eq`
`string_ne`
`string16_ne`
`string_lt`
`string16_lt`
`string_gt`
`string16_gt`
`string_le`
`string16_le`
`string_ge`
`string16_ge`
`complex32_eq`
`complex32_ne`
`complex64_eq`
`complex64_ne`
`complex128_eq`
`complex128_ne`
`quaternion64_eq`
`quaternion64_ne`
`quaternion128_eq`
`quaternion128_ne`
`quaternion256_eq`
`quaternion256_ne`

##### for-in `string` type

These procedures are required to iterate strings using `for ... in` loop. If this
kind of loop isn't used, these procedures aren't required.

`string_decode_rune`
`string_decode_last_rune` (for `#reverse for`)

##### Required when RTTI is enabled (the vast majority of targets)

These declarations are required unless the `-no-rtti` compiler option is
specified. Note that in order to be useful, some other procedures need to be
implemented. Those procedures aren't mentioned here as the compiler won't
complain if they're missing.

`Type_Info`
`type_table`
`__type_info_of`

##### Hashing

Required if maps are used

`default_hasher`
`default_hasher_cstring`
`default_hasher_string`

##### Pseudo-CRT required procedured due to LLVM but useful in general

`memset`
`memcpy`
`memove`

##### Procedures required by the LLVM backend if u128/i128 is used

`umodti3`
`udivti3`
`modti3`
`divti3`
`fixdfti`
`fixunsdfti`
`fixunsdfdi`
`floattidf`
`floattidf_unsigned`
`truncsfhf2`
`truncdfhf2`
`gnu_h2f_ieee`
`gnu_f2h_ieee`
`extendhfsf2`

##### Procedures required by the LLVM backend if f16 is used (WASM only)

`__ashlti3`
`__multi3`

##### When -no-crt is defined (windows only)

`_tls_index`
`_fltused`

##### Arithmetic

`quo_complex32`
`quo_complex64`
`quo_complex128`

`mul_quaternion64`
`mul_quaternion128`
`mul_quaternion256`

`quo_quaternion64`
`quo_quaternion128`
`quo_quaternion256`

`abs_complex32`
`abs_complex64`
`abs_complex128`

`abs_quaternion64`
`abs_quaternion128`
`abs_quaternion256`

#### Map specific calls

`map_seed_from_map_data`
`__dynamic_map_check_grow` (for static map calls)
`map_insert_hash_dynamic` (for static map calls)
`__dynamic_map_get` (for dynamic map calls)
`__dynamic_map_set` (for dynamic map calls)

#### Dynamic literals (`[dynamic]T` and `map[K]V`) (can be disabled with `-no-dynamic-literals`)

`__dynamic_array_reserve`
`__dynamic_array_append`
`__dynamic_map_reserve`

##### Objective-C specific

`objc_lookUpClass`
`sel_registerName`
`objc_allocateClassPair`

##### Other required declarations

This is required without conditions.

`Load_Directory_File`

## Index

Types (107)

* [Allocator](#Allocator)
* [Allocator\_Error](#Allocator_Error)
* [Allocator\_Mode](#Allocator_Mode)
* [Allocator\_Mode\_Set](#Allocator_Mode_Set)
* [Allocator\_Proc](#Allocator_Proc)
* [Allocator\_Query\_Info](#Allocator_Query_Info)
* [Arena](#Arena)
* [Arena\_Temp](#Arena_Temp)
* [Assertion\_Failure\_Proc](#Assertion_Failure_Proc)
* [Calling\_Convention](#Calling_Convention)
* [Context](#Context)
* [Default\_Random\_State](#Default_Random_State)
* [Default\_Temp\_Allocator](#Default_Temp_Allocator)
* [Equal\_Proc](#Equal_Proc)
* [Hasher\_Proc](#Hasher_Proc)
* [Load\_Directory\_File](#Load_Directory_File)
* [Logger](#Logger)
* [Logger\_Level](#Logger_Level)
* [Logger\_Option](#Logger_Option)
* [Logger\_Options](#Logger_Options)
* [Logger\_Proc](#Logger_Proc)
* [Map\_Cell](#Map_Cell)
* [Map\_Cell\_Info](#Map_Cell_Info)
* [Map\_Hash](#Map_Hash)
* [Map\_Info](#Map_Info)
* [Maybe](#Maybe)
* [Memory\_Block](#Memory_Block)
* [Objc\_Block](#Objc_Block)
* [Odin\_Arch\_Type](#Odin_Arch_Type)
* [Odin\_Arch\_Types](#Odin_Arch_Types)
* [Odin\_Build\_Mode\_Type](#Odin_Build_Mode_Type)
* [Odin\_Endian\_Type](#Odin_Endian_Type)
* [Odin\_OS\_Type](#Odin_OS_Type)
* [Odin\_OS\_Types](#Odin_OS_Types)
* [Odin\_Optimization\_Mode](#Odin_Optimization_Mode)
* [Odin\_Platform\_Subtarget\_Type](#Odin_Platform_Subtarget_Type)
* [Odin\_Platform\_Subtarget\_Types](#Odin_Platform_Subtarget_Types)
* [Odin\_Sanitizer\_Flags](#Odin_Sanitizer_Flags)
* [Platform\_Endianness](#Platform_Endianness)
* [Random\_Generator](#Random_Generator)
* [Random\_Generator\_Mode](#Random_Generator_Mode)
* [Random\_Generator\_Proc](#Random_Generator_Proc)
* [Random\_Generator\_Query\_Info](#Random_Generator_Query_Info)
* [Random\_Generator\_Query\_Info\_Flag](#Random_Generator_Query_Info_Flag)
* [Raw\_Any](#Raw_Any)
* [Raw\_Complex128](#Raw_Complex128)
* [Raw\_Complex32](#Raw_Complex32)
* [Raw\_Complex64](#Raw_Complex64)
* [Raw\_Cstring](#Raw_Cstring)
* [Raw\_Cstring16](#Raw_Cstring16)
* [Raw\_Dynamic\_Array](#Raw_Dynamic_Array)
* [Raw\_Fixed\_Capacity\_Dynamic\_Array](#Raw_Fixed_Capacity_Dynamic_Array)
* [Raw\_Map](#Raw_Map)
* [Raw\_Quaternion128](#Raw_Quaternion128)
* [Raw\_Quaternion128\_Vector\_Scalar](#Raw_Quaternion128_Vector_Scalar)
* [Raw\_Quaternion256](#Raw_Quaternion256)
* [Raw\_Quaternion256\_Vector\_Scalar](#Raw_Quaternion256_Vector_Scalar)
* [Raw\_Quaternion64](#Raw_Quaternion64)
* [Raw\_Quaternion64\_Vector\_Scalar](#Raw_Quaternion64_Vector_Scalar)
* [Raw\_SOA\_Footer\_Dynamic\_Array](#Raw_SOA_Footer_Dynamic_Array)
* [Raw\_SOA\_Footer\_Slice](#Raw_SOA_Footer_Slice)
* [Raw\_Slice](#Raw_Slice)
* [Raw\_Soa\_Pointer](#Raw_Soa_Pointer)
* [Raw\_String](#Raw_String)
* [Raw\_String16](#Raw_String16)
* [Source\_Code\_Location](#Source_Code_Location)
* [Thread\_Local\_Cleaner](#Thread_Local_Cleaner)
* [Thread\_Local\_Cleaner\_Contextless](#Thread_Local_Cleaner_Contextless)
* [Thread\_Local\_Cleaner\_Odin](#Thread_Local_Cleaner_Odin)
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
* [Type\_Info\_Flag](#Type_Info_Flag)
* [Type\_Info\_Flags](#Type_Info_Flags)
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
* [Type\_Info\_String\_Encoding\_Kind](#Type_Info_String_Encoding_Kind)
* [Type\_Info\_Struct](#Type_Info_Struct)
* [Type\_Info\_Struct\_Flag](#Type_Info_Struct_Flag)
* [Type\_Info\_Struct\_Flags](#Type_Info_Struct_Flags)
* [Type\_Info\_Struct\_Soa\_Kind](#Type_Info_Struct_Soa_Kind)
* [Type\_Info\_Type\_Id](#Type_Info_Type_Id)
* [Type\_Info\_Union](#Type_Info_Union)
* [WASM\_Allocator](#WASM_Allocator)
* [int\_t](#int_t)

Constants (26)

* [ALL\_ODIN\_ARCH\_TYPES](#ALL_ODIN_ARCH_TYPES)
* [ALL\_ODIN\_OS\_TYPES](#ALL_ODIN_OS_TYPES)
* [Byte](#Byte)
* [DEFAULT\_ALIGNMENT](#DEFAULT_ALIGNMENT)
* [DEFAULT\_ARENA\_GROWING\_MINIMUM\_BLOCK\_SIZE](#DEFAULT_ARENA_GROWING_MINIMUM_BLOCK_SIZE)
* [DEFAULT\_DYNAMIC\_ARRAY\_CAPACITY](#DEFAULT_DYNAMIC_ARRAY_CAPACITY)
* [DEFAULT\_TEMP\_ALLOCATOR\_BACKING\_SIZE](#DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE)
* [Exabyte](#Exabyte)
* [Gigabyte](#Gigabyte)
* [HASH\_MASK](#HASH_MASK)
* [HAS\_HARDWARE\_SIMD](#HAS_HARDWARE_SIMD)
* [HAS\_RAND\_BYTES](#HAS_RAND_BYTES)
* [INITIAL\_HASH\_SEED](#INITIAL_HASH_SEED)
* [Kilobyte](#Kilobyte)
* [MAP\_CACHE\_LINE\_LOG2](#MAP_CACHE_LINE_LOG2)
* [MAP\_CACHE\_LINE\_SIZE](#MAP_CACHE_LINE_SIZE)
* [MAP\_LOAD\_FACTOR](#MAP_LOAD_FACTOR)
* [MAP\_MIN\_LOG2\_CAPACITY](#MAP_MIN_LOG2_CAPACITY)
* [Megabyte](#Megabyte)
* [NATIVE\_SIMD\_BIT\_WIDTH](#NATIVE_SIMD_BIT_WIDTH)
* [NO\_DEFAULT\_TEMP\_ALLOCATOR](#NO_DEFAULT_TEMP_ALLOCATOR)
* [ODIN\_PLATFORM\_SUBTARGET\_IOS](#ODIN_PLATFORM_SUBTARGET_IOS)
* [Petabyte](#Petabyte)
* [RUNTIME\_REQUIRE](#RUNTIME_REQUIRE)
* [TOMBSTONE\_MASK](#TOMBSTONE_MASK)
* [Terabyte](#Terabyte)

Variables (5)

* [args\_\_](#args__)
* [global\_default\_temp\_allocator\_data](#global_default_temp_allocator_data)
* [global\_default\_wasm\_allocator\_data](#global_default_wasm_allocator_data)
* [init\_default\_context\_for\_js](#init_default_context_for_js)
* [type\_table](#type_table)

Procedures (374)

* [DEFAULT\_TEMP\_ALLOCATOR\_TEMP\_GUARD](#DEFAULT_TEMP_ALLOCATOR_TEMP_GUARD)
* [abs\_complex128](#abs_complex128)
* [abs\_complex32](#abs_complex32)
* [abs\_complex64](#abs_complex64)
* [abs\_quaternion128](#abs_quaternion128)
* [abs\_quaternion256](#abs_quaternion256)
* [abs\_quaternion64](#abs_quaternion64)
* [add\_thread\_local\_cleaner](#add_thread_local_cleaner)
* [aeabi\_d2h](#aeabi_d2h)
* [align\_forward\_int](#align_forward_int)
* [align\_forward\_uint](#align_forward_uint)
* [align\_forward\_uintptr](#align_forward_uintptr)
* [alloc\_from\_memory\_block](#alloc_from_memory_block)
* [append\_elem](#append_elem)
* [append\_elem\_string](#append_elem_string)
* [append\_elems](#append_elems)
* [append\_fixed\_capacity\_elem](#append_fixed_capacity_elem)
* [append\_fixed\_capacity\_elems](#append_fixed_capacity_elems)
* [append\_fixed\_capacity\_string](#append_fixed_capacity_string)
* [append\_nothing\_dynamic\_array](#append_nothing_dynamic_array)
* [append\_nothing\_fixed\_capacity\_dynamic\_array](#append_nothing_fixed_capacity_dynamic_array)
* [append\_nothing\_soa](#append_nothing_soa)
* [append\_soa\_elem](#append_soa_elem)
* [append\_soa\_elems](#append_soa_elems)
* [append\_string](#append_string)
* [arena\_alloc](#arena_alloc)
* [arena\_allocator](#arena_allocator)
* [arena\_allocator\_proc](#arena_allocator_proc)
* [arena\_check\_temp](#arena_check_temp)
* [arena\_destroy](#arena_destroy)
* [arena\_free\_all](#arena_free_all)
* [arena\_free\_last\_memory\_block](#arena_free_last_memory_block)
* [arena\_init](#arena_init)
* [arena\_temp\_begin](#arena_temp_begin)
* [arena\_temp\_end](#arena_temp_end)
* [arena\_temp\_ignore](#arena_temp_ignore)
* [assert](#assert)
* [assert\_contextless](#assert_contextless)
* [assign\_at\_elem](#assign_at_elem)
* [assign\_at\_elem\_fixed\_capacity\_dynamic\_array](#assign_at_elem_fixed_capacity_dynamic_array)
* [assign\_at\_elem\_string](#assign_at_elem_string)
* [assign\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](#assign_at_elem_string_fixed_capacity_dynamic_array)
* [assign\_at\_elems](#assign_at_elems)
* [assign\_at\_elems\_fixed\_capacity\_dynamic\_array](#assign_at_elems_fixed_capacity_dynamic_array)
* [bounds\_check\_error](#bounds_check_error)
* [bounds\_check\_error\_loc](#bounds_check_error_loc)
* [bounds\_trap](#bounds_trap)
* [bzero](#bzero)
* [card](#card)
* [clear\_dynamic\_array](#clear_dynamic_array)
* [clear\_fixed\_capacity\_dynamic\_array](#clear_fixed_capacity_dynamic_array)
* [clear\_map](#clear_map)
* [clear\_soa\_dynamic\_array](#clear_soa_dynamic_array)
* [complex128\_eq](#complex128_eq)
* [complex128\_ne](#complex128_ne)
* [complex32\_eq](#complex32_eq)
* [complex32\_ne](#complex32_ne)
* [complex64\_eq](#complex64_eq)
* [complex64\_ne](#complex64_ne)
* [conditional\_mem\_zero](#conditional_mem_zero)
* [container\_of](#container_of)
* [copy\_from\_string](#copy_from_string)
* [copy\_from\_string16](#copy_from_string16)
* [copy\_slice](#copy_slice)
* [copy\_slice\_raw](#copy_slice_raw)
* [cstring16\_cmp](#cstring16_cmp)
* [cstring16\_eq](#cstring16_eq)
* [cstring16\_ge](#cstring16_ge)
* [cstring16\_gt](#cstring16_gt)
* [cstring16\_le](#cstring16_le)
* [cstring16\_len](#cstring16_len)
* [cstring16\_lt](#cstring16_lt)
* [cstring16\_ne](#cstring16_ne)
* [cstring16\_to\_string16](#cstring16_to_string16)
* [cstring\_cmp](#cstring_cmp)
* [cstring\_eq](#cstring_eq)
* [cstring\_ge](#cstring_ge)
* [cstring\_gt](#cstring_gt)
* [cstring\_le](#cstring_le)
* [cstring\_len](#cstring_len)
* [cstring\_lt](#cstring_lt)
* [cstring\_ne](#cstring_ne)
* [cstring\_to\_string](#cstring_to_string)
* [debug\_trap](#debug_trap)
* [default\_allocator](#default_allocator)
* [default\_allocator\_proc](#default_allocator_proc)
* [default\_assertion\_contextless\_failure\_proc](#default_assertion_contextless_failure_proc)
* [default\_assertion\_failure\_proc](#default_assertion_failure_proc)
* [default\_context](#default_context)
* [default\_context\_ptr](#default_context_ptr)
* [default\_hasher](#default_hasher)
* [default\_hasher\_complex128](#default_hasher_complex128)
* [default\_hasher\_cstring](#default_hasher_cstring)
* [default\_hasher\_f64](#default_hasher_f64)
* [default\_hasher\_quaternion256](#default_hasher_quaternion256)
* [default\_hasher\_string](#default_hasher_string)
* [default\_logger](#default_logger)
* [default\_logger\_proc](#default_logger_proc)
* [default\_random\_generator](#default_random_generator)
* [default\_random\_generator\_proc](#default_random_generator_proc)
* [default\_temp\_allocator](#default_temp_allocator)
* [default\_temp\_allocator\_destroy](#default_temp_allocator_destroy)
* [default\_temp\_allocator\_init](#default_temp_allocator_init)
* [default\_temp\_allocator\_proc](#default_temp_allocator_proc)
* [default\_temp\_allocator\_temp\_begin](#default_temp_allocator_temp_begin)
* [default\_temp\_allocator\_temp\_end](#default_temp_allocator_temp_end)
* [default\_wasm\_allocator](#default_wasm_allocator)
* [delete\_cstring](#delete_cstring)
* [delete\_cstring16](#delete_cstring16)
* [delete\_dynamic\_array](#delete_dynamic_array)
* [delete\_key](#delete_key)
* [delete\_map](#delete_map)
* [delete\_slice](#delete_slice)
* [delete\_soa\_dynamic\_array](#delete_soa_dynamic_array)
* [delete\_soa\_slice](#delete_soa_slice)
* [delete\_string](#delete_string)
* [delete\_string16](#delete_string16)
* [divmodti4](#divmodti4)
* [divti3](#divti3)
* [dynamic\_array\_expr\_error](#dynamic_array_expr_error)
* [dynamic\_array\_expr\_error\_loc](#dynamic_array_expr_error_loc)
* [encode\_rune](#encode_rune)
* [ensure](#ensure)
* [ensure\_contextless](#ensure_contextless)
* [exit](#exit)
* [extendhfsf2](#extendhfsf2)
* [fixdfti](#fixdfti)
* [fixunsdfdi](#fixunsdfdi)
* [fixunsdfti](#fixunsdfti)
* [floattidf](#floattidf)
* [floattidf\_unsigned](#floattidf_unsigned)
* [gnu\_f2h\_ieee](#gnu_f2h_ieee)
* [gnu\_h2f\_ieee](#gnu_h2f_ieee)
* [heap\_alloc](#heap_alloc)
* [heap\_allocator](#heap_allocator)
* [heap\_allocator\_proc](#heap_allocator_proc)
* [heap\_free](#heap_free)
* [heap\_resize](#heap_resize)
* [init\_global\_temporary\_allocator](#init_global_temporary_allocator)
* [inject\_at\_elem](#inject_at_elem)
* [inject\_at\_elem\_fixed\_capacity\_dynamic\_array](#inject_at_elem_fixed_capacity_dynamic_array)
* [inject\_at\_elem\_soa](#inject_at_elem_soa)
* [inject\_at\_elem\_string](#inject_at_elem_string)
* [inject\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](#inject_at_elem_string_fixed_capacity_dynamic_array)
* [inject\_at\_elems](#inject_at_elems)
* [inject\_at\_elems\_fixed\_capacity\_dynamic\_array](#inject_at_elems_fixed_capacity_dynamic_array)
* [inject\_at\_elems\_soa](#inject_at_elems_soa)
* [into\_dynamic\_soa](#into_dynamic_soa)
* [is\_power\_of\_two\_int](#is_power_of_two_int)
* [is\_power\_of\_two\_uint](#is_power_of_two_uint)
* [is\_power\_of\_two\_uintptr](#is_power_of_two_uintptr)
* [make\_aligned](#make_aligned)
* [make\_dynamic\_array](#make_dynamic_array)
* [make\_dynamic\_array\_error\_loc](#make_dynamic_array_error_loc)
* [make\_dynamic\_array\_len](#make_dynamic_array_len)
* [make\_dynamic\_array\_len\_cap](#make_dynamic_array_len_cap)
* [make\_map](#make_map)
* [make\_map\_cap](#make_map_cap)
* [make\_map\_expr\_error\_loc](#make_map_expr_error_loc)
* [make\_multi\_pointer](#make_multi_pointer)
* [make\_slice](#make_slice)
* [make\_slice\_error\_loc](#make_slice_error_loc)
* [make\_soa\_aligned](#make_soa_aligned)
* [make\_soa\_dynamic\_array](#make_soa_dynamic_array)
* [make\_soa\_dynamic\_array\_len](#make_soa_dynamic_array_len)
* [make\_soa\_dynamic\_array\_len\_cap](#make_soa_dynamic_array_len_cap)
* [make\_soa\_slice](#make_soa_slice)
* [map\_alloc\_dynamic](#map_alloc_dynamic)
* [map\_cap](#map_cap)
* [map\_cell\_index\_dynamic](#map_cell_index_dynamic)
* [map\_cell\_index\_dynamic\_const](#map_cell_index_dynamic_const)
* [map\_cell\_index\_static](#map_cell_index_static)
* [map\_cell\_info](#map_cell_info)
* [map\_clear\_dynamic](#map_clear_dynamic)
* [map\_data](#map_data)
* [map\_desired\_position](#map_desired_position)
* [map\_entry](#map_entry)
* [map\_erase\_dynamic](#map_erase_dynamic)
* [map\_exists\_dynamic](#map_exists_dynamic)
* [map\_free\_dynamic](#map_free_dynamic)
* [map\_get](#map_get)
* [map\_grow\_dynamic](#map_grow_dynamic)
* [map\_hash\_is\_deleted](#map_hash_is_deleted)
* [map\_hash\_is\_empty](#map_hash_is_empty)
* [map\_hash\_is\_valid](#map_hash_is_valid)
* [map\_info](#map_info)
* [map\_insert](#map_insert)
* [map\_insert\_hash\_dynamic](#map_insert_hash_dynamic)
* [map\_insert\_hash\_dynamic\_with\_key](#map_insert_hash_dynamic_with_key)
* [map\_kvh\_data\_dynamic](#map_kvh_data_dynamic)
* [map\_kvh\_data\_static](#map_kvh_data_static)
* [map\_kvh\_data\_values\_dynamic](#map_kvh_data_values_dynamic)
* [map\_len](#map_len)
* [map\_load\_factor](#map_load_factor)
* [map\_log2\_cap](#map_log2_cap)
* [map\_lookup\_dynamic](#map_lookup_dynamic)
* [map\_probe\_distance](#map_probe_distance)
* [map\_reserve\_dynamic](#map_reserve_dynamic)
* [map\_resize\_threshold](#map_resize_threshold)
* [map\_seed](#map_seed)
* [map\_seed\_from\_map\_data](#map_seed_from_map_data)
* [map\_shrink\_dynamic](#map_shrink_dynamic)
* [map\_total\_allocation\_size](#map_total_allocation_size)
* [map\_total\_allocation\_size\_from\_value](#map_total_allocation_size_from_value)
* [map\_upsert](#map_upsert)
* [matrix\_bounds\_check\_error](#matrix_bounds_check_error)
* [mem\_alloc](#mem_alloc)
* [mem\_alloc\_bytes](#mem_alloc_bytes)
* [mem\_alloc\_non\_zeroed](#mem_alloc_non_zeroed)
* [mem\_copy](#mem_copy)
* [mem\_copy\_non\_overlapping](#mem_copy_non_overlapping)
* [mem\_free](#mem_free)
* [mem\_free\_all](#mem_free_all)
* [mem\_free\_bytes](#mem_free_bytes)
* [mem\_free\_with\_size](#mem_free_with_size)
* [mem\_resize](#mem_resize)
* [mem\_zero](#mem_zero)
* [memcpy](#memcpy)
* [memmove](#memmove)
* [memory\_block\_alloc](#memory_block_alloc)
* [memory\_block\_dealloc](#memory_block_dealloc)
* [memory\_compare](#memory_compare)
* [memory\_compare\_zero](#memory_compare_zero)
* [memory\_equal](#memory_equal)
* [memory\_prefix\_length](#memory_prefix_length)
* [memset](#memset)
* [modti3](#modti3)
* [mul\_quaternion128](#mul_quaternion128)
* [mul\_quaternion256](#mul_quaternion256)
* [mul\_quaternion64](#mul_quaternion64)
* [multi\_pointer\_slice\_expr\_error](#multi_pointer_slice_expr_error)
* [multi\_pointer\_slice\_handle\_error](#multi_pointer_slice_handle_error)
* [new](#new)
* [new\_aligned](#new_aligned)
* [new\_clone](#new_clone)
* [nil\_allocator](#nil_allocator)
* [nil\_allocator\_proc](#nil_allocator_proc)
* [non\_zero\_append\_elem](#non_zero_append_elem)
* [non\_zero\_append\_elem\_fixed\_capacity\_string](#non_zero_append_elem_fixed_capacity_string)
* [non\_zero\_append\_elem\_string](#non_zero_append_elem_string)
* [non\_zero\_append\_elems](#non_zero_append_elems)
* [non\_zero\_append\_soa\_elem](#non_zero_append_soa_elem)
* [non\_zero\_append\_soa\_elems](#non_zero_append_soa_elems)
* [non\_zero\_mem\_resize](#non_zero_mem_resize)
* [non\_zero\_reserve\_dynamic\_array](#non_zero_reserve_dynamic_array)
* [non\_zero\_reserve\_soa](#non_zero_reserve_soa)
* [non\_zero\_resize\_dynamic\_array](#non_zero_resize_dynamic_array)
* [non\_zero\_resize\_fixed\_capacity\_dynamic\_array](#non_zero_resize_fixed_capacity_dynamic_array)
* [non\_zero\_resize\_soa](#non_zero_resize_soa)
* [ordered\_remove\_dynamic\_array](#ordered_remove_dynamic_array)
* [ordered\_remove\_fixed\_capacity\_dynamic\_array](#ordered_remove_fixed_capacity_dynamic_array)
* [ordered\_remove\_soa](#ordered_remove_soa)
* [panic](#panic)
* [panic\_allocator](#panic_allocator)
* [panic\_allocator\_proc](#panic_allocator_proc)
* [panic\_contextless](#panic_contextless)
* [pop\_dynamic\_array](#pop_dynamic_array)
* [pop\_fixed\_capacity\_dynamic\_array](#pop_fixed_capacity_dynamic_array)
* [pop\_front\_dynamic\_array](#pop_front_dynamic_array)
* [pop\_front\_fixed\_capacity\_dynamic\_array](#pop_front_fixed_capacity_dynamic_array)
* [pop\_front\_safe\_dynamic\_array](#pop_front_safe_dynamic_array)
* [pop\_front\_safe\_fixed\_capacity\_dynamic\_array](#pop_front_safe_fixed_capacity_dynamic_array)
* [pop\_safe\_dynamic\_array](#pop_safe_dynamic_array)
* [pop\_safe\_fixed\_capacity\_dynamic\_array](#pop_safe_fixed_capacity_dynamic_array)
* [print\_any\_single](#print_any_single)
* [print\_byte](#print_byte)
* [print\_caller\_location](#print_caller_location)
* [print\_encoded\_rune](#print_encoded_rune)
* [print\_i64](#print_i64)
* [print\_int](#print_int)
* [print\_rune](#print_rune)
* [print\_string](#print_string)
* [print\_strings](#print_strings)
* [print\_type](#print_type)
* [print\_typeid](#print_typeid)
* [print\_u64](#print_u64)
* [print\_uint](#print_uint)
* [print\_uintptr](#print_uintptr)
* [println\_any](#println_any)
* [quaternion128\_eq](#quaternion128_eq)
* [quaternion128\_ne](#quaternion128_ne)
* [quaternion256\_eq](#quaternion256_eq)
* [quaternion256\_ne](#quaternion256_ne)
* [quaternion64\_eq](#quaternion64_eq)
* [quaternion64\_ne](#quaternion64_ne)
* [quo\_complex128](#quo_complex128)
* [quo\_complex32](#quo_complex32)
* [quo\_complex64](#quo_complex64)
* [quo\_quaternion128](#quo_quaternion128)
* [quo\_quaternion256](#quo_quaternion256)
* [quo\_quaternion64](#quo_quaternion64)
* [rand\_bytes](#rand_bytes)
* [random\_generator\_query\_info](#random_generator_query_info)
* [random\_generator\_read\_bytes](#random_generator_read_bytes)
* [random\_generator\_read\_ptr](#random_generator_read_ptr)
* [random\_generator\_reset\_bytes](#random_generator_reset_bytes)
* [random\_generator\_reset\_u64](#random_generator_reset_u64)
* [raw\_soa\_footer\_dynamic\_array](#raw_soa_footer_dynamic_array)
* [raw\_soa\_footer\_slice](#raw_soa_footer_slice)
* [read\_cycle\_counter](#read_cycle_counter)
* [remove\_range\_dynamic\_array](#remove_range_dynamic_array)
* [remove\_range\_fixed\_capacity\_dynamic\_array](#remove_range_fixed_capacity_dynamic_array)
* [reserve\_dynamic\_array](#reserve_dynamic_array)
* [reserve\_map](#reserve_map)
* [reserve\_soa](#reserve_soa)
* [resize\_dynamic\_array](#resize_dynamic_array)
* [resize\_fixed\_capacity\_dynamic\_array](#resize_fixed_capacity_dynamic_array)
* [resize\_soa](#resize_soa)
* [run\_thread\_local\_cleaners](#run_thread_local_cleaners)
* [shrink\_dynamic\_array](#shrink_dynamic_array)
* [shrink\_map](#shrink_map)
* [slice\_expr\_error\_hi](#slice_expr_error_hi)
* [slice\_expr\_error\_hi\_loc](#slice_expr_error_hi_loc)
* [slice\_expr\_error\_lo\_hi](#slice_expr_error_lo_hi)
* [slice\_expr\_error\_lo\_hi\_loc](#slice_expr_error_lo_hi_loc)
* [slice\_handle\_error](#slice_handle_error)
* [stderr\_write](#stderr_write)
* [string16\_cmp](#string16_cmp)
* [string16\_decode\_last\_rune](#string16_decode_last_rune)
* [string16\_decode\_rune](#string16_decode_rune)
* [string16\_eq](#string16_eq)
* [string16\_ge](#string16_ge)
* [string16\_gt](#string16_gt)
* [string16\_le](#string16_le)
* [string16\_lt](#string16_lt)
* [string16\_ne](#string16_ne)
* [string\_cmp](#string_cmp)
* [string\_decode\_last\_rune](#string_decode_last_rune)
* [string\_decode\_rune](#string_decode_rune)
* [string\_eq](#string_eq)
* [string\_ge](#string_ge)
* [string\_gt](#string_gt)
* [string\_le](#string_le)
* [string\_lt](#string_lt)
* [string\_ne](#string_ne)
* [trap](#trap)
* [truncdfhf2](#truncdfhf2)
* [truncsfhf2](#truncsfhf2)
* [type\_assertion\_check2\_contextless](#type_assertion_check2_contextless)
* [type\_assertion\_check2\_with\_context](#type_assertion_check2_with_context)
* [type\_assertion\_check\_contextless](#type_assertion_check_contextless)
* [type\_assertion\_check\_with\_context](#type_assertion_check_with_context)
* [type\_assertion\_trap\_contextless](#type_assertion_trap_contextless)
* [type\_info\_base](#type_info_base)
* [type\_info\_base\_without\_enum](#type_info_base_without_enum)
* [type\_info\_core](#type_info_core)
* [type\_info\_underlying](#type_info_underlying)
* [typeid\_base](#typeid_base)
* [typeid\_base\_without\_enum](#typeid_base_without_enum)
* [typeid\_core](#typeid_core)
* [typeid\_underlying](#typeid_underlying)
* [udivmod128](#udivmod128)
* [udivmodti4](#udivmodti4)
* [udivti3](#udivti3)
* [umodti3](#umodti3)
* [unimplemented](#unimplemented)
* [unimplemented\_contextless](#unimplemented_contextless)
* [unordered\_remove\_dynamic\_array](#unordered_remove_dynamic_array)
* [unordered\_remove\_fixed\_capacity\_dynamic\_array](#unordered_remove_fixed_capacity_dynamic_array)
* [unordered\_remove\_soa](#unordered_remove_soa)
* [wasm\_allocator](#wasm_allocator)
* [wasm\_allocator\_free\_space](#wasm_allocator_free_space)
* [wasm\_allocator\_init](#wasm_allocator_init)
* [wasm\_allocator\_proc](#wasm_allocator_proc)
* [wasm\_allocator\_size](#wasm_allocator_size)
* [write\_byte](#write_byte)
* [write\_caller\_location](#write_caller_location)
* [write\_encoded\_rune](#write_encoded_rune)
* [write\_i64](#write_i64)
* [write\_rune](#write_rune)
* [write\_string](#write_string)
* [write\_typeid](#write_typeid)
* [write\_u64](#write_u64)
* [write\_write\_type](#write_write_type)

Procedure Groups (31)

* [align\_forward](#align_forward)
* [append](#append)
* [append\_nothing](#append_nothing)
* [append\_soa](#append_soa)
* [assign\_at](#assign_at)
* [clear](#clear)
* [clear\_soa](#clear_soa)
* [copy](#copy)
* [delete](#delete)
* [delete\_soa](#delete_soa)
* [free](#free)
* [free\_all](#free_all)
* [inject\_at](#inject_at)
* [inject\_at\_soa](#inject_at_soa)
* [is\_power\_of\_two](#is_power_of_two)
* [make](#make)
* [make\_soa](#make_soa)
* [non\_zero\_append](#non_zero_append)
* [non\_zero\_reserve](#non_zero_reserve)
* [non\_zero\_resize](#non_zero_resize)
* [ordered\_remove](#ordered_remove)
* [pop](#pop)
* [pop\_front](#pop_front)
* [pop\_front\_safe](#pop_front_safe)
* [pop\_safe](#pop_safe)
* [raw\_soa\_footer](#raw_soa_footer)
* [remove\_range](#remove_range)
* [reserve](#reserve)
* [resize](#resize)
* [shrink](#shrink)
* [unordered\_remove](#unordered_remove)

`#config` values (1)

* [DEFAULT\_TEMP\_ALLOCATOR\_BACKING\_SIZE](#DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE)

## Types

### [Allocator ¶](#Allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L333)

```
Allocator :: struct {
	procedure: Allocator_Proc,
	data:      rawptr,
}
```

##### Related Procedures With Parameters

* [arena\_init](/base/runtime/#arena_init)
* [default\_temp\_allocator\_init](/base/runtime/#default_temp_allocator_init)
* [delete\_cstring](/base/runtime/#delete_cstring)
* [delete\_cstring16](/base/runtime/#delete_cstring16)
* [delete\_slice](/base/runtime/#delete_slice)
* [delete\_soa\_slice](/base/runtime/#delete_soa_slice)
* [delete\_string](/base/runtime/#delete_string)
* [delete\_string16](/base/runtime/#delete_string16)
* [init\_global\_temporary\_allocator](/base/runtime/#init_global_temporary_allocator)
* [make\_aligned](/base/runtime/#make_aligned)
* [make\_dynamic\_array](/base/runtime/#make_dynamic_array)
* [make\_dynamic\_array\_len](/base/runtime/#make_dynamic_array_len)
* [make\_dynamic\_array\_len\_cap](/base/runtime/#make_dynamic_array_len_cap)
* [make\_map](/base/runtime/#make_map)
* [make\_map\_cap](/base/runtime/#make_map_cap)
* [make\_multi\_pointer](/base/runtime/#make_multi_pointer)
* [make\_slice](/base/runtime/#make_slice)
* [make\_soa\_aligned](/base/runtime/#make_soa_aligned)
* [make\_soa\_dynamic\_array](/base/runtime/#make_soa_dynamic_array)
* [make\_soa\_dynamic\_array\_len](/base/runtime/#make_soa_dynamic_array_len)
* [make\_soa\_dynamic\_array\_len\_cap](/base/runtime/#make_soa_dynamic_array_len_cap)
* [make\_soa\_slice](/base/runtime/#make_soa_slice)
* [map\_alloc\_dynamic](/base/runtime/#map_alloc_dynamic)
* [mem\_alloc](/base/runtime/#mem_alloc)
* [mem\_alloc\_bytes](/base/runtime/#mem_alloc_bytes)
* [mem\_alloc\_non\_zeroed](/base/runtime/#mem_alloc_non_zeroed)
* [mem\_free](/base/runtime/#mem_free)
* [mem\_free\_all](/base/runtime/#mem_free_all)
* [mem\_free\_bytes](/base/runtime/#mem_free_bytes)
* [mem\_free\_with\_size](/base/runtime/#mem_free_with_size)
* [mem\_resize](/base/runtime/#mem_resize)
* [memory\_block\_alloc](/base/runtime/#memory_block_alloc)
* [new](/base/runtime/#new)
* [new\_aligned](/base/runtime/#new_aligned)
* [new\_clone](/base/runtime/#new_clone)
* [non\_zero\_mem\_resize](/base/runtime/#non_zero_mem_resize)
* [delete](/base/runtime/#delete) *(procedure groups)*
* [delete\_soa](/base/runtime/#delete_soa) *(procedure groups)*
* [free](/base/runtime/#free) *(procedure groups)*
* [free\_all](/base/runtime/#free_all) *(procedure groups)*
* [make](/base/runtime/#make) *(procedure groups)*
* [make\_soa](/base/runtime/#make_soa) *(procedure groups)*



##### Related Procedures With Returns

* [arena\_allocator](/base/runtime/#arena_allocator)
* [default\_temp\_allocator](/base/runtime/#default_temp_allocator)
* [default\_wasm\_allocator](/base/runtime/#default_wasm_allocator)
* [heap\_allocator](/base/runtime/#heap_allocator)
* [nil\_allocator](/base/runtime/#nil_allocator)
* [panic\_allocator](/base/runtime/#panic_allocator)
* [wasm\_allocator](/base/runtime/#wasm_allocator)

### [Allocator\_Error ¶](#Allocator_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L321)

```
Allocator_Error :: enum u8 {
	None                 = 0, 
	Out_Of_Memory        = 1, 
	Invalid_Pointer      = 2, 
	Invalid_Argument     = 3, 
	Mode_Not_Implemented = 4, 
}
```

##### Related Procedures With Returns

* [alloc\_from\_memory\_block](/base/runtime/#alloc_from_memory_block)
* [append\_elem](/base/runtime/#append_elem)
* [append\_elem\_string](/base/runtime/#append_elem_string)
* [append\_elems](/base/runtime/#append_elems)
* [append\_nothing\_dynamic\_array](/base/runtime/#append_nothing_dynamic_array)
* [append\_nothing\_soa](/base/runtime/#append_nothing_soa)
* [append\_soa\_elem](/base/runtime/#append_soa_elem)
* [append\_soa\_elems](/base/runtime/#append_soa_elems)
* [append\_string](/base/runtime/#append_string)
* [arena\_alloc](/base/runtime/#arena_alloc)
* [arena\_allocator\_proc](/base/runtime/#arena_allocator_proc)
* [arena\_init](/base/runtime/#arena_init)
* [assign\_at\_elem](/base/runtime/#assign_at_elem)
* [assign\_at\_elem\_string](/base/runtime/#assign_at_elem_string)
* [assign\_at\_elems](/base/runtime/#assign_at_elems)
* [default\_temp\_allocator\_proc](/base/runtime/#default_temp_allocator_proc)
* [delete\_cstring](/base/runtime/#delete_cstring)
* [delete\_cstring16](/base/runtime/#delete_cstring16)
* [delete\_dynamic\_array](/base/runtime/#delete_dynamic_array)
* [delete\_map](/base/runtime/#delete_map)
* [delete\_slice](/base/runtime/#delete_slice)
* [delete\_soa\_dynamic\_array](/base/runtime/#delete_soa_dynamic_array)
* [delete\_soa\_slice](/base/runtime/#delete_soa_slice)
* [delete\_string](/base/runtime/#delete_string)
* [delete\_string16](/base/runtime/#delete_string16)
* [heap\_allocator\_proc](/base/runtime/#heap_allocator_proc)
* [inject\_at\_elem](/base/runtime/#inject_at_elem)
* [inject\_at\_elem\_soa](/base/runtime/#inject_at_elem_soa)
* [inject\_at\_elem\_string](/base/runtime/#inject_at_elem_string)
* [inject\_at\_elems](/base/runtime/#inject_at_elems)
* [inject\_at\_elems\_soa](/base/runtime/#inject_at_elems_soa)
* [make\_aligned](/base/runtime/#make_aligned)
* [make\_dynamic\_array](/base/runtime/#make_dynamic_array)
* [make\_dynamic\_array\_len](/base/runtime/#make_dynamic_array_len)
* [make\_dynamic\_array\_len\_cap](/base/runtime/#make_dynamic_array_len_cap)
* [make\_map\_cap](/base/runtime/#make_map_cap)
* [make\_multi\_pointer](/base/runtime/#make_multi_pointer)
* [make\_slice](/base/runtime/#make_slice)
* [make\_soa\_aligned](/base/runtime/#make_soa_aligned)
* [make\_soa\_dynamic\_array](/base/runtime/#make_soa_dynamic_array)
* [make\_soa\_dynamic\_array\_len](/base/runtime/#make_soa_dynamic_array_len)
* [make\_soa\_dynamic\_array\_len\_cap](/base/runtime/#make_soa_dynamic_array_len_cap)
* [make\_soa\_slice](/base/runtime/#make_soa_slice)
* [map\_alloc\_dynamic](/base/runtime/#map_alloc_dynamic)
* [map\_entry](/base/runtime/#map_entry)
* [map\_free\_dynamic](/base/runtime/#map_free_dynamic)
* [map\_grow\_dynamic](/base/runtime/#map_grow_dynamic)
* [map\_reserve\_dynamic](/base/runtime/#map_reserve_dynamic)
* [map\_shrink\_dynamic](/base/runtime/#map_shrink_dynamic)
* [mem\_alloc](/base/runtime/#mem_alloc)
* [mem\_alloc\_bytes](/base/runtime/#mem_alloc_bytes)
* [mem\_alloc\_non\_zeroed](/base/runtime/#mem_alloc_non_zeroed)
* [mem\_free](/base/runtime/#mem_free)
* [mem\_free\_all](/base/runtime/#mem_free_all)
* [mem\_free\_bytes](/base/runtime/#mem_free_bytes)
* [mem\_free\_with\_size](/base/runtime/#mem_free_with_size)
* [mem\_resize](/base/runtime/#mem_resize)
* [memory\_block\_alloc](/base/runtime/#memory_block_alloc)
* [new](/base/runtime/#new)
* [new\_aligned](/base/runtime/#new_aligned)
* [new\_clone](/base/runtime/#new_clone)
* [nil\_allocator\_proc](/base/runtime/#nil_allocator_proc)
* [non\_zero\_append\_elem](/base/runtime/#non_zero_append_elem)
* [non\_zero\_append\_elem\_string](/base/runtime/#non_zero_append_elem_string)
* [non\_zero\_append\_elems](/base/runtime/#non_zero_append_elems)
* [non\_zero\_append\_soa\_elem](/base/runtime/#non_zero_append_soa_elem)
* [non\_zero\_append\_soa\_elems](/base/runtime/#non_zero_append_soa_elems)
* [non\_zero\_mem\_resize](/base/runtime/#non_zero_mem_resize)
* [non\_zero\_reserve\_dynamic\_array](/base/runtime/#non_zero_reserve_dynamic_array)
* [non\_zero\_reserve\_soa](/base/runtime/#non_zero_reserve_soa)
* [non\_zero\_resize\_dynamic\_array](/base/runtime/#non_zero_resize_dynamic_array)
* [non\_zero\_resize\_soa](/base/runtime/#non_zero_resize_soa)
* [panic\_allocator\_proc](/base/runtime/#panic_allocator_proc)
* [reserve\_dynamic\_array](/base/runtime/#reserve_dynamic_array)
* [reserve\_map](/base/runtime/#reserve_map)
* [reserve\_soa](/base/runtime/#reserve_soa)
* [resize\_dynamic\_array](/base/runtime/#resize_dynamic_array)
* [resize\_soa](/base/runtime/#resize_soa)
* [shrink\_dynamic\_array](/base/runtime/#shrink_dynamic_array)
* [shrink\_map](/base/runtime/#shrink_map)
* [wasm\_allocator\_proc](/base/runtime/#wasm_allocator_proc)
* [append](/base/runtime/#append) *(procedure groups)*
* [append\_nothing](/base/runtime/#append_nothing) *(procedure groups)*
* [append\_soa](/base/runtime/#append_soa) *(procedure groups)*
* [assign\_at](/base/runtime/#assign_at) *(procedure groups)*
* [delete](/base/runtime/#delete) *(procedure groups)*
* [delete\_soa](/base/runtime/#delete_soa) *(procedure groups)*
* [free](/base/runtime/#free) *(procedure groups)*
* [free\_all](/base/runtime/#free_all) *(procedure groups)*
* [inject\_at](/base/runtime/#inject_at) *(procedure groups)*
* [inject\_at\_soa](/base/runtime/#inject_at_soa) *(procedure groups)*
* [make](/base/runtime/#make) *(procedure groups)*
* [make\_soa](/base/runtime/#make_soa) *(procedure groups)*
* [non\_zero\_append](/base/runtime/#non_zero_append) *(procedure groups)*
* [non\_zero\_reserve](/base/runtime/#non_zero_reserve) *(procedure groups)*
* [non\_zero\_resize](/base/runtime/#non_zero_resize) *(procedure groups)*
* [reserve](/base/runtime/#reserve) *(procedure groups)*
* [resize](/base/runtime/#resize) *(procedure groups)*
* [shrink](/base/runtime/#shrink) *(procedure groups)*

### [Allocator\_Mode ¶](#Allocator_Mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L302)

```
Allocator_Mode :: enum u8 {
	Alloc, 
	Free, 
	Free_All, 
	Resize, 
	Query_Features, 
	Query_Info, 
	Alloc_Non_Zeroed, 
	Resize_Non_Zeroed, 
}
```

 

Allocation Stuff




##### Related Procedures With Parameters

* [arena\_allocator\_proc](/base/runtime/#arena_allocator_proc)
* [default\_temp\_allocator\_proc](/base/runtime/#default_temp_allocator_proc)
* [heap\_allocator\_proc](/base/runtime/#heap_allocator_proc)
* [nil\_allocator\_proc](/base/runtime/#nil_allocator_proc)
* [panic\_allocator\_proc](/base/runtime/#panic_allocator_proc)
* [wasm\_allocator\_proc](/base/runtime/#wasm_allocator_proc)

### [Allocator\_Mode\_Set ¶](#Allocator_Mode_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L313)

```
Allocator_Mode_Set :: distinct bit_set[Allocator_Mode]
```

### [Allocator\_Proc ¶](#Allocator_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L329)

```
Allocator_Proc :: proc(allocator_data: rawptr, mode: Allocator_Mode, size, alignment: int, old_memory: rawptr, old_size: int, location := #caller_location) -> ([]u8, Allocator_Error)
```

### [Allocator\_Query\_Info ¶](#Allocator_Query_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L315)

```
Allocator_Query_Info :: struct {
	pointer:   rawptr,
	size:      Maybe($T=int),
	alignment: Maybe($T=int),
}
```

### [Arena ¶](#Arena) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L18)

```
Arena :: struct {
	backing_allocator:  Allocator,
	curr_block:         ^Memory_Block,
	total_used:         uint,
	total_capacity:     uint,
	minimum_block_size: uint,
	temp_count:         uint,
}
```

 

NOTE: This is a growing arena that is only used for the default temp allocator.
For your own growing arena needs, prefer `Arena` from `core:mem/virtual`.




##### Related Procedures With Parameters

* [arena\_alloc](/base/runtime/#arena_alloc)
* [arena\_allocator](/base/runtime/#arena_allocator)
* [arena\_check\_temp](/base/runtime/#arena_check_temp)
* [arena\_destroy](/base/runtime/#arena_destroy)
* [arena\_free\_all](/base/runtime/#arena_free_all)
* [arena\_free\_last\_memory\_block](/base/runtime/#arena_free_last_memory_block)
* [arena\_init](/base/runtime/#arena_init)
* [arena\_temp\_begin](/base/runtime/#arena_temp_begin)

### [Arena\_Temp ¶](#Arena_Temp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L258)

```
Arena_Temp :: struct {
	arena: ^Arena,
	block: ^Memory_Block,
	used:  uint,
}
```

##### Related Procedures With Parameters

* [arena\_temp\_end](/base/runtime/#arena_temp_end)
* [arena\_temp\_ignore](/base/runtime/#arena_temp_ignore)
* [default\_temp\_allocator\_temp\_end](/base/runtime/#default_temp_allocator_temp_end)



##### Related Procedures With Returns

* [DEFAULT\_TEMP\_ALLOCATOR\_TEMP\_GUARD](/base/runtime/#DEFAULT_TEMP_ALLOCATOR_TEMP_GUARD)
* [arena\_temp\_begin](/base/runtime/#arena_temp_begin)
* [default\_temp\_allocator\_temp\_begin](/base/runtime/#default_temp_allocator_temp_begin)

### [Assertion\_Failure\_Proc ¶](#Assertion_Failure_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L299)

```
Assertion_Failure_Proc :: proc(prefix, message: string, loc: Source_Code_Location) -> !
```

### [Calling\_Convention ¶](#Calling_Convention) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L27)

```
Calling_Convention :: enum u8 {
	Invalid       = 0, 
	Odin          = 1, 
	Contextless   = 2, 
	CDecl         = 3, 
	Std_Call      = 4, 
	Fast_Call     = 5, 
	None          = 6, 
	Naked         = 7, 
	Win64         = 9, 
	SysV          = 10, 
	Preserve_None = 11, 
	Preserve_Most = 12, 
	Preserve_All  = 13, 
}
```

 

NOTE(bill): This must match the compiler's

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L400)

```
Context :: struct {
	allocator:              Allocator,
	temp_allocator:         Allocator,
	assertion_failure_proc: Assertion_Failure_Proc,
	logger:                 Logger,
	random_generator:       Random_Generator,
	user_ptr:               rawptr,
	user_index:             int,
	// Internal use only
	_internal:              rawptr,
}
```

##### Related Procedures With Returns

* [default\_context](/base/runtime/#default_context)
* [default\_context\_ptr](/base/runtime/#default_context_ptr)

### [Default\_Random\_State ¶](#Default_Random_State) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator_chacha8.odin#L45)

```
Default_Random_State :: struct {
	_buf:    [1024]u8,
	_off:    int,
	_seeded: bool,
}
```

##### Related Procedures With Parameters

* [default\_random\_generator](/base/runtime/#default_random_generator)

### [Default\_Temp\_Allocator ¶](#Default_Temp_Allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L29)

```
Default_Temp_Allocator :: struct {
	arena: Arena,
}
```

 

`Default_Temp_Allocator` is an `Arena` based type of allocator. See `runtime.Arena` for its implementation.
The default `context.temp_allocator` is typically called with `free_all(context.temp_allocator)` once per "frame-loop"
to prevent it from "leaking" memory.

Note: `Default_Temp_Allocator` is a `nil_allocator` when `NO_DEFAULT_TEMP_ALLOCATOR` is `true`.




##### Related Procedures With Parameters

* [default\_temp\_allocator](/base/runtime/#default_temp_allocator)
* [default\_temp\_allocator\_destroy](/base/runtime/#default_temp_allocator_destroy)
* [default\_temp\_allocator\_init](/base/runtime/#default_temp_allocator_init)

### [Equal\_Proc ¶](#Equal_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L57)

```
Equal_Proc :: proc "contextless" (rawptr, rawptr) -> bool
```

 

Procedure type to test whether two values of the same type are equal

### [Hasher\_Proc ¶](#Hasher_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L59)

```
Hasher_Proc :: proc "contextless" (data: rawptr, seed: uintptr = 0) -> uintptr
```

 

Procedure type to hash a value, default seed value is 0

### [Load\_Directory\_File ¶](#Load_Directory_File) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L294)

```
Load_Directory_File :: struct {
	name: string,
	data: []u8,
}
```

 

Used by the built-in directory `#load_directory(path: string) -> []Load_Directory_File`

### [Logger ¶](#Logger) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L371)

```
Logger :: struct {
	procedure:    Logger_Proc,
	data:         rawptr,
	lowest_level: Logger_Level,
	options:      bit_set[Logger_Option],
}
```

##### Related Procedures With Returns

* [default\_logger](/base/runtime/#default_logger)

### [Logger\_Level ¶](#Logger_Level) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L348)

```
Logger_Level :: enum uint {
	Debug   = 0, 
	Info    = 10, 
	Warning = 20, 
	Error   = 30, 
	Fatal   = 40, 
}
```

##### Related Procedures With Parameters

* [default\_logger\_proc](/base/runtime/#default_logger_proc)

### [Logger\_Option ¶](#Logger_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L356)

```
Logger_Option :: enum int {
	Level, 
	Date, 
	Time, 
	Short_File_Path, 
	Long_File_Path, 
	Line, 
	Procedure, 
	Terminal_Color, 
	Thread_Id, 
}
```

### [Logger\_Options ¶](#Logger_Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L368)

```
Logger_Options :: bit_set[Logger_Option]
```

##### Related Procedures With Parameters

* [default\_logger\_proc](/base/runtime/#default_logger_proc)

### [Logger\_Proc ¶](#Logger_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L369)

```
Logger_Proc :: proc(data: rawptr, level: Logger_Level, text: string, options: bit_set[Logger_Option], location := #caller_location)
```

### [Map\_Cell ¶](#Map_Cell) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L88)

```
Map_Cell :: struct($T: typeid) #align (MAP_CACHE_LINE_SIZE) {
	… // See source for fields
}
```

 

Map\_Cell type that packs multiple T in such a way to ensure that each T stays
aligned by align\_of(T) and such that align\_of(Map\_Cell(T)) % MAP\_CACHE\_LINE\_SIZE == 0

This means a value of type T will never straddle a cache-line.

When multiple Ts can fit in a single cache-line the data array will have more
than one element. When it cannot, the data array will have one element and
an array of Map\_Cell(T) will be padded to stay a multiple of MAP\_CACHE\_LINE\_SIZE.

We rely on the type system to do all the arithmetic and padding for us here.

The usual array[index] indexing for []T backed by a []Map\_Cell(T) becomes a bit
more involved as there now may be internal padding. The indexing now becomes

N :: len(Map\_Cell(T){}.data)
i := index / N
j := index % N
cell[i].data[j]

However, since len(Map\_Cell(T){}.data) is a compile-time constant, there are some
optimizations we can do to eliminate the need for any divisions as N will
be bounded by [1, 64).

In the optimal case, len(Map\_Cell(T){}.data) = 1 so the cell array can be treated
as a regular array of T, which is the case for hashes.




##### Related Procedures With Parameters

* [map\_cell\_index\_static](/base/runtime/#map_cell_index_static)



##### Related Procedures With Returns

* [map\_kvh\_data\_static](/base/runtime/#map_kvh_data_static)

### [Map\_Cell\_Info ¶](#Map_Cell_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L97)

```
Map_Cell_Info :: struct {
	size_of_type:      uintptr,
	// 8-bytes on 64-bit, 4-bytes on 32-bits
	align_of_type:     uintptr,
	// 8-bytes on 64-bit, 4-bytes on 32-bits
	size_of_cell:      uintptr,
	// 8-bytes on 64-bit, 4-bytes on 32-bits
	elements_per_cell: uintptr,
}
```

 

So we can operate on a cell data structure at runtime without any type
information, we have a simple table that stores some traits about the cell.

32-bytes on 64-bit
16-bytes on 32-bit




##### Related Procedures With Parameters

* [map\_cell\_index\_dynamic](/base/runtime/#map_cell_index_dynamic)
* [map\_cell\_index\_dynamic\_const](/base/runtime/#map_cell_index_dynamic_const)

### [Map\_Hash ¶](#Map_Hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L229)

```
Map_Hash :: uintptr
```

##### Related Procedures With Parameters

* [align\_forward\_uintptr](/base/runtime/#align_forward_uintptr)
* [default\_hasher](/base/runtime/#default_hasher)
* [default\_hasher\_complex128](/base/runtime/#default_hasher_complex128)
* [default\_hasher\_cstring](/base/runtime/#default_hasher_cstring)
* [default\_hasher\_f64](/base/runtime/#default_hasher_f64)
* [default\_hasher\_quaternion256](/base/runtime/#default_hasher_quaternion256)
* [default\_hasher\_string](/base/runtime/#default_hasher_string)
* [is\_power\_of\_two\_uintptr](/base/runtime/#is_power_of_two_uintptr)
* [map\_alloc\_dynamic](/base/runtime/#map_alloc_dynamic)
* [map\_cell\_index\_dynamic](/base/runtime/#map_cell_index_dynamic)
* [map\_cell\_index\_dynamic\_const](/base/runtime/#map_cell_index_dynamic_const)
* [map\_cell\_index\_static](/base/runtime/#map_cell_index_static)
* [map\_desired\_position](/base/runtime/#map_desired_position)
* [map\_erase\_dynamic](/base/runtime/#map_erase_dynamic)
* [map\_exists\_dynamic](/base/runtime/#map_exists_dynamic)
* [map\_hash\_is\_deleted](/base/runtime/#map_hash_is_deleted)
* [map\_hash\_is\_empty](/base/runtime/#map_hash_is_empty)
* [map\_hash\_is\_valid](/base/runtime/#map_hash_is_valid)
* [map\_insert\_hash\_dynamic](/base/runtime/#map_insert_hash_dynamic)
* [map\_insert\_hash\_dynamic\_with\_key](/base/runtime/#map_insert_hash_dynamic_with_key)
* [map\_load\_factor](/base/runtime/#map_load_factor)
* [map\_lookup\_dynamic](/base/runtime/#map_lookup_dynamic)
* [map\_probe\_distance](/base/runtime/#map_probe_distance)
* [map\_reserve\_dynamic](/base/runtime/#map_reserve_dynamic)
* [map\_seed\_from\_map\_data](/base/runtime/#map_seed_from_map_data)
* [map\_total\_allocation\_size](/base/runtime/#map_total_allocation_size)
* [print\_uintptr](/base/runtime/#print_uintptr)
* [align\_forward](/base/runtime/#align_forward) *(procedure groups)*
* [is\_power\_of\_two](/base/runtime/#is_power_of_two) *(procedure groups)*



##### Related Procedures With Returns

* [map\_data](/base/runtime/#map_data)
* [map\_kvh\_data\_dynamic](/base/runtime/#map_kvh_data_dynamic)
* [map\_kvh\_data\_static](/base/runtime/#map_kvh_data_static)
* [map\_kvh\_data\_values\_dynamic](/base/runtime/#map_kvh_data_values_dynamic)
* [map\_log2\_cap](/base/runtime/#map_log2_cap)
* [map\_resize\_threshold](/base/runtime/#map_resize_threshold)
* [map\_seed](/base/runtime/#map_seed)
* [map\_total\_allocation\_size\_from\_value](/base/runtime/#map_total_allocation_size_from_value)

### [Map\_Info ¶](#Map_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L300)

```
Map_Info :: struct {
	ks:         ^Map_Cell_Info,
	// 8-bytes on 64-bit, 4-bytes on 32-bit
	vs:         ^Map_Cell_Info,
	// 8-bytes on 64-bit, 4-bytes on 32-bit
	key_hasher: proc "contextless" (key: rawptr, seed: uintptr) -> uintptr,
	// 8-bytes on 64-bit, 4-bytes on 32-bit
	key_equal:  proc "contextless" (lhs, rhs: rawptr) -> bool,
}
```

 

When working with the type-erased structure at runtime we need information
about the map to make working with it possible. This info structure stores
that.

`Map_Info` and `Map_Cell_Info` are read only data structures and cannot be
modified after creation

32-bytes on 64-bit
16-bytes on 32-bit




##### Related Procedures With Parameters

* [map\_alloc\_dynamic](/base/runtime/#map_alloc_dynamic)
* [map\_clear\_dynamic](/base/runtime/#map_clear_dynamic)
* [map\_erase\_dynamic](/base/runtime/#map_erase_dynamic)
* [map\_exists\_dynamic](/base/runtime/#map_exists_dynamic)
* [map\_free\_dynamic](/base/runtime/#map_free_dynamic)
* [map\_grow\_dynamic](/base/runtime/#map_grow_dynamic)
* [map\_insert\_hash\_dynamic](/base/runtime/#map_insert_hash_dynamic)
* [map\_insert\_hash\_dynamic\_with\_key](/base/runtime/#map_insert_hash_dynamic_with_key)
* [map\_kvh\_data\_dynamic](/base/runtime/#map_kvh_data_dynamic)
* [map\_kvh\_data\_values\_dynamic](/base/runtime/#map_kvh_data_values_dynamic)
* [map\_lookup\_dynamic](/base/runtime/#map_lookup_dynamic)
* [map\_reserve\_dynamic](/base/runtime/#map_reserve_dynamic)
* [map\_shrink\_dynamic](/base/runtime/#map_shrink_dynamic)
* [map\_total\_allocation\_size](/base/runtime/#map_total_allocation_size)

### [Maybe ¶](#Maybe) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L6)

```
Maybe :: union($T: typeid) {
	… // See source for fields
}
```

### [Memory\_Block ¶](#Memory_Block) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L8)

```
Memory_Block :: struct {
	prev:      ^Memory_Block,
	allocator: Allocator,
	base:      [^]u8,
	used:      uint,
	capacity:  uint,
}
```

##### Related Procedures With Parameters

* [alloc\_from\_memory\_block](/base/runtime/#alloc_from_memory_block)
* [memory\_block\_dealloc](/base/runtime/#memory_block_dealloc)



##### Related Procedures With Returns

* [memory\_block\_alloc](/base/runtime/#memory_block_alloc)

### [Objc\_Block ¶](#Objc_Block) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L12)

```
Objc_Block :: struct($T: typeid) {
	… // See source for fields
}
```

 

Represents an Objective-C block with a given procedure signature T

### [Odin\_Arch\_Type ¶](#Odin_Arch_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L538)

```
Odin_Arch_Type :: .Odin_Arch_Type
```

 

**Example:**

```
// Defined internally by the compiler
```

Odin\_Arch\_Type :: enum int {

```
Unknown,
amd64,
i386,
arm32,
arm64,
wasm32,
wasm64p32,
riscv64,
```

}

### [Odin\_Arch\_Types ¶](#Odin_Arch_Types) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L540)

```
Odin_Arch_Types :: bit_set[.Odin_Arch_Type]
```

##### Related Constants

* [ALL\_ODIN\_ARCH\_TYPES](/base/runtime/#ALL_ODIN_ARCH_TYPES)

### [Odin\_Build\_Mode\_Type ¶](#Odin_Build_Mode_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L563)

```
Odin_Build_Mode_Type :: .Odin_Build_Mode_Type
```

 

**Example:**

```
// Defined internally by the compiler
```

Odin\_Build\_Mode\_Type :: enum int {

```
Executable,
Dynamic,
Static,
Object,
Assembly,
LLVM_IR,
```

}

### [Odin\_Endian\_Type ¶](#Odin_Endian_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L573)

```
Odin_Endian_Type :: .Odin_Endian_Type
```

 

**Example:**

```
// Defined internally by the compiler
```

Odin\_Endian\_Type :: enum int {

```
Unknown,
Little,
Big,
```

}

### [Odin\_OS\_Type ¶](#Odin_OS_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L523)

```
Odin_OS_Type :: .Odin_OS_Type
```

 

**Example:**

```
// Defined internally by the compiler
```

Odin\_OS\_Type :: enum int {

```
Unknown,
Windows,
Darwin,
Linux,
Essence,
FreeBSD,
OpenBSD,
NetBSD,
Haiku,
WASI,
JS,
Orca,
Freestanding,
```

}

### [Odin\_OS\_Types ¶](#Odin_OS_Types) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L575)

```
Odin_OS_Types :: bit_set[.Odin_OS_Type]
```

##### Related Constants

* [ALL\_ODIN\_OS\_TYPES](/base/runtime/#ALL_ODIN_OS_TYPES)

### [Odin\_Optimization\_Mode ¶](#Odin_Optimization_Mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L633)

```
Odin_Optimization_Mode :: .Odin_Optimization_Mode
```

 

**Example:**

```
// Defined internally by the compiler
```

Odin\_Optimization\_Mode :: enum int {

```
None       = -1,
Minimal    =  0,
Size       =  1,
Speed      =  2,
Aggressive =  3,
```

}

ODIN\_OPTIMIZATION\_MODE // is a constant

### [Odin\_Platform\_Subtarget\_Type ¶](#Odin_Platform_Subtarget_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L601)

```
Odin_Platform_Subtarget_Type :: .Odin_Platform_Subtarget_Type
```

 

**Example:**

```
// Defined internally by the compiler
```

Odin\_Platform\_Subtarget\_Type :: enum int {

```
Default,
iPhone,
iPhoneSimulator
Android,
```

}

### [Odin\_Platform\_Subtarget\_Types ¶](#Odin_Platform_Subtarget_Types) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L603)

```
Odin_Platform_Subtarget_Types :: bit_set[.Odin_Platform_Subtarget_Type]
```

### [Odin\_Sanitizer\_Flags ¶](#Odin_Sanitizer_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L619)

```
Odin_Sanitizer_Flags :: .Odin_Sanitizer_Flags
```

 

**Example:**

```
// Defined internally by the compiler
```

Odin\_Sanitizer\_Flag :: enum u32 {

```
Address = 0,
Memory  = 1,
Thread  = 2,
```

}
Odin\_Sanitizer\_Flags :: distinct bit\_set[Odin\_Sanitizer\_Flag; u32]

ODIN\_SANITIZER\_FLAGS // is a constant

### [Platform\_Endianness ¶](#Platform_Endianness) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L50)

```
Platform_Endianness :: enum u8 {
	Platform = 0, 
	Little   = 1, 
	Big      = 2, 
}
```

### [Random\_Generator ¶](#Random_Generator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L395)

```
Random_Generator :: struct {
	procedure: Random_Generator_Proc,
	data:      rawptr,
}
```

##### Related Procedures With Parameters

* [random\_generator\_query\_info](/base/runtime/#random_generator_query_info)
* [random\_generator\_read\_bytes](/base/runtime/#random_generator_read_bytes)
* [random\_generator\_read\_ptr](/base/runtime/#random_generator_read_ptr)
* [random\_generator\_reset\_bytes](/base/runtime/#random_generator_reset_bytes)
* [random\_generator\_reset\_u64](/base/runtime/#random_generator_reset_u64)



##### Related Procedures With Returns

* [default\_random\_generator](/base/runtime/#default_random_generator)

### [Random\_Generator\_Mode ¶](#Random_Generator_Mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L379)

```
Random_Generator_Mode :: enum int {
	Read, 
	Reset, 
	Query_Info, 
}
```

##### Related Procedures With Parameters

* [default\_random\_generator\_proc](/base/runtime/#default_random_generator_proc)

### [Random\_Generator\_Proc ¶](#Random_Generator_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L393)

```
Random_Generator_Proc :: proc(data: rawptr, mode: Random_Generator_Mode, p: []u8)
```

### [Random\_Generator\_Query\_Info ¶](#Random_Generator_Query_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L391)

```
Random_Generator_Query_Info :: distinct bit_set[Random_Generator_Query_Info_Flag; u32]
```

##### Related Procedures With Returns

* [random\_generator\_query\_info](/base/runtime/#random_generator_query_info)

### [Random\_Generator\_Query\_Info\_Flag ¶](#Random_Generator_Query_Info_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L385)

```
Random_Generator_Query_Info_Flag :: enum u32 {
	Cryptographic, 
	Uniform, 
	External_Entropy, 
	Resettable, 
}
```

### [Raw\_Any ¶](#Raw_Any) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L470)

```
Raw_Any :: struct {
	data: rawptr,
	id:   typeid,
}
```

### [Raw\_Complex128 ¶](#Raw_Complex128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L496)

```
Raw_Complex128 :: struct {
	real: f64,
	imag: f64,
}
```

### [Raw\_Complex32 ¶](#Raw_Complex32) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L494)

```
Raw_Complex32 :: struct {
	real: f16,
	imag: f16,
}
```

### [Raw\_Complex64 ¶](#Raw_Complex64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L495)

```
Raw_Complex64 :: struct {
	real: f32,
	imag: f32,
}
```

### [Raw\_Cstring ¶](#Raw_Cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L478)

```
Raw_Cstring :: struct {
	data: [^]u8,
}
```

### [Raw\_Cstring16 ¶](#Raw_Cstring16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L483)

```
Raw_Cstring16 :: struct {
	data: [^]u16,
}
```

### [Raw\_Dynamic\_Array ¶](#Raw_Dynamic_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L430)

```
Raw_Dynamic_Array :: struct {
	data:      rawptr,
	len:       int,
	cap:       int,
	allocator: Allocator,
}
```

### [Raw\_Fixed\_Capacity\_Dynamic\_Array ¶](#Raw_Fixed_Capacity_Dynamic_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L437)

```
Raw_Fixed_Capacity_Dynamic_Array :: struct($Capacity: uint, $T: typeid) {
	… // See source for fields
}
```

### [Raw\_Map ¶](#Raw_Map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L446)

```
Raw_Map :: struct {
	// A single allocation spanning all keys, values, and hashes.
	// {
	//   k: Map_Cell(K) * (capacity / ks_per_cell)
	//   v: Map_Cell(V) * (capacity / vs_per_cell)
	//   h: Map_Cell(H) * (capacity / hs_per_cell)
	// }
	// 
	// The data is allocated assuming 64-byte alignment, meaning the address is
	// always a multiple of 64. This means we have 6 bits of zeros in the pointer
	// to store the capacity. We can store a value as large as 2^6-1 or 63 in
	// there. This conveniently is the maximum log2 capacity we can have for a map
	// as Odin uses signed integers to represent capacity.
	// 
	// Since the hashes are backed by Map_Hash, which is just a 64-bit unsigned
	// integer, the cell structure for hashes is unnecessary because 64/8 is 8 and
	// requires no padding, meaning it can be indexed as a regular array of
	// Map_Hash directly, though for consistency sake it's written as if it were
	// an array of Map_Cell(Map_Hash).
	data:      uintptr,
	// 8-bytes on 64-bits, 4-bytes on 32-bits
	len:       uintptr,
	// 8-bytes on 64-bits, 4-bytes on 32-bits
	allocator: Allocator,
}
```

 

The raw, type-erased representation of a map.

32-bytes on 64-bit
16-bytes on 32-bit




##### Related Procedures With Parameters

* [map\_cap](/base/runtime/#map_cap)
* [map\_clear\_dynamic](/base/runtime/#map_clear_dynamic)
* [map\_data](/base/runtime/#map_data)
* [map\_desired\_position](/base/runtime/#map_desired_position)
* [map\_erase\_dynamic](/base/runtime/#map_erase_dynamic)
* [map\_exists\_dynamic](/base/runtime/#map_exists_dynamic)
* [map\_free\_dynamic](/base/runtime/#map_free_dynamic)
* [map\_grow\_dynamic](/base/runtime/#map_grow_dynamic)
* [map\_insert\_hash\_dynamic](/base/runtime/#map_insert_hash_dynamic)
* [map\_insert\_hash\_dynamic\_with\_key](/base/runtime/#map_insert_hash_dynamic_with_key)
* [map\_kvh\_data\_dynamic](/base/runtime/#map_kvh_data_dynamic)
* [map\_kvh\_data\_values\_dynamic](/base/runtime/#map_kvh_data_values_dynamic)
* [map\_len](/base/runtime/#map_len)
* [map\_log2\_cap](/base/runtime/#map_log2_cap)
* [map\_lookup\_dynamic](/base/runtime/#map_lookup_dynamic)
* [map\_probe\_distance](/base/runtime/#map_probe_distance)
* [map\_reserve\_dynamic](/base/runtime/#map_reserve_dynamic)
* [map\_resize\_threshold](/base/runtime/#map_resize_threshold)
* [map\_seed](/base/runtime/#map_seed)
* [map\_shrink\_dynamic](/base/runtime/#map_shrink_dynamic)



##### Related Procedures With Returns

* [map\_alloc\_dynamic](/base/runtime/#map_alloc_dynamic)

### [Raw\_Quaternion128 ¶](#Raw_Quaternion128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L498)

```
Raw_Quaternion128 :: struct {
	imag: f32,
	jmag: f32,
	kmag: f32,
	real: f32,
}
```

### [Raw\_Quaternion128\_Vector\_Scalar ¶](#Raw_Quaternion128_Vector_Scalar) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L501)

```
Raw_Quaternion128_Vector_Scalar :: struct {
	vector: [3]f32,
	scalar: f32,
}
```

### [Raw\_Quaternion256 ¶](#Raw_Quaternion256) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L499)

```
Raw_Quaternion256 :: struct {
	imag: f64,
	jmag: f64,
	kmag: f64,
	real: f64,
}
```

### [Raw\_Quaternion256\_Vector\_Scalar ¶](#Raw_Quaternion256_Vector_Scalar) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L502)

```
Raw_Quaternion256_Vector_Scalar :: struct {
	vector: [3]f64,
	scalar: f64,
}
```

### [Raw\_Quaternion64 ¶](#Raw_Quaternion64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L497)

```
Raw_Quaternion64 :: struct {
	imag: f16,
	jmag: f16,
	kmag: f16,
	real: f16,
}
```

### [Raw\_Quaternion64\_Vector\_Scalar ¶](#Raw_Quaternion64_Vector_Scalar) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L500)

```
Raw_Quaternion64_Vector_Scalar :: struct {
	vector: [3]f16,
	scalar: f16,
}
```

### [Raw\_SOA\_Footer\_Dynamic\_Array ¶](#Raw_SOA_Footer_Dynamic_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L47)

```
Raw_SOA_Footer_Dynamic_Array :: struct {
	len:       int,
	cap:       int,
	allocator: Allocator,
}
```

##### Related Procedures With Returns

* [raw\_soa\_footer\_dynamic\_array](/base/runtime/#raw_soa_footer_dynamic_array)
* [raw\_soa\_footer](/base/runtime/#raw_soa_footer) *(procedure groups)*

### [Raw\_SOA\_Footer\_Slice ¶](#Raw_SOA_Footer_Slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L43)

```
Raw_SOA_Footer_Slice :: struct {
	len: int,
}
```

##### Related Procedures With Returns

* [raw\_soa\_footer\_slice](/base/runtime/#raw_soa_footer_slice)
* [raw\_soa\_footer](/base/runtime/#raw_soa_footer) *(procedure groups)*

### [Raw\_Slice ¶](#Raw_Slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L425)

```
Raw_Slice :: struct {
	data: rawptr,
	len:  int,
}
```

### [Raw\_Soa\_Pointer ¶](#Raw_Soa_Pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L489)

```
Raw_Soa_Pointer :: struct {
	data:  rawptr,
	index: int,
}
```

### [Raw\_String ¶](#Raw_String) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L415)

```
Raw_String :: struct {
	data: [^]u8,
	len:  int,
}
```

### [Raw\_String16 ¶](#Raw_String16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L420)

```
Raw_String16 :: struct {
	data: [^]u16,
	len:  int,
}
```

### [Source\_Code\_Location ¶](#Source_Code_Location) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L285)

```
Source_Code_Location :: struct {
	file_path: string,
	line:      i32,
	column:    i32,
	procedure: string,
}
```

##### Related Procedures With Parameters

* [DEFAULT\_TEMP\_ALLOCATOR\_TEMP\_GUARD](/base/runtime/#DEFAULT_TEMP_ALLOCATOR_TEMP_GUARD)
* [append\_elem](/base/runtime/#append_elem)
* [append\_elem\_string](/base/runtime/#append_elem_string)
* [append\_elems](/base/runtime/#append_elems)
* [append\_nothing\_dynamic\_array](/base/runtime/#append_nothing_dynamic_array)
* [append\_nothing\_soa](/base/runtime/#append_nothing_soa)
* [append\_soa\_elem](/base/runtime/#append_soa_elem)
* [append\_soa\_elems](/base/runtime/#append_soa_elems)
* [append\_string](/base/runtime/#append_string)
* [arena\_alloc](/base/runtime/#arena_alloc)
* [arena\_allocator\_proc](/base/runtime/#arena_allocator_proc)
* [arena\_check\_temp](/base/runtime/#arena_check_temp)
* [arena\_destroy](/base/runtime/#arena_destroy)
* [arena\_free\_all](/base/runtime/#arena_free_all)
* [arena\_free\_last\_memory\_block](/base/runtime/#arena_free_last_memory_block)
* [arena\_init](/base/runtime/#arena_init)
* [arena\_temp\_begin](/base/runtime/#arena_temp_begin)
* [arena\_temp\_end](/base/runtime/#arena_temp_end)
* [arena\_temp\_ignore](/base/runtime/#arena_temp_ignore)
* [assert](/base/runtime/#assert)
* [assert\_contextless](/base/runtime/#assert_contextless)
* [assign\_at\_elem](/base/runtime/#assign_at_elem)
* [assign\_at\_elem\_string](/base/runtime/#assign_at_elem_string)
* [assign\_at\_elems](/base/runtime/#assign_at_elems)
* [bounds\_check\_error\_loc](/base/runtime/#bounds_check_error_loc)
* [default\_assertion\_contextless\_failure\_proc](/base/runtime/#default_assertion_contextless_failure_proc)
* [default\_assertion\_failure\_proc](/base/runtime/#default_assertion_failure_proc)
* [default\_logger\_proc](/base/runtime/#default_logger_proc)
* [default\_temp\_allocator\_proc](/base/runtime/#default_temp_allocator_proc)
* [default\_temp\_allocator\_temp\_begin](/base/runtime/#default_temp_allocator_temp_begin)
* [default\_temp\_allocator\_temp\_end](/base/runtime/#default_temp_allocator_temp_end)
* [delete\_cstring](/base/runtime/#delete_cstring)
* [delete\_cstring16](/base/runtime/#delete_cstring16)
* [delete\_dynamic\_array](/base/runtime/#delete_dynamic_array)
* [delete\_map](/base/runtime/#delete_map)
* [delete\_slice](/base/runtime/#delete_slice)
* [delete\_soa\_dynamic\_array](/base/runtime/#delete_soa_dynamic_array)
* [delete\_soa\_slice](/base/runtime/#delete_soa_slice)
* [delete\_string](/base/runtime/#delete_string)
* [delete\_string16](/base/runtime/#delete_string16)
* [dynamic\_array\_expr\_error\_loc](/base/runtime/#dynamic_array_expr_error_loc)
* [ensure](/base/runtime/#ensure)
* [ensure\_contextless](/base/runtime/#ensure_contextless)
* [heap\_allocator\_proc](/base/runtime/#heap_allocator_proc)
* [inject\_at\_elem](/base/runtime/#inject_at_elem)
* [inject\_at\_elem\_fixed\_capacity\_dynamic\_array](/base/runtime/#inject_at_elem_fixed_capacity_dynamic_array)
* [inject\_at\_elem\_soa](/base/runtime/#inject_at_elem_soa)
* [inject\_at\_elem\_string](/base/runtime/#inject_at_elem_string)
* [inject\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](/base/runtime/#inject_at_elem_string_fixed_capacity_dynamic_array)
* [inject\_at\_elems](/base/runtime/#inject_at_elems)
* [inject\_at\_elems\_fixed\_capacity\_dynamic\_array](/base/runtime/#inject_at_elems_fixed_capacity_dynamic_array)
* [inject\_at\_elems\_soa](/base/runtime/#inject_at_elems_soa)
* [make\_aligned](/base/runtime/#make_aligned)
* [make\_dynamic\_array](/base/runtime/#make_dynamic_array)
* [make\_dynamic\_array\_error\_loc](/base/runtime/#make_dynamic_array_error_loc)
* [make\_dynamic\_array\_len](/base/runtime/#make_dynamic_array_len)
* [make\_dynamic\_array\_len\_cap](/base/runtime/#make_dynamic_array_len_cap)
* [make\_map](/base/runtime/#make_map)
* [make\_map\_cap](/base/runtime/#make_map_cap)
* [make\_map\_expr\_error\_loc](/base/runtime/#make_map_expr_error_loc)
* [make\_multi\_pointer](/base/runtime/#make_multi_pointer)
* [make\_slice](/base/runtime/#make_slice)
* [make\_slice\_error\_loc](/base/runtime/#make_slice_error_loc)
* [make\_soa\_aligned](/base/runtime/#make_soa_aligned)
* [make\_soa\_dynamic\_array](/base/runtime/#make_soa_dynamic_array)
* [make\_soa\_dynamic\_array\_len](/base/runtime/#make_soa_dynamic_array_len)
* [make\_soa\_dynamic\_array\_len\_cap](/base/runtime/#make_soa_dynamic_array_len_cap)
* [make\_soa\_slice](/base/runtime/#make_soa_slice)
* [map\_alloc\_dynamic](/base/runtime/#map_alloc_dynamic)
* [map\_entry](/base/runtime/#map_entry)
* [map\_free\_dynamic](/base/runtime/#map_free_dynamic)
* [map\_grow\_dynamic](/base/runtime/#map_grow_dynamic)
* [map\_insert](/base/runtime/#map_insert)
* [map\_reserve\_dynamic](/base/runtime/#map_reserve_dynamic)
* [map\_shrink\_dynamic](/base/runtime/#map_shrink_dynamic)
* [map\_upsert](/base/runtime/#map_upsert)
* [mem\_alloc](/base/runtime/#mem_alloc)
* [mem\_alloc\_bytes](/base/runtime/#mem_alloc_bytes)
* [mem\_alloc\_non\_zeroed](/base/runtime/#mem_alloc_non_zeroed)
* [mem\_free](/base/runtime/#mem_free)
* [mem\_free\_all](/base/runtime/#mem_free_all)
* [mem\_free\_bytes](/base/runtime/#mem_free_bytes)
* [mem\_free\_with\_size](/base/runtime/#mem_free_with_size)
* [mem\_resize](/base/runtime/#mem_resize)
* [memory\_block\_alloc](/base/runtime/#memory_block_alloc)
* [memory\_block\_dealloc](/base/runtime/#memory_block_dealloc)
* [new](/base/runtime/#new)
* [new\_aligned](/base/runtime/#new_aligned)
* [new\_clone](/base/runtime/#new_clone)
* [nil\_allocator\_proc](/base/runtime/#nil_allocator_proc)
* [non\_zero\_append\_elem](/base/runtime/#non_zero_append_elem)
* [non\_zero\_append\_elem\_string](/base/runtime/#non_zero_append_elem_string)
* [non\_zero\_append\_elems](/base/runtime/#non_zero_append_elems)
* [non\_zero\_append\_soa\_elem](/base/runtime/#non_zero_append_soa_elem)
* [non\_zero\_append\_soa\_elems](/base/runtime/#non_zero_append_soa_elems)
* [non\_zero\_mem\_resize](/base/runtime/#non_zero_mem_resize)
* [non\_zero\_reserve\_dynamic\_array](/base/runtime/#non_zero_reserve_dynamic_array)
* [non\_zero\_reserve\_soa](/base/runtime/#non_zero_reserve_soa)
* [non\_zero\_resize\_dynamic\_array](/base/runtime/#non_zero_resize_dynamic_array)
* [non\_zero\_resize\_soa](/base/runtime/#non_zero_resize_soa)
* [ordered\_remove\_dynamic\_array](/base/runtime/#ordered_remove_dynamic_array)
* [ordered\_remove\_fixed\_capacity\_dynamic\_array](/base/runtime/#ordered_remove_fixed_capacity_dynamic_array)
* [ordered\_remove\_soa](/base/runtime/#ordered_remove_soa)
* [panic](/base/runtime/#panic)
* [panic\_allocator\_proc](/base/runtime/#panic_allocator_proc)
* [panic\_contextless](/base/runtime/#panic_contextless)
* [pop\_dynamic\_array](/base/runtime/#pop_dynamic_array)
* [pop\_fixed\_capacity\_dynamic\_array](/base/runtime/#pop_fixed_capacity_dynamic_array)
* [pop\_front\_dynamic\_array](/base/runtime/#pop_front_dynamic_array)
* [pop\_front\_fixed\_capacity\_dynamic\_array](/base/runtime/#pop_front_fixed_capacity_dynamic_array)
* [print\_caller\_location](/base/runtime/#print_caller_location)
* [remove\_range\_dynamic\_array](/base/runtime/#remove_range_dynamic_array)
* [remove\_range\_fixed\_capacity\_dynamic\_array](/base/runtime/#remove_range_fixed_capacity_dynamic_array)
* [reserve\_dynamic\_array](/base/runtime/#reserve_dynamic_array)
* [reserve\_map](/base/runtime/#reserve_map)
* [reserve\_soa](/base/runtime/#reserve_soa)
* [resize\_dynamic\_array](/base/runtime/#resize_dynamic_array)
* [resize\_soa](/base/runtime/#resize_soa)
* [shrink\_dynamic\_array](/base/runtime/#shrink_dynamic_array)
* [shrink\_map](/base/runtime/#shrink_map)
* [slice\_expr\_error\_hi\_loc](/base/runtime/#slice_expr_error_hi_loc)
* [slice\_expr\_error\_lo\_hi\_loc](/base/runtime/#slice_expr_error_lo_hi_loc)
* [unimplemented](/base/runtime/#unimplemented)
* [unimplemented\_contextless](/base/runtime/#unimplemented_contextless)
* [unordered\_remove\_dynamic\_array](/base/runtime/#unordered_remove_dynamic_array)
* [unordered\_remove\_fixed\_capacity\_dynamic\_array](/base/runtime/#unordered_remove_fixed_capacity_dynamic_array)
* [unordered\_remove\_soa](/base/runtime/#unordered_remove_soa)
* [wasm\_allocator\_proc](/base/runtime/#wasm_allocator_proc)
* [write\_caller\_location](/base/runtime/#write_caller_location)
* [append](/base/runtime/#append) *(procedure groups)*
* [append\_nothing](/base/runtime/#append_nothing) *(procedure groups)*
* [append\_soa](/base/runtime/#append_soa) *(procedure groups)*
* [assign\_at](/base/runtime/#assign_at) *(procedure groups)*
* [delete](/base/runtime/#delete) *(procedure groups)*
* [delete\_soa](/base/runtime/#delete_soa) *(procedure groups)*
* [free](/base/runtime/#free) *(procedure groups)*
* [free\_all](/base/runtime/#free_all) *(procedure groups)*
* [inject\_at](/base/runtime/#inject_at) *(procedure groups)*
* [inject\_at\_soa](/base/runtime/#inject_at_soa) *(procedure groups)*
* [make](/base/runtime/#make) *(procedure groups)*
* [make\_soa](/base/runtime/#make_soa) *(procedure groups)*
* [non\_zero\_append](/base/runtime/#non_zero_append) *(procedure groups)*
* [non\_zero\_reserve](/base/runtime/#non_zero_reserve) *(procedure groups)*
* [non\_zero\_resize](/base/runtime/#non_zero_resize) *(procedure groups)*
* [ordered\_remove](/base/runtime/#ordered_remove) *(procedure groups)*
* [pop](/base/runtime/#pop) *(procedure groups)*
* [pop\_front](/base/runtime/#pop_front) *(procedure groups)*
* [remove\_range](/base/runtime/#remove_range) *(procedure groups)*
* [reserve](/base/runtime/#reserve) *(procedure groups)*
* [resize](/base/runtime/#resize) *(procedure groups)*
* [shrink](/base/runtime/#shrink) *(procedure groups)*
* [unordered\_remove](/base/runtime/#unordered_remove) *(procedure groups)*

### [Thread\_Local\_Cleaner ¶](#Thread_Local_Cleaner) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/thread_management.odin#L6)

```
Thread_Local_Cleaner :: union {
	Thread_Local_Cleaner_Odin, 
	Thread_Local_Cleaner_Contextless, 
}
```

##### Related Procedures With Parameters

* [add\_thread\_local\_cleaner](/base/runtime/#add_thread_local_cleaner)

### [Thread\_Local\_Cleaner\_Contextless ¶](#Thread_Local_Cleaner_Contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/thread_management.odin#L4)

```
Thread_Local_Cleaner_Contextless :: proc "contextless" ()
```

### [Thread\_Local\_Cleaner\_Odin ¶](#Thread_Local_Cleaner_Odin) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/thread_management.odin#L3)

```
Thread_Local_Cleaner_Odin :: proc()
```

### [Type\_Info ¶](#Type_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L223)

```
Type_Info :: struct {
	size:    int,
	align:   int,
	flags:   Type_Info_Flags,
	id:      typeid,
	variant: union {
		Type_Info_Named, 
		Type_Info_Integer, 
		Type_Info_Rune, 
		Type_Info_Float, 
		Type_Info_Complex, 
		Type_Info_Quaternion, 
		Type_Info_String, 
		Type_Info_Boolean, 
		Type_Info_Any, 
		Type_Info_Type_Id, 
		Type_Info_Pointer, 
		Type_Info_Multi_Pointer, 
		Type_Info_Procedure, 
		Type_Info_Array, 
		Type_Info_Enumerated_Array, 
		Type_Info_Dynamic_Array, 
		Type_Info_Slice, 
		Type_Info_Parameters, 
		Type_Info_Struct, 
		Type_Info_Union, 
		Type_Info_Enum, 
		Type_Info_Map, 
		Type_Info_Bit_Set, 
		Type_Info_Simd_Vector, 
		Type_Info_Matrix, 
		Type_Info_Soa_Pointer, 
		Type_Info_Bit_Field, 
		Type_Info_Fixed_Capacity_Dynamic_Array, 
	},
}
```

##### Related Procedures With Parameters

* [print\_type](/base/runtime/#print_type)
* [type\_info\_base](/base/runtime/#type_info_base)
* [type\_info\_core](/base/runtime/#type_info_core)
* [type\_info\_underlying](/base/runtime/#type_info_underlying)
* [write\_write\_type](/base/runtime/#write_write_type)

### [Type\_Info\_Any ¶](#Type_Info_Any) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L87)

```
Type_Info_Any :: struct {}
```

### [Type\_Info\_Array ¶](#Type_Info_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L101)

```
Type_Info_Array :: struct {
	elem:      ^Type_Info,
	elem_size: int,
	count:     int,
}
```

### [Type\_Info\_Bit\_Field ¶](#Type_Info_Bit_Field) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L199)

```
Type_Info_Bit_Field :: struct {
	backing_type: ^Type_Info,
	names:        [^]string `fmt:"v,field_count"`,
	types:        [^]^Type_Info `fmt:"v,field_count"`,
	bit_sizes:    [^]uintptr `fmt:"v,field_count"`,
	bit_offsets:  [^]uintptr `fmt:"v,field_count"`,
	tags:         [^]string `fmt:"v,field_count"`,
	field_count:  int,
}
```

### [Type\_Info\_Bit\_Set ¶](#Type_Info_Bit_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L172)

```
Type_Info_Bit_Set :: struct {
	elem:                ^Type_Info,
	underlying:          ^Type_Info,
	explicit_underlying: bool,
	// false = bit_set[T], true = bit_set[T, U]
	lower:               i64,
	upper:               i64,
}
```

### [Type\_Info\_Boolean ¶](#Type_Info_Boolean) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L86)

```
Type_Info_Boolean :: struct {}
```

### [Type\_Info\_Complex ¶](#Type_Info_Complex) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L83)

```
Type_Info_Complex :: struct {}
```

### [Type\_Info\_Dynamic\_Array ¶](#Type_Info_Dynamic_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L115)

```
Type_Info_Dynamic_Array :: struct {
	elem:      ^Type_Info,
	elem_size: int,
}
```

### [Type\_Info\_Enum ¶](#Type_Info_Enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L162)

```
Type_Info_Enum :: struct {
	base:   ^Type_Info,
	names:  []string,
	values: []Type_Info_Enum_Value,
}
```

### [Type\_Info\_Enum\_Value ¶](#Type_Info_Enum_Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L48)

```
Type_Info_Enum_Value :: distinct i64
```

### [Type\_Info\_Enumerated\_Array ¶](#Type_Info_Enumerated_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L106)

```
Type_Info_Enumerated_Array :: struct {
	elem:      ^Type_Info,
	index:     ^Type_Info,
	elem_size: int,
	count:     int,
	min_value: Type_Info_Enum_Value,
	max_value: Type_Info_Enum_Value,
	is_sparse: bool,
}
```

### [Type\_Info\_Fixed\_Capacity\_Dynamic\_Array ¶](#Type_Info_Fixed_Capacity_Dynamic_Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L209)

```
Type_Info_Fixed_Capacity_Dynamic_Array :: struct {
	elem:       ^Type_Info,
	elem_size:  int,
	capacity:   int,
	len_offset: uintptr,
}
```

### [Type\_Info\_Flag ¶](#Type_Info_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L217)

```
Type_Info_Flag :: enum u8 {
	Comparable     = 0, 
	Simple_Compare = 1, 
}
```

### [Type\_Info\_Flags ¶](#Type_Info_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L221)

```
Type_Info_Flags :: distinct bit_set[Type_Info_Flag; u32]
```

### [Type\_Info\_Float ¶](#Type_Info_Float) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L82)

```
Type_Info_Float :: struct {
	endianness: Platform_Endianness,
}
```

### [Type\_Info\_Integer ¶](#Type_Info_Integer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L80)

```
Type_Info_Integer :: struct {
	signed:     bool,
	endianness: Platform_Endianness,
}
```

### [Type\_Info\_Map ¶](#Type_Info_Map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L167)

```
Type_Info_Map :: struct {
	key:      ^Type_Info,
	value:    ^Type_Info,
	map_info: ^Map_Info,
}
```

### [Type\_Info\_Matrix ¶](#Type_Info_Matrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L184)

```
Type_Info_Matrix :: struct {
	elem:         ^Type_Info,
	elem_size:    int,
	elem_stride:  int,
	// elem_stride >= row_count
	row_count:    int,
	column_count: int,
	// Total element count = column_count * elem_stride
	layout:       enum u8 {
		Column_Major, // array of column vectors
		Row_Major,    // array of row vectors
	},
}
```

### [Type\_Info\_Multi\_Pointer ¶](#Type_Info_Multi_Pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L92)

```
Type_Info_Multi_Pointer :: struct {
	elem: ^Type_Info,
}
```

### [Type\_Info\_Named ¶](#Type_Info_Named) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L74)

```
Type_Info_Named :: struct {
	name: string,
	base: ^Type_Info,
	pkg:  string,
	loc:  ^Source_Code_Location,
}
```

 

Variant Types

### [Type\_Info\_Parameters ¶](#Type_Info_Parameters) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L118)

```
Type_Info_Parameters :: struct {
	// Only used for procedures parameters and results
	types: []^Type_Info,
	names: []string,
}
```

### [Type\_Info\_Pointer ¶](#Type_Info_Pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L89)

```
Type_Info_Pointer :: struct {
	elem: ^Type_Info,
}
```

### [Type\_Info\_Procedure ¶](#Type_Info_Procedure) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L95)

```
Type_Info_Procedure :: struct {
	params:     ^Type_Info,
	// Type_Info_Parameters
	results:    ^Type_Info,
	// Type_Info_Parameters
	variadic:   bool,
	convention: Calling_Convention,
}
```

### [Type\_Info\_Quaternion ¶](#Type_Info_Quaternion) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L84)

```
Type_Info_Quaternion :: struct {}
```

### [Type\_Info\_Rune ¶](#Type_Info_Rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L81)

```
Type_Info_Rune :: struct {}
```

### [Type\_Info\_Simd\_Vector ¶](#Type_Info_Simd_Vector) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L179)

```
Type_Info_Simd_Vector :: struct {
	elem:      ^Type_Info,
	elem_size: int,
	count:     int,
}
```

### [Type\_Info\_Slice ¶](#Type_Info_Slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L116)

```
Type_Info_Slice :: struct {
	elem:      ^Type_Info,
	elem_size: int,
}
```

### [Type\_Info\_Soa\_Pointer ¶](#Type_Info_Soa_Pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L196)

```
Type_Info_Soa_Pointer :: struct {
	elem: ^Type_Info,
}
```

### [Type\_Info\_String ¶](#Type_Info_String) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L85)

```
Type_Info_String :: struct {
	is_cstring: bool,
	encoding:   Type_Info_String_Encoding_Kind,
}
```

### [Type\_Info\_String\_Encoding\_Kind ¶](#Type_Info_String_Encoding_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L68)

```
Type_Info_String_Encoding_Kind :: enum u8 {
	UTF_8  = 0, 
	UTF_16 = 1, 
}
```

### [Type\_Info\_Struct ¶](#Type_Info_Struct) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L132)

```
Type_Info_Struct :: struct {
	// Slice these with `field_count`
	types:         [^]^Type_Info `fmt:"v,field_count"`,
	names:         [^]string `fmt:"v,field_count"`,
	offsets:       [^]uintptr `fmt:"v,field_count"`,
	usings:        [^]bool `fmt:"v,field_count"`,
	tags:          [^]string `fmt:"v,field_count"`,
	field_count:   i32,
	flags:         Type_Info_Struct_Flags,
	// These are only set if and only if (⟺) this structure is an SOA structure
	soa_kind:      Type_Info_Struct_Soa_Kind,
	soa_len:       i32,
	soa_base_type: ^Type_Info,
	equal:         Equal_Proc,
}
```

### [Type\_Info\_Struct\_Flag ¶](#Type_Info_Struct_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L124)

```
Type_Info_Struct_Flag :: enum u8 {
	packed      = 0, 
	raw_union   = 1, 
	all_or_none = 2, 
	align       = 3, 
	simple      = 4, 
}
```

### [Type\_Info\_Struct\_Flags ¶](#Type_Info_Struct_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L123)

```
Type_Info_Struct_Flags :: distinct bit_set[Type_Info_Struct_Flag; u8]
```

### [Type\_Info\_Struct\_Soa\_Kind ¶](#Type_Info_Struct_Soa_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L61)

```
Type_Info_Struct_Soa_Kind :: enum u8 {
	None    = 0, 
	Fixed   = 1, 
	Slice   = 2, 
	Dynamic = 3, 
}
```

### [Type\_Info\_Type\_Id ¶](#Type_Info_Type_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L88)

```
Type_Info_Type_Id :: struct {}
```

### [Type\_Info\_Union ¶](#Type_Info_Union) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L151)

```
Type_Info_Union :: struct {
	variants:     []^Type_Info,
	tag_offset:   uintptr,
	tag_type:     ^Type_Info,
	equal:        Equal_Proc,
	// set only when the struct has .Comparable set but does not have .Simple_Compare set
	custom_align: bool,
	no_nil:       bool,
	shared_nil:   bool,
}
```

### [WASM\_Allocator ¶](#WASM_Allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L46)

```
WASM_Allocator :: struct {
	// The minimum alignment of allocations.
	alignment:                uint,
	// A region that contains as payload a single forward linked list of pointers to
	// root regions of each disjoint region blocks.
	list_of_all_regions:      ^Root_Region,
	// For each of the buckets, maintain a linked list head node. The head node for each
	// free region is a sentinel node that does not actually represent any free space, but
	// the sentinel is used to avoid awkward testing against (if node == freeRegionHeadNode)
	// when adding and removing elements from the linked list, i.e. we are guaranteed that
	// the sentinel node is always fixed and there, and the actual free region list elements
	// start at free_region_buckets[i].next each.
	free_region_buckets:      [64]Region,
	// A bitmask that tracks the population status for each of the 64 distinct memory regions:
	// a zero at bit position i means that the free list bucket i is empty. This bitmask is
	// used to avoid redundant scanning of the 64 different free region buckets: instead by
	// looking at the bitmask we can find in constant time an index to a free region bucket
	// that contains free memory of desired size.
	free_region_buckets_used: u64,
	// Because wasm memory can only be allocated in pages of 64k at a time, we keep any
	// spilled/unused bytes that are left from the allocated pages here, first using this
	// when bytes are needed.
	spill:                    []u8,
	// Mutex for thread safety, only used if the target feature "atomics" is enabled.
	mu:                       Mutex_State,
}
```

##### Related Procedures With Parameters

* [wasm\_allocator](/base/runtime/#wasm_allocator)
* [wasm\_allocator\_free\_space](/base/runtime/#wasm_allocator_free_space)
* [wasm\_allocator\_init](/base/runtime/#wasm_allocator_init)
* [wasm\_allocator\_size](/base/runtime/#wasm_allocator_size)

### [int\_t ¶](#int_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs.odin#L33)

```
int_t :: int
```

 

NOTE: on wasm, calls to these procs are generated (by LLVM) with type `i32` instead of `int`.

NOTE: `#any_int` is also needed, because calls that we generate (and package code)
will be using `int` and need to be converted.




##### Related Procedures With Parameters

* [align\_forward\_int](/base/runtime/#align_forward_int)
* [arena\_allocator\_proc](/base/runtime/#arena_allocator_proc)
* [assign\_at\_elem](/base/runtime/#assign_at_elem)
* [assign\_at\_elem\_fixed\_capacity\_dynamic\_array](/base/runtime/#assign_at_elem_fixed_capacity_dynamic_array)
* [assign\_at\_elem\_string](/base/runtime/#assign_at_elem_string)
* [assign\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](/base/runtime/#assign_at_elem_string_fixed_capacity_dynamic_array)
* [assign\_at\_elems](/base/runtime/#assign_at_elems)
* [assign\_at\_elems\_fixed\_capacity\_dynamic\_array](/base/runtime/#assign_at_elems_fixed_capacity_dynamic_array)
* [bounds\_check\_error](/base/runtime/#bounds_check_error)
* [bounds\_check\_error\_loc](/base/runtime/#bounds_check_error_loc)
* [bzero](/base/runtime/#bzero)
* [conditional\_mem\_zero](/base/runtime/#conditional_mem_zero)
* [copy\_slice\_raw](/base/runtime/#copy_slice_raw)
* [default\_hasher](/base/runtime/#default_hasher)
* [default\_temp\_allocator\_init](/base/runtime/#default_temp_allocator_init)
* [default\_temp\_allocator\_proc](/base/runtime/#default_temp_allocator_proc)
* [dynamic\_array\_expr\_error](/base/runtime/#dynamic_array_expr_error)
* [dynamic\_array\_expr\_error\_loc](/base/runtime/#dynamic_array_expr_error_loc)
* [exit](/base/runtime/#exit)
* [heap\_alloc](/base/runtime/#heap_alloc)
* [heap\_allocator\_proc](/base/runtime/#heap_allocator_proc)
* [heap\_resize](/base/runtime/#heap_resize)
* [init\_global\_temporary\_allocator](/base/runtime/#init_global_temporary_allocator)
* [inject\_at\_elem](/base/runtime/#inject_at_elem)
* [inject\_at\_elem\_fixed\_capacity\_dynamic\_array](/base/runtime/#inject_at_elem_fixed_capacity_dynamic_array)
* [inject\_at\_elem\_soa](/base/runtime/#inject_at_elem_soa)
* [inject\_at\_elem\_string](/base/runtime/#inject_at_elem_string)
* [inject\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](/base/runtime/#inject_at_elem_string_fixed_capacity_dynamic_array)
* [inject\_at\_elems](/base/runtime/#inject_at_elems)
* [inject\_at\_elems\_fixed\_capacity\_dynamic\_array](/base/runtime/#inject_at_elems_fixed_capacity_dynamic_array)
* [inject\_at\_elems\_soa](/base/runtime/#inject_at_elems_soa)
* [is\_power\_of\_two\_int](/base/runtime/#is_power_of_two_int)
* [make\_aligned](/base/runtime/#make_aligned)
* [make\_dynamic\_array\_error\_loc](/base/runtime/#make_dynamic_array_error_loc)
* [make\_dynamic\_array\_len](/base/runtime/#make_dynamic_array_len)
* [make\_dynamic\_array\_len\_cap](/base/runtime/#make_dynamic_array_len_cap)
* [make\_map\_cap](/base/runtime/#make_map_cap)
* [make\_map\_expr\_error\_loc](/base/runtime/#make_map_expr_error_loc)
* [make\_multi\_pointer](/base/runtime/#make_multi_pointer)
* [make\_slice](/base/runtime/#make_slice)
* [make\_slice\_error\_loc](/base/runtime/#make_slice_error_loc)
* [make\_soa\_aligned](/base/runtime/#make_soa_aligned)
* [make\_soa\_dynamic\_array\_len](/base/runtime/#make_soa_dynamic_array_len)
* [make\_soa\_dynamic\_array\_len\_cap](/base/runtime/#make_soa_dynamic_array_len_cap)
* [make\_soa\_slice](/base/runtime/#make_soa_slice)
* [matrix\_bounds\_check\_error](/base/runtime/#matrix_bounds_check_error)
* [mem\_alloc](/base/runtime/#mem_alloc)
* [mem\_alloc\_bytes](/base/runtime/#mem_alloc_bytes)
* [mem\_alloc\_non\_zeroed](/base/runtime/#mem_alloc_non_zeroed)
* [mem\_copy](/base/runtime/#mem_copy)
* [mem\_copy\_non\_overlapping](/base/runtime/#mem_copy_non_overlapping)
* [mem\_free\_with\_size](/base/runtime/#mem_free_with_size)
* [mem\_resize](/base/runtime/#mem_resize)
* [mem\_zero](/base/runtime/#mem_zero)
* [memcpy](/base/runtime/#memcpy)
* [memmove](/base/runtime/#memmove)
* [memory\_compare](/base/runtime/#memory_compare)
* [memory\_compare\_zero](/base/runtime/#memory_compare_zero)
* [memory\_equal](/base/runtime/#memory_equal)
* [memory\_prefix\_length](/base/runtime/#memory_prefix_length)
* [memset](/base/runtime/#memset)
* [multi\_pointer\_slice\_expr\_error](/base/runtime/#multi_pointer_slice_expr_error)
* [multi\_pointer\_slice\_handle\_error](/base/runtime/#multi_pointer_slice_handle_error)
* [new\_aligned](/base/runtime/#new_aligned)
* [nil\_allocator\_proc](/base/runtime/#nil_allocator_proc)
* [non\_zero\_mem\_resize](/base/runtime/#non_zero_mem_resize)
* [non\_zero\_reserve\_dynamic\_array](/base/runtime/#non_zero_reserve_dynamic_array)
* [non\_zero\_reserve\_soa](/base/runtime/#non_zero_reserve_soa)
* [non\_zero\_resize\_dynamic\_array](/base/runtime/#non_zero_resize_dynamic_array)
* [non\_zero\_resize\_fixed\_capacity\_dynamic\_array](/base/runtime/#non_zero_resize_fixed_capacity_dynamic_array)
* [non\_zero\_resize\_soa](/base/runtime/#non_zero_resize_soa)
* [ordered\_remove\_dynamic\_array](/base/runtime/#ordered_remove_dynamic_array)
* [ordered\_remove\_fixed\_capacity\_dynamic\_array](/base/runtime/#ordered_remove_fixed_capacity_dynamic_array)
* [ordered\_remove\_soa](/base/runtime/#ordered_remove_soa)
* [panic\_allocator\_proc](/base/runtime/#panic_allocator_proc)
* [print\_int](/base/runtime/#print_int)
* [remove\_range\_dynamic\_array](/base/runtime/#remove_range_dynamic_array)
* [remove\_range\_fixed\_capacity\_dynamic\_array](/base/runtime/#remove_range_fixed_capacity_dynamic_array)
* [reserve\_dynamic\_array](/base/runtime/#reserve_dynamic_array)
* [reserve\_map](/base/runtime/#reserve_map)
* [reserve\_soa](/base/runtime/#reserve_soa)
* [resize\_dynamic\_array](/base/runtime/#resize_dynamic_array)
* [resize\_fixed\_capacity\_dynamic\_array](/base/runtime/#resize_fixed_capacity_dynamic_array)
* [resize\_soa](/base/runtime/#resize_soa)
* [shrink\_dynamic\_array](/base/runtime/#shrink_dynamic_array)
* [slice\_expr\_error\_hi](/base/runtime/#slice_expr_error_hi)
* [slice\_expr\_error\_hi\_loc](/base/runtime/#slice_expr_error_hi_loc)
* [slice\_expr\_error\_lo\_hi](/base/runtime/#slice_expr_error_lo_hi)
* [slice\_expr\_error\_lo\_hi\_loc](/base/runtime/#slice_expr_error_lo_hi_loc)
* [slice\_handle\_error](/base/runtime/#slice_handle_error)
* [unordered\_remove\_dynamic\_array](/base/runtime/#unordered_remove_dynamic_array)
* [unordered\_remove\_fixed\_capacity\_dynamic\_array](/base/runtime/#unordered_remove_fixed_capacity_dynamic_array)
* [unordered\_remove\_soa](/base/runtime/#unordered_remove_soa)
* [wasm\_allocator\_proc](/base/runtime/#wasm_allocator_proc)
* [write\_byte](/base/runtime/#write_byte)
* [write\_caller\_location](/base/runtime/#write_caller_location)
* [write\_encoded\_rune](/base/runtime/#write_encoded_rune)
* [write\_i64](/base/runtime/#write_i64)
* [write\_rune](/base/runtime/#write_rune)
* [write\_string](/base/runtime/#write_string)
* [write\_typeid](/base/runtime/#write_typeid)
* [write\_u64](/base/runtime/#write_u64)
* [write\_write\_type](/base/runtime/#write_write_type)
* [align\_forward](/base/runtime/#align_forward) *(procedure groups)*
* [assign\_at](/base/runtime/#assign_at) *(procedure groups)*
* [inject\_at](/base/runtime/#inject_at) *(procedure groups)*
* [inject\_at\_soa](/base/runtime/#inject_at_soa) *(procedure groups)*
* [is\_power\_of\_two](/base/runtime/#is_power_of_two) *(procedure groups)*
* [make](/base/runtime/#make) *(procedure groups)*
* [make\_soa](/base/runtime/#make_soa) *(procedure groups)*
* [non\_zero\_reserve](/base/runtime/#non_zero_reserve) *(procedure groups)*
* [non\_zero\_resize](/base/runtime/#non_zero_resize) *(procedure groups)*
* [ordered\_remove](/base/runtime/#ordered_remove) *(procedure groups)*
* [remove\_range](/base/runtime/#remove_range) *(procedure groups)*
* [reserve](/base/runtime/#reserve) *(procedure groups)*
* [resize](/base/runtime/#resize) *(procedure groups)*
* [shrink](/base/runtime/#shrink) *(procedure groups)*
* [unordered\_remove](/base/runtime/#unordered_remove) *(procedure groups)*



##### Related Procedures With Returns

* [append\_elem](/base/runtime/#append_elem)
* [append\_elem\_string](/base/runtime/#append_elem_string)
* [append\_elems](/base/runtime/#append_elems)
* [append\_fixed\_capacity\_elem](/base/runtime/#append_fixed_capacity_elem)
* [append\_fixed\_capacity\_elems](/base/runtime/#append_fixed_capacity_elems)
* [append\_fixed\_capacity\_string](/base/runtime/#append_fixed_capacity_string)
* [append\_nothing\_dynamic\_array](/base/runtime/#append_nothing_dynamic_array)
* [append\_nothing\_fixed\_capacity\_dynamic\_array](/base/runtime/#append_nothing_fixed_capacity_dynamic_array)
* [append\_nothing\_soa](/base/runtime/#append_nothing_soa)
* [append\_soa\_elem](/base/runtime/#append_soa_elem)
* [append\_soa\_elems](/base/runtime/#append_soa_elems)
* [append\_string](/base/runtime/#append_string)
* [card](/base/runtime/#card)
* [copy\_from\_string](/base/runtime/#copy_from_string)
* [copy\_from\_string16](/base/runtime/#copy_from_string16)
* [copy\_slice](/base/runtime/#copy_slice)
* [cstring16\_cmp](/base/runtime/#cstring16_cmp)
* [cstring16\_len](/base/runtime/#cstring16_len)
* [cstring\_cmp](/base/runtime/#cstring_cmp)
* [cstring\_len](/base/runtime/#cstring_len)
* [encode\_rune](/base/runtime/#encode_rune)
* [map\_cap](/base/runtime/#map_cap)
* [map\_len](/base/runtime/#map_len)
* [non\_zero\_append\_elem](/base/runtime/#non_zero_append_elem)
* [non\_zero\_append\_elem\_fixed\_capacity\_string](/base/runtime/#non_zero_append_elem_fixed_capacity_string)
* [non\_zero\_append\_elem\_string](/base/runtime/#non_zero_append_elem_string)
* [non\_zero\_append\_elems](/base/runtime/#non_zero_append_elems)
* [non\_zero\_append\_soa\_elem](/base/runtime/#non_zero_append_soa_elem)
* [non\_zero\_append\_soa\_elems](/base/runtime/#non_zero_append_soa_elems)
* [print\_byte](/base/runtime/#print_byte)
* [print\_rune](/base/runtime/#print_rune)
* [print\_string](/base/runtime/#print_string)
* [print\_strings](/base/runtime/#print_strings)
* [stderr\_write](/base/runtime/#stderr_write)
* [string16\_cmp](/base/runtime/#string16_cmp)
* [string16\_decode\_last\_rune](/base/runtime/#string16_decode_last_rune)
* [string16\_decode\_rune](/base/runtime/#string16_decode_rune)
* [string\_cmp](/base/runtime/#string_cmp)
* [string\_decode\_last\_rune](/base/runtime/#string_decode_last_rune)
* [string\_decode\_rune](/base/runtime/#string_decode_rune)
* [append](/base/runtime/#append) *(procedure groups)*
* [append\_nothing](/base/runtime/#append_nothing) *(procedure groups)*
* [append\_soa](/base/runtime/#append_soa) *(procedure groups)*
* [copy](/base/runtime/#copy) *(procedure groups)*
* [non\_zero\_append](/base/runtime/#non_zero_append) *(procedure groups)*

## Constants

### [ALL\_ODIN\_ARCH\_TYPES ¶](#ALL_ODIN_ARCH_TYPES) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L542)

```
ALL_ODIN_ARCH_TYPES: bit_set[.Odin_Arch_Type] : Odin_Arch_Types{.amd64, .i386, .arm32, .arm64, .wasm32, .wasm64p32, .riscv64}
```

### [ALL\_ODIN\_OS\_TYPES ¶](#ALL_ODIN_OS_TYPES) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L577)

```
ALL_ODIN_OS_TYPES: bit_set[.Odin_OS_Type] : Odin_OS_Types{.Windows, .Darwin, .Linux, .Essence, .FreeBSD, .OpenBSD, .NetBSD, .Haiku, .WASI, .JS, .Orca, .Freestanding}
```

### [Byte ¶](#Byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L338)

```
Byte :: 1
```

### [DEFAULT\_ALIGNMENT ¶](#DEFAULT_ALIGNMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L115)

```
DEFAULT_ALIGNMENT :: 2 * align_of(rawptr)
```

### [DEFAULT\_ARENA\_GROWING\_MINIMUM\_BLOCK\_SIZE ¶](#DEFAULT_ARENA_GROWING_MINIMUM_BLOCK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L6)

```
DEFAULT_ARENA_GROWING_MINIMUM_BLOCK_SIZE :: uint(DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE)
```

### [DEFAULT\_DYNAMIC\_ARRAY\_CAPACITY ¶](#DEFAULT_DYNAMIC_ARRAY_CAPACITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L531)

```
DEFAULT_DYNAMIC_ARRAY_CAPACITY :: 8
```

### [DEFAULT\_TEMP\_ALLOCATOR\_BACKING\_SIZE ¶](#DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L3)

```
DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE: int : #config(DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE, 4 * Megabyte)
```

### [Exabyte ¶](#Exabyte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L344)

```
Exabyte :: 1024 * Petabyte
```

### [Gigabyte ¶](#Gigabyte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L341)

```
Gigabyte :: 1024 * Megabyte
```

### [HASH\_MASK ¶](#HASH_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1007)

```
HASH_MASK :: 1 << (8 * size_of(uintptr) - 1) - 1
```

### [HAS\_HARDWARE\_SIMD ¶](#HAS_HARDWARE_SIMD) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L20)

```
HAS_HARDWARE_SIMD :: false when (ODIN_ARCH == .amd64 || ODIN_ARCH == .i386) && !intrinsics.has_target_feature("sse2") else false when (ODIN_ARCH == .arm64 || ODIN_ARCH == .arm32) && !intrinsics.has_target_feature("neon") else false when (ODIN_ARCH == .wasm64p32 || ODIN_ARCH == .wasm32) && !intrinsics.has_target_feature("simd128") else false when (ODIN_ARCH == .riscv64) && !intrinsics.has_target_feature("v") else true
```

### [HAS\_RAND\_BYTES ¶](#HAS_RAND_BYTES) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/os_specific.odin#L5)

```
HAS_RAND_BYTES :: _HAS_RAND_BYTES
```

### [INITIAL\_HASH\_SEED ¶](#INITIAL_HASH_SEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1005)

```
INITIAL_HASH_SEED :: 0xcbf29ce484222325
```

### [Kilobyte ¶](#Kilobyte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L339)

```
Kilobyte :: 1024 * Byte
```

### [MAP\_CACHE\_LINE\_LOG2 ¶](#MAP_CACHE_LINE_LOG2) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L52)

```
MAP_CACHE_LINE_LOG2 :: 6
```

 

This is safe to change. The log2 size of a cache-line. At minimum it has to
be six though. Higher cache line sizes are permitted.

### [MAP\_CACHE\_LINE\_SIZE ¶](#MAP_CACHE_LINE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L55)

```
MAP_CACHE_LINE_SIZE :: 1 << MAP_CACHE_LINE_LOG2
```

 

The size of a cache-line.

### [MAP\_LOAD\_FACTOR ¶](#MAP_LOAD_FACTOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L42)

```
MAP_LOAD_FACTOR :: 75
```

 

With Robin Hood hashing a maximum load factor of 75% is ideal.

### [MAP\_MIN\_LOG2\_CAPACITY ¶](#MAP_MIN_LOG2_CAPACITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L45)

```
MAP_MIN_LOG2_CAPACITY :: 3
```

 

Minimum log2 capacity.

### [Megabyte ¶](#Megabyte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L340)

```
Megabyte :: 1024 * Kilobyte
```

### [NATIVE\_SIMD\_BIT\_WIDTH ¶](#NATIVE_SIMD_BIT_WIDTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L27)

```
NATIVE_SIMD_BIT_WIDTH :: 512 when (ODIN_ARCH == .amd64) && intrinsics.has_target_feature("avx512f") else 256 when (ODIN_ARCH == .amd64) && (intrinsics.has_target_feature("avx2") || intrinsics.has_target_feature("avx")) else 128
```

 

Size of a native SIMD register for the current compilation target

### [NO\_DEFAULT\_TEMP\_ALLOCATOR ¶](#NO_DEFAULT_TEMP_ALLOCATOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L4)

```
NO_DEFAULT_TEMP_ALLOCATOR: bool : ODIN_OS == .Freestanding || ODIN_DEFAULT_TO_NIL_ALLOCATOR
```

### [ODIN\_PLATFORM\_SUBTARGET\_IOS ¶](#ODIN_PLATFORM_SUBTARGET_IOS) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L606)

```
ODIN_PLATFORM_SUBTARGET_IOS :: ODIN_PLATFORM_SUBTARGET == .iPhone || ODIN_PLATFORM_SUBTARGET == .iPhoneSimulator
```

### [Petabyte ¶](#Petabyte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L343)

```
Petabyte :: 1024 * Terabyte
```

### [RUNTIME\_REQUIRE ¶](#RUNTIME_REQUIRE) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L15)

```
RUNTIME_REQUIRE :: false
```

 

!ODIN\_TILDE

### [TOMBSTONE\_MASK ¶](#TOMBSTONE_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L231)

```
TOMBSTONE_MASK :: 1 << (size_of(Map_Hash) * 8 - 1)
```

### [Terabyte ¶](#Terabyte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L342)

```
Terabyte :: 1024 * Gigabyte
```

## Variables

### [args\_\_ ¶](#args__) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L265)

```
args__: []cstring
```

### [global\_default\_temp\_allocator\_data ¶](#global_default_temp_allocator_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L61)

```
@(thread_local)
global_default_temp_allocator_data: Default_Temp_Allocator
```

### [global\_default\_wasm\_allocator\_data ¶](#global_default_wasm_allocator_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L90)

```
global_default_wasm_allocator_data: WASM_Allocator
```

### [init\_default\_context\_for\_js ¶](#init_default_context_for_js) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs_js.odin#L4)

```
init_default_context_for_js: Context
```

### [type\_table ¶](#type_table) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L263)

```
type_table: []^Type_Info
```

 

NOTE(bill): only the ones that are needed (not all types)
This will be set by the compiler

## Procedures

### [DEFAULT\_TEMP\_ALLOCATOR\_TEMP\_GUARD ¶](#DEFAULT_TEMP_ALLOCATOR_TEMP_GUARD) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L71)

```
DEFAULT_TEMP_ALLOCATOR_TEMP_GUARD :: proc(ignore: bool = false, loc := #caller_location) -> (Arena_Temp, Source_Code_Location) {…}
```

### [abs\_complex128 ¶](#abs_complex128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L909)

```
abs_complex128 :: proc "contextless" (x: complex128) -> f64 {…}
```

### [abs\_complex32 ¶](#abs_complex32) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L887)

```
abs_complex32 :: proc "contextless" (x: complex32) -> f16 {…}
```

### [abs\_complex64 ¶](#abs_complex64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L898)

```
abs_complex64 :: proc "contextless" (x: complex64) -> f32 {…}
```

### [abs\_quaternion128 ¶](#abs_quaternion128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L924)

```
abs_quaternion128 :: proc "contextless" (x: quaternion128) -> f32 {…}
```

### [abs\_quaternion256 ¶](#abs_quaternion256) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L928)

```
abs_quaternion256 :: proc "contextless" (x: quaternion256) -> f64 {…}
```

### [abs\_quaternion64 ¶](#abs_quaternion64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L920)

```
abs_quaternion64 :: proc "contextless" (x: quaternion64) -> f16 {…}
```

### [add\_thread\_local\_cleaner ¶](#add_thread_local_cleaner) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/thread_management.odin#L17)

```
add_thread_local_cleaner :: proc "contextless" (p: Thread_Local_Cleaner) {…}
```

 

Add a procedure that will be run at the end of a thread for the purpose of
deallocating state marked as `thread_local`.

Intended to be called in an `init` procedure of a package with
dynamically-allocated memory that is stored in `thread_local` variables.

### [aeabi\_d2h ¶](#aeabi_d2h) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1128)

```
aeabi_d2h :: proc "c" (value: f64) -> u16 {…}
```

### [align\_forward\_int ¶](#align_forward_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L45)

```
align_forward_int :: proc(ptr, align: int) -> int {…}
```

##### Related Procedure Groups

* [align\_forward](/base/runtime/#align_forward)

### [align\_forward\_uint ¶](#align_forward_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L39)

```
align_forward_uint :: proc(ptr, align: uint) -> uint {…}
```

##### Related Procedure Groups

* [align\_forward](/base/runtime/#align_forward)

### [align\_forward\_uintptr ¶](#align_forward_uintptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L51)

```
align_forward_uintptr :: proc(ptr, align: uintptr) -> uintptr {…}
```

##### Related Procedure Groups

* [align\_forward](/base/runtime/#align_forward)

### [alloc\_from\_memory\_block ¶](#alloc_from_memory_block) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L67)

```
alloc_from_memory_block :: proc(block: ^Memory_Block, min_size, alignment: uint) -> (data: []u8, err: Allocator_Error) {…}
```

### [append\_elem ¶](#append_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L736)

```
append_elem :: proc(array: ^$T/[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_elem` appends an element to the end of a dynamic array.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_elem\_string ¶](#append_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L824)

```
append_elem_string :: proc(array: ^$T/[dynamic]$E/u8, arg: $A/string, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_elem_string` appends a string to the end of a dynamic array of bytes

Note: Prefer using the procedure group `append`.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_elems ¶](#append_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L791)

```
append_elems :: proc(array: ^$T/[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_elems` appends `args` to the end of a dynamic array.

Note: Prefer using the procedure group `append`.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_fixed\_capacity\_elem ¶](#append_fixed_capacity_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L864)

```
append_fixed_capacity_elem :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #no_broadcast arg: $E) -> (n: int) {…}
```

 

`append_fixed_capacity_elem` appends an element to the end of a fixed capacity dynamic array. Returns 0 on failure




##### Related Procedure Groups

* [append](/base/runtime/#append)
* [non\_zero\_append](/base/runtime/#non_zero_append)

### [append\_fixed\_capacity\_elems ¶](#append_fixed_capacity_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L881)

```
append_fixed_capacity_elems :: proc "contextless" (array: ^$T/[dynamic; $N]$E, .. #no_broadcast args: ..$E) -> (n: int) {…}
```

 

`append_fixed_capacity_elem` appends an element to the end of a fixed capacity dynamic array. Returns 0 on failure




##### Related Procedure Groups

* [append](/base/runtime/#append)
* [non\_zero\_append](/base/runtime/#non_zero_append)

### [append\_fixed\_capacity\_string ¶](#append_fixed_capacity_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L899)

```
append_fixed_capacity_string :: proc "contextless" (array: ^$T/[dynamic; $N]$E/u8, .. args: ..string) -> (n: int) {…}
```

 

The append\_fixed\_capacity\_string built-in procedure appends multiple strings to the end of a [dynamic]u8 like type

Note: Prefer using the procedure group `append`.




##### Related Procedure Groups

* [append](/base/runtime/#append)

### [append\_nothing\_dynamic\_array ¶](#append_nothing_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L945)

```
append_nothing_dynamic_array :: proc(array: ^$T/[dynamic]$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_nothing` appends an empty value to a dynamic array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.




##### Related Procedure Groups

* [append\_nothing](/base/runtime/#append_nothing)

### [append\_nothing\_fixed\_capacity\_dynamic\_array ¶](#append_nothing_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L957)

```
append_nothing_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) -> (n: int, ok: bool) {…}
```

 

`append_nothing` appends an empty value to a dynamic array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.




##### Related Procedure Groups

* [append\_nothing](/base/runtime/#append_nothing)

### [append\_nothing\_soa ¶](#append_nothing_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L507)

```
append_nothing_soa :: proc(array: ^$T/#soa[dynamic]$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`append_nothing_soa` appends an empty value to a dynamic SOA array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.

### [append\_soa\_elem ¶](#append_soa_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L375)

```
append_soa_elem :: proc(array: ^$T/#soa[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [append](/base/runtime/#append)
* [append\_soa](/base/runtime/#append_soa)

### [append\_soa\_elems ¶](#append_soa_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L432)

```
append_soa_elems :: proc(array: ^$T/#soa[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [append](/base/runtime/#append)
* [append\_soa](/base/runtime/#append_soa)

### [append\_string ¶](#append_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L849)

```
append_string :: proc(array: ^$T/[dynamic]$E/u8, .. args: ..string, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

The append\_string built-in procedure appends multiple strings to the end of a [dynamic]u8 like type

Note: Prefer using the procedure group `append`.

### [arena\_alloc ¶](#arena_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L99)

```
arena_alloc :: proc(arena: ^Arena, size, alignment: uint, loc := #caller_location) -> (data: []u8, err: Allocator_Error) {…}
```

### [arena\_allocator ¶](#arena_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L182)

```
arena_allocator :: proc(arena: ^Arena) -> Allocator {…}
```

### [arena\_allocator\_proc ¶](#arena_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L186)

```
arena_allocator_proc :: proc(
	allocator_data:  rawptr, 
	mode:            Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	location := #caller_location, 
) -> (data: []u8, err: Allocator_Error) {…}
```

### [arena\_check\_temp ¶](#arena_check_temp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L324)

```
arena_check_temp :: proc(arena: ^Arena, loc := #caller_location) {…}
```

### [arena\_destroy ¶](#arena_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L169)

```
arena_destroy :: proc "contextless" (arena: ^Arena, loc := #caller_location) {…}
```

### [arena\_free\_all ¶](#arena_free_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L156)

```
arena_free_all :: proc(arena: ^Arena, loc := #caller_location) {…}
```

 

`arena_free_all` will free all but the first memory block, and then reset the memory block

### [arena\_free\_last\_memory\_block ¶](#arena_free_last_memory_block) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L146)

```
arena_free_last_memory_block :: proc(arena: ^Arena, loc := #caller_location) {…}
```

### [arena\_init ¶](#arena_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L135)

```
arena_init :: proc(arena: ^Arena, size: uint, backing_allocator: Allocator, loc := #caller_location) -> Allocator_Error {…}
```

 

`arena_init` will initialize the arena with a usable block.
This procedure is not necessary to use the Arena as the default zero as `arena_alloc` will set things up if necessary

### [arena\_temp\_begin ¶](#arena_temp_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L265)

```
arena_temp_begin :: proc(arena: ^Arena, loc := #caller_location) -> (temp: Arena_Temp) {…}
```

### [arena\_temp\_end ¶](#arena_temp_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L277)

```
arena_temp_end :: proc(temp: Arena_Temp, loc := #caller_location) {…}
```

### [arena\_temp\_ignore ¶](#arena_temp_ignore) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L316)

```
arena_temp_ignore :: proc(temp: Arena_Temp, loc := #caller_location) {…}
```

 

Ignore the use of a `arena_temp_begin` entirely

### [assert ¶](#assert) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1536)

```
assert :: proc(condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `context.assertion_failure_procedure` to assert.

This routine will be ignored when `ODIN_DISABLE_ASSERT` is true.

### [assert\_contextless ¶](#assert_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1600)

```
assert_contextless :: proc "contextless" (condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `default_assertion_contextless_failure_proc` to assert.

This routine will be ignored when `ODIN_DISABLE_ASSERT` is true.

### [assign\_at\_elem ¶](#assign_at_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1138)

```
assign_at_elem :: proc(array: ^$T/[dynamic]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`assign_at_elem` assigns a value at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+1` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elem\_fixed\_capacity\_dynamic\_array ¶](#assign_at_elem_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1191)

```
assign_at_elem_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int index: int, arg: $E) -> (ok: bool) {…}
```

 

`assign_at_elem_fixed_capacity_dynamic_array` assigns a value at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+1` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elem\_string ¶](#assign_at_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1172)

```
assign_at_elem_string :: proc(array: ^$T/[dynamic]$E/u8, #any_int index: int, arg: string, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`assign_at_elem_string` assigns a string at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(arg)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elem\_string\_fixed\_capacity\_dynamic\_array ¶](#assign_at_elem_string_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1225)

```
assign_at_elem_string_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E/u8, #any_int index: int, arg: string) -> (ok: bool) {…}
```

 

`assign_at_elem_string_fixed_capacity_dynamic_array` assigns a string at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(arg)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elems ¶](#assign_at_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1154)

```
assign_at_elems :: proc(array: ^$T/[dynamic]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`assign_at_elems` assigns a values at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(args)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [assign\_at\_elems\_fixed\_capacity\_dynamic\_array ¶](#assign_at_elems_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1207)

```
assign_at_elems_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int index: int, .. #no_broadcast args: ..$E) -> (ok: bool) {…}
```

 

`assign_at_elems_fixed_capacity_dynamic_array` assigns a values at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+len(args)` and then assign as `index`.




##### Related Procedure Groups

* [assign\_at](/base/runtime/#assign_at)

### [bounds\_check\_error ¶](#bounds_check_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L27)

```
bounds_check_error :: proc "contextless" (file: string, line, column: i32, index, count: int) {…}
```

### [bounds\_check\_error\_loc ¶](#bounds_check_error_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L395)

```
bounds_check_error_loc :: proc "contextless" (loc := #caller_location, index, count: int) {…}
```

### [bounds\_trap ¶](#bounds_trap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L4)

```
bounds_trap :: proc "contextless" () {…}
```

### [bzero ¶](#bzero) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs.odin#L48)

```
bzero :: proc "c" (ptr: rawptr, len: int) -> rawptr {…}
```

### [card ¶](#card) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1524)

```
card :: proc "contextless" (s: $S/bit_set[$E]) -> int {…}
```

 

`card` returns the number of bits that are set in a bit\_set—its cardinality

### [clear\_dynamic\_array ¶](#clear_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1260)

```
clear_dynamic_array :: proc "contextless" (array: ^$T/[dynamic]$E) {…}
```

 

`clear_dynamic_array` will set the length of a passed dynamic array to `0`

Note: Prefer the procedure group `clear`.




##### Related Procedure Groups

* [clear](/base/runtime/#clear)

### [clear\_fixed\_capacity\_dynamic\_array ¶](#clear_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1270)

```
clear_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) {…}
```

 

`clear_fixed_capacity_dynamic_array` will set the length of a passed dynamic array to `0`

Note: Prefer the procedure group `clear`.




##### Related Procedure Groups

* [clear](/base/runtime/#clear)

### [clear\_map ¶](#clear_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L668)

```
clear_map :: proc "contextless" (m: ^$T/map[$K]$V) {…}
```

 

`clear_map` will set the length of a passed map to `0`

Note: Prefer the procedure group `clear`




##### Related Procedure Groups

* [clear](/base/runtime/#clear)

### [clear\_soa\_dynamic\_array ¶](#clear_soa_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L649)

```
clear_soa_dynamic_array :: proc(array: ^$T/#soa[dynamic]$E) {…}
```

##### Related Procedure Groups

* [clear](/base/runtime/#clear)
* [clear\_soa](/base/runtime/#clear_soa)

### [complex128\_eq ¶](#complex128_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L697)

```
complex128_eq :: proc "contextless" (a, b: complex128) -> bool {…}
```

### [complex128\_ne ¶](#complex128_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L698)

```
complex128_ne :: proc "contextless" (a, b: complex128) -> bool {…}
```

### [complex32\_eq ¶](#complex32_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L691)

```
complex32_eq :: proc "contextless" (a, b: complex32) -> bool {…}
```

### [complex32\_ne ¶](#complex32_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L692)

```
complex32_ne :: proc "contextless" (a, b: complex32) -> bool {…}
```

### [complex64\_eq ¶](#complex64_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L694)

```
complex64_eq :: proc "contextless" (a, b: complex64) -> bool {…}
```

### [complex64\_ne ¶](#complex64_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L695)

```
complex64_ne :: proc "contextless" (a, b: complex64) -> bool {…}
```

### [conditional\_mem\_zero ¶](#conditional_mem_zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L225)

```
conditional_mem_zero :: proc "contextless" (data: rawptr, n_: int) {…}
```

### [container\_of ¶](#container_of) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L48)

```
container_of :: proc "contextless" (ptr: $P/^$Field_Type, $T: typeid, $field_name: string) -> ^typeid {…}
```

 

Recovers the containing/parent struct from a pointer to one of its fields.
Works by "walking back" to the struct's starting address using the offset between the field and the struct.

**Inputs:**  
ptr: Pointer to the field of a container struct
T: The type of the container struct
field\_name: The name of the field in the `T` struct

**Returns:**  
A pointer to the container struct based on a pointer to a field in it

**Example:**

```
package container_of
import "base:runtime"

Node :: struct {
	value: int,
	prev:  ^Node,
	next:  ^Node,
}

main :: proc() {
	node: Node
	field_ptr := &node.next
	container_struct_ptr: ^Node = runtime.container_of(field_ptr, Node, "next")
	assert(container_struct_ptr == &node)
	assert(uintptr(field_ptr) - uintptr(container_struct_ptr) == size_of(node.value) + size_of(node.prev))
}
```

**Output:**

```
^Node
```

### [copy\_from\_string ¶](#copy_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L100)

```
copy_from_string :: proc "contextless" (dst: $T/[]$E/u8, src: $S/string) -> int {…}
```

 

`copy_from_string` is a built-in procedure that copies elements from a source string `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

Prefer the procedure group `copy`.




##### Related Procedure Groups

* [copy](/base/runtime/#copy)

### [copy\_from\_string16 ¶](#copy_from_string16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L110)

```
copy_from_string16 :: proc "contextless" (dst: $T/[]$E/u16, src: $S/string16) -> int {…}
```

 

`copy_from_string16` is a built-in procedure that copies elements from a source string `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

Prefer the procedure group `copy`.




##### Related Procedure Groups

* [copy](/base/runtime/#copy)

### [copy\_slice ¶](#copy_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L90)

```
copy_slice :: proc "contextless" (dst, src: $T/[]$E) -> int {…}
```

 

`copy_slice` is a built-in procedure that copies elements from a source slice `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

Prefer the procedure group `copy`.




##### Related Procedure Groups

* [copy](/base/runtime/#copy)

### [copy\_slice\_raw ¶](#copy_slice_raw) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L76)

```
copy_slice_raw :: proc "contextless" (dst, src: rawptr, dst_len, src_len, elem_size: int) -> int {…}
```

### [cstring16\_cmp ¶](#cstring16_cmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L667)

```
cstring16_cmp :: proc "contextless" (lhs, rhs: cstring16) -> int {…}
```

### [cstring16\_eq ¶](#cstring16_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L650)

```
cstring16_eq :: proc "contextless" (lhs, rhs: cstring16) -> bool {…}
```

### [cstring16\_ge ¶](#cstring16_ge) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L689)

```
cstring16_ge :: proc "contextless" (a, b: cstring16) -> bool {…}
```

### [cstring16\_gt ¶](#cstring16_gt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L687)

```
cstring16_gt :: proc "contextless" (a, b: cstring16) -> bool {…}
```

### [cstring16\_le ¶](#cstring16_le) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L688)

```
cstring16_le :: proc "contextless" (a, b: cstring16) -> bool {…}
```

### [cstring16\_len ¶](#cstring16_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L580)

```
cstring16_len :: proc "contextless" (s: cstring16) -> int {…}
```

### [cstring16\_lt ¶](#cstring16_lt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L686)

```
cstring16_lt :: proc "contextless" (a, b: cstring16) -> bool {…}
```

### [cstring16\_ne ¶](#cstring16_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L685)

```
cstring16_ne :: proc "contextless" (a, b: cstring16) -> bool {…}
```

### [cstring16\_to\_string16 ¶](#cstring16_to_string16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L599)

```
cstring16_to_string16 :: proc "contextless" (s: cstring16) -> string16 {…}
```

### [cstring\_cmp ¶](#cstring_cmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L626)

```
cstring_cmp :: proc "contextless" (lhs: cstring, rhs: cstring) -> int {…}
```

### [cstring\_eq ¶](#cstring_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L609)

```
cstring_eq :: proc "contextless" (lhs: cstring, rhs: cstring) -> bool {…}
```

### [cstring\_ge ¶](#cstring_ge) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L648)

```
cstring_ge :: proc "contextless" (a, b: cstring) -> bool {…}
```

### [cstring\_gt ¶](#cstring_gt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L646)

```
cstring_gt :: proc "contextless" (a, b: cstring) -> bool {…}
```

### [cstring\_le ¶](#cstring_le) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L647)

```
cstring_le :: proc "contextless" (a, b: cstring) -> bool {…}
```

### [cstring\_len ¶](#cstring_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L571)

```
cstring_len :: proc "contextless" (s: cstring) -> int {…}
```

### [cstring\_lt ¶](#cstring_lt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L645)

```
cstring_lt :: proc "contextless" (a, b: cstring) -> bool {…}
```

### [cstring\_ne ¶](#cstring_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L644)

```
cstring_ne :: proc "contextless" (a, b: cstring) -> bool {…}
```

### [cstring\_to\_string ¶](#cstring_to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L590)

```
cstring_to_string :: proc "contextless" (s: cstring) -> string {…}
```

### [debug\_trap ¶](#debug_trap)

```
debug_trap :: intrinsics.debug_trap  
debug_trap :: proc() {…}
```

 

A call intended to cause an execution trap with the intention of requesting a debugger's attention.

### [default\_allocator ¶](#default_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L93)

```
default_allocator :: default_wasm_allocator
```

### [default\_allocator\_proc ¶](#default_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L105)

```
default_allocator_proc :: wasm_allocator_proc
```

### [default\_assertion\_contextless\_failure\_proc ¶](#default_assertion_contextless_failure_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L834)

```
default_assertion_contextless_failure_proc :: proc "contextless" (prefix, message: string, loc: Source_Code_Location) -> ! {…}
```

### [default\_assertion\_failure\_proc ¶](#default_assertion_failure_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L830)

```
default_assertion_failure_proc :: proc(prefix, message: string, loc: Source_Code_Location) -> ! {…}
```

### [default\_context ¶](#default_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L789)

```
default_context :: proc "contextless" () -> Context {…}
```

 

Returns the default `context`

### [default\_context\_ptr ¶](#default_context_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs_js.odin#L12)

```
default_context_ptr :: proc "contextless" () -> ^Context {…}
```

### [default\_hasher ¶](#default_hasher) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1009)

```
default_hasher :: proc "contextless" (data: rawptr, seed: uintptr, N: int) -> uintptr {…}
```

### [default\_hasher\_complex128 ¶](#default_hasher_complex128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1049)

```
default_hasher_complex128 :: proc "contextless" (x, y: f64, seed: uintptr) -> uintptr {…}
```

### [default\_hasher\_cstring ¶](#default_hasher_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1024)

```
default_hasher_cstring :: proc "contextless" (data: rawptr, seed: uintptr) -> uintptr {…}
```

### [default\_hasher\_f64 ¶](#default_hasher_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1036)

```
default_hasher_f64 :: proc "contextless" (f: f64, seed: uintptr) -> uintptr {…}
```

### [default\_hasher\_quaternion256 ¶](#default_hasher_quaternion256) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1056)

```
default_hasher_quaternion256 :: proc "contextless" (x, y, z, w: f64, seed: uintptr) -> uintptr {…}
```

### [default\_hasher\_string ¶](#default_hasher_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L1020)

```
default_hasher_string :: proc "contextless" (data: rawptr, seed: uintptr) -> uintptr {…}
```

### [default\_logger ¶](#default_logger) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L782)

```
default_logger :: proc() -> Logger {…}
```

 

Returns the default logger used by `context.logger`

### [default\_logger\_proc ¶](#default_logger_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L776)

```
default_logger_proc :: proc(data: rawptr, level: Logger_Level, text: string, options: bit_set[Logger_Option], location := #caller_location) {…}
```

### [default\_random\_generator ¶](#default_random_generator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator_chacha8.odin#L52)

```
default_random_generator :: proc "contextless" (state: ^Default_Random_State = nil) -> Random_Generator {…}
```

### [default\_random\_generator\_proc ¶](#default_random_generator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator_chacha8.odin#L59)

```
default_random_generator_proc :: proc(data: rawptr, mode: Random_Generator_Mode, p: []u8) {…}
```

### [default\_temp\_allocator ¶](#default_temp_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L80)

```
default_temp_allocator :: proc(allocator: ^Default_Temp_Allocator) -> Allocator {…}
```

### [default\_temp\_allocator\_destroy ¶](#default_temp_allocator_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L37)

```
default_temp_allocator_destroy :: proc "contextless" (s: ^Default_Temp_Allocator) {…}
```

### [default\_temp\_allocator\_init ¶](#default_temp_allocator_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L33)

```
default_temp_allocator_init :: proc(s: ^Default_Temp_Allocator, size: int, backing_allocator := context.allocator) {…}
```

### [default\_temp\_allocator\_proc ¶](#default_temp_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L44)

```
default_temp_allocator_proc :: proc(
	allocator_data:  rawptr, 
	mode:            Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	loc := #caller_location, 
) -> (data: []u8, err: Allocator_Error) {…}
```

### [default\_temp\_allocator\_temp\_begin ¶](#default_temp_allocator_temp_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L53)

```
default_temp_allocator_temp_begin :: proc(loc := #caller_location) -> (temp: Arena_Temp) {…}
```

### [default\_temp\_allocator\_temp\_end ¶](#default_temp_allocator_temp_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L60)

```
default_temp_allocator_temp_end :: proc(temp: Arena_Temp, loc := #caller_location) {…}
```

### [default\_wasm\_allocator ¶](#default_wasm_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L93)

```
default_wasm_allocator :: proc() -> Allocator {…}
```

### [delete\_cstring ¶](#delete_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L457)

```
delete_cstring :: proc(str: cstring, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_cstring` will try to free the underlying data of the passed string, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_cstring16 ¶](#delete_cstring16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L488)

```
delete_cstring16 :: proc(str: cstring16, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_dynamic\_array ¶](#delete_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L464)

```
delete_dynamic_array :: proc(array: $T/[dynamic]$E, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_dynamic_array` will try to free the underlying data of the passed dynamic array, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_key ¶](#delete_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L699)

```
delete_key :: proc(m: ^$T/map[$K]$V, key: $K) -> (deleted_key: $$deferred_return, deleted_value: $$deferred_return) {…}
```

 

The delete\_key built-in procedure deletes the element with the specified key (m[key]) from the map.
If m is nil, or there is no such element, this procedure is a no-op
It is safe to use `delete_key` while iterating a map.
But if you iterate across a map and insert a new key, it could resize which means you are not iterating across all of the elements.

### [delete\_map ¶](#delete_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L478)

```
delete_map :: proc(m: $T/map[$K]$V, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_map` will try to free the underlying data of the passed map, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_slice ¶](#delete_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L471)

```
delete_slice :: proc(array: $T/[]$E, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_slice` will try to free the underlying data of the passed sliced, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_soa\_dynamic\_array ¶](#delete_soa_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L630)

```
delete_soa_dynamic_array :: proc(array: $T/#soa[dynamic]$E, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)
* [delete\_soa](/base/runtime/#delete_soa)

### [delete\_soa\_slice ¶](#delete_soa_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L619)

```
delete_soa_slice :: proc(array: $T/#soa[]$E, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)
* [delete\_soa](/base/runtime/#delete_soa)

### [delete\_string ¶](#delete_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L450)

```
delete_string :: proc(str: string, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

 

`delete_string` will try to free the underlying data of the passed string, with the given `allocator` if the allocator supports this operation.

Note: Prefer the procedure group `delete`.




##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [delete\_string16 ¶](#delete_string16) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L484)

```
delete_string16 :: proc(str: string16, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [delete](/base/runtime/#delete)

### [divmodti4 ¶](#divmodti4) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1306)

```
divmodti4 :: proc "c" (a, b: i128, rem: ^i128) -> i128 {…}
```

### [divti3 ¶](#divti3) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1323)

```
divti3 :: proc "c" (a, b: i128) -> i128 {…}
```

### [dynamic\_array\_expr\_error ¶](#dynamic_array_expr_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L94)

```
dynamic_array_expr_error :: proc "contextless" (
	file:         string, 
	line, column: i32, 
	low, high, 
	max:          int, 
) {…}
```

### [dynamic\_array\_expr\_error\_loc ¶](#dynamic_array_expr_error_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L410)

```
dynamic_array_expr_error_loc :: proc "contextless" (loc := #caller_location, low, high, max: int) {…}
```

### [encode\_rune ¶](#encode_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L89)

```
encode_rune :: proc "contextless" (c: rune) -> ([4]u8, int) {…}
```

### [ensure ¶](#ensure) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1558)

```
ensure :: proc(condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `context.assertion_failure_procedure` to assert.
This routine ignores `ODIN_DISABLE_ASSERT`, and will always execute.

### [ensure\_contextless ¶](#ensure_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1617)

```
ensure_contextless :: proc "contextless" (condition: bool, message: string = #caller_expression(condition), loc := #caller_location) {…}
```

 

Evaluates the condition and panics the program iff the condition is false.
This uses the `default_assertion_contextless_failure_proc` to assert.

### [exit ¶](#exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/os_specific.odin#L19)

```
exit :: proc "contextless" (code: int) -> ! {…}
```

### [extendhfsf2 ¶](#extendhfsf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1163)

```
extendhfsf2 :: proc "c" (value: u16) -> f32 {…}
```

### [fixdfti ¶](#fixdfti) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1337)

```
fixdfti :: proc "c" (a: u64) -> i128 {…}
```

### [fixunsdfdi ¶](#fixunsdfdi) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1262)

```
fixunsdfdi :: proc "c" (a: f64) -> i128 {…}
```

### [fixunsdfti ¶](#fixunsdfti) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1255)

```
fixunsdfti :: proc "c" (a: f64) -> u128 {…}
```

### [floattidf ¶](#floattidf) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1170)

```
floattidf :: proc "c" (a: i128) -> f64 {…}
```

### [floattidf\_unsigned ¶](#floattidf_unsigned) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1213)

```
floattidf_unsigned :: proc "c" (a: u128) -> f64 {…}
```

### [gnu\_f2h\_ieee ¶](#gnu_f2h_ieee) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1158)

```
gnu_f2h_ieee :: proc "c" (value: f32) -> u16 {…}
```

### [gnu\_h2f\_ieee ¶](#gnu_h2f_ieee) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1138)

```
gnu_h2f_ieee :: proc "c" (value_: u16) -> f32 {…}
```

### [heap\_alloc ¶](#heap_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/heap_allocator.odin#L112)

```
heap_alloc :: proc "contextless" (size: int, zero_memory: bool = true) -> rawptr {…}
```

### [heap\_allocator ¶](#heap_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/heap_allocator.odin#L6)

```
heap_allocator :: proc() -> Allocator {…}
```

### [heap\_allocator\_proc ¶](#heap_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/heap_allocator.odin#L13)

```
heap_allocator_proc :: proc(
	allocator_data:  rawptr, 
	mode:            Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	loc := #caller_location, 
) -> ([]u8, Allocator_Error) {…}
```

### [heap\_free ¶](#heap_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/heap_allocator.odin#L120)

```
heap_free :: proc "contextless" (ptr: rawptr) {…}
```

### [heap\_resize ¶](#heap_resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/heap_allocator.odin#L116)

```
heap_resize :: proc "contextless" (ptr: rawptr, new_size: int) -> rawptr {…}
```

### [init\_global\_temporary\_allocator ¶](#init_global_temporary_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L68)

```
init_global_temporary_allocator :: proc(size: int, backup_allocator := context.allocator) {…}
```

 

Initializes the global temporary allocator used as the default `context.temp_allocator`.
This is ignored when `NO_DEFAULT_TEMP_ALLOCATOR` is true.

### [inject\_at\_elem ¶](#inject_at_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L978)

```
inject_at_elem :: proc(array: ^$T/[dynamic]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elem` injects an element in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elem\_fixed\_capacity\_dynamic\_array ¶](#inject_at_elem_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1053)

```
inject_at_elem_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool) {…}
```

 

`inject_at_elem_fixed_capacity_dynamic_array` injects an element in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elem\_soa ¶](#inject_at_elem_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L519)

```
inject_at_elem_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, #no_broadcast arg: $E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elem_soa` injects an element in a dynamic SOA array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at\_soa](/base/runtime/#inject_at_soa)

### [inject\_at\_elem\_string ¶](#inject_at_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1027)

```
inject_at_elem_string :: proc(array: ^$T/[dynamic]$E/u8, #any_int index: int, arg: string, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elem_string` injects a string into a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elem\_string\_fixed\_capacity\_dynamic\_array ¶](#inject_at_elem_string_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1099)

```
inject_at_elem_string_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E/u8, #any_int index: int, arg: string, loc := #caller_location) -> (ok: bool) {…}
```

 

`inject_at_elem_string_fixed_capacity_dynamic_array` injects a string into a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elems ¶](#inject_at_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1000)

```
inject_at_elems :: proc(array: ^$T/[dynamic]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elems` injects multiple elements in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elems\_fixed\_capacity\_dynamic\_array ¶](#inject_at_elems_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1074)

```
inject_at_elems_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool) {…}
```

 

`inject_at_elems_fixed_capacity_dynamic_array` injects multiple elements in a dynamic array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at](/base/runtime/#inject_at)

### [inject\_at\_elems\_soa ¶](#inject_at_elems_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L564)

```
inject_at_elems_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, .. #no_broadcast args: ..$E, loc := #caller_location) -> (ok: bool, err: Allocator_Error) #optional_ok {…}
```

 

`inject_at_elems_soa` injects multiple elements in a dynamic SOA array at a specified index and moves the previous elements after that index "across"




##### Related Procedure Groups

* [inject\_at\_soa](/base/runtime/#inject_at_soa)

### [into\_dynamic\_soa ¶](#into_dynamic_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L664)

```
into_dynamic_soa :: proc(array: $T/#soa[]$E) -> $$deferred_return {…}
```

 

Converts soa slice into a soa dynamic array without cloning or allocating memory

### [is\_power\_of\_two\_int ¶](#is_power_of_two_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L62)

```
is_power_of_two_int :: proc "contextless" (x: int) -> bool {…}
```

##### Related Procedure Groups

* [is\_power\_of\_two](/base/runtime/#is_power_of_two)

### [is\_power\_of\_two\_uint ¶](#is_power_of_two_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L70)

```
is_power_of_two_uint :: proc "contextless" (x: uint) -> bool {…}
```

##### Related Procedure Groups

* [is\_power\_of\_two](/base/runtime/#is_power_of_two)

### [is\_power\_of\_two\_uintptr ¶](#is_power_of_two_uintptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L78)

```
is_power_of_two_uintptr :: proc "contextless" (x: uintptr) -> bool {…}
```

##### Related Procedure Groups

* [is\_power\_of\_two](/base/runtime/#is_power_of_two)

### [make\_aligned ¶](#make_aligned) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L534)

```
make_aligned :: proc($T: typeid/[]$E, #any_int len: int, alignment: int, allocator := context.allocator, loc := #caller_location) -> (res: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

### [make\_dynamic\_array ¶](#make_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L565)

```
make_dynamic_array :: proc($T: typeid/[dynamic]$E, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_dynamic_array` allocates and initializes a dynamic array. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_dynamic\_array\_error\_loc ¶](#make_dynamic_array_error_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L358)

```
make_dynamic_array_error_loc :: proc "contextless" (loc := #caller_location, len, cap: int) {…}
```

### [make\_dynamic\_array\_len ¶](#make_dynamic_array_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L574)

```
make_dynamic_array_len :: proc($T: typeid/[dynamic]$E, #any_int len: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_dynamic_array_len` allocates and initializes a dynamic array. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_dynamic\_array\_len\_cap ¶](#make_dynamic_array_len_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L583)

```
make_dynamic_array_len_cap :: proc($T: typeid/[dynamic]$E, #any_int len: int, #any_int cap: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) {…}
```

 

`make_dynamic_array_len_cap` allocates and initializes a dynamic array. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_map ¶](#make_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L605)

```
make_map :: proc($T: typeid/map[$K]$E, allocator := context.allocator, loc := #caller_location) -> (m: $$deferred_return) {…}
```

 

`make_map` initializes a map with an allocator. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_map\_cap ¶](#make_map_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L616)

```
make_map_cap :: proc($T: typeid/map[$K]$E, #any_int capacity: int, allocator := context.allocator, loc := #caller_location) -> (m: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_map_cap` initializes a map with an allocator and allocates space using `capacity`.
Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_map\_expr\_error\_loc ¶](#make_map_expr_error_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L376)

```
make_map_expr_error_loc :: proc "contextless" (loc := #caller_location, cap: int) {…}
```

### [make\_multi\_pointer ¶](#make_multi_pointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L630)

```
make_multi_pointer :: proc($T: typeid/[^]$E, #any_int len: int, allocator := context.allocator, loc := #caller_location) -> (mp: $$deferred_return, err: Allocator_Error) {…}
```

 

`make_multi_pointer` allocates and initializes a multi-pointer. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

This is "similar" to doing `raw_data(make([]E, len, allocator))`.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_slice ¶](#make_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L556)

```
make_slice :: proc($T: typeid/[]$E, #any_int len: int, allocator := context.allocator, loc := #caller_location) -> (res: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

 

`make_slice` allocates and initializes a slice. Like `new`, the first argument is a type, not a value.
Unlike `new`, `make`'s return value is the same as the type of its argument, not a pointer to it.

Note: Prefer using the procedure group `make`.




##### Related Procedure Groups

* [make](/base/runtime/#make)

### [make\_slice\_error\_loc ¶](#make_slice_error_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L342)

```
make_slice_error_loc :: proc "contextless" (loc := #caller_location, len: int) {…}
```

### [make\_soa\_aligned ¶](#make_soa_aligned) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L79)

```
make_soa_aligned :: proc($T: typeid/#soa[]$E, #any_int length, #any_int alignment: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

### [make\_soa\_dynamic\_array ¶](#make_soa_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L143)

```
make_soa_dynamic_array :: proc($T: typeid/#soa[dynamic]$E, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [make\_soa\_dynamic\_array\_len ¶](#make_soa_dynamic_array_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L151)

```
make_soa_dynamic_array_len :: proc($T: typeid/#soa[dynamic]$E, #any_int length: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [make\_soa\_dynamic\_array\_len\_cap ¶](#make_soa_dynamic_array_len_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L159)

```
make_soa_dynamic_array_len_cap :: proc($T: typeid/#soa[dynamic]$E, #any_int length, #any_int capacity: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [make\_soa\_slice ¶](#make_soa_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L138)

```
make_soa_slice :: proc($T: typeid/#soa[]$E, #any_int length: int, allocator := context.allocator, loc := #caller_location) -> (array: $$deferred_return, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [make](/base/runtime/#make)
* [make\_soa](/base/runtime/#make_soa)

### [map\_alloc\_dynamic ¶](#map_alloc_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L361)

```
map_alloc_dynamic :: proc(info: ^Map_Info, log2_capacity: uintptr, allocator := context.allocator, loc := #caller_location) -> (result: Raw_Map, err: Allocator_Error) {…}
```

 

The only procedure which needs access to the context is the one which allocates the map.

### [map\_cap ¶](#map_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L190)

```
map_cap :: proc "contextless" (m: Raw_Map) -> int {…}
```

 

cap() for map

### [map\_cell\_index\_dynamic ¶](#map_cell_index_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L109)

```
map_cell_index_dynamic :: proc "contextless" (base: uintptr, #no_alias info: ^Map_Cell_Info, index: uintptr) -> uintptr {…}
```

 

Same as the above procedure but at runtime with the cell Map\_Cell\_Info value.

### [map\_cell\_index\_dynamic\_const ¶](#map_cell_index_dynamic_const) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L131)

```
map_cell_index_dynamic_const :: proc "contextless" (base: uintptr, #no_alias info: ^Map_Cell_Info, $INDEX: uintptr) -> uintptr {…}
```

 

Same as above procedure but with compile-time constant index.

### [map\_cell\_index\_static ¶](#map_cell_index_static) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L147)

```
map_cell_index_static :: proc "contextless" (cells: [^]Map_Cell($T), index: uintptr) -> $$deferred_return {…}
```

 

We always round the capacity to a power of two so this becomes [16]Foo, which
works out to [4]Cell(Foo).

The following compile-time procedure indexes such a [N]Cell(T) structure as
if it were a flat array accounting for the internal padding introduced by the
Cell structure.

### [map\_cell\_info ¶](#map_cell_info)

```
map_cell_info :: intrinsics.type_map_cell_info  
map_cell_info :: proc($T: typeid) -> ^runtime.Map_Cell_Info {…}
```

 

map\_cell\_info :: proc "contextless" ($T: typeid) -> ^Map\_Cell\_Info {...}

### [map\_clear\_dynamic ¶](#map_clear_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L794)

```
map_clear_dynamic :: proc "contextless" (#no_alias m: ^Raw_Map, #no_alias info: ^Map_Info) {…}
```

### [map\_data ¶](#map_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L224)

```
map_data :: proc "contextless" (m: Raw_Map) -> uintptr {…}
```

 

Canonicalize the data by removing the tagged capacity stored in the lower six
bits of the data uintptr.

### [map\_desired\_position ¶](#map_desired_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L276)

```
map_desired_position :: proc "contextless" (m: Raw_Map, hash: uintptr) -> uintptr {…}
```

 

Computes the desired position in the array. This is just index % capacity,
but a procedure as there's some math involved here to recover the capacity.

### [map\_entry ¶](#map_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1509)

```
map_entry :: proc(m: ^$T/map[$K]$V, key: $K, loc := #caller_location) -> (key_ptr: $$deferred_return, value_ptr: $$deferred_return, just_inserted: bool, err: Allocator_Error) {…}
```

 

Retrieves a pointer to the key and value for a possibly just inserted entry into the map.

If the `key` was not in the map `m`, an entry is inserted with the zero value and `just_inserted` will be `true`.
Otherwise the existing entry is left untouched and pointers to its key and value are returned.

If the map has to grow in order to insert the entry and the allocation fails, `err` is set and returned.

If `err` is `nil`, `key_ptr` and `value_ptr` are valid pointers and will not be `nil`.

WARN: User modification of the key pointed at by `key_ptr` should only be done if the new key is equal to (in hash) the old key.
If that is not the case you will corrupt the map.

### [map\_erase\_dynamic ¶](#map_erase_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L769)

```
map_erase_dynamic :: proc "contextless" (#no_alias m: ^Raw_Map, #no_alias info: ^Map_Info, k: uintptr) -> (old_k, old_v: uintptr, ok: bool) {…}
```

### [map\_exists\_dynamic ¶](#map_exists_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L743)

```
map_exists_dynamic :: proc "contextless" (m: Raw_Map, #no_alias info: ^Map_Info, k: uintptr) -> (ok: bool) {…}
```

### [map\_free\_dynamic ¶](#map_free_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L708)

```
map_free_dynamic :: proc(m: Raw_Map, info: ^Map_Info, loc := #caller_location) -> Allocator_Error {…}
```

### [map\_get ¶](#map_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L815)

```
map_get :: proc "contextless" (m: $T/map[$K]$V, key: $K) -> (stored_key: $$deferred_return, stored_value: $$deferred_return, ok: bool) {…}
```

### [map\_grow\_dynamic ¶](#map_grow_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L589)

```
map_grow_dynamic :: proc(#no_alias m: ^Raw_Map, #no_alias info: ^Map_Info, loc := #caller_location) -> Allocator_Error {…}
```

### [map\_hash\_is\_deleted ¶](#map_hash_is_deleted) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L242)

```
map_hash_is_deleted :: proc "contextless" (hash: uintptr) -> bool {…}
```

### [map\_hash\_is\_empty ¶](#map_hash_is_empty) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L237)

```
map_hash_is_empty :: proc "contextless" (hash: uintptr) -> bool {…}
```

 

Procedure to check if a slot is empty for a given hash. This is represented
by the zero value to make the zero value useful. This is a procedure just
for prose reasons.

### [map\_hash\_is\_valid ¶](#map_hash_is_valid) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L247)

```
map_hash_is_valid :: proc "contextless" (hash: uintptr) -> bool {…}
```

### [map\_info ¶](#map_info)

```
map_info :: intrinsics.type_map_info  
map_info :: proc($T: typeid/map[$K]$V) -> ^runtime.Map_Info {…}
```

 

The Map\_Info structure is basically a pseudo-table of information for a given K and V pair.
map\_info :: proc "contextless" ($T: typeid/map[$K]$V) -> ^Map\_Info {...}

### [map\_insert ¶](#map_insert) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1474)

```
map_insert :: proc(m: ^$T/map[$K]$V, key: $K, value: $V, loc := #caller_location) -> (ptr: $$deferred_return) {…}
```

### [map\_insert\_hash\_dynamic ¶](#map_insert_hash_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L583)

```
map_insert_hash_dynamic :: proc(#no_alias m: ^Raw_Map, #no_alias info: ^Map_Info, h: uintptr, ik: uintptr, iv: uintptr) -> (result: uintptr) {…}
```

### [map\_insert\_hash\_dynamic\_with\_key ¶](#map_insert_hash_dynamic_with_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L403)

```
map_insert_hash_dynamic_with_key :: proc(#no_alias m: ^Raw_Map, #no_alias info: ^Map_Info, h: uintptr, ik: uintptr, iv: uintptr) -> (key: uintptr, result: uintptr) {…}
```

 

This procedure has to stack allocate storage to store local keys during the
Robin Hood hashing technique where elements are swapped in the backing
arrays to reduce variance. This swapping can only be done with memcpy since
there is no type information.

This procedure returns the address of the just inserted value, and will
return 'nil' if there was no room to insert the entry

### [map\_kvh\_data\_dynamic ¶](#map_kvh_data_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L313)

```
map_kvh_data_dynamic :: proc "contextless" (m: Raw_Map, #no_alias info: ^Map_Info) -> (ks: uintptr, vs: uintptr, hs: [^]uintptr, sk: uintptr, sv: uintptr) {…}
```

### [map\_kvh\_data\_static ¶](#map_kvh_data_static) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L805)

```
map_kvh_data_static :: proc "contextless" (m: $T/map[$K]$V) -> (ks: [^]Map_Cell($T), vs: [^]Map_Cell($T), hs: [^]uintptr) {…}
```

### [map\_kvh\_data\_values\_dynamic ¶](#map_kvh_data_values_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L330)

```
map_kvh_data_values_dynamic :: proc "contextless" (m: Raw_Map, #no_alias info: ^Map_Info) -> (vs: uintptr) {…}
```

### [map\_len ¶](#map_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L184)

```
map_len :: proc "contextless" (m: Raw_Map) -> int {…}
```

 

len() for map

### [map\_load\_factor ¶](#map_load_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L203)

```
map_load_factor :: proc "contextless" (log2_capacity: uintptr) -> uintptr {…}
```

 

Query the load factor of the map. This is not actually configurable, but
some math is needed to compute it. Compute it as a fixed point percentage to
avoid floating point operations. This division can be optimized out by
multiplying by the multiplicative inverse of 100.

### [map\_log2\_cap ¶](#map_log2_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L217)

```
map_log2_cap :: proc "contextless" (m: Raw_Map) -> uintptr {…}
```

 

The data stores the log2 capacity in the lower six bits. This is primarily
used in the implementation rather than map\_cap since the check for data = 0
isn't necessary in the implementation. cap() on the otherhand needs to work
when called on an empty map.

### [map\_lookup\_dynamic ¶](#map_lookup_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L720)

```
map_lookup_dynamic :: proc "contextless" (m: Raw_Map, #no_alias info: ^Map_Info, k: uintptr) -> (index: uintptr, ok: bool) {…}
```

### [map\_probe\_distance ¶](#map_probe_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L283)

```
map_probe_distance :: proc "contextless" (m: Raw_Map, hash: uintptr, slot: uintptr) -> uintptr {…}
```

### [map\_reserve\_dynamic ¶](#map_reserve_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L597)

```
map_reserve_dynamic :: proc(#no_alias m: ^Raw_Map, #no_alias info: ^Map_Info, new_capacity: uintptr, loc := #caller_location) -> Allocator_Error {…}
```

### [map\_resize\_threshold ¶](#map_resize_threshold) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L208)

```
map_resize_threshold :: proc "contextless" (m: Raw_Map) -> uintptr {…}
```

### [map\_seed ¶](#map_seed) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L253)

```
map_seed :: proc "contextless" (m: Raw_Map) -> uintptr {…}
```

### [map\_seed\_from\_map\_data ¶](#map_seed_from_map_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L259)

```
map_seed_from_map_data :: proc "contextless" (data: uintptr) -> uintptr {…}
```

 

splitmix for uintptr

### [map\_shrink\_dynamic ¶](#map_shrink_dynamic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L661)

```
map_shrink_dynamic :: proc(#no_alias m: ^Raw_Map, #no_alias info: ^Map_Info, loc := #caller_location) -> (did_shrink: bool, err: Allocator_Error) {…}
```

### [map\_total\_allocation\_size ¶](#map_total_allocation_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L337)

```
map_total_allocation_size :: proc "contextless" (capacity: uintptr, info: ^Map_Info) -> uintptr {…}
```

### [map\_total\_allocation\_size\_from\_value ¶](#map_total_allocation_size_from_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin#L354)

```
map_total_allocation_size_from_value :: proc "contextless" (m: $M/map[$K]$V) -> uintptr {…}
```

### [map\_upsert ¶](#map_upsert) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1484)

```
map_upsert :: proc(m: ^$T/map[$K]$V, key: $K, value: $V, loc := #caller_location) -> (prev_key: $$deferred_return, value_ptr: $$deferred_return, found_previous: bool) {…}
```

 

Explicitly inserts a key and value into a map `m`, the same as `map_insert`, but the return values differ.
`prev_key` will return the previous pointer of a key if it exists, check `found_previous` if was previously found
`value_ptr` will return the pointer of the memory where the insertion happens, and `nil` if the map failed to resize
`found_previous` will be true a previous key was found

### [matrix\_bounds\_check\_error ¶](#matrix_bounds_check_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L115)

```
matrix_bounds_check_error :: proc "contextless" (
	file:                               string, 
	line, column:                       i32, 
	row_index, column_index, row_count, 
	column_count:                       int, 
) {…}
```

### [mem\_alloc ¶](#mem_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L125)

```
mem_alloc :: proc(size: int, alignment: int = DEFAULT_ALIGNMENT, allocator := context.allocator, loc := #caller_location) -> ([]u8, Allocator_Error) {…}
```

### [mem\_alloc\_bytes ¶](#mem_alloc_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L117)

```
mem_alloc_bytes :: proc(size: int, alignment: int = DEFAULT_ALIGNMENT, allocator := context.allocator, loc := #caller_location) -> ([]u8, Allocator_Error) {…}
```

### [mem\_alloc\_non\_zeroed ¶](#mem_alloc_non_zeroed) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L133)

```
mem_alloc_non_zeroed :: proc(size: int, alignment: int = DEFAULT_ALIGNMENT, allocator := context.allocator, loc := #caller_location) -> ([]u8, Allocator_Error) {…}
```

### [mem\_copy ¶](#mem_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L99)

```
mem_copy :: proc "contextless" (dst, src: rawptr, len: int) -> rawptr {…}
```

### [mem\_copy\_non\_overlapping ¶](#mem_copy_non_overlapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L107)

```
mem_copy_non_overlapping :: proc "contextless" (dst, src: rawptr, len: int) -> rawptr {…}
```

### [mem\_free ¶](#mem_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L142)

```
mem_free :: proc(ptr: rawptr, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [free](/base/runtime/#free)

### [mem\_free\_all ¶](#mem_free_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L167)

```
mem_free_all :: proc(allocator := context.allocator, loc := #caller_location) -> (err: Allocator_Error) {…}
```

##### Related Procedure Groups

* [free\_all](/base/runtime/#free_all)

### [mem\_free\_bytes ¶](#mem_free_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L158)

```
mem_free_bytes :: proc(bytes: []u8, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

### [mem\_free\_with\_size ¶](#mem_free_with_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L150)

```
mem_free_with_size :: proc(ptr: rawptr, byte_count: int, allocator := context.allocator, loc := #caller_location) -> Allocator_Error {…}
```

### [mem\_resize ¶](#mem_resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L216)

```
mem_resize :: proc(
	ptr:       rawptr, 
	old_size:  int, 
	new_size:  int, 
	alignment: int = DEFAULT_ALIGNMENT, 
	allocator := context.allocator, 
	loc := #caller_location, 
) -> (data: []u8, err: Allocator_Error) {…}
```

### [mem\_zero ¶](#mem_zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L88)

```
mem_zero :: proc "contextless" (data: rawptr, len: int) -> rawptr {…}
```

### [memcpy ¶](#memcpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs.odin#L80)

```
memcpy :: proc "c" (dst, src: rawptr, len: int) -> rawptr {…}
```

### [memmove ¶](#memmove) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs.odin#L59)

```
memmove :: proc "c" (dst, src: rawptr, len: int) -> rawptr {…}
```

### [memory\_block\_alloc ¶](#memory_block_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L34)

```
memory_block_alloc :: proc(allocator: Allocator, capacity: uint, alignment: uint, loc := #caller_location) -> (block: ^Memory_Block, err: Allocator_Error) {…}
```

### [memory\_block\_dealloc ¶](#memory_block_dealloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin#L55)

```
memory_block_dealloc :: proc "contextless" (block_to_free: ^Memory_Block, loc := #caller_location) {…}
```

### [memory\_compare ¶](#memory_compare) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L328)

```
memory_compare :: proc "contextless" (x, y: rawptr, n: int) -> int {…}
```

### [memory\_compare\_zero ¶](#memory_compare_zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L396)

```
memory_compare_zero :: proc "contextless" (a: rawptr, n: int) -> int {…}
```

### [memory\_equal ¶](#memory_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L274)

```
memory_equal :: proc "contextless" (x, y: rawptr, n: int) -> bool {…}
```

### [memory\_prefix\_length ¶](#memory_prefix_length) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L449)

```
memory_prefix_length :: proc "contextless" (x, y: rawptr, n: int) -> (idx: int) {…}
```

### [memset ¶](#memset) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs.odin#L36)

```
memset :: proc "c" (ptr: rawptr, val: i32, #any_int len: int) -> rawptr {…}
```

### [modti3 ¶](#modti3) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1293)

```
modti3 :: proc "c" (a, b: i128) -> i128 {…}
```

### [mul\_quaternion128 ¶](#mul_quaternion128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1004)

```
mul_quaternion128 :: proc "contextless" (q, r: quaternion128) -> quaternion128 {…}
```

### [mul\_quaternion256 ¶](#mul_quaternion256) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1016)

```
mul_quaternion256 :: proc "contextless" (q, r: quaternion256) -> quaternion256 {…}
```

### [mul\_quaternion64 ¶](#mul_quaternion64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L992)

```
mul_quaternion64 :: proc "contextless" (q, r: quaternion64) -> quaternion64 {…}
```

### [multi\_pointer\_slice\_expr\_error ¶](#multi_pointer_slice_expr_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L70)

```
multi_pointer_slice_expr_error :: proc "contextless" (file: string, line, column: i32, lo, hi: int) -> ! {…}
```

### [multi\_pointer\_slice\_handle\_error ¶](#multi_pointer_slice_handle_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L58)

```
multi_pointer_slice_handle_error :: proc "contextless" (file: string, line, column: i32, lo, hi: int) -> ! {…}
```

### [new ¶](#new) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L512)

```
new :: proc($T: typeid, allocator := context.allocator, loc := #caller_location) -> (t: ^typeid, err: Allocator_Error) #optional_ok {…}
```

 

The new built-in procedure allocates memory. The first argument is a type, not a value, and the value
return is a pointer to a newly allocated value of that type using the specified allocator, default is context.allocator

### [new\_aligned ¶](#new_aligned) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L517)

```
new_aligned :: proc($T: typeid, alignment: int, allocator := context.allocator, loc := #caller_location) -> (t: ^typeid, err: Allocator_Error) {…}
```

### [new\_clone ¶](#new_clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L523)

```
new_clone :: proc(data: $T, allocator := context.allocator, loc := #caller_location) -> (t: $$deferred_return, err: Allocator_Error) {…}
```

### [nil\_allocator ¶](#nil_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_allocators_nil.odin#L35)

```
nil_allocator :: proc "contextless" () -> Allocator {…}
```

 

nil\_allocator returns an allocator which will return `nil` for any result.
\* `.Alloc`, `.Alloc_Non_Zero`, `.Resize`, `.Resize_Non_Zeroed` will return `nil, .Out_Of_Memory`
\* `.Free` will return `nil, .None`
\* `.Free_All` will return `nil, .Mode_Not_Implemented`
\* `.Query_Features`, `.Query_Info` will return `nil, .Mode_Not_Implemented`

This is extremely useful for creating a dynamic array from a buffer which does not nothing
on a resize/reserve beyond the originally allocated memory.

### [nil\_allocator\_proc ¶](#nil_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_allocators_nil.odin#L3)

```
nil_allocator_proc :: proc(
	allocator_data:  rawptr, 
	mode:            Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	loc := #caller_location, 
) -> ([]u8, Allocator_Error) {…}
```

### [non\_zero\_append\_elem ¶](#non_zero_append_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L750)

```
non_zero_append_elem :: proc(array: ^$T/[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`non_zero_append_elem` appends an element to the end of a dynamic array, without zeroing any reserved memory

Note: Prefer using the procedure group `non\_zero\_append




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_elem\_fixed\_capacity\_string ¶](#non_zero_append_elem_fixed_capacity_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L839)

```
non_zero_append_elem_fixed_capacity_string :: proc "contextless" (array: ^$T/[dynamic; $N]$E/u8, arg: $A/string) -> (n: int) {…}
```

 

`non_zero_append_elem_fixed_capacity_string` appends a string to the end of a dynamic array of bytes, without zeroing any reserved memory

Note: Prefer using the procedure group `non_zero_append`.




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_elem\_string ¶](#non_zero_append_elem_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L831)

```
non_zero_append_elem_string :: proc(array: ^$T/[dynamic]$E/u8, arg: $A/string, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`non_zero_append_elem_string` appends a string to the end of a dynamic array of bytes, without zeroing any reserved memory

Note: Prefer using the procedure group `non_zero_append`.




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_elems ¶](#non_zero_append_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L805)

```
non_zero_append_elems :: proc(array: ^$T/[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

 

`non_zero_append_elems` appends `args` to the end of a dynamic array, without zeroing any reserved memory

Note: Prefer using the procedure group `non\_zero\_append




##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_soa\_elem ¶](#non_zero_append_soa_elem) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L380)

```
non_zero_append_soa_elem :: proc(array: ^$T/#soa[dynamic]$E, #no_broadcast arg: $E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_append\_soa\_elems ¶](#non_zero_append_soa_elems) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L437)

```
non_zero_append_soa_elems :: proc(array: ^$T/#soa[dynamic]$E, .. #no_broadcast args: ..$E, loc := #caller_location) -> (n: int, err: Allocator_Error) #optional_ok {…}
```

##### Related Procedure Groups

* [non\_zero\_append](/base/runtime/#non_zero_append)

### [non\_zero\_mem\_resize ¶](#non_zero_mem_resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L220)

```
non_zero_mem_resize :: proc(
	ptr:       rawptr, 
	old_size:  int, 
	new_size:  int, 
	alignment: int = DEFAULT_ALIGNMENT, 
	allocator := context.allocator, 
	loc := #caller_location, 
) -> (data: []u8, err: Allocator_Error) {…}
```

### [non\_zero\_reserve\_dynamic\_array ¶](#non_zero_reserve_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1330)

```
non_zero_reserve_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`non_zero_reserve_dynamic_array` will try to reserve memory of a passed dynamic array or map to the requested element count (setting the `cap`).

When a memory resize allocation is required, the memory will be asked to not be zeroed (i.e. it calls `non_zero_mem_resize`).

Note: Prefer the procedure group `non_zero_reserve`.




##### Related Procedure Groups

* [non\_zero\_reserve](/base/runtime/#non_zero_reserve)

### [non\_zero\_reserve\_soa ¶](#non_zero_reserve_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L227)

```
non_zero_reserve_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [non\_zero\_reserve](/base/runtime/#non_zero_reserve)

### [non\_zero\_resize\_dynamic\_array ¶](#non_zero_resize_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1391)

```
non_zero_resize_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`non_zero_resize_dynamic_array` will try to resize memory of a passed dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

When a memory resize allocation is required, the memory will be asked to not be zeroed (i.e. it calls `non_zero_mem_resize`).

Note: Prefer the procedure group `non_zero_resize`




##### Related Procedure Groups

* [non\_zero\_resize](/base/runtime/#non_zero_resize)

### [non\_zero\_resize\_fixed\_capacity\_dynamic\_array ¶](#non_zero_resize_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1422)

```
non_zero_resize_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int length: int) -> bool {…}
```

 

`non_zero_resize_fixed_capacity_dynamic_array` will try to resize memory of a passed fixed capacity dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

Note: Prefer the procedure group `resize`




##### Related Procedure Groups

* [non\_zero\_resize](/base/runtime/#non_zero_resize)

### [non\_zero\_resize\_soa ¶](#non_zero_resize_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L211)

```
non_zero_resize_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [non\_zero\_resize](/base/runtime/#non_zero_resize)

### [ordered\_remove\_dynamic\_array ¶](#ordered_remove_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L143)

```
ordered_remove_dynamic_array :: proc(array: ^$D/[dynamic]$T, #any_int index: int, loc := #caller_location) {…}
```

 

`ordered_remove_dynamic_array` removed the element at the specified `index` whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the elements do not have to remain in their order, prefer `unordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [ordered\_remove](/base/runtime/#ordered_remove)

### [ordered\_remove\_fixed\_capacity\_dynamic\_array ¶](#ordered_remove_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L188)

```
ordered_remove_fixed_capacity_dynamic_array :: proc(array: ^$D/[dynamic; $N]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`ordered_remove_fixed_capacity_dynamic_array` removed the element at the specified `index` whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the elements do not have to remain in their order, prefer `unordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [ordered\_remove](/base/runtime/#ordered_remove)

### [ordered\_remove\_soa ¶](#ordered_remove_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L718)

```
ordered_remove_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`ordered_remove_soa` removed the element at the specified `index` whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If you the elements do not have to remain in their order, prefer `unordered_remove_soa`.
Note: If the index is out of bounds, this procedure will panic.

### [panic ¶](#panic) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1575)

```
panic :: proc(message: string, loc := #caller_location) -> ! {…}
```

 

Panics the program with a message.
This uses the `context.assertion_failure_procedure` to panic.

### [panic\_allocator ¶](#panic_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_allocators_nil.odin#L88)

```
panic_allocator :: proc() -> Allocator {…}
```

 

panic\_allocator returns an allocator which will panic for any non-zero-sized allocation or `query_info`

This is extremely useful for to check when something does a memory operation when it should not, and thus panic.

### [panic\_allocator\_proc ¶](#panic_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_allocators_nil.odin#L43)

```
panic_allocator_proc :: proc(
	allocator_data:  rawptr, 
	mode:            Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	loc := #caller_location, 
) -> ([]u8, Allocator_Error) {…}
```

### [panic\_contextless ¶](#panic_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1630)

```
panic_contextless :: proc "contextless" (message: string, loc := #caller_location) -> ! {…}
```

 

Panics the program with a message to indicate something has yet to be implemented.
This uses the `default_assertion_contextless_failure_proc` to assert.

### [pop\_dynamic\_array ¶](#pop_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L237)

```
pop_dynamic_array :: proc(array: ^$T/[dynamic]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_dynamic_array` will remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array has no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop](/base/runtime/#pop)

### [pop\_fixed\_capacity\_dynamic\_array ¶](#pop_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L254)

```
pop_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_fixed_capacity_dynamic_array` will remove and return the end value of fixed capacity dynamic array `array` and reduces the length of `array` by 1.

Note: If the fixed capacity dynamic array has no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop](/base/runtime/#pop)

### [pop\_front\_dynamic\_array ¶](#pop_front_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L311)

```
pop_front_dynamic_array :: proc(array: ^$T/[dynamic]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_front_dynamic_array` will remove and return the first value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array as no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop\_front](/base/runtime/#pop_front)

### [pop\_front\_fixed\_capacity\_dynamic\_array ¶](#pop_front_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L325)

```
pop_front_fixed_capacity_dynamic_array :: proc(array: ^$T/[dynamic; $N]$E, loc := #caller_location) -> (res: $$deferred_return) {…}
```

 

`pop_front_fixed_capacity_dynamic_array` will remove and return the first value of fixed capacity dynamic array `array` and reduces the length of `array` by 1.

Note: If the fixed capacity dynamic array as no elements (`len(array) == 0`), this procedure will panic.




##### Related Procedure Groups

* [pop\_front](/base/runtime/#pop_front)

### [pop\_front\_safe\_dynamic\_array ¶](#pop_front_safe_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L349)

```
pop_front_safe_dynamic_array :: proc "contextless" (array: ^$T/[dynamic]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_front_safe_dynamic_array` trys to return and remove the first value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_front\_safe](/base/runtime/#pop_front_safe)

### [pop\_front\_safe\_fixed\_capacity\_dynamic\_array ¶](#pop_front_safe_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L364)

```
pop_front_safe_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_front_safe_fixed_capacity_dynamic_array` trys to return and remove the first value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_front\_safe](/base/runtime/#pop_front_safe)

### [pop\_safe\_dynamic\_array ¶](#pop_safe_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L277)

```
pop_safe_dynamic_array :: proc "contextless" (array: ^$T/[dynamic]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_safe_dynamic_array` trys to remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_safe](/base/runtime/#pop_safe)

### [pop\_safe\_fixed\_capacity\_dynamic\_array ¶](#pop_safe_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L289)

```
pop_safe_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E) -> (res: $$deferred_return, ok: bool) {…}
```

 

`pop_safe_fixed_capacity_dynamic_array` trys to remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.




##### Related Procedure Groups

* [pop\_safe](/base/runtime/#pop_safe)

### [print\_any\_single ¶](#print_any_single) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L9)

```
print_any_single :: proc "contextless" (arg: any) {…}
```

### [print\_byte ¶](#print_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L141)

```
print_byte :: proc "contextless" (b: u8) -> (n: int) {…}
```

### [print\_caller\_location ¶](#print_caller_location) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L225)

```
print_caller_location :: proc "contextless" (loc: Source_Code_Location) {…}
```

### [print\_encoded\_rune ¶](#print_encoded_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L146)

```
print_encoded_rune :: proc "contextless" (r: rune) {…}
```

### [print\_i64 ¶](#print_i64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L202)

```
print_i64 :: proc "contextless" (x: i64) {…}
```

### [print\_int ¶](#print_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L223)

```
print_int :: proc "contextless" (x: int) {…}
```

### [print\_rune ¶](#print_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L173)

```
print_rune :: proc "contextless" (r: rune) -> int {…}
```

### [print\_string ¶](#print_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L125)

```
print_string :: proc "contextless" (str: string) -> (n: int) {…}
```

### [print\_strings ¶](#print_strings) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L130)

```
print_strings :: proc "contextless" (.. args: ..string) -> (n: int) {…}
```

### [print\_type ¶](#print_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L265)

```
print_type :: proc "contextless" (ti: ^Type_Info) {…}
```

### [print\_typeid ¶](#print_typeid) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L247)

```
print_typeid :: proc "contextless" (id: typeid) {…}
```

### [print\_u64 ¶](#print_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L186)

```
print_u64 :: proc "contextless" (x: u64) {…}
```

### [print\_uint ¶](#print_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L221)

```
print_uint :: proc "contextless" (x: uint) {…}
```

### [print\_uintptr ¶](#print_uintptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L222)

```
print_uintptr :: proc "contextless" (x: uintptr) {…}
```

### [println\_any ¶](#println_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L75)

```
println_any :: proc "contextless" (.. args: ..any) {…}
```

### [quaternion128\_eq ¶](#quaternion128_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L704)

```
quaternion128_eq :: proc "contextless" (a, b: quaternion128) -> bool {…}
```

### [quaternion128\_ne ¶](#quaternion128_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L705)

```
quaternion128_ne :: proc "contextless" (a, b: quaternion128) -> bool {…}
```

### [quaternion256\_eq ¶](#quaternion256_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L707)

```
quaternion256_eq :: proc "contextless" (a, b: quaternion256) -> bool {…}
```

### [quaternion256\_ne ¶](#quaternion256_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L708)

```
quaternion256_ne :: proc "contextless" (a, b: quaternion256) -> bool {…}
```

### [quaternion64\_eq ¶](#quaternion64_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L701)

```
quaternion64_eq :: proc "contextless" (a, b: quaternion64) -> bool {…}
```

### [quaternion64\_ne ¶](#quaternion64_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L702)

```
quaternion64_ne :: proc "contextless" (a, b: quaternion64) -> bool {…}
```

### [quo\_complex128 ¶](#quo_complex128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L974)

```
quo_complex128 :: proc "contextless" (n, m: complex128) -> complex128 {…}
```

### [quo\_complex32 ¶](#quo_complex32) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L934)

```
quo_complex32 :: proc "contextless" (n, m: complex32) -> complex32 {…}
```

### [quo\_complex64 ¶](#quo_complex64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L956)

```
quo_complex64 :: proc "contextless" (n, m: complex64) -> complex64 {…}
```

### [quo\_quaternion128 ¶](#quo_quaternion128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1042)

```
quo_quaternion128 :: proc "contextless" (q, r: quaternion128) -> quaternion128 {…}
```

### [quo\_quaternion256 ¶](#quo_quaternion256) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1056)

```
quo_quaternion256 :: proc "contextless" (q, r: quaternion256) -> quaternion256 {…}
```

### [quo\_quaternion64 ¶](#quo_quaternion64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1028)

```
quo_quaternion64 :: proc "contextless" (q, r: quaternion64) -> quaternion64 {…}
```

### [rand\_bytes ¶](#rand_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/os_specific.odin#L11)

```
rand_bytes :: proc "contextless" (dst: []u8) {…}
```

### [random\_generator\_query\_info ¶](#random_generator_query_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator.odin#L24)

```
random_generator_query_info :: proc(rg: Random_Generator) -> (info: Random_Generator_Query_Info) {…}
```

### [random\_generator\_read\_bytes ¶](#random_generator_read_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator.odin#L6)

```
random_generator_read_bytes :: proc(rg: Random_Generator, p: []u8) -> bool {…}
```

### [random\_generator\_read\_ptr ¶](#random_generator_read_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator.odin#L15)

```
random_generator_read_ptr :: proc(rg: Random_Generator, p: rawptr, len: uint) -> bool {…}
```

### [random\_generator\_reset\_bytes ¶](#random_generator_reset_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator.odin#L32)

```
random_generator_reset_bytes :: proc(rg: Random_Generator, p: []u8) {…}
```

### [random\_generator\_reset\_u64 ¶](#random_generator_reset_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator.odin#L38)

```
random_generator_reset_u64 :: proc(rg: Random_Generator, p: u64) {…}
```

### [raw\_soa\_footer\_dynamic\_array ¶](#raw_soa_footer_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L63)

```
raw_soa_footer_dynamic_array :: proc(array: ^$T/#soa[dynamic]$E) -> (footer: ^Raw_SOA_Footer_Dynamic_Array) {…}
```

##### Related Procedure Groups

* [raw\_soa\_footer](/base/runtime/#raw_soa_footer)

### [raw\_soa\_footer\_slice ¶](#raw_soa_footer_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L54)

```
raw_soa_footer_slice :: proc(array: ^$T/#soa[]$E) -> (footer: ^Raw_SOA_Footer_Slice) {…}
```

##### Related Procedure Groups

* [raw\_soa\_footer](/base/runtime/#raw_soa_footer)

### [read\_cycle\_counter ¶](#read_cycle_counter)

```
read_cycle_counter :: intrinsics.read_cycle_counter  
read_cycle_counter :: proc() -> i64 {…}
```

 

This provides access to the cycle counter register (or similar low latency, high accuracy clocks) on the targets that support it. On i386/amd64, it should map to the `rdtsc` instruction. On arm64, it should map to the `cntvct_el0` instruction.

### [remove\_range\_dynamic\_array ¶](#remove_range_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L156)

```
remove_range_dynamic_array :: proc(array: ^$D/[dynamic]$T, #any_int lo, #any_int hi: int, loc := #caller_location) {…}
```

 

`remove_range_dynamic_array` removes a range of elements specified by the range `lo` and `hi`, whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the range is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [remove\_range](/base/runtime/#remove_range)

### [remove\_range\_fixed\_capacity\_dynamic\_array ¶](#remove_range_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L201)

```
remove_range_fixed_capacity_dynamic_array :: proc(array: ^$D/[dynamic; $N]$E, #any_int lo, #any_int hi: int, loc := #caller_location) {…}
```

 

`remove_range_fixed_capacity_dynamic_array` removes a range of elements specified by the range `lo` and `hi`, whilst keeping the order of the other elements.

Note: This is an O(N) operation.
Note: If the range is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [remove\_range](/base/runtime/#remove_range)

### [reserve\_dynamic\_array ¶](#reserve_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1320)

```
reserve_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`reserve_dynamic_array` will try to reserve memory of a passed dynamic array or map to the requested element count (setting the `cap`).

When a memory resize allocation is required, the memory will be asked to be zeroed (i.e. it calls `mem_resize`).

Note: Prefer the procedure group `reserve`.




##### Related Procedure Groups

* [reserve](/base/runtime/#reserve)

### [reserve\_map ¶](#reserve_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L679)

```
reserve_map :: proc(m: ^$T/map[$K]$V, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`reserve_map` will try to reserve memory of a passed map to the requested element count (setting the `cap`).

Note: Prefer the procedure group `reserve`




##### Related Procedure Groups

* [reserve](/base/runtime/#reserve)

### [reserve\_soa ¶](#reserve_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L222)

```
reserve_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int capacity: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [reserve](/base/runtime/#reserve)

### [resize\_dynamic\_array ¶](#resize_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1381)

```
resize_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

 

`resize_dynamic_array` will try to resize memory of a passed dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

When a memory resize allocation is required, the memory will be asked to be zeroed (i.e. it calls `mem_resize`).

Note: Prefer the procedure group `resize`




##### Related Procedure Groups

* [resize](/base/runtime/#resize)

### [resize\_fixed\_capacity\_dynamic\_array ¶](#resize_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1401)

```
resize_fixed_capacity_dynamic_array :: proc "contextless" (array: ^$T/[dynamic; $N]$E, #any_int length: int) -> bool {…}
```

 

`resize_fixed_capacity_dynamic_array` will try to resize memory of a passed fixed capacity dynamic array or map to the requested element count (setting the `len`, and possibly `cap`).

Note: Prefer the procedure group `resize`




##### Related Procedure Groups

* [resize](/base/runtime/#resize)

### [resize\_soa ¶](#resize_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L177)

```
resize_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int length: int, loc := #caller_location) -> Allocator_Error {…}
```

##### Related Procedure Groups

* [resize](/base/runtime/#resize)

### [run\_thread\_local\_cleaners ¶](#run_thread_local_cleaners) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/thread_management.odin#L31)

```
run_thread_local_cleaners :: proc() {…}
```

 

Run all of the thread-local cleaner procedures.

Intended to be called by the internals of a threading API at the end of a
thread's lifetime.

### [shrink\_dynamic\_array ¶](#shrink_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1442)

```
shrink_dynamic_array :: proc(array: ^$T/[dynamic]$E, #any_int new_cap: int = -1, loc := #caller_location) -> (did_shrink: bool, err: Allocator_Error) {…}
```

 

Shrinks the capacity of a dynamic array down to the current length, or the given capacity.

If `new_cap` is negative, then `len(array)` is used.

Returns false if `cap(array) < new_cap`, or the allocator report failure.

If `len(array) < new_cap`, then `len(array)` will be left unchanged.

Note: Prefer the procedure group `shrink`




##### Related Procedure Groups

* [shrink](/base/runtime/#shrink)

### [shrink\_map ¶](#shrink_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L687)

```
shrink_map :: proc(m: ^$T/map[$K]$V, loc := #caller_location) -> (did_shrink: bool, err: Allocator_Error) {…}
```

 

Shrinks the capacity of a map down to the current length.

Note: Prefer the procedure group `shrink`




##### Related Procedure Groups

* [shrink](/base/runtime/#shrink)

### [slice\_expr\_error\_hi ¶](#slice_expr_error_hi) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L78)

```
slice_expr_error_hi :: proc "contextless" (file: string, line, column: i32, hi: int, len: int) {…}
```

### [slice\_expr\_error\_hi\_loc ¶](#slice_expr_error_hi_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L400)

```
slice_expr_error_hi_loc :: proc "contextless" (loc := #caller_location, hi: int, len: int) {…}
```

### [slice\_expr\_error\_lo\_hi ¶](#slice_expr_error_lo_hi) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L86)

```
slice_expr_error_lo_hi :: proc "contextless" (
	file:         string, 
	line, column: i32, 
	lo, hi:       int, 
	len:          int, 
) {…}
```

### [slice\_expr\_error\_lo\_hi\_loc ¶](#slice_expr_error_lo_hi_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L405)

```
slice_expr_error_lo_hi_loc :: proc "contextless" (loc := #caller_location, lo, hi: int, len: int) {…}
```

### [slice\_handle\_error ¶](#slice_handle_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L45)

```
slice_handle_error :: proc "contextless" (
	file:         string, 
	line, column: i32, 
	lo, hi:       int, 
	len:          int, 
) {…}
```

### [stderr\_write ¶](#stderr_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/os_specific.odin#L7)

```
stderr_write :: proc "contextless" (data: []u8) -> (int, _OS_Errno) {…}
```

### [string16\_cmp ¶](#string16_cmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L547)

```
string16_cmp :: proc "contextless" (a, b: string16) -> int {…}
```

### [string16\_decode\_last\_rune ¶](#string16_decode_last_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L854)

```
string16_decode_last_rune :: proc "contextless" (s: string16) -> (rune, int) {…}
```

### [string16\_decode\_rune ¶](#string16_decode_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L826)

```
string16_decode_rune :: proc "contextless" (s: string16) -> (rune, int) {…}
```

### [string16\_eq ¶](#string16_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L538)

```
string16_eq :: proc "contextless" (lhs, rhs: string16) -> bool {…}
```

### [string16\_ge ¶](#string16_ge) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L568)

```
string16_ge :: proc "contextless" (a, b: string16) -> bool {…}
```

### [string16\_gt ¶](#string16_gt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L566)

```
string16_gt :: proc "contextless" (a, b: string16) -> bool {…}
```

### [string16\_le ¶](#string16_le) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L567)

```
string16_le :: proc "contextless" (a, b: string16) -> bool {…}
```

### [string16\_lt ¶](#string16_lt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L565)

```
string16_lt :: proc "contextless" (a, b: string16) -> bool {…}
```

### [string16\_ne ¶](#string16_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L564)

```
string16_ne :: proc "contextless" (a, b: string16) -> bool {…}
```

### [string\_cmp ¶](#string_cmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L526)

```
string_cmp :: proc "contextless" (a, b: string) -> int {…}
```

### [string\_decode\_last\_rune ¶](#string_decode_last_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L790)

```
string_decode_last_rune :: proc "contextless" (s: string) -> (rune, int) {…}
```

### [string\_decode\_rune ¶](#string_decode_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L711)

```
string_decode_rune :: proc "contextless" (s: string) -> (rune, int) {…}
```

### [string\_eq ¶](#string_eq) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L517)

```
string_eq :: proc "contextless" (lhs, rhs: string) -> bool {…}
```

### [string\_ge ¶](#string_ge) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L562)

```
string_ge :: proc "contextless" (a, b: string) -> bool {…}
```

### [string\_gt ¶](#string_gt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L560)

```
string_gt :: proc "contextless" (a, b: string) -> bool {…}
```

### [string\_le ¶](#string_le) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L561)

```
string_le :: proc "contextless" (a, b: string) -> bool {…}
```

### [string\_lt ¶](#string_lt) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L559)

```
string_lt :: proc "contextless" (a, b: string) -> bool {…}
```

### [string\_ne ¶](#string_ne) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L558)

```
string_ne :: proc "contextless" (a, b: string) -> bool {…}
```

### [trap ¶](#trap)

```
trap :: intrinsics.trap  
trap :: proc() -> ! {…}
```

 

Lowered to a target dependent trap instruction.

### [truncdfhf2 ¶](#truncdfhf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1133)

```
truncdfhf2 :: proc "c" (value: f64) -> u16 {…}
```

### [truncsfhf2 ¶](#truncsfhf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1071)

```
truncsfhf2 :: proc "c" (value: f32) -> u16 {…}
```

### [type\_assertion\_check2\_contextless ¶](#type_assertion_check2_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L314)

```
type_assertion_check2_contextless :: proc "contextless" (
	ok:           bool, 
	file:         string, 
	line, column: i32, 
	from, to:     typeid, 
	from_data:    rawptr, 
) {…}
```

### [type\_assertion\_check2\_with\_context ¶](#type_assertion_check2_with_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L280)

```
type_assertion_check2_with_context :: proc(
	ok:           bool, 
	file:         string, 
	line, column: i32, 
	from, to:     typeid, 
	from_data:    rawptr, 
) {…}
```

### [type\_assertion\_check\_contextless ¶](#type_assertion_check_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L227)

```
type_assertion_check_contextless :: proc "contextless" (
	ok:           bool, 
	file:         string, 
	line, column: i32, 
	from, 
	to:           typeid, 
) {…}
```

### [type\_assertion\_check\_with\_context ¶](#type_assertion_check_with_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L200)

```
type_assertion_check_with_context :: proc(
	ok:           bool, 
	file:         string, 
	line, column: i32, 
	from, 
	to:           typeid, 
) {…}
```

### [type\_assertion\_trap\_contextless ¶](#type_assertion_trap_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin#L15)

```
type_assertion_trap_contextless :: proc "contextless" () {…}
```

### [type\_info\_base ¶](#type_info_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L661)

```
type_info_base :: proc "contextless" (info: ^Type_Info) -> ^Type_Info {…}
```

 

type\_info\_base returns the base-type of a `^Type_Info` stripping the `distinct`ness from the first level

### [type\_info\_base\_without\_enum ¶](#type_info_base_without_enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L680)

```
type_info_base_without_enum :: type_info_core
```

 

type\_info\_core returns the core-type of a `^Type_Info` stripping the `distinct`ness from the first level AND/OR
returns the backing integer type of an enum `^Type_Info`.
This is also aliased as `type_info_base_without_enum`

### [type\_info\_core ¶](#type_info_core) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L680)

```
type_info_core :: proc "contextless" (info: ^Type_Info) -> ^Type_Info {…}
```

 

type\_info\_core returns the core-type of a `^Type_Info` stripping the `distinct`ness from the first level AND/OR
returns the backing integer type of an enum `^Type_Info`.
This is also aliased as `type_info_base_without_enum`

### [type\_info\_underlying ¶](#type_info_underlying) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L702)

```
type_info_underlying :: proc "contextless" (info: ^Type_Info) -> ^Type_Info {…}
```

 

type\_info\_underlying returns the underlying (backing) type of a `^Type_Info` stripping the `distinct`ness from the first level AND/OR
returns the backing integer type of an enum `^Type_Info` AND/OR the underlying integer type of a bit\_set or bit\_field.

### [typeid\_base ¶](#typeid_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L742)

```
typeid_base :: proc "contextless" (id: typeid) -> typeid {…}
```

 

typeid\_base returns the base-type of a `typeid` stripping the `distinct`ness from the first level

### [typeid\_base\_without\_enum ¶](#typeid_base_without_enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L751)

```
typeid_base_without_enum :: typeid_core
```

 

typeid\_core returns the core-type of a `typeid` stripping the `distinct`ness from the first level AND/OR
returns the backing integer type of an enum `typeid`.
This is also aliased as `typeid_base_without_enum`

### [typeid\_core ¶](#typeid_core) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L751)

```
typeid_core :: proc "contextless" (id: typeid) -> typeid {…}
```

 

typeid\_core returns the core-type of a `typeid` stripping the `distinct`ness from the first level AND/OR
returns the backing integer type of an enum `typeid`.
This is also aliased as `typeid_base_without_enum`

### [typeid\_underlying ¶](#typeid_underlying) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin#L762)

```
typeid_underlying :: proc "contextless" (id: typeid) -> typeid {…}
```

### [udivmod128 ¶](#udivmod128) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/udivmod128.odin#L5)

```
udivmod128 :: proc "c" (a, b: u128, rem: ^u128) -> u128 {…}
```

### [udivmodti4 ¶](#udivmodti4) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1280)

```
udivmodti4 :: proc "c" (a, b: u128, rem: ^u128) -> u128 {…}
```

### [udivti3 ¶](#udivti3) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs_wasm.odin#L73)

```
udivti3 :: proc "c" (la, ha, lb, hb: u64) -> u128 {…}
```

### [umodti3 ¶](#umodti3) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L1272)

```
umodti3 :: proc "c" (a, b: u128) -> u128 {…}
```

### [unimplemented ¶](#unimplemented) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1586)

```
unimplemented :: proc(message: string = "", loc := #caller_location) -> ! {…}
```

 

Panics the program with a message to indicate something has yet to be implemented.
This uses the `context.assertion_failure_procedure` to assert.

### [unimplemented\_contextless ¶](#unimplemented_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1637)

```
unimplemented_contextless :: proc "contextless" (message: string = "", loc := #caller_location) -> ! {…}
```

 

Panics the program with a message.
This uses the `default_assertion_contextless_failure_proc` to assert.

### [unordered\_remove\_dynamic\_array ¶](#unordered_remove_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L129)

```
unordered_remove_dynamic_array :: proc(array: ^$D/[dynamic]$T, #any_int index: int, loc := #caller_location) {…}
```

 

`unordered_remove_dynamic_array` removed the element at the specified `index`. It does so by replacing the current end value
with the old value, and reducing the length of the dynamic array by 1.

Note: This is an O(1) operation.
Note: If you want the elements to remain in their order, use `ordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [unordered\_remove](/base/runtime/#unordered_remove)

### [unordered\_remove\_fixed\_capacity\_dynamic\_array ¶](#unordered_remove_fixed_capacity_dynamic_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L174)

```
unordered_remove_fixed_capacity_dynamic_array :: proc(array: ^$D/[dynamic; $N]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`unordered_remove_fixed_capacity_dynamic_array` removed the element at the specified `index`. It does so by replacing the current end value
with the old value, and reducing the length of the dynamic array by 1.

Note: This is an O(1) operation.
Note: If you want the elements to remain in their order, use `ordered_remove`.
Note: If the index is out of bounds, this procedure will panic.




##### Related Procedure Groups

* [unordered\_remove](/base/runtime/#unordered_remove)

### [unordered\_remove\_soa ¶](#unordered_remove_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L690)

```
unordered_remove_soa :: proc(array: ^$T/#soa[dynamic]$E, #any_int index: int, loc := #caller_location) {…}
```

 

`unordered_remove_soa` removed the element at the specified `index`. It does so by replacing the current end value
with the old value, and reducing the length of the dynamic array by 1.

Note: This is an O(1) operation.
Note: If you the elements to remain in their order, use `ordered_remove_soa`.
Note: If the index is out of bounds, this procedure will panic.

### [wasm\_allocator ¶](#wasm_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L98)

```
wasm_allocator :: proc(a: ^WASM_Allocator) -> Allocator {…}
```

### [wasm\_allocator\_free\_space ¶](#wasm_allocator_free_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L195)

```
wasm_allocator_free_space :: proc(a: ^WASM_Allocator = nil) -> (free: uint) {…}
```

 

Returns the amount of free memory on the allocator.
If `nil` is given, the global allocator is used.

### [wasm\_allocator\_init ¶](#wasm_allocator_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L74)

```
wasm_allocator_init :: proc(a: ^WASM_Allocator, alignment: uint = 8) {…}
```

 

Not required to be called, called on first allocation otherwise.

### [wasm\_allocator\_proc ¶](#wasm_allocator_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L105)

```
wasm_allocator_proc :: proc(
	a:               rawptr, 
	mode:            Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	loc := #caller_location, 
) -> ([]u8, Allocator_Error) {…}
```

### [wasm\_allocator\_size ¶](#wasm_allocator_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin#L173)

```
wasm_allocator_size :: proc(a: ^WASM_Allocator = nil) -> (size: uint) {…}
```

 

Returns the allocated size of the allocator (both free and used).
If `nil` is given, the global allocator is used.

### [write\_byte ¶](#write_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L539)

```
write_byte :: proc "contextless" (i: ^int, dst: []u8, src: u8) -> bool {…}
```

### [write\_caller\_location ¶](#write_caller_location) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L593)

```
write_caller_location :: proc "contextless" (i: ^int, buf: []u8, loc: Source_Code_Location) -> bool {…}
```

### [write\_encoded\_rune ¶](#write_encoded_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L655)

```
write_encoded_rune :: proc "contextless" (i: ^int, buf: []u8, r: rune) -> bool {…}
```

### [write\_i64 ¶](#write_i64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L569)

```
write_i64 :: proc "contextless" (j: ^int, dst: []u8, x: i64) -> bool {…}
```

### [write\_rune ¶](#write_rune) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L640)

```
write_rune :: proc "contextless" (i: ^int, buf: []u8, r: rune) -> (written: int, ok: bool) {…}
```

### [write\_string ¶](#write_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L529)

```
write_string :: proc "contextless" (i: ^int, dst: []u8, src: string) -> bool {…}
```

### [write\_typeid ¶](#write_typeid) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L620)

```
write_typeid :: proc "contextless" (i: ^int, buf: []u8, id: typeid) -> bool {…}
```

### [write\_u64 ¶](#write_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L550)

```
write_u64 :: proc "contextless" (j: ^int, dst: []u8, x: u64) -> bool {…}
```

### [write\_write\_type ¶](#write_write_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin#L685)

```
write_write_type :: proc "contextless" (i: ^int, buf: []u8, ti: ^Type_Info) -> bool {…}
```

## Procedure Groups

### [align\_forward ¶](#align_forward) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L55)

```
align_forward :: proc{
	align_forward_int,
	align_forward_uint,
	align_forward_uintptr,
}
```

### [append ¶](#append) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L914)

```
append :: proc{
	append_elem,
	append_elems,
	append_elem_string,
	append_fixed_capacity_elem,
	append_fixed_capacity_elems,
	append_fixed_capacity_string,
	append_soa_elem,
	append_soa_elems,
}
```

 

The append built-in procedure appends elements to the end of a dynamic array

### [append\_nothing ¶](#append_nothing) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L970)

```
append_nothing :: proc{
	append_nothing_dynamic_array,
	append_nothing_fixed_capacity_dynamic_array,
}
```

 

`append_nothing` appends an empty value to a dynamic array. It returns `1, nil` if successful, and `0, err` when it was not possible,
whatever `err` happens to be.

### [append\_soa ¶](#append_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L498)

```
append_soa :: proc{
	append_soa_elem,
	append_soa_elems,
}
```

 

The append\_soa built-in procedure appends elements to the end of an #soa dynamic array

### [assign\_at ¶](#assign_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1244)

```
assign_at :: proc{
	assign_at_elem,
	assign_at_elems,
	assign_at_elem_string,
	assign_at_elem_fixed_capacity_dynamic_array,
	assign_at_elems_fixed_capacity_dynamic_array,
	assign_at_elem_string_fixed_capacity_dynamic_array,
}
```

 

`assign_at` assigns a value at a given index. If the requested index is past the end of the current
size of the dynamic array, it will attempt to `resize` the a new length of `index+size_needed` and then assign as `index`.

### [clear ¶](#clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L388)

```
clear :: proc{
	clear_dynamic_array,
	clear_map,
	clear_fixed_capacity_dynamic_array,
	clear_soa_dynamic_array,
}
```

 

`clear` will set the length of a passed dynamic array or map to `0`

### [clear\_soa ¶](#clear_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L658)

```
clear_soa :: proc{
	clear_soa_dynamic_array,
}
```

### [copy ¶](#copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L118)

```
copy :: proc{
	copy_slice,
	copy_from_string,
	copy_from_string16,
}
```

 

`copy` is a built-in procedure that copies elements from a source slice/string `src` to a destination slice `dst`.
The source and destination may overlap. Copy returns the number of elements copied, which will be the minimum
of len(src) and len(dst).

### [delete ¶](#delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L496)

```
delete :: proc{
	delete_string,
	delete_cstring,
	delete_dynamic_array,
	delete_slice,
	delete_map,
	delete_soa_slice,
	delete_soa_dynamic_array,
	delete_string16,
	delete_cstring16,
}
```

 

`delete` will try to free the underlying data of the passed built-in data structure (string, cstring, dynamic array, slice, or map), with the given `allocator` if the allocator supports this operation.

Note: Prefer `delete` over the specific `delete_*` procedures where possible.

### [delete\_soa ¶](#delete_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L643)

```
delete_soa :: proc{
	delete_soa_slice,
	delete_soa_dynamic_array,
}
```

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L438)

```
free :: proc{
	mem_free,
}
```

 

`free` will try to free the passed pointer, with the given `allocator` if the allocator supports this operation.

### [free\_all ¶](#free_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L442)

```
free_all :: proc{
	mem_free_all,
}
```

 

`free_all` will try to free/reset all of the memory of the given `allocator` if the allocator supports this operation.

### [inject\_at ¶](#inject_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L1123)

```
inject_at :: proc{
	inject_at_elem,
	inject_at_elems,
	inject_at_elem_string,
	inject_at_elem_fixed_capacity_dynamic_array,
	inject_at_elems_fixed_capacity_dynamic_array,
	inject_at_elem_string_fixed_capacity_dynamic_array,
}
```

 

`inject_at` injects something into a dynamic array at a specified index and moves the previous elements after that index "across"

### [inject\_at\_soa ¶](#inject_at_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L616)

```
inject_at_soa :: proc{
	inject_at_elem_soa,
	inject_at_elems_soa,
}
```

 

`inject_at_soa` injects something into a dynamic SOA array at a specified index and moves the previous elements after that index "across"

### [is\_power\_of\_two ¶](#is_power_of_two) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin#L82)

```
is_power_of_two :: proc{
	is_power_of_two_int,
	is_power_of_two_uint,
	is_power_of_two_uintptr,
}
```

### [make ¶](#make) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L647)

```
make :: proc{
	make_slice,
	make_dynamic_array,
	make_dynamic_array_len,
	make_dynamic_array_len_cap,
	make_map,
	make_map_cap,
	make_multi_pointer,
	make_soa_slice,
	make_soa_dynamic_array,
	make_soa_dynamic_array_len,
	make_soa_dynamic_array_len_cap,
}
```

 

`make` built-in procedure allocates and initializes a value of type slice, dynamic array, map, or multi-pointer (only).

Similar to `new`, the first argument is a type, not a value. Unlike new, make's return type is the same as the
type of its argument, not a pointer to it.
Make uses the specified allocator, default is context.allocator.

### [make\_soa ¶](#make_soa) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L168)

```
make_soa :: proc{
	make_soa_slice,
	make_soa_dynamic_array,
	make_soa_dynamic_array_len,
	make_soa_dynamic_array_len_cap,
}
```

### [non\_zero\_append ¶](#non_zero_append) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L928)

```
non_zero_append :: proc{
	non_zero_append_elem,
	non_zero_append_elems,
	non_zero_append_elem_string,
	append_fixed_capacity_elem,
	append_fixed_capacity_elems,
	non_zero_append_elem_fixed_capacity_string,
	non_zero_append_soa_elem,
	non_zero_append_soa_elems,
}
```

### [non\_zero\_reserve ¶](#non_zero_reserve) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L406)

```
non_zero_reserve :: proc{
	non_zero_reserve_dynamic_array,
	non_zero_reserve_soa,
}
```

### [non\_zero\_resize ¶](#non_zero_resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L422)

```
non_zero_resize :: proc{
	non_zero_resize_dynamic_array,
	non_zero_resize_fixed_capacity_dynamic_array,
	non_zero_resize_soa,
}
```

### [ordered\_remove ¶](#ordered_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L220)

```
ordered_remove :: proc{
	ordered_remove_dynamic_array,
	ordered_remove_fixed_capacity_dynamic_array,
}
```

### [pop ¶](#pop) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L269)

```
pop :: proc{
	pop_dynamic_array,
	pop_fixed_capacity_dynamic_array,
}
```

 

`pop` will remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array has no elements (`len(array) == 0`), this procedure will panic.

### [pop\_front ¶](#pop_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L340)

```
pop_front :: proc{
	pop_front_dynamic_array,
	pop_front_fixed_capacity_dynamic_array,
}
```

 

`pop_front` will remove and return the first value of dynamic array `array` and reduces the length of `array` by 1.

Note: If the dynamic array as no elements (`len(array) == 0`), this procedure will panic.

### [pop\_front\_safe ¶](#pop_front_safe) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L379)

```
pop_front_safe :: proc{
	pop_front_safe_dynamic_array,
	pop_front_safe_fixed_capacity_dynamic_array,
}
```

 

`pop_front_safe` trys to return and remove the first value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.

### [pop\_safe ¶](#pop_safe) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L301)

```
pop_safe :: proc{
	pop_safe_dynamic_array,
	pop_safe_fixed_capacity_dynamic_array,
}
```

 

`pop_safe` trys to remove and return the end value of dynamic array `array` and reduces the length of `array` by 1.
If the operation is not possible, it will return false.

### [raw\_soa\_footer ¶](#raw_soa_footer) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin#L71)

```
raw_soa_footer :: proc{
	raw_soa_footer_slice,
	raw_soa_footer_dynamic_array,
}
```

### [remove\_range ¶](#remove_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L226)

```
remove_range :: proc{
	remove_range_dynamic_array,
	remove_range_fixed_capacity_dynamic_array,
}
```

### [reserve ¶](#reserve) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L398)

```
reserve :: proc{
	reserve_dynamic_array,
	reserve_map,
	reserve_soa,
}
```

 

`reserve` will try to reserve memory of a passed dynamic array or map to the requested element count (setting the `cap`).

### [resize ¶](#resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L414)

```
resize :: proc{
	resize_dynamic_array,
	resize_fixed_capacity_dynamic_array,
	resize_soa,
}
```

 

`resize` will try to resize memory of a passed dynamic array to the requested element count (setting the `len`, and possibly `cap`).

### [shrink ¶](#shrink) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L431)

```
shrink :: proc{
	shrink_dynamic_array,
	shrink_map,
}
```

 

Shrinks the capacity of a dynamic array or map down to the current length, or the given capacity.

### [unordered\_remove ¶](#unordered_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin#L213)

```
unordered_remove :: proc{
	unordered_remove_dynamic_array,
	unordered_remove_fixed_capacity_dynamic_array,
}
```

## `#config` values

### [DEFAULT\_TEMP\_ALLOCATOR\_BACKING\_SIZE ¶](#DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin#L3)

```
DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE: int : #config(DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE, 4 * Megabyte)
```

## Source Files

* [core.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/core.odin)
* [core\_builtin.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin.odin)
* [core\_builtin\_soa.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/core_builtin_soa.odin)
* [default\_allocators\_general.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_allocators_general.odin)
* [default\_allocators\_nil.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_allocators_nil.odin)
* [default\_temp\_allocator\_arena.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temp_allocator_arena.odin)
* [default\_temporary\_allocator.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/default_temporary_allocator.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/doc.odin)
* [dynamic\_array\_internal.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_array_internal.odin)
* [dynamic\_map\_internal.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/dynamic_map_internal.odin)
* [entry\_wasm.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/entry_wasm.odin)
* [error\_checks.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/error_checks.odin)
* [heap\_allocator.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/heap_allocator.odin)
* [heap\_allocator\_other.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/heap_allocator_other.odin)
* [internal.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/internal.odin)
* [os\_specific.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/os_specific.odin)
* [print.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/print.odin)
* [procs.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs.odin)
* [procs\_wasm.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/procs_wasm.odin)
* [random\_generator.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator.odin)
* [random\_generator\_chacha8.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator_chacha8.odin)
* [random\_generator\_chacha8\_ref.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator_chacha8_ref.odin)
* [random\_generator\_chacha8\_simd128.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/random_generator_chacha8_simd128.odin)
* [thread\_management.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/thread_management.odin)
* [udivmod128.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/udivmod128.odin)
* [wasm\_allocator.odin](https://github.com/odin-lang/Odin/tree/master/base/runtime/wasm_allocator.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:45.105268700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Allocator](#Allocator)
    + [Allocator\_Error](#Allocator_Error)
    + [Allocator\_Mode](#Allocator_Mode)
    + [Allocator\_Mode\_Set](#Allocator_Mode_Set)
    + [Allocator\_Proc](#Allocator_Proc)
    + [Allocator\_Query\_Info](#Allocator_Query_Info)
    + [Arena](#Arena)
    + [Arena\_Temp](#Arena_Temp)
    + [Assertion\_Failure\_Proc](#Assertion_Failure_Proc)
    + [Calling\_Convention](#Calling_Convention)
    + [Context](#Context)
    + [Default\_Random\_State](#Default_Random_State)
    + [Default\_Temp\_Allocator](#Default_Temp_Allocator)
    + [Equal\_Proc](#Equal_Proc)
    + [Hasher\_Proc](#Hasher_Proc)
    + [Load\_Directory\_File](#Load_Directory_File)
    + [Logger](#Logger)
    + [Logger\_Level](#Logger_Level)
    + [Logger\_Option](#Logger_Option)
    + [Logger\_Options](#Logger_Options)
    + [Logger\_Proc](#Logger_Proc)
    + [Map\_Cell](#Map_Cell)
    + [Map\_Cell\_Info](#Map_Cell_Info)
    + [Map\_Hash](#Map_Hash)
    + [Map\_Info](#Map_Info)
    + [Maybe](#Maybe)
    + [Memory\_Block](#Memory_Block)
    + [Objc\_Block](#Objc_Block)
    + [Odin\_Arch\_Type](#Odin_Arch_Type)
    + [Odin\_Arch\_Types](#Odin_Arch_Types)
    + [Odin\_Build\_Mode\_Type](#Odin_Build_Mode_Type)
    + [Odin\_Endian\_Type](#Odin_Endian_Type)
    + [Odin\_OS\_Type](#Odin_OS_Type)
    + [Odin\_OS\_Types](#Odin_OS_Types)
    + [Odin\_Optimization\_Mode](#Odin_Optimization_Mode)
    + [Odin\_Platform\_Subtarget\_Type](#Odin_Platform_Subtarget_Type)
    + [Odin\_Platform\_Subtarget\_Types](#Odin_Platform_Subtarget_Types)
    + [Odin\_Sanitizer\_Flags](#Odin_Sanitizer_Flags)
    + [Platform\_Endianness](#Platform_Endianness)
    + [Random\_Generator](#Random_Generator)
    + [Random\_Generator\_Mode](#Random_Generator_Mode)
    + [Random\_Generator\_Proc](#Random_Generator_Proc)
    + [Random\_Generator\_Query\_Info](#Random_Generator_Query_Info)
    + [Random\_Generator\_Query\_Info\_Flag](#Random_Generator_Query_Info_Flag)
    + [Raw\_Any](#Raw_Any)
    + [Raw\_Complex128](#Raw_Complex128)
    + [Raw\_Complex32](#Raw_Complex32)
    + [Raw\_Complex64](#Raw_Complex64)
    + [Raw\_Cstring](#Raw_Cstring)
    + [Raw\_Cstring16](#Raw_Cstring16)
    + [Raw\_Dynamic\_Array](#Raw_Dynamic_Array)
    + [Raw\_Fixed\_Capacity\_Dynamic\_Array](#Raw_Fixed_Capacity_Dynamic_Array)
    + [Raw\_Map](#Raw_Map)
    + [Raw\_Quaternion128](#Raw_Quaternion128)
    + [Raw\_Quaternion128\_Vector\_Scalar](#Raw_Quaternion128_Vector_Scalar)
    + [Raw\_Quaternion256](#Raw_Quaternion256)
    + [Raw\_Quaternion256\_Vector\_Scalar](#Raw_Quaternion256_Vector_Scalar)
    + [Raw\_Quaternion64](#Raw_Quaternion64)
    + [Raw\_Quaternion64\_Vector\_Scalar](#Raw_Quaternion64_Vector_Scalar)
    + [Raw\_SOA\_Footer\_Dynamic\_Array](#Raw_SOA_Footer_Dynamic_Array)
    + [Raw\_SOA\_Footer\_Slice](#Raw_SOA_Footer_Slice)
    + [Raw\_Slice](#Raw_Slice)
    + [Raw\_Soa\_Pointer](#Raw_Soa_Pointer)
    + [Raw\_String](#Raw_String)
    + [Raw\_String16](#Raw_String16)
    + [Source\_Code\_Location](#Source_Code_Location)
    + [Thread\_Local\_Cleaner](#Thread_Local_Cleaner)
    + [Thread\_Local\_Cleaner\_Contextless](#Thread_Local_Cleaner_Contextless)
    + [Thread\_Local\_Cleaner\_Odin](#Thread_Local_Cleaner_Odin)
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
    + [Type\_Info\_Flag](#Type_Info_Flag)
    + [Type\_Info\_Flags](#Type_Info_Flags)
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
    + [Type\_Info\_String\_Encoding\_Kind](#Type_Info_String_Encoding_Kind)
    + [Type\_Info\_Struct](#Type_Info_Struct)
    + [Type\_Info\_Struct\_Flag](#Type_Info_Struct_Flag)
    + [Type\_Info\_Struct\_Flags](#Type_Info_Struct_Flags)
    + [Type\_Info\_Struct\_Soa\_Kind](#Type_Info_Struct_Soa_Kind)
    + [Type\_Info\_Type\_Id](#Type_Info_Type_Id)
    + [Type\_Info\_Union](#Type_Info_Union)
    + [WASM\_Allocator](#WASM_Allocator)
    + [int\_t](#int_t)
  * [Constants](#pkg-Constants)
    + [ALL\_ODIN\_ARCH\_TYPES](#ALL_ODIN_ARCH_TYPES)
    + [ALL\_ODIN\_OS\_TYPES](#ALL_ODIN_OS_TYPES)
    + [Byte](#Byte)
    + [DEFAULT\_ALIGNMENT](#DEFAULT_ALIGNMENT)
    + [DEFAULT\_ARENA\_GROWING\_MINIMUM\_BLOCK\_SIZE](#DEFAULT_ARENA_GROWING_MINIMUM_BLOCK_SIZE)
    + [DEFAULT\_DYNAMIC\_ARRAY\_CAPACITY](#DEFAULT_DYNAMIC_ARRAY_CAPACITY)
    + [DEFAULT\_TEMP\_ALLOCATOR\_BACKING\_SIZE](#DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE)
    + [Exabyte](#Exabyte)
    + [Gigabyte](#Gigabyte)
    + [HASH\_MASK](#HASH_MASK)
    + [HAS\_HARDWARE\_SIMD](#HAS_HARDWARE_SIMD)
    + [HAS\_RAND\_BYTES](#HAS_RAND_BYTES)
    + [INITIAL\_HASH\_SEED](#INITIAL_HASH_SEED)
    + [Kilobyte](#Kilobyte)
    + [MAP\_CACHE\_LINE\_LOG2](#MAP_CACHE_LINE_LOG2)
    + [MAP\_CACHE\_LINE\_SIZE](#MAP_CACHE_LINE_SIZE)
    + [MAP\_LOAD\_FACTOR](#MAP_LOAD_FACTOR)
    + [MAP\_MIN\_LOG2\_CAPACITY](#MAP_MIN_LOG2_CAPACITY)
    + [Megabyte](#Megabyte)
    + [NATIVE\_SIMD\_BIT\_WIDTH](#NATIVE_SIMD_BIT_WIDTH)
    + [NO\_DEFAULT\_TEMP\_ALLOCATOR](#NO_DEFAULT_TEMP_ALLOCATOR)
    + [ODIN\_PLATFORM\_SUBTARGET\_IOS](#ODIN_PLATFORM_SUBTARGET_IOS)
    + [Petabyte](#Petabyte)
    + [RUNTIME\_REQUIRE](#RUNTIME_REQUIRE)
    + [TOMBSTONE\_MASK](#TOMBSTONE_MASK)
    + [Terabyte](#Terabyte)
  * [Variables](#pkg-Variables)
    + [args\_\_](#args__)
    + [global\_default\_temp\_allocator\_data](#global_default_temp_allocator_data)
    + [global\_default\_wasm\_allocator\_data](#global_default_wasm_allocator_data)
    + [init\_default\_context\_for\_js](#init_default_context_for_js)
    + [type\_table](#type_table)
  * [Procedures](#pkg-Procedures)
    + [DEFAULT\_TEMP\_ALLOCATOR\_TEMP\_GUARD](#DEFAULT_TEMP_ALLOCATOR_TEMP_GUARD)
    + [abs\_complex128](#abs_complex128)
    + [abs\_complex32](#abs_complex32)
    + [abs\_complex64](#abs_complex64)
    + [abs\_quaternion128](#abs_quaternion128)
    + [abs\_quaternion256](#abs_quaternion256)
    + [abs\_quaternion64](#abs_quaternion64)
    + [add\_thread\_local\_cleaner](#add_thread_local_cleaner)
    + [aeabi\_d2h](#aeabi_d2h)
    + [align\_forward\_int](#align_forward_int)
    + [align\_forward\_uint](#align_forward_uint)
    + [align\_forward\_uintptr](#align_forward_uintptr)
    + [alloc\_from\_memory\_block](#alloc_from_memory_block)
    + [append\_elem](#append_elem)
    + [append\_elem\_string](#append_elem_string)
    + [append\_elems](#append_elems)
    + [append\_fixed\_capacity\_elem](#append_fixed_capacity_elem)
    + [append\_fixed\_capacity\_elems](#append_fixed_capacity_elems)
    + [append\_fixed\_capacity\_string](#append_fixed_capacity_string)
    + [append\_nothing\_dynamic\_array](#append_nothing_dynamic_array)
    + [append\_nothing\_fixed\_capacity\_dynamic\_array](#append_nothing_fixed_capacity_dynamic_array)
    + [append\_nothing\_soa](#append_nothing_soa)
    + [append\_soa\_elem](#append_soa_elem)
    + [append\_soa\_elems](#append_soa_elems)
    + [append\_string](#append_string)
    + [arena\_alloc](#arena_alloc)
    + [arena\_allocator](#arena_allocator)
    + [arena\_allocator\_proc](#arena_allocator_proc)
    + [arena\_check\_temp](#arena_check_temp)
    + [arena\_destroy](#arena_destroy)
    + [arena\_free\_all](#arena_free_all)
    + [arena\_free\_last\_memory\_block](#arena_free_last_memory_block)
    + [arena\_init](#arena_init)
    + [arena\_temp\_begin](#arena_temp_begin)
    + [arena\_temp\_end](#arena_temp_end)
    + [arena\_temp\_ignore](#arena_temp_ignore)
    + [assert](#assert)
    + [assert\_contextless](#assert_contextless)
    + [assign\_at\_elem](#assign_at_elem)
    + [assign\_at\_elem\_fixed\_capacity\_dynamic\_array](#assign_at_elem_fixed_capacity_dynamic_array)
    + [assign\_at\_elem\_string](#assign_at_elem_string)
    + [assign\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](#assign_at_elem_string_fixed_capacity_dynamic_array)
    + [assign\_at\_elems](#assign_at_elems)
    + [assign\_at\_elems\_fixed\_capacity\_dynamic\_array](#assign_at_elems_fixed_capacity_dynamic_array)
    + [bounds\_check\_error](#bounds_check_error)
    + [bounds\_check\_error\_loc](#bounds_check_error_loc)
    + [bounds\_trap](#bounds_trap)
    + [bzero](#bzero)
    + [card](#card)
    + [clear\_dynamic\_array](#clear_dynamic_array)
    + [clear\_fixed\_capacity\_dynamic\_array](#clear_fixed_capacity_dynamic_array)
    + [clear\_map](#clear_map)
    + [clear\_soa\_dynamic\_array](#clear_soa_dynamic_array)
    + [complex128\_eq](#complex128_eq)
    + [complex128\_ne](#complex128_ne)
    + [complex32\_eq](#complex32_eq)
    + [complex32\_ne](#complex32_ne)
    + [complex64\_eq](#complex64_eq)
    + [complex64\_ne](#complex64_ne)
    + [conditional\_mem\_zero](#conditional_mem_zero)
    + [container\_of](#container_of)
    + [copy\_from\_string](#copy_from_string)
    + [copy\_from\_string16](#copy_from_string16)
    + [copy\_slice](#copy_slice)
    + [copy\_slice\_raw](#copy_slice_raw)
    + [cstring16\_cmp](#cstring16_cmp)
    + [cstring16\_eq](#cstring16_eq)
    + [cstring16\_ge](#cstring16_ge)
    + [cstring16\_gt](#cstring16_gt)
    + [cstring16\_le](#cstring16_le)
    + [cstring16\_len](#cstring16_len)
    + [cstring16\_lt](#cstring16_lt)
    + [cstring16\_ne](#cstring16_ne)
    + [cstring16\_to\_string16](#cstring16_to_string16)
    + [cstring\_cmp](#cstring_cmp)
    + [cstring\_eq](#cstring_eq)
    + [cstring\_ge](#cstring_ge)
    + [cstring\_gt](#cstring_gt)
    + [cstring\_le](#cstring_le)
    + [cstring\_len](#cstring_len)
    + [cstring\_lt](#cstring_lt)
    + [cstring\_ne](#cstring_ne)
    + [cstring\_to\_string](#cstring_to_string)
    + [debug\_trap](#debug_trap)
    + [default\_allocator](#default_allocator)
    + [default\_allocator\_proc](#default_allocator_proc)
    + [default\_assertion\_contextless\_failure\_proc](#default_assertion_contextless_failure_proc)
    + [default\_assertion\_failure\_proc](#default_assertion_failure_proc)
    + [default\_context](#default_context)
    + [default\_context\_ptr](#default_context_ptr)
    + [default\_hasher](#default_hasher)
    + [default\_hasher\_complex128](#default_hasher_complex128)
    + [default\_hasher\_cstring](#default_hasher_cstring)
    + [default\_hasher\_f64](#default_hasher_f64)
    + [default\_hasher\_quaternion256](#default_hasher_quaternion256)
    + [default\_hasher\_string](#default_hasher_string)
    + [default\_logger](#default_logger)
    + [default\_logger\_proc](#default_logger_proc)
    + [default\_random\_generator](#default_random_generator)
    + [default\_random\_generator\_proc](#default_random_generator_proc)
    + [default\_temp\_allocator](#default_temp_allocator)
    + [default\_temp\_allocator\_destroy](#default_temp_allocator_destroy)
    + [default\_temp\_allocator\_init](#default_temp_allocator_init)
    + [default\_temp\_allocator\_proc](#default_temp_allocator_proc)
    + [default\_temp\_allocator\_temp\_begin](#default_temp_allocator_temp_begin)
    + [default\_temp\_allocator\_temp\_end](#default_temp_allocator_temp_end)
    + [default\_wasm\_allocator](#default_wasm_allocator)
    + [delete\_cstring](#delete_cstring)
    + [delete\_cstring16](#delete_cstring16)
    + [delete\_dynamic\_array](#delete_dynamic_array)
    + [delete\_key](#delete_key)
    + [delete\_map](#delete_map)
    + [delete\_slice](#delete_slice)
    + [delete\_soa\_dynamic\_array](#delete_soa_dynamic_array)
    + [delete\_soa\_slice](#delete_soa_slice)
    + [delete\_string](#delete_string)
    + [delete\_string16](#delete_string16)
    + [divmodti4](#divmodti4)
    + [divti3](#divti3)
    + [dynamic\_array\_expr\_error](#dynamic_array_expr_error)
    + [dynamic\_array\_expr\_error\_loc](#dynamic_array_expr_error_loc)
    + [encode\_rune](#encode_rune)
    + [ensure](#ensure)
    + [ensure\_contextless](#ensure_contextless)
    + [exit](#exit)
    + [extendhfsf2](#extendhfsf2)
    + [fixdfti](#fixdfti)
    + [fixunsdfdi](#fixunsdfdi)
    + [fixunsdfti](#fixunsdfti)
    + [floattidf](#floattidf)
    + [floattidf\_unsigned](#floattidf_unsigned)
    + [gnu\_f2h\_ieee](#gnu_f2h_ieee)
    + [gnu\_h2f\_ieee](#gnu_h2f_ieee)
    + [heap\_alloc](#heap_alloc)
    + [heap\_allocator](#heap_allocator)
    + [heap\_allocator\_proc](#heap_allocator_proc)
    + [heap\_free](#heap_free)
    + [heap\_resize](#heap_resize)
    + [init\_global\_temporary\_allocator](#init_global_temporary_allocator)
    + [inject\_at\_elem](#inject_at_elem)
    + [inject\_at\_elem\_fixed\_capacity\_dynamic\_array](#inject_at_elem_fixed_capacity_dynamic_array)
    + [inject\_at\_elem\_soa](#inject_at_elem_soa)
    + [inject\_at\_elem\_string](#inject_at_elem_string)
    + [inject\_at\_elem\_string\_fixed\_capacity\_dynamic\_array](#inject_at_elem_string_fixed_capacity_dynamic_array)
    + [inject\_at\_elems](#inject_at_elems)
    + [inject\_at\_elems\_fixed\_capacity\_dynamic\_array](#inject_at_elems_fixed_capacity_dynamic_array)
    + [inject\_at\_elems\_soa](#inject_at_elems_soa)
    + [into\_dynamic\_soa](#into_dynamic_soa)
    + [is\_power\_of\_two\_int](#is_power_of_two_int)
    + [is\_power\_of\_two\_uint](#is_power_of_two_uint)
    + [is\_power\_of\_two\_uintptr](#is_power_of_two_uintptr)
    + [make\_aligned](#make_aligned)
    + [make\_dynamic\_array](#make_dynamic_array)
    + [make\_dynamic\_array\_error\_loc](#make_dynamic_array_error_loc)
    + [make\_dynamic\_array\_len](#make_dynamic_array_len)
    + [make\_dynamic\_array\_len\_cap](#make_dynamic_array_len_cap)
    + [make\_map](#make_map)
    + [make\_map\_cap](#make_map_cap)
    + [make\_map\_expr\_error\_loc](#make_map_expr_error_loc)
    + [make\_multi\_pointer](#make_multi_pointer)
    + [make\_slice](#make_slice)
    + [make\_slice\_error\_loc](#make_slice_error_loc)
    + [make\_soa\_aligned](#make_soa_aligned)
    + [make\_soa\_dynamic\_array](#make_soa_dynamic_array)
    + [make\_soa\_dynamic\_array\_len](#make_soa_dynamic_array_len)
    + [make\_soa\_dynamic\_array\_len\_cap](#make_soa_dynamic_array_len_cap)
    + [make\_soa\_slice](#make_soa_slice)
    + [map\_alloc\_dynamic](#map_alloc_dynamic)
    + [map\_cap](#map_cap)
    + [map\_cell\_index\_dynamic](#map_cell_index_dynamic)
    + [map\_cell\_index\_dynamic\_const](#map_cell_index_dynamic_const)
    + [map\_cell\_index\_static](#map_cell_index_static)
    + [map\_cell\_info](#map_cell_info)
    + [map\_clear\_dynamic](#map_clear_dynamic)
    + [map\_data](#map_data)
    + [map\_desired\_position](#map_desired_position)
    + [map\_entry](#map_entry)
    + [map\_erase\_dynamic](#map_erase_dynamic)
    + [map\_exists\_dynamic](#map_exists_dynamic)
    + [map\_free\_dynamic](#map_free_dynamic)
    + [map\_get](#map_get)
    + [map\_grow\_dynamic](#map_grow_dynamic)
    + [map\_hash\_is\_deleted](#map_hash_is_deleted)
    + [map\_hash\_is\_empty](#map_hash_is_empty)
    + [map\_hash\_is\_valid](#map_hash_is_valid)
    + [map\_info](#map_info)
    + [map\_insert](#map_insert)
    + [map\_insert\_hash\_dynamic](#map_insert_hash_dynamic)
    + [map\_insert\_hash\_dynamic\_with\_key](#map_insert_hash_dynamic_with_key)
    + [map\_kvh\_data\_dynamic](#map_kvh_data_dynamic)
    + [map\_kvh\_data\_static](#map_kvh_data_static)
    + [map\_kvh\_data\_values\_dynamic](#map_kvh_data_values_dynamic)
    + [map\_len](#map_len)
    + [map\_load\_factor](#map_load_factor)
    + [map\_log2\_cap](#map_log2_cap)
    + [map\_lookup\_dynamic](#map_lookup_dynamic)
    + [map\_probe\_distance](#map_probe_distance)
    + [map\_reserve\_dynamic](#map_reserve_dynamic)
    + [map\_resize\_threshold](#map_resize_threshold)
    + [map\_seed](#map_seed)
    + [map\_seed\_from\_map\_data](#map_seed_from_map_data)
    + [map\_shrink\_dynamic](#map_shrink_dynamic)
    + [map\_total\_allocation\_size](#map_total_allocation_size)
    + [map\_total\_allocation\_size\_from\_value](#map_total_allocation_size_from_value)
    + [map\_upsert](#map_upsert)
    + [matrix\_bounds\_check\_error](#matrix_bounds_check_error)
    + [mem\_alloc](#mem_alloc)
    + [mem\_alloc\_bytes](#mem_alloc_bytes)
    + [mem\_alloc\_non\_zeroed](#mem_alloc_non_zeroed)
    + [mem\_copy](#mem_copy)
    + [mem\_copy\_non\_overlapping](#mem_copy_non_overlapping)
    + [mem\_free](#mem_free)
    + [mem\_free\_all](#mem_free_all)
    + [mem\_free\_bytes](#mem_free_bytes)
    + [mem\_free\_with\_size](#mem_free_with_size)
    + [mem\_resize](#mem_resize)
    + [mem\_zero](#mem_zero)
    + [memcpy](#memcpy)
    + [memmove](#memmove)
    + [memory\_block\_alloc](#memory_block_alloc)
    + [memory\_block\_dealloc](#memory_block_dealloc)
    + [memory\_compare](#memory_compare)
    + [memory\_compare\_zero](#memory_compare_zero)
    + [memory\_equal](#memory_equal)
    + [memory\_prefix\_length](#memory_prefix_length)
    + [memset](#memset)
    + [modti3](#modti3)
    + [mul\_quaternion128](#mul_quaternion128)
    + [mul\_quaternion256](#mul_quaternion256)
    + [mul\_quaternion64](#mul_quaternion64)
    + [multi\_pointer\_slice\_expr\_error](#multi_pointer_slice_expr_error)
    + [multi\_pointer\_slice\_handle\_error](#multi_pointer_slice_handle_error)
    + [new](#new)
    + [new\_aligned](#new_aligned)
    + [new\_clone](#new_clone)
    + [nil\_allocator](#nil_allocator)
    + [nil\_allocator\_proc](#nil_allocator_proc)
    + [non\_zero\_append\_elem](#non_zero_append_elem)
    + [non\_zero\_append\_elem\_fixed\_capacity\_string](#non_zero_append_elem_fixed_capacity_string)
    + [non\_zero\_append\_elem\_string](#non_zero_append_elem_string)
    + [non\_zero\_append\_elems](#non_zero_append_elems)
    + [non\_zero\_append\_soa\_elem](#non_zero_append_soa_elem)
    + [non\_zero\_append\_soa\_elems](#non_zero_append_soa_elems)
    + [non\_zero\_mem\_resize](#non_zero_mem_resize)
    + [non\_zero\_reserve\_dynamic\_array](#non_zero_reserve_dynamic_array)
    + [non\_zero\_reserve\_soa](#non_zero_reserve_soa)
    + [non\_zero\_resize\_dynamic\_array](#non_zero_resize_dynamic_array)
    + [non\_zero\_resize\_fixed\_capacity\_dynamic\_array](#non_zero_resize_fixed_capacity_dynamic_array)
    + [non\_zero\_resize\_soa](#non_zero_resize_soa)
    + [ordered\_remove\_dynamic\_array](#ordered_remove_dynamic_array)
    + [ordered\_remove\_fixed\_capacity\_dynamic\_array](#ordered_remove_fixed_capacity_dynamic_array)
    + [ordered\_remove\_soa](#ordered_remove_soa)
    + [panic](#panic)
    + [panic\_allocator](#panic_allocator)
    + [panic\_allocator\_proc](#panic_allocator_proc)
    + [panic\_contextless](#panic_contextless)
    + [pop\_dynamic\_array](#pop_dynamic_array)
    + [pop\_fixed\_capacity\_dynamic\_array](#pop_fixed_capacity_dynamic_array)
    + [pop\_front\_dynamic\_array](#pop_front_dynamic_array)
    + [pop\_front\_fixed\_capacity\_dynamic\_array](#pop_front_fixed_capacity_dynamic_array)
    + [pop\_front\_safe\_dynamic\_array](#pop_front_safe_dynamic_array)
    + [pop\_front\_safe\_fixed\_capacity\_dynamic\_array](#pop_front_safe_fixed_capacity_dynamic_array)
    + [pop\_safe\_dynamic\_array](#pop_safe_dynamic_array)
    + [pop\_safe\_fixed\_capacity\_dynamic\_array](#pop_safe_fixed_capacity_dynamic_array)
    + [print\_any\_single](#print_any_single)
    + [print\_byte](#print_byte)
    + [print\_caller\_location](#print_caller_location)
    + [print\_encoded\_rune](#print_encoded_rune)
    + [print\_i64](#print_i64)
    + [print\_int](#print_int)
    + [print\_rune](#print_rune)
    + [print\_string](#print_string)
    + [print\_strings](#print_strings)
    + [print\_type](#print_type)
    + [print\_typeid](#print_typeid)
    + [print\_u64](#print_u64)
    + [print\_uint](#print_uint)
    + [print\_uintptr](#print_uintptr)
    + [println\_any](#println_any)
    + [quaternion128\_eq](#quaternion128_eq)
    + [quaternion128\_ne](#quaternion128_ne)
    + [quaternion256\_eq](#quaternion256_eq)
    + [quaternion256\_ne](#quaternion256_ne)
    + [quaternion64\_eq](#quaternion64_eq)
    + [quaternion64\_ne](#quaternion64_ne)
    + [quo\_complex128](#quo_complex128)
    + [quo\_complex32](#quo_complex32)
    + [quo\_complex64](#quo_complex64)
    + [quo\_quaternion128](#quo_quaternion128)
    + [quo\_quaternion256](#quo_quaternion256)
    + [quo\_quaternion64](#quo_quaternion64)
    + [rand\_bytes](#rand_bytes)
    + [random\_generator\_query\_info](#random_generator_query_info)
    + [random\_generator\_read\_bytes](#random_generator_read_bytes)
    + [random\_generator\_read\_ptr](#random_generator_read_ptr)
    + [random\_generator\_reset\_bytes](#random_generator_reset_bytes)
    + [random\_generator\_reset\_u64](#random_generator_reset_u64)
    + [raw\_soa\_footer\_dynamic\_array](#raw_soa_footer_dynamic_array)
    + [raw\_soa\_footer\_slice](#raw_soa_footer_slice)
    + [read\_cycle\_counter](#read_cycle_counter)
    + [remove\_range\_dynamic\_array](#remove_range_dynamic_array)
    + [remove\_range\_fixed\_capacity\_dynamic\_array](#remove_range_fixed_capacity_dynamic_array)
    + [reserve\_dynamic\_array](#reserve_dynamic_array)
    + [reserve\_map](#reserve_map)
    + [reserve\_soa](#reserve_soa)
    + [resize\_dynamic\_array](#resize_dynamic_array)
    + [resize\_fixed\_capacity\_dynamic\_array](#resize_fixed_capacity_dynamic_array)
    + [resize\_soa](#resize_soa)
    + [run\_thread\_local\_cleaners](#run_thread_local_cleaners)
    + [shrink\_dynamic\_array](#shrink_dynamic_array)
    + [shrink\_map](#shrink_map)
    + [slice\_expr\_error\_hi](#slice_expr_error_hi)
    + [slice\_expr\_error\_hi\_loc](#slice_expr_error_hi_loc)
    + [slice\_expr\_error\_lo\_hi](#slice_expr_error_lo_hi)
    + [slice\_expr\_error\_lo\_hi\_loc](#slice_expr_error_lo_hi_loc)
    + [slice\_handle\_error](#slice_handle_error)
    + [stderr\_write](#stderr_write)
    + [string16\_cmp](#string16_cmp)
    + [string16\_decode\_last\_rune](#string16_decode_last_rune)
    + [string16\_decode\_rune](#string16_decode_rune)
    + [string16\_eq](#string16_eq)
    + [string16\_ge](#string16_ge)
    + [string16\_gt](#string16_gt)
    + [string16\_le](#string16_le)
    + [string16\_lt](#string16_lt)
    + [string16\_ne](#string16_ne)
    + [string\_cmp](#string_cmp)
    + [string\_decode\_last\_rune](#string_decode_last_rune)
    + [string\_decode\_rune](#string_decode_rune)
    + [string\_eq](#string_eq)
    + [string\_ge](#string_ge)
    + [string\_gt](#string_gt)
    + [string\_le](#string_le)
    + [string\_lt](#string_lt)
    + [string\_ne](#string_ne)
    + [trap](#trap)
    + [truncdfhf2](#truncdfhf2)
    + [truncsfhf2](#truncsfhf2)
    + [type\_assertion\_check2\_contextless](#type_assertion_check2_contextless)
    + [type\_assertion\_check2\_with\_context](#type_assertion_check2_with_context)
    + [type\_assertion\_check\_contextless](#type_assertion_check_contextless)
    + [type\_assertion\_check\_with\_context](#type_assertion_check_with_context)
    + [type\_assertion\_trap\_contextless](#type_assertion_trap_contextless)
    + [type\_info\_base](#type_info_base)
    + [type\_info\_base\_without\_enum](#type_info_base_without_enum)
    + [type\_info\_core](#type_info_core)
    + [type\_info\_underlying](#type_info_underlying)
    + [typeid\_base](#typeid_base)
    + [typeid\_base\_without\_enum](#typeid_base_without_enum)
    + [typeid\_core](#typeid_core)
    + [typeid\_underlying](#typeid_underlying)
    + [udivmod128](#udivmod128)
    + [udivmodti4](#udivmodti4)
    + [udivti3](#udivti3)
    + [umodti3](#umodti3)
    + [unimplemented](#unimplemented)
    + [unimplemented\_contextless](#unimplemented_contextless)
    + [unordered\_remove\_dynamic\_array](#unordered_remove_dynamic_array)
    + [unordered\_remove\_fixed\_capacity\_dynamic\_array](#unordered_remove_fixed_capacity_dynamic_array)
    + [unordered\_remove\_soa](#unordered_remove_soa)
    + [wasm\_allocator](#wasm_allocator)
    + [wasm\_allocator\_free\_space](#wasm_allocator_free_space)
    + [wasm\_allocator\_init](#wasm_allocator_init)
    + [wasm\_allocator\_proc](#wasm_allocator_proc)
    + [wasm\_allocator\_size](#wasm_allocator_size)
    + [write\_byte](#write_byte)
    + [write\_caller\_location](#write_caller_location)
    + [write\_encoded\_rune](#write_encoded_rune)
    + [write\_i64](#write_i64)
    + [write\_rune](#write_rune)
    + [write\_string](#write_string)
    + [write\_typeid](#write_typeid)
    + [write\_u64](#write_u64)
    + [write\_write\_type](#write_write_type)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [align\_forward](#align_forward)
    + [append](#append)
    + [append\_nothing](#append_nothing)
    + [append\_soa](#append_soa)
    + [assign\_at](#assign_at)
    + [clear](#clear)
    + [clear\_soa](#clear_soa)
    + [copy](#copy)
    + [delete](#delete)
    + [delete\_soa](#delete_soa)
    + [free](#free)
    + [free\_all](#free_all)
    + [inject\_at](#inject_at)
    + [inject\_at\_soa](#inject_at_soa)
    + [is\_power\_of\_two](#is_power_of_two)
    + [make](#make)
    + [make\_soa](#make_soa)
    + [non\_zero\_append](#non_zero_append)
    + [non\_zero\_reserve](#non_zero_reserve)
    + [non\_zero\_resize](#non_zero_resize)
    + [ordered\_remove](#ordered_remove)
    + [pop](#pop)
    + [pop\_front](#pop_front)
    + [pop\_front\_safe](#pop_front_safe)
    + [pop\_safe](#pop_safe)
    + [raw\_soa\_footer](#raw_soa_footer)
    + [remove\_range](#remove_range)
    + [reserve](#reserve)
    + [resize](#resize)
    + [shrink](#shrink)
    + [unordered\_remove](#unordered_remove)
  * [`#config` values](#pkg-`#config` values)
    + [DEFAULT\_TEMP\_ALLOCATOR\_BACKING\_SIZE](#DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE)
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