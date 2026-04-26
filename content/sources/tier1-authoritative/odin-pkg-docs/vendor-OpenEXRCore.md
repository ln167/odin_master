package OpenEXRCore - pkg.odin-lang.org 






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



Current Package: *[vendor\_openexr](/vendor/OpenEXRCore)*

  

#### [vendor Library](/vendor)

* [box2d](/vendor/box2d)
* [cgltf](/vendor/cgltf)
* [commonmark](/vendor/commonmark)
* compress
  + [lz4](/vendor/compress/lz4)
* [curl](/vendor/curl)
* darwin
  + [CoreVideo](/vendor/darwin/CoreVideo)
  + [Metal](/vendor/darwin/Metal)
  + [MetalKit](/vendor/darwin/MetalKit)
  + [QuartzCore](/vendor/darwin/QuartzCore)
* directx
  + [d3d11](/vendor/directx/d3d11)
  + [d3d12](/vendor/directx/d3d12)
  + [d3d\_common](/vendor/directx/d3d_common)
  + [dxc](/vendor/directx/dxc)
  + [dxgi](/vendor/directx/dxgi)
* [ENet](/vendor/ENet)
* [fontstash](/vendor/fontstash)
* [ggpo](/vendor/ggpo)
* [glfw](/vendor/glfw)
  + [bindings](/vendor/glfw/bindings)
* [kb\_text\_shape](/vendor/kb_text_shape)
* [libc-shim](/vendor/libc-shim)
* lua
  + [5.4](/vendor/lua/5.4)
* [microui](/vendor/microui)
* [miniaudio](/vendor/miniaudio)
* [nanovg](/vendor/nanovg)
  + [gl](/vendor/nanovg/gl)
* [OpenEXRCore](/vendor/OpenEXRCore)
* [OpenGL](/vendor/OpenGL)
* [portmidi](/vendor/portmidi)
* [raylib](/vendor/raylib)
* [sdl2](/vendor/sdl2)
  + [image](/vendor/sdl2/image)
  + [mixer](/vendor/sdl2/mixer)
  + [net](/vendor/sdl2/net)
  + [ttf](/vendor/sdl2/ttf)
* [sdl3](/vendor/sdl3)
  + [image](/vendor/sdl3/image)
  + [ttf](/vendor/sdl3/ttf)
* stb
  + [easy\_font](/vendor/stb/easy_font)
  + [image](/vendor/stb/image)
  + [rect\_pack](/vendor/stb/rect_pack)
  + [sprintf](/vendor/stb/sprintf)
  + [truetype](/vendor/stb/truetype)
  + [vorbis](/vendor/stb/vorbis)
* [vulkan](/vendor/vulkan)
* wasm
  + [WebGL](/vendor/wasm/WebGL)
* [wgpu](/vendor/wgpu)
  + [glfwglue](/vendor/wgpu/glfwglue)
  + [sdl2glue](/vendor/wgpu/sdl2glue)
  + [sdl3glue](/vendor/wgpu/sdl3glue)
* windows
  + [GameInput](/vendor/windows/GameInput)
  + [XAudio2](/vendor/windows/XAudio2)
* x11
  + [xlib](/vendor/x11/xlib)
* [zlib](/vendor/zlib)

1. [vendor](/vendor)
2. [OpenEXRCore](/vendor/OpenEXRCore)

# package vendor:OpenEXRCore [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [OpenEXRCore](https://github.com/AcademySoftwareFoundation/openexr/tree/main/src/lib/OpenEXRCore).

## Index

Types (54)

* [attr\_box2f\_t](#attr_box2f_t)
* [attr\_box2i\_t](#attr_box2i_t)
* [attr\_chlist\_entry\_t](#attr_chlist_entry_t)
* [attr\_chlist\_t](#attr_chlist_t)
* [attr\_chromaticities\_t](#attr_chromaticities_t)
* [attr\_float\_vector\_t](#attr_float_vector_t)
* [attr\_keycode\_t](#attr_keycode_t)
* [attr\_list\_access\_mode\_t](#attr_list_access_mode_t)
* [attr\_m33d\_t](#attr_m33d_t)
* [attr\_m33f\_t](#attr_m33f_t)
* [attr\_m44d\_t](#attr_m44d_t)
* [attr\_m44f\_t](#attr_m44f_t)
* [attr\_opaquedata\_t](#attr_opaquedata_t)
* [attr\_preview\_t](#attr_preview_t)
* [attr\_rational\_t](#attr_rational_t)
* [attr\_string\_t](#attr_string_t)
* [attr\_string\_vector\_t](#attr_string_vector_t)
* [attr\_tiledesc\_t](#attr_tiledesc_t)
* [attr\_timecode\_t](#attr_timecode_t)
* [attr\_v2d\_t](#attr_v2d_t)
* [attr\_v2f\_t](#attr_v2f_t)
* [attr\_v2i\_t](#attr_v2i_t)
* [attr\_v3d\_t](#attr_v3d_t)
* [attr\_v3f\_t](#attr_v3f_t)
* [attr\_v3i\_t](#attr_v3i_t)
* [attribute\_t](#attribute_t)
* [attribute\_type\_t](#attribute_type_t)
* [chunk\_info\_t](#chunk_info_t)
* [coding\_channel\_info\_t](#coding_channel_info_t)
* [compression\_t](#compression_t)
* [const\_context\_t](#const_context_t)
* [context\_initializer\_t](#context_initializer_t)
* [context\_t](#context_t)
* [decode\_pipeline\_t](#decode_pipeline_t)
* [default\_write\_mode\_t](#default_write_mode_t)
* [destroy\_stream\_func\_ptr\_t](#destroy_stream_func_ptr_t)
* [encode\_pipeline\_t](#encode_pipeline_t)
* [envmap\_t](#envmap_t)
* [error\_code\_t](#error_code_t)
* [error\_handler\_cb\_t](#error_handler_cb_t)
* [lineorder\_t](#lineorder_t)
* [memory\_allocation\_func\_t](#memory_allocation_func_t)
* [memory\_free\_func\_t](#memory_free_func_t)
* [perceptual\_treatment\_t](#perceptual_treatment_t)
* [pixel\_type\_t](#pixel_type_t)
* [query\_size\_func\_ptr\_t](#query_size_func_ptr_t)
* [read\_func\_ptr\_t](#read_func_ptr_t)
* [result\_t](#result_t)
* [storage\_t](#storage_t)
* [stream\_error\_func\_ptr\_t](#stream_error_func_ptr_t)
* [tile\_level\_mode\_t](#tile_level_mode_t)
* [tile\_round\_mode\_t](#tile_round_mode_t)
* [transcoding\_pipeline\_buffer\_id\_t](#transcoding_pipeline_buffer_id_t)
* [write\_func\_ptr\_t](#write_func_ptr_t)

Constants (12)

* [CONTEXT\_FLAG\_DISABLE\_CHUNK\_RECONSTRUCTION](#CONTEXT_FLAG_DISABLE_CHUNK_RECONSTRUCTION)
* [CONTEXT\_FLAG\_SILENT\_HEADER\_PARSE](#CONTEXT_FLAG_SILENT_HEADER_PARSE)
* [CONTEXT\_FLAG\_STRICT\_HEADER](#CONTEXT_FLAG_STRICT_HEADER)
* [DECODE\_NON\_IMAGE\_DATA\_AS\_POINTERS](#DECODE_NON_IMAGE_DATA_AS_POINTERS)
* [DECODE\_PIPELINE\_INITIALIZER](#DECODE_PIPELINE_INITIALIZER)
* [DECODE\_SAMPLE\_COUNTS\_AS\_INDIVIDUAL](#DECODE_SAMPLE_COUNTS_AS_INDIVIDUAL)
* [DECODE\_SAMPLE\_DATA\_ONLY](#DECODE_SAMPLE_DATA_ONLY)
* [DEFAULT\_CONTEXT\_INITIALIZER](#DEFAULT_CONTEXT_INITIALIZER)
* [ENCODE\_DATA\_SAMPLE\_COUNTS\_ARE\_INDIVIDUAL](#ENCODE_DATA_SAMPLE_COUNTS_ARE_INDIVIDUAL)
* [ENCODE\_NON\_IMAGE\_DATA\_AS\_POINTERS](#ENCODE_NON_IMAGE_DATA_AS_POINTERS)
* [ENCODE\_PIPELINE\_INITIALIZER](#ENCODE_PIPELINE_INITIALIZER)
* [OPENEXRCORE\_SHARED](#OPENEXRCORE_SHARED)

Variables (0)

This section is empty.

Procedures (165)

* [GET\_TILE\_LEVEL\_MODE](#GET_TILE_LEVEL_MODE)
* [GET\_TILE\_ROUND\_MODE](#GET_TILE_ROUND_MODE)
* [PACK\_TILE\_LEVEL\_ROUND](#PACK_TILE_LEVEL_ROUND)
* [add\_channel](#add_channel)
* [add\_part](#add_part)
* [attr\_declare](#attr_declare)
* [attr\_declare\_by\_type](#attr_declare_by_type)
* [attr\_get\_box2f](#attr_get_box2f)
* [attr\_get\_box2i](#attr_get_box2i)
* [attr\_get\_channels](#attr_get_channels)
* [attr\_get\_chromaticities](#attr_get_chromaticities)
* [attr\_get\_compression](#attr_get_compression)
* [attr\_get\_double](#attr_get_double)
* [attr\_get\_envmap](#attr_get_envmap)
* [attr\_get\_float](#attr_get_float)
* [attr\_get\_float\_vector](#attr_get_float_vector)
* [attr\_get\_int](#attr_get_int)
* [attr\_get\_keycode](#attr_get_keycode)
* [attr\_get\_lineorder](#attr_get_lineorder)
* [attr\_get\_m33d](#attr_get_m33d)
* [attr\_get\_m33f](#attr_get_m33f)
* [attr\_get\_m44d](#attr_get_m44d)
* [attr\_get\_m44f](#attr_get_m44f)
* [attr\_get\_preview](#attr_get_preview)
* [attr\_get\_rational](#attr_get_rational)
* [attr\_get\_string](#attr_get_string)
* [attr\_get\_string\_vector](#attr_get_string_vector)
* [attr\_get\_tiledesc](#attr_get_tiledesc)
* [attr\_get\_timecode](#attr_get_timecode)
* [attr\_get\_user](#attr_get_user)
* [attr\_get\_v2d](#attr_get_v2d)
* [attr\_get\_v2f](#attr_get_v2f)
* [attr\_get\_v2i](#attr_get_v2i)
* [attr\_get\_v3d](#attr_get_v3d)
* [attr\_get\_v3f](#attr_get_v3f)
* [attr\_get\_v3i](#attr_get_v3i)
* [attr\_set\_box2f](#attr_set_box2f)
* [attr\_set\_box2i](#attr_set_box2i)
* [attr\_set\_channels](#attr_set_channels)
* [attr\_set\_chromaticities](#attr_set_chromaticities)
* [attr\_set\_compression](#attr_set_compression)
* [attr\_set\_double](#attr_set_double)
* [attr\_set\_envmap](#attr_set_envmap)
* [attr\_set\_float](#attr_set_float)
* [attr\_set\_float\_vector](#attr_set_float_vector)
* [attr\_set\_int](#attr_set_int)
* [attr\_set\_keycode](#attr_set_keycode)
* [attr\_set\_lineorder](#attr_set_lineorder)
* [attr\_set\_m33d](#attr_set_m33d)
* [attr\_set\_m33f](#attr_set_m33f)
* [attr\_set\_m44d](#attr_set_m44d)
* [attr\_set\_m44f](#attr_set_m44f)
* [attr\_set\_preview](#attr_set_preview)
* [attr\_set\_rational](#attr_set_rational)
* [attr\_set\_string](#attr_set_string)
* [attr\_set\_string\_vector](#attr_set_string_vector)
* [attr\_set\_tiledesc](#attr_set_tiledesc)
* [attr\_set\_timecode](#attr_set_timecode)
* [attr\_set\_user](#attr_set_user)
* [attr\_set\_v2d](#attr_set_v2d)
* [attr\_set\_v2f](#attr_set_v2f)
* [attr\_set\_v2i](#attr_set_v2i)
* [attr\_set\_v3d](#attr_set_v3d)
* [attr\_set\_v3f](#attr_set_v3f)
* [attr\_set\_v3i](#attr_set_v3i)
* [chunk\_default\_initialize](#chunk_default_initialize)
* [compress\_buffer](#compress_buffer)
* [compress\_chunk](#compress_chunk)
* [compress\_max\_buffer\_size](#compress_max_buffer_size)
* [compression\_lines\_per\_chunk](#compression_lines_per_chunk)
* [copy\_unset\_attributes](#copy_unset_attributes)
* [decoding\_choose\_default\_routines](#decoding_choose_default_routines)
* [decoding\_destroy](#decoding_destroy)
* [decoding\_initialize](#decoding_initialize)
* [decoding\_run](#decoding_run)
* [decoding\_update](#decoding_update)
* [encoding\_choose\_default\_routines](#encoding_choose_default_routines)
* [encoding\_destroy](#encoding_destroy)
* [encoding\_initialize](#encoding_initialize)
* [encoding\_run](#encoding_run)
* [encoding\_update](#encoding_update)
* [exr\_validate\_chunk\_table](#exr_validate_chunk_table)
* [finish](#finish)
* [get\_attribute\_by\_index](#get_attribute_by_index)
* [get\_attribute\_by\_name](#get_attribute_by_name)
* [get\_attribute\_count](#get_attribute_count)
* [get\_attribute\_list](#get_attribute_list)
* [get\_channels](#get_channels)
* [get\_chunk\_count](#get_chunk_count)
* [get\_chunk\_table](#get_chunk_table)
* [get\_chunk\_table\_offset](#get_chunk_table_offset)
* [get\_chunk\_unpacked\_size](#get_chunk_unpacked_size)
* [get\_compression](#get_compression)
* [get\_count](#get_count)
* [get\_data\_window](#get_data_window)
* [get\_default\_dwa\_compression\_quality](#get_default_dwa_compression_quality)
* [get\_default\_error\_message](#get_default_error_message)
* [get\_default\_maximum\_image\_size](#get_default_maximum_image_size)
* [get\_default\_maximum\_tile\_size](#get_default_maximum_tile_size)
* [get\_default\_zip\_compression\_level](#get_default_zip_compression_level)
* [get\_display\_window](#get_display_window)
* [get\_dwa\_compression\_level](#get_dwa_compression_level)
* [get\_error\_code\_as\_string](#get_error_code_as_string)
* [get\_file\_name](#get_file_name)
* [get\_file\_version\_and\_flags](#get_file_version_and_flags)
* [get\_level\_sizes](#get_level_sizes)
* [get\_library\_version](#get_library_version)
* [get\_lineorder](#get_lineorder)
* [get\_name](#get_name)
* [get\_pixel\_aspect\_ratio](#get_pixel_aspect_ratio)
* [get\_scanlines\_per\_chunk](#get_scanlines_per_chunk)
* [get\_screen\_window\_center](#get_screen_window_center)
* [get\_screen\_window\_width](#get_screen_window_width)
* [get\_storage](#get_storage)
* [get\_tile\_counts](#get_tile_counts)
* [get\_tile\_descriptor](#get_tile_descriptor)
* [get\_tile\_levels](#get_tile_levels)
* [get\_tile\_sizes](#get_tile_sizes)
* [get\_user\_data](#get_user_data)
* [get\_version](#get_version)
* [get\_zip\_compression\_level](#get_zip_compression_level)
* [initialize\_required\_attr](#initialize_required_attr)
* [initialize\_required\_attr\_simple](#initialize_required_attr_simple)
* [print\_context\_info](#print_context_info)
* [read\_chunk](#read_chunk)
* [read\_deep\_chunk](#read_deep_chunk)
* [read\_scanline\_chunk\_info](#read_scanline_chunk_info)
* [read\_tile\_chunk\_info](#read_tile_chunk_info)
* [register\_attr\_type\_handler](#register_attr_type_handler)
* [rle\_compress\_buffer](#rle_compress_buffer)
* [rle\_uncompress\_buffer](#rle_uncompress_buffer)
* [set\_channels](#set_channels)
* [set\_chunk\_count](#set_chunk_count)
* [set\_compression](#set_compression)
* [set\_data\_window](#set_data_window)
* [set\_default\_dwa\_compression\_quality](#set_default_dwa_compression_quality)
* [set\_default\_maximum\_image\_size](#set_default_maximum_image_size)
* [set\_default\_maximum\_tile\_size](#set_default_maximum_tile_size)
* [set\_default\_memory\_routines](#set_default_memory_routines)
* [set\_default\_zip\_compression\_level](#set_default_zip_compression_level)
* [set\_display\_window](#set_display_window)
* [set\_dwa\_compression\_level](#set_dwa_compression_level)
* [set\_lineorder](#set_lineorder)
* [set\_longname\_support](#set_longname_support)
* [set\_name](#set_name)
* [set\_pixel\_aspect\_ratio](#set_pixel_aspect_ratio)
* [set\_screen\_window\_center](#set_screen_window_center)
* [set\_screen\_window\_width](#set_screen_window_width)
* [set\_tile\_descriptor](#set_tile_descriptor)
* [set\_version](#set_version)
* [set\_zip\_compression\_level](#set_zip_compression_level)
* [start\_inplace\_header\_update](#start_inplace_header_update)
* [start\_read](#start_read)
* [start\_temporary\_context](#start_temporary_context)
* [start\_write](#start_write)
* [test\_file\_header](#test_file_header)
* [uncompress\_buffer](#uncompress_buffer)
* [uncompress\_chunk](#uncompress_chunk)
* [write\_deep\_scanline\_chunk](#write_deep_scanline_chunk)
* [write\_deep\_tile\_chunk](#write_deep_tile_chunk)
* [write\_header](#write_header)
* [write\_scanline\_chunk](#write_scanline_chunk)
* [write\_scanline\_chunk\_info](#write_scanline_chunk_info)
* [write\_tile\_chunk](#write_tile_chunk)
* [write\_tile\_chunk\_info](#write_tile_chunk_info)

Procedure Groups (0)

This section is empty.

`#config` values (1)

* [OPENEXRCORE\_SHARED](#OPENEXRCORE_SHARED)

## Types

### [attr\_box2f\_t ¶](#attr_box2f_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L143)

```
attr_box2f_t :: struct #packed {
	min: attr_v2f_t,
	max: attr_v2f_t,
}
```

 

@brief Struct to hold a floating-point box/region definition.




##### Related Procedures With Parameters

* [attr\_get\_box2f](/vendor/OpenEXRCore/#attr_get_box2f)
* [attr\_set\_box2f](/vendor/OpenEXRCore/#attr_set_box2f)

### [attr\_box2i\_t ¶](#attr_box2i_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L137)

```
attr_box2i_t :: struct #packed {
	min: attr_v2i_t,
	max: attr_v2i_t,
}
```

 

@brief Struct to hold an integer box/region definition.




##### Related Procedures With Parameters

* [attr\_get\_box2i](/vendor/OpenEXRCore/#attr_get_box2i)
* [attr\_set\_box2i](/vendor/OpenEXRCore/#attr_set_box2i)
* [chunk\_default\_initialize](/vendor/OpenEXRCore/#chunk_default_initialize)
* [get\_data\_window](/vendor/OpenEXRCore/#get_data_window)
* [get\_display\_window](/vendor/OpenEXRCore/#get_display_window)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [set\_data\_window](/vendor/OpenEXRCore/#set_data_window)
* [set\_display\_window](/vendor/OpenEXRCore/#set_display_window)

### [attr\_chlist\_entry\_t ¶](#attr_chlist_entry_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L215)

```
attr_chlist_entry_t :: struct {
	name:       attr_string_t,
	// Data representation for these pixels: uint, half, float. 
	pixel_type: pixel_type_t,
	// Possible values are 0 and 1 per docs perceptual_treatment_t. 
	p_linear:   u8,
	reserved:   [3]u8,
	x_sampling: i32,
	y_sampling: i32,
}
```

 

Individual channel information.

### [attr\_chlist\_t ¶](#attr_chlist_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L227)

```
attr_chlist_t :: struct {
	num_channels: i32,
	num_alloced:  i32,
	entries:      [^]attr_chlist_entry_t,
}
```

 

List of channel information (sorted alphabetically).




##### Related Procedures With Parameters

* [attr\_set\_channels](/vendor/OpenEXRCore/#attr_set_channels)
* [set\_channels](/vendor/OpenEXRCore/#set_channels)

### [attr\_chromaticities\_t ¶](#attr_chromaticities_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L64)

```
attr_chromaticities_t :: struct #packed {
	red_x:   f32,
	red_y:   f32,
	green_x: f32,
	green_y: f32,
	blue_x:  f32,
	blue_y:  f32,
	white_x: f32,
	white_y: f32,
}
```

 

@brief Struct to hold color chromaticities to interpret the tristimulus color values in the image data.




##### Related Procedures With Parameters

* [attr\_get\_chromaticities](/vendor/OpenEXRCore/#attr_get_chromaticities)
* [attr\_set\_chromaticities](/vendor/OpenEXRCore/#attr_set_chromaticities)

### [attr\_float\_vector\_t ¶](#attr_float_vector_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L195)

```
attr_float_vector_t :: struct {
	length:     i32,
	// If this is non-zero, the float vector owns the data, if 0, is a const ref. 
	alloc_size: i32,
	arr:        [^]f32,
}
```

 

Float vector storage struct.

### [attr\_keycode\_t ¶](#attr_keycode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L76)

```
attr_keycode_t :: struct #packed {
	film_mfc_code:   i32,
	film_type:       i32,
	prefix:          i32,
	count:           i32,
	perf_offset:     i32,
	perfs_per_frame: i32,
	perfs_per_count: i32,
}
```

 

@brief Struct to hold keycode information.




##### Related Procedures With Parameters

* [attr\_get\_keycode](/vendor/OpenEXRCore/#attr_get_keycode)
* [attr\_set\_keycode](/vendor/OpenEXRCore/#attr_set_keycode)

### [attr\_list\_access\_mode\_t ¶](#attr_list_access_mode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L5)

```
attr_list_access_mode_t :: enum i32 {
	FILE_ORDER,   // *< Order they appear in the file
	SORTED_ORDER, // *< Alphabetically sorted
}
```

##### Related Procedures With Parameters

* [get\_attribute\_by\_index](/vendor/OpenEXRCore/#get_attribute_by_index)
* [get\_attribute\_list](/vendor/OpenEXRCore/#get_attribute_list)

### [attr\_m33d\_t ¶](#attr_m33d_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L92)

```
attr_m33d_t :: struct #packed {
	m: [9]f64,
}
```

 

@brief struct to hold a 64-bit floating-point 3x3 matrix.




##### Related Procedures With Parameters

* [attr\_get\_m33d](/vendor/OpenEXRCore/#attr_get_m33d)
* [attr\_set\_m33d](/vendor/OpenEXRCore/#attr_set_m33d)

### [attr\_m33f\_t ¶](#attr_m33f_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L87)

```
attr_m33f_t :: struct #packed {
	m: [9]f32,
}
```

 

@brief struct to hold a 32-bit floating-point 3x3 matrix.




##### Related Procedures With Parameters

* [attr\_get\_m33f](/vendor/OpenEXRCore/#attr_get_m33f)
* [attr\_set\_m33f](/vendor/OpenEXRCore/#attr_set_m33f)

### [attr\_m44d\_t ¶](#attr_m44d_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L102)

```
attr_m44d_t :: struct #packed {
	m: [16]f64,
}
```

 

@brief Struct to hold a 64-bit floating-point 4x4 matrix.




##### Related Procedures With Parameters

* [attr\_get\_m44d](/vendor/OpenEXRCore/#attr_get_m44d)
* [attr\_set\_m44d](/vendor/OpenEXRCore/#attr_set_m44d)

### [attr\_m44f\_t ¶](#attr_m44f_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L97)

```
attr_m44f_t :: struct #packed {
	m: [16]f32,
}
```

 

@brief Struct to hold a 32-bit floating-point 4x4 matrix.




##### Related Procedures With Parameters

* [attr\_get\_m44f](/vendor/OpenEXRCore/#attr_get_m44f)
* [attr\_set\_m44f](/vendor/OpenEXRCore/#attr_set_m44f)

### [attr\_opaquedata\_t ¶](#attr_opaquedata_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L252)

```
attr_opaquedata_t :: struct {
	size:                      i32,
	unpacked_size:             i32,
	// If this is non-zero, the struct owns the data, if 0, is a const ref. 
	packed_alloc_size:         i32,
	pad:                       [4]u8,
	packed_data:               rawptr,
	// When an application wants to have custom data, they can store
	// 	 * an unpacked form here which will be requested to be destroyed
	// 	 * upon destruction of the attribute.
	unpacked_data:             rawptr,
	// An application can register an attribute handler which then
	// 	 * fills in these function pointers. This allows a user to delay
	// 	 * the expansion of the custom type until access is desired, and
	// 	 * similarly, to delay the packing of the data until write time.
	unpack_func_ptr:           proc "c" (ctxt: context_t, data: rawptr, attrsize: i32, outsize: ^i32, outbuffer: ^rawptr) -> result_t,
	pack_func_ptr:             proc "c" (ctxt: context_t, data: rawptr, datasize: i32, outsize: ^i32, outbuffer: rawptr) -> result_t,
	destroy_unpacked_func_ptr: proc "c" (ctxt: context_t, data: rawptr, attrsize: i32),
}
```

 

Custom storage structure for opaque data.
\*
\* Handlers for opaque types can be registered, then when a
\* non-builtin type is encountered with a registered handler, the
\* function pointers to unpack/pack it will be set up.
\*
\* @sa register\_attr\_type\_handler

### [attr\_preview\_t ¶](#attr_preview_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L235)

```
attr_preview_t :: struct {
	width:      u32,
	height:     u32,
	// If this is non-zero, the preview owns the data, if 0, is a const ref. 
	alloc_size: uint,
	rgba:       [^]u8,
}
```

 

@brief Struct to define attributes of an embedded preview image.




##### Related Procedures With Parameters

* [attr\_get\_preview](/vendor/OpenEXRCore/#attr_get_preview)
* [attr\_set\_preview](/vendor/OpenEXRCore/#attr_set_preview)

### [attr\_rational\_t ¶](#attr_rational_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L107)

```
attr_rational_t :: struct #packed {
	num:   i32,
	denom: u32,
}
```

 

@brief Struct to hold an integer ratio value.




##### Related Procedures With Parameters

* [attr\_get\_rational](/vendor/OpenEXRCore/#attr_get_rational)
* [attr\_set\_rational](/vendor/OpenEXRCore/#attr_set_rational)

### [attr\_string\_t ¶](#attr_string_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L177)

```
attr_string_t :: struct {
	length:     i32,
	// If this is non-zero, the string owns the data, if 0, is a const ref to a static string. 
	alloc_size: i32,
	str:        cstring,
}
```

 

Storage for a string.

### [attr\_string\_vector\_t ¶](#attr_string_vector_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L186)

```
attr_string_vector_t :: struct {
	n_strings:  i32,
	// If this is non-zero, the string vector owns the data, if 0, is a const ref. 
	alloc_size: i32,
	strings:    [^]attr_string_t,
}
```

 

Storage for a string vector.

### [attr\_tiledesc\_t ¶](#attr_tiledesc_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L153)

```
attr_tiledesc_t :: struct #packed {
	x_size:          u32,
	y_size:          u32,
	level_and_round: u8,
}
```

 

@brief Struct holding base tiledesc attribute type defined in spec
\*
\* NB: This is in a tightly packed area so it can be read directly, be
\* careful it doesn't become padded to the next \c uint32\_t boundary.




##### Related Procedures With Parameters

* [GET\_TILE\_LEVEL\_MODE](/vendor/OpenEXRCore/#GET_TILE_LEVEL_MODE)
* [GET\_TILE\_ROUND\_MODE](/vendor/OpenEXRCore/#GET_TILE_ROUND_MODE)
* [attr\_get\_tiledesc](/vendor/OpenEXRCore/#attr_get_tiledesc)
* [attr\_set\_tiledesc](/vendor/OpenEXRCore/#attr_set_tiledesc)

### [attr\_timecode\_t ¶](#attr_timecode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L113)

```
attr_timecode_t :: struct #packed {
	time_and_flags: u32,
	user_data:      u32,
}
```

 

@brief Struct to hold timecode information.




##### Related Procedures With Parameters

* [attr\_get\_timecode](/vendor/OpenEXRCore/#attr_get_timecode)
* [attr\_set\_timecode](/vendor/OpenEXRCore/#attr_set_timecode)

### [attr\_v2d\_t ¶](#attr_v2d_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L125)

```
attr_v2d_t :: distinct [2]f64
```

 

@brief Struct to hold a 2-element 64-bit float vector.




##### Related Procedures With Parameters

* [attr\_get\_v2d](/vendor/OpenEXRCore/#attr_get_v2d)
* [attr\_set\_v2d](/vendor/OpenEXRCore/#attr_set_v2d)

### [attr\_v2f\_t ¶](#attr_v2f_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L122)

```
attr_v2f_t :: distinct [2]f32
```

 

@brief Struct to hold a 2-element 32-bit float vector.




##### Related Procedures With Parameters

* [attr\_get\_v2f](/vendor/OpenEXRCore/#attr_get_v2f)
* [attr\_set\_v2f](/vendor/OpenEXRCore/#attr_set_v2f)
* [get\_screen\_window\_center](/vendor/OpenEXRCore/#get_screen_window_center)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [set\_screen\_window\_center](/vendor/OpenEXRCore/#set_screen_window_center)

### [attr\_v2i\_t ¶](#attr_v2i_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L119)

```
attr_v2i_t :: distinct [2]i32
```

 

@brief Struct to hold a 2-element integer vector.




##### Related Procedures With Parameters

* [attr\_get\_v2i](/vendor/OpenEXRCore/#attr_get_v2i)
* [attr\_set\_v2i](/vendor/OpenEXRCore/#attr_set_v2i)

### [attr\_v3d\_t ¶](#attr_v3d_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L134)

```
attr_v3d_t :: distinct [3]f64
```

 

@brief Struct to hold a 3-element 64-bit float vector.




##### Related Procedures With Parameters

* [attr\_get\_v3d](/vendor/OpenEXRCore/#attr_get_v3d)
* [attr\_set\_v3d](/vendor/OpenEXRCore/#attr_set_v3d)

### [attr\_v3f\_t ¶](#attr_v3f_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L131)

```
attr_v3f_t :: distinct [3]f32
```

 

@brief Struct to hold a 3-element 32-bit float vector.




##### Related Procedures With Parameters

* [attr\_get\_v3f](/vendor/OpenEXRCore/#attr_get_v3f)
* [attr\_set\_v3f](/vendor/OpenEXRCore/#attr_set_v3f)

### [attr\_v3i\_t ¶](#attr_v3i_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L128)

```
attr_v3i_t :: distinct [3]i32
```

 

@brief Struct to hold a 3-element integer vector.




##### Related Procedures With Parameters

* [attr\_get\_v3i](/vendor/OpenEXRCore/#attr_get_v3i)
* [attr\_set\_v3i](/vendor/OpenEXRCore/#attr_set_v3i)

### [attribute\_t ¶](#attribute_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L341)

```
attribute_t :: struct {
	// Name of the attribute. 
	name:             cstring,
	// String type name of the attribute. 
	type_name:        cstring,
	// Length of name string (short flag is 31 max, long allows 255). 
	name_length:      u8,
	// Length of type string (short flag is 31 max, long allows 255). 
	type_name_length: u8,
	pad:              [2]u8,
	// Enum of the attribute type. 
	type:             attribute_type_t,
	// Union of pointers of different types that can be used to type
	// 	 * pun to an appropriate type for builtins. Do note that while
	// 	 * this looks like a big thing, it is only the size of a single
	// 	 * pointer.  These are all pointers into some other data block
	// 	 * storing the value you want, with the exception of the pod types
	// 	 * which are just put in place (i.e. small value optimization).
	// 	 *
	// 	 * The attribute type \c type should directly correlate to one
	// 	 * of these entries.
	using _:          struct #raw_union {
		// NB: not pointers for POD types
		uc:             u8,
		d:              f64,
		f:              f32,
		i:              i32,
		box2i:          ^attr_box2i_t,
		box2f:          ^attr_box2f_t,
		chlist:         ^attr_chlist_t,
		chromaticities: ^attr_chromaticities_t,
		keycode:        ^attr_keycode_t,
		floatvector:    ^attr_float_vector_t,
		m33f:           ^attr_m33f_t,
		m33d:           ^attr_m33d_t,
		m44f:           ^attr_m44f_t,
		m44d:           ^attr_m44d_t,
		preview:        ^attr_preview_t,
		rational:       ^attr_rational_t,
		string:         ^attr_string_t,
		stringvector:   ^attr_string_vector_t,
		tiledesc:       ^attr_tiledesc_t,
		timecode:       ^attr_timecode_t,
		v2i:            ^attr_v2i_t,
		v2f:            ^attr_v2f_t,
		v2d:            ^attr_v2d_t,
		v3i:            ^attr_v3i_t,
		v3f:            ^attr_v3f_t,
		v3d:            ^attr_v3d_t,
		opaque:         ^attr_opaquedata_t,
		rawptr:         ^u8,
	},
}
```

 

@brief Storage, name and type information for an attribute.
\*
\* Attributes (metadata) for the file cause a surprising amount of
\* overhead. It is not uncommon for a production-grade EXR to have
\* many attributes. As such, the attribute struct is designed in a
\* slightly more complicated manner. It is optimized to have the
\* storage for that attribute: the struct itself, the name, the type,
\* and the data all allocated as one block. Further, the type and
\* standard names may use a static string to avoid allocating space
\* for those as necessary with the pointers pointing to static strings
\* (not to be freed). Finally, small values are optimized for.

### [attribute\_type\_t ¶](#attribute_type_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L295)

```
attribute_type_t :: enum i32 {
	UNKNOWN          = 0, // Type indicating an error or uninitialized attribute.
	BOX2I,                // Integer region definition. @see attr_box2i_t.
	BOX2F,                // Float region definition. @see attr_box2f_t.
	CHLIST,               // Definition of channels in file @see chlist_entry.
	CHROMATICITIES,       // Values to specify color space of colors in file @see attr_chromaticities_t.
	COMPRESSION,          // ``u8`` declaring compression present.
	DOUBLE,               // Double precision floating point number.
	ENVMAP,               // ``u8`` declaring environment map type.
	FLOAT,                // Normal (4 byte) precision floating point number.
	FLOAT_VECTOR,         // List of normal (4 byte) precision floating point numbers.
	INT,                  // 32-bit signed integer value.
	KEYCODE,              // Struct recording keycode @see attr_keycode_t.
	LINEORDER,            // ``u8`` declaring scanline ordering.
	M33F,                 // 9 32-bit floats representing a 3x3 matrix.
	M33D,                 // 9 64-bit floats representing a 3x3 matrix.
	M44F,                 // 16 32-bit floats representing a 4x4 matrix.
	M44D,                 // 16 64-bit floats representing a 4x4 matrix.
	PREVIEW,              // 2 ``unsigned ints`` followed by 4 x w x h ``u8`` image.
	RATIONAL,             // \c int followed by ``unsigned int``
	STRING,               // ``int`` (length) followed by char string data.
	STRING_VECTOR,        // 0 or more text strings (int + string). number is based on attribute size.
	TILEDESC,             // 2 ``unsigned ints`` ``xSize``, ``ySize`` followed by mode.
	TIMECODE,             // 2 ``unsigned ints`` time and flags, user data.
	V2I,                  // Pair of 32-bit integers.
	V2F,                  // Pair of 32-bit floats.
	V2D,                  // Pair of 64-bit floats.
	V3I,                  // Set of 3 32-bit integers.
	V3F,                  // Set of 3 32-bit floats.
	V3D,                  // Set of 3 64-bit floats.
	DEEP_IMAGE_STATE,     // ``uint8_t`` declaring deep image state.
	OPAQUE,               // User/unknown provided type.
}
```

 

@brief Built-in/native attribute type enum.
\*
\* This will enable us to do a tagged type struct to generically store
\* attributes.




##### Related Procedures With Parameters

* [attr\_declare](/vendor/OpenEXRCore/#attr_declare)

### [chunk\_info\_t ¶](#chunk_info_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L12)

```
chunk_info_t :: struct {
	idx:                      i32,
	// For tiles, this is the tilex; for scans it is the x. 
	start_x:                  i32,
	// For tiles, this is the tiley; for scans it is the scanline y. 
	start_y:                  i32,
	height:                   i32,
	// *< For this chunk. 
	width:                    i32,
	// *< For this chunk. 
	level_x:                  u8,
	// *< For tiled files. 
	level_y:                  u8,
	// *< For tiled files. 
	type:                     u8,
	compression:              u8,
	data_offset:              u64,
	packed_size:              u64,
	unpacked_size:            u64,
	sample_count_data_offset: u64,
	sample_count_table_size:  u64,
}
```

 

\*
\* Struct describing raw data information about a chunk.
\*
\* A chunk is the generic term for a pixel data block in an EXR file,
\* as described in the OpenEXR File Layout documentation. This is
\* common between all different forms of data that can be stored.




##### Related Procedures With Parameters

* [chunk\_default\_initialize](/vendor/OpenEXRCore/#chunk_default_initialize)
* [decoding\_initialize](/vendor/OpenEXRCore/#decoding_initialize)
* [decoding\_update](/vendor/OpenEXRCore/#decoding_update)
* [encoding\_initialize](/vendor/OpenEXRCore/#encoding_initialize)
* [encoding\_update](/vendor/OpenEXRCore/#encoding_update)
* [read\_chunk](/vendor/OpenEXRCore/#read_chunk)
* [read\_deep\_chunk](/vendor/OpenEXRCore/#read_deep_chunk)
* [read\_scanline\_chunk\_info](/vendor/OpenEXRCore/#read_scanline_chunk_info)
* [read\_tile\_chunk\_info](/vendor/OpenEXRCore/#read_tile_chunk_info)
* [write\_scanline\_chunk\_info](/vendor/OpenEXRCore/#write_scanline_chunk_info)
* [write\_tile\_chunk\_info](/vendor/OpenEXRCore/#write_tile_chunk_info)

### [coding\_channel\_info\_t ¶](#coding_channel_info_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_coding.odin#L29)

```
coding_channel_info_t :: struct {
	// Channel name.
	// 	 *
	// 	 * This is provided as a convenient reference. Do not free, this
	// 	 * refers to the internal data structure in the context.
	channel_name:           cstring,
	// Number of lines for this channel in this chunk.
	// 	 *
	// 	 * May be 0 or less than overall image height based on sampling
	// 	 * (i.e. when in 4:2:0 type sampling)
	height:                 i32,
	// Width in pixel count.
	// 	 *
	// 	 * May be 0 or less than overall image width based on sampling
	// 	 * (i.e. 4:2:2 will have some channels have fewer values).
	width:                  i32,
	// Horizontal subsampling information. 
	x_samples:              i32,
	// Vertical subsampling information. 
	y_samples:              i32,
	// Linear flag from channel definition (used by b44). 
	p_linear:               u8,
	// How many bytes per pixel this channel consumes (2 for float16,
	// 	 * 4 for float32/uint32).
	bytes_per_element:      i8,
	// Small form of exr_pixel_type_t enum (EXR_PIXEL_UINT/HALF/FLOAT). 
	data_type:              u16,
	// How many bytes per pixel the input is or output should be
	// 	 * (2 for float16, 4 for float32/uint32). Defaults to same
	// 	 * size as input.
	user_bytes_per_element: i16,
	// Small form of exr_pixel_type_t enum
	// 	 * (EXR_PIXEL_UINT/HALF/FLOAT). Defaults to same type as input.
	user_data_type:         u16,
	user_pixel_stride:      i32,
	// When \c lines > 1 for a chunk, this is the increment used to get
	// 	 * from beginning of line to beginning of next line.
	// 	 *
	// 	 * This is in bytes. Must be specified when the decode pointer is
	// 	 * specified (and always for encode).
	user_line_stride:       i32,
	// This data member has different requirements reading vs
	// 	 * writing. When reading, if this is left as `NULL`, the channel
	// 	 * will be skipped during read and not filled in.  During a write
	// 	 * operation, this pointer is considered const and not
	// 	 * modified. To make this more clear, a union is used here.
	using _:                struct #raw_union {
		decode_to_ptr:   ^u8,
		encode_from_ptr: ^u8,
	},
}
```

 

@brief Struct for negotiating buffers when decoding/encoding
\* chunks of data.
\*
\* This is generic and meant to negotiate exr data bi-directionally,
\* in that the same structure is used for both decoding and encoding
\* chunks for read and write, respectively.
\*
\* The first half of the structure will be filled by the library, and
\* the caller is expected to fill the second half appropriately.

### [compression\_t ¶](#compression_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L6)

```
compression_t :: enum i32 {
	NONE  = 0, 
	RLE   = 1, 
	ZIPS  = 2, 
	ZIP   = 3, 
	PIZ   = 4, 
	PXR24 = 5, 
	B44   = 6, 
	B44A  = 7, 
	DWAA  = 8, 
	DWAB  = 9, 
}
```

 

Enum declaring allowed values for \c u8 value stored in built-in compression type.




##### Related Procedures With Parameters

* [attr\_get\_compression](/vendor/OpenEXRCore/#attr_get_compression)
* [attr\_set\_compression](/vendor/OpenEXRCore/#attr_set_compression)
* [compression\_lines\_per\_chunk](/vendor/OpenEXRCore/#compression_lines_per_chunk)
* [get\_compression](/vendor/OpenEXRCore/#get_compression)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [initialize\_required\_attr\_simple](/vendor/OpenEXRCore/#initialize_required_attr_simple)
* [set\_compression](/vendor/OpenEXRCore/#set_compression)

### [const\_context\_t ¶](#const_context_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L8)

```
const_context_t :: context_t
```

##### Related Procedures With Parameters

* [add\_channel](/vendor/OpenEXRCore/#add_channel)
* [add\_part](/vendor/OpenEXRCore/#add_part)
* [attr\_declare](/vendor/OpenEXRCore/#attr_declare)
* [attr\_declare\_by\_type](/vendor/OpenEXRCore/#attr_declare_by_type)
* [attr\_get\_box2f](/vendor/OpenEXRCore/#attr_get_box2f)
* [attr\_get\_box2i](/vendor/OpenEXRCore/#attr_get_box2i)
* [attr\_get\_channels](/vendor/OpenEXRCore/#attr_get_channels)
* [attr\_get\_chromaticities](/vendor/OpenEXRCore/#attr_get_chromaticities)
* [attr\_get\_compression](/vendor/OpenEXRCore/#attr_get_compression)
* [attr\_get\_double](/vendor/OpenEXRCore/#attr_get_double)
* [attr\_get\_envmap](/vendor/OpenEXRCore/#attr_get_envmap)
* [attr\_get\_float](/vendor/OpenEXRCore/#attr_get_float)
* [attr\_get\_float\_vector](/vendor/OpenEXRCore/#attr_get_float_vector)
* [attr\_get\_int](/vendor/OpenEXRCore/#attr_get_int)
* [attr\_get\_keycode](/vendor/OpenEXRCore/#attr_get_keycode)
* [attr\_get\_lineorder](/vendor/OpenEXRCore/#attr_get_lineorder)
* [attr\_get\_m33d](/vendor/OpenEXRCore/#attr_get_m33d)
* [attr\_get\_m33f](/vendor/OpenEXRCore/#attr_get_m33f)
* [attr\_get\_m44d](/vendor/OpenEXRCore/#attr_get_m44d)
* [attr\_get\_m44f](/vendor/OpenEXRCore/#attr_get_m44f)
* [attr\_get\_preview](/vendor/OpenEXRCore/#attr_get_preview)
* [attr\_get\_rational](/vendor/OpenEXRCore/#attr_get_rational)
* [attr\_get\_string](/vendor/OpenEXRCore/#attr_get_string)
* [attr\_get\_string\_vector](/vendor/OpenEXRCore/#attr_get_string_vector)
* [attr\_get\_tiledesc](/vendor/OpenEXRCore/#attr_get_tiledesc)
* [attr\_get\_timecode](/vendor/OpenEXRCore/#attr_get_timecode)
* [attr\_get\_user](/vendor/OpenEXRCore/#attr_get_user)
* [attr\_get\_v2d](/vendor/OpenEXRCore/#attr_get_v2d)
* [attr\_get\_v2f](/vendor/OpenEXRCore/#attr_get_v2f)
* [attr\_get\_v2i](/vendor/OpenEXRCore/#attr_get_v2i)
* [attr\_get\_v3d](/vendor/OpenEXRCore/#attr_get_v3d)
* [attr\_get\_v3f](/vendor/OpenEXRCore/#attr_get_v3f)
* [attr\_get\_v3i](/vendor/OpenEXRCore/#attr_get_v3i)
* [attr\_set\_box2f](/vendor/OpenEXRCore/#attr_set_box2f)
* [attr\_set\_box2i](/vendor/OpenEXRCore/#attr_set_box2i)
* [attr\_set\_channels](/vendor/OpenEXRCore/#attr_set_channels)
* [attr\_set\_chromaticities](/vendor/OpenEXRCore/#attr_set_chromaticities)
* [attr\_set\_compression](/vendor/OpenEXRCore/#attr_set_compression)
* [attr\_set\_double](/vendor/OpenEXRCore/#attr_set_double)
* [attr\_set\_envmap](/vendor/OpenEXRCore/#attr_set_envmap)
* [attr\_set\_float](/vendor/OpenEXRCore/#attr_set_float)
* [attr\_set\_float\_vector](/vendor/OpenEXRCore/#attr_set_float_vector)
* [attr\_set\_int](/vendor/OpenEXRCore/#attr_set_int)
* [attr\_set\_keycode](/vendor/OpenEXRCore/#attr_set_keycode)
* [attr\_set\_lineorder](/vendor/OpenEXRCore/#attr_set_lineorder)
* [attr\_set\_m33d](/vendor/OpenEXRCore/#attr_set_m33d)
* [attr\_set\_m33f](/vendor/OpenEXRCore/#attr_set_m33f)
* [attr\_set\_m44d](/vendor/OpenEXRCore/#attr_set_m44d)
* [attr\_set\_m44f](/vendor/OpenEXRCore/#attr_set_m44f)
* [attr\_set\_preview](/vendor/OpenEXRCore/#attr_set_preview)
* [attr\_set\_rational](/vendor/OpenEXRCore/#attr_set_rational)
* [attr\_set\_string](/vendor/OpenEXRCore/#attr_set_string)
* [attr\_set\_string\_vector](/vendor/OpenEXRCore/#attr_set_string_vector)
* [attr\_set\_tiledesc](/vendor/OpenEXRCore/#attr_set_tiledesc)
* [attr\_set\_timecode](/vendor/OpenEXRCore/#attr_set_timecode)
* [attr\_set\_user](/vendor/OpenEXRCore/#attr_set_user)
* [attr\_set\_v2d](/vendor/OpenEXRCore/#attr_set_v2d)
* [attr\_set\_v2f](/vendor/OpenEXRCore/#attr_set_v2f)
* [attr\_set\_v2i](/vendor/OpenEXRCore/#attr_set_v2i)
* [attr\_set\_v3d](/vendor/OpenEXRCore/#attr_set_v3d)
* [attr\_set\_v3f](/vendor/OpenEXRCore/#attr_set_v3f)
* [attr\_set\_v3i](/vendor/OpenEXRCore/#attr_set_v3i)
* [chunk\_default\_initialize](/vendor/OpenEXRCore/#chunk_default_initialize)
* [compress\_buffer](/vendor/OpenEXRCore/#compress_buffer)
* [copy\_unset\_attributes](/vendor/OpenEXRCore/#copy_unset_attributes)
* [decoding\_choose\_default\_routines](/vendor/OpenEXRCore/#decoding_choose_default_routines)
* [decoding\_destroy](/vendor/OpenEXRCore/#decoding_destroy)
* [decoding\_initialize](/vendor/OpenEXRCore/#decoding_initialize)
* [decoding\_run](/vendor/OpenEXRCore/#decoding_run)
* [decoding\_update](/vendor/OpenEXRCore/#decoding_update)
* [encoding\_choose\_default\_routines](/vendor/OpenEXRCore/#encoding_choose_default_routines)
* [encoding\_destroy](/vendor/OpenEXRCore/#encoding_destroy)
* [encoding\_initialize](/vendor/OpenEXRCore/#encoding_initialize)
* [encoding\_run](/vendor/OpenEXRCore/#encoding_run)
* [encoding\_update](/vendor/OpenEXRCore/#encoding_update)
* [exr\_validate\_chunk\_table](/vendor/OpenEXRCore/#exr_validate_chunk_table)
* [finish](/vendor/OpenEXRCore/#finish)
* [get\_attribute\_by\_index](/vendor/OpenEXRCore/#get_attribute_by_index)
* [get\_attribute\_by\_name](/vendor/OpenEXRCore/#get_attribute_by_name)
* [get\_attribute\_count](/vendor/OpenEXRCore/#get_attribute_count)
* [get\_attribute\_list](/vendor/OpenEXRCore/#get_attribute_list)
* [get\_channels](/vendor/OpenEXRCore/#get_channels)
* [get\_chunk\_count](/vendor/OpenEXRCore/#get_chunk_count)
* [get\_chunk\_table](/vendor/OpenEXRCore/#get_chunk_table)
* [get\_chunk\_table\_offset](/vendor/OpenEXRCore/#get_chunk_table_offset)
* [get\_chunk\_unpacked\_size](/vendor/OpenEXRCore/#get_chunk_unpacked_size)
* [get\_compression](/vendor/OpenEXRCore/#get_compression)
* [get\_count](/vendor/OpenEXRCore/#get_count)
* [get\_data\_window](/vendor/OpenEXRCore/#get_data_window)
* [get\_display\_window](/vendor/OpenEXRCore/#get_display_window)
* [get\_dwa\_compression\_level](/vendor/OpenEXRCore/#get_dwa_compression_level)
* [get\_file\_name](/vendor/OpenEXRCore/#get_file_name)
* [get\_file\_version\_and\_flags](/vendor/OpenEXRCore/#get_file_version_and_flags)
* [get\_level\_sizes](/vendor/OpenEXRCore/#get_level_sizes)
* [get\_lineorder](/vendor/OpenEXRCore/#get_lineorder)
* [get\_name](/vendor/OpenEXRCore/#get_name)
* [get\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#get_pixel_aspect_ratio)
* [get\_scanlines\_per\_chunk](/vendor/OpenEXRCore/#get_scanlines_per_chunk)
* [get\_screen\_window\_center](/vendor/OpenEXRCore/#get_screen_window_center)
* [get\_screen\_window\_width](/vendor/OpenEXRCore/#get_screen_window_width)
* [get\_storage](/vendor/OpenEXRCore/#get_storage)
* [get\_tile\_counts](/vendor/OpenEXRCore/#get_tile_counts)
* [get\_tile\_descriptor](/vendor/OpenEXRCore/#get_tile_descriptor)
* [get\_tile\_levels](/vendor/OpenEXRCore/#get_tile_levels)
* [get\_tile\_sizes](/vendor/OpenEXRCore/#get_tile_sizes)
* [get\_user\_data](/vendor/OpenEXRCore/#get_user_data)
* [get\_version](/vendor/OpenEXRCore/#get_version)
* [get\_zip\_compression\_level](/vendor/OpenEXRCore/#get_zip_compression_level)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [initialize\_required\_attr\_simple](/vendor/OpenEXRCore/#initialize_required_attr_simple)
* [print\_context\_info](/vendor/OpenEXRCore/#print_context_info)
* [read\_chunk](/vendor/OpenEXRCore/#read_chunk)
* [read\_deep\_chunk](/vendor/OpenEXRCore/#read_deep_chunk)
* [read\_scanline\_chunk\_info](/vendor/OpenEXRCore/#read_scanline_chunk_info)
* [read\_tile\_chunk\_info](/vendor/OpenEXRCore/#read_tile_chunk_info)
* [register\_attr\_type\_handler](/vendor/OpenEXRCore/#register_attr_type_handler)
* [set\_channels](/vendor/OpenEXRCore/#set_channels)
* [set\_chunk\_count](/vendor/OpenEXRCore/#set_chunk_count)
* [set\_compression](/vendor/OpenEXRCore/#set_compression)
* [set\_data\_window](/vendor/OpenEXRCore/#set_data_window)
* [set\_display\_window](/vendor/OpenEXRCore/#set_display_window)
* [set\_dwa\_compression\_level](/vendor/OpenEXRCore/#set_dwa_compression_level)
* [set\_lineorder](/vendor/OpenEXRCore/#set_lineorder)
* [set\_longname\_support](/vendor/OpenEXRCore/#set_longname_support)
* [set\_name](/vendor/OpenEXRCore/#set_name)
* [set\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#set_pixel_aspect_ratio)
* [set\_screen\_window\_center](/vendor/OpenEXRCore/#set_screen_window_center)
* [set\_screen\_window\_width](/vendor/OpenEXRCore/#set_screen_window_width)
* [set\_tile\_descriptor](/vendor/OpenEXRCore/#set_tile_descriptor)
* [set\_version](/vendor/OpenEXRCore/#set_version)
* [set\_zip\_compression\_level](/vendor/OpenEXRCore/#set_zip_compression_level)
* [start\_inplace\_header\_update](/vendor/OpenEXRCore/#start_inplace_header_update)
* [start\_read](/vendor/OpenEXRCore/#start_read)
* [start\_temporary\_context](/vendor/OpenEXRCore/#start_temporary_context)
* [start\_write](/vendor/OpenEXRCore/#start_write)
* [uncompress\_buffer](/vendor/OpenEXRCore/#uncompress_buffer)
* [write\_deep\_scanline\_chunk](/vendor/OpenEXRCore/#write_deep_scanline_chunk)
* [write\_deep\_tile\_chunk](/vendor/OpenEXRCore/#write_deep_tile_chunk)
* [write\_header](/vendor/OpenEXRCore/#write_header)
* [write\_scanline\_chunk](/vendor/OpenEXRCore/#write_scanline_chunk)
* [write\_scanline\_chunk\_info](/vendor/OpenEXRCore/#write_scanline_chunk_info)
* [write\_tile\_chunk](/vendor/OpenEXRCore/#write_tile_chunk)
* [write\_tile\_chunk\_info](/vendor/OpenEXRCore/#write_tile_chunk_info)

### [context\_initializer\_t ¶](#context_initializer_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L148)

```
context_initializer_t :: struct {
	// @brief Size member to tag initializer for version stability.
	// 	 *
	// 	 * This should be initialized to the size of the current
	// 	 * structure. This allows EXR to add functions or other
	// 	 * initializers in the future, and retain version compatibility
	size:             uint,
	// @brief Error callback function pointer
	// 	 *
	// 	 * The error callback is allowed to be `NULL`, and will use a
	// 	 * default print which outputs to \c stderr.
	// 	 *
	// 	 * @sa exr_error_handler_cb_t
	error_handler_fn: error_handler_cb_t,
	// Custom allocator, if `NULL`, will use malloc. @sa memory_allocation_func_t 
	alloc_fn:         memory_allocation_func_t,
	// Custom deallocator, if `NULL`, will use free. @sa memory_free_func_t 
	free_fn:          memory_free_func_t,
	// Blind data passed to custom read, size, write, destroy
	// 	 * functions below. Up to user to manage this pointer.
	user_data:        rawptr,
	// @brief Custom read routine.
	// 	 *
	// 	 * This is only used during read or update contexts. If this is
	// 	 * provided, it is expected that the caller has previously made
	// 	 * the stream available, and placed whatever stream/file data
	// 	 * into \c user_data above.
	// 	 *
	// 	 * If this is `NULL`, and the context requested is for reading an
	// 	 * exr file, an internal implementation is provided for reading
	// 	 * from normal filesystem files, and the filename provided is
	// 	 * attempted to be opened as such.
	// 	 *
	// 	 * Expected to be `NULL` for a write-only operation, but is ignored
	// 	 * if it is provided.
	// 	 *
	// 	 * For update contexts, both read and write functions must be
	// 	 * provided if either is.
	// 	 *
	// 	 * @sa exr_read_func_ptr_t
	read_fn:          read_func_ptr_t,
	// @brief Custom size query routine.
	// 	 *
	// 	 * Used to provide validation when reading header values. If this
	// 	 * is not provided, but a custom read routine is provided, this
	// 	 * will disable some of the validation checks when parsing the
	// 	 * image header.
	// 	 *
	// 	 * Expected to be `NULL` for a write-only operation, but is ignored
	// 	 * if it is provided.
	// 	 *
	// 	 * @sa exr_query_size_func_ptr_t
	size_fn:          query_size_func_ptr_t,
	// @brief Custom write routine.
	// 	 *
	// 	 * This is only used during write or update contexts. If this is
	// 	 * provided, it is expected that the caller has previously made
	// 	 * the stream available, and placed whatever stream/file data
	// 	 * into \c user_data above.
	// 	 *
	// 	 * If this is `NULL`, and the context requested is for writing an
	// 	 * exr file, an internal implementation is provided for reading
	// 	 * from normal filesystem files, and the filename provided is
	// 	 * attempted to be opened as such.
	// 	 *
	// 	 * For update contexts, both read and write functions must be
	// 	 * provided if either is.
	// 	 *
	// 	 * @sa exr_write_func_ptr_t
	write_fn:         write_func_ptr_t,
	// @brief Optional function to destroy the user data block of a custom stream.
	// 	 *
	// 	 * Allows one to free any user allocated data, and close any handles.
	// 	 *
	// 	 * @sa exr_destroy_stream_func_ptr_t
	// 	 * 
	destroy_fn:       destroy_stream_func_ptr_t,
	// Initialize a field specifying what the maximum image width
	// 	 * allowed by the context is. See exr_set_default_maximum_image_size() to
	// 	 * understand how this interacts with global defaults.
	max_image_width:  i32,
	// Initialize a field specifying what the maximum image height
	// 	 * allowed by the context is. See exr_set_default_maximum_image_size() to
	// 	 * understand how this interacts with global defaults.
	max_image_height: i32,
	// Initialize a field specifying what the maximum tile width
	// 	 * allowed by the context is. See exr_set_default_maximum_tile_size() to
	// 	 * understand how this interacts with global defaults.
	max_tile_width:   i32,
	// Initialize a field specifying what the maximum tile height
	// 	 * allowed by the context is. See exr_set_default_maximum_tile_size() to
	// 	 * understand how this interacts with global defaults.
	max_tile_height:  i32,
	// Initialize a field specifying what the default zip compression level should be
	// 	 * for this context. See exr_set_default_zip_compresion_level() to
	// 	 * set it for all contexts.
	zip_level:        i32,
	// Initialize the default dwa compression quality. See
	// 	 * exr_set_default_dwa_compression_quality() to set the default
	// 	 * for all contexts.
	dwa_quality:      f32,
	// Initialize with a bitwise or of the various context flags
	flags:            i32,
	pad:              [4]u8,
}
```

 

@brief Struct used to pass function pointers into the context
\* initialization routines.
\*
\* This partly exists to avoid the chicken and egg issue around
\* creating the storage needed for the context on systems which want
\* to override the malloc/free routines.
\*
\* However, it also serves to make a tidier/simpler set of functions
\* to create and start processing exr files.
\*
\* The size member is required for version portability.
\*
\* It can be initialized using \c EXR\_DEFAULT\_CONTEXT\_INITIALIZER.
\*
\* \code{.c}
\* exr\_context\_initializer\_t myctxtinit = DEFAULT\_CONTEXT\_INITIALIZER;
\* myctxtinit.error\_cb = &my\_super\_cool\_error\_callback\_function;
\* ...
\* \endcode
\*




##### Related Procedures With Parameters

* [start\_inplace\_header\_update](/vendor/OpenEXRCore/#start_inplace_header_update)
* [start\_read](/vendor/OpenEXRCore/#start_read)
* [start\_temporary\_context](/vendor/OpenEXRCore/#start_temporary_context)
* [start\_write](/vendor/OpenEXRCore/#start_write)
* [test\_file\_header](/vendor/OpenEXRCore/#test_file_header)

##### Related Constants

* [DEFAULT\_CONTEXT\_INITIALIZER](/vendor/OpenEXRCore/#DEFAULT_CONTEXT_INITIALIZER)

### [context\_t ¶](#context_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L7)

```
context_t :: distinct rawptr
```

##### Related Procedures With Parameters

* [add\_channel](/vendor/OpenEXRCore/#add_channel)
* [add\_part](/vendor/OpenEXRCore/#add_part)
* [attr\_declare](/vendor/OpenEXRCore/#attr_declare)
* [attr\_declare\_by\_type](/vendor/OpenEXRCore/#attr_declare_by_type)
* [attr\_get\_box2f](/vendor/OpenEXRCore/#attr_get_box2f)
* [attr\_get\_box2i](/vendor/OpenEXRCore/#attr_get_box2i)
* [attr\_get\_channels](/vendor/OpenEXRCore/#attr_get_channels)
* [attr\_get\_chromaticities](/vendor/OpenEXRCore/#attr_get_chromaticities)
* [attr\_get\_compression](/vendor/OpenEXRCore/#attr_get_compression)
* [attr\_get\_double](/vendor/OpenEXRCore/#attr_get_double)
* [attr\_get\_envmap](/vendor/OpenEXRCore/#attr_get_envmap)
* [attr\_get\_float](/vendor/OpenEXRCore/#attr_get_float)
* [attr\_get\_float\_vector](/vendor/OpenEXRCore/#attr_get_float_vector)
* [attr\_get\_int](/vendor/OpenEXRCore/#attr_get_int)
* [attr\_get\_keycode](/vendor/OpenEXRCore/#attr_get_keycode)
* [attr\_get\_lineorder](/vendor/OpenEXRCore/#attr_get_lineorder)
* [attr\_get\_m33d](/vendor/OpenEXRCore/#attr_get_m33d)
* [attr\_get\_m33f](/vendor/OpenEXRCore/#attr_get_m33f)
* [attr\_get\_m44d](/vendor/OpenEXRCore/#attr_get_m44d)
* [attr\_get\_m44f](/vendor/OpenEXRCore/#attr_get_m44f)
* [attr\_get\_preview](/vendor/OpenEXRCore/#attr_get_preview)
* [attr\_get\_rational](/vendor/OpenEXRCore/#attr_get_rational)
* [attr\_get\_string](/vendor/OpenEXRCore/#attr_get_string)
* [attr\_get\_string\_vector](/vendor/OpenEXRCore/#attr_get_string_vector)
* [attr\_get\_tiledesc](/vendor/OpenEXRCore/#attr_get_tiledesc)
* [attr\_get\_timecode](/vendor/OpenEXRCore/#attr_get_timecode)
* [attr\_get\_user](/vendor/OpenEXRCore/#attr_get_user)
* [attr\_get\_v2d](/vendor/OpenEXRCore/#attr_get_v2d)
* [attr\_get\_v2f](/vendor/OpenEXRCore/#attr_get_v2f)
* [attr\_get\_v2i](/vendor/OpenEXRCore/#attr_get_v2i)
* [attr\_get\_v3d](/vendor/OpenEXRCore/#attr_get_v3d)
* [attr\_get\_v3f](/vendor/OpenEXRCore/#attr_get_v3f)
* [attr\_get\_v3i](/vendor/OpenEXRCore/#attr_get_v3i)
* [attr\_set\_box2f](/vendor/OpenEXRCore/#attr_set_box2f)
* [attr\_set\_box2i](/vendor/OpenEXRCore/#attr_set_box2i)
* [attr\_set\_channels](/vendor/OpenEXRCore/#attr_set_channels)
* [attr\_set\_chromaticities](/vendor/OpenEXRCore/#attr_set_chromaticities)
* [attr\_set\_compression](/vendor/OpenEXRCore/#attr_set_compression)
* [attr\_set\_double](/vendor/OpenEXRCore/#attr_set_double)
* [attr\_set\_envmap](/vendor/OpenEXRCore/#attr_set_envmap)
* [attr\_set\_float](/vendor/OpenEXRCore/#attr_set_float)
* [attr\_set\_float\_vector](/vendor/OpenEXRCore/#attr_set_float_vector)
* [attr\_set\_int](/vendor/OpenEXRCore/#attr_set_int)
* [attr\_set\_keycode](/vendor/OpenEXRCore/#attr_set_keycode)
* [attr\_set\_lineorder](/vendor/OpenEXRCore/#attr_set_lineorder)
* [attr\_set\_m33d](/vendor/OpenEXRCore/#attr_set_m33d)
* [attr\_set\_m33f](/vendor/OpenEXRCore/#attr_set_m33f)
* [attr\_set\_m44d](/vendor/OpenEXRCore/#attr_set_m44d)
* [attr\_set\_m44f](/vendor/OpenEXRCore/#attr_set_m44f)
* [attr\_set\_preview](/vendor/OpenEXRCore/#attr_set_preview)
* [attr\_set\_rational](/vendor/OpenEXRCore/#attr_set_rational)
* [attr\_set\_string](/vendor/OpenEXRCore/#attr_set_string)
* [attr\_set\_string\_vector](/vendor/OpenEXRCore/#attr_set_string_vector)
* [attr\_set\_tiledesc](/vendor/OpenEXRCore/#attr_set_tiledesc)
* [attr\_set\_timecode](/vendor/OpenEXRCore/#attr_set_timecode)
* [attr\_set\_user](/vendor/OpenEXRCore/#attr_set_user)
* [attr\_set\_v2d](/vendor/OpenEXRCore/#attr_set_v2d)
* [attr\_set\_v2f](/vendor/OpenEXRCore/#attr_set_v2f)
* [attr\_set\_v2i](/vendor/OpenEXRCore/#attr_set_v2i)
* [attr\_set\_v3d](/vendor/OpenEXRCore/#attr_set_v3d)
* [attr\_set\_v3f](/vendor/OpenEXRCore/#attr_set_v3f)
* [attr\_set\_v3i](/vendor/OpenEXRCore/#attr_set_v3i)
* [chunk\_default\_initialize](/vendor/OpenEXRCore/#chunk_default_initialize)
* [compress\_buffer](/vendor/OpenEXRCore/#compress_buffer)
* [copy\_unset\_attributes](/vendor/OpenEXRCore/#copy_unset_attributes)
* [decoding\_choose\_default\_routines](/vendor/OpenEXRCore/#decoding_choose_default_routines)
* [decoding\_destroy](/vendor/OpenEXRCore/#decoding_destroy)
* [decoding\_initialize](/vendor/OpenEXRCore/#decoding_initialize)
* [decoding\_run](/vendor/OpenEXRCore/#decoding_run)
* [decoding\_update](/vendor/OpenEXRCore/#decoding_update)
* [encoding\_choose\_default\_routines](/vendor/OpenEXRCore/#encoding_choose_default_routines)
* [encoding\_destroy](/vendor/OpenEXRCore/#encoding_destroy)
* [encoding\_initialize](/vendor/OpenEXRCore/#encoding_initialize)
* [encoding\_run](/vendor/OpenEXRCore/#encoding_run)
* [encoding\_update](/vendor/OpenEXRCore/#encoding_update)
* [exr\_validate\_chunk\_table](/vendor/OpenEXRCore/#exr_validate_chunk_table)
* [finish](/vendor/OpenEXRCore/#finish)
* [get\_attribute\_by\_index](/vendor/OpenEXRCore/#get_attribute_by_index)
* [get\_attribute\_by\_name](/vendor/OpenEXRCore/#get_attribute_by_name)
* [get\_attribute\_count](/vendor/OpenEXRCore/#get_attribute_count)
* [get\_attribute\_list](/vendor/OpenEXRCore/#get_attribute_list)
* [get\_channels](/vendor/OpenEXRCore/#get_channels)
* [get\_chunk\_count](/vendor/OpenEXRCore/#get_chunk_count)
* [get\_chunk\_table](/vendor/OpenEXRCore/#get_chunk_table)
* [get\_chunk\_table\_offset](/vendor/OpenEXRCore/#get_chunk_table_offset)
* [get\_chunk\_unpacked\_size](/vendor/OpenEXRCore/#get_chunk_unpacked_size)
* [get\_compression](/vendor/OpenEXRCore/#get_compression)
* [get\_count](/vendor/OpenEXRCore/#get_count)
* [get\_data\_window](/vendor/OpenEXRCore/#get_data_window)
* [get\_display\_window](/vendor/OpenEXRCore/#get_display_window)
* [get\_dwa\_compression\_level](/vendor/OpenEXRCore/#get_dwa_compression_level)
* [get\_file\_name](/vendor/OpenEXRCore/#get_file_name)
* [get\_file\_version\_and\_flags](/vendor/OpenEXRCore/#get_file_version_and_flags)
* [get\_level\_sizes](/vendor/OpenEXRCore/#get_level_sizes)
* [get\_lineorder](/vendor/OpenEXRCore/#get_lineorder)
* [get\_name](/vendor/OpenEXRCore/#get_name)
* [get\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#get_pixel_aspect_ratio)
* [get\_scanlines\_per\_chunk](/vendor/OpenEXRCore/#get_scanlines_per_chunk)
* [get\_screen\_window\_center](/vendor/OpenEXRCore/#get_screen_window_center)
* [get\_screen\_window\_width](/vendor/OpenEXRCore/#get_screen_window_width)
* [get\_storage](/vendor/OpenEXRCore/#get_storage)
* [get\_tile\_counts](/vendor/OpenEXRCore/#get_tile_counts)
* [get\_tile\_descriptor](/vendor/OpenEXRCore/#get_tile_descriptor)
* [get\_tile\_levels](/vendor/OpenEXRCore/#get_tile_levels)
* [get\_tile\_sizes](/vendor/OpenEXRCore/#get_tile_sizes)
* [get\_user\_data](/vendor/OpenEXRCore/#get_user_data)
* [get\_version](/vendor/OpenEXRCore/#get_version)
* [get\_zip\_compression\_level](/vendor/OpenEXRCore/#get_zip_compression_level)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [initialize\_required\_attr\_simple](/vendor/OpenEXRCore/#initialize_required_attr_simple)
* [print\_context\_info](/vendor/OpenEXRCore/#print_context_info)
* [read\_chunk](/vendor/OpenEXRCore/#read_chunk)
* [read\_deep\_chunk](/vendor/OpenEXRCore/#read_deep_chunk)
* [read\_scanline\_chunk\_info](/vendor/OpenEXRCore/#read_scanline_chunk_info)
* [read\_tile\_chunk\_info](/vendor/OpenEXRCore/#read_tile_chunk_info)
* [register\_attr\_type\_handler](/vendor/OpenEXRCore/#register_attr_type_handler)
* [set\_channels](/vendor/OpenEXRCore/#set_channels)
* [set\_chunk\_count](/vendor/OpenEXRCore/#set_chunk_count)
* [set\_compression](/vendor/OpenEXRCore/#set_compression)
* [set\_data\_window](/vendor/OpenEXRCore/#set_data_window)
* [set\_display\_window](/vendor/OpenEXRCore/#set_display_window)
* [set\_dwa\_compression\_level](/vendor/OpenEXRCore/#set_dwa_compression_level)
* [set\_lineorder](/vendor/OpenEXRCore/#set_lineorder)
* [set\_longname\_support](/vendor/OpenEXRCore/#set_longname_support)
* [set\_name](/vendor/OpenEXRCore/#set_name)
* [set\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#set_pixel_aspect_ratio)
* [set\_screen\_window\_center](/vendor/OpenEXRCore/#set_screen_window_center)
* [set\_screen\_window\_width](/vendor/OpenEXRCore/#set_screen_window_width)
* [set\_tile\_descriptor](/vendor/OpenEXRCore/#set_tile_descriptor)
* [set\_version](/vendor/OpenEXRCore/#set_version)
* [set\_zip\_compression\_level](/vendor/OpenEXRCore/#set_zip_compression_level)
* [start\_inplace\_header\_update](/vendor/OpenEXRCore/#start_inplace_header_update)
* [start\_read](/vendor/OpenEXRCore/#start_read)
* [start\_temporary\_context](/vendor/OpenEXRCore/#start_temporary_context)
* [start\_write](/vendor/OpenEXRCore/#start_write)
* [uncompress\_buffer](/vendor/OpenEXRCore/#uncompress_buffer)
* [write\_deep\_scanline\_chunk](/vendor/OpenEXRCore/#write_deep_scanline_chunk)
* [write\_deep\_tile\_chunk](/vendor/OpenEXRCore/#write_deep_tile_chunk)
* [write\_header](/vendor/OpenEXRCore/#write_header)
* [write\_scanline\_chunk](/vendor/OpenEXRCore/#write_scanline_chunk)
* [write\_scanline\_chunk\_info](/vendor/OpenEXRCore/#write_scanline_chunk_info)
* [write\_tile\_chunk](/vendor/OpenEXRCore/#write_tile_chunk)
* [write\_tile\_chunk\_info](/vendor/OpenEXRCore/#write_tile_chunk_info)

### [decode\_pipeline\_t ¶](#decode_pipeline_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L51)

```
decode_pipeline_t :: struct {
	// Used for versioning the decode pipeline in the future.
	// 	 *
	// 	 * \ref EXR_DECODE_PIPELINE_INITIALIZER
	pipe_size:                      uint,
	// The output channel information for this chunk.
	// 	 *
	// 	 * User is expected to fill the channel pointers for the desired
	// 	 * output channels (any that are `NULL` will be skipped) if you are
	// 	 * going to use exr_decoding_choose_default_routines(). If all that is
	// 	 * desired is to read and decompress the data, this can be left
	// 	 * uninitialized.
	// 	 *
	// 	 * Describes the channel information. This information is
	// 	 * allocated dynamically during exr_decoding_initialize().
	channels:                       [^]coding_channel_info_t,
	channel_count:                  i16,
	// Decode flags to control the behavior. 
	decode_flags:                   u16,
	// Copy of the parameters given to the initialize/update for
	// 	 * convenience.
	part_index:                     i32,
	ctx:                            context_t,
	chunk:                          chunk_info_t,
	// How many lines of the chunk to skip filling, assumes the
	// 	 * pointer is at the beginning of data (i.e. includes this
	// 	 * skip so does not need to be adjusted
	user_line_begin_skip:           i32,
	// How many lines of the chunk to ignore at the end, assumes the
	// 	 * output is meant to be N lines smaller
	user_line_end_ignore:           i32,
	// How many bytes were actually decoded when items compressed 
	bytes_decompressed:             u64,
	// Can be used by the user to pass custom context data through
	// 	 * the decode pipeline.
	decoding_user_data:             rawptr,
	// The (compressed) buffer.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	packed_buffer:                  rawptr,
	// Used when re-using the same decode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough.
	packed_alloc_size:              uint,
	// The decompressed buffer (unpacked_size from the chunk block
	// 	 * info), but still packed into storage order, only needed for
	// 	 * compressed files.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	unpacked_buffer:                rawptr,
	// Used when re-using the same decode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough.
	unpacked_alloc_size:            uint,
	// For deep or other non-image data: packed sample table
	// 	 * (compressed, raw on disk representation).
	packed_sample_count_table:      rawptr,
	packed_sample_count_alloc_size: uint,
	// Usable, native sample count table. Depending on the flag set
	// 	 * above, will be decoded to either a cumulative list (n, n+m,
	// 	 * n+m+o, ...), or an individual table (n, m, o, ...). As an
	// 	 * optimization, if the latter individual count table is chosen,
	// 	 * an extra int32_t will be allocated at the end of the table to
	// 	 * contain the total count of samples, so the table will be n+1
	// 	 * samples in size.
	sample_count_table:             [^]i32,
	sample_count_alloc_size:        uint,
	// A scratch buffer of unpacked_size for intermediate results.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	scratch_buffer_1:               rawptr,
	// Used when re-using the same decode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough.
	scratch_alloc_size_1:           uint,
	// Some decompression routines may need a second scratch buffer (zlib).
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	scratch_buffer_2:               rawptr,
	// Used when re-using the same decode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough.
	scratch_alloc_size_2:           uint,
	// Enable a custom allocator for the different buffers (if
	// 	 * decoding on a GPU). If `NULL`, will use the allocator from the
	// 	 * context.
	alloc_fn:                       proc "c" (transcoding_pipeline_buffer_id_t, uint) -> rawptr,
	// Enable a custom allocator for the different buffers (if
	// 	 * decoding on a GPU). If `NULL`, will use the allocator from the
	// 	 * context.
	free_fn:                        proc "c" (transcoding_pipeline_buffer_id_t, rawptr),
	// Function chosen to read chunk data from the context.
	// 	 *
	// 	 * Initialized to a default generic read routine, may be updated
	// 	 * based on channel information when
	// 	 * exr_decoding_choose_default_routines() is called. This is done such that
	// 	 * if the file is uncompressed and the output channel data is
	// 	 * planar and the same type, the read function can read straight
	// 	 * into the output channels, getting closer to a zero-copy
	// 	 * operation. Otherwise a more traditional read, decompress, then
	// 	 * unpack pipeline will be used with a default reader.
	// 	 *
	// 	 * This is allowed to be overridden, but probably is not necessary
	// 	 * in most scenarios.
	read_fn:                        proc "c" (pipeline: ^decode_pipeline_t) -> result_t,
	// Function chosen based on the compression type of the part to
	// 	 * decompress data.
	// 	 *
	// 	 * If the user has a custom decompression method for the
	// 	 * compression on this part, this can be changed after
	// 	 * initialization.
	// 	 *
	// 	 * If only compressed data is desired, then assign this to `NULL`
	// 	 * after initialization.
	decompress_fn:                  proc "c" (pipeline: ^decode_pipeline_t) -> result_t,
	// Function which can be provided if you have bespoke handling for
	// 	 * non-image data and need to re-allocate the data to handle the
	// 	 * about-to-be unpacked data.
	// 	 *
	// 	 * If left `NULL`, will assume the memory pointed to by the channel
	// 	 * pointers is sufficient.
	realloc_nonimage_data_fn:       proc "c" (pipeline: ^decode_pipeline_t) -> result_t,
	// Function chosen based on the output layout of the channels of the part to
	// 	 * decompress data.
	// 	 *
	// 	 * This will be `NULL` after initialization, until the user
	// 	 * specifies a custom routine, or initializes the channel data and
	// 	 * calls exr_decoding_choose_default_routines().
	// 	 *
	// 	 * If only compressed data is desired, then leave or assign this
	// 	 * to `NULL` after initialization.
	unpack_and_convert_fn:          proc "c" (pipeline: ^decode_pipeline_t) -> result_t,
	// Small stash of channel info values. This is faster than calling
	// 	 * malloc when the channel count in the part is small (RGBAZ),
	// 	 * which is super common, however if there are a large number of
	// 	 * channels, it will allocate space for that, so do not rely on
	// 	 * this being used.
	_quick_chan_store:              [5]coding_channel_info_t,
}
```

 

\*
\* Struct meant to be used on a per-thread basis for reading exr data
\*
\* As should be obvious, this structure is NOT thread safe, but rather
\* meant to be used by separate threads, which can all be accessing
\* the same context concurrently.




##### Related Procedures With Parameters

* [decoding\_choose\_default\_routines](/vendor/OpenEXRCore/#decoding_choose_default_routines)
* [decoding\_destroy](/vendor/OpenEXRCore/#decoding_destroy)
* [decoding\_initialize](/vendor/OpenEXRCore/#decoding_initialize)
* [decoding\_run](/vendor/OpenEXRCore/#decoding_run)
* [decoding\_update](/vendor/OpenEXRCore/#decoding_update)
* [uncompress\_chunk](/vendor/OpenEXRCore/#uncompress_chunk)

##### Related Constants

* [DECODE\_PIPELINE\_INITIALIZER](/vendor/OpenEXRCore/#DECODE_PIPELINE_INITIALIZER)

### [default\_write\_mode\_t ¶](#default_write_mode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L311)

```
default_write_mode_t :: enum i32 {
	WRITE_FILE_DIRECTLY    = 0, // *< Overwrite filename provided directly, deleted upon error.
	INTERMEDIATE_TEMP_FILE = 1, // *< Create a temporary file, renaming it upon successful write, leaving original upon error
}
```

 

@brief Enum describing how default files are handled during write.




##### Related Procedures With Parameters

* [start\_write](/vendor/OpenEXRCore/#start_write)

### [destroy\_stream\_func\_ptr\_t ¶](#destroy_stream_func_ptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L48)

```
destroy_stream_func_ptr_t :: proc "c" (ctxt: context_t, userdata: rawptr, failed: i32)
```

 

Destroy custom stream function pointer
\*
\* Generic callback to clean up user data for custom streams.
\* This is called when the file is closed and expected not to
\* error.
\*
\* @param failed Indicates the write operation failed, the
\* implementor may wish to cleanup temporary files

### [encode\_pipeline\_t ¶](#encode_pipeline_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L43)

```
encode_pipeline_t :: struct {
	// Used for versioning the decode pipeline in the future
	// 	 *
	// 	 * \ref EXR_ENCODE_PIPELINE_INITIALIZER
	pipe_size:                      uint,
	// The output channel information for this chunk.
	// 	 *
	// 	 * User is expected to fill the channel pointers for the input
	// 	 * channels. For writing, all channels must be initialized prior
	// 	 * to using exr_encoding_choose_default_routines(). If a custom pack routine
	// 	 * is written, that is up to the implementor.
	// 	 *
	// 	 * Describes the channel information. This information is
	// 	 * allocated dynamically during exr_encoding_initialize().
	channels:                       [^]coding_channel_info_t,
	channel_count:                  i16,
	// Encode flags to control the behavior. 
	encode_flags:                   u16,
	// Copy of the parameters given to the initialize/update for convenience. 
	part_index:                     i32,
	ctx:                            context_t,
	chunk:                          chunk_info_t,
	// Can be used by the user to pass custom context data through
	// 	 * the encode pipeline.
	encoding_user_data:             rawptr,
	// The packed buffer where individual channels have been put into here.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	packed_buffer:                  rawptr,
	// Differing from the allocation size, the number of actual bytes 
	packed_bytes:                   u64,
	// Used when re-using the same encode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	packed_alloc_size:              uint,
	// For deep data. NB: the members NOT const because we need to
	// 	 * temporarily swap it to xdr order and restore it (to avoid a
	// 	 * duplicate buffer allocation).
	// 	 *
	// 	 * Depending on the flag set above, will be treated either as a
	// 	 * cumulative list (n, n+m, n+m+o, ...), or an individual table
	// 	 * (n, m, o, ...). 
	sample_count_table:             [^]i32,
	// Allocated table size (to avoid re-allocations). Number of
	// 	 * samples must always be width * height for the chunk.
	sample_count_alloc_size:        uint,
	// Packed sample table (compressed, raw on disk representation)
	// 	 * for deep or other non-image data.
	packed_sample_count_table:      rawptr,
	// Number of bytes to write (actual size) for the
	// 	 * packed_sample_count_table.
	packed_sample_count_bytes:      uint,
	// Allocated size (to avoid re-allocations) for the
	// 	 * packed_sample_count_table.
	packed_sample_count_alloc_size: uint,
	// The compressed buffer, only needed for compressed files.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	compressed_buffer:              rawptr,
	// Must be filled in as the pipeline runs to inform the writing
	// 	 * software about the compressed size of the chunk (if it is an
	// 	 * uncompressed file or the compression would make the file
	// 	 * larger, it is expected to be the packed_buffer)
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to zero here. Be cognizant of any
	// 	 * custom allocators.
	compressed_bytes:               uint,
	// Used when re-using the same encode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to zero here. Be cognizant of any
	// 	 * custom allocators.
	compressed_alloc_size:          uint,
	// A scratch buffer for intermediate results.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	scratch_buffer_1:               rawptr,
	// Used when re-using the same encode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	scratch_alloc_size_1:           uint,
	// Some compression routines may need a second scratch buffer.
	// 	 *
	// 	 * If `NULL`, will be allocated during the run of the pipeline when
	// 	 * needed.
	// 	 *
	// 	 * If the caller wishes to take control of the buffer, simple
	// 	 * adopt the pointer and set it to `NULL` here. Be cognizant of any
	// 	 * custom allocators.
	scratch_buffer_2:               rawptr,
	// Used when re-using the same encode pipeline struct to know if
	// 	 * chunk is changed size whether current buffer is large enough.
	scratch_alloc_size_2:           uint,
	// Enable a custom allocator for the different buffers (if
	// 	 * encoding on a GPU). If `NULL`, will use the allocator from the
	// 	 * context.
	alloc_fn:                       proc "c" (transcoding_pipeline_buffer_id_t, uint) -> rawptr,
	// Enable a custom allocator for the different buffers (if
	// 	 * encoding on a GPU). If `NULL`, will use the allocator from the
	// 	 * context.
	free_fn:                        proc "c" (transcoding_pipeline_buffer_id_t, rawptr),
	// Function chosen based on the output layout of the channels of the part to
	// 	 * decompress data.
	// 	 *
	// 	 * If the user has a custom method for the
	// 	 * compression on this part, this can be changed after
	// 	 * initialization.
	convert_and_pack_fn:            proc "c" (pipeline: ^encode_pipeline_t) -> result_t,
	// Function chosen based on the compression type of the part to
	// 	 * compress data.
	// 	 *
	// 	 * If the user has a custom compression method for the compression
	// 	 * type on this part, this can be changed after initialization.
	compress_fn:                    proc "c" (pipeline: ^encode_pipeline_t) -> result_t,
	// This routine is used when waiting for other threads to finish
	// 	 * writing previous chunks such that this thread can write this
	// 	 * chunk. This is used for parts which have a specified chunk
	// 	 * ordering (increasing/decreasing y) and the chunks can not be
	// 	 * written randomly (as could be true for uncompressed).
	// 	 *
	// 	 * This enables the calling application to contribute thread time
	// 	 * to other computation as needed, or just use something like
	// 	 * pthread_yield().
	// 	 *
	// 	 * By default, this routine will be assigned to a function which
	// 	 * returns an error, failing the encode immediately. In this way,
	// 	 * it assumes that there is only one thread being used for
	// 	 * writing.
	// 	 *
	// 	 * It is up to the user to provide an appropriate routine if
	// 	 * performing multi-threaded writing.
	yield_until_ready_fn:           proc "c" (pipeline: ^encode_pipeline_t) -> result_t,
	// Function chosen to write chunk data to the context.
	// 	 *
	// 	 * This is allowed to be overridden, but probably is not necessary
	// 	 * in most scenarios.
	write_fn:                       proc "c" (pipeline: ^encode_pipeline_t) -> result_t,
	// Small stash of channel info values. This is faster than calling
	// 	 * malloc when the channel count in the part is small (RGBAZ),
	// 	 * which is super common, however if there are a large number of
	// 	 * channels, it will allocate space for that, so do not rely on
	// 	 * this being used.
	_quick_chan_store:              [5]coding_channel_info_t,
}
```

 

Struct meant to be used on a per-thread basis for writing exr data.
\*
\* As should be obvious, this structure is NOT thread safe, but rather
\* meant to be used by separate threads, which can all be accessing
\* the same context concurrently.




##### Related Procedures With Parameters

* [compress\_chunk](/vendor/OpenEXRCore/#compress_chunk)
* [encoding\_choose\_default\_routines](/vendor/OpenEXRCore/#encoding_choose_default_routines)
* [encoding\_destroy](/vendor/OpenEXRCore/#encoding_destroy)
* [encoding\_initialize](/vendor/OpenEXRCore/#encoding_initialize)
* [encoding\_run](/vendor/OpenEXRCore/#encoding_run)
* [encoding\_update](/vendor/OpenEXRCore/#encoding_update)

##### Related Constants

* [ENCODE\_PIPELINE\_INITIALIZER](/vendor/OpenEXRCore/#ENCODE_PIPELINE_INITIALIZER)

### [envmap\_t ¶](#envmap_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L20)

```
envmap_t :: enum i32 {
	LATLONG = 0, 
	CUBE    = 1, 
}
```

 

Enum declaring allowed values for \c u8 value stored in built-in env map type.




##### Related Procedures With Parameters

* [attr\_get\_envmap](/vendor/OpenEXRCore/#attr_get_envmap)
* [attr\_set\_envmap](/vendor/OpenEXRCore/#attr_set_envmap)

### [error\_code\_t ¶](#error_code_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_errors.odin#L46)

```
error_code_t :: result_t
```

##### Related Procedures With Parameters

* [get\_default\_error\_message](/vendor/OpenEXRCore/#get_default_error_message)
* [get\_error\_code\_as\_string](/vendor/OpenEXRCore/#get_error_code_as_string)



##### Related Procedures With Returns

* [add\_channel](/vendor/OpenEXRCore/#add_channel)
* [add\_part](/vendor/OpenEXRCore/#add_part)
* [attr\_declare](/vendor/OpenEXRCore/#attr_declare)
* [attr\_declare\_by\_type](/vendor/OpenEXRCore/#attr_declare_by_type)
* [attr\_get\_box2f](/vendor/OpenEXRCore/#attr_get_box2f)
* [attr\_get\_box2i](/vendor/OpenEXRCore/#attr_get_box2i)
* [attr\_get\_channels](/vendor/OpenEXRCore/#attr_get_channels)
* [attr\_get\_chromaticities](/vendor/OpenEXRCore/#attr_get_chromaticities)
* [attr\_get\_compression](/vendor/OpenEXRCore/#attr_get_compression)
* [attr\_get\_double](/vendor/OpenEXRCore/#attr_get_double)
* [attr\_get\_envmap](/vendor/OpenEXRCore/#attr_get_envmap)
* [attr\_get\_float](/vendor/OpenEXRCore/#attr_get_float)
* [attr\_get\_float\_vector](/vendor/OpenEXRCore/#attr_get_float_vector)
* [attr\_get\_int](/vendor/OpenEXRCore/#attr_get_int)
* [attr\_get\_keycode](/vendor/OpenEXRCore/#attr_get_keycode)
* [attr\_get\_lineorder](/vendor/OpenEXRCore/#attr_get_lineorder)
* [attr\_get\_m33d](/vendor/OpenEXRCore/#attr_get_m33d)
* [attr\_get\_m33f](/vendor/OpenEXRCore/#attr_get_m33f)
* [attr\_get\_m44d](/vendor/OpenEXRCore/#attr_get_m44d)
* [attr\_get\_m44f](/vendor/OpenEXRCore/#attr_get_m44f)
* [attr\_get\_preview](/vendor/OpenEXRCore/#attr_get_preview)
* [attr\_get\_rational](/vendor/OpenEXRCore/#attr_get_rational)
* [attr\_get\_string](/vendor/OpenEXRCore/#attr_get_string)
* [attr\_get\_string\_vector](/vendor/OpenEXRCore/#attr_get_string_vector)
* [attr\_get\_tiledesc](/vendor/OpenEXRCore/#attr_get_tiledesc)
* [attr\_get\_timecode](/vendor/OpenEXRCore/#attr_get_timecode)
* [attr\_get\_user](/vendor/OpenEXRCore/#attr_get_user)
* [attr\_get\_v2d](/vendor/OpenEXRCore/#attr_get_v2d)
* [attr\_get\_v2f](/vendor/OpenEXRCore/#attr_get_v2f)
* [attr\_get\_v2i](/vendor/OpenEXRCore/#attr_get_v2i)
* [attr\_get\_v3d](/vendor/OpenEXRCore/#attr_get_v3d)
* [attr\_get\_v3f](/vendor/OpenEXRCore/#attr_get_v3f)
* [attr\_get\_v3i](/vendor/OpenEXRCore/#attr_get_v3i)
* [attr\_set\_box2f](/vendor/OpenEXRCore/#attr_set_box2f)
* [attr\_set\_box2i](/vendor/OpenEXRCore/#attr_set_box2i)
* [attr\_set\_channels](/vendor/OpenEXRCore/#attr_set_channels)
* [attr\_set\_chromaticities](/vendor/OpenEXRCore/#attr_set_chromaticities)
* [attr\_set\_compression](/vendor/OpenEXRCore/#attr_set_compression)
* [attr\_set\_double](/vendor/OpenEXRCore/#attr_set_double)
* [attr\_set\_envmap](/vendor/OpenEXRCore/#attr_set_envmap)
* [attr\_set\_float](/vendor/OpenEXRCore/#attr_set_float)
* [attr\_set\_float\_vector](/vendor/OpenEXRCore/#attr_set_float_vector)
* [attr\_set\_int](/vendor/OpenEXRCore/#attr_set_int)
* [attr\_set\_keycode](/vendor/OpenEXRCore/#attr_set_keycode)
* [attr\_set\_lineorder](/vendor/OpenEXRCore/#attr_set_lineorder)
* [attr\_set\_m33d](/vendor/OpenEXRCore/#attr_set_m33d)
* [attr\_set\_m33f](/vendor/OpenEXRCore/#attr_set_m33f)
* [attr\_set\_m44d](/vendor/OpenEXRCore/#attr_set_m44d)
* [attr\_set\_m44f](/vendor/OpenEXRCore/#attr_set_m44f)
* [attr\_set\_preview](/vendor/OpenEXRCore/#attr_set_preview)
* [attr\_set\_rational](/vendor/OpenEXRCore/#attr_set_rational)
* [attr\_set\_string](/vendor/OpenEXRCore/#attr_set_string)
* [attr\_set\_string\_vector](/vendor/OpenEXRCore/#attr_set_string_vector)
* [attr\_set\_tiledesc](/vendor/OpenEXRCore/#attr_set_tiledesc)
* [attr\_set\_timecode](/vendor/OpenEXRCore/#attr_set_timecode)
* [attr\_set\_user](/vendor/OpenEXRCore/#attr_set_user)
* [attr\_set\_v2d](/vendor/OpenEXRCore/#attr_set_v2d)
* [attr\_set\_v2f](/vendor/OpenEXRCore/#attr_set_v2f)
* [attr\_set\_v2i](/vendor/OpenEXRCore/#attr_set_v2i)
* [attr\_set\_v3d](/vendor/OpenEXRCore/#attr_set_v3d)
* [attr\_set\_v3f](/vendor/OpenEXRCore/#attr_set_v3f)
* [attr\_set\_v3i](/vendor/OpenEXRCore/#attr_set_v3i)
* [chunk\_default\_initialize](/vendor/OpenEXRCore/#chunk_default_initialize)
* [compress\_buffer](/vendor/OpenEXRCore/#compress_buffer)
* [compress\_chunk](/vendor/OpenEXRCore/#compress_chunk)
* [copy\_unset\_attributes](/vendor/OpenEXRCore/#copy_unset_attributes)
* [decoding\_choose\_default\_routines](/vendor/OpenEXRCore/#decoding_choose_default_routines)
* [decoding\_destroy](/vendor/OpenEXRCore/#decoding_destroy)
* [decoding\_initialize](/vendor/OpenEXRCore/#decoding_initialize)
* [decoding\_run](/vendor/OpenEXRCore/#decoding_run)
* [decoding\_update](/vendor/OpenEXRCore/#decoding_update)
* [encoding\_choose\_default\_routines](/vendor/OpenEXRCore/#encoding_choose_default_routines)
* [encoding\_destroy](/vendor/OpenEXRCore/#encoding_destroy)
* [encoding\_initialize](/vendor/OpenEXRCore/#encoding_initialize)
* [encoding\_run](/vendor/OpenEXRCore/#encoding_run)
* [encoding\_update](/vendor/OpenEXRCore/#encoding_update)
* [exr\_validate\_chunk\_table](/vendor/OpenEXRCore/#exr_validate_chunk_table)
* [finish](/vendor/OpenEXRCore/#finish)
* [get\_attribute\_by\_index](/vendor/OpenEXRCore/#get_attribute_by_index)
* [get\_attribute\_by\_name](/vendor/OpenEXRCore/#get_attribute_by_name)
* [get\_attribute\_count](/vendor/OpenEXRCore/#get_attribute_count)
* [get\_attribute\_list](/vendor/OpenEXRCore/#get_attribute_list)
* [get\_channels](/vendor/OpenEXRCore/#get_channels)
* [get\_chunk\_count](/vendor/OpenEXRCore/#get_chunk_count)
* [get\_chunk\_table](/vendor/OpenEXRCore/#get_chunk_table)
* [get\_chunk\_table\_offset](/vendor/OpenEXRCore/#get_chunk_table_offset)
* [get\_chunk\_unpacked\_size](/vendor/OpenEXRCore/#get_chunk_unpacked_size)
* [get\_compression](/vendor/OpenEXRCore/#get_compression)
* [get\_count](/vendor/OpenEXRCore/#get_count)
* [get\_data\_window](/vendor/OpenEXRCore/#get_data_window)
* [get\_display\_window](/vendor/OpenEXRCore/#get_display_window)
* [get\_dwa\_compression\_level](/vendor/OpenEXRCore/#get_dwa_compression_level)
* [get\_file\_name](/vendor/OpenEXRCore/#get_file_name)
* [get\_file\_version\_and\_flags](/vendor/OpenEXRCore/#get_file_version_and_flags)
* [get\_level\_sizes](/vendor/OpenEXRCore/#get_level_sizes)
* [get\_lineorder](/vendor/OpenEXRCore/#get_lineorder)
* [get\_name](/vendor/OpenEXRCore/#get_name)
* [get\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#get_pixel_aspect_ratio)
* [get\_scanlines\_per\_chunk](/vendor/OpenEXRCore/#get_scanlines_per_chunk)
* [get\_screen\_window\_center](/vendor/OpenEXRCore/#get_screen_window_center)
* [get\_screen\_window\_width](/vendor/OpenEXRCore/#get_screen_window_width)
* [get\_storage](/vendor/OpenEXRCore/#get_storage)
* [get\_tile\_counts](/vendor/OpenEXRCore/#get_tile_counts)
* [get\_tile\_descriptor](/vendor/OpenEXRCore/#get_tile_descriptor)
* [get\_tile\_levels](/vendor/OpenEXRCore/#get_tile_levels)
* [get\_tile\_sizes](/vendor/OpenEXRCore/#get_tile_sizes)
* [get\_user\_data](/vendor/OpenEXRCore/#get_user_data)
* [get\_version](/vendor/OpenEXRCore/#get_version)
* [get\_zip\_compression\_level](/vendor/OpenEXRCore/#get_zip_compression_level)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [initialize\_required\_attr\_simple](/vendor/OpenEXRCore/#initialize_required_attr_simple)
* [print\_context\_info](/vendor/OpenEXRCore/#print_context_info)
* [read\_chunk](/vendor/OpenEXRCore/#read_chunk)
* [read\_deep\_chunk](/vendor/OpenEXRCore/#read_deep_chunk)
* [read\_scanline\_chunk\_info](/vendor/OpenEXRCore/#read_scanline_chunk_info)
* [read\_tile\_chunk\_info](/vendor/OpenEXRCore/#read_tile_chunk_info)
* [register\_attr\_type\_handler](/vendor/OpenEXRCore/#register_attr_type_handler)
* [set\_channels](/vendor/OpenEXRCore/#set_channels)
* [set\_chunk\_count](/vendor/OpenEXRCore/#set_chunk_count)
* [set\_compression](/vendor/OpenEXRCore/#set_compression)
* [set\_dwa\_compression\_level](/vendor/OpenEXRCore/#set_dwa_compression_level)
* [set\_lineorder](/vendor/OpenEXRCore/#set_lineorder)
* [set\_longname\_support](/vendor/OpenEXRCore/#set_longname_support)
* [set\_name](/vendor/OpenEXRCore/#set_name)
* [set\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#set_pixel_aspect_ratio)
* [set\_screen\_window\_width](/vendor/OpenEXRCore/#set_screen_window_width)
* [set\_tile\_descriptor](/vendor/OpenEXRCore/#set_tile_descriptor)
* [set\_version](/vendor/OpenEXRCore/#set_version)
* [set\_zip\_compression\_level](/vendor/OpenEXRCore/#set_zip_compression_level)
* [start\_inplace\_header\_update](/vendor/OpenEXRCore/#start_inplace_header_update)
* [start\_read](/vendor/OpenEXRCore/#start_read)
* [start\_temporary\_context](/vendor/OpenEXRCore/#start_temporary_context)
* [start\_write](/vendor/OpenEXRCore/#start_write)
* [test\_file\_header](/vendor/OpenEXRCore/#test_file_header)
* [uncompress\_buffer](/vendor/OpenEXRCore/#uncompress_buffer)
* [uncompress\_chunk](/vendor/OpenEXRCore/#uncompress_chunk)
* [write\_deep\_scanline\_chunk](/vendor/OpenEXRCore/#write_deep_scanline_chunk)
* [write\_deep\_tile\_chunk](/vendor/OpenEXRCore/#write_deep_tile_chunk)
* [write\_header](/vendor/OpenEXRCore/#write_header)
* [write\_scanline\_chunk](/vendor/OpenEXRCore/#write_scanline_chunk)
* [write\_scanline\_chunk\_info](/vendor/OpenEXRCore/#write_scanline_chunk_info)
* [write\_tile\_chunk](/vendor/OpenEXRCore/#write_tile_chunk)
* [write\_tile\_chunk\_info](/vendor/OpenEXRCore/#write_tile_chunk_info)

### [error\_handler\_cb\_t ¶](#error_handler_cb_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L37)

```
error_handler_cb_t :: proc "c" (ctxt: context_t, code: result_t, msg: cstring)
```

 

@brief Error callback function
\*
\* Because a file can be read from using many threads at once, it is
\* difficult to store an error message for later retrieval. As such,
\* when a file is constructed, a callback function can be provided
\* which delivers an error message for the calling application to
\* handle. This will then be delivered on the same thread causing the
\* error.

### [lineorder\_t ¶](#lineorder_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L26)

```
lineorder_t :: enum i32 {
	INCREASING_Y = 0, 
	DECREASING_Y = 1, 
	RANDOM_Y     = 2, 
}
```

 

Enum declaring allowed values for \c u8 value stored in \c lineOrder type.




##### Related Procedures With Parameters

* [attr\_get\_lineorder](/vendor/OpenEXRCore/#attr_get_lineorder)
* [attr\_set\_lineorder](/vendor/OpenEXRCore/#attr_set_lineorder)
* [get\_lineorder](/vendor/OpenEXRCore/#get_lineorder)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [set\_lineorder](/vendor/OpenEXRCore/#set_lineorder)

### [memory\_allocation\_func\_t ¶](#memory_allocation_func_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L35)

```
memory_allocation_func_t :: proc "c" (bytes: uint) -> rawptr
```

 

@brief Function pointer used to hold a malloc-like routine.
\*
\* Providing these to a context will override what memory is used to
\* allocate the context itself, as well as any allocations which
\* happen during processing of a file or stream. This can be used by
\* systems which provide rich malloc tracking routines to override the
\* internal allocations performed by the library.
\*
\* This function is expected to allocate and return a new memory
\* handle, or `NULL` if allocation failed (which the library will then
\* handle and return an out-of-memory error).
\*
\* If one is provided, both should be provided.
\* @sa exr\_memory\_free\_func\_t




##### Related Procedures With Parameters

* [set\_default\_memory\_routines](/vendor/OpenEXRCore/#set_default_memory_routines)

### [memory\_free\_func\_t ¶](#memory_free_func_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L51)

```
memory_free_func_t :: proc "c" (ptr: rawptr)
```

 

@brief Function pointer used to hold a free-like routine.
\*
\* Providing these to a context will override what memory is used to
\* allocate the context itself, as well as any allocations which
\* happen during processing of a file or stream. This can be used by
\* systems which provide rich malloc tracking routines to override the
\* internal allocations performed by the library.
\*
\* This function is expected to return memory to the system, ala free
\* from the C library.
\*
\* If providing one, probably need to provide both routines.
\* @sa exr\_memory\_allocation\_func\_t




##### Related Procedures With Parameters

* [set\_default\_memory\_routines](/vendor/OpenEXRCore/#set_default_memory_routines)

### [perceptual\_treatment\_t ¶](#perceptual_treatment_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L209)

```
perceptual_treatment_t :: enum i32 {
	LOGARITHMIC = 0, 
	LINEAR      = 1, 
}
```

 

Hint for lossy compression methods about how to treat values
\* (logarithmic or linear), meaning a human sees values like R, G, B,
\* luminance difference between 0.1 and 0.2 as about the same as 1.0
\* to 2.0 (logarithmic), where chroma coordinates are closer to linear
\* (0.1 and 0.2 is about the same difference as 1.0 and 1.1).




##### Related Procedures With Parameters

* [add\_channel](/vendor/OpenEXRCore/#add_channel)

### [pixel\_type\_t ¶](#pixel_type_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L54)

```
pixel_type_t :: enum i32 {
	UINT  = 0, 
	HALF  = 1, 
	FLOAT = 2, 
}
```

 

@brief Enum capturing the underlying data type on a channel.




##### Related Procedures With Parameters

* [add\_channel](/vendor/OpenEXRCore/#add_channel)

### [query\_size\_func\_ptr\_t ¶](#query_size_func_ptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L60)

```
query_size_func_ptr_t :: proc "c" (ctxt: context_t, userdata: rawptr) -> i64
```

 

Query stream size function pointer
\*
\* Used to query the size of the file, or amount of data representing
\* the openexr file in the data stream.
\*
\* This is used to validate requests against the file. If the size is
\* unavailable, return -1, which will disable these validation steps
\* for this file, although appropriate memory safeguards must be in
\* place in the calling application.

### [read\_func\_ptr\_t ¶](#read_func_ptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L87)

```
read_func_ptr_t :: proc "c" (ctxt: context_t, userdata: rawptr, buffer: rawptr, sz: u64, offset: u64, error_cb: stream_error_func_ptr_t) -> i64
```

 

@brief Read custom function pointer
\*
\* Used to read data from a custom output. Expects similar semantics to
\* pread or ReadFile with overlapped data under win32.
\*
\* It is required that this provides thread-safe concurrent access to
\* the same file. If the stream/input layer you are providing does
\* not have this guarantee, your are responsible for providing
\* appropriate serialization of requests.
\*
\* A file should be expected to be accessed in the following pattern:
\* - upon open, the header and part information attributes will be read
\* - upon the first image read request, the offset tables will be read
\* multiple threads accessing this concurrently may actually read
\* these values at the same time
\* - chunks can then be read in any order as preferred by the
\* application
\*
\* While this should mean that the header will be read in 'stream'
\* order (no seeks required), no guarantee is made beyond that to
\* retrieve image/deep data in order. So if the backing file is
\* truly a stream, it is up to the provider to implement appropriate
\* caching of data to give the appearance of being able to seek/read
\* atomically.

### [result\_t ¶](#result_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_errors.odin#L9)

```
result_t :: enum i32 {
	SUCCESS                 = 0, 
	OUT_OF_MEMORY, 
	MISSING_CONTEXT_ARG, 
	INVALID_ARGUMENT, 
	ARGUMENT_OUT_OF_RANGE, 
	FILE_ACCESS, 
	FILE_BAD_HEADER, 
	NOT_OPEN_READ, 
	NOT_OPEN_WRITE, 
	HEADER_NOT_WRITTEN, 
	READ_IO, 
	WRITE_IO, 
	NAME_TOO_LONG, 
	MISSING_REQ_ATTR, 
	INVALID_ATTR, 
	NO_ATTR_BY_NAME, 
	ATTR_TYPE_MISMATCH, 
	ATTR_SIZE_MISMATCH, 
	SCAN_TILE_MIXEDAPI, 
	TILE_SCAN_MIXEDAPI, 
	MODIFY_SIZE_CHANGE, 
	ALREADY_WROTE_ATTRS, 
	BAD_CHUNK_LEADER, 
	CORRUPT_CHUNK, 
	INCOMPLETE_CHUNK_TABLE, 
	INCORRECT_PART, 
	INCORRECT_CHUNK, 
	USE_SCAN_DEEP_WRITE, 
	USE_TILE_DEEP_WRITE, 
	USE_SCAN_NONDEEP_WRITE, 
	USE_TILE_NONDEEP_WRITE, 
	INVALID_SAMPLE_DATA, 
	FEATURE_NOT_IMPLEMENTED, 
	UNKNOWN, 
}
```

 

Error codes that may be returned by various functions.
Return type for all functions.




##### Related Procedures With Parameters

* [get\_default\_error\_message](/vendor/OpenEXRCore/#get_default_error_message)
* [get\_error\_code\_as\_string](/vendor/OpenEXRCore/#get_error_code_as_string)



##### Related Procedures With Returns

* [add\_channel](/vendor/OpenEXRCore/#add_channel)
* [add\_part](/vendor/OpenEXRCore/#add_part)
* [attr\_declare](/vendor/OpenEXRCore/#attr_declare)
* [attr\_declare\_by\_type](/vendor/OpenEXRCore/#attr_declare_by_type)
* [attr\_get\_box2f](/vendor/OpenEXRCore/#attr_get_box2f)
* [attr\_get\_box2i](/vendor/OpenEXRCore/#attr_get_box2i)
* [attr\_get\_channels](/vendor/OpenEXRCore/#attr_get_channels)
* [attr\_get\_chromaticities](/vendor/OpenEXRCore/#attr_get_chromaticities)
* [attr\_get\_compression](/vendor/OpenEXRCore/#attr_get_compression)
* [attr\_get\_double](/vendor/OpenEXRCore/#attr_get_double)
* [attr\_get\_envmap](/vendor/OpenEXRCore/#attr_get_envmap)
* [attr\_get\_float](/vendor/OpenEXRCore/#attr_get_float)
* [attr\_get\_float\_vector](/vendor/OpenEXRCore/#attr_get_float_vector)
* [attr\_get\_int](/vendor/OpenEXRCore/#attr_get_int)
* [attr\_get\_keycode](/vendor/OpenEXRCore/#attr_get_keycode)
* [attr\_get\_lineorder](/vendor/OpenEXRCore/#attr_get_lineorder)
* [attr\_get\_m33d](/vendor/OpenEXRCore/#attr_get_m33d)
* [attr\_get\_m33f](/vendor/OpenEXRCore/#attr_get_m33f)
* [attr\_get\_m44d](/vendor/OpenEXRCore/#attr_get_m44d)
* [attr\_get\_m44f](/vendor/OpenEXRCore/#attr_get_m44f)
* [attr\_get\_preview](/vendor/OpenEXRCore/#attr_get_preview)
* [attr\_get\_rational](/vendor/OpenEXRCore/#attr_get_rational)
* [attr\_get\_string](/vendor/OpenEXRCore/#attr_get_string)
* [attr\_get\_string\_vector](/vendor/OpenEXRCore/#attr_get_string_vector)
* [attr\_get\_tiledesc](/vendor/OpenEXRCore/#attr_get_tiledesc)
* [attr\_get\_timecode](/vendor/OpenEXRCore/#attr_get_timecode)
* [attr\_get\_user](/vendor/OpenEXRCore/#attr_get_user)
* [attr\_get\_v2d](/vendor/OpenEXRCore/#attr_get_v2d)
* [attr\_get\_v2f](/vendor/OpenEXRCore/#attr_get_v2f)
* [attr\_get\_v2i](/vendor/OpenEXRCore/#attr_get_v2i)
* [attr\_get\_v3d](/vendor/OpenEXRCore/#attr_get_v3d)
* [attr\_get\_v3f](/vendor/OpenEXRCore/#attr_get_v3f)
* [attr\_get\_v3i](/vendor/OpenEXRCore/#attr_get_v3i)
* [attr\_set\_box2f](/vendor/OpenEXRCore/#attr_set_box2f)
* [attr\_set\_box2i](/vendor/OpenEXRCore/#attr_set_box2i)
* [attr\_set\_channels](/vendor/OpenEXRCore/#attr_set_channels)
* [attr\_set\_chromaticities](/vendor/OpenEXRCore/#attr_set_chromaticities)
* [attr\_set\_compression](/vendor/OpenEXRCore/#attr_set_compression)
* [attr\_set\_double](/vendor/OpenEXRCore/#attr_set_double)
* [attr\_set\_envmap](/vendor/OpenEXRCore/#attr_set_envmap)
* [attr\_set\_float](/vendor/OpenEXRCore/#attr_set_float)
* [attr\_set\_float\_vector](/vendor/OpenEXRCore/#attr_set_float_vector)
* [attr\_set\_int](/vendor/OpenEXRCore/#attr_set_int)
* [attr\_set\_keycode](/vendor/OpenEXRCore/#attr_set_keycode)
* [attr\_set\_lineorder](/vendor/OpenEXRCore/#attr_set_lineorder)
* [attr\_set\_m33d](/vendor/OpenEXRCore/#attr_set_m33d)
* [attr\_set\_m33f](/vendor/OpenEXRCore/#attr_set_m33f)
* [attr\_set\_m44d](/vendor/OpenEXRCore/#attr_set_m44d)
* [attr\_set\_m44f](/vendor/OpenEXRCore/#attr_set_m44f)
* [attr\_set\_preview](/vendor/OpenEXRCore/#attr_set_preview)
* [attr\_set\_rational](/vendor/OpenEXRCore/#attr_set_rational)
* [attr\_set\_string](/vendor/OpenEXRCore/#attr_set_string)
* [attr\_set\_string\_vector](/vendor/OpenEXRCore/#attr_set_string_vector)
* [attr\_set\_tiledesc](/vendor/OpenEXRCore/#attr_set_tiledesc)
* [attr\_set\_timecode](/vendor/OpenEXRCore/#attr_set_timecode)
* [attr\_set\_user](/vendor/OpenEXRCore/#attr_set_user)
* [attr\_set\_v2d](/vendor/OpenEXRCore/#attr_set_v2d)
* [attr\_set\_v2f](/vendor/OpenEXRCore/#attr_set_v2f)
* [attr\_set\_v2i](/vendor/OpenEXRCore/#attr_set_v2i)
* [attr\_set\_v3d](/vendor/OpenEXRCore/#attr_set_v3d)
* [attr\_set\_v3f](/vendor/OpenEXRCore/#attr_set_v3f)
* [attr\_set\_v3i](/vendor/OpenEXRCore/#attr_set_v3i)
* [chunk\_default\_initialize](/vendor/OpenEXRCore/#chunk_default_initialize)
* [compress\_buffer](/vendor/OpenEXRCore/#compress_buffer)
* [compress\_chunk](/vendor/OpenEXRCore/#compress_chunk)
* [copy\_unset\_attributes](/vendor/OpenEXRCore/#copy_unset_attributes)
* [decoding\_choose\_default\_routines](/vendor/OpenEXRCore/#decoding_choose_default_routines)
* [decoding\_destroy](/vendor/OpenEXRCore/#decoding_destroy)
* [decoding\_initialize](/vendor/OpenEXRCore/#decoding_initialize)
* [decoding\_run](/vendor/OpenEXRCore/#decoding_run)
* [decoding\_update](/vendor/OpenEXRCore/#decoding_update)
* [encoding\_choose\_default\_routines](/vendor/OpenEXRCore/#encoding_choose_default_routines)
* [encoding\_destroy](/vendor/OpenEXRCore/#encoding_destroy)
* [encoding\_initialize](/vendor/OpenEXRCore/#encoding_initialize)
* [encoding\_run](/vendor/OpenEXRCore/#encoding_run)
* [encoding\_update](/vendor/OpenEXRCore/#encoding_update)
* [exr\_validate\_chunk\_table](/vendor/OpenEXRCore/#exr_validate_chunk_table)
* [finish](/vendor/OpenEXRCore/#finish)
* [get\_attribute\_by\_index](/vendor/OpenEXRCore/#get_attribute_by_index)
* [get\_attribute\_by\_name](/vendor/OpenEXRCore/#get_attribute_by_name)
* [get\_attribute\_count](/vendor/OpenEXRCore/#get_attribute_count)
* [get\_attribute\_list](/vendor/OpenEXRCore/#get_attribute_list)
* [get\_channels](/vendor/OpenEXRCore/#get_channels)
* [get\_chunk\_count](/vendor/OpenEXRCore/#get_chunk_count)
* [get\_chunk\_table](/vendor/OpenEXRCore/#get_chunk_table)
* [get\_chunk\_table\_offset](/vendor/OpenEXRCore/#get_chunk_table_offset)
* [get\_chunk\_unpacked\_size](/vendor/OpenEXRCore/#get_chunk_unpacked_size)
* [get\_compression](/vendor/OpenEXRCore/#get_compression)
* [get\_count](/vendor/OpenEXRCore/#get_count)
* [get\_data\_window](/vendor/OpenEXRCore/#get_data_window)
* [get\_display\_window](/vendor/OpenEXRCore/#get_display_window)
* [get\_dwa\_compression\_level](/vendor/OpenEXRCore/#get_dwa_compression_level)
* [get\_file\_name](/vendor/OpenEXRCore/#get_file_name)
* [get\_file\_version\_and\_flags](/vendor/OpenEXRCore/#get_file_version_and_flags)
* [get\_level\_sizes](/vendor/OpenEXRCore/#get_level_sizes)
* [get\_lineorder](/vendor/OpenEXRCore/#get_lineorder)
* [get\_name](/vendor/OpenEXRCore/#get_name)
* [get\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#get_pixel_aspect_ratio)
* [get\_scanlines\_per\_chunk](/vendor/OpenEXRCore/#get_scanlines_per_chunk)
* [get\_screen\_window\_center](/vendor/OpenEXRCore/#get_screen_window_center)
* [get\_screen\_window\_width](/vendor/OpenEXRCore/#get_screen_window_width)
* [get\_storage](/vendor/OpenEXRCore/#get_storage)
* [get\_tile\_counts](/vendor/OpenEXRCore/#get_tile_counts)
* [get\_tile\_descriptor](/vendor/OpenEXRCore/#get_tile_descriptor)
* [get\_tile\_levels](/vendor/OpenEXRCore/#get_tile_levels)
* [get\_tile\_sizes](/vendor/OpenEXRCore/#get_tile_sizes)
* [get\_user\_data](/vendor/OpenEXRCore/#get_user_data)
* [get\_version](/vendor/OpenEXRCore/#get_version)
* [get\_zip\_compression\_level](/vendor/OpenEXRCore/#get_zip_compression_level)
* [initialize\_required\_attr](/vendor/OpenEXRCore/#initialize_required_attr)
* [initialize\_required\_attr\_simple](/vendor/OpenEXRCore/#initialize_required_attr_simple)
* [print\_context\_info](/vendor/OpenEXRCore/#print_context_info)
* [read\_chunk](/vendor/OpenEXRCore/#read_chunk)
* [read\_deep\_chunk](/vendor/OpenEXRCore/#read_deep_chunk)
* [read\_scanline\_chunk\_info](/vendor/OpenEXRCore/#read_scanline_chunk_info)
* [read\_tile\_chunk\_info](/vendor/OpenEXRCore/#read_tile_chunk_info)
* [register\_attr\_type\_handler](/vendor/OpenEXRCore/#register_attr_type_handler)
* [set\_channels](/vendor/OpenEXRCore/#set_channels)
* [set\_chunk\_count](/vendor/OpenEXRCore/#set_chunk_count)
* [set\_compression](/vendor/OpenEXRCore/#set_compression)
* [set\_dwa\_compression\_level](/vendor/OpenEXRCore/#set_dwa_compression_level)
* [set\_lineorder](/vendor/OpenEXRCore/#set_lineorder)
* [set\_longname\_support](/vendor/OpenEXRCore/#set_longname_support)
* [set\_name](/vendor/OpenEXRCore/#set_name)
* [set\_pixel\_aspect\_ratio](/vendor/OpenEXRCore/#set_pixel_aspect_ratio)
* [set\_screen\_window\_width](/vendor/OpenEXRCore/#set_screen_window_width)
* [set\_tile\_descriptor](/vendor/OpenEXRCore/#set_tile_descriptor)
* [set\_version](/vendor/OpenEXRCore/#set_version)
* [set\_zip\_compression\_level](/vendor/OpenEXRCore/#set_zip_compression_level)
* [start\_inplace\_header\_update](/vendor/OpenEXRCore/#start_inplace_header_update)
* [start\_read](/vendor/OpenEXRCore/#start_read)
* [start\_temporary\_context](/vendor/OpenEXRCore/#start_temporary_context)
* [start\_write](/vendor/OpenEXRCore/#start_write)
* [test\_file\_header](/vendor/OpenEXRCore/#test_file_header)
* [uncompress\_buffer](/vendor/OpenEXRCore/#uncompress_buffer)
* [uncompress\_chunk](/vendor/OpenEXRCore/#uncompress_chunk)
* [write\_deep\_scanline\_chunk](/vendor/OpenEXRCore/#write_deep_scanline_chunk)
* [write\_deep\_tile\_chunk](/vendor/OpenEXRCore/#write_deep_tile_chunk)
* [write\_header](/vendor/OpenEXRCore/#write_header)
* [write\_scanline\_chunk](/vendor/OpenEXRCore/#write_scanline_chunk)
* [write\_scanline\_chunk\_info](/vendor/OpenEXRCore/#write_scanline_chunk_info)
* [write\_tile\_chunk](/vendor/OpenEXRCore/#write_tile_chunk)
* [write\_tile\_chunk\_info](/vendor/OpenEXRCore/#write_tile_chunk_info)

### [storage\_t ¶](#storage_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L33)

```
storage_t :: enum i32 {
	SCANLINE      = 0, // Corresponds to type of \c scanlineimage.
	TILED,             // Corresponds to type of \c tiledimage.
	DEEP_SCANLINE,     // Corresponds to type of \c deepscanline.
	DEEP_TILED,        // Corresponds to type of \c deeptile.
}
```

 

Enum declaring allowed values for part type.




##### Related Procedures With Parameters

* [add\_part](/vendor/OpenEXRCore/#add_part)
* [get\_storage](/vendor/OpenEXRCore/#get_storage)

### [stream\_error\_func\_ptr\_t ¶](#stream_error_func_ptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L26)

```
stream_error_func_ptr_t :: proc "c" (ctxt: context_t, code: result_t, fmt: cstring, .. args: ..any) -> result_t
```

 

@brief Stream error notifier
\*
\* This function pointer is provided to the stream functions by the
\* library such that they can provide a nice error message to the
\* user during stream operations.

### [tile\_level\_mode\_t ¶](#tile_level_mode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L41)

```
tile_level_mode_t :: enum i32 {
	ONE_LEVEL     = 0, // Single level of image data.
	MIPMAP_LEVELS = 1, // Mipmapped image data.
	RIPMAP_LEVELS = 2, // Ripmapped image data.
}
```

 

@brief Enum representing what type of tile information is contained.




##### Related Procedures With Parameters

* [PACK\_TILE\_LEVEL\_ROUND](/vendor/OpenEXRCore/#PACK_TILE_LEVEL_ROUND)
* [get\_tile\_descriptor](/vendor/OpenEXRCore/#get_tile_descriptor)
* [set\_tile\_descriptor](/vendor/OpenEXRCore/#set_tile_descriptor)



##### Related Procedures With Returns

* [GET\_TILE\_LEVEL\_MODE](/vendor/OpenEXRCore/#GET_TILE_LEVEL_MODE)

### [tile\_round\_mode\_t ¶](#tile_round_mode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L48)

```
tile_round_mode_t :: enum i32 {
	DOWN = 0, 
	UP   = 1, 
}
```

 

@brief Enum representing how to scale positions between levels.




##### Related Procedures With Parameters

* [PACK\_TILE\_LEVEL\_ROUND](/vendor/OpenEXRCore/#PACK_TILE_LEVEL_ROUND)
* [get\_tile\_descriptor](/vendor/OpenEXRCore/#get_tile_descriptor)
* [set\_tile\_descriptor](/vendor/OpenEXRCore/#set_tile_descriptor)



##### Related Procedures With Returns

* [GET\_TILE\_ROUND\_MODE](/vendor/OpenEXRCore/#GET_TILE_ROUND_MODE)

### [transcoding\_pipeline\_buffer\_id\_t ¶](#transcoding_pipeline_buffer_id_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_coding.odin#L9)

```
transcoding_pipeline_buffer_id_t :: enum i32 {
	PACKED, 
	UNPACKED, 
	COMPRESSED, 
	SCRATCH1, 
	SCRATCH2, 
	PACKED_SAMPLES, 
	SAMPLES, 
}
```

 

\*
\* Enum for use in a custom allocator in the encode/decode pipelines
\* (that is, so the implementor knows whether to allocate on which
\* device based on the buffer disposition).

### [write\_func\_ptr\_t ¶](#write_func_ptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L119)

```
write_func_ptr_t :: proc "c" (ctxt: context_t, userdata: rawptr, buffer: rawptr, sz: u64, offset: u64, error_cb: stream_error_func_ptr_t) -> i64
```

 

Write custom function pointer
\*
\* Used to write data to a custom output. Expects similar semantics to
\* pwrite or WriteFile with overlapped data under win32.
\*
\* It is required that this provides thread-safe concurrent access to
\* the same file. While it is unlikely that multiple threads will
\* be used to write data for compressed forms, it is possible.
\*
\* A file should be expected to be accessed in the following pattern:
\* - upon open, the header and part information attributes is constructed.
\*
\* - when the write\_header routine is called, the header becomes immutable
\* and is written to the file. This computes the space to store the chunk
\* offsets, but does not yet write the values.
\*
\* - Image chunks are written to the file, and appear in the order
\* they are written, not in the ordering that is required by the
\* chunk offset table (unless written in that order). This may vary
\* slightly if the size of the chunks is not directly known and
\* tight packing of data is necessary.
\*
\* - at file close, the chunk offset tables are written to the file.

## Constants

### [CONTEXT\_FLAG\_DISABLE\_CHUNK\_RECONSTRUCTION ¶](#CONTEXT_FLAG_DISABLE_CHUNK_RECONSTRUCTION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L302)

```
CONTEXT_FLAG_DISABLE_CHUNK_RECONSTRUCTION :: 1 << 2
```

 

@brief Disables reconstruction logic upon corrupt / missing data chunks
\*
\* This will disable the reconstruction logic that searches through an
\* incomplete file, and will instead just return errors at read
\* time. This is only valid for reading contexts

### [CONTEXT\_FLAG\_SILENT\_HEADER\_PARSE ¶](#CONTEXT_FLAG_SILENT_HEADER_PARSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L294)

```
CONTEXT_FLAG_SILENT_HEADER_PARSE :: 1 << 1
```

 

@brief Disables error messages while parsing headers
\*
\* The return values will remain the same, but error reporting will be
\* skipped. This is only valid for reading contexts

### [CONTEXT\_FLAG\_STRICT\_HEADER ¶](#CONTEXT_FLAG_STRICT_HEADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L287)

```
CONTEXT_FLAG_STRICT_HEADER :: 1 << 0
```

 

@brief context flag which will enforce strict header validation
\* checks and may prevent reading of files which could otherwise be
\* processed.

### [DECODE\_NON\_IMAGE\_DATA\_AS\_POINTERS ¶](#DECODE_NON_IMAGE_DATA_AS_POINTERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L37)

```
DECODE_NON_IMAGE_DATA_AS_POINTERS :: u16(1 << 1)
```

 

Can be bit-wise or'ed into the decode\_flags in the decode pipeline.
\*
\* Indicates that the data in the channel pointers to decode to is not
\* a direct pointer, but instead is a pointer-to-pointers. In this
\* mode, the user\_pixel\_stride and user\_line\_stride are used to
\* advance the pointer offsets for each pixel in the output, but the
\* user\_bytes\_per\_element and user\_data\_type are used to put
\* (successive) entries into each destination pointer (if not `NULL`).
\*
\* So each channel pointer must then point to an array of
 *chunk.width*  chunk.height pointers.
\*
\* With this, you can only extract desired pixels (although all the
\* pixels must be initially decompressed) to handle such operations
\* like proxying where you might want to read every other pixel.
\*
\* If this is NOT set (0), the default unpacking routine assumes the
\* data will be planar and contiguous (each channel is a separate
\* memory block), ignoring user\_line\_stride and user\_pixel\_stride.

### [DECODE\_PIPELINE\_INITIALIZER ¶](#DECODE_PIPELINE_INITIALIZER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L253)

```
DECODE_PIPELINE_INITIALIZER :: decode_pipeline_t{pipe_size = size_of(decode_pipeline_t)}
```

### [DECODE\_SAMPLE\_COUNTS\_AS\_INDIVIDUAL ¶](#DECODE_SAMPLE_COUNTS_AS_INDIVIDUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L15)

```
DECODE_SAMPLE_COUNTS_AS_INDIVIDUAL :: u16(1 << 0)
```

 

Can be bit-wise or'ed into the decode\_flags in the decode pipeline.
\*
\* Indicates that the sample count table should be decoded to a an
\* individual sample count list (n, m, o, ...), with an extra int at
\* the end containing the total samples.
\*
\* Without this (i.e. a value of 0 in that bit), indicates the sample
\* count table should be decoded to a cumulative list (n, n+m, n+m+o,
\* ...), which is the on-disk representation.

### [DECODE\_SAMPLE\_DATA\_ONLY ¶](#DECODE_SAMPLE_DATA_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L42)

```
DECODE_SAMPLE_DATA_ONLY :: u16(1 << 2)
```

 

\*
\* When reading non-image data (i.e. deep), only read the sample table.

### [DEFAULT\_CONTEXT\_INITIALIZER ¶](#DEFAULT_CONTEXT_INITIALIZER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L305)

```
DEFAULT_CONTEXT_INITIALIZER :: context_initializer_t{zip_level = -2, dwa_quality = -1}
```

 

@brief Simple macro to initialize the context initializer with default values.

### [ENCODE\_DATA\_SAMPLE\_COUNTS\_ARE\_INDIVIDUAL ¶](#ENCODE_DATA_SAMPLE_COUNTS_ARE_INDIVIDUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L15)

```
ENCODE_DATA_SAMPLE_COUNTS_ARE_INDIVIDUAL :: u16(1 << 0)
```

 

Can be bit-wise or'ed into the decode\_flags in the decode pipeline.
\*
\* Indicates that the sample count table should be encoded from an
\* individual sample count list (n, m, o, ...), meaning it will have
\* to compute the cumulative counts on the fly.
\*
\* Without this (i.e. a value of 0 in that bit), indicates the sample
\* count table is already a cumulative list (n, n+m, n+m+o, ...),
\* which is the on-disk representation.

### [ENCODE\_NON\_IMAGE\_DATA\_AS\_POINTERS ¶](#ENCODE_NON_IMAGE_DATA_AS_POINTERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L35)

```
ENCODE_NON_IMAGE_DATA_AS_POINTERS :: u16(1 << 1)
```

 

Can be bit-wise or'ed into the decode\_flags in the decode pipeline.
\*
\* Indicates that the data in the channel pointers to encode from is not
\* a direct pointer, but instead is a pointer-to-pointers. In this
\* mode, the user\_pixel\_stride and user\_line\_stride are used to
\* advance the pointer offsets for each pixel in the output, but the
\* user\_bytes\_per\_element and user\_data\_type are used to put
\* (successive) entries into each destination.
\*
\* So each channel pointer must then point to an array of
 *chunk.width*  chunk.height pointers. If an entry is
\* `NULL`, 0 samples will be placed in the output.
\*
\* If this is NOT set (0), the default packing routine assumes the
\* data will be planar and contiguous (each channel is a separate
\* memory block), ignoring user\_line\_stride and user\_pixel\_stride and
\* advancing only by the sample counts and bytes per element.

### [ENCODE\_PIPELINE\_INITIALIZER ¶](#ENCODE_PIPELINE_INITIALIZER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L267)

```
ENCODE_PIPELINE_INITIALIZER :: encode_pipeline_t{pipe_size = size_of(encode_pipeline_t)}
```

### [OPENEXRCORE\_SHARED ¶](#OPENEXRCORE_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L4)

```
OPENEXRCORE_SHARED :: #config(OPENEXRCORE_SHARED, false)
```

## Variables

This section is empty.

## Procedures

### [GET\_TILE\_LEVEL\_MODE ¶](#GET_TILE_LEVEL_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L160)

```
GET_TILE_LEVEL_MODE :: proc "c" (tiledesc: attr_tiledesc_t) -> tile_level_mode_t {…}
```

 

@brief Macro to access type of tiling from packed structure.

### [GET\_TILE\_ROUND\_MODE ¶](#GET_TILE_ROUND_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L164)

```
GET_TILE_ROUND_MODE :: proc "c" (tiledesc: attr_tiledesc_t) -> tile_round_mode_t {…}
```

 

@brief Macro to access the rounding mode of tiling from packed structure.

### [PACK\_TILE\_LEVEL\_ROUND ¶](#PACK_TILE_LEVEL_ROUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin#L168)

```
PACK_TILE_LEVEL_ROUND :: proc "c" (lvl: tile_level_mode_t, mode: tile_round_mode_t) -> u8 {…}
```

 

@brief Macro to pack the tiling type and rounding mode into packed structure.

### [add\_channel ¶](#add_channel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L330)

```
add_channel :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	name:       cstring, 
	ptype:      pixel_type_t, 
	percept:    perceptual_treatment_t, 
	xsamp:      i32, 
	ysamp:      i32, 
) -> result_t ---
```

 

@brief Define a new channel to the output file part.

```
 *
 * The @p percept parameter is used for lossy compression techniques
 * to indicate that the value represented is closer to linear (1) or
 * closer to logarithmic (0). For r, g, b, luminance, this is normally
 * 0.
```

### [add\_part ¶](#add_part) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L26)

```
add_part :: proc "c" (ctxt: context_t, partname: rawptr, type: storage_t, new_index: ^i32) -> result_t ---
```

 

@brief Define a new part in the file.

### [attr\_declare ¶](#attr_declare) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L252)

```
attr_declare :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, type: attribute_type_t, newattr: ^^attribute_t) -> result_t ---
```

 

@brief Declare an attribute within the specified part.

```
 *
 * Only valid when a file is opened for write.
```

### [attr\_declare\_by\_type ¶](#attr_declare_by_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L241)

```
attr_declare_by_type :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, type: cstring, newattr: ^^attribute_t) -> result_t ---
```

 

Declare an attribute within the specified part.

```
 *
 * Only valid when a file is opened for write.
```

### [attr\_get\_box2f ¶](#attr_get_box2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L429)

```
attr_get_box2f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, outval: ^attr_box2f_t) -> result_t ---
```

### [attr\_get\_box2i ¶](#attr_get_box2i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L417)

```
attr_get_box2i :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, outval: ^attr_box2i_t) -> result_t ---
```

### [attr\_get\_channels ¶](#attr_get_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L446)

```
attr_get_channels :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, chlist: ^^attr_chlist_t) -> result_t ---
```

 

@brief Zero-copy query of channel data.

```
 *
 * Do not free or manipulate the @p chlist data, or use
 * after the lifetime of the context.
```

### [attr\_get\_chromaticities ¶](#attr_get_chromaticities) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L461)

```
attr_get_chromaticities :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, chroma: ^attr_chromaticities_t) -> result_t ---
```

### [attr\_get\_compression ¶](#attr_get_compression) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L473)

```
attr_get_compression :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^compression_t) -> result_t ---
```

### [attr\_get\_double ¶](#attr_get_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L485)

```
attr_get_double :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: f64) -> result_t ---
```

### [attr\_get\_envmap ¶](#attr_get_envmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L489)

```
attr_get_envmap :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^envmap_t) -> result_t ---
```

### [attr\_get\_float ¶](#attr_get_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L497)

```
attr_get_float :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^f32) -> result_t ---
```

### [attr\_get\_float\_vector ¶](#attr_get_float_vector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L506)

```
attr_get_float_vector :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, sz: ^i32, out: ^[^]f32) -> result_t ---
```

 

@brief Zero-copy query of float data.

```
 *
 * Do not free or manipulate the @p out data, or use after the
 * lifetime of the context.
```

### [attr\_get\_int ¶](#attr_get_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L520)

```
attr_get_int :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^i32) -> result_t ---
```

### [attr\_get\_keycode ¶](#attr_get_keycode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L524)

```
attr_get_keycode :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_keycode_t) -> result_t ---
```

### [attr\_get\_lineorder ¶](#attr_get_lineorder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L536)

```
attr_get_lineorder :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^lineorder_t) -> result_t ---
```

### [attr\_get\_m33d ¶](#attr_get_m33d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L556)

```
attr_get_m33d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_m33d_t) -> result_t ---
```

### [attr\_get\_m33f ¶](#attr_get_m33f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L544)

```
attr_get_m33f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_m33f_t) -> result_t ---
```

### [attr\_get\_m44d ¶](#attr_get_m44d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L580)

```
attr_get_m44d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_m44d_t) -> result_t ---
```

### [attr\_get\_m44f ¶](#attr_get_m44f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L568)

```
attr_get_m44f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_m44f_t) -> result_t ---
```

### [attr\_get\_preview ¶](#attr_get_preview) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L592)

```
attr_get_preview :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_preview_t) -> result_t ---
```

### [attr\_get\_rational ¶](#attr_get_rational) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L604)

```
attr_get_rational :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_rational_t) -> result_t ---
```

### [attr\_get\_string ¶](#attr_get_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L621)

```
attr_get_string :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, length: ^i32, out: ^cstring) -> result_t ---
```

 

@brief Zero-copy query of string value.

```
 *
 * Do not modify the string pointed to by @p out, and do not use
 * after the lifetime of the context.
```

### [attr\_get\_string\_vector ¶](#attr_get_string_vector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L639)

```
attr_get_string_vector :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, size: ^i32, out: ^cstring) -> result_t ---
```

 

@brief Zero-copy query of string data.

```
 *
 * Do not free the strings pointed to by the array.
 *
 * Must provide @p size.
 *
 * \p out must be a ``^cstring`` array large enough to hold
 * the string pointers for the string vector when provided.
```

### [attr\_get\_tiledesc ¶](#attr_get_tiledesc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L653)

```
attr_get_tiledesc :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_tiledesc_t) -> result_t ---
```

### [attr\_get\_timecode ¶](#attr_get_timecode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L665)

```
attr_get_timecode :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_timecode_t) -> result_t ---
```

### [attr\_get\_user ¶](#attr_get_user) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L749)

```
attr_get_user :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	name:       cstring, 
	type:       ^cstring, 
	size:       ^i32, 
	out:        ^rawptr, 
) -> result_t ---
```

### [attr\_get\_v2d ¶](#attr_get_v2d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L701)

```
attr_get_v2d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_v2d_t) -> result_t ---
```

### [attr\_get\_v2f ¶](#attr_get_v2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L689)

```
attr_get_v2f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_v2f_t) -> result_t ---
```

### [attr\_get\_v2i ¶](#attr_get_v2i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L677)

```
attr_get_v2i :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_v2i_t) -> result_t ---
```

### [attr\_get\_v3d ¶](#attr_get_v3d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L737)

```
attr_get_v3d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_v3d_t) -> result_t ---
```

### [attr\_get\_v3f ¶](#attr_get_v3f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L725)

```
attr_get_v3f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_v3f_t) -> result_t ---
```

### [attr\_get\_v3i ¶](#attr_get_v3i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L713)

```
attr_get_v3i :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, out: ^attr_v3i_t) -> result_t ---
```

### [attr\_set\_box2f ¶](#attr_set_box2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L435)

```
attr_set_box2f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, val: ^attr_box2f_t) -> result_t ---
```

### [attr\_set\_box2i ¶](#attr_set_box2i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L423)

```
attr_set_box2i :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, val: ^attr_box2i_t) -> result_t ---
```

### [attr\_set\_channels ¶](#attr_set_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L455)

```
attr_set_channels :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, channels: ^attr_chlist_t) -> result_t ---
```

 

@brief This allows one to quickly copy the channels from one file

```
 * to another.
```

### [attr\_set\_chromaticities ¶](#attr_set_chromaticities) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L467)

```
attr_set_chromaticities :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, chroma: ^attr_chromaticities_t) -> result_t ---
```

### [attr\_set\_compression ¶](#attr_set_compression) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L479)

```
attr_set_compression :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, comp: compression_t) -> result_t ---
```

### [attr\_set\_double ¶](#attr_set_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L487)

```
attr_set_double :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, val: f64) -> result_t ---
```

### [attr\_set\_envmap ¶](#attr_set_envmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L495)

```
attr_set_envmap :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, emap: envmap_t) -> result_t ---
```

### [attr\_set\_float ¶](#attr_set_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L499)

```
attr_set_float :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, val: f32) -> result_t ---
```

### [attr\_set\_float\_vector ¶](#attr_set_float_vector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L513)

```
attr_set_float_vector :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, sz: i32, vals: [^]f32) -> result_t ---
```

### [attr\_set\_int ¶](#attr_set_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L522)

```
attr_set_int :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, val: i32) -> result_t ---
```

### [attr\_set\_keycode ¶](#attr_set_keycode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L530)

```
attr_set_keycode :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, kc: ^attr_keycode_t) -> result_t ---
```

### [attr\_set\_lineorder ¶](#attr_set_lineorder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L542)

```
attr_set_lineorder :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, lo: lineorder_t) -> result_t ---
```

### [attr\_set\_m33d ¶](#attr_set_m33d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L562)

```
attr_set_m33d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, m: ^attr_m33d_t) -> result_t ---
```

### [attr\_set\_m33f ¶](#attr_set_m33f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L550)

```
attr_set_m33f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, m: ^attr_m33f_t) -> result_t ---
```

### [attr\_set\_m44d ¶](#attr_set_m44d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L586)

```
attr_set_m44d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, m: ^attr_m44d_t) -> result_t ---
```

### [attr\_set\_m44f ¶](#attr_set_m44f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L574)

```
attr_set_m44f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, m: ^attr_m44f_t) -> result_t ---
```

### [attr\_set\_preview ¶](#attr_set_preview) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L598)

```
attr_set_preview :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, p: ^attr_preview_t) -> result_t ---
```

### [attr\_set\_rational ¶](#attr_set_rational) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L610)

```
attr_set_rational :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, r: ^attr_rational_t) -> result_t ---
```

### [attr\_set\_string ¶](#attr_set_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L628)

```
attr_set_string :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, s: cstring) -> result_t ---
```

### [attr\_set\_string\_vector ¶](#attr_set_string_vector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L646)

```
attr_set_string_vector :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, size: i32, sv: ^cstring) -> result_t ---
```

### [attr\_set\_tiledesc ¶](#attr_set_tiledesc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L659)

```
attr_set_tiledesc :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, td: ^attr_tiledesc_t) -> result_t ---
```

### [attr\_set\_timecode ¶](#attr_set_timecode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L671)

```
attr_set_timecode :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, tc: ^attr_timecode_t) -> result_t ---
```

### [attr\_set\_user ¶](#attr_set_user) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L757)

```
attr_set_user :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	name:       cstring, 
	type:       cstring, 
	size:       i32, 
	out:        rawptr, 
) -> result_t ---
```

### [attr\_set\_v2d ¶](#attr_set_v2d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L707)

```
attr_set_v2d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, v: ^attr_v2d_t) -> result_t ---
```

### [attr\_set\_v2f ¶](#attr_set_v2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L695)

```
attr_set_v2f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, v: ^attr_v2f_t) -> result_t ---
```

### [attr\_set\_v2i ¶](#attr_set_v2i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L683)

```
attr_set_v2i :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, v: ^attr_v2i_t) -> result_t ---
```

### [attr\_set\_v3d ¶](#attr_set_v3d) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L743)

```
attr_set_v3d :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, v: ^attr_v3d_t) -> result_t ---
```

### [attr\_set\_v3f ¶](#attr_set_v3f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L731)

```
attr_set_v3f :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, v: ^attr_v3f_t) -> result_t ---
```

### [attr\_set\_v3i ¶](#attr_set_v3i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L719)

```
attr_set_v3i :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, v: ^attr_v3i_t) -> result_t ---
```

### [chunk\_default\_initialize ¶](#chunk_default_initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L50)

```
chunk_default_initialize :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	box:        ^attr_box2i_t, 
	levelx:     i32, 
	levely:     i32, 
	cinfo:      ^chunk_info_t, 
) -> result_t ---
```

 

initialize chunk info with the default values from the specified part

```
*
* The 'x' and 'y' parameters are used to indicate the starting position
* of the chunk being initialized. This does not perform any I/O to validate
* and so the values are only indicative. (but can be used to do things
* like compress / decompress a chunk without having a file to actually
* read
```

### [compress\_buffer ¶](#compress_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L16)

```
compress_buffer :: proc "c" (
	ctxt:            context_t, 
	level:           i32, 
	in_:             rawptr, 
	in_bytes:        uint, 
	out:             rawptr, 
	out_bytes_avail: uint, 
	actual_out:      ^uint, 
) -> result_t ---
```

 

Compresses a buffer using a zlib style compression.

```
 *
 * If the level is -1, will use the default compression set to the library
 * \ref set_default_zip_compression_level
 * data. This may include some extra padding for headers / scratch
```

### [compress\_chunk ¶](#compress_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L69)

```
compress_chunk :: proc "c" (encode_state: ^encode_pipeline_t) -> result_t ---
```

 

Exposes a method to apply compression to a chunk of data.

```
 *
 * This can be useful for inheriting default behavior of the
 * compression stage of an encoding pipeline, or other helper classes
 * to expose compression.
 *
 * NB: As implied, this function will be used during a normal encode
 * and write operation but can be used directly with a temporary
 * context (i.e. not running the full encode pipeline).
```

### [compress\_max\_buffer\_size ¶](#compress_max_buffer_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L9)

```
compress_max_buffer_size :: proc "c" (in_bytes: uint) -> uint ---
```

 

Computes a buffer that will be large enough to hold the compressed

```
 * data. This may include some extra padding for headers / scratch
```

### [compression\_lines\_per\_chunk ¶](#compression_lines_per_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L57)

```
compression_lines_per_chunk :: proc "c" (comptype: compression_t) -> i32 ---
```

 

Routine to query the lines required per chunk to compress with the

```
 * specified method.
 *
 * This is only meaningful for scanline encodings, tiled
 * representations have a different interpretation of this.
 *
 * These are constant values, this function returns -1 if the compression
 * type is unknown.
```

### [copy\_unset\_attributes ¶](#copy_unset_attributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L314)

```
copy_unset_attributes :: proc "c" (ctxt: context_t, part_index: i32, source: context_t, src_part_index: i32) -> result_t ---
```

 

@brief Copy the attributes from one part to another.

```
 *
 * This allows one to quickly unassigned attributes from one source to another.
 *
 * If an attribute in the source part has not been yet set in the
 * destination part, the item will be copied over.
 *
 * For example, when you add a part, the storage type and name
 * attributes are required arguments to the definition of a new part,
 * but channels has not yet been assigned. So by calling this with an
 * input file as the source, you can copy the channel definitions (and
 * any other unassigned attributes from the source).
```

### [decoding\_choose\_default\_routines ¶](#decoding_choose_default_routines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L279)

```
decoding_choose_default_routines :: proc "c" (ctxt: context_t, part_index: i32, decode: ^decode_pipeline_t) -> result_t ---
```

 

Given an initialized decode pipeline, find appropriate functions

```
 * to read and shuffle/convert data into the defined channel outputs.
 *
 * Calling this is not required if custom routines will be used, or if
 * just the raw compressed data is desired. Although in that scenario,
 * it is probably easier to just read the chunk directly using
 * exr_read_chunk().
```

### [decoding\_destroy ¶](#decoding_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L305)

```
decoding_destroy :: proc "c" (ctxt: context_t, decode: ^decode_pipeline_t) -> result_t ---
```

 

Free any intermediate memory in the decoding pipeline.

```
 *
 * This does *not* free any pointers referred to in the channel info
 * areas, but rather only the intermediate buffers and memory needed
 * for the structure itself.
```

### [decoding\_initialize ¶](#decoding_initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L265)

```
decoding_initialize :: proc "c" (ctxt: context_t, part_index: i32, cinfo: ^chunk_info_t, decode: ^decode_pipeline_t) -> result_t ---
```

 

Initialize the decoding pipeline structure with the channel info

```
 * for the specified part, and the first block to be read.
 *
 * NB: The decode->unpack_and_convert_fn field will be `NULL` after this. If that
 * stage is desired, initialize the channel output information and
 * call exr_decoding_choose_default_routines().
```

### [decoding\_run ¶](#decoding_run) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L296)

```
decoding_run :: proc "c" (ctxt: context_t, part_index: i32, decode: ^decode_pipeline_t) -> result_t ---
```

 

Execute the decoding pipeline.

### [decoding\_update ¶](#decoding_update) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin#L289)

```
decoding_update :: proc "c" (ctxt: context_t, part_index: i32, cinfo: ^chunk_info_t, decode: ^decode_pipeline_t) -> result_t ---
```

 

Given a decode pipeline previously initialized, update it for the

```
 * new chunk to be read.
 *
 * In this manner, memory buffers can be re-used to avoid continual
 * malloc/free calls. Further, it allows the previous choices for
 * the various functions to be quickly re-used.
```

### [encoding\_choose\_default\_routines ¶](#encoding_choose_default_routines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L292)

```
encoding_choose_default_routines :: proc "c" (ctxt: context_t, part_index: i32, encode_pipe: ^encode_pipeline_t) -> result_t ---
```

 

Given an initialized encode pipeline, find an appropriate

```
 * function to shuffle and convert data into the defined channel
 * outputs.
 *
 * Calling this is not required if a custom routine will be used, or
 * if just the raw decompressed data is desired.
```

### [encoding\_destroy ¶](#encoding_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L322)

```
encoding_destroy :: proc "c" (ctxt: context_t, encode_pipe: ^encode_pipeline_t) -> result_t ---
```

 

Free any intermediate memory in the encoding pipeline.

```
 *
 * This does NOT free any pointers referred to in the channel info
 * areas, but rather only the intermediate buffers and memory needed
 * for the structure itself.
```

### [encoding\_initialize ¶](#encoding_initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L279)

```
encoding_initialize :: proc "c" (ctxt: context_t, part_index: i32, cinfo: ^chunk_info_t, encode_pipe: ^encode_pipeline_t) -> result_t ---
```

 

Initialize the encoding pipeline structure with the channel info

```
 * for the specified part based on the chunk to be written.
 *
 * NB: The encode_pipe->pack_and_convert_fn field will be `NULL` after this. If that
 * stage is desired, initialize the channel output information and
 * call exr_encoding_choose_default_routines().
```

### [encoding\_run ¶](#encoding_run) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L311)

```
encoding_run :: proc "c" (ctxt: context_t, part_index: i32, encode_pipe: ^encode_pipeline_t) -> result_t ---
```

 

Execute the encoding pipeline.

### [encoding\_update ¶](#encoding_update) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin#L304)

```
encoding_update :: proc "c" (ctxt: context_t, part_index: i32, cinfo: ^chunk_info_t, encode_pipe: ^encode_pipeline_t) -> result_t ---
```

 

Given a encode pipeline previously initialized, update it for the

```
 * new chunk to be written.
 *
 * In this manner, memory buffers can be re-used to avoid continual
 * malloc/free calls. Further, it allows the previous choices for
 * the various functions to be quickly re-used.
```

### [exr\_validate\_chunk\_table ¶](#exr_validate_chunk_table) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L137)

```
exr_validate_chunk_table :: proc "c" (ctxt: context_t, part_index: i32) -> result_t ---
```

 

Return whether the chunk table for this part is completely written.

```
 *
 * This only validates that all the offsets are valid.
 *
 * return EXR_ERR_INCOMPLETE_CHUNK_TABLE when incomplete, EXR_ERR_SUCCESS
 * if it appears ok, or another error if otherwise problematic
```

### [finish ¶](#finish) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L331)

```
finish :: proc "c" (ctxt: ^context_t) -> result_t ---
```

 

@brief Close and free any internally allocated memory,

```
 * calling any provided destroy function for custom streams.
 *
 * If the file was opened for write, first save the chunk offsets
 * or any other unwritten data.
```

### [get\_attribute\_by\_index ¶](#get_attribute_by_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L208)

```
get_attribute_by_index :: proc "c" (ctxt: context_t, part_index: i32, mode: attr_list_access_mode_t, idx: i32, outattr: ^^attribute_t) -> result_t ---
```

 

@brief Query a particular attribute by index.

### [get\_attribute\_by\_name ¶](#get_attribute_by_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L216)

```
get_attribute_by_name :: proc "c" (ctxt: context_t, part_index: i32, name: cstring, outattr: ^^attribute_t) -> result_t ---
```

 

@brief Query a particular attribute by name.

### [get\_attribute\_count ¶](#get_attribute_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L205)

```
get_attribute_count :: proc "c" (ctxt: context_t, part_index: i32, count: ^i32) -> result_t ---
```

 

@brief Query the count of attributes in a part.

### [get\_attribute\_list ¶](#get_attribute_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L230)

```
get_attribute_list :: proc "c" (ctxt: context_t, part_index: i32, mode: attr_list_access_mode_t, count: ^i32, outlist: ^[^]attribute_t) -> result_t ---
```

 

@brief Query the list of attributes in a part.

```
 *
 * This retrieves a list of attributes currently defined in a part.
 *
 * If outlist is `NULL`, this function still succeeds, filling only the
 * count. In this manner, the user can allocate memory for the list of
 * attributes, then re-call this function to get the full list.
```

### [get\_channels ¶](#get_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L321)

```
get_channels :: proc "c" (ctxt: context_t, part_index: i32, chlist: ^^attr_chlist_t) -> result_t ---
```

 

@brief Retrieve the list of channels.

### [get\_chunk\_count ¶](#get_chunk_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L122)

```
get_chunk_count :: proc "c" (ctxt: context_t, part_index: i32, out: ^i32) -> result_t ---
```

 

Return the number of chunks contained in this part of the file.

```
 *
 * As in the technical documentation for OpenEXR, the chunk is the
 * generic term for a pixel data block. This is the atomic unit that
 * this library uses to negotiate data to and from a context.
 *
 * This should be used as a basis for splitting up how a file is
 * processed. Depending on the compression, a different number of
 * scanlines are encoded in each chunk, and since those need to be
 * encoded/decoded as a block, the chunk should be the basis for I/O
 * as well.
```

### [get\_chunk\_table ¶](#get_chunk_table) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L128)

```
get_chunk_table :: proc "c" (ctxt: context_t, part_index: i32, table: [^][^]u64, count: ^i32) -> result_t ---
```

 

Return a pointer to the chunk table and the count

```
 *
 * TODO: consider removing this prior to release once C++ fully converted
```

### [get\_chunk\_table\_offset ¶](#get_chunk_table_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L40)

```
get_chunk_table_offset :: proc "c" (ctxt: context_t, part_index: i32, chunk_offset_out: ^u64) -> result_t ---
```

 

@brief Retrieve the chunk table offset for the part in question.

### [get\_chunk\_unpacked\_size ¶](#get_chunk_unpacked_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L153)

```
get_chunk_unpacked_size :: proc "c" (ctxt: context_t, part_index: i32, out: ^u64) -> result_t ---
```

 

Return the maximum unpacked size of a chunk for the file part.

```
 *
 * This may be used ahead of any actual reading of data, so can be
 * used to pre-allocate buffers for multiple threads in one block or
 * whatever your application may require.
```

### [get\_compression ¶](#get_compression) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L347)

```
get_compression :: proc "c" (ctxt: context_t, part_index: i32, compression: ^compression_t) -> result_t ---
```

 

@brief Retrieve the compression method used for the specified part.

### [get\_count ¶](#get_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L13)

```
get_count :: proc "c" (ctxt: context_t, count: ^i32) -> result_t ---
```

 

@brief Query how many parts are in the file.

### [get\_data\_window ¶](#get_data_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L352)

```
get_data_window :: proc "c" (ctxt: context_t, part_index: i32, out: ^attr_box2i_t) -> result_t ---
```

 

@brief Retrieve the data window for the specified part.

### [get\_default\_dwa\_compression\_quality ¶](#get_default_dwa_compression_quality) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L167)

```
get_default_dwa_compression_quality :: proc "c" (q: ^f32) ---
```

 

@brief Retrieve the global default dwa compression quality

### [get\_default\_error\_message ¶](#get_default_error_message) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_errors.odin#L55)

```
get_default_error_message :: proc "c" (code: result_t) -> cstring ---
```

 

@brief Return a static string corresponding to the specified error code.

```
 *
 * The string should not be freed (it is compiled into the binary).
```

### [get\_default\_maximum\_image\_size ¶](#get_default_maximum_image_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L97)

```
get_default_maximum_image_size :: proc "c" (w, h: ^i32) ---
```

 

@brief Retrieve the global default maximum image size.

```
 *
 * This function does not fail.
```

### [get\_default\_maximum\_tile\_size ¶](#get_default_maximum_tile_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L138)

```
get_default_maximum_tile_size :: proc "c" (w, h: ^i32) ---
```

 

@brief Retrieve the global maximum tile size.

```
 *
 * This function does not fail.
```

### [get\_default\_zip\_compression\_level ¶](#get_default_zip_compression_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L156)

```
get_default_zip_compression_level :: proc "c" (l: ^i32) ---
```

 

@brief Retrieve the global default zip compression value

### [get\_display\_window ¶](#get_display_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L357)

```
get_display_window :: proc "c" (ctxt: context_t, part_index: i32, out: ^attr_box2i_t) -> result_t ---
```

 

@brief Retrieve the display window for the specified part.

### [get\_dwa\_compression\_level ¶](#get_dwa_compression_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L185)

```
get_dwa_compression_level :: proc "c" (ctxt: context_t, part_index: i32, level: ^f32) -> result_t ---
```

 

@brief Retrieve the dwa compression level used for the specified part.

```
 *
 * This only applies when the compression method is DWAA/DWAB.
 *
 * This value is NOT persisted in the file, and only exists for the
 * lifetime of the context, so will be at the default value when just
 * reading a file.
```

### [get\_error\_code\_as\_string ¶](#get_error_code_as_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_errors.odin#L61)

```
get_error_code_as_string :: proc "c" (code: result_t) -> cstring ---
```

 

@brief Return a static string corresponding to the specified error code.

```
 *
 * The string should not be freed (it is compiled into the binary).
```

### [get\_file\_name ¶](#get_file_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L442)

```
get_file_name :: proc "c" (ctxt: context_t, name: ^cstring) -> result_t ---
```

 

@brief Retrieve the file name the context is for as provided

```
 * during the start routine.
 *
 * Do not free the resulting string.
```

### [get\_file\_version\_and\_flags ¶](#get_file_version_and_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L447)

```
get_file_version_and_flags :: proc "c" (ctxt: context_t, ver: ^u32) -> result_t ---
```

 

@brief Retrieve the file version and flags the context is for as

```
 * parsed during the start routine.
```

### [get\_level\_sizes ¶](#get_level_sizes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L102)

```
get_level_sizes :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	levelx:     i32, 
	levely:     i32, 
	levw:       ^i32, 
	levh:       ^i32, 
) -> result_t ---
```

 

@brief Query the data sizes for a particular level in the specified part.

```
 *
 * If the part is a tiled part, fill in the width/height for the
 * specified levels.
 *
 * Return `ERR_SUCCESS` on success, an error otherwise (i.e. if the part
 * is not tiled).
 *
 * It is valid to pass `NULL` to either of the @p levw or @p levh
 * arguments, which enables testing if this part is a tiled part, or
 * if you don't need both for some reason.
```

### [get\_library\_version ¶](#get_library_version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L59)

```
get_library_version :: proc "c" (maj, min, patch: ^i32, extra: ^cstring) ---
```

 

@brief Retrieve the current library version. The @p extra string is for

```
 * custom installs, and is a static string, do not free the returned
 * pointer.
```

### [get\_lineorder ¶](#get_lineorder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L362)

```
get_lineorder :: proc "c" (ctxt: context_t, part_index: i32, out: ^lineorder_t) -> result_t ---
```

 

@brief Retrieve the line order for storing data in the specified part (use 0 for single part images).

### [get\_name ¶](#get_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L20)

```
get_name :: proc "c" (ctxt: context_t, part_index: i32, out: ^cstring) -> result_t ---
```

 

@brief Query the part name for the specified part.

```
 *
 * NB: If this file is a single part file and name has not been set, this
 * will return `NULL`.
```

### [get\_pixel\_aspect\_ratio ¶](#get_pixel_aspect_ratio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L367)

```
get_pixel_aspect_ratio :: proc "c" (ctxt: context_t, part_index: i32, par: ^f32) -> result_t ---
```

 

@brief Retrieve the pixel aspect ratio for the specified part (use 0 for single part images).

### [get\_scanlines\_per\_chunk ¶](#get_scanlines_per_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L145)

```
get_scanlines_per_chunk :: proc "c" (ctxt: context_t, part_index: i32, out: ^i32) -> result_t ---
```

 

Return the number of scanlines chunks for this file part.

```
 *
 * When iterating over a scanline file, this may be an easier metric
 * for multi-threading or other access than only negotiating chunk
 * counts, and so is provided as a utility.
```

### [get\_screen\_window\_center ¶](#get_screen_window_center) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L372)

```
get_screen_window_center :: proc "c" (ctxt: context_t, part_index: i32, wc: ^attr_v2f_t) -> result_t ---
```

 

@brief Retrieve the screen oriented window center for the specified part (use 0 for single part images).

### [get\_screen\_window\_width ¶](#get_screen_window_width) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L377)

```
get_screen_window_width :: proc "c" (ctxt: context_t, part_index: i32, out: ^f32) -> result_t ---
```

 

@brief Retrieve the screen oriented window width for the specified part (use 0 for single part images).

### [get\_storage ¶](#get_storage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L23)

```
get_storage :: proc "c" (ctxt: context_t, part_index: i32, out: ^storage_t) -> result_t ---
```

 

@brief Query the storage type for the specified part.

### [get\_tile\_counts ¶](#get_tile_counts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L82)

```
get_tile_counts :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	levelx:     i32, 
	levely:     i32, 
	countx:     ^i32, 
	county:     ^i32, 
) -> result_t ---
```

 

@brief Query the tile count for a particular level in the specified part.

```
 *
 * If the part is a tiled part, fills in the count for the
 * specified levels.
 *
 * Return `ERR_SUCCESS` on success, an error otherwise (i.e. if the part
 * is not tiled).
 *
 * It is valid to pass `NULL` to either of the @p countx or @p county
 * arguments, which enables testing if this part is a tiled part, or
 * if you don't need both for some reason.
```

### [get\_tile\_descriptor ¶](#get_tile_descriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L382)

```
get_tile_descriptor :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	xsize:      ^u32, 
	ysize:      ^u32, 
	level:      ^tile_level_mode_t, 
	round:      ^tile_round_mode_t, 
) -> result_t ---
```

 

@brief Retrieve the tiling info for a tiled part (use 0 for single part images).

### [get\_tile\_levels ¶](#get_tile_levels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L44)

```
get_tile_levels :: proc "c" (ctxt: context_t, part_index: i32, levelsx: ^i32, levelsy: ^i32) -> result_t ---
```

 

@brief Query how many levels are in the specified part.

```
 *
 * If the part is a tiled part, fill in how many tile levels are present.
 *
 * Return `ERR_SUCCESS` on success, an error otherwise (i.e. if the part
 * is not tiled).
 *
 * It is valid to pass `NULL` to either of the @p levelsx or @p levelsy
 * arguments, which enables testing if this part is a tiled part, or
 * if you don't need both (i.e. in the case of a mip-level tiled
 * image)
```

### [get\_tile\_sizes ¶](#get_tile_sizes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L63)

```
get_tile_sizes :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	levelx:     i32, 
	levely:     i32, 
	tilew:      ^i32, 
	tileh:      ^i32, 
) -> result_t ---
```

 

@brief Query the tile size for a particular level in the specified part.

```
 *
 * If the part is a tiled part, fill in the tile size for the
 * specified part/level.
 *
 * Return `ERR_SUCCESS` on success, an error otherwise (i.e. if the
 * part is not tiled).
 *
 * It is valid to pass `NULL` to either of the @p tilew or @p tileh
 * arguments, which enables testing if this part is a tiled part, or
 * if you don't need both (i.e. in the case of a mip-level tiled
 * image)
```

### [get\_user\_data ¶](#get_user_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L453)

```
get_user_data :: proc "c" (ctxt: context_t, userdata: ^rawptr) -> result_t ---
```

 

@brief Query the user data the context was constructed with. This

```
 * is perhaps useful in the error handler callback to jump back into
 * an object the user controls.
```

### [get\_version ¶](#get_version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L401)

```
get_version :: proc "c" (ctxt: context_t, part_index: i32, out: ^i32) -> result_t ---
```

### [get\_zip\_compression\_level ¶](#get_zip_compression_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L164)

```
get_zip_compression_level :: proc "c" (ctxt: context_t, part_index: i32, level: ^i32) -> result_t ---
```

 

@brief Retrieve the zip compression level used for the specified part.

```
 *
 * This only applies when the compression method involves using zip
 * compression (zip, zips, some modes of DWAA/DWAB).
 *
 * This value is NOT persisted in the file, and only exists for the
 * lifetime of the context, so will be at the default value when just
 * reading a file.
```

### [initialize\_required\_attr ¶](#initialize_required_attr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L273)

```
initialize_required_attr :: proc "c" (
	ctxt:               context_t, 
	part_index:         i32, 
	displayWindow:      ^attr_box2i_t, 
	dataWindow:         ^attr_box2i_t, 
	pixelaspectratio:   f32, 
	screenWindowCenter: attr_v2f_t, 
	screenWindowWidth:  f32, 
	lineorder:          lineorder_t, 
	ctype:              compression_t, 
) -> result_t ---
```

 

@brief Initialize all required attributes for all files.

```
 *
 * NB: other file types do require other attributes, such as the tile
 * description for a tiled file.
```

### [initialize\_required\_attr\_simple ¶](#initialize_required_attr_simple) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L294)

```
initialize_required_attr_simple :: proc "c" (ctxt: context_t, part_index: i32, width: i32, height: i32, ctype: compression_t) -> result_t ---
```

 

@brief Initialize all required attributes to default values:

```
 *
 * - `displayWindow` is set to (0, 0 -> @p width - 1, @p height - 1)
 * - `dataWindow` is set to (0, 0 -> @p width - 1, @p height - 1)
 * - `pixelAspectRatio` is set to 1.0
 * - `screenWindowCenter` is set to 0.f, 0.f
 * - `screenWindowWidth` is set to 1.f
 * - `lineorder` is set to `INCREASING_Y`
 * - `compression` is set to @p ctype
```

### [print\_context\_info ¶](#print_context_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_debug.odin#L5)

```
print_context_info :: proc "c" (c: context_t, verbose: b32) -> result_t ---
```

### [read\_chunk ¶](#read_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L68)

```
read_chunk :: proc "c" (ctxt: context_t, part_index: i32, cinfo: ^chunk_info_t, packed_data: rawptr) -> result_t ---
```

 

Read the packed data block for a chunk.

```
 *
 * This assumes that the buffer pointed to by @p packed_data is
 * large enough to hold the chunk block info packed_size bytes.
```

### [read\_deep\_chunk ¶](#read_deep_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L83)

```
read_deep_chunk :: proc "c" (ctxt: context_t, part_index: i32, cinfo: ^chunk_info_t, packed_data: rawptr, sample_data: rawptr) -> result_t ---
```

 

\*

```
 * Read chunk for deep data.
 *
 * This allows one to read the packed data, the sample count data, or both.
 * \c exr_read_chunk also works to read deep data packed data,
 * but this is a routine to get the sample count table and the packed
 * data in one go, or if you want to pre-read the sample count data,
 * you can get just that buffer.
```

### [read\_scanline\_chunk\_info ¶](#read_scanline_chunk_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L52)

```
read_scanline_chunk_info :: proc "c" (ctxt: context_t, part_index: i32, y: i32, cinfo: ^chunk_info_t) -> result_t ---
```

### [read\_tile\_chunk\_info ¶](#read_tile_chunk_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L54)

```
read_tile_chunk_info :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	tilex:      i32, 
	tiley:      i32, 
	levelx:     i32, 
	levely:     i32, 
	cinfo:      ^chunk_info_t, 
) -> result_t ---
```

### [register\_attr\_type\_handler ¶](#register_attr_type_handler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L470)

```
register_attr_type_handler :: proc "c" (ctxt: context_t, type: cstring, unpack_func_ptr: proc "c" (ctxt: context_t, data: rawptr, attrsize: i32, outsize: ^i32, outbuffer: ^rawptr) -> result_t, pack_func_ptr: proc "c" (ctxt: context_t, data: rawptr, datasize: i32, outsize: ^i32, outbuffer: rawptr) -> result_t, destroy_unpacked_func_ptr: proc "c" (ctxt: context_t, data: rawptr, datasize: i32)) -> result_t ---
```

 

Any opaque attribute data entry of the specified type is tagged

```
 * with these functions enabling downstream users to unpack (or pack)
 * the data.
 *
 * The library handles the memory packed data internally, but the
 * handler is expected to allocate and manage memory for the
 * *unpacked* buffer (the library will call the destroy function).
 *
 * NB: the pack function will be called twice (unless there is a
 * memory failure), the first with a `NULL` buffer, requesting the
 * maximum size (or exact size if known) for the packed buffer, then
 * the second to fill the output packed buffer, at which point the
 * size can be re-updated to have the final, precise size to put into
 * the file.
```

### [rle\_compress\_buffer ¶](#rle_compress_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L35)

```
rle_compress_buffer :: proc "c" (in_bytes: uint, in_: rawptr, out: rawptr, out_bytes_avail: uint) -> uint ---
```

 

Apply simple run length encoding and put in the output buffer.

### [rle\_uncompress\_buffer ¶](#rle_uncompress_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L42)

```
rle_uncompress_buffer :: proc "c" (in_bytes: uint, max_len: uint, in_: rawptr, out: rawptr) -> uint ---
```

 

Decode run length encoding and put in the output buffer.

### [set\_channels ¶](#set_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L344)

```
set_channels :: proc "c" (ctxt: context_t, part_index: i32, channels: ^attr_chlist_t) -> result_t ---
```

 

@brief Copy the channels from another source.

```
 *
 * Useful if you are manually constructing the list or simply copying
 * from an input file.
```

### [set\_chunk\_count ¶](#set_chunk_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L405)

```
set_chunk_count :: proc "c" (ctxt: context_t, part_index: i32, val: i32) -> result_t ---
```

### [set\_compression ¶](#set_compression) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L349)

```
set_compression :: proc "c" (ctxt: context_t, part_index: i32, ctype: compression_t) -> result_t ---
```

 

@brief Set the compression method used for the specified part.

### [set\_data\_window ¶](#set_data_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L354)

```
set_data_window :: proc "c" (ctxt: context_t, part_index: i32, dw: ^attr_box2i_t) -> i32 ---
```

 

@brief Set the data window for the specified part.

### [set\_default\_dwa\_compression\_quality ¶](#set_default_dwa_compression_quality) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L163)

```
set_default_dwa_compression_quality :: proc "c" (q: f32) ---
```

 

@brief Assigns a default DWA compression quality level.

```
 *
 * This value may be controlled separately on each part, but this
 * global control determines the initial value.
```

### [set\_default\_maximum\_image\_size ¶](#set_default_maximum_image_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L91)

```
set_default_maximum_image_size :: proc "c" (w, h: i32) ---
```

 

@brief Limit the size of image allowed to be parsed or created by

```
 * the library.
 *
 * This is used as a safety check against corrupt files, but can also
 * serve to avoid potential issues on machines which have very
 * constrained RAM.
 *
 * These values are among the only globals in the core layer of
 * OpenEXR. The intended use is for applications to define a global
 * default, which will be combined with the values provided to the
 * individual context creation routine. The values are used to check
 * against parsed header values. This adds some level of safety from
 * memory overruns where a corrupt file given to the system may cause
 * a large allocation to happen, enabling buffer overruns or other
 * potential security issue.
 *
 * These global values are combined with the values in
 * \ref exr_context_initializer_t using the following rules:
 *
 * 1. negative values are ignored.
 *
 * 2. if either value has a positive (non-zero) value, and the other
 *    has 0, the positive value is preferred.
 *
 * 3. If both are positive (non-zero), the minimum value is used.
 *
 * 4. If both values are 0, this disables the constrained size checks.
 *
 * This function does not fail.
```

### [set\_default\_maximum\_tile\_size ¶](#set_default_maximum_tile_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L132)

```
set_default_maximum_tile_size :: proc "c" (w, h: i32) ---
```

 

@brief Limit the size of an image tile allowed to be parsed or

```
 * created by the library.
 *
 * Similar to image size, this places constraints on the maximum tile
 * size as a safety check against bad file data
 *
 * This is used as a safety check against corrupt files, but can also
 * serve to avoid potential issues on machines which have very
 * constrained RAM
 *
 * These values are among the only globals in the core layer of
 * OpenEXR. The intended use is for applications to define a global
 * default, which will be combined with the values provided to the
 * individual context creation routine. The values are used to check
 * against parsed header values. This adds some level of safety from
 * memory overruns where a corrupt file given to the system may cause
 * a large allocation to happen, enabling buffer overruns or other
 * potential security issue.
 *
 * These global values are combined with the values in
 * \ref exr_context_initializer_t using the following rules:
 *
 * 1. negative values are ignored.
 *
 * 2. if either value has a positive (non-zero) value, and the other
 *    has 0, the positive value is preferred.
 *
 * 3. If both are positive (non-zero), the minimum value is used.
 *
 * 4. If both values are 0, this disables the constrained size checks.
 *
 * This function does not fail.
```

### [set\_default\_memory\_routines ¶](#set_default_memory_routines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L182)

```
set_default_memory_routines :: proc "c" (alloc_func: memory_allocation_func_t, free_func: memory_free_func_t) ---
```

 

@brief Allow the user to override default allocator used internal

```
 * allocations necessary for files, attributes, and other temporary
 * memory.
 *
 * These routines may be overridden when creating a specific context,
 * however this provides global defaults such that the default can be
 * applied.
 *
 * If either pointer is 0, the appropriate malloc/free routine will be
 * substituted.
 *
 * This function does not fail.
```

### [set\_default\_zip\_compression\_level ¶](#set_default_zip_compression_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L152)

```
set_default_zip_compression_level :: proc "c" (l: i32) ---
```

 

@brief Assigns a default zip compression level.

```
 *
 * This value may be controlled separately on each part, but this
 * global control determines the initial value.
```

### [set\_display\_window ¶](#set_display_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L359)

```
set_display_window :: proc "c" (ctxt: context_t, part_index: i32, dw: ^attr_box2i_t) -> i32 ---
```

 

@brief Set the display window for the specified part.

### [set\_dwa\_compression\_level ¶](#set_dwa_compression_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L195)

```
set_dwa_compression_level :: proc "c" (ctxt: context_t, part_index: i32, level: f32) -> result_t ---
```

 

@brief Set the dwa compression method used for the specified part.

```
 *
 * This only applies when the compression method is DWAA/DWAB.
 *
 * This value is NOT persisted in the file, and only exists for the
 * lifetime of the context, so this value will be ignored when
 * reading a file.
```

### [set\_lineorder ¶](#set_lineorder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L364)

```
set_lineorder :: proc "c" (ctxt: context_t, part_index: i32, lo: lineorder_t) -> result_t ---
```

 

@brief Set the line order for storing data in the specified part (use 0 for single part images).

### [set\_longname\_support ¶](#set_longname_support) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L491)

```
set_longname_support :: proc "c" (ctxt: context_t, onoff: b32) -> result_t ---
```

### [set\_name ¶](#set_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L399)

```
set_name :: proc "c" (ctxt: context_t, part_index: i32, val: cstring) -> result_t ---
```

### [set\_pixel\_aspect\_ratio ¶](#set_pixel_aspect_ratio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L369)

```
set_pixel_aspect_ratio :: proc "c" (ctxt: context_t, part_index: i32, par: f32) -> result_t ---
```

 

@brief Set the pixel aspect ratio for the specified part (use 0 for single part images).

### [set\_screen\_window\_center ¶](#set_screen_window_center) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L374)

```
set_screen_window_center :: proc "c" (ctxt: context_t, part_index: i32, wc: ^attr_v2f_t) -> i32 ---
```

 

@brief Set the screen oriented window center for the specified part (use 0 for single part images).

### [set\_screen\_window\_width ¶](#set_screen_window_width) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L379)

```
set_screen_window_width :: proc "c" (ctxt: context_t, part_index: i32, ssw: f32) -> result_t ---
```

 

@brief Set the screen oriented window width for the specified part (use 0 for single part images).

### [set\_tile\_descriptor ¶](#set_tile_descriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L391)

```
set_tile_descriptor :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	x_size:     u32, 
	y_size:     u32, 
	level_mode: tile_level_mode_t, 
	round_mode: tile_round_mode_t, 
) -> result_t ---
```

 

@brief Set the tiling info for a tiled part (use 0 for single part images).

### [set\_version ¶](#set_version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L403)

```
set_version :: proc "c" (ctxt: context_t, part_index: i32, val: i32) -> result_t ---
```

### [set\_zip\_compression\_level ¶](#set_zip_compression_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin#L175)

```
set_zip_compression_level :: proc "c" (ctxt: context_t, part_index: i32, level: i32) -> result_t ---
```

 

@brief Set the zip compression method used for the specified part.

```
 *
 * This only applies when the compression method involves using zip
 * compression (zip, zips, some modes of DWAA/DWAB).
 *
 * This value is NOT persisted in the file, and only exists for the
 * lifetime of the context, so this value will be ignored when
 * reading a file.
```

### [start\_inplace\_header\_update ¶](#start_inplace_header_update) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L412)

```
start_inplace_header_update :: proc "c" (ctxt: ^context_t, filename: cstring, ctxtdata: ^context_initializer_t) -> result_t ---
```

 

@brief Create a new context for updating an exr file in place.

```
 *
 * This is a custom mode that allows one to modify the value of a
 * metadata entry, although not to change the size of the header, or
 * any of the image data.
 *
 * If you have custom I/O requirements, see the initializer context
 * documentation \ref exr_context_initializer_t. The @p ctxtdata parameter
 * is optional, if `NULL`, default values will be used.
```

### [start\_read ¶](#start_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L353)

```
start_read :: proc "c" (ctxt: ^context_t, filename: cstring, ctxtdata: ^context_initializer_t) -> result_t ---
```

 

@brief Create and initialize a read-only exr read context.

```
 *
 * If a custom read function is provided, the filename is for
 * informational purposes only, the system assumes the user has
 * previously opened a stream, file, or whatever and placed relevant
 * data in userdata to access that.
 *
 * One notable attribute of the context is that once it has been
 * created and returned a successful code, it has parsed all the
 * header data. This is done as one step such that it is easier to
 * provide a safe context for multiple threads to request data from
 * the same context concurrently.
 *
 * Once finished reading data, use exr_finish() to clean up
 * the context.
 *
 * If you have custom I/O requirements, see the initializer context
 * documentation \ref exr_context_initializer_t. The @p ctxtdata parameter
 * is optional, if `NULL`, default values will be used.
```

### [start\_temporary\_context ¶](#start_temporary_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L432)

```
start_temporary_context :: proc "c" (ctxt: ^context_t, context_name: [^]u8, ctxtdata: ^context_initializer_t) -> result_t ---
```

 

@brief Create a new context for temporary use in memory.

```
*
* This is a custom mode that does not supporting writing actual image
* data, but one can create one of these, manipulate attributes,
* define additional parts, run validation, etc. without any
* requirement of actual file i/o.
*
* Note that this creates an defines an initial part for use, so one
* can immediately start definining attributes into part index 0.
*
* See the initializer context documentation \ref
* exr_context_initializer_t to be able to provide allocation
* overrides or other controls. The @p ctxtdata parameter is optional,
* if `NULL`, default values will be used.
```

### [start\_write ¶](#start_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L396)

```
start_write :: proc "c" (ctxt: ^context_t, filename: cstring, default_mode: default_write_mode_t, ctxtdata: ^context_initializer_t) -> result_t ---
```

 

@brief Create and initialize a write-only context.

```
 *
 * If a custom write function is provided, the filename is for
 * informational purposes only, and the @p default_mode parameter will be
 * ignored. As such, the system assumes the user has previously opened
 * a stream, file, or whatever and placed relevant data in userdata to
 * access that.
 *
 * Multi-Threading: To avoid issues with creating multi-part EXR
 * files, the library approaches writing as a multi-step process, so
 * the same concurrent guarantees can not be made for writing a
 * file. The steps are:
 *
 * 1. Context creation (this function)
 *
 * 2. Part definition (required attributes and additional metadata)
 *
 * 3. Transition to writing data (this "commits" the part definitions,
 * any changes requested after will result in an error)
 *
 * 4. Write part data in sequential order of parts (part<sub>0</sub>
 * -> part<sub>N-1</sub>).
 *
 * 5. Within each part, multiple threads can be encoding and writing
 * data concurrently. For some EXR part definitions, this may be able
 * to write data concurrently when it can predict the chunk sizes, or
 * data is allowed to be padded. For others, it may need to
 * temporarily cache chunks until the data is received to flush in
 * order. The concurrency around this is handled by the library
 *
 * 6. Once finished writing data, use exr_finish() to clean
 * up the context, which will flush any unwritten data such as the
 * final chunk offset tables, and handle the temporary file flags.
 *
 * If you have custom I/O requirements, see the initializer context
 * documentation \ref exr_context_initializer_t. The @p ctxtdata
 * parameter is optional, if `NULL`, default values will be used.
```

### [test\_file\_header ¶](#test_file_header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L323)

```
test_file_header :: proc "c" (filename: cstring, ctxtdata: ^context_initializer_t) -> result_t ---
```

 

@brief Check the magic number of the file and report

```
 * `EXR_ERR_SUCCESS` if the file appears to be a valid file (or at least
 * has the correct magic number and can be read).
```

### [uncompress\_buffer ¶](#uncompress_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L26)

```
uncompress_buffer :: proc "c" (
	ctxt:            context_t, 
	in_:             rawptr, 
	in_bytes:        uint, 
	out:             rawptr, 
	out_bytes_avail: uint, 
	actual_out:      ^uint, 
) -> result_t ---
```

 

Decompresses a buffer using a zlib style compression.

### [uncompress\_chunk ¶](#uncompress_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin#L81)

```
uncompress_chunk :: proc "c" (decode_state: ^decode_pipeline_t) -> result_t ---
```

 

Exposes a method to decompress a chunk of data.

```
 *
 * This can be useful for inheriting default behavior of the
 * uncompression stage of an decoding pipeline, or other helper classes
 * to expose compress / uncompress operations.
 *
 * NB: This function will be used during a normal read and decode
 * operation but can be used directly with a temporary context (i.e.
 * not running the full decode pipeline).
```

### [write\_deep\_scanline\_chunk ¶](#write_deep_scanline_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L123)

```
write_deep_scanline_chunk :: proc "c" (
	ctxt:             context_t, 
	part_index:       i32, 
	y:                i32, 
	packed_data:      rawptr, 
	packed_size:      u64, 
	unpacked_size:    u64, 
	sample_data:      rawptr, 
	sample_data_size: u64, 
) -> result_t ---
```

 

\*

```
 * @p y must the appropriate starting y for the specified chunk.
```

### [write\_deep\_tile\_chunk ¶](#write_deep_tile_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L143)

```
write_deep_tile_chunk :: proc "c" (
	ctxt:             context_t, 
	part_index:       i32, 
	tilex:            i32, 
	tiley:            i32, 
	levelx:           i32, 
	levely:           i32, 
	packed_data:      rawptr, 
	packed_size:      u64, 
	unpacked_size:    u64, 
	sample_data:      rawptr, 
	sample_data_size: u64, 
) -> result_t ---
```

### [write\_header ¶](#write_header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin#L507)

```
write_header :: proc "c" (ctxt: context_t) -> result_t ---
```

 

@brief Write the header data.

```
 *
 * Opening a new output file has a small initialization state problem
 * compared to opening for read/update: we need to enable the user
 * to specify an arbitrary set of metadata across an arbitrary number
 * of parts. To avoid having to create the list of parts and entire
 * metadata up front, prior to calling the above exr_start_write(),
 * allow the data to be set, then once this is called, it switches
 * into a mode where the library assumes the data is now valid.
 *
 * It will recompute the number of chunks that will be written, and
 * reset the chunk offsets. If you modify file attributes or part
 * information after a call to this, it will error.
```

### [write\_scanline\_chunk ¶](#write_scanline_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L113)

```
write_scanline_chunk :: proc "c" (ctxt: context_t, part_index: int, y: int, packed_data: rawptr, packed_size: u64) -> result_t ---
```

 

\*

```
 * @p y must the appropriate starting y for the specified chunk.
```

### [write\_scanline\_chunk\_info ¶](#write_scanline_chunk_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L96)

```
write_scanline_chunk_info :: proc "c" (ctxt: context_t, part_index: i32, y: i32, cinfo: ^chunk_info_t) -> result_t ---
```

 

Initialize a \c chunk\_info\_t structure when encoding scanline

```
 * data (similar to read but does not do anything with a chunk
 * table).
```

### [write\_tile\_chunk ¶](#write_tile_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L133)

```
write_tile_chunk :: proc "c" (
	ctxt:        context_t, 
	part_index:  i32, 
	tilex:       i32, 
	tiley:       i32, 
	levelx:      i32, 
	levely:      i32, 
	packed_data: rawptr, 
	packed_size: u64, 
) -> result_t ---
```

### [write\_tile\_chunk\_info ¶](#write_tile_chunk_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin#L101)

```
write_tile_chunk_info :: proc "c" (
	ctxt:       context_t, 
	part_index: i32, 
	tilex:      i32, 
	tiley:      i32, 
	levelx:     i32, 
	levely:     i32, 
	cinfo:      ^chunk_info_t, 
) -> result_t ---
```

 

Initialize a \c chunk\_info\_t structure when encoding tiled data

```
 * (similar to read but does not do anything with a chunk table).
```

## Procedure Groups

This section is empty.

## `#config` values

### [OPENEXRCORE\_SHARED ¶](#OPENEXRCORE_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin#L4)

```
OPENEXRCORE_SHARED :: #config(OPENEXRCORE_SHARED, false)
```

## Source Files

* [exr\_attr.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_attr.odin)
* [exr\_base.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_base.odin)
* [exr\_chunkio.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_chunkio.odin)
* [exr\_coding.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_coding.odin)
* [exr\_compression.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_compression.odin)
* [exr\_context.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_context.odin)
* [exr\_debug.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_debug.odin)
* [exr\_decode.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_decode.odin)
* [exr\_encode.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_encode.odin)
* [exr\_errors.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_errors.odin)
* [exr\_part.odin](https://github.com/odin-lang/Odin/tree/master/vendor/OpenEXRCore/exr_part.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.383048800 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [attr\_box2f\_t](#attr_box2f_t)
    + [attr\_box2i\_t](#attr_box2i_t)
    + [attr\_chlist\_entry\_t](#attr_chlist_entry_t)
    + [attr\_chlist\_t](#attr_chlist_t)
    + [attr\_chromaticities\_t](#attr_chromaticities_t)
    + [attr\_float\_vector\_t](#attr_float_vector_t)
    + [attr\_keycode\_t](#attr_keycode_t)
    + [attr\_list\_access\_mode\_t](#attr_list_access_mode_t)
    + [attr\_m33d\_t](#attr_m33d_t)
    + [attr\_m33f\_t](#attr_m33f_t)
    + [attr\_m44d\_t](#attr_m44d_t)
    + [attr\_m44f\_t](#attr_m44f_t)
    + [attr\_opaquedata\_t](#attr_opaquedata_t)
    + [attr\_preview\_t](#attr_preview_t)
    + [attr\_rational\_t](#attr_rational_t)
    + [attr\_string\_t](#attr_string_t)
    + [attr\_string\_vector\_t](#attr_string_vector_t)
    + [attr\_tiledesc\_t](#attr_tiledesc_t)
    + [attr\_timecode\_t](#attr_timecode_t)
    + [attr\_v2d\_t](#attr_v2d_t)
    + [attr\_v2f\_t](#attr_v2f_t)
    + [attr\_v2i\_t](#attr_v2i_t)
    + [attr\_v3d\_t](#attr_v3d_t)
    + [attr\_v3f\_t](#attr_v3f_t)
    + [attr\_v3i\_t](#attr_v3i_t)
    + [attribute\_t](#attribute_t)
    + [attribute\_type\_t](#attribute_type_t)
    + [chunk\_info\_t](#chunk_info_t)
    + [coding\_channel\_info\_t](#coding_channel_info_t)
    + [compression\_t](#compression_t)
    + [const\_context\_t](#const_context_t)
    + [context\_initializer\_t](#context_initializer_t)
    + [context\_t](#context_t)
    + [decode\_pipeline\_t](#decode_pipeline_t)
    + [default\_write\_mode\_t](#default_write_mode_t)
    + [destroy\_stream\_func\_ptr\_t](#destroy_stream_func_ptr_t)
    + [encode\_pipeline\_t](#encode_pipeline_t)
    + [envmap\_t](#envmap_t)
    + [error\_code\_t](#error_code_t)
    + [error\_handler\_cb\_t](#error_handler_cb_t)
    + [lineorder\_t](#lineorder_t)
    + [memory\_allocation\_func\_t](#memory_allocation_func_t)
    + [memory\_free\_func\_t](#memory_free_func_t)
    + [perceptual\_treatment\_t](#perceptual_treatment_t)
    + [pixel\_type\_t](#pixel_type_t)
    + [query\_size\_func\_ptr\_t](#query_size_func_ptr_t)
    + [read\_func\_ptr\_t](#read_func_ptr_t)
    + [result\_t](#result_t)
    + [storage\_t](#storage_t)
    + [stream\_error\_func\_ptr\_t](#stream_error_func_ptr_t)
    + [tile\_level\_mode\_t](#tile_level_mode_t)
    + [tile\_round\_mode\_t](#tile_round_mode_t)
    + [transcoding\_pipeline\_buffer\_id\_t](#transcoding_pipeline_buffer_id_t)
    + [write\_func\_ptr\_t](#write_func_ptr_t)
  * [Constants](#pkg-Constants)
    + [CONTEXT\_FLAG\_DISABLE\_CHUNK\_RECONSTRUCTION](#CONTEXT_FLAG_DISABLE_CHUNK_RECONSTRUCTION)
    + [CONTEXT\_FLAG\_SILENT\_HEADER\_PARSE](#CONTEXT_FLAG_SILENT_HEADER_PARSE)
    + [CONTEXT\_FLAG\_STRICT\_HEADER](#CONTEXT_FLAG_STRICT_HEADER)
    + [DECODE\_NON\_IMAGE\_DATA\_AS\_POINTERS](#DECODE_NON_IMAGE_DATA_AS_POINTERS)
    + [DECODE\_PIPELINE\_INITIALIZER](#DECODE_PIPELINE_INITIALIZER)
    + [DECODE\_SAMPLE\_COUNTS\_AS\_INDIVIDUAL](#DECODE_SAMPLE_COUNTS_AS_INDIVIDUAL)
    + [DECODE\_SAMPLE\_DATA\_ONLY](#DECODE_SAMPLE_DATA_ONLY)
    + [DEFAULT\_CONTEXT\_INITIALIZER](#DEFAULT_CONTEXT_INITIALIZER)
    + [ENCODE\_DATA\_SAMPLE\_COUNTS\_ARE\_INDIVIDUAL](#ENCODE_DATA_SAMPLE_COUNTS_ARE_INDIVIDUAL)
    + [ENCODE\_NON\_IMAGE\_DATA\_AS\_POINTERS](#ENCODE_NON_IMAGE_DATA_AS_POINTERS)
    + [ENCODE\_PIPELINE\_INITIALIZER](#ENCODE_PIPELINE_INITIALIZER)
    + [OPENEXRCORE\_SHARED](#OPENEXRCORE_SHARED)
  * [Procedures](#pkg-Procedures)
    + [GET\_TILE\_LEVEL\_MODE](#GET_TILE_LEVEL_MODE)
    + [GET\_TILE\_ROUND\_MODE](#GET_TILE_ROUND_MODE)
    + [PACK\_TILE\_LEVEL\_ROUND](#PACK_TILE_LEVEL_ROUND)
    + [add\_channel](#add_channel)
    + [add\_part](#add_part)
    + [attr\_declare](#attr_declare)
    + [attr\_declare\_by\_type](#attr_declare_by_type)
    + [attr\_get\_box2f](#attr_get_box2f)
    + [attr\_get\_box2i](#attr_get_box2i)
    + [attr\_get\_channels](#attr_get_channels)
    + [attr\_get\_chromaticities](#attr_get_chromaticities)
    + [attr\_get\_compression](#attr_get_compression)
    + [attr\_get\_double](#attr_get_double)
    + [attr\_get\_envmap](#attr_get_envmap)
    + [attr\_get\_float](#attr_get_float)
    + [attr\_get\_float\_vector](#attr_get_float_vector)
    + [attr\_get\_int](#attr_get_int)
    + [attr\_get\_keycode](#attr_get_keycode)
    + [attr\_get\_lineorder](#attr_get_lineorder)
    + [attr\_get\_m33d](#attr_get_m33d)
    + [attr\_get\_m33f](#attr_get_m33f)
    + [attr\_get\_m44d](#attr_get_m44d)
    + [attr\_get\_m44f](#attr_get_m44f)
    + [attr\_get\_preview](#attr_get_preview)
    + [attr\_get\_rational](#attr_get_rational)
    + [attr\_get\_string](#attr_get_string)
    + [attr\_get\_string\_vector](#attr_get_string_vector)
    + [attr\_get\_tiledesc](#attr_get_tiledesc)
    + [attr\_get\_timecode](#attr_get_timecode)
    + [attr\_get\_user](#attr_get_user)
    + [attr\_get\_v2d](#attr_get_v2d)
    + [attr\_get\_v2f](#attr_get_v2f)
    + [attr\_get\_v2i](#attr_get_v2i)
    + [attr\_get\_v3d](#attr_get_v3d)
    + [attr\_get\_v3f](#attr_get_v3f)
    + [attr\_get\_v3i](#attr_get_v3i)
    + [attr\_set\_box2f](#attr_set_box2f)
    + [attr\_set\_box2i](#attr_set_box2i)
    + [attr\_set\_channels](#attr_set_channels)
    + [attr\_set\_chromaticities](#attr_set_chromaticities)
    + [attr\_set\_compression](#attr_set_compression)
    + [attr\_set\_double](#attr_set_double)
    + [attr\_set\_envmap](#attr_set_envmap)
    + [attr\_set\_float](#attr_set_float)
    + [attr\_set\_float\_vector](#attr_set_float_vector)
    + [attr\_set\_int](#attr_set_int)
    + [attr\_set\_keycode](#attr_set_keycode)
    + [attr\_set\_lineorder](#attr_set_lineorder)
    + [attr\_set\_m33d](#attr_set_m33d)
    + [attr\_set\_m33f](#attr_set_m33f)
    + [attr\_set\_m44d](#attr_set_m44d)
    + [attr\_set\_m44f](#attr_set_m44f)
    + [attr\_set\_preview](#attr_set_preview)
    + [attr\_set\_rational](#attr_set_rational)
    + [attr\_set\_string](#attr_set_string)
    + [attr\_set\_string\_vector](#attr_set_string_vector)
    + [attr\_set\_tiledesc](#attr_set_tiledesc)
    + [attr\_set\_timecode](#attr_set_timecode)
    + [attr\_set\_user](#attr_set_user)
    + [attr\_set\_v2d](#attr_set_v2d)
    + [attr\_set\_v2f](#attr_set_v2f)
    + [attr\_set\_v2i](#attr_set_v2i)
    + [attr\_set\_v3d](#attr_set_v3d)
    + [attr\_set\_v3f](#attr_set_v3f)
    + [attr\_set\_v3i](#attr_set_v3i)
    + [chunk\_default\_initialize](#chunk_default_initialize)
    + [compress\_buffer](#compress_buffer)
    + [compress\_chunk](#compress_chunk)
    + [compress\_max\_buffer\_size](#compress_max_buffer_size)
    + [compression\_lines\_per\_chunk](#compression_lines_per_chunk)
    + [copy\_unset\_attributes](#copy_unset_attributes)
    + [decoding\_choose\_default\_routines](#decoding_choose_default_routines)
    + [decoding\_destroy](#decoding_destroy)
    + [decoding\_initialize](#decoding_initialize)
    + [decoding\_run](#decoding_run)
    + [decoding\_update](#decoding_update)
    + [encoding\_choose\_default\_routines](#encoding_choose_default_routines)
    + [encoding\_destroy](#encoding_destroy)
    + [encoding\_initialize](#encoding_initialize)
    + [encoding\_run](#encoding_run)
    + [encoding\_update](#encoding_update)
    + [exr\_validate\_chunk\_table](#exr_validate_chunk_table)
    + [finish](#finish)
    + [get\_attribute\_by\_index](#get_attribute_by_index)
    + [get\_attribute\_by\_name](#get_attribute_by_name)
    + [get\_attribute\_count](#get_attribute_count)
    + [get\_attribute\_list](#get_attribute_list)
    + [get\_channels](#get_channels)
    + [get\_chunk\_count](#get_chunk_count)
    + [get\_chunk\_table](#get_chunk_table)
    + [get\_chunk\_table\_offset](#get_chunk_table_offset)
    + [get\_chunk\_unpacked\_size](#get_chunk_unpacked_size)
    + [get\_compression](#get_compression)
    + [get\_count](#get_count)
    + [get\_data\_window](#get_data_window)
    + [get\_default\_dwa\_compression\_quality](#get_default_dwa_compression_quality)
    + [get\_default\_error\_message](#get_default_error_message)
    + [get\_default\_maximum\_image\_size](#get_default_maximum_image_size)
    + [get\_default\_maximum\_tile\_size](#get_default_maximum_tile_size)
    + [get\_default\_zip\_compression\_level](#get_default_zip_compression_level)
    + [get\_display\_window](#get_display_window)
    + [get\_dwa\_compression\_level](#get_dwa_compression_level)
    + [get\_error\_code\_as\_string](#get_error_code_as_string)
    + [get\_file\_name](#get_file_name)
    + [get\_file\_version\_and\_flags](#get_file_version_and_flags)
    + [get\_level\_sizes](#get_level_sizes)
    + [get\_library\_version](#get_library_version)
    + [get\_lineorder](#get_lineorder)
    + [get\_name](#get_name)
    + [get\_pixel\_aspect\_ratio](#get_pixel_aspect_ratio)
    + [get\_scanlines\_per\_chunk](#get_scanlines_per_chunk)
    + [get\_screen\_window\_center](#get_screen_window_center)
    + [get\_screen\_window\_width](#get_screen_window_width)
    + [get\_storage](#get_storage)
    + [get\_tile\_counts](#get_tile_counts)
    + [get\_tile\_descriptor](#get_tile_descriptor)
    + [get\_tile\_levels](#get_tile_levels)
    + [get\_tile\_sizes](#get_tile_sizes)
    + [get\_user\_data](#get_user_data)
    + [get\_version](#get_version)
    + [get\_zip\_compression\_level](#get_zip_compression_level)
    + [initialize\_required\_attr](#initialize_required_attr)
    + [initialize\_required\_attr\_simple](#initialize_required_attr_simple)
    + [print\_context\_info](#print_context_info)
    + [read\_chunk](#read_chunk)
    + [read\_deep\_chunk](#read_deep_chunk)
    + [read\_scanline\_chunk\_info](#read_scanline_chunk_info)
    + [read\_tile\_chunk\_info](#read_tile_chunk_info)
    + [register\_attr\_type\_handler](#register_attr_type_handler)
    + [rle\_compress\_buffer](#rle_compress_buffer)
    + [rle\_uncompress\_buffer](#rle_uncompress_buffer)
    + [set\_channels](#set_channels)
    + [set\_chunk\_count](#set_chunk_count)
    + [set\_compression](#set_compression)
    + [set\_data\_window](#set_data_window)
    + [set\_default\_dwa\_compression\_quality](#set_default_dwa_compression_quality)
    + [set\_default\_maximum\_image\_size](#set_default_maximum_image_size)
    + [set\_default\_maximum\_tile\_size](#set_default_maximum_tile_size)
    + [set\_default\_memory\_routines](#set_default_memory_routines)
    + [set\_default\_zip\_compression\_level](#set_default_zip_compression_level)
    + [set\_display\_window](#set_display_window)
    + [set\_dwa\_compression\_level](#set_dwa_compression_level)
    + [set\_lineorder](#set_lineorder)
    + [set\_longname\_support](#set_longname_support)
    + [set\_name](#set_name)
    + [set\_pixel\_aspect\_ratio](#set_pixel_aspect_ratio)
    + [set\_screen\_window\_center](#set_screen_window_center)
    + [set\_screen\_window\_width](#set_screen_window_width)
    + [set\_tile\_descriptor](#set_tile_descriptor)
    + [set\_version](#set_version)
    + [set\_zip\_compression\_level](#set_zip_compression_level)
    + [start\_inplace\_header\_update](#start_inplace_header_update)
    + [start\_read](#start_read)
    + [start\_temporary\_context](#start_temporary_context)
    + [start\_write](#start_write)
    + [test\_file\_header](#test_file_header)
    + [uncompress\_buffer](#uncompress_buffer)
    + [uncompress\_chunk](#uncompress_chunk)
    + [write\_deep\_scanline\_chunk](#write_deep_scanline_chunk)
    + [write\_deep\_tile\_chunk](#write_deep_tile_chunk)
    + [write\_header](#write_header)
    + [write\_scanline\_chunk](#write_scanline_chunk)
    + [write\_scanline\_chunk\_info](#write_scanline_chunk_info)
    + [write\_tile\_chunk](#write_tile_chunk)
    + [write\_tile\_chunk\_info](#write_tile_chunk_info)
  * [`#config` values](#pkg-`#config` values)
    + [OPENEXRCORE\_SHARED](#OPENEXRCORE_SHARED)
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