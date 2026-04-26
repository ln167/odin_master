package microui - pkg.odin-lang.org 






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



Current Package: *[microui](/vendor/microui)*

  

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
2. [microui](/vendor/microui)

# package vendor:microui [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

An Odin-native source port of [rxi's microui](https://github.com/rxi/microui) immediate mode UI.

\*\* Original work: Copyright (c) 2020 rxi
\*\* Modified work: Copyright (c) 2020 oskarnp
\*\* Modified work: Copyright (c) 2021 gingerBill
\*\*
\*\* Permission is hereby granted, free of charge, to any person obtaining a copy
\*\* of this software and associated documentation files (the "Software"), to
\*\* deal in the Software without restriction, including without limitation the
\*\* rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
\*\* sell copies of the Software, and to permit persons to whom the Software is
\*\* furnished to do so, subject to the following conditions:
\*\*
\*\* The above copyright notice and this permission notice shall be included in
\*\* all copies or substantial portions of the Software.
\*\*
\*\* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
\*\* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
\*\* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
\*\* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
\*\* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
\*\* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
\*\* IN THE SOFTWARE.

## Index

Types (32)

* [Clip](#Clip)
* [Color](#Color)
* [Color\_Type](#Color_Type)
* [Command](#Command)
* [Command\_Clip](#Command_Clip)
* [Command\_Icon](#Command_Icon)
* [Command\_Jump](#Command_Jump)
* [Command\_Rect](#Command_Rect)
* [Command\_Text](#Command_Text)
* [Command\_Variant](#Command_Variant)
* [Container](#Container)
* [Context](#Context)
* [Font](#Font)
* [Frame\_Index](#Frame_Index)
* [Icon](#Icon)
* [Id](#Id)
* [Key](#Key)
* [Key\_Set](#Key_Set)
* [Layout](#Layout)
* [Layout\_Type](#Layout_Type)
* [Mouse](#Mouse)
* [Mouse\_Set](#Mouse_Set)
* [Opt](#Opt)
* [Options](#Options)
* [Pool\_Item](#Pool_Item)
* [Real](#Real)
* [Rect](#Rect)
* [Result](#Result)
* [Result\_Set](#Result_Set)
* [Stack](#Stack)
* [Style](#Style)
* [Vec2](#Vec2)

Constants (21)

* [CLIP\_STACK\_SIZE](#CLIP_STACK_SIZE)
* [COMMAND\_LIST\_SIZE](#COMMAND_LIST_SIZE)
* [CONTAINER\_POOL\_SIZE](#CONTAINER_POOL_SIZE)
* [CONTAINER\_STACK\_SIZE](#CONTAINER_STACK_SIZE)
* [DEFAULT\_ATLAS\_FONT](#DEFAULT_ATLAS_FONT)
* [DEFAULT\_ATLAS\_HEIGHT](#DEFAULT_ATLAS_HEIGHT)
* [DEFAULT\_ATLAS\_ICON\_CHECK](#DEFAULT_ATLAS_ICON_CHECK)
* [DEFAULT\_ATLAS\_ICON\_CLOSE](#DEFAULT_ATLAS_ICON_CLOSE)
* [DEFAULT\_ATLAS\_ICON\_COLLAPSED](#DEFAULT_ATLAS_ICON_COLLAPSED)
* [DEFAULT\_ATLAS\_ICON\_EXPANDED](#DEFAULT_ATLAS_ICON_EXPANDED)
* [DEFAULT\_ATLAS\_ICON\_RESIZE](#DEFAULT_ATLAS_ICON_RESIZE)
* [DEFAULT\_ATLAS\_WHITE](#DEFAULT_ATLAS_WHITE)
* [DEFAULT\_ATLAS\_WIDTH](#DEFAULT_ATLAS_WIDTH)
* [ID\_STACK\_SIZE](#ID_STACK_SIZE)
* [LAYOUT\_STACK\_SIZE](#LAYOUT_STACK_SIZE)
* [MAX\_FMT](#MAX_FMT)
* [MAX\_TEXT\_STORE](#MAX_TEXT_STORE)
* [MAX\_WIDTHS](#MAX_WIDTHS)
* [ROOT\_LIST\_SIZE](#ROOT_LIST_SIZE)
* [SLIDER\_FMT](#SLIDER_FMT)
* [TREENODE\_POOL\_SIZE](#TREENODE_POOL_SIZE)

Variables (4)

* [default\_atlas](#default_atlas)
* [default\_atlas\_alpha](#default_atlas_alpha)
* [default\_style](#default_style)
* [unclipped\_rect](#unclipped_rect)

Procedures (84)

* [begin](#begin)
* [begin\_panel](#begin_panel)
* [begin\_popup](#begin_popup)
* [begin\_treenode](#begin_treenode)
* [begin\_window](#begin_window)
* [bring\_to\_front](#bring_to_front)
* [button](#button)
* [check\_clip](#check_clip)
* [checkbox](#checkbox)
* [default\_atlas\_text\_height](#default_atlas_text_height)
* [default\_atlas\_text\_width](#default_atlas_text_width)
* [draw\_box](#draw_box)
* [draw\_control\_frame](#draw_control_frame)
* [draw\_control\_text](#draw_control_text)
* [draw\_icon](#draw_icon)
* [draw\_rect](#draw_rect)
* [draw\_text](#draw_text)
* [end](#end)
* [end\_panel](#end_panel)
* [end\_popup](#end_popup)
* [end\_treenode](#end_treenode)
* [end\_window](#end_window)
* [expand\_rect](#expand_rect)
* [get\_clip\_rect](#get_clip_rect)
* [get\_container](#get_container)
* [get\_current\_container](#get_current_container)
* [get\_id\_bytes](#get_id_bytes)
* [get\_id\_rawptr](#get_id_rawptr)
* [get\_id\_string](#get_id_string)
* [get\_id\_uintptr](#get_id_uintptr)
* [get\_layout](#get_layout)
* [header](#header)
* [init](#init)
* [input\_key\_down](#input_key_down)
* [input\_key\_up](#input_key_up)
* [input\_mouse\_down](#input_mouse_down)
* [input\_mouse\_move](#input_mouse_move)
* [input\_mouse\_up](#input_mouse_up)
* [input\_scroll](#input_scroll)
* [input\_text](#input_text)
* [intersect\_rects](#intersect_rects)
* [label](#label)
* [layout\_begin\_column](#layout_begin_column)
* [layout\_column](#layout_column)
* [layout\_end\_column](#layout_end_column)
* [layout\_height](#layout_height)
* [layout\_next](#layout_next)
* [layout\_row](#layout_row)
* [layout\_row\_items](#layout_row_items)
* [layout\_set\_next](#layout_set_next)
* [layout\_width](#layout_width)
* [mouse\_over](#mouse_over)
* [next\_command](#next_command)
* [next\_command\_iterator](#next_command_iterator)
* [number](#number)
* [number\_textbox](#number_textbox)
* [open\_popup](#open_popup)
* [pool\_get](#pool_get)
* [pool\_init](#pool_init)
* [pool\_update](#pool_update)
* [pop](#pop)
* [pop\_clip\_rect](#pop_clip_rect)
* [pop\_id](#pop_id)
* [popup](#popup)
* [push](#push)
* [push\_clip\_rect](#push_clip_rect)
* [push\_command](#push_command)
* [push\_id\_bytes](#push_id_bytes)
* [push\_id\_rawptr](#push_id_rawptr)
* [push\_id\_string](#push_id_string)
* [push\_id\_uintptr](#push_id_uintptr)
* [rect\_overlaps\_vec2](#rect_overlaps_vec2)
* [scoped\_end\_popup](#scoped_end_popup)
* [scoped\_end\_treenode](#scoped_end_treenode)
* [scoped\_end\_window](#scoped_end_window)
* [set\_clip](#set_clip)
* [set\_focus](#set_focus)
* [slider](#slider)
* [text](#text)
* [textbox](#textbox)
* [textbox\_raw](#textbox_raw)
* [treenode](#treenode)
* [update\_control](#update_control)
* [window](#window)

Procedure Groups (2)

* [get\_id](#get_id)
* [push\_id](#push_id)

`#config` values (12)

* [CLIP\_STACK\_SIZE](#CLIP_STACK_SIZE)
* [COMMAND\_LIST\_SIZE](#COMMAND_LIST_SIZE)
* [CONTAINER\_POOL\_SIZE](#CONTAINER_POOL_SIZE)
* [CONTAINER\_STACK\_SIZE](#CONTAINER_STACK_SIZE)
* [ID\_STACK\_SIZE](#ID_STACK_SIZE)
* [LAYOUT\_STACK\_SIZE](#LAYOUT_STACK_SIZE)
* [MAX\_FMT](#MAX_FMT)
* [MAX\_TEXT\_STORE](#MAX_TEXT_STORE)
* [MAX\_WIDTHS](#MAX_WIDTHS)
* [ROOT\_LIST\_SIZE](#ROOT_LIST_SIZE)
* [SLIDER\_FMT](#SLIDER_FMT)
* [TREENODE\_POOL\_SIZE](#TREENODE_POOL_SIZE)

## Types

### [Clip ¶](#Clip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L48)

```
Clip :: enum u32 {
	NONE, 
	PART, 
	ALL, 
}
```

##### Related Procedures With Returns

* [check\_clip](/vendor/microui/#check_clip)

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L135)

```
Color :: struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
}
```

##### Related Procedures With Parameters

* [draw\_box](/vendor/microui/#draw_box)
* [draw\_icon](/vendor/microui/#draw_icon)
* [draw\_rect](/vendor/microui/#draw_rect)
* [draw\_text](/vendor/microui/#draw_text)

### [Color\_Type ¶](#Color_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L54)

```
Color_Type :: enum u32 {
	TEXT, 
	SELECTION_BG, 
	BORDER, 
	WINDOW_BG, 
	TITLE_BG, 
	TITLE_TEXT, 
	PANEL_BG, 
	BUTTON, 
	BUTTON_HOVER = 8, 
	BUTTON_FOCUS = 9, 
	BASE, 
	BASE_HOVER   = 11, 
	BASE_FOCUS   = 12, 
	SCROLL_BASE, 
	SCROLL_THUMB, 
}
```

##### Related Procedures With Parameters

* [draw\_control\_frame](/vendor/microui/#draw_control_frame)
* [draw\_control\_text](/vendor/microui/#draw_control_text)

### [Command ¶](#Command) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L147)

```
Command :: struct {
	variant: Command_Variant,
	size:    i32,
}
```

### [Command\_Clip ¶](#Command_Clip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L155)

```
Command_Clip :: struct {
	using command: Command,
	rect:    Rect,
}
```

### [Command\_Icon ¶](#Command_Icon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L171)

```
Command_Icon :: struct {
	using command: Command,
	rect:    Rect,
	id:      Icon,
	color:   Color,
}
```

### [Command\_Jump ¶](#Command_Jump) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L151)

```
Command_Jump :: struct {
	using command: Command,
	dst:     rawptr,
}
```

### [Command\_Rect ¶](#Command_Rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L159)

```
Command_Rect :: struct {
	using command: Command,
	rect:    Rect,
	color:   Color,
}
```

### [Command\_Text ¶](#Command_Text) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L164)

```
Command_Text :: struct {
	using command: Command,
	font:    Font,
	pos:     Vec2,
	color:   Color,
	str:     string,
}
```

### [Command\_Variant ¶](#Command_Variant) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L140)

```
Command_Variant :: union {
	^Command_Jump, 
	^Command_Clip, 
	^Command_Rect, 
	^Command_Text, 
	^Command_Icon, 
}
```

##### Related Procedures With Returns

* [next\_command\_iterator](/vendor/microui/#next_command_iterator)

### [Container ¶](#Container) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L190)

```
Container :: struct {
	head:         ^Command,
	tail:         ^Command,
	rect:         Rect,
	body:         Rect,
	content_size: Vec2,
	scroll:       Vec2,
	zindex:       i32,
	open:         b32,
}
```

##### Related Procedures With Parameters

* [bring\_to\_front](/vendor/microui/#bring_to_front)



##### Related Procedures With Returns

* [get\_container](/vendor/microui/#get_container)
* [get\_current\_container](/vendor/microui/#get_current_container)

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L212)

```
Context :: struct {
	// callbacks 
	text_width:          proc(font: Font, str: string) -> i32,
	text_height:         proc(font: Font) -> i32,
	draw_frame:          proc(ctx: ^Context, rect: Rect, colorid: Color_Type),
	// core state 
	_style:              Style,
	style:               ^Style,
	hover_id:            Id,
	focus_id:            Id,
	last_id:             Id,
	last_rect:           Rect,
	last_zindex:         i32,
	updated_focus:       b32,
	frame:               Frame_Index,
	hover_root:          ^Container,
	next_hover_root:     ^Container,
	scroll_target:       ^Container,
	number_edit_buf:     [127]u8,
	number_edit_len:     int,
	number_edit_id:      Id,
	// stacks 
	command_list:        Stack($T=u8, $N=262144),
	root_list:           Stack($T=^Container, $N=32),
	container_stack:     Stack($T=^Container, $N=32),
	clip_stack:          Stack($T=Rect, $N=32),
	id_stack:            Stack($T=Id, $N=32),
	layout_stack:        Stack($T=Layout, $N=16),
	// retained state pools 
	container_pool:      [48]Pool_Item,
	containers:          [48]Container,
	treenode_pool:       [48]Pool_Item,
	// input state 
	mouse_pos:           Vec2,
	last_mouse_pos:      Vec2,
	mouse_delta:         Vec2,
	scroll_delta:        Vec2,
	mouse_down_bits:     Mouse_Set,
	mouse_pressed_bits:  Mouse_Set,
	mouse_released_bits: Mouse_Set,
	key_down_bits:       Key_Set,
	key_pressed_bits:    Key_Set,
	_text_store:         [1024]u8,
	text_input:          strings.Builder,
	// uses `_text_store` as backing store with nil_allocator.
	textbox_state:       text_edit.State,
	textbox_offset:      i32,
}
```

##### Related Procedures With Parameters

* [begin](/vendor/microui/#begin)
* [begin\_panel](/vendor/microui/#begin_panel)
* [begin\_popup](/vendor/microui/#begin_popup)
* [begin\_treenode](/vendor/microui/#begin_treenode)
* [begin\_window](/vendor/microui/#begin_window)
* [bring\_to\_front](/vendor/microui/#bring_to_front)
* [button](/vendor/microui/#button)
* [check\_clip](/vendor/microui/#check_clip)
* [checkbox](/vendor/microui/#checkbox)
* [draw\_box](/vendor/microui/#draw_box)
* [draw\_control\_frame](/vendor/microui/#draw_control_frame)
* [draw\_control\_text](/vendor/microui/#draw_control_text)
* [draw\_icon](/vendor/microui/#draw_icon)
* [draw\_rect](/vendor/microui/#draw_rect)
* [draw\_text](/vendor/microui/#draw_text)
* [end](/vendor/microui/#end)
* [end\_panel](/vendor/microui/#end_panel)
* [end\_popup](/vendor/microui/#end_popup)
* [end\_treenode](/vendor/microui/#end_treenode)
* [end\_window](/vendor/microui/#end_window)
* [get\_clip\_rect](/vendor/microui/#get_clip_rect)
* [get\_container](/vendor/microui/#get_container)
* [get\_current\_container](/vendor/microui/#get_current_container)
* [get\_id\_bytes](/vendor/microui/#get_id_bytes)
* [get\_id\_rawptr](/vendor/microui/#get_id_rawptr)
* [get\_id\_string](/vendor/microui/#get_id_string)
* [get\_id\_uintptr](/vendor/microui/#get_id_uintptr)
* [get\_layout](/vendor/microui/#get_layout)
* [header](/vendor/microui/#header)
* [init](/vendor/microui/#init)
* [input\_key\_down](/vendor/microui/#input_key_down)
* [input\_key\_up](/vendor/microui/#input_key_up)
* [input\_mouse\_down](/vendor/microui/#input_mouse_down)
* [input\_mouse\_move](/vendor/microui/#input_mouse_move)
* [input\_mouse\_up](/vendor/microui/#input_mouse_up)
* [input\_scroll](/vendor/microui/#input_scroll)
* [input\_text](/vendor/microui/#input_text)
* [label](/vendor/microui/#label)
* [layout\_begin\_column](/vendor/microui/#layout_begin_column)
* [layout\_column](/vendor/microui/#layout_column)
* [layout\_end\_column](/vendor/microui/#layout_end_column)
* [layout\_height](/vendor/microui/#layout_height)
* [layout\_next](/vendor/microui/#layout_next)
* [layout\_row](/vendor/microui/#layout_row)
* [layout\_row\_items](/vendor/microui/#layout_row_items)
* [layout\_set\_next](/vendor/microui/#layout_set_next)
* [layout\_width](/vendor/microui/#layout_width)
* [mouse\_over](/vendor/microui/#mouse_over)
* [next\_command](/vendor/microui/#next_command)
* [next\_command\_iterator](/vendor/microui/#next_command_iterator)
* [number](/vendor/microui/#number)
* [number\_textbox](/vendor/microui/#number_textbox)
* [open\_popup](/vendor/microui/#open_popup)
* [pool\_get](/vendor/microui/#pool_get)
* [pool\_init](/vendor/microui/#pool_init)
* [pool\_update](/vendor/microui/#pool_update)
* [pop\_clip\_rect](/vendor/microui/#pop_clip_rect)
* [pop\_id](/vendor/microui/#pop_id)
* [popup](/vendor/microui/#popup)
* [push\_clip\_rect](/vendor/microui/#push_clip_rect)
* [push\_command](/vendor/microui/#push_command)
* [push\_id\_bytes](/vendor/microui/#push_id_bytes)
* [push\_id\_rawptr](/vendor/microui/#push_id_rawptr)
* [push\_id\_string](/vendor/microui/#push_id_string)
* [push\_id\_uintptr](/vendor/microui/#push_id_uintptr)
* [scoped\_end\_popup](/vendor/microui/#scoped_end_popup)
* [scoped\_end\_treenode](/vendor/microui/#scoped_end_treenode)
* [scoped\_end\_window](/vendor/microui/#scoped_end_window)
* [set\_clip](/vendor/microui/#set_clip)
* [set\_focus](/vendor/microui/#set_focus)
* [slider](/vendor/microui/#slider)
* [text](/vendor/microui/#text)
* [textbox](/vendor/microui/#textbox)
* [textbox\_raw](/vendor/microui/#textbox_raw)
* [treenode](/vendor/microui/#treenode)
* [update\_control](/vendor/microui/#update_control)
* [window](/vendor/microui/#window)
* [get\_id](/vendor/microui/#get_id) *(procedure groups)*
* [push\_id](/vendor/microui/#push_id) *(procedure groups)*

### [Font ¶](#Font) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L132)

```
Font :: distinct rawptr
```

##### Related Procedures With Parameters

* [default\_atlas\_text\_height](/vendor/microui/#default_atlas_text_height)
* [default\_atlas\_text\_width](/vendor/microui/#default_atlas_text_width)
* [draw\_text](/vendor/microui/#draw_text)

### [Frame\_Index ¶](#Frame_Index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L136)

```
Frame_Index :: distinct i32
```

### [Icon ¶](#Icon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L72)

```
Icon :: enum u32 {
	NONE, 
	CLOSE, 
	CHECK, 
	COLLAPSED, 
	EXPANDED, 
	RESIZE, 
}
```

##### Related Procedures With Parameters

* [button](/vendor/microui/#button)
* [draw\_icon](/vendor/microui/#draw_icon)

### [Id ¶](#Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L130)

```
Id :: distinct u32
```

##### Related Procedures With Parameters

* [draw\_control\_frame](/vendor/microui/#draw_control_frame)
* [number\_textbox](/vendor/microui/#number_textbox)
* [pool\_get](/vendor/microui/#pool_get)
* [pool\_init](/vendor/microui/#pool_init)
* [set\_focus](/vendor/microui/#set_focus)
* [textbox\_raw](/vendor/microui/#textbox_raw)
* [update\_control](/vendor/microui/#update_control)



##### Related Procedures With Returns

* [get\_id\_bytes](/vendor/microui/#get_id_bytes)
* [get\_id\_rawptr](/vendor/microui/#get_id_rawptr)
* [get\_id\_string](/vendor/microui/#get_id_string)
* [get\_id\_uintptr](/vendor/microui/#get_id_uintptr)
* [get\_id](/vendor/microui/#get_id) *(procedure groups)*

### [Key ¶](#Key) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L112)

```
Key :: enum u32 {
	SHIFT, 
	CTRL, 
	ALT, 
	BACKSPACE, 
	DELETE, 
	RETURN, 
	LEFT, 
	RIGHT, 
	HOME, 
	END, 
	A, 
	X, 
	C, 
	V, 
}
```

##### Related Procedures With Parameters

* [input\_key\_down](/vendor/microui/#input_key_down)
* [input\_key\_up](/vendor/microui/#input_key_up)

### [Key\_Set ¶](#Key_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L128)

```
Key_Set :: distinct bit_set[Key; u32]
```

### [Layout ¶](#Layout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L181)

```
Layout :: struct {
	body:       Rect,
	next:       Rect,
	position:   Vec2,
	size:       Vec2,
	max:        Vec2,
	widths:     [16]i32,
	items:      i32,
	item_index: i32,
	next_row:   i32,
	next_type:  Layout_Type,
	indent:     i32,
}
```

##### Related Procedures With Returns

* [get\_layout](/vendor/microui/#get_layout)

### [Layout\_Type ¶](#Layout_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L179)

```
Layout_Type :: enum int {
	NONE     = 0, 
	RELATIVE = 1, 
	ABSOLUTE = 2, 
}
```

### [Mouse ¶](#Mouse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L105)

```
Mouse :: enum u32 {
	LEFT, 
	RIGHT, 
	MIDDLE, 
}
```

##### Related Procedures With Parameters

* [input\_mouse\_down](/vendor/microui/#input_mouse_down)
* [input\_mouse\_up](/vendor/microui/#input_mouse_up)

### [Mouse\_Set ¶](#Mouse_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L110)

```
Mouse_Set :: distinct bit_set[Mouse; u32]
```

### [Opt ¶](#Opt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L88)

```
Opt :: enum u32 {
	ALIGN_CENTER, 
	ALIGN_RIGHT, 
	NO_INTERACT, 
	NO_FRAME, 
	NO_RESIZE, 
	NO_SCROLL, 
	NO_CLOSE, 
	NO_TITLE, 
	HOLD_FOCUS, 
	AUTO_SIZE, 
	POPUP, 
	CLOSED, 
	EXPANDED, 
}
```

### [Options ¶](#Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L103)

```
Options :: distinct bit_set[Opt; u32]
```

##### Related Procedures With Parameters

* [begin\_panel](/vendor/microui/#begin_panel)
* [begin\_treenode](/vendor/microui/#begin_treenode)
* [begin\_window](/vendor/microui/#begin_window)
* [button](/vendor/microui/#button)
* [draw\_control\_frame](/vendor/microui/#draw_control_frame)
* [draw\_control\_text](/vendor/microui/#draw_control_text)
* [get\_container](/vendor/microui/#get_container)
* [header](/vendor/microui/#header)
* [number](/vendor/microui/#number)
* [scoped\_end\_treenode](/vendor/microui/#scoped_end_treenode)
* [scoped\_end\_window](/vendor/microui/#scoped_end_window)
* [slider](/vendor/microui/#slider)
* [textbox](/vendor/microui/#textbox)
* [textbox\_raw](/vendor/microui/#textbox_raw)
* [treenode](/vendor/microui/#treenode)
* [update\_control](/vendor/microui/#update_control)
* [window](/vendor/microui/#window)

### [Pool\_Item ¶](#Pool_Item) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L137)

```
Pool_Item :: struct {
	id:          Id,
	last_update: Frame_Index,
}
```

##### Related Procedures With Parameters

* [pool\_update](/vendor/microui/#pool_update)

### [Real ¶](#Real) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L131)

```
Real :: f32
```

##### Related Procedures With Parameters

* [number](/vendor/microui/#number)
* [number\_textbox](/vendor/microui/#number_textbox)
* [slider](/vendor/microui/#slider)

### [Rect ¶](#Rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L134)

```
Rect :: struct {
	x: i32,
	y: i32,
	w: i32,
	h: i32,
}
```

##### Related Procedures With Parameters

* [begin\_window](/vendor/microui/#begin_window)
* [check\_clip](/vendor/microui/#check_clip)
* [draw\_box](/vendor/microui/#draw_box)
* [draw\_control\_frame](/vendor/microui/#draw_control_frame)
* [draw\_control\_text](/vendor/microui/#draw_control_text)
* [draw\_icon](/vendor/microui/#draw_icon)
* [draw\_rect](/vendor/microui/#draw_rect)
* [expand\_rect](/vendor/microui/#expand_rect)
* [intersect\_rects](/vendor/microui/#intersect_rects)
* [layout\_set\_next](/vendor/microui/#layout_set_next)
* [mouse\_over](/vendor/microui/#mouse_over)
* [number\_textbox](/vendor/microui/#number_textbox)
* [push\_clip\_rect](/vendor/microui/#push_clip_rect)
* [rect\_overlaps\_vec2](/vendor/microui/#rect_overlaps_vec2)
* [scoped\_end\_window](/vendor/microui/#scoped_end_window)
* [set\_clip](/vendor/microui/#set_clip)
* [textbox\_raw](/vendor/microui/#textbox_raw)
* [update\_control](/vendor/microui/#update_control)
* [window](/vendor/microui/#window)



##### Related Procedures With Returns

* [get\_clip\_rect](/vendor/microui/#get_clip_rect)
* [layout\_next](/vendor/microui/#layout_next)

### [Result ¶](#Result) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L81)

```
Result :: enum u32 {
	ACTIVE, 
	SUBMIT, 
	CHANGE, 
}
```

### [Result\_Set ¶](#Result_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L86)

```
Result_Set :: bit_set[Result; u32]
```

##### Related Procedures With Parameters

* [scoped\_end\_treenode](/vendor/microui/#scoped_end_treenode)



##### Related Procedures With Returns

* [begin\_treenode](/vendor/microui/#begin_treenode)
* [button](/vendor/microui/#button)
* [checkbox](/vendor/microui/#checkbox)
* [header](/vendor/microui/#header)
* [number](/vendor/microui/#number)
* [slider](/vendor/microui/#slider)
* [textbox](/vendor/microui/#textbox)
* [textbox\_raw](/vendor/microui/#textbox_raw)
* [treenode](/vendor/microui/#treenode)

### [Stack ¶](#Stack) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L254)

```
Stack :: struct($T: typeid, $N: int) {
	… // See source for fields
}
```

##### Related Procedures With Parameters

* [pop](/vendor/microui/#pop)
* [push](/vendor/microui/#push)

### [Style ¶](#Style) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L199)

```
Style :: struct {
	font:           Font,
	size:           Vec2,
	padding:        i32,
	spacing:        i32,
	indent:         i32,
	title_height:   i32,
	footer_height:  i32,
	scrollbar_size: i32,
	thumb_size:     i32,
	colors:         [Color_Type]Color,
}
```

### [Vec2 ¶](#Vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L133)

```
Vec2 :: distinct [2]i32
```

##### Related Procedures With Parameters

* [draw\_text](/vendor/microui/#draw_text)
* [rect\_overlaps\_vec2](/vendor/microui/#rect_overlaps_vec2)

## Constants

### [CLIP\_STACK\_SIZE ¶](#CLIP_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L38)

```
CLIP_STACK_SIZE :: #config(MICROUI_CLIP_STACK_SIZE, 32)
```

### [COMMAND\_LIST\_SIZE ¶](#COMMAND_LIST_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L35)

```
COMMAND_LIST_SIZE :: #config(MICROUI_COMMAND_LIST_SIZE, 256 * 1024)
```

### [CONTAINER\_POOL\_SIZE ¶](#CONTAINER_POOL_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L41)

```
CONTAINER_POOL_SIZE :: #config(MICROUI_CONTAINER_POOL_SIZE, 48)
```

### [CONTAINER\_STACK\_SIZE ¶](#CONTAINER_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L37)

```
CONTAINER_STACK_SIZE :: #config(MICROUI_CONTAINER_STACK_SIZE, 32)
```

### [DEFAULT\_ATLAS\_FONT ¶](#DEFAULT_ATLAS_FONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L6)

```
DEFAULT_ATLAS_FONT :: int(len(Icon) + 2)
```

### [DEFAULT\_ATLAS\_HEIGHT ¶](#DEFAULT_ATLAS_HEIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L4)

```
DEFAULT_ATLAS_HEIGHT :: 128
```

### [DEFAULT\_ATLAS\_ICON\_CHECK ¶](#DEFAULT_ATLAS_ICON_CHECK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L8)

```
DEFAULT_ATLAS_ICON_CHECK :: int(Icon.CHECK)
```

### [DEFAULT\_ATLAS\_ICON\_CLOSE ¶](#DEFAULT_ATLAS_ICON_CLOSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L7)

```
DEFAULT_ATLAS_ICON_CLOSE :: int(Icon.CLOSE)
```

### [DEFAULT\_ATLAS\_ICON\_COLLAPSED ¶](#DEFAULT_ATLAS_ICON_COLLAPSED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L10)

```
DEFAULT_ATLAS_ICON_COLLAPSED :: int(Icon.COLLAPSED)
```

### [DEFAULT\_ATLAS\_ICON\_EXPANDED ¶](#DEFAULT_ATLAS_ICON_EXPANDED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L9)

```
DEFAULT_ATLAS_ICON_EXPANDED :: int(Icon.EXPANDED)
```

### [DEFAULT\_ATLAS\_ICON\_RESIZE ¶](#DEFAULT_ATLAS_ICON_RESIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L11)

```
DEFAULT_ATLAS_ICON_RESIZE :: int(Icon.RESIZE)
```

### [DEFAULT\_ATLAS\_WHITE ¶](#DEFAULT_ATLAS_WHITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L5)

```
DEFAULT_ATLAS_WHITE :: int(len(Icon) + 1)
```

### [DEFAULT\_ATLAS\_WIDTH ¶](#DEFAULT_ATLAS_WIDTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L3)

```
DEFAULT_ATLAS_WIDTH :: 128
```

### [ID\_STACK\_SIZE ¶](#ID_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L39)

```
ID_STACK_SIZE :: #config(MICROUI_ID_STACK_SIZE, 32)
```

### [LAYOUT\_STACK\_SIZE ¶](#LAYOUT_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L40)

```
LAYOUT_STACK_SIZE :: #config(MICROUI_LAYOUT_STACK_SIZE, 16)
```

### [MAX\_FMT ¶](#MAX_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L45)

```
MAX_FMT :: #config(MICROUI_MAX_FMT, 127)
```

### [MAX\_TEXT\_STORE ¶](#MAX_TEXT_STORE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L46)

```
MAX_TEXT_STORE :: #config(MICROUI_MAX_TEXT_STORE, 1024)
```

### [MAX\_WIDTHS ¶](#MAX_WIDTHS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L43)

```
MAX_WIDTHS :: #config(MICROUI_MAX_WIDTHS, 16)
```

### [ROOT\_LIST\_SIZE ¶](#ROOT_LIST_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L36)

```
ROOT_LIST_SIZE :: #config(MICROUI_ROOT_LIST_SIZE, 32)
```

### [SLIDER\_FMT ¶](#SLIDER_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L44)

```
SLIDER_FMT :: #config(MICROUI_SLIDER_FMT, "%.2f")
```

### [TREENODE\_POOL\_SIZE ¶](#TREENODE_POOL_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L42)

```
TREENODE_POOL_SIZE :: #config(MICROUI_TREENODE_POOL_SIZE, 48)
```

## Variables

### [default\_atlas ¶](#default_atlas) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L1398)

```
default_atlas: [136]Rect = …
```

### [default\_atlas\_alpha ¶](#default_atlas_alpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L27)

```
default_atlas_alpha: [16384]u8 = …
```

### [default\_style ¶](#default_style) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L270)

```
default_style: Style = …
```

### [unclipped\_rect ¶](#unclipped_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L268)

```
unclipped_rect: Rect = …
```

## Procedures

### [begin ¶](#begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L340)

```
begin :: proc(ctx: ^Context) {…}
```

### [begin\_panel ¶](#begin_panel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1546)

```
begin_panel :: proc(ctx: ^Context, name: string, opt: Options = Options{}) {…}
```

### [begin\_popup ¶](#begin_popup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1524)

```
begin_popup :: proc(ctx: ^Context, name: string) -> bool {…}
```

### [begin\_treenode ¶](#begin_treenode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1282)

```
begin_treenode :: proc(ctx: ^Context, label: string, opt: Options = Options{}) -> bit_set[Result; u32] {…}
```

### [begin\_window ¶](#begin_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1409)

```
begin_window :: proc(ctx: ^Context, title: string, rect: Rect, opt: Options = Options{}) -> bool {…}
```

### [bring\_to\_front ¶](#bring_to_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L537)

```
bring_to_front :: proc(ctx: ^Context, cnt: ^Container) {…}
```

### [button ¶](#button) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L952)

```
button :: proc(ctx: ^Context, label: string, icon: Icon = .NONE, opt: Options = {.ALIGN_CENTER}) -> (res: bit_set[Result; u32]) {…}
```

### [check\_clip ¶](#check_clip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L469)

```
check_clip :: proc(ctx: ^Context, r: Rect) -> Clip {…}
```

### [checkbox ¶](#checkbox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L971)

```
checkbox :: proc(ctx: ^Context, label: string, state: ^bool) -> (res: bit_set[Result; u32]) {…}
```

### [default\_atlas\_text\_height ¶](#default_atlas_text_height) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L23)

```
default_atlas_text_height :: proc(font: Font) -> i32 {…}
```

### [default\_atlas\_text\_width ¶](#default_atlas_text_width) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin#L13)

```
default_atlas_text_width :: proc(font: Font, text: string) -> (width: i32) {…}
```

### [draw\_box ¶](#draw_box) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L675)

```
draw_box :: proc(ctx: ^Context, rect: Rect, color: Color) {…}
```

### [draw\_control\_frame ¶](#draw_control_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L851)

```
draw_control_frame :: proc(ctx: ^Context, id: Id, rect: Rect, colorid: Color_Type, opt: Options = Options{}) {…}
```

### [draw\_control\_text ¶](#draw_control_text) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L861)

```
draw_control_text :: proc(ctx: ^Context, str: string, rect: Rect, colorid: Color_Type, opt: Options = Options{}) {…}
```

### [draw\_icon ¶](#draw_icon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L705)

```
draw_icon :: proc(ctx: ^Context, id: Icon, rect: Rect, color: Color) {…}
```

### [draw\_rect ¶](#draw_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L665)

```
draw_rect :: proc(ctx: ^Context, rect: Rect, color: Color) {…}
```

### [draw\_text ¶](#draw_text) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L682)

```
draw_text :: proc(ctx: ^Context, font: Font, str: string, pos: Vec2, color: Color) {…}
```

### [end ¶](#end) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L353)

```
end :: proc(ctx: ^Context) {…}
```

### [end\_panel ¶](#end_panel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1559)

```
end_panel :: proc(ctx: ^Context) {…}
```

### [end\_popup ¶](#end_popup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1529)

```
end_popup :: proc(ctx: ^Context) {…}
```

### [end\_treenode ¶](#end_treenode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1291)

```
end_treenode :: proc(ctx: ^Context) {…}
```

### [end\_window ¶](#end_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1495)

```
end_window :: proc(ctx: ^Context) {…}
```

### [expand\_rect ¶](#expand_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L294)

```
expand_rect :: proc(rect: Rect, n: i32) -> Rect {…}
```

### [get\_clip\_rect ¶](#get_clip_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L464)

```
get_clip_rect :: proc(ctx: ^Context) -> Rect {…}
```

### [get\_container ¶](#get_container) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L532)

```
get_container :: proc(ctx: ^Context, name: string, opt: Options = Options{}) -> ^Container {…}
```

### [get\_current\_container ¶](#get_current_container) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L507)

```
get_current_container :: proc(ctx: ^Context) -> ^Container {…}
```

### [get\_id\_bytes ¶](#get_id_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L426)

```
get_id_bytes :: proc(ctx: ^Context, bytes: []u8) -> Id {…}
```

##### Related Procedure Groups

* [get\_id](/vendor/microui/#get_id)

### [get\_id\_rawptr ¶](#get_id_rawptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L421)

```
get_id_rawptr :: proc(ctx: ^Context, data: rawptr, size: int) -> Id {…}
```

##### Related Procedure Groups

* [get\_id](/vendor/microui/#get_id)

### [get\_id\_string ¶](#get_id_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L420)

```
get_id_string :: proc(ctx: ^Context, str: string) -> Id {…}
```

##### Related Procedure Groups

* [get\_id](/vendor/microui/#get_id)

### [get\_id\_uintptr ¶](#get_id_uintptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L422)

```
get_id_uintptr :: proc(ctx: ^Context, ptr: uintptr) -> Id {…}
```

##### Related Procedure Groups

* [get\_id](/vendor/microui/#get_id)

### [get\_layout ¶](#get_layout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L482)

```
get_layout :: proc(ctx: ^Context) -> ^Layout {…}
```

### [header ¶](#header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1278)

```
header :: proc(ctx: ^Context, label: string, opt: Options = Options{}) -> bit_set[Result; u32] {…}
```

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L323)

```
init :: proc(ctx: ^Context, set_clipboard: proc(user_data: rawptr, text: string) -> (ok: bool) = nil, get_clipboard: proc(user_data: rawptr) -> (text: string, ok: bool) = nil, clipboard_user_data: rawptr = nil) {…}
```

### [input\_key\_down ¶](#input_key_down) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L599)

```
input_key_down :: proc(ctx: ^Context, key: Key) {…}
```

### [input\_key\_up ¶](#input_key_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L604)

```
input_key_up :: proc(ctx: ^Context, key: Key) {…}
```

### [input\_mouse\_down ¶](#input_mouse_down) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L582)

```
input_mouse_down :: proc(ctx: ^Context, x, y: i32, btn: Mouse) {…}
```

### [input\_mouse\_move ¶](#input_mouse_move) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L578)

```
input_mouse_move :: proc(ctx: ^Context, x, y: i32) {…}
```

### [input\_mouse\_up ¶](#input_mouse_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L588)

```
input_mouse_up :: proc(ctx: ^Context, x, y: i32, btn: Mouse) {…}
```

### [input\_scroll ¶](#input_scroll) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L594)

```
input_scroll :: proc(ctx: ^Context, x, y: i32) {…}
```

### [input\_text ¶](#input_text) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L608)

```
input_text :: proc(ctx: ^Context, text: string) {…}
```

### [intersect\_rects ¶](#intersect_rects) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L298)

```
intersect_rects :: proc(r1, r2: Rect) -> Rect {…}
```

### [label ¶](#label) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L948)

```
label :: proc(ctx: ^Context, text: string) {…}
```

### [layout\_begin\_column ¶](#layout_begin_column) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L728)

```
layout_begin_column :: proc(ctx: ^Context) {…}
```

### [layout\_column ¶](#layout_column) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L744)

```
layout_column :: proc(ctx: ^Context) -> bool {…}
```

### [layout\_end\_column ¶](#layout_end_column) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L732)

```
layout_end_column :: proc(ctx: ^Context) {…}
```

### [layout\_height ¶](#layout_height) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L774)

```
layout_height :: proc(ctx: ^Context, height: i32) {…}
```

### [layout\_next ¶](#layout_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L784)

```
layout_next :: proc(ctx: ^Context) -> (res: Rect) {…}
```

### [layout\_row ¶](#layout_row) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L749)

```
layout_row :: proc(ctx: ^Context, widths: []i32, height: i32 = 0) {…}
```

### [layout\_row\_items ¶](#layout_row_items) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L761)

```
layout_row_items :: proc(ctx: ^Context, items: i32, height: i32 = 0) {…}
```

### [layout\_set\_next ¶](#layout_set_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L778)

```
layout_set_next :: proc(ctx: ^Context, r: Rect, relative: bool) {…}
```

### [layout\_width ¶](#layout_width) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L770)

```
layout_width :: proc(ctx: ^Context, width: i32) {…}
```

### [mouse\_over ¶](#mouse_over) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L878)

```
mouse_over :: proc(ctx: ^Context, rect: Rect) -> bool {…}
```

### [next\_command ¶](#next_command) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L626)

```
next_command :: proc "contextless" (ctx: ^Context, pcmd: ^^Command) -> bool {…}
```

### [next\_command\_iterator ¶](#next_command_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L647)

```
next_command_iterator :: proc "contextless" (ctx: ^Context, pcm: ^^Command) -> (Command_Variant, bool) {…}
```

### [number ¶](#number) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1210)

```
number :: proc(ctx: ^Context, value: ^f32, step: f32, fmt_string: string = SLIDER_FMT, opt: Options = {.ALIGN_CENTER}) -> (res: bit_set[Result; u32]) {…}
```

### [number\_textbox ¶](#number_textbox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1145)

```
number_textbox :: proc(ctx: ^Context, value: ^f32, r: Rect, id: Id, fmt_string: string) -> bool {…}
```

### [open\_popup ¶](#open_popup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1513)

```
open_popup :: proc(ctx: ^Context, name: string) {…}
```

### [pool\_get ¶](#pool_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L561)

```
pool_get :: proc(ctx: ^Context, items: []Pool_Item, id: Id) -> (int, bool) {…}
```

### [pool\_init ¶](#pool_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L546)

```
pool_init :: proc(ctx: ^Context, items: []Pool_Item, id: Id) -> int {…}
```

### [pool\_update ¶](#pool_update) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L570)

```
pool_update :: proc(ctx: ^Context, item: ^Pool_Item) {…}
```

### [pop ¶](#pop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L263)

```
pop :: proc(stk: ^$T/Stack($T, $N)) {…}
```

### [pop\_clip\_rect ¶](#pop_clip_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L460)

```
pop_clip_rect :: proc(ctx: ^Context) {…}
```

### [pop\_id ¶](#pop_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L451)

```
pop_id :: proc(ctx: ^Context) {…}
```

### [popup ¶](#popup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1536)

```
popup :: proc(ctx: ^Context, name: string) -> bool {…}
```

 

This is scoped and is intended to be use in the condition of a if-statement

### [push ¶](#push) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L258)

```
push :: proc(stk: ^$T/Stack($T, $N), val: $V) {…}
```

### [push\_clip\_rect ¶](#push_clip_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L455)

```
push_clip_rect :: proc(ctx: ^Context, rect: Rect) {…}
```

### [push\_command ¶](#push_command) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L616)

```
push_command :: proc(ctx: ^Context, $Type: typeid, extra_size: int = 0) -> ^typeid {…}
```

### [push\_id\_bytes ¶](#push_id_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L449)

```
push_id_bytes :: proc(ctx: ^Context, bytes: []u8) {…}
```

##### Related Procedure Groups

* [push\_id](/vendor/microui/#push_id)

### [push\_id\_rawptr ¶](#push_id_rawptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L447)

```
push_id_rawptr :: proc(ctx: ^Context, data: rawptr, size: int) {…}
```

##### Related Procedure Groups

* [push\_id](/vendor/microui/#push_id)

### [push\_id\_string ¶](#push_id_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L446)

```
push_id_string :: proc(ctx: ^Context, str: string) {…}
```

##### Related Procedure Groups

* [push\_id](/vendor/microui/#push_id)

### [push\_id\_uintptr ¶](#push_id_uintptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L448)

```
push_id_uintptr :: proc(ctx: ^Context, ptr: uintptr) {…}
```

##### Related Procedure Groups

* [push\_id](/vendor/microui/#push_id)

### [rect\_overlaps\_vec2 ¶](#rect_overlaps_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L308)

```
rect_overlaps_vec2 :: proc(r: Rect, p: Vec2) -> bool {…}
```

### [scoped\_end\_popup ¶](#scoped_end_popup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1540)

```
scoped_end_popup :: proc(ctx: ^Context, _: string, ok: bool) {…}
```

### [scoped\_end\_treenode ¶](#scoped_end_treenode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1298)

```
scoped_end_treenode :: proc(ctx: ^Context, _: string, _: Options, result_set: bit_set[Result; u32]) {…}
```

### [scoped\_end\_window ¶](#scoped_end_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1507)

```
scoped_end_window :: proc(ctx: ^Context, _: string, _: Rect, _: Options, ok: bool) {…}
```

### [set\_clip ¶](#set_clip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L660)

```
set_clip :: proc(ctx: ^Context, rect: Rect) {…}
```

### [set\_focus ¶](#set_focus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L412)

```
set_focus :: proc(ctx: ^Context, id: Id) {…}
```

### [slider ¶](#slider) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1169)

```
slider :: proc(
	ctx:        ^Context, 
	value:      ^f32, 
	low, high:  f32, 
	step:       f32 = 0.0, 
	fmt_string: string = SLIDER_FMT, 
	opt:        Options = {.ALIGN_CENTER}, 
) -> (res: bit_set[Result; u32]) {…}
```

### [text ¶](#text) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L915)

```
text :: proc(ctx: ^Context, text: string) {…}
```

### [textbox ¶](#textbox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1163)

```
textbox :: proc(ctx: ^Context, buf: []u8, textlen: ^int, opt: Options = Options{}) -> bit_set[Result; u32] {…}
```

### [textbox\_raw ¶](#textbox_raw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L991)

```
textbox_raw :: proc(
	ctx:     ^Context, 
	textbuf: []u8, 
	textlen: ^int, 
	id:      Id, 
	r:       Rect, 
	opt:     Options = Options{}, 
) -> (res: bit_set[Result; u32]) {…}
```

### [treenode ¶](#treenode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1306)

```
treenode :: proc(ctx: ^Context, label: string, opt: Options = Options{}) -> bit_set[Result; u32] {…}
```

 

This is scoped and is intended to be use in the condition of a if-statement

### [update\_control ¶](#update_control) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L884)

```
update_control :: proc(ctx: ^Context, id: Id, rect: Rect, opt: Options = Options{}) {…}
```

### [window ¶](#window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L1503)

```
window :: proc(ctx: ^Context, title: string, rect: Rect, opt: Options = Options{}) -> bool {…}
```

 

This is scoped and is intended to be use in the condition of a if-statement

## Procedure Groups

### [get\_id ¶](#get_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L419)

```
get_id :: proc{
	get_id_string,
	get_id_bytes,
	get_id_rawptr,
	get_id_uintptr,
}
```

### [push\_id ¶](#push_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L445)

```
push_id :: proc{
	push_id_string,
	push_id_bytes,
	push_id_rawptr,
	push_id_uintptr,
}
```

## `#config` values

### [CLIP\_STACK\_SIZE ¶](#CLIP_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L38)

```
CLIP_STACK_SIZE :: #config(MICROUI_CLIP_STACK_SIZE, 32)
```

### [COMMAND\_LIST\_SIZE ¶](#COMMAND_LIST_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L35)

```
COMMAND_LIST_SIZE :: #config(MICROUI_COMMAND_LIST_SIZE, 256 * 1024)
```

### [CONTAINER\_POOL\_SIZE ¶](#CONTAINER_POOL_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L41)

```
CONTAINER_POOL_SIZE :: #config(MICROUI_CONTAINER_POOL_SIZE, 48)
```

### [CONTAINER\_STACK\_SIZE ¶](#CONTAINER_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L37)

```
CONTAINER_STACK_SIZE :: #config(MICROUI_CONTAINER_STACK_SIZE, 32)
```

### [ID\_STACK\_SIZE ¶](#ID_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L39)

```
ID_STACK_SIZE :: #config(MICROUI_ID_STACK_SIZE, 32)
```

### [LAYOUT\_STACK\_SIZE ¶](#LAYOUT_STACK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L40)

```
LAYOUT_STACK_SIZE :: #config(MICROUI_LAYOUT_STACK_SIZE, 16)
```

### [MAX\_FMT ¶](#MAX_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L45)

```
MAX_FMT :: #config(MICROUI_MAX_FMT, 127)
```

### [MAX\_TEXT\_STORE ¶](#MAX_TEXT_STORE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L46)

```
MAX_TEXT_STORE :: #config(MICROUI_MAX_TEXT_STORE, 1024)
```

### [MAX\_WIDTHS ¶](#MAX_WIDTHS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L43)

```
MAX_WIDTHS :: #config(MICROUI_MAX_WIDTHS, 16)
```

### [ROOT\_LIST\_SIZE ¶](#ROOT_LIST_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L36)

```
ROOT_LIST_SIZE :: #config(MICROUI_ROOT_LIST_SIZE, 32)
```

### [SLIDER\_FMT ¶](#SLIDER_FMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L44)

```
SLIDER_FMT :: #config(MICROUI_SLIDER_FMT, "%.2f")
```

### [TREENODE\_POOL\_SIZE ¶](#TREENODE_POOL_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin#L42)

```
TREENODE_POOL_SIZE :: #config(MICROUI_TREENODE_POOL_SIZE, 48)
```

## Source Files

* [default\_atlas.odin](https://github.com/odin-lang/Odin/tree/master/vendor/microui/default_atlas.odin)
* [microui.odin](https://github.com/odin-lang/Odin/tree/master/vendor/microui/microui.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.026653700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Clip](#Clip)
    + [Color](#Color)
    + [Color\_Type](#Color_Type)
    + [Command](#Command)
    + [Command\_Clip](#Command_Clip)
    + [Command\_Icon](#Command_Icon)
    + [Command\_Jump](#Command_Jump)
    + [Command\_Rect](#Command_Rect)
    + [Command\_Text](#Command_Text)
    + [Command\_Variant](#Command_Variant)
    + [Container](#Container)
    + [Context](#Context)
    + [Font](#Font)
    + [Frame\_Index](#Frame_Index)
    + [Icon](#Icon)
    + [Id](#Id)
    + [Key](#Key)
    + [Key\_Set](#Key_Set)
    + [Layout](#Layout)
    + [Layout\_Type](#Layout_Type)
    + [Mouse](#Mouse)
    + [Mouse\_Set](#Mouse_Set)
    + [Opt](#Opt)
    + [Options](#Options)
    + [Pool\_Item](#Pool_Item)
    + [Real](#Real)
    + [Rect](#Rect)
    + [Result](#Result)
    + [Result\_Set](#Result_Set)
    + [Stack](#Stack)
    + [Style](#Style)
    + [Vec2](#Vec2)
  * [Constants](#pkg-Constants)
    + [CLIP\_STACK\_SIZE](#CLIP_STACK_SIZE)
    + [COMMAND\_LIST\_SIZE](#COMMAND_LIST_SIZE)
    + [CONTAINER\_POOL\_SIZE](#CONTAINER_POOL_SIZE)
    + [CONTAINER\_STACK\_SIZE](#CONTAINER_STACK_SIZE)
    + [DEFAULT\_ATLAS\_FONT](#DEFAULT_ATLAS_FONT)
    + [DEFAULT\_ATLAS\_HEIGHT](#DEFAULT_ATLAS_HEIGHT)
    + [DEFAULT\_ATLAS\_ICON\_CHECK](#DEFAULT_ATLAS_ICON_CHECK)
    + [DEFAULT\_ATLAS\_ICON\_CLOSE](#DEFAULT_ATLAS_ICON_CLOSE)
    + [DEFAULT\_ATLAS\_ICON\_COLLAPSED](#DEFAULT_ATLAS_ICON_COLLAPSED)
    + [DEFAULT\_ATLAS\_ICON\_EXPANDED](#DEFAULT_ATLAS_ICON_EXPANDED)
    + [DEFAULT\_ATLAS\_ICON\_RESIZE](#DEFAULT_ATLAS_ICON_RESIZE)
    + [DEFAULT\_ATLAS\_WHITE](#DEFAULT_ATLAS_WHITE)
    + [DEFAULT\_ATLAS\_WIDTH](#DEFAULT_ATLAS_WIDTH)
    + [ID\_STACK\_SIZE](#ID_STACK_SIZE)
    + [LAYOUT\_STACK\_SIZE](#LAYOUT_STACK_SIZE)
    + [MAX\_FMT](#MAX_FMT)
    + [MAX\_TEXT\_STORE](#MAX_TEXT_STORE)
    + [MAX\_WIDTHS](#MAX_WIDTHS)
    + [ROOT\_LIST\_SIZE](#ROOT_LIST_SIZE)
    + [SLIDER\_FMT](#SLIDER_FMT)
    + [TREENODE\_POOL\_SIZE](#TREENODE_POOL_SIZE)
  * [Variables](#pkg-Variables)
    + [default\_atlas](#default_atlas)
    + [default\_atlas\_alpha](#default_atlas_alpha)
    + [default\_style](#default_style)
    + [unclipped\_rect](#unclipped_rect)
  * [Procedures](#pkg-Procedures)
    + [begin](#begin)
    + [begin\_panel](#begin_panel)
    + [begin\_popup](#begin_popup)
    + [begin\_treenode](#begin_treenode)
    + [begin\_window](#begin_window)
    + [bring\_to\_front](#bring_to_front)
    + [button](#button)
    + [check\_clip](#check_clip)
    + [checkbox](#checkbox)
    + [default\_atlas\_text\_height](#default_atlas_text_height)
    + [default\_atlas\_text\_width](#default_atlas_text_width)
    + [draw\_box](#draw_box)
    + [draw\_control\_frame](#draw_control_frame)
    + [draw\_control\_text](#draw_control_text)
    + [draw\_icon](#draw_icon)
    + [draw\_rect](#draw_rect)
    + [draw\_text](#draw_text)
    + [end](#end)
    + [end\_panel](#end_panel)
    + [end\_popup](#end_popup)
    + [end\_treenode](#end_treenode)
    + [end\_window](#end_window)
    + [expand\_rect](#expand_rect)
    + [get\_clip\_rect](#get_clip_rect)
    + [get\_container](#get_container)
    + [get\_current\_container](#get_current_container)
    + [get\_id\_bytes](#get_id_bytes)
    + [get\_id\_rawptr](#get_id_rawptr)
    + [get\_id\_string](#get_id_string)
    + [get\_id\_uintptr](#get_id_uintptr)
    + [get\_layout](#get_layout)
    + [header](#header)
    + [init](#init)
    + [input\_key\_down](#input_key_down)
    + [input\_key\_up](#input_key_up)
    + [input\_mouse\_down](#input_mouse_down)
    + [input\_mouse\_move](#input_mouse_move)
    + [input\_mouse\_up](#input_mouse_up)
    + [input\_scroll](#input_scroll)
    + [input\_text](#input_text)
    + [intersect\_rects](#intersect_rects)
    + [label](#label)
    + [layout\_begin\_column](#layout_begin_column)
    + [layout\_column](#layout_column)
    + [layout\_end\_column](#layout_end_column)
    + [layout\_height](#layout_height)
    + [layout\_next](#layout_next)
    + [layout\_row](#layout_row)
    + [layout\_row\_items](#layout_row_items)
    + [layout\_set\_next](#layout_set_next)
    + [layout\_width](#layout_width)
    + [mouse\_over](#mouse_over)
    + [next\_command](#next_command)
    + [next\_command\_iterator](#next_command_iterator)
    + [number](#number)
    + [number\_textbox](#number_textbox)
    + [open\_popup](#open_popup)
    + [pool\_get](#pool_get)
    + [pool\_init](#pool_init)
    + [pool\_update](#pool_update)
    + [pop](#pop)
    + [pop\_clip\_rect](#pop_clip_rect)
    + [pop\_id](#pop_id)
    + [popup](#popup)
    + [push](#push)
    + [push\_clip\_rect](#push_clip_rect)
    + [push\_command](#push_command)
    + [push\_id\_bytes](#push_id_bytes)
    + [push\_id\_rawptr](#push_id_rawptr)
    + [push\_id\_string](#push_id_string)
    + [push\_id\_uintptr](#push_id_uintptr)
    + [rect\_overlaps\_vec2](#rect_overlaps_vec2)
    + [scoped\_end\_popup](#scoped_end_popup)
    + [scoped\_end\_treenode](#scoped_end_treenode)
    + [scoped\_end\_window](#scoped_end_window)
    + [set\_clip](#set_clip)
    + [set\_focus](#set_focus)
    + [slider](#slider)
    + [text](#text)
    + [textbox](#textbox)
    + [textbox\_raw](#textbox_raw)
    + [treenode](#treenode)
    + [update\_control](#update_control)
    + [window](#window)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [get\_id](#get_id)
    + [push\_id](#push_id)
  * [`#config` values](#pkg-`#config` values)
    + [CLIP\_STACK\_SIZE](#CLIP_STACK_SIZE)
    + [COMMAND\_LIST\_SIZE](#COMMAND_LIST_SIZE)
    + [CONTAINER\_POOL\_SIZE](#CONTAINER_POOL_SIZE)
    + [CONTAINER\_STACK\_SIZE](#CONTAINER_STACK_SIZE)
    + [ID\_STACK\_SIZE](#ID_STACK_SIZE)
    + [LAYOUT\_STACK\_SIZE](#LAYOUT_STACK_SIZE)
    + [MAX\_FMT](#MAX_FMT)
    + [MAX\_TEXT\_STORE](#MAX_TEXT_STORE)
    + [MAX\_WIDTHS](#MAX_WIDTHS)
    + [ROOT\_LIST\_SIZE](#ROOT_LIST_SIZE)
    + [SLIDER\_FMT](#SLIDER_FMT)
    + [TREENODE\_POOL\_SIZE](#TREENODE_POOL_SIZE)
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