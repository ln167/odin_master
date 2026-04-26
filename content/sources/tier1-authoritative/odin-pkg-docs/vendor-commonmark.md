package commonmark - pkg.odin-lang.org 






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



Current Package: *[vendor\_commonmark](/vendor/commonmark)*

  

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
2. [commonmark](/vendor/commonmark)

# package vendor:commonmark [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [CMark](https://github.com/commonmark/cmark).

Original authors: John MacFarlane, Vicent Marti, Kārlis Gaņģis, Nick Wellnhofer.
See LICENSE for license details.

**Example:**

```
import cm "vendor:commonmark"

// Parsing - Simple interface
hellope_world :: proc() {
	fmt.printf("CMark version: %v\n", cm.version_string())

	str := "Hellope *world*!"
	root := cm.parse_document(raw_data(str), len(str), cm.DEFAULT_OPTIONS)
	defer cm.node_free(root)

	html := cm.render_html(root, cm.DEFAULT_OPTIONS)
	defer cm.free(html)

	fmt.println(html)
}

// Parsing - Streaming interface
streaming :: proc() {
	using cm

	STR :: "Hellope *world*!\n\n"
	N   :: 50
	STREAM_SIZE :: 42

	str_buf: [len(STR) * N]u8
	for i in 0..<N {
		copy(str_buf[i*len(STR):], STR)
	}

	parser := parser_new(DEFAULT_OPTIONS)
	defer parser_free(parser)

	buf := str_buf[:]
	for len(buf) > STREAM_SIZE {
		parser_feed(parser, raw_data(buf), STREAM_SIZE)
		buf = buf[STREAM_SIZE:]
	}

	if len(buf) > 0 {
		parser_feed(parser, raw_data(buf), len(buf))
		buf = buf[len(buf):]
	}

	root := parser_finish(parser)
	defer cm.node_free(root)

	html := cm.render_html(root, cm.DEFAULT_OPTIONS)
	defer cm.free(html)

	fmt.println(html)
}
```

An iterator will walk through a tree of nodes, starting from a root
node, returning one node at a time, together with information about
whether the node is being entered or exited.

The iterator will first descend to a child node, if there is one.
When there is no child, the iterator will go to the next sibling.
When there is no next sibling, the iterator will return to the parent
(but with an `Event_Type.Exit`).

The iterator will return `.Done` when it reaches the root node again.

One natural application is an HTML renderer, where an `.Enter` event
outputs an open tag and an `.Exit` event outputs a close tag.

An iterator might also be used to transform an AST in some systematic
way, for example, turning all level-3 headings into regular paragraphs.

usage\_example(root: ^Node) {
ev\_type: Event\_Type
iter := iter\_new(root)
defer iter\_free(iter)
for {
ev\_type = iter\_next(iter)
if ev\_type == .Done do break
cur := iter\_get\_node(iter)
// Do something with `cur` and `ev_type`
}
}

Iterators will never return `.Exit` events for leaf nodes,
which are nodes of type:

HTML\_Block
Thematic\_Break
Code\_Block
Text
Soft\_Break
Line\_Break
Code
HTML\_Inline

Nodes must only be modified after an `.Exit` event, or an `.Enter` event for
leaf nodes.

## Index

Types (19)

* [Allocator](#Allocator)
* [Code](#Code)
* [Custom](#Custom)
* [Delim\_Type](#Delim_Type)
* [Event\_Type](#Event_Type)
* [Heading](#Heading)
* [Iter](#Iter)
* [Link](#Link)
* [List](#List)
* [List\_Type](#List_Type)
* [Node](#Node)
* [Node\_Flag](#Node_Flag)
* [Node\_Flags](#Node_Flags)
* [Node\_Type](#Node_Type)
* [Option](#Option)
* [Options](#Options)
* [Parser](#Parser)
* [Version\_Info](#Version_Info)
* [bufsize\_t](#bufsize_t)

Constants (3)

* [BINDING\_VERSION](#BINDING_VERSION)
* [COMMONMARK\_SHARED](#COMMONMARK_SHARED)
* [DEFAULT\_OPTIONS](#DEFAULT_OPTIONS)

Variables (0)

This section is empty.

Procedures (75)

* [consolidate\_text\_nodes](#consolidate_text_nodes)
* [free\_cstring](#free_cstring)
* [free\_rawptr](#free_rawptr)
* [free\_string](#free_string)
* [get\_default\_mem\_allocator](#get_default_mem_allocator)
* [get\_default\_mem\_allocator\_as\_odin](#get_default_mem_allocator_as_odin)
* [iter\_free](#iter_free)
* [iter\_get\_event\_type](#iter_get_event_type)
* [iter\_get\_node](#iter_get_node)
* [iter\_get\_root](#iter_get_root)
* [iter\_new](#iter_new)
* [iter\_next](#iter_next)
* [iter\_reset](#iter_reset)
* [markdown\_to\_html](#markdown_to_html)
* [markdown\_to\_html\_from\_string](#markdown_to_html_from_string)
* [node\_append\_child](#node_append_child)
* [node\_first\_child](#node_first_child)
* [node\_free](#node_free)
* [node\_get\_end\_column](#node_get_end_column)
* [node\_get\_end\_line](#node_get_end_line)
* [node\_get\_fence\_info](#node_get_fence_info)
* [node\_get\_heading\_level](#node_get_heading_level)
* [node\_get\_list\_delim](#node_get_list_delim)
* [node\_get\_list\_start](#node_get_list_start)
* [node\_get\_list\_tight](#node_get_list_tight)
* [node\_get\_list\_type](#node_get_list_type)
* [node\_get\_literal](#node_get_literal)
* [node\_get\_on\_enter](#node_get_on_enter)
* [node\_get\_on\_exit](#node_get_on_exit)
* [node\_get\_start\_column](#node_get_start_column)
* [node\_get\_start\_line](#node_get_start_line)
* [node\_get\_title](#node_get_title)
* [node\_get\_type](#node_get_type)
* [node\_get\_type\_string](#node_get_type_string)
* [node\_get\_url](#node_get_url)
* [node\_get\_user\_data](#node_get_user_data)
* [node\_insert\_after](#node_insert_after)
* [node\_insert\_before](#node_insert_before)
* [node\_last\_child](#node_last_child)
* [node\_new](#node_new)
* [node\_new\_with\_mem](#node_new_with_mem)
* [node\_next](#node_next)
* [node\_parent](#node_parent)
* [node\_prepend\_child](#node_prepend_child)
* [node\_previous](#node_previous)
* [node\_replace](#node_replace)
* [node\_set\_fence\_info](#node_set_fence_info)
* [node\_set\_heading\_level](#node_set_heading_level)
* [node\_set\_list\_delim](#node_set_list_delim)
* [node\_set\_list\_start](#node_set_list_start)
* [node\_set\_list\_tight](#node_set_list_tight)
* [node\_set\_list\_type](#node_set_list_type)
* [node\_set\_literal](#node_set_literal)
* [node\_set\_on\_enter](#node_set_on_enter)
* [node\_set\_on\_exit](#node_set_on_exit)
* [node\_set\_title](#node_set_title)
* [node\_set\_url](#node_set_url)
* [node\_set\_user\_data](#node_set_user_data)
* [node\_unlink](#node_unlink)
* [parse\_document](#parse_document)
* [parse\_document\_from\_string](#parse_document_from_string)
* [parse\_from\_libc\_file](#parse_from_libc_file)
* [parser\_feed](#parser_feed)
* [parser\_feed\_from\_string](#parser_feed_from_string)
* [parser\_finish](#parser_finish)
* [parser\_free](#parser_free)
* [parser\_new](#parser_new)
* [parser\_new\_with\_mem](#parser_new_with_mem)
* [render\_commonmark](#render_commonmark)
* [render\_html](#render_html)
* [render\_latex](#render_latex)
* [render\_man](#render_man)
* [render\_xml](#render_xml)
* [version](#version)
* [version\_string](#version_string)

Procedure Groups (1)

* [free](#free)

`#config` values (1)

* [COMMONMARK\_SHARED](#COMMONMARK_SHARED)

## Types

### [Allocator ¶](#Allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L120)

```
Allocator :: struct {
	calloc:  proc "c" (num: uint, size: uint) -> rawptr,
	realloc: proc "c" (ptr: rawptr, new_size: uint) -> rawptr,
	free:    proc "c" (ptr: rawptr),
}
```

 

Custom allocator - Defines the memory allocation functions to be used by CMark
when parsing and allocating a document tree




##### Related Procedures With Parameters

* [node\_new\_with\_mem](/vendor/commonmark/#node_new_with_mem)
* [parser\_new\_with\_mem](/vendor/commonmark/#parser_new_with_mem)



##### Related Procedures With Returns

* [get\_default\_mem\_allocator](/vendor/commonmark/#get_default_mem_allocator)

### [Code ¶](#Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L183)

```
Code :: struct {
	info:         cstring,
	fence_length: u8,
	fence_offset: u8,
	fence_char:   u8,
	fenced:       b8,
}
```

### [Custom ¶](#Custom) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L203)

```
Custom :: struct {
	on_enter: cstring,
	on_exit:  cstring,
}
```

### [Delim\_Type ¶](#Delim_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L85)

```
Delim_Type :: enum i32 {
	None, 
	Period, 
	Paren, 
}
```

##### Related Procedures With Parameters

* [node\_set\_list\_delim](/vendor/commonmark/#node_set_list_delim)



##### Related Procedures With Returns

* [node\_get\_list\_delim](/vendor/commonmark/#node_get_list_delim)

### [Event\_Type ¶](#Event_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L244)

```
Event_Type :: enum i32 {
	None, 
	Done, 
	Enter, 
	Exit, 
}
```

##### Related Procedures With Parameters

* [iter\_reset](/vendor/commonmark/#iter_reset)



##### Related Procedures With Returns

* [iter\_get\_event\_type](/vendor/commonmark/#iter_get_event_type)
* [iter\_next](/vendor/commonmark/#iter_next)

### [Heading ¶](#Heading) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L191)

```
Heading :: struct {
	internal_offset: i32,
	level:           i8,
	setext:          bool,
}
```

### [Iter ¶](#Iter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L242)

```
Iter :: distinct rawptr
```

##### Related Procedures With Parameters

* [iter\_free](/vendor/commonmark/#iter_free)
* [iter\_get\_event\_type](/vendor/commonmark/#iter_get_event_type)
* [iter\_get\_node](/vendor/commonmark/#iter_get_node)
* [iter\_get\_root](/vendor/commonmark/#iter_get_root)
* [iter\_next](/vendor/commonmark/#iter_next)
* [iter\_reset](/vendor/commonmark/#iter_reset)



##### Related Procedures With Returns

* [iter\_new](/vendor/commonmark/#iter_new)

### [Link ¶](#Link) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L198)

```
Link :: struct {
	url:   cstring,
	title: cstring,
}
```

### [List ¶](#List) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L173)

```
List :: struct {
	marker_offset: i32,
	padding:       i32,
	start:         i32,
	list_type:     u8,
	delimiter:     u8,
	bullet_char:   u8,
	tight:         bool,
}
```

### [List\_Type ¶](#List_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L79)

```
List_Type :: enum i32 {
	None, 
	Bullet, 
	Ordered, 
}
```

##### Related Procedures With Parameters

* [node\_set\_list\_type](/vendor/commonmark/#node_set_list_type)



##### Related Procedures With Returns

* [node\_get\_list\_type](/vendor/commonmark/#node_get_list_type)

### [Node ¶](#Node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L135)

```
Node :: struct {
	mem:          ^Allocator,
	next:         ^Node,
	prev:         ^Node,
	parent:       ^Node,
	first_child:  ^Node,
	last_child:   ^Node,
	user_data:    rawptr,
	data:         [^]u8,
	len:          bufsize_t,
	start_line:   i32,
	start_column: i32,
	end_line:     i32,
	end_column:   i32,
	type:         Node_Type,
	flags:        bit_set[Node_Flag; u16],
	as:           struct #raw_union {
		list:            List `raw_union_tag:"type=.List"`,
		code:            Code `raw_union_tag:"type=.Code"`,
		heading:         Heading `raw_union_tag:"type=.Heading"`,
		link:            Link `raw_union_tag:"type=.Link"`,
		custom:          Custom `raw_union_tag:"type=.Custom"`,
		html_block_type: i32 `raw_union_tag:"type=.HTML_Block"`,
	},
}
```

 

Node creation, destruction, and tree traversal




##### Related Procedures With Parameters

* [consolidate\_text\_nodes](/vendor/commonmark/#consolidate_text_nodes)
* [iter\_new](/vendor/commonmark/#iter_new)
* [iter\_reset](/vendor/commonmark/#iter_reset)
* [node\_append\_child](/vendor/commonmark/#node_append_child)
* [node\_first\_child](/vendor/commonmark/#node_first_child)
* [node\_free](/vendor/commonmark/#node_free)
* [node\_get\_end\_column](/vendor/commonmark/#node_get_end_column)
* [node\_get\_end\_line](/vendor/commonmark/#node_get_end_line)
* [node\_get\_fence\_info](/vendor/commonmark/#node_get_fence_info)
* [node\_get\_heading\_level](/vendor/commonmark/#node_get_heading_level)
* [node\_get\_list\_delim](/vendor/commonmark/#node_get_list_delim)
* [node\_get\_list\_start](/vendor/commonmark/#node_get_list_start)
* [node\_get\_list\_tight](/vendor/commonmark/#node_get_list_tight)
* [node\_get\_list\_type](/vendor/commonmark/#node_get_list_type)
* [node\_get\_literal](/vendor/commonmark/#node_get_literal)
* [node\_get\_on\_enter](/vendor/commonmark/#node_get_on_enter)
* [node\_get\_on\_exit](/vendor/commonmark/#node_get_on_exit)
* [node\_get\_start\_column](/vendor/commonmark/#node_get_start_column)
* [node\_get\_start\_line](/vendor/commonmark/#node_get_start_line)
* [node\_get\_title](/vendor/commonmark/#node_get_title)
* [node\_get\_type](/vendor/commonmark/#node_get_type)
* [node\_get\_type\_string](/vendor/commonmark/#node_get_type_string)
* [node\_get\_url](/vendor/commonmark/#node_get_url)
* [node\_get\_user\_data](/vendor/commonmark/#node_get_user_data)
* [node\_insert\_after](/vendor/commonmark/#node_insert_after)
* [node\_insert\_before](/vendor/commonmark/#node_insert_before)
* [node\_last\_child](/vendor/commonmark/#node_last_child)
* [node\_next](/vendor/commonmark/#node_next)
* [node\_parent](/vendor/commonmark/#node_parent)
* [node\_prepend\_child](/vendor/commonmark/#node_prepend_child)
* [node\_previous](/vendor/commonmark/#node_previous)
* [node\_replace](/vendor/commonmark/#node_replace)
* [node\_set\_fence\_info](/vendor/commonmark/#node_set_fence_info)
* [node\_set\_heading\_level](/vendor/commonmark/#node_set_heading_level)
* [node\_set\_list\_delim](/vendor/commonmark/#node_set_list_delim)
* [node\_set\_list\_start](/vendor/commonmark/#node_set_list_start)
* [node\_set\_list\_tight](/vendor/commonmark/#node_set_list_tight)
* [node\_set\_list\_type](/vendor/commonmark/#node_set_list_type)
* [node\_set\_literal](/vendor/commonmark/#node_set_literal)
* [node\_set\_on\_enter](/vendor/commonmark/#node_set_on_enter)
* [node\_set\_on\_exit](/vendor/commonmark/#node_set_on_exit)
* [node\_set\_title](/vendor/commonmark/#node_set_title)
* [node\_set\_url](/vendor/commonmark/#node_set_url)
* [node\_set\_user\_data](/vendor/commonmark/#node_set_user_data)
* [node\_unlink](/vendor/commonmark/#node_unlink)
* [render\_commonmark](/vendor/commonmark/#render_commonmark)
* [render\_html](/vendor/commonmark/#render_html)
* [render\_latex](/vendor/commonmark/#render_latex)
* [render\_man](/vendor/commonmark/#render_man)
* [render\_xml](/vendor/commonmark/#render_xml)



##### Related Procedures With Returns

* [iter\_get\_node](/vendor/commonmark/#iter_get_node)
* [iter\_get\_root](/vendor/commonmark/#iter_get_root)
* [node\_new](/vendor/commonmark/#node_new)
* [node\_new\_with\_mem](/vendor/commonmark/#node_new_with_mem)
* [parse\_document](/vendor/commonmark/#parse_document)
* [parse\_document\_from\_string](/vendor/commonmark/#parse_document_from_string)
* [parse\_from\_libc\_file](/vendor/commonmark/#parse_from_libc_file)
* [parser\_finish](/vendor/commonmark/#parser_finish)

### [Node\_Flag ¶](#Node_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L166)

```
Node_Flag :: enum u16 {
	Open              = 0, 
	Last_Line_Blank   = 1, 
	Last_Line_Checked = 2, 
}
```

### [Node\_Flags ¶](#Node_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L171)

```
Node_Flags :: bit_set[Node_Flag; u16]
```

### [Node\_Type ¶](#Node_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L44)

```
Node_Type :: enum u16 {
	// Error status
	None           = 0, 
	// Block 
	Document, 
	Block_Quote, 
	List, 
	Item, 
	Code_Block, 
	HTML_Block, 
	Custom_Block, 
	Paragraph, 
	Heading, 
	Thematic_Break, 
	// Inline 
	Text, 
	Soft_Break, 
	Line_Break, 
	Code, 
	HTML_Inline, 
	Custom_Inline, 
	Emph, 
	Strong, 
	Link, 
	Image, 
	First_Block    = 1, 
	Last_Block     = 10, 
	First_Inline   = 11, 
	Last_Inline    = 20, 
}
```

##### Related Procedures With Parameters

* [node\_new](/vendor/commonmark/#node_new)
* [node\_new\_with\_mem](/vendor/commonmark/#node_new_with_mem)



##### Related Procedures With Returns

* [node\_get\_type](/vendor/commonmark/#node_get_type)

### [Option ¶](#Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L25)

```
Option :: enum i32 {
	Source_Position = 1,  // Include a `data-sourcepos` attribute on all block elements.
	Hard_Breaks     = 2,  // Render `softbreak` as hard line breaks.
	Safe            = 3,  // Defined for API compatibility, now enabled by default.
	Unsafe          = 17, // Render raw HTML and unsafe links (`javascript:`, `vbscript:`,
	// `file:`, and `data:`, except for `image/png`, `image/gif`,
	// `image/jpeg`, or `image/webp` mime types).  By default,
	// raw HTML is replaced by a placeholder HTML comment. Unsafe
	// links are replaced by empty strings.
	No_Breaks       = 4,  // Render `softbreak` elements as spaces.
	Normalize       = 8,  // Legacy option, no effect.
	Validate_UTF8   = 9,  // Validate UTF-8 input before parsing, replacing illegal
	// sequences with the replacement character U+FFFD.
	Smart           = 10, // Convert straight quotes to curly, --- to em dashes, -- to en dashes.
}
```

### [Options ¶](#Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L40)

```
Options :: bit_set[Option; i32]
```

##### Related Procedures With Parameters

* [markdown\_to\_html](/vendor/commonmark/#markdown_to_html)
* [markdown\_to\_html\_from\_string](/vendor/commonmark/#markdown_to_html_from_string)
* [parse\_document](/vendor/commonmark/#parse_document)
* [parse\_document\_from\_string](/vendor/commonmark/#parse_document_from_string)
* [parse\_from\_libc\_file](/vendor/commonmark/#parse_from_libc_file)
* [parser\_new](/vendor/commonmark/#parser_new)
* [parser\_new\_with\_mem](/vendor/commonmark/#parser_new_with_mem)
* [render\_commonmark](/vendor/commonmark/#render_commonmark)
* [render\_html](/vendor/commonmark/#render_html)
* [render\_latex](/vendor/commonmark/#render_latex)
* [render\_man](/vendor/commonmark/#render_man)
* [render\_xml](/vendor/commonmark/#render_xml)

##### Related Constants

* [DEFAULT\_OPTIONS](/vendor/commonmark/#DEFAULT_OPTIONS)

### [Parser ¶](#Parser) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L415)

```
Parser :: distinct rawptr
```

##### Related Procedures With Parameters

* [parser\_feed](/vendor/commonmark/#parser_feed)
* [parser\_feed\_from\_string](/vendor/commonmark/#parser_feed_from_string)
* [parser\_finish](/vendor/commonmark/#parser_finish)
* [parser\_free](/vendor/commonmark/#parser_free)



##### Related Procedures With Returns

* [parser\_new](/vendor/commonmark/#parser_new)
* [parser\_new\_with\_mem](/vendor/commonmark/#parser_new_with_mem)

### [Version\_Info ¶](#Version_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L92)

```
Version_Info :: struct {
	patch: u8,
	minor: u8,
	major: u8,
	_:     u8,
}
```

 

Version information




##### Related Procedures With Returns

* [version](/vendor/commonmark/#version)

##### Related Constants

* [BINDING\_VERSION](/vendor/commonmark/#BINDING_VERSION)

### [bufsize\_t ¶](#bufsize_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L132)

```
bufsize_t :: distinct i32
```

## Constants

### [BINDING\_VERSION ¶](#BINDING_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L7)

```
BINDING_VERSION :: Version_Info{major = 0, minor = 30, patch = 2}
```

### [COMMONMARK\_SHARED ¶](#COMMONMARK_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L6)

```
COMMONMARK_SHARED :: #config(COMMONMARK_SHARED, false)
```

### [DEFAULT\_OPTIONS ¶](#DEFAULT_OPTIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L42)

```
DEFAULT_OPTIONS: bit_set[Option; i32] : Options{}
```

## Variables

This section is empty.

## Procedures

### [consolidate\_text\_nodes ¶](#consolidate_text_nodes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L412)

```
consolidate_text_nodes :: proc "c" (root: ^Node) ---
```

 

Consolidates adjacent text nodes.

### [free\_cstring ¶](#free_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L486)

```
free_cstring :: proc "c" (str: cstring) {…}
```

##### Related Procedure Groups

* [free](/vendor/commonmark/#free)

### [free\_rawptr ¶](#free_rawptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L482)

```
free_rawptr :: proc "c" (ptr: rawptr) {…}
```

 

Helpers to free results from `render_*`.




##### Related Procedure Groups

* [free](/vendor/commonmark/#free)

### [free\_string ¶](#free_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L489)

```
free_string :: proc "c" (s: string) {…}
```

### [get\_default\_mem\_allocator ¶](#get_default_mem_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L129)

```
get_default_mem_allocator :: proc "c" () -> (mem: ^Allocator) ---
```

 

Returns a pointer to the default memory allocator.

### [get\_default\_mem\_allocator\_as\_odin ¶](#get_default_mem_allocator_as_odin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L534)

```
get_default_mem_allocator_as_odin :: proc() -> runtime.Allocator {…}
```

### [iter\_free ¶](#iter_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L260)

```
iter_free :: proc "c" (iter: ^Iter) ---
```

 

Frees the memory allocated for an iterator.

### [iter\_get\_event\_type ¶](#iter_get_event_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L269)

```
iter_get_event_type :: proc "c" (iter: ^Iter) -> (event_type: Event_Type) ---
```

 

Returns the current event type.

### [iter\_get\_node ¶](#iter_get_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L266)

```
iter_get_node :: proc "c" (iter: ^Iter) -> (node: ^Node) ---
```

 

Returns the current node.

### [iter\_get\_root ¶](#iter_get_root) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L272)

```
iter_get_root :: proc "c" (iter: ^Iter) -> (root: ^Node) ---
```

 

Returns the root node.

### [iter\_new ¶](#iter_new) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L257)

```
iter_new :: proc "c" (root: ^Node) -> (iter: ^Iter) ---
```

 

Creates a new iterator starting at 'root'. The current node and event
type are undefined until `iter_next` is called for the first time.
The memory allocated for the iterator should be released using
'iter\_free' when it is no longer needed.

### [iter\_next ¶](#iter_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L263)

```
iter_next :: proc "c" (iter: ^Iter) -> (event_type: Event_Type) ---
```

 

Advances to the next node and returns the event type (`.Enter`, `.Exit`, `.Done`)

### [iter\_reset ¶](#iter_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L277)

```
iter_reset :: proc "c" (iter: ^Iter, current: ^Node, event_type: Event_Type) ---
```

 

Resets the iterator so that the current node is `current` and
the event type is `event_type`. The new current node must be a
descendant of the root node or the root node itself.

### [markdown\_to\_html ¶](#markdown_to_html) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L111)

```
markdown_to_html :: proc "c" (text: cstring, length: uint, options: bit_set[Option; i32]) -> (html: cstring) ---
```

 

Convert 'text' (assumed to be a UTF-8 encoded string with length `len`) from CommonMark Markdown to HTML
returning a null-terminated, UTF-8-encoded string. It is the caller's responsibility
to free the returned buffer.

### [markdown\_to\_html\_from\_string ¶](#markdown_to_html_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L114)

```
markdown_to_html_from_string :: proc(text: string, options: bit_set[Option; i32]) -> (html: string) {…}
```

### [node\_append\_child ¶](#node_append_child) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L409)

```
node_append_child :: proc "c" (node: ^Node, child: ^Node) -> (success: b32) ---
```

 

Adds 'child' to the end of the children of `node`.
Returns `true` on success, `false` on failure.

### [node\_first\_child ¶](#node_first_child) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L235)

```
node_first_child :: proc "c" (node: ^Node) -> (child: ^Node) ---
```

 

Returns the first child of `node`, or nil if `node` has no children.

### [node\_free ¶](#node_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L220)

```
node_free :: proc "c" (node: ^Node) ---
```

 

Frees the memory allocated for a node and any children.

### [node\_get\_end\_column ¶](#node_get_end_column) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L382)

```
node_get_end_column :: proc "c" (node: ^Node) -> (column: i32) ---
```

 

Returns the column at which `node` ends.

### [node\_get\_end\_line ¶](#node_get_end_line) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L379)

```
node_get_end_line :: proc "c" (node: ^Node) -> (line: i32) ---
```

 

Returns the line on which `node` ends.

### [node\_get\_fence\_info ¶](#node_get_fence_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L334)

```
node_get_fence_info :: proc "c" (node: ^Node) -> (fence_info: cstring) ---
```

 

Returns the info string from a fenced code block.

### [node\_get\_heading\_level ¶](#node_get_heading_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L303)

```
node_get_heading_level :: proc "c" (node: ^Node) -> (level: i32) ---
```

 

Returns the heading level of `node`, or 0 if `node` is not a heading.

### [node\_get\_list\_delim ¶](#node_get_list_delim) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L315)

```
node_get_list_delim :: proc "c" (node: ^Node) -> (delim_type: Delim_Type) ---
```

 

Returns the list delimiter type of `node`, or `.No_Delim` if not a list.

### [node\_get\_list\_start ¶](#node_get_list_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L321)

```
node_get_list_start :: proc "c" (node: ^Node) -> (start: i32) ---
```

 

Returns starting number of `node`, if it is an ordered list, otherwise 0.

### [node\_get\_list\_tight ¶](#node_get_list_tight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L328)

```
node_get_list_tight :: proc "c" (node: ^Node) -> (tight: b32) ---
```

 

Returns `true` if `node` is a tight list, `false` otherwise.

### [node\_get\_list\_type ¶](#node_get_list_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L309)

```
node_get_list_type :: proc "c" (node: ^Node) -> (list_type: List_Type) ---
```

 

Returns the list type of `node`, or `.No_List` if not a list.

### [node\_get\_literal ¶](#node_get_literal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L297)

```
node_get_literal :: proc "c" (node: ^Node) -> (content: cstring) ---
```

 

Returns the string contents of `node`, or an empty string if none is set.
Returns `nil` if called on a node that does not have string content.

### [node\_get\_on\_enter ¶](#node_get_on_enter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L355)

```
node_get_on_enter :: proc "c" (node: ^Node) -> (on_enter: cstring) ---
```

 

Returns the literal "on enter" text for a custom `node`, or an empty string if no on\_enter is set.
Returns nil if called on a non-custom node.

### [node\_get\_on\_exit ¶](#node_get_on_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L365)

```
node_get_on_exit :: proc "c" (node: ^Node) -> (on_exit: cstring) ---
```

 

Returns the literal "on exit" text for a custom 'node', or
an empty string if no on\_exit is set. Returns NULL if
called on a non-custom node.

### [node\_get\_start\_column ¶](#node_get_start_column) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L376)

```
node_get_start_column :: proc "c" (node: ^Node) -> (column: i32) ---
```

 

Returns the column at which `node` begins.

### [node\_get\_start\_line ¶](#node_get_start_line) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L373)

```
node_get_start_line :: proc "c" (node: ^Node) -> (line: i32) ---
```

 

Returns the line on which `node` begins.

### [node\_get\_title ¶](#node_get_title) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L348)

```
node_get_title :: proc "c" (node: ^Node) -> (title: cstring) ---
```

 

Returns the title of a link or image `node`, or an empty string if no title is set.
Returns nil if called on a node that is not a link or image.

### [node\_get\_type ¶](#node_get_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L290)

```
node_get_type :: proc "c" (node: ^Node) -> (node_type: Node_Type) ---
```

 

Returns the type of `node`, or `.None` on error.

### [node\_get\_type\_string ¶](#node_get_type_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L293)

```
node_get_type_string :: proc "c" (node: ^Node) -> (node_type: cstring) ---
```

 

Like `node_get_type`, but returns a string representation of the type, or "<unknown>".

### [node\_get\_url ¶](#node_get_url) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L341)

```
node_get_url :: proc "c" (node: ^Node) -> (url: cstring) ---
```

 

Returns the URL of a link or image `node`, or an empty string if no URL is set.
Returns nil if called on a node that is not a link or image.

### [node\_get\_user\_data ¶](#node_get_user_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L284)

```
node_get_user_data :: proc "c" (node: ^Node) -> (user_data: rawptr) ---
```

 

Returns the user data of `node`.

### [node\_insert\_after ¶](#node_insert_after) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L396)

```
node_insert_after :: proc "c" (node: ^Node, sibling: ^Node) -> (success: b32) ---
```

 

Inserts 'sibling' after `node`. Returns `true` on success, `false` on failure.

### [node\_insert\_before ¶](#node_insert_before) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L393)

```
node_insert_before :: proc "c" (node: ^Node, sibling: ^Node) -> (success: b32) ---
```

 

Inserts 'sibling' before `node`. Returns `true` on success, `false` on failure.

### [node\_last\_child ¶](#node_last_child) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L238)

```
node_last_child :: proc "c" (node: ^Node) -> (child: ^Node) ---
```

 

Returns the last child of `node`, or nil if `node` has no children.

### [node\_new ¶](#node_new) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L213)

```
node_new :: proc "c" (type: Node_Type) -> (node: ^Node) ---
```

 

Creates a new node of type 'type'.
Note that the node may have other required properties, which it is the caller's responsibility
to assign.

### [node\_new\_with\_mem ¶](#node_new_with_mem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L217)

```
node_new_with_mem :: proc "c" (type: Node_Type, mem: ^Allocator) -> (node: ^Node) ---
```

 

Same as `node_new`, but explicitly listing the memory allocator used to allocate the node.
Note: be sure to use the same allocator for every node in a tree, or bad things can happen.

### [node\_next ¶](#node_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L226)

```
node_next :: proc "c" (node: ^Node) -> (next: ^Node) ---
```

 

```
	Tree Traversal
```

Returns the next node in the sequence after `node`, or nil if there is none.

### [node\_parent ¶](#node_parent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L232)

```
node_parent :: proc "c" (node: ^Node) -> (parent: ^Node) ---
```

 

Returns the parent of `node`, or nil if there is none.

### [node\_prepend\_child ¶](#node_prepend_child) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L405)

```
node_prepend_child :: proc "c" (node: ^Node, child: ^Node) -> (success: b32) ---
```

 

Adds 'child' to the beginning of the children of `node`.
Returns `true` on success, `false` on failure.

### [node\_previous ¶](#node_previous) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L229)

```
node_previous :: proc "c" (node: ^Node) -> (prev: ^Node) ---
```

 

Returns the previous node in the sequence after `node`, or nil if there is none.

### [node\_replace ¶](#node_replace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L401)

```
node_replace :: proc "c" (old_node: ^Node, new_node: ^Node) -> (success: b32) ---
```

 

Replaces 'oldnode' with 'newnode' and unlinks 'oldnode'
(but does not free its memory).
Returns `true` on success, `false` on failure.

### [node\_set\_fence\_info ¶](#node_set_fence_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L337)

```
node_set_fence_info :: proc "c" (node: ^Node, fence_info: cstring) -> (success: b32) ---
```

 

Sets the info string in a fenced code block, returning `true` on success and `false` on failure.

### [node\_set\_heading\_level ¶](#node_set_heading_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L306)

```
node_set_heading_level :: proc "c" (node: ^Node, level: i32) -> (success: b32) ---
```

 

Sets the heading level of `node`. Returns `true` on success, `false` on failure.

### [node\_set\_list\_delim ¶](#node_set_list_delim) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L318)

```
node_set_list_delim :: proc "c" (node: ^Node, delim_type: Delim_Type) -> (success: b32) ---
```

 

Sets the delimiter type of `node`. Returns `true` on success, `false` on failure.

### [node\_set\_list\_start ¶](#node_set_list_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L325)

```
node_set_list_start :: proc "c" (node: ^Node, start: i32) -> (success: b32) ---
```

 

Sets starting number of `node`, if it is an ordered list.
Returns `true` on success, `false` on failure.

### [node\_set\_list\_tight ¶](#node_set_list_tight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L331)

```
node_set_list_tight :: proc "c" (node: ^Node, tight: b32) -> (success: b32) ---
```

 

Sets the "tightness" of a list. Returns `true` on success, `false` on failure.

### [node\_set\_list\_type ¶](#node_set_list_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L312)

```
node_set_list_type :: proc "c" (node: ^Node, list_type: List_Type) -> (success: b32) ---
```

 

Sets the list type of `node`. Returns `true` on success, `false` on failure.

### [node\_set\_literal ¶](#node_set_literal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L300)

```
node_set_literal :: proc "c" (node: ^Node, content: cstring) -> (success: b32) ---
```

 

Sets the string contents of `node`. Returns `true` on success, `false` on failure.

### [node\_set\_on\_enter ¶](#node_set_on_enter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L360)

```
node_set_on_enter :: proc "c" (node: ^Node, on_enter: cstring) -> (success: b32) ---
```

 

Sets the literal text to render "on enter" for a custom `node`.
Any children of the node will be rendered after this text.
Returns `true` on success, `false`on failure.

### [node\_set\_on\_exit ¶](#node_set_on_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L370)

```
node_set_on_exit :: proc "c" (node: ^Node, on_exit: cstring) -> (success: b32) ---
```

 

Sets the literal text to render "on exit" for a custom 'node'.
Any children of the node will be rendered before this text.
Returns 1 on success 0 on failure.

### [node\_set\_title ¶](#node_set_title) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L351)

```
node_set_title :: proc "c" (node: ^Node, title: cstring) -> (success: b32) ---
```

 

Sets the title of a link or image `node`. Returns `true` on success, `false` on failure.

### [node\_set\_url ¶](#node_set_url) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L344)

```
node_set_url :: proc "c" (node: ^Node, url: cstring) -> (success: b32) ---
```

 

Sets the URL of a link or image `node`. Returns `true` on success, `false` on failure.

### [node\_set\_user\_data ¶](#node_set_user_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L287)

```
node_set_user_data :: proc "c" (node: ^Node, user_data: rawptr) -> (success: b32) ---
```

 

Sets arbitrary user data for `node`. Returns `true` on success, `false` on failure.

### [node\_unlink ¶](#node_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L390)

```
node_unlink :: proc "c" (node: ^Node) ---
```

 

Unlinks a `node`, removing it from the tree, but not freeing its memory.
(Use `node_free` for that.)

### [parse\_document ¶](#parse_document) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L437)

```
parse_document :: proc "c" (buffer: [^]u8, len: uint, options: bit_set[Option; i32]) -> (root: ^Node) ---
```

 

Parse a CommonMark document in 'buffer' of length 'len'.
Returns a pointer to a tree of nodes. The memory allocated for
the node tree should be released using 'node\_free' when it is no longer needed.

### [parse\_document\_from\_string ¶](#parse_document_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L452)

```
parse_document_from_string :: proc "c" (s: string, options: bit_set[Option; i32]) -> (root: ^Node) {…}
```

### [parse\_from\_libc\_file ¶](#parse_from_libc_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L446)

```
parse_from_libc_file :: proc "c" (file: ^c.FILE, options: bit_set[Option; i32]) -> (root: ^Node) ---
```

### [parser\_feed ¶](#parser_feed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L429)

```
parser_feed :: proc "c" (parser: ^Parser, buffer: [^]u8, len: uint) ---
```

 

Feeds a string of length 'len' to 'parser'.

### [parser\_feed\_from\_string ¶](#parser_feed_from_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L449)

```
parser_feed_from_string :: proc "c" (parser: ^Parser, s: string) {…}
```

### [parser\_finish ¶](#parser_finish) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L432)

```
parser_finish :: proc "c" (parser: ^Parser) -> (root: ^Node) ---
```

 

Finish parsing and return a pointer to a tree of nodes.

### [parser\_free ¶](#parser_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L426)

```
parser_free :: proc "c" (parser: ^Parser) ---
```

 

Frees memory allocated for a parser object.

### [parser\_new ¶](#parser_new) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L420)

```
parser_new :: proc "c" (options: bit_set[Option; i32]) -> (parser: ^Parser) ---
```

 

Creates a new parser object.

### [parser\_new\_with\_mem ¶](#parser_new_with_mem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L423)

```
parser_new_with_mem :: proc "c" (options: bit_set[Option; i32], mem: ^Allocator) -> (parser: ^Parser) ---
```

 

Creates a new parser object with the given memory allocator.

### [render\_commonmark ¶](#render_commonmark) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L474)

```
render_commonmark :: proc "c" (root: ^Node, options: bit_set[Option; i32], width: i32) -> (commonmark: cstring) ---
```

 

Render a `node` tree as a commonmark document.
It is the caller's responsibility to free the returned buffer.

### [render\_html ¶](#render_html) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L466)

```
render_html :: proc "c" (root: ^Node, options: bit_set[Option; i32]) -> (html: cstring) ---
```

 

Render a `node` tree as an HTML fragment.
It is up to the user to add an appropriate header and footer.
It is the caller's responsibility to free the returned buffer.

### [render\_latex ¶](#render_latex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L478)

```
render_latex :: proc "c" (root: ^Node, options: bit_set[Option; i32], width: i32) -> (latex: cstring) ---
```

 

Render a `node` tree as a LaTeX document.
It is the caller's responsibility to free the returned buffer.

### [render\_man ¶](#render_man) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L470)

```
render_man :: proc "c" (root: ^Node, options: bit_set[Option; i32], width: i32) -> (groff: cstring) ---
```

 

Render a `node` tree as a groff man page, without the header.
It is the caller's responsibility to free the returned buffer.

### [render\_xml ¶](#render_xml) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L461)

```
render_xml :: proc "c" (root: ^Node, options: bit_set[Option; i32]) -> (xml: cstring) ---
```

 

Render a `node` tree as XML.
It is the caller's responsibilityto free the returned buffer.

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L101)

```
version :: proc "c" () -> (res: Version_Info) ---
```

### [version\_string ¶](#version_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L102)

```
version_string :: proc "c" () -> (res: cstring) ---
```

## Procedure Groups

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L492)

```
free :: proc{
	free_rawptr,
	free_cstring,
}
```

## `#config` values

### [COMMONMARK\_SHARED ¶](#COMMONMARK_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin#L6)

```
COMMONMARK_SHARED :: #config(COMMONMARK_SHARED, false)
```

## Source Files

* [cmark.odin](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/cmark.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/commonmark/doc.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.140205400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Allocator](#Allocator)
    + [Code](#Code)
    + [Custom](#Custom)
    + [Delim\_Type](#Delim_Type)
    + [Event\_Type](#Event_Type)
    + [Heading](#Heading)
    + [Iter](#Iter)
    + [Link](#Link)
    + [List](#List)
    + [List\_Type](#List_Type)
    + [Node](#Node)
    + [Node\_Flag](#Node_Flag)
    + [Node\_Flags](#Node_Flags)
    + [Node\_Type](#Node_Type)
    + [Option](#Option)
    + [Options](#Options)
    + [Parser](#Parser)
    + [Version\_Info](#Version_Info)
    + [bufsize\_t](#bufsize_t)
  * [Constants](#pkg-Constants)
    + [BINDING\_VERSION](#BINDING_VERSION)
    + [COMMONMARK\_SHARED](#COMMONMARK_SHARED)
    + [DEFAULT\_OPTIONS](#DEFAULT_OPTIONS)
  * [Procedures](#pkg-Procedures)
    + [consolidate\_text\_nodes](#consolidate_text_nodes)
    + [free\_cstring](#free_cstring)
    + [free\_rawptr](#free_rawptr)
    + [free\_string](#free_string)
    + [get\_default\_mem\_allocator](#get_default_mem_allocator)
    + [get\_default\_mem\_allocator\_as\_odin](#get_default_mem_allocator_as_odin)
    + [iter\_free](#iter_free)
    + [iter\_get\_event\_type](#iter_get_event_type)
    + [iter\_get\_node](#iter_get_node)
    + [iter\_get\_root](#iter_get_root)
    + [iter\_new](#iter_new)
    + [iter\_next](#iter_next)
    + [iter\_reset](#iter_reset)
    + [markdown\_to\_html](#markdown_to_html)
    + [markdown\_to\_html\_from\_string](#markdown_to_html_from_string)
    + [node\_append\_child](#node_append_child)
    + [node\_first\_child](#node_first_child)
    + [node\_free](#node_free)
    + [node\_get\_end\_column](#node_get_end_column)
    + [node\_get\_end\_line](#node_get_end_line)
    + [node\_get\_fence\_info](#node_get_fence_info)
    + [node\_get\_heading\_level](#node_get_heading_level)
    + [node\_get\_list\_delim](#node_get_list_delim)
    + [node\_get\_list\_start](#node_get_list_start)
    + [node\_get\_list\_tight](#node_get_list_tight)
    + [node\_get\_list\_type](#node_get_list_type)
    + [node\_get\_literal](#node_get_literal)
    + [node\_get\_on\_enter](#node_get_on_enter)
    + [node\_get\_on\_exit](#node_get_on_exit)
    + [node\_get\_start\_column](#node_get_start_column)
    + [node\_get\_start\_line](#node_get_start_line)
    + [node\_get\_title](#node_get_title)
    + [node\_get\_type](#node_get_type)
    + [node\_get\_type\_string](#node_get_type_string)
    + [node\_get\_url](#node_get_url)
    + [node\_get\_user\_data](#node_get_user_data)
    + [node\_insert\_after](#node_insert_after)
    + [node\_insert\_before](#node_insert_before)
    + [node\_last\_child](#node_last_child)
    + [node\_new](#node_new)
    + [node\_new\_with\_mem](#node_new_with_mem)
    + [node\_next](#node_next)
    + [node\_parent](#node_parent)
    + [node\_prepend\_child](#node_prepend_child)
    + [node\_previous](#node_previous)
    + [node\_replace](#node_replace)
    + [node\_set\_fence\_info](#node_set_fence_info)
    + [node\_set\_heading\_level](#node_set_heading_level)
    + [node\_set\_list\_delim](#node_set_list_delim)
    + [node\_set\_list\_start](#node_set_list_start)
    + [node\_set\_list\_tight](#node_set_list_tight)
    + [node\_set\_list\_type](#node_set_list_type)
    + [node\_set\_literal](#node_set_literal)
    + [node\_set\_on\_enter](#node_set_on_enter)
    + [node\_set\_on\_exit](#node_set_on_exit)
    + [node\_set\_title](#node_set_title)
    + [node\_set\_url](#node_set_url)
    + [node\_set\_user\_data](#node_set_user_data)
    + [node\_unlink](#node_unlink)
    + [parse\_document](#parse_document)
    + [parse\_document\_from\_string](#parse_document_from_string)
    + [parse\_from\_libc\_file](#parse_from_libc_file)
    + [parser\_feed](#parser_feed)
    + [parser\_feed\_from\_string](#parser_feed_from_string)
    + [parser\_finish](#parser_finish)
    + [parser\_free](#parser_free)
    + [parser\_new](#parser_new)
    + [parser\_new\_with\_mem](#parser_new_with_mem)
    + [render\_commonmark](#render_commonmark)
    + [render\_html](#render_html)
    + [render\_latex](#render_latex)
    + [render\_man](#render_man)
    + [render\_xml](#render_xml)
    + [version](#version)
    + [version\_string](#version_string)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [free](#free)
  * [`#config` values](#pkg-`#config` values)
    + [COMMONMARK\_SHARED](#COMMONMARK_SHARED)
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