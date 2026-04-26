package kb\_text\_shape - pkg.odin-lang.org 






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



Current Package: *[vendor\_kb\_text\_shape](/vendor/kb_text_shape)*

  

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
2. [kb\_text\_shape](/vendor/kb_text_shape)

# package vendor:kb\_text\_shape [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [Jimmy Lefevre's Text Shape](https://github.com/JimmyLefevre/kb) Unicode text segmentation and OpenType shaping.

**Example:**

```
// Basic
OdinAllocator := context.allocator

FontData, _ := os.read_entire_file("myfonts.ttf", OdinAllocator)

Context := kbts.CreateShapeContext(kbts.AllocatorFromOdinAllocator(&OdinAllocator))
kbts.ShapePushFontFromMemory(Context, FontData, 0)

kbts.ShapeBegin(Context, .DONT_KNOW, .DONT_KNOW)
kbts.ShapeUtf8(Context, "Let's shape something!", .CODEPOINT_INDEX)
kbts.ShapeEnd(Context)

CursorX, CursorY: c.int = 0, 0
for Run in kbts.ShapeRun(Context) {
	Run := Run
	for Glyph in kbts.GlyphIteratorNext(&Run.Glyphs) {
		GlyphX := CursorX + Glyph.OffsetX
		GlyphY := CursorY + Glyph.OffsetY

		DisplayGlyph(Glyph.Id, GlyphX, GlyphY)

		CursorX += Glyph.AdvanceX
		CursorY += Glyph.AdvanceY
	}
}
```

Example:

```
// Font collections
OdinAllocator := context.allocator

FontData, _ := os.read_entire_file("myfonts.ttf", OdinAllocator)
Font := kbts.FontFromMemory(FontData, 0, kbts.AllocatorFromOdinAllocator(&OdinAllocator))

_ = kbts.ShapePushFont(Context, &Font)

FontCount := kbts.FontCount(FontData)
for FontIndex in 1..<FontCount {
	kbts.ShapePushFontFromMemory(Context, FontData, FontIndex)
}
```

**Example:**

```
kbts.ShapeBegin(Context, .DONT_KNOW, .DONT_KNOW)

kbts.ShapePushFeature(Context, .kern, 0)
kbts.ShapeUtf8(Context, "Without kerning", .CODEPOINT_INDEX)
_ = kbts.ShapePopFeature(Context, .kern)

kbts.ShapeUtf8(Context, "With kerning", .CODEPOINT_INDEX)

kbts.ShapeEnd(Context)
```

## Index

Types (69)

* [allocator\_function](#allocator_function)
* [allocator\_op](#allocator_op)
* [allocator\_op\_allocate](#allocator_op_allocate)
* [allocator\_op\_free](#allocator_op_free)
* [allocator\_op\_kind](#allocator_op_kind)
* [arena](#arena)
* [arena\_block\_header](#arena_block_header)
* [blob\_header](#blob_header)
* [blob\_table](#blob_table)
* [blob\_table\_id](#blob_table_id)
* [blob\_version](#blob_version)
* [bracket](#bracket)
* [break\_config\_flag](#break_config_flag)
* [break\_config\_flags](#break_config_flags)
* [break\_flag](#break_flag)
* [break\_flags](#break_flags)
* [break\_state](#break_state)
* [break\_state\_flag](#break_state_flag)
* [break\_state\_flags](#break_state_flags)
* [break\_type](#break_type)
* [decode](#decode)
* [direction](#direction)
* [encode\_utf8](#encode_utf8)
* [feature\_override](#feature_override)
* [feature\_tag](#feature_tag)
* [font](#font)
* [font\_coverage\_test](#font_coverage_test)
* [font\_info](#font_info)
* [font\_info\_string\_id](#font_info_string_id)
* [font\_style\_flag](#font_style_flag)
* [font\_style\_flags](#font_style_flags)
* [font\_weight](#font_weight)
* [font\_width](#font_width)
* [glyph](#glyph)
* [glyph\_classes](#glyph_classes)
* [glyph\_config](#glyph_config)
* [glyph\_flag](#glyph_flag)
* [glyph\_flags](#glyph_flags)
* [glyph\_iterator](#glyph_iterator)
* [glyph\_parent](#glyph_parent)
* [glyph\_storage](#glyph_storage)
* [japanese\_line\_break\_style](#japanese_line_break_style)
* [joining\_feature](#joining_feature)
* [language](#language)
* [line\_break\_class](#line_break_class)
* [load\_font\_error](#load_font_error)
* [load\_font\_state](#load_font_state)
* [lookup\_subtable\_info](#lookup_subtable_info)
* [orientation](#orientation)
* [run](#run)
* [script](#script)
* [script\_tag](#script_tag)
* [shape\_codepoint](#shape_codepoint)
* [shape\_codepoint\_iterator](#shape_codepoint_iterator)
* [shape\_config](#shape_config)
* [shape\_context](#shape_context)
* [shape\_error](#shape_error)
* [shaper](#shaper)
* [shaper\_properties](#shaper_properties)
* [shaping\_table](#shaping_table)
* [text\_format](#text_format)
* [un](#un)
* [unicode\_bidirectional\_class](#unicode_bidirectional_class)
* [unicode\_flag](#unicode_flag)
* [unicode\_flags](#unicode_flags)
* [unicode\_joining\_type](#unicode_joining_type)
* [user\_id\_generation\_mode](#user_id_generation_mode)
* [version](#version)
* [word\_break\_class](#word_break_class)

Constants (20)

* [BREAK\_FLAG\_ANY](#BREAK_FLAG_ANY)
* [BREAK\_FLAG\_DIRECTION](#BREAK_FLAG_DIRECTION)
* [BREAK\_FLAG\_GRAPHEME](#BREAK_FLAG_GRAPHEME)
* [BREAK\_FLAG\_LINE](#BREAK_FLAG_LINE)
* [BREAK\_FLAG\_LINE\_HARD](#BREAK_FLAG_LINE_HARD)
* [BREAK\_FLAG\_LINE\_SOFT](#BREAK_FLAG_LINE_SOFT)
* [BREAK\_FLAG\_MANUAL](#BREAK_FLAG_MANUAL)
* [BREAK\_FLAG\_PARAGRAPH\_DIRECTION](#BREAK_FLAG_PARAGRAPH_DIRECTION)
* [BREAK\_FLAG\_SCRIPT](#BREAK_FLAG_SCRIPT)
* [BREAK\_FLAG\_WORD](#BREAK_FLAG_WORD)
* [MAXIMUM\_CODEPOINT\_SCRIPTS](#MAXIMUM_CODEPOINT_SCRIPTS)
* [MAXIMUM\_RECOMPOSITION\_PARENTS](#MAXIMUM_RECOMPOSITION_PARENTS)
* [UNICODE\_FLAG\_CLOSE\_BRACKET](#UNICODE_FLAG_CLOSE_BRACKET)
* [UNICODE\_FLAG\_DECIMAL\_DIGIT](#UNICODE_FLAG_DECIMAL_DIGIT)
* [UNICODE\_FLAG\_DEFAULT\_IGNORABLE](#UNICODE_FLAG_DEFAULT_IGNORABLE)
* [UNICODE\_FLAG\_MIRRORED](#UNICODE_FLAG_MIRRORED)
* [UNICODE\_FLAG\_MODIFIER\_COMBINING\_MARK](#UNICODE_FLAG_MODIFIER_COMBINING_MARK)
* [UNICODE\_FLAG\_NON\_SPACING\_MARK](#UNICODE_FLAG_NON_SPACING_MARK)
* [UNICODE\_FLAG\_OPEN\_BRACKET](#UNICODE_FLAG_OPEN_BRACKET)
* [UNICODE\_FLAG\_PART\_OF\_WORD](#UNICODE_FLAG_PART_OF_WORD)

Variables (0)

This section is empty.

Procedures (75)

* [ActiveGlyphIterator](#ActiveGlyphIterator)
* [AllocatorFromOdinAllocator](#AllocatorFromOdinAllocator)
* [Break](#Break)
* [BreakAddCodepoint](#BreakAddCodepoint)
* [BreakBegin](#BreakBegin)
* [BreakEnd](#BreakEnd)
* [BreakEntireString](#BreakEntireString)
* [BreakEntireStringUtf32](#BreakEntireStringUtf32)
* [BreakEntireStringUtf8](#BreakEntireStringUtf8)
* [ClearActiveGlyphs](#ClearActiveGlyphs)
* [CodepointToGlyph](#CodepointToGlyph)
* [CodepointToGlyphId](#CodepointToGlyphId)
* [CreateGlyphConfig](#CreateGlyphConfig)
* [CreateShapeConfig](#CreateShapeConfig)
* [CreateShapeContext](#CreateShapeContext)
* [DecodeUtf8](#DecodeUtf8)
* [DestroyGlyphConfig](#DestroyGlyphConfig)
* [DestroyShapeConfig](#DestroyShapeConfig)
* [DestroyShapeContext](#DestroyShapeContext)
* [EncodeUtf8](#EncodeUtf8)
* [FontCount](#FontCount)
* [FontCoverageTestBegin](#FontCoverageTestBegin)
* [FontCoverageTestCodepoint](#FontCoverageTestCodepoint)
* [FontCoverageTestEnd](#FontCoverageTestEnd)
* [FontFromMemory](#FontFromMemory)
* [FontIsValid](#FontIsValid)
* [FreeAllGlyphs](#FreeAllGlyphs)
* [FreeFont](#FreeFont)
* [GetFontInfo](#GetFontInfo)
* [GlyphIteratorIsValid](#GlyphIteratorIsValid)
* [GlyphIteratorNext](#GlyphIteratorNext)
* [GuessTextProperties](#GuessTextProperties)
* [GuessTextPropertiesUtf32](#GuessTextPropertiesUtf32)
* [GuessTextPropertiesUtf8](#GuessTextPropertiesUtf8)
* [InitializeGlyphStorage](#InitializeGlyphStorage)
* [InitializeGlyphStorageFixedMemory](#InitializeGlyphStorageFixedMemory)
* [LoadFont](#LoadFont)
* [PlaceBlob](#PlaceBlob)
* [PlaceGlyphConfig](#PlaceGlyphConfig)
* [PlaceShapeConfig](#PlaceShapeConfig)
* [PlaceShapeContext](#PlaceShapeContext)
* [PlaceShapeContextFixedMemory](#PlaceShapeContextFixedMemory)
* [PushGlyph](#PushGlyph)
* [ScriptDirection](#ScriptDirection)
* [ScriptIsComplex](#ScriptIsComplex)
* [ScriptTagToScript](#ScriptTagToScript)
* [ShapeBegin](#ShapeBegin)
* [ShapeBeginManualRuns](#ShapeBeginManualRuns)
* [ShapeCodepoint](#ShapeCodepoint)
* [ShapeCodepointIteratorIsValid](#ShapeCodepointIteratorIsValid)
* [ShapeCodepointIteratorNext](#ShapeCodepointIteratorNext)
* [ShapeCodepointWithUserId](#ShapeCodepointWithUserId)
* [ShapeCurrentCodepointsIterator](#ShapeCurrentCodepointsIterator)
* [ShapeDirect](#ShapeDirect)
* [ShapeDirectFixedMemory](#ShapeDirectFixedMemory)
* [ShapeEnd](#ShapeEnd)
* [ShapeEndManualRuns](#ShapeEndManualRuns)
* [ShapeError](#ShapeError)
* [ShapeGetShapeCodepoint](#ShapeGetShapeCodepoint)
* [ShapeManualBreak](#ShapeManualBreak)
* [ShapeNextManualRun](#ShapeNextManualRun)
* [ShapePopFeature](#ShapePopFeature)
* [ShapePopFont](#ShapePopFont)
* [ShapePushFeature](#ShapePushFeature)
* [ShapePushFont](#ShapePushFont)
* [ShapePushFontFromMemory](#ShapePushFontFromMemory)
* [ShapeRun](#ShapeRun)
* [ShapeUtf32](#ShapeUtf32)
* [ShapeUtf32WithUserId](#ShapeUtf32WithUserId)
* [ShapeUtf8](#ShapeUtf8)
* [ShapeUtf8WithUserId](#ShapeUtf8WithUserId)
* [SizeOfGlyphConfig](#SizeOfGlyphConfig)
* [SizeOfShapeConfig](#SizeOfShapeConfig)
* [SizeOfShapeContext](#SizeOfShapeContext)
* [kbts\_EncodeUtf8](#kbts_EncodeUtf8)

Procedure Groups (0)

This section is empty.

## Types

### [allocator\_function ¶](#allocator_function) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1784)

```
allocator_function :: proc "c" (Data: rawptr, Op: ^allocator_op)
```

##### Related Procedures With Parameters

* [CreateGlyphConfig](/vendor/kb_text_shape/#CreateGlyphConfig)
* [CreateShapeConfig](/vendor/kb_text_shape/#CreateShapeConfig)
* [CreateShapeContext](/vendor/kb_text_shape/#CreateShapeContext)
* [FontFromMemory](/vendor/kb_text_shape/#FontFromMemory)
* [InitializeGlyphStorage](/vendor/kb_text_shape/#InitializeGlyphStorage)
* [PlaceShapeContext](/vendor/kb_text_shape/#PlaceShapeContext)
* [ShapeDirect](/vendor/kb_text_shape/#ShapeDirect)



##### Related Procedures With Returns

* [AllocatorFromOdinAllocator](/vendor/kb_text_shape/#AllocatorFromOdinAllocator)

### [allocator\_op ¶](#allocator_op) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1775)

```
allocator_op :: struct {
	Kind: allocator_op_kind,
	using op: struct #raw_union {
		Allocate: allocator_op_allocate `raw_union_tag:"Kind=.ALLOCATE"`,
		Free:     allocator_op_free `raw_union_tag:"Kind=.FREE"`,
	},
}
```

### [allocator\_op\_allocate ¶](#allocator_op_allocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1766)

```
allocator_op_allocate :: struct {
	Pointer: rawptr,
	Size:    u32,
}
```

### [allocator\_op\_free ¶](#allocator_op_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1771)

```
allocator_op_free :: struct {
	Pointer: rawptr,
}
```

### [allocator\_op\_kind ¶](#allocator_op_kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L817)

```
allocator_op_kind :: enum u32 {
	NONE, 
	ALLOCATE, 
	FREE, 
}
```

### [arena ¶](#arena) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2104)

```
arena :: struct {
	Allocator:         allocator_function,
	AllocatorData:     rawptr,
	BlockSentinel:     arena_block_header,
	FreeBlockSentinel: arena_block_header,
	Error:             b32,
}
```

### [arena\_block\_header ¶](#arena_block_header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2099)

```
arena_block_header :: struct {
	Prev: ^arena_block_header,
	Next: ^arena_block_header,
}
```

### [blob\_header ¶](#blob_header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1811)

```
blob_header :: struct {
	Magic:                                           u32,
	Version:                                         u32,
	LookupCount:                                     u32,
	LookupSubtableCount:                             u32,
	GlyphCount:                                      u32,
	GposLookupIndexOffset:                           u32,
	GlyphLookupMatrixOffsetFromStartOfFile:          u32,
	GlyphLookupSubtableMatrixOffsetFromStartOfFile:  u32,
	LookupSubtableIndexOffsetsOffsetFromStartOfFile: u32,
	SubtableInfosOffsetFromStartOfFile:              u32,
	Tables:                                          [blob_table_id]blob_table,
}
```

### [blob\_table ¶](#blob_table) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1791)

```
blob_table :: struct {
	OffsetFromStartOfFile: u32,
	Length:                u32,
}
```

### [blob\_table\_id ¶](#blob_table_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L823)

```
blob_table_id :: enum u32 {
	NONE, 
	HEAD, 
	CMAP, 
	GDEF, 
	GSUB, 
	GPOS, 
	HHEA, 
	VHEA, 
	HMTX, 
	VMTX, 
	MAXP, 
	OS2, 
	NAME, 
}
```

### [blob\_version ¶](#blob_version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L855)

```
blob_version :: enum u32 {
	INVALID, 
	INITIAL, 
	CURRENT = 1, 
}
```

### [bracket ¶](#bracket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1868)

```
bracket :: struct {
	Codepoint:         rune,
	Position:          u32,
	using DirectionBitField: bit_field u8 {
		Direction: direction | 8,
	},
	using ScriptBitField: bit_field u8 {
		Script: script | 8,
	},
}
```

### [break\_config\_flag ¶](#break_config_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L957)

```
break_config_flag :: enum u32 {
	END_OF_TEXT_GENERATES_HARD_LINE_BREAK = 0, 
}
```

### [break\_config\_flags ¶](#break_config_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L956)

```
break_config_flags :: distinct bit_set[break_config_flag; u32]
```

##### Related Procedures With Parameters

* [BreakBegin](/vendor/kb_text_shape/#BreakBegin)
* [BreakEntireString](/vendor/kb_text_shape/#BreakEntireString)
* [BreakEntireStringUtf32](/vendor/kb_text_shape/#BreakEntireStringUtf32)
* [BreakEntireStringUtf8](/vendor/kb_text_shape/#BreakEntireStringUtf8)

### [break\_flag ¶](#break_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L710)

```
break_flag :: enum u32 {
	// Direction changes from left-to-right to right-to-left, or vice versa.
	DIRECTION           = 0, 
	// Script changes.
	// Note that some characters, such as digits, are used in multiple
	// scripts and, as such, will not produce script breaks.
	SCRIPT              = 1, 
	// Graphemes are "visual units". They may be composed of more than one codepoint.
	// They are used as interaction boundaries in graphical interfaces, e.g. moving the
	// caret.
	GRAPHEME            = 2, 
	// In most scripts, words are broken up by whitespace, but Unicode word breaking has
	// better script coverage and also handles some special cases that a simple stateless
	// loop cannot handle.
	WORD                = 3, 
	// By default, you are not allowed to break a line.
	// Soft line breaks allow for line breaking, but do not require it.
	// This is useful for when you are doing line wrapping.
	LINE_SOFT           = 4, 
	// Hard line breaks are required. They signal the end of a paragraph.
	// (In Unicode, there is no meaningful distinction between a line and a paragraph.
	// a paragraph is pretty much just a line of text that can wrap.)
	LINE_HARD           = 5, 
	// Used for manual segmentation in the context.
	MANUAL              = 6, 
	PARAGRAPH_DIRECTION = 7, 
}
```

### [break\_flags ¶](#break_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L709)

```
break_flags :: distinct bit_set[break_flag; u32]
```

##### Related Constants

* [BREAK\_FLAG\_ANY](/vendor/kb_text_shape/#BREAK_FLAG_ANY)
* [BREAK\_FLAG\_DIRECTION](/vendor/kb_text_shape/#BREAK_FLAG_DIRECTION)
* [BREAK\_FLAG\_GRAPHEME](/vendor/kb_text_shape/#BREAK_FLAG_GRAPHEME)
* [BREAK\_FLAG\_LINE](/vendor/kb_text_shape/#BREAK_FLAG_LINE)
* [BREAK\_FLAG\_LINE\_HARD](/vendor/kb_text_shape/#BREAK_FLAG_LINE_HARD)
* [BREAK\_FLAG\_LINE\_SOFT](/vendor/kb_text_shape/#BREAK_FLAG_LINE_SOFT)
* [BREAK\_FLAG\_MANUAL](/vendor/kb_text_shape/#BREAK_FLAG_MANUAL)
* [BREAK\_FLAG\_PARAGRAPH\_DIRECTION](/vendor/kb_text_shape/#BREAK_FLAG_PARAGRAPH_DIRECTION)
* [BREAK\_FLAG\_SCRIPT](/vendor/kb_text_shape/#BREAK_FLAG_SCRIPT)
* [BREAK\_FLAG\_WORD](/vendor/kb_text_shape/#BREAK_FLAG_WORD)

### [break\_state ¶](#break_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1883)

```
break_state :: struct {
	Breaks:                             [8]break_type `fmt:"v,BreakCount"`,
	BreakCount:                         u32,
	ParagraphDirection:                 direction,
	UserParagraphDirection:             direction,
	CurrentPosition:                    u32,
	ParagraphStartPosition:             u32,
	LastScriptBreakPosition:            u32,
	LastDirectionBreakPosition:         u32,
	LastScriptBreakScript:              u8,
	LastDirectionBreakDirection:        u8,
	ScriptPositionOffset:               i16,
	ScriptCount:                        u32,
	ScriptSet:                          [23]u8 `fmt:"v,ScriptCount"`,
	Brackets:                           [64]bracket `fmt:"v,BracketCount"`,
	BracketCount:                       u32,
	Flags:                              break_state_flags,
	FlagState:                          bit_field u32 {
		_0: u32 | 8,
		_1: u32 | 8,
		_2: u32 | 8,
		_3: u32 | 8,
	},
	PositionOffset2:                    i16,
	PositionOffset3:                    i16,
	WordBreakHistory:                   bit_field u32 {
		_0: u32 | 8,
		_1: u32 | 8,
		_2: u32 | 8,
		_3: u32 | 8,
	},
	WordBreaks:                         bit_field u16 {
		_0: u16 | 4,
		_1: u16 | 4,
		_2: u16 | 4,
		_3: u16 | 4,
	},
	WordUnbreaks:                       bit_field u16 {
		_0: u16 | 4,
		_1: u16 | 4,
		_2: u16 | 4,
		_3: u16 | 4,
	},
	WordBreak2PositionOffset:           i16,
	LineBreaks:                         bit_field u64 {
		_0: u64 | 16,
		_1: u64 | 16,
		_2: u64 | 16,
		_3: u64 | 16,
	},
	// Instead of staying synchronized with LineBreaks/LineUnbreaks,
	// this advances every character always.
	// (This is only needed because ZWJ can create an unbreak while simultaneously being ignored.)
	LineUnbreaksAsync:                  bit_field u64 {
		_0: u64 | 16,
		_1: u64 | 16,
		_2: u64 | 16,
		_3: u64 | 16,
	},
	LineUnbreaks:                       bit_field u64 {
		_0: u64 | 16,
		_1: u64 | 16,
		_2: u64 | 16,
		_3: u64 | 16,
	},
	LineBreakHistory:                   bit_field u32 {
		_0: u32 | 8,
		_1: u32 | 8,
		_2: u32 | 8,
		_3: u32 | 8,
	},
	LineBreak2PositionOffset:           i16,
	LineBreak3PositionOffset:           i16,
	using LastDirectionBitField:        bit_field u8 {
		LastDirection: direction | 8,
	},
	BidirectionalClass2:                u8,
	BidirectionalClass1:                u8,
	Bidirectional1PositionOffset:       i16,
	Bidirectional2PositionOffset:       i16,
	JapaneseLineBreakStyle:             japanese_line_break_style,
	ConfigFlags:                        break_config_flags,
	GraphemeBreakState:                 u8,
	LastLineBreakClass:                 u8,
	LastWordBreakClass:                 u8,
	LastWordBreakClassIncludingIgnored: u8,
}
```

 

In the worst case, a single call to BreakAddCodepoint would generate 4 breaks.
We buffer breaks to reorder them before returning them to the user.
This potentially requires infinite memory, which we don't have, so you may want to tweak this constant,
although, really, if the defaults don't work, then you have likely found very strange/adversarial text.




##### Related Procedures With Parameters

* [Break](/vendor/kb_text_shape/#Break)
* [BreakAddCodepoint](/vendor/kb_text_shape/#BreakAddCodepoint)
* [BreakBegin](/vendor/kb_text_shape/#BreakBegin)
* [BreakEnd](/vendor/kb_text_shape/#BreakEnd)

### [break\_state\_flag ¶](#break_state_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L773)

```
break_state_flag :: enum u32 {
	STARTED          = 0, 
	END              = 1, 
	// Bidirectional flags
	SAW_R_AFTER_L    = 3, 
	SAW_AL_AFTER_LR  = 4, 
	LAST_WAS_BRACKET = 5, 
}
```

### [break\_state\_flags ¶](#break_state_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L772)

```
break_state_flags :: distinct bit_set[break_state_flag; u32]
```

### [break\_type ¶](#break_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1858)

```
break_type :: struct {
	// The break code mostly works in relative positions, but we convert to absolute positions for the user.
	// That way, breaks can be trivially stored and compared and such and it just works.
	Position:           i32,
	Flags:              break_flags,
	Direction:          direction,
	// Only valid if (DIRECTION           in Flags).
	ParagraphDirection: direction,
	// Only valid if (PARAGRAPH_DIRECTION in Flags).
	Script:             script,
}
```

##### Related Procedures With Returns

* [Break](/vendor/kb_text_shape/#Break)

### [decode ¶](#decode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1976)

```
decode :: struct {
	Codepoint:                rune,
	SourceCharactersConsumed: i32,
	Valid:                    b32,
}
```

##### Related Procedures With Returns

* [DecodeUtf8](/vendor/kb_text_shape/#DecodeUtf8)

### [direction ¶](#direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L794)

```
direction :: enum u32 {
	DONT_KNOW, 
	KBTS_DIRECTION_LTR, 
	KBTS_DIRECTION_RTL, 
}
```

##### Related Procedures With Parameters

* [BreakBegin](/vendor/kb_text_shape/#BreakBegin)
* [BreakEntireString](/vendor/kb_text_shape/#BreakEntireString)
* [BreakEntireStringUtf32](/vendor/kb_text_shape/#BreakEntireStringUtf32)
* [BreakEntireStringUtf8](/vendor/kb_text_shape/#BreakEntireStringUtf8)
* [ShapeBegin](/vendor/kb_text_shape/#ShapeBegin)
* [ShapeDirect](/vendor/kb_text_shape/#ShapeDirect)
* [ShapeDirectFixedMemory](/vendor/kb_text_shape/#ShapeDirectFixedMemory)
* [ShapeNextManualRun](/vendor/kb_text_shape/#ShapeNextManualRun)



##### Related Procedures With Returns

* [GuessTextProperties](/vendor/kb_text_shape/#GuessTextProperties)
* [GuessTextPropertiesUtf32](/vendor/kb_text_shape/#GuessTextPropertiesUtf32)
* [GuessTextPropertiesUtf8](/vendor/kb_text_shape/#GuessTextPropertiesUtf8)
* [ScriptDirection](/vendor/kb_text_shape/#ScriptDirection)

### [encode\_utf8 ¶](#encode_utf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1983)

```
encode_utf8 :: struct {
	Encoded:       [4]u8 `fmt:"q,EncodedLength"`,
	EncodedLength: i32,
	Valid:         b32,
}
```

##### Related Procedures With Returns

* [kbts\_EncodeUtf8](/vendor/kb_text_shape/#kbts_EncodeUtf8)

### [feature\_override ¶](#feature_override) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1853)

```
feature_override :: struct {
	Tag:   feature_tag,
	Value: i32,
}
```

### [feature\_tag ¶](#feature_tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1505)

```
feature_tag :: enum u32 {
	UNREGISTERED = 0,          // Features that aren't pre-defined in the OpenType spec
	isol         = 1819243369, // Isolated Forms
	fina         = 1634625894, // Terminal Forms
	fin2         = 846096742,  // Terminal Forms #2
	fin3         = 862873958,  // Terminal Forms #3
	medi         = 1768187245, // Medial Forms
	med2         = 845440365,  // Medial Forms #2
	init         = 1953066601, // Initial Forms
	ljmo         = 1869441644, // Leading Jamo Forms
	vjmo         = 1869441654, // Vowel Jamo Forms
	tjmo         = 1869441652, // Trailing Jamo Forms
	rphf         = 1718120562, // Reph Form
	blwf         = 1719102562, // Below-base Forms
	half         = 1718378856, // Half Forms
	pstf         = 1718907760, // Post-base Forms
	abvf         = 1719034465, // Above-base Forms
	pref         = 1717924464, // Pre-base Forms
	numr         = 1919776110, // Numerators
	frac         = 1667330662, // Fractions
	dnom         = 1836019300, // Denominators
	cfar         = 1918985827, // Conjunct Form After Ro
	aalt         = 1953259873, // Access All Alternates
	abvm         = 1836474977, // Above-base Mark Positioning
	abvs         = 1937138273, // Above-base Substitutions
	afrc         = 1668441697, // Alternative Fractions
	akhn         = 1852336993, // Akhand
	apkn         = 1852534881, // Kerning for Alternate Proportional Widths
	blwm         = 1836543074, // Below-base Mark Positioning
	blws         = 1937206370, // Below-base Substitutions
	calt         = 1953259875, // Contextual Alternates
	Case         = 1702060387, // Case-sensitive Forms
	ccmp         = 1886217059, // Glyph Composition / Decomposition
	chws         = 1937205347, // Contextual Half-width Spacing
	cjct         = 1952672355, // Conjunct Forms
	clig         = 1734962275, // Contextual Ligatures
	cpct         = 1952673891, // Centered CJK Punctuation
	cpsp         = 1886613603, // Capital Spacing
	cswh         = 1752658787, // Contextual Swash
	curs         = 1936880995, // Cursive Positioning
	cv01         = 825259619,  // Character Variant 1
	cv02         = 842036835,  // Character Variant 2
	cv03         = 858814051,  // Character Variant 3
	cv04         = 875591267,  // Character Variant 4
	cv05         = 892368483,  // Character Variant 5
	cv06         = 909145699,  // Character Variant 6
	cv07         = 925922915,  // Character Variant 7
	cv08         = 942700131,  // Character Variant 8
	cv09         = 959477347,  // Character Variant 9
	cv10         = 808547939,  // Character Variant 10
	cv11         = 825325155,  // Character Variant 11
	cv12         = 842102371,  // Character Variant 12
	cv13         = 858879587,  // Character Variant 13
	cv14         = 875656803,  // Character Variant 14
	cv15         = 892434019,  // Character Variant 15
	cv16         = 909211235,  // Character Variant 16
	cv17         = 925988451,  // Character Variant 17
	cv18         = 942765667,  // Character Variant 18
	cv19         = 959542883,  // Character Variant 19
	cv20         = 808613475,  // Character Variant 20
	cv21         = 825390691,  // Character Variant 21
	cv22         = 842167907,  // Character Variant 22
	cv23         = 858945123,  // Character Variant 23
	cv24         = 875722339,  // Character Variant 24
	cv25         = 892499555,  // Character Variant 25
	cv26         = 909276771,  // Character Variant 26
	cv27         = 926053987,  // Character Variant 27
	cv28         = 942831203,  // Character Variant 28
	cv29         = 959608419,  // Character Variant 29
	cv30         = 808679011,  // Character Variant 30
	cv31         = 825456227,  // Character Variant 31
	cv32         = 842233443,  // Character Variant 32
	cv33         = 859010659,  // Character Variant 33
	cv34         = 875787875,  // Character Variant 34
	cv35         = 892565091,  // Character Variant 35
	cv36         = 909342307,  // Character Variant 36
	cv37         = 926119523,  // Character Variant 37
	cv38         = 942896739,  // Character Variant 38
	cv39         = 959673955,  // Character Variant 39
	cv40         = 808744547,  // Character Variant 40
	cv41         = 825521763,  // Character Variant 41
	cv42         = 842298979,  // Character Variant 42
	cv43         = 859076195,  // Character Variant 43
	cv44         = 875853411,  // Character Variant 44
	cv45         = 892630627,  // Character Variant 45
	cv46         = 909407843,  // Character Variant 46
	cv47         = 926185059,  // Character Variant 47
	cv48         = 942962275,  // Character Variant 48
	cv49         = 959739491,  // Character Variant 49
	cv50         = 808810083,  // Character Variant 50
	cv51         = 825587299,  // Character Variant 51
	cv52         = 842364515,  // Character Variant 52
	cv53         = 859141731,  // Character Variant 53
	cv54         = 875918947,  // Character Variant 54
	cv55         = 892696163,  // Character Variant 55
	cv56         = 909473379,  // Character Variant 56
	cv57         = 926250595,  // Character Variant 57
	cv58         = 943027811,  // Character Variant 58
	cv59         = 959805027,  // Character Variant 59
	cv60         = 808875619,  // Character Variant 60
	cv61         = 825652835,  // Character Variant 61
	cv62         = 842430051,  // Character Variant 62
	cv63         = 859207267,  // Character Variant 63
	cv64         = 875984483,  // Character Variant 64
	cv65         = 892761699,  // Character Variant 65
	cv66         = 909538915,  // Character Variant 66
	cv67         = 926316131,  // Character Variant 67
	cv68         = 943093347,  // Character Variant 68
	cv69         = 959870563,  // Character Variant 69
	cv70         = 808941155,  // Character Variant 70
	cv71         = 825718371,  // Character Variant 71
	cv72         = 842495587,  // Character Variant 72
	cv73         = 859272803,  // Character Variant 73
	cv74         = 876050019,  // Character Variant 74
	cv75         = 892827235,  // Character Variant 75
	cv76         = 909604451,  // Character Variant 76
	cv77         = 926381667,  // Character Variant 77
	cv78         = 943158883,  // Character Variant 78
	cv79         = 959936099,  // Character Variant 79
	cv80         = 809006691,  // Character Variant 80
	cv81         = 825783907,  // Character Variant 81
	cv82         = 842561123,  // Character Variant 82
	cv83         = 859338339,  // Character Variant 83
	cv84         = 876115555,  // Character Variant 84
	cv85         = 892892771,  // Character Variant 85
	cv86         = 909669987,  // Character Variant 86
	cv87         = 926447203,  // Character Variant 87
	cv88         = 943224419,  // Character Variant 88
	cv89         = 960001635,  // Character Variant 89
	cv90         = 809072227,  // Character Variant 90
	cv91         = 825849443,  // Character Variant 91
	cv92         = 842626659,  // Character Variant 92
	cv93         = 859403875,  // Character Variant 93
	cv94         = 876181091,  // Character Variant 94
	cv95         = 892958307,  // Character Variant 95
	cv96         = 909735523,  // Character Variant 96
	cv97         = 926512739,  // Character Variant 97
	cv98         = 943289955,  // Character Variant 98
	cv99         = 960067171,  // Character Variant 99
	c2pc         = 1668297315, // Petite Capitals From Capitals
	c2sc         = 1668493923, // Small Capitals From Capitals
	dist         = 1953720676, // Distances
	dlig         = 1734962276, // Discretionary Ligatures
	dtls         = 1936487524, // Dotless Forms
	expt         = 1953527909, // Expert Forms
	falt         = 1953259878, // Final Glyph on Line Alternates
	flac         = 1667329126, // Flattened Accent Forms
	fwid         = 1684633446, // Full Widths
	haln         = 1852596584, // Halant Forms
	halt         = 1953259880, // Alternate Half Widths
	hist         = 1953720680, // Historical Forms
	hkna         = 1634626408, // Horizontal Kana Alternates
	hlig         = 1734962280, // Historical Ligatures
	hngl         = 1818717800, // Hangul
	hojo         = 1869246312, // Hojo Kanji Forms (JIS X 0212-1990 Kanji Forms)
	hwid         = 1684633448, // Half Widths
	ital         = 1818326121, // Italics
	jalt         = 1953259882, // Justification Alternates
	jp78         = 943157354,  // JIS78 Forms
	jp83         = 859336810,  // JIS83 Forms
	jp90         = 809070698,  // JIS90 Forms
	jp04         = 875589738,  // JIS2004 Forms
	kern         = 1852990827, // Kerning
	lfbd         = 1684170348, // Left Bounds
	liga         = 1634167148, // Standard Ligatures
	lnum         = 1836412524, // Lining Figures
	locl         = 1818455916, // Localized Forms
	ltra         = 1634890860, // Left-to-right Alternates
	ltrm         = 1836217452, // Left-to-right Mirrored Forms
	mark         = 1802658157, // Mark Positioning
	mgrk         = 1802659693, // Mathematical Greek
	mkmk         = 1802333037, // Mark to Mark Positioning
	mset         = 1952805741, // Mark Positioning via Substitution
	nalt         = 1953259886, // Alternate Annotation Forms
	nlck         = 1801677934, // NLC Kanji Forms
	nukt         = 1953199470, // Nukta Forms
	onum         = 1836412527, // Oldstyle Figures
	opbd         = 1684172911, // Optical Bounds
	ordn         = 1852076655, // Ordinals
	ornm         = 1835954799, // Ornaments
	palt         = 1953259888, // Proportional Alternate Widths
	pcap         = 1885430640, // Petite Capitals
	pkna         = 1634626416, // Proportional Kana
	pnum         = 1836412528, // Proportional Figures
	pres         = 1936028272, // Pre-base Substitutions
	psts         = 1937011568, // Post-base Substitutions
	pwid         = 1684633456, // Proportional Widths
	qwid         = 1684633457, // Quarter Widths
	rand         = 1684955506, // Randomize
	rclt         = 1953260402, // Required Contextual Alternates
	rkrf         = 1718774642, // Rakar Forms
	rlig         = 1734962290, // Required Ligatures
	rtbd         = 1684173938, // Right Bounds
	rtla         = 1634497650, // Right-to-left Alternates
	rtlm         = 1835824242, // Right-to-left Mirrored Forms
	ruby         = 2036495730, // Ruby Notation Forms
	rvrn         = 1852995186, // Required Variation Alternates
	salt         = 1953259891, // Stylistic Alternates
	sinf         = 1718511987, // Scientific Inferiors
	size         = 1702521203, // Optical size
	smcp         = 1885564275, // Small Capitals
	smpl         = 1819307379, // Simplified Forms
	ss01         = 825258867,  // Stylistic Set 1
	ss02         = 842036083,  // Stylistic Set 2
	ss03         = 858813299,  // Stylistic Set 3
	ss04         = 875590515,  // Stylistic Set 4
	ss05         = 892367731,  // Stylistic Set 5
	ss06         = 909144947,  // Stylistic Set 6
	ss07         = 925922163,  // Stylistic Set 7
	ss08         = 942699379,  // Stylistic Set 8
	ss09         = 959476595,  // Stylistic Set 9
	ss10         = 808547187,  // Stylistic Set 10
	ss11         = 825324403,  // Stylistic Set 11
	ss12         = 842101619,  // Stylistic Set 12
	ss13         = 858878835,  // Stylistic Set 13
	ss14         = 875656051,  // Stylistic Set 14
	ss15         = 892433267,  // Stylistic Set 15
	ss16         = 909210483,  // Stylistic Set 16
	ss17         = 925987699,  // Stylistic Set 17
	ss18         = 942764915,  // Stylistic Set 18
	ss19         = 959542131,  // Stylistic Set 19
	ss20         = 808612723,  // Stylistic Set 20
	ssty         = 2037674867, // Math Script-style Alternates
	stch         = 1751348339, // Stretching Glyph Decomposition
	subs         = 1935832435, // Subscript
	sups         = 1936749939, // Superscript
	swsh         = 1752397683, // Swash
	test         = 1953719668, // Test features, only for development
	titl         = 1819568500, // Titling
	tnam         = 1835101812, // Traditional Name Forms
	tnum         = 1836412532, // Tabular Figures
	trad         = 1684107892, // Traditional Forms
	twid         = 1684633460, // Third Widths
	unic         = 1667853941, // Unicase
	valt         = 1953259894, // Alternate Vertical Metrics
	vapk         = 1802527094, // Kerning for Alternate Proportional Vertical Metrics
	vatu         = 1970561398, // Vattu Variants
	vchw         = 2003329910, // Vertical Contextual Half-width Spacing
	vert         = 1953654134, // Vertical Alternates
	vhal         = 1818323062, // Alternate Vertical Half Metrics
	vkna         = 1634626422, // Vertical Kana Alternates
	vkrn         = 1852992374, // Vertical Kerning
	vpal         = 1818325110, // Proportional Alternate Vertical Metrics
	vrt2         = 846492278,  // Vertical Alternates and Rotation
	vrtr         = 1920234102, // Vertical Alternates for Rotation
	zero         = 1869768058, // Slashed Zero
}
```

##### Related Procedures With Parameters

* [ShapePopFeature](/vendor/kb_text_shape/#ShapePopFeature)
* [ShapePushFeature](/vendor/kb_text_shape/#ShapePushFeature)

### [font ¶](#font) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1829)

```
font :: struct {
	Allocator:     allocator_function,
	AllocatorData: rawptr,
	Blob:          ^blob_header,
	Cmap:          ^u16,
	Cmap14:        ^_cmap_14,
	ShapingTables: [shaping_table]^_gsub_gpos,
	UserData:      rawptr,
	Error:         load_font_error,
}
```

##### Related Procedures With Parameters

* [CodepointToGlyph](/vendor/kb_text_shape/#CodepointToGlyph)
* [CodepointToGlyphId](/vendor/kb_text_shape/#CodepointToGlyphId)
* [CreateShapeConfig](/vendor/kb_text_shape/#CreateShapeConfig)
* [FontCoverageTestBegin](/vendor/kb_text_shape/#FontCoverageTestBegin)
* [FontIsValid](/vendor/kb_text_shape/#FontIsValid)
* [FreeFont](/vendor/kb_text_shape/#FreeFont)
* [GetFontInfo](/vendor/kb_text_shape/#GetFontInfo)
* [LoadFont](/vendor/kb_text_shape/#LoadFont)
* [PlaceBlob](/vendor/kb_text_shape/#PlaceBlob)
* [PlaceShapeConfig](/vendor/kb_text_shape/#PlaceShapeConfig)
* [PushGlyph](/vendor/kb_text_shape/#PushGlyph)
* [ShapePushFont](/vendor/kb_text_shape/#ShapePushFont)
* [SizeOfShapeConfig](/vendor/kb_text_shape/#SizeOfShapeConfig)



##### Related Procedures With Returns

* [FontFromMemory](/vendor/kb_text_shape/#FontFromMemory)
* [ShapePopFont](/vendor/kb_text_shape/#ShapePopFont)
* [ShapePushFontFromMemory](/vendor/kb_text_shape/#ShapePushFontFromMemory)

### [font\_coverage\_test ¶](#font_coverage_test) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2128)

```
font_coverage_test :: struct {
	Font:             ^font,
	BaseCodepoint:    rune,
	CurrentBaseError: b32,
	Error:            b32,
	BaseParents:      [19]glyph_parent `fmt:"v,BaseParentCount"`,
	BaseParentCount:  u32,
}
```

##### Related Procedures With Parameters

* [FontCoverageTestBegin](/vendor/kb_text_shape/#FontCoverageTestBegin)
* [FontCoverageTestCodepoint](/vendor/kb_text_shape/#FontCoverageTestCodepoint)
* [FontCoverageTestEnd](/vendor/kb_text_shape/#FontCoverageTestEnd)

### [font\_info ¶](#font_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1844)

```
font_info :: struct {
	Strings:       [font_info_string_id]cstring,
	StringLengths: [font_info_string_id]u16,
	StyleFlags:    font_style_flags,
	Weight:        font_weight,
	Width:         font_width,
}
```

##### Related Procedures With Parameters

* [GetFontInfo](/vendor/kb_text_shape/#GetFontInfo)

### [font\_info\_string\_id ¶](#font_info_string_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L961)

```
font_info_string_id :: enum u32 {
	NONE, 
	COPYRIGHT, 
	FAMILY, 
	SUBFAMILY, 
	UID, 
	FULL_NAME, 
	VERSION, 
	POSTSCRIPT_NAME, 
	TRADEMARK, 
	MANUFACTURER, 
	DESIGNER, 
	TYPOGRAPHIC_FAMILY, 
	TYPOGRAPHIC_SUBFAMILY, 
}
```

### [font\_style\_flag ¶](#font_style_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L863)

```
font_style_flag :: enum u32 {
	REGULAR = 0, 
	ITALIC  = 1, 
	BOLD    = 2, 
}
```

### [font\_style\_flags ¶](#font_style_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L862)

```
font_style_flags :: distinct bit_set[font_style_flag; u32]
```

### [font\_weight ¶](#font_weight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L869)

```
font_weight :: enum u32 {
	UNKNOWN, 
	THIN, 
	EXTRA_LIGHT, 
	LIGHT, 
	NORMAL, 
	MEDIUM, 
	SEMI_BOLD, 
	BOLD, 
	EXTRA_BOLD, 
	BLACK, 
}
```

### [font\_width ¶](#font_width) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L883)

```
font_width :: enum u32 {
	UNKNOWN, 
	ULTRA_CONDENSED, 
	EXTRA_CONDENSED, 
	CONDENSED, 
	SEMI_CONDENSED, 
	NORMAL, 
	SEMI_EXPANDED, 
	EXPANDED, 
	EXTRA_EXPANDED, 
	ULTRA_EXPANDED, 
}
```

### [glyph ¶](#glyph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1994)

```
glyph :: struct {
	Prev:                          ^glyph,
	Next:                          ^glyph,
	Codepoint:                     rune,
	Id:                            u16,
	// Glyph index. This is what you want to use to query outline data.
	Uid:                           u16,
	// This field is kept and returned as-is throughout the shaping process.
	// When you are using the context API, it contains a codepoint index always!
	// To get the original user ID with the context API, you need to get the corresponding shape_codepoint
	// with ShapeGetShapeCodepoint(Context, Glyph^.UserIdOrCodepointIndex, ...);
	UserIdOrCodepointIndex:        i32,
	// Used by GPOS
	OffsetX:                       i32,
	OffsetY:                       i32,
	AdvanceX:                      i32,
	AdvanceY:                      i32,
	// Earlier on, we used to assume that, if a glyph had no advance, or had the MARK glyph class, then
	// it could be handled as a mark in layout operations. This is inaccurate.
	// Unicode makes a distinction between attached marks and standalone marks. For our purposes, attached
	// marks are marks that have found a valid base character to attach to. In practice, this means that the
	// font contains a valid display position/configuration for it in the current context.
	// In contrast, standalone marks are marks that aren't attached to anything. Fonts may still have glyphs
	// for them, in which case we want to display those just like regular glyphs that take up horizontal space
	// on the line. When fonts don't have glyphs for them, they simply stay around as zero-width glyphs.
	// Standalone marks have notably different behavior compared to attached marks, and so, once we start
	// applying positioning features, it becomes worthwhile to track exactly which glyph has attached to which.
	AttachGlyph:                   ^glyph,
	// Set by GPOS attachments.
	Config:                        ^glyph_config,
	Decomposition:                 u64,
	Classes:                       glyph_classes,
	Flags:                         glyph_flags,
	ParentInfo:                    u32,
	// This is set by GSUB and used by GPOS.
	// A 0-index means that we should attach to the last component in the ligature.
	// 
	// From the Microsoft docs:
	//   To correctly access the subtables, the client must keep track of the component associated with the mark.
	// 
	//   For a given mark assigned to a particular class, the appropriate base attachment point is determined by which
	//   ligature component the mark is associated with. This is dependent on the original character string and subsequent
	//   character- or glyph-sequence processing, not the font data alone. While a text-layout client is performing any
	//   character-based preprocessing or any glyph-substitution operations using the GSUB table, the text-layout client
	//   must keep track of associations of marks to particular ligature-glyph components.
	LigatureUid:                   u16,
	LigatureComponentIndexPlusOne: u16,
	LigatureComponentCount:        u16,
	// Set in GSUB and used in GPOS, for STCH.
	JoiningFeature:                joining_feature,
	// Unicode properties filled in by CodepointToGlyph.
	JoiningType:                   unicode_joining_type,
	UnicodeFlags:                  unicode_flags,
	SyllabicClass:                 u8,
	SyllabicPosition:              u8,
	UseClass:                      u8,
	CombiningClass:                u8,
	MarkOrdering:                  u8,
}
```

##### Related Procedures With Returns

* [CodepointToGlyph](/vendor/kb_text_shape/#CodepointToGlyph)
* [GlyphIteratorNext](/vendor/kb_text_shape/#GlyphIteratorNext)
* [PushGlyph](/vendor/kb_text_shape/#PushGlyph)

### [glyph\_classes ¶](#glyph_classes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1989)

```
glyph_classes :: struct {
	Class:               u16,
	MarkAttachmentClass: u16,
}
```

### [glyph\_config ¶](#glyph_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1763)

```
glyph_config :: struct {}
```

##### Related Procedures With Parameters

* [CodepointToGlyph](/vendor/kb_text_shape/#CodepointToGlyph)
* [DestroyGlyphConfig](/vendor/kb_text_shape/#DestroyGlyphConfig)
* [PushGlyph](/vendor/kb_text_shape/#PushGlyph)



##### Related Procedures With Returns

* [CreateGlyphConfig](/vendor/kb_text_shape/#CreateGlyphConfig)
* [PlaceGlyphConfig](/vendor/kb_text_shape/#PlaceGlyphConfig)

### [glyph\_flag ¶](#glyph_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L898)

```
glyph_flag :: enum u32 {
	// These feature flags must coincide with kbts_joining_feature _and_ KBTS_FEATURE_FLAG!
	ISOL                           = 0, 
	FINA                           = 1, 
	FIN2                           = 2, 
	FIN3                           = 3, 
	MEDI                           = 4, 
	MED2                           = 5, 
	INIT                           = 6, 
	// These feature flags must coincide with FEATURE_FLAG!
	LJMO                           = 7, 
	VJMO                           = 8, 
	TJMO                           = 9, 
	RPHF                           = 10, 
	BLWF                           = 11, 
	HALF                           = 12, 
	PSTF                           = 13, 
	ABVF                           = 14, 
	PREF                           = 15, 
	NUMR                           = 16, 
	FRAC                           = 17, 
	DNOM                           = 18, 
	CFAR                           = 19, 
	// These can be anything.
	DO_NOT_DECOMPOSE               = 21, 
	FIRST_IN_MULTIPLE_SUBSTITUTION = 22, 
	NO_BREAK                       = 23, 
	CURSIVE                        = 24, 
	GENERATED_BY_GSUB              = 25, 
	USED_IN_GPOS                   = 26, 
	STCH_ENDPOINT                  = 27, 
	STCH_EXTENSION                 = 28, 
	LIGATURE                       = 29, 
	MULTIPLE_SUBSTITUTION          = 30, 
}
```

### [glyph\_flags ¶](#glyph_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L897)

```
glyph_flags :: distinct bit_set[glyph_flag; u32]
```

### [glyph\_iterator ¶](#glyph_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2090)

```
glyph_iterator :: struct {
	GlyphStorage: ^glyph_storage,
	CurrentGlyph: ^glyph,
	LastAdvanceX: i32,
	X:            i32,
	Y:            i32,
}
```

##### Related Procedures With Parameters

* [GlyphIteratorIsValid](/vendor/kb_text_shape/#GlyphIteratorIsValid)
* [GlyphIteratorNext](/vendor/kb_text_shape/#GlyphIteratorNext)



##### Related Procedures With Returns

* [ActiveGlyphIterator](/vendor/kb_text_shape/#ActiveGlyphIterator)
* [ShapeDirect](/vendor/kb_text_shape/#ShapeDirect)
* [ShapeDirectFixedMemory](/vendor/kb_text_shape/#ShapeDirectFixedMemory)

### [glyph\_parent ¶](#glyph_parent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2123)

```
glyph_parent :: struct {
	Decomposition: u64,
	Codepoint:     rune,
}
```

### [glyph\_storage ¶](#glyph_storage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2114)

```
glyph_storage :: struct {
	Arena:             arena,
	GlyphSentinel:     glyph,
	FreeGlyphSentinel: glyph,
	Error:             b32,
}
```

##### Related Procedures With Parameters

* [ActiveGlyphIterator](/vendor/kb_text_shape/#ActiveGlyphIterator)
* [ClearActiveGlyphs](/vendor/kb_text_shape/#ClearActiveGlyphs)
* [FreeAllGlyphs](/vendor/kb_text_shape/#FreeAllGlyphs)
* [InitializeGlyphStorage](/vendor/kb_text_shape/#InitializeGlyphStorage)
* [InitializeGlyphStorageFixedMemory](/vendor/kb_text_shape/#InitializeGlyphStorageFixedMemory)
* [PushGlyph](/vendor/kb_text_shape/#PushGlyph)
* [ShapeDirect](/vendor/kb_text_shape/#ShapeDirect)
* [ShapeDirectFixedMemory](/vendor/kb_text_shape/#ShapeDirectFixedMemory)

### [japanese\_line\_break\_style ¶](#japanese_line_break_style) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L760)

```
japanese_line_break_style :: enum u8 {
	// The Unicode standard does not define what strict style is used for.
	// Supposedly, it is used for anything that does not fall into the other two categories of text.
	STRICT, 
	// Normal style is used for books and documents.
	NORMAL, 
	// Loose style is used for newspapers, and (I assume) any other narrow column format.
	LOOSE, 
}
```

 

Japanese text contains "kinsoku" characters, around which breaking a line is forbidden.
Exactly which characters are "kinsoku" or not depends on the context:
Strict style has the largest amount of kinsoku characters, which leads to longer lines.
Loose style has the smallest amount of kinsoku characters, which leads to smaller lines.
Normal style is somewhere in the middle.
Note that, while the Unicode standard mentions all three of these styles, it does not mention
any differences between the normal and loose styles.
As such, normal and loose styles currently behave the same.




##### Related Procedures With Parameters

* [BreakBegin](/vendor/kb_text_shape/#BreakBegin)
* [BreakEntireString](/vendor/kb_text_shape/#BreakEntireString)
* [BreakEntireStringUtf32](/vendor/kb_text_shape/#BreakEntireStringUtf32)
* [BreakEntireStringUtf8](/vendor/kb_text_shape/#BreakEntireStringUtf8)

### [joining\_feature ¶](#joining_feature) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L938)

```
joining_feature :: enum u8 {
	NONE, 
	// These must correspond with glyph_flags and FEATURE_IDs.
	ISOL, 
	FINA, 
	FIN2, 
	FIN3, 
	MEDI, 
	MED2, 
	INIT, 
}
```

### [language ¶](#language) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L21)

```
language :: enum u32 {
	DONT_KNOW                     = 0, 
	A_HMAO                        = 541347144, 
	AARI                          = 541676097, 
	ABAZA                         = 541147713, 
	ABKHAZIAN                     = 541803073, 
	ACHI                          = 542262081, 
	ACHOLI                        = 541606721, 
	ADYGHE                        = 542721089, 
	AFAR                          = 542262849, 
	AFRIKAANS                     = 541804097, 
	AGAW                          = 542590785, 
	AITON                         = 542067009, 
	AKAN                          = 541150017, 
	ALBANIAN                      = 541675859, 
	ALSATIAN                      = 542329921, 
	ALTAI                         = 542395457, 
	ALUO                          = 541150809, 
	AMERICAN_PHONETIC             = 1213222977, 
	AMHARIC                       = 541609281, 
	ANGLO_SAXON                   = 541544001, 
	ARABIC                        = 541151809, 
	ARAGONESE                     = 541545025, 
	ARAKANESE                     = 541807169, 
	ARAKWAL                       = 542591826, 
	ARMENIAN                      = 541415752, 
	ARMENIAN_EAST                 = 809851208, 
	AROMANIAN                     = 542135634, 
	ARPITAN                       = 542134854, 
	ASSAMESE                      = 541938497, 
	ASTURIAN                      = 542397249, 
	ATHAPASKAN                    = 541611073, 
	ATSINA                        = 542331969, 
	AVAR                          = 542266945, 
	AVATIME                       = 542004801, 
	AWADHI                        = 541153089, 
	AYMARA                        = 541940033, 
	AZERBAIDJANI                  = 541416001, 
	BADAGA                        = 541344066, 
	BAGHELKHANDI                  = 541540674, 
	BAGRI                         = 542197570, 
	BALANTE                       = 542002242, 
	BALINESE                      = 541999426, 
	BALKAR                        = 541868354, 
	BALTI                         = 542395458, 
	BALUCHI                       = 541674562, 
	BAMBARA                       = 541216066, 
	BAMILEKE                      = 541871426, 
	BANDA                         = 809779522, 
	BANDJALANG                    = 542721090, 
	BANGLA                        = 542000450, 
	BASHKIR                       = 541610818, 
	BASQUE                        = 542201157, 
	BATAK                         = 541807682, 
	BATAK_ALAS_KLUET              = 542790722, 
	BATAK_ANGKOLA                 = 541215553, 
	BATAK_DAIRI                   = 541348930, 
	BATAK_KARO                    = 542659650, 
	BATAK_MANDAILING              = 541938754, 
	BATAK_SIMALUNGUN              = 542331970, 
	BATAK_TOBA                    = 541278786, 
	BAULE                         = 542458178, 
	BAVARIAN                      = 542261570, 
	BELARUSIAN                    = 541869378, 
	BEMBA                         = 541934914, 
	BENCH                         = 541606722, 
	BERBER                        = 542261826, 
	BETI                          = 541676610, 
	BETTE_KURUMA                  = 541218136, 
	BHILI                         = 541673538, 
	BHOJPURI                      = 542066754, 
	BHUTANESE                     = 542005828, 
	BIBLE_CREE                    = 542262082, 
	BIKOL                         = 541804866, 
	BILEN                         = 541870402, 
	BISHNUPRIYA_MANIPURI          = 542724162, 
	BISLAMA                       = 542329154, 
	BLACKFOOT                     = 541477698, 
	BODO                          = 542659138, 
	BOSNIAN                       = 542330690, 
	BOUYEI                        = 541279056, 
	BRAHUI                        = 541610562, 
	BRAJ_BHASHA                   = 541676098, 
	BRETON                        = 541413954, 
	BUGIS                         = 541545794, 
	BULGARIAN                     = 542263106, 
	BUMTHANGKHA                   = 542788171, 
	BURMESE                       = 541938242, 
	BURUSHASKI                    = 541807426, 
	CAJUN_FRENCH                  = 541282886, 
	CARRIER                       = 542265923, 
	CATALAN                       = 542392643, 
	CAYUGA                        = 542720323, 
	CEBUANO                       = 541214019, 
	CENTRAL_YUPIK                 = 542462789, 
	CHAHA_GURAGE                  = 541542467, 
	CHAMORRO                      = 541149251, 
	CHATTISGARHI                  = 541608003, 
	CHECHEN                       = 541411395, 
	CHEROKEE                      = 542263363, 
	CHEYENNE                      = 542722115, 
	CHICHEWA                      = 541673539, 
	CHIGA                         = 541542211, 
	CHIMILA                       = 541540931, 
	CHIN                          = 542001489, 
	CHINANTEC                     = 1313358659, 
	CHINESE_PHONETIC              = 542132314, 
	CHINESE_SIMPLIFIED            = 542328922, 
	CHINESE_TRADITIONAL           = 542394458, 
	CHINESE_TRADITIONAL_HONG_KONG = 541608026, 
	CHINESE_TRADITIONAL_MACAO     = 1297369178, 
	CHIPEWYAN                     = 542132291, 
	CHITTAGONIAN                  = 541545539, 
	CHOCTAW                       = 542066755, 
	CHUKCHI                       = 541804611, 
	CHURCH_SLAVONIC               = 541872963, 
	CHUUKESE                      = 810240067, 
	CHUVASH                       = 542459971, 
	COMORIAN                      = 542264643, 
	COMOX                         = 542068547, 
	COPTIC                        = 542134083, 
	CORNISH                       = 542265155, 
	CORSICAN                      = 542330691, 
	CREE                          = 541413955, 
	CREOLES                       = 542134339, 
	CRIMEAN_TATAR                 = 542396995, 
	CRIOULO                       = 541148491, 
	CROATIAN                      = 542528072, 
	CYPRIOT_ARABIC                = 542720833, 
	CZECH                         = 542724931, 
	DAGBANI                       = 541540676, 
	DAN                           = 541740612, 
	DANGME                        = 541544004, 
	DANISH                        = 541999428, 
	DARGWA                        = 542261572, 
	DARI                          = 541676100, 
	DAYI                          = 542654788, 
	DEFAULT                       = 1953261156, // Can be DFLT too.
	DEHONG_DAI                    = 541344852, 
	DHANGU                        = 541542468, 
	DHIVEHI                       = 542525764, 
	DHUWAL                        = 541742404, 
	DIMLI                         = 542198084, 
	DINKA                         = 541806148, 
	DIVEHI                        = 542525764, 
	DJAMBARRPUYNGU                = 810699332, 
	DOGRI                         = 542066500, 
	DOGRI_MACROLANGUAGE           = 542263108, 
	DUNGAN                        = 542004548, 
	DUTCH                         = 541346894, 
	DZONGKHA                      = 542005828, 
	EASTERN_ABENAKI               = 542196033, 
	EASTERN_CHAM                  = 541936195, 
	EASTERN_CREE                  = 542262085, 
	EASTERN_MANINKAKAN            = 541805893, 
	EASTERN_PWO_KAREN             = 542132811, 
	EBIRA                         = 541672005, 
	EDO                           = 542065733, 
	EFIK                          = 541673029, 
	EMBERA_BAUDO                  = 541279298, 
	EMBERA_CATIO                  = 542069827, 
	EMBERA_CHAMI                  = 541674819, 
	EMBERA_TADO                   = 541279316, 
	ENGLISH                       = 541544005, 
	EPENA                         = 541149779, 
	ERZYA                         = 542790213, 
	KB_TEXT_SHAPEANTO             = 542069838, 
	ESTONIAN                      = 541676613, 
	EVEN                          = 542004805, 
	EVENKI                        = 541808197, 
	EWE                           = 541415237, 
	FALAM_CHIN                    = 541868360, 
	FANG                          = 810434886, 
	FANTI                         = 542392646, 
	FAROESE                       = 542330694, 
	FEFE                          = 542133574, 
	FIJIAN                        = 541674054, 
	FILIPINO                      = 541870416, 
	FINNISH                       = 542001478, 
	FLEMISH                       = 541412422, 
	FON                           = 542003014, 
	FOREST_ENETS                  = 541412934, 
	FRENCH                        = 541151814, 
	FRENCH_ANTILLEAN              = 541999430, 
	FRISIAN                       = 541676102, 
	FRIULIAN                      = 541872710, 
	FULAH                         = 541873478, 
	FUTA                          = 541152326, 
	GA                            = 541344071, 
	GAGAUZ                        = 541540679, 
	GALICIAN                      = 541868359, 
	GANDA                         = 541545804, 
	GARHWALI                      = 542589255, 
	GARO                          = 542069319, 
	GARSHUNI                      = 542261575, 
	GEBA_KAREN                    = 542201419, 
	GEEZ                          = 542786887, 
	GEORGIAN                      = 542392651, 
	GEPO                          = 542132057, 
	GERMAN                        = 542459204, 
	GIKUYU                        = 541804875, 
	GILAKI                        = 541805639, 
	GILBERTESE                    = 810305863, 
	GILYAK                        = 541870407, 
	GITHABUL                      = 541608263, 
	GOGO                          = 541544263, 
	GONDI                         = 542003015, 
	GREEK                         = 541871173, 
	GREENLANDIC                   = 542003783, 
	GUARANI                       = 541152583, 
	GUINEA                        = 542133063, 
	GUJARATI                      = 541742407, 
	GUMATJ                        = 542002759, 
	GUMUZ                         = 542788935, 
	GUPAPUYNGU                    = 541480263, 
	GUSII                         = 542790983, 
	HAIDA                         = 810107208, 
	HAITIAN_CREOLE                = 541671752, 
	HALKOMELEM                    = 542266696, 
	HAMMER_BANNA                  = 541999688, 
	HARARI                        = 541676104, 
	HARAUTI                       = 542261576, 
	HARYANVI                      = 541280066, 
	HAUSA                         = 542458184, 
	HAVASUPAI_WALAPAI_YAVAPAI     = 541480281, 
	HAWAIIAN                      = 542589256, 
	HAYA                          = 542720328, 
	HAZARAGI                      = 542785864, 
	HEBREW                        = 542267209, 
	HEILTSUK                      = 541672776, 
	HERERO                        = 542262600, 
	HIGH_MARI                     = 541150536, 
	HILIGAYNON                    = 541870408, 
	HINDI                         = 542001480, 
	HINDKO                        = 541347400, 
	HIRI_MOTU                     = 542068040, 
	HMONG                         = 542002504, 
	HMONG_DAW                     = 542594893, 
	HMONG_SHUAT                   = 542788936, 
	HO                            = 538988360, 
	HUNGARIAN                     = 542004552, 
	IBAN                          = 541147721, 
	IBIBIO                        = 541213257, 
	ICELANDIC                     = 541872969, 
	IDO                           = 542065737, 
	IGBO                          = 542065225, 
	IJO                           = 542067273, 
	ILOKANO                       = 542067785, 
	INARI_SAMI                    = 541938505, 
	INDONESIAN                    = 541347401, 
	INGUSH                        = 541544009, 
	INTERLINGUA                   = 541150793, 
	INTERLINGUE                   = 541412425, 
	INUKTITUT                     = 542461513, 
	INUPIAT                       = 541806665, 
	IPA_PHONETIC                  = 542134345, 
	IRISH                         = 541676105, 
	IRISH_TRADITIONAL             = 542397001, 
	IRULA                         = 542462537, 
	ITALIAN                       = 541152329, 
	JAMAICAN_CREOLE               = 541933898, 
	JAPANESE                      = 541999434, 
	JAVANESE                      = 542523722, 
	JENNU_KURUMA                  = 541742424, 
	JUDEO_TAT                     = 542393418, 
	JULA                          = 541873482, 
	KABARDIAN                     = 541213003, 
	KABYLE                        = 809648459, 
	KACHCHI                       = 541278539, 
	KADIWEU                       = 541278795, 
	KALENJIN                      = 541868363, 
	KALMYK                        = 541936715, 
	KAMBA                         = 541216075, 
	KANAUJI                       = 541739586, 
	KANNADA                       = 541999435, 
	KANURI                        = 542264907, 
	KAQCHIKEL                     = 541802819, 
	KARACHAY                      = 542261579, 
	KARAIM                        = 541938251, 
	KARAKALPAK                    = 541807179, 
	KARELIAN                      = 541872715, 
	KAREN                         = 542003787, 
	KASHMIRI                      = 541610827, 
	KASHUBIAN                     = 541217603, 
	KATE                          = 541543755, 
	KAZAKH                        = 542785867, 
	KEBENA                        = 541214027, 
	KEKCHI                        = 541803851, 
	KHAKASS                       = 541149259, 
	KHAMTI_SHAN                   = 542394443, 
	KHAMYANG                      = 542462795, 
	KHANTY_KAZIM                  = 541804619, 
	KHANTY_SHURISHKAR             = 542328907, 
	KHANTY_VAKHI                  = 542525515, 
	KHASI                         = 541676363, 
	KHENGKHA                      = 541477720, 
	KHINALUG                      = 541739595, 
	KHMER                         = 541935691, 
	KHORASANI_TURKIC              = 542788939, 
	KHOWAR                        = 542591051, 
	KHUTSURI_GEORGIAN             = 541411147, 
	KICHE                         = 541283665, 
	KIKONGO                       = 542003019, 
	KILDIN_SAMI                   = 541938507, 
	KINYARWANDA                   = 541152594, 
	KIRMANJKI                     = 542460235, 
	KISII                         = 542329163, 
	KITUBA                        = 542591821, 
	KODAGU                        = 541347659, 
	KOKNI                         = 542001995, 
	KOMI                          = 541937483, 
	KOMI_PERMYAK                  = 542134091, 
	KOMI_ZYRIAN                   = 542789451, 
	KOMO                          = 542068043, 
	KOMSO                         = 542330187, 
	KONGO                         = 810438475, 
	KONKANI                       = 541806411, 
	KOORETE                       = 542397003, 
	KOREAN                        = 542265163, 
	KOREAO_OLD_HANGUL             = 541609803, 
	KORYAK                        = 541808971, 
	KOSRAEAN                      = 542330699, 
	KPELLE                        = 541872203, 
	KPELLE_LIBERIA                = 541413464, 
	KRIO                          = 541676107, 
	KRYMCHAK                      = 542393162, 
	KUANYAMA                      = 541152587, 
	KUBE                          = 541476683, 
	KUI                           = 541676875, 
	KULVI                         = 541807947, 
	KUMAONI                       = 542002507, 
	KUMYK                         = 541939019, 
	KURDISH                       = 542266699, 
	KURUKH                        = 542463307, 
	KUY                           = 542725451, 
	KWAKWALA                      = 541808459, 
	KYRGYZ                        = 542263627, 
	L_CREE                        = 542262092, 
	LADAKHI                       = 541803596, 
	LADIN                         = 541344076, 
	LADINO                        = 541349194, 
	LAHULI                        = 541606220, 
	LAK                           = 541802828, 
	LAKI                          = 541674316, 
	LAMBANI                       = 541933900, 
	LAMPUNG                       = 542132812, 
	LAO                           = 542064972, 
	LATIN                         = 542392652, 
	LATVIAN                       = 541677132, 
	LAZ                           = 542785868, 
	LELEMI                        = 541476172, 
	LEZGI                         = 542786892, 
	LIGURIAN                      = 541739340, 
	LIMBU                         = 541216076, 
	LIMBURGISH                    = 541935948, 
	LINGALA                       = 542001484, 
	LIPO                          = 542068812, 
	LISU                          = 542329164, 
	LITHUANIAN                    = 541611084, 
	LIV                           = 542525772, 
	LOJBAN                        = 542065226, 
	LOMA                          = 541937484, 
	LOMBARD                       = 542068044, 
	LOMWE                         = 542592332, 
	LOW_MARI                      = 541150540, 
	LOW_SAXON                     = 542327886, 
	LOWER_SORBIAN                 = 541217612, 
	LU                            = 541344344, 
	LUBA_KATANGA                  = 541218124, 
	LUBA_LULUA                    = 541152588, 
	LULE_SAMI                     = 541938508, 
	LUO                           = 542070092, 
	LURI                          = 541282892, 
	LUSHOOTSEED                   = 542397772, 
	LUXEMBOURGISH                 = 542790732, 
	LUYIA                         = 541611340, 
	MACEDONIAN                    = 541346637, 
	MADURA                        = 541344077, 
	MAGAHI                        = 541540685, 
	MAITHILI                      = 541611085, 
	MAJANG                        = 541737293, 
	MAKASAR                       = 542264141, 
	MAKHUWA                       = 541802829, 
	MAKONDE                       = 541410379, 
	MALAGASY                      = 541543501, 
	MALAY                         = 542723149, 
	MALAYALAM                     = 541868365, 
	MALAYALAM_REFORMED            = 542264397, 
	MALE                          = 541412429, 
	MALINKE                       = 542002253, 
	MALTESE                       = 542331981, 
	MAM                           = 541933901, 
	MANCHU                        = 541606733, 
	MANDAR                        = 542262349, 
	MANDINKA                      = 541347405, 
	MANINKA                       = 541806157, 
	MANIPURI                      = 541675085, 
	MANO                          = 542524749, 
	MANSI                         = 541999437, 
	MANX                          = 542658125, 
	MAORI                         = 541676109, 
	MAPUDUNGUN                    = 542130509, 
	MARATHI                       = 542261581, 
	MARSHALLESE                   = 541606221, 
	MARWARI                       = 542589261, 
	MAYAN                         = 542005581, 
	MAZANDERANI                   = 542005837, 
	MBEMBE_TIGON                  = 541153870, 
	MBO                           = 542065229, 
	MBUNDU                        = 541999693, 
	MEDUMBA                       = 542529858, 
	MEEN                          = 542000461, 
	MENDE                         = 541410381, 
	MERU                          = 542262605, 
	MEWATI                        = 541938775, 
	MINANGKABAU                   = 542001485, 
	MINJANGBAL                    = 541215320, 
	MIRANDESE                     = 541873997, 
	MIZO                          = 542787917, 
	MOHAWK                        = 541609805, 
	MOKSHA                        = 541806413, 
	MOLDAVIAN                     = 541871949, 
	MON                           = 542003021, 
	MONGOLIAN                     = 541544013, 
	MOOSE_CREE                    = 542262093, 
	MORISYEN                      = 541410893, 
	MOROCCAN                      = 542265165, 
	MOSSI                         = 542330957, 
	MUNDARI                       = 542004557, 
	MUSCOGEE                      = 542332237, 
	N_CREE                        = 542262094, 
	NAGA_ASSAMESE                 = 541540686, 
	NAGARI                        = 542263118, 
	NAHUATL                       = 541606222, 
	NANAI                         = 541999438, 
	NASKAPI                       = 542327118, 
	NAURUAN                       = 542458190, 
	NAVAJO                        = 542523726, 
	NDAU                          = 541279310, 
	NDEBELE                       = 541213774, 
	NDONGA                        = 541541454, 
	NEAPOLITAN                    = 542130510, 
	NEPALI                        = 542131534, 
	NEWARI                        = 542590286, 
	NGBAKA                        = 541149006, 
	NIGERIAN_FULFULDE             = 542528838, 
	NIMADI                        = 541413198, 
	NISI                          = 542329166, 
	NIUEAN                        = 542460238, 
	NKO                           = 542067534, 
	NOGAI                         = 541544270, 
	NORFOLK                       = 541608272, 
	NORTH_SLAVEY                  = 542327635, 
	NORTHERN_EMBERA               = 542133573, 
	NORTHERN_SAMI                 = 541938510, 
	NORTHERN_SOTHO                = 542069582, 
	NORTHERN_TAI                  = 541152334, 
	NORWAY_HOUSE_CREE             = 541280334, 
	NORWEGIAN                     = 542265166, 
	NORWEGIAN_NYNORSK             = 542005582, 
	NOVIAL                        = 542527310, 
	NUMANGGANG                    = 542134094, 
	NUNAVIK_INUKTITUT             = 542461513, 
	NUU_CHAH_NULTH                = 541807950, 
	NYAMWEZI                      = 541940046, 
	NYANKOLE                      = 541870926, 
	OCCITAN                       = 541672271, 
	ODIA                          = 541676111, 
	OJI_CREE                      = 542262095, 
	OJIBWAY                       = 541215311, 
	OLD_IRISH                     = 541149011, 
	OLD_JAVANESE                  = 542589259, 
	ONEIDA                        = 541412943, 
	ONONDAGA                      = 542068303, 
	OROMO                         = 542069327, 
	OSSETIAN                      = 542331727, 
	PA_O_KAREN                    = 541805634, 
	PALAUAN                       = 542458192, 
	PALAUNG                       = 541543504, 
	PALESTINIAN_ARAMAIC           = 541147472, 
	PALI                          = 541868368, 
	PALPA                         = 542130512, 
	PAMPANGAN                     = 541933904, 
	PANGASINAN                    = 541540688, 
	PAPIAMENTU                    = 810565968, 
	PASHTO                        = 542327120, 
	PATTANI_MALAY                 = 541148749, 
	PENNSYLVANIA_GERMAN           = 541279312, 
	PERSIAN                       = 542261574, 
	PHAKE                         = 541805136, 
	PICARD                        = 541344592, 
	PIEMONTESE                    = 542330192, 
	PILAGA                        = 541543504, 
	PITE_SAMI                     = 541411923, 
	POCOMCHI                      = 541609808, 
	POHNPEIAN                     = 542003024, 
	POLISH                        = 541805648, 
	POLYTONIC_GREEK               = 542263120, 
	PORTUGUESE                    = 541545552, 
	PROVENCAL                     = 542069328, 
	PUNJABI                       = 541999440, 
	QUECHUA                       = 542790993, 
	QUECHUA_BOLIVIA               = 541611345, 
	QUECHUA_ECUADOR               = 541677137, 
	QUECHUA_PERU                  = 541611857, 
	R_CREE                        = 542262098, 
	RAJASTHANI                    = 541737298, 
	RAKHINE                       = 541807169, 
	RAROTONGAN                    = 542261586, 
	REJANG                        = 541738322, 
	RIANG                         = 541149522, 
	RIPUARIAN                     = 541610827, 
	RITARUNGO                     = 542394706, 
	ROHINGYA                      = 541542482, 
	ROMANIAN                      = 541937490, 
	ROMANSH                       = 542330194, 
	ROMANY                        = 542723922, 
	ROTUMAN                       = 541938770, 
	RUNDI                         = 542004562, 
	RUSSIAN                       = 542332242, 
	RUSSIAN_BURIAT                = 542458450, 
	RUSYN                         = 542724946, 
	SADRI                         = 541344083, 
	SAKHA                         = 541802841, 
	SAMOAN                        = 542068051, 
	SAMOGITIAN                    = 542328659, 
	SAN_BLAS_KUNA                 = 541807939, 
	SANGO                         = 542066515, 
	SANSKRIT                      = 541999443, 
	SANTALI                       = 542392659, 
	SARAIKI                       = 541807187, 
	SARDINIAN                     = 541348435, 
	SASAK                         = 542327123, 
	SATERLAND_FRISIAN             = 542200915, 
	SAYISI                        = 542720339, 
	SCOTS                         = 541672275, 
	SCOTTISH_GAELIC               = 541409607, 
	SEKOTA                        = 541738323, 
	SELKUP                        = 541869395, 
	SENA                          = 541150803, 
	SENECA                        = 541410643, 
	SERBIAN                       = 541217363, 
	SERER                         = 542265939, 
	SGAW_KAREN                    = 542593867, 
	SHAN                          = 542001235, 
	SHONA                         = 541150803, 
	SIBE                          = 541215059, 
	SICILIAN                      = 541999955, 
	SIDAMO                        = 541346131, 
	SILESIAN                      = 541874771, 
	SILTE_GURAGE                  = 541542739, 
	SINDHI                        = 541347411, 
	SINHALA                       = 541609555, 
	SKOLT_SAMI                    = 542329683, 
	SLAVEY                        = 541150291, 
	SLOVAK                        = 542722899, 
	SLOVENIAN                     = 542526547, 
	SMALL_FLOWERY_MIAO            = 541935187, 
	SODO_GURAGE                   = 541544275, 
	SOGA                          = 541544280, 
	SOMALI                        = 541871443, 
	SONGE                         = 542134099, 
	SONINKE                       = 541806163, 
	SOUTH_SLAVEY                  = 541872979, 
	SOUTHERN_KIWAI                = 541346379, 
	SOUTHERN_SAMI                 = 541938515, 
	SOUTHERN_SOTHO                = 542396243, 
	SPANISH                       = 542135109, 
	STANDARD_MOROCCAN_TAMAZIGHT   = 541607770, 
	STRAITS_SALISH                = 542266451, 
	SUKUMA                        = 541807955, 
	SUNDANESE                     = 542004563, 
	SURI                          = 542266707, 
	SUTU                          = 542398547, 
	SVAN                          = 541152851, 
	SWADAYA_ARAMAIC               = 541153107, 
	SWAHILI                       = 541808467, 
	SWATI                         = 542791507, 
	SWEDISH                       = 541414995, 
	SYLHETI                       = 541874515, 
	SYRIAC                        = 542267731, 
	SYRIAC_EASTERN                = 1314019667, 
	SYRIAC_ESTRANGELA             = 1163024723, 
	SYRIAC_WESTERN                = 1246910803, 
	TABASARAN                     = 541213012, 
	TACHELHIT                     = 541673555, 
	TAGALOG                       = 541869908, 
	TAHAGGART_TAMAHAQ             = 542525524, 
	TAHITIAN                      = 542394452, 
	TAI_LAING                     = 541870676, 
	TAJIKI                        = 541737300, 
	TALYSH                        = 542723156, 
	TAMASHEK                      = 541609300, 
	TAMASHEQ                      = 542196052, 
	TAMAZIGHT                     = 541940308, 
	TAMIL                         = 541933908, 
	TARIFIT                       = 541477202, 
	TATAR                         = 542392660, 
	TAWALLAMMAT_TAMAJAQ           = 542200916, 
	TAY                           = 542792020, 
	TAYART_TAMAJEQ                = 542787668, 
	TELUGU                        = 541869396, 
	TEMNE                         = 542002516, 
	TETUM                         = 542393684, 
	TH_CREE                       = 542262100, 
	THAI                          = 541149268, 
	THAILAND_MON                  = 1414418253, 
	THOMPSON                      = 542132308, 
	TIBETAN                       = 541215060, 
	TIGRE                         = 542263124, 
	TIGRINYA                      = 542721876, 
	TIV                           = 542525780, 
	TLINGIT                       = 541674580, 
	TOBO                          = 542523988, 
	TODO                          = 541347668, 
	TOK_PISIN                     = 541675604, 
	TOMA                          = 809783124, 
	TONGA                         = 541544020, 
	TONGAN                        = 542000980, 
	TORKI                         = 541219393, 
	TSHANGLA                      = 541741908, 
	TSONGA                        = 541545300, 
	TSWANA                        = 541150804, 
	TULU                          = 541873492, 
	TUMBUKA                       = 541939028, 
	TUNDRA_ENETS                  = 541412948, 
	TURKISH                       = 541807188, 
	TURKMEN                       = 541936468, 
	TUROYO_ARAMAIC                = 541152596, 
	TUSCARORA                     = 542332244, 
	TUVALU                        = 541873748, 
	TUVIN                         = 542528852, 
	TWI                           = 541677396, 
	TZOTZIL                       = 542071380, 
	UDI                           = 541672533, 
	UDMURT                        = 541934677, 
	UKRAINIAN                     = 542264149, 
	UMBUNDU                       = 541216085, 
	UME_SAMI                      = 542460499, 
	UPPER_SAXON                   = 542464083, 
	UPPER_SORBIAN                 = 541217621, 
	URALIC_PHONETIC               = 542134357, 
	URDU                          = 541348437, 
	UYGHUR                        = 541546837, 
	UZBEK                         = 541219413, 
	VENDA                         = 542000470, 
	VENETIAN                      = 541279574, 
	VIETNAMESE                    = 542394710, 
	VLAX_ROMANI                   = 542723410, 
	VOLAPUK                       = 541871958, 
	VORO                          = 542069334, 
	WA                            = 538984791, 
	WACI_GBE                      = 541672279, 
	WAGDI                         = 541540695, 
	WAKHI                         = 541868631, 
	WALLOON                       = 542002263, 
	WARAY_WARAY                   = 542261591, 
	WAYANAD_CHETTI                = 542397507, 
	WAYUU                         = 541283655, 
	WELSH                         = 541869399, 
	WENDAT                        = 542393431, 
	WEST_CREE                     = 542262103, 
	WESTERN_CHAM                  = 541149763, 
	WESTERN_KAYAH                 = 542464331, 
	WESTERN_PANJABI               = 541216336, 
	WESTERN_PWO_KAREN             = 542070608, 
	WOLOF                         = 541477975, 
	WOODS_CREE                    = 542262084, 
	WUDING_LUQUAN_YI              = 542201689, 
	WYANDOT                       = 542005591, 
	XHOSA                         = 542328920, 
	Y_CREE                        = 542262105, 
	YAO                           = 542064985, 
	YAPESE                        = 542130521, 
	YI_CLASSIC                    = 541280601, 
	YI_MODERN                     = 541935961, 
	YIDDISH                       = 541673802, 
	YORUBA                        = 541147737, 
	ZAMBOANGA_CHAVACANO           = 541803075, 
	ZANDE                         = 541347418, 
	ZARMA                         = 542263876, 
	ZAZAKI                        = 541153882, 
	ZEALANDIC                     = 541148506, 
	ZHUANG                        = 541149274, 
	ZULU                          = 541873498, 
}
```

##### Related Procedures With Parameters

* [CreateShapeConfig](/vendor/kb_text_shape/#CreateShapeConfig)
* [PlaceShapeConfig](/vendor/kb_text_shape/#PlaceShapeConfig)
* [ShapeBegin](/vendor/kb_text_shape/#ShapeBegin)
* [SizeOfShapeConfig](/vendor/kb_text_shape/#SizeOfShapeConfig)

### [line\_break\_class ¶](#line_break_class) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1021)

```
line_break_class :: enum u8 {
	Onea, 
	Oea, 
	Ope, 
	BK, 
	CR, 
	LF, 
	NL, 
	SP, 
	ZW, 
	WJ, 
	GLnea, 
	GLea, 
	CLnea, 
	CLea, 
	CPnea, 
	CPea, 
	EXnea, 
	EXea, 
	SY, 
	BAnea, 
	BAea, 
	OPnea, 
	OPea, 
	QU, 
	QUPi, 
	QUPf, 
	IS, 
	NSnea, 
	NSea, 
	B2, 
	CB, 
	HY, 
	HYPHEN, 
	INnea, 
	INea, 
	BB, 
	HL, 
	ALnea, 
	ALea, 
	NU, 
	PRnea, 
	PRea, 
	IDnea, 
	IDea, 
	IDpe, 
	EBnea, 
	EBea, 
	EM, 
	POnea, 
	POea, 
	JL, 
	JV, 
	JT, 
	H2, 
	H3, 
	AP, 
	AK, 
	DOTTED_CIRCLE, 
	AS, 
	VF, 
	VI, 
	RI, 
	COUNT, 
	CM, 
	ZWJ, 
	CJ, 
	SOT, 
	EOT, 
}
```

### [load\_font\_error ¶](#load_font_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L839)

```
load_font_error :: enum u32 {
	NONE, 
	NEED_TO_CREATE_BLOB, 
	INVALID_FONT, 
	OUT_OF_MEMORY, 
	COULD_NOT_OPEN_FILE, 
	READ_ERROR, 
}
```

##### Related Procedures With Returns

* [LoadFont](/vendor/kb_text_shape/#LoadFont)
* [PlaceBlob](/vendor/kb_text_shape/#PlaceBlob)

### [load\_font\_state ¶](#load_font_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1796)

```
load_font_state :: struct {
	FontData:                             rawptr,
	FontDataSize:                         u32,
	Tables:                               [blob_table_id]blob_table,
	LookupCount:                          u32,
	LookupSubtableCount:                  u32,
	GlyphCount:                           u32,
	ScratchSize:                          u32,
	GlyphLookupMatrixSizeInBytes:         u32,
	GlyphLookupSubtableMatrixSizeInBytes: u32,
	TotalSize:                            u32,
}
```

##### Related Procedures With Parameters

* [LoadFont](/vendor/kb_text_shape/#LoadFont)
* [PlaceBlob](/vendor/kb_text_shape/#PlaceBlob)

### [lookup\_subtable\_info ¶](#lookup_subtable_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1786)

```
lookup_subtable_info :: struct {
	MinimumBacktrackPlusOne: u16,
	MinimumFollowupPlusOne:  u16,
}
```

### [orientation ¶](#orientation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L800)

```
orientation :: enum u32 {
	HORIZONTAL, 
	VERTICAL, 
}
```

### [run ¶](#run) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2139)

```
run :: struct {
	Font:               ^font,
	Script:             script,
	ParagraphDirection: direction,
	Direction:          direction,
	Flags:              break_flags,
	Glyphs:             glyph_iterator,
}
```

##### Related Procedures With Returns

* [ShapeRun](/vendor/kb_text_shape/#ShapeRun)

### [script ¶](#script) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1332)

```
script :: enum u32 {
	DONT_KNOW, 
	ADLAM, 
	AHOM, 
	ANATOLIAN_HIEROGLYPHS, 
	ARABIC, 
	ARMENIAN, 
	AVESTAN, 
	BALINESE, 
	BAMUM, 
	BASSA_VAH, 
	BATAK, 
	BENGALI, 
	BHAIKSUKI, 
	BOPOMOFO, 
	BRAHMI, 
	BUGINESE, 
	BUHID, 
	CANADIAN_SYLLABICS, 
	CARIAN, 
	CAUCASIAN_ALBANIAN, 
	CHAKMA, 
	CHAM, 
	CHEROKEE, 
	CHORASMIAN, 
	CJK_IDEOGRAPHIC, 
	COPTIC, 
	CYPRIOT_SYLLABARY, 
	CYPRO_MINOAN, 
	CYRILLIC, 
	DEFAULT, 
	DEFAULT2, 
	DESERET, 
	DEVANAGARI, 
	DIVES_AKURU, 
	DOGRA, 
	DUPLOYAN, 
	EGYPTIAN_HIEROGLYPHS, 
	ELBASAN, 
	ELYMAIC, 
	ETHIOPIC, 
	GARAY, 
	GEORGIAN, 
	GLAGOLITIC, 
	GOTHIC, 
	GRANTHA, 
	GREEK, 
	GUJARATI, 
	GUNJALA_GONDI, 
	GURMUKHI, 
	GURUNG_KHEMA, 
	HANGUL, 
	HANIFI_ROHINGYA, 
	HANUNOO, 
	HATRAN, 
	HEBREW, 
	HIRAGANA, 
	IMPERIAL_ARAMAIC, 
	INSCRIPTIONAL_PAHLAVI, 
	INSCRIPTIONAL_PARTHIAN, 
	JAVANESE, 
	KAITHI, 
	KANNADA, 
	KATAKANA, 
	KAWI, 
	KAYAH_LI, 
	KHAROSHTHI, 
	KHITAN_SMALL_SCRIPT, 
	KHMER, 
	KHOJKI, 
	KHUDAWADI, 
	KIRAT_RAI, 
	LAO, 
	LATIN, 
	LEPCHA, 
	LIMBU, 
	LINEAR_A, 
	LINEAR_B, 
	LISU, 
	LYCIAN, 
	LYDIAN, 
	MAHAJANI, 
	MAKASAR, 
	MALAYALAM, 
	MANDAIC, 
	MANICHAEAN, 
	MARCHEN, 
	MASARAM_GONDI, 
	MEDEFAIDRIN, 
	MEETEI_MAYEK, 
	MENDE_KIKAKUI, 
	MEROITIC_CURSIVE, 
	MEROITIC_HIEROGLYPHS, 
	MIAO, 
	MODI, 
	MONGOLIAN, 
	MRO, 
	MULTANI, 
	MYANMAR, 
	NABATAEAN, 
	NAG_MUNDARI, 
	NANDINAGARI, 
	NEWA, 
	NEW_TAI_LUE, 
	NKO, 
	NUSHU, 
	NYIAKENG_PUACHUE_HMONG, 
	OGHAM, 
	OL_CHIKI, 
	OL_ONAL, 
	OLD_ITALIC, 
	OLD_HUNGARIAN, 
	OLD_NORTH_ARABIAN, 
	OLD_PERMIC, 
	OLD_PERSIAN_CUNEIFORM, 
	OLD_SOGDIAN, 
	OLD_SOUTH_ARABIAN, 
	OLD_TURKIC, 
	OLD_UYGHUR, 
	ODIA, 
	OSAGE, 
	OSMANYA, 
	PAHAWH_HMONG, 
	PALMYRENE, 
	PAU_CIN_HAU, 
	PHAGS_PA, 
	PHOENICIAN, 
	PSALTER_PAHLAVI, 
	REJANG, 
	RUNIC, 
	SAMARITAN, 
	SAURASHTRA, 
	SHARADA, 
	SHAVIAN, 
	SIDDHAM, 
	SIGN_WRITING, 
	SOGDIAN, 
	SINHALA, 
	SORA_SOMPENG, 
	SOYOMBO, 
	SUMERO_AKKADIAN_CUNEIFORM, 
	SUNDANESE, 
	SUNUWAR, 
	SYLOTI_NAGRI, 
	SYRIAC, 
	TAGALOG, 
	TAGBANWA, 
	TAI_LE, 
	TAI_THAM, 
	TAI_VIET, 
	TAKRI, 
	TAMIL, 
	TANGSA, 
	TANGUT, 
	TELUGU, 
	THAANA, 
	THAI, 
	TIBETAN, 
	TIFINAGH, 
	TIRHUTA, 
	TODHRI, 
	TOTO, 
	TULU_TIGALARI, 
	UGARITIC_CUNEIFORM, 
	VAI, 
	VITHKUQI, 
	WANCHO, 
	WARANG_CITI, 
	YEZIDI, 
	YI, 
	ZANABAZAR_SQUARE, 
}
```

##### Related Procedures With Parameters

* [CreateShapeConfig](/vendor/kb_text_shape/#CreateShapeConfig)
* [PlaceShapeConfig](/vendor/kb_text_shape/#PlaceShapeConfig)
* [ScriptDirection](/vendor/kb_text_shape/#ScriptDirection)
* [ScriptIsComplex](/vendor/kb_text_shape/#ScriptIsComplex)
* [ShapeNextManualRun](/vendor/kb_text_shape/#ShapeNextManualRun)
* [SizeOfShapeConfig](/vendor/kb_text_shape/#SizeOfShapeConfig)



##### Related Procedures With Returns

* [GuessTextProperties](/vendor/kb_text_shape/#GuessTextProperties)
* [GuessTextPropertiesUtf32](/vendor/kb_text_shape/#GuessTextPropertiesUtf32)
* [GuessTextPropertiesUtf8](/vendor/kb_text_shape/#GuessTextPropertiesUtf8)
* [ScriptTagToScript](/vendor/kb_text_shape/#ScriptTagToScript)

### [script\_tag ¶](#script_tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1159)

```
script_tag :: enum u32 {
	DONT_KNOW                 = 538976288, 
	ADLAM                     = 1835820129, 
	AHOM                      = 1836017761, 
	ANATOLIAN_HIEROGLYPHS     = 2004184168, 
	ARABIC                    = 1650553441, 
	ARMENIAN                  = 1852666465, 
	AVESTAN                   = 1953724001, 
	BALINESE                  = 1768710498, 
	BAMUM                     = 1970102626, 
	BASSA_VAH                 = 1936941410, 
	BATAK                     = 1802789218, 
	BENGALI                   = 845639266, 
	BHAIKSUKI                 = 1936418914, 
	BOPOMOFO                  = 1869639522, 
	BRAHMI                    = 1751216738, 
	BUGINESE                  = 1768387938, 
	BUHID                     = 1684567394, 
	CANADIAN_SYLLABICS        = 1936613731, 
	CARIAN                    = 1769103715, 
	CAUCASIAN_ALBANIAN        = 1651009377, 
	CHAKMA                    = 1835753827, 
	CHAM                      = 1835100259, 
	CHEROKEE                  = 1919248483, 
	CHORASMIAN                = 1936877667, 
	CJK_IDEOGRAPHIC           = 1768841576, 
	COPTIC                    = 1953525603, 
	CYPRIOT_SYLLABARY         = 1953656931, 
	CYPRO_MINOAN              = 1852665955, 
	CYRILLIC                  = 1819441507, 
	DEFAULT                   = 1414284868, 
	DEFAULT2                  = 1414284868, 
	DESERET                   = 1953657700, 
	DEVANAGARI                = 846620004, 
	DIVES_AKURU               = 1801546084, 
	DOGRA                     = 1919381348, 
	DUPLOYAN                  = 1819309412, 
	EGYPTIAN_HIEROGLYPHS      = 1887004517, 
	ELBASAN                   = 1633840229, 
	ELYMAIC                   = 1836674149, 
	ETHIOPIC                  = 1768453221, 
	GARAY                     = 1634885991, 
	GEORGIAN                  = 1919903079, 
	GLAGOLITIC                = 1734437991, 
	GOTHIC                    = 1752461159, 
	GRANTHA                   = 1851880039, 
	GREEK                     = 1801810535, 
	GUJARATI                  = 846359143, 
	GUNJALA_GONDI             = 1735290727, 
	GURMUKHI                  = 846361959, 
	GURUNG_KHEMA              = 1751872871, 
	HANGUL                    = 1735287144, 
	HANIFI_ROHINGYA           = 1734897522, 
	HANUNOO                   = 1869504872, 
	HATRAN                    = 1920229736, 
	HEBREW                    = 1919051112, 
	HIRAGANA                  = 1634623851, 
	IMPERIAL_ARAMAIC          = 1768780385, 
	INSCRIPTIONAL_PAHLAVI     = 1768712304, 
	INSCRIPTIONAL_PARTHIAN    = 1769239152, 
	JAVANESE                  = 1635148138, 
	KAITHI                    = 1768453227, 
	KANNADA                   = 845442667, 
	KATAKANA                  = 1634623851, 
	KAWI                      = 1769431403, 
	KAYAH_LI                  = 1768710507, 
	KHAROSHTHI                = 1918986347, 
	KHITAN_SMALL_SCRIPT       = 1937009003, 
	KHMER                     = 1919772779, 
	KHOJKI                    = 1785686123, 
	KHUDAWADI                 = 1684957555, 
	KIRAT_RAI                 = 1767993963, 
	LAO                       = 544170348, 
	LATIN                     = 1853120876, 
	LEPCHA                    = 1668310380, 
	LIMBU                     = 1651337580, 
	LINEAR_A                  = 1634625900, 
	LINEAR_B                  = 1651403116, 
	LISU                      = 1970497900, 
	LYCIAN                    = 1768126828, 
	LYDIAN                    = 1768192364, 
	MAHAJANI                  = 1785225581, 
	MAKASAR                   = 1634427245, 
	MALAYALAM                 = 846031981, 
	MANDAIC                   = 1684955501, 
	MANICHAEAN                = 1768841581, 
	MARCHEN                   = 1668440429, 
	MASARAM_GONDI             = 1835954023, 
	MEDEFAIDRIN               = 1717855597, 
	MEETEI_MAYEK              = 1768256621, 
	MENDE_KIKAKUI             = 1684956525, 
	MEROITIC_CURSIVE          = 1668441453, 
	MEROITIC_HIEROGLYPHS      = 1869768045, 
	MIAO                      = 1685220464, 
	MODI                      = 1768189805, 
	MONGOLIAN                 = 1735290733, 
	MRO                       = 1869574765, 
	MULTANI                   = 1953265005, 
	MYANMAR                   = 846035309, 
	NABATAEAN                 = 1952539246, 
	NAG_MUNDARI               = 1835491694, 
	NANDINAGARI               = 1684955502, 
	NEWA                      = 1635214702, 
	NEW_TAI_LUE               = 1970037108, 
	NKO                       = 544172910, 
	NUSHU                     = 1969779566, 
	NYIAKENG_PUACHUE_HMONG    = 1886285160, 
	OGHAM                     = 1835100015, 
	OL_CHIKI                  = 1801677935, 
	OL_ONAL                   = 1868656239, 
	OLD_ITALIC                = 1818326121, 
	OLD_HUNGARIAN             = 1735292264, 
	OLD_NORTH_ARABIAN         = 1651663214, 
	OLD_PERMIC                = 1836213616, 
	OLD_PERSIAN_CUNEIFORM     = 1868918904, 
	OLD_SOGDIAN               = 1869049715, 
	OLD_SOUTH_ARABIAN         = 1651663219, 
	OLD_TURKIC                = 1751872111, 
	OLD_UYGHUR                = 1919382895, 
	ODIA                      = 846819951, 
	OSAGE                     = 1701278575, 
	OSMANYA                   = 1634562927, 
	PAHAWH_HMONG              = 1735290216, 
	PALMYRENE                 = 1835819376, 
	PAU_CIN_HAU               = 1668637040, 
	PHAGS_PA                  = 1734436976, 
	PHOENICIAN                = 2020501616, 
	PSALTER_PAHLAVI           = 1886152816, 
	REJANG                    = 1735289458, 
	RUNIC                     = 1919841650, 
	SAMARITAN                 = 1919770995, 
	SAURASHTRA                = 1920295283, 
	SHARADA                   = 1685219443, 
	SHAVIAN                   = 2002872435, 
	SIDDHAM                   = 1684302195, 
	SIGN_WRITING              = 2003724147, 
	SOGDIAN                   = 1684500339, 
	SINHALA                   = 1752066419, 
	SORA_SOMPENG              = 1634889587, 
	SOYOMBO                   = 1870229363, 
	SUMERO_AKKADIAN_CUNEIFORM = 2020963192, 
	SUNDANESE                 = 1684960627, 
	SUNUWAR                   = 1970173299, 
	SYLOTI_NAGRI              = 1869379955, 
	SYRIAC                    = 1668446579, 
	TAGALOG                   = 1735157620, 
	TAGBANWA                  = 1650942324, 
	TAI_LE                    = 1701601652, 
	TAI_THAM                  = 1634623852, 
	TAI_VIET                  = 1953915252, 
	TAKRI                     = 1919639924, 
	TAMIL                     = 845966708, 
	TANGSA                    = 1634954868, 
	TANGUT                    = 1735287156, 
	TELUGU                    = 845964660, 
	THAANA                    = 1633773684, 
	THAI                      = 1767991412, 
	TIBETAN                   = 1952606580, 
	TIFINAGH                  = 1735288436, 
	TIRHUTA                   = 1752328564, 
	TODHRI                    = 1919184756, 
	TOTO                      = 1869901684, 
	TULU_TIGALARI             = 1735685492, 
	UGARITIC_CUNEIFORM        = 1918986101, 
	VAI                       = 543777142, 
	VITHKUQI                  = 1752459638, 
	WANCHO                    = 1869112183, 
	WARANG_CITI               = 1634886007, 
	YEZIDI                    = 1769629049, 
	YI                        = 538995065, 
	ZANABAZAR_SQUARE          = 1651401082, 
}
```

##### Related Procedures With Parameters

* [ScriptTagToScript](/vendor/kb_text_shape/#ScriptTagToScript)

### [shape\_codepoint ¶](#shape_codepoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2065)

```
shape_codepoint :: struct {
	Font:               ^font,
	// Only set when (.GRAPHEME in BreakFlags)
	Config:             ^glyph_config,
	Codepoint:          rune,
	UserId:             i32,
	BreakFlags:         break_flags,
	Script:             script,
	// Only set when (BreakFlags & KBTS_BREAK_FLAG_SCRIPT) != 0.
	Direction:          direction,
	// Only set when (BreakFlags & KBTS_BREAK_FLAG_DIRECTION) != 0.
	ParagraphDirection: direction,
}
```

##### Related Procedures With Parameters

* [ShapeGetShapeCodepoint](/vendor/kb_text_shape/#ShapeGetShapeCodepoint)



##### Related Procedures With Returns

* [ShapeCodepointIteratorNext](/vendor/kb_text_shape/#ShapeCodepointIteratorNext)

### [shape\_codepoint\_iterator ¶](#shape_codepoint_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L2078)

```
shape_codepoint_iterator :: struct {
	Codepoint:                  ^shape_codepoint,
	Context:                    ^shape_context,
	EndBlockIndex:              u32,
	OnePastLastCodepointIndex:  u32,
	BlockIndex:                 u32,
	CodepointIndex:             u32,
	CurrentBlockCodepointCount: u32,
	FlatCodepointIndex:         u32,
}
```

##### Related Procedures With Parameters

* [ShapeCodepointIteratorIsValid](/vendor/kb_text_shape/#ShapeCodepointIteratorIsValid)
* [ShapeCodepointIteratorNext](/vendor/kb_text_shape/#ShapeCodepointIteratorNext)



##### Related Procedures With Returns

* [ShapeCurrentCodepointsIterator](/vendor/kb_text_shape/#ShapeCurrentCodepointsIterator)

### [shape\_config ¶](#shape_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1762)

```
shape_config :: struct {}
```

##### Related Procedures With Parameters

* [DestroyShapeConfig](/vendor/kb_text_shape/#DestroyShapeConfig)
* [ShapeDirect](/vendor/kb_text_shape/#ShapeDirect)
* [ShapeDirectFixedMemory](/vendor/kb_text_shape/#ShapeDirectFixedMemory)



##### Related Procedures With Returns

* [CreateShapeConfig](/vendor/kb_text_shape/#CreateShapeConfig)
* [PlaceShapeConfig](/vendor/kb_text_shape/#PlaceShapeConfig)

### [shape\_context ¶](#shape_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1764)

```
shape_context :: struct {}
```

##### Related Procedures With Parameters

* [DestroyShapeContext](/vendor/kb_text_shape/#DestroyShapeContext)
* [ShapeBegin](/vendor/kb_text_shape/#ShapeBegin)
* [ShapeBeginManualRuns](/vendor/kb_text_shape/#ShapeBeginManualRuns)
* [ShapeCodepoint](/vendor/kb_text_shape/#ShapeCodepoint)
* [ShapeCodepointWithUserId](/vendor/kb_text_shape/#ShapeCodepointWithUserId)
* [ShapeCurrentCodepointsIterator](/vendor/kb_text_shape/#ShapeCurrentCodepointsIterator)
* [ShapeEnd](/vendor/kb_text_shape/#ShapeEnd)
* [ShapeEndManualRuns](/vendor/kb_text_shape/#ShapeEndManualRuns)
* [ShapeError](/vendor/kb_text_shape/#ShapeError)
* [ShapeGetShapeCodepoint](/vendor/kb_text_shape/#ShapeGetShapeCodepoint)
* [ShapeManualBreak](/vendor/kb_text_shape/#ShapeManualBreak)
* [ShapeNextManualRun](/vendor/kb_text_shape/#ShapeNextManualRun)
* [ShapePopFeature](/vendor/kb_text_shape/#ShapePopFeature)
* [ShapePopFont](/vendor/kb_text_shape/#ShapePopFont)
* [ShapePushFeature](/vendor/kb_text_shape/#ShapePushFeature)
* [ShapePushFont](/vendor/kb_text_shape/#ShapePushFont)
* [ShapePushFontFromMemory](/vendor/kb_text_shape/#ShapePushFontFromMemory)
* [ShapeRun](/vendor/kb_text_shape/#ShapeRun)
* [ShapeUtf32](/vendor/kb_text_shape/#ShapeUtf32)
* [ShapeUtf32WithUserId](/vendor/kb_text_shape/#ShapeUtf32WithUserId)
* [ShapeUtf8](/vendor/kb_text_shape/#ShapeUtf8)
* [ShapeUtf8WithUserId](/vendor/kb_text_shape/#ShapeUtf8WithUserId)



##### Related Procedures With Returns

* [CreateShapeContext](/vendor/kb_text_shape/#CreateShapeContext)
* [PlaceShapeContext](/vendor/kb_text_shape/#PlaceShapeContext)
* [PlaceShapeContextFixedMemory](/vendor/kb_text_shape/#PlaceShapeContextFixedMemory)

### [shape\_error ¶](#shape_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L810)

```
shape_error :: enum u32 {
	NONE, 
	INVALID_FONT, 
	GAVE_TEXT_BEFORE_CALLING_BEGIN, 
	OUT_OF_MEMORY, 
}
```

##### Related Procedures With Returns

* [ShapeDirect](/vendor/kb_text_shape/#ShapeDirect)
* [ShapeDirectFixedMemory](/vendor/kb_text_shape/#ShapeDirectFixedMemory)
* [ShapeError](/vendor/kb_text_shape/#ShapeError)

### [shaper ¶](#shaper) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1144)

```
shaper :: enum u32 {
	DEFAULT, 
	ARABIC, 
	HANGUL, 
	HEBREW, 
	INDIC, 
	KHMER, 
	MYANMAR, 
	TIBETAN, 
	USE, 
}
```

 

Unicode defines scripts and languages.
A language belongs to a single script, and a script belongs to a single writing system.
On top of these, OpenType defines shapers, which are basically just designations for
specific code paths that are taken depending on which script is being shapen.

Some scripts, like Latin and Cyrillic, need relatively few operations, while complex
scripts like Arabic and Indic scripts have specific processing steps that need to happen
in order to obtain a correct result.

These sequences of operations are \_not\_ described in the font file itself. The shaping
code needs to know which script it is shaping, and implement all of those passes itself.
That is why you, as a user, have to care about this.

When creating shape\_config, you can either pass in a known script, or you can specify
SCRIPT\_DONT\_KNOW and let the library figure it out.
While SCRIPT\_DONT\_KNOW may look appealing, it is worth noting that we can only infer
the \_script\_, and not the language, of the text you pass in.
This means that you might miss out on language-specific features when you use it.

### [shaper\_properties ¶](#shaper_properties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1758)

```
shaper_properties :: struct {}
```

### [shaping\_table ¶](#shaping_table) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L805)

```
shaping_table :: enum u8 {
	GSUB, 
	GPOS, 
}
```

### [text\_format ¶](#text_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L787)

```
text_format :: enum u32 {
	NONE, 
	UTF32, 
	UTF8, 
}
```

##### Related Procedures With Parameters

* [BreakEntireString](/vendor/kb_text_shape/#BreakEntireString)
* [GuessTextProperties](/vendor/kb_text_shape/#GuessTextProperties)

### [un ¶](#un) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L9)

```
un :: distinct uint
```

### [unicode\_bidirectional\_class ¶](#unicode_bidirectional_class) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1007)

```
unicode_bidirectional_class :: enum u8 {
	NI, 
	BN,  // Formatting characters need to be ignored.
	L, 
	R, 
	NSM, 
	AL, 
	AN, 
	EN, 
	ES, 
	ET, 
	CS, 
}
```

### [unicode\_flag ¶](#unicode_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L988)

```
unicode_flag :: enum u8 {
	MODIFIER_COMBINING_MARK = 0, 
	DEFAULT_IGNORABLE       = 1, 
	OPEN_BRACKET            = 2, 
	CLOSE_BRACKET           = 3, 
	PART_OF_WORD            = 4, 
	DECIMAL_DIGIT           = 5, 
	NON_SPACING_MARK        = 6, 
}
```

### [unicode\_flags ¶](#unicode_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L987)

```
unicode_flags :: distinct bit_set[unicode_flag; u8]
```

##### Related Constants

* [UNICODE\_FLAG\_CLOSE\_BRACKET](/vendor/kb_text_shape/#UNICODE_FLAG_CLOSE_BRACKET)
* [UNICODE\_FLAG\_DECIMAL\_DIGIT](/vendor/kb_text_shape/#UNICODE_FLAG_DECIMAL_DIGIT)
* [UNICODE\_FLAG\_DEFAULT\_IGNORABLE](/vendor/kb_text_shape/#UNICODE_FLAG_DEFAULT_IGNORABLE)
* [UNICODE\_FLAG\_MIRRORED](/vendor/kb_text_shape/#UNICODE_FLAG_MIRRORED)
* [UNICODE\_FLAG\_MODIFIER\_COMBINING\_MARK](/vendor/kb_text_shape/#UNICODE_FLAG_MODIFIER_COMBINING_MARK)
* [UNICODE\_FLAG\_NON\_SPACING\_MARK](/vendor/kb_text_shape/#UNICODE_FLAG_NON_SPACING_MARK)
* [UNICODE\_FLAG\_OPEN\_BRACKET](/vendor/kb_text_shape/#UNICODE_FLAG_OPEN_BRACKET)
* [UNICODE\_FLAG\_PART\_OF\_WORD](/vendor/kb_text_shape/#UNICODE_FLAG_PART_OF_WORD)

### [unicode\_joining\_type ¶](#unicode_joining_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L978)

```
unicode_joining_type :: enum u8 {
	NONE, 
	LEFT, 
	DUAL, 
	FORCE, 
	RIGHT, 
	TRANSPARENT, 
}
```

### [user\_id\_generation\_mode ¶](#user_id_generation_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L951)

```
user_id_generation_mode :: enum u32 {
	CODEPOINT_INDEX, 
	SOURCE_INDEX, 
}
```

##### Related Procedures With Parameters

* [ShapeUtf8](/vendor/kb_text_shape/#ShapeUtf8)
* [ShapeUtf8WithUserId](/vendor/kb_text_shape/#ShapeUtf8WithUserId)

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L848)

```
version :: enum u32 {
	_1_X, 
	_2_0, 
	CURRENT = 1, 
}
```

### [word\_break\_class ¶](#word_break_class) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1100)

```
word_break_class :: enum u8 {
	Onep, 
	Oep, 
	CR, 
	LF, 
	NL, 
	EX, 
	ZWJ, 
	RI, 
	FO, 
	KA, 
	HL, 
	ALnep, 
	ALep, 
	SQ, 
	DQ, 
	MNL, 
	ML, 
	MN, 
	NM, 
	ENL, 
	WSS, 
	SOT, 
}
```

 

@Cleanup: Merge EX and FO.

## Constants

### [BREAK\_FLAG\_ANY ¶](#BREAK_FLAG_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L749)

```
BREAK_FLAG_ANY :: break_flags{.DIRECTION, .SCRIPT, .GRAPHEME, .WORD, .LINE_SOFT, .LINE_HARD}
```

### [BREAK\_FLAG\_DIRECTION ¶](#BREAK_FLAG_DIRECTION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L739)

```
BREAK_FLAG_DIRECTION :: break_flags{.DIRECTION}
```

### [BREAK\_FLAG\_GRAPHEME ¶](#BREAK_FLAG_GRAPHEME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L741)

```
BREAK_FLAG_GRAPHEME :: break_flags{.GRAPHEME}
```

### [BREAK\_FLAG\_LINE ¶](#BREAK_FLAG_LINE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L748)

```
BREAK_FLAG_LINE :: break_flags{.LINE_SOFT, .LINE_HARD}
```

### [BREAK\_FLAG\_LINE\_HARD ¶](#BREAK_FLAG_LINE_HARD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L744)

```
BREAK_FLAG_LINE_HARD :: break_flags{.LINE_HARD}
```

### [BREAK\_FLAG\_LINE\_SOFT ¶](#BREAK_FLAG_LINE_SOFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L743)

```
BREAK_FLAG_LINE_SOFT :: break_flags{.LINE_SOFT}
```

### [BREAK\_FLAG\_MANUAL ¶](#BREAK_FLAG_MANUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L745)

```
BREAK_FLAG_MANUAL :: break_flags{.MANUAL}
```

### [BREAK\_FLAG\_PARAGRAPH\_DIRECTION ¶](#BREAK_FLAG_PARAGRAPH_DIRECTION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L746)

```
BREAK_FLAG_PARAGRAPH_DIRECTION :: break_flags{.PARAGRAPH_DIRECTION}
```

### [BREAK\_FLAG\_SCRIPT ¶](#BREAK_FLAG_SCRIPT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L740)

```
BREAK_FLAG_SCRIPT :: break_flags{.SCRIPT}
```

### [BREAK\_FLAG\_WORD ¶](#BREAK_FLAG_WORD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L742)

```
BREAK_FLAG_WORD :: break_flags{.WORD}
```

### [MAXIMUM\_CODEPOINT\_SCRIPTS ¶](#MAXIMUM_CODEPOINT_SCRIPTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1157)

```
MAXIMUM_CODEPOINT_SCRIPTS :: 23
```

### [MAXIMUM\_RECOMPOSITION\_PARENTS ¶](#MAXIMUM_RECOMPOSITION_PARENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1156)

```
MAXIMUM_RECOMPOSITION_PARENTS :: 19
```

### [UNICODE\_FLAG\_CLOSE\_BRACKET ¶](#UNICODE_FLAG_CLOSE_BRACKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1001)

```
UNICODE_FLAG_CLOSE_BRACKET :: unicode_flags{.CLOSE_BRACKET}
```

### [UNICODE\_FLAG\_DECIMAL\_DIGIT ¶](#UNICODE_FLAG_DECIMAL_DIGIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1003)

```
UNICODE_FLAG_DECIMAL_DIGIT :: unicode_flags{.DECIMAL_DIGIT}
```

### [UNICODE\_FLAG\_DEFAULT\_IGNORABLE ¶](#UNICODE_FLAG_DEFAULT_IGNORABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L999)

```
UNICODE_FLAG_DEFAULT_IGNORABLE :: unicode_flags{.DEFAULT_IGNORABLE}
```

### [UNICODE\_FLAG\_MIRRORED ¶](#UNICODE_FLAG_MIRRORED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1005)

```
UNICODE_FLAG_MIRRORED :: unicode_flags{.OPEN_BRACKET, .CLOSE_BRACKET}
```

### [UNICODE\_FLAG\_MODIFIER\_COMBINING\_MARK ¶](#UNICODE_FLAG_MODIFIER_COMBINING_MARK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L998)

```
UNICODE_FLAG_MODIFIER_COMBINING_MARK :: unicode_flags{.MODIFIER_COMBINING_MARK}
```

### [UNICODE\_FLAG\_NON\_SPACING\_MARK ¶](#UNICODE_FLAG_NON_SPACING_MARK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1004)

```
UNICODE_FLAG_NON_SPACING_MARK :: unicode_flags{.NON_SPACING_MARK}
```

### [UNICODE\_FLAG\_OPEN\_BRACKET ¶](#UNICODE_FLAG_OPEN_BRACKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1000)

```
UNICODE_FLAG_OPEN_BRACKET :: unicode_flags{.OPEN_BRACKET}
```

### [UNICODE\_FLAG\_PART\_OF\_WORD ¶](#UNICODE_FLAG_PART_OF_WORD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin#L1002)

```
UNICODE_FLAG_PART_OF_WORD :: unicode_flags{.PART_OF_WORD}
```

## Variables

This section is empty.

## Procedures

### [ActiveGlyphIterator ¶](#ActiveGlyphIterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L142)

```
ActiveGlyphIterator :: proc "c" (Storage: ^glyph_storage) -> glyph_iterator ---
```

### [AllocatorFromOdinAllocator ¶](#AllocatorFromOdinAllocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L379)

```
AllocatorFromOdinAllocator :: proc "contextless" (allocator: ^runtime.Allocator) -> (Allocator: allocator_function, AllocatorData: rawptr) {…}
```

### [Break ¶](#Break) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L254)

```
Break :: proc "contextless" (State: ^break_state) -> (Break: break_type, Ok: b32) {…}
```

### [BreakAddCodepoint ¶](#BreakAddCodepoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L249)

```
BreakAddCodepoint :: proc "c" (State: ^break_state, Codepoint: rune, PositionIncrement: i32, EndOfText: b32) ---
```

### [BreakBegin ¶](#BreakBegin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L248)

```
BreakBegin :: proc "c" (State: ^break_state, ParagraphDirection: direction, JapaneseLineBreakStyle: japanese_line_break_style, ConfigFlags: break_config_flags) ---
```

### [BreakEnd ¶](#BreakEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L250)

```
BreakEnd :: proc "c" (State: ^break_state) ---
```

### [BreakEntireString ¶](#BreakEntireString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L264)

```
BreakEntireString :: proc "c" (
	Direction:              direction, 
	JapaneseLineBreakStyle: japanese_line_break_style, 
	ConfigFlags:            break_config_flags, 
	Input:                  []u8, 
	InputFormat:            text_format, 
	Breaks:                 []break_type, 
	BreakCount:             ^i32, 
	BreakFlags:             []break_flags, 
	BreakFlagCount:         ^i32, 
) {…}
```

### [BreakEntireStringUtf32 ¶](#BreakEntireStringUtf32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L278)

```
BreakEntireStringUtf32 :: proc "c" (
	Direction:              direction, 
	JapaneseLineBreakStyle: japanese_line_break_style, 
	ConfigFlags:            break_config_flags, 
	Utf32:                  []rune, 
	Breaks:                 []break_type, 
	BreakCount:             ^i32, 
	BreakFlags:             []break_flags, 
	BreakFlagCount:         ^i32, 
) {…}
```

### [BreakEntireStringUtf8 ¶](#BreakEntireStringUtf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L292)

```
BreakEntireStringUtf8 :: proc "c" (
	Direction:              direction, 
	JapaneseLineBreakStyle: japanese_line_break_style, 
	ConfigFlags:            break_config_flags, 
	Utf8:                   string, 
	Breaks:                 []break_type, 
	BreakCount:             ^i32, 
	BreakFlags:             []break_flags, 
	BreakFlagCount:         ^i32, 
) {…}
```

### [ClearActiveGlyphs ¶](#ClearActiveGlyphs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L138)

```
ClearActiveGlyphs :: proc "c" (Storage: ^glyph_storage) ---
```

### [CodepointToGlyph ¶](#CodepointToGlyph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L140)

```
CodepointToGlyph :: proc "c" (Font: ^font, Codepoint: rune, Config: ^glyph_config, UserId: i32) -> glyph ---
```

### [CodepointToGlyphId ¶](#CodepointToGlyphId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L141)

```
CodepointToGlyphId :: proc "c" (Font: ^font, Codepoint: rune) -> i32 ---
```

### [CreateGlyphConfig ¶](#CreateGlyphConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L219)

```
CreateGlyphConfig :: proc(Overrides: []feature_override, Allocator: allocator_function, AllocatorData: rawptr) -> ^glyph_config {…}
```

### [CreateShapeConfig ¶](#CreateShapeConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L131)

```
CreateShapeConfig :: proc "c" (Font: ^font, Script: script, Language: language, Allocator: allocator_function, AllocatorData: rawptr) -> ^shape_config ---
```

### [CreateShapeContext ¶](#CreateShapeContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L24)

```
CreateShapeContext :: proc "c" (Allocator: allocator_function, AllocatorData: rawptr) -> ^shape_context ---
```

### [DecodeUtf8 ¶](#DecodeUtf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L331)

```
DecodeUtf8 :: proc "c" (Utf8: string) -> decode {…}
```

### [DestroyGlyphConfig ¶](#DestroyGlyphConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L147)

```
DestroyGlyphConfig :: proc "c" (Config: ^glyph_config) ---
```

### [DestroyShapeConfig ¶](#DestroyShapeConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L132)

```
DestroyShapeConfig :: proc "c" (Config: ^shape_config) ---
```

### [DestroyShapeContext ¶](#DestroyShapeContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L25)

```
DestroyShapeContext :: proc "c" (Context: ^shape_context) ---
```

### [EncodeUtf8 ¶](#EncodeUtf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L321)

```
EncodeUtf8 :: proc "c" (Codepoint: rune) -> (Encoded: [4]u8, EncodedLength: i32, Valid: b32) {…}
```

### [FontCount ¶](#FontCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L161)

```
FontCount :: proc "c" (FileData: []u8) -> i32 {…}
```

### [FontCoverageTestBegin ¶](#FontCoverageTestBegin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L311)

```
FontCoverageTestBegin :: proc "c" (Test: ^font_coverage_test, Font: ^font) ---
```

 

Quick test for font support of a sequence of codepoints.

### [FontCoverageTestCodepoint ¶](#FontCoverageTestCodepoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L312)

```
FontCoverageTestCodepoint :: proc "c" (Test: ^font_coverage_test, Codepoint: rune) ---
```

### [FontCoverageTestEnd ¶](#FontCoverageTestEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L313)

```
FontCoverageTestEnd :: proc "c" (Test: ^font_coverage_test) -> b32 ---
```

### [FontFromMemory ¶](#FontFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L170)

```
FontFromMemory :: proc "c" (FileData: []u8, FontIndex: i32, Allocator: allocator_function, AllocatorData: rawptr) -> font {…}
```

### [FontIsValid ¶](#FontIsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L124)

```
FontIsValid :: proc "c" (Font: ^font) -> b32 ---
```

### [FreeAllGlyphs ¶](#FreeAllGlyphs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L139)

```
FreeAllGlyphs :: proc "c" (Storage: ^glyph_storage) ---
```

### [FreeFont ¶](#FreeFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L123)

```
FreeFont :: proc "c" (Font: ^font) ---
```

### [GetFontInfo ¶](#GetFontInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L126)

```
GetFontInfo :: proc "c" (Font: ^font, Info: ^font_info) ---
```

### [GlyphIteratorIsValid ¶](#GlyphIteratorIsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L229)

```
GlyphIteratorIsValid :: proc "c" (It: ^glyph_iterator) -> b32 ---
```

### [GlyphIteratorNext ¶](#GlyphIteratorNext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L233)

```
GlyphIteratorNext :: proc "contextless" (It: ^glyph_iterator) -> (Glyph: ^glyph, Ok: b32) {…}
```

### [GuessTextProperties ¶](#GuessTextProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L342)

```
GuessTextProperties :: proc "contextless" (Text: []u8, Format: text_format) -> (Direction: direction, Script: script) {…}
```

 

This is a quick guess that stops at the first glyph that has a strong script/direction associated to it.
It is convenient, but only works if you are sure your input text is mono-script and mono-direction.

### [GuessTextPropertiesUtf32 ¶](#GuessTextPropertiesUtf32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L354)

```
GuessTextPropertiesUtf32 :: proc "contextless" (Utf32: []rune) -> (Direction: direction, Script: script) {…}
```

 

This is a quick guess that stops at the first glyph that has a strong script/direction associated to it.
It is convenient, but only works if you are sure your input text is mono-script and mono-direction.

### [GuessTextPropertiesUtf8 ¶](#GuessTextPropertiesUtf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L366)

```
GuessTextPropertiesUtf8 :: proc "contextless" (Utf8: string) -> (Direction: direction, Script: script) {…}
```

 

This is a quick guess that stops at the first glyph that has a strong script/direction associated to it.
It is convenient, but only works if you are sure your input text is mono-script and mono-direction.\_results)

### [InitializeGlyphStorage ¶](#InitializeGlyphStorage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L135)

```
InitializeGlyphStorage :: proc "c" (Storage: ^glyph_storage, Allocator: allocator_function, AllocatorData: rawptr) -> b32 ---
```

 

A glyph\_storage holds and recycles glyph data.

### [InitializeGlyphStorageFixedMemory ¶](#InitializeGlyphStorageFixedMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L136)

```
InitializeGlyphStorageFixedMemory :: proc "c" (Storage: ^glyph_storage, Memory: rawptr, MemorySize: i32) -> b32 ---
```

### [LoadFont ¶](#LoadFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L151)

```
LoadFont :: proc "contextless" (Font: ^font, State: ^load_font_state, FontData: []u8, FontIndex: i32) -> (ScratchSize, OutputSize: i32, Err: load_font_error) {…}
```

### [PlaceBlob ¶](#PlaceBlob) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L125)

```
PlaceBlob :: proc "c" (Font: ^font, State: ^load_font_state, ScratchMemory: rawptr, OutputMemory: rawptr) -> load_font_error ---
```

### [PlaceGlyphConfig ¶](#PlaceGlyphConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L210)

```
PlaceGlyphConfig :: proc "c" (Overrides: []feature_override, Memory: rawptr) -> ^glyph_config {…}
```

### [PlaceShapeConfig ¶](#PlaceShapeConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L130)

```
PlaceShapeConfig :: proc "c" (Font: ^font, Script: script, Language: language, Memory: rawptr) -> ^shape_config ---
```

### [PlaceShapeContext ¶](#PlaceShapeContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L23)

```
PlaceShapeContext :: proc "c" (Allocator: allocator_function, AllocatorData: rawptr, Memory: rawptr) -> ^shape_context ---
```

### [PlaceShapeContextFixedMemory ¶](#PlaceShapeContextFixedMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L42)

```
PlaceShapeContextFixedMemory :: proc "c" (Memory: []u8) -> ^shape_context {…}
```

### [PushGlyph ¶](#PushGlyph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L137)

```
PushGlyph :: proc "c" (Storage: ^glyph_storage, Font: ^font, Codepoint: rune, Config: ^glyph_config, UserId: i32) -> ^glyph ---
```

### [ScriptDirection ¶](#ScriptDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L315)

```
ScriptDirection :: proc "c" (Script: script) -> direction ---
```

### [ScriptIsComplex ¶](#ScriptIsComplex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L316)

```
ScriptIsComplex :: proc "c" (Script: script) -> b32 ---
```

### [ScriptTagToScript ¶](#ScriptTagToScript) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L317)

```
ScriptTagToScript :: proc "c" (Tag: script_tag) -> script ---
```

### [ShapeBegin ¶](#ShapeBegin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L28)

```
ShapeBegin :: proc "c" (Context: ^shape_context, ParagraphDirection: direction, Language: language) ---
```

### [ShapeBeginManualRuns ¶](#ShapeBeginManualRuns) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L35)

```
ShapeBeginManualRuns :: proc "c" (Context: ^shape_context) ---
```

### [ShapeCodepoint ¶](#ShapeCodepoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L32)

```
ShapeCodepoint :: proc "c" (Context: ^shape_context, Codepoint: rune) ---
```

### [ShapeCodepointIteratorIsValid ¶](#ShapeCodepointIteratorIsValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L102)

```
ShapeCodepointIteratorIsValid :: proc "c" (It: ^shape_codepoint_iterator) -> b32 ---
```

### [ShapeCodepointIteratorNext ¶](#ShapeCodepointIteratorNext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L107)

```
ShapeCodepointIteratorNext :: proc "contextless" (It: ^shape_codepoint_iterator) -> (Codepoint: shape_codepoint, CodepointIndex: i32, Ok: b32) {…}
```

### [ShapeCodepointWithUserId ¶](#ShapeCodepointWithUserId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L33)

```
ShapeCodepointWithUserId :: proc "c" (Context: ^shape_context, Codepoint: rune, UserId: i32) ---
```

### [ShapeCurrentCodepointsIterator ¶](#ShapeCurrentCodepointsIterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L101)

```
ShapeCurrentCodepointsIterator :: proc "c" (Context: ^shape_context) -> shape_codepoint_iterator ---
```

### [ShapeDirect ¶](#ShapeDirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L180)

```
ShapeDirect :: proc "contextless" (Config: ^shape_config, Storage: ^glyph_storage, RunDirection: direction, Allocator: allocator_function, AllocatorData: rawptr) -> (Output: glyph_iterator, Err: shape_error) {…}
```

### [ShapeDirectFixedMemory ¶](#ShapeDirectFixedMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L190)

```
ShapeDirectFixedMemory :: proc "contextless" (Config: ^shape_config, Storage: ^glyph_storage, RunDirection: direction, Memory: rawptr, MemorySize: i32) -> (Output: glyph_iterator, Err: shape_error) {…}
```

### [ShapeEnd ¶](#ShapeEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L29)

```
ShapeEnd :: proc "c" (Context: ^shape_context) ---
```

### [ShapeEndManualRuns ¶](#ShapeEndManualRuns) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L37)

```
ShapeEndManualRuns :: proc "c" (Context: ^shape_context) ---
```

### [ShapeError ¶](#ShapeError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L34)

```
ShapeError :: proc "c" (Context: ^shape_context) -> shape_error ---
```

### [ShapeGetShapeCodepoint ¶](#ShapeGetShapeCodepoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L103)

```
ShapeGetShapeCodepoint :: proc "c" (Context: ^shape_context, CodepointIndex: i32, Codepoint: ^shape_codepoint) -> b32 ---
```

### [ShapeManualBreak ¶](#ShapeManualBreak) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L38)

```
ShapeManualBreak :: proc "c" (Context: ^shape_context) ---
```

### [ShapeNextManualRun ¶](#ShapeNextManualRun) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L36)

```
ShapeNextManualRun :: proc "c" (Context: ^shape_context, Direction: direction, Script: script) ---
```

### [ShapePopFeature ¶](#ShapePopFeature) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L31)

```
ShapePopFeature :: proc "c" (Context: ^shape_context, FeatureTag: feature_tag) -> b32 ---
```

### [ShapePopFont ¶](#ShapePopFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L27)

```
ShapePopFont :: proc "c" (Context: ^shape_context) -> ^font ---
```

### [ShapePushFeature ¶](#ShapePushFeature) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L30)

```
ShapePushFeature :: proc "c" (Context: ^shape_context, FeatureTag: feature_tag, Value: i32) ---
```

### [ShapePushFont ¶](#ShapePushFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L26)

```
ShapePushFont :: proc "c" (Context: ^shape_context, Font: ^font) -> ^font ---
```

### [ShapePushFontFromMemory ¶](#ShapePushFontFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L50)

```
ShapePushFontFromMemory :: proc "c" (Context: ^shape_context, Memory: []u8, FontIndex: i32) -> ^font {…}
```

### [ShapeRun ¶](#ShapeRun) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L59)

```
ShapeRun :: proc "contextless" (Context: ^shape_context) -> (Run: run, Ok: b32) {…}
```

### [ShapeUtf32 ¶](#ShapeUtf32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L68)

```
ShapeUtf32 :: proc "c" (Context: ^shape_context, Utf32: []rune) {…}
```

### [ShapeUtf32WithUserId ¶](#ShapeUtf32WithUserId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L75)

```
ShapeUtf32WithUserId :: proc "c" (Context: ^shape_context, Utf32: []rune, UserId: i32, UserIdIncrement: i32) {…}
```

### [ShapeUtf8 ¶](#ShapeUtf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L83)

```
ShapeUtf8 :: proc(Context: ^shape_context, Utf8: string, UserIdGenerationMode: user_id_generation_mode) {…}
```

### [ShapeUtf8WithUserId ¶](#ShapeUtf8WithUserId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L90)

```
ShapeUtf8WithUserId :: proc(Context: ^shape_context, Utf8: string, UserId: i32, UserIdGenerationMode: user_id_generation_mode) {…}
```

### [SizeOfGlyphConfig ¶](#SizeOfGlyphConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L201)

```
SizeOfGlyphConfig :: proc "c" (Overrides: []feature_override) -> i32 {…}
```

### [SizeOfShapeConfig ¶](#SizeOfShapeConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L129)

```
SizeOfShapeConfig :: proc "c" (Font: ^font, Script: script, Language: language) -> b32 ---
```

 

A shape\_config is a bag of pre-computed data for a specific shaping setup.

### [SizeOfShapeContext ¶](#SizeOfShapeContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L22)

```
SizeOfShapeContext :: proc "c" () -> i32 ---
```

### [kbts\_EncodeUtf8 ¶](#kbts_EncodeUtf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin#L327)

```
kbts_EncodeUtf8 :: proc "c" (Codepoint: rune) -> encode_utf8 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/doc.odin)
* [kb\_text\_shape\_procs.odin](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_procs.odin)
* [kb\_text\_shape\_types.odin](https://github.com/odin-lang/Odin/tree/master/vendor/kb_text_shape/kb_text_shape_types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.989997400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [allocator\_function](#allocator_function)
    + [allocator\_op](#allocator_op)
    + [allocator\_op\_allocate](#allocator_op_allocate)
    + [allocator\_op\_free](#allocator_op_free)
    + [allocator\_op\_kind](#allocator_op_kind)
    + [arena](#arena)
    + [arena\_block\_header](#arena_block_header)
    + [blob\_header](#blob_header)
    + [blob\_table](#blob_table)
    + [blob\_table\_id](#blob_table_id)
    + [blob\_version](#blob_version)
    + [bracket](#bracket)
    + [break\_config\_flag](#break_config_flag)
    + [break\_config\_flags](#break_config_flags)
    + [break\_flag](#break_flag)
    + [break\_flags](#break_flags)
    + [break\_state](#break_state)
    + [break\_state\_flag](#break_state_flag)
    + [break\_state\_flags](#break_state_flags)
    + [break\_type](#break_type)
    + [decode](#decode)
    + [direction](#direction)
    + [encode\_utf8](#encode_utf8)
    + [feature\_override](#feature_override)
    + [feature\_tag](#feature_tag)
    + [font](#font)
    + [font\_coverage\_test](#font_coverage_test)
    + [font\_info](#font_info)
    + [font\_info\_string\_id](#font_info_string_id)
    + [font\_style\_flag](#font_style_flag)
    + [font\_style\_flags](#font_style_flags)
    + [font\_weight](#font_weight)
    + [font\_width](#font_width)
    + [glyph](#glyph)
    + [glyph\_classes](#glyph_classes)
    + [glyph\_config](#glyph_config)
    + [glyph\_flag](#glyph_flag)
    + [glyph\_flags](#glyph_flags)
    + [glyph\_iterator](#glyph_iterator)
    + [glyph\_parent](#glyph_parent)
    + [glyph\_storage](#glyph_storage)
    + [japanese\_line\_break\_style](#japanese_line_break_style)
    + [joining\_feature](#joining_feature)
    + [language](#language)
    + [line\_break\_class](#line_break_class)
    + [load\_font\_error](#load_font_error)
    + [load\_font\_state](#load_font_state)
    + [lookup\_subtable\_info](#lookup_subtable_info)
    + [orientation](#orientation)
    + [run](#run)
    + [script](#script)
    + [script\_tag](#script_tag)
    + [shape\_codepoint](#shape_codepoint)
    + [shape\_codepoint\_iterator](#shape_codepoint_iterator)
    + [shape\_config](#shape_config)
    + [shape\_context](#shape_context)
    + [shape\_error](#shape_error)
    + [shaper](#shaper)
    + [shaper\_properties](#shaper_properties)
    + [shaping\_table](#shaping_table)
    + [text\_format](#text_format)
    + [un](#un)
    + [unicode\_bidirectional\_class](#unicode_bidirectional_class)
    + [unicode\_flag](#unicode_flag)
    + [unicode\_flags](#unicode_flags)
    + [unicode\_joining\_type](#unicode_joining_type)
    + [user\_id\_generation\_mode](#user_id_generation_mode)
    + [version](#version)
    + [word\_break\_class](#word_break_class)
  * [Constants](#pkg-Constants)
    + [BREAK\_FLAG\_ANY](#BREAK_FLAG_ANY)
    + [BREAK\_FLAG\_DIRECTION](#BREAK_FLAG_DIRECTION)
    + [BREAK\_FLAG\_GRAPHEME](#BREAK_FLAG_GRAPHEME)
    + [BREAK\_FLAG\_LINE](#BREAK_FLAG_LINE)
    + [BREAK\_FLAG\_LINE\_HARD](#BREAK_FLAG_LINE_HARD)
    + [BREAK\_FLAG\_LINE\_SOFT](#BREAK_FLAG_LINE_SOFT)
    + [BREAK\_FLAG\_MANUAL](#BREAK_FLAG_MANUAL)
    + [BREAK\_FLAG\_PARAGRAPH\_DIRECTION](#BREAK_FLAG_PARAGRAPH_DIRECTION)
    + [BREAK\_FLAG\_SCRIPT](#BREAK_FLAG_SCRIPT)
    + [BREAK\_FLAG\_WORD](#BREAK_FLAG_WORD)
    + [MAXIMUM\_CODEPOINT\_SCRIPTS](#MAXIMUM_CODEPOINT_SCRIPTS)
    + [MAXIMUM\_RECOMPOSITION\_PARENTS](#MAXIMUM_RECOMPOSITION_PARENTS)
    + [UNICODE\_FLAG\_CLOSE\_BRACKET](#UNICODE_FLAG_CLOSE_BRACKET)
    + [UNICODE\_FLAG\_DECIMAL\_DIGIT](#UNICODE_FLAG_DECIMAL_DIGIT)
    + [UNICODE\_FLAG\_DEFAULT\_IGNORABLE](#UNICODE_FLAG_DEFAULT_IGNORABLE)
    + [UNICODE\_FLAG\_MIRRORED](#UNICODE_FLAG_MIRRORED)
    + [UNICODE\_FLAG\_MODIFIER\_COMBINING\_MARK](#UNICODE_FLAG_MODIFIER_COMBINING_MARK)
    + [UNICODE\_FLAG\_NON\_SPACING\_MARK](#UNICODE_FLAG_NON_SPACING_MARK)
    + [UNICODE\_FLAG\_OPEN\_BRACKET](#UNICODE_FLAG_OPEN_BRACKET)
    + [UNICODE\_FLAG\_PART\_OF\_WORD](#UNICODE_FLAG_PART_OF_WORD)
  * [Procedures](#pkg-Procedures)
    + [ActiveGlyphIterator](#ActiveGlyphIterator)
    + [AllocatorFromOdinAllocator](#AllocatorFromOdinAllocator)
    + [Break](#Break)
    + [BreakAddCodepoint](#BreakAddCodepoint)
    + [BreakBegin](#BreakBegin)
    + [BreakEnd](#BreakEnd)
    + [BreakEntireString](#BreakEntireString)
    + [BreakEntireStringUtf32](#BreakEntireStringUtf32)
    + [BreakEntireStringUtf8](#BreakEntireStringUtf8)
    + [ClearActiveGlyphs](#ClearActiveGlyphs)
    + [CodepointToGlyph](#CodepointToGlyph)
    + [CodepointToGlyphId](#CodepointToGlyphId)
    + [CreateGlyphConfig](#CreateGlyphConfig)
    + [CreateShapeConfig](#CreateShapeConfig)
    + [CreateShapeContext](#CreateShapeContext)
    + [DecodeUtf8](#DecodeUtf8)
    + [DestroyGlyphConfig](#DestroyGlyphConfig)
    + [DestroyShapeConfig](#DestroyShapeConfig)
    + [DestroyShapeContext](#DestroyShapeContext)
    + [EncodeUtf8](#EncodeUtf8)
    + [FontCount](#FontCount)
    + [FontCoverageTestBegin](#FontCoverageTestBegin)
    + [FontCoverageTestCodepoint](#FontCoverageTestCodepoint)
    + [FontCoverageTestEnd](#FontCoverageTestEnd)
    + [FontFromMemory](#FontFromMemory)
    + [FontIsValid](#FontIsValid)
    + [FreeAllGlyphs](#FreeAllGlyphs)
    + [FreeFont](#FreeFont)
    + [GetFontInfo](#GetFontInfo)
    + [GlyphIteratorIsValid](#GlyphIteratorIsValid)
    + [GlyphIteratorNext](#GlyphIteratorNext)
    + [GuessTextProperties](#GuessTextProperties)
    + [GuessTextPropertiesUtf32](#GuessTextPropertiesUtf32)
    + [GuessTextPropertiesUtf8](#GuessTextPropertiesUtf8)
    + [InitializeGlyphStorage](#InitializeGlyphStorage)
    + [InitializeGlyphStorageFixedMemory](#InitializeGlyphStorageFixedMemory)
    + [LoadFont](#LoadFont)
    + [PlaceBlob](#PlaceBlob)
    + [PlaceGlyphConfig](#PlaceGlyphConfig)
    + [PlaceShapeConfig](#PlaceShapeConfig)
    + [PlaceShapeContext](#PlaceShapeContext)
    + [PlaceShapeContextFixedMemory](#PlaceShapeContextFixedMemory)
    + [PushGlyph](#PushGlyph)
    + [ScriptDirection](#ScriptDirection)
    + [ScriptIsComplex](#ScriptIsComplex)
    + [ScriptTagToScript](#ScriptTagToScript)
    + [ShapeBegin](#ShapeBegin)
    + [ShapeBeginManualRuns](#ShapeBeginManualRuns)
    + [ShapeCodepoint](#ShapeCodepoint)
    + [ShapeCodepointIteratorIsValid](#ShapeCodepointIteratorIsValid)
    + [ShapeCodepointIteratorNext](#ShapeCodepointIteratorNext)
    + [ShapeCodepointWithUserId](#ShapeCodepointWithUserId)
    + [ShapeCurrentCodepointsIterator](#ShapeCurrentCodepointsIterator)
    + [ShapeDirect](#ShapeDirect)
    + [ShapeDirectFixedMemory](#ShapeDirectFixedMemory)
    + [ShapeEnd](#ShapeEnd)
    + [ShapeEndManualRuns](#ShapeEndManualRuns)
    + [ShapeError](#ShapeError)
    + [ShapeGetShapeCodepoint](#ShapeGetShapeCodepoint)
    + [ShapeManualBreak](#ShapeManualBreak)
    + [ShapeNextManualRun](#ShapeNextManualRun)
    + [ShapePopFeature](#ShapePopFeature)
    + [ShapePopFont](#ShapePopFont)
    + [ShapePushFeature](#ShapePushFeature)
    + [ShapePushFont](#ShapePushFont)
    + [ShapePushFontFromMemory](#ShapePushFontFromMemory)
    + [ShapeRun](#ShapeRun)
    + [ShapeUtf32](#ShapeUtf32)
    + [ShapeUtf32WithUserId](#ShapeUtf32WithUserId)
    + [ShapeUtf8](#ShapeUtf8)
    + [ShapeUtf8WithUserId](#ShapeUtf8WithUserId)
    + [SizeOfGlyphConfig](#SizeOfGlyphConfig)
    + [SizeOfShapeConfig](#SizeOfShapeConfig)
    + [SizeOfShapeContext](#SizeOfShapeContext)
    + [kbts\_EncodeUtf8](#kbts_EncodeUtf8)
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