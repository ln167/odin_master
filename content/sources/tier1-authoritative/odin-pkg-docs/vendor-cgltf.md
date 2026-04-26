package cgltf - pkg.odin-lang.org 






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



Current Package: *[cgltf](/vendor/cgltf)*

  

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
2. [cgltf](/vendor/cgltf)

# package vendor:cgltf [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [Cgtlf](https://github.com/jkuhlmann/cgltf).

## Index

Types (65)

* [accessor](#accessor)
* [accessor\_sparse](#accessor_sparse)
* [alpha\_mode](#alpha_mode)
* [animation](#animation)
* [animation\_channel](#animation_channel)
* [animation\_path\_type](#animation_path_type)
* [animation\_sampler](#animation_sampler)
* [anisotropy](#anisotropy)
* [asset](#asset)
* [attribute](#attribute)
* [attribute\_type](#attribute_type)
* [buffer](#buffer)
* [buffer\_view](#buffer_view)
* [buffer\_view\_type](#buffer_view_type)
* [camera](#camera)
* [camera\_orthographic](#camera_orthographic)
* [camera\_perspective](#camera_perspective)
* [camera\_type](#camera_type)
* [clearcoat](#clearcoat)
* [component\_type](#component_type)
* [data](#data)
* [data\_free\_method](#data_free_method)
* [dispersion](#dispersion)
* [draco\_mesh\_compression](#draco_mesh_compression)
* [emissive\_strength](#emissive_strength)
* [extension](#extension)
* [extras\_t](#extras_t)
* [file\_options](#file_options)
* [file\_type](#file_type)
* [filter\_type](#filter_type)
* [image](#image)
* [interpolation\_type](#interpolation_type)
* [ior](#ior)
* [iridescence](#iridescence)
* [light](#light)
* [light\_type](#light_type)
* [material](#material)
* [material\_mapping](#material_mapping)
* [material\_variant](#material_variant)
* [memory\_options](#memory_options)
* [mesh](#mesh)
* [mesh\_gpu\_instancing](#mesh_gpu_instancing)
* [meshopt\_compression](#meshopt_compression)
* [meshopt\_compression\_filter](#meshopt_compression_filter)
* [meshopt\_compression\_mode](#meshopt_compression_mode)
* [morph\_target](#morph_target)
* [node](#node)
* [options](#options)
* [pbr\_metallic\_roughness](#pbr_metallic_roughness)
* [pbr\_specular\_glossiness](#pbr_specular_glossiness)
* [primitive](#primitive)
* [primitive\_type](#primitive_type)
* [result](#result)
* [sampler](#sampler)
* [scene](#scene)
* [sheen](#sheen)
* [skin](#skin)
* [specular](#specular)
* [texture](#texture)
* [texture\_transform](#texture_transform)
* [texture\_view](#texture_view)
* [transmission](#transmission)
* [type](#type)
* [volume](#volume)
* [wrap\_mode](#wrap_mode)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (38)

* [accessor\_index](#accessor_index)
* [accessor\_read\_float](#accessor_read_float)
* [accessor\_read\_index](#accessor_read_index)
* [accessor\_read\_uint](#accessor_read_uint)
* [accessor\_unpack\_floats](#accessor_unpack_floats)
* [accessor\_unpack\_indices](#accessor_unpack_indices)
* [animation\_channel\_index](#animation_channel_index)
* [animation\_index](#animation_index)
* [animation\_sampler\_index](#animation_sampler_index)
* [buffer\_index](#buffer_index)
* [buffer\_view\_data](#buffer_view_data)
* [buffer\_view\_index](#buffer_view_index)
* [calc\_size](#calc_size)
* [camera\_index](#camera_index)
* [component\_size](#component_size)
* [copy\_extras\_json](#copy_extras_json)
* [decode\_string](#decode_string)
* [decode\_uri](#decode_uri)
* [free](#free)
* [image\_index](#image_index)
* [light\_index](#light_index)
* [load\_buffer\_base64](#load_buffer_base64)
* [load\_buffers](#load_buffers)
* [material\_index](#material_index)
* [mesh\_index](#mesh_index)
* [node\_index](#node_index)
* [node\_transform\_local](#node_transform_local)
* [node\_transform\_world](#node_transform_world)
* [num\_components](#num_components)
* [parse](#parse)
* [parse\_file](#parse_file)
* [sampler\_index](#sampler_index)
* [scene\_index](#scene_index)
* [skin\_index](#skin_index)
* [texture\_index](#texture_index)
* [validate](#validate)
* [write](#write)
* [write\_file](#write_file)

Procedure Groups (0)

This section is empty.

## Types

### [accessor ¶](#accessor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L229)

```
accessor :: struct {
	name:             cstring,
	component_type:   component_type,
	normalized:       b32,
	type:             type,
	offset:           uint,
	count:            uint,
	stride:           uint,
	buffer_view:      ^buffer_view,
	has_min:          b32,
	min:              [16]f32,
	has_max:          b32,
	max:              [16]f32,
	is_sparse:        b32,
	sparse:           accessor_sparse,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [accessor\_index](/vendor/cgltf/#accessor_index)
* [accessor\_read\_float](/vendor/cgltf/#accessor_read_float)
* [accessor\_read\_index](/vendor/cgltf/#accessor_read_index)
* [accessor\_read\_uint](/vendor/cgltf/#accessor_read_uint)
* [accessor\_unpack\_floats](/vendor/cgltf/#accessor_unpack_floats)
* [accessor\_unpack\_indices](/vendor/cgltf/#accessor_unpack_indices)

### [accessor\_sparse ¶](#accessor_sparse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L220)

```
accessor_sparse :: struct {
	count:                  uint,
	indices_buffer_view:    ^buffer_view,
	indices_byte_offset:    uint,
	indices_component_type: component_type,
	values_buffer_view:     ^buffer_view,
	values_byte_offset:     uint,
}
```

### [alpha\_mode ¶](#alpha_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L119)

```
alpha_mode :: enum i32 {
	opaque, 
	mask, 
	blend, 
}
```

### [animation ¶](#animation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L583)

```
animation :: struct {
	name:             cstring,
	samplers:         []animation_sampler,
	channels:         []animation_channel,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [animation\_channel\_index](/vendor/cgltf/#animation_channel_index)
* [animation\_index](/vendor/cgltf/#animation_index)
* [animation\_sampler\_index](/vendor/cgltf/#animation_sampler_index)

### [animation\_channel ¶](#animation_channel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L574)

```
animation_channel :: struct {
	sampler:          ^animation_sampler,
	target_node:      ^node,
	target_path:      animation_path_type,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [animation\_channel\_index](/vendor/cgltf/#animation_channel_index)

### [animation\_path\_type ¶](#animation_path_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L125)

```
animation_path_type :: enum i32 {
	invalid, 
	translation, 
	rotation, 
	scale, 
	weights, 
}
```

### [animation\_sampler ¶](#animation_sampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L565)

```
animation_sampler :: struct {
	input:            ^accessor,
	output:           ^accessor,
	interpolation:    interpolation_type,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [animation\_sampler\_index](/vendor/cgltf/#animation_sampler_index)

### [anisotropy ¶](#anisotropy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L390)

```
anisotropy :: struct {
	anisotropy_strength: f32,
	anisotropy_rotation: f32,
	anisotropy_texture:  texture_view,
}
```

### [asset ¶](#asset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L597)

```
asset :: struct {
	copyright:        cstring,
	generator:        cstring,
	version:          cstring,
	min_version:      cstring,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

### [attribute ¶](#attribute) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L249)

```
attribute :: struct {
	name:  cstring,
	type:  attribute_type,
	index: i32,
	data:  ^accessor,
}
```

### [attribute\_type ¶](#attribute_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L75)

```
attribute_type :: enum i32 {
	invalid, 
	position, 
	normal, 
	tangent, 
	texcoord, 
	color, 
	joints, 
	weights, 
	custom, 
}
```

### [buffer ¶](#buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L170)

```
buffer :: struct {
	name:             cstring,
	size:             uint,
	uri:              cstring,
	data:             rawptr,
	// loaded by cgltf_load_buffers 
	data_free_method: data_free_method,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [buffer\_index](/vendor/cgltf/#buffer_index)

### [buffer\_view ¶](#buffer_view) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L205)

```
buffer_view :: struct {
	name:                    cstring,
	buffer:                  ^buffer,
	offset:                  uint,
	size:                    uint,
	stride:                  uint,
	// 0 == automatically determined by accessor 
	type:                    buffer_view_type,
	data:                    rawptr,
	// overrides buffer->data if present, filled by extensions 
	has_meshopt_compression: b32,
	meshopt_compression:     meshopt_compression,
	extras:                  extras_t,
	extensions_count:        uint,
	extensions:              [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [buffer\_view\_data](/vendor/cgltf/#buffer_view_data)
* [buffer\_view\_index](/vendor/cgltf/#buffer_view_index)

### [buffer\_view\_type ¶](#buffer_view_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L69)

```
buffer_view_type :: enum i32 {
	invalid, 
	indices, 
	vertices, 
}
```

### [camera ¶](#camera) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L510)

```
camera :: struct {
	name:             cstring,
	type:             camera_type,
	data:             struct #raw_union {
		perspective:  camera_perspective `raw_union_tag:"type=.perspective"`,
		orthographic: camera_orthographic `raw_union_tag:"type=.orthographic"`,
	},
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [camera\_index](/vendor/cgltf/#camera_index)

### [camera\_orthographic ¶](#camera_orthographic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L502)

```
camera_orthographic :: struct {
	xmag:   f32,
	ymag:   f32,
	zfar:   f32,
	znear:  f32,
	extras: extras_t,
}
```

### [camera\_perspective ¶](#camera_perspective) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L492)

```
camera_perspective :: struct {
	has_aspect_ratio: b32,
	aspect_ratio:     f32,
	yfov:             f32,
	has_zfar:         b32,
	zfar:             f32,
	znear:            f32,
	extras:           extras_t,
}
```

### [camera\_type ¶](#camera_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L139)

```
camera_type :: enum i32 {
	invalid, 
	perspective, 
	orthographic, 
}
```

### [clearcoat ¶](#clearcoat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L338)

```
clearcoat :: struct {
	clearcoat_texture:           texture_view,
	clearcoat_roughness_texture: texture_view,
	clearcoat_normal_texture:    texture_view,
	clearcoat_factor:            f32,
	clearcoat_roughness_factor:  f32,
}
```

### [component\_type ¶](#component_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L87)

```
component_type :: enum i32 {
	invalid, 
	r_8,     // BYTE
	r_8u,    // UNSIGNED_BYTE
	r_16,    // SHORT
	r_16u,   // UNSIGNED_SHORT
	r_32u,   // UNSIGNED_INT
	r_32f,   // FLOAT
}
```

##### Related Procedures With Parameters

* [calc\_size](/vendor/cgltf/#calc_size)
* [component\_size](/vendor/cgltf/#component_size)

### [data ¶](#data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L607)

```
data :: struct {
	file_type:             file_type,
	file_data:             rawptr,
	asset:                 asset,
	meshes:                []mesh,
	materials:             []material,
	accessors:             []accessor,
	buffer_views:          []buffer_view,
	buffers:               []buffer,
	images:                []image,
	textures:              []texture,
	samplers:              []sampler,
	skins:                 []skin,
	cameras:               []camera,
	lights:                []light,
	nodes:                 []node,
	scenes:                []scene,
	scene:                 ^scene,
	animations:            []animation,
	variants:              []material_variant,
	extras:                extras_t,
	data_extensions_count: uint,
	data_extensions:       [^]extension `fmt:"v,extensions_count"`,
	extensions_used:       []cstring,
	extensions_required:   []cstring,
	json:                  string,
	bin:                   []u8,
	memory:                memory_options,
	file:                  file_options,
}
```

##### Related Procedures With Parameters

* [accessor\_index](/vendor/cgltf/#accessor_index)
* [animation\_index](/vendor/cgltf/#animation_index)
* [buffer\_index](/vendor/cgltf/#buffer_index)
* [buffer\_view\_index](/vendor/cgltf/#buffer_view_index)
* [camera\_index](/vendor/cgltf/#camera_index)
* [copy\_extras\_json](/vendor/cgltf/#copy_extras_json)
* [free](/vendor/cgltf/#free)
* [image\_index](/vendor/cgltf/#image_index)
* [light\_index](/vendor/cgltf/#light_index)
* [load\_buffers](/vendor/cgltf/#load_buffers)
* [material\_index](/vendor/cgltf/#material_index)
* [mesh\_index](/vendor/cgltf/#mesh_index)
* [node\_index](/vendor/cgltf/#node_index)
* [sampler\_index](/vendor/cgltf/#sampler_index)
* [scene\_index](/vendor/cgltf/#scene_index)
* [skin\_index](/vendor/cgltf/#skin_index)
* [texture\_index](/vendor/cgltf/#texture_index)
* [validate](/vendor/cgltf/#validate)
* [write](/vendor/cgltf/#write)
* [write\_file](/vendor/cgltf/#write_file)



##### Related Procedures With Returns

* [parse](/vendor/cgltf/#parse)
* [parse\_file](/vendor/cgltf/#parse_file)

### [data\_free\_method ¶](#data_free_method) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L152)

```
data_free_method :: enum i32 {
	none, 
	file_release, 
	memory_free, 
}
```

### [dispersion ¶](#dispersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L396)

```
dispersion :: struct {
	dispersion: f32,
}
```

### [draco\_mesh\_compression ¶](#draco_mesh_compression) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L449)

```
draco_mesh_compression :: struct {
	buffer_view: ^buffer_view,
	attributes:  []attribute,
}
```

### [emissive\_strength ¶](#emissive_strength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L377)

```
emissive_strength :: struct {
	emissive_strength: f32,
}
```

### [extension ¶](#extension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L165)

```
extension :: struct {
	name: cstring,
	data: [^]u8,
}
```

### [extras\_t ¶](#extras_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L158)

```
extras_t :: struct {
	start_offset: uint,
	// this field is deprecated and will be removed in the future; use data instead 
	end_offset:   uint,
	// this field is deprecated and will be removed in the future; use data instead 
	data:         [^]u8,
}
```

##### Related Procedures With Parameters

* [copy\_extras\_json](/vendor/cgltf/#copy_extras_json)

### [file\_options ¶](#file_options) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L56)

```
file_options :: struct {
	read:      proc "c" (memory_options: ^memory_options, file_options: ^file_options, path: cstring, size: ^uint, data: ^rawptr) -> result,
	release:   proc "c" (memory_options: ^memory_options, file_options: ^file_options, data: rawptr),
	user_data: rawptr,
}
```

### [file\_type ¶](#file_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L31)

```
file_type :: enum i32 {
	invalid, 
	gltf, 
	glb, 
}
```

### [filter\_type ¶](#filter_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L266)

```
filter_type :: enum i32 {
	undefined              = 0, 
	nearest                = 9728, 
	linear                 = 9729, 
	nearest_mipmap_nearest = 9984, 
	linear_mipmap_nearest  = 9985, 
	nearest_mipmap_linear  = 9986, 
	linear_mipmap_linear   = 9987, 
}
```

### [image ¶](#image) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L256)

```
image :: struct {
	name:             cstring,
	uri:              cstring,
	buffer_view:      ^buffer_view,
	mime_type:        cstring,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [image\_index](/vendor/cgltf/#image_index)

### [interpolation\_type ¶](#interpolation_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L133)

```
interpolation_type :: enum i32 {
	linear, 
	step, 
	cubic_spline, 
}
```

### [ior ¶](#ior) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L352)

```
ior :: struct {
	ior: f32,
}
```

### [iridescence ¶](#iridescence) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L381)

```
iridescence :: struct {
	iridescence_factor:            f32,
	iridescence_texture:           texture_view,
	iridescence_ior:               f32,
	iridescence_thickness_min:     f32,
	iridescence_thickness_max:     f32,
	iridescence_thickness_texture: texture_view,
}
```

### [light ¶](#light) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L522)

```
light :: struct {
	name:                  cstring,
	color:                 [3]f32,
	intensity:             f32,
	type:                  light_type,
	range:                 f32,
	spot_inner_cone_angle: f32,
	spot_outer_cone_angle: f32,
	extras:                extras_t,
}
```

##### Related Procedures With Parameters

* [light\_index](/vendor/cgltf/#light_index)

### [light\_type ¶](#light_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L145)

```
light_type :: enum i32 {
	invalid, 
	directional, 
	point, 
	spot, 
}
```

### [material ¶](#material) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L400)

```
material :: struct {
	name:                        cstring,
	has_pbr_metallic_roughness:  b32,
	has_pbr_specular_glossiness: b32,
	has_clearcoat:               b32,
	has_transmission:            b32,
	has_volume:                  b32,
	has_ior:                     b32,
	has_specular:                b32,
	has_sheen:                   b32,
	has_emissive_strength:       b32,
	has_iridescence:             b32,
	has_anisotropy:              b32,
	has_dispersion:              b32,
	pbr_metallic_roughness:      pbr_metallic_roughness,
	pbr_specular_glossiness:     pbr_specular_glossiness,
	clearcoat:                   clearcoat,
	ior:                         ior,
	specular:                    specular,
	sheen:                       sheen,
	transmission:                transmission,
	volume:                      volume,
	emissive_strength:           emissive_strength,
	iridescence:                 iridescence,
	anisotropy:                  anisotropy,
	dispersion:                  dispersion,
	normal_texture:              texture_view,
	occlusion_texture:           texture_view,
	emissive_texture:            texture_view,
	emissive_factor:             [3]f32,
	alpha_mode:                  alpha_mode,
	alpha_cutoff:                f32,
	double_sided:                b32,
	unlit:                       b32,
	extras:                      extras_t,
	extensions_count:            uint,
	extensions:                  [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [material\_index](/vendor/cgltf/#material_index)

### [material\_mapping ¶](#material_mapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L439)

```
material_mapping :: struct {
	variant:  uint,
	material: ^material,
	extras:   extras_t,
}
```

### [material\_variant ¶](#material_variant) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L592)

```
material_variant :: struct {
	name:   cstring,
	extras: extras_t,
}
```

### [memory\_options ¶](#memory_options) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L50)

```
memory_options :: struct {
	alloc_func: proc "c" (user: rawptr, size: uint) -> rawptr,
	free_func:  proc "c" (user: rawptr, ptr: rawptr),
	user_data:  rawptr,
}
```

### [mesh ¶](#mesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L472)

```
mesh :: struct {
	name:             cstring,
	primitives:       []primitive,
	weights:          []f32,
	target_names:     []cstring,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [mesh\_index](/vendor/cgltf/#mesh_index)

### [mesh\_gpu\_instancing ¶](#mesh_gpu_instancing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L454)

```
mesh_gpu_instancing :: struct {
	attributes: []attribute,
}
```

### [meshopt\_compression ¶](#meshopt_compression) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L195)

```
meshopt_compression :: struct {
	buffer: ^buffer,
	offset: uint,
	size:   uint,
	stride: uint,
	count:  uint,
	mode:   meshopt_compression_mode,
	filter: meshopt_compression_filter,
}
```

### [meshopt\_compression\_filter ¶](#meshopt_compression_filter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L188)

```
meshopt_compression_filter :: enum i32 {
	none, 
	octahedral, 
	quaternion, 
	exponential, 
}
```

### [meshopt\_compression\_mode ¶](#meshopt_compression_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L181)

```
meshopt_compression_mode :: enum i32 {
	invalid, 
	attributes, 
	triangles, 
	indices, 
}
```

### [morph\_target ¶](#morph_target) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L445)

```
morph_target :: struct {
	attributes: []attribute,
}
```

### [node ¶](#node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L533)

```
node :: struct {
	name:                    cstring,
	parent:                  ^node,
	children:                []^node,
	skin:                    ^skin,
	mesh:                    ^mesh,
	camera:                  ^camera,
	light:                   ^light,
	weights:                 []f32,
	has_translation:         b32,
	has_rotation:            b32,
	has_scale:               b32,
	has_matrix:              b32,
	translation:             [3]f32,
	rotation:                [4]f32,
	scale:                   [3]f32,
	matrix_:                 [16]f32,
	extras:                  extras_t,
	has_mesh_gpu_instancing: b32,
	mesh_gpu_instancing:     mesh_gpu_instancing,
	extensions_count:        uint,
	extensions:              [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [node\_index](/vendor/cgltf/#node_index)
* [node\_transform\_local](/vendor/cgltf/#node_transform_local)
* [node\_transform\_world](/vendor/cgltf/#node_transform_world)

### [options ¶](#options) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L62)

```
options :: struct {
	type:             file_type,
	// invalid == auto detect 
	json_token_count: uint,
	// 0 == auto 
	memory:           memory_options,
	file:             file_options,
}
```

##### Related Procedures With Parameters

* [load\_buffer\_base64](/vendor/cgltf/#load_buffer_base64)
* [load\_buffers](/vendor/cgltf/#load_buffers)
* [parse](/vendor/cgltf/#parse)
* [parse\_file](/vendor/cgltf/#parse_file)
* [write](/vendor/cgltf/#write)
* [write\_file](/vendor/cgltf/#write_file)

### [pbr\_metallic\_roughness ¶](#pbr_metallic_roughness) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L320)

```
pbr_metallic_roughness :: struct {
	base_color_texture:         texture_view,
	metallic_roughness_texture: texture_view,
	base_color_factor:          [4]f32,
	metallic_factor:            f32,
	roughness_factor:           f32,
}
```

### [pbr\_specular\_glossiness ¶](#pbr_specular_glossiness) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L329)

```
pbr_specular_glossiness :: struct {
	diffuse_texture:             texture_view,
	specular_glossiness_texture: texture_view,
	diffuse_factor:              [4]f32,
	specular_factor:             [3]f32,
	glossiness_factor:           f32,
}
```

### [primitive ¶](#primitive) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L458)

```
primitive :: struct {
	type:                       primitive_type,
	indices:                    ^accessor,
	material:                   ^material,
	attributes:                 []attribute,
	targets:                    []morph_target,
	extras:                     extras_t,
	has_draco_mesh_compression: b32,
	draco_mesh_compression:     draco_mesh_compression,
	mappings:                   []material_mapping,
	extensions_count:           uint,
	extensions:                 [^]extension `fmt:"v,extensions_count"`,
}
```

### [primitive\_type ¶](#primitive_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L108)

```
primitive_type :: enum i32 {
	invalid, 
	points, 
	lines, 
	line_loop, 
	line_strip, 
	triangles, 
	triangle_strip, 
	triangle_fan, 
}
```

### [result ¶](#result) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L37)

```
result :: enum i32 {
	success, 
	data_too_short, 
	unknown_format, 
	invalid_json, 
	invalid_gltf, 
	invalid_options, 
	file_not_found, 
	io_error, 
	out_of_memory, 
	legacy_gltf, 
}
```

##### Related Procedures With Returns

* [copy\_extras\_json](/vendor/cgltf/#copy_extras_json)
* [load\_buffer\_base64](/vendor/cgltf/#load_buffer_base64)
* [load\_buffers](/vendor/cgltf/#load_buffers)
* [parse](/vendor/cgltf/#parse)
* [parse\_file](/vendor/cgltf/#parse_file)
* [validate](/vendor/cgltf/#validate)
* [write\_file](/vendor/cgltf/#write_file)

### [sampler ¶](#sampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L282)

```
sampler :: struct {
	name:             cstring,
	mag_filter:       filter_type,
	min_filter:       filter_type,
	wrap_s:           wrap_mode,
	wrap_t:           wrap_mode,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [sampler\_index](/vendor/cgltf/#sampler_index)

### [scene ¶](#scene) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L557)

```
scene :: struct {
	name:             cstring,
	nodes:            []^node,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [scene\_index](/vendor/cgltf/#scene_index)

### [sheen ¶](#sheen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L370)

```
sheen :: struct {
	sheen_color_texture:     texture_view,
	sheen_color_factor:      [3]f32,
	sheen_roughness_texture: texture_view,
	sheen_roughness_factor:  f32,
}
```

### [skin ¶](#skin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L482)

```
skin :: struct {
	name:                  cstring,
	joints:                []^node,
	skeleton:              ^node,
	inverse_bind_matrices: ^accessor,
	extras:                extras_t,
	extensions_count:      uint,
	extensions:            [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [skin\_index](/vendor/cgltf/#skin_index)

### [specular ¶](#specular) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L356)

```
specular :: struct {
	specular_texture:       texture_view,
	specular_color_texture: texture_view,
	specular_color_factor:  [3]f32,
	specular_factor:        f32,
}
```

### [texture ¶](#texture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L293)

```
texture :: struct {
	name:             cstring,
	image_:           ^image,
	sampler:          ^sampler,
	has_basisu:       b32,
	basisu_image:     ^image,
	extras:           extras_t,
	extensions_count: uint,
	extensions:       [^]extension `fmt:"v,extensions_count"`,
}
```

##### Related Procedures With Parameters

* [texture\_index](/vendor/cgltf/#texture_index)

### [texture\_transform ¶](#texture_transform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L304)

```
texture_transform :: struct {
	offset:       [2]f32,
	rotation:     f32,
	scale:        [2]f32,
	has_texcoord: b32,
	texcoord:     i32,
}
```

### [texture\_view ¶](#texture_view) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L312)

```
texture_view :: struct {
	texture:       ^texture,
	texcoord:      i32,
	scale:         f32,
	// equivalent to strength for occlusion_texture 
	has_transform: b32,
	transform:     texture_transform,
}
```

### [transmission ¶](#transmission) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L347)

```
transmission :: struct {
	transmission_texture: texture_view,
	transmission_factor:  f32,
}
```

### [type ¶](#type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L97)

```
type :: enum i32 {
	invalid, 
	scalar, 
	vec2, 
	vec3, 
	vec4, 
	mat2, 
	mat3, 
	mat4, 
}
```

##### Related Procedures With Parameters

* [calc\_size](/vendor/cgltf/#calc_size)
* [num\_components](/vendor/cgltf/#num_components)

### [volume ¶](#volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L363)

```
volume :: struct {
	thickness_texture:    texture_view,
	thickness_factor:     f32,
	attenuation_color:    [3]f32,
	attenuation_distance: f32,
}
```

### [wrap\_mode ¶](#wrap_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L276)

```
wrap_mode :: enum i32 {
	clamp_to_edge   = 33071, 
	mirrored_repeat = 33648, 
	repeat          = 10497, 
}
```

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [accessor\_index ¶](#accessor_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L737)

```
accessor_index :: proc "c" (data: ^data, object: ^accessor) -> uint ---
```

### [accessor\_read\_float ¶](#accessor_read_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L709)

```
accessor_read_float :: proc "c" (accessor: ^accessor, index: uint, out: [^]f32, element_size: uint) -> b32 ---
```

### [accessor\_read\_index ¶](#accessor_read_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L713)

```
accessor_read_index :: proc "c" (accessor: ^accessor, index: uint) -> uint ---
```

### [accessor\_read\_uint ¶](#accessor_read_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L711)

```
accessor_read_uint :: proc "c" (accessor: ^accessor, index: uint, out: [^]u32, element_size: uint) -> b32 ---
```

### [accessor\_unpack\_floats ¶](#accessor_unpack_floats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L724)

```
accessor_unpack_floats :: proc "c" (accessor: ^accessor, out: [^]f32, float_count: uint) -> uint ---
```

### [accessor\_unpack\_indices ¶](#accessor_unpack_indices) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L726)

```
accessor_unpack_indices :: proc "c" (accessor: ^accessor, out: rawptr, out_component_size: uint, index_count: uint) -> uint ---
```

### [animation\_channel\_index ¶](#animation_channel_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L763)

```
animation_channel_index :: proc "c" (animation: ^animation, object: ^animation_channel) -> uint ---
```

### [animation\_index ¶](#animation_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L759)

```
animation_index :: proc "c" (data: ^data, object: ^animation) -> uint ---
```

### [animation\_sampler\_index ¶](#animation_sampler_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L761)

```
animation_sampler_index :: proc "c" (animation: ^animation, object: ^animation_sampler) -> uint ---
```

### [buffer\_index ¶](#buffer_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L741)

```
buffer_index :: proc "c" (data: ^data, object: ^buffer) -> uint ---
```

### [buffer\_view\_data ¶](#buffer_view_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L706)

```
buffer_view_data :: proc "c" (view: ^buffer_view) -> [^]u8 ---
```

### [buffer\_view\_index ¶](#buffer_view_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L739)

```
buffer_view_index :: proc "c" (data: ^data, object: ^buffer_view) -> uint ---
```

### [calc\_size ¶](#calc_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L721)

```
calc_size :: proc "c" (type: type, component_type: component_type) -> uint ---
```

### [camera\_index ¶](#camera_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L751)

```
camera_index :: proc "c" (data: ^data, object: ^camera) -> uint ---
```

### [component\_size ¶](#component_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L719)

```
component_size :: proc "c" (component_type: component_type) -> uint ---
```

### [copy\_extras\_json ¶](#copy_extras_json) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L730)

```
copy_extras_json :: proc "c" (data: ^data, extras: ^extras_t, dest: [^]u8, dest_size: ^uint) -> result ---
```

 

this function is deprecated and will be removed in the future; use cgltf\_extras::data instead

### [decode\_string ¶](#decode_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L693)

```
decode_string :: proc "c" (string: [^]u8) -> uint ---
```

### [decode\_uri ¶](#decode_uri) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L695)

```
decode_uri :: proc "c" (uri: [^]u8) -> uint ---
```

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L700)

```
free :: proc "c" (data: ^data) ---
```

### [image\_index ¶](#image_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L743)

```
image_index :: proc "c" (data: ^data, object: ^image) -> uint ---
```

### [light\_index ¶](#light_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L753)

```
light_index :: proc "c" (data: ^data, object: ^light) -> uint ---
```

### [load\_buffer\_base64 ¶](#load_buffer_base64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L675)

```
load_buffer_base64 :: proc "c" (#by_ptr options: options, size: uint, base64: cstring) -> (out_data: rawptr, res: result) {…}
```

### [load\_buffers ¶](#load_buffers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L687)

```
load_buffers :: proc "c" (#by_ptr options: options, data: ^data, gltf_path: cstring) -> result ---
```

### [material\_index ¶](#material_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L735)

```
material_index :: proc "c" (data: ^data, object: ^material) -> uint ---
```

### [mesh\_index ¶](#mesh_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L733)

```
mesh_index :: proc "c" (data: ^data, object: ^mesh) -> uint ---
```

### [node\_index ¶](#node_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L755)

```
node_index :: proc "c" (data: ^data, object: ^node) -> uint ---
```

### [node\_transform\_local ¶](#node_transform_local) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L702)

```
node_transform_local :: proc "c" (node: ^node, out_matrix: [^]f32) ---
```

### [node\_transform\_world ¶](#node_transform_world) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L703)

```
node_transform_world :: proc "c" (node: ^node, out_matrix: [^]f32) ---
```

### [num\_components ¶](#num_components) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L716)

```
num_components :: proc "c" (type: type) -> uint ---
```

### [parse ¶](#parse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L650)

```
parse :: proc "c" (#by_ptr options: options, data_ptr: rawptr, size: uint) -> (out_data: ^data, res: result) {…}
```

### [parse\_file ¶](#parse_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L663)

```
parse_file :: proc "c" (#by_ptr options: options, path: cstring) -> (out_data: ^data, res: result) {…}
```

### [sampler\_index ¶](#sampler_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L747)

```
sampler_index :: proc "c" (data: ^data, object: ^sampler) -> uint ---
```

### [scene\_index ¶](#scene_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L757)

```
scene_index :: proc "c" (data: ^data, object: ^scene) -> uint ---
```

### [skin\_index ¶](#skin_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L749)

```
skin_index :: proc "c" (data: ^data, object: ^skin) -> uint ---
```

### [texture\_index ¶](#texture_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L745)

```
texture_index :: proc "c" (data: ^data, object: ^texture) -> uint ---
```

### [validate ¶](#validate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L698)

```
validate :: proc "c" (data: ^data) -> result ---
```

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L768)

```
write :: proc "c" (#by_ptr options: options, buffer: [^]u8, size: uint, data: ^data) -> uint ---
```

### [write\_file ¶](#write_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin#L766)

```
write_file :: proc "c" (#by_ptr options: options, path: cstring, data: ^data) -> result ---
```

## Procedure Groups

This section is empty.

## Source Files

* [cgltf.odin](https://github.com/odin-lang/Odin/tree/master/vendor/cgltf/cgltf.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.130420200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [accessor](#accessor)
    + [accessor\_sparse](#accessor_sparse)
    + [alpha\_mode](#alpha_mode)
    + [animation](#animation)
    + [animation\_channel](#animation_channel)
    + [animation\_path\_type](#animation_path_type)
    + [animation\_sampler](#animation_sampler)
    + [anisotropy](#anisotropy)
    + [asset](#asset)
    + [attribute](#attribute)
    + [attribute\_type](#attribute_type)
    + [buffer](#buffer)
    + [buffer\_view](#buffer_view)
    + [buffer\_view\_type](#buffer_view_type)
    + [camera](#camera)
    + [camera\_orthographic](#camera_orthographic)
    + [camera\_perspective](#camera_perspective)
    + [camera\_type](#camera_type)
    + [clearcoat](#clearcoat)
    + [component\_type](#component_type)
    + [data](#data)
    + [data\_free\_method](#data_free_method)
    + [dispersion](#dispersion)
    + [draco\_mesh\_compression](#draco_mesh_compression)
    + [emissive\_strength](#emissive_strength)
    + [extension](#extension)
    + [extras\_t](#extras_t)
    + [file\_options](#file_options)
    + [file\_type](#file_type)
    + [filter\_type](#filter_type)
    + [image](#image)
    + [interpolation\_type](#interpolation_type)
    + [ior](#ior)
    + [iridescence](#iridescence)
    + [light](#light)
    + [light\_type](#light_type)
    + [material](#material)
    + [material\_mapping](#material_mapping)
    + [material\_variant](#material_variant)
    + [memory\_options](#memory_options)
    + [mesh](#mesh)
    + [mesh\_gpu\_instancing](#mesh_gpu_instancing)
    + [meshopt\_compression](#meshopt_compression)
    + [meshopt\_compression\_filter](#meshopt_compression_filter)
    + [meshopt\_compression\_mode](#meshopt_compression_mode)
    + [morph\_target](#morph_target)
    + [node](#node)
    + [options](#options)
    + [pbr\_metallic\_roughness](#pbr_metallic_roughness)
    + [pbr\_specular\_glossiness](#pbr_specular_glossiness)
    + [primitive](#primitive)
    + [primitive\_type](#primitive_type)
    + [result](#result)
    + [sampler](#sampler)
    + [scene](#scene)
    + [sheen](#sheen)
    + [skin](#skin)
    + [specular](#specular)
    + [texture](#texture)
    + [texture\_transform](#texture_transform)
    + [texture\_view](#texture_view)
    + [transmission](#transmission)
    + [type](#type)
    + [volume](#volume)
    + [wrap\_mode](#wrap_mode)
  * [Procedures](#pkg-Procedures)
    + [accessor\_index](#accessor_index)
    + [accessor\_read\_float](#accessor_read_float)
    + [accessor\_read\_index](#accessor_read_index)
    + [accessor\_read\_uint](#accessor_read_uint)
    + [accessor\_unpack\_floats](#accessor_unpack_floats)
    + [accessor\_unpack\_indices](#accessor_unpack_indices)
    + [animation\_channel\_index](#animation_channel_index)
    + [animation\_index](#animation_index)
    + [animation\_sampler\_index](#animation_sampler_index)
    + [buffer\_index](#buffer_index)
    + [buffer\_view\_data](#buffer_view_data)
    + [buffer\_view\_index](#buffer_view_index)
    + [calc\_size](#calc_size)
    + [camera\_index](#camera_index)
    + [component\_size](#component_size)
    + [copy\_extras\_json](#copy_extras_json)
    + [decode\_string](#decode_string)
    + [decode\_uri](#decode_uri)
    + [free](#free)
    + [image\_index](#image_index)
    + [light\_index](#light_index)
    + [load\_buffer\_base64](#load_buffer_base64)
    + [load\_buffers](#load_buffers)
    + [material\_index](#material_index)
    + [mesh\_index](#mesh_index)
    + [node\_index](#node_index)
    + [node\_transform\_local](#node_transform_local)
    + [node\_transform\_world](#node_transform_world)
    + [num\_components](#num_components)
    + [parse](#parse)
    + [parse\_file](#parse_file)
    + [sampler\_index](#sampler_index)
    + [scene\_index](#scene_index)
    + [skin\_index](#skin_index)
    + [texture\_index](#texture_index)
    + [validate](#validate)
    + [write](#write)
    + [write\_file](#write_file)
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