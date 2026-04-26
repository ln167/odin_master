package wasm/WebGL - pkg.odin-lang.org 






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



Current Package: *[webgl](/vendor/wasm/WebGL)*

  

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
2. wasm
3. [WebGL](/vendor/wasm/WebGL)

# package vendor:wasm/WebGL [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL)

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (15)

* [ActiveInfo](#ActiveInfo)
* [Buffer](#Buffer)
* [ContextAttribute](#ContextAttribute)
* [ContextAttributes](#ContextAttributes)
* [Enum](#Enum)
* [Framebuffer](#Framebuffer)
* [Program](#Program)
* [Query](#Query)
* [Renderbuffer](#Renderbuffer)
* [Sampler](#Sampler)
* [Shader](#Shader)
* [Sync](#Sync)
* [Texture](#Texture)
* [TransformFeedback](#TransformFeedback)
* [VertexArrayObject](#VertexArrayObject)

Constants (561)

* [ACTIVE\_ATTRIBUTES](#ACTIVE_ATTRIBUTES)
* [ACTIVE\_TEXTURE](#ACTIVE_TEXTURE)
* [ACTIVE\_UNIFORMS](#ACTIVE_UNIFORMS)
* [ACTIVE\_UNIFORM\_BLOCKS](#ACTIVE_UNIFORM_BLOCKS)
* [ALIASED\_LINE\_WIDTH\_RANGE](#ALIASED_LINE_WIDTH_RANGE)
* [ALIASED\_POINT\_SIZE\_RANGE](#ALIASED_POINT_SIZE_RANGE)
* [ALPHA](#ALPHA)
* [ALPHA\_BITS](#ALPHA_BITS)
* [ALREADY\_SIGNALED](#ALREADY_SIGNALED)
* [ALWAYS](#ALWAYS)
* [ANY\_SAMPLES\_PASSED](#ANY_SAMPLES_PASSED)
* [ANY\_SAMPLES\_PASSED\_CONSERVATIVE](#ANY_SAMPLES_PASSED_CONSERVATIVE)
* [ARRAY\_BUFFER](#ARRAY_BUFFER)
* [ARRAY\_BUFFER\_BINDING](#ARRAY_BUFFER_BINDING)
* [ATTACHED\_SHADERS](#ATTACHED_SHADERS)
* [BACK](#BACK)
* [BLEND](#BLEND)
* [BLEND\_COLOR](#BLEND_COLOR)
* [BLEND\_DST\_ALPHA](#BLEND_DST_ALPHA)
* [BLEND\_DST\_RGB](#BLEND_DST_RGB)
* [BLEND\_EQUATION](#BLEND_EQUATION)
* [BLEND\_EQUATION\_ALPHA](#BLEND_EQUATION_ALPHA)
* [BLEND\_EQUATION\_RGB](#BLEND_EQUATION_RGB)
* [BLEND\_SRC\_ALPHA](#BLEND_SRC_ALPHA)
* [BLEND\_SRC\_RGB](#BLEND_SRC_RGB)
* [BLUE\_BITS](#BLUE_BITS)
* [BOOL](#BOOL)
* [BOOL\_VEC2](#BOOL_VEC2)
* [BOOL\_VEC3](#BOOL_VEC3)
* [BOOL\_VEC4](#BOOL_VEC4)
* [BROWSER\_DEFAULT\_WEBGL](#BROWSER_DEFAULT_WEBGL)
* [BUFFER\_SIZE](#BUFFER_SIZE)
* [BUFFER\_USAGE](#BUFFER_USAGE)
* [BYTE](#BYTE)
* [CCW](#CCW)
* [CLAMP\_TO\_EDGE](#CLAMP_TO_EDGE)
* [COLOR](#COLOR)
* [COLOR\_ATTACHMENT0](#COLOR_ATTACHMENT0)
* [COLOR\_ATTACHMENT1](#COLOR_ATTACHMENT1)
* [COLOR\_ATTACHMENT10](#COLOR_ATTACHMENT10)
* [COLOR\_ATTACHMENT11](#COLOR_ATTACHMENT11)
* [COLOR\_ATTACHMENT12](#COLOR_ATTACHMENT12)
* [COLOR\_ATTACHMENT13](#COLOR_ATTACHMENT13)
* [COLOR\_ATTACHMENT14](#COLOR_ATTACHMENT14)
* [COLOR\_ATTACHMENT15](#COLOR_ATTACHMENT15)
* [COLOR\_ATTACHMENT2](#COLOR_ATTACHMENT2)
* [COLOR\_ATTACHMENT3](#COLOR_ATTACHMENT3)
* [COLOR\_ATTACHMENT4](#COLOR_ATTACHMENT4)
* [COLOR\_ATTACHMENT5](#COLOR_ATTACHMENT5)
* [COLOR\_ATTACHMENT6](#COLOR_ATTACHMENT6)
* [COLOR\_ATTACHMENT7](#COLOR_ATTACHMENT7)
* [COLOR\_ATTACHMENT8](#COLOR_ATTACHMENT8)
* [COLOR\_ATTACHMENT9](#COLOR_ATTACHMENT9)
* [COLOR\_BUFFER\_BIT](#COLOR_BUFFER_BIT)
* [COLOR\_CLEAR\_VALUE](#COLOR_CLEAR_VALUE)
* [COLOR\_WRITEMASK](#COLOR_WRITEMASK)
* [COMPARE\_REF\_TO\_TEXTURE](#COMPARE_REF_TO_TEXTURE)
* [COMPILE\_STATUS](#COMPILE_STATUS)
* [COMPRESSED\_TEXTURE\_FORMATS](#COMPRESSED_TEXTURE_FORMATS)
* [CONDITION\_SATISFIED](#CONDITION_SATISFIED)
* [CONSTANT\_ALPHA](#CONSTANT_ALPHA)
* [CONSTANT\_COLOR](#CONSTANT_COLOR)
* [CONTEXT\_LOST\_WEBGL](#CONTEXT_LOST_WEBGL)
* [COPY\_READ\_BUFFER](#COPY_READ_BUFFER)
* [COPY\_READ\_BUFFER\_BINDING](#COPY_READ_BUFFER_BINDING)
* [COPY\_WRITE\_BUFFER](#COPY_WRITE_BUFFER)
* [COPY\_WRITE\_BUFFER\_BINDING](#COPY_WRITE_BUFFER_BINDING)
* [CULL\_FACE](#CULL_FACE)
* [CULL\_FACE\_MODE](#CULL_FACE_MODE)
* [CURRENT\_PROGRAM](#CURRENT_PROGRAM)
* [CURRENT\_QUERY](#CURRENT_QUERY)
* [CURRENT\_VERTEX\_ATTRIB](#CURRENT_VERTEX_ATTRIB)
* [CW](#CW)
* [DECR](#DECR)
* [DECR\_WRAP](#DECR_WRAP)
* [DEFAULT\_CONTEXT\_ATTRIBUTES](#DEFAULT_CONTEXT_ATTRIBUTES)
* [DELETE\_STATUS](#DELETE_STATUS)
* [DEPTH](#DEPTH)
* [DEPTH24\_STENCIL8](#DEPTH24_STENCIL8)
* [DEPTH32F\_STENCIL8](#DEPTH32F_STENCIL8)
* [DEPTH\_ATTACHMENT](#DEPTH_ATTACHMENT)
* [DEPTH\_BITS](#DEPTH_BITS)
* [DEPTH\_BUFFER\_BIT](#DEPTH_BUFFER_BIT)
* [DEPTH\_CLEAR\_VALUE](#DEPTH_CLEAR_VALUE)
* [DEPTH\_COMPONENT](#DEPTH_COMPONENT)
* [DEPTH\_COMPONENT16](#DEPTH_COMPONENT16)
* [DEPTH\_COMPONENT24](#DEPTH_COMPONENT24)
* [DEPTH\_COMPONENT32F](#DEPTH_COMPONENT32F)
* [DEPTH\_FUNC](#DEPTH_FUNC)
* [DEPTH\_RANGE](#DEPTH_RANGE)
* [DEPTH\_STENCIL](#DEPTH_STENCIL)
* [DEPTH\_STENCIL\_ATTACHMENT](#DEPTH_STENCIL_ATTACHMENT)
* [DEPTH\_TEST](#DEPTH_TEST)
* [DEPTH\_WRITEMASK](#DEPTH_WRITEMASK)
* [DITHER](#DITHER)
* [DONT\_CARE](#DONT_CARE)
* [DRAW\_BUFFER0](#DRAW_BUFFER0)
* [DRAW\_BUFFER1](#DRAW_BUFFER1)
* [DRAW\_BUFFER10](#DRAW_BUFFER10)
* [DRAW\_BUFFER11](#DRAW_BUFFER11)
* [DRAW\_BUFFER12](#DRAW_BUFFER12)
* [DRAW\_BUFFER13](#DRAW_BUFFER13)
* [DRAW\_BUFFER14](#DRAW_BUFFER14)
* [DRAW\_BUFFER15](#DRAW_BUFFER15)
* [DRAW\_BUFFER2](#DRAW_BUFFER2)
* [DRAW\_BUFFER3](#DRAW_BUFFER3)
* [DRAW\_BUFFER4](#DRAW_BUFFER4)
* [DRAW\_BUFFER5](#DRAW_BUFFER5)
* [DRAW\_BUFFER6](#DRAW_BUFFER6)
* [DRAW\_BUFFER7](#DRAW_BUFFER7)
* [DRAW\_BUFFER8](#DRAW_BUFFER8)
* [DRAW\_BUFFER9](#DRAW_BUFFER9)
* [DRAW\_FRAMEBUFFER](#DRAW_FRAMEBUFFER)
* [DRAW\_FRAMEBUFFER\_BINDING](#DRAW_FRAMEBUFFER_BINDING)
* [DST\_ALPHA](#DST_ALPHA)
* [DST\_COLOR](#DST_COLOR)
* [DYNAMIC\_COPY](#DYNAMIC_COPY)
* [DYNAMIC\_DRAW](#DYNAMIC_DRAW)
* [DYNAMIC\_READ](#DYNAMIC_READ)
* [ELEMENT\_ARRAY\_BUFFER](#ELEMENT_ARRAY_BUFFER)
* [ELEMENT\_ARRAY\_BUFFER\_BINDING](#ELEMENT_ARRAY_BUFFER_BINDING)
* [EQUAL](#EQUAL)
* [FASTEST](#FASTEST)
* [FLOAT](#FLOAT)
* [FLOAT\_32\_UNSIGNED\_INT\_24\_8\_REV](#FLOAT_32_UNSIGNED_INT_24_8_REV)
* [FLOAT\_MAT2](#FLOAT_MAT2)
* [FLOAT\_MAT2x3](#FLOAT_MAT2x3)
* [FLOAT\_MAT2x4](#FLOAT_MAT2x4)
* [FLOAT\_MAT3](#FLOAT_MAT3)
* [FLOAT\_MAT3x2](#FLOAT_MAT3x2)
* [FLOAT\_MAT3x4](#FLOAT_MAT3x4)
* [FLOAT\_MAT4](#FLOAT_MAT4)
* [FLOAT\_MAT4x2](#FLOAT_MAT4x2)
* [FLOAT\_MAT4x3](#FLOAT_MAT4x3)
* [FLOAT\_VEC2](#FLOAT_VEC2)
* [FLOAT\_VEC3](#FLOAT_VEC3)
* [FLOAT\_VEC4](#FLOAT_VEC4)
* [FRAGMENT\_SHADER](#FRAGMENT_SHADER)
* [FRAGMENT\_SHADER\_DERIVATIVE\_HINT](#FRAGMENT_SHADER_DERIVATIVE_HINT)
* [FRAMEBUFFER](#FRAMEBUFFER)
* [FRAMEBUFFER\_ATTACHMENT\_ALPHA\_SIZE](#FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_BLUE\_SIZE](#FRAMEBUFFER_ATTACHMENT_BLUE_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_COLOR\_ENCODING](#FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING)
* [FRAMEBUFFER\_ATTACHMENT\_COMPONENT\_TYPE](#FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE)
* [FRAMEBUFFER\_ATTACHMENT\_DEPTH\_SIZE](#FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_GREEN\_SIZE](#FRAMEBUFFER_ATTACHMENT_GREEN_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_NAME](#FRAMEBUFFER_ATTACHMENT_OBJECT_NAME)
* [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_TYPE](#FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE)
* [FRAMEBUFFER\_ATTACHMENT\_RED\_SIZE](#FRAMEBUFFER_ATTACHMENT_RED_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_STENCIL\_SIZE](#FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_CUBE\_MAP\_FACE](#FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE)
* [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LAYER](#FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER)
* [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LEVEL](#FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL)
* [FRAMEBUFFER\_BINDING](#FRAMEBUFFER_BINDING)
* [FRAMEBUFFER\_COMPLETE](#FRAMEBUFFER_COMPLETE)
* [FRAMEBUFFER\_DEFAULT](#FRAMEBUFFER_DEFAULT)
* [FRAMEBUFFER\_INCOMPLETE\_ATTACHMENT](#FRAMEBUFFER_INCOMPLETE_ATTACHMENT)
* [FRAMEBUFFER\_INCOMPLETE\_DIMENSIONS](#FRAMEBUFFER_INCOMPLETE_DIMENSIONS)
* [FRAMEBUFFER\_INCOMPLETE\_MISSING\_ATTACHMENT](#FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT)
* [FRAMEBUFFER\_INCOMPLETE\_MULTISAMPLE](#FRAMEBUFFER_INCOMPLETE_MULTISAMPLE)
* [FRAMEBUFFER\_UNSUPPORTED](#FRAMEBUFFER_UNSUPPORTED)
* [FRONT](#FRONT)
* [FRONT\_AND\_BACK](#FRONT_AND_BACK)
* [FRONT\_FACE](#FRONT_FACE)
* [FUNC\_ADD](#FUNC_ADD)
* [FUNC\_REVERSE\_SUBTRACT](#FUNC_REVERSE_SUBTRACT)
* [FUNC\_SUBTRACT](#FUNC_SUBTRACT)
* [GENERATE\_MIPMAP\_HINT](#GENERATE_MIPMAP_HINT)
* [GEQUAL](#GEQUAL)
* [GREATER](#GREATER)
* [GREEN\_BITS](#GREEN_BITS)
* [HALF\_FLOAT](#HALF_FLOAT)
* [HIGH\_FLOAT](#HIGH_FLOAT)
* [HIGH\_INT](#HIGH_INT)
* [IMPLEMENTATION\_COLOR\_READ\_FORMAT](#IMPLEMENTATION_COLOR_READ_FORMAT)
* [IMPLEMENTATION\_COLOR\_READ\_TYPE](#IMPLEMENTATION_COLOR_READ_TYPE)
* [INCR](#INCR)
* [INCR\_WRAP](#INCR_WRAP)
* [INT](#INT)
* [INTERLEAVED\_ATTRIBS](#INTERLEAVED_ATTRIBS)
* [INT\_2\_10\_10\_10\_REV](#INT_2_10_10_10_REV)
* [INT\_SAMPLER\_2D](#INT_SAMPLER_2D)
* [INT\_SAMPLER\_2D\_ARRAY](#INT_SAMPLER_2D_ARRAY)
* [INT\_SAMPLER\_3D](#INT_SAMPLER_3D)
* [INT\_SAMPLER\_CUBE](#INT_SAMPLER_CUBE)
* [INT\_VEC2](#INT_VEC2)
* [INT\_VEC3](#INT_VEC3)
* [INT\_VEC4](#INT_VEC4)
* [INVALID\_ENUM](#INVALID_ENUM)
* [INVALID\_FRAMEBUFFER\_OPERATION](#INVALID_FRAMEBUFFER_OPERATION)
* [INVALID\_INDEX](#INVALID_INDEX)
* [INVALID\_OPERATION](#INVALID_OPERATION)
* [INVALID\_VALUE](#INVALID_VALUE)
* [INVERT](#INVERT)
* [KEEP](#KEEP)
* [LEQUAL](#LEQUAL)
* [LESS](#LESS)
* [LINEAR](#LINEAR)
* [LINEAR\_MIPMAP\_LINEAR](#LINEAR_MIPMAP_LINEAR)
* [LINEAR\_MIPMAP\_NEAREST](#LINEAR_MIPMAP_NEAREST)
* [LINES](#LINES)
* [LINE\_LOOP](#LINE_LOOP)
* [LINE\_STRIP](#LINE_STRIP)
* [LINE\_WIDTH](#LINE_WIDTH)
* [LINK\_STATUS](#LINK_STATUS)
* [LOW\_FLOAT](#LOW_FLOAT)
* [LOW\_INT](#LOW_INT)
* [LUMINANCE](#LUMINANCE)
* [LUMINANCE\_ALPHA](#LUMINANCE_ALPHA)
* [MAX](#MAX)
* [MAX\_3D\_TEXTURE\_SIZE](#MAX_3D_TEXTURE_SIZE)
* [MAX\_ARRAY\_TEXTURE\_LAYERS](#MAX_ARRAY_TEXTURE_LAYERS)
* [MAX\_CLIENT\_WAIT\_TIMEOUT\_WEBGL](#MAX_CLIENT_WAIT_TIMEOUT_WEBGL)
* [MAX\_COLOR\_ATTACHMENTS](#MAX_COLOR_ATTACHMENTS)
* [MAX\_COMBINED\_FRAGMENT\_UNIFORM\_COMPONENTS](#MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS)
* [MAX\_COMBINED\_TEXTURE\_IMAGE\_UNITS](#MAX_COMBINED_TEXTURE_IMAGE_UNITS)
* [MAX\_COMBINED\_UNIFORM\_BLOCKS](#MAX_COMBINED_UNIFORM_BLOCKS)
* [MAX\_COMBINED\_VERTEX\_UNIFORM\_COMPONENTS](#MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS)
* [MAX\_CUBE\_MAP\_TEXTURE\_SIZE](#MAX_CUBE_MAP_TEXTURE_SIZE)
* [MAX\_DRAW\_BUFFERS](#MAX_DRAW_BUFFERS)
* [MAX\_ELEMENTS\_INDICES](#MAX_ELEMENTS_INDICES)
* [MAX\_ELEMENTS\_VERTICES](#MAX_ELEMENTS_VERTICES)
* [MAX\_ELEMENT\_INDEX](#MAX_ELEMENT_INDEX)
* [MAX\_FRAGMENT\_INPUT\_COMPONENTS](#MAX_FRAGMENT_INPUT_COMPONENTS)
* [MAX\_FRAGMENT\_UNIFORM\_BLOCKS](#MAX_FRAGMENT_UNIFORM_BLOCKS)
* [MAX\_FRAGMENT\_UNIFORM\_COMPONENTS](#MAX_FRAGMENT_UNIFORM_COMPONENTS)
* [MAX\_FRAGMENT\_UNIFORM\_VECTORS](#MAX_FRAGMENT_UNIFORM_VECTORS)
* [MAX\_PROGRAM\_TEXEL\_OFFSET](#MAX_PROGRAM_TEXEL_OFFSET)
* [MAX\_RENDERBUFFER\_SIZE](#MAX_RENDERBUFFER_SIZE)
* [MAX\_SAMPLES](#MAX_SAMPLES)
* [MAX\_SERVER\_WAIT\_TIMEOUT](#MAX_SERVER_WAIT_TIMEOUT)
* [MAX\_TEXTURE\_IMAGE\_UNITS](#MAX_TEXTURE_IMAGE_UNITS)
* [MAX\_TEXTURE\_LOD\_BIAS](#MAX_TEXTURE_LOD_BIAS)
* [MAX\_TEXTURE\_SIZE](#MAX_TEXTURE_SIZE)
* [MAX\_TRANSFORM\_FEEDBACK\_INTERLEAVED\_COMPONENTS](#MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS)
* [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_ATTRIBS](#MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS)
* [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_COMPONENTS](#MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS)
* [MAX\_UNIFORM\_BLOCK\_SIZE](#MAX_UNIFORM_BLOCK_SIZE)
* [MAX\_UNIFORM\_BUFFER\_BINDINGS](#MAX_UNIFORM_BUFFER_BINDINGS)
* [MAX\_VARYING\_COMPONENTS](#MAX_VARYING_COMPONENTS)
* [MAX\_VARYING\_VECTORS](#MAX_VARYING_VECTORS)
* [MAX\_VERTEX\_ATTRIBS](#MAX_VERTEX_ATTRIBS)
* [MAX\_VERTEX\_OUTPUT\_COMPONENTS](#MAX_VERTEX_OUTPUT_COMPONENTS)
* [MAX\_VERTEX\_TEXTURE\_IMAGE\_UNITS](#MAX_VERTEX_TEXTURE_IMAGE_UNITS)
* [MAX\_VERTEX\_UNIFORM\_BLOCKS](#MAX_VERTEX_UNIFORM_BLOCKS)
* [MAX\_VERTEX\_UNIFORM\_COMPONENTS](#MAX_VERTEX_UNIFORM_COMPONENTS)
* [MAX\_VERTEX\_UNIFORM\_VECTORS](#MAX_VERTEX_UNIFORM_VECTORS)
* [MAX\_VIEWPORT\_DIMS](#MAX_VIEWPORT_DIMS)
* [MEDIUM\_FLOAT](#MEDIUM_FLOAT)
* [MEDIUM\_INT](#MEDIUM_INT)
* [MIN](#MIN)
* [MIN\_PROGRAM\_TEXEL\_OFFSET](#MIN_PROGRAM_TEXEL_OFFSET)
* [MIRRORED\_REPEAT](#MIRRORED_REPEAT)
* [NEAREST](#NEAREST)
* [NEAREST\_MIPMAP\_LINEAR](#NEAREST_MIPMAP_LINEAR)
* [NEAREST\_MIPMAP\_NEAREST](#NEAREST_MIPMAP_NEAREST)
* [NEVER](#NEVER)
* [NICEST](#NICEST)
* [NONE](#NONE)
* [NOTEQUAL](#NOTEQUAL)
* [NO\_ERROR](#NO_ERROR)
* [OBJECT\_TYPE](#OBJECT_TYPE)
* [ONE](#ONE)
* [ONE\_MINUS\_CONSTANT\_ALPHA](#ONE_MINUS_CONSTANT_ALPHA)
* [ONE\_MINUS\_CONSTANT\_COLOR](#ONE_MINUS_CONSTANT_COLOR)
* [ONE\_MINUS\_DST\_ALPHA](#ONE_MINUS_DST_ALPHA)
* [ONE\_MINUS\_DST\_COLOR](#ONE_MINUS_DST_COLOR)
* [ONE\_MINUS\_SRC\_ALPHA](#ONE_MINUS_SRC_ALPHA)
* [ONE\_MINUS\_SRC\_COLOR](#ONE_MINUS_SRC_COLOR)
* [OUT\_OF\_MEMORY](#OUT_OF_MEMORY)
* [PACK\_ALIGNMENT](#PACK_ALIGNMENT)
* [PACK\_ROW\_LENGTH](#PACK_ROW_LENGTH)
* [PACK\_SKIP\_PIXELS](#PACK_SKIP_PIXELS)
* [PACK\_SKIP\_ROWS](#PACK_SKIP_ROWS)
* [PIXEL\_PACK\_BUFFER](#PIXEL_PACK_BUFFER)
* [PIXEL\_PACK\_BUFFER\_BINDING](#PIXEL_PACK_BUFFER_BINDING)
* [PIXEL\_UNPACK\_BUFFER](#PIXEL_UNPACK_BUFFER)
* [PIXEL\_UNPACK\_BUFFER\_BINDING](#PIXEL_UNPACK_BUFFER_BINDING)
* [POINTS](#POINTS)
* [POLYGON\_OFFSET\_FACTOR](#POLYGON_OFFSET_FACTOR)
* [POLYGON\_OFFSET\_FILL](#POLYGON_OFFSET_FILL)
* [POLYGON\_OFFSET\_UNITS](#POLYGON_OFFSET_UNITS)
* [QUERY\_RESULT](#QUERY_RESULT)
* [QUERY\_RESULT\_AVAILABLE](#QUERY_RESULT_AVAILABLE)
* [R11F\_G11F\_B10F](#R11F_G11F_B10F)
* [R16F](#R16F)
* [R16I](#R16I)
* [R16UI](#R16UI)
* [R32F](#R32F)
* [R32I](#R32I)
* [R32UI](#R32UI)
* [R8](#R8)
* [R8I](#R8I)
* [R8UI](#R8UI)
* [R8\_SNORM](#R8_SNORM)
* [RASTERIZER\_DISCARD](#RASTERIZER_DISCARD)
* [READ\_BUFFER](#READ_BUFFER)
* [READ\_FRAMEBUFFER](#READ_FRAMEBUFFER)
* [READ\_FRAMEBUFFER\_BINDING](#READ_FRAMEBUFFER_BINDING)
* [RED](#RED)
* [RED\_BITS](#RED_BITS)
* [RED\_INTEGER](#RED_INTEGER)
* [RENDERBUFFER](#RENDERBUFFER)
* [RENDERBUFFER\_ALPHA\_SIZE](#RENDERBUFFER_ALPHA_SIZE)
* [RENDERBUFFER\_BINDING](#RENDERBUFFER_BINDING)
* [RENDERBUFFER\_BLUE\_SIZE](#RENDERBUFFER_BLUE_SIZE)
* [RENDERBUFFER\_DEPTH\_SIZE](#RENDERBUFFER_DEPTH_SIZE)
* [RENDERBUFFER\_GREEN\_SIZE](#RENDERBUFFER_GREEN_SIZE)
* [RENDERBUFFER\_HEIGHT](#RENDERBUFFER_HEIGHT)
* [RENDERBUFFER\_INTERNAL\_FORMAT](#RENDERBUFFER_INTERNAL_FORMAT)
* [RENDERBUFFER\_RED\_SIZE](#RENDERBUFFER_RED_SIZE)
* [RENDERBUFFER\_SAMPLES](#RENDERBUFFER_SAMPLES)
* [RENDERBUFFER\_STENCIL\_SIZE](#RENDERBUFFER_STENCIL_SIZE)
* [RENDERBUFFER\_WIDTH](#RENDERBUFFER_WIDTH)
* [RENDERER](#RENDERER)
* [REPEAT](#REPEAT)
* [REPLACE](#REPLACE)
* [RG](#RG)
* [RG16F](#RG16F)
* [RG16I](#RG16I)
* [RG16UI](#RG16UI)
* [RG32F](#RG32F)
* [RG32I](#RG32I)
* [RG32UI](#RG32UI)
* [RG8](#RG8)
* [RG8I](#RG8I)
* [RG8UI](#RG8UI)
* [RG8\_SNORM](#RG8_SNORM)
* [RGB](#RGB)
* [RGB10\_A2](#RGB10_A2)
* [RGB10\_A2UI](#RGB10_A2UI)
* [RGB16F](#RGB16F)
* [RGB16I](#RGB16I)
* [RGB16UI](#RGB16UI)
* [RGB32F](#RGB32F)
* [RGB32I](#RGB32I)
* [RGB32UI](#RGB32UI)
* [RGB565](#RGB565)
* [RGB5\_A1](#RGB5_A1)
* [RGB8](#RGB8)
* [RGB8I](#RGB8I)
* [RGB8UI](#RGB8UI)
* [RGB8\_SNORM](#RGB8_SNORM)
* [RGB9\_E5](#RGB9_E5)
* [RGBA](#RGBA)
* [RGBA16F](#RGBA16F)
* [RGBA16I](#RGBA16I)
* [RGBA16UI](#RGBA16UI)
* [RGBA32F](#RGBA32F)
* [RGBA32I](#RGBA32I)
* [RGBA32UI](#RGBA32UI)
* [RGBA4](#RGBA4)
* [RGBA8](#RGBA8)
* [RGBA8I](#RGBA8I)
* [RGBA8UI](#RGBA8UI)
* [RGBA8\_SNORM](#RGBA8_SNORM)
* [RGBA\_INTEGER](#RGBA_INTEGER)
* [RGB\_INTEGER](#RGB_INTEGER)
* [RG\_INTEGER](#RG_INTEGER)
* [SAMPLER\_2D](#SAMPLER_2D)
* [SAMPLER\_2D\_ARRAY](#SAMPLER_2D_ARRAY)
* [SAMPLER\_2D\_ARRAY\_SHADOW](#SAMPLER_2D_ARRAY_SHADOW)
* [SAMPLER\_2D\_SHADOW](#SAMPLER_2D_SHADOW)
* [SAMPLER\_3D](#SAMPLER_3D)
* [SAMPLER\_BINDING](#SAMPLER_BINDING)
* [SAMPLER\_CUBE](#SAMPLER_CUBE)
* [SAMPLER\_CUBE\_SHADOW](#SAMPLER_CUBE_SHADOW)
* [SAMPLES](#SAMPLES)
* [SAMPLE\_ALPHA\_TO\_COVERAGE](#SAMPLE_ALPHA_TO_COVERAGE)
* [SAMPLE\_BUFFERS](#SAMPLE_BUFFERS)
* [SAMPLE\_COVERAGE](#SAMPLE_COVERAGE)
* [SAMPLE\_COVERAGE\_INVERT](#SAMPLE_COVERAGE_INVERT)
* [SAMPLE\_COVERAGE\_VALUE](#SAMPLE_COVERAGE_VALUE)
* [SCISSOR\_BOX](#SCISSOR_BOX)
* [SCISSOR\_TEST](#SCISSOR_TEST)
* [SEPARATE\_ATTRIBS](#SEPARATE_ATTRIBS)
* [SHADER\_TYPE](#SHADER_TYPE)
* [SHADING\_LANGUAGE\_VERSION](#SHADING_LANGUAGE_VERSION)
* [SHORT](#SHORT)
* [SIGNALED](#SIGNALED)
* [SIGNED\_NORMALIZED](#SIGNED_NORMALIZED)
* [SRC\_ALPHA](#SRC_ALPHA)
* [SRC\_ALPHA\_SATURATE](#SRC_ALPHA_SATURATE)
* [SRC\_COLOR](#SRC_COLOR)
* [SRGB](#SRGB)
* [SRGB8](#SRGB8)
* [SRGB8\_ALPHA8](#SRGB8_ALPHA8)
* [STATIC\_COPY](#STATIC_COPY)
* [STATIC\_DRAW](#STATIC_DRAW)
* [STATIC\_READ](#STATIC_READ)
* [STENCIL](#STENCIL)
* [STENCIL\_ATTACHMENT](#STENCIL_ATTACHMENT)
* [STENCIL\_BACK\_FAIL](#STENCIL_BACK_FAIL)
* [STENCIL\_BACK\_FUNC](#STENCIL_BACK_FUNC)
* [STENCIL\_BACK\_PASS\_DEPTH\_FAIL](#STENCIL_BACK_PASS_DEPTH_FAIL)
* [STENCIL\_BACK\_PASS\_DEPTH\_PASS](#STENCIL_BACK_PASS_DEPTH_PASS)
* [STENCIL\_BACK\_REF](#STENCIL_BACK_REF)
* [STENCIL\_BACK\_VALUE\_MASK](#STENCIL_BACK_VALUE_MASK)
* [STENCIL\_BACK\_WRITEMASK](#STENCIL_BACK_WRITEMASK)
* [STENCIL\_BITS](#STENCIL_BITS)
* [STENCIL\_BUFFER\_BIT](#STENCIL_BUFFER_BIT)
* [STENCIL\_CLEAR\_VALUE](#STENCIL_CLEAR_VALUE)
* [STENCIL\_FAIL](#STENCIL_FAIL)
* [STENCIL\_FUNC](#STENCIL_FUNC)
* [STENCIL\_INDEX](#STENCIL_INDEX)
* [STENCIL\_INDEX8](#STENCIL_INDEX8)
* [STENCIL\_PASS\_DEPTH\_FAIL](#STENCIL_PASS_DEPTH_FAIL)
* [STENCIL\_PASS\_DEPTH\_PASS](#STENCIL_PASS_DEPTH_PASS)
* [STENCIL\_REF](#STENCIL_REF)
* [STENCIL\_TEST](#STENCIL_TEST)
* [STENCIL\_VALUE\_MASK](#STENCIL_VALUE_MASK)
* [STENCIL\_WRITEMASK](#STENCIL_WRITEMASK)
* [STREAM\_COPY](#STREAM_COPY)
* [STREAM\_DRAW](#STREAM_DRAW)
* [STREAM\_READ](#STREAM_READ)
* [SUBPIXEL\_BITS](#SUBPIXEL_BITS)
* [SYNC\_CONDITION](#SYNC_CONDITION)
* [SYNC\_FENCE](#SYNC_FENCE)
* [SYNC\_FLAGS](#SYNC_FLAGS)
* [SYNC\_FLUSH\_COMMANDS\_BIT](#SYNC_FLUSH_COMMANDS_BIT)
* [SYNC\_GPU\_COMMANDS\_COMPLETE](#SYNC_GPU_COMMANDS_COMPLETE)
* [SYNC\_STATUS](#SYNC_STATUS)
* [TEXTURE](#TEXTURE)
* [TEXTURE0](#TEXTURE0)
* [TEXTURE1](#TEXTURE1)
* [TEXTURE10](#TEXTURE10)
* [TEXTURE11](#TEXTURE11)
* [TEXTURE12](#TEXTURE12)
* [TEXTURE13](#TEXTURE13)
* [TEXTURE14](#TEXTURE14)
* [TEXTURE15](#TEXTURE15)
* [TEXTURE16](#TEXTURE16)
* [TEXTURE17](#TEXTURE17)
* [TEXTURE18](#TEXTURE18)
* [TEXTURE19](#TEXTURE19)
* [TEXTURE2](#TEXTURE2)
* [TEXTURE20](#TEXTURE20)
* [TEXTURE21](#TEXTURE21)
* [TEXTURE22](#TEXTURE22)
* [TEXTURE23](#TEXTURE23)
* [TEXTURE24](#TEXTURE24)
* [TEXTURE25](#TEXTURE25)
* [TEXTURE26](#TEXTURE26)
* [TEXTURE27](#TEXTURE27)
* [TEXTURE28](#TEXTURE28)
* [TEXTURE29](#TEXTURE29)
* [TEXTURE3](#TEXTURE3)
* [TEXTURE30](#TEXTURE30)
* [TEXTURE31](#TEXTURE31)
* [TEXTURE4](#TEXTURE4)
* [TEXTURE5](#TEXTURE5)
* [TEXTURE6](#TEXTURE6)
* [TEXTURE7](#TEXTURE7)
* [TEXTURE8](#TEXTURE8)
* [TEXTURE9](#TEXTURE9)
* [TEXTURE\_2D](#TEXTURE_2D)
* [TEXTURE\_2D\_ARRAY](#TEXTURE_2D_ARRAY)
* [TEXTURE\_3D](#TEXTURE_3D)
* [TEXTURE\_BASE\_LEVEL](#TEXTURE_BASE_LEVEL)
* [TEXTURE\_BINDING\_2D](#TEXTURE_BINDING_2D)
* [TEXTURE\_BINDING\_2D\_ARRAY](#TEXTURE_BINDING_2D_ARRAY)
* [TEXTURE\_BINDING\_3D](#TEXTURE_BINDING_3D)
* [TEXTURE\_BINDING\_CUBE\_MAP](#TEXTURE_BINDING_CUBE_MAP)
* [TEXTURE\_COMPARE\_FUNC](#TEXTURE_COMPARE_FUNC)
* [TEXTURE\_COMPARE\_MODE](#TEXTURE_COMPARE_MODE)
* [TEXTURE\_CUBE\_MAP](#TEXTURE_CUBE_MAP)
* [TEXTURE\_CUBE\_MAP\_NEGATIVE\_X](#TEXTURE_CUBE_MAP_NEGATIVE_X)
* [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Y](#TEXTURE_CUBE_MAP_NEGATIVE_Y)
* [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Z](#TEXTURE_CUBE_MAP_NEGATIVE_Z)
* [TEXTURE\_CUBE\_MAP\_POSITIVE\_X](#TEXTURE_CUBE_MAP_POSITIVE_X)
* [TEXTURE\_CUBE\_MAP\_POSITIVE\_Y](#TEXTURE_CUBE_MAP_POSITIVE_Y)
* [TEXTURE\_CUBE\_MAP\_POSITIVE\_Z](#TEXTURE_CUBE_MAP_POSITIVE_Z)
* [TEXTURE\_IMMUTABLE\_FORMAT](#TEXTURE_IMMUTABLE_FORMAT)
* [TEXTURE\_IMMUTABLE\_LEVELS](#TEXTURE_IMMUTABLE_LEVELS)
* [TEXTURE\_MAG\_FILTER](#TEXTURE_MAG_FILTER)
* [TEXTURE\_MAX\_LEVEL](#TEXTURE_MAX_LEVEL)
* [TEXTURE\_MAX\_LOD](#TEXTURE_MAX_LOD)
* [TEXTURE\_MIN\_FILTER](#TEXTURE_MIN_FILTER)
* [TEXTURE\_MIN\_LOD](#TEXTURE_MIN_LOD)
* [TEXTURE\_WRAP\_R](#TEXTURE_WRAP_R)
* [TEXTURE\_WRAP\_S](#TEXTURE_WRAP_S)
* [TEXTURE\_WRAP\_T](#TEXTURE_WRAP_T)
* [TIMEOUT\_EXPIRED](#TIMEOUT_EXPIRED)
* [TIMEOUT\_IGNORED](#TIMEOUT_IGNORED)
* [TRANSFORM\_FEEDBACK](#TRANSFORM_FEEDBACK)
* [TRANSFORM\_FEEDBACK\_ACTIVE](#TRANSFORM_FEEDBACK_ACTIVE)
* [TRANSFORM\_FEEDBACK\_BINDING](#TRANSFORM_FEEDBACK_BINDING)
* [TRANSFORM\_FEEDBACK\_BUFFER](#TRANSFORM_FEEDBACK_BUFFER)
* [TRANSFORM\_FEEDBACK\_BUFFER\_BINDING](#TRANSFORM_FEEDBACK_BUFFER_BINDING)
* [TRANSFORM\_FEEDBACK\_BUFFER\_MODE](#TRANSFORM_FEEDBACK_BUFFER_MODE)
* [TRANSFORM\_FEEDBACK\_BUFFER\_SIZE](#TRANSFORM_FEEDBACK_BUFFER_SIZE)
* [TRANSFORM\_FEEDBACK\_BUFFER\_START](#TRANSFORM_FEEDBACK_BUFFER_START)
* [TRANSFORM\_FEEDBACK\_PAUSED](#TRANSFORM_FEEDBACK_PAUSED)
* [TRANSFORM\_FEEDBACK\_PRIMITIVES\_WRITTEN](#TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN)
* [TRANSFORM\_FEEDBACK\_VARYINGS](#TRANSFORM_FEEDBACK_VARYINGS)
* [TRIANGLES](#TRIANGLES)
* [TRIANGLE\_FAN](#TRIANGLE_FAN)
* [TRIANGLE\_STRIP](#TRIANGLE_STRIP)
* [UNIFORM\_ARRAY\_STRIDE](#UNIFORM_ARRAY_STRIDE)
* [UNIFORM\_BLOCK\_ACTIVE\_UNIFORMS](#UNIFORM_BLOCK_ACTIVE_UNIFORMS)
* [UNIFORM\_BLOCK\_ACTIVE\_UNIFORM\_INDICES](#UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES)
* [UNIFORM\_BLOCK\_BINDING](#UNIFORM_BLOCK_BINDING)
* [UNIFORM\_BLOCK\_DATA\_SIZE](#UNIFORM_BLOCK_DATA_SIZE)
* [UNIFORM\_BLOCK\_INDEX](#UNIFORM_BLOCK_INDEX)
* [UNIFORM\_BLOCK\_REFERENCED\_BY\_FRAGMENT\_SHADER](#UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER)
* [UNIFORM\_BLOCK\_REFERENCED\_BY\_VERTEX\_SHADER](#UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER)
* [UNIFORM\_BUFFER](#UNIFORM_BUFFER)
* [UNIFORM\_BUFFER\_BINDING](#UNIFORM_BUFFER_BINDING)
* [UNIFORM\_BUFFER\_OFFSET\_ALIGNMENT](#UNIFORM_BUFFER_OFFSET_ALIGNMENT)
* [UNIFORM\_BUFFER\_SIZE](#UNIFORM_BUFFER_SIZE)
* [UNIFORM\_BUFFER\_START](#UNIFORM_BUFFER_START)
* [UNIFORM\_IS\_ROW\_MAJOR](#UNIFORM_IS_ROW_MAJOR)
* [UNIFORM\_MATRIX\_STRIDE](#UNIFORM_MATRIX_STRIDE)
* [UNIFORM\_OFFSET](#UNIFORM_OFFSET)
* [UNIFORM\_SIZE](#UNIFORM_SIZE)
* [UNIFORM\_TYPE](#UNIFORM_TYPE)
* [UNPACK\_ALIGNMENT](#UNPACK_ALIGNMENT)
* [UNPACK\_COLORSPACE\_CONVERSION\_WEBGL](#UNPACK_COLORSPACE_CONVERSION_WEBGL)
* [UNPACK\_FLIP\_Y\_WEBGL](#UNPACK_FLIP_Y_WEBGL)
* [UNPACK\_IMAGE\_HEIGHT](#UNPACK_IMAGE_HEIGHT)
* [UNPACK\_PREMULTIPLY\_ALPHA\_WEBGL](#UNPACK_PREMULTIPLY_ALPHA_WEBGL)
* [UNPACK\_ROW\_LENGTH](#UNPACK_ROW_LENGTH)
* [UNPACK\_SKIP\_IMAGES](#UNPACK_SKIP_IMAGES)
* [UNPACK\_SKIP\_PIXELS](#UNPACK_SKIP_PIXELS)
* [UNPACK\_SKIP\_ROWS](#UNPACK_SKIP_ROWS)
* [UNSIGNALED](#UNSIGNALED)
* [UNSIGNED\_BYTE](#UNSIGNED_BYTE)
* [UNSIGNED\_INT](#UNSIGNED_INT)
* [UNSIGNED\_INT\_10F\_11F\_11F\_REV](#UNSIGNED_INT_10F_11F_11F_REV)
* [UNSIGNED\_INT\_24\_8](#UNSIGNED_INT_24_8)
* [UNSIGNED\_INT\_2\_10\_10\_10\_REV](#UNSIGNED_INT_2_10_10_10_REV)
* [UNSIGNED\_INT\_5\_9\_9\_9\_REV](#UNSIGNED_INT_5_9_9_9_REV)
* [UNSIGNED\_INT\_SAMPLER\_2D](#UNSIGNED_INT_SAMPLER_2D)
* [UNSIGNED\_INT\_SAMPLER\_2D\_ARRAY](#UNSIGNED_INT_SAMPLER_2D_ARRAY)
* [UNSIGNED\_INT\_SAMPLER\_3D](#UNSIGNED_INT_SAMPLER_3D)
* [UNSIGNED\_INT\_SAMPLER\_CUBE](#UNSIGNED_INT_SAMPLER_CUBE)
* [UNSIGNED\_INT\_VEC2](#UNSIGNED_INT_VEC2)
* [UNSIGNED\_INT\_VEC3](#UNSIGNED_INT_VEC3)
* [UNSIGNED\_INT\_VEC4](#UNSIGNED_INT_VEC4)
* [UNSIGNED\_NORMALIZED](#UNSIGNED_NORMALIZED)
* [UNSIGNED\_SHORT](#UNSIGNED_SHORT)
* [UNSIGNED\_SHORT\_4\_4\_4\_4](#UNSIGNED_SHORT_4_4_4_4)
* [UNSIGNED\_SHORT\_5\_5\_5\_1](#UNSIGNED_SHORT_5_5_5_1)
* [UNSIGNED\_SHORT\_5\_6\_5](#UNSIGNED_SHORT_5_6_5)
* [VALIDATE\_STATUS](#VALIDATE_STATUS)
* [VENDOR](#VENDOR)
* [VERSION](#VERSION)
* [VERTEX\_ARRAY\_BINDING](#VERTEX_ARRAY_BINDING)
* [VERTEX\_ATTRIB\_ARRAY\_BUFFER\_BINDING](#VERTEX_ATTRIB_ARRAY_BUFFER_BINDING)
* [VERTEX\_ATTRIB\_ARRAY\_DIVISOR](#VERTEX_ATTRIB_ARRAY_DIVISOR)
* [VERTEX\_ATTRIB\_ARRAY\_ENABLED](#VERTEX_ATTRIB_ARRAY_ENABLED)
* [VERTEX\_ATTRIB\_ARRAY\_INTEGER](#VERTEX_ATTRIB_ARRAY_INTEGER)
* [VERTEX\_ATTRIB\_ARRAY\_NORMALIZED](#VERTEX_ATTRIB_ARRAY_NORMALIZED)
* [VERTEX\_ATTRIB\_ARRAY\_POINTER](#VERTEX_ATTRIB_ARRAY_POINTER)
* [VERTEX\_ATTRIB\_ARRAY\_SIZE](#VERTEX_ATTRIB_ARRAY_SIZE)
* [VERTEX\_ATTRIB\_ARRAY\_STRIDE](#VERTEX_ATTRIB_ARRAY_STRIDE)
* [VERTEX\_ATTRIB\_ARRAY\_TYPE](#VERTEX_ATTRIB_ARRAY_TYPE)
* [VERTEX\_SHADER](#VERTEX_SHADER)
* [VIEWPORT](#VIEWPORT)
* [WAIT\_FAILED](#WAIT_FAILED)
* [ZERO](#ZERO)

Variables (0)

This section is empty.

Procedures (228)

* [ActiveTexture](#ActiveTexture)
* [AttachShader](#AttachShader)
* [BeginQuery](#BeginQuery)
* [BeginTransformFeedback](#BeginTransformFeedback)
* [BindAttribLocation](#BindAttribLocation)
* [BindBuffer](#BindBuffer)
* [BindBufferBase](#BindBufferBase)
* [BindBufferRange](#BindBufferRange)
* [BindFramebuffer](#BindFramebuffer)
* [BindRenderbuffer](#BindRenderbuffer)
* [BindSampler](#BindSampler)
* [BindTexture](#BindTexture)
* [BindTransformFeedback](#BindTransformFeedback)
* [BindVertexArray](#BindVertexArray)
* [BlendColor](#BlendColor)
* [BlendEquation](#BlendEquation)
* [BlendEquationSeparate](#BlendEquationSeparate)
* [BlendFunc](#BlendFunc)
* [BlendFuncSeparate](#BlendFuncSeparate)
* [BlitFramebuffer](#BlitFramebuffer)
* [BufferData](#BufferData)
* [BufferDataSlice](#BufferDataSlice)
* [BufferSubData](#BufferSubData)
* [BufferSubDataSlice](#BufferSubDataSlice)
* [CheckFramebufferStatus](#CheckFramebufferStatus)
* [Clear](#Clear)
* [ClearBufferfi](#ClearBufferfi)
* [ClearBufferfv](#ClearBufferfv)
* [ClearBufferiv](#ClearBufferiv)
* [ClearBufferuiv](#ClearBufferuiv)
* [ClearColor](#ClearColor)
* [ClearDepth](#ClearDepth)
* [ClearStencil](#ClearStencil)
* [ClientWaitSync](#ClientWaitSync)
* [ColorMask](#ColorMask)
* [CompileShader](#CompileShader)
* [CompressedTexImage2D](#CompressedTexImage2D)
* [CompressedTexImage2DSlice](#CompressedTexImage2DSlice)
* [CompressedTexImage3D](#CompressedTexImage3D)
* [CompressedTexSubImage2D](#CompressedTexSubImage2D)
* [CompressedTexSubImage2DSlice](#CompressedTexSubImage2DSlice)
* [CompressedTexSubImage3D](#CompressedTexSubImage3D)
* [CopyBufferSubData](#CopyBufferSubData)
* [CopyTexImage2D](#CopyTexImage2D)
* [CopyTexSubImage2D](#CopyTexSubImage2D)
* [CopyTexSubImage3D](#CopyTexSubImage3D)
* [CreateBuffer](#CreateBuffer)
* [CreateCurrentContextById](#CreateCurrentContextById)
* [CreateFramebuffer](#CreateFramebuffer)
* [CreateProgram](#CreateProgram)
* [CreateProgramFromStrings](#CreateProgramFromStrings)
* [CreateQuery](#CreateQuery)
* [CreateRenderbuffer](#CreateRenderbuffer)
* [CreateSampler](#CreateSampler)
* [CreateShader](#CreateShader)
* [CreateTexture](#CreateTexture)
* [CreateTransformFeedback](#CreateTransformFeedback)
* [CreateVertexArray](#CreateVertexArray)
* [CullFace](#CullFace)
* [DeleteBuffer](#DeleteBuffer)
* [DeleteFramebuffer](#DeleteFramebuffer)
* [DeleteProgram](#DeleteProgram)
* [DeleteQuery](#DeleteQuery)
* [DeleteRenderbuffer](#DeleteRenderbuffer)
* [DeleteSampler](#DeleteSampler)
* [DeleteShader](#DeleteShader)
* [DeleteSync](#DeleteSync)
* [DeleteTexture](#DeleteTexture)
* [DeleteTransformFeedback](#DeleteTransformFeedback)
* [DeleteVertexArray](#DeleteVertexArray)
* [DepthFunc](#DepthFunc)
* [DepthMask](#DepthMask)
* [DepthRange](#DepthRange)
* [DetachShader](#DetachShader)
* [Disable](#Disable)
* [DisableVertexAttribArray](#DisableVertexAttribArray)
* [DrawArrays](#DrawArrays)
* [DrawArraysInstanced](#DrawArraysInstanced)
* [DrawBuffers](#DrawBuffers)
* [DrawElements](#DrawElements)
* [DrawElementsInstanced](#DrawElementsInstanced)
* [DrawRangeElements](#DrawRangeElements)
* [DrawingBufferHeight](#DrawingBufferHeight)
* [DrawingBufferWidth](#DrawingBufferWidth)
* [Enable](#Enable)
* [EnableVertexAttribArray](#EnableVertexAttribArray)
* [EndQuery](#EndQuery)
* [EndTransformFeedback](#EndTransformFeedback)
* [FenceSync](#FenceSync)
* [Finish](#Finish)
* [Flush](#Flush)
* [FramebufferRenderbuffer](#FramebufferRenderbuffer)
* [FramebufferTexture2D](#FramebufferTexture2D)
* [FramebufferTextureLayer](#FramebufferTextureLayer)
* [FrontFace](#FrontFace)
* [GenerateMipmap](#GenerateMipmap)
* [GetActiveAttribAlloc](#GetActiveAttribAlloc)
* [GetActiveAttribBuf](#GetActiveAttribBuf)
* [GetActiveUniformAlloc](#GetActiveUniformAlloc)
* [GetActiveUniformBlockNameAlloc](#GetActiveUniformBlockNameAlloc)
* [GetActiveUniformBlockNameBuf](#GetActiveUniformBlockNameBuf)
* [GetActiveUniformBlockParameter](#GetActiveUniformBlockParameter)
* [GetActiveUniformBuf](#GetActiveUniformBuf)
* [GetActiveUniforms](#GetActiveUniforms)
* [GetAttribLocation](#GetAttribLocation)
* [GetBufferParameter](#GetBufferParameter)
* [GetBufferSubData](#GetBufferSubData)
* [GetCurrentContextAttributes](#GetCurrentContextAttributes)
* [GetESVersion](#GetESVersion)
* [GetError](#GetError)
* [GetExtension](#GetExtension)
* [GetFragDataLocation](#GetFragDataLocation)
* [GetParameter](#GetParameter)
* [GetParameter4i](#GetParameter4i)
* [GetProgramInfoLog](#GetProgramInfoLog)
* [GetProgramParameter](#GetProgramParameter)
* [GetQuery](#GetQuery)
* [GetShaderInfoLog](#GetShaderInfoLog)
* [GetShaderiv](#GetShaderiv)
* [GetUniformBlockIndex](#GetUniformBlockIndex)
* [GetUniformLocation](#GetUniformLocation)
* [GetVertexAttribOffset](#GetVertexAttribOffset)
* [GetWebGLVersion](#GetWebGLVersion)
* [Hint](#Hint)
* [InvalidateFramebuffer](#InvalidateFramebuffer)
* [InvalidateSubFramebuffer](#InvalidateSubFramebuffer)
* [IsBuffer](#IsBuffer)
* [IsEnabled](#IsEnabled)
* [IsExtensionSupported](#IsExtensionSupported)
* [IsFramebuffer](#IsFramebuffer)
* [IsProgram](#IsProgram)
* [IsQuery](#IsQuery)
* [IsRenderbuffer](#IsRenderbuffer)
* [IsSampler](#IsSampler)
* [IsShader](#IsShader)
* [IsSync](#IsSync)
* [IsTexture](#IsTexture)
* [IsTransformFeedback](#IsTransformFeedback)
* [IsVertexArray](#IsVertexArray)
* [IsWebGL2Supported](#IsWebGL2Supported)
* [IterateSupportedExtensions](#IterateSupportedExtensions)
* [LineWidth](#LineWidth)
* [LinkProgram](#LinkProgram)
* [PauseTransformFeedback](#PauseTransformFeedback)
* [PixelStorei](#PixelStorei)
* [PolygonOffset](#PolygonOffset)
* [ReadBuffer](#ReadBuffer)
* [ReadPixelsSlice](#ReadPixelsSlice)
* [ReadnPixels](#ReadnPixels)
* [RenderbufferStorage](#RenderbufferStorage)
* [RenderbufferStorageMultisample](#RenderbufferStorageMultisample)
* [ResumeTransformFeedback](#ResumeTransformFeedback)
* [SampleCoverage](#SampleCoverage)
* [SamplerParameterf](#SamplerParameterf)
* [SamplerParameteri](#SamplerParameteri)
* [Scissor](#Scissor)
* [SetCurrentContextById](#SetCurrentContextById)
* [ShaderSource](#ShaderSource)
* [StencilFunc](#StencilFunc)
* [StencilFuncSeparate](#StencilFuncSeparate)
* [StencilMask](#StencilMask)
* [StencilMaskSeparate](#StencilMaskSeparate)
* [StencilOp](#StencilOp)
* [StencilOpSeparate](#StencilOpSeparate)
* [TexImage2D](#TexImage2D)
* [TexImage2DSlice](#TexImage2DSlice)
* [TexImage3D](#TexImage3D)
* [TexParameterf](#TexParameterf)
* [TexParameteri](#TexParameteri)
* [TexStorage2D](#TexStorage2D)
* [TexStorage3D](#TexStorage3D)
* [TexSubImage2D](#TexSubImage2D)
* [TexSubImage2DSlice](#TexSubImage2DSlice)
* [TexSubImage3D](#TexSubImage3D)
* [TransformFeedbackVaryings](#TransformFeedbackVaryings)
* [Uniform1f](#Uniform1f)
* [Uniform1fv](#Uniform1fv)
* [Uniform1i](#Uniform1i)
* [Uniform1iv](#Uniform1iv)
* [Uniform1ui](#Uniform1ui)
* [Uniform1uiv](#Uniform1uiv)
* [Uniform2f](#Uniform2f)
* [Uniform2fv](#Uniform2fv)
* [Uniform2i](#Uniform2i)
* [Uniform2iv](#Uniform2iv)
* [Uniform2ui](#Uniform2ui)
* [Uniform2uiv](#Uniform2uiv)
* [Uniform3f](#Uniform3f)
* [Uniform3fv](#Uniform3fv)
* [Uniform3i](#Uniform3i)
* [Uniform3iv](#Uniform3iv)
* [Uniform3ui](#Uniform3ui)
* [Uniform3uiv](#Uniform3uiv)
* [Uniform4f](#Uniform4f)
* [Uniform4fv](#Uniform4fv)
* [Uniform4i](#Uniform4i)
* [Uniform4iv](#Uniform4iv)
* [Uniform4ui](#Uniform4ui)
* [Uniform4uiv](#Uniform4uiv)
* [UniformBlockBinding](#UniformBlockBinding)
* [UniformMatrix2fv](#UniformMatrix2fv)
* [UniformMatrix2x3fv](#UniformMatrix2x3fv)
* [UniformMatrix2x4fv](#UniformMatrix2x4fv)
* [UniformMatrix3fv](#UniformMatrix3fv)
* [UniformMatrix3x2fv](#UniformMatrix3x2fv)
* [UniformMatrix3x4fv](#UniformMatrix3x4fv)
* [UniformMatrix4fv](#UniformMatrix4fv)
* [UniformMatrix4x2fv](#UniformMatrix4x2fv)
* [UniformMatrix4x3fv](#UniformMatrix4x3fv)
* [UseProgram](#UseProgram)
* [ValidateProgram](#ValidateProgram)
* [VertexAttrib1f](#VertexAttrib1f)
* [VertexAttrib1fv](#VertexAttrib1fv)
* [VertexAttrib2f](#VertexAttrib2f)
* [VertexAttrib2fv](#VertexAttrib2fv)
* [VertexAttrib3f](#VertexAttrib3f)
* [VertexAttrib3fv](#VertexAttrib3fv)
* [VertexAttrib4f](#VertexAttrib4f)
* [VertexAttrib4fv](#VertexAttrib4fv)
* [VertexAttribDivisor](#VertexAttribDivisor)
* [VertexAttribI4i](#VertexAttribI4i)
* [VertexAttribI4iv](#VertexAttribI4iv)
* [VertexAttribI4ui](#VertexAttribI4ui)
* [VertexAttribI4uiv](#VertexAttribI4uiv)
* [VertexAttribIPointer](#VertexAttribIPointer)
* [VertexAttribPointer](#VertexAttribPointer)
* [Viewport](#Viewport)
* [WaitSync](#WaitSync)

Procedure Groups (3)

* [GetActiveAttrib](#GetActiveAttrib)
* [GetActiveUniform](#GetActiveUniform)
* [GetActiveUniformBlockName](#GetActiveUniformBlockName)

## Types

### [ActiveInfo ¶](#ActiveInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L29)

```
ActiveInfo :: struct {
	size: int,
	type: Enum,
	name: string,
}
```

##### Related Procedures With Returns

* [GetActiveAttribAlloc](/vendor/wasm/WebGL/#GetActiveAttribAlloc)
* [GetActiveAttribBuf](/vendor/wasm/WebGL/#GetActiveAttribBuf)
* [GetActiveUniformAlloc](/vendor/wasm/WebGL/#GetActiveUniformAlloc)
* [GetActiveUniformBuf](/vendor/wasm/WebGL/#GetActiveUniformBuf)
* [GetActiveAttrib](/vendor/wasm/WebGL/#GetActiveAttrib) *(procedure groups)*
* [GetActiveUniform](/vendor/wasm/WebGL/#GetActiveUniform) *(procedure groups)*

### [Buffer ¶](#Buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L10)

```
Buffer :: distinct u32
```

##### Related Procedures With Parameters

* [BindBuffer](/vendor/wasm/WebGL/#BindBuffer)
* [BindBufferBase](/vendor/wasm/WebGL/#BindBufferBase)
* [BindBufferRange](/vendor/wasm/WebGL/#BindBufferRange)
* [DeleteBuffer](/vendor/wasm/WebGL/#DeleteBuffer)
* [IsBuffer](/vendor/wasm/WebGL/#IsBuffer)



##### Related Procedures With Returns

* [CreateBuffer](/vendor/wasm/WebGL/#CreateBuffer)

### [ContextAttribute ¶](#ContextAttribute) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L17)

```
ContextAttribute :: enum u32 {
	disableAlpha                 = 0, 
	disableAntialias             = 1, 
	disableDepth                 = 2, 
	failIfMajorPerformanceCaveat = 3, 
	disablePremultipliedAlpha    = 4, 
	preserveDrawingBuffer        = 5, 
	stencil                      = 6, 
	desynchronized               = 7, 
}
```

### [ContextAttributes ¶](#ContextAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L27)

```
ContextAttributes :: distinct bit_set[ContextAttribute; u32]
```

##### Related Procedures With Parameters

* [CreateCurrentContextById](/vendor/wasm/WebGL/#CreateCurrentContextById)



##### Related Procedures With Returns

* [GetCurrentContextAttributes](/vendor/wasm/WebGL/#GetCurrentContextAttributes)

##### Related Constants

* [DEFAULT\_CONTEXT\_ATTRIBUTES](/vendor/wasm/WebGL/#DEFAULT_CONTEXT_ATTRIBUTES)

### [Enum ¶](#Enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L8)

```
Enum :: distinct u32
```

##### Related Procedures With Parameters

* [ActiveTexture](/vendor/wasm/WebGL/#ActiveTexture)
* [BeginQuery](/vendor/wasm/WebGL/#BeginQuery)
* [BeginTransformFeedback](/vendor/wasm/WebGL/#BeginTransformFeedback)
* [BindBuffer](/vendor/wasm/WebGL/#BindBuffer)
* [BindBufferBase](/vendor/wasm/WebGL/#BindBufferBase)
* [BindBufferRange](/vendor/wasm/WebGL/#BindBufferRange)
* [BindFramebuffer](/vendor/wasm/WebGL/#BindFramebuffer)
* [BindRenderbuffer](/vendor/wasm/WebGL/#BindRenderbuffer)
* [BindSampler](/vendor/wasm/WebGL/#BindSampler)
* [BindTexture](/vendor/wasm/WebGL/#BindTexture)
* [BindTransformFeedback](/vendor/wasm/WebGL/#BindTransformFeedback)
* [BlendEquation](/vendor/wasm/WebGL/#BlendEquation)
* [BlendEquationSeparate](/vendor/wasm/WebGL/#BlendEquationSeparate)
* [BlendFunc](/vendor/wasm/WebGL/#BlendFunc)
* [BlendFuncSeparate](/vendor/wasm/WebGL/#BlendFuncSeparate)
* [BlitFramebuffer](/vendor/wasm/WebGL/#BlitFramebuffer)
* [BufferData](/vendor/wasm/WebGL/#BufferData)
* [BufferDataSlice](/vendor/wasm/WebGL/#BufferDataSlice)
* [BufferSubData](/vendor/wasm/WebGL/#BufferSubData)
* [BufferSubDataSlice](/vendor/wasm/WebGL/#BufferSubDataSlice)
* [CheckFramebufferStatus](/vendor/wasm/WebGL/#CheckFramebufferStatus)
* [ClearBufferfi](/vendor/wasm/WebGL/#ClearBufferfi)
* [ClearBufferfv](/vendor/wasm/WebGL/#ClearBufferfv)
* [ClearBufferiv](/vendor/wasm/WebGL/#ClearBufferiv)
* [ClearBufferuiv](/vendor/wasm/WebGL/#ClearBufferuiv)
* [CompressedTexImage2D](/vendor/wasm/WebGL/#CompressedTexImage2D)
* [CompressedTexImage2DSlice](/vendor/wasm/WebGL/#CompressedTexImage2DSlice)
* [CompressedTexImage3D](/vendor/wasm/WebGL/#CompressedTexImage3D)
* [CompressedTexSubImage2D](/vendor/wasm/WebGL/#CompressedTexSubImage2D)
* [CompressedTexSubImage2DSlice](/vendor/wasm/WebGL/#CompressedTexSubImage2DSlice)
* [CompressedTexSubImage3D](/vendor/wasm/WebGL/#CompressedTexSubImage3D)
* [CopyBufferSubData](/vendor/wasm/WebGL/#CopyBufferSubData)
* [CopyTexImage2D](/vendor/wasm/WebGL/#CopyTexImage2D)
* [CopyTexSubImage2D](/vendor/wasm/WebGL/#CopyTexSubImage2D)
* [CopyTexSubImage3D](/vendor/wasm/WebGL/#CopyTexSubImage3D)
* [CreateShader](/vendor/wasm/WebGL/#CreateShader)
* [CullFace](/vendor/wasm/WebGL/#CullFace)
* [DepthFunc](/vendor/wasm/WebGL/#DepthFunc)
* [Disable](/vendor/wasm/WebGL/#Disable)
* [DrawArrays](/vendor/wasm/WebGL/#DrawArrays)
* [DrawArraysInstanced](/vendor/wasm/WebGL/#DrawArraysInstanced)
* [DrawElements](/vendor/wasm/WebGL/#DrawElements)
* [DrawElementsInstanced](/vendor/wasm/WebGL/#DrawElementsInstanced)
* [DrawRangeElements](/vendor/wasm/WebGL/#DrawRangeElements)
* [Enable](/vendor/wasm/WebGL/#Enable)
* [EndQuery](/vendor/wasm/WebGL/#EndQuery)
* [FenceSync](/vendor/wasm/WebGL/#FenceSync)
* [FramebufferRenderbuffer](/vendor/wasm/WebGL/#FramebufferRenderbuffer)
* [FramebufferTexture2D](/vendor/wasm/WebGL/#FramebufferTexture2D)
* [FramebufferTextureLayer](/vendor/wasm/WebGL/#FramebufferTextureLayer)
* [FrontFace](/vendor/wasm/WebGL/#FrontFace)
* [GenerateMipmap](/vendor/wasm/WebGL/#GenerateMipmap)
* [GetActiveUniformBlockParameter](/vendor/wasm/WebGL/#GetActiveUniformBlockParameter)
* [GetActiveUniforms](/vendor/wasm/WebGL/#GetActiveUniforms)
* [GetBufferParameter](/vendor/wasm/WebGL/#GetBufferParameter)
* [GetBufferSubData](/vendor/wasm/WebGL/#GetBufferSubData)
* [GetParameter](/vendor/wasm/WebGL/#GetParameter)
* [GetParameter4i](/vendor/wasm/WebGL/#GetParameter4i)
* [GetProgramParameter](/vendor/wasm/WebGL/#GetProgramParameter)
* [GetQuery](/vendor/wasm/WebGL/#GetQuery)
* [GetShaderiv](/vendor/wasm/WebGL/#GetShaderiv)
* [GetVertexAttribOffset](/vendor/wasm/WebGL/#GetVertexAttribOffset)
* [Hint](/vendor/wasm/WebGL/#Hint)
* [InvalidateFramebuffer](/vendor/wasm/WebGL/#InvalidateFramebuffer)
* [InvalidateSubFramebuffer](/vendor/wasm/WebGL/#InvalidateSubFramebuffer)
* [IsEnabled](/vendor/wasm/WebGL/#IsEnabled)
* [PixelStorei](/vendor/wasm/WebGL/#PixelStorei)
* [ReadBuffer](/vendor/wasm/WebGL/#ReadBuffer)
* [ReadPixelsSlice](/vendor/wasm/WebGL/#ReadPixelsSlice)
* [ReadnPixels](/vendor/wasm/WebGL/#ReadnPixels)
* [RenderbufferStorage](/vendor/wasm/WebGL/#RenderbufferStorage)
* [RenderbufferStorageMultisample](/vendor/wasm/WebGL/#RenderbufferStorageMultisample)
* [SamplerParameterf](/vendor/wasm/WebGL/#SamplerParameterf)
* [SamplerParameteri](/vendor/wasm/WebGL/#SamplerParameteri)
* [StencilFunc](/vendor/wasm/WebGL/#StencilFunc)
* [StencilFuncSeparate](/vendor/wasm/WebGL/#StencilFuncSeparate)
* [StencilMaskSeparate](/vendor/wasm/WebGL/#StencilMaskSeparate)
* [StencilOp](/vendor/wasm/WebGL/#StencilOp)
* [StencilOpSeparate](/vendor/wasm/WebGL/#StencilOpSeparate)
* [TexImage2D](/vendor/wasm/WebGL/#TexImage2D)
* [TexImage2DSlice](/vendor/wasm/WebGL/#TexImage2DSlice)
* [TexImage3D](/vendor/wasm/WebGL/#TexImage3D)
* [TexParameterf](/vendor/wasm/WebGL/#TexParameterf)
* [TexParameteri](/vendor/wasm/WebGL/#TexParameteri)
* [TexStorage2D](/vendor/wasm/WebGL/#TexStorage2D)
* [TexStorage3D](/vendor/wasm/WebGL/#TexStorage3D)
* [TexSubImage2D](/vendor/wasm/WebGL/#TexSubImage2D)
* [TexSubImage2DSlice](/vendor/wasm/WebGL/#TexSubImage2DSlice)
* [TexSubImage3D](/vendor/wasm/WebGL/#TexSubImage3D)
* [TransformFeedbackVaryings](/vendor/wasm/WebGL/#TransformFeedbackVaryings)
* [VertexAttribIPointer](/vendor/wasm/WebGL/#VertexAttribIPointer)
* [VertexAttribPointer](/vendor/wasm/WebGL/#VertexAttribPointer)



##### Related Procedures With Returns

* [GetError](/vendor/wasm/WebGL/#GetError)

##### Related Constants

* [ACTIVE\_ATTRIBUTES](/vendor/wasm/WebGL/#ACTIVE_ATTRIBUTES)
* [ACTIVE\_TEXTURE](/vendor/wasm/WebGL/#ACTIVE_TEXTURE)
* [ACTIVE\_UNIFORMS](/vendor/wasm/WebGL/#ACTIVE_UNIFORMS)
* [ACTIVE\_UNIFORM\_BLOCKS](/vendor/wasm/WebGL/#ACTIVE_UNIFORM_BLOCKS)
* [ALIASED\_LINE\_WIDTH\_RANGE](/vendor/wasm/WebGL/#ALIASED_LINE_WIDTH_RANGE)
* [ALIASED\_POINT\_SIZE\_RANGE](/vendor/wasm/WebGL/#ALIASED_POINT_SIZE_RANGE)
* [ALPHA](/vendor/wasm/WebGL/#ALPHA)
* [ALPHA\_BITS](/vendor/wasm/WebGL/#ALPHA_BITS)
* [ALREADY\_SIGNALED](/vendor/wasm/WebGL/#ALREADY_SIGNALED)
* [ALWAYS](/vendor/wasm/WebGL/#ALWAYS)
* [ANY\_SAMPLES\_PASSED](/vendor/wasm/WebGL/#ANY_SAMPLES_PASSED)
* [ANY\_SAMPLES\_PASSED\_CONSERVATIVE](/vendor/wasm/WebGL/#ANY_SAMPLES_PASSED_CONSERVATIVE)
* [ARRAY\_BUFFER](/vendor/wasm/WebGL/#ARRAY_BUFFER)
* [ARRAY\_BUFFER\_BINDING](/vendor/wasm/WebGL/#ARRAY_BUFFER_BINDING)
* [ATTACHED\_SHADERS](/vendor/wasm/WebGL/#ATTACHED_SHADERS)
* [BACK](/vendor/wasm/WebGL/#BACK)
* [BLEND](/vendor/wasm/WebGL/#BLEND)
* [BLEND\_COLOR](/vendor/wasm/WebGL/#BLEND_COLOR)
* [BLEND\_DST\_ALPHA](/vendor/wasm/WebGL/#BLEND_DST_ALPHA)
* [BLEND\_DST\_RGB](/vendor/wasm/WebGL/#BLEND_DST_RGB)
* [BLEND\_EQUATION](/vendor/wasm/WebGL/#BLEND_EQUATION)
* [BLEND\_EQUATION\_ALPHA](/vendor/wasm/WebGL/#BLEND_EQUATION_ALPHA)
* [BLEND\_EQUATION\_RGB](/vendor/wasm/WebGL/#BLEND_EQUATION_RGB)
* [BLEND\_SRC\_ALPHA](/vendor/wasm/WebGL/#BLEND_SRC_ALPHA)
* [BLEND\_SRC\_RGB](/vendor/wasm/WebGL/#BLEND_SRC_RGB)
* [BLUE\_BITS](/vendor/wasm/WebGL/#BLUE_BITS)
* [BOOL](/vendor/wasm/WebGL/#BOOL)
* [BOOL\_VEC2](/vendor/wasm/WebGL/#BOOL_VEC2)
* [BOOL\_VEC3](/vendor/wasm/WebGL/#BOOL_VEC3)
* [BOOL\_VEC4](/vendor/wasm/WebGL/#BOOL_VEC4)
* [BROWSER\_DEFAULT\_WEBGL](/vendor/wasm/WebGL/#BROWSER_DEFAULT_WEBGL)
* [BUFFER\_SIZE](/vendor/wasm/WebGL/#BUFFER_SIZE)
* [BUFFER\_USAGE](/vendor/wasm/WebGL/#BUFFER_USAGE)
* [BYTE](/vendor/wasm/WebGL/#BYTE)
* [CCW](/vendor/wasm/WebGL/#CCW)
* [CLAMP\_TO\_EDGE](/vendor/wasm/WebGL/#CLAMP_TO_EDGE)
* [COLOR](/vendor/wasm/WebGL/#COLOR)
* [COLOR\_ATTACHMENT0](/vendor/wasm/WebGL/#COLOR_ATTACHMENT0)
* [COLOR\_ATTACHMENT1](/vendor/wasm/WebGL/#COLOR_ATTACHMENT1)
* [COLOR\_ATTACHMENT10](/vendor/wasm/WebGL/#COLOR_ATTACHMENT10)
* [COLOR\_ATTACHMENT11](/vendor/wasm/WebGL/#COLOR_ATTACHMENT11)
* [COLOR\_ATTACHMENT12](/vendor/wasm/WebGL/#COLOR_ATTACHMENT12)
* [COLOR\_ATTACHMENT13](/vendor/wasm/WebGL/#COLOR_ATTACHMENT13)
* [COLOR\_ATTACHMENT14](/vendor/wasm/WebGL/#COLOR_ATTACHMENT14)
* [COLOR\_ATTACHMENT15](/vendor/wasm/WebGL/#COLOR_ATTACHMENT15)
* [COLOR\_ATTACHMENT2](/vendor/wasm/WebGL/#COLOR_ATTACHMENT2)
* [COLOR\_ATTACHMENT3](/vendor/wasm/WebGL/#COLOR_ATTACHMENT3)
* [COLOR\_ATTACHMENT4](/vendor/wasm/WebGL/#COLOR_ATTACHMENT4)
* [COLOR\_ATTACHMENT5](/vendor/wasm/WebGL/#COLOR_ATTACHMENT5)
* [COLOR\_ATTACHMENT6](/vendor/wasm/WebGL/#COLOR_ATTACHMENT6)
* [COLOR\_ATTACHMENT7](/vendor/wasm/WebGL/#COLOR_ATTACHMENT7)
* [COLOR\_ATTACHMENT8](/vendor/wasm/WebGL/#COLOR_ATTACHMENT8)
* [COLOR\_ATTACHMENT9](/vendor/wasm/WebGL/#COLOR_ATTACHMENT9)
* [COLOR\_BUFFER\_BIT](/vendor/wasm/WebGL/#COLOR_BUFFER_BIT)
* [COLOR\_CLEAR\_VALUE](/vendor/wasm/WebGL/#COLOR_CLEAR_VALUE)
* [COLOR\_WRITEMASK](/vendor/wasm/WebGL/#COLOR_WRITEMASK)
* [COMPARE\_REF\_TO\_TEXTURE](/vendor/wasm/WebGL/#COMPARE_REF_TO_TEXTURE)
* [COMPILE\_STATUS](/vendor/wasm/WebGL/#COMPILE_STATUS)
* [COMPRESSED\_TEXTURE\_FORMATS](/vendor/wasm/WebGL/#COMPRESSED_TEXTURE_FORMATS)
* [CONDITION\_SATISFIED](/vendor/wasm/WebGL/#CONDITION_SATISFIED)
* [CONSTANT\_ALPHA](/vendor/wasm/WebGL/#CONSTANT_ALPHA)
* [CONSTANT\_COLOR](/vendor/wasm/WebGL/#CONSTANT_COLOR)
* [CONTEXT\_LOST\_WEBGL](/vendor/wasm/WebGL/#CONTEXT_LOST_WEBGL)
* [COPY\_READ\_BUFFER](/vendor/wasm/WebGL/#COPY_READ_BUFFER)
* [COPY\_READ\_BUFFER\_BINDING](/vendor/wasm/WebGL/#COPY_READ_BUFFER_BINDING)
* [COPY\_WRITE\_BUFFER](/vendor/wasm/WebGL/#COPY_WRITE_BUFFER)
* [COPY\_WRITE\_BUFFER\_BINDING](/vendor/wasm/WebGL/#COPY_WRITE_BUFFER_BINDING)
* [CULL\_FACE](/vendor/wasm/WebGL/#CULL_FACE)
* [CULL\_FACE\_MODE](/vendor/wasm/WebGL/#CULL_FACE_MODE)
* [CURRENT\_PROGRAM](/vendor/wasm/WebGL/#CURRENT_PROGRAM)
* [CURRENT\_QUERY](/vendor/wasm/WebGL/#CURRENT_QUERY)
* [CURRENT\_VERTEX\_ATTRIB](/vendor/wasm/WebGL/#CURRENT_VERTEX_ATTRIB)
* [CW](/vendor/wasm/WebGL/#CW)
* [DECR](/vendor/wasm/WebGL/#DECR)
* [DECR\_WRAP](/vendor/wasm/WebGL/#DECR_WRAP)
* [DELETE\_STATUS](/vendor/wasm/WebGL/#DELETE_STATUS)
* [DEPTH](/vendor/wasm/WebGL/#DEPTH)
* [DEPTH24\_STENCIL8](/vendor/wasm/WebGL/#DEPTH24_STENCIL8)
* [DEPTH32F\_STENCIL8](/vendor/wasm/WebGL/#DEPTH32F_STENCIL8)
* [DEPTH\_ATTACHMENT](/vendor/wasm/WebGL/#DEPTH_ATTACHMENT)
* [DEPTH\_BITS](/vendor/wasm/WebGL/#DEPTH_BITS)
* [DEPTH\_BUFFER\_BIT](/vendor/wasm/WebGL/#DEPTH_BUFFER_BIT)
* [DEPTH\_CLEAR\_VALUE](/vendor/wasm/WebGL/#DEPTH_CLEAR_VALUE)
* [DEPTH\_COMPONENT](/vendor/wasm/WebGL/#DEPTH_COMPONENT)
* [DEPTH\_COMPONENT16](/vendor/wasm/WebGL/#DEPTH_COMPONENT16)
* [DEPTH\_COMPONENT24](/vendor/wasm/WebGL/#DEPTH_COMPONENT24)
* [DEPTH\_COMPONENT32F](/vendor/wasm/WebGL/#DEPTH_COMPONENT32F)
* [DEPTH\_FUNC](/vendor/wasm/WebGL/#DEPTH_FUNC)
* [DEPTH\_RANGE](/vendor/wasm/WebGL/#DEPTH_RANGE)
* [DEPTH\_STENCIL](/vendor/wasm/WebGL/#DEPTH_STENCIL)
* [DEPTH\_STENCIL\_ATTACHMENT](/vendor/wasm/WebGL/#DEPTH_STENCIL_ATTACHMENT)
* [DEPTH\_TEST](/vendor/wasm/WebGL/#DEPTH_TEST)
* [DEPTH\_WRITEMASK](/vendor/wasm/WebGL/#DEPTH_WRITEMASK)
* [DITHER](/vendor/wasm/WebGL/#DITHER)
* [DONT\_CARE](/vendor/wasm/WebGL/#DONT_CARE)
* [DRAW\_BUFFER0](/vendor/wasm/WebGL/#DRAW_BUFFER0)
* [DRAW\_BUFFER1](/vendor/wasm/WebGL/#DRAW_BUFFER1)
* [DRAW\_BUFFER10](/vendor/wasm/WebGL/#DRAW_BUFFER10)
* [DRAW\_BUFFER11](/vendor/wasm/WebGL/#DRAW_BUFFER11)
* [DRAW\_BUFFER12](/vendor/wasm/WebGL/#DRAW_BUFFER12)
* [DRAW\_BUFFER13](/vendor/wasm/WebGL/#DRAW_BUFFER13)
* [DRAW\_BUFFER14](/vendor/wasm/WebGL/#DRAW_BUFFER14)
* [DRAW\_BUFFER15](/vendor/wasm/WebGL/#DRAW_BUFFER15)
* [DRAW\_BUFFER2](/vendor/wasm/WebGL/#DRAW_BUFFER2)
* [DRAW\_BUFFER3](/vendor/wasm/WebGL/#DRAW_BUFFER3)
* [DRAW\_BUFFER4](/vendor/wasm/WebGL/#DRAW_BUFFER4)
* [DRAW\_BUFFER5](/vendor/wasm/WebGL/#DRAW_BUFFER5)
* [DRAW\_BUFFER6](/vendor/wasm/WebGL/#DRAW_BUFFER6)
* [DRAW\_BUFFER7](/vendor/wasm/WebGL/#DRAW_BUFFER7)
* [DRAW\_BUFFER8](/vendor/wasm/WebGL/#DRAW_BUFFER8)
* [DRAW\_BUFFER9](/vendor/wasm/WebGL/#DRAW_BUFFER9)
* [DRAW\_FRAMEBUFFER](/vendor/wasm/WebGL/#DRAW_FRAMEBUFFER)
* [DRAW\_FRAMEBUFFER\_BINDING](/vendor/wasm/WebGL/#DRAW_FRAMEBUFFER_BINDING)
* [DST\_ALPHA](/vendor/wasm/WebGL/#DST_ALPHA)
* [DST\_COLOR](/vendor/wasm/WebGL/#DST_COLOR)
* [DYNAMIC\_COPY](/vendor/wasm/WebGL/#DYNAMIC_COPY)
* [DYNAMIC\_DRAW](/vendor/wasm/WebGL/#DYNAMIC_DRAW)
* [DYNAMIC\_READ](/vendor/wasm/WebGL/#DYNAMIC_READ)
* [ELEMENT\_ARRAY\_BUFFER](/vendor/wasm/WebGL/#ELEMENT_ARRAY_BUFFER)
* [ELEMENT\_ARRAY\_BUFFER\_BINDING](/vendor/wasm/WebGL/#ELEMENT_ARRAY_BUFFER_BINDING)
* [EQUAL](/vendor/wasm/WebGL/#EQUAL)
* [FASTEST](/vendor/wasm/WebGL/#FASTEST)
* [FLOAT](/vendor/wasm/WebGL/#FLOAT)
* [FLOAT\_32\_UNSIGNED\_INT\_24\_8\_REV](/vendor/wasm/WebGL/#FLOAT_32_UNSIGNED_INT_24_8_REV)
* [FLOAT\_MAT2](/vendor/wasm/WebGL/#FLOAT_MAT2)
* [FLOAT\_MAT2x3](/vendor/wasm/WebGL/#FLOAT_MAT2x3)
* [FLOAT\_MAT2x4](/vendor/wasm/WebGL/#FLOAT_MAT2x4)
* [FLOAT\_MAT3](/vendor/wasm/WebGL/#FLOAT_MAT3)
* [FLOAT\_MAT3x2](/vendor/wasm/WebGL/#FLOAT_MAT3x2)
* [FLOAT\_MAT3x4](/vendor/wasm/WebGL/#FLOAT_MAT3x4)
* [FLOAT\_MAT4](/vendor/wasm/WebGL/#FLOAT_MAT4)
* [FLOAT\_MAT4x2](/vendor/wasm/WebGL/#FLOAT_MAT4x2)
* [FLOAT\_MAT4x3](/vendor/wasm/WebGL/#FLOAT_MAT4x3)
* [FLOAT\_VEC2](/vendor/wasm/WebGL/#FLOAT_VEC2)
* [FLOAT\_VEC3](/vendor/wasm/WebGL/#FLOAT_VEC3)
* [FLOAT\_VEC4](/vendor/wasm/WebGL/#FLOAT_VEC4)
* [FRAGMENT\_SHADER](/vendor/wasm/WebGL/#FRAGMENT_SHADER)
* [FRAGMENT\_SHADER\_DERIVATIVE\_HINT](/vendor/wasm/WebGL/#FRAGMENT_SHADER_DERIVATIVE_HINT)
* [FRAMEBUFFER](/vendor/wasm/WebGL/#FRAMEBUFFER)
* [FRAMEBUFFER\_ATTACHMENT\_ALPHA\_SIZE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_BLUE\_SIZE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_BLUE_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_COLOR\_ENCODING](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING)
* [FRAMEBUFFER\_ATTACHMENT\_COMPONENT\_TYPE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE)
* [FRAMEBUFFER\_ATTACHMENT\_DEPTH\_SIZE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_GREEN\_SIZE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_GREEN_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_NAME](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_OBJECT_NAME)
* [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_TYPE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE)
* [FRAMEBUFFER\_ATTACHMENT\_RED\_SIZE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_RED_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_STENCIL\_SIZE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE)
* [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_CUBE\_MAP\_FACE](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE)
* [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LAYER](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER)
* [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LEVEL](/vendor/wasm/WebGL/#FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL)
* [FRAMEBUFFER\_BINDING](/vendor/wasm/WebGL/#FRAMEBUFFER_BINDING)
* [FRAMEBUFFER\_COMPLETE](/vendor/wasm/WebGL/#FRAMEBUFFER_COMPLETE)
* [FRAMEBUFFER\_DEFAULT](/vendor/wasm/WebGL/#FRAMEBUFFER_DEFAULT)
* [FRAMEBUFFER\_INCOMPLETE\_ATTACHMENT](/vendor/wasm/WebGL/#FRAMEBUFFER_INCOMPLETE_ATTACHMENT)
* [FRAMEBUFFER\_INCOMPLETE\_DIMENSIONS](/vendor/wasm/WebGL/#FRAMEBUFFER_INCOMPLETE_DIMENSIONS)
* [FRAMEBUFFER\_INCOMPLETE\_MISSING\_ATTACHMENT](/vendor/wasm/WebGL/#FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT)
* [FRAMEBUFFER\_INCOMPLETE\_MULTISAMPLE](/vendor/wasm/WebGL/#FRAMEBUFFER_INCOMPLETE_MULTISAMPLE)
* [FRAMEBUFFER\_UNSUPPORTED](/vendor/wasm/WebGL/#FRAMEBUFFER_UNSUPPORTED)
* [FRONT](/vendor/wasm/WebGL/#FRONT)
* [FRONT\_AND\_BACK](/vendor/wasm/WebGL/#FRONT_AND_BACK)
* [FRONT\_FACE](/vendor/wasm/WebGL/#FRONT_FACE)
* [FUNC\_ADD](/vendor/wasm/WebGL/#FUNC_ADD)
* [FUNC\_REVERSE\_SUBTRACT](/vendor/wasm/WebGL/#FUNC_REVERSE_SUBTRACT)
* [FUNC\_SUBTRACT](/vendor/wasm/WebGL/#FUNC_SUBTRACT)
* [GENERATE\_MIPMAP\_HINT](/vendor/wasm/WebGL/#GENERATE_MIPMAP_HINT)
* [GEQUAL](/vendor/wasm/WebGL/#GEQUAL)
* [GREATER](/vendor/wasm/WebGL/#GREATER)
* [GREEN\_BITS](/vendor/wasm/WebGL/#GREEN_BITS)
* [HALF\_FLOAT](/vendor/wasm/WebGL/#HALF_FLOAT)
* [HIGH\_FLOAT](/vendor/wasm/WebGL/#HIGH_FLOAT)
* [HIGH\_INT](/vendor/wasm/WebGL/#HIGH_INT)
* [IMPLEMENTATION\_COLOR\_READ\_FORMAT](/vendor/wasm/WebGL/#IMPLEMENTATION_COLOR_READ_FORMAT)
* [IMPLEMENTATION\_COLOR\_READ\_TYPE](/vendor/wasm/WebGL/#IMPLEMENTATION_COLOR_READ_TYPE)
* [INCR](/vendor/wasm/WebGL/#INCR)
* [INCR\_WRAP](/vendor/wasm/WebGL/#INCR_WRAP)
* [INT](/vendor/wasm/WebGL/#INT)
* [INTERLEAVED\_ATTRIBS](/vendor/wasm/WebGL/#INTERLEAVED_ATTRIBS)
* [INT\_2\_10\_10\_10\_REV](/vendor/wasm/WebGL/#INT_2_10_10_10_REV)
* [INT\_SAMPLER\_2D](/vendor/wasm/WebGL/#INT_SAMPLER_2D)
* [INT\_SAMPLER\_2D\_ARRAY](/vendor/wasm/WebGL/#INT_SAMPLER_2D_ARRAY)
* [INT\_SAMPLER\_3D](/vendor/wasm/WebGL/#INT_SAMPLER_3D)
* [INT\_SAMPLER\_CUBE](/vendor/wasm/WebGL/#INT_SAMPLER_CUBE)
* [INT\_VEC2](/vendor/wasm/WebGL/#INT_VEC2)
* [INT\_VEC3](/vendor/wasm/WebGL/#INT_VEC3)
* [INT\_VEC4](/vendor/wasm/WebGL/#INT_VEC4)
* [INVALID\_ENUM](/vendor/wasm/WebGL/#INVALID_ENUM)
* [INVALID\_FRAMEBUFFER\_OPERATION](/vendor/wasm/WebGL/#INVALID_FRAMEBUFFER_OPERATION)
* [INVALID\_INDEX](/vendor/wasm/WebGL/#INVALID_INDEX)
* [INVALID\_OPERATION](/vendor/wasm/WebGL/#INVALID_OPERATION)
* [INVALID\_VALUE](/vendor/wasm/WebGL/#INVALID_VALUE)
* [INVERT](/vendor/wasm/WebGL/#INVERT)
* [KEEP](/vendor/wasm/WebGL/#KEEP)
* [LEQUAL](/vendor/wasm/WebGL/#LEQUAL)
* [LESS](/vendor/wasm/WebGL/#LESS)
* [LINEAR](/vendor/wasm/WebGL/#LINEAR)
* [LINEAR\_MIPMAP\_LINEAR](/vendor/wasm/WebGL/#LINEAR_MIPMAP_LINEAR)
* [LINEAR\_MIPMAP\_NEAREST](/vendor/wasm/WebGL/#LINEAR_MIPMAP_NEAREST)
* [LINES](/vendor/wasm/WebGL/#LINES)
* [LINE\_LOOP](/vendor/wasm/WebGL/#LINE_LOOP)
* [LINE\_STRIP](/vendor/wasm/WebGL/#LINE_STRIP)
* [LINE\_WIDTH](/vendor/wasm/WebGL/#LINE_WIDTH)
* [LINK\_STATUS](/vendor/wasm/WebGL/#LINK_STATUS)
* [LOW\_FLOAT](/vendor/wasm/WebGL/#LOW_FLOAT)
* [LOW\_INT](/vendor/wasm/WebGL/#LOW_INT)
* [LUMINANCE](/vendor/wasm/WebGL/#LUMINANCE)
* [LUMINANCE\_ALPHA](/vendor/wasm/WebGL/#LUMINANCE_ALPHA)
* [MAX](/vendor/wasm/WebGL/#MAX)
* [MAX\_3D\_TEXTURE\_SIZE](/vendor/wasm/WebGL/#MAX_3D_TEXTURE_SIZE)
* [MAX\_ARRAY\_TEXTURE\_LAYERS](/vendor/wasm/WebGL/#MAX_ARRAY_TEXTURE_LAYERS)
* [MAX\_CLIENT\_WAIT\_TIMEOUT\_WEBGL](/vendor/wasm/WebGL/#MAX_CLIENT_WAIT_TIMEOUT_WEBGL)
* [MAX\_COLOR\_ATTACHMENTS](/vendor/wasm/WebGL/#MAX_COLOR_ATTACHMENTS)
* [MAX\_COMBINED\_FRAGMENT\_UNIFORM\_COMPONENTS](/vendor/wasm/WebGL/#MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS)
* [MAX\_COMBINED\_TEXTURE\_IMAGE\_UNITS](/vendor/wasm/WebGL/#MAX_COMBINED_TEXTURE_IMAGE_UNITS)
* [MAX\_COMBINED\_UNIFORM\_BLOCKS](/vendor/wasm/WebGL/#MAX_COMBINED_UNIFORM_BLOCKS)
* [MAX\_COMBINED\_VERTEX\_UNIFORM\_COMPONENTS](/vendor/wasm/WebGL/#MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS)
* [MAX\_CUBE\_MAP\_TEXTURE\_SIZE](/vendor/wasm/WebGL/#MAX_CUBE_MAP_TEXTURE_SIZE)
* [MAX\_DRAW\_BUFFERS](/vendor/wasm/WebGL/#MAX_DRAW_BUFFERS)
* [MAX\_ELEMENTS\_INDICES](/vendor/wasm/WebGL/#MAX_ELEMENTS_INDICES)
* [MAX\_ELEMENTS\_VERTICES](/vendor/wasm/WebGL/#MAX_ELEMENTS_VERTICES)
* [MAX\_ELEMENT\_INDEX](/vendor/wasm/WebGL/#MAX_ELEMENT_INDEX)
* [MAX\_FRAGMENT\_INPUT\_COMPONENTS](/vendor/wasm/WebGL/#MAX_FRAGMENT_INPUT_COMPONENTS)
* [MAX\_FRAGMENT\_UNIFORM\_BLOCKS](/vendor/wasm/WebGL/#MAX_FRAGMENT_UNIFORM_BLOCKS)
* [MAX\_FRAGMENT\_UNIFORM\_COMPONENTS](/vendor/wasm/WebGL/#MAX_FRAGMENT_UNIFORM_COMPONENTS)
* [MAX\_FRAGMENT\_UNIFORM\_VECTORS](/vendor/wasm/WebGL/#MAX_FRAGMENT_UNIFORM_VECTORS)
* [MAX\_PROGRAM\_TEXEL\_OFFSET](/vendor/wasm/WebGL/#MAX_PROGRAM_TEXEL_OFFSET)
* [MAX\_RENDERBUFFER\_SIZE](/vendor/wasm/WebGL/#MAX_RENDERBUFFER_SIZE)
* [MAX\_SAMPLES](/vendor/wasm/WebGL/#MAX_SAMPLES)
* [MAX\_SERVER\_WAIT\_TIMEOUT](/vendor/wasm/WebGL/#MAX_SERVER_WAIT_TIMEOUT)
* [MAX\_TEXTURE\_IMAGE\_UNITS](/vendor/wasm/WebGL/#MAX_TEXTURE_IMAGE_UNITS)
* [MAX\_TEXTURE\_LOD\_BIAS](/vendor/wasm/WebGL/#MAX_TEXTURE_LOD_BIAS)
* [MAX\_TEXTURE\_SIZE](/vendor/wasm/WebGL/#MAX_TEXTURE_SIZE)
* [MAX\_TRANSFORM\_FEEDBACK\_INTERLEAVED\_COMPONENTS](/vendor/wasm/WebGL/#MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS)
* [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_ATTRIBS](/vendor/wasm/WebGL/#MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS)
* [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_COMPONENTS](/vendor/wasm/WebGL/#MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS)
* [MAX\_UNIFORM\_BLOCK\_SIZE](/vendor/wasm/WebGL/#MAX_UNIFORM_BLOCK_SIZE)
* [MAX\_UNIFORM\_BUFFER\_BINDINGS](/vendor/wasm/WebGL/#MAX_UNIFORM_BUFFER_BINDINGS)
* [MAX\_VARYING\_COMPONENTS](/vendor/wasm/WebGL/#MAX_VARYING_COMPONENTS)
* [MAX\_VARYING\_VECTORS](/vendor/wasm/WebGL/#MAX_VARYING_VECTORS)
* [MAX\_VERTEX\_ATTRIBS](/vendor/wasm/WebGL/#MAX_VERTEX_ATTRIBS)
* [MAX\_VERTEX\_OUTPUT\_COMPONENTS](/vendor/wasm/WebGL/#MAX_VERTEX_OUTPUT_COMPONENTS)
* [MAX\_VERTEX\_TEXTURE\_IMAGE\_UNITS](/vendor/wasm/WebGL/#MAX_VERTEX_TEXTURE_IMAGE_UNITS)
* [MAX\_VERTEX\_UNIFORM\_BLOCKS](/vendor/wasm/WebGL/#MAX_VERTEX_UNIFORM_BLOCKS)
* [MAX\_VERTEX\_UNIFORM\_COMPONENTS](/vendor/wasm/WebGL/#MAX_VERTEX_UNIFORM_COMPONENTS)
* [MAX\_VERTEX\_UNIFORM\_VECTORS](/vendor/wasm/WebGL/#MAX_VERTEX_UNIFORM_VECTORS)
* [MAX\_VIEWPORT\_DIMS](/vendor/wasm/WebGL/#MAX_VIEWPORT_DIMS)
* [MEDIUM\_FLOAT](/vendor/wasm/WebGL/#MEDIUM_FLOAT)
* [MEDIUM\_INT](/vendor/wasm/WebGL/#MEDIUM_INT)
* [MIN](/vendor/wasm/WebGL/#MIN)
* [MIN\_PROGRAM\_TEXEL\_OFFSET](/vendor/wasm/WebGL/#MIN_PROGRAM_TEXEL_OFFSET)
* [MIRRORED\_REPEAT](/vendor/wasm/WebGL/#MIRRORED_REPEAT)
* [NEAREST](/vendor/wasm/WebGL/#NEAREST)
* [NEAREST\_MIPMAP\_LINEAR](/vendor/wasm/WebGL/#NEAREST_MIPMAP_LINEAR)
* [NEAREST\_MIPMAP\_NEAREST](/vendor/wasm/WebGL/#NEAREST_MIPMAP_NEAREST)
* [NEVER](/vendor/wasm/WebGL/#NEVER)
* [NICEST](/vendor/wasm/WebGL/#NICEST)
* [NONE](/vendor/wasm/WebGL/#NONE)
* [NOTEQUAL](/vendor/wasm/WebGL/#NOTEQUAL)
* [NO\_ERROR](/vendor/wasm/WebGL/#NO_ERROR)
* [OBJECT\_TYPE](/vendor/wasm/WebGL/#OBJECT_TYPE)
* [ONE](/vendor/wasm/WebGL/#ONE)
* [ONE\_MINUS\_CONSTANT\_ALPHA](/vendor/wasm/WebGL/#ONE_MINUS_CONSTANT_ALPHA)
* [ONE\_MINUS\_CONSTANT\_COLOR](/vendor/wasm/WebGL/#ONE_MINUS_CONSTANT_COLOR)
* [ONE\_MINUS\_DST\_ALPHA](/vendor/wasm/WebGL/#ONE_MINUS_DST_ALPHA)
* [ONE\_MINUS\_DST\_COLOR](/vendor/wasm/WebGL/#ONE_MINUS_DST_COLOR)
* [ONE\_MINUS\_SRC\_ALPHA](/vendor/wasm/WebGL/#ONE_MINUS_SRC_ALPHA)
* [ONE\_MINUS\_SRC\_COLOR](/vendor/wasm/WebGL/#ONE_MINUS_SRC_COLOR)
* [OUT\_OF\_MEMORY](/vendor/wasm/WebGL/#OUT_OF_MEMORY)
* [PACK\_ALIGNMENT](/vendor/wasm/WebGL/#PACK_ALIGNMENT)
* [PACK\_ROW\_LENGTH](/vendor/wasm/WebGL/#PACK_ROW_LENGTH)
* [PACK\_SKIP\_PIXELS](/vendor/wasm/WebGL/#PACK_SKIP_PIXELS)
* [PACK\_SKIP\_ROWS](/vendor/wasm/WebGL/#PACK_SKIP_ROWS)
* [PIXEL\_PACK\_BUFFER](/vendor/wasm/WebGL/#PIXEL_PACK_BUFFER)
* [PIXEL\_PACK\_BUFFER\_BINDING](/vendor/wasm/WebGL/#PIXEL_PACK_BUFFER_BINDING)
* [PIXEL\_UNPACK\_BUFFER](/vendor/wasm/WebGL/#PIXEL_UNPACK_BUFFER)
* [PIXEL\_UNPACK\_BUFFER\_BINDING](/vendor/wasm/WebGL/#PIXEL_UNPACK_BUFFER_BINDING)
* [POINTS](/vendor/wasm/WebGL/#POINTS)
* [POLYGON\_OFFSET\_FACTOR](/vendor/wasm/WebGL/#POLYGON_OFFSET_FACTOR)
* [POLYGON\_OFFSET\_FILL](/vendor/wasm/WebGL/#POLYGON_OFFSET_FILL)
* [POLYGON\_OFFSET\_UNITS](/vendor/wasm/WebGL/#POLYGON_OFFSET_UNITS)
* [QUERY\_RESULT](/vendor/wasm/WebGL/#QUERY_RESULT)
* [QUERY\_RESULT\_AVAILABLE](/vendor/wasm/WebGL/#QUERY_RESULT_AVAILABLE)
* [R11F\_G11F\_B10F](/vendor/wasm/WebGL/#R11F_G11F_B10F)
* [R16F](/vendor/wasm/WebGL/#R16F)
* [R16I](/vendor/wasm/WebGL/#R16I)
* [R16UI](/vendor/wasm/WebGL/#R16UI)
* [R32F](/vendor/wasm/WebGL/#R32F)
* [R32I](/vendor/wasm/WebGL/#R32I)
* [R32UI](/vendor/wasm/WebGL/#R32UI)
* [R8](/vendor/wasm/WebGL/#R8)
* [R8I](/vendor/wasm/WebGL/#R8I)
* [R8UI](/vendor/wasm/WebGL/#R8UI)
* [R8\_SNORM](/vendor/wasm/WebGL/#R8_SNORM)
* [RASTERIZER\_DISCARD](/vendor/wasm/WebGL/#RASTERIZER_DISCARD)
* [READ\_BUFFER](/vendor/wasm/WebGL/#READ_BUFFER)
* [READ\_FRAMEBUFFER](/vendor/wasm/WebGL/#READ_FRAMEBUFFER)
* [READ\_FRAMEBUFFER\_BINDING](/vendor/wasm/WebGL/#READ_FRAMEBUFFER_BINDING)
* [RED](/vendor/wasm/WebGL/#RED)
* [RED\_BITS](/vendor/wasm/WebGL/#RED_BITS)
* [RED\_INTEGER](/vendor/wasm/WebGL/#RED_INTEGER)
* [RENDERBUFFER](/vendor/wasm/WebGL/#RENDERBUFFER)
* [RENDERBUFFER\_ALPHA\_SIZE](/vendor/wasm/WebGL/#RENDERBUFFER_ALPHA_SIZE)
* [RENDERBUFFER\_BINDING](/vendor/wasm/WebGL/#RENDERBUFFER_BINDING)
* [RENDERBUFFER\_BLUE\_SIZE](/vendor/wasm/WebGL/#RENDERBUFFER_BLUE_SIZE)
* [RENDERBUFFER\_DEPTH\_SIZE](/vendor/wasm/WebGL/#RENDERBUFFER_DEPTH_SIZE)
* [RENDERBUFFER\_GREEN\_SIZE](/vendor/wasm/WebGL/#RENDERBUFFER_GREEN_SIZE)
* [RENDERBUFFER\_HEIGHT](/vendor/wasm/WebGL/#RENDERBUFFER_HEIGHT)
* [RENDERBUFFER\_INTERNAL\_FORMAT](/vendor/wasm/WebGL/#RENDERBUFFER_INTERNAL_FORMAT)
* [RENDERBUFFER\_RED\_SIZE](/vendor/wasm/WebGL/#RENDERBUFFER_RED_SIZE)
* [RENDERBUFFER\_SAMPLES](/vendor/wasm/WebGL/#RENDERBUFFER_SAMPLES)
* [RENDERBUFFER\_STENCIL\_SIZE](/vendor/wasm/WebGL/#RENDERBUFFER_STENCIL_SIZE)
* [RENDERBUFFER\_WIDTH](/vendor/wasm/WebGL/#RENDERBUFFER_WIDTH)
* [RENDERER](/vendor/wasm/WebGL/#RENDERER)
* [REPEAT](/vendor/wasm/WebGL/#REPEAT)
* [REPLACE](/vendor/wasm/WebGL/#REPLACE)
* [RG](/vendor/wasm/WebGL/#RG)
* [RG16F](/vendor/wasm/WebGL/#RG16F)
* [RG16I](/vendor/wasm/WebGL/#RG16I)
* [RG16UI](/vendor/wasm/WebGL/#RG16UI)
* [RG32F](/vendor/wasm/WebGL/#RG32F)
* [RG32I](/vendor/wasm/WebGL/#RG32I)
* [RG32UI](/vendor/wasm/WebGL/#RG32UI)
* [RG8](/vendor/wasm/WebGL/#RG8)
* [RG8I](/vendor/wasm/WebGL/#RG8I)
* [RG8UI](/vendor/wasm/WebGL/#RG8UI)
* [RG8\_SNORM](/vendor/wasm/WebGL/#RG8_SNORM)
* [RGB](/vendor/wasm/WebGL/#RGB)
* [RGB10\_A2](/vendor/wasm/WebGL/#RGB10_A2)
* [RGB10\_A2UI](/vendor/wasm/WebGL/#RGB10_A2UI)
* [RGB16F](/vendor/wasm/WebGL/#RGB16F)
* [RGB16I](/vendor/wasm/WebGL/#RGB16I)
* [RGB16UI](/vendor/wasm/WebGL/#RGB16UI)
* [RGB32F](/vendor/wasm/WebGL/#RGB32F)
* [RGB32I](/vendor/wasm/WebGL/#RGB32I)
* [RGB32UI](/vendor/wasm/WebGL/#RGB32UI)
* [RGB565](/vendor/wasm/WebGL/#RGB565)
* [RGB5\_A1](/vendor/wasm/WebGL/#RGB5_A1)
* [RGB8](/vendor/wasm/WebGL/#RGB8)
* [RGB8I](/vendor/wasm/WebGL/#RGB8I)
* [RGB8UI](/vendor/wasm/WebGL/#RGB8UI)
* [RGB8\_SNORM](/vendor/wasm/WebGL/#RGB8_SNORM)
* [RGB9\_E5](/vendor/wasm/WebGL/#RGB9_E5)
* [RGBA](/vendor/wasm/WebGL/#RGBA)
* [RGBA16F](/vendor/wasm/WebGL/#RGBA16F)
* [RGBA16I](/vendor/wasm/WebGL/#RGBA16I)
* [RGBA16UI](/vendor/wasm/WebGL/#RGBA16UI)
* [RGBA32F](/vendor/wasm/WebGL/#RGBA32F)
* [RGBA32I](/vendor/wasm/WebGL/#RGBA32I)
* [RGBA32UI](/vendor/wasm/WebGL/#RGBA32UI)
* [RGBA4](/vendor/wasm/WebGL/#RGBA4)
* [RGBA8](/vendor/wasm/WebGL/#RGBA8)
* [RGBA8I](/vendor/wasm/WebGL/#RGBA8I)
* [RGBA8UI](/vendor/wasm/WebGL/#RGBA8UI)
* [RGBA8\_SNORM](/vendor/wasm/WebGL/#RGBA8_SNORM)
* [RGBA\_INTEGER](/vendor/wasm/WebGL/#RGBA_INTEGER)
* [RGB\_INTEGER](/vendor/wasm/WebGL/#RGB_INTEGER)
* [RG\_INTEGER](/vendor/wasm/WebGL/#RG_INTEGER)
* [SAMPLER\_2D](/vendor/wasm/WebGL/#SAMPLER_2D)
* [SAMPLER\_2D\_ARRAY](/vendor/wasm/WebGL/#SAMPLER_2D_ARRAY)
* [SAMPLER\_2D\_ARRAY\_SHADOW](/vendor/wasm/WebGL/#SAMPLER_2D_ARRAY_SHADOW)
* [SAMPLER\_2D\_SHADOW](/vendor/wasm/WebGL/#SAMPLER_2D_SHADOW)
* [SAMPLER\_3D](/vendor/wasm/WebGL/#SAMPLER_3D)
* [SAMPLER\_BINDING](/vendor/wasm/WebGL/#SAMPLER_BINDING)
* [SAMPLER\_CUBE](/vendor/wasm/WebGL/#SAMPLER_CUBE)
* [SAMPLER\_CUBE\_SHADOW](/vendor/wasm/WebGL/#SAMPLER_CUBE_SHADOW)
* [SAMPLES](/vendor/wasm/WebGL/#SAMPLES)
* [SAMPLE\_ALPHA\_TO\_COVERAGE](/vendor/wasm/WebGL/#SAMPLE_ALPHA_TO_COVERAGE)
* [SAMPLE\_BUFFERS](/vendor/wasm/WebGL/#SAMPLE_BUFFERS)
* [SAMPLE\_COVERAGE](/vendor/wasm/WebGL/#SAMPLE_COVERAGE)
* [SAMPLE\_COVERAGE\_INVERT](/vendor/wasm/WebGL/#SAMPLE_COVERAGE_INVERT)
* [SAMPLE\_COVERAGE\_VALUE](/vendor/wasm/WebGL/#SAMPLE_COVERAGE_VALUE)
* [SCISSOR\_BOX](/vendor/wasm/WebGL/#SCISSOR_BOX)
* [SCISSOR\_TEST](/vendor/wasm/WebGL/#SCISSOR_TEST)
* [SEPARATE\_ATTRIBS](/vendor/wasm/WebGL/#SEPARATE_ATTRIBS)
* [SHADER\_TYPE](/vendor/wasm/WebGL/#SHADER_TYPE)
* [SHADING\_LANGUAGE\_VERSION](/vendor/wasm/WebGL/#SHADING_LANGUAGE_VERSION)
* [SHORT](/vendor/wasm/WebGL/#SHORT)
* [SIGNALED](/vendor/wasm/WebGL/#SIGNALED)
* [SIGNED\_NORMALIZED](/vendor/wasm/WebGL/#SIGNED_NORMALIZED)
* [SRC\_ALPHA](/vendor/wasm/WebGL/#SRC_ALPHA)
* [SRC\_ALPHA\_SATURATE](/vendor/wasm/WebGL/#SRC_ALPHA_SATURATE)
* [SRC\_COLOR](/vendor/wasm/WebGL/#SRC_COLOR)
* [SRGB](/vendor/wasm/WebGL/#SRGB)
* [SRGB8](/vendor/wasm/WebGL/#SRGB8)
* [SRGB8\_ALPHA8](/vendor/wasm/WebGL/#SRGB8_ALPHA8)
* [STATIC\_COPY](/vendor/wasm/WebGL/#STATIC_COPY)
* [STATIC\_DRAW](/vendor/wasm/WebGL/#STATIC_DRAW)
* [STATIC\_READ](/vendor/wasm/WebGL/#STATIC_READ)
* [STENCIL](/vendor/wasm/WebGL/#STENCIL)
* [STENCIL\_ATTACHMENT](/vendor/wasm/WebGL/#STENCIL_ATTACHMENT)
* [STENCIL\_BACK\_FAIL](/vendor/wasm/WebGL/#STENCIL_BACK_FAIL)
* [STENCIL\_BACK\_FUNC](/vendor/wasm/WebGL/#STENCIL_BACK_FUNC)
* [STENCIL\_BACK\_PASS\_DEPTH\_FAIL](/vendor/wasm/WebGL/#STENCIL_BACK_PASS_DEPTH_FAIL)
* [STENCIL\_BACK\_PASS\_DEPTH\_PASS](/vendor/wasm/WebGL/#STENCIL_BACK_PASS_DEPTH_PASS)
* [STENCIL\_BACK\_REF](/vendor/wasm/WebGL/#STENCIL_BACK_REF)
* [STENCIL\_BACK\_VALUE\_MASK](/vendor/wasm/WebGL/#STENCIL_BACK_VALUE_MASK)
* [STENCIL\_BACK\_WRITEMASK](/vendor/wasm/WebGL/#STENCIL_BACK_WRITEMASK)
* [STENCIL\_BITS](/vendor/wasm/WebGL/#STENCIL_BITS)
* [STENCIL\_BUFFER\_BIT](/vendor/wasm/WebGL/#STENCIL_BUFFER_BIT)
* [STENCIL\_CLEAR\_VALUE](/vendor/wasm/WebGL/#STENCIL_CLEAR_VALUE)
* [STENCIL\_FAIL](/vendor/wasm/WebGL/#STENCIL_FAIL)
* [STENCIL\_FUNC](/vendor/wasm/WebGL/#STENCIL_FUNC)
* [STENCIL\_INDEX](/vendor/wasm/WebGL/#STENCIL_INDEX)
* [STENCIL\_INDEX8](/vendor/wasm/WebGL/#STENCIL_INDEX8)
* [STENCIL\_PASS\_DEPTH\_FAIL](/vendor/wasm/WebGL/#STENCIL_PASS_DEPTH_FAIL)
* [STENCIL\_PASS\_DEPTH\_PASS](/vendor/wasm/WebGL/#STENCIL_PASS_DEPTH_PASS)
* [STENCIL\_REF](/vendor/wasm/WebGL/#STENCIL_REF)
* [STENCIL\_TEST](/vendor/wasm/WebGL/#STENCIL_TEST)
* [STENCIL\_VALUE\_MASK](/vendor/wasm/WebGL/#STENCIL_VALUE_MASK)
* [STENCIL\_WRITEMASK](/vendor/wasm/WebGL/#STENCIL_WRITEMASK)
* [STREAM\_COPY](/vendor/wasm/WebGL/#STREAM_COPY)
* [STREAM\_DRAW](/vendor/wasm/WebGL/#STREAM_DRAW)
* [STREAM\_READ](/vendor/wasm/WebGL/#STREAM_READ)
* [SUBPIXEL\_BITS](/vendor/wasm/WebGL/#SUBPIXEL_BITS)
* [SYNC\_CONDITION](/vendor/wasm/WebGL/#SYNC_CONDITION)
* [SYNC\_FENCE](/vendor/wasm/WebGL/#SYNC_FENCE)
* [SYNC\_FLAGS](/vendor/wasm/WebGL/#SYNC_FLAGS)
* [SYNC\_FLUSH\_COMMANDS\_BIT](/vendor/wasm/WebGL/#SYNC_FLUSH_COMMANDS_BIT)
* [SYNC\_GPU\_COMMANDS\_COMPLETE](/vendor/wasm/WebGL/#SYNC_GPU_COMMANDS_COMPLETE)
* [SYNC\_STATUS](/vendor/wasm/WebGL/#SYNC_STATUS)
* [TEXTURE](/vendor/wasm/WebGL/#TEXTURE)
* [TEXTURE0](/vendor/wasm/WebGL/#TEXTURE0)
* [TEXTURE1](/vendor/wasm/WebGL/#TEXTURE1)
* [TEXTURE10](/vendor/wasm/WebGL/#TEXTURE10)
* [TEXTURE11](/vendor/wasm/WebGL/#TEXTURE11)
* [TEXTURE12](/vendor/wasm/WebGL/#TEXTURE12)
* [TEXTURE13](/vendor/wasm/WebGL/#TEXTURE13)
* [TEXTURE14](/vendor/wasm/WebGL/#TEXTURE14)
* [TEXTURE15](/vendor/wasm/WebGL/#TEXTURE15)
* [TEXTURE16](/vendor/wasm/WebGL/#TEXTURE16)
* [TEXTURE17](/vendor/wasm/WebGL/#TEXTURE17)
* [TEXTURE18](/vendor/wasm/WebGL/#TEXTURE18)
* [TEXTURE19](/vendor/wasm/WebGL/#TEXTURE19)
* [TEXTURE2](/vendor/wasm/WebGL/#TEXTURE2)
* [TEXTURE20](/vendor/wasm/WebGL/#TEXTURE20)
* [TEXTURE21](/vendor/wasm/WebGL/#TEXTURE21)
* [TEXTURE22](/vendor/wasm/WebGL/#TEXTURE22)
* [TEXTURE23](/vendor/wasm/WebGL/#TEXTURE23)
* [TEXTURE24](/vendor/wasm/WebGL/#TEXTURE24)
* [TEXTURE25](/vendor/wasm/WebGL/#TEXTURE25)
* [TEXTURE26](/vendor/wasm/WebGL/#TEXTURE26)
* [TEXTURE27](/vendor/wasm/WebGL/#TEXTURE27)
* [TEXTURE28](/vendor/wasm/WebGL/#TEXTURE28)
* [TEXTURE29](/vendor/wasm/WebGL/#TEXTURE29)
* [TEXTURE3](/vendor/wasm/WebGL/#TEXTURE3)
* [TEXTURE30](/vendor/wasm/WebGL/#TEXTURE30)
* [TEXTURE31](/vendor/wasm/WebGL/#TEXTURE31)
* [TEXTURE4](/vendor/wasm/WebGL/#TEXTURE4)
* [TEXTURE5](/vendor/wasm/WebGL/#TEXTURE5)
* [TEXTURE6](/vendor/wasm/WebGL/#TEXTURE6)
* [TEXTURE7](/vendor/wasm/WebGL/#TEXTURE7)
* [TEXTURE8](/vendor/wasm/WebGL/#TEXTURE8)
* [TEXTURE9](/vendor/wasm/WebGL/#TEXTURE9)
* [TEXTURE\_2D](/vendor/wasm/WebGL/#TEXTURE_2D)
* [TEXTURE\_2D\_ARRAY](/vendor/wasm/WebGL/#TEXTURE_2D_ARRAY)
* [TEXTURE\_3D](/vendor/wasm/WebGL/#TEXTURE_3D)
* [TEXTURE\_BASE\_LEVEL](/vendor/wasm/WebGL/#TEXTURE_BASE_LEVEL)
* [TEXTURE\_BINDING\_2D](/vendor/wasm/WebGL/#TEXTURE_BINDING_2D)
* [TEXTURE\_BINDING\_2D\_ARRAY](/vendor/wasm/WebGL/#TEXTURE_BINDING_2D_ARRAY)
* [TEXTURE\_BINDING\_3D](/vendor/wasm/WebGL/#TEXTURE_BINDING_3D)
* [TEXTURE\_BINDING\_CUBE\_MAP](/vendor/wasm/WebGL/#TEXTURE_BINDING_CUBE_MAP)
* [TEXTURE\_COMPARE\_FUNC](/vendor/wasm/WebGL/#TEXTURE_COMPARE_FUNC)
* [TEXTURE\_COMPARE\_MODE](/vendor/wasm/WebGL/#TEXTURE_COMPARE_MODE)
* [TEXTURE\_CUBE\_MAP](/vendor/wasm/WebGL/#TEXTURE_CUBE_MAP)
* [TEXTURE\_CUBE\_MAP\_NEGATIVE\_X](/vendor/wasm/WebGL/#TEXTURE_CUBE_MAP_NEGATIVE_X)
* [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Y](/vendor/wasm/WebGL/#TEXTURE_CUBE_MAP_NEGATIVE_Y)
* [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Z](/vendor/wasm/WebGL/#TEXTURE_CUBE_MAP_NEGATIVE_Z)
* [TEXTURE\_CUBE\_MAP\_POSITIVE\_X](/vendor/wasm/WebGL/#TEXTURE_CUBE_MAP_POSITIVE_X)
* [TEXTURE\_CUBE\_MAP\_POSITIVE\_Y](/vendor/wasm/WebGL/#TEXTURE_CUBE_MAP_POSITIVE_Y)
* [TEXTURE\_CUBE\_MAP\_POSITIVE\_Z](/vendor/wasm/WebGL/#TEXTURE_CUBE_MAP_POSITIVE_Z)
* [TEXTURE\_IMMUTABLE\_FORMAT](/vendor/wasm/WebGL/#TEXTURE_IMMUTABLE_FORMAT)
* [TEXTURE\_IMMUTABLE\_LEVELS](/vendor/wasm/WebGL/#TEXTURE_IMMUTABLE_LEVELS)
* [TEXTURE\_MAG\_FILTER](/vendor/wasm/WebGL/#TEXTURE_MAG_FILTER)
* [TEXTURE\_MAX\_LEVEL](/vendor/wasm/WebGL/#TEXTURE_MAX_LEVEL)
* [TEXTURE\_MAX\_LOD](/vendor/wasm/WebGL/#TEXTURE_MAX_LOD)
* [TEXTURE\_MIN\_FILTER](/vendor/wasm/WebGL/#TEXTURE_MIN_FILTER)
* [TEXTURE\_MIN\_LOD](/vendor/wasm/WebGL/#TEXTURE_MIN_LOD)
* [TEXTURE\_WRAP\_R](/vendor/wasm/WebGL/#TEXTURE_WRAP_R)
* [TEXTURE\_WRAP\_S](/vendor/wasm/WebGL/#TEXTURE_WRAP_S)
* [TEXTURE\_WRAP\_T](/vendor/wasm/WebGL/#TEXTURE_WRAP_T)
* [TIMEOUT\_EXPIRED](/vendor/wasm/WebGL/#TIMEOUT_EXPIRED)
* [TRANSFORM\_FEEDBACK](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK)
* [TRANSFORM\_FEEDBACK\_ACTIVE](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_ACTIVE)
* [TRANSFORM\_FEEDBACK\_BINDING](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_BINDING)
* [TRANSFORM\_FEEDBACK\_BUFFER](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_BUFFER)
* [TRANSFORM\_FEEDBACK\_BUFFER\_BINDING](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_BUFFER_BINDING)
* [TRANSFORM\_FEEDBACK\_BUFFER\_MODE](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_BUFFER_MODE)
* [TRANSFORM\_FEEDBACK\_BUFFER\_SIZE](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_BUFFER_SIZE)
* [TRANSFORM\_FEEDBACK\_BUFFER\_START](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_BUFFER_START)
* [TRANSFORM\_FEEDBACK\_PAUSED](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_PAUSED)
* [TRANSFORM\_FEEDBACK\_PRIMITIVES\_WRITTEN](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN)
* [TRANSFORM\_FEEDBACK\_VARYINGS](/vendor/wasm/WebGL/#TRANSFORM_FEEDBACK_VARYINGS)
* [TRIANGLES](/vendor/wasm/WebGL/#TRIANGLES)
* [TRIANGLE\_FAN](/vendor/wasm/WebGL/#TRIANGLE_FAN)
* [TRIANGLE\_STRIP](/vendor/wasm/WebGL/#TRIANGLE_STRIP)
* [UNIFORM\_ARRAY\_STRIDE](/vendor/wasm/WebGL/#UNIFORM_ARRAY_STRIDE)
* [UNIFORM\_BLOCK\_ACTIVE\_UNIFORMS](/vendor/wasm/WebGL/#UNIFORM_BLOCK_ACTIVE_UNIFORMS)
* [UNIFORM\_BLOCK\_ACTIVE\_UNIFORM\_INDICES](/vendor/wasm/WebGL/#UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES)
* [UNIFORM\_BLOCK\_BINDING](/vendor/wasm/WebGL/#UNIFORM_BLOCK_BINDING)
* [UNIFORM\_BLOCK\_DATA\_SIZE](/vendor/wasm/WebGL/#UNIFORM_BLOCK_DATA_SIZE)
* [UNIFORM\_BLOCK\_INDEX](/vendor/wasm/WebGL/#UNIFORM_BLOCK_INDEX)
* [UNIFORM\_BLOCK\_REFERENCED\_BY\_FRAGMENT\_SHADER](/vendor/wasm/WebGL/#UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER)
* [UNIFORM\_BLOCK\_REFERENCED\_BY\_VERTEX\_SHADER](/vendor/wasm/WebGL/#UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER)
* [UNIFORM\_BUFFER](/vendor/wasm/WebGL/#UNIFORM_BUFFER)
* [UNIFORM\_BUFFER\_BINDING](/vendor/wasm/WebGL/#UNIFORM_BUFFER_BINDING)
* [UNIFORM\_BUFFER\_OFFSET\_ALIGNMENT](/vendor/wasm/WebGL/#UNIFORM_BUFFER_OFFSET_ALIGNMENT)
* [UNIFORM\_BUFFER\_SIZE](/vendor/wasm/WebGL/#UNIFORM_BUFFER_SIZE)
* [UNIFORM\_BUFFER\_START](/vendor/wasm/WebGL/#UNIFORM_BUFFER_START)
* [UNIFORM\_IS\_ROW\_MAJOR](/vendor/wasm/WebGL/#UNIFORM_IS_ROW_MAJOR)
* [UNIFORM\_MATRIX\_STRIDE](/vendor/wasm/WebGL/#UNIFORM_MATRIX_STRIDE)
* [UNIFORM\_OFFSET](/vendor/wasm/WebGL/#UNIFORM_OFFSET)
* [UNIFORM\_SIZE](/vendor/wasm/WebGL/#UNIFORM_SIZE)
* [UNIFORM\_TYPE](/vendor/wasm/WebGL/#UNIFORM_TYPE)
* [UNPACK\_ALIGNMENT](/vendor/wasm/WebGL/#UNPACK_ALIGNMENT)
* [UNPACK\_COLORSPACE\_CONVERSION\_WEBGL](/vendor/wasm/WebGL/#UNPACK_COLORSPACE_CONVERSION_WEBGL)
* [UNPACK\_FLIP\_Y\_WEBGL](/vendor/wasm/WebGL/#UNPACK_FLIP_Y_WEBGL)
* [UNPACK\_IMAGE\_HEIGHT](/vendor/wasm/WebGL/#UNPACK_IMAGE_HEIGHT)
* [UNPACK\_PREMULTIPLY\_ALPHA\_WEBGL](/vendor/wasm/WebGL/#UNPACK_PREMULTIPLY_ALPHA_WEBGL)
* [UNPACK\_ROW\_LENGTH](/vendor/wasm/WebGL/#UNPACK_ROW_LENGTH)
* [UNPACK\_SKIP\_IMAGES](/vendor/wasm/WebGL/#UNPACK_SKIP_IMAGES)
* [UNPACK\_SKIP\_PIXELS](/vendor/wasm/WebGL/#UNPACK_SKIP_PIXELS)
* [UNPACK\_SKIP\_ROWS](/vendor/wasm/WebGL/#UNPACK_SKIP_ROWS)
* [UNSIGNALED](/vendor/wasm/WebGL/#UNSIGNALED)
* [UNSIGNED\_BYTE](/vendor/wasm/WebGL/#UNSIGNED_BYTE)
* [UNSIGNED\_INT](/vendor/wasm/WebGL/#UNSIGNED_INT)
* [UNSIGNED\_INT\_10F\_11F\_11F\_REV](/vendor/wasm/WebGL/#UNSIGNED_INT_10F_11F_11F_REV)
* [UNSIGNED\_INT\_24\_8](/vendor/wasm/WebGL/#UNSIGNED_INT_24_8)
* [UNSIGNED\_INT\_2\_10\_10\_10\_REV](/vendor/wasm/WebGL/#UNSIGNED_INT_2_10_10_10_REV)
* [UNSIGNED\_INT\_5\_9\_9\_9\_REV](/vendor/wasm/WebGL/#UNSIGNED_INT_5_9_9_9_REV)
* [UNSIGNED\_INT\_SAMPLER\_2D](/vendor/wasm/WebGL/#UNSIGNED_INT_SAMPLER_2D)
* [UNSIGNED\_INT\_SAMPLER\_2D\_ARRAY](/vendor/wasm/WebGL/#UNSIGNED_INT_SAMPLER_2D_ARRAY)
* [UNSIGNED\_INT\_SAMPLER\_3D](/vendor/wasm/WebGL/#UNSIGNED_INT_SAMPLER_3D)
* [UNSIGNED\_INT\_SAMPLER\_CUBE](/vendor/wasm/WebGL/#UNSIGNED_INT_SAMPLER_CUBE)
* [UNSIGNED\_INT\_VEC2](/vendor/wasm/WebGL/#UNSIGNED_INT_VEC2)
* [UNSIGNED\_INT\_VEC3](/vendor/wasm/WebGL/#UNSIGNED_INT_VEC3)
* [UNSIGNED\_INT\_VEC4](/vendor/wasm/WebGL/#UNSIGNED_INT_VEC4)
* [UNSIGNED\_NORMALIZED](/vendor/wasm/WebGL/#UNSIGNED_NORMALIZED)
* [UNSIGNED\_SHORT](/vendor/wasm/WebGL/#UNSIGNED_SHORT)
* [UNSIGNED\_SHORT\_4\_4\_4\_4](/vendor/wasm/WebGL/#UNSIGNED_SHORT_4_4_4_4)
* [UNSIGNED\_SHORT\_5\_5\_5\_1](/vendor/wasm/WebGL/#UNSIGNED_SHORT_5_5_5_1)
* [UNSIGNED\_SHORT\_5\_6\_5](/vendor/wasm/WebGL/#UNSIGNED_SHORT_5_6_5)
* [VALIDATE\_STATUS](/vendor/wasm/WebGL/#VALIDATE_STATUS)
* [VENDOR](/vendor/wasm/WebGL/#VENDOR)
* [VERSION](/vendor/wasm/WebGL/#VERSION)
* [VERTEX\_ARRAY\_BINDING](/vendor/wasm/WebGL/#VERTEX_ARRAY_BINDING)
* [VERTEX\_ATTRIB\_ARRAY\_BUFFER\_BINDING](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_BUFFER_BINDING)
* [VERTEX\_ATTRIB\_ARRAY\_DIVISOR](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_DIVISOR)
* [VERTEX\_ATTRIB\_ARRAY\_ENABLED](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_ENABLED)
* [VERTEX\_ATTRIB\_ARRAY\_INTEGER](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_INTEGER)
* [VERTEX\_ATTRIB\_ARRAY\_NORMALIZED](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_NORMALIZED)
* [VERTEX\_ATTRIB\_ARRAY\_POINTER](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_POINTER)
* [VERTEX\_ATTRIB\_ARRAY\_SIZE](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_SIZE)
* [VERTEX\_ATTRIB\_ARRAY\_STRIDE](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_STRIDE)
* [VERTEX\_ATTRIB\_ARRAY\_TYPE](/vendor/wasm/WebGL/#VERTEX_ATTRIB_ARRAY_TYPE)
* [VERTEX\_SHADER](/vendor/wasm/WebGL/#VERTEX_SHADER)
* [VIEWPORT](/vendor/wasm/WebGL/#VIEWPORT)
* [WAIT\_FAILED](/vendor/wasm/WebGL/#WAIT_FAILED)
* [ZERO](/vendor/wasm/WebGL/#ZERO)

### [Framebuffer ¶](#Framebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L11)

```
Framebuffer :: distinct u32
```

##### Related Procedures With Parameters

* [BindFramebuffer](/vendor/wasm/WebGL/#BindFramebuffer)
* [DeleteFramebuffer](/vendor/wasm/WebGL/#DeleteFramebuffer)
* [IsFramebuffer](/vendor/wasm/WebGL/#IsFramebuffer)



##### Related Procedures With Returns

* [CreateFramebuffer](/vendor/wasm/WebGL/#CreateFramebuffer)

### [Program ¶](#Program) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L12)

```
Program :: distinct u32
```

##### Related Procedures With Parameters

* [AttachShader](/vendor/wasm/WebGL/#AttachShader)
* [BindAttribLocation](/vendor/wasm/WebGL/#BindAttribLocation)
* [DeleteProgram](/vendor/wasm/WebGL/#DeleteProgram)
* [DetachShader](/vendor/wasm/WebGL/#DetachShader)
* [GetActiveAttribAlloc](/vendor/wasm/WebGL/#GetActiveAttribAlloc)
* [GetActiveAttribBuf](/vendor/wasm/WebGL/#GetActiveAttribBuf)
* [GetActiveUniformAlloc](/vendor/wasm/WebGL/#GetActiveUniformAlloc)
* [GetActiveUniformBlockNameAlloc](/vendor/wasm/WebGL/#GetActiveUniformBlockNameAlloc)
* [GetActiveUniformBlockNameBuf](/vendor/wasm/WebGL/#GetActiveUniformBlockNameBuf)
* [GetActiveUniformBlockParameter](/vendor/wasm/WebGL/#GetActiveUniformBlockParameter)
* [GetActiveUniformBuf](/vendor/wasm/WebGL/#GetActiveUniformBuf)
* [GetActiveUniforms](/vendor/wasm/WebGL/#GetActiveUniforms)
* [GetAttribLocation](/vendor/wasm/WebGL/#GetAttribLocation)
* [GetFragDataLocation](/vendor/wasm/WebGL/#GetFragDataLocation)
* [GetProgramInfoLog](/vendor/wasm/WebGL/#GetProgramInfoLog)
* [GetProgramParameter](/vendor/wasm/WebGL/#GetProgramParameter)
* [GetUniformBlockIndex](/vendor/wasm/WebGL/#GetUniformBlockIndex)
* [GetUniformLocation](/vendor/wasm/WebGL/#GetUniformLocation)
* [IsProgram](/vendor/wasm/WebGL/#IsProgram)
* [LinkProgram](/vendor/wasm/WebGL/#LinkProgram)
* [TransformFeedbackVaryings](/vendor/wasm/WebGL/#TransformFeedbackVaryings)
* [UniformBlockBinding](/vendor/wasm/WebGL/#UniformBlockBinding)
* [UseProgram](/vendor/wasm/WebGL/#UseProgram)
* [ValidateProgram](/vendor/wasm/WebGL/#ValidateProgram)
* [GetActiveAttrib](/vendor/wasm/WebGL/#GetActiveAttrib) *(procedure groups)*
* [GetActiveUniform](/vendor/wasm/WebGL/#GetActiveUniform) *(procedure groups)*
* [GetActiveUniformBlockName](/vendor/wasm/WebGL/#GetActiveUniformBlockName) *(procedure groups)*



##### Related Procedures With Returns

* [CreateProgram](/vendor/wasm/WebGL/#CreateProgram)
* [CreateProgramFromStrings](/vendor/wasm/WebGL/#CreateProgramFromStrings)

### [Query ¶](#Query) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L9)

```
Query :: distinct u32
```

##### Related Procedures With Parameters

* [BeginQuery](/vendor/wasm/WebGL/#BeginQuery)
* [DeleteQuery](/vendor/wasm/WebGL/#DeleteQuery)
* [IsQuery](/vendor/wasm/WebGL/#IsQuery)



##### Related Procedures With Returns

* [CreateQuery](/vendor/wasm/WebGL/#CreateQuery)

### [Renderbuffer ¶](#Renderbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L13)

```
Renderbuffer :: distinct u32
```

##### Related Procedures With Parameters

* [BindRenderbuffer](/vendor/wasm/WebGL/#BindRenderbuffer)
* [DeleteRenderbuffer](/vendor/wasm/WebGL/#DeleteRenderbuffer)
* [FramebufferRenderbuffer](/vendor/wasm/WebGL/#FramebufferRenderbuffer)
* [IsRenderbuffer](/vendor/wasm/WebGL/#IsRenderbuffer)



##### Related Procedures With Returns

* [CreateRenderbuffer](/vendor/wasm/WebGL/#CreateRenderbuffer)

### [Sampler ¶](#Sampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L10)

```
Sampler :: distinct u32
```

##### Related Procedures With Parameters

* [BindSampler](/vendor/wasm/WebGL/#BindSampler)
* [DeleteSampler](/vendor/wasm/WebGL/#DeleteSampler)
* [IsSampler](/vendor/wasm/WebGL/#IsSampler)
* [SamplerParameterf](/vendor/wasm/WebGL/#SamplerParameterf)
* [SamplerParameteri](/vendor/wasm/WebGL/#SamplerParameteri)



##### Related Procedures With Returns

* [CreateSampler](/vendor/wasm/WebGL/#CreateSampler)

### [Shader ¶](#Shader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L14)

```
Shader :: distinct u32
```

##### Related Procedures With Parameters

* [AttachShader](/vendor/wasm/WebGL/#AttachShader)
* [CompileShader](/vendor/wasm/WebGL/#CompileShader)
* [DeleteShader](/vendor/wasm/WebGL/#DeleteShader)
* [DetachShader](/vendor/wasm/WebGL/#DetachShader)
* [GetShaderInfoLog](/vendor/wasm/WebGL/#GetShaderInfoLog)
* [GetShaderiv](/vendor/wasm/WebGL/#GetShaderiv)
* [IsShader](/vendor/wasm/WebGL/#IsShader)
* [ShaderSource](/vendor/wasm/WebGL/#ShaderSource)



##### Related Procedures With Returns

* [CreateShader](/vendor/wasm/WebGL/#CreateShader)

### [Sync ¶](#Sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L11)

```
Sync :: distinct u32
```

##### Related Procedures With Parameters

* [ClientWaitSync](/vendor/wasm/WebGL/#ClientWaitSync)
* [DeleteSync](/vendor/wasm/WebGL/#DeleteSync)
* [IsSync](/vendor/wasm/WebGL/#IsSync)
* [WaitSync](/vendor/wasm/WebGL/#WaitSync)



##### Related Procedures With Returns

* [FenceSync](/vendor/wasm/WebGL/#FenceSync)

### [Texture ¶](#Texture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L15)

```
Texture :: distinct u32
```

##### Related Procedures With Parameters

* [BindTexture](/vendor/wasm/WebGL/#BindTexture)
* [DeleteTexture](/vendor/wasm/WebGL/#DeleteTexture)
* [FramebufferTexture2D](/vendor/wasm/WebGL/#FramebufferTexture2D)
* [FramebufferTextureLayer](/vendor/wasm/WebGL/#FramebufferTextureLayer)
* [IsTexture](/vendor/wasm/WebGL/#IsTexture)



##### Related Procedures With Returns

* [CreateTexture](/vendor/wasm/WebGL/#CreateTexture)

### [TransformFeedback ¶](#TransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L12)

```
TransformFeedback :: distinct u32
```

##### Related Procedures With Parameters

* [BindTransformFeedback](/vendor/wasm/WebGL/#BindTransformFeedback)
* [DeleteTransformFeedback](/vendor/wasm/WebGL/#DeleteTransformFeedback)
* [IsTransformFeedback](/vendor/wasm/WebGL/#IsTransformFeedback)



##### Related Procedures With Returns

* [CreateTransformFeedback](/vendor/wasm/WebGL/#CreateTransformFeedback)

### [VertexArrayObject ¶](#VertexArrayObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L13)

```
VertexArrayObject :: distinct u32
```

##### Related Procedures With Parameters

* [BindVertexArray](/vendor/wasm/WebGL/#BindVertexArray)
* [DeleteVertexArray](/vendor/wasm/WebGL/#DeleteVertexArray)
* [IsVertexArray](/vendor/wasm/WebGL/#IsVertexArray)



##### Related Procedures With Returns

* [CreateVertexArray](/vendor/wasm/WebGL/#CreateVertexArray)

## Constants

### [ACTIVE\_ATTRIBUTES ¶](#ACTIVE_ATTRIBUTES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L227)

```
ACTIVE_ATTRIBUTES :: Enum(0x8B89)
```

### [ACTIVE\_TEXTURE ¶](#ACTIVE_TEXTURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L321)

```
ACTIVE_TEXTURE :: Enum(0x84E0)
```

### [ACTIVE\_UNIFORMS ¶](#ACTIVE_UNIFORMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L226)

```
ACTIVE_UNIFORMS :: Enum(0x8B86)
```

### [ACTIVE\_UNIFORM\_BLOCKS ¶](#ACTIVE_UNIFORM_BLOCKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L220)

```
ACTIVE_UNIFORM_BLOCKS :: Enum(0x8A36)
```

### [ALIASED\_LINE\_WIDTH\_RANGE ¶](#ALIASED_LINE_WIDTH_RANGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L125)

```
ALIASED_LINE_WIDTH_RANGE :: Enum(0x846E)
```

### [ALIASED\_POINT\_SIZE\_RANGE ¶](#ALIASED_POINT_SIZE_RANGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L124)

```
ALIASED_POINT_SIZE_RANGE :: Enum(0x846D)
```

### [ALPHA ¶](#ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L199)

```
ALPHA :: Enum(0x1906)
```

### [ALPHA\_BITS ¶](#ALPHA_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L160)

```
ALPHA_BITS :: Enum(0x0D55)
```

### [ALREADY\_SIGNALED ¶](#ALREADY_SIGNALED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L246)

```
ALREADY_SIGNALED :: Enum(0x911A)
```

### [ALWAYS ¶](#ALWAYS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L239)

```
ALWAYS :: Enum(0x0207)
```

### [ANY\_SAMPLES\_PASSED ¶](#ANY_SAMPLES_PASSED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L252)

```
ANY_SAMPLES_PASSED :: Enum(0x8C2F)
```

### [ANY\_SAMPLES\_PASSED\_CONSERVATIVE ¶](#ANY_SAMPLES_PASSED_CONSERVATIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L253)

```
ANY_SAMPLES_PASSED_CONSERVATIVE :: Enum(0x8D6A)
```

### [ARRAY\_BUFFER ¶](#ARRAY_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L70)

```
ARRAY_BUFFER :: Enum(0x8892)
```

 

Buffer Objects

### [ARRAY\_BUFFER\_BINDING ¶](#ARRAY_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L72)

```
ARRAY_BUFFER_BINDING :: Enum(0x8894)
```

### [ATTACHED\_SHADERS ¶](#ATTACHED_SHADERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L225)

```
ATTACHED_SHADERS :: Enum(0x8B85)
```

### [BACK ¶](#BACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L86)

```
BACK :: Enum(0x0405)
```

### [BLEND ¶](#BLEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L102)

```
BLEND :: Enum(0x0BE2)
```

### [BLEND\_COLOR ¶](#BLEND_COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L67)

```
BLEND_COLOR :: Enum(0x8005)
```

### [BLEND\_DST\_ALPHA ¶](#BLEND_DST_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L61)

```
BLEND_DST_ALPHA :: Enum(0x80CA)
```

### [BLEND\_DST\_RGB ¶](#BLEND_DST_RGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L59)

```
BLEND_DST_RGB :: Enum(0x80C8)
```

 

Separate Blend Functions

### [BLEND\_EQUATION ¶](#BLEND_EQUATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L50)

```
BLEND_EQUATION :: Enum(0x8009)
```

### [BLEND\_EQUATION\_ALPHA ¶](#BLEND_EQUATION_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L52)

```
BLEND_EQUATION_ALPHA :: Enum(0x883D)
```

### [BLEND\_EQUATION\_RGB ¶](#BLEND_EQUATION_RGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L51)

```
BLEND_EQUATION_RGB :: Enum(0x8009)
```

### [BLEND\_SRC\_ALPHA ¶](#BLEND_SRC_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L62)

```
BLEND_SRC_ALPHA :: Enum(0x80CB)
```

### [BLEND\_SRC\_RGB ¶](#BLEND_SRC_RGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L60)

```
BLEND_SRC_RGB :: Enum(0x80C9)
```

### [BLUE\_BITS ¶](#BLUE_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L159)

```
BLUE_BITS :: Enum(0x0D54)
```

### [BOOL ¶](#BOOL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L335)

```
BOOL :: Enum(0x8B56)
```

### [BOOL\_VEC2 ¶](#BOOL_VEC2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L336)

```
BOOL_VEC2 :: Enum(0x8B57)
```

### [BOOL\_VEC3 ¶](#BOOL_VEC3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L337)

```
BOOL_VEC3 :: Enum(0x8B58)
```

### [BOOL\_VEC4 ¶](#BOOL_VEC4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L338)

```
BOOL_VEC4 :: Enum(0x8B59)
```

### [BROWSER\_DEFAULT\_WEBGL ¶](#BROWSER_DEFAULT_WEBGL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L420)

```
BROWSER_DEFAULT_WEBGL :: Enum(0x9244)
```

### [BUFFER\_SIZE ¶](#BUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L79)

```
BUFFER_SIZE :: Enum(0x8764)
```

### [BUFFER\_USAGE ¶](#BUFFER_USAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L80)

```
BUFFER_USAGE :: Enum(0x8765)
```

### [BYTE ¶](#BYTE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L189)

```
BYTE :: Enum(0x1400)
```

 

DataType

### [CCW ¶](#CCW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L120)

```
CCW :: Enum(0x0901)
```

### [CLAMP\_TO\_EDGE ¶](#CLAMP_TO_EDGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L325)

```
CLAMP_TO_EDGE :: Enum(0x812F)
```

### [COLOR ¶](#COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L10)

```
COLOR :: Enum(0x1800)
```

### [COLOR\_ATTACHMENT0 ¶](#COLOR_ATTACHMENT0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L396)

```
COLOR_ATTACHMENT0 :: Enum(0x8CE0)
```

### [COLOR\_ATTACHMENT1 ¶](#COLOR_ATTACHMENT1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L160)

```
COLOR_ATTACHMENT1 :: Enum(0x8CE1)
```

### [COLOR\_ATTACHMENT10 ¶](#COLOR_ATTACHMENT10) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L169)

```
COLOR_ATTACHMENT10 :: Enum(0x8CEA)
```

### [COLOR\_ATTACHMENT11 ¶](#COLOR_ATTACHMENT11) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L170)

```
COLOR_ATTACHMENT11 :: Enum(0x8CEB)
```

### [COLOR\_ATTACHMENT12 ¶](#COLOR_ATTACHMENT12) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L171)

```
COLOR_ATTACHMENT12 :: Enum(0x8CEC)
```

### [COLOR\_ATTACHMENT13 ¶](#COLOR_ATTACHMENT13) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L172)

```
COLOR_ATTACHMENT13 :: Enum(0x8CED)
```

### [COLOR\_ATTACHMENT14 ¶](#COLOR_ATTACHMENT14) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L173)

```
COLOR_ATTACHMENT14 :: Enum(0x8CEE)
```

### [COLOR\_ATTACHMENT15 ¶](#COLOR_ATTACHMENT15) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L174)

```
COLOR_ATTACHMENT15 :: Enum(0x8CEF)
```

### [COLOR\_ATTACHMENT2 ¶](#COLOR_ATTACHMENT2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L161)

```
COLOR_ATTACHMENT2 :: Enum(0x8CE2)
```

### [COLOR\_ATTACHMENT3 ¶](#COLOR_ATTACHMENT3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L162)

```
COLOR_ATTACHMENT3 :: Enum(0x8CE3)
```

### [COLOR\_ATTACHMENT4 ¶](#COLOR_ATTACHMENT4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L163)

```
COLOR_ATTACHMENT4 :: Enum(0x8CE4)
```

### [COLOR\_ATTACHMENT5 ¶](#COLOR_ATTACHMENT5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L164)

```
COLOR_ATTACHMENT5 :: Enum(0x8CE5)
```

### [COLOR\_ATTACHMENT6 ¶](#COLOR_ATTACHMENT6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L165)

```
COLOR_ATTACHMENT6 :: Enum(0x8CE6)
```

### [COLOR\_ATTACHMENT7 ¶](#COLOR_ATTACHMENT7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L166)

```
COLOR_ATTACHMENT7 :: Enum(0x8CE7)
```

### [COLOR\_ATTACHMENT8 ¶](#COLOR_ATTACHMENT8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L167)

```
COLOR_ATTACHMENT8 :: Enum(0x8CE8)
```

### [COLOR\_ATTACHMENT9 ¶](#COLOR_ATTACHMENT9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L168)

```
COLOR_ATTACHMENT9 :: Enum(0x8CE9)
```

### [COLOR\_BUFFER\_BIT ¶](#COLOR_BUFFER_BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L6)

```
COLOR_BUFFER_BIT :: Enum(0x00004000)
```

### [COLOR\_CLEAR\_VALUE ¶](#COLOR_CLEAR_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L150)

```
COLOR_CLEAR_VALUE :: Enum(0x0C22)
```

 

SCISSOR\_TEST

### [COLOR\_WRITEMASK ¶](#COLOR_WRITEMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L151)

```
COLOR_WRITEMASK :: Enum(0x0C23)
```

### [COMPARE\_REF\_TO\_TEXTURE ¶](#COMPARE_REF_TO_TEXTURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L80)

```
COMPARE_REF_TO_TEXTURE :: Enum(0x884E)
```

### [COMPILE\_STATUS ¶](#COMPILE_STATUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L359)

```
COMPILE_STATUS :: Enum(0x8B81)
```

 

Shader Source

### [COMPRESSED\_TEXTURE\_FORMATS ¶](#COMPRESSED_TEXTURE_FORMATS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L178)

```
COMPRESSED_TEXTURE_FORMATS :: Enum(0x86A3)
```

### [CONDITION\_SATISFIED ¶](#CONDITION_SATISFIED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L248)

```
CONDITION_SATISFIED :: Enum(0x911C)
```

### [CONSTANT\_ALPHA ¶](#CONSTANT_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L65)

```
CONSTANT_ALPHA :: Enum(0x8003)
```

### [CONSTANT\_COLOR ¶](#CONSTANT_COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L63)

```
CONSTANT_COLOR :: Enum(0x8001)
```

### [CONTEXT\_LOST\_WEBGL ¶](#CONTEXT_LOST_WEBGL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L418)

```
CONTEXT_LOST_WEBGL :: Enum(0x9242)
```

### [COPY\_READ\_BUFFER ¶](#COPY_READ_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L204)

```
COPY_READ_BUFFER :: Enum(0x8F36)
```

### [COPY\_READ\_BUFFER\_BINDING ¶](#COPY_READ_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L206)

```
COPY_READ_BUFFER_BINDING: Enum : COPY_READ_BUFFER
```

 

Same as COPY\_READ\_BUFFER

### [COPY\_WRITE\_BUFFER ¶](#COPY_WRITE_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L205)

```
COPY_WRITE_BUFFER :: Enum(0x8F37)
```

### [COPY\_WRITE\_BUFFER\_BINDING ¶](#COPY_WRITE_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L207)

```
COPY_WRITE_BUFFER_BINDING: Enum : COPY_WRITE_BUFFER
```

 

Same as COPY\_WRITE\_BUFFER

### [CULL\_FACE ¶](#CULL_FACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L101)

```
CULL_FACE :: Enum(0x0B44)
```

 

EnableCap
TEXTURE\_2D

### [CULL\_FACE\_MODE ¶](#CULL_FACE_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L126)

```
CULL_FACE_MODE :: Enum(0x0B45)
```

### [CURRENT\_PROGRAM ¶](#CURRENT_PROGRAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L229)

```
CURRENT_PROGRAM :: Enum(0x8B8D)
```

### [CURRENT\_QUERY ¶](#CURRENT_QUERY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L36)

```
CURRENT_QUERY :: Enum(0x8865)
```

### [CURRENT\_VERTEX\_ATTRIB ¶](#CURRENT_VERTEX_ATTRIB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L82)

```
CURRENT_VERTEX_ATTRIB :: Enum(0x8626)
```

### [CW ¶](#CW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L119)

```
CW :: Enum(0x0900)
```

 

FrontFaceDirection

### [DECR ¶](#DECR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L246)

```
DECR :: Enum(0x1E03)
```

### [DECR\_WRAP ¶](#DECR_WRAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L249)

```
DECR_WRAP :: Enum(0x8508)
```

### [DEFAULT\_CONTEXT\_ATTRIBUTES ¶](#DEFAULT_CONTEXT_ATTRIBUTES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L35)

```
DEFAULT_CONTEXT_ATTRIBUTES :: ContextAttributes{}
```

### [DELETE\_STATUS ¶](#DELETE_STATUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L222)

```
DELETE_STATUS :: Enum(0x8B80)
```

### [DEPTH ¶](#DEPTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L11)

```
DEPTH :: Enum(0x1801)
```

### [DEPTH24\_STENCIL8 ¶](#DEPTH24_STENCIL8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L151)

```
DEPTH24_STENCIL8 :: Enum(0x88F0)
```

### [DEPTH32F\_STENCIL8 ¶](#DEPTH32F_STENCIL8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L139)

```
DEPTH32F_STENCIL8 :: Enum(0x8CAD)
```

### [DEPTH\_ATTACHMENT ¶](#DEPTH_ATTACHMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L397)

```
DEPTH_ATTACHMENT :: Enum(0x8D00)
```

### [DEPTH\_BITS ¶](#DEPTH_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L161)

```
DEPTH_BITS :: Enum(0x0D56)
```

### [DEPTH\_BUFFER\_BIT ¶](#DEPTH_BUFFER_BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L4)

```
DEPTH_BUFFER_BIT :: Enum(0x00000100)
```

 

ClearBufferMask

### [DEPTH\_CLEAR\_VALUE ¶](#DEPTH_CLEAR_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L130)

```
DEPTH_CLEAR_VALUE :: Enum(0x0B73)
```

### [DEPTH\_COMPONENT ¶](#DEPTH_COMPONENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L198)

```
DEPTH_COMPONENT :: Enum(0x1902)
```

 

PixelFormat

### [DEPTH\_COMPONENT16 ¶](#DEPTH_COMPONENT16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L376)

```
DEPTH_COMPONENT16 :: Enum(0x81A5)
```

### [DEPTH\_COMPONENT24 ¶](#DEPTH_COMPONENT24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L32)

```
DEPTH_COMPONENT24 :: Enum(0x81A6)
```

### [DEPTH\_COMPONENT32F ¶](#DEPTH_COMPONENT32F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L138)

```
DEPTH_COMPONENT32F :: Enum(0x8CAC)
```

### [DEPTH\_FUNC ¶](#DEPTH_FUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L131)

```
DEPTH_FUNC :: Enum(0x0B74)
```

### [DEPTH\_RANGE ¶](#DEPTH_RANGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L128)

```
DEPTH_RANGE :: Enum(0x0B70)
```

### [DEPTH\_STENCIL ¶](#DEPTH_STENCIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L379)

```
DEPTH_STENCIL :: Enum(0x84F9)
```

### [DEPTH\_STENCIL\_ATTACHMENT ¶](#DEPTH_STENCIL_ATTACHMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L399)

```
DEPTH_STENCIL_ATTACHMENT :: Enum(0x821A)
```

### [DEPTH\_TEST ¶](#DEPTH_TEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L105)

```
DEPTH_TEST :: Enum(0x0B71)
```

### [DEPTH\_WRITEMASK ¶](#DEPTH_WRITEMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L129)

```
DEPTH_WRITEMASK :: Enum(0x0B72)
```

### [DITHER ¶](#DITHER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L103)

```
DITHER :: Enum(0x0BD0)
```

### [DONT\_CARE ¶](#DONT_CARE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L181)

```
DONT_CARE :: Enum(0x1100)
```

 

HintMode

### [DRAW\_BUFFER0 ¶](#DRAW_BUFFER0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L46)

```
DRAW_BUFFER0 :: Enum(0x8825)
```

### [DRAW\_BUFFER1 ¶](#DRAW_BUFFER1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L47)

```
DRAW_BUFFER1 :: Enum(0x8826)
```

### [DRAW\_BUFFER10 ¶](#DRAW_BUFFER10) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L56)

```
DRAW_BUFFER10 :: Enum(0x882F)
```

### [DRAW\_BUFFER11 ¶](#DRAW_BUFFER11) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L57)

```
DRAW_BUFFER11 :: Enum(0x8830)
```

### [DRAW\_BUFFER12 ¶](#DRAW_BUFFER12) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L58)

```
DRAW_BUFFER12 :: Enum(0x8831)
```

### [DRAW\_BUFFER13 ¶](#DRAW_BUFFER13) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L59)

```
DRAW_BUFFER13 :: Enum(0x8832)
```

### [DRAW\_BUFFER14 ¶](#DRAW_BUFFER14) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L60)

```
DRAW_BUFFER14 :: Enum(0x8833)
```

### [DRAW\_BUFFER15 ¶](#DRAW_BUFFER15) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L61)

```
DRAW_BUFFER15 :: Enum(0x8834)
```

### [DRAW\_BUFFER2 ¶](#DRAW_BUFFER2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L48)

```
DRAW_BUFFER2 :: Enum(0x8827)
```

### [DRAW\_BUFFER3 ¶](#DRAW_BUFFER3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L49)

```
DRAW_BUFFER3 :: Enum(0x8828)
```

### [DRAW\_BUFFER4 ¶](#DRAW_BUFFER4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L50)

```
DRAW_BUFFER4 :: Enum(0x8829)
```

### [DRAW\_BUFFER5 ¶](#DRAW_BUFFER5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L51)

```
DRAW_BUFFER5 :: Enum(0x882A)
```

### [DRAW\_BUFFER6 ¶](#DRAW_BUFFER6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L52)

```
DRAW_BUFFER6 :: Enum(0x882B)
```

### [DRAW\_BUFFER7 ¶](#DRAW_BUFFER7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L53)

```
DRAW_BUFFER7 :: Enum(0x882C)
```

### [DRAW\_BUFFER8 ¶](#DRAW_BUFFER8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L54)

```
DRAW_BUFFER8 :: Enum(0x882D)
```

### [DRAW\_BUFFER9 ¶](#DRAW_BUFFER9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L55)

```
DRAW_BUFFER9 :: Enum(0x882E)
```

### [DRAW\_FRAMEBUFFER ¶](#DRAW_FRAMEBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L155)

```
DRAW_FRAMEBUFFER :: Enum(0x8CA9)
```

### [DRAW\_FRAMEBUFFER\_BINDING ¶](#DRAW_FRAMEBUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L153)

```
DRAW_FRAMEBUFFER_BINDING: Enum : FRAMEBUFFER_BINDING
```

 

Same as FRAMEBUFFER\_BINDING

### [DST\_ALPHA ¶](#DST_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L34)

```
DST_ALPHA :: Enum(0x0304)
```

### [DST\_COLOR ¶](#DST_COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L40)

```
DST_COLOR :: Enum(0x0306)
```

 

BlendingFactorSrc
ZERO
ONE

### [DYNAMIC\_COPY ¶](#DYNAMIC_COPY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L44)

```
DYNAMIC_COPY :: Enum(0x88EA)
```

### [DYNAMIC\_DRAW ¶](#DYNAMIC_DRAW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L77)

```
DYNAMIC_DRAW :: Enum(0x88E8)
```

### [DYNAMIC\_READ ¶](#DYNAMIC_READ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L43)

```
DYNAMIC_READ :: Enum(0x88E9)
```

### [ELEMENT\_ARRAY\_BUFFER ¶](#ELEMENT_ARRAY_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L71)

```
ELEMENT_ARRAY_BUFFER :: Enum(0x8893)
```

### [ELEMENT\_ARRAY\_BUFFER\_BINDING ¶](#ELEMENT_ARRAY_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L73)

```
ELEMENT_ARRAY_BUFFER_BINDING :: Enum(0x8895)
```

### [EQUAL ¶](#EQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L234)

```
EQUAL :: Enum(0x0202)
```

### [FASTEST ¶](#FASTEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L182)

```
FASTEST :: Enum(0x1101)
```

### [FLOAT ¶](#FLOAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L195)

```
FLOAT :: Enum(0x1406)
```

### [FLOAT\_32\_UNSIGNED\_INT\_24\_8\_REV ¶](#FLOAT_32_UNSIGNED_INT_24_8_REV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L140)

```
FLOAT_32_UNSIGNED_INT_24_8_REV :: Enum(0x8DAD)
```

### [FLOAT\_MAT2 ¶](#FLOAT_MAT2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L339)

```
FLOAT_MAT2 :: Enum(0x8B5A)
```

### [FLOAT\_MAT2x3 ¶](#FLOAT_MAT2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L71)

```
FLOAT_MAT2x3 :: Enum(0x8B65)
```

### [FLOAT\_MAT2x4 ¶](#FLOAT_MAT2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L72)

```
FLOAT_MAT2x4 :: Enum(0x8B66)
```

### [FLOAT\_MAT3 ¶](#FLOAT_MAT3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L340)

```
FLOAT_MAT3 :: Enum(0x8B5B)
```

### [FLOAT\_MAT3x2 ¶](#FLOAT_MAT3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L73)

```
FLOAT_MAT3x2 :: Enum(0x8B67)
```

### [FLOAT\_MAT3x4 ¶](#FLOAT_MAT3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L74)

```
FLOAT_MAT3x4 :: Enum(0x8B68)
```

### [FLOAT\_MAT4 ¶](#FLOAT_MAT4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L341)

```
FLOAT_MAT4 :: Enum(0x8B5C)
```

### [FLOAT\_MAT4x2 ¶](#FLOAT_MAT4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L75)

```
FLOAT_MAT4x2 :: Enum(0x8B69)
```

### [FLOAT\_MAT4x3 ¶](#FLOAT_MAT4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L76)

```
FLOAT_MAT4x3 :: Enum(0x8B6A)
```

### [FLOAT\_VEC2 ¶](#FLOAT_VEC2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L329)

```
FLOAT_VEC2 :: Enum(0x8B50)
```

 

Uniform Types

### [FLOAT\_VEC3 ¶](#FLOAT_VEC3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L330)

```
FLOAT_VEC3 :: Enum(0x8B51)
```

### [FLOAT\_VEC4 ¶](#FLOAT_VEC4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L331)

```
FLOAT_VEC4 :: Enum(0x8B52)
```

### [FRAGMENT\_SHADER ¶](#FRAGMENT_SHADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L212)

```
FRAGMENT_SHADER :: Enum(0x8B30)
```

 

Shaders

### [FRAGMENT\_SHADER\_DERIVATIVE\_HINT ¶](#FRAGMENT_SHADER_DERIVATIVE_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L66)

```
FRAGMENT_SHADER_DERIVATIVE_HINT :: Enum(0x8B8B)
```

### [FRAMEBUFFER ¶](#FRAMEBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L370)

```
FRAMEBUFFER :: Enum(0x8D40)
```

 

Framebuffer Object.

### [FRAMEBUFFER\_ATTACHMENT\_ALPHA\_SIZE ¶](#FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L146)

```
FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE :: Enum(0x8215)
```

### [FRAMEBUFFER\_ATTACHMENT\_BLUE\_SIZE ¶](#FRAMEBUFFER_ATTACHMENT_BLUE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L145)

```
FRAMEBUFFER_ATTACHMENT_BLUE_SIZE :: Enum(0x8214)
```

### [FRAMEBUFFER\_ATTACHMENT\_COLOR\_ENCODING ¶](#FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L141)

```
FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING :: Enum(0x8210)
```

### [FRAMEBUFFER\_ATTACHMENT\_COMPONENT\_TYPE ¶](#FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L142)

```
FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE :: Enum(0x8211)
```

### [FRAMEBUFFER\_ATTACHMENT\_DEPTH\_SIZE ¶](#FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L147)

```
FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE :: Enum(0x8216)
```

### [FRAMEBUFFER\_ATTACHMENT\_GREEN\_SIZE ¶](#FRAMEBUFFER_ATTACHMENT_GREEN_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L144)

```
FRAMEBUFFER_ATTACHMENT_GREEN_SIZE :: Enum(0x8213)
```

### [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_NAME ¶](#FRAMEBUFFER_ATTACHMENT_OBJECT_NAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L392)

```
FRAMEBUFFER_ATTACHMENT_OBJECT_NAME :: Enum(0x8CD1)
```

### [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_TYPE ¶](#FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L391)

```
FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE :: Enum(0x8CD0)
```

### [FRAMEBUFFER\_ATTACHMENT\_RED\_SIZE ¶](#FRAMEBUFFER_ATTACHMENT_RED_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L143)

```
FRAMEBUFFER_ATTACHMENT_RED_SIZE :: Enum(0x8212)
```

### [FRAMEBUFFER\_ATTACHMENT\_STENCIL\_SIZE ¶](#FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L148)

```
FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE :: Enum(0x8217)
```

### [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_CUBE\_MAP\_FACE ¶](#FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L394)

```
FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE :: Enum(0x8CD3)
```

### [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LAYER ¶](#FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L158)

```
FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER :: Enum(0x8CD4)
```

### [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LEVEL ¶](#FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L393)

```
FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL :: Enum(0x8CD2)
```

### [FRAMEBUFFER\_BINDING ¶](#FRAMEBUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L409)

```
FRAMEBUFFER_BINDING :: Enum(0x8CA6)
```

### [FRAMEBUFFER\_COMPLETE ¶](#FRAMEBUFFER_COMPLETE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L403)

```
FRAMEBUFFER_COMPLETE :: Enum(0x8CD5)
```

### [FRAMEBUFFER\_DEFAULT ¶](#FRAMEBUFFER_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L149)

```
FRAMEBUFFER_DEFAULT :: Enum(0x8218)
```

### [FRAMEBUFFER\_INCOMPLETE\_ATTACHMENT ¶](#FRAMEBUFFER_INCOMPLETE_ATTACHMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L404)

```
FRAMEBUFFER_INCOMPLETE_ATTACHMENT :: Enum(0x8CD6)
```

### [FRAMEBUFFER\_INCOMPLETE\_DIMENSIONS ¶](#FRAMEBUFFER_INCOMPLETE_DIMENSIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L406)

```
FRAMEBUFFER_INCOMPLETE_DIMENSIONS :: Enum(0x8CD9)
```

### [FRAMEBUFFER\_INCOMPLETE\_MISSING\_ATTACHMENT ¶](#FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L405)

```
FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT :: Enum(0x8CD7)
```

### [FRAMEBUFFER\_INCOMPLETE\_MULTISAMPLE ¶](#FRAMEBUFFER_INCOMPLETE_MULTISAMPLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L175)

```
FRAMEBUFFER_INCOMPLETE_MULTISAMPLE :: Enum(0x8D56)
```

### [FRAMEBUFFER\_UNSUPPORTED ¶](#FRAMEBUFFER_UNSUPPORTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L407)

```
FRAMEBUFFER_UNSUPPORTED :: Enum(0x8CDD)
```

### [FRONT ¶](#FRONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L85)

```
FRONT :: Enum(0x0404)
```

 

CullFaceMode

### [FRONT\_AND\_BACK ¶](#FRONT_AND_BACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L87)

```
FRONT_AND_BACK :: Enum(0x0408)
```

### [FRONT\_FACE ¶](#FRONT_FACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L127)

```
FRONT_FACE :: Enum(0x0B46)
```

### [FUNC\_ADD ¶](#FUNC_ADD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L49)

```
FUNC_ADD :: Enum(0x8006)
```

 

BlendEquationSeparate

### [FUNC\_REVERSE\_SUBTRACT ¶](#FUNC_REVERSE_SUBTRACT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L56)

```
FUNC_REVERSE_SUBTRACT :: Enum(0x800B)
```

### [FUNC\_SUBTRACT ¶](#FUNC_SUBTRACT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L55)

```
FUNC_SUBTRACT :: Enum(0x800A)
```

 

BlendSubtract

### [GENERATE\_MIPMAP\_HINT ¶](#GENERATE_MIPMAP_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L186)

```
GENERATE_MIPMAP_HINT :: Enum(0x8192)
```

 

HintTarget

### [GEQUAL ¶](#GEQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L238)

```
GEQUAL :: Enum(0x0206)
```

### [GREATER ¶](#GREATER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L236)

```
GREATER :: Enum(0x0204)
```

### [GREEN\_BITS ¶](#GREEN_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L158)

```
GREEN_BITS :: Enum(0x0D53)
```

### [HALF\_FLOAT ¶](#HALF_FLOAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L177)

```
HALF_FLOAT :: Enum(0x140B)
```

### [HIGH\_FLOAT ¶](#HIGH_FLOAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L364)

```
HIGH_FLOAT :: Enum(0x8DF2)
```

### [HIGH\_INT ¶](#HIGH_INT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L367)

```
HIGH_INT :: Enum(0x8DF5)
```

### [IMPLEMENTATION\_COLOR\_READ\_FORMAT ¶](#IMPLEMENTATION_COLOR_READ_FORMAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L356)

```
IMPLEMENTATION_COLOR_READ_FORMAT :: Enum(0x8B9B)
```

### [IMPLEMENTATION\_COLOR\_READ\_TYPE ¶](#IMPLEMENTATION_COLOR_READ_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L355)

```
IMPLEMENTATION_COLOR_READ_TYPE :: Enum(0x8B9A)
```

 

Read Format

### [INCR ¶](#INCR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L245)

```
INCR :: Enum(0x1E02)
```

### [INCR\_WRAP ¶](#INCR_WRAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L248)

```
INCR_WRAP :: Enum(0x8507)
```

### [INT ¶](#INT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L193)

```
INT :: Enum(0x1404)
```

### [INTERLEAVED\_ATTRIBS ¶](#INTERLEAVED_ATTRIBS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L105)

```
INTERLEAVED_ATTRIBS :: Enum(0x8C8C)
```

### [INT\_2\_10\_10\_10\_REV ¶](#INT_2_10_10_10_REV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L256)

```
INT_2_10_10_10_REV :: Enum(0x8D9F)
```

### [INT\_SAMPLER\_2D ¶](#INT_SAMPLER_2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L130)

```
INT_SAMPLER_2D :: Enum(0x8DCA)
```

### [INT\_SAMPLER\_2D\_ARRAY ¶](#INT_SAMPLER_2D_ARRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L133)

```
INT_SAMPLER_2D_ARRAY :: Enum(0x8DCF)
```

### [INT\_SAMPLER\_3D ¶](#INT_SAMPLER_3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L131)

```
INT_SAMPLER_3D :: Enum(0x8DCB)
```

### [INT\_SAMPLER\_CUBE ¶](#INT_SAMPLER_CUBE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L132)

```
INT_SAMPLER_CUBE :: Enum(0x8DCC)
```

### [INT\_VEC2 ¶](#INT_VEC2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L332)

```
INT_VEC2 :: Enum(0x8B53)
```

### [INT\_VEC3 ¶](#INT_VEC3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L333)

```
INT_VEC3 :: Enum(0x8B54)
```

### [INT\_VEC4 ¶](#INT_VEC4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L334)

```
INT_VEC4 :: Enum(0x8B55)
```

### [INVALID\_ENUM ¶](#INVALID_ENUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L113)

```
INVALID_ENUM :: Enum(0x0500)
```

### [INVALID\_FRAMEBUFFER\_OPERATION ¶](#INVALID_FRAMEBUFFER_OPERATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L413)

```
INVALID_FRAMEBUFFER_OPERATION :: Enum(0x0506)
```

### [INVALID\_INDEX ¶](#INVALID_INDEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L234)

```
INVALID_INDEX :: Enum(0xFFFFFFFF)
```

### [INVALID\_OPERATION ¶](#INVALID_OPERATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L115)

```
INVALID_OPERATION :: Enum(0x0502)
```

### [INVALID\_VALUE ¶](#INVALID_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L114)

```
INVALID_VALUE :: Enum(0x0501)
```

### [INVERT ¶](#INVERT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L247)

```
INVERT :: Enum(0x150A)
```

### [KEEP ¶](#KEEP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L243)

```
KEEP :: Enum(0x1E00)
```

 

StencilOp
ZERO

### [LEQUAL ¶](#LEQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L235)

```
LEQUAL :: Enum(0x0203)
```

### [LESS ¶](#LESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L233)

```
LESS :: Enum(0x0201)
```

### [LINEAR ¶](#LINEAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L258)

```
LINEAR :: Enum(0x2601)
```

### [LINEAR\_MIPMAP\_LINEAR ¶](#LINEAR_MIPMAP_LINEAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L266)

```
LINEAR_MIPMAP_LINEAR :: Enum(0x2703)
```

### [LINEAR\_MIPMAP\_NEAREST ¶](#LINEAR_MIPMAP_NEAREST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L264)

```
LINEAR_MIPMAP_NEAREST :: Enum(0x2701)
```

### [LINES ¶](#LINES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L10)

```
LINES :: Enum(0x0001)
```

### [LINE\_LOOP ¶](#LINE_LOOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L11)

```
LINE_LOOP :: Enum(0x0002)
```

### [LINE\_STRIP ¶](#LINE_STRIP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L12)

```
LINE_STRIP :: Enum(0x0003)
```

### [LINE\_WIDTH ¶](#LINE_WIDTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L123)

```
LINE_WIDTH :: Enum(0x0B21)
```

 

GetPName

### [LINK\_STATUS ¶](#LINK_STATUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L223)

```
LINK_STATUS :: Enum(0x8B82)
```

### [LOW\_FLOAT ¶](#LOW_FLOAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L362)

```
LOW_FLOAT :: Enum(0x8DF0)
```

 

Shader Precision-Specified Types

### [LOW\_INT ¶](#LOW_INT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L365)

```
LOW_INT :: Enum(0x8DF3)
```

### [LUMINANCE ¶](#LUMINANCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L202)

```
LUMINANCE :: Enum(0x1909)
```

### [LUMINANCE\_ALPHA ¶](#LUMINANCE_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L203)

```
LUMINANCE_ALPHA :: Enum(0x190A)
```

### [MAX ¶](#MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L31)

```
MAX :: Enum(0x8008)
```

### [MAX\_3D\_TEXTURE\_SIZE ¶](#MAX_3D_TEXTURE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L22)

```
MAX_3D_TEXTURE_SIZE :: Enum(0x8073)
```

### [MAX\_ARRAY\_TEXTURE\_LAYERS ¶](#MAX_ARRAY_TEXTURE_LAYERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L86)

```
MAX_ARRAY_TEXTURE_LAYERS :: Enum(0x88FF)
```

### [MAX\_CLIENT\_WAIT\_TIMEOUT\_WEBGL ¶](#MAX_CLIENT_WAIT_TIMEOUT_WEBGL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L268)

```
MAX_CLIENT_WAIT_TIMEOUT_WEBGL :: Enum(0x9247)
```

 

WebGL-specific enums

### [MAX\_COLOR\_ATTACHMENTS ¶](#MAX_COLOR_ATTACHMENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L159)

```
MAX_COLOR_ATTACHMENTS :: Enum(0x8CDF)
```

### [MAX\_COMBINED\_FRAGMENT\_UNIFORM\_COMPONENTS ¶](#MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L218)

```
MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS :: Enum(0x8A33)
```

### [MAX\_COMBINED\_TEXTURE\_IMAGE\_UNITS ¶](#MAX_COMBINED_TEXTURE_IMAGE_UNITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L217)

```
MAX_COMBINED_TEXTURE_IMAGE_UNITS :: Enum(0x8B4D)
```

### [MAX\_COMBINED\_UNIFORM\_BLOCKS ¶](#MAX_COMBINED_UNIFORM_BLOCKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L214)

```
MAX_COMBINED_UNIFORM_BLOCKS :: Enum(0x8A2E)
```

### [MAX\_COMBINED\_VERTEX\_UNIFORM\_COMPONENTS ¶](#MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L217)

```
MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS :: Enum(0x8A31)
```

### [MAX\_CUBE\_MAP\_TEXTURE\_SIZE ¶](#MAX_CUBE_MAP_TEXTURE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L286)

```
MAX_CUBE_MAP_TEXTURE_SIZE :: Enum(0x851C)
```

### [MAX\_DRAW\_BUFFERS ¶](#MAX_DRAW_BUFFERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L45)

```
MAX_DRAW_BUFFERS :: Enum(0x8824)
```

### [MAX\_ELEMENTS\_INDICES ¶](#MAX_ELEMENTS_INDICES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L25)

```
MAX_ELEMENTS_INDICES :: Enum(0x80E9)
```

### [MAX\_ELEMENTS\_VERTICES ¶](#MAX_ELEMENTS_VERTICES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L24)

```
MAX_ELEMENTS_VERTICES :: Enum(0x80E8)
```

### [MAX\_ELEMENT\_INDEX ¶](#MAX_ELEMENT_INDEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L262)

```
MAX_ELEMENT_INDEX :: Enum(0x8D6B)
```

### [MAX\_FRAGMENT\_INPUT\_COMPONENTS ¶](#MAX_FRAGMENT_INPUT_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L236)

```
MAX_FRAGMENT_INPUT_COMPONENTS :: Enum(0x9125)
```

### [MAX\_FRAGMENT\_UNIFORM\_BLOCKS ¶](#MAX_FRAGMENT_UNIFORM_BLOCKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L213)

```
MAX_FRAGMENT_UNIFORM_BLOCKS :: Enum(0x8A2D)
```

### [MAX\_FRAGMENT\_UNIFORM\_COMPONENTS ¶](#MAX_FRAGMENT_UNIFORM_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L62)

```
MAX_FRAGMENT_UNIFORM_COMPONENTS :: Enum(0x8B49)
```

### [MAX\_FRAGMENT\_UNIFORM\_VECTORS ¶](#MAX_FRAGMENT_UNIFORM_VECTORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L220)

```
MAX_FRAGMENT_UNIFORM_VECTORS :: Enum(0x8DFD)
```

### [MAX\_PROGRAM\_TEXEL\_OFFSET ¶](#MAX_PROGRAM_TEXEL_OFFSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L88)

```
MAX_PROGRAM_TEXEL_OFFSET :: Enum(0x8905)
```

### [MAX\_RENDERBUFFER\_SIZE ¶](#MAX_RENDERBUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L411)

```
MAX_RENDERBUFFER_SIZE :: Enum(0x84E8)
```

### [MAX\_SAMPLES ¶](#MAX_SAMPLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L176)

```
MAX_SAMPLES :: Enum(0x8D57)
```

### [MAX\_SERVER\_WAIT\_TIMEOUT ¶](#MAX_SERVER_WAIT_TIMEOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L237)

```
MAX_SERVER_WAIT_TIMEOUT :: Enum(0x9111)
```

### [MAX\_TEXTURE\_IMAGE\_UNITS ¶](#MAX_TEXTURE_IMAGE_UNITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L219)

```
MAX_TEXTURE_IMAGE_UNITS :: Enum(0x8872)
```

### [MAX\_TEXTURE\_LOD\_BIAS ¶](#MAX_TEXTURE_LOD_BIAS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L33)

```
MAX_TEXTURE_LOD_BIAS :: Enum(0x84FD)
```

### [MAX\_TEXTURE\_SIZE ¶](#MAX_TEXTURE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L154)

```
MAX_TEXTURE_SIZE :: Enum(0x0D33)
```

### [MAX\_TRANSFORM\_FEEDBACK\_INTERLEAVED\_COMPONENTS ¶](#MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L103)

```
MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS :: Enum(0x8C8A)
```

### [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_ATTRIBS ¶](#MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L104)

```
MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS :: Enum(0x8C8B)
```

### [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_COMPONENTS ¶](#MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L97)

```
MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS :: Enum(0x8C80)
```

### [MAX\_UNIFORM\_BLOCK\_SIZE ¶](#MAX_UNIFORM_BLOCK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L216)

```
MAX_UNIFORM_BLOCK_SIZE :: Enum(0x8A30)
```

### [MAX\_UNIFORM\_BUFFER\_BINDINGS ¶](#MAX_UNIFORM_BUFFER_BINDINGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L215)

```
MAX_UNIFORM_BUFFER_BINDINGS :: Enum(0x8A2F)
```

### [MAX\_VARYING\_COMPONENTS ¶](#MAX_VARYING_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L89)

```
MAX_VARYING_COMPONENTS :: Enum(0x8B4B)
```

### [MAX\_VARYING\_VECTORS ¶](#MAX_VARYING_VECTORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L216)

```
MAX_VARYING_VECTORS :: Enum(0x8DFC)
```

### [MAX\_VERTEX\_ATTRIBS ¶](#MAX_VERTEX_ATTRIBS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L214)

```
MAX_VERTEX_ATTRIBS :: Enum(0x8869)
```

### [MAX\_VERTEX\_OUTPUT\_COMPONENTS ¶](#MAX_VERTEX_OUTPUT_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L235)

```
MAX_VERTEX_OUTPUT_COMPONENTS :: Enum(0x9122)
```

### [MAX\_VERTEX\_TEXTURE\_IMAGE\_UNITS ¶](#MAX_VERTEX_TEXTURE_IMAGE_UNITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L218)

```
MAX_VERTEX_TEXTURE_IMAGE_UNITS :: Enum(0x8B4C)
```

### [MAX\_VERTEX\_UNIFORM\_BLOCKS ¶](#MAX_VERTEX_UNIFORM_BLOCKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L212)

```
MAX_VERTEX_UNIFORM_BLOCKS :: Enum(0x8A2B)
```

### [MAX\_VERTEX\_UNIFORM\_COMPONENTS ¶](#MAX_VERTEX_UNIFORM_COMPONENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L63)

```
MAX_VERTEX_UNIFORM_COMPONENTS :: Enum(0x8B4A)
```

### [MAX\_VERTEX\_UNIFORM\_VECTORS ¶](#MAX_VERTEX_UNIFORM_VECTORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L215)

```
MAX_VERTEX_UNIFORM_VECTORS :: Enum(0x8DFB)
```

### [MAX\_VIEWPORT\_DIMS ¶](#MAX_VIEWPORT_DIMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L155)

```
MAX_VIEWPORT_DIMS :: Enum(0x0D3A)
```

### [MEDIUM\_FLOAT ¶](#MEDIUM_FLOAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L363)

```
MEDIUM_FLOAT :: Enum(0x8DF1)
```

### [MEDIUM\_INT ¶](#MEDIUM_INT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L366)

```
MEDIUM_INT :: Enum(0x8DF4)
```

### [MIN ¶](#MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L30)

```
MIN :: Enum(0x8007)
```

### [MIN\_PROGRAM\_TEXEL\_OFFSET ¶](#MIN_PROGRAM_TEXEL_OFFSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L87)

```
MIN_PROGRAM_TEXEL_OFFSET :: Enum(0x8904)
```

### [MIRRORED\_REPEAT ¶](#MIRRORED_REPEAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L326)

```
MIRRORED_REPEAT :: Enum(0x8370)
```

### [NEAREST ¶](#NEAREST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L257)

```
NEAREST :: Enum(0x2600)
```

 

TextureMagFilter

### [NEAREST\_MIPMAP\_LINEAR ¶](#NEAREST_MIPMAP_LINEAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L265)

```
NEAREST_MIPMAP_LINEAR :: Enum(0x2702)
```

### [NEAREST\_MIPMAP\_NEAREST ¶](#NEAREST_MIPMAP_NEAREST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L263)

```
NEAREST_MIPMAP_NEAREST :: Enum(0x2700)
```

 

TextureMinFilter
NEAREST
LINEAR

### [NEVER ¶](#NEVER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L232)

```
NEVER :: Enum(0x0200)
```

 

StencilFunction

### [NICEST ¶](#NICEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L183)

```
NICEST :: Enum(0x1102)
```

### [NONE ¶](#NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L401)

```
NONE :: Enum(0)
```

### [NOTEQUAL ¶](#NOTEQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L237)

```
NOTEQUAL :: Enum(0x0205)
```

### [NO\_ERROR ¶](#NO_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L112)

```
NO_ERROR :: Enum(0)
```

 

ErrorCode

### [OBJECT\_TYPE ¶](#OBJECT_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L238)

```
OBJECT_TYPE :: Enum(0x9112)
```

### [ONE ¶](#ONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L29)

```
ONE :: Enum(1)
```

### [ONE\_MINUS\_CONSTANT\_ALPHA ¶](#ONE_MINUS_CONSTANT_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L66)

```
ONE_MINUS_CONSTANT_ALPHA :: Enum(0x8004)
```

### [ONE\_MINUS\_CONSTANT\_COLOR ¶](#ONE_MINUS_CONSTANT_COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L64)

```
ONE_MINUS_CONSTANT_COLOR :: Enum(0x8002)
```

### [ONE\_MINUS\_DST\_ALPHA ¶](#ONE_MINUS_DST_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L35)

```
ONE_MINUS_DST_ALPHA :: Enum(0x0305)
```

### [ONE\_MINUS\_DST\_COLOR ¶](#ONE_MINUS_DST_COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L41)

```
ONE_MINUS_DST_COLOR :: Enum(0x0307)
```

### [ONE\_MINUS\_SRC\_ALPHA ¶](#ONE_MINUS_SRC_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L33)

```
ONE_MINUS_SRC_ALPHA :: Enum(0x0303)
```

### [ONE\_MINUS\_SRC\_COLOR ¶](#ONE_MINUS_SRC_COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L31)

```
ONE_MINUS_SRC_COLOR :: Enum(0x0301)
```

### [OUT\_OF\_MEMORY ¶](#OUT_OF_MEMORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L116)

```
OUT_OF_MEMORY :: Enum(0x0505)
```

### [PACK\_ALIGNMENT ¶](#PACK_ALIGNMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L153)

```
PACK_ALIGNMENT :: Enum(0x0D05)
```

### [PACK\_ROW\_LENGTH ¶](#PACK_ROW_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L7)

```
PACK_ROW_LENGTH :: Enum(0x0D02)
```

### [PACK\_SKIP\_PIXELS ¶](#PACK_SKIP_PIXELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L9)

```
PACK_SKIP_PIXELS :: Enum(0x0D04)
```

### [PACK\_SKIP\_ROWS ¶](#PACK_SKIP_ROWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L8)

```
PACK_SKIP_ROWS :: Enum(0x0D03)
```

### [PIXEL\_PACK\_BUFFER ¶](#PIXEL_PACK_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L67)

```
PIXEL_PACK_BUFFER :: Enum(0x88EB)
```

### [PIXEL\_PACK\_BUFFER\_BINDING ¶](#PIXEL_PACK_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L69)

```
PIXEL_PACK_BUFFER_BINDING :: Enum(0x88ED)
```

### [PIXEL\_UNPACK\_BUFFER ¶](#PIXEL_UNPACK_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L68)

```
PIXEL_UNPACK_BUFFER :: Enum(0x88EC)
```

### [PIXEL\_UNPACK\_BUFFER\_BINDING ¶](#PIXEL_UNPACK_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L70)

```
PIXEL_UNPACK_BUFFER_BINDING :: Enum(0x88EF)
```

### [POINTS ¶](#POINTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L9)

```
POINTS :: Enum(0x0000)
```

 

BeginMode

### [POLYGON\_OFFSET\_FACTOR ¶](#POLYGON_OFFSET_FACTOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L165)

```
POLYGON_OFFSET_FACTOR :: Enum(0x8038)
```

 

POLYGON\_OFFSET\_FILL

### [POLYGON\_OFFSET\_FILL ¶](#POLYGON_OFFSET_FILL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L107)

```
POLYGON_OFFSET_FILL :: Enum(0x8037)
```

### [POLYGON\_OFFSET\_UNITS ¶](#POLYGON_OFFSET_UNITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L163)

```
POLYGON_OFFSET_UNITS :: Enum(0x2A00)
```

### [QUERY\_RESULT ¶](#QUERY_RESULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L37)

```
QUERY_RESULT :: Enum(0x8866)
```

### [QUERY\_RESULT\_AVAILABLE ¶](#QUERY_RESULT_AVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L38)

```
QUERY_RESULT_AVAILABLE :: Enum(0x8867)
```

### [R11F\_G11F\_B10F ¶](#R11F_G11F_B10F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L92)

```
R11F_G11F_B10F :: Enum(0x8C3A)
```

### [R16F ¶](#R16F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L182)

```
R16F :: Enum(0x822D)
```

### [R16I ¶](#R16I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L188)

```
R16I :: Enum(0x8233)
```

### [R16UI ¶](#R16UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L189)

```
R16UI :: Enum(0x8234)
```

### [R32F ¶](#R32F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L183)

```
R32F :: Enum(0x822E)
```

### [R32I ¶](#R32I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L190)

```
R32I :: Enum(0x8235)
```

### [R32UI ¶](#R32UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L191)

```
R32UI :: Enum(0x8236)
```

### [R8 ¶](#R8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L180)

```
R8 :: Enum(0x8229)
```

### [R8I ¶](#R8I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L186)

```
R8I :: Enum(0x8231)
```

### [R8UI ¶](#R8UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L187)

```
R8UI :: Enum(0x8232)
```

### [R8\_SNORM ¶](#R8_SNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L199)

```
R8_SNORM :: Enum(0x8F94)
```

### [RASTERIZER\_DISCARD ¶](#RASTERIZER_DISCARD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L102)

```
RASTERIZER_DISCARD :: Enum(0x8C89)
```

### [READ\_BUFFER ¶](#READ_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L3)

```
READ_BUFFER :: Enum(0x0C02)
```

### [READ\_FRAMEBUFFER ¶](#READ_FRAMEBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L154)

```
READ_FRAMEBUFFER :: Enum(0x8CA8)
```

### [READ\_FRAMEBUFFER\_BINDING ¶](#READ_FRAMEBUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L156)

```
READ_FRAMEBUFFER_BINDING :: Enum(0x8CAA)
```

### [RED ¶](#RED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L13)

```
RED :: Enum(0x1903)
```

### [RED\_BITS ¶](#RED_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L157)

```
RED_BITS :: Enum(0x0D52)
```

### [RED\_INTEGER ¶](#RED_INTEGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L121)

```
RED_INTEGER :: Enum(0x8D94)
```

### [RENDERBUFFER ¶](#RENDERBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L371)

```
RENDERBUFFER :: Enum(0x8D41)
```

### [RENDERBUFFER\_ALPHA\_SIZE ¶](#RENDERBUFFER_ALPHA_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L387)

```
RENDERBUFFER_ALPHA_SIZE :: Enum(0x8D53)
```

### [RENDERBUFFER\_BINDING ¶](#RENDERBUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L410)

```
RENDERBUFFER_BINDING :: Enum(0x8CA7)
```

### [RENDERBUFFER\_BLUE\_SIZE ¶](#RENDERBUFFER_BLUE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L386)

```
RENDERBUFFER_BLUE_SIZE :: Enum(0x8D52)
```

### [RENDERBUFFER\_DEPTH\_SIZE ¶](#RENDERBUFFER_DEPTH_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L388)

```
RENDERBUFFER_DEPTH_SIZE :: Enum(0x8D54)
```

### [RENDERBUFFER\_GREEN\_SIZE ¶](#RENDERBUFFER_GREEN_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L385)

```
RENDERBUFFER_GREEN_SIZE :: Enum(0x8D51)
```

### [RENDERBUFFER\_HEIGHT ¶](#RENDERBUFFER_HEIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L382)

```
RENDERBUFFER_HEIGHT :: Enum(0x8D43)
```

### [RENDERBUFFER\_INTERNAL\_FORMAT ¶](#RENDERBUFFER_INTERNAL_FORMAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L383)

```
RENDERBUFFER_INTERNAL_FORMAT :: Enum(0x8D44)
```

### [RENDERBUFFER\_RED\_SIZE ¶](#RENDERBUFFER_RED_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L384)

```
RENDERBUFFER_RED_SIZE :: Enum(0x8D50)
```

### [RENDERBUFFER\_SAMPLES ¶](#RENDERBUFFER_SAMPLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L157)

```
RENDERBUFFER_SAMPLES :: Enum(0x8CAB)
```

### [RENDERBUFFER\_STENCIL\_SIZE ¶](#RENDERBUFFER_STENCIL_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L389)

```
RENDERBUFFER_STENCIL_SIZE :: Enum(0x8D55)
```

### [RENDERBUFFER\_WIDTH ¶](#RENDERBUFFER_WIDTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L381)

```
RENDERBUFFER_WIDTH :: Enum(0x8D42)
```

### [RENDERER ¶](#RENDERER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L253)

```
RENDERER :: Enum(0x1F01)
```

### [REPEAT ¶](#REPEAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L324)

```
REPEAT :: Enum(0x2901)
```

 

TextureWrapMode

### [REPLACE ¶](#REPLACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L244)

```
REPLACE :: Enum(0x1E01)
```

### [RG ¶](#RG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L178)

```
RG :: Enum(0x8227)
```

### [RG16F ¶](#RG16F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L184)

```
RG16F :: Enum(0x822F)
```

### [RG16I ¶](#RG16I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L194)

```
RG16I :: Enum(0x8239)
```

### [RG16UI ¶](#RG16UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L195)

```
RG16UI :: Enum(0x823A)
```

### [RG32F ¶](#RG32F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L185)

```
RG32F :: Enum(0x8230)
```

### [RG32I ¶](#RG32I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L196)

```
RG32I :: Enum(0x823B)
```

### [RG32UI ¶](#RG32UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L197)

```
RG32UI :: Enum(0x823C)
```

### [RG8 ¶](#RG8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L181)

```
RG8 :: Enum(0x822B)
```

### [RG8I ¶](#RG8I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L192)

```
RG8I :: Enum(0x8237)
```

### [RG8UI ¶](#RG8UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L193)

```
RG8UI :: Enum(0x8238)
```

### [RG8\_SNORM ¶](#RG8_SNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L200)

```
RG8_SNORM :: Enum(0x8F95)
```

### [RGB ¶](#RGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L200)

```
RGB :: Enum(0x1907)
```

### [RGB10\_A2 ¶](#RGB10_A2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L16)

```
RGB10_A2 :: Enum(0x8059)
```

### [RGB10\_A2UI ¶](#RGB10_A2UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L255)

```
RGB10_A2UI :: Enum(0x906F)
```

### [RGB16F ¶](#RGB16F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L84)

```
RGB16F :: Enum(0x881B)
```

### [RGB16I ¶](#RGB16I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L118)

```
RGB16I :: Enum(0x8D89)
```

### [RGB16UI ¶](#RGB16UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L112)

```
RGB16UI :: Enum(0x8D77)
```

### [RGB32F ¶](#RGB32F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L82)

```
RGB32F :: Enum(0x8815)
```

### [RGB32I ¶](#RGB32I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L116)

```
RGB32I :: Enum(0x8D83)
```

### [RGB32UI ¶](#RGB32UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L110)

```
RGB32UI :: Enum(0x8D71)
```

### [RGB565 ¶](#RGB565) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L375)

```
RGB565 :: Enum(0x8D62)
```

### [RGB5\_A1 ¶](#RGB5_A1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L374)

```
RGB5_A1 :: Enum(0x8057)
```

### [RGB8 ¶](#RGB8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L14)

```
RGB8 :: Enum(0x8051)
```

### [RGB8I ¶](#RGB8I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L120)

```
RGB8I :: Enum(0x8D8F)
```

### [RGB8UI ¶](#RGB8UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L114)

```
RGB8UI :: Enum(0x8D7D)
```

### [RGB8\_SNORM ¶](#RGB8_SNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L201)

```
RGB8_SNORM :: Enum(0x8F96)
```

### [RGB9\_E5 ¶](#RGB9_E5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L94)

```
RGB9_E5 :: Enum(0x8C3D)
```

### [RGBA ¶](#RGBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L201)

```
RGBA :: Enum(0x1908)
```

### [RGBA16F ¶](#RGBA16F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L83)

```
RGBA16F :: Enum(0x881A)
```

### [RGBA16I ¶](#RGBA16I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L117)

```
RGBA16I :: Enum(0x8D88)
```

### [RGBA16UI ¶](#RGBA16UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L111)

```
RGBA16UI :: Enum(0x8D76)
```

### [RGBA32F ¶](#RGBA32F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L81)

```
RGBA32F :: Enum(0x8814)
```

### [RGBA32I ¶](#RGBA32I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L115)

```
RGBA32I :: Enum(0x8D82)
```

### [RGBA32UI ¶](#RGBA32UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L109)

```
RGBA32UI :: Enum(0x8D70)
```

### [RGBA4 ¶](#RGBA4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L373)

```
RGBA4 :: Enum(0x8056)
```

### [RGBA8 ¶](#RGBA8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L15)

```
RGBA8 :: Enum(0x8058)
```

### [RGBA8I ¶](#RGBA8I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L119)

```
RGBA8I :: Enum(0x8D8E)
```

### [RGBA8UI ¶](#RGBA8UI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L113)

```
RGBA8UI :: Enum(0x8D7C)
```

### [RGBA8\_SNORM ¶](#RGBA8_SNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L202)

```
RGBA8_SNORM :: Enum(0x8F97)
```

### [RGBA\_INTEGER ¶](#RGBA_INTEGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L123)

```
RGBA_INTEGER :: Enum(0x8D99)
```

### [RGB\_INTEGER ¶](#RGB_INTEGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L122)

```
RGB_INTEGER :: Enum(0x8D98)
```

### [RG\_INTEGER ¶](#RG_INTEGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L179)

```
RG_INTEGER :: Enum(0x8228)
```

### [SAMPLER\_2D ¶](#SAMPLER_2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L342)

```
SAMPLER_2D :: Enum(0x8B5E)
```

### [SAMPLER\_2D\_ARRAY ¶](#SAMPLER_2D_ARRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L124)

```
SAMPLER_2D_ARRAY :: Enum(0x8DC1)
```

### [SAMPLER\_2D\_ARRAY\_SHADOW ¶](#SAMPLER_2D_ARRAY_SHADOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L125)

```
SAMPLER_2D_ARRAY_SHADOW :: Enum(0x8DC4)
```

### [SAMPLER\_2D\_SHADOW ¶](#SAMPLER_2D_SHADOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L65)

```
SAMPLER_2D_SHADOW :: Enum(0x8B62)
```

### [SAMPLER\_3D ¶](#SAMPLER_3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L64)

```
SAMPLER_3D :: Enum(0x8B5F)
```

### [SAMPLER\_BINDING ¶](#SAMPLER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L254)

```
SAMPLER_BINDING :: Enum(0x8919)
```

### [SAMPLER\_CUBE ¶](#SAMPLER_CUBE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L343)

```
SAMPLER_CUBE :: Enum(0x8B60)
```

### [SAMPLER\_CUBE\_SHADOW ¶](#SAMPLER_CUBE_SHADOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L126)

```
SAMPLER_CUBE_SHADOW :: Enum(0x8DC5)
```

### [SAMPLES ¶](#SAMPLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L168)

```
SAMPLES :: Enum(0x80A9)
```

### [SAMPLE\_ALPHA\_TO\_COVERAGE ¶](#SAMPLE_ALPHA_TO_COVERAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L108)

```
SAMPLE_ALPHA_TO_COVERAGE :: Enum(0x809E)
```

### [SAMPLE\_BUFFERS ¶](#SAMPLE_BUFFERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L167)

```
SAMPLE_BUFFERS :: Enum(0x80A8)
```

### [SAMPLE\_COVERAGE ¶](#SAMPLE_COVERAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L109)

```
SAMPLE_COVERAGE :: Enum(0x80A0)
```

### [SAMPLE\_COVERAGE\_INVERT ¶](#SAMPLE_COVERAGE_INVERT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L170)

```
SAMPLE_COVERAGE_INVERT :: Enum(0x80AB)
```

### [SAMPLE\_COVERAGE\_VALUE ¶](#SAMPLE_COVERAGE_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L169)

```
SAMPLE_COVERAGE_VALUE :: Enum(0x80AA)
```

### [SCISSOR\_BOX ¶](#SCISSOR_BOX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L148)

```
SCISSOR_BOX :: Enum(0x0C10)
```

### [SCISSOR\_TEST ¶](#SCISSOR_TEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L106)

```
SCISSOR_TEST :: Enum(0x0C11)
```

### [SEPARATE\_ATTRIBS ¶](#SEPARATE_ATTRIBS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L106)

```
SEPARATE_ATTRIBS :: Enum(0x8C8D)
```

### [SHADER\_TYPE ¶](#SHADER_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L221)

```
SHADER_TYPE :: Enum(0x8B4F)
```

### [SHADING\_LANGUAGE\_VERSION ¶](#SHADING_LANGUAGE_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L228)

```
SHADING_LANGUAGE_VERSION :: Enum(0x8B8C)
```

### [SHORT ¶](#SHORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L191)

```
SHORT :: Enum(0x1402)
```

### [SIGNALED ¶](#SIGNALED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L245)

```
SIGNALED :: Enum(0x9119)
```

### [SIGNED\_NORMALIZED ¶](#SIGNED_NORMALIZED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L203)

```
SIGNED_NORMALIZED :: Enum(0x8F9C)
```

### [SRC\_ALPHA ¶](#SRC_ALPHA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L32)

```
SRC_ALPHA :: Enum(0x0302)
```

### [SRC\_ALPHA\_SATURATE ¶](#SRC_ALPHA_SATURATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L42)

```
SRC_ALPHA_SATURATE :: Enum(0x0308)
```

### [SRC\_COLOR ¶](#SRC_COLOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L30)

```
SRC_COLOR :: Enum(0x0300)
```

### [SRGB ¶](#SRGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L77)

```
SRGB :: Enum(0x8C40)
```

### [SRGB8 ¶](#SRGB8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L78)

```
SRGB8 :: Enum(0x8C41)
```

### [SRGB8\_ALPHA8 ¶](#SRGB8_ALPHA8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L79)

```
SRGB8_ALPHA8 :: Enum(0x8C43)
```

### [STATIC\_COPY ¶](#STATIC_COPY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L42)

```
STATIC_COPY :: Enum(0x88E6)
```

### [STATIC\_DRAW ¶](#STATIC_DRAW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L76)

```
STATIC_DRAW :: Enum(0x88E4)
```

### [STATIC\_READ ¶](#STATIC_READ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L41)

```
STATIC_READ :: Enum(0x88E5)
```

### [STENCIL ¶](#STENCIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L12)

```
STENCIL :: Enum(0x1802)
```

### [STENCIL\_ATTACHMENT ¶](#STENCIL_ATTACHMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L398)

```
STENCIL_ATTACHMENT :: Enum(0x8D20)
```

### [STENCIL\_BACK\_FAIL ¶](#STENCIL_BACK_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L141)

```
STENCIL_BACK_FAIL :: Enum(0x8801)
```

### [STENCIL\_BACK\_FUNC ¶](#STENCIL_BACK_FUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L140)

```
STENCIL_BACK_FUNC :: Enum(0x8800)
```

### [STENCIL\_BACK\_PASS\_DEPTH\_FAIL ¶](#STENCIL_BACK_PASS_DEPTH_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L142)

```
STENCIL_BACK_PASS_DEPTH_FAIL :: Enum(0x8802)
```

### [STENCIL\_BACK\_PASS\_DEPTH\_PASS ¶](#STENCIL_BACK_PASS_DEPTH_PASS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L143)

```
STENCIL_BACK_PASS_DEPTH_PASS :: Enum(0x8803)
```

### [STENCIL\_BACK\_REF ¶](#STENCIL_BACK_REF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L144)

```
STENCIL_BACK_REF :: Enum(0x8CA3)
```

### [STENCIL\_BACK\_VALUE\_MASK ¶](#STENCIL_BACK_VALUE_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L145)

```
STENCIL_BACK_VALUE_MASK :: Enum(0x8CA4)
```

### [STENCIL\_BACK\_WRITEMASK ¶](#STENCIL_BACK_WRITEMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L146)

```
STENCIL_BACK_WRITEMASK :: Enum(0x8CA5)
```

### [STENCIL\_BITS ¶](#STENCIL_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L162)

```
STENCIL_BITS :: Enum(0x0D57)
```

### [STENCIL\_BUFFER\_BIT ¶](#STENCIL_BUFFER_BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L5)

```
STENCIL_BUFFER_BIT :: Enum(0x00000400)
```

### [STENCIL\_CLEAR\_VALUE ¶](#STENCIL_CLEAR_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L132)

```
STENCIL_CLEAR_VALUE :: Enum(0x0B91)
```

### [STENCIL\_FAIL ¶](#STENCIL_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L134)

```
STENCIL_FAIL :: Enum(0x0B94)
```

### [STENCIL\_FUNC ¶](#STENCIL_FUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L133)

```
STENCIL_FUNC :: Enum(0x0B92)
```

### [STENCIL\_INDEX ¶](#STENCIL_INDEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L377)

```
STENCIL_INDEX :: Enum(0x1901)
```

### [STENCIL\_INDEX8 ¶](#STENCIL_INDEX8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L378)

```
STENCIL_INDEX8 :: Enum(0x8D48)
```

### [STENCIL\_PASS\_DEPTH\_FAIL ¶](#STENCIL_PASS_DEPTH_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L135)

```
STENCIL_PASS_DEPTH_FAIL :: Enum(0x0B95)
```

### [STENCIL\_PASS\_DEPTH\_PASS ¶](#STENCIL_PASS_DEPTH_PASS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L136)

```
STENCIL_PASS_DEPTH_PASS :: Enum(0x0B96)
```

### [STENCIL\_REF ¶](#STENCIL_REF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L137)

```
STENCIL_REF :: Enum(0x0B97)
```

### [STENCIL\_TEST ¶](#STENCIL_TEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L104)

```
STENCIL_TEST :: Enum(0x0B90)
```

### [STENCIL\_VALUE\_MASK ¶](#STENCIL_VALUE_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L138)

```
STENCIL_VALUE_MASK :: Enum(0x0B93)
```

### [STENCIL\_WRITEMASK ¶](#STENCIL_WRITEMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L139)

```
STENCIL_WRITEMASK :: Enum(0x0B98)
```

### [STREAM\_COPY ¶](#STREAM_COPY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L40)

```
STREAM_COPY :: Enum(0x88E2)
```

### [STREAM\_DRAW ¶](#STREAM_DRAW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L75)

```
STREAM_DRAW :: Enum(0x88E0)
```

### [STREAM\_READ ¶](#STREAM_READ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L39)

```
STREAM_READ :: Enum(0x88E1)
```

### [SUBPIXEL\_BITS ¶](#SUBPIXEL_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L156)

```
SUBPIXEL_BITS :: Enum(0x0D50)
```

### [SYNC\_CONDITION ¶](#SYNC_CONDITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L239)

```
SYNC_CONDITION :: Enum(0x9113)
```

### [SYNC\_FENCE ¶](#SYNC_FENCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L242)

```
SYNC_FENCE :: Enum(0x9116)
```

### [SYNC\_FLAGS ¶](#SYNC_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L241)

```
SYNC_FLAGS :: Enum(0x9115)
```

### [SYNC\_FLUSH\_COMMANDS\_BIT ¶](#SYNC_FLUSH_COMMANDS_BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L250)

```
SYNC_FLUSH_COMMANDS_BIT :: Enum(0x00000001)
```

### [SYNC\_GPU\_COMMANDS\_COMPLETE ¶](#SYNC_GPU_COMMANDS_COMPLETE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L243)

```
SYNC_GPU_COMMANDS_COMPLETE :: Enum(0x9117)
```

### [SYNC\_STATUS ¶](#SYNC_STATUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L240)

```
SYNC_STATUS :: Enum(0x9114)
```

### [TEXTURE ¶](#TEXTURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L276)

```
TEXTURE :: Enum(0x1702)
```

### [TEXTURE0 ¶](#TEXTURE0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L289)

```
TEXTURE0 :: Enum(0x84C0)
```

 

TextureUnit

### [TEXTURE1 ¶](#TEXTURE1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L290)

```
TEXTURE1 :: Enum(0x84C1)
```

### [TEXTURE10 ¶](#TEXTURE10) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L299)

```
TEXTURE10 :: Enum(0x84CA)
```

### [TEXTURE11 ¶](#TEXTURE11) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L300)

```
TEXTURE11 :: Enum(0x84CB)
```

### [TEXTURE12 ¶](#TEXTURE12) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L301)

```
TEXTURE12 :: Enum(0x84CC)
```

### [TEXTURE13 ¶](#TEXTURE13) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L302)

```
TEXTURE13 :: Enum(0x84CD)
```

### [TEXTURE14 ¶](#TEXTURE14) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L303)

```
TEXTURE14 :: Enum(0x84CE)
```

### [TEXTURE15 ¶](#TEXTURE15) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L304)

```
TEXTURE15 :: Enum(0x84CF)
```

### [TEXTURE16 ¶](#TEXTURE16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L305)

```
TEXTURE16 :: Enum(0x84D0)
```

### [TEXTURE17 ¶](#TEXTURE17) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L306)

```
TEXTURE17 :: Enum(0x84D1)
```

### [TEXTURE18 ¶](#TEXTURE18) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L307)

```
TEXTURE18 :: Enum(0x84D2)
```

### [TEXTURE19 ¶](#TEXTURE19) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L308)

```
TEXTURE19 :: Enum(0x84D3)
```

### [TEXTURE2 ¶](#TEXTURE2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L291)

```
TEXTURE2 :: Enum(0x84C2)
```

### [TEXTURE20 ¶](#TEXTURE20) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L309)

```
TEXTURE20 :: Enum(0x84D4)
```

### [TEXTURE21 ¶](#TEXTURE21) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L310)

```
TEXTURE21 :: Enum(0x84D5)
```

### [TEXTURE22 ¶](#TEXTURE22) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L311)

```
TEXTURE22 :: Enum(0x84D6)
```

### [TEXTURE23 ¶](#TEXTURE23) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L312)

```
TEXTURE23 :: Enum(0x84D7)
```

### [TEXTURE24 ¶](#TEXTURE24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L313)

```
TEXTURE24 :: Enum(0x84D8)
```

### [TEXTURE25 ¶](#TEXTURE25) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L314)

```
TEXTURE25 :: Enum(0x84D9)
```

### [TEXTURE26 ¶](#TEXTURE26) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L315)

```
TEXTURE26 :: Enum(0x84DA)
```

### [TEXTURE27 ¶](#TEXTURE27) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L316)

```
TEXTURE27 :: Enum(0x84DB)
```

### [TEXTURE28 ¶](#TEXTURE28) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L317)

```
TEXTURE28 :: Enum(0x84DC)
```

### [TEXTURE29 ¶](#TEXTURE29) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L318)

```
TEXTURE29 :: Enum(0x84DD)
```

### [TEXTURE3 ¶](#TEXTURE3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L292)

```
TEXTURE3 :: Enum(0x84C3)
```

### [TEXTURE30 ¶](#TEXTURE30) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L319)

```
TEXTURE30 :: Enum(0x84DE)
```

### [TEXTURE31 ¶](#TEXTURE31) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L320)

```
TEXTURE31 :: Enum(0x84DF)
```

### [TEXTURE4 ¶](#TEXTURE4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L293)

```
TEXTURE4 :: Enum(0x84C4)
```

### [TEXTURE5 ¶](#TEXTURE5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L294)

```
TEXTURE5 :: Enum(0x84C5)
```

### [TEXTURE6 ¶](#TEXTURE6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L295)

```
TEXTURE6 :: Enum(0x84C6)
```

### [TEXTURE7 ¶](#TEXTURE7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L296)

```
TEXTURE7 :: Enum(0x84C7)
```

### [TEXTURE8 ¶](#TEXTURE8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L297)

```
TEXTURE8 :: Enum(0x84C8)
```

### [TEXTURE9 ¶](#TEXTURE9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L298)

```
TEXTURE9 :: Enum(0x84C9)
```

### [TEXTURE\_2D ¶](#TEXTURE_2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L275)

```
TEXTURE_2D :: Enum(0x0DE1)
```

 

TextureTarget

### [TEXTURE\_2D\_ARRAY ¶](#TEXTURE_2D_ARRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L90)

```
TEXTURE_2D_ARRAY :: Enum(0x8C1A)
```

### [TEXTURE\_3D ¶](#TEXTURE_3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L20)

```
TEXTURE_3D :: Enum(0x806F)
```

### [TEXTURE\_BASE\_LEVEL ¶](#TEXTURE_BASE_LEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L28)

```
TEXTURE_BASE_LEVEL :: Enum(0x813C)
```

### [TEXTURE\_BINDING\_2D ¶](#TEXTURE_BINDING_2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L166)

```
TEXTURE_BINDING_2D :: Enum(0x8069)
```

### [TEXTURE\_BINDING\_2D\_ARRAY ¶](#TEXTURE_BINDING_2D_ARRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L91)

```
TEXTURE_BINDING_2D_ARRAY :: Enum(0x8C1D)
```

### [TEXTURE\_BINDING\_3D ¶](#TEXTURE_BINDING_3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L17)

```
TEXTURE_BINDING_3D :: Enum(0x806A)
```

### [TEXTURE\_BINDING\_CUBE\_MAP ¶](#TEXTURE_BINDING_CUBE_MAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L279)

```
TEXTURE_BINDING_CUBE_MAP :: Enum(0x8514)
```

### [TEXTURE\_COMPARE\_FUNC ¶](#TEXTURE_COMPARE_FUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L35)

```
TEXTURE_COMPARE_FUNC :: Enum(0x884D)
```

### [TEXTURE\_COMPARE\_MODE ¶](#TEXTURE_COMPARE_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L34)

```
TEXTURE_COMPARE_MODE :: Enum(0x884C)
```

### [TEXTURE\_CUBE\_MAP ¶](#TEXTURE_CUBE_MAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L278)

```
TEXTURE_CUBE_MAP :: Enum(0x8513)
```

### [TEXTURE\_CUBE\_MAP\_NEGATIVE\_X ¶](#TEXTURE_CUBE_MAP_NEGATIVE_X) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L281)

```
TEXTURE_CUBE_MAP_NEGATIVE_X :: Enum(0x8516)
```

### [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Y ¶](#TEXTURE_CUBE_MAP_NEGATIVE_Y) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L283)

```
TEXTURE_CUBE_MAP_NEGATIVE_Y :: Enum(0x8518)
```

### [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Z ¶](#TEXTURE_CUBE_MAP_NEGATIVE_Z) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L285)

```
TEXTURE_CUBE_MAP_NEGATIVE_Z :: Enum(0x851A)
```

### [TEXTURE\_CUBE\_MAP\_POSITIVE\_X ¶](#TEXTURE_CUBE_MAP_POSITIVE_X) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L280)

```
TEXTURE_CUBE_MAP_POSITIVE_X :: Enum(0x8515)
```

### [TEXTURE\_CUBE\_MAP\_POSITIVE\_Y ¶](#TEXTURE_CUBE_MAP_POSITIVE_Y) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L282)

```
TEXTURE_CUBE_MAP_POSITIVE_Y :: Enum(0x8517)
```

### [TEXTURE\_CUBE\_MAP\_POSITIVE\_Z ¶](#TEXTURE_CUBE_MAP_POSITIVE_Z) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L284)

```
TEXTURE_CUBE_MAP_POSITIVE_Z :: Enum(0x8519)
```

### [TEXTURE\_IMMUTABLE\_FORMAT ¶](#TEXTURE_IMMUTABLE_FORMAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L261)

```
TEXTURE_IMMUTABLE_FORMAT :: Enum(0x912F)
```

### [TEXTURE\_IMMUTABLE\_LEVELS ¶](#TEXTURE_IMMUTABLE_LEVELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L263)

```
TEXTURE_IMMUTABLE_LEVELS :: Enum(0x82DF)
```

### [TEXTURE\_MAG\_FILTER ¶](#TEXTURE_MAG_FILTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L269)

```
TEXTURE_MAG_FILTER :: Enum(0x2800)
```

 

TextureParameterName

### [TEXTURE\_MAX\_LEVEL ¶](#TEXTURE_MAX_LEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L29)

```
TEXTURE_MAX_LEVEL :: Enum(0x813D)
```

### [TEXTURE\_MAX\_LOD ¶](#TEXTURE_MAX_LOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L27)

```
TEXTURE_MAX_LOD :: Enum(0x813B)
```

### [TEXTURE\_MIN\_FILTER ¶](#TEXTURE_MIN_FILTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L270)

```
TEXTURE_MIN_FILTER :: Enum(0x2801)
```

### [TEXTURE\_MIN\_LOD ¶](#TEXTURE_MIN_LOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L26)

```
TEXTURE_MIN_LOD :: Enum(0x813A)
```

### [TEXTURE\_WRAP\_R ¶](#TEXTURE_WRAP_R) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L21)

```
TEXTURE_WRAP_R :: Enum(0x8072)
```

### [TEXTURE\_WRAP\_S ¶](#TEXTURE_WRAP_S) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L271)

```
TEXTURE_WRAP_S :: Enum(0x2802)
```

### [TEXTURE\_WRAP\_T ¶](#TEXTURE_WRAP_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L272)

```
TEXTURE_WRAP_T :: Enum(0x2803)
```

### [TIMEOUT\_EXPIRED ¶](#TIMEOUT_EXPIRED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L247)

```
TIMEOUT_EXPIRED :: Enum(0x911B)
```

### [TIMEOUT\_IGNORED ¶](#TIMEOUT_IGNORED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L265)

```
TIMEOUT_IGNORED :: i64(-1)
```

### [TRANSFORM\_FEEDBACK ¶](#TRANSFORM_FEEDBACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L257)

```
TRANSFORM_FEEDBACK :: Enum(0x8E22)
```

### [TRANSFORM\_FEEDBACK\_ACTIVE ¶](#TRANSFORM_FEEDBACK_ACTIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L259)

```
TRANSFORM_FEEDBACK_ACTIVE :: Enum(0x8E24)
```

### [TRANSFORM\_FEEDBACK\_BINDING ¶](#TRANSFORM_FEEDBACK_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L260)

```
TRANSFORM_FEEDBACK_BINDING :: Enum(0x8E25)
```

### [TRANSFORM\_FEEDBACK\_BUFFER ¶](#TRANSFORM_FEEDBACK_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L107)

```
TRANSFORM_FEEDBACK_BUFFER :: Enum(0x8C8E)
```

### [TRANSFORM\_FEEDBACK\_BUFFER\_BINDING ¶](#TRANSFORM_FEEDBACK_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L108)

```
TRANSFORM_FEEDBACK_BUFFER_BINDING :: Enum(0x8C8F)
```

### [TRANSFORM\_FEEDBACK\_BUFFER\_MODE ¶](#TRANSFORM_FEEDBACK_BUFFER_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L96)

```
TRANSFORM_FEEDBACK_BUFFER_MODE :: Enum(0x8C7F)
```

### [TRANSFORM\_FEEDBACK\_BUFFER\_SIZE ¶](#TRANSFORM_FEEDBACK_BUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L100)

```
TRANSFORM_FEEDBACK_BUFFER_SIZE :: Enum(0x8C85)
```

### [TRANSFORM\_FEEDBACK\_BUFFER\_START ¶](#TRANSFORM_FEEDBACK_BUFFER_START) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L99)

```
TRANSFORM_FEEDBACK_BUFFER_START :: Enum(0x8C84)
```

### [TRANSFORM\_FEEDBACK\_PAUSED ¶](#TRANSFORM_FEEDBACK_PAUSED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L258)

```
TRANSFORM_FEEDBACK_PAUSED :: Enum(0x8E23)
```

### [TRANSFORM\_FEEDBACK\_PRIMITIVES\_WRITTEN ¶](#TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L101)

```
TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN :: Enum(0x8C88)
```

### [TRANSFORM\_FEEDBACK\_VARYINGS ¶](#TRANSFORM_FEEDBACK_VARYINGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L98)

```
TRANSFORM_FEEDBACK_VARYINGS :: Enum(0x8C83)
```

### [TRIANGLES ¶](#TRIANGLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L13)

```
TRIANGLES :: Enum(0x0004)
```

### [TRIANGLE\_FAN ¶](#TRIANGLE_FAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L15)

```
TRIANGLE_FAN :: Enum(0x0006)
```

### [TRIANGLE\_STRIP ¶](#TRIANGLE_STRIP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L14)

```
TRIANGLE_STRIP :: Enum(0x0005)
```

### [UNIFORM\_ARRAY\_STRIDE ¶](#UNIFORM_ARRAY_STRIDE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L225)

```
UNIFORM_ARRAY_STRIDE :: Enum(0x8A3C)
```

### [UNIFORM\_BLOCK\_ACTIVE\_UNIFORMS ¶](#UNIFORM_BLOCK_ACTIVE_UNIFORMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L230)

```
UNIFORM_BLOCK_ACTIVE_UNIFORMS :: Enum(0x8A42)
```

### [UNIFORM\_BLOCK\_ACTIVE\_UNIFORM\_INDICES ¶](#UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L231)

```
UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES :: Enum(0x8A43)
```

### [UNIFORM\_BLOCK\_BINDING ¶](#UNIFORM_BLOCK_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L228)

```
UNIFORM_BLOCK_BINDING :: Enum(0x8A3F)
```

### [UNIFORM\_BLOCK\_DATA\_SIZE ¶](#UNIFORM_BLOCK_DATA_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L229)

```
UNIFORM_BLOCK_DATA_SIZE :: Enum(0x8A40)
```

### [UNIFORM\_BLOCK\_INDEX ¶](#UNIFORM_BLOCK_INDEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L223)

```
UNIFORM_BLOCK_INDEX :: Enum(0x8A3A)
```

### [UNIFORM\_BLOCK\_REFERENCED\_BY\_FRAGMENT\_SHADER ¶](#UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L233)

```
UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER :: Enum(0x8A46)
```

### [UNIFORM\_BLOCK\_REFERENCED\_BY\_VERTEX\_SHADER ¶](#UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L232)

```
UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER :: Enum(0x8A44)
```

### [UNIFORM\_BUFFER ¶](#UNIFORM_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L208)

```
UNIFORM_BUFFER :: Enum(0x8A11)
```

### [UNIFORM\_BUFFER\_BINDING ¶](#UNIFORM_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L209)

```
UNIFORM_BUFFER_BINDING :: Enum(0x8A28)
```

### [UNIFORM\_BUFFER\_OFFSET\_ALIGNMENT ¶](#UNIFORM_BUFFER_OFFSET_ALIGNMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L219)

```
UNIFORM_BUFFER_OFFSET_ALIGNMENT :: Enum(0x8A34)
```

### [UNIFORM\_BUFFER\_SIZE ¶](#UNIFORM_BUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L211)

```
UNIFORM_BUFFER_SIZE :: Enum(0x8A2A)
```

### [UNIFORM\_BUFFER\_START ¶](#UNIFORM_BUFFER_START) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L210)

```
UNIFORM_BUFFER_START :: Enum(0x8A29)
```

### [UNIFORM\_IS\_ROW\_MAJOR ¶](#UNIFORM_IS_ROW_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L227)

```
UNIFORM_IS_ROW_MAJOR :: Enum(0x8A3E)
```

### [UNIFORM\_MATRIX\_STRIDE ¶](#UNIFORM_MATRIX_STRIDE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L226)

```
UNIFORM_MATRIX_STRIDE :: Enum(0x8A3D)
```

### [UNIFORM\_OFFSET ¶](#UNIFORM_OFFSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L224)

```
UNIFORM_OFFSET :: Enum(0x8A3B)
```

### [UNIFORM\_SIZE ¶](#UNIFORM_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L222)

```
UNIFORM_SIZE :: Enum(0x8A38)
```

### [UNIFORM\_TYPE ¶](#UNIFORM_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L221)

```
UNIFORM_TYPE :: Enum(0x8A37)
```

### [UNPACK\_ALIGNMENT ¶](#UNPACK_ALIGNMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L152)

```
UNPACK_ALIGNMENT :: Enum(0x0CF5)
```

### [UNPACK\_COLORSPACE\_CONVERSION\_WEBGL ¶](#UNPACK_COLORSPACE_CONVERSION_WEBGL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L419)

```
UNPACK_COLORSPACE_CONVERSION_WEBGL :: Enum(0x9243)
```

### [UNPACK\_FLIP\_Y\_WEBGL ¶](#UNPACK_FLIP_Y_WEBGL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L416)

```
UNPACK_FLIP_Y_WEBGL :: Enum(0x9240)
```

 

WebGL-specific enums

### [UNPACK\_IMAGE\_HEIGHT ¶](#UNPACK_IMAGE_HEIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L19)

```
UNPACK_IMAGE_HEIGHT :: Enum(0x806E)
```

### [UNPACK\_PREMULTIPLY\_ALPHA\_WEBGL ¶](#UNPACK_PREMULTIPLY_ALPHA_WEBGL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L417)

```
UNPACK_PREMULTIPLY_ALPHA_WEBGL :: Enum(0x9241)
```

### [UNPACK\_ROW\_LENGTH ¶](#UNPACK_ROW_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L4)

```
UNPACK_ROW_LENGTH :: Enum(0x0CF2)
```

### [UNPACK\_SKIP\_IMAGES ¶](#UNPACK_SKIP_IMAGES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L18)

```
UNPACK_SKIP_IMAGES :: Enum(0x806D)
```

### [UNPACK\_SKIP\_PIXELS ¶](#UNPACK_SKIP_PIXELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L6)

```
UNPACK_SKIP_PIXELS :: Enum(0x0CF4)
```

### [UNPACK\_SKIP\_ROWS ¶](#UNPACK_SKIP_ROWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L5)

```
UNPACK_SKIP_ROWS :: Enum(0x0CF3)
```

### [UNSIGNALED ¶](#UNSIGNALED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L244)

```
UNSIGNALED :: Enum(0x9118)
```

### [UNSIGNED\_BYTE ¶](#UNSIGNED_BYTE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L190)

```
UNSIGNED_BYTE :: Enum(0x1401)
```

### [UNSIGNED\_INT ¶](#UNSIGNED_INT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L194)

```
UNSIGNED_INT :: Enum(0x1405)
```

### [UNSIGNED\_INT\_10F\_11F\_11F\_REV ¶](#UNSIGNED_INT_10F_11F_11F_REV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L93)

```
UNSIGNED_INT_10F_11F_11F_REV :: Enum(0x8C3B)
```

### [UNSIGNED\_INT\_24\_8 ¶](#UNSIGNED_INT_24_8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L150)

```
UNSIGNED_INT_24_8 :: Enum(0x84FA)
```

### [UNSIGNED\_INT\_2\_10\_10\_10\_REV ¶](#UNSIGNED_INT_2_10_10_10_REV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L23)

```
UNSIGNED_INT_2_10_10_10_REV :: Enum(0x8368)
```

### [UNSIGNED\_INT\_5\_9\_9\_9\_REV ¶](#UNSIGNED_INT_5_9_9_9_REV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L95)

```
UNSIGNED_INT_5_9_9_9_REV :: Enum(0x8C3E)
```

### [UNSIGNED\_INT\_SAMPLER\_2D ¶](#UNSIGNED_INT_SAMPLER_2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L134)

```
UNSIGNED_INT_SAMPLER_2D :: Enum(0x8DD2)
```

### [UNSIGNED\_INT\_SAMPLER\_2D\_ARRAY ¶](#UNSIGNED_INT_SAMPLER_2D_ARRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L137)

```
UNSIGNED_INT_SAMPLER_2D_ARRAY :: Enum(0x8DD7)
```

### [UNSIGNED\_INT\_SAMPLER\_3D ¶](#UNSIGNED_INT_SAMPLER_3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L135)

```
UNSIGNED_INT_SAMPLER_3D :: Enum(0x8DD3)
```

### [UNSIGNED\_INT\_SAMPLER\_CUBE ¶](#UNSIGNED_INT_SAMPLER_CUBE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L136)

```
UNSIGNED_INT_SAMPLER_CUBE :: Enum(0x8DD4)
```

### [UNSIGNED\_INT\_VEC2 ¶](#UNSIGNED_INT_VEC2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L127)

```
UNSIGNED_INT_VEC2 :: Enum(0x8DC6)
```

### [UNSIGNED\_INT\_VEC3 ¶](#UNSIGNED_INT_VEC3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L128)

```
UNSIGNED_INT_VEC3 :: Enum(0x8DC7)
```

### [UNSIGNED\_INT\_VEC4 ¶](#UNSIGNED_INT_VEC4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L129)

```
UNSIGNED_INT_VEC4 :: Enum(0x8DC8)
```

### [UNSIGNED\_NORMALIZED ¶](#UNSIGNED_NORMALIZED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L152)

```
UNSIGNED_NORMALIZED :: Enum(0x8C17)
```

### [UNSIGNED\_SHORT ¶](#UNSIGNED_SHORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L192)

```
UNSIGNED_SHORT :: Enum(0x1403)
```

### [UNSIGNED\_SHORT\_4\_4\_4\_4 ¶](#UNSIGNED_SHORT_4_4_4_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L207)

```
UNSIGNED_SHORT_4_4_4_4 :: Enum(0x8033)
```

 

PixelType
UNSIGNED\_BYTE

### [UNSIGNED\_SHORT\_5\_5\_5\_1 ¶](#UNSIGNED_SHORT_5_5_5_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L208)

```
UNSIGNED_SHORT_5_5_5_1 :: Enum(0x8034)
```

### [UNSIGNED\_SHORT\_5\_6\_5 ¶](#UNSIGNED_SHORT_5_6_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L209)

```
UNSIGNED_SHORT_5_6_5 :: Enum(0x8363)
```

### [VALIDATE\_STATUS ¶](#VALIDATE_STATUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L224)

```
VALIDATE_STATUS :: Enum(0x8B83)
```

### [VENDOR ¶](#VENDOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L252)

```
VENDOR :: Enum(0x1F00)
```

 

StringName

### [VERSION ¶](#VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L254)

```
VERSION :: Enum(0x1F02)
```

### [VERTEX\_ARRAY\_BINDING ¶](#VERTEX_ARRAY_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L198)

```
VERTEX_ARRAY_BINDING :: Enum(0x85B5)
```

### [VERTEX\_ATTRIB\_ARRAY\_BUFFER\_BINDING ¶](#VERTEX_ATTRIB_ARRAY_BUFFER_BINDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L352)

```
VERTEX_ATTRIB_ARRAY_BUFFER_BINDING :: Enum(0x889F)
```

### [VERTEX\_ATTRIB\_ARRAY\_DIVISOR ¶](#VERTEX_ATTRIB_ARRAY_DIVISOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L251)

```
VERTEX_ATTRIB_ARRAY_DIVISOR :: Enum(0x88FE)
```

### [VERTEX\_ATTRIB\_ARRAY\_ENABLED ¶](#VERTEX_ATTRIB_ARRAY_ENABLED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L346)

```
VERTEX_ATTRIB_ARRAY_ENABLED :: Enum(0x8622)
```

 

Vertex Arrays

### [VERTEX\_ATTRIB\_ARRAY\_INTEGER ¶](#VERTEX_ATTRIB_ARRAY_INTEGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L85)

```
VERTEX_ATTRIB_ARRAY_INTEGER :: Enum(0x88FD)
```

### [VERTEX\_ATTRIB\_ARRAY\_NORMALIZED ¶](#VERTEX_ATTRIB_ARRAY_NORMALIZED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L350)

```
VERTEX_ATTRIB_ARRAY_NORMALIZED :: Enum(0x886A)
```

### [VERTEX\_ATTRIB\_ARRAY\_POINTER ¶](#VERTEX_ATTRIB_ARRAY_POINTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L351)

```
VERTEX_ATTRIB_ARRAY_POINTER :: Enum(0x8645)
```

### [VERTEX\_ATTRIB\_ARRAY\_SIZE ¶](#VERTEX_ATTRIB_ARRAY_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L347)

```
VERTEX_ATTRIB_ARRAY_SIZE :: Enum(0x8623)
```

### [VERTEX\_ATTRIB\_ARRAY\_STRIDE ¶](#VERTEX_ATTRIB_ARRAY_STRIDE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L348)

```
VERTEX_ATTRIB_ARRAY_STRIDE :: Enum(0x8624)
```

### [VERTEX\_ATTRIB\_ARRAY\_TYPE ¶](#VERTEX_ATTRIB_ARRAY_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L349)

```
VERTEX_ATTRIB_ARRAY_TYPE :: Enum(0x8625)
```

### [VERTEX\_SHADER ¶](#VERTEX_SHADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L213)

```
VERTEX_SHADER :: Enum(0x8B31)
```

### [VIEWPORT ¶](#VIEWPORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L147)

```
VIEWPORT :: Enum(0x0BA2)
```

### [WAIT\_FAILED ¶](#WAIT_FAILED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin#L249)

```
WAIT_FAILED :: Enum(0x911D)
```

### [ZERO ¶](#ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin#L28)

```
ZERO :: Enum(0)
```

 

BlendingFactorDest

## Variables

This section is empty.

## Procedures

### [ActiveTexture ¶](#ActiveTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L57)

```
ActiveTexture :: proc "contextless" (x: Enum) ---
```

### [AttachShader ¶](#AttachShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L58)

```
AttachShader :: proc "contextless" (program: Program, shader: Shader) ---
```

### [BeginQuery ¶](#BeginQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L76)

```
BeginQuery :: proc "contextless" (target: Enum, query: Query) ---
```

### [BeginTransformFeedback ¶](#BeginTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L97)

```
BeginTransformFeedback :: proc "contextless" (primitiveMode: Enum) ---
```

### [BindAttribLocation ¶](#BindAttribLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L59)

```
BindAttribLocation :: proc "contextless" (program: Program, index: i32, name: string) ---
```

### [BindBuffer ¶](#BindBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L60)

```
BindBuffer :: proc "contextless" (target: Enum, buffer: Buffer) ---
```

### [BindBufferBase ¶](#BindBufferBase) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L103)

```
BindBufferBase :: proc "contextless" (target: Enum, index: i32, buffer: Buffer) ---
```

### [BindBufferRange ¶](#BindBufferRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L104)

```
BindBufferRange :: proc "contextless" (target: Enum, index: i32, buffer: Buffer, offset: int, size: int) ---
```

### [BindFramebuffer ¶](#BindFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L61)

```
BindFramebuffer :: proc "contextless" (target: Enum, framebuffer: Framebuffer) ---
```

### [BindRenderbuffer ¶](#BindRenderbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L63)

```
BindRenderbuffer :: proc "contextless" (target: Enum, renderbuffer: Renderbuffer) ---
```

### [BindSampler ¶](#BindSampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L83)

```
BindSampler :: proc "contextless" (unit: Enum, sampler: Sampler) ---
```

### [BindTexture ¶](#BindTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L62)

```
BindTexture :: proc "contextless" (target: Enum, texture: Texture) ---
```

### [BindTransformFeedback ¶](#BindTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L96)

```
BindTransformFeedback :: proc "contextless" (target: Enum, tf: TransformFeedback) ---
```

### [BindVertexArray ¶](#BindVertexArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L117)

```
BindVertexArray :: proc "contextless" (vertexArray: VertexArrayObject) ---
```

### [BlendColor ¶](#BlendColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L64)

```
BlendColor :: proc "contextless" (red, green, blue, alpha: f32) ---
```

### [BlendEquation ¶](#BlendEquation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L65)

```
BlendEquation :: proc "contextless" (mode: Enum) ---
```

### [BlendEquationSeparate ¶](#BlendEquationSeparate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L66)

```
BlendEquationSeparate :: proc "contextless" (modeRGB: Enum, modeAlpha: Enum) ---
```

### [BlendFunc ¶](#BlendFunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L67)

```
BlendFunc :: proc "contextless" (sfactor, dfactor: Enum) ---
```

### [BlendFuncSeparate ¶](#BlendFuncSeparate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L68)

```
BlendFuncSeparate :: proc "contextless" (srcRGB, dstRGB, srcAlpha, dstAlpha: Enum) ---
```

### [BlitFramebuffer ¶](#BlitFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L28)

```
BlitFramebuffer :: proc "contextless" (
	srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1: i32, 
	mask:                                                   u32, 
	filter:                                                 Enum, 
) ---
```

 

Framebuffer objects

### [BufferData ¶](#BufferData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L70)

```
BufferData :: proc "contextless" (target: Enum, size: int, data: rawptr, usage: Enum) ---
```

### [BufferDataSlice ¶](#BufferDataSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L394)

```
BufferDataSlice :: proc "contextless" (target: Enum, slice: $S/[]$E, usage: Enum) {…}
```

### [BufferSubData ¶](#BufferSubData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L71)

```
BufferSubData :: proc "contextless" (target: Enum, offset: uintptr, size: int, data: rawptr) ---
```

### [BufferSubDataSlice ¶](#BufferSubDataSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L397)

```
BufferSubDataSlice :: proc "contextless" (target: Enum, offset: uintptr, slice: $S/[]$E) {…}
```

### [CheckFramebufferStatus ¶](#CheckFramebufferStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L117)

```
CheckFramebufferStatus :: proc "contextless" (target: Enum) -> Enum ---
```

### [Clear ¶](#Clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L73)

```
Clear :: proc "contextless" (bits: u32) ---
```

### [ClearBufferfi ¶](#ClearBufferfi) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L71)

```
ClearBufferfi :: proc "contextless" (buffer: Enum, drawbuffer: i32, depth: f32, stencil: i32) ---
```

### [ClearBufferfv ¶](#ClearBufferfv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L68)

```
ClearBufferfv :: proc "contextless" (buffer: Enum, drawbuffer: i32, values: []f32) ---
```

### [ClearBufferiv ¶](#ClearBufferiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L69)

```
ClearBufferiv :: proc "contextless" (buffer: Enum, drawbuffer: i32, values: []i32) ---
```

### [ClearBufferuiv ¶](#ClearBufferuiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L70)

```
ClearBufferuiv :: proc "contextless" (buffer: Enum, drawbuffer: i32, values: []u32) ---
```

### [ClearColor ¶](#ClearColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L74)

```
ClearColor :: proc "contextless" (r: f32, g: f32, b: f32, a: f32) ---
```

### [ClearDepth ¶](#ClearDepth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L75)

```
ClearDepth :: proc "contextless" (x: f32) ---
```

### [ClearStencil ¶](#ClearStencil) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L76)

```
ClearStencil :: proc "contextless" (x: i32) ---
```

### [ClientWaitSync ¶](#ClientWaitSync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L90)

```
ClientWaitSync :: proc "contextless" (sync: Sync, flags: u32, timeout: u64) ---
```

### [ColorMask ¶](#ColorMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L77)

```
ColorMask :: proc "contextless" (r, g, b, a: bool) ---
```

### [CompileShader ¶](#CompileShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L78)

```
CompileShader :: proc "contextless" (shader: Shader) ---
```

### [CompressedTexImage2D ¶](#CompressedTexImage2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L80)

```
CompressedTexImage2D :: proc "contextless" (
	target:         Enum, 
	level:          i32, 
	internalformat: Enum, 
	width, height:  i32, 
	border:         i32, 
	imageSize:      int, 
	data:           rawptr, 
) ---
```

### [CompressedTexImage2DSlice ¶](#CompressedTexImage2DSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L401)

```
CompressedTexImage2DSlice :: proc "contextless" (
	target:         Enum, 
	level:          i32, 
	internalformat: Enum, 
	width, height:  i32, 
	border:         i32, 
	slice:          $S/[]$E, 
) {…}
```

### [CompressedTexImage3D ¶](#CompressedTexImage3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L42)

```
CompressedTexImage3D :: proc "contextless" (
	target:               Enum, 
	level:                i32, 
	internalformat:       Enum, 
	width, height, depth: i32, 
	border:               i32, 
	imageSize:            int, 
	data:                 rawptr, 
) ---
```

### [CompressedTexSubImage2D ¶](#CompressedTexSubImage2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L81)

```
CompressedTexSubImage2D :: proc "contextless" (
	target:                          Enum, 
	level:                           i32, 
	xoffset, yoffset, width, height: i32, 
	format:                          Enum, 
	imageSize:                       int, 
	data:                            rawptr, 
) ---
```

### [CompressedTexSubImage2DSlice ¶](#CompressedTexSubImage2DSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L404)

```
CompressedTexSubImage2DSlice :: proc "contextless" (
	target:                          Enum, 
	level:                           i32, 
	xoffset, yoffset, width, height: i32, 
	format:                          Enum, 
	slice:                           $S/[]$E, 
) {…}
```

### [CompressedTexSubImage3D ¶](#CompressedTexSubImage3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L43)

```
CompressedTexSubImage3D :: proc "contextless" (
	target:               Enum, 
	level:                i32, 
	xoffset, yoffset:     i32, 
	width, height, depth: i32, 
	format:               Enum, 
	imageSize:            int, 
	data:                 rawptr, 
) ---
```

### [CopyBufferSubData ¶](#CopyBufferSubData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L24)

```
CopyBufferSubData :: proc "contextless" (readTarget, writeTarget: Enum, readOffset, writeOffset: int, size: int) ---
```

 

Buffer objects

### [CopyTexImage2D ¶](#CopyTexImage2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L82)

```
CopyTexImage2D :: proc "contextless" (
	target:              Enum, 
	level:               i32, 
	internalformat:      Enum, 
	x, y, width, height: i32, 
	border:              i32, 
) ---
```

### [CopyTexSubImage2D ¶](#CopyTexSubImage2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L83)

```
CopyTexSubImage2D :: proc "contextless" (
	target:                 Enum, 
	level:                  i32, 
	xoffset, yoffset, x, y: i32, 
	width, 
	height:                 i32, 
) ---
```

### [CopyTexSubImage3D ¶](#CopyTexSubImage3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L44)

```
CopyTexSubImage3D :: proc "contextless" (
	target:                    Enum, 
	level:                     i32, 
	xoffset, yoffset, zoffset: i32, 
	x, y, width, 
	height:                    i32, 
) ---
```

### [CreateBuffer ¶](#CreateBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L86)

```
CreateBuffer :: proc "contextless" () -> Buffer ---
```

### [CreateCurrentContextById ¶](#CreateCurrentContextById) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L41)

```
CreateCurrentContextById :: proc "contextless" (name: string, attributes: ContextAttributes) -> bool ---
```

 

CreateCurrentContextById must be called before `GetCurrentContextAttributes` if the user wants to
set specific attributes, otherwise the default attributes will be set for the WebGL context

### [CreateFramebuffer ¶](#CreateFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L87)

```
CreateFramebuffer :: proc "contextless" () -> Framebuffer ---
```

### [CreateProgram ¶](#CreateProgram) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L88)

```
CreateProgram :: proc "contextless" () -> Program ---
```

### [CreateProgramFromStrings ¶](#CreateProgramFromStrings) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_helpers.odin#L5)

```
CreateProgramFromStrings :: proc(vs_sources, fs_sources: []string) -> (program: Program, ok: bool) {…}
```

### [CreateQuery ¶](#CreateQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L73)

```
CreateQuery :: proc "contextless" () -> Query ---
```

### [CreateRenderbuffer ¶](#CreateRenderbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L89)

```
CreateRenderbuffer :: proc "contextless" () -> Renderbuffer ---
```

### [CreateSampler ¶](#CreateSampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L80)

```
CreateSampler :: proc "contextless" () -> Sampler ---
```

### [CreateShader ¶](#CreateShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L90)

```
CreateShader :: proc "contextless" (shaderType: Enum) -> Shader ---
```

### [CreateTexture ¶](#CreateTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L91)

```
CreateTexture :: proc "contextless" () -> Texture ---
```

### [CreateTransformFeedback ¶](#CreateTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L93)

```
CreateTransformFeedback :: proc "contextless" () -> TransformFeedback ---
```

### [CreateVertexArray ¶](#CreateVertexArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L114)

```
CreateVertexArray :: proc "contextless" () -> VertexArrayObject ---
```

### [CullFace ¶](#CullFace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L93)

```
CullFace :: proc "contextless" (mode: Enum) ---
```

### [DeleteBuffer ¶](#DeleteBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L95)

```
DeleteBuffer :: proc "contextless" (buffer: Buffer) ---
```

### [DeleteFramebuffer ¶](#DeleteFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L96)

```
DeleteFramebuffer :: proc "contextless" (framebuffer: Framebuffer) ---
```

### [DeleteProgram ¶](#DeleteProgram) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L97)

```
DeleteProgram :: proc "contextless" (program: Program) ---
```

### [DeleteQuery ¶](#DeleteQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L74)

```
DeleteQuery :: proc "contextless" (query: Query) ---
```

### [DeleteRenderbuffer ¶](#DeleteRenderbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L98)

```
DeleteRenderbuffer :: proc "contextless" (renderbuffer: Renderbuffer) ---
```

### [DeleteSampler ¶](#DeleteSampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L81)

```
DeleteSampler :: proc "contextless" (sampler: Sampler) ---
```

### [DeleteShader ¶](#DeleteShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L99)

```
DeleteShader :: proc "contextless" (shader: Shader) ---
```

### [DeleteSync ¶](#DeleteSync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L89)

```
DeleteSync :: proc "contextless" (sync: Sync) ---
```

### [DeleteTexture ¶](#DeleteTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L100)

```
DeleteTexture :: proc "contextless" (texture: Texture) ---
```

### [DeleteTransformFeedback ¶](#DeleteTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L94)

```
DeleteTransformFeedback :: proc "contextless" (tf: TransformFeedback) ---
```

### [DeleteVertexArray ¶](#DeleteVertexArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L115)

```
DeleteVertexArray :: proc "contextless" (vertexArray: VertexArrayObject) ---
```

### [DepthFunc ¶](#DepthFunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L102)

```
DepthFunc :: proc "contextless" (func: Enum) ---
```

### [DepthMask ¶](#DepthMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L103)

```
DepthMask :: proc "contextless" (flag: bool) ---
```

### [DepthRange ¶](#DepthRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L104)

```
DepthRange :: proc "contextless" (zNear, zFar: f32) ---
```

### [DetachShader ¶](#DetachShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L105)

```
DetachShader :: proc "contextless" (program: Program, shader: Shader) ---
```

### [Disable ¶](#Disable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L106)

```
Disable :: proc "contextless" (cap: Enum) ---
```

### [DisableVertexAttribArray ¶](#DisableVertexAttribArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L107)

```
DisableVertexAttribArray :: proc "contextless" (index: i32) ---
```

### [DrawArrays ¶](#DrawArrays) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L108)

```
DrawArrays :: proc "contextless" (mode: Enum, first, count: int) ---
```

### [DrawArraysInstanced ¶](#DrawArraysInstanced) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L62)

```
DrawArraysInstanced :: proc "contextless" (mode: Enum, first, count: int, instanceCount: int) ---
```

### [DrawBuffers ¶](#DrawBuffers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L67)

```
DrawBuffers :: proc "contextless" (buffers: []Enum) ---
```

 

Multiple Render Targets

### [DrawElements ¶](#DrawElements) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L109)

```
DrawElements :: proc "contextless" (mode: Enum, count: int, type: Enum, indices: rawptr) ---
```

### [DrawElementsInstanced ¶](#DrawElementsInstanced) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L63)

```
DrawElementsInstanced :: proc "contextless" (mode: Enum, count: int, type: Enum, offset: int, instanceCount: int) ---
```

### [DrawRangeElements ¶](#DrawRangeElements) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L64)

```
DrawRangeElements :: proc "contextless" (
	mode:              Enum, 
	start, end, count: int, 
	type:              Enum, 
	offset:            int, 
) ---
```

### [DrawingBufferHeight ¶](#DrawingBufferHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L47)

```
DrawingBufferHeight :: proc "contextless" () -> i32 ---
```

### [DrawingBufferWidth ¶](#DrawingBufferWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L46)

```
DrawingBufferWidth :: proc "contextless" () -> i32 ---
```

### [Enable ¶](#Enable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L111)

```
Enable :: proc "contextless" (cap: Enum) ---
```

### [EnableVertexAttribArray ¶](#EnableVertexAttribArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L112)

```
EnableVertexAttribArray :: proc "contextless" (index: i32) ---
```

### [EndQuery ¶](#EndQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L77)

```
EndQuery :: proc "contextless" (target: Enum) ---
```

### [EndTransformFeedback ¶](#EndTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L98)

```
EndTransformFeedback :: proc "contextless" () ---
```

### [FenceSync ¶](#FenceSync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L87)

```
FenceSync :: proc "contextless" (condition: Enum, flags: u32) -> Sync ---
```

### [Finish ¶](#Finish) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L113)

```
Finish :: proc "contextless" () ---
```

### [Flush ¶](#Flush) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L114)

```
Flush :: proc "contextless" () ---
```

### [FramebufferRenderbuffer ¶](#FramebufferRenderbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L115)

```
FramebufferRenderbuffer :: proc "contextless" (target, attachment, renderbufertarget: Enum, renderbuffer: Renderbuffer) ---
```

### [FramebufferTexture2D ¶](#FramebufferTexture2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L116)

```
FramebufferTexture2D :: proc "contextless" (target, attachment, textarget: Enum, texture: Texture, level: i32) ---
```

### [FramebufferTextureLayer ¶](#FramebufferTextureLayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L29)

```
FramebufferTextureLayer :: proc "contextless" (target: Enum, attachment: Enum, texture: Texture, level: i32, layer: i32) ---
```

### [FrontFace ¶](#FrontFace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L118)

```
FrontFace :: proc "contextless" (mode: Enum) ---
```

### [GenerateMipmap ¶](#GenerateMipmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L120)

```
GenerateMipmap :: proc "contextless" (target: Enum) ---
```

### [GetActiveAttribAlloc ¶](#GetActiveAttribAlloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L293)

```
GetActiveAttribAlloc :: proc(program: Program, index: u32, allocator: runtime.Allocator, loc := #caller_location) -> (info: ActiveInfo) {…}
```

##### Related Procedure Groups

* [GetActiveAttrib](/vendor/wasm/WebGL/#GetActiveAttrib)

### [GetActiveAttribBuf ¶](#GetActiveAttribBuf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L282)

```
GetActiveAttribBuf :: proc "contextless" (program: Program, index: u32, name_buf: []u8) -> (info: ActiveInfo) {…}
```

##### Related Procedure Groups

* [GetActiveAttrib](/vendor/wasm/WebGL/#GetActiveAttrib)

### [GetActiveUniformAlloc ¶](#GetActiveUniformAlloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L330)

```
GetActiveUniformAlloc :: proc(program: Program, index: u32, allocator: runtime.Allocator, loc := #caller_location) -> (info: ActiveInfo) {…}
```

##### Related Procedure Groups

* [GetActiveUniform](/vendor/wasm/WebGL/#GetActiveUniform)

### [GetActiveUniformBlockNameAlloc ¶](#GetActiveUniformBlockNameAlloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L130)

```
GetActiveUniformBlockNameAlloc :: proc(program: Program, uniformBlockIndex: i32, allocator: runtime.Allocator, loc := #caller_location) -> string {…}
```

##### Related Procedure Groups

* [GetActiveUniformBlockName](/vendor/wasm/WebGL/#GetActiveUniformBlockName)

### [GetActiveUniformBlockNameBuf ¶](#GetActiveUniformBlockNameBuf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L120)

```
GetActiveUniformBlockNameBuf :: proc(program: Program, uniformBlockIndex: i32, buf: []u8) -> string {…}
```

##### Related Procedure Groups

* [GetActiveUniformBlockName](/vendor/wasm/WebGL/#GetActiveUniformBlockName)

### [GetActiveUniformBlockParameter ¶](#GetActiveUniformBlockParameter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L111)

```
GetActiveUniformBlockParameter :: proc "contextless" (program: Program, uniformBlockIndex: i32, pname: Enum, params: [^]i32) ---
```

 

if `pname` is `UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES` then an array will be written at
`params`, in that case the length `params` need to have is given first querying using `pname`
`UNIFORM_BLOCK_ACTIVE_UNIFORMS`.

### [GetActiveUniformBuf ¶](#GetActiveUniformBuf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L319)

```
GetActiveUniformBuf :: proc "contextless" (program: Program, index: u32, name_buf: []u8) -> (info: ActiveInfo) {…}
```

##### Related Procedure Groups

* [GetActiveUniform](/vendor/wasm/WebGL/#GetActiveUniform)

### [GetActiveUniforms ¶](#GetActiveUniforms) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L112)

```
GetActiveUniforms :: proc "contextless" (program: Program, uniformIndices: []u32, pname: Enum, res: [^]i32) ---
```

### [GetAttribLocation ¶](#GetAttribLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L123)

```
GetAttribLocation :: proc "contextless" (program: Program, name: string) -> i32 ---
```

### [GetBufferParameter ¶](#GetBufferParameter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L122)

```
GetBufferParameter :: proc "contextless" (target, name: Enum) -> int ---
```

### [GetBufferSubData ¶](#GetBufferSubData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L25)

```
GetBufferSubData :: proc "contextless" (target: Enum, srcByteOffset: int, dst_buffer: []u8, dstOffset: int = 0, length: int = 0) ---
```

### [GetCurrentContextAttributes ¶](#GetCurrentContextAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L44)

```
GetCurrentContextAttributes :: proc "contextless" () -> ContextAttributes ---
```

### [GetESVersion ¶](#GetESVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L50)

```
GetESVersion :: proc "contextless" (major, minor: ^i32) ---
```

### [GetError ¶](#GetError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L52)

```
GetError :: proc "contextless" () -> Enum ---
```

### [GetExtension ¶](#GetExtension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L55)

```
GetExtension :: proc "contextless" (name: string) ---
```

### [GetFragDataLocation ¶](#GetFragDataLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L47)

```
GetFragDataLocation :: proc "contextless" (program: Program, name: string) -> i32 ---
```

 

Programs and shaders

### [GetParameter ¶](#GetParameter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L127)

```
GetParameter :: proc "contextless" (pname: Enum) -> i32 ---
```

### [GetParameter4i ¶](#GetParameter4i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L128)

```
GetParameter4i :: proc "contextless" (pname: Enum, v0, v1, v2, v4: ^i32) ---
```

### [GetProgramInfoLog ¶](#GetProgramInfoLog) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L356)

```
GetProgramInfoLog :: proc "contextless" (program: Program, buf: []u8) -> string {…}
```

### [GetProgramParameter ¶](#GetProgramParameter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L126)

```
GetProgramParameter :: proc "contextless" (program: Program, pname: Enum) -> i32 ---
```

### [GetQuery ¶](#GetQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L78)

```
GetQuery :: proc "contextless" (target, pname: Enum) ---
```

### [GetShaderInfoLog ¶](#GetShaderInfoLog) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L367)

```
GetShaderInfoLog :: proc "contextless" (shader: Shader, buf: []u8) -> string {…}
```

### [GetShaderiv ¶](#GetShaderiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L273)

```
GetShaderiv :: proc "contextless" (shader: Shader, pname: Enum) -> (p: i32) {…}
```

### [GetUniformBlockIndex ¶](#GetUniformBlockIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L105)

```
GetUniformBlockIndex :: proc "contextless" (program: Program, uniformBlockName: string) -> i32 ---
```

### [GetUniformLocation ¶](#GetUniformLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L124)

```
GetUniformLocation :: proc "contextless" (program: Program, name: string) -> i32 ---
```

### [GetVertexAttribOffset ¶](#GetVertexAttribOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L125)

```
GetVertexAttribOffset :: proc "contextless" (index: i32, pname: Enum) -> uintptr ---
```

### [GetWebGLVersion ¶](#GetWebGLVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L49)

```
GetWebGLVersion :: proc "contextless" (major, minor: ^i32) ---
```

### [Hint ¶](#Hint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L130)

```
Hint :: proc "contextless" (target: Enum, mode: Enum) ---
```

### [InvalidateFramebuffer ¶](#InvalidateFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L30)

```
InvalidateFramebuffer :: proc "contextless" (target: Enum, attachments: []Enum) ---
```

### [InvalidateSubFramebuffer ¶](#InvalidateSubFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L31)

```
InvalidateSubFramebuffer :: proc "contextless" (
	target:      Enum, 
	attachments: []Enum, 
	x, y, width, 
	height:      i32, 
) ---
```

### [IsBuffer ¶](#IsBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L132)

```
IsBuffer :: proc "contextless" (buffer: Buffer) -> bool ---
```

### [IsEnabled ¶](#IsEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L133)

```
IsEnabled :: proc "contextless" (cap: Enum) -> bool ---
```

### [IsExtensionSupported ¶](#IsExtensionSupported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L54)

```
IsExtensionSupported :: proc "contextless" (name: string) -> bool ---
```

### [IsFramebuffer ¶](#IsFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L134)

```
IsFramebuffer :: proc "contextless" (framebuffer: Framebuffer) -> bool ---
```

### [IsProgram ¶](#IsProgram) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L135)

```
IsProgram :: proc "contextless" (program: Program) -> bool ---
```

### [IsQuery ¶](#IsQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L75)

```
IsQuery :: proc "contextless" (query: Query) -> bool ---
```

### [IsRenderbuffer ¶](#IsRenderbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L136)

```
IsRenderbuffer :: proc "contextless" (renderbuffer: Renderbuffer) -> bool ---
```

### [IsSampler ¶](#IsSampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L82)

```
IsSampler :: proc "contextless" (sampler: Sampler) -> bool ---
```

### [IsShader ¶](#IsShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L137)

```
IsShader :: proc "contextless" (shader: Shader) -> bool ---
```

### [IsSync ¶](#IsSync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L88)

```
IsSync :: proc "contextless" (sync: Sync) -> bool ---
```

### [IsTexture ¶](#IsTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L138)

```
IsTexture :: proc "contextless" (texture: Texture) -> bool ---
```

### [IsTransformFeedback ¶](#IsTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L95)

```
IsTransformFeedback :: proc "contextless" (tf: TransformFeedback) -> bool ---
```

### [IsVertexArray ¶](#IsVertexArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L116)

```
IsVertexArray :: proc "contextless" (vertexArray: VertexArrayObject) -> bool ---
```

### [IsWebGL2Supported ¶](#IsWebGL2Supported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L15)

```
IsWebGL2Supported :: proc "contextless" () -> bool {…}
```

### [IterateSupportedExtensions ¶](#IterateSupportedExtensions) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L378)

```
IterateSupportedExtensions :: proc(index: ^int, buf: []u8) -> (string, bool) {…}
```

### [LineWidth ¶](#LineWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L140)

```
LineWidth :: proc "contextless" (width: f32) ---
```

### [LinkProgram ¶](#LinkProgram) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L141)

```
LinkProgram :: proc "contextless" (program: Program) ---
```

### [PauseTransformFeedback ¶](#PauseTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L100)

```
PauseTransformFeedback :: proc "contextless" () ---
```

### [PixelStorei ¶](#PixelStorei) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L142)

```
PixelStorei :: proc "contextless" (pname: Enum, param: i32) ---
```

### [PolygonOffset ¶](#PolygonOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L143)

```
PolygonOffset :: proc "contextless" (factor: f32, units: f32) ---
```

### [ReadBuffer ¶](#ReadBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L32)

```
ReadBuffer :: proc "contextless" (src: Enum) ---
```

### [ReadPixelsSlice ¶](#ReadPixelsSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L408)

```
ReadPixelsSlice :: proc "contextless" (
	x, y, width, height: i32, 
	format:              Enum, 
	type:                Enum, 
	slice:               $S/[]$E, 
) {…}
```

### [ReadnPixels ¶](#ReadnPixels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L145)

```
ReadnPixels :: proc "contextless" (
	x, y, width, height: i32, 
	format:              Enum, 
	type:                Enum, 
	bufSize:             int, 
	data:                rawptr, 
) ---
```

### [RenderbufferStorage ¶](#RenderbufferStorage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L146)

```
RenderbufferStorage :: proc "contextless" (target: Enum, internalformat: Enum, width, height: i32) ---
```

### [RenderbufferStorageMultisample ¶](#RenderbufferStorageMultisample) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L35)

```
RenderbufferStorageMultisample :: proc "contextless" (target: Enum, samples: i32, internalformat: Enum, width, height: i32) ---
```

 

Renderbuffer objects

### [ResumeTransformFeedback ¶](#ResumeTransformFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L101)

```
ResumeTransformFeedback :: proc "contextless" () ---
```

### [SampleCoverage ¶](#SampleCoverage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L147)

```
SampleCoverage :: proc "contextless" (value: f32, invert: bool) ---
```

### [SamplerParameterf ¶](#SamplerParameterf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L85)

```
SamplerParameterf :: proc "contextless" (sampler: Sampler, pname: Enum, param: f32) ---
```

### [SamplerParameteri ¶](#SamplerParameteri) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L84)

```
SamplerParameteri :: proc "contextless" (sampler: Sampler, pname: Enum, param: i32) ---
```

### [Scissor ¶](#Scissor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L148)

```
Scissor :: proc "contextless" (x, y, width, height: i32) ---
```

### [SetCurrentContextById ¶](#SetCurrentContextById) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L43)

```
SetCurrentContextById :: proc "contextless" (name: string) -> bool ---
```

 

Acquire the WebGL context from a canvas element by id

### [ShaderSource ¶](#ShaderSource) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L149)

```
ShaderSource :: proc "contextless" (shader: Shader, strings: []string) ---
```

### [StencilFunc ¶](#StencilFunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L151)

```
StencilFunc :: proc "contextless" (func: Enum, ref: i32, mask: u32) ---
```

### [StencilFuncSeparate ¶](#StencilFuncSeparate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L152)

```
StencilFuncSeparate :: proc "contextless" (face, func: Enum, ref: i32, mask: u32) ---
```

### [StencilMask ¶](#StencilMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L153)

```
StencilMask :: proc "contextless" (mask: u32) ---
```

### [StencilMaskSeparate ¶](#StencilMaskSeparate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L154)

```
StencilMaskSeparate :: proc "contextless" (face: Enum, mask: u32) ---
```

### [StencilOp ¶](#StencilOp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L155)

```
StencilOp :: proc "contextless" (fail, zfail, zpass: Enum) ---
```

### [StencilOpSeparate ¶](#StencilOpSeparate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L156)

```
StencilOpSeparate :: proc "contextless" (face, fail, zfail, zpass: Enum) ---
```

### [TexImage2D ¶](#TexImage2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L158)

```
TexImage2D :: proc "contextless" (
	target:         Enum, 
	level:          i32, 
	internalformat: Enum, 
	width, height:  i32, 
	border:         i32, 
	format, type:   Enum, 
	size:           int, 
	data:           rawptr, 
) ---
```

### [TexImage2DSlice ¶](#TexImage2DSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L412)

```
TexImage2DSlice :: proc "contextless" (
	target:         Enum, 
	level:          i32, 
	internalformat: Enum, 
	width, height:  i32, 
	border:         i32, 
	format, type:   Enum, 
	slice:          $S/[]$E, 
) {…}
```

### [TexImage3D ¶](#TexImage3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L40)

```
TexImage3D :: proc "contextless" (
	target:               Enum, 
	level:                i32, 
	internalformat:       Enum, 
	width, height, depth: i32, 
	border:               i32, 
	format, type:         Enum, 
	size:                 int, 
	data:                 rawptr, 
) ---
```

### [TexParameterf ¶](#TexParameterf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L161)

```
TexParameterf :: proc "contextless" (target, pname: Enum, param: f32) ---
```

### [TexParameteri ¶](#TexParameteri) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L162)

```
TexParameteri :: proc "contextless" (target, pname: Enum, param: i32) ---
```

### [TexStorage2D ¶](#TexStorage2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L38)

```
TexStorage2D :: proc "contextless" (target: Enum, levels: i32, internalformat: Enum, width, height: i32) ---
```

 

Texture objects

### [TexStorage3D ¶](#TexStorage3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L39)

```
TexStorage3D :: proc "contextless" (
	target:         Enum, 
	levels:         i32, 
	internalformat: Enum, 
	width, height, 
	depth:          i32, 
) ---
```

### [TexSubImage2D ¶](#TexSubImage2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L159)

```
TexSubImage2D :: proc "contextless" (
	target:                          Enum, 
	level:                           i32, 
	xoffset, yoffset, width, height: i32, 
	format, type:                    Enum, 
	size:                            int, 
	data:                            rawptr, 
) ---
```

### [TexSubImage2DSlice ¶](#TexSubImage2DSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L415)

```
TexSubImage2DSlice :: proc "contextless" (
	target:                          Enum, 
	level:                           i32, 
	xoffset, yoffset, width, height: i32, 
	format, type:                    Enum, 
	slice:                           $S/[]$E, 
) {…}
```

### [TexSubImage3D ¶](#TexSubImage3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L41)

```
TexSubImage3D :: proc "contextless" (
	target:                                          Enum, 
	level:                                           i32, 
	xoffset, yoffset, zoffset, width, height, depth: i32, 
	format, type:                                    Enum, 
	size:                                            int, 
	data:                                            rawptr, 
) ---
```

### [TransformFeedbackVaryings ¶](#TransformFeedbackVaryings) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L99)

```
TransformFeedbackVaryings :: proc "contextless" (program: Program, varyings: []string, bufferMode: Enum) ---
```

### [Uniform1f ¶](#Uniform1f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L164)

```
Uniform1f :: proc "contextless" (location: i32, v0: f32) ---
```

### [Uniform1fv ¶](#Uniform1fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L186)

```
Uniform1fv :: proc "contextless" (location: i32, v: []f32) {…}
```

### [Uniform1i ¶](#Uniform1i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L169)

```
Uniform1i :: proc "contextless" (location: i32, v0: i32) ---
```

### [Uniform1iv ¶](#Uniform1iv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L215)

```
Uniform1iv :: proc "contextless" (location: i32, v: []i32) {…}
```

### [Uniform1ui ¶](#Uniform1ui) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L50)

```
Uniform1ui :: proc "contextless" (location: i32, v0: u32) ---
```

 

Uniforms

### [Uniform1uiv ¶](#Uniform1uiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L153)

```
Uniform1uiv :: proc "contextless" (location: i32, v: u32) {…}
```

### [Uniform2f ¶](#Uniform2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L165)

```
Uniform2f :: proc "contextless" (location: i32, v0, v1: f32) ---
```

### [Uniform2fv ¶](#Uniform2fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L193)

```
Uniform2fv :: proc "contextless" (location: i32, v: [][2]f32) {…}
```

### [Uniform2i ¶](#Uniform2i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L170)

```
Uniform2i :: proc "contextless" (location: i32, v0, v1: i32) ---
```

### [Uniform2iv ¶](#Uniform2iv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L222)

```
Uniform2iv :: proc "contextless" (location: i32, v: [][2]i32) {…}
```

### [Uniform2ui ¶](#Uniform2ui) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L51)

```
Uniform2ui :: proc "contextless" (location: i32, v0: u32, v1: u32) ---
```

### [Uniform2uiv ¶](#Uniform2uiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L156)

```
Uniform2uiv :: proc "contextless" (location: i32, v: [2]u32) {…}
```

### [Uniform3f ¶](#Uniform3f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L166)

```
Uniform3f :: proc "contextless" (location: i32, v0, v1, v2: f32) ---
```

### [Uniform3fv ¶](#Uniform3fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L200)

```
Uniform3fv :: proc "contextless" (location: i32, v: [][3]f32) {…}
```

### [Uniform3i ¶](#Uniform3i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L171)

```
Uniform3i :: proc "contextless" (location: i32, v0, v1, v2: i32) ---
```

### [Uniform3iv ¶](#Uniform3iv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L229)

```
Uniform3iv :: proc "contextless" (location: i32, v: [][3]i32) {…}
```

### [Uniform3ui ¶](#Uniform3ui) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L52)

```
Uniform3ui :: proc "contextless" (location: i32, v0: u32, v1: u32, v2: u32) ---
```

### [Uniform3uiv ¶](#Uniform3uiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L159)

```
Uniform3uiv :: proc "contextless" (location: i32, v: [3]u32) {…}
```

### [Uniform4f ¶](#Uniform4f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L167)

```
Uniform4f :: proc "contextless" (location: i32, v0, v1, v2, v3: f32) ---
```

### [Uniform4fv ¶](#Uniform4fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L207)

```
Uniform4fv :: proc "contextless" (location: i32, v: [][4]f32) {…}
```

### [Uniform4i ¶](#Uniform4i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L172)

```
Uniform4i :: proc "contextless" (location: i32, v0, v1, v2, v3: i32) ---
```

### [Uniform4iv ¶](#Uniform4iv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L236)

```
Uniform4iv :: proc "contextless" (location: i32, v: [][4]i32) {…}
```

### [Uniform4ui ¶](#Uniform4ui) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L53)

```
Uniform4ui :: proc "contextless" (location: i32, v0: u32, v1: u32, v2: u32, v3: u32) ---
```

### [Uniform4uiv ¶](#Uniform4uiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L162)

```
Uniform4uiv :: proc "contextless" (location: i32, v: [4]u32) {…}
```

### [UniformBlockBinding ¶](#UniformBlockBinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L106)

```
UniformBlockBinding :: proc "contextless" (program: Program, uniformBlockIndex: i32, uniformBlockBinding: i32) ---
```

### [UniformMatrix2fv ¶](#UniformMatrix2fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L249)

```
UniformMatrix2fv :: proc "contextless" (location: i32, m: matrix[2, 2]f32) {…}
```

### [UniformMatrix2x3fv ¶](#UniformMatrix2x3fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L182)

```
UniformMatrix2x3fv :: proc "contextless" (location: i32, m: matrix[3, 2]f32) {…}
```

### [UniformMatrix2x4fv ¶](#UniformMatrix2x4fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L198)

```
UniformMatrix2x4fv :: proc "contextless" (location: i32, m: matrix[4, 2]f32) {…}
```

### [UniformMatrix3fv ¶](#UniformMatrix3fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L257)

```
UniformMatrix3fv :: proc "contextless" (location: i32, m: matrix[3, 3]f32) {…}
```

### [UniformMatrix3x2fv ¶](#UniformMatrix3x2fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L166)

```
UniformMatrix3x2fv :: proc "contextless" (location: i32, m: matrix[2, 3]f32) {…}
```

### [UniformMatrix3x4fv ¶](#UniformMatrix3x4fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L206)

```
UniformMatrix3x4fv :: proc "contextless" (location: i32, m: matrix[4, 3]f32) {…}
```

### [UniformMatrix4fv ¶](#UniformMatrix4fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L265)

```
UniformMatrix4fv :: proc "contextless" (location: i32, m: matrix[4, 4]f32) {…}
```

### [UniformMatrix4x2fv ¶](#UniformMatrix4x2fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L174)

```
UniformMatrix4x2fv :: proc "contextless" (location: i32, m: matrix[2, 4]f32) {…}
```

### [UniformMatrix4x3fv ¶](#UniformMatrix4x3fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L190)

```
UniformMatrix4x3fv :: proc "contextless" (location: i32, m: matrix[3, 4]f32) {…}
```

### [UseProgram ¶](#UseProgram) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L174)

```
UseProgram :: proc "contextless" (program: Program) ---
```

### [ValidateProgram ¶](#ValidateProgram) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L175)

```
ValidateProgram :: proc "contextless" (program: Program) ---
```

### [VertexAttrib1f ¶](#VertexAttrib1f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L177)

```
VertexAttrib1f :: proc "contextless" (index: i32, x: f32) ---
```

### [VertexAttrib1fv ¶](#VertexAttrib1fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L244)

```
VertexAttrib1fv :: proc "contextless" (index: i32, v: f32) {…}
```

### [VertexAttrib2f ¶](#VertexAttrib2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L178)

```
VertexAttrib2f :: proc "contextless" (index: i32, x, y: f32) ---
```

### [VertexAttrib2fv ¶](#VertexAttrib2fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L245)

```
VertexAttrib2fv :: proc "contextless" (index: i32, v: [2]f32) {…}
```

### [VertexAttrib3f ¶](#VertexAttrib3f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L179)

```
VertexAttrib3f :: proc "contextless" (index: i32, x, y, z: f32) ---
```

### [VertexAttrib3fv ¶](#VertexAttrib3fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L246)

```
VertexAttrib3fv :: proc "contextless" (index: i32, v: [3]f32) {…}
```

### [VertexAttrib4f ¶](#VertexAttrib4f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L180)

```
VertexAttrib4f :: proc "contextless" (index: i32, x, y, z, w: f32) ---
```

### [VertexAttrib4fv ¶](#VertexAttrib4fv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L247)

```
VertexAttrib4fv :: proc "contextless" (index: i32, v: [4]f32) {…}
```

### [VertexAttribDivisor ¶](#VertexAttribDivisor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L61)

```
VertexAttribDivisor :: proc "contextless" (index: u32, divisor: u32) ---
```

 

Writing to the drawing buffer

### [VertexAttribI4i ¶](#VertexAttribI4i) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L56)

```
VertexAttribI4i :: proc "contextless" (index: i32, x, y, z, w: i32) ---
```

 

Vertex attribs

### [VertexAttribI4iv ¶](#VertexAttribI4iv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L215)

```
VertexAttribI4iv :: proc "contextless" (index: i32, v: [4]i32) {…}
```

### [VertexAttribI4ui ¶](#VertexAttribI4ui) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L57)

```
VertexAttribI4ui :: proc "contextless" (index: i32, x, y, z, w: u32) ---
```

### [VertexAttribI4uiv ¶](#VertexAttribI4uiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L218)

```
VertexAttribI4uiv :: proc "contextless" (index: i32, v: [4]u32) {…}
```

### [VertexAttribIPointer ¶](#VertexAttribIPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L58)

```
VertexAttribIPointer :: proc "contextless" (index: i32, size: int, type: Enum, stride: int, offset: uintptr) ---
```

### [VertexAttribPointer ¶](#VertexAttribPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L181)

```
VertexAttribPointer :: proc "contextless" (
	index:      i32, 
	size:       int, 
	type:       Enum, 
	normalized: bool, 
	stride:     int, 
	ptr:        uintptr, 
) ---
```

### [Viewport ¶](#Viewport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L183)

```
Viewport :: proc "contextless" (x, y, w, h: i32) ---
```

### [WaitSync ¶](#WaitSync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L91)

```
WaitSync :: proc "contextless" (sync: Sync, flags: u32, timeout: i64) ---
```

## Procedure Groups

### [GetActiveAttrib ¶](#GetActiveAttrib) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L314)

```
GetActiveAttrib :: proc{
	GetActiveAttribBuf,
	GetActiveAttribAlloc,
}
```

### [GetActiveUniform ¶](#GetActiveUniform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin#L351)

```
GetActiveUniform :: proc{
	GetActiveUniformBuf,
	GetActiveUniformAlloc,
}
```

### [GetActiveUniformBlockName ¶](#GetActiveUniformBlockName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin#L148)

```
GetActiveUniformBlockName :: proc{
	GetActiveUniformBlockNameBuf,
	GetActiveUniformBlockNameAlloc,
}
```

## Source Files

* [webgl.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl.odin)
* [webgl2.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2.odin)
* [webgl2\_constants.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl2_constants.odin)
* [webgl\_constants.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_constants.odin)
* [webgl\_helpers.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wasm/WebGL/webgl_helpers.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:55.313984000 +0000 UTC`

* [Types](#pkg-Types)
  + [ActiveInfo](#ActiveInfo)
  + [Buffer](#Buffer)
  + [ContextAttribute](#ContextAttribute)
  + [ContextAttributes](#ContextAttributes)
  + [Enum](#Enum)
  + [Framebuffer](#Framebuffer)
  + [Program](#Program)
  + [Query](#Query)
  + [Renderbuffer](#Renderbuffer)
  + [Sampler](#Sampler)
  + [Shader](#Shader)
  + [Sync](#Sync)
  + [Texture](#Texture)
  + [TransformFeedback](#TransformFeedback)
  + [VertexArrayObject](#VertexArrayObject)
* [Constants](#pkg-Constants)
  + [ACTIVE\_ATTRIBUTES](#ACTIVE_ATTRIBUTES)
  + [ACTIVE\_TEXTURE](#ACTIVE_TEXTURE)
  + [ACTIVE\_UNIFORMS](#ACTIVE_UNIFORMS)
  + [ACTIVE\_UNIFORM\_BLOCKS](#ACTIVE_UNIFORM_BLOCKS)
  + [ALIASED\_LINE\_WIDTH\_RANGE](#ALIASED_LINE_WIDTH_RANGE)
  + [ALIASED\_POINT\_SIZE\_RANGE](#ALIASED_POINT_SIZE_RANGE)
  + [ALPHA](#ALPHA)
  + [ALPHA\_BITS](#ALPHA_BITS)
  + [ALREADY\_SIGNALED](#ALREADY_SIGNALED)
  + [ALWAYS](#ALWAYS)
  + [ANY\_SAMPLES\_PASSED](#ANY_SAMPLES_PASSED)
  + [ANY\_SAMPLES\_PASSED\_CONSERVATIVE](#ANY_SAMPLES_PASSED_CONSERVATIVE)
  + [ARRAY\_BUFFER](#ARRAY_BUFFER)
  + [ARRAY\_BUFFER\_BINDING](#ARRAY_BUFFER_BINDING)
  + [ATTACHED\_SHADERS](#ATTACHED_SHADERS)
  + [BACK](#BACK)
  + [BLEND](#BLEND)
  + [BLEND\_COLOR](#BLEND_COLOR)
  + [BLEND\_DST\_ALPHA](#BLEND_DST_ALPHA)
  + [BLEND\_DST\_RGB](#BLEND_DST_RGB)
  + [BLEND\_EQUATION](#BLEND_EQUATION)
  + [BLEND\_EQUATION\_ALPHA](#BLEND_EQUATION_ALPHA)
  + [BLEND\_EQUATION\_RGB](#BLEND_EQUATION_RGB)
  + [BLEND\_SRC\_ALPHA](#BLEND_SRC_ALPHA)
  + [BLEND\_SRC\_RGB](#BLEND_SRC_RGB)
  + [BLUE\_BITS](#BLUE_BITS)
  + [BOOL](#BOOL)
  + [BOOL\_VEC2](#BOOL_VEC2)
  + [BOOL\_VEC3](#BOOL_VEC3)
  + [BOOL\_VEC4](#BOOL_VEC4)
  + [BROWSER\_DEFAULT\_WEBGL](#BROWSER_DEFAULT_WEBGL)
  + [BUFFER\_SIZE](#BUFFER_SIZE)
  + [BUFFER\_USAGE](#BUFFER_USAGE)
  + [BYTE](#BYTE)
  + [CCW](#CCW)
  + [CLAMP\_TO\_EDGE](#CLAMP_TO_EDGE)
  + [COLOR](#COLOR)
  + [COLOR\_ATTACHMENT0](#COLOR_ATTACHMENT0)
  + [COLOR\_ATTACHMENT1](#COLOR_ATTACHMENT1)
  + [COLOR\_ATTACHMENT10](#COLOR_ATTACHMENT10)
  + [COLOR\_ATTACHMENT11](#COLOR_ATTACHMENT11)
  + [COLOR\_ATTACHMENT12](#COLOR_ATTACHMENT12)
  + [COLOR\_ATTACHMENT13](#COLOR_ATTACHMENT13)
  + [COLOR\_ATTACHMENT14](#COLOR_ATTACHMENT14)
  + [COLOR\_ATTACHMENT15](#COLOR_ATTACHMENT15)
  + [COLOR\_ATTACHMENT2](#COLOR_ATTACHMENT2)
  + [COLOR\_ATTACHMENT3](#COLOR_ATTACHMENT3)
  + [COLOR\_ATTACHMENT4](#COLOR_ATTACHMENT4)
  + [COLOR\_ATTACHMENT5](#COLOR_ATTACHMENT5)
  + [COLOR\_ATTACHMENT6](#COLOR_ATTACHMENT6)
  + [COLOR\_ATTACHMENT7](#COLOR_ATTACHMENT7)
  + [COLOR\_ATTACHMENT8](#COLOR_ATTACHMENT8)
  + [COLOR\_ATTACHMENT9](#COLOR_ATTACHMENT9)
  + [COLOR\_BUFFER\_BIT](#COLOR_BUFFER_BIT)
  + [COLOR\_CLEAR\_VALUE](#COLOR_CLEAR_VALUE)
  + [COLOR\_WRITEMASK](#COLOR_WRITEMASK)
  + [COMPARE\_REF\_TO\_TEXTURE](#COMPARE_REF_TO_TEXTURE)
  + [COMPILE\_STATUS](#COMPILE_STATUS)
  + [COMPRESSED\_TEXTURE\_FORMATS](#COMPRESSED_TEXTURE_FORMATS)
  + [CONDITION\_SATISFIED](#CONDITION_SATISFIED)
  + [CONSTANT\_ALPHA](#CONSTANT_ALPHA)
  + [CONSTANT\_COLOR](#CONSTANT_COLOR)
  + [CONTEXT\_LOST\_WEBGL](#CONTEXT_LOST_WEBGL)
  + [COPY\_READ\_BUFFER](#COPY_READ_BUFFER)
  + [COPY\_READ\_BUFFER\_BINDING](#COPY_READ_BUFFER_BINDING)
  + [COPY\_WRITE\_BUFFER](#COPY_WRITE_BUFFER)
  + [COPY\_WRITE\_BUFFER\_BINDING](#COPY_WRITE_BUFFER_BINDING)
  + [CULL\_FACE](#CULL_FACE)
  + [CULL\_FACE\_MODE](#CULL_FACE_MODE)
  + [CURRENT\_PROGRAM](#CURRENT_PROGRAM)
  + [CURRENT\_QUERY](#CURRENT_QUERY)
  + [CURRENT\_VERTEX\_ATTRIB](#CURRENT_VERTEX_ATTRIB)
  + [CW](#CW)
  + [DECR](#DECR)
  + [DECR\_WRAP](#DECR_WRAP)
  + [DEFAULT\_CONTEXT\_ATTRIBUTES](#DEFAULT_CONTEXT_ATTRIBUTES)
  + [DELETE\_STATUS](#DELETE_STATUS)
  + [DEPTH](#DEPTH)
  + [DEPTH24\_STENCIL8](#DEPTH24_STENCIL8)
  + [DEPTH32F\_STENCIL8](#DEPTH32F_STENCIL8)
  + [DEPTH\_ATTACHMENT](#DEPTH_ATTACHMENT)
  + [DEPTH\_BITS](#DEPTH_BITS)
  + [DEPTH\_BUFFER\_BIT](#DEPTH_BUFFER_BIT)
  + [DEPTH\_CLEAR\_VALUE](#DEPTH_CLEAR_VALUE)
  + [DEPTH\_COMPONENT](#DEPTH_COMPONENT)
  + [DEPTH\_COMPONENT16](#DEPTH_COMPONENT16)
  + [DEPTH\_COMPONENT24](#DEPTH_COMPONENT24)
  + [DEPTH\_COMPONENT32F](#DEPTH_COMPONENT32F)
  + [DEPTH\_FUNC](#DEPTH_FUNC)
  + [DEPTH\_RANGE](#DEPTH_RANGE)
  + [DEPTH\_STENCIL](#DEPTH_STENCIL)
  + [DEPTH\_STENCIL\_ATTACHMENT](#DEPTH_STENCIL_ATTACHMENT)
  + [DEPTH\_TEST](#DEPTH_TEST)
  + [DEPTH\_WRITEMASK](#DEPTH_WRITEMASK)
  + [DITHER](#DITHER)
  + [DONT\_CARE](#DONT_CARE)
  + [DRAW\_BUFFER0](#DRAW_BUFFER0)
  + [DRAW\_BUFFER1](#DRAW_BUFFER1)
  + [DRAW\_BUFFER10](#DRAW_BUFFER10)
  + [DRAW\_BUFFER11](#DRAW_BUFFER11)
  + [DRAW\_BUFFER12](#DRAW_BUFFER12)
  + [DRAW\_BUFFER13](#DRAW_BUFFER13)
  + [DRAW\_BUFFER14](#DRAW_BUFFER14)
  + [DRAW\_BUFFER15](#DRAW_BUFFER15)
  + [DRAW\_BUFFER2](#DRAW_BUFFER2)
  + [DRAW\_BUFFER3](#DRAW_BUFFER3)
  + [DRAW\_BUFFER4](#DRAW_BUFFER4)
  + [DRAW\_BUFFER5](#DRAW_BUFFER5)
  + [DRAW\_BUFFER6](#DRAW_BUFFER6)
  + [DRAW\_BUFFER7](#DRAW_BUFFER7)
  + [DRAW\_BUFFER8](#DRAW_BUFFER8)
  + [DRAW\_BUFFER9](#DRAW_BUFFER9)
  + [DRAW\_FRAMEBUFFER](#DRAW_FRAMEBUFFER)
  + [DRAW\_FRAMEBUFFER\_BINDING](#DRAW_FRAMEBUFFER_BINDING)
  + [DST\_ALPHA](#DST_ALPHA)
  + [DST\_COLOR](#DST_COLOR)
  + [DYNAMIC\_COPY](#DYNAMIC_COPY)
  + [DYNAMIC\_DRAW](#DYNAMIC_DRAW)
  + [DYNAMIC\_READ](#DYNAMIC_READ)
  + [ELEMENT\_ARRAY\_BUFFER](#ELEMENT_ARRAY_BUFFER)
  + [ELEMENT\_ARRAY\_BUFFER\_BINDING](#ELEMENT_ARRAY_BUFFER_BINDING)
  + [EQUAL](#EQUAL)
  + [FASTEST](#FASTEST)
  + [FLOAT](#FLOAT)
  + [FLOAT\_32\_UNSIGNED\_INT\_24\_8\_REV](#FLOAT_32_UNSIGNED_INT_24_8_REV)
  + [FLOAT\_MAT2](#FLOAT_MAT2)
  + [FLOAT\_MAT2x3](#FLOAT_MAT2x3)
  + [FLOAT\_MAT2x4](#FLOAT_MAT2x4)
  + [FLOAT\_MAT3](#FLOAT_MAT3)
  + [FLOAT\_MAT3x2](#FLOAT_MAT3x2)
  + [FLOAT\_MAT3x4](#FLOAT_MAT3x4)
  + [FLOAT\_MAT4](#FLOAT_MAT4)
  + [FLOAT\_MAT4x2](#FLOAT_MAT4x2)
  + [FLOAT\_MAT4x3](#FLOAT_MAT4x3)
  + [FLOAT\_VEC2](#FLOAT_VEC2)
  + [FLOAT\_VEC3](#FLOAT_VEC3)
  + [FLOAT\_VEC4](#FLOAT_VEC4)
  + [FRAGMENT\_SHADER](#FRAGMENT_SHADER)
  + [FRAGMENT\_SHADER\_DERIVATIVE\_HINT](#FRAGMENT_SHADER_DERIVATIVE_HINT)
  + [FRAMEBUFFER](#FRAMEBUFFER)
  + [FRAMEBUFFER\_ATTACHMENT\_ALPHA\_SIZE](#FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE)
  + [FRAMEBUFFER\_ATTACHMENT\_BLUE\_SIZE](#FRAMEBUFFER_ATTACHMENT_BLUE_SIZE)
  + [FRAMEBUFFER\_ATTACHMENT\_COLOR\_ENCODING](#FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING)
  + [FRAMEBUFFER\_ATTACHMENT\_COMPONENT\_TYPE](#FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE)
  + [FRAMEBUFFER\_ATTACHMENT\_DEPTH\_SIZE](#FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE)
  + [FRAMEBUFFER\_ATTACHMENT\_GREEN\_SIZE](#FRAMEBUFFER_ATTACHMENT_GREEN_SIZE)
  + [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_NAME](#FRAMEBUFFER_ATTACHMENT_OBJECT_NAME)
  + [FRAMEBUFFER\_ATTACHMENT\_OBJECT\_TYPE](#FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE)
  + [FRAMEBUFFER\_ATTACHMENT\_RED\_SIZE](#FRAMEBUFFER_ATTACHMENT_RED_SIZE)
  + [FRAMEBUFFER\_ATTACHMENT\_STENCIL\_SIZE](#FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE)
  + [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_CUBE\_MAP\_FACE](#FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE)
  + [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LAYER](#FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER)
  + [FRAMEBUFFER\_ATTACHMENT\_TEXTURE\_LEVEL](#FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL)
  + [FRAMEBUFFER\_BINDING](#FRAMEBUFFER_BINDING)
  + [FRAMEBUFFER\_COMPLETE](#FRAMEBUFFER_COMPLETE)
  + [FRAMEBUFFER\_DEFAULT](#FRAMEBUFFER_DEFAULT)
  + [FRAMEBUFFER\_INCOMPLETE\_ATTACHMENT](#FRAMEBUFFER_INCOMPLETE_ATTACHMENT)
  + [FRAMEBUFFER\_INCOMPLETE\_DIMENSIONS](#FRAMEBUFFER_INCOMPLETE_DIMENSIONS)
  + [FRAMEBUFFER\_INCOMPLETE\_MISSING\_ATTACHMENT](#FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT)
  + [FRAMEBUFFER\_INCOMPLETE\_MULTISAMPLE](#FRAMEBUFFER_INCOMPLETE_MULTISAMPLE)
  + [FRAMEBUFFER\_UNSUPPORTED](#FRAMEBUFFER_UNSUPPORTED)
  + [FRONT](#FRONT)
  + [FRONT\_AND\_BACK](#FRONT_AND_BACK)
  + [FRONT\_FACE](#FRONT_FACE)
  + [FUNC\_ADD](#FUNC_ADD)
  + [FUNC\_REVERSE\_SUBTRACT](#FUNC_REVERSE_SUBTRACT)
  + [FUNC\_SUBTRACT](#FUNC_SUBTRACT)
  + [GENERATE\_MIPMAP\_HINT](#GENERATE_MIPMAP_HINT)
  + [GEQUAL](#GEQUAL)
  + [GREATER](#GREATER)
  + [GREEN\_BITS](#GREEN_BITS)
  + [HALF\_FLOAT](#HALF_FLOAT)
  + [HIGH\_FLOAT](#HIGH_FLOAT)
  + [HIGH\_INT](#HIGH_INT)
  + [IMPLEMENTATION\_COLOR\_READ\_FORMAT](#IMPLEMENTATION_COLOR_READ_FORMAT)
  + [IMPLEMENTATION\_COLOR\_READ\_TYPE](#IMPLEMENTATION_COLOR_READ_TYPE)
  + [INCR](#INCR)
  + [INCR\_WRAP](#INCR_WRAP)
  + [INT](#INT)
  + [INTERLEAVED\_ATTRIBS](#INTERLEAVED_ATTRIBS)
  + [INT\_2\_10\_10\_10\_REV](#INT_2_10_10_10_REV)
  + [INT\_SAMPLER\_2D](#INT_SAMPLER_2D)
  + [INT\_SAMPLER\_2D\_ARRAY](#INT_SAMPLER_2D_ARRAY)
  + [INT\_SAMPLER\_3D](#INT_SAMPLER_3D)
  + [INT\_SAMPLER\_CUBE](#INT_SAMPLER_CUBE)
  + [INT\_VEC2](#INT_VEC2)
  + [INT\_VEC3](#INT_VEC3)
  + [INT\_VEC4](#INT_VEC4)
  + [INVALID\_ENUM](#INVALID_ENUM)
  + [INVALID\_FRAMEBUFFER\_OPERATION](#INVALID_FRAMEBUFFER_OPERATION)
  + [INVALID\_INDEX](#INVALID_INDEX)
  + [INVALID\_OPERATION](#INVALID_OPERATION)
  + [INVALID\_VALUE](#INVALID_VALUE)
  + [INVERT](#INVERT)
  + [KEEP](#KEEP)
  + [LEQUAL](#LEQUAL)
  + [LESS](#LESS)
  + [LINEAR](#LINEAR)
  + [LINEAR\_MIPMAP\_LINEAR](#LINEAR_MIPMAP_LINEAR)
  + [LINEAR\_MIPMAP\_NEAREST](#LINEAR_MIPMAP_NEAREST)
  + [LINES](#LINES)
  + [LINE\_LOOP](#LINE_LOOP)
  + [LINE\_STRIP](#LINE_STRIP)
  + [LINE\_WIDTH](#LINE_WIDTH)
  + [LINK\_STATUS](#LINK_STATUS)
  + [LOW\_FLOAT](#LOW_FLOAT)
  + [LOW\_INT](#LOW_INT)
  + [LUMINANCE](#LUMINANCE)
  + [LUMINANCE\_ALPHA](#LUMINANCE_ALPHA)
  + [MAX](#MAX)
  + [MAX\_3D\_TEXTURE\_SIZE](#MAX_3D_TEXTURE_SIZE)
  + [MAX\_ARRAY\_TEXTURE\_LAYERS](#MAX_ARRAY_TEXTURE_LAYERS)
  + [MAX\_CLIENT\_WAIT\_TIMEOUT\_WEBGL](#MAX_CLIENT_WAIT_TIMEOUT_WEBGL)
  + [MAX\_COLOR\_ATTACHMENTS](#MAX_COLOR_ATTACHMENTS)
  + [MAX\_COMBINED\_FRAGMENT\_UNIFORM\_COMPONENTS](#MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS)
  + [MAX\_COMBINED\_TEXTURE\_IMAGE\_UNITS](#MAX_COMBINED_TEXTURE_IMAGE_UNITS)
  + [MAX\_COMBINED\_UNIFORM\_BLOCKS](#MAX_COMBINED_UNIFORM_BLOCKS)
  + [MAX\_COMBINED\_VERTEX\_UNIFORM\_COMPONENTS](#MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS)
  + [MAX\_CUBE\_MAP\_TEXTURE\_SIZE](#MAX_CUBE_MAP_TEXTURE_SIZE)
  + [MAX\_DRAW\_BUFFERS](#MAX_DRAW_BUFFERS)
  + [MAX\_ELEMENTS\_INDICES](#MAX_ELEMENTS_INDICES)
  + [MAX\_ELEMENTS\_VERTICES](#MAX_ELEMENTS_VERTICES)
  + [MAX\_ELEMENT\_INDEX](#MAX_ELEMENT_INDEX)
  + [MAX\_FRAGMENT\_INPUT\_COMPONENTS](#MAX_FRAGMENT_INPUT_COMPONENTS)
  + [MAX\_FRAGMENT\_UNIFORM\_BLOCKS](#MAX_FRAGMENT_UNIFORM_BLOCKS)
  + [MAX\_FRAGMENT\_UNIFORM\_COMPONENTS](#MAX_FRAGMENT_UNIFORM_COMPONENTS)
  + [MAX\_FRAGMENT\_UNIFORM\_VECTORS](#MAX_FRAGMENT_UNIFORM_VECTORS)
  + [MAX\_PROGRAM\_TEXEL\_OFFSET](#MAX_PROGRAM_TEXEL_OFFSET)
  + [MAX\_RENDERBUFFER\_SIZE](#MAX_RENDERBUFFER_SIZE)
  + [MAX\_SAMPLES](#MAX_SAMPLES)
  + [MAX\_SERVER\_WAIT\_TIMEOUT](#MAX_SERVER_WAIT_TIMEOUT)
  + [MAX\_TEXTURE\_IMAGE\_UNITS](#MAX_TEXTURE_IMAGE_UNITS)
  + [MAX\_TEXTURE\_LOD\_BIAS](#MAX_TEXTURE_LOD_BIAS)
  + [MAX\_TEXTURE\_SIZE](#MAX_TEXTURE_SIZE)
  + [MAX\_TRANSFORM\_FEEDBACK\_INTERLEAVED\_COMPONENTS](#MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS)
  + [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_ATTRIBS](#MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS)
  + [MAX\_TRANSFORM\_FEEDBACK\_SEPARATE\_COMPONENTS](#MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS)
  + [MAX\_UNIFORM\_BLOCK\_SIZE](#MAX_UNIFORM_BLOCK_SIZE)
  + [MAX\_UNIFORM\_BUFFER\_BINDINGS](#MAX_UNIFORM_BUFFER_BINDINGS)
  + [MAX\_VARYING\_COMPONENTS](#MAX_VARYING_COMPONENTS)
  + [MAX\_VARYING\_VECTORS](#MAX_VARYING_VECTORS)
  + [MAX\_VERTEX\_ATTRIBS](#MAX_VERTEX_ATTRIBS)
  + [MAX\_VERTEX\_OUTPUT\_COMPONENTS](#MAX_VERTEX_OUTPUT_COMPONENTS)
  + [MAX\_VERTEX\_TEXTURE\_IMAGE\_UNITS](#MAX_VERTEX_TEXTURE_IMAGE_UNITS)
  + [MAX\_VERTEX\_UNIFORM\_BLOCKS](#MAX_VERTEX_UNIFORM_BLOCKS)
  + [MAX\_VERTEX\_UNIFORM\_COMPONENTS](#MAX_VERTEX_UNIFORM_COMPONENTS)
  + [MAX\_VERTEX\_UNIFORM\_VECTORS](#MAX_VERTEX_UNIFORM_VECTORS)
  + [MAX\_VIEWPORT\_DIMS](#MAX_VIEWPORT_DIMS)
  + [MEDIUM\_FLOAT](#MEDIUM_FLOAT)
  + [MEDIUM\_INT](#MEDIUM_INT)
  + [MIN](#MIN)
  + [MIN\_PROGRAM\_TEXEL\_OFFSET](#MIN_PROGRAM_TEXEL_OFFSET)
  + [MIRRORED\_REPEAT](#MIRRORED_REPEAT)
  + [NEAREST](#NEAREST)
  + [NEAREST\_MIPMAP\_LINEAR](#NEAREST_MIPMAP_LINEAR)
  + [NEAREST\_MIPMAP\_NEAREST](#NEAREST_MIPMAP_NEAREST)
  + [NEVER](#NEVER)
  + [NICEST](#NICEST)
  + [NONE](#NONE)
  + [NOTEQUAL](#NOTEQUAL)
  + [NO\_ERROR](#NO_ERROR)
  + [OBJECT\_TYPE](#OBJECT_TYPE)
  + [ONE](#ONE)
  + [ONE\_MINUS\_CONSTANT\_ALPHA](#ONE_MINUS_CONSTANT_ALPHA)
  + [ONE\_MINUS\_CONSTANT\_COLOR](#ONE_MINUS_CONSTANT_COLOR)
  + [ONE\_MINUS\_DST\_ALPHA](#ONE_MINUS_DST_ALPHA)
  + [ONE\_MINUS\_DST\_COLOR](#ONE_MINUS_DST_COLOR)
  + [ONE\_MINUS\_SRC\_ALPHA](#ONE_MINUS_SRC_ALPHA)
  + [ONE\_MINUS\_SRC\_COLOR](#ONE_MINUS_SRC_COLOR)
  + [OUT\_OF\_MEMORY](#OUT_OF_MEMORY)
  + [PACK\_ALIGNMENT](#PACK_ALIGNMENT)
  + [PACK\_ROW\_LENGTH](#PACK_ROW_LENGTH)
  + [PACK\_SKIP\_PIXELS](#PACK_SKIP_PIXELS)
  + [PACK\_SKIP\_ROWS](#PACK_SKIP_ROWS)
  + [PIXEL\_PACK\_BUFFER](#PIXEL_PACK_BUFFER)
  + [PIXEL\_PACK\_BUFFER\_BINDING](#PIXEL_PACK_BUFFER_BINDING)
  + [PIXEL\_UNPACK\_BUFFER](#PIXEL_UNPACK_BUFFER)
  + [PIXEL\_UNPACK\_BUFFER\_BINDING](#PIXEL_UNPACK_BUFFER_BINDING)
  + [POINTS](#POINTS)
  + [POLYGON\_OFFSET\_FACTOR](#POLYGON_OFFSET_FACTOR)
  + [POLYGON\_OFFSET\_FILL](#POLYGON_OFFSET_FILL)
  + [POLYGON\_OFFSET\_UNITS](#POLYGON_OFFSET_UNITS)
  + [QUERY\_RESULT](#QUERY_RESULT)
  + [QUERY\_RESULT\_AVAILABLE](#QUERY_RESULT_AVAILABLE)
  + [R11F\_G11F\_B10F](#R11F_G11F_B10F)
  + [R16F](#R16F)
  + [R16I](#R16I)
  + [R16UI](#R16UI)
  + [R32F](#R32F)
  + [R32I](#R32I)
  + [R32UI](#R32UI)
  + [R8](#R8)
  + [R8I](#R8I)
  + [R8UI](#R8UI)
  + [R8\_SNORM](#R8_SNORM)
  + [RASTERIZER\_DISCARD](#RASTERIZER_DISCARD)
  + [READ\_BUFFER](#READ_BUFFER)
  + [READ\_FRAMEBUFFER](#READ_FRAMEBUFFER)
  + [READ\_FRAMEBUFFER\_BINDING](#READ_FRAMEBUFFER_BINDING)
  + [RED](#RED)
  + [RED\_BITS](#RED_BITS)
  + [RED\_INTEGER](#RED_INTEGER)
  + [RENDERBUFFER](#RENDERBUFFER)
  + [RENDERBUFFER\_ALPHA\_SIZE](#RENDERBUFFER_ALPHA_SIZE)
  + [RENDERBUFFER\_BINDING](#RENDERBUFFER_BINDING)
  + [RENDERBUFFER\_BLUE\_SIZE](#RENDERBUFFER_BLUE_SIZE)
  + [RENDERBUFFER\_DEPTH\_SIZE](#RENDERBUFFER_DEPTH_SIZE)
  + [RENDERBUFFER\_GREEN\_SIZE](#RENDERBUFFER_GREEN_SIZE)
  + [RENDERBUFFER\_HEIGHT](#RENDERBUFFER_HEIGHT)
  + [RENDERBUFFER\_INTERNAL\_FORMAT](#RENDERBUFFER_INTERNAL_FORMAT)
  + [RENDERBUFFER\_RED\_SIZE](#RENDERBUFFER_RED_SIZE)
  + [RENDERBUFFER\_SAMPLES](#RENDERBUFFER_SAMPLES)
  + [RENDERBUFFER\_STENCIL\_SIZE](#RENDERBUFFER_STENCIL_SIZE)
  + [RENDERBUFFER\_WIDTH](#RENDERBUFFER_WIDTH)
  + [RENDERER](#RENDERER)
  + [REPEAT](#REPEAT)
  + [REPLACE](#REPLACE)
  + [RG](#RG)
  + [RG16F](#RG16F)
  + [RG16I](#RG16I)
  + [RG16UI](#RG16UI)
  + [RG32F](#RG32F)
  + [RG32I](#RG32I)
  + [RG32UI](#RG32UI)
  + [RG8](#RG8)
  + [RG8I](#RG8I)
  + [RG8UI](#RG8UI)
  + [RG8\_SNORM](#RG8_SNORM)
  + [RGB](#RGB)
  + [RGB10\_A2](#RGB10_A2)
  + [RGB10\_A2UI](#RGB10_A2UI)
  + [RGB16F](#RGB16F)
  + [RGB16I](#RGB16I)
  + [RGB16UI](#RGB16UI)
  + [RGB32F](#RGB32F)
  + [RGB32I](#RGB32I)
  + [RGB32UI](#RGB32UI)
  + [RGB565](#RGB565)
  + [RGB5\_A1](#RGB5_A1)
  + [RGB8](#RGB8)
  + [RGB8I](#RGB8I)
  + [RGB8UI](#RGB8UI)
  + [RGB8\_SNORM](#RGB8_SNORM)
  + [RGB9\_E5](#RGB9_E5)
  + [RGBA](#RGBA)
  + [RGBA16F](#RGBA16F)
  + [RGBA16I](#RGBA16I)
  + [RGBA16UI](#RGBA16UI)
  + [RGBA32F](#RGBA32F)
  + [RGBA32I](#RGBA32I)
  + [RGBA32UI](#RGBA32UI)
  + [RGBA4](#RGBA4)
  + [RGBA8](#RGBA8)
  + [RGBA8I](#RGBA8I)
  + [RGBA8UI](#RGBA8UI)
  + [RGBA8\_SNORM](#RGBA8_SNORM)
  + [RGBA\_INTEGER](#RGBA_INTEGER)
  + [RGB\_INTEGER](#RGB_INTEGER)
  + [RG\_INTEGER](#RG_INTEGER)
  + [SAMPLER\_2D](#SAMPLER_2D)
  + [SAMPLER\_2D\_ARRAY](#SAMPLER_2D_ARRAY)
  + [SAMPLER\_2D\_ARRAY\_SHADOW](#SAMPLER_2D_ARRAY_SHADOW)
  + [SAMPLER\_2D\_SHADOW](#SAMPLER_2D_SHADOW)
  + [SAMPLER\_3D](#SAMPLER_3D)
  + [SAMPLER\_BINDING](#SAMPLER_BINDING)
  + [SAMPLER\_CUBE](#SAMPLER_CUBE)
  + [SAMPLER\_CUBE\_SHADOW](#SAMPLER_CUBE_SHADOW)
  + [SAMPLES](#SAMPLES)
  + [SAMPLE\_ALPHA\_TO\_COVERAGE](#SAMPLE_ALPHA_TO_COVERAGE)
  + [SAMPLE\_BUFFERS](#SAMPLE_BUFFERS)
  + [SAMPLE\_COVERAGE](#SAMPLE_COVERAGE)
  + [SAMPLE\_COVERAGE\_INVERT](#SAMPLE_COVERAGE_INVERT)
  + [SAMPLE\_COVERAGE\_VALUE](#SAMPLE_COVERAGE_VALUE)
  + [SCISSOR\_BOX](#SCISSOR_BOX)
  + [SCISSOR\_TEST](#SCISSOR_TEST)
  + [SEPARATE\_ATTRIBS](#SEPARATE_ATTRIBS)
  + [SHADER\_TYPE](#SHADER_TYPE)
  + [SHADING\_LANGUAGE\_VERSION](#SHADING_LANGUAGE_VERSION)
  + [SHORT](#SHORT)
  + [SIGNALED](#SIGNALED)
  + [SIGNED\_NORMALIZED](#SIGNED_NORMALIZED)
  + [SRC\_ALPHA](#SRC_ALPHA)
  + [SRC\_ALPHA\_SATURATE](#SRC_ALPHA_SATURATE)
  + [SRC\_COLOR](#SRC_COLOR)
  + [SRGB](#SRGB)
  + [SRGB8](#SRGB8)
  + [SRGB8\_ALPHA8](#SRGB8_ALPHA8)
  + [STATIC\_COPY](#STATIC_COPY)
  + [STATIC\_DRAW](#STATIC_DRAW)
  + [STATIC\_READ](#STATIC_READ)
  + [STENCIL](#STENCIL)
  + [STENCIL\_ATTACHMENT](#STENCIL_ATTACHMENT)
  + [STENCIL\_BACK\_FAIL](#STENCIL_BACK_FAIL)
  + [STENCIL\_BACK\_FUNC](#STENCIL_BACK_FUNC)
  + [STENCIL\_BACK\_PASS\_DEPTH\_FAIL](#STENCIL_BACK_PASS_DEPTH_FAIL)
  + [STENCIL\_BACK\_PASS\_DEPTH\_PASS](#STENCIL_BACK_PASS_DEPTH_PASS)
  + [STENCIL\_BACK\_REF](#STENCIL_BACK_REF)
  + [STENCIL\_BACK\_VALUE\_MASK](#STENCIL_BACK_VALUE_MASK)
  + [STENCIL\_BACK\_WRITEMASK](#STENCIL_BACK_WRITEMASK)
  + [STENCIL\_BITS](#STENCIL_BITS)
  + [STENCIL\_BUFFER\_BIT](#STENCIL_BUFFER_BIT)
  + [STENCIL\_CLEAR\_VALUE](#STENCIL_CLEAR_VALUE)
  + [STENCIL\_FAIL](#STENCIL_FAIL)
  + [STENCIL\_FUNC](#STENCIL_FUNC)
  + [STENCIL\_INDEX](#STENCIL_INDEX)
  + [STENCIL\_INDEX8](#STENCIL_INDEX8)
  + [STENCIL\_PASS\_DEPTH\_FAIL](#STENCIL_PASS_DEPTH_FAIL)
  + [STENCIL\_PASS\_DEPTH\_PASS](#STENCIL_PASS_DEPTH_PASS)
  + [STENCIL\_REF](#STENCIL_REF)
  + [STENCIL\_TEST](#STENCIL_TEST)
  + [STENCIL\_VALUE\_MASK](#STENCIL_VALUE_MASK)
  + [STENCIL\_WRITEMASK](#STENCIL_WRITEMASK)
  + [STREAM\_COPY](#STREAM_COPY)
  + [STREAM\_DRAW](#STREAM_DRAW)
  + [STREAM\_READ](#STREAM_READ)
  + [SUBPIXEL\_BITS](#SUBPIXEL_BITS)
  + [SYNC\_CONDITION](#SYNC_CONDITION)
  + [SYNC\_FENCE](#SYNC_FENCE)
  + [SYNC\_FLAGS](#SYNC_FLAGS)
  + [SYNC\_FLUSH\_COMMANDS\_BIT](#SYNC_FLUSH_COMMANDS_BIT)
  + [SYNC\_GPU\_COMMANDS\_COMPLETE](#SYNC_GPU_COMMANDS_COMPLETE)
  + [SYNC\_STATUS](#SYNC_STATUS)
  + [TEXTURE](#TEXTURE)
  + [TEXTURE0](#TEXTURE0)
  + [TEXTURE1](#TEXTURE1)
  + [TEXTURE10](#TEXTURE10)
  + [TEXTURE11](#TEXTURE11)
  + [TEXTURE12](#TEXTURE12)
  + [TEXTURE13](#TEXTURE13)
  + [TEXTURE14](#TEXTURE14)
  + [TEXTURE15](#TEXTURE15)
  + [TEXTURE16](#TEXTURE16)
  + [TEXTURE17](#TEXTURE17)
  + [TEXTURE18](#TEXTURE18)
  + [TEXTURE19](#TEXTURE19)
  + [TEXTURE2](#TEXTURE2)
  + [TEXTURE20](#TEXTURE20)
  + [TEXTURE21](#TEXTURE21)
  + [TEXTURE22](#TEXTURE22)
  + [TEXTURE23](#TEXTURE23)
  + [TEXTURE24](#TEXTURE24)
  + [TEXTURE25](#TEXTURE25)
  + [TEXTURE26](#TEXTURE26)
  + [TEXTURE27](#TEXTURE27)
  + [TEXTURE28](#TEXTURE28)
  + [TEXTURE29](#TEXTURE29)
  + [TEXTURE3](#TEXTURE3)
  + [TEXTURE30](#TEXTURE30)
  + [TEXTURE31](#TEXTURE31)
  + [TEXTURE4](#TEXTURE4)
  + [TEXTURE5](#TEXTURE5)
  + [TEXTURE6](#TEXTURE6)
  + [TEXTURE7](#TEXTURE7)
  + [TEXTURE8](#TEXTURE8)
  + [TEXTURE9](#TEXTURE9)
  + [TEXTURE\_2D](#TEXTURE_2D)
  + [TEXTURE\_2D\_ARRAY](#TEXTURE_2D_ARRAY)
  + [TEXTURE\_3D](#TEXTURE_3D)
  + [TEXTURE\_BASE\_LEVEL](#TEXTURE_BASE_LEVEL)
  + [TEXTURE\_BINDING\_2D](#TEXTURE_BINDING_2D)
  + [TEXTURE\_BINDING\_2D\_ARRAY](#TEXTURE_BINDING_2D_ARRAY)
  + [TEXTURE\_BINDING\_3D](#TEXTURE_BINDING_3D)
  + [TEXTURE\_BINDING\_CUBE\_MAP](#TEXTURE_BINDING_CUBE_MAP)
  + [TEXTURE\_COMPARE\_FUNC](#TEXTURE_COMPARE_FUNC)
  + [TEXTURE\_COMPARE\_MODE](#TEXTURE_COMPARE_MODE)
  + [TEXTURE\_CUBE\_MAP](#TEXTURE_CUBE_MAP)
  + [TEXTURE\_CUBE\_MAP\_NEGATIVE\_X](#TEXTURE_CUBE_MAP_NEGATIVE_X)
  + [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Y](#TEXTURE_CUBE_MAP_NEGATIVE_Y)
  + [TEXTURE\_CUBE\_MAP\_NEGATIVE\_Z](#TEXTURE_CUBE_MAP_NEGATIVE_Z)
  + [TEXTURE\_CUBE\_MAP\_POSITIVE\_X](#TEXTURE_CUBE_MAP_POSITIVE_X)
  + [TEXTURE\_CUBE\_MAP\_POSITIVE\_Y](#TEXTURE_CUBE_MAP_POSITIVE_Y)
  + [TEXTURE\_CUBE\_MAP\_POSITIVE\_Z](#TEXTURE_CUBE_MAP_POSITIVE_Z)
  + [TEXTURE\_IMMUTABLE\_FORMAT](#TEXTURE_IMMUTABLE_FORMAT)
  + [TEXTURE\_IMMUTABLE\_LEVELS](#TEXTURE_IMMUTABLE_LEVELS)
  + [TEXTURE\_MAG\_FILTER](#TEXTURE_MAG_FILTER)
  + [TEXTURE\_MAX\_LEVEL](#TEXTURE_MAX_LEVEL)
  + [TEXTURE\_MAX\_LOD](#TEXTURE_MAX_LOD)
  + [TEXTURE\_MIN\_FILTER](#TEXTURE_MIN_FILTER)
  + [TEXTURE\_MIN\_LOD](#TEXTURE_MIN_LOD)
  + [TEXTURE\_WRAP\_R](#TEXTURE_WRAP_R)
  + [TEXTURE\_WRAP\_S](#TEXTURE_WRAP_S)
  + [TEXTURE\_WRAP\_T](#TEXTURE_WRAP_T)
  + [TIMEOUT\_EXPIRED](#TIMEOUT_EXPIRED)
  + [TIMEOUT\_IGNORED](#TIMEOUT_IGNORED)
  + [TRANSFORM\_FEEDBACK](#TRANSFORM_FEEDBACK)
  + [TRANSFORM\_FEEDBACK\_ACTIVE](#TRANSFORM_FEEDBACK_ACTIVE)
  + [TRANSFORM\_FEEDBACK\_BINDING](#TRANSFORM_FEEDBACK_BINDING)
  + [TRANSFORM\_FEEDBACK\_BUFFER](#TRANSFORM_FEEDBACK_BUFFER)
  + [TRANSFORM\_FEEDBACK\_BUFFER\_BINDING](#TRANSFORM_FEEDBACK_BUFFER_BINDING)
  + [TRANSFORM\_FEEDBACK\_BUFFER\_MODE](#TRANSFORM_FEEDBACK_BUFFER_MODE)
  + [TRANSFORM\_FEEDBACK\_BUFFER\_SIZE](#TRANSFORM_FEEDBACK_BUFFER_SIZE)
  + [TRANSFORM\_FEEDBACK\_BUFFER\_START](#TRANSFORM_FEEDBACK_BUFFER_START)
  + [TRANSFORM\_FEEDBACK\_PAUSED](#TRANSFORM_FEEDBACK_PAUSED)
  + [TRANSFORM\_FEEDBACK\_PRIMITIVES\_WRITTEN](#TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN)
  + [TRANSFORM\_FEEDBACK\_VARYINGS](#TRANSFORM_FEEDBACK_VARYINGS)
  + [TRIANGLES](#TRIANGLES)
  + [TRIANGLE\_FAN](#TRIANGLE_FAN)
  + [TRIANGLE\_STRIP](#TRIANGLE_STRIP)
  + [UNIFORM\_ARRAY\_STRIDE](#UNIFORM_ARRAY_STRIDE)
  + [UNIFORM\_BLOCK\_ACTIVE\_UNIFORMS](#UNIFORM_BLOCK_ACTIVE_UNIFORMS)
  + [UNIFORM\_BLOCK\_ACTIVE\_UNIFORM\_INDICES](#UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES)
  + [UNIFORM\_BLOCK\_BINDING](#UNIFORM_BLOCK_BINDING)
  + [UNIFORM\_BLOCK\_DATA\_SIZE](#UNIFORM_BLOCK_DATA_SIZE)
  + [UNIFORM\_BLOCK\_INDEX](#UNIFORM_BLOCK_INDEX)
  + [UNIFORM\_BLOCK\_REFERENCED\_BY\_FRAGMENT\_SHADER](#UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER)
  + [UNIFORM\_BLOCK\_REFERENCED\_BY\_VERTEX\_SHADER](#UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER)
  + [UNIFORM\_BUFFER](#UNIFORM_BUFFER)
  + [UNIFORM\_BUFFER\_BINDING](#UNIFORM_BUFFER_BINDING)
  + [UNIFORM\_BUFFER\_OFFSET\_ALIGNMENT](#UNIFORM_BUFFER_OFFSET_ALIGNMENT)
  + [UNIFORM\_BUFFER\_SIZE](#UNIFORM_BUFFER_SIZE)
  + [UNIFORM\_BUFFER\_START](#UNIFORM_BUFFER_START)
  + [UNIFORM\_IS\_ROW\_MAJOR](#UNIFORM_IS_ROW_MAJOR)
  + [UNIFORM\_MATRIX\_STRIDE](#UNIFORM_MATRIX_STRIDE)
  + [UNIFORM\_OFFSET](#UNIFORM_OFFSET)
  + [UNIFORM\_SIZE](#UNIFORM_SIZE)
  + [UNIFORM\_TYPE](#UNIFORM_TYPE)
  + [UNPACK\_ALIGNMENT](#UNPACK_ALIGNMENT)
  + [UNPACK\_COLORSPACE\_CONVERSION\_WEBGL](#UNPACK_COLORSPACE_CONVERSION_WEBGL)
  + [UNPACK\_FLIP\_Y\_WEBGL](#UNPACK_FLIP_Y_WEBGL)
  + [UNPACK\_IMAGE\_HEIGHT](#UNPACK_IMAGE_HEIGHT)
  + [UNPACK\_PREMULTIPLY\_ALPHA\_WEBGL](#UNPACK_PREMULTIPLY_ALPHA_WEBGL)
  + [UNPACK\_ROW\_LENGTH](#UNPACK_ROW_LENGTH)
  + [UNPACK\_SKIP\_IMAGES](#UNPACK_SKIP_IMAGES)
  + [UNPACK\_SKIP\_PIXELS](#UNPACK_SKIP_PIXELS)
  + [UNPACK\_SKIP\_ROWS](#UNPACK_SKIP_ROWS)
  + [UNSIGNALED](#UNSIGNALED)
  + [UNSIGNED\_BYTE](#UNSIGNED_BYTE)
  + [UNSIGNED\_INT](#UNSIGNED_INT)
  + [UNSIGNED\_INT\_10F\_11F\_11F\_REV](#UNSIGNED_INT_10F_11F_11F_REV)
  + [UNSIGNED\_INT\_24\_8](#UNSIGNED_INT_24_8)
  + [UNSIGNED\_INT\_2\_10\_10\_10\_REV](#UNSIGNED_INT_2_10_10_10_REV)
  + [UNSIGNED\_INT\_5\_9\_9\_9\_REV](#UNSIGNED_INT_5_9_9_9_REV)
  + [UNSIGNED\_INT\_SAMPLER\_2D](#UNSIGNED_INT_SAMPLER_2D)
  + [UNSIGNED\_INT\_SAMPLER\_2D\_ARRAY](#UNSIGNED_INT_SAMPLER_2D_ARRAY)
  + [UNSIGNED\_INT\_SAMPLER\_3D](#UNSIGNED_INT_SAMPLER_3D)
  + [UNSIGNED\_INT\_SAMPLER\_CUBE](#UNSIGNED_INT_SAMPLER_CUBE)
  + [UNSIGNED\_INT\_VEC2](#UNSIGNED_INT_VEC2)
  + [UNSIGNED\_INT\_VEC3](#UNSIGNED_INT_VEC3)
  + [UNSIGNED\_INT\_VEC4](#UNSIGNED_INT_VEC4)
  + [UNSIGNED\_NORMALIZED](#UNSIGNED_NORMALIZED)
  + [UNSIGNED\_SHORT](#UNSIGNED_SHORT)
  + [UNSIGNED\_SHORT\_4\_4\_4\_4](#UNSIGNED_SHORT_4_4_4_4)
  + [UNSIGNED\_SHORT\_5\_5\_5\_1](#UNSIGNED_SHORT_5_5_5_1)
  + [UNSIGNED\_SHORT\_5\_6\_5](#UNSIGNED_SHORT_5_6_5)
  + [VALIDATE\_STATUS](#VALIDATE_STATUS)
  + [VENDOR](#VENDOR)
  + [VERSION](#VERSION)
  + [VERTEX\_ARRAY\_BINDING](#VERTEX_ARRAY_BINDING)
  + [VERTEX\_ATTRIB\_ARRAY\_BUFFER\_BINDING](#VERTEX_ATTRIB_ARRAY_BUFFER_BINDING)
  + [VERTEX\_ATTRIB\_ARRAY\_DIVISOR](#VERTEX_ATTRIB_ARRAY_DIVISOR)
  + [VERTEX\_ATTRIB\_ARRAY\_ENABLED](#VERTEX_ATTRIB_ARRAY_ENABLED)
  + [VERTEX\_ATTRIB\_ARRAY\_INTEGER](#VERTEX_ATTRIB_ARRAY_INTEGER)
  + [VERTEX\_ATTRIB\_ARRAY\_NORMALIZED](#VERTEX_ATTRIB_ARRAY_NORMALIZED)
  + [VERTEX\_ATTRIB\_ARRAY\_POINTER](#VERTEX_ATTRIB_ARRAY_POINTER)
  + [VERTEX\_ATTRIB\_ARRAY\_SIZE](#VERTEX_ATTRIB_ARRAY_SIZE)
  + [VERTEX\_ATTRIB\_ARRAY\_STRIDE](#VERTEX_ATTRIB_ARRAY_STRIDE)
  + [VERTEX\_ATTRIB\_ARRAY\_TYPE](#VERTEX_ATTRIB_ARRAY_TYPE)
  + [VERTEX\_SHADER](#VERTEX_SHADER)
  + [VIEWPORT](#VIEWPORT)
  + [WAIT\_FAILED](#WAIT_FAILED)
  + [ZERO](#ZERO)
* [Procedures](#pkg-Procedures)
  + [ActiveTexture](#ActiveTexture)
  + [AttachShader](#AttachShader)
  + [BeginQuery](#BeginQuery)
  + [BeginTransformFeedback](#BeginTransformFeedback)
  + [BindAttribLocation](#BindAttribLocation)
  + [BindBuffer](#BindBuffer)
  + [BindBufferBase](#BindBufferBase)
  + [BindBufferRange](#BindBufferRange)
  + [BindFramebuffer](#BindFramebuffer)
  + [BindRenderbuffer](#BindRenderbuffer)
  + [BindSampler](#BindSampler)
  + [BindTexture](#BindTexture)
  + [BindTransformFeedback](#BindTransformFeedback)
  + [BindVertexArray](#BindVertexArray)
  + [BlendColor](#BlendColor)
  + [BlendEquation](#BlendEquation)
  + [BlendEquationSeparate](#BlendEquationSeparate)
  + [BlendFunc](#BlendFunc)
  + [BlendFuncSeparate](#BlendFuncSeparate)
  + [BlitFramebuffer](#BlitFramebuffer)
  + [BufferData](#BufferData)
  + [BufferDataSlice](#BufferDataSlice)
  + [BufferSubData](#BufferSubData)
  + [BufferSubDataSlice](#BufferSubDataSlice)
  + [CheckFramebufferStatus](#CheckFramebufferStatus)
  + [Clear](#Clear)
  + [ClearBufferfi](#ClearBufferfi)
  + [ClearBufferfv](#ClearBufferfv)
  + [ClearBufferiv](#ClearBufferiv)
  + [ClearBufferuiv](#ClearBufferuiv)
  + [ClearColor](#ClearColor)
  + [ClearDepth](#ClearDepth)
  + [ClearStencil](#ClearStencil)
  + [ClientWaitSync](#ClientWaitSync)
  + [ColorMask](#ColorMask)
  + [CompileShader](#CompileShader)
  + [CompressedTexImage2D](#CompressedTexImage2D)
  + [CompressedTexImage2DSlice](#CompressedTexImage2DSlice)
  + [CompressedTexImage3D](#CompressedTexImage3D)
  + [CompressedTexSubImage2D](#CompressedTexSubImage2D)
  + [CompressedTexSubImage2DSlice](#CompressedTexSubImage2DSlice)
  + [CompressedTexSubImage3D](#CompressedTexSubImage3D)
  + [CopyBufferSubData](#CopyBufferSubData)
  + [CopyTexImage2D](#CopyTexImage2D)
  + [CopyTexSubImage2D](#CopyTexSubImage2D)
  + [CopyTexSubImage3D](#CopyTexSubImage3D)
  + [CreateBuffer](#CreateBuffer)
  + [CreateCurrentContextById](#CreateCurrentContextById)
  + [CreateFramebuffer](#CreateFramebuffer)
  + [CreateProgram](#CreateProgram)
  + [CreateProgramFromStrings](#CreateProgramFromStrings)
  + [CreateQuery](#CreateQuery)
  + [CreateRenderbuffer](#CreateRenderbuffer)
  + [CreateSampler](#CreateSampler)
  + [CreateShader](#CreateShader)
  + [CreateTexture](#CreateTexture)
  + [CreateTransformFeedback](#CreateTransformFeedback)
  + [CreateVertexArray](#CreateVertexArray)
  + [CullFace](#CullFace)
  + [DeleteBuffer](#DeleteBuffer)
  + [DeleteFramebuffer](#DeleteFramebuffer)
  + [DeleteProgram](#DeleteProgram)
  + [DeleteQuery](#DeleteQuery)
  + [DeleteRenderbuffer](#DeleteRenderbuffer)
  + [DeleteSampler](#DeleteSampler)
  + [DeleteShader](#DeleteShader)
  + [DeleteSync](#DeleteSync)
  + [DeleteTexture](#DeleteTexture)
  + [DeleteTransformFeedback](#DeleteTransformFeedback)
  + [DeleteVertexArray](#DeleteVertexArray)
  + [DepthFunc](#DepthFunc)
  + [DepthMask](#DepthMask)
  + [DepthRange](#DepthRange)
  + [DetachShader](#DetachShader)
  + [Disable](#Disable)
  + [DisableVertexAttribArray](#DisableVertexAttribArray)
  + [DrawArrays](#DrawArrays)
  + [DrawArraysInstanced](#DrawArraysInstanced)
  + [DrawBuffers](#DrawBuffers)
  + [DrawElements](#DrawElements)
  + [DrawElementsInstanced](#DrawElementsInstanced)
  + [DrawRangeElements](#DrawRangeElements)
  + [DrawingBufferHeight](#DrawingBufferHeight)
  + [DrawingBufferWidth](#DrawingBufferWidth)
  + [Enable](#Enable)
  + [EnableVertexAttribArray](#EnableVertexAttribArray)
  + [EndQuery](#EndQuery)
  + [EndTransformFeedback](#EndTransformFeedback)
  + [FenceSync](#FenceSync)
  + [Finish](#Finish)
  + [Flush](#Flush)
  + [FramebufferRenderbuffer](#FramebufferRenderbuffer)
  + [FramebufferTexture2D](#FramebufferTexture2D)
  + [FramebufferTextureLayer](#FramebufferTextureLayer)
  + [FrontFace](#FrontFace)
  + [GenerateMipmap](#GenerateMipmap)
  + [GetActiveAttribAlloc](#GetActiveAttribAlloc)
  + [GetActiveAttribBuf](#GetActiveAttribBuf)
  + [GetActiveUniformAlloc](#GetActiveUniformAlloc)
  + [GetActiveUniformBlockNameAlloc](#GetActiveUniformBlockNameAlloc)
  + [GetActiveUniformBlockNameBuf](#GetActiveUniformBlockNameBuf)
  + [GetActiveUniformBlockParameter](#GetActiveUniformBlockParameter)
  + [GetActiveUniformBuf](#GetActiveUniformBuf)
  + [GetActiveUniforms](#GetActiveUniforms)
  + [GetAttribLocation](#GetAttribLocation)
  + [GetBufferParameter](#GetBufferParameter)
  + [GetBufferSubData](#GetBufferSubData)
  + [GetCurrentContextAttributes](#GetCurrentContextAttributes)
  + [GetESVersion](#GetESVersion)
  + [GetError](#GetError)
  + [GetExtension](#GetExtension)
  + [GetFragDataLocation](#GetFragDataLocation)
  + [GetParameter](#GetParameter)
  + [GetParameter4i](#GetParameter4i)
  + [GetProgramInfoLog](#GetProgramInfoLog)
  + [GetProgramParameter](#GetProgramParameter)
  + [GetQuery](#GetQuery)
  + [GetShaderInfoLog](#GetShaderInfoLog)
  + [GetShaderiv](#GetShaderiv)
  + [GetUniformBlockIndex](#GetUniformBlockIndex)
  + [GetUniformLocation](#GetUniformLocation)
  + [GetVertexAttribOffset](#GetVertexAttribOffset)
  + [GetWebGLVersion](#GetWebGLVersion)
  + [Hint](#Hint)
  + [InvalidateFramebuffer](#InvalidateFramebuffer)
  + [InvalidateSubFramebuffer](#InvalidateSubFramebuffer)
  + [IsBuffer](#IsBuffer)
  + [IsEnabled](#IsEnabled)
  + [IsExtensionSupported](#IsExtensionSupported)
  + [IsFramebuffer](#IsFramebuffer)
  + [IsProgram](#IsProgram)
  + [IsQuery](#IsQuery)
  + [IsRenderbuffer](#IsRenderbuffer)
  + [IsSampler](#IsSampler)
  + [IsShader](#IsShader)
  + [IsSync](#IsSync)
  + [IsTexture](#IsTexture)
  + [IsTransformFeedback](#IsTransformFeedback)
  + [IsVertexArray](#IsVertexArray)
  + [IsWebGL2Supported](#IsWebGL2Supported)
  + [IterateSupportedExtensions](#IterateSupportedExtensions)
  + [LineWidth](#LineWidth)
  + [LinkProgram](#LinkProgram)
  + [PauseTransformFeedback](#PauseTransformFeedback)
  + [PixelStorei](#PixelStorei)
  + [PolygonOffset](#PolygonOffset)
  + [ReadBuffer](#ReadBuffer)
  + [ReadPixelsSlice](#ReadPixelsSlice)
  + [ReadnPixels](#ReadnPixels)
  + [RenderbufferStorage](#RenderbufferStorage)
  + [RenderbufferStorageMultisample](#RenderbufferStorageMultisample)
  + [ResumeTransformFeedback](#ResumeTransformFeedback)
  + [SampleCoverage](#SampleCoverage)
  + [SamplerParameterf](#SamplerParameterf)
  + [SamplerParameteri](#SamplerParameteri)
  + [Scissor](#Scissor)
  + [SetCurrentContextById](#SetCurrentContextById)
  + [ShaderSource](#ShaderSource)
  + [StencilFunc](#StencilFunc)
  + [StencilFuncSeparate](#StencilFuncSeparate)
  + [StencilMask](#StencilMask)
  + [StencilMaskSeparate](#StencilMaskSeparate)
  + [StencilOp](#StencilOp)
  + [StencilOpSeparate](#StencilOpSeparate)
  + [TexImage2D](#TexImage2D)
  + [TexImage2DSlice](#TexImage2DSlice)
  + [TexImage3D](#TexImage3D)
  + [TexParameterf](#TexParameterf)
  + [TexParameteri](#TexParameteri)
  + [TexStorage2D](#TexStorage2D)
  + [TexStorage3D](#TexStorage3D)
  + [TexSubImage2D](#TexSubImage2D)
  + [TexSubImage2DSlice](#TexSubImage2DSlice)
  + [TexSubImage3D](#TexSubImage3D)
  + [TransformFeedbackVaryings](#TransformFeedbackVaryings)
  + [Uniform1f](#Uniform1f)
  + [Uniform1fv](#Uniform1fv)
  + [Uniform1i](#Uniform1i)
  + [Uniform1iv](#Uniform1iv)
  + [Uniform1ui](#Uniform1ui)
  + [Uniform1uiv](#Uniform1uiv)
  + [Uniform2f](#Uniform2f)
  + [Uniform2fv](#Uniform2fv)
  + [Uniform2i](#Uniform2i)
  + [Uniform2iv](#Uniform2iv)
  + [Uniform2ui](#Uniform2ui)
  + [Uniform2uiv](#Uniform2uiv)
  + [Uniform3f](#Uniform3f)
  + [Uniform3fv](#Uniform3fv)
  + [Uniform3i](#Uniform3i)
  + [Uniform3iv](#Uniform3iv)
  + [Uniform3ui](#Uniform3ui)
  + [Uniform3uiv](#Uniform3uiv)
  + [Uniform4f](#Uniform4f)
  + [Uniform4fv](#Uniform4fv)
  + [Uniform4i](#Uniform4i)
  + [Uniform4iv](#Uniform4iv)
  + [Uniform4ui](#Uniform4ui)
  + [Uniform4uiv](#Uniform4uiv)
  + [UniformBlockBinding](#UniformBlockBinding)
  + [UniformMatrix2fv](#UniformMatrix2fv)
  + [UniformMatrix2x3fv](#UniformMatrix2x3fv)
  + [UniformMatrix2x4fv](#UniformMatrix2x4fv)
  + [UniformMatrix3fv](#UniformMatrix3fv)
  + [UniformMatrix3x2fv](#UniformMatrix3x2fv)
  + [UniformMatrix3x4fv](#UniformMatrix3x4fv)
  + [UniformMatrix4fv](#UniformMatrix4fv)
  + [UniformMatrix4x2fv](#UniformMatrix4x2fv)
  + [UniformMatrix4x3fv](#UniformMatrix4x3fv)
  + [UseProgram](#UseProgram)
  + [ValidateProgram](#ValidateProgram)
  + [VertexAttrib1f](#VertexAttrib1f)
  + [VertexAttrib1fv](#VertexAttrib1fv)
  + [VertexAttrib2f](#VertexAttrib2f)
  + [VertexAttrib2fv](#VertexAttrib2fv)
  + [VertexAttrib3f](#VertexAttrib3f)
  + [VertexAttrib3fv](#VertexAttrib3fv)
  + [VertexAttrib4f](#VertexAttrib4f)
  + [VertexAttrib4fv](#VertexAttrib4fv)
  + [VertexAttribDivisor](#VertexAttribDivisor)
  + [VertexAttribI4i](#VertexAttribI4i)
  + [VertexAttribI4iv](#VertexAttribI4iv)
  + [VertexAttribI4ui](#VertexAttribI4ui)
  + [VertexAttribI4uiv](#VertexAttribI4uiv)
  + [VertexAttribIPointer](#VertexAttribIPointer)
  + [VertexAttribPointer](#VertexAttribPointer)
  + [Viewport](#Viewport)
  + [WaitSync](#WaitSync)
* [Procedure Groups](#pkg-Procedure Groups)
  + [GetActiveAttrib](#GetActiveAttrib)
  + [GetActiveUniform](#GetActiveUniform)
  + [GetActiveUniformBlockName](#GetActiveUniformBlockName)
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