package directx/dxc - pkg.odin-lang.org 






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



Current Package: *[directx\_dxc](/vendor/directx/dxc)*

  

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
2. directx
3. [dxc](/vendor/directx/dxc)

# package vendor:directx/dxc [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [DXC](https://learn.microsoft.com/en-us/windows/win32/api/dxcapi/).

## Index

Types (77)

* [ArgPair](#ArgPair)
* [BOOL](#BOOL)
* [BSTR](#BSTR)
* [Buffer](#Buffer)
* [CLSID](#CLSID)
* [DXC\_OUT\_KIND](#DXC_OUT_KIND)
* [Define](#Define)
* [FILETIME](#FILETIME)
* [HRESULT](#HRESULT)
* [IAssembler](#IAssembler)
* [IAssembler\_VTable](#IAssembler_VTable)
* [IBlob](#IBlob)
* [IBlobEncoding](#IBlobEncoding)
* [IBlobEncoding\_VTable](#IBlobEncoding_VTable)
* [IBlobUtf16](#IBlobUtf16)
* [IBlobUtf16\_VTable](#IBlobUtf16_VTable)
* [IBlobUtf8](#IBlobUtf8)
* [IBlobUtf8\_VTable](#IBlobUtf8_VTable)
* [IBlob\_VTable](#IBlob_VTable)
* [ICompiler](#ICompiler)
* [ICompiler2](#ICompiler2)
* [ICompiler2\_VTable](#ICompiler2_VTable)
* [ICompiler3](#ICompiler3)
* [ICompiler3\_VTable](#ICompiler3_VTable)
* [ICompilerArgs](#ICompilerArgs)
* [ICompilerArgs\_VTable](#ICompilerArgs_VTable)
* [ICompiler\_VTable](#ICompiler_VTable)
* [IContainerBuilder](#IContainerBuilder)
* [IContainerBuilder\_VTable](#IContainerBuilder_VTable)
* [IContainerReflection](#IContainerReflection)
* [IContainerReflection\_VTable](#IContainerReflection_VTable)
* [IExtraOutputs](#IExtraOutputs)
* [IExtraOutputs\_VTable](#IExtraOutputs_VTable)
* [IID](#IID)
* [IIncludeHandler](#IIncludeHandler)
* [IIncludeHandler\_VTable](#IIncludeHandler_VTable)
* [ILibrary](#ILibrary)
* [ILibrary\_VTable](#ILibrary_VTable)
* [ILinker](#ILinker)
* [ILinker\_VTable](#ILinker_VTable)
* [IMalloc](#IMalloc)
* [IMalloc\_VTable](#IMalloc_VTable)
* [IOperationResult](#IOperationResult)
* [IOperationResult\_VTable](#IOperationResult_VTable)
* [IOptimizer](#IOptimizer)
* [IOptimizerPass](#IOptimizerPass)
* [IOptimizerPass\_VTable](#IOptimizerPass_VTable)
* [IOptimizer\_VTable](#IOptimizer_VTable)
* [IPdbUtils](#IPdbUtils)
* [IPdbUtils\_VTable](#IPdbUtils_VTable)
* [IResult](#IResult)
* [IResult\_VTable](#IResult_VTable)
* [ISequentialStream](#ISequentialStream)
* [ISequentialStream\_VTable](#ISequentialStream_VTable)
* [IStream](#IStream)
* [IStream\_VTable](#IStream_VTable)
* [IUnknown](#IUnknown)
* [IUnknown\_VTable](#IUnknown_VTable)
* [IUtils](#IUtils)
* [IUtils\_VTable](#IUtils_VTable)
* [IValidator](#IValidator)
* [IValidator2](#IValidator2)
* [IValidator2\_VTable](#IValidator2_VTable)
* [IValidator\_VTable](#IValidator_VTable)
* [IVersionInfo](#IVersionInfo)
* [IVersionInfo2](#IVersionInfo2)
* [IVersionInfo2\_VTable](#IVersionInfo2_VTable)
* [IVersionInfo3](#IVersionInfo3)
* [IVersionInfo3\_VTable](#IVersionInfo3_VTable)
* [IVersionInfo\_VTable](#IVersionInfo_VTable)
* [SIZE\_T](#SIZE_T)
* [STATSTG](#STATSTG)
* [ULONG](#ULONG)
* [VersionInfoFlags](#VersionInfoFlags)
* [pCreateInstance2Proc](#pCreateInstance2Proc)
* [pCreateInstanceProc](#pCreateInstanceProc)
* [wstring](#wstring)

Constants (74)

* [ARG\_ALL\_RESOURCES\_BOUND](#ARG_ALL_RESOURCES_BOUND)
* [ARG\_AVOID\_FLOW\_CONTROL](#ARG_AVOID_FLOW_CONTROL)
* [ARG\_DEBUG](#ARG_DEBUG)
* [ARG\_DEBUG\_NAME\_FOR\_BINARY](#ARG_DEBUG_NAME_FOR_BINARY)
* [ARG\_DEBUG\_NAME\_FOR\_SOURCE](#ARG_DEBUG_NAME_FOR_SOURCE)
* [ARG\_ENABLE\_BACKWARDS\_COMPATIBILITY](#ARG_ENABLE_BACKWARDS_COMPATIBILITY)
* [ARG\_ENABLE\_STRICTNESS](#ARG_ENABLE_STRICTNESS)
* [ARG\_IEEE\_STRICTNESS](#ARG_IEEE_STRICTNESS)
* [ARG\_OPTIMIZATION\_LEVEL0](#ARG_OPTIMIZATION_LEVEL0)
* [ARG\_OPTIMIZATION\_LEVEL1](#ARG_OPTIMIZATION_LEVEL1)
* [ARG\_OPTIMIZATION\_LEVEL2](#ARG_OPTIMIZATION_LEVEL2)
* [ARG\_OPTIMIZATION\_LEVEL3](#ARG_OPTIMIZATION_LEVEL3)
* [ARG\_PACK\_MATRIX\_COLUMN\_MAJOR](#ARG_PACK_MATRIX_COLUMN_MAJOR)
* [ARG\_PACK\_MATRIX\_ROW\_MAJOR](#ARG_PACK_MATRIX_ROW_MAJOR)
* [ARG\_PREFER\_FLOW\_CONTROL](#ARG_PREFER_FLOW_CONTROL)
* [ARG\_RESOURCES\_MAY\_ALIAS](#ARG_RESOURCES_MAY_ALIAS)
* [ARG\_SKIP\_OPTIMIZATIONS](#ARG_SKIP_OPTIMIZATIONS)
* [ARG\_SKIP\_VALIDATION](#ARG_SKIP_VALIDATION)
* [ARG\_WARNINGS\_ARE\_ERRORS](#ARG_WARNINGS_ARE_ERRORS)
* [Assembler\_CLSID\_STRING](#Assembler_CLSID_STRING)
* [CP\_ACP](#CP_ACP)
* [CP\_UTF16](#CP_UTF16)
* [CP\_UTF8](#CP_UTF8)
* [CompilerArgs\_CLSID\_STRING](#CompilerArgs_CLSID_STRING)
* [Compiler\_CLSID\_STRING](#Compiler_CLSID_STRING)
* [ContainerBuilder\_CLSID\_STRING](#ContainerBuilder_CLSID_STRING)
* [ContainerReflection\_CLSID\_STRING](#ContainerReflection_CLSID_STRING)
* [CreateInstance2\_ProcName](#CreateInstance2_ProcName)
* [CreateInstance\_ProcName](#CreateInstance_ProcName)
* [DiaDataSource\_CLSID\_STRING](#DiaDataSource_CLSID_STRING)
* [EXTRA\_OUTPUT\_NAME\_STDERR](#EXTRA_OUTPUT_NAME_STDERR)
* [EXTRA\_OUTPUT\_NAME\_STDOUT](#EXTRA_OUTPUT_NAME_STDOUT)
* [IAssembler\_UUID\_STRING](#IAssembler_UUID_STRING)
* [IBlobEncoding\_UUID\_STRRING](#IBlobEncoding_UUID_STRRING)
* [IBlobUtf16\_UUID\_STRING](#IBlobUtf16_UUID_STRING)
* [IBlobUtf8\_UUID\_STRING](#IBlobUtf8_UUID_STRING)
* [IBlob\_UUID\_STRING](#IBlob_UUID_STRING)
* [ICompiler2\_UUID\_STRING](#ICompiler2_UUID_STRING)
* [ICompiler3\_UUID\_STRING](#ICompiler3_UUID_STRING)
* [ICompilerArgs\_UUID\_STRING](#ICompilerArgs_UUID_STRING)
* [ICompiler\_UUID\_STRING](#ICompiler_UUID_STRING)
* [IContainerBuilder\_UUID\_STRING](#IContainerBuilder_UUID_STRING)
* [IContainerReflection\_UUID\_STRING](#IContainerReflection_UUID_STRING)
* [IExtraOutputs\_UUID\_STRING](#IExtraOutputs_UUID_STRING)
* [IIncludeHandler\_UUID\_STRING](#IIncludeHandler_UUID_STRING)
* [ILibrary\_UUID\_STRING](#ILibrary_UUID_STRING)
* [ILinker\_UUID\_STRING](#ILinker_UUID_STRING)
* [IOperationResult\_UUID\_STRING](#IOperationResult_UUID_STRING)
* [IOptimizerPass\_UUID\_STRING](#IOptimizerPass_UUID_STRING)
* [IOptimizer\_UUID\_STRING](#IOptimizer_UUID_STRING)
* [IPdbUtils\_UUID\_STRING](#IPdbUtils_UUID_STRING)
* [IResult\_UUID\_STRING](#IResult_UUID_STRING)
* [IUtils\_UUID\_STRING](#IUtils_UUID_STRING)
* [IValidator2\_UUID\_STRING](#IValidator2_UUID_STRING)
* [IValidator\_UUID\_STRING](#IValidator_UUID_STRING)
* [IVersionInfo2\_UUID\_STRING](#IVersionInfo2_UUID_STRING)
* [IVersionInfo3\_UUID\_STRING](#IVersionInfo3_UUID_STRING)
* [IVersionInfo\_UUID\_STRING](#IVersionInfo_UUID_STRING)
* [Library\_CLSID\_STRING](#Library_CLSID_STRING)
* [Linker\_CLSID\_STRING](#Linker_CLSID_STRING)
* [Optimizer\_CLSID\_STRING](#Optimizer_CLSID_STRING)
* [PART\_DXIL](#PART_DXIL)
* [PART\_INPUT\_SIGNATURE](#PART_INPUT_SIGNATURE)
* [PART\_OUTPUT\_SIGNATURE](#PART_OUTPUT_SIGNATURE)
* [PART\_PATCH\_CONSTANT\_SIGNATURE](#PART_PATCH_CONSTANT_SIGNATURE)
* [PART\_PDB](#PART_PDB)
* [PART\_PDB\_NAME](#PART_PDB_NAME)
* [PART\_PRIVATE\_DATA](#PART_PRIVATE_DATA)
* [PART\_REFLECTION\_DATA](#PART_REFLECTION_DATA)
* [PART\_ROOT\_SIGNATURE](#PART_ROOT_SIGNATURE)
* [PART\_SHADER\_HASH](#PART_SHADER_HASH)
* [PdbUtils\_CLSID\_STRING](#PdbUtils_CLSID_STRING)
* [Utils\_CLSID\_STRING](#Utils_CLSID_STRING)
* [Validator\_CLSID\_STRING](#Validator_CLSID_STRING)

Variables (38)

* [Assembler\_CLSID](#Assembler_CLSID)
* [CompilerArgs\_CLSID](#CompilerArgs_CLSID)
* [Compiler\_CLSID](#Compiler_CLSID)
* [ContainerBuilder\_CLSID](#ContainerBuilder_CLSID)
* [ContainerReflection\_CLSID](#ContainerReflection_CLSID)
* [DiaDataSource\_CLSID](#DiaDataSource_CLSID)
* [IAssembler\_UUID](#IAssembler_UUID)
* [IBlobEncoding\_UUID](#IBlobEncoding_UUID)
* [IBlobUtf16\_UUID](#IBlobUtf16_UUID)
* [IBlobUtf8\_UUID](#IBlobUtf8_UUID)
* [IBlob\_UUID](#IBlob_UUID)
* [ICompiler2\_UUID](#ICompiler2_UUID)
* [ICompiler3\_UUID](#ICompiler3_UUID)
* [ICompilerArgs\_UUID](#ICompilerArgs_UUID)
* [ICompiler\_UUID](#ICompiler_UUID)
* [IContainerBuilder\_UUID](#IContainerBuilder_UUID)
* [IContainerReflection\_UUID](#IContainerReflection_UUID)
* [IExtraOutputs\_UUID](#IExtraOutputs_UUID)
* [IIncludeHandler\_UUID](#IIncludeHandler_UUID)
* [ILibrary\_UUID](#ILibrary_UUID)
* [ILinker\_UUID](#ILinker_UUID)
* [IOperationResult\_UUID](#IOperationResult_UUID)
* [IOptimizerPass\_UUID](#IOptimizerPass_UUID)
* [IOptimizer\_UUID](#IOptimizer_UUID)
* [IPdbUtils\_UUID](#IPdbUtils_UUID)
* [IResult\_UUID](#IResult_UUID)
* [IUtils\_UUID](#IUtils_UUID)
* [IValidator2\_UUID](#IValidator2_UUID)
* [IValidator\_UUID](#IValidator_UUID)
* [IVersionInfo2\_UUID](#IVersionInfo2_UUID)
* [IVersionInfo3\_UUID](#IVersionInfo3_UUID)
* [IVersionInfo\_UUID](#IVersionInfo_UUID)
* [Library\_CLSID](#Library_CLSID)
* [Linker\_CLSID](#Linker_CLSID)
* [Optimizer\_CLSID](#Optimizer_CLSID)
* [PdbUtils\_CLSID](#PdbUtils_CLSID)
* [Utils\_CLSID](#Utils_CLSID)
* [Validator\_CLSID](#Validator_CLSID)

Procedures (3)

* [CreateInstance](#CreateInstance)
* [CreateInstance2](#CreateInstance2)
* [make\_fourcc](#make_fourcc)

Procedure Groups (0)

This section is empty.

## Types

### [ArgPair ¶](#ArgPair) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L478)

```
ArgPair :: struct {
	pName:  cstring16,
	pValue: cstring16,
}
```

### [BOOL ¶](#BOOL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L6)

```
BOOL :: sys_windows.BOOL
```

### [BSTR ¶](#BSTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L16)

```
BSTR :: cstring16
```

### [Buffer ¶](#Buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L265)

```
Buffer :: struct {
	Ptr:      rawptr,
	Size:     uint,
	Encoding: u32,
}
```

### [CLSID ¶](#CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L9)

```
CLSID :: sys_windows.GUID
```

##### Related Procedures With Parameters

* [CreateInstance](/vendor/directx/dxc/#CreateInstance)
* [CreateInstance2](/vendor/directx/dxc/#CreateInstance2)

### [DXC\_OUT\_KIND ¶](#DXC_OUT_KIND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L294)

```
DXC_OUT_KIND :: enum u32 {
	NONE           = 0, 
	OBJECT         = 1, 
	ERRORS         = 2, 
	PDB            = 3, 
	SHADER_HASH    = 4, 
	DISASSEMBLY    = 5, 
	HLSL           = 6, 
	TEXT           = 7, 
	REFLECTION     = 8, 
	ROOT_SIGNATURE = 9, 
	EXTRA_OUTPUTS  = 10, 
}
```

### [Define ¶](#Define) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L135)

```
Define :: struct {
	Name:  cstring16,
	Value: cstring16,
}
```

### [FILETIME ¶](#FILETIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L15)

```
FILETIME :: sys_windows.FILETIME
```

### [HRESULT ¶](#HRESULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L11)

```
HRESULT :: sys_windows.HRESULT
```

##### Related Procedures With Returns

* [CreateInstance](/vendor/directx/dxc/#CreateInstance)
* [CreateInstance2](/vendor/directx/dxc/#CreateInstance2)

### [IAssembler ¶](#IAssembler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L385)

```
IAssembler :: struct #raw_union {
	iunknown:             sys_windows.IUnknown,
	using idxcassembler_vtable: ^IAssembler_VTable,
}
```

### [IAssembler\_VTable ¶](#IAssembler_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L389)

```
IAssembler_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	AssembleToContainer: proc "stdcall" (this: ^IAssembler, pShader: ^IBlob, ppResult: ^^IOperationResult) -> sys_windows.HRESULT,
}
```

### [IBlob ¶](#IBlob) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L79)

```
IBlob :: struct #raw_union {
	iunknown:          sys_windows.IUnknown,
	using id3d10blob_vtable: ^IBlob_VTable,
}
```

### [IBlobEncoding ¶](#IBlobEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L91)

```
IBlobEncoding :: struct #raw_union {
	idxcblob:                IBlob,
	using idxcblobencoding_vtable: ^IBlobEncoding_VTable,
}
```

### [IBlobEncoding\_VTable ¶](#IBlobEncoding_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L95)

```
IBlobEncoding_VTable :: struct {
	using idxcblob_vtable: IBlob_VTable,
	GetEncoding:     proc "stdcall" (this: ^IBlobEncoding, pKnown: ^sys_windows.BOOL, pCodePage: ^u32) -> sys_windows.HRESULT,
}
```

### [IBlobUtf16 ¶](#IBlobUtf16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L102)

```
IBlobUtf16 :: struct #raw_union {
	idxcblobencoding:     IBlobEncoding,
	using idxcblobutf16_vtable: ^IBlobUtf16_VTable,
}
```

### [IBlobUtf16\_VTable ¶](#IBlobUtf16_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L106)

```
IBlobUtf16_VTable :: struct {
	using idxcblobencoding_vtable: IBlobEncoding_VTable,
	GetStringPointer:        proc "stdcall" (this: ^IBlobUtf16) -> cstring16,
	GetStringLength:         proc "stdcall" (this: ^IBlobUtf16) -> uint,
}
```

### [IBlobUtf8 ¶](#IBlobUtf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L114)

```
IBlobUtf8 :: struct #raw_union {
	idxcblobencoding:    IBlobEncoding,
	using idxcblobutf8_vtable: ^IBlobUtf8_VTable,
}
```

### [IBlobUtf8\_VTable ¶](#IBlobUtf8_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L118)

```
IBlobUtf8_VTable :: struct {
	using idxcblobencoding_vtable: IBlobEncoding_VTable,
	GetStringPointer:        proc "stdcall" (this: ^IBlobUtf8) -> cstring,
	GetStringLength:         proc "stdcall" (this: ^IBlobUtf8) -> uint,
}
```

### [IBlob\_VTable ¶](#IBlob_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L83)

```
IBlob_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetBufferPointer: proc "stdcall" (this: ^IBlob) -> rawptr,
	GetBufferSize:    proc "stdcall" (this: ^IBlob) -> uint,
}
```

### [ICompiler ¶](#ICompiler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L190)

```
ICompiler :: struct #raw_union {
	iunknown:            sys_windows.IUnknown,
	using idxccompiler_vtable: ^ICompiler_VTable,
}
```

### [ICompiler2 ¶](#ICompiler2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L223)

```
ICompiler2 :: struct #raw_union {
	icompiler:            ICompiler,
	using idxccompiler2_vtable: ^ICompiler2_VTable,
}
```

### [ICompiler2\_VTable ¶](#ICompiler2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L227)

```
ICompiler2_VTable :: struct {
	using idxccompiler_vtable: ^ICompiler_VTable,
	CompileWithDebug:    proc "stdcall" (this: ^ICompiler2, pSource: ^IBlob, pSourceName: cstring16, pEntryPoint: cstring16, pTargetProfile: cstring16, pArguments: [^]cstring16, argCount: u32, pDefines: [^]Define, defineCount: u32, pIncludeHandler: ^IIncludeHandler, ppResult: ^^IOperationResult, ppDebugBlobName: ^cstring16, ppDebugBlob: ^^IBlob) -> sys_windows.HRESULT,
}
```

### [ICompiler3 ¶](#ICompiler3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L337)

```
ICompiler3 :: struct #raw_union {
	iunknown:             sys_windows.IUnknown,
	using idxccompiler3_vtable: ^ICompiler3_VTable,
}
```

### [ICompiler3\_VTable ¶](#ICompiler3_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L341)

```
ICompiler3_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Compile:         proc "stdcall" (this: ^ICompiler3, pSource: ^Buffer, pArguments: [^]cstring16, argCount: u32, pIncludeHandler: ^IIncludeHandler, riid: ^sys_windows.GUID, ppResult: rawptr) -> sys_windows.HRESULT,
	Disassemble:     proc "stdcall" (this: ^ICompiler3, pObject: ^Buffer, riid: ^sys_windows.GUID, ppResult: rawptr) -> sys_windows.HRESULT,
}
```

### [ICompilerArgs ¶](#ICompilerArgs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L142)

```
ICompilerArgs :: struct #raw_union {
	iunknown:                sys_windows.IUnknown,
	using idxccompilerargs_vtable: ^ICompilerArgs_VTable,
}
```

### [ICompilerArgs\_VTable ¶](#ICompilerArgs_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L146)

```
ICompilerArgs_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetArguments:     proc "stdcall" (this: ^ICompilerArgs) -> [^]cstring16,
	GetCount:         proc "stdcall" (this: ^ICompilerArgs) -> u32,
	AddArguments:     proc "stdcall" (this: ^ICompilerArgs, pArguments: [^]cstring16, argCount: u32) -> sys_windows.HRESULT,
	AddArgumentsUTF8: proc "stdcall" (this: ^ICompilerArgs, pArguments: [^]cstring, argCount: u32) -> sys_windows.HRESULT,
	AddDefines:       proc "stdcall" (this: ^ICompilerArgs, pDefines: [^]Define, defineCount: u32) -> sys_windows.HRESULT,
}
```

### [ICompiler\_VTable ¶](#ICompiler_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L194)

```
ICompiler_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Compile:         proc "stdcall" (this: ^ICompiler, pSource: ^IBlob, pSourceName: cstring16, pEntryPoint: cstring16, pTargetProfile: cstring16, pArguments: [^]cstring16, argCount: u32, pDefines: [^]Define, defineCount: u32, pIncludeHandler: ^IIncludeHandler, ppResult: ^^IOperationResult) -> sys_windows.HRESULT,
	Preprocess:      proc "stdcall" (this: ^ICompiler, pSource: ^IBlob, pSourceName: cstring16, pArguments: [^]cstring16, argCount: u32, pDefines: [^]Define, defineCount: u32, pIncludeHandler: ^IIncludeHandler, ppResult: ^^IOperationResult) -> sys_windows.HRESULT,
	Disassemble:     proc "stdcall" (this: ^ICompiler, pSource: ^Buffer, ppDisassembly: ^IBlobEncoding) -> sys_windows.HRESULT,
}
```

### [IContainerBuilder ¶](#IContainerBuilder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L371)

```
IContainerBuilder :: struct #raw_union {
	iunknown:                    sys_windows.IUnknown,
	using idxccontainerbuilder_vtable: ^IContainerBuilder_VTable,
}
```

### [IContainerBuilder\_VTable ¶](#IContainerBuilder_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L375)

```
IContainerBuilder_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Load:               proc "stdcall" (this: ^IContainerBuilder, pDxilContainerHeader: ^IBlob) -> sys_windows.HRESULT,
	AddPart:            proc "stdcall" (this: ^IContainerBuilder, fourCC: u32, pSource: ^IBlob) -> sys_windows.HRESULT,
	RemovePart:         proc "stdcall" (this: ^IContainerBuilder, fourCC: u32) -> sys_windows.HRESULT,
	SerializeContainer: proc "stdcall" (this: ^IContainerBuilder, ppResult: ^^IOperationResult) -> sys_windows.HRESULT,
}
```

### [IContainerReflection ¶](#IContainerReflection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L396)

```
IContainerReflection :: struct #raw_union {
	iunknown:                       sys_windows.IUnknown,
	using idxccontainerreflection_vtable: ^IContainerReflection_VTable,
}
```

### [IContainerReflection\_VTable ¶](#IContainerReflection_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L400)

```
IContainerReflection_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Load:              proc "stdcall" (this: ^IContainerReflection, pContainer: ^IBlob) -> sys_windows.HRESULT,
	GetPartCount:      proc "stdcall" (this: ^IContainerReflection, pResult: ^u32) -> sys_windows.HRESULT,
	GetPartKind:       proc "stdcall" (this: ^IContainerReflection, idx: u32, pResult: ^u32) -> sys_windows.HRESULT,
	GetPartContent:    proc "stdcall" (this: ^IContainerReflection, idx: u32, ppResult: ^^IBlob) -> sys_windows.HRESULT,
	FindFirstPartKind: proc "stdcall" (this: ^IContainerReflection, kind: u32, pResult: ^u32) -> sys_windows.HRESULT,
	GetPartReflection: proc "stdcall" (this: ^IContainerReflection, idx: u32, iid: ^sys_windows.GUID, ppvObject: rawptr) -> sys_windows.HRESULT,
}
```

### [IExtraOutputs ¶](#IExtraOutputs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L325)

```
IExtraOutputs :: struct #raw_union {
	iunknown:                sys_windows.IUnknown,
	using idxcextraoutputs_vtable: ^IExtraOutputs_VTable,
}
```

### [IExtraOutputs\_VTable ¶](#IExtraOutputs_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L329)

```
IExtraOutputs_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetOutputCount:  proc "stdcall" (this: ^IExtraOutputs) -> u32,
	GetOutput:       proc "stdcall" (this: ^IExtraOutputs, uIndex: u32, iid: ^sys_windows.GUID, ppvObject: rawptr, ppOutputType: ^^IBlobUtf16, ppOutputName: ^^IBlobUtf16) -> sys_windows.HRESULT,
}
```

### [IID ¶](#IID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L10)

```
IID :: sys_windows.GUID
```

##### Related Procedures With Parameters

* [CreateInstance](/vendor/directx/dxc/#CreateInstance)
* [CreateInstance2](/vendor/directx/dxc/#CreateInstance2)

### [IIncludeHandler ¶](#IIncludeHandler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L126)

```
IIncludeHandler :: struct #raw_union {
	iunknown:                  sys_windows.IUnknown,
	using idxcincludehandler_vtable: ^IIncludeHandler_VTable,
}
```

### [IIncludeHandler\_VTable ¶](#IIncludeHandler_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L130)

```
IIncludeHandler_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	LoadSource:      proc "stdcall" (this: ^IIncludeHandler, pFilename: cstring16, ppIncludeSource: ^^IBlob) -> sys_windows.HRESULT,
}
```

### [ILibrary ¶](#ILibrary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L157)

```
ILibrary :: struct #raw_union {
	iunknown:           sys_windows.IUnknown,
	using idxclibrary_vtable: ^ILibrary_VTable,
}
```

### [ILibrary\_VTable ¶](#ILibrary_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L161)

```
ILibrary_VTable :: struct {
	using iunknown_vtable:            sys_windows.IUnknown_VTable,
	SetMalloc:                        proc "stdcall" (this: ^ILibrary, pMalloc: ^IMalloc) -> sys_windows.HRESULT,
	CreateBlobFromBlob:               proc "stdcall" (this: ^ILibrary, pBlob: ^IBlob, offset: u32, length: u32, ppResult: ^^IBlob) -> sys_windows.HRESULT,
	CreateBlobFromFile:               proc "stdcall" (this: ^ILibrary, pFileName: cstring16, codePage: ^u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	CreateBlobWithEncodingFromPinned: proc "stdcall" (this: ^ILibrary, pText: rawptr, size: u32, codePage: u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	CreateBlobWithEncodingOnHeapCopy: proc "stdcall" (this: ^ILibrary, pText: rawptr, size: u32, codePage: u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	CreateBlobWithEncodingOnMalloc:   proc "stdcall" (this: ^ILibrary, pText: rawptr, pIMalloc: ^IMalloc, size: u32, codePage: u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	CreateIncludeHandler:             proc "stdcall" (this: ^ILibrary, ppResult: ^^IIncludeHandler) -> sys_windows.HRESULT,
	CreateStreamFromBlobReadOnly:     proc "stdcall" (this: ^ILibrary, pBlob: ^IBlob, ppStream: ^^IStream) -> sys_windows.HRESULT,
	GetBlobAsUtf8:                    proc "stdcall" (this: ^ILibrary, pBlob: ^IBlob, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	GetBlobAsUtf16:                   proc "stdcall" (this: ^ILibrary, pBlob: ^IBlob, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
}
```

### [ILinker ¶](#ILinker) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L247)

```
ILinker :: struct #raw_union {
	iunknown:          sys_windows.IUnknown,
	using idxclinker_vtable: ^ILinker_VTable,
}
```

### [ILinker\_VTable ¶](#ILinker_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L251)

```
ILinker_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	RegisterLibrary: proc "stdcall" (this: ^ILinker, pLibName: ^IBlob) -> sys_windows.HRESULT,
	Link:            proc "stdcall" (this: ^ILinker, pEntryName: cstring16, pTargetProfile: cstring16, pLibNames: [^]cstring16, libCount: u32, pArguments: [^]cstring16, argCount: u32, ppResult: ^^IOperationResult) -> sys_windows.HRESULT,
}
```

### [IMalloc ¶](#IMalloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L22)

```
IMalloc :: struct #raw_union {
	iunknown:       sys_windows.IUnknown,
	using imalloc_vtable: ^IMalloc_VTable,
}
```

##### Related Procedures With Parameters

* [CreateInstance2](/vendor/directx/dxc/#CreateInstance2)

### [IMalloc\_VTable ¶](#IMalloc_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L26)

```
IMalloc_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Alloc:           proc "stdcall" (this: ^IMalloc, cb: uint) -> rawptr,
	Realloc:         proc "stdcall" (this: ^IMalloc, pv: rawptr, cb: uint) -> rawptr,
	Free:            proc "stdcall" (this: ^IMalloc, pv: rawptr),
	GetSize:         proc "stdcall" (this: ^IMalloc, pv: rawptr) -> uint,
	DidAlloc:        proc "stdcall" (this: ^IMalloc, pv: rawptr) -> i32,
	HeapMinimize:    proc "stdcall" (this: ^IMalloc),
}
```

### [IOperationResult ¶](#IOperationResult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L177)

```
IOperationResult :: struct #raw_union {
	iunknown:                   sys_windows.IUnknown,
	using idxcoperationresult_vtable: ^IOperationResult_VTable,
}
```

### [IOperationResult\_VTable ¶](#IOperationResult_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L181)

```
IOperationResult_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetStatus:       proc "stdcall" (this: ^IOperationResult, pStatus: ^sys_windows.HRESULT) -> sys_windows.HRESULT,
	GetResult:       proc "stdcall" (this: ^IOperationResult, ppResult: ^^IBlob) -> sys_windows.HRESULT,
	GetErrorBuffer:  proc "stdcall" (this: ^IOperationResult, ppErrors: ^^IBlobEncoding) -> sys_windows.HRESULT,
}
```

### [IOptimizer ¶](#IOptimizer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L427)

```
IOptimizer :: struct #raw_union {
	iunknown:             sys_windows.IUnknown,
	using idxcoptimizer_vtable: ^IOptimizer_VTable,
}
```

### [IOptimizerPass ¶](#IOptimizerPass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L412)

```
IOptimizerPass :: struct #raw_union {
	iunknown:                 sys_windows.IUnknown,
	using idxcoptimizerpass_vtable: ^IOptimizerPass_VTable,
}
```

### [IOptimizerPass\_VTable ¶](#IOptimizerPass_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L416)

```
IOptimizerPass_VTable :: struct {
	using iunknown_vtable:   sys_windows.IUnknown_VTable,
	GetOptionName:           proc "stdcall" (this: ^IOptimizerPass, ppResult: ^cstring16) -> sys_windows.HRESULT,
	GetDescription:          proc "stdcall" (this: ^IOptimizerPass, ppResult: ^cstring16) -> sys_windows.HRESULT,
	GetOptionArgCount:       proc "stdcall" (this: ^IOptimizerPass, pCount: ^u32) -> sys_windows.HRESULT,
	GetOptionArgName:        proc "stdcall" (this: ^IOptimizerPass, argIndex: u32, ppResult: ^cstring16) -> sys_windows.HRESULT,
	GetOptionArgDescription: proc "stdcall" (this: ^IOptimizerPass, argIndex: u32, ppResult: ^cstring16) -> sys_windows.HRESULT,
}
```

### [IOptimizer\_VTable ¶](#IOptimizer_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L431)

```
IOptimizer_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetAvailablePassCount: proc "stdcall" (this: ^IOptimizer, pCount: ^u32) -> sys_windows.HRESULT,
	GetAvailablePass:      proc "stdcall" (this: ^IOptimizer, index: u32, ppResult: ^^IOptimizerPass) -> sys_windows.HRESULT,
	RunOptimizer:          proc "stdcall" (this: ^IOptimizer, pBlob: ^IBlob, ppOptions: [^]cstring16, optionCount: u32, pOutputModule: ^^IBlob, ppOutputText: ^^IBlobEncoding) -> sys_windows.HRESULT,
}
```

### [IPdbUtils ¶](#IPdbUtils) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L485)

```
IPdbUtils :: struct #raw_union {
	iunknown:            sys_windows.IUnknown,
	using idxcpdbutils_vtable: ^IPdbUtils_VTable,
}
```

### [IPdbUtils\_VTable ¶](#IPdbUtils_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L489)

```
IPdbUtils_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Load:                  proc "stdcall" (this: ^IPdbUtils, pPdbOrDxil: ^IBlob) -> sys_windows.HRESULT,
	GetSourceCount:        proc "stdcall" (this: ^IPdbUtils, pCount: ^u32) -> sys_windows.HRESULT,
	GetSource:             proc "stdcall" (this: ^IPdbUtils, uIndex: u32, ppResult: ^^IBlobEncoding) -> sys_windows.HRESULT,
	GetSourceName:         proc "stdcall" (this: ^IPdbUtils, uIndex: u32, pResult: ^cstring16) -> sys_windows.HRESULT,
	GetFlagCount:          proc "stdcall" (this: ^IPdbUtils, pCount: ^u32) -> sys_windows.HRESULT,
	GetFlag:               proc "stdcall" (this: ^IPdbUtils, uIndex: u32, pResult: ^cstring16) -> sys_windows.HRESULT,
	GetArgCount:           proc "stdcall" (this: ^IPdbUtils, pCount: ^u32) -> sys_windows.HRESULT,
	GetArg:                proc "stdcall" (this: ^IPdbUtils, uIndex: u32, pResult: ^cstring16) -> sys_windows.HRESULT,
	GetArgPairCount:       proc "stdcall" (this: ^IPdbUtils, pCount: ^u32) -> sys_windows.HRESULT,
	GetArgPair:            proc "stdcall" (this: ^IPdbUtils, uIndex: u32, pName: ^cstring16, pValue: ^cstring16) -> sys_windows.HRESULT,
	GetDefineCount:        proc "stdcall" (this: ^IPdbUtils, pCount: ^u32) -> sys_windows.HRESULT,
	GetDefine:             proc "stdcall" (this: ^IPdbUtils, uIndex: u32, pResult: ^cstring16) -> sys_windows.HRESULT,
	GetTargetProfile:      proc "stdcall" (this: ^IPdbUtils, pResult: ^cstring16) -> sys_windows.HRESULT,
	GetEntryPoint:         proc "stdcall" (this: ^IPdbUtils, pResult: ^cstring16) -> sys_windows.HRESULT,
	GetMainFileName:       proc "stdcall" (this: ^IPdbUtils, pResult: ^cstring16) -> sys_windows.HRESULT,
	GetHash:               proc "stdcall" (this: ^IPdbUtils, ppResult: ^^IBlob) -> sys_windows.HRESULT,
	GetName:               proc "stdcall" (this: ^IPdbUtils, pResult: ^cstring16) -> sys_windows.HRESULT,
	IsFullPDB:             proc "stdcall" (this: ^IPdbUtils) -> sys_windows.BOOL,
	GetFullPDB:            proc "stdcall" (this: ^IPdbUtils, ppFullPDB: ^^IBlob) -> sys_windows.HRESULT,
	GetVersionInfo:        proc "stdcall" (this: ^IPdbUtils, ppVersionInfo: ^^IVersionInfo) -> sys_windows.HRESULT,
	SetCompiler:           proc "stdcall" (this: ^IPdbUtils, pCompiler: ^ICompiler3) -> sys_windows.HRESULT,
	CompileForFullPDB:     proc "stdcall" (this: ^IPdbUtils, ppResult: ^^IResult) -> sys_windows.HRESULT,
	OverrideArgs:          proc "stdcall" (this: ^IPdbUtils, pArgPairs: ^ArgPair, uNumArgPairs: u32) -> sys_windows.HRESULT,
	OverrideRootSignature: proc "stdcall" (this: ^IPdbUtils, pRootSignature: cstring16) -> sys_windows.HRESULT,
}
```

### [IResult ¶](#IResult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L310)

```
IResult :: struct #raw_union {
	idxcoperationresult: IOperationResult,
	using idxcresult_vtable: ^IResult_VTable,
}
```

### [IResult\_VTable ¶](#IResult_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L314)

```
IResult_VTable :: struct {
	using idxcoperationresult_vtable: IOperationResult_VTable,
	HasOutput:                  proc "stdcall" (this: ^IResult, dxcOutKind: DXC_OUT_KIND) -> sys_windows.BOOL,
	GetOutput:                  proc "stdcall" (this: ^IResult, dxcOutKind: DXC_OUT_KIND, iid: ^sys_windows.GUID, ppvObject: rawptr, ppOutputName: ^^IBlobUtf16) -> sys_windows.HRESULT,
	GetNumOutputs:              proc "stdcall" (this: ^IResult) -> u32,
	GetOutputByIndex:           proc "stdcall" (this: ^IResult, Index: u32) -> DXC_OUT_KIND,
	PrimaryOutput:              proc "stdcall" (this: ^IResult) -> DXC_OUT_KIND,
}
```

### [ISequentialStream ¶](#ISequentialStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L36)

```
ISequentialStream :: struct #raw_union {
	iunknown:                 sys_windows.IUnknown,
	using isequentialstream_vtable: ^ISequentialStream_VTable,
}
```

### [ISequentialStream\_VTable ¶](#ISequentialStream_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L40)

```
ISequentialStream_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Read:            proc "stdcall" (this: ^ISequentialStream, pv: rawptr, cb: u32, pcbRead: ^u32) -> sys_windows.HRESULT,
	Write:           proc "stdcall" (this: ^ISequentialStream, pv: rawptr, cb: u32, pcbWritten: ^u32) -> sys_windows.HRESULT,
}
```

### [IStream ¶](#IStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L60)

```
IStream :: struct #raw_union {
	isequentialstream: ISequentialStream,
	using istream_vtable: ^IStream_VTable,
}
```

### [IStream\_VTable ¶](#IStream_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L64)

```
IStream_VTable :: struct {
	using isequentialstream_vtable: ISequentialStream_VTable,
	Seek:                     proc "stdcall" (this: ^IStream, dlibMove: i64, dwOrigin: u32, plibNewPosition: ^u64) -> sys_windows.HRESULT,
	SetSize:                  proc "stdcall" (this: ^IStream, libNewSize: u64) -> sys_windows.HRESULT,
	CopyTo:                   proc "stdcall" (this: ^IStream, pstm: ^IStream, cb: u64, pcbRead: ^u64, pcbWritten: ^u64) -> sys_windows.HRESULT,
	Commit:                   proc "stdcall" (this: ^IStream, grfCommitFlags: u32) -> sys_windows.HRESULT,
	Revert:                   proc "stdcall" (this: ^IStream) -> sys_windows.HRESULT,
	LockRegion:               proc "stdcall" (this: ^IStream, libOffset: u64, cb: u64, dwLockType: u32) -> sys_windows.HRESULT,
	UnlockRegion:             proc "stdcall" (this: ^IStream, libOffset: u64, cb: u64, dwLockType: u32) -> sys_windows.HRESULT,
	Stat:                     proc "stdcall" (this: ^IStream, pstatstg: ^STATSTG, grfStatFlag: u32) -> sys_windows.HRESULT,
	Clone:                    proc "stdcall" (this: ^IStream, ppstm: ^^IStream) -> sys_windows.HRESULT,
}
```

### [IUnknown ¶](#IUnknown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L12)

```
IUnknown :: sys_windows.IUnknown
```

### [IUnknown\_VTable ¶](#IUnknown_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L13)

```
IUnknown_VTable :: sys_windows.IUnknown_VTable
```

### [IUtils ¶](#IUtils) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L273)

```
IUtils :: struct #raw_union {
	iunknown:         sys_windows.IUnknown,
	using idxcutils_vtable: ^IUtils_VTable,
}
```

### [IUtils\_VTable ¶](#IUtils_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L277)

```
IUtils_VTable :: struct {
	using iunknown_vtable:        sys_windows.IUnknown_VTable,
	CreateBlobFromBlob:           proc "stdcall" (this: ^IUtils, pBlob: ^IBlob, offset: u32, length: u32, ppResult: ^^IBlob) -> sys_windows.HRESULT,
	CreateBlobFromPinned:         proc "stdcall" (this: ^IUtils, pData: rawptr, size: u32, codePage: u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	MoveToBlob:                   proc "stdcall" (this: ^IUtils, pData: rawptr, pIMalloc: ^IMalloc, size: u32, codePage: u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	CreateBlob:                   proc "stdcall" (this: ^IUtils, pData: rawptr, size: u32, codePage: u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	LoadFile:                     proc "stdcall" (this: ^IUtils, pFileName: cstring16, pCodePage: ^u32, pBlobEncoding: ^^IBlobEncoding) -> sys_windows.HRESULT,
	CreateReadOnlyStreamFromBlob: proc "stdcall" (this: ^IUtils, pBlob: ^IBlob, ppStream: ^^IStream) -> sys_windows.HRESULT,
	CreateDefaultIncludeHandler:  proc "stdcall" (this: ^IUtils, ppResult: ^^IIncludeHandler) -> sys_windows.HRESULT,
	GetBlobAsUtf8:                proc "stdcall" (this: ^IUtils, pBlob: ^IBlob, pBlobEncoding: ^^IBlobUtf8) -> sys_windows.HRESULT,
	GetBlobAsUtf16:               proc "stdcall" (this: ^IUtils, pBlob: ^IBlob, pBlobEncoding: ^^IBlobUtf16) -> sys_windows.HRESULT,
	GetDxilContainerPart:         proc "stdcall" (this: ^IUtils, pShader: ^Buffer, Part: u32, ppPartData: rawptr, pPartSizeInBytes: ^u32) -> sys_windows.HRESULT,
	CreateReflection:             proc "stdcall" (this: ^IUtils, pData: ^Buffer, iid: ^sys_windows.GUID, ppvReflection: rawptr) -> sys_windows.HRESULT,
	BuildArguments:               proc "stdcall" (this: ^IUtils, pSourceName: cstring16, pEntryPoint: cstring16, pTargetProfile: cstring16, pArguments: [^]cstring16, argCount: u32, pDefines: [^]Define, defineCount: u32, ppArgs: [^]^ICompilerArgs) -> sys_windows.HRESULT,
	GetPDBContents:               proc "stdcall" (this: ^IUtils, pPDBBlob: ^IBlob, ppHash: ^^IBlob, ppContainer: ^^IBlob) -> sys_windows.HRESULT,
}
```

### [IValidator ¶](#IValidator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L349)

```
IValidator :: struct #raw_union {
	iunknown:             sys_windows.IUnknown,
	using idxcvalidator_vtable: ^IValidator_VTable,
}
```

### [IValidator2 ¶](#IValidator2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L360)

```
IValidator2 :: struct #raw_union {
	idxcvalidator:         IValidator,
	using idxcvalidator2_vtable: ^IValidator2_VTable,
}
```

### [IValidator2\_VTable ¶](#IValidator2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L364)

```
IValidator2_VTable :: struct {
	using idxcvalidator_vtable: IValidator_VTable,
	ValidateWithDebug:    proc "stdcall" (this: ^IValidator2, pShader: ^IBlob, Flags: u32, pOptDebugBitcode: ^Buffer, ppResult: ^^IOperationResult) -> sys_windows.HRESULT,
}
```

### [IValidator\_VTable ¶](#IValidator_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L353)

```
IValidator_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Validate:        proc "stdcall" (this: ^IValidator, pShader: ^IBlob, Flags: u32, ppResult: ^^IOperationResult) -> sys_windows.HRESULT,
}
```

### [IVersionInfo ¶](#IVersionInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L446)

```
IVersionInfo :: struct #raw_union {
	iunknown:               sys_windows.IUnknown,
	using idxcversioninfo_vtable: ^IVersionInfo_VTable,
}
```

### [IVersionInfo2 ¶](#IVersionInfo2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L458)

```
IVersionInfo2 :: struct #raw_union {
	idxcversioninfo:         IVersionInfo,
	using idxcversioninfo2_vtable: ^IVersionInfo2_VTable,
}
```

### [IVersionInfo2\_VTable ¶](#IVersionInfo2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L462)

```
IVersionInfo2_VTable :: struct {
	using idxcversioninfo_vtable: IVersionInfo_VTable,
	GetCommitInfo:          proc "stdcall" (this: ^IVersionInfo2, pCommitCount: ^u32, pCommitHash: ^[^]u8) -> sys_windows.HRESULT,
}
```

### [IVersionInfo3 ¶](#IVersionInfo3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L469)

```
IVersionInfo3 :: struct #raw_union {
	iunknown:                sys_windows.IUnknown,
	using idxcversioninfo3_vtable: ^IVersionInfo3_VTable,
}
```

### [IVersionInfo3\_VTable ¶](#IVersionInfo3_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L473)

```
IVersionInfo3_VTable :: struct {
	using iunknown_vtable:  sys_windows.IUnknown_VTable,
	GetCustomVersionString: proc "stdcall" (this: ^IVersionInfo3, pVersionString: ^cstring) -> sys_windows.HRESULT,
}
```

### [IVersionInfo\_VTable ¶](#IVersionInfo_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L450)

```
IVersionInfo_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetVersion:      proc "stdcall" (this: ^IVersionInfo, pMajor: ^u32, pMinor: ^u32) -> sys_windows.HRESULT,
	GetFlags:        proc "stdcall" (this: ^IVersionInfo, pFlags: ^VersionInfoFlags) -> sys_windows.HRESULT,
}
```

### [SIZE\_T ¶](#SIZE_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L7)

```
SIZE_T :: uint
```

### [STATSTG ¶](#STATSTG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L46)

```
STATSTG :: struct {
	pwcsName:          cstring16,
	type:              u32,
	cbSize:            u64,
	mtime:             sys_windows.FILETIME,
	ctime:             sys_windows.FILETIME,
	atime:             sys_windows.FILETIME,
	grfMode:           u32,
	grfLocksSupported: u32,
	clsid:             sys_windows.GUID,
	grfStateBits:      u32,
	reserved:          u32,
}
```

### [ULONG ¶](#ULONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L8)

```
ULONG :: u32
```

##### Related Procedures With Parameters

* [make\_fourcc](/vendor/directx/dxc/#make_fourcc)

### [VersionInfoFlags ¶](#VersionInfoFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L438)

```
VersionInfoFlags :: enum u32 {
	None     = 0, 
	Debug    = 1, 
	Internal = 2, 
}
```

### [pCreateInstance2Proc ¶](#pCreateInstance2Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L17)

```
pCreateInstance2Proc :: proc "c" (pMalloc: ^IMalloc, rclsid: ^sys_windows.GUID, riid: ^sys_windows.GUID, ppv: rawptr) -> sys_windows.HRESULT
```

### [pCreateInstanceProc ¶](#pCreateInstanceProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L16)

```
pCreateInstanceProc :: proc "c" (rclsid: ^sys_windows.GUID, riid: ^sys_windows.GUID, ppv: rawptr) -> sys_windows.HRESULT
```

### [wstring ¶](#wstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcdef_windows.odin#L14)

```
wstring :: cstring16
```

## Constants

### [ARG\_ALL\_RESOURCES\_BOUND ¶](#ARG_ALL_RESOURCES_BOUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L589)

```
ARG_ALL_RESOURCES_BOUND :: "-all_resources_bound"
```

### [ARG\_AVOID\_FLOW\_CONTROL ¶](#ARG_AVOID_FLOW_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L578)

```
ARG_AVOID_FLOW_CONTROL :: "-Gfa"
```

### [ARG\_DEBUG ¶](#ARG_DEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L573)

```
ARG_DEBUG :: "-Zi"
```

### [ARG\_DEBUG\_NAME\_FOR\_BINARY ¶](#ARG_DEBUG_NAME_FOR_BINARY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L591)

```
ARG_DEBUG_NAME_FOR_BINARY :: "-Zsb"
```

### [ARG\_DEBUG\_NAME\_FOR\_SOURCE ¶](#ARG_DEBUG_NAME_FOR_SOURCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L590)

```
ARG_DEBUG_NAME_FOR_SOURCE :: "-Zss"
```

### [ARG\_ENABLE\_BACKWARDS\_COMPATIBILITY ¶](#ARG_ENABLE_BACKWARDS_COMPATIBILITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L581)

```
ARG_ENABLE_BACKWARDS_COMPATIBILITY :: "-Gec"
```

### [ARG\_ENABLE\_STRICTNESS ¶](#ARG_ENABLE_STRICTNESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L580)

```
ARG_ENABLE_STRICTNESS :: "-Ges"
```

### [ARG\_IEEE\_STRICTNESS ¶](#ARG_IEEE_STRICTNESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L582)

```
ARG_IEEE_STRICTNESS :: "-Gis"
```

### [ARG\_OPTIMIZATION\_LEVEL0 ¶](#ARG_OPTIMIZATION_LEVEL0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L583)

```
ARG_OPTIMIZATION_LEVEL0 :: "-O0"
```

### [ARG\_OPTIMIZATION\_LEVEL1 ¶](#ARG_OPTIMIZATION_LEVEL1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L584)

```
ARG_OPTIMIZATION_LEVEL1 :: "-O1"
```

### [ARG\_OPTIMIZATION\_LEVEL2 ¶](#ARG_OPTIMIZATION_LEVEL2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L585)

```
ARG_OPTIMIZATION_LEVEL2 :: "-O2"
```

### [ARG\_OPTIMIZATION\_LEVEL3 ¶](#ARG_OPTIMIZATION_LEVEL3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L586)

```
ARG_OPTIMIZATION_LEVEL3 :: "-O3"
```

### [ARG\_PACK\_MATRIX\_COLUMN\_MAJOR ¶](#ARG_PACK_MATRIX_COLUMN_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L577)

```
ARG_PACK_MATRIX_COLUMN_MAJOR :: "-Zpc"
```

### [ARG\_PACK\_MATRIX\_ROW\_MAJOR ¶](#ARG_PACK_MATRIX_ROW_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L576)

```
ARG_PACK_MATRIX_ROW_MAJOR :: "-Zpr"
```

### [ARG\_PREFER\_FLOW\_CONTROL ¶](#ARG_PREFER_FLOW_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L579)

```
ARG_PREFER_FLOW_CONTROL :: "-Gfp"
```

### [ARG\_RESOURCES\_MAY\_ALIAS ¶](#ARG_RESOURCES_MAY_ALIAS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L588)

```
ARG_RESOURCES_MAY_ALIAS :: "-res_may_alias"
```

### [ARG\_SKIP\_OPTIMIZATIONS ¶](#ARG_SKIP_OPTIMIZATIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L575)

```
ARG_SKIP_OPTIMIZATIONS :: "-Od"
```

### [ARG\_SKIP\_VALIDATION ¶](#ARG_SKIP_VALIDATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L574)

```
ARG_SKIP_VALIDATION :: "-Vd"
```

### [ARG\_WARNINGS\_ARE\_ERRORS ¶](#ARG_WARNINGS_ARE_ERRORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L587)

```
ARG_WARNINGS_ARE_ERRORS :: "-WX"
```

### [Assembler\_CLSID\_STRING ¶](#Assembler_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L539)

```
Assembler_CLSID_STRING :: "D728DB68-F903-4F80-94CD-DCCF76EC7151"
```

### [CP\_ACP ¶](#CP_ACP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L556)

```
CP_ACP :: 0
```

### [CP\_UTF16 ¶](#CP_UTF16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L555)

```
CP_UTF16 :: 1200
```

### [CP\_UTF8 ¶](#CP_UTF8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L554)

```
CP_UTF8 :: 65001
```

### [CompilerArgs\_CLSID\_STRING ¶](#CompilerArgs_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L527)

```
CompilerArgs_CLSID_STRING :: "3E56AE82-224D-470F-A1A1-FE3016EE9F9D"
```

### [Compiler\_CLSID\_STRING ¶](#Compiler_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L518)

```
Compiler_CLSID_STRING :: "73E22D93-E6CE-47F3-B5BF-F0664F39C1B0"
```

### [ContainerBuilder\_CLSID\_STRING ¶](#ContainerBuilder_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L548)

```
ContainerBuilder_CLSID_STRING :: "94134294-411f-4574-b4d0-8741e25240d2"
```

### [ContainerReflection\_CLSID\_STRING ¶](#ContainerReflection_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L542)

```
ContainerReflection_CLSID_STRING :: "b9f54489-55b8-400c-ba3a-1675e4728b91"
```

### [CreateInstance2\_ProcName ¶](#CreateInstance2_ProcName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L20)

```
CreateInstance2_ProcName :: "DxcCreateInstance2"
```

### [CreateInstance\_ProcName ¶](#CreateInstance_ProcName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L19)

```
CreateInstance_ProcName :: "DxcCreateInstance"
```

### [DiaDataSource\_CLSID\_STRING ¶](#DiaDataSource_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L524)

```
DiaDataSource_CLSID_STRING :: "CD1F6B73-2AB0-484D-8EDC-EBE7A43CA09F"
```

### [EXTRA\_OUTPUT\_NAME\_STDERR ¶](#EXTRA_OUTPUT_NAME_STDERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L594)

```
EXTRA_OUTPUT_NAME_STDERR :: "*stderr*"
```

### [EXTRA\_OUTPUT\_NAME\_STDOUT ¶](#EXTRA_OUTPUT_NAME_STDOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L593)

```
EXTRA_OUTPUT_NAME_STDOUT :: "*stdout*"
```

### [IAssembler\_UUID\_STRING ¶](#IAssembler_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L383)

```
IAssembler_UUID_STRING :: "091F7A26-1C1F-4948-904B-E6E3A8A771D5"
```

### [IBlobEncoding\_UUID\_STRRING ¶](#IBlobEncoding_UUID_STRRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L89)

```
IBlobEncoding_UUID_STRRING :: "7241D424-2646-4191-97C0-98E96E42FC68"
```

### [IBlobUtf16\_UUID\_STRING ¶](#IBlobUtf16_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L100)

```
IBlobUtf16_UUID_STRING :: "A3F84EAB-0FAA-497E-A39C-EE6ED60B2D84"
```

### [IBlobUtf8\_UUID\_STRING ¶](#IBlobUtf8_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L112)

```
IBlobUtf8_UUID_STRING :: "3DA636C9-BA71-4024-A301-30CBF125305B"
```

### [IBlob\_UUID\_STRING ¶](#IBlob_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L77)

```
IBlob_UUID_STRING :: "8BA5FB08-5195-40E2-AC58-0D989C3A0102"
```

### [ICompiler2\_UUID\_STRING ¶](#ICompiler2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L221)

```
ICompiler2_UUID_STRING :: "A005A9D9-B8BB-4594-B5C9-0E633BEC4D37"
```

### [ICompiler3\_UUID\_STRING ¶](#ICompiler3_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L335)

```
ICompiler3_UUID_STRING :: "228B4687-5A6A-4730-900C-9702B2203F54"
```

### [ICompilerArgs\_UUID\_STRING ¶](#ICompilerArgs_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L140)

```
ICompilerArgs_UUID_STRING :: "73EFFE2A-70DC-45F8-9690-EFF64C02429D"
```

### [ICompiler\_UUID\_STRING ¶](#ICompiler_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L188)

```
ICompiler_UUID_STRING :: "8C210BF3-011F-4422-8D70-6F9ACB8DB617"
```

### [IContainerBuilder\_UUID\_STRING ¶](#IContainerBuilder_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L369)

```
IContainerBuilder_UUID_STRING :: "334B1F50-2292-4B35-99A1-25588D8C17FE"
```

### [IContainerReflection\_UUID\_STRING ¶](#IContainerReflection_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L394)

```
IContainerReflection_UUID_STRING :: "D2C21B26-8350-4BDC-976A-331CE6F4C54C"
```

### [IExtraOutputs\_UUID\_STRING ¶](#IExtraOutputs_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L323)

```
IExtraOutputs_UUID_STRING :: "319B37A2-A5C2-494A-A5DE-4801B2FAF989"
```

### [IIncludeHandler\_UUID\_STRING ¶](#IIncludeHandler_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L124)

```
IIncludeHandler_UUID_STRING :: "7F61FC7D-950D-467F-B3E3-3C02FB49187C"
```

### [ILibrary\_UUID\_STRING ¶](#ILibrary_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L155)

```
ILibrary_UUID_STRING :: "E5204DC7-D18C-4C3C-BDFB-851673980FE7"
```

### [ILinker\_UUID\_STRING ¶](#ILinker_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L245)

```
ILinker_UUID_STRING :: "F1B5BE2A-62DD-4327-A1C2-42AC1E1E78E6"
```

### [IOperationResult\_UUID\_STRING ¶](#IOperationResult_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L175)

```
IOperationResult_UUID_STRING :: "CEDB484A-D4E9-445A-B991-CA21CA157DC2"
```

### [IOptimizerPass\_UUID\_STRING ¶](#IOptimizerPass_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L410)

```
IOptimizerPass_UUID_STRING :: "AE2CD79F-CC22-453F-9B6B-B124E7A5204C"
```

### [IOptimizer\_UUID\_STRING ¶](#IOptimizer_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L425)

```
IOptimizer_UUID_STRING :: "25740E2E-9CBA-401B-9119-4FB42F39F270"
```

### [IPdbUtils\_UUID\_STRING ¶](#IPdbUtils_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L483)

```
IPdbUtils_UUID_STRING :: "E6C9647E-9D6A-4C3B-B94C-524B5A6C343D"
```

### [IResult\_UUID\_STRING ¶](#IResult_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L308)

```
IResult_UUID_STRING :: "58346CDA-DDE7-4497-9461-6F87AF5E0659"
```

### [IUtils\_UUID\_STRING ¶](#IUtils_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L271)

```
IUtils_UUID_STRING :: "4605C4CB-2019-492A-ADA4-65F20BB7D67F"
```

### [IValidator2\_UUID\_STRING ¶](#IValidator2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L358)

```
IValidator2_UUID_STRING :: "458E1FD1-B1B2-4750-A6E1-9C10F03BED92"
```

### [IValidator\_UUID\_STRING ¶](#IValidator_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L347)

```
IValidator_UUID_STRING :: "A6E82BD2-1FD7-4826-9811-2857E797F49A"
```

### [IVersionInfo2\_UUID\_STRING ¶](#IVersionInfo2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L456)

```
IVersionInfo2_UUID_STRING :: "FB6904C4-42F0-4B62-9C46-983AF7DA7C83"
```

### [IVersionInfo3\_UUID\_STRING ¶](#IVersionInfo3_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L467)

```
IVersionInfo3_UUID_STRING :: "5E13E843-9D25-473C-9AD2-03B2D0B44B1E"
```

### [IVersionInfo\_UUID\_STRING ¶](#IVersionInfo_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L444)

```
IVersionInfo_UUID_STRING :: "B04F5B50-2059-4F12-A8FF-A1E0CDE1CC7E"
```

### [Library\_CLSID\_STRING ¶](#Library_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L530)

```
Library_CLSID_STRING :: "6245D6AF-66E0-48FD-80B4-4D271796748C"
```

### [Linker\_CLSID\_STRING ¶](#Linker_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L521)

```
Linker_CLSID_STRING :: "EF6A8087-B0EA-4D56-9E45-D07E1A8B7806"
```

### [Optimizer\_CLSID\_STRING ¶](#Optimizer_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L545)

```
Optimizer_CLSID_STRING :: "AE2CD79F-CC22-453F-9B6B-B124E7A5204C"
```

### [PART\_DXIL ¶](#PART_DXIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L566)

```
PART_DXIL :: u32('D') | (u32('X') << 8) | (u32('I') << 16) | (u32('L') << 24)
```

### [PART\_INPUT\_SIGNATURE ¶](#PART_INPUT_SIGNATURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L569)

```
PART_INPUT_SIGNATURE :: u32('I') | (u32('S') << 8) | (u32('G') << 16) | (u32('1') << 24)
```

### [PART\_OUTPUT\_SIGNATURE ¶](#PART_OUTPUT_SIGNATURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L570)

```
PART_OUTPUT_SIGNATURE :: u32('O') | (u32('S') << 8) | (u32('G') << 16) | (u32('1') << 24)
```

### [PART\_PATCH\_CONSTANT\_SIGNATURE ¶](#PART_PATCH_CONSTANT_SIGNATURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L571)

```
PART_PATCH_CONSTANT_SIGNATURE :: u32('P') | (u32('S') << 8) | (u32('G') << 16) | (u32('1') << 24)
```

### [PART\_PDB ¶](#PART_PDB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L562)

```
PART_PDB :: u32('I') | (u32('L') << 8) | (u32('D') << 16) | (u32('B') << 24)
```

### [PART\_PDB\_NAME ¶](#PART_PDB_NAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L563)

```
PART_PDB_NAME :: u32('I') | (u32('L') << 8) | (u32('D') << 16) | (u32('N') << 24)
```

### [PART\_PRIVATE\_DATA ¶](#PART_PRIVATE_DATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L564)

```
PART_PRIVATE_DATA :: u32('P') | (u32('R') << 8) | (u32('I') << 16) | (u32('V') << 24)
```

### [PART\_REFLECTION\_DATA ¶](#PART_REFLECTION_DATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L567)

```
PART_REFLECTION_DATA :: u32('S') | (u32('T') << 8) | (u32('A') << 16) | (u32('T') << 24)
```

### [PART\_ROOT\_SIGNATURE ¶](#PART_ROOT_SIGNATURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L565)

```
PART_ROOT_SIGNATURE :: u32('R') | (u32('T') << 8) | (u32('S') << 16) | (u32('0') << 24)
```

### [PART\_SHADER\_HASH ¶](#PART_SHADER_HASH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L568)

```
PART_SHADER_HASH :: u32('H') | (u32('A') << 8) | (u32('S') << 16) | (u32('H') << 24)
```

### [PdbUtils\_CLSID\_STRING ¶](#PdbUtils_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L551)

```
PdbUtils_CLSID_STRING :: "54621dfb-f2ce-457e-ae8c-ec355faeec7c"
```

### [Utils\_CLSID\_STRING ¶](#Utils_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L533)

```
Utils_CLSID_STRING :: Library_CLSID_STRING
```

### [Validator\_CLSID\_STRING ¶](#Validator_CLSID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L536)

```
Validator_CLSID_STRING :: "8CA3E215-F728-4CF3-8CDD-88AF917587A1"
```

## Variables

### [Assembler\_CLSID ¶](#Assembler_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L540)

```
Assembler_CLSID: ^sys_windows.GUID = …
```

### [CompilerArgs\_CLSID ¶](#CompilerArgs_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L528)

```
CompilerArgs_CLSID: ^sys_windows.GUID = …
```

### [Compiler\_CLSID ¶](#Compiler_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L519)

```
Compiler_CLSID: ^sys_windows.GUID = …
```

### [ContainerBuilder\_CLSID ¶](#ContainerBuilder_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L549)

```
ContainerBuilder_CLSID: ^sys_windows.GUID = …
```

### [ContainerReflection\_CLSID ¶](#ContainerReflection_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L543)

```
ContainerReflection_CLSID: ^sys_windows.GUID = …
```

### [DiaDataSource\_CLSID ¶](#DiaDataSource_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L525)

```
DiaDataSource_CLSID: ^sys_windows.GUID = …
```

### [IAssembler\_UUID ¶](#IAssembler_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L384)

```
IAssembler_UUID: ^sys_windows.GUID = …
```

### [IBlobEncoding\_UUID ¶](#IBlobEncoding_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L90)

```
IBlobEncoding_UUID: ^sys_windows.GUID = …
```

### [IBlobUtf16\_UUID ¶](#IBlobUtf16_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L101)

```
IBlobUtf16_UUID: ^sys_windows.GUID = …
```

### [IBlobUtf8\_UUID ¶](#IBlobUtf8_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L113)

```
IBlobUtf8_UUID: ^sys_windows.GUID = …
```

### [IBlob\_UUID ¶](#IBlob_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L78)

```
IBlob_UUID: ^sys_windows.GUID = …
```

### [ICompiler2\_UUID ¶](#ICompiler2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L222)

```
ICompiler2_UUID: ^sys_windows.GUID = …
```

### [ICompiler3\_UUID ¶](#ICompiler3_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L336)

```
ICompiler3_UUID: ^sys_windows.GUID = …
```

### [ICompilerArgs\_UUID ¶](#ICompilerArgs_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L141)

```
ICompilerArgs_UUID: ^sys_windows.GUID = …
```

### [ICompiler\_UUID ¶](#ICompiler_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L189)

```
ICompiler_UUID: ^sys_windows.GUID = …
```

### [IContainerBuilder\_UUID ¶](#IContainerBuilder_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L370)

```
IContainerBuilder_UUID: ^sys_windows.GUID = …
```

### [IContainerReflection\_UUID ¶](#IContainerReflection_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L395)

```
IContainerReflection_UUID: ^sys_windows.GUID = …
```

### [IExtraOutputs\_UUID ¶](#IExtraOutputs_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L324)

```
IExtraOutputs_UUID: ^sys_windows.GUID = …
```

### [IIncludeHandler\_UUID ¶](#IIncludeHandler_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L125)

```
IIncludeHandler_UUID: ^sys_windows.GUID = …
```

### [ILibrary\_UUID ¶](#ILibrary_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L156)

```
ILibrary_UUID: ^sys_windows.GUID = …
```

### [ILinker\_UUID ¶](#ILinker_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L246)

```
ILinker_UUID: ^sys_windows.GUID = …
```

### [IOperationResult\_UUID ¶](#IOperationResult_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L176)

```
IOperationResult_UUID: ^sys_windows.GUID = …
```

### [IOptimizerPass\_UUID ¶](#IOptimizerPass_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L411)

```
IOptimizerPass_UUID: ^sys_windows.GUID = …
```

### [IOptimizer\_UUID ¶](#IOptimizer_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L426)

```
IOptimizer_UUID: ^sys_windows.GUID = …
```

### [IPdbUtils\_UUID ¶](#IPdbUtils_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L484)

```
IPdbUtils_UUID: ^sys_windows.GUID = …
```

### [IResult\_UUID ¶](#IResult_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L309)

```
IResult_UUID: ^sys_windows.GUID = …
```

### [IUtils\_UUID ¶](#IUtils_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L272)

```
IUtils_UUID: ^sys_windows.GUID = …
```

### [IValidator2\_UUID ¶](#IValidator2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L359)

```
IValidator2_UUID: ^sys_windows.GUID = …
```

### [IValidator\_UUID ¶](#IValidator_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L348)

```
IValidator_UUID: ^sys_windows.GUID = …
```

### [IVersionInfo2\_UUID ¶](#IVersionInfo2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L457)

```
IVersionInfo2_UUID: ^sys_windows.GUID = …
```

### [IVersionInfo3\_UUID ¶](#IVersionInfo3_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L468)

```
IVersionInfo3_UUID: ^sys_windows.GUID = …
```

### [IVersionInfo\_UUID ¶](#IVersionInfo_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L445)

```
IVersionInfo_UUID: ^sys_windows.GUID = …
```

### [Library\_CLSID ¶](#Library_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L531)

```
Library_CLSID: ^sys_windows.GUID = …
```

### [Linker\_CLSID ¶](#Linker_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L522)

```
Linker_CLSID: ^sys_windows.GUID = …
```

### [Optimizer\_CLSID ¶](#Optimizer_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L546)

```
Optimizer_CLSID: ^sys_windows.GUID = …
```

### [PdbUtils\_CLSID ¶](#PdbUtils_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L552)

```
PdbUtils_CLSID: ^sys_windows.GUID = …
```

### [Utils\_CLSID ¶](#Utils_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L534)

```
Utils_CLSID: ^sys_windows.GUID = …
```

### [Validator\_CLSID ¶](#Validator_CLSID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L537)

```
Validator_CLSID: ^sys_windows.GUID = …
```

## Procedures

### [CreateInstance ¶](#CreateInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L12)

```
CreateInstance :: proc "c" (rclsid: ^sys_windows.GUID, riid: ^sys_windows.GUID, ppv: rawptr) -> sys_windows.HRESULT ---
```

### [CreateInstance2 ¶](#CreateInstance2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L13)

```
CreateInstance2 :: proc "c" (pMalloc: ^IMalloc, rclsid: ^sys_windows.GUID, riid: ^sys_windows.GUID, ppv: rawptr) -> sys_windows.HRESULT ---
```

### [make\_fourcc ¶](#make_fourcc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin#L558)

```
make_fourcc :: proc "contextless" (ch0, ch1, ch2, ch3: u32) -> u32 {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [dxcapi.odin](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxc/dxcapi.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.903748400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [ArgPair](#ArgPair)
    + [BOOL](#BOOL)
    + [BSTR](#BSTR)
    + [Buffer](#Buffer)
    + [CLSID](#CLSID)
    + [DXC\_OUT\_KIND](#DXC_OUT_KIND)
    + [Define](#Define)
    + [FILETIME](#FILETIME)
    + [HRESULT](#HRESULT)
    + [IAssembler](#IAssembler)
    + [IAssembler\_VTable](#IAssembler_VTable)
    + [IBlob](#IBlob)
    + [IBlobEncoding](#IBlobEncoding)
    + [IBlobEncoding\_VTable](#IBlobEncoding_VTable)
    + [IBlobUtf16](#IBlobUtf16)
    + [IBlobUtf16\_VTable](#IBlobUtf16_VTable)
    + [IBlobUtf8](#IBlobUtf8)
    + [IBlobUtf8\_VTable](#IBlobUtf8_VTable)
    + [IBlob\_VTable](#IBlob_VTable)
    + [ICompiler](#ICompiler)
    + [ICompiler2](#ICompiler2)
    + [ICompiler2\_VTable](#ICompiler2_VTable)
    + [ICompiler3](#ICompiler3)
    + [ICompiler3\_VTable](#ICompiler3_VTable)
    + [ICompilerArgs](#ICompilerArgs)
    + [ICompilerArgs\_VTable](#ICompilerArgs_VTable)
    + [ICompiler\_VTable](#ICompiler_VTable)
    + [IContainerBuilder](#IContainerBuilder)
    + [IContainerBuilder\_VTable](#IContainerBuilder_VTable)
    + [IContainerReflection](#IContainerReflection)
    + [IContainerReflection\_VTable](#IContainerReflection_VTable)
    + [IExtraOutputs](#IExtraOutputs)
    + [IExtraOutputs\_VTable](#IExtraOutputs_VTable)
    + [IID](#IID)
    + [IIncludeHandler](#IIncludeHandler)
    + [IIncludeHandler\_VTable](#IIncludeHandler_VTable)
    + [ILibrary](#ILibrary)
    + [ILibrary\_VTable](#ILibrary_VTable)
    + [ILinker](#ILinker)
    + [ILinker\_VTable](#ILinker_VTable)
    + [IMalloc](#IMalloc)
    + [IMalloc\_VTable](#IMalloc_VTable)
    + [IOperationResult](#IOperationResult)
    + [IOperationResult\_VTable](#IOperationResult_VTable)
    + [IOptimizer](#IOptimizer)
    + [IOptimizerPass](#IOptimizerPass)
    + [IOptimizerPass\_VTable](#IOptimizerPass_VTable)
    + [IOptimizer\_VTable](#IOptimizer_VTable)
    + [IPdbUtils](#IPdbUtils)
    + [IPdbUtils\_VTable](#IPdbUtils_VTable)
    + [IResult](#IResult)
    + [IResult\_VTable](#IResult_VTable)
    + [ISequentialStream](#ISequentialStream)
    + [ISequentialStream\_VTable](#ISequentialStream_VTable)
    + [IStream](#IStream)
    + [IStream\_VTable](#IStream_VTable)
    + [IUnknown](#IUnknown)
    + [IUnknown\_VTable](#IUnknown_VTable)
    + [IUtils](#IUtils)
    + [IUtils\_VTable](#IUtils_VTable)
    + [IValidator](#IValidator)
    + [IValidator2](#IValidator2)
    + [IValidator2\_VTable](#IValidator2_VTable)
    + [IValidator\_VTable](#IValidator_VTable)
    + [IVersionInfo](#IVersionInfo)
    + [IVersionInfo2](#IVersionInfo2)
    + [IVersionInfo2\_VTable](#IVersionInfo2_VTable)
    + [IVersionInfo3](#IVersionInfo3)
    + [IVersionInfo3\_VTable](#IVersionInfo3_VTable)
    + [IVersionInfo\_VTable](#IVersionInfo_VTable)
    + [SIZE\_T](#SIZE_T)
    + [STATSTG](#STATSTG)
    + [ULONG](#ULONG)
    + [VersionInfoFlags](#VersionInfoFlags)
    + [pCreateInstance2Proc](#pCreateInstance2Proc)
    + [pCreateInstanceProc](#pCreateInstanceProc)
    + [wstring](#wstring)
  * [Constants](#pkg-Constants)
    + [ARG\_ALL\_RESOURCES\_BOUND](#ARG_ALL_RESOURCES_BOUND)
    + [ARG\_AVOID\_FLOW\_CONTROL](#ARG_AVOID_FLOW_CONTROL)
    + [ARG\_DEBUG](#ARG_DEBUG)
    + [ARG\_DEBUG\_NAME\_FOR\_BINARY](#ARG_DEBUG_NAME_FOR_BINARY)
    + [ARG\_DEBUG\_NAME\_FOR\_SOURCE](#ARG_DEBUG_NAME_FOR_SOURCE)
    + [ARG\_ENABLE\_BACKWARDS\_COMPATIBILITY](#ARG_ENABLE_BACKWARDS_COMPATIBILITY)
    + [ARG\_ENABLE\_STRICTNESS](#ARG_ENABLE_STRICTNESS)
    + [ARG\_IEEE\_STRICTNESS](#ARG_IEEE_STRICTNESS)
    + [ARG\_OPTIMIZATION\_LEVEL0](#ARG_OPTIMIZATION_LEVEL0)
    + [ARG\_OPTIMIZATION\_LEVEL1](#ARG_OPTIMIZATION_LEVEL1)
    + [ARG\_OPTIMIZATION\_LEVEL2](#ARG_OPTIMIZATION_LEVEL2)
    + [ARG\_OPTIMIZATION\_LEVEL3](#ARG_OPTIMIZATION_LEVEL3)
    + [ARG\_PACK\_MATRIX\_COLUMN\_MAJOR](#ARG_PACK_MATRIX_COLUMN_MAJOR)
    + [ARG\_PACK\_MATRIX\_ROW\_MAJOR](#ARG_PACK_MATRIX_ROW_MAJOR)
    + [ARG\_PREFER\_FLOW\_CONTROL](#ARG_PREFER_FLOW_CONTROL)
    + [ARG\_RESOURCES\_MAY\_ALIAS](#ARG_RESOURCES_MAY_ALIAS)
    + [ARG\_SKIP\_OPTIMIZATIONS](#ARG_SKIP_OPTIMIZATIONS)
    + [ARG\_SKIP\_VALIDATION](#ARG_SKIP_VALIDATION)
    + [ARG\_WARNINGS\_ARE\_ERRORS](#ARG_WARNINGS_ARE_ERRORS)
    + [Assembler\_CLSID\_STRING](#Assembler_CLSID_STRING)
    + [CP\_ACP](#CP_ACP)
    + [CP\_UTF16](#CP_UTF16)
    + [CP\_UTF8](#CP_UTF8)
    + [CompilerArgs\_CLSID\_STRING](#CompilerArgs_CLSID_STRING)
    + [Compiler\_CLSID\_STRING](#Compiler_CLSID_STRING)
    + [ContainerBuilder\_CLSID\_STRING](#ContainerBuilder_CLSID_STRING)
    + [ContainerReflection\_CLSID\_STRING](#ContainerReflection_CLSID_STRING)
    + [CreateInstance2\_ProcName](#CreateInstance2_ProcName)
    + [CreateInstance\_ProcName](#CreateInstance_ProcName)
    + [DiaDataSource\_CLSID\_STRING](#DiaDataSource_CLSID_STRING)
    + [EXTRA\_OUTPUT\_NAME\_STDERR](#EXTRA_OUTPUT_NAME_STDERR)
    + [EXTRA\_OUTPUT\_NAME\_STDOUT](#EXTRA_OUTPUT_NAME_STDOUT)
    + [IAssembler\_UUID\_STRING](#IAssembler_UUID_STRING)
    + [IBlobEncoding\_UUID\_STRRING](#IBlobEncoding_UUID_STRRING)
    + [IBlobUtf16\_UUID\_STRING](#IBlobUtf16_UUID_STRING)
    + [IBlobUtf8\_UUID\_STRING](#IBlobUtf8_UUID_STRING)
    + [IBlob\_UUID\_STRING](#IBlob_UUID_STRING)
    + [ICompiler2\_UUID\_STRING](#ICompiler2_UUID_STRING)
    + [ICompiler3\_UUID\_STRING](#ICompiler3_UUID_STRING)
    + [ICompilerArgs\_UUID\_STRING](#ICompilerArgs_UUID_STRING)
    + [ICompiler\_UUID\_STRING](#ICompiler_UUID_STRING)
    + [IContainerBuilder\_UUID\_STRING](#IContainerBuilder_UUID_STRING)
    + [IContainerReflection\_UUID\_STRING](#IContainerReflection_UUID_STRING)
    + [IExtraOutputs\_UUID\_STRING](#IExtraOutputs_UUID_STRING)
    + [IIncludeHandler\_UUID\_STRING](#IIncludeHandler_UUID_STRING)
    + [ILibrary\_UUID\_STRING](#ILibrary_UUID_STRING)
    + [ILinker\_UUID\_STRING](#ILinker_UUID_STRING)
    + [IOperationResult\_UUID\_STRING](#IOperationResult_UUID_STRING)
    + [IOptimizerPass\_UUID\_STRING](#IOptimizerPass_UUID_STRING)
    + [IOptimizer\_UUID\_STRING](#IOptimizer_UUID_STRING)
    + [IPdbUtils\_UUID\_STRING](#IPdbUtils_UUID_STRING)
    + [IResult\_UUID\_STRING](#IResult_UUID_STRING)
    + [IUtils\_UUID\_STRING](#IUtils_UUID_STRING)
    + [IValidator2\_UUID\_STRING](#IValidator2_UUID_STRING)
    + [IValidator\_UUID\_STRING](#IValidator_UUID_STRING)
    + [IVersionInfo2\_UUID\_STRING](#IVersionInfo2_UUID_STRING)
    + [IVersionInfo3\_UUID\_STRING](#IVersionInfo3_UUID_STRING)
    + [IVersionInfo\_UUID\_STRING](#IVersionInfo_UUID_STRING)
    + [Library\_CLSID\_STRING](#Library_CLSID_STRING)
    + [Linker\_CLSID\_STRING](#Linker_CLSID_STRING)
    + [Optimizer\_CLSID\_STRING](#Optimizer_CLSID_STRING)
    + [PART\_DXIL](#PART_DXIL)
    + [PART\_INPUT\_SIGNATURE](#PART_INPUT_SIGNATURE)
    + [PART\_OUTPUT\_SIGNATURE](#PART_OUTPUT_SIGNATURE)
    + [PART\_PATCH\_CONSTANT\_SIGNATURE](#PART_PATCH_CONSTANT_SIGNATURE)
    + [PART\_PDB](#PART_PDB)
    + [PART\_PDB\_NAME](#PART_PDB_NAME)
    + [PART\_PRIVATE\_DATA](#PART_PRIVATE_DATA)
    + [PART\_REFLECTION\_DATA](#PART_REFLECTION_DATA)
    + [PART\_ROOT\_SIGNATURE](#PART_ROOT_SIGNATURE)
    + [PART\_SHADER\_HASH](#PART_SHADER_HASH)
    + [PdbUtils\_CLSID\_STRING](#PdbUtils_CLSID_STRING)
    + [Utils\_CLSID\_STRING](#Utils_CLSID_STRING)
    + [Validator\_CLSID\_STRING](#Validator_CLSID_STRING)
  * [Variables](#pkg-Variables)
    + [Assembler\_CLSID](#Assembler_CLSID)
    + [CompilerArgs\_CLSID](#CompilerArgs_CLSID)
    + [Compiler\_CLSID](#Compiler_CLSID)
    + [ContainerBuilder\_CLSID](#ContainerBuilder_CLSID)
    + [ContainerReflection\_CLSID](#ContainerReflection_CLSID)
    + [DiaDataSource\_CLSID](#DiaDataSource_CLSID)
    + [IAssembler\_UUID](#IAssembler_UUID)
    + [IBlobEncoding\_UUID](#IBlobEncoding_UUID)
    + [IBlobUtf16\_UUID](#IBlobUtf16_UUID)
    + [IBlobUtf8\_UUID](#IBlobUtf8_UUID)
    + [IBlob\_UUID](#IBlob_UUID)
    + [ICompiler2\_UUID](#ICompiler2_UUID)
    + [ICompiler3\_UUID](#ICompiler3_UUID)
    + [ICompilerArgs\_UUID](#ICompilerArgs_UUID)
    + [ICompiler\_UUID](#ICompiler_UUID)
    + [IContainerBuilder\_UUID](#IContainerBuilder_UUID)
    + [IContainerReflection\_UUID](#IContainerReflection_UUID)
    + [IExtraOutputs\_UUID](#IExtraOutputs_UUID)
    + [IIncludeHandler\_UUID](#IIncludeHandler_UUID)
    + [ILibrary\_UUID](#ILibrary_UUID)
    + [ILinker\_UUID](#ILinker_UUID)
    + [IOperationResult\_UUID](#IOperationResult_UUID)
    + [IOptimizerPass\_UUID](#IOptimizerPass_UUID)
    + [IOptimizer\_UUID](#IOptimizer_UUID)
    + [IPdbUtils\_UUID](#IPdbUtils_UUID)
    + [IResult\_UUID](#IResult_UUID)
    + [IUtils\_UUID](#IUtils_UUID)
    + [IValidator2\_UUID](#IValidator2_UUID)
    + [IValidator\_UUID](#IValidator_UUID)
    + [IVersionInfo2\_UUID](#IVersionInfo2_UUID)
    + [IVersionInfo3\_UUID](#IVersionInfo3_UUID)
    + [IVersionInfo\_UUID](#IVersionInfo_UUID)
    + [Library\_CLSID](#Library_CLSID)
    + [Linker\_CLSID](#Linker_CLSID)
    + [Optimizer\_CLSID](#Optimizer_CLSID)
    + [PdbUtils\_CLSID](#PdbUtils_CLSID)
    + [Utils\_CLSID](#Utils_CLSID)
    + [Validator\_CLSID](#Validator_CLSID)
  * [Procedures](#pkg-Procedures)
    + [CreateInstance](#CreateInstance)
    + [CreateInstance2](#CreateInstance2)
    + [make\_fourcc](#make_fourcc)
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