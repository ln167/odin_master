package directx/dxgi - pkg.odin-lang.org 






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



Current Package: *[directx\_dxgi](/vendor/directx/dxgi)*

  

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
3. [dxgi](/vendor/directx/dxgi)

# package vendor:directx/dxgi [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [DXGI](https://learn.microsoft.com/en-us/windows/win32/api/dxgi/).

## Index

Types (219)

* [ADAPTER\_DESC](#ADAPTER_DESC)
* [ADAPTER\_DESC1](#ADAPTER_DESC1)
* [ADAPTER\_DESC2](#ADAPTER_DESC2)
* [ADAPTER\_DESC3](#ADAPTER_DESC3)
* [ADAPTER\_FLAG](#ADAPTER_FLAG)
* [ADAPTER\_FLAG3](#ADAPTER_FLAG3)
* [ADAPTER\_FLAGS](#ADAPTER_FLAGS)
* [ADAPTER\_FLAGS3](#ADAPTER_FLAGS3)
* [ALPHA\_MODE](#ALPHA_MODE)
* [BOOL](#BOOL)
* [COLOR\_SPACE\_TYPE](#COLOR_SPACE_TYPE)
* [COMPUTE\_PREEMPTION\_GRANULARITY](#COMPUTE_PREEMPTION_GRANULARITY)
* [CPU\_ACCESS](#CPU_ACCESS)
* [CREATE\_FACTORY](#CREATE_FACTORY)
* [CREATE\_FACTORY\_FLAG](#CREATE_FACTORY_FLAG)
* [D3DCOLORVALUE](#D3DCOLORVALUE)
* [DEBUG\_ID](#DEBUG_ID)
* [DEBUG\_RLO\_FLAGS](#DEBUG_RLO_FLAGS)
* [DECODE\_SWAP\_CHAIN\_DESC](#DECODE_SWAP_CHAIN_DESC)
* [DISPLAY\_COLOR\_SPACE](#DISPLAY_COLOR_SPACE)
* [DWORD](#DWORD)
* [ENUM\_MODE](#ENUM_MODE)
* [ENUM\_MODES](#ENUM_MODES)
* [FEATURE](#FEATURE)
* [FORMAT](#FORMAT)
* [FRAME\_PRESENTATION\_MODE](#FRAME_PRESENTATION_MODE)
* [FRAME\_STATISTICS](#FRAME_STATISTICS)
* [FRAME\_STATISTICS\_MEDIA](#FRAME_STATISTICS_MEDIA)
* [GAMMA\_CONTROL](#GAMMA_CONTROL)
* [GAMMA\_CONTROL\_CAPABILITIES](#GAMMA_CONTROL_CAPABILITIES)
* [GPU\_PREFERENCE](#GPU_PREFERENCE)
* [GRAPHICS\_PREEMPTION\_GRANULARITY](#GRAPHICS_PREEMPTION_GRANULARITY)
* [GUID](#GUID)
* [HANDLE](#HANDLE)
* [HARDWARE\_COMPOSITION\_SUPPORT\_FLAG](#HARDWARE_COMPOSITION_SUPPORT_FLAG)
* [HARDWARE\_COMPOSITION\_SUPPORT\_FLAGS](#HARDWARE_COMPOSITION_SUPPORT_FLAGS)
* [HDC](#HDC)
* [HDR\_METADATA\_HDR10](#HDR_METADATA_HDR10)
* [HDR\_METADATA\_HDR10PLUS](#HDR_METADATA_HDR10PLUS)
* [HDR\_METADATA\_TYPE](#HDR_METADATA_TYPE)
* [HMODULE](#HMODULE)
* [HMONITOR](#HMONITOR)
* [HRESULT](#HRESULT)
* [HWND](#HWND)
* [IAdapter](#IAdapter)
* [IAdapter1](#IAdapter1)
* [IAdapter1\_VTable](#IAdapter1_VTable)
* [IAdapter2](#IAdapter2)
* [IAdapter2\_VTable](#IAdapter2_VTable)
* [IAdapter3](#IAdapter3)
* [IAdapter3\_VTable](#IAdapter3_VTable)
* [IAdapter4](#IAdapter4)
* [IAdapter4\_VTable](#IAdapter4_VTable)
* [IAdapter\_VTable](#IAdapter_VTable)
* [IDebug](#IDebug)
* [IDebug1](#IDebug1)
* [IDebug1\_VTable](#IDebug1_VTable)
* [IDebug\_VTable](#IDebug_VTable)
* [IDecodeSwapChain](#IDecodeSwapChain)
* [IDecodeSwapChain\_VTable](#IDecodeSwapChain_VTable)
* [IDevice](#IDevice)
* [IDevice1](#IDevice1)
* [IDevice1\_VTable](#IDevice1_VTable)
* [IDevice2](#IDevice2)
* [IDevice2\_VTable](#IDevice2_VTable)
* [IDevice3](#IDevice3)
* [IDevice3\_VTable](#IDevice3_VTable)
* [IDevice4](#IDevice4)
* [IDevice4\_VTable](#IDevice4_VTable)
* [IDeviceSubObject](#IDeviceSubObject)
* [IDeviceSubObject\_VTable](#IDeviceSubObject_VTable)
* [IDevice\_VTable](#IDevice_VTable)
* [IDisplayControl](#IDisplayControl)
* [IDisplayControl\_VTable](#IDisplayControl_VTable)
* [IFactory](#IFactory)
* [IFactory1](#IFactory1)
* [IFactory1\_VTable](#IFactory1_VTable)
* [IFactory2](#IFactory2)
* [IFactory2\_VTable](#IFactory2_VTable)
* [IFactory3](#IFactory3)
* [IFactory3\_VTable](#IFactory3_VTable)
* [IFactory4](#IFactory4)
* [IFactory4\_VTable](#IFactory4_VTable)
* [IFactory5](#IFactory5)
* [IFactory5\_VTable](#IFactory5_VTable)
* [IFactory6](#IFactory6)
* [IFactory6\_VTable](#IFactory6_VTable)
* [IFactory7](#IFactory7)
* [IFactory7\_VTable](#IFactory7_VTable)
* [IFactoryMedia](#IFactoryMedia)
* [IFactoryMedia\_VTable](#IFactoryMedia_VTable)
* [IFactory\_VTable](#IFactory_VTable)
* [IID](#IID)
* [IInfoQueue](#IInfoQueue)
* [IInfoQueue\_VTable](#IInfoQueue_VTable)
* [IKeyedMutex](#IKeyedMutex)
* [IKeyedMutex\_VTable](#IKeyedMutex_VTable)
* [INFO\_QUEUE\_FILTER](#INFO_QUEUE_FILTER)
* [INFO\_QUEUE\_FILTER\_DESC](#INFO_QUEUE_FILTER_DESC)
* [INFO\_QUEUE\_MESSAGE](#INFO_QUEUE_MESSAGE)
* [INFO\_QUEUE\_MESSAGE\_CATEGORY](#INFO_QUEUE_MESSAGE_CATEGORY)
* [INFO\_QUEUE\_MESSAGE\_ID](#INFO_QUEUE_MESSAGE_ID)
* [INFO\_QUEUE\_MESSAGE\_SEVERITY](#INFO_QUEUE_MESSAGE_SEVERITY)
* [INT](#INT)
* [IObject](#IObject)
* [IObject\_VTable](#IObject_VTable)
* [IOutput](#IOutput)
* [IOutput1](#IOutput1)
* [IOutput1\_VTable](#IOutput1_VTable)
* [IOutput2](#IOutput2)
* [IOutput2\_VTable](#IOutput2_VTable)
* [IOutput3](#IOutput3)
* [IOutput3\_VTable](#IOutput3_VTable)
* [IOutput4](#IOutput4)
* [IOutput4\_VTable](#IOutput4_VTable)
* [IOutput5](#IOutput5)
* [IOutput5\_VTable](#IOutput5_VTable)
* [IOutput6](#IOutput6)
* [IOutput6\_VTable](#IOutput6_VTable)
* [IOutputDuplication](#IOutputDuplication)
* [IOutputDuplication\_VTable](#IOutputDuplication_VTable)
* [IOutput\_VTable](#IOutput_VTable)
* [IResource](#IResource)
* [IResource1](#IResource1)
* [IResource1\_VTable](#IResource1_VTable)
* [IResource\_VTable](#IResource_VTable)
* [ISurface](#ISurface)
* [ISurface1](#ISurface1)
* [ISurface1\_VTable](#ISurface1_VTable)
* [ISurface2](#ISurface2)
* [ISurface2\_VTable](#ISurface2_VTable)
* [ISurface\_VTable](#ISurface_VTable)
* [ISwapChain](#ISwapChain)
* [ISwapChain1](#ISwapChain1)
* [ISwapChain1\_VTable](#ISwapChain1_VTable)
* [ISwapChain2](#ISwapChain2)
* [ISwapChain2\_VTable](#ISwapChain2_VTable)
* [ISwapChain3](#ISwapChain3)
* [ISwapChain3\_VTable](#ISwapChain3_VTable)
* [ISwapChain4](#ISwapChain4)
* [ISwapChain4\_VTable](#ISwapChain4_VTable)
* [ISwapChainMedia](#ISwapChainMedia)
* [ISwapChainMedia\_VTable](#ISwapChainMedia_VTable)
* [ISwapChain\_VTable](#ISwapChain_VTable)
* [IUnknown](#IUnknown)
* [IUnknown\_VTable](#IUnknown_VTable)
* [JPEG\_AC\_HUFFMAN\_TABLE](#JPEG_AC_HUFFMAN_TABLE)
* [JPEG\_DC\_HUFFMAN\_TABLE](#JPEG_DC_HUFFMAN_TABLE)
* [JPEG\_QUANTIZATION\_TABLE](#JPEG_QUANTIZATION_TABLE)
* [LARGE\_INTEGER](#LARGE_INTEGER)
* [LONG](#LONG)
* [LPCSTR](#LPCSTR)
* [LPUNKNOWN](#LPUNKNOWN)
* [LUID](#LUID)
* [MAP](#MAP)
* [MAPPED\_RECT](#MAPPED_RECT)
* [MAP\_FLAG](#MAP_FLAG)
* [MATRIX\_3X2\_F](#MATRIX_3X2_F)
* [MEMORY\_SEGMENT\_GROUP](#MEMORY_SEGMENT_GROUP)
* [MODE\_DESC](#MODE_DESC)
* [MODE\_DESC1](#MODE_DESC1)
* [MODE\_ROTATION](#MODE_ROTATION)
* [MODE\_SCALING](#MODE_SCALING)
* [MODE\_SCANLINE\_ORDER](#MODE_SCANLINE_ORDER)
* [MULTIPLANE\_OVERLAY\_YCbCr](#MULTIPLANE_OVERLAY_YCbCr)
* [MULTIPLANE\_OVERLAY\_YCbCr\_FLAGS](#MULTIPLANE_OVERLAY_YCbCr_FLAGS)
* [MWA](#MWA)
* [MWA\_FLAG](#MWA_FLAG)
* [OFFER\_RESOURCE\_FLAG](#OFFER_RESOURCE_FLAG)
* [OFFER\_RESOURCE\_FLAGS](#OFFER_RESOURCE_FLAGS)
* [OFFER\_RESOURCE\_PRIORITY](#OFFER_RESOURCE_PRIORITY)
* [OUTDUPL\_DESC](#OUTDUPL_DESC)
* [OUTDUPL\_FLAG](#OUTDUPL_FLAG)
* [OUTDUPL\_FRAME\_INFO](#OUTDUPL_FRAME_INFO)
* [OUTDUPL\_MOVE\_RECT](#OUTDUPL_MOVE_RECT)
* [OUTDUPL\_POINTER\_POSITION](#OUTDUPL_POINTER_POSITION)
* [OUTDUPL\_POINTER\_SHAPE\_INFO](#OUTDUPL_POINTER_SHAPE_INFO)
* [OUTDUPL\_POINTER\_SHAPE\_TYPE](#OUTDUPL_POINTER_SHAPE_TYPE)
* [OUTPUT\_DESC](#OUTPUT_DESC)
* [OUTPUT\_DESC1](#OUTPUT_DESC1)
* [OVERLAY\_COLOR\_SPACE\_SUPPORT](#OVERLAY_COLOR_SPACE_SUPPORT)
* [OVERLAY\_COLOR\_SPACE\_SUPPORT\_FLAG](#OVERLAY_COLOR_SPACE_SUPPORT_FLAG)
* [OVERLAY\_SUPPORT](#OVERLAY_SUPPORT)
* [OVERLAY\_SUPPORT\_FLAG](#OVERLAY_SUPPORT_FLAG)
* [POINT](#POINT)
* [PRESENT](#PRESENT)
* [PRESENT\_FLAG](#PRESENT_FLAG)
* [PRESENT\_PARAMETERS](#PRESENT_PARAMETERS)
* [QUERY\_VIDEO\_MEMORY\_INFO](#QUERY_VIDEO_MEMORY_INFO)
* [RATIONAL](#RATIONAL)
* [RECLAIM\_RESOURCE\_RESULTS](#RECLAIM_RESOURCE_RESULTS)
* [RECT](#RECT)
* [RESIDENCY](#RESIDENCY)
* [RESOURCE\_PRIORITY](#RESOURCE_PRIORITY)
* [RGB](#RGB)
* [RGBA](#RGBA)
* [SAMPLE\_DESC](#SAMPLE_DESC)
* [SCALING](#SCALING)
* [SHARED\_RESOURCE](#SHARED_RESOURCE)
* [SHARED\_RESOURCE\_RW](#SHARED_RESOURCE_RW)
* [SHARED\_RESOURCE\_RW\_FLAG](#SHARED_RESOURCE_RW_FLAG)
* [SIZE](#SIZE)
* [SIZE\_T](#SIZE_T)
* [SURFACE\_DESC](#SURFACE_DESC)
* [SWAP\_CHAIN](#SWAP_CHAIN)
* [SWAP\_CHAIN\_COLOR\_SPACE\_SUPPORT](#SWAP_CHAIN_COLOR_SPACE_SUPPORT)
* [SWAP\_CHAIN\_COLOR\_SPACE\_SUPPORT\_FLAG](#SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG)
* [SWAP\_CHAIN\_DESC](#SWAP_CHAIN_DESC)
* [SWAP\_CHAIN\_DESC1](#SWAP_CHAIN_DESC1)
* [SWAP\_CHAIN\_FLAG](#SWAP_CHAIN_FLAG)
* [SWAP\_CHAIN\_FULLSCREEN\_DESC](#SWAP_CHAIN_FULLSCREEN_DESC)
* [SWAP\_EFFECT](#SWAP_EFFECT)
* [UINT](#UINT)
* [UINT64](#UINT64)
* [ULONG](#ULONG)
* [USAGE](#USAGE)
* [USAGE\_FLAG](#USAGE_FLAG)
* [UUID](#UUID)
* [WCHAR](#WCHAR)

Constants (82)

* [CENTER\_MULTISAMPLE\_QUALITY\_PATTERN](#CENTER_MULTISAMPLE_QUALITY_PATTERN)
* [CREATE\_FACTORY\_DEBUG](#CREATE_FACTORY_DEBUG)
* [ERROR\_ACCESS\_DENIED](#ERROR_ACCESS_DENIED)
* [ERROR\_ACCESS\_LOST](#ERROR_ACCESS_LOST)
* [ERROR\_ALREADY\_EXISTS](#ERROR_ALREADY_EXISTS)
* [ERROR\_CANNOT\_PROTECT\_CONTENT](#ERROR_CANNOT_PROTECT_CONTENT)
* [ERROR\_DEVICE\_HUNG](#ERROR_DEVICE_HUNG)
* [ERROR\_DEVICE\_REMOVED](#ERROR_DEVICE_REMOVED)
* [ERROR\_DEVICE\_RESET](#ERROR_DEVICE_RESET)
* [ERROR\_DRIVER\_INTERNAL\_ERROR](#ERROR_DRIVER_INTERNAL_ERROR)
* [ERROR\_FRAME\_STATISTICS\_DISJOINT](#ERROR_FRAME_STATISTICS_DISJOINT)
* [ERROR\_GRAPHICS\_VIDPN\_SOURCE\_IN\_USE](#ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE)
* [ERROR\_INVALID\_CALL](#ERROR_INVALID_CALL)
* [ERROR\_MORE\_DATA](#ERROR_MORE_DATA)
* [ERROR\_NAME\_ALREADY\_EXISTS](#ERROR_NAME_ALREADY_EXISTS)
* [ERROR\_NONEXCLUSIVE](#ERROR_NONEXCLUSIVE)
* [ERROR\_NOT\_CURRENTLY\_AVAILABLE](#ERROR_NOT_CURRENTLY_AVAILABLE)
* [ERROR\_NOT\_FOUND](#ERROR_NOT_FOUND)
* [ERROR\_REMOTE\_CLIENT\_DISCONNECTED](#ERROR_REMOTE_CLIENT_DISCONNECTED)
* [ERROR\_REMOTE\_OUTOFMEMORY](#ERROR_REMOTE_OUTOFMEMORY)
* [ERROR\_RESTRICT\_TO\_OUTPUT\_STALE](#ERROR_RESTRICT_TO_OUTPUT_STALE)
* [ERROR\_SDK\_COMPONENT\_MISSING](#ERROR_SDK_COMPONENT_MISSING)
* [ERROR\_SESSION\_DISCONNECTED](#ERROR_SESSION_DISCONNECTED)
* [ERROR\_UNSUPPORTED](#ERROR_UNSUPPORTED)
* [ERROR\_WAIT\_TIMEOUT](#ERROR_WAIT_TIMEOUT)
* [ERROR\_WAS\_STILL\_DRAWING](#ERROR_WAS_STILL_DRAWING)
* [FORMAT\_DEFINED](#FORMAT_DEFINED)
* [IAdapter1\_UUID\_STRING](#IAdapter1_UUID_STRING)
* [IAdapter2\_UUID\_STRING](#IAdapter2_UUID_STRING)
* [IAdapter3\_UUID\_STRING](#IAdapter3_UUID_STRING)
* [IAdapter4\_UUID\_STRING](#IAdapter4_UUID_STRING)
* [IAdapter\_UUID\_STRING](#IAdapter_UUID_STRING)
* [IDebug1\_UUID\_STRING](#IDebug1_UUID_STRING)
* [IDebug\_UUID\_STRING](#IDebug_UUID_STRING)
* [IDecodeSwapChain\_UUID\_STRING](#IDecodeSwapChain_UUID_STRING)
* [IDevice1\_UUID\_STRING](#IDevice1_UUID_STRING)
* [IDevice2\_UUID\_STRING](#IDevice2_UUID_STRING)
* [IDevice3\_UUID\_STRING](#IDevice3_UUID_STRING)
* [IDevice4\_UUID\_STRING](#IDevice4_UUID_STRING)
* [IDeviceSubObject\_UUID\_STRING](#IDeviceSubObject_UUID_STRING)
* [IDevice\_UUID\_STRING](#IDevice_UUID_STRING)
* [IDisplayControl\_UUID\_STRING](#IDisplayControl_UUID_STRING)
* [IFactory1\_UUID\_STRING](#IFactory1_UUID_STRING)
* [IFactory2\_UUID\_STRING](#IFactory2_UUID_STRING)
* [IFactory3\_UUID\_STRING](#IFactory3_UUID_STRING)
* [IFactory4\_UUID\_STRING](#IFactory4_UUID_STRING)
* [IFactory5\_UUID\_STRING](#IFactory5_UUID_STRING)
* [IFactory6\_UUID\_STRING](#IFactory6_UUID_STRING)
* [IFactory7\_UUID\_STRING](#IFactory7_UUID_STRING)
* [IFactoryMedia\_UUID\_STRING](#IFactoryMedia_UUID_STRING)
* [IFactory\_UUID\_STRING](#IFactory_UUID_STRING)
* [IInfoQueue\_UUID\_STRING](#IInfoQueue_UUID_STRING)
* [IKeyedMutex\_UUID\_STRING](#IKeyedMutex_UUID_STRING)
* [INFO\_QUEUE\_DEFAULT\_MESSAGE\_COUNT\_LIMIT](#INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT)
* [IObject\_UUID\_STRING](#IObject_UUID_STRING)
* [IOutput1\_UUID\_STRING](#IOutput1_UUID_STRING)
* [IOutput2\_UUID\_STRING](#IOutput2_UUID_STRING)
* [IOutput3\_UUID\_STRING](#IOutput3_UUID_STRING)
* [IOutput4\_UUID\_STRING](#IOutput4_UUID_STRING)
* [IOutput5\_UUID\_STRING](#IOutput5_UUID_STRING)
* [IOutput6\_UUID\_STRING](#IOutput6_UUID_STRING)
* [IOutputDuplication\_UUID\_STRING](#IOutputDuplication_UUID_STRING)
* [IOutput\_UUID\_STRING](#IOutput_UUID_STRING)
* [IResource1\_UUID\_STRING](#IResource1_UUID_STRING)
* [IResource\_UUID\_STRING](#IResource_UUID_STRING)
* [ISurface1\_UUID\_STRING](#ISurface1_UUID_STRING)
* [ISurface2\_UUID\_STRING](#ISurface2_UUID_STRING)
* [ISurface\_UUID\_STRING](#ISurface_UUID_STRING)
* [ISwapChain1\_UUID\_STRING](#ISwapChain1_UUID_STRING)
* [ISwapChain2\_UUID\_STRING](#ISwapChain2_UUID_STRING)
* [ISwapChain3\_UUID\_STRING](#ISwapChain3_UUID_STRING)
* [ISwapChain4\_UUID\_STRING](#ISwapChain4_UUID_STRING)
* [ISwapChainMedia\_UUID\_STRING](#ISwapChainMedia_UUID_STRING)
* [ISwapChain\_UUID\_STRING](#ISwapChain_UUID_STRING)
* [MAX\_SWAP\_CHAIN\_BUFFERS](#MAX_SWAP_CHAIN_BUFFERS)
* [MWA\_VALID](#MWA_VALID)
* [SHARED\_RESOURCE\_READ](#SHARED_RESOURCE_READ)
* [SHARED\_RESOURCE\_WRITE](#SHARED_RESOURCE_WRITE)
* [STANDARD\_MULTISAMPLE\_QUALITY\_PATTERN](#STANDARD_MULTISAMPLE_QUALITY_PATTERN)
* [STATUS\_MODE\_CHANGED](#STATUS_MODE_CHANGED)
* [STATUS\_MODE\_CHANGE\_IN\_PROGRESS](#STATUS_MODE_CHANGE_IN_PROGRESS)
* [STATUS\_OCCLUDED](#STATUS_OCCLUDED)

Variables (50)

* [DEBUG\_ALL](#DEBUG_ALL)
* [DEBUG\_APP](#DEBUG_APP)
* [DEBUG\_DX](#DEBUG_DX)
* [DEBUG\_DXGI](#DEBUG_DXGI)
* [IAdapter1\_UUID](#IAdapter1_UUID)
* [IAdapter2\_UUID](#IAdapter2_UUID)
* [IAdapter3\_UUID](#IAdapter3_UUID)
* [IAdapter4\_UUID](#IAdapter4_UUID)
* [IAdapter\_UUID](#IAdapter_UUID)
* [IDebug1\_UUID](#IDebug1_UUID)
* [IDebug\_UUID](#IDebug_UUID)
* [IDecodeSwapChain\_UUID](#IDecodeSwapChain_UUID)
* [IDevice1\_UUID](#IDevice1_UUID)
* [IDevice2\_UUID](#IDevice2_UUID)
* [IDevice3\_UUID](#IDevice3_UUID)
* [IDevice4\_UUID](#IDevice4_UUID)
* [IDeviceSubObject\_UUID](#IDeviceSubObject_UUID)
* [IDevice\_UUID](#IDevice_UUID)
* [IDisplayControl\_UUID](#IDisplayControl_UUID)
* [IFactory1\_UUID](#IFactory1_UUID)
* [IFactory2\_UUID](#IFactory2_UUID)
* [IFactory3\_UUID](#IFactory3_UUID)
* [IFactory4\_UUID](#IFactory4_UUID)
* [IFactory5\_UUID](#IFactory5_UUID)
* [IFactory6\_UUID](#IFactory6_UUID)
* [IFactory7\_UUID](#IFactory7_UUID)
* [IFactoryMedia\_UUID](#IFactoryMedia_UUID)
* [IFactory\_UUID](#IFactory_UUID)
* [IInfoQueue\_UUID](#IInfoQueue_UUID)
* [IKeyedMutex\_UUID](#IKeyedMutex_UUID)
* [IObject\_UUID](#IObject_UUID)
* [IOutput1\_UUID](#IOutput1_UUID)
* [IOutput2\_UUID](#IOutput2_UUID)
* [IOutput3\_UUID](#IOutput3_UUID)
* [IOutput4\_UUID](#IOutput4_UUID)
* [IOutput5\_UUID](#IOutput5_UUID)
* [IOutput6\_UUID](#IOutput6_UUID)
* [IOutputDuplication\_UUID](#IOutputDuplication_UUID)
* [IOutput\_UUID](#IOutput_UUID)
* [IResource1\_UUID](#IResource1_UUID)
* [IResource\_UUID](#IResource_UUID)
* [ISurface1\_UUID](#ISurface1_UUID)
* [ISurface2\_UUID](#ISurface2_UUID)
* [ISurface\_UUID](#ISurface_UUID)
* [ISwapChain1\_UUID](#ISwapChain1_UUID)
* [ISwapChain2\_UUID](#ISwapChain2_UUID)
* [ISwapChain3\_UUID](#ISwapChain3_UUID)
* [ISwapChain4\_UUID](#ISwapChain4_UUID)
* [ISwapChainMedia\_UUID](#ISwapChainMedia_UUID)
* [ISwapChain\_UUID](#ISwapChain_UUID)

Procedures (5)

* [CreateDXGIFactory](#CreateDXGIFactory)
* [CreateDXGIFactory1](#CreateDXGIFactory1)
* [CreateDXGIFactory2](#CreateDXGIFactory2)
* [DXGIGetDebugInterface1](#DXGIGetDebugInterface1)
* [DeclareAdapterRemovalSupport](#DeclareAdapterRemovalSupport)

Procedure Groups (0)

This section is empty.

## Types

### [ADAPTER\_DESC ¶](#ADAPTER_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L387)

```
ADAPTER_DESC :: struct {
	Description:           [128]u16 `fmt:"s,0"`,
	VendorId:              u32,
	DeviceId:              u32,
	SubSysId:              u32,
	Revision:              u32,
	DedicatedVideoMemory:  uint,
	DedicatedSystemMemory: uint,
	SharedSystemMemory:    uint,
	AdapterLuid:           sys_windows.LUID,
}
```

### [ADAPTER\_DESC1 ¶](#ADAPTER_DESC1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L626)

```
ADAPTER_DESC1 :: struct {
	Description:           [128]u16 `fmt:"s,0"`,
	VendorId:              u32,
	DeviceId:              u32,
	SubSysId:              u32,
	Revision:              u32,
	DedicatedVideoMemory:  uint,
	DedicatedSystemMemory: uint,
	SharedSystemMemory:    uint,
	AdapterLuid:           sys_windows.LUID,
	Flags:                 bit_set[ADAPTER_FLAG; u32],
}
```

### [ADAPTER\_DESC2 ¶](#ADAPTER_DESC2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L902)

```
ADAPTER_DESC2 :: struct {
	Description:                   [128]u16 `fmt:"s,0"`,
	VendorId:                      u32,
	DeviceId:                      u32,
	SubSysId:                      u32,
	Revision:                      u32,
	DedicatedVideoMemory:          uint,
	DedicatedSystemMemory:         uint,
	SharedSystemMemory:            uint,
	AdapterLuid:                   sys_windows.LUID,
	Flags:                         bit_set[ADAPTER_FLAG; u32],
	GraphicsPreemptionGranularity: GRAPHICS_PREEMPTION_GRANULARITY,
	ComputePreemptionGranularity:  COMPUTE_PREEMPTION_GRANULARITY,
}
```

### [ADAPTER\_DESC3 ¶](#ADAPTER_DESC3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1265)

```
ADAPTER_DESC3 :: struct {
	Description:                   [128]u16,
	VendorId:                      u32,
	DeviceId:                      u32,
	SubSysId:                      u32,
	Revision:                      u32,
	DedicatedVideoMemory:          u64,
	DedicatedSystemMemory:         u64,
	SharedSystemMemory:            u64,
	AdapterLuid:                   sys_windows.LUID,
	Flags:                         bit_set[ADAPTER_FLAG3; u32],
	GraphicsPreemptionGranularity: GRAPHICS_PREEMPTION_GRANULARITY,
	ComputePreemptionGranularity:  COMPUTE_PREEMPTION_GRANULARITY,
}
```

### [ADAPTER\_FLAG ¶](#ADAPTER_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L621)

```
ADAPTER_FLAG :: enum u32 {
	REMOTE   = 0, 
	SOFTWARE = 1, 
}
```

### [ADAPTER\_FLAG3 ¶](#ADAPTER_FLAG3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1256)

```
ADAPTER_FLAG3 :: enum u32 {
	REMOTE                       = 0, 
	SOFTWARE                     = 1, 
	ACG_COMPATIBLE               = 3, 
	SUPPORT_MONITORED_FENCES     = 4, 
	SUPPORT_NON_MONITORED_FENCES = 5, 
	KEYED_MUTEX_CONFORMANCE      = 6, 
}
```

### [ADAPTER\_FLAGS ¶](#ADAPTER_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L620)

```
ADAPTER_FLAGS :: bit_set[ADAPTER_FLAG; u32]
```

### [ADAPTER\_FLAGS3 ¶](#ADAPTER_FLAGS3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1255)

```
ADAPTER_FLAGS3 :: bit_set[ADAPTER_FLAG3; u32]
```

### [ALPHA\_MODE ¶](#ALPHA_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L750)

```
ALPHA_MODE :: enum i32 {
	UNSPECIFIED   = 0, 
	PREMULTIPLIED = 1, 
	STRAIGHT      = 2, 
	IGNORE        = 3, 
}
```

### [BOOL ¶](#BOOL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L22)

```
BOOL :: sys_windows.BOOL
```

### [COLOR\_SPACE\_TYPE ¶](#COLOR_SPACE_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L144)

```
COLOR_SPACE_TYPE :: enum i32 {
	RGB_FULL_G22_NONE_P709           = 0, 
	RGB_FULL_G10_NONE_P709           = 1, 
	RGB_STUDIO_G22_NONE_P709         = 2, 
	RGB_STUDIO_G22_NONE_P2020        = 3, 
	RESERVED                         = 4, 
	YCBCR_FULL_G22_NONE_P709_X601    = 5, 
	YCBCR_STUDIO_G22_LEFT_P601       = 6, 
	YCBCR_FULL_G22_LEFT_P601         = 7, 
	YCBCR_STUDIO_G22_LEFT_P709       = 8, 
	YCBCR_FULL_G22_LEFT_P709         = 9, 
	YCBCR_STUDIO_G22_LEFT_P2020      = 10, 
	YCBCR_FULL_G22_LEFT_P2020        = 11, 
	RGB_FULL_G2084_NONE_P2020        = 12, 
	YCBCR_STUDIO_G2084_LEFT_P2020    = 13, 
	RGB_STUDIO_G2084_NONE_P2020      = 14, 
	YCBCR_STUDIO_G22_TOPLEFT_P2020   = 15, 
	YCBCR_STUDIO_G2084_TOPLEFT_P2020 = 16, 
	RGB_FULL_G22_NONE_P2020          = 17, 
	YCBCR_STUDIO_GHLG_TOPLEFT_P2020  = 18, 
	YCBCR_FULL_GHLG_TOPLEFT_P2020    = 19, 
	RGB_STUDIO_G24_NONE_P709         = 20, 
	RGB_STUDIO_G24_NONE_P2020        = 21, 
	YCBCR_STUDIO_G24_LEFT_P709       = 22, 
	YCBCR_STUDIO_G24_LEFT_P2020      = 23, 
	YCBCR_STUDIO_G24_TOPLEFT_P2020   = 24, 
	CUSTOM                           = -1, 
}
```

### [COMPUTE\_PREEMPTION\_GRANULARITY ¶](#COMPUTE_PREEMPTION_GRANULARITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L894)

```
COMPUTE_PREEMPTION_GRANULARITY :: enum i32 {
	DMA_BUFFER_BOUNDARY   = 0, 
	DISPATCH_BOUNDARY     = 1, 
	THREAD_GROUP_BOUNDARY = 2, 
	THREAD_BOUNDARY       = 3, 
	INSTRUCTION_BOUNDARY  = 4, 
}
```

### [CPU\_ACCESS ¶](#CPU_ACCESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L51)

```
CPU_ACCESS :: enum u32 {
	NONE       = 0, 
	DYNAMIC    = 1, 
	READ_WRITE = 2, 
	SCRATCH    = 3, 
	FIELD      = 15, 
}
```

### [CREATE\_FACTORY ¶](#CREATE_FACTORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L129)

```
CREATE_FACTORY :: distinct bit_set[CREATE_FACTORY_FLAG; u32]
```

##### Related Procedures With Parameters

* [CreateDXGIFactory2](/vendor/directx/dxgi/#CreateDXGIFactory2)

### [CREATE\_FACTORY\_FLAG ¶](#CREATE_FACTORY_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L130)

```
CREATE_FACTORY_FLAG :: enum u32 {
	DEBUG = 0, 
}
```

### [D3DCOLORVALUE ¶](#D3DCOLORVALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L307)

```
D3DCOLORVALUE :: struct {
	r: f32,
	g: f32,
	b: f32,
	a: f32,
}
```

### [DEBUG\_ID ¶](#DEBUG_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L17)

```
DEBUG_ID :: sys_windows.GUID
```

##### Related Procedures With Parameters

* [CreateDXGIFactory](/vendor/directx/dxgi/#CreateDXGIFactory)
* [CreateDXGIFactory1](/vendor/directx/dxgi/#CreateDXGIFactory1)
* [CreateDXGIFactory2](/vendor/directx/dxgi/#CreateDXGIFactory2)
* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)

### [DEBUG\_RLO\_FLAGS ¶](#DEBUG_RLO_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L6)

```
DEBUG_RLO_FLAGS :: enum u32 {
	// TODO: convert to bit_set
	SUMMARY         = 1, 
	DETAIL          = 2, 
	IGNORE_INTERNAL = 4, 
	ALL             = 7, 
}
```

### [DECODE\_SWAP\_CHAIN\_DESC ¶](#DECODE_SWAP_CHAIN_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1000)

```
DECODE_SWAP_CHAIN_DESC :: struct {
	Flags: SWAP_CHAIN,
}
```

### [DISPLAY\_COLOR\_SPACE ¶](#DISPLAY_COLOR_SPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L639)

```
DISPLAY_COLOR_SPACE :: struct {
	PrimaryCoordinates: [8][2]f32,
	WhitePoints:        [16][2]f32,
}
```

### [DWORD ¶](#DWORD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L31)

```
DWORD :: u32
```

##### Related Procedures With Parameters

* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)

### [ENUM\_MODE ¶](#ENUM_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L86)

```
ENUM_MODE :: enum u32 {
	INTERLACED      = 0, 
	SCALING         = 1, 
	STEREO          = 2, 
	DISABLED_STEREO = 3, 
}
```

### [ENUM\_MODES ¶](#ENUM_MODES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L85)

```
ENUM_MODES :: distinct bit_set[ENUM_MODE; u32]
```

### [FEATURE ¶](#FEATURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1239)

```
FEATURE :: enum i32 {
	PRESENT_ALLOW_TEARING = 0, 
}
```

### [FORMAT ¶](#FORMAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L173)

```
FORMAT :: enum i32 {
	UNKNOWN                                 = 0, 
	R32G32B32A32_TYPELESS                   = 1, 
	R32G32B32A32_FLOAT                      = 2, 
	R32G32B32A32_UINT                       = 3, 
	R32G32B32A32_SINT                       = 4, 
	R32G32B32_TYPELESS                      = 5, 
	R32G32B32_FLOAT                         = 6, 
	R32G32B32_UINT                          = 7, 
	R32G32B32_SINT                          = 8, 
	R16G16B16A16_TYPELESS                   = 9, 
	R16G16B16A16_FLOAT                      = 10, 
	R16G16B16A16_UNORM                      = 11, 
	R16G16B16A16_UINT                       = 12, 
	R16G16B16A16_SNORM                      = 13, 
	R16G16B16A16_SINT                       = 14, 
	R32G32_TYPELESS                         = 15, 
	R32G32_FLOAT                            = 16, 
	R32G32_UINT                             = 17, 
	R32G32_SINT                             = 18, 
	R32G8X24_TYPELESS                       = 19, 
	D32_FLOAT_S8X24_UINT                    = 20, 
	R32_FLOAT_X8X24_TYPELESS                = 21, 
	X32_TYPELESS_G8X24_UINT                 = 22, 
	R10G10B10A2_TYPELESS                    = 23, 
	R10G10B10A2_UNORM                       = 24, 
	R10G10B10A2_UINT                        = 25, 
	R11G11B10_FLOAT                         = 26, 
	R8G8B8A8_TYPELESS                       = 27, 
	R8G8B8A8_UNORM                          = 28, 
	R8G8B8A8_UNORM_SRGB                     = 29, 
	R8G8B8A8_UINT                           = 30, 
	R8G8B8A8_SNORM                          = 31, 
	R8G8B8A8_SINT                           = 32, 
	R16G16_TYPELESS                         = 33, 
	R16G16_FLOAT                            = 34, 
	R16G16_UNORM                            = 35, 
	R16G16_UINT                             = 36, 
	R16G16_SNORM                            = 37, 
	R16G16_SINT                             = 38, 
	R32_TYPELESS                            = 39, 
	D32_FLOAT                               = 40, 
	R32_FLOAT                               = 41, 
	R32_UINT                                = 42, 
	R32_SINT                                = 43, 
	R24G8_TYPELESS                          = 44, 
	D24_UNORM_S8_UINT                       = 45, 
	R24_UNORM_X8_TYPELESS                   = 46, 
	X24_TYPELESS_G8_UINT                    = 47, 
	R8G8_TYPELESS                           = 48, 
	R8G8_UNORM                              = 49, 
	R8G8_UINT                               = 50, 
	R8G8_SNORM                              = 51, 
	R8G8_SINT                               = 52, 
	R16_TYPELESS                            = 53, 
	R16_FLOAT                               = 54, 
	D16_UNORM                               = 55, 
	R16_UNORM                               = 56, 
	R16_UINT                                = 57, 
	R16_SNORM                               = 58, 
	R16_SINT                                = 59, 
	R8_TYPELESS                             = 60, 
	R8_UNORM                                = 61, 
	R8_UINT                                 = 62, 
	R8_SNORM                                = 63, 
	R8_SINT                                 = 64, 
	A8_UNORM                                = 65, 
	R1_UNORM                                = 66, 
	R9G9B9E5_SHAREDEXP                      = 67, 
	R8G8_B8G8_UNORM                         = 68, 
	G8R8_G8B8_UNORM                         = 69, 
	BC1_TYPELESS                            = 70, 
	BC1_UNORM                               = 71, 
	BC1_UNORM_SRGB                          = 72, 
	BC2_TYPELESS                            = 73, 
	BC2_UNORM                               = 74, 
	BC2_UNORM_SRGB                          = 75, 
	BC3_TYPELESS                            = 76, 
	BC3_UNORM                               = 77, 
	BC3_UNORM_SRGB                          = 78, 
	BC4_TYPELESS                            = 79, 
	BC4_UNORM                               = 80, 
	BC4_SNORM                               = 81, 
	BC5_TYPELESS                            = 82, 
	BC5_UNORM                               = 83, 
	BC5_SNORM                               = 84, 
	B5G6R5_UNORM                            = 85, 
	B5G5R5A1_UNORM                          = 86, 
	B8G8R8A8_UNORM                          = 87, 
	B8G8R8X8_UNORM                          = 88, 
	R10G10B10_XR_BIAS_A2_UNORM              = 89, 
	B8G8R8A8_TYPELESS                       = 90, 
	B8G8R8A8_UNORM_SRGB                     = 91, 
	B8G8R8X8_TYPELESS                       = 92, 
	B8G8R8X8_UNORM_SRGB                     = 93, 
	BC6H_TYPELESS                           = 94, 
	BC6H_UF16                               = 95, 
	BC6H_SF16                               = 96, 
	BC7_TYPELESS                            = 97, 
	BC7_UNORM                               = 98, 
	BC7_UNORM_SRGB                          = 99, 
	AYUV                                    = 100, 
	Y410                                    = 101, 
	Y416                                    = 102, 
	NV12                                    = 103, 
	P010                                    = 104, 
	P016                                    = 105, 
	_420_OPAQUE                             = 106, 
	YUY2                                    = 107, 
	Y210                                    = 108, 
	Y216                                    = 109, 
	NV11                                    = 110, 
	AI44                                    = 111, 
	IA44                                    = 112, 
	P8                                      = 113, 
	A8P8                                    = 114, 
	B4G4R4A4_UNORM                          = 115, 
	P208                                    = 130, 
	V208                                    = 131, 
	V408                                    = 132, 
	SAMPLER_FEEDBACK_MIN_MIP_OPAQUE         = 189, 
	SAMPLER_FEEDBACK_MIP_REGION_USED_OPAQUE = 190, 
	FORCE_UINT                              = -1, 
}
```

### [FRAME\_PRESENTATION\_MODE ¶](#FRAME_PRESENTATION_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1042)

```
FRAME_PRESENTATION_MODE :: enum i32 {
	COMPOSED            = 0, 
	OVERLAY             = 1, 
	NONE                = 2, 
	COMPOSITION_FAILURE = 3, 
}
```

### [FRAME\_STATISTICS ¶](#FRAME_STATISTICS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L374)

```
FRAME_STATISTICS :: struct {
	PresentCount:        u32,
	PresentRefreshCount: u32,
	SyncRefreshCount:    u32,
	SyncQPCTime:         sys_windows.LARGE_INTEGER,
	SyncGPUTime:         sys_windows.LARGE_INTEGER,
}
```

### [FRAME\_STATISTICS\_MEDIA ¶](#FRAME_STATISTICS_MEDIA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1049)

```
FRAME_STATISTICS_MEDIA :: struct {
	PresentCount:            u32,
	PresentRefreshCount:     u32,
	SyncRefreshCount:        u32,
	SyncQPCTime:             sys_windows.LARGE_INTEGER,
	SyncGPUTime:             sys_windows.LARGE_INTEGER,
	CompositionMode:         FRAME_PRESENTATION_MODE,
	ApprovedPresentDuration: u32,
}
```

### [GAMMA\_CONTROL ¶](#GAMMA_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L316)

```
GAMMA_CONTROL :: struct {
	Scale:      RGB,
	Offset:     RGB,
	GammaCurve: [1025]RGB,
}
```

### [GAMMA\_CONTROL\_CAPABILITIES ¶](#GAMMA_CONTROL_CAPABILITIES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L322)

```
GAMMA_CONTROL_CAPABILITIES :: struct {
	ScaleAndOffsetSupported: sys_windows.BOOL,
	MaxConvertedValue:       f32,
	MinConvertedValue:       f32,
	NumGammaControlPoints:   u32,
	ControlPointPositions:   [1025]f32,
}
```

### [GPU\_PREFERENCE ¶](#GPU_PREFERENCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1329)

```
GPU_PREFERENCE :: enum i32 {
	UNSPECIFIED      = 0, 
	MINIMUM_POWER    = 1, 
	HIGH_PERFORMANCE = 2, 
}
```

### [GRAPHICS\_PREEMPTION\_GRANULARITY ¶](#GRAPHICS_PREEMPTION_GRANULARITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L886)

```
GRAPHICS_PREEMPTION_GRANULARITY :: enum i32 {
	DMA_BUFFER_BOUNDARY  = 0, 
	PRIMITIVE_BOUNDARY   = 1, 
	TRIANGLE_BOUNDARY    = 2, 
	PIXEL_BOUNDARY       = 3, 
	INSTRUCTION_BOUNDARY = 4, 
}
```

### [GUID ¶](#GUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L15)

```
GUID :: sys_windows.GUID
```

##### Related Procedures With Parameters

* [CreateDXGIFactory](/vendor/directx/dxgi/#CreateDXGIFactory)
* [CreateDXGIFactory1](/vendor/directx/dxgi/#CreateDXGIFactory1)
* [CreateDXGIFactory2](/vendor/directx/dxgi/#CreateDXGIFactory2)
* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)

### [HANDLE ¶](#HANDLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L16)

```
HANDLE :: sys_windows.HANDLE
```

### [HARDWARE\_COMPOSITION\_SUPPORT\_FLAG ¶](#HARDWARE_COMPOSITION_SUPPORT_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1310)

```
HARDWARE_COMPOSITION_SUPPORT_FLAG :: enum u32 {
	FULLSCREEN       = 0, 
	WINDOWED         = 1, 
	CURSOR_STRETCHED = 2, 
}
```

### [HARDWARE\_COMPOSITION\_SUPPORT\_FLAGS ¶](#HARDWARE_COMPOSITION_SUPPORT_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1309)

```
HARDWARE_COMPOSITION_SUPPORT_FLAGS :: bit_set[HARDWARE_COMPOSITION_SUPPORT_FLAG; u32]
```

### [HDC ¶](#HDC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L21)

```
HDC :: sys_windows.HANDLE
```

### [HDR\_METADATA\_HDR10 ¶](#HDR_METADATA_HDR10) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1188)

```
HDR_METADATA_HDR10 :: struct {
	RedPrimary:                [2]u16,
	GreenPrimary:              [2]u16,
	BluePrimary:               [2]u16,
	WhitePoint:                [2]u16,
	MaxMasteringLuminance:     u32,
	MinMasteringLuminance:     u32,
	MaxContentLightLevel:      u16,
	MaxFrameAverageLightLevel: u16,
}
```

### [HDR\_METADATA\_HDR10PLUS ¶](#HDR_METADATA_HDR10PLUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1199)

```
HDR_METADATA_HDR10PLUS :: struct {
	Data: [72]u8,
}
```

### [HDR\_METADATA\_TYPE ¶](#HDR_METADATA_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1182)

```
HDR_METADATA_TYPE :: enum i32 {
	NONE      = 0, 
	HDR10     = 1, 
	HDR10PLUS = 2, 
}
```

### [HMODULE ¶](#HMODULE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L20)

```
HMODULE :: sys_windows.HMODULE
```

### [HMONITOR ¶](#HMONITOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L18)

```
HMONITOR :: sys_windows.HMONITOR
```

### [HRESULT ¶](#HRESULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L17)

```
HRESULT :: sys_windows.HRESULT
```

##### Related Procedures With Returns

* [CreateDXGIFactory](/vendor/directx/dxgi/#CreateDXGIFactory)
* [CreateDXGIFactory1](/vendor/directx/dxgi/#CreateDXGIFactory1)
* [CreateDXGIFactory2](/vendor/directx/dxgi/#CreateDXGIFactory2)
* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)
* [DeclareAdapterRemovalSupport](/vendor/directx/dxgi/#DeclareAdapterRemovalSupport)

##### Related Constants

* [ERROR\_ACCESS\_DENIED](/vendor/directx/dxgi/#ERROR_ACCESS_DENIED)
* [ERROR\_ACCESS\_LOST](/vendor/directx/dxgi/#ERROR_ACCESS_LOST)
* [ERROR\_ALREADY\_EXISTS](/vendor/directx/dxgi/#ERROR_ALREADY_EXISTS)
* [ERROR\_CANNOT\_PROTECT\_CONTENT](/vendor/directx/dxgi/#ERROR_CANNOT_PROTECT_CONTENT)
* [ERROR\_DEVICE\_HUNG](/vendor/directx/dxgi/#ERROR_DEVICE_HUNG)
* [ERROR\_DEVICE\_REMOVED](/vendor/directx/dxgi/#ERROR_DEVICE_REMOVED)
* [ERROR\_DEVICE\_RESET](/vendor/directx/dxgi/#ERROR_DEVICE_RESET)
* [ERROR\_DRIVER\_INTERNAL\_ERROR](/vendor/directx/dxgi/#ERROR_DRIVER_INTERNAL_ERROR)
* [ERROR\_FRAME\_STATISTICS\_DISJOINT](/vendor/directx/dxgi/#ERROR_FRAME_STATISTICS_DISJOINT)
* [ERROR\_GRAPHICS\_VIDPN\_SOURCE\_IN\_USE](/vendor/directx/dxgi/#ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE)
* [ERROR\_INVALID\_CALL](/vendor/directx/dxgi/#ERROR_INVALID_CALL)
* [ERROR\_MORE\_DATA](/vendor/directx/dxgi/#ERROR_MORE_DATA)
* [ERROR\_NAME\_ALREADY\_EXISTS](/vendor/directx/dxgi/#ERROR_NAME_ALREADY_EXISTS)
* [ERROR\_NONEXCLUSIVE](/vendor/directx/dxgi/#ERROR_NONEXCLUSIVE)
* [ERROR\_NOT\_CURRENTLY\_AVAILABLE](/vendor/directx/dxgi/#ERROR_NOT_CURRENTLY_AVAILABLE)
* [ERROR\_NOT\_FOUND](/vendor/directx/dxgi/#ERROR_NOT_FOUND)
* [ERROR\_REMOTE\_CLIENT\_DISCONNECTED](/vendor/directx/dxgi/#ERROR_REMOTE_CLIENT_DISCONNECTED)
* [ERROR\_REMOTE\_OUTOFMEMORY](/vendor/directx/dxgi/#ERROR_REMOTE_OUTOFMEMORY)
* [ERROR\_RESTRICT\_TO\_OUTPUT\_STALE](/vendor/directx/dxgi/#ERROR_RESTRICT_TO_OUTPUT_STALE)
* [ERROR\_SDK\_COMPONENT\_MISSING](/vendor/directx/dxgi/#ERROR_SDK_COMPONENT_MISSING)
* [ERROR\_SESSION\_DISCONNECTED](/vendor/directx/dxgi/#ERROR_SESSION_DISCONNECTED)
* [ERROR\_UNSUPPORTED](/vendor/directx/dxgi/#ERROR_UNSUPPORTED)
* [ERROR\_WAIT\_TIMEOUT](/vendor/directx/dxgi/#ERROR_WAIT_TIMEOUT)
* [ERROR\_WAS\_STILL\_DRAWING](/vendor/directx/dxgi/#ERROR_WAS_STILL_DRAWING)
* [STATUS\_MODE\_CHANGED](/vendor/directx/dxgi/#STATUS_MODE_CHANGED)
* [STATUS\_MODE\_CHANGE\_IN\_PROGRESS](/vendor/directx/dxgi/#STATUS_MODE_CHANGE_IN_PROGRESS)
* [STATUS\_OCCLUDED](/vendor/directx/dxgi/#STATUS_OCCLUDED)

### [HWND ¶](#HWND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L19)

```
HWND :: sys_windows.HWND
```

### [IAdapter ¶](#IAdapter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L538)

```
IAdapter :: struct #raw_union {
	idxgiobject:         IObject,
	using idxgiadapter_vtable: ^IAdapter_VTable,
}
```

### [IAdapter1 ¶](#IAdapter1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L659)

```
IAdapter1 :: struct #raw_union {
	idxgiadapter:         IAdapter,
	using idxgiadapter1_vtable: ^IAdapter1_VTable,
}
```

### [IAdapter1\_VTable ¶](#IAdapter1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L663)

```
IAdapter1_VTable :: struct {
	using idxgiadapter_vtable: IAdapter_VTable,
	GetDesc1:            proc "stdcall" (this: ^IAdapter1, pDesc: ^ADAPTER_DESC1) -> sys_windows.HRESULT,
}
```

### [IAdapter2 ¶](#IAdapter2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L920)

```
IAdapter2 :: struct #raw_union {
	idxgiadapter1:        IAdapter1,
	using idxgiadapter2_vtable: ^IAdapter2_VTable,
}
```

### [IAdapter2\_VTable ¶](#IAdapter2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L924)

```
IAdapter2_VTable :: struct {
	using idxgiadapter1_vtable: IAdapter1_VTable,
	GetDesc2:             proc "stdcall" (this: ^IAdapter2, pDesc: ^ADAPTER_DESC2) -> sys_windows.HRESULT,
}
```

### [IAdapter3 ¶](#IAdapter3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1152)

```
IAdapter3 :: struct #raw_union {
	idxgiadapter2:        IAdapter2,
	using idxgiadapter3_vtable: ^IAdapter3_VTable,
}
```

### [IAdapter3\_VTable ¶](#IAdapter3_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1156)

```
IAdapter3_VTable :: struct {
	using idxgiadapter2_vtable:                           IAdapter2_VTable,
	RegisterHardwareContentProtectionTeardownStatusEvent: proc "stdcall" (this: ^IAdapter3, hEvent: sys_windows.HANDLE, pdwCookie: ^u32) -> sys_windows.HRESULT,
	UnregisterHardwareContentProtectionTeardownStatus:    proc "stdcall" (this: ^IAdapter3, dwCookie: u32),
	QueryVideoMemoryInfo:                                 proc "stdcall" (this: ^IAdapter3, NodeIndex: u32, MemorySegmentGroup: MEMORY_SEGMENT_GROUP, pVideoMemoryInfo: ^QUERY_VIDEO_MEMORY_INFO) -> sys_windows.HRESULT,
	SetVideoMemoryReservation:                            proc "stdcall" (this: ^IAdapter3, NodeIndex: u32, MemorySegmentGroup: MEMORY_SEGMENT_GROUP, Reservation: u64) -> sys_windows.HRESULT,
	RegisterVideoMemoryBudgetChangeNotificationEvent:     proc "stdcall" (this: ^IAdapter3, hEvent: sys_windows.HANDLE, pdwCookie: ^u32) -> sys_windows.HRESULT,
	UnregisterVideoMemoryBudgetChangeNotification:        proc "stdcall" (this: ^IAdapter3, dwCookie: u32),
}
```

### [IAdapter4 ¶](#IAdapter4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1283)

```
IAdapter4 :: struct #raw_union {
	idxgiadapter3:        IAdapter3,
	using idxgiadapter4_vtable: ^IAdapter4_VTable,
}
```

### [IAdapter4\_VTable ¶](#IAdapter4_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1287)

```
IAdapter4_VTable :: struct {
	using idxgiadapter3_vtable: IAdapter3_VTable,
	GetDesc3:             proc "stdcall" (this: ^IAdapter4, pDesc: ^ADAPTER_DESC3) -> sys_windows.HRESULT,
}
```

### [IAdapter\_VTable ¶](#IAdapter_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L542)

```
IAdapter_VTable :: struct {
	using idxgiobject_vtable: IObject_VTable,
	EnumOutputs:           proc "stdcall" (this: ^IAdapter, Output: u32, ppOutput: ^^IOutput) -> sys_windows.HRESULT,
	GetDesc:               proc "stdcall" (this: ^IAdapter, pDesc: ^ADAPTER_DESC) -> sys_windows.HRESULT,
	CheckInterfaceSupport: proc "stdcall" (this: ^IAdapter, InterfaceName: ^sys_windows.GUID, pUMDVersion: ^sys_windows.LARGE_INTEGER) -> sys_windows.HRESULT,
}
```

### [IDebug ¶](#IDebug) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L122)

```
IDebug :: struct #raw_union {
	iunknown:          sys_windows.IUnknown,
	using idxgidebug_vtable: ^IDebug_VTable,
}
```

### [IDebug1 ¶](#IDebug1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L133)

```
IDebug1 :: struct #raw_union {
	idxgidebug:         IDebug,
	using idxgidebug1_vtable: ^IDebug1_VTable,
}
```

### [IDebug1\_VTable ¶](#IDebug1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L137)

```
IDebug1_VTable :: struct {
	using idxgidebug_vtable:        IDebug_VTable,
	EnableLeakTrackingForThread:    proc "stdcall" (this: ^IDebug1),
	DisableLeakTrackingForThread:   proc "stdcall" (this: ^IDebug1),
	IsLeakTrackingEnabledForThread: proc "stdcall" (this: ^IDebug1) -> sys_windows.BOOL,
}
```

### [IDebug\_VTable ¶](#IDebug_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L126)

```
IDebug_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	ReportLiveObjects: proc "stdcall" (this: ^IDebug, apiid: sys_windows.GUID, flags: DEBUG_RLO_FLAGS),
}
```

### [IDecodeSwapChain ¶](#IDecodeSwapChain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1014)

```
IDecodeSwapChain :: struct #raw_union {
	iunknown:                    sys_windows.IUnknown,
	using idxgidecodeswapchain_vtable: ^IDecodeSwapChain_VTable,
}
```

### [IDecodeSwapChain\_VTable ¶](#IDecodeSwapChain_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1018)

```
IDecodeSwapChain_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	PresentBuffer:   proc "stdcall" (this: ^IDecodeSwapChain, BufferToPresent: u32, SyncInterval: u32, Flags: PRESENT) -> sys_windows.HRESULT,
	SetSourceRect:   proc "stdcall" (this: ^IDecodeSwapChain, pRect: ^sys_windows.RECT) -> sys_windows.HRESULT,
	SetTargetRect:   proc "stdcall" (this: ^IDecodeSwapChain, pRect: ^sys_windows.RECT) -> sys_windows.HRESULT,
	SetDestSize:     proc "stdcall" (this: ^IDecodeSwapChain, Width: u32, Height: u32) -> sys_windows.HRESULT,
	GetSourceRect:   proc "stdcall" (this: ^IDecodeSwapChain, pRect: ^sys_windows.RECT) -> sys_windows.HRESULT,
	GetTargetRect:   proc "stdcall" (this: ^IDecodeSwapChain, pRect: ^sys_windows.RECT) -> sys_windows.HRESULT,
	GetDestSize:     proc "stdcall" (this: ^IDecodeSwapChain, pWidth: ^u32, pHeight: ^u32) -> sys_windows.HRESULT,
	SetColorSpace:   proc "stdcall" (this: ^IDecodeSwapChain, ColorSpace: MULTIPLANE_OVERLAY_YCbCr) -> sys_windows.HRESULT,
	GetColorSpace:   proc "stdcall" (this: ^IDecodeSwapChain) -> MULTIPLANE_OVERLAY_YCbCr,
}
```

### [IDevice ¶](#IDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L607)

```
IDevice :: struct #raw_union {
	idxgiobject:        IObject,
	using idxgidevice_vtable: ^IDevice_VTable,
}
```

### [IDevice1 ¶](#IDevice1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L670)

```
IDevice1 :: struct #raw_union {
	idxgidevice:         IDevice,
	using idxgidevice1_vtable: ^IDevice1_VTable,
}
```

### [IDevice1\_VTable ¶](#IDevice1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L674)

```
IDevice1_VTable :: struct {
	using idxgidevice_vtable: IDevice_VTable,
	SetMaximumFrameLatency: proc "stdcall" (this: ^IDevice1, MaxLatency: u32) -> sys_windows.HRESULT,
	GetMaximumFrameLatency: proc "stdcall" (this: ^IDevice1, pMaxLatency: ^u32) -> sys_windows.HRESULT,
}
```

### [IDevice2 ¶](#IDevice2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L789)

```
IDevice2 :: struct #raw_union {
	idxgidevice1:        IDevice1,
	using idxgidevice2_vtable: ^IDevice2_VTable,
}
```

### [IDevice2\_VTable ¶](#IDevice2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L793)

```
IDevice2_VTable :: struct {
	using idxgidevice1_vtable: IDevice1_VTable,
	OfferResources:      proc "stdcall" (this: ^IDevice2, NumResources: u32, ppResources: [^]^IResource, Priority: OFFER_RESOURCE_PRIORITY) -> sys_windows.HRESULT,
	ReclaimResources:    proc "stdcall" (this: ^IDevice2, NumResources: u32, ppResources: [^]^IResource, pDiscarded: ^sys_windows.BOOL) -> sys_windows.HRESULT,
	EnqueueSetEvent:     proc "stdcall" (this: ^IDevice2, hEvent: sys_windows.HANDLE) -> sys_windows.HRESULT,
}
```

### [IDevice3 ¶](#IDevice3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L944)

```
IDevice3 :: struct #raw_union {
	idxgidevice2:        IDevice2,
	using idxgidevice3_vtable: ^IDevice3_VTable,
}
```

### [IDevice3\_VTable ¶](#IDevice3_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L948)

```
IDevice3_VTable :: struct {
	using idxgidevice2_vtable: IDevice2_VTable,
	Trim:                proc "stdcall" (this: ^IDevice3),
}
```

### [IDevice4 ¶](#IDevice4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1229)

```
IDevice4 :: struct #raw_union {
	idxgidevice3:        IDevice3,
	using idxgidevice4_vtable: ^IDevice4_VTable,
}
```

### [IDevice4\_VTable ¶](#IDevice4_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1233)

```
IDevice4_VTable :: struct {
	using idxgidevice3_vtable: IDevice3_VTable,
	OfferResources1:     proc "stdcall" (this: ^IDevice4, NumResources: u32, ppResources: [^]^IResource, Priority: OFFER_RESOURCE_PRIORITY, Flags: bit_set[OFFER_RESOURCE_FLAG; u32]) -> sys_windows.HRESULT,
	ReclaimResources1:   proc "stdcall" (this: ^IDevice4, NumResources: u32, ppResources: [^]^IResource, pResults: [^]RECLAIM_RESOURCE_RESULTS) -> sys_windows.HRESULT,
}
```

### [IDeviceSubObject ¶](#IDeviceSubObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L476)

```
IDeviceSubObject :: struct #raw_union {
	idxgiobject:                 IObject,
	using idxgidevicesubobject_vtable: ^IDeviceSubObject_VTable,
}
```

### [IDeviceSubObject\_VTable ¶](#IDeviceSubObject_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L480)

```
IDeviceSubObject_VTable :: struct {
	using idxgiobject_vtable: IObject_VTable,
	GetDevice:          proc "stdcall" (this: ^IDeviceSubObject, riid: ^sys_windows.GUID, ppDevice: ^rawptr) -> sys_windows.HRESULT,
}
```

### [IDevice\_VTable ¶](#IDevice_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L611)

```
IDevice_VTable :: struct {
	using idxgiobject_vtable: IObject_VTable,
	GetAdapter:             proc "stdcall" (this: ^IDevice, pAdapter: ^^IAdapter) -> sys_windows.HRESULT,
	CreateSurface:          proc "stdcall" (this: ^IDevice, pDesc: ^SURFACE_DESC, NumSurfaces: u32, Usage: USAGE, pSharedResource: ^SHARED_RESOURCE, ppSurface: ^^ISurface) -> sys_windows.HRESULT,
	QueryResourceResidency: proc "stdcall" (this: ^IDevice, ppResources: [^]^sys_windows.IUnknown, pResidencyStatus: [^]RESIDENCY, NumResources: u32) -> sys_windows.HRESULT,
	SetGPUThreadPriority:   proc "stdcall" (this: ^IDevice, Priority: i32) -> sys_windows.HRESULT,
	GetGPUThreadPriority:   proc "stdcall" (this: ^IDevice, pPriority: ^i32) -> sys_windows.HRESULT,
}
```

### [IDisplayControl ¶](#IDisplayControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L682)

```
IDisplayControl :: struct #raw_union {
	iunknown:                   sys_windows.IUnknown,
	using idxgidisplaycontrol_vtable: ^IDisplayControl_VTable,
}
```

### [IDisplayControl\_VTable ¶](#IDisplayControl_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L686)

```
IDisplayControl_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	IsStereoEnabled:  proc "stdcall" (this: ^IDisplayControl) -> sys_windows.BOOL,
	SetStereoEnabled: proc "stdcall" (this: ^IDisplayControl, enabled: sys_windows.BOOL),
}
```

### [IFactory ¶](#IFactory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L593)

```
IFactory :: struct #raw_union {
	idxgiobject:         IObject,
	using idxgifactory_vtable: ^IFactory_VTable,
}
```

### [IFactory1 ¶](#IFactory1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L647)

```
IFactory1 :: struct #raw_union {
	idxgifactory:         IFactory,
	using idxgifactory1_vtable: ^IFactory1_VTable,
}
```

### [IFactory1\_VTable ¶](#IFactory1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L651)

```
IFactory1_VTable :: struct {
	using idxgifactory_vtable: IFactory_VTable,
	EnumAdapters1:       proc "stdcall" (this: ^IFactory1, Adapter: u32, ppAdapter: ^^IAdapter1) -> sys_windows.HRESULT,
	IsCurrent:           proc "stdcall" (this: ^IFactory1) -> sys_windows.BOOL,
}
```

### [IFactory2 ¶](#IFactory2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L868)

```
IFactory2 :: struct #raw_union {
	idxgifactory1:        IFactory1,
	using idxgifactory2_vtable: ^IFactory2_VTable,
}
```

### [IFactory2\_VTable ¶](#IFactory2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L872)

```
IFactory2_VTable :: struct {
	using idxgifactory1_vtable:    IFactory1_VTable,
	IsWindowedStereoEnabled:       proc "stdcall" (this: ^IFactory2) -> sys_windows.BOOL,
	CreateSwapChainForHwnd:        proc "stdcall" (this: ^IFactory2, pDevice: ^sys_windows.IUnknown, hWnd: sys_windows.HWND, pDesc: ^SWAP_CHAIN_DESC1, pFullscreenDesc: ^SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput: ^IOutput, ppSwapChain: ^^ISwapChain1) -> sys_windows.HRESULT,
	CreateSwapChainForCoreWindow:  proc "stdcall" (this: ^IFactory2, pDevice: ^sys_windows.IUnknown, pWindow: ^sys_windows.IUnknown, pDesc: ^SWAP_CHAIN_DESC1, pRestrictToOutput: ^IOutput, ppSwapChain: ^^ISwapChain1) -> sys_windows.HRESULT,
	GetSharedResourceAdapterLuid:  proc "stdcall" (this: ^IFactory2, hResource: sys_windows.HANDLE, pLuid: ^sys_windows.LUID) -> sys_windows.HRESULT,
	RegisterStereoStatusWindow:    proc "stdcall" (this: ^IFactory2, WindowHandle: sys_windows.HWND, wMsg: u32, pdwCookie: ^u32) -> sys_windows.HRESULT,
	RegisterStereoStatusEvent:     proc "stdcall" (this: ^IFactory2, hEvent: sys_windows.HANDLE, pdwCookie: ^u32) -> sys_windows.HRESULT,
	UnregisterStereoStatus:        proc "stdcall" (this: ^IFactory2, dwCookie: u32),
	RegisterOcclusionStatusWindow: proc "stdcall" (this: ^IFactory2, WindowHandle: sys_windows.HWND, wMsg: u32, pdwCookie: ^u32) -> sys_windows.HRESULT,
	RegisterOcclusionStatusEvent:  proc "stdcall" (this: ^IFactory2, hEvent: sys_windows.HANDLE, pdwCookie: ^u32) -> sys_windows.HRESULT,
	UnregisterOcclusionStatus:     proc "stdcall" (this: ^IFactory2, dwCookie: u32),
	CreateSwapChainForComposition: proc "stdcall" (this: ^IFactory2, pDevice: ^sys_windows.IUnknown, pDesc: ^SWAP_CHAIN_DESC1, pRestrictToOutput: ^IOutput, ppSwapChain: ^^ISwapChain1) -> sys_windows.HRESULT,
}
```

### [IFactory3 ¶](#IFactory3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L992)

```
IFactory3 :: struct #raw_union {
	idxgifactory2:        IFactory2,
	using idxgifactory3_vtable: ^IFactory3_VTable,
}
```

### [IFactory3\_VTable ¶](#IFactory3_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L996)

```
IFactory3_VTable :: struct {
	using idxgifactory2_vtable: IFactory2_VTable,
	GetCreationFlags:     proc "stdcall" (this: ^IFactory3) -> CREATE_FACTORY,
}
```

### [IFactory4 ¶](#IFactory4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1128)

```
IFactory4 :: struct #raw_union {
	idxgifactory3:        IFactory3,
	using idxgifactory4_vtable: ^IFactory4_VTable,
}
```

### [IFactory4\_VTable ¶](#IFactory4_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1132)

```
IFactory4_VTable :: struct {
	using idxgifactory3_vtable: IFactory3_VTable,
	EnumAdapterByLuid:    proc "stdcall" (this: ^IFactory4, AdapterLuid: sys_windows.LUID, riid: ^sys_windows.GUID, ppvAdapter: ^rawptr) -> sys_windows.HRESULT,
	EnumWarpAdapter:      proc "stdcall" (this: ^IFactory4, riid: ^sys_windows.GUID, ppvAdapter: ^rawptr) -> sys_windows.HRESULT,
}
```

### [IFactory5 ¶](#IFactory5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1246)

```
IFactory5 :: struct #raw_union {
	idxgifactory4:        IFactory4,
	using idxgifactory5_vtable: ^IFactory5_VTable,
}
```

### [IFactory5\_VTable ¶](#IFactory5_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1250)

```
IFactory5_VTable :: struct {
	using idxgifactory4_vtable: IFactory4_VTable,
	CheckFeatureSupport:  proc "stdcall" (this: ^IFactory5, Feature: FEATURE, pFeatureSupportData: rawptr, FeatureSupportDataSize: u32) -> sys_windows.HRESULT,
}
```

### [IFactory6 ¶](#IFactory6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1338)

```
IFactory6 :: struct #raw_union {
	idxgifactory5:        IFactory5,
	using idxgifactory6_vtable: ^IFactory6_VTable,
}
```

### [IFactory6\_VTable ¶](#IFactory6_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1342)

```
IFactory6_VTable :: struct {
	using idxgifactory5_vtable: IFactory5_VTable,
	EnumAdapterByGpuPreference: proc "stdcall" (this: ^IFactory6, Adapter: u32, GpuPreference: GPU_PREFERENCE, riid: ^sys_windows.GUID, ppvAdapter: ^rawptr) -> sys_windows.HRESULT,
}
```

### [IFactory7 ¶](#IFactory7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1349)

```
IFactory7 :: struct #raw_union {
	idxgifactory6:        IFactory6,
	using idxgifactory7_vtable: ^IFactory7_VTable,
}
```

### [IFactory7\_VTable ¶](#IFactory7_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1353)

```
IFactory7_VTable :: struct {
	using idxgifactory6_vtable:     IFactory6_VTable,
	RegisterAdaptersChangedEvent:   proc "stdcall" (this: ^IFactory7, hEvent: sys_windows.HANDLE, pdwCookie: ^u32) -> sys_windows.HRESULT,
	UnregisterAdaptersChangedEvent: proc "stdcall" (this: ^IFactory7, dwCookie: u32) -> sys_windows.HRESULT,
}
```

### [IFactoryMedia ¶](#IFactoryMedia) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1033)

```
IFactoryMedia :: struct #raw_union {
	iunknown:                 sys_windows.IUnknown,
	using idxgifactorymedia_vtable: ^IFactoryMedia_VTable,
}
```

### [IFactoryMedia\_VTable ¶](#IFactoryMedia_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1037)

```
IFactoryMedia_VTable :: struct {
	using iunknown_vtable:                            sys_windows.IUnknown_VTable,
	CreateSwapChainForCompositionSurfaceHandle:       proc "stdcall" (this: ^IFactoryMedia, pDevice: ^sys_windows.IUnknown, hSurface: sys_windows.HANDLE, pDesc: ^SWAP_CHAIN_DESC1, pRestrictToOutput: ^IOutput, ppSwapChain: ^^ISwapChain1) -> sys_windows.HRESULT,
	CreateDecodeSwapChainForCompositionSurfaceHandle: proc "stdcall" (this: ^IFactoryMedia, pDevice: ^sys_windows.IUnknown, hSurface: sys_windows.HANDLE, pDesc: ^DECODE_SWAP_CHAIN_DESC, pYuvDecodeBuffers: ^IResource, pRestrictToOutput: ^IOutput, ppSwapChain: ^^IDecodeSwapChain) -> sys_windows.HRESULT,
}
```

### [IFactory\_VTable ¶](#IFactory_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L597)

```
IFactory_VTable :: struct {
	using idxgiobject_vtable: IObject_VTable,
	EnumAdapters:          proc "stdcall" (this: ^IFactory, Adapter: u32, ppAdapter: ^^IAdapter) -> sys_windows.HRESULT,
	MakeWindowAssociation: proc "stdcall" (this: ^IFactory, WindowHandle: sys_windows.HWND, Flags: MWA) -> sys_windows.HRESULT,
	GetWindowAssociation:  proc "stdcall" (this: ^IFactory, pWindowHandle: ^sys_windows.HWND) -> sys_windows.HRESULT,
	CreateSwapChain:       proc "stdcall" (this: ^IFactory, pDevice: ^sys_windows.IUnknown, pDesc: ^SWAP_CHAIN_DESC, ppSwapChain: ^^ISwapChain) -> sys_windows.HRESULT,
	CreateSoftwareAdapter: proc "stdcall" (this: ^IFactory, Module: sys_windows.HMODULE, ppAdapter: ^^IAdapter) -> sys_windows.HRESULT,
}
```

### [IID ¶](#IID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L13)

```
IID :: sys_windows.GUID
```

##### Related Procedures With Parameters

* [CreateDXGIFactory](/vendor/directx/dxgi/#CreateDXGIFactory)
* [CreateDXGIFactory1](/vendor/directx/dxgi/#CreateDXGIFactory1)
* [CreateDXGIFactory2](/vendor/directx/dxgi/#CreateDXGIFactory2)
* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)

### [IInfoQueue ¶](#IInfoQueue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L75)

```
IInfoQueue :: struct #raw_union {
	iunknown:              sys_windows.IUnknown,
	using idxgiinfoqueue_vtable: ^IInfoQueue_VTable,
}
```

### [IInfoQueue\_VTable ¶](#IInfoQueue_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L79)

```
IInfoQueue_VTable :: struct {
	using iunknown_vtable:                         sys_windows.IUnknown_VTable,
	SetMessageCountLimit:                          proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, MessageCountLimit: u64) -> sys_windows.HRESULT,
	ClearStoredMessages:                           proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID),
	GetMessage:                                    proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, MessageIndex: u64, pMessage: ^INFO_QUEUE_MESSAGE, pMessageByteLength: ^uint) -> sys_windows.HRESULT,
	GetNumStoredMessagesAllowedByRetrievalFilters: proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u64,
	GetNumStoredMessages:                          proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u64,
	GetNumMessagesDiscardedByMessageCountLimit:    proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u64,
	GetMessageCountLimit:                          proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u64,
	GetNumMessagesAllowedByStorageFilter:          proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u64,
	GetNumMessagesDeniedByStorageFilter:           proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u64,
	AddStorageFilterEntries:                       proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, pFilter: INFO_QUEUE_FILTER) -> sys_windows.HRESULT,
	GetStorageFilter:                              proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, pFilter: ^INFO_QUEUE_FILTER, pFilterByteLength: ^uint) -> sys_windows.HRESULT,
	ClearStorageFilter:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID),
	PushEmptyStorageFilter:                        proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> sys_windows.HRESULT,
	PushDenyAllStorageFilter:                      proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> sys_windows.HRESULT,
	PushCopyOfStorageFilter:                       proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> sys_windows.HRESULT,
	PushStorageFilter:                             proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, pFilter: ^INFO_QUEUE_FILTER) -> sys_windows.HRESULT,
	PopStorageFilter:                              proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID),
	GetStorageFilterStackSize:                     proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u32,
	AddRetrievalFilterEntries:                     proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, pFilter: ^INFO_QUEUE_FILTER) -> sys_windows.HRESULT,
	GetRetrievalFilter:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, pFilter: ^INFO_QUEUE_FILTER, pFilterByteLength: ^uint) -> sys_windows.HRESULT,
	ClearRetrievalFilter:                          proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID),
	PushEmptyRetrievalFilter:                      proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> sys_windows.HRESULT,
	PushDenyAllRetrievalFilter:                    proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> sys_windows.HRESULT,
	PushCopyOfRetrievalFilter:                     proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> sys_windows.HRESULT,
	PushRetrievalFilter:                           proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, pFilter: ^INFO_QUEUE_FILTER) -> sys_windows.HRESULT,
	PopRetrievalFilter:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID),
	GetRetrievalFilterStackSize:                   proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> u32,
	AddMessage:                                    proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, Category: INFO_QUEUE_MESSAGE_CATEGORY, Severity: INFO_QUEUE_MESSAGE_SEVERITY, ID: i32, pDescription: cstring) -> sys_windows.HRESULT,
	AddApplicationMessage:                         proc "stdcall" (this: ^IInfoQueue, Severity: INFO_QUEUE_MESSAGE_SEVERITY, pDescription: cstring) -> sys_windows.HRESULT,
	SetBreakOnCategory:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, Category: INFO_QUEUE_MESSAGE_CATEGORY, bEnable: sys_windows.BOOL) -> sys_windows.HRESULT,
	SetBreakOnSeverity:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, Severity: INFO_QUEUE_MESSAGE_SEVERITY, bEnable: sys_windows.BOOL) -> sys_windows.HRESULT,
	SetBreakOnID:                                  proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, ID: i32, bEnable: sys_windows.BOOL) -> sys_windows.HRESULT,
	GetBreakOnCategory:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, Category: INFO_QUEUE_MESSAGE_CATEGORY) -> sys_windows.BOOL,
	GetBreakOnSeverity:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, Severity: INFO_QUEUE_MESSAGE_SEVERITY) -> sys_windows.BOOL,
	GetBreakOnID:                                  proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, ID: i32) -> sys_windows.BOOL,
	SetMuteDebugOutput:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID, bMute: sys_windows.BOOL),
	GetMuteDebugOutput:                            proc "stdcall" (this: ^IInfoQueue, Producer: sys_windows.GUID) -> sys_windows.BOOL,
}
```

### [IKeyedMutex ¶](#IKeyedMutex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L501)

```
IKeyedMutex :: struct #raw_union {
	idxgidevicesubobject:   IDeviceSubObject,
	using idxgikeyedmutex_vtable: ^IKeyedMutex_VTable,
}
```

### [IKeyedMutex\_VTable ¶](#IKeyedMutex_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L505)

```
IKeyedMutex_VTable :: struct {
	using idxgidevicesubobject_vtable: IDeviceSubObject_VTable,
	AcquireSync:                 proc "stdcall" (this: ^IKeyedMutex, Key: u64, dwMilliseconds: u32) -> sys_windows.HRESULT,
	ReleaseSync:                 proc "stdcall" (this: ^IKeyedMutex, Key: u64) -> sys_windows.HRESULT,
}
```

### [INFO\_QUEUE\_FILTER ¶](#INFO_QUEUE_FILTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L65)

```
INFO_QUEUE_FILTER :: struct {
	AllowList: INFO_QUEUE_FILTER_DESC,
	DenyList:  INFO_QUEUE_FILTER_DESC,
}
```

### [INFO\_QUEUE\_FILTER\_DESC ¶](#INFO_QUEUE_FILTER_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L56)

```
INFO_QUEUE_FILTER_DESC :: struct {
	NumCategories: u32,
	pCategoryList: [^]INFO_QUEUE_MESSAGE_CATEGORY,
	NumSeverities: u32,
	pSeverityList: [^]INFO_QUEUE_MESSAGE_SEVERITY,
	NumIDs:        u32,
	pIDList:       [^]i32,
}
```

### [INFO\_QUEUE\_MESSAGE ¶](#INFO_QUEUE_MESSAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L47)

```
INFO_QUEUE_MESSAGE :: struct {
	Producer:              sys_windows.GUID,
	Category:              INFO_QUEUE_MESSAGE_CATEGORY,
	Severity:              INFO_QUEUE_MESSAGE_SEVERITY,
	ID:                    i32,
	pDescription:          [^]u8,
	DescriptionByteLength: uint,
}
```

### [INFO\_QUEUE\_MESSAGE\_CATEGORY ¶](#INFO_QUEUE_MESSAGE_CATEGORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L25)

```
INFO_QUEUE_MESSAGE_CATEGORY :: enum u32 {
	UNKNOWN               = 0, 
	MISCELLANEOUS         = 1, 
	INITIALIZATION        = 2, 
	CLEANUP               = 3, 
	COMPILATION           = 4, 
	STATE_CREATION        = 5, 
	STATE_SETTING         = 6, 
	STATE_GETTING         = 7, 
	RESOURCE_MANIPULATION = 8, 
	EXECUTION             = 9, 
	SHADER                = 10, 
}
```

### [INFO\_QUEUE\_MESSAGE\_ID ¶](#INFO_QUEUE_MESSAGE_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L18)

```
INFO_QUEUE_MESSAGE_ID :: i32
```

### [INFO\_QUEUE\_MESSAGE\_SEVERITY ¶](#INFO_QUEUE_MESSAGE_SEVERITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L39)

```
INFO_QUEUE_MESSAGE_SEVERITY :: enum u32 {
	CORRUPTION = 0, 
	ERROR, 
	WARNING, 
	INFO, 
	MESSAGE,        // Not supported until D3D 11.1
}
```

### [INT ¶](#INT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L14)

```
INT :: i32
```

### [IObject ¶](#IObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L462)

```
IObject :: struct #raw_union {
	iunknown: sys_windows.IUnknown,
	using vtable: ^IObject_VTable,
}
```

### [IObject\_VTable ¶](#IObject_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L466)

```
IObject_VTable :: struct {
	using iunknown_vtable:   sys_windows.IUnknown_VTable,
	SetPrivateData:          proc "stdcall" (this: ^IObject, Name: ^sys_windows.GUID, DataSize: u32, pData: rawptr) -> sys_windows.HRESULT,
	SetPrivateDataInterface: proc "stdcall" (this: ^IObject, Name: ^sys_windows.GUID, pUnknown: ^sys_windows.IUnknown) -> sys_windows.HRESULT,
	GetPrivateData:          proc "stdcall" (this: ^IObject, Name: ^sys_windows.GUID, pDataSize: ^u32, pData: rawptr) -> sys_windows.HRESULT,
	GetParent:               proc "stdcall" (this: ^IObject, riid: ^sys_windows.GUID, ppParent: ^rawptr) -> sys_windows.HRESULT,
}
```

### [IOutput ¶](#IOutput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L551)

```
IOutput :: struct #raw_union {
	idxgiobject:        IObject,
	using idxgioutput_vtable: ^IOutput_VTable,
}
```

### [IOutput1 ¶](#IOutput1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L931)

```
IOutput1 :: struct #raw_union {
	idxgioutput:         IOutput,
	using idxgioutput1_vtable: ^IOutput1_VTable,
}
```

### [IOutput1\_VTable ¶](#IOutput1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L935)

```
IOutput1_VTable :: struct {
	using idxgioutput_vtable: IOutput_VTable,
	GetDisplayModeList1:      proc "stdcall" (this: ^IOutput1, EnumFormat: FORMAT, Flags: ENUM_MODES, pNumModes: ^u32, pDesc: [^]MODE_DESC1) -> sys_windows.HRESULT,
	FindClosestMatchingMode1: proc "stdcall" (this: ^IOutput1, pModeToMatch: ^MODE_DESC1, pClosestMatch: ^MODE_DESC1, pConcernedDevice: ^sys_windows.IUnknown) -> sys_windows.HRESULT,
	GetDisplaySurfaceData1:   proc "stdcall" (this: ^IOutput1, pDestination: ^IResource) -> sys_windows.HRESULT,
	DuplicateOutput:          proc "stdcall" (this: ^IOutput1, pDevice: ^sys_windows.IUnknown, ppOutputDuplication: ^^IOutputDuplication) -> sys_windows.HRESULT,
}
```

### [IOutput2 ¶](#IOutput2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L981)

```
IOutput2 :: struct #raw_union {
	idxgioutput1:        IOutput1,
	using idxgioutput2_vtable: ^IOutput2_VTable,
}
```

### [IOutput2\_VTable ¶](#IOutput2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L985)

```
IOutput2_VTable :: struct {
	using idxgioutput1_vtable: IOutput1_VTable,
	SupportsOverlays:    proc "stdcall" (this: ^IOutput2) -> sys_windows.BOOL,
}
```

### [IOutput3 ¶](#IOutput3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1081)

```
IOutput3 :: struct #raw_union {
	idxgioutput2:        IOutput2,
	using idxgioutput3_vtable: ^IOutput3_VTable,
}
```

### [IOutput3\_VTable ¶](#IOutput3_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1085)

```
IOutput3_VTable :: struct {
	using idxgioutput2_vtable: IOutput2_VTable,
	CheckOverlaySupport: proc "stdcall" (this: ^IOutput3, EnumFormat: FORMAT, pConcernedDevice: ^sys_windows.IUnknown, pFlags: ^OVERLAY_SUPPORT) -> sys_windows.HRESULT,
}
```

### [IOutput4 ¶](#IOutput4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1117)

```
IOutput4 :: struct #raw_union {
	idxgioutput3:        IOutput3,
	using idxgioutput4_vtable: ^IOutput4_VTable,
}
```

### [IOutput4\_VTable ¶](#IOutput4_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1121)

```
IOutput4_VTable :: struct {
	using idxgioutput3_vtable:     IOutput3_VTable,
	CheckOverlayColorSpaceSupport: proc "stdcall" (this: ^IOutput4, Format: FORMAT, ColorSpace: COLOR_SPACE_TYPE, pConcernedDevice: ^sys_windows.IUnknown, pFlags: ^OVERLAY_COLOR_SPACE_SUPPORT) -> sys_windows.HRESULT,
}
```

### [IOutput5 ¶](#IOutput5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1173)

```
IOutput5 :: struct #raw_union {
	idxgioutput4:        IOutput4,
	using idxgioutput5_vtable: ^IOutput5_VTable,
}
```

### [IOutput5\_VTable ¶](#IOutput5_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1177)

```
IOutput5_VTable :: struct {
	using idxgioutput4_vtable: IOutput4_VTable,
	DuplicateOutput1:    proc "stdcall" (this: ^IOutput5, pDevice: ^sys_windows.IUnknown, Flags: u32, SupportedFormatsCount: u32, pSupportedFormats: ^FORMAT, ppOutputDuplication: ^^IOutputDuplication) -> sys_windows.HRESULT,
}
```

### [IOutput6 ¶](#IOutput6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1319)

```
IOutput6 :: struct #raw_union {
	idxgioutput5:        IOutput5,
	using idxgioutput6_vtable: ^IOutput6_VTable,
}
```

### [IOutput6\_VTable ¶](#IOutput6_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1323)

```
IOutput6_VTable :: struct {
	using idxgioutput5_vtable:       IOutput5_VTable,
	GetDesc1:                        proc "stdcall" (this: ^IOutput6, pDesc: ^OUTPUT_DESC1) -> sys_windows.HRESULT,
	CheckHardwareCompositionSupport: proc "stdcall" (this: ^IOutput6, pFlags: ^bit_set[HARDWARE_COMPOSITION_SUPPORT_FLAG; u32]) -> sys_windows.HRESULT,
}
```

### [IOutputDuplication ¶](#IOutputDuplication) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L735)

```
IOutputDuplication :: struct #raw_union {
	idxgiobject:                   IObject,
	using idxgioutputduplication_vtable: ^IOutputDuplication_VTable,
}
```

### [IOutputDuplication\_VTable ¶](#IOutputDuplication_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L739)

```
IOutputDuplication_VTable :: struct {
	using idxgiobject_vtable: IObject_VTable,
	GetDesc:              proc "stdcall" (this: ^IOutputDuplication, pDesc: ^OUTDUPL_DESC),
	AcquireNextFrame:     proc "stdcall" (this: ^IOutputDuplication, TimeoutInMilliseconds: u32, pFrameInfo: ^OUTDUPL_FRAME_INFO, ppDesktopResource: ^^IResource) -> sys_windows.HRESULT,
	GetFrameDirtyRects:   proc "stdcall" (this: ^IOutputDuplication, DirtyRectsBufferSize: u32, pDirtyRectsBuffer: ^sys_windows.RECT, pDirtyRectsBufferSizeRequired: ^u32) -> sys_windows.HRESULT,
	GetFrameMoveRects:    proc "stdcall" (this: ^IOutputDuplication, MoveRectsBufferSize: u32, pMoveRectBuffer: ^OUTDUPL_MOVE_RECT, pMoveRectsBufferSizeRequired: ^u32) -> sys_windows.HRESULT,
	GetFramePointerShape: proc "stdcall" (this: ^IOutputDuplication, PointerShapeBufferSize: u32, pPointerShapeBuffer: rawptr, pPointerShapeBufferSizeRequired: ^u32, pPointerShapeInfo: ^OUTDUPL_POINTER_SHAPE_INFO) -> sys_windows.HRESULT,
	MapDesktopSurface:    proc "stdcall" (this: ^IOutputDuplication, pLockedRect: ^MAPPED_RECT) -> sys_windows.HRESULT,
	UnMapDesktopSurface:  proc "stdcall" (this: ^IOutputDuplication) -> sys_windows.HRESULT,
	ReleaseFrame:         proc "stdcall" (this: ^IOutputDuplication) -> sys_windows.HRESULT,
}
```

### [IOutput\_VTable ¶](#IOutput_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L555)

```
IOutput_VTable :: struct {
	using idxgiobject_vtable:    IObject_VTable,
	GetDesc:                     proc "stdcall" (this: ^IOutput, pDesc: ^OUTPUT_DESC) -> sys_windows.HRESULT,
	GetDisplayModeList:          proc "stdcall" (this: ^IOutput, EnumFormat: FORMAT, Flags: ENUM_MODES, pNumModes: ^u32, pDesc: [^]MODE_DESC) -> sys_windows.HRESULT,
	FindClosestMatchingMode:     proc "stdcall" (this: ^IOutput, pModeToMatch: ^MODE_DESC, pClosestMatch: ^MODE_DESC, pConcernedDevice: ^sys_windows.IUnknown) -> sys_windows.HRESULT,
	WaitForVBlank:               proc "stdcall" (this: ^IOutput) -> sys_windows.HRESULT,
	TakeOwnership:               proc "stdcall" (this: ^IOutput, pDevice: ^sys_windows.IUnknown, Exclusive: sys_windows.BOOL) -> sys_windows.HRESULT,
	ReleaseOwnership:            proc "stdcall" (this: ^IOutput),
	GetGammaControlCapabilities: proc "stdcall" (this: ^IOutput, pGammaCaps: ^GAMMA_CONTROL_CAPABILITIES) -> sys_windows.HRESULT,
	SetGammaControl:             proc "stdcall" (this: ^IOutput, pArray: ^GAMMA_CONTROL) -> sys_windows.HRESULT,
	GetGammaControl:             proc "stdcall" (this: ^IOutput, pArray: ^GAMMA_CONTROL) -> sys_windows.HRESULT,
	SetDisplaySurface:           proc "stdcall" (this: ^IOutput, pScanoutSurface: ^ISurface) -> sys_windows.HRESULT,
	GetDisplaySurfaceData:       proc "stdcall" (this: ^IOutput, pDestination: ^ISurface) -> sys_windows.HRESULT,
	GetFrameStatistics:          proc "stdcall" (this: ^IOutput, pStats: ^FRAME_STATISTICS) -> sys_windows.HRESULT,
}
```

### [IResource ¶](#IResource) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L487)

```
IResource :: struct #raw_union {
	idxgidevicesubobject: IDeviceSubObject,
	using idxgiresource_vtable: ^IResource_VTable,
}
```

### [IResource1 ¶](#IResource1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L771)

```
IResource1 :: struct #raw_union {
	idxgiresource:         IResource,
	using idxgiresource1_vtable: ^IResource1_VTable,
}
```

### [IResource1\_VTable ¶](#IResource1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L775)

```
IResource1_VTable :: struct {
	using idxgiresource_vtable: IResource_VTable,
	CreateSubresourceSurface: proc "stdcall" (this: ^IResource1, index: u32, ppSurface: ^^ISurface2) -> sys_windows.HRESULT,
	CreateSharedHandle:       proc "stdcall" (this: ^IResource1, pAttributes: ^sys_windows.SECURITY_ATTRIBUTES, dwAccess: SHARED_RESOURCE_RW, lpName: ^i16, pHandle: ^sys_windows.HANDLE) -> sys_windows.HRESULT,
}
```

### [IResource\_VTable ¶](#IResource_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L491)

```
IResource_VTable :: struct {
	using idxgidevicesubobject_vtable: IDeviceSubObject_VTable,
	GetSharedHandle:             proc "stdcall" (this: ^IResource, pSharedHandle: ^sys_windows.HANDLE) -> sys_windows.HRESULT,
	GetUsage:                    proc "stdcall" (this: ^IResource, pUsage: ^USAGE) -> sys_windows.HRESULT,
	SetEvictionPriority:         proc "stdcall" (this: ^IResource, EvictionPriority: RESOURCE_PRIORITY) -> sys_windows.HRESULT,
	GetEvictionPriority:         proc "stdcall" (this: ^IResource, pEvictionPriority: ^RESOURCE_PRIORITY) -> sys_windows.HRESULT,
}
```

### [ISurface ¶](#ISurface) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L513)

```
ISurface :: struct #raw_union {
	idxgidevicesubobject: IDeviceSubObject,
	using idxgisurface_vtable: ^ISurface_VTable,
}
```

### [ISurface1 ¶](#ISurface1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L526)

```
ISurface1 :: struct #raw_union {
	idxgisurface:         ISurface,
	using idxgisurface1_vtable: ^ISurface1_VTable,
}
```

### [ISurface1\_VTable ¶](#ISurface1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L530)

```
ISurface1_VTable :: struct {
	using idxgisurface_vtable: ISurface_VTable,
	GetDC:               proc "stdcall" (this: ^ISurface1, Discard: sys_windows.BOOL, phdc: ^sys_windows.HANDLE) -> sys_windows.HRESULT,
	ReleaseDC:           proc "stdcall" (this: ^ISurface1, pDirtyRect: ^sys_windows.RECT) -> sys_windows.HRESULT,
}
```

### [ISurface2 ¶](#ISurface2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L760)

```
ISurface2 :: struct #raw_union {
	idxgisurface1:        ISurface1,
	using idxgisurface2_vtable: ^ISurface2_VTable,
}
```

### [ISurface2\_VTable ¶](#ISurface2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L764)

```
ISurface2_VTable :: struct {
	using idxgisurface1_vtable: ISurface1_VTable,
	GetResource:          proc "stdcall" (this: ^ISurface2, riid: ^sys_windows.GUID, ppParentResource: ^rawptr, pSubresourceIndex: ^u32) -> sys_windows.HRESULT,
}
```

### [ISurface\_VTable ¶](#ISurface_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L517)

```
ISurface_VTable :: struct {
	using idxgidevicesubobject_vtable: IDeviceSubObject_VTable,
	GetDesc:                     proc "stdcall" (this: ^ISurface, pDesc: ^SURFACE_DESC) -> sys_windows.HRESULT,
	Map:                         proc "stdcall" (this: ^ISurface, pLockedRect: ^MAPPED_RECT, MapFlags: MAP) -> sys_windows.HRESULT,
	Unmap:                       proc "stdcall" (this: ^ISurface) -> sys_windows.HRESULT,
}
```

### [ISwapChain ¶](#ISwapChain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L573)

```
ISwapChain :: struct #raw_union {
	idxgidevicesubobject:  IDeviceSubObject,
	using idxgiswapchain_vtable: ^ISwapChain_VTable,
}
```

### [ISwapChain1 ¶](#ISwapChain1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L847)

```
ISwapChain1 :: struct #raw_union {
	idxgiswapchain:         ISwapChain,
	using idxgiswapchain1_vtable: ^ISwapChain1_VTable,
}
```

### [ISwapChain1\_VTable ¶](#ISwapChain1_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L851)

```
ISwapChain1_VTable :: struct {
	using idxgiswapchain_vtable: ISwapChain_VTable,
	GetDesc1:                 proc "stdcall" (this: ^ISwapChain1, pDesc: ^SWAP_CHAIN_DESC1) -> sys_windows.HRESULT,
	GetFullscreenDesc:        proc "stdcall" (this: ^ISwapChain1, pDesc: ^SWAP_CHAIN_FULLSCREEN_DESC) -> sys_windows.HRESULT,
	GetHwnd:                  proc "stdcall" (this: ^ISwapChain1, pHwnd: ^sys_windows.HWND) -> sys_windows.HRESULT,
	GetCoreWindow:            proc "stdcall" (this: ^ISwapChain1, refiid: ^sys_windows.GUID, ppUnk: ^rawptr) -> sys_windows.HRESULT,
	Present1:                 proc "stdcall" (this: ^ISwapChain1, SyncInterval: u32, PresentFlags: PRESENT, pPresentParameters: ^PRESENT_PARAMETERS) -> sys_windows.HRESULT,
	IsTemporaryMonoSupported: proc "stdcall" (this: ^ISwapChain1) -> sys_windows.BOOL,
	GetRestrictToOutput:      proc "stdcall" (this: ^ISwapChain1, ppRestrictToOutput: ^^IOutput) -> sys_windows.HRESULT,
	SetBackgroundColor:       proc "stdcall" (this: ^ISwapChain1, pColor: ^D3DCOLORVALUE) -> sys_windows.HRESULT,
	GetBackgroundColor:       proc "stdcall" (this: ^ISwapChain1, pColor: ^D3DCOLORVALUE) -> sys_windows.HRESULT,
	SetRotation:              proc "stdcall" (this: ^ISwapChain1, Rotation: MODE_ROTATION) -> sys_windows.HRESULT,
	GetRotation:              proc "stdcall" (this: ^ISwapChain1, pRotation: ^MODE_ROTATION) -> sys_windows.HRESULT,
}
```

### [ISwapChain2 ¶](#ISwapChain2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L964)

```
ISwapChain2 :: struct #raw_union {
	idxgiswapchain1:        ISwapChain1,
	using idxgiswapchain2_vtable: ^ISwapChain2_VTable,
}
```

### [ISwapChain2\_VTable ¶](#ISwapChain2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L968)

```
ISwapChain2_VTable :: struct {
	using idxgiswapchain1_vtable:  ISwapChain1_VTable,
	SetSourceSize:                 proc "stdcall" (this: ^ISwapChain2, Width: u32, Height: u32) -> sys_windows.HRESULT,
	GetSourceSize:                 proc "stdcall" (this: ^ISwapChain2, pWidth: ^u32, pHeight: ^u32) -> sys_windows.HRESULT,
	SetMaximumFrameLatency:        proc "stdcall" (this: ^ISwapChain2, MaxLatency: u32) -> sys_windows.HRESULT,
	GetMaximumFrameLatency:        proc "stdcall" (this: ^ISwapChain2, pMaxLatency: ^u32) -> sys_windows.HRESULT,
	GetFrameLatencyWaitableObject: proc "stdcall" (this: ^ISwapChain2) -> sys_windows.HANDLE,
	SetMatrixTransform:            proc "stdcall" (this: ^ISwapChain2, pMatrix: ^MATRIX_3X2_F) -> sys_windows.HRESULT,
	GetMatrixTransform:            proc "stdcall" (this: ^ISwapChain2, pMatrix: ^MATRIX_3X2_F) -> sys_windows.HRESULT,
}
```

### [ISwapChain3 ¶](#ISwapChain3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1098)

```
ISwapChain3 :: struct #raw_union {
	idxgiswapchain2:        ISwapChain2,
	using idxgiswapchain3_vtable: ^ISwapChain3_VTable,
}
```

### [ISwapChain3\_VTable ¶](#ISwapChain3_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1102)

```
ISwapChain3_VTable :: struct {
	using idxgiswapchain2_vtable: ISwapChain2_VTable,
	GetCurrentBackBufferIndex: proc "stdcall" (this: ^ISwapChain3) -> u32,
	CheckColorSpaceSupport:    proc "stdcall" (this: ^ISwapChain3, ColorSpace: COLOR_SPACE_TYPE, pColorSpaceSupport: ^SWAP_CHAIN_COLOR_SPACE_SUPPORT) -> sys_windows.HRESULT,
	SetColorSpace1:            proc "stdcall" (this: ^ISwapChain3, ColorSpace: COLOR_SPACE_TYPE) -> sys_windows.HRESULT,
	ResizeBuffers1:            proc "stdcall" (this: ^ISwapChain3, BufferCount: u32, Width: u32, Height: u32, Format: FORMAT, SwapChainFlags: SWAP_CHAIN, pCreationNodeMask: ^u32, ppPresentQueue: ^^sys_windows.IUnknown) -> sys_windows.HRESULT,
}
```

### [ISwapChain4 ¶](#ISwapChain4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1206)

```
ISwapChain4 :: struct #raw_union {
	idxgiswapchain3:        ISwapChain3,
	using idxgiswapchain4_vtable: ^ISwapChain4_VTable,
}
```

### [ISwapChain4\_VTable ¶](#ISwapChain4_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1210)

```
ISwapChain4_VTable :: struct {
	using idxgiswapchain3_vtable: ISwapChain3_VTable,
	SetHDRMetaData:         proc "stdcall" (this: ^ISwapChain4, Type: HDR_METADATA_TYPE, Size: u32, pMetaData: rawptr) -> sys_windows.HRESULT,
}
```

### [ISwapChainMedia ¶](#ISwapChainMedia) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1062)

```
ISwapChainMedia :: struct #raw_union {
	iunknown:                   sys_windows.IUnknown,
	using idxgiswapchainmedia_vtable: ^ISwapChainMedia_VTable,
}
```

### [ISwapChainMedia\_VTable ¶](#ISwapChainMedia_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1066)

```
ISwapChainMedia_VTable :: struct {
	using iunknown_vtable:       sys_windows.IUnknown_VTable,
	GetFrameStatisticsMedia:     proc "stdcall" (this: ^ISwapChainMedia, pStats: ^FRAME_STATISTICS_MEDIA) -> sys_windows.HRESULT,
	SetPresentDuration:          proc "stdcall" (this: ^ISwapChainMedia, Duration: u32) -> sys_windows.HRESULT,
	CheckPresentDurationSupport: proc "stdcall" (this: ^ISwapChainMedia, DesiredPresentDuration: u32, pClosestSmallerPresentDuration: ^u32, pClosestLargerPresentDuration: ^u32) -> sys_windows.HRESULT,
}
```

### [ISwapChain\_VTable ¶](#ISwapChain_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L577)

```
ISwapChain_VTable :: struct {
	using idxgidevicesubobject_vtable: IDeviceSubObject_VTable,
	Present:                     proc "stdcall" (this: ^ISwapChain, SyncInterval: u32, Flags: PRESENT) -> sys_windows.HRESULT,
	GetBuffer:                   proc "stdcall" (this: ^ISwapChain, Buffer: u32, riid: ^sys_windows.GUID, ppSurface: ^rawptr) -> sys_windows.HRESULT,
	SetFullscreenState:          proc "stdcall" (this: ^ISwapChain, Fullscreen: sys_windows.BOOL, pTarget: ^IOutput) -> sys_windows.HRESULT,
	GetFullscreenState:          proc "stdcall" (this: ^ISwapChain, pFullscreen: ^sys_windows.BOOL, ppTarget: ^^IOutput) -> sys_windows.HRESULT,
	GetDesc:                     proc "stdcall" (this: ^ISwapChain, pDesc: ^SWAP_CHAIN_DESC) -> sys_windows.HRESULT,
	ResizeBuffers:               proc "stdcall" (this: ^ISwapChain, BufferCount: u32, Width: u32, Height: u32, NewFormat: FORMAT, SwapChainFlags: SWAP_CHAIN) -> sys_windows.HRESULT,
	ResizeTarget:                proc "stdcall" (this: ^ISwapChain, pNewTargetParameters: ^MODE_DESC) -> sys_windows.HRESULT,
	GetContainingOutput:         proc "stdcall" (this: ^ISwapChain, ppOutput: ^^IOutput) -> sys_windows.HRESULT,
	GetFrameStatistics:          proc "stdcall" (this: ^ISwapChain, pStats: ^FRAME_STATISTICS) -> sys_windows.HRESULT,
	GetLastPresentCount:         proc "stdcall" (this: ^ISwapChain, pLastPresentCount: ^u32) -> sys_windows.HRESULT,
}
```

### [IUnknown ¶](#IUnknown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L33)

```
IUnknown :: sys_windows.IUnknown
```

### [IUnknown\_VTable ¶](#IUnknown_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L34)

```
IUnknown_VTable :: sys_windows.IUnknown_VTable
```

### [JPEG\_AC\_HUFFMAN\_TABLE ¶](#JPEG_AC_HUFFMAN_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L365)

```
JPEG_AC_HUFFMAN_TABLE :: struct {
	CodeCounts: [16]u8,
	CodeValues: [162]u8,
}
```

### [JPEG\_DC\_HUFFMAN\_TABLE ¶](#JPEG_DC_HUFFMAN_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L360)

```
JPEG_DC_HUFFMAN_TABLE :: struct {
	CodeCounts: [12]u8,
	CodeValues: [12]u8,
}
```

### [JPEG\_QUANTIZATION\_TABLE ¶](#JPEG_QUANTIZATION_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L370)

```
JPEG_QUANTIZATION_TABLE :: struct {
	Elements: [64]u8,
}
```

### [LARGE\_INTEGER ¶](#LARGE_INTEGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L23)

```
LARGE_INTEGER :: sys_windows.LARGE_INTEGER
```

### [LONG ¶](#LONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L26)

```
LONG :: i32
```

### [LPCSTR ¶](#LPCSTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L16)

```
LPCSTR :: cstring
```

### [LPUNKNOWN ¶](#LPUNKNOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L35)

```
LPUNKNOWN :: ^sys_windows.IUnknown
```

### [LUID ¶](#LUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L12)

```
LUID :: sys_windows.LUID
```

### [MAP ¶](#MAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L78)

```
MAP :: distinct bit_set[MAP_FLAG; u32]
```

### [MAPPED\_RECT ¶](#MAPPED_RECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L382)

```
MAPPED_RECT :: struct {
	Pitch: i32,
	pBits: [^]u8,
}
```

### [MAP\_FLAG ¶](#MAP_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L79)

```
MAP_FLAG :: enum u32 {
	READ    = 0, 
	WRITE   = 1, 
	DISCARD = 2, 
}
```

### [MATRIX\_3X2\_F ¶](#MATRIX_3X2_F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L952)

```
MATRIX_3X2_F :: struct {
	_11: f32,
	_12: f32,
	_21: f32,
	_22: f32,
	_31: f32,
	_32: f32,
}
```

### [MEMORY\_SEGMENT\_GROUP ¶](#MEMORY_SEGMENT_GROUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1137)

```
MEMORY_SEGMENT_GROUP :: enum i32 {
	LOCAL     = 0, 
	NON_LOCAL = 1, 
}
```

### [MODE\_DESC ¶](#MODE_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L351)

```
MODE_DESC :: struct {
	Width:            u32,
	Height:           u32,
	RefreshRate:      RATIONAL,
	Format:           FORMAT,
	ScanlineOrdering: MODE_SCANLINE_ORDER,
	Scaling:          MODE_SCALING,
}
```

### [MODE\_DESC1 ¶](#MODE_DESC1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L799)

```
MODE_DESC1 :: struct {
	Width:            u32,
	Height:           u32,
	RefreshRate:      RATIONAL,
	Format:           FORMAT,
	ScanlineOrdering: MODE_SCANLINE_ORDER,
	Scaling:          MODE_SCALING,
	Stereo:           sys_windows.BOOL,
}
```

### [MODE\_ROTATION ¶](#MODE_ROTATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L343)

```
MODE_ROTATION :: enum i32 {
	UNSPECIFIED = 0, 
	IDENTITY    = 1, 
	ROTATE90    = 2, 
	ROTATE180   = 3, 
	ROTATE270   = 4, 
}
```

### [MODE\_SCALING ¶](#MODE_SCALING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L337)

```
MODE_SCALING :: enum i32 {
	UNSPECIFIED = 0, 
	CENTERED    = 1, 
	STRETCHED   = 2, 
}
```

### [MODE\_SCANLINE\_ORDER ¶](#MODE_SCANLINE_ORDER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L330)

```
MODE_SCANLINE_ORDER :: enum i32 {
	UNSPECIFIED       = 0, 
	PROGRESSIVE       = 1, 
	UPPER_FIELD_FIRST = 2, 
	LOWER_FIELD_FIRST = 3, 
}
```

### [MULTIPLANE\_OVERLAY\_YCbCr ¶](#MULTIPLANE_OVERLAY_YCbCr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1004)

```
MULTIPLANE_OVERLAY_YCbCr :: distinct bit_set[MULTIPLANE_OVERLAY_YCbCr_FLAGS; u32]
```

### [MULTIPLANE\_OVERLAY\_YCbCr\_FLAGS ¶](#MULTIPLANE_OVERLAY_YCbCr_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1005)

```
MULTIPLANE_OVERLAY_YCbCr_FLAGS :: enum u32 {
	NOMINAL_RANGE = 0, 
	BT709, 
	xvYCC, 
}
```

### [MWA ¶](#MWA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L108)

```
MWA :: distinct bit_set[MWA_FLAG; u32]
```

##### Related Constants

* [MWA\_VALID](/vendor/directx/dxgi/#MWA_VALID)

### [MWA\_FLAG ¶](#MWA_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L109)

```
MWA_FLAG :: enum u32 {
	NO_WINDOW_CHANGES = 0, 
	NO_ALT_ENTER      = 1, 
	NO_PRINT_SCREEN   = 2, 
}
```

### [OFFER\_RESOURCE\_FLAG ¶](#OFFER_RESOURCE_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1216)

```
OFFER_RESOURCE_FLAG :: enum u32 {
	ALLOW_DECOMMIT = 0, 
}
```

### [OFFER\_RESOURCE\_FLAGS ¶](#OFFER_RESOURCE_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1215)

```
OFFER_RESOURCE_FLAGS :: bit_set[OFFER_RESOURCE_FLAG; u32]
```

### [OFFER\_RESOURCE\_PRIORITY ¶](#OFFER_RESOURCE_PRIORITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L780)

```
OFFER_RESOURCE_PRIORITY :: enum i32 {
	LOW    = 1, 
	NORMAL = 2, 
	HIGH   = 3, 
}
```

### [OUTDUPL\_DESC ¶](#OUTDUPL_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L696)

```
OUTDUPL_DESC :: struct {
	ModeDesc:                   MODE_DESC,
	Rotation:                   MODE_ROTATION,
	DesktopImageInSystemMemory: sys_windows.BOOL,
}
```

### [OUTDUPL\_FLAG ¶](#OUTDUPL_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1166)

```
OUTDUPL_FLAG :: enum i32 {
	COMPOSITED_UI_CAPTURE_ONLY = 1, 
}
```

### [OUTDUPL\_FRAME\_INFO ¶](#OUTDUPL_FRAME_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L721)

```
OUTDUPL_FRAME_INFO :: struct {
	LastPresentTime:           sys_windows.LARGE_INTEGER,
	LastMouseUpdateTime:       sys_windows.LARGE_INTEGER,
	AccumulatedFrames:         u32,
	RectsCoalesced:            sys_windows.BOOL,
	ProtectedContentMaskedOut: sys_windows.BOOL,
	PointerPosition:           OUTDUPL_POINTER_POSITION,
	TotalMetadataBufferSize:   u32,
	PointerShapeBufferSize:    u32,
}
```

### [OUTDUPL\_MOVE\_RECT ¶](#OUTDUPL_MOVE_RECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L691)

```
OUTDUPL_MOVE_RECT :: struct {
	SourcePoint:     sys_windows.POINT,
	DestinationRect: sys_windows.RECT,
}
```

### [OUTDUPL\_POINTER\_POSITION ¶](#OUTDUPL_POINTER_POSITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L702)

```
OUTDUPL_POINTER_POSITION :: struct {
	Position: sys_windows.POINT,
	Visible:  sys_windows.BOOL,
}
```

### [OUTDUPL\_POINTER\_SHAPE\_INFO ¶](#OUTDUPL_POINTER_SHAPE_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L713)

```
OUTDUPL_POINTER_SHAPE_INFO :: struct {
	Type:    OUTDUPL_POINTER_SHAPE_TYPE,
	Width:   u32,
	Height:  u32,
	Pitch:   u32,
	HotSpot: sys_windows.POINT,
}
```

### [OUTDUPL\_POINTER\_SHAPE\_TYPE ¶](#OUTDUPL_POINTER_SHAPE_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L707)

```
OUTDUPL_POINTER_SHAPE_TYPE :: enum i32 {
	MONOCHROME   = 1, 
	COLOR        = 2, 
	MASKED_COLOR = 4, 
}
```

### [OUTPUT\_DESC ¶](#OUTPUT_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L399)

```
OUTPUT_DESC :: struct {
	DeviceName:         [32]u16 `fmt:"s,0"`,
	DesktopCoordinates: sys_windows.RECT,
	AttachedToDesktop:  sys_windows.BOOL,
	Rotation:           MODE_ROTATION,
	Monitor:            sys_windows.HMONITOR,
}
```

### [OUTPUT\_DESC1 ¶](#OUTPUT_DESC1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1292)

```
OUTPUT_DESC1 :: struct {
	DeviceName:            [32]u16,
	DesktopCoordinates:    sys_windows.RECT,
	AttachedToDesktop:     sys_windows.BOOL,
	Rotation:              MODE_ROTATION,
	Monitor:               sys_windows.HMONITOR,
	BitsPerColor:          u32,
	ColorSpace:            COLOR_SPACE_TYPE,
	RedPrimary:            [2]f32,
	GreenPrimary:          [2]f32,
	BluePrimary:           [2]f32,
	WhitePoint:            [2]f32,
	MinLuminance:          f32,
	MaxLuminance:          f32,
	MaxFullFrameLuminance: f32,
}
```

### [OVERLAY\_COLOR\_SPACE\_SUPPORT ¶](#OVERLAY_COLOR_SPACE_SUPPORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1109)

```
OVERLAY_COLOR_SPACE_SUPPORT :: distinct bit_set[OVERLAY_COLOR_SPACE_SUPPORT_FLAG; u32]
```

### [OVERLAY\_COLOR\_SPACE\_SUPPORT\_FLAG ¶](#OVERLAY_COLOR_SPACE_SUPPORT_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1110)

```
OVERLAY_COLOR_SPACE_SUPPORT_FLAG :: enum u32 {
	PRESENT = 0, 
}
```

### [OVERLAY\_SUPPORT ¶](#OVERLAY_SUPPORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1072)

```
OVERLAY_SUPPORT :: distinct bit_set[OVERLAY_SUPPORT_FLAG; u32]
```

### [OVERLAY\_SUPPORT\_FLAG ¶](#OVERLAY_SUPPORT_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1073)

```
OVERLAY_SUPPORT_FLAG :: enum u32 {
	DIRECT  = 0, 
	SCALING = 1, 
}
```

### [POINT ¶](#POINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L28)

```
POINT :: sys_windows.POINT
```

### [PRESENT ¶](#PRESENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L94)

```
PRESENT :: distinct bit_set[PRESENT_FLAG; u32]
```

### [PRESENT\_FLAG ¶](#PRESENT_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L95)

```
PRESENT_FLAG :: enum u32 {
	TEST                  = 0, 
	DO_NOT_SEQUENCE       = 1, 
	RESTART               = 2, 
	DO_NOT_WAIT           = 3, 
	STEREO_PREFER_RIGHT   = 4, 
	STEREO_TEMPORARY_MONO = 5, 
	RESTRICT_TO_OUTPUT    = 6, 
	USE_DURATION          = 8, 
	ALLOW_TEARING         = 9, 
}
```

### [PRESENT\_PARAMETERS ¶](#PRESENT_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L836)

```
PRESENT_PARAMETERS :: struct {
	DirtyRectsCount: u32,
	pDirtyRects:     [^]sys_windows.RECT,
	pScrollRect:     ^sys_windows.RECT,
	pScrollOffset:   ^sys_windows.POINT,
}
```

### [QUERY\_VIDEO\_MEMORY\_INFO ¶](#QUERY_VIDEO_MEMORY_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1142)

```
QUERY_VIDEO_MEMORY_INFO :: struct {
	Budget:                  u64,
	CurrentUsage:            u64,
	AvailableForReservation: u64,
	CurrentReservation:      u64,
}
```

### [RATIONAL ¶](#RATIONAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L134)

```
RATIONAL :: struct {
	Numerator:   u32,
	Denominator: u32,
}
```

### [RECLAIM\_RESOURCE\_RESULTS ¶](#RECLAIM_RESOURCE_RESULTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1220)

```
RECLAIM_RESOURCE_RESULTS :: enum i32 {
	OK            = 0, 
	DISCARDED     = 1, 
	NOT_COMMITTED = 2, 
}
```

### [RECT ¶](#RECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L27)

```
RECT :: sys_windows.RECT
```

### [RESIDENCY ¶](#RESIDENCY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L411)

```
RESIDENCY :: enum i32 {
	FULLY_RESIDENT            = 1, 
	RESIDENT_IN_SHARED_MEMORY = 2, 
	EVICTED_TO_DISK           = 3, 
}
```

### [RESOURCE\_PRIORITY ¶](#RESOURCE_PRIORITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L70)

```
RESOURCE_PRIORITY :: enum u32 {
	MINIMUM = 671088640, 
	LOW     = 1342177280, 
	NORMAL  = 2013265920, 
	HIGH    = 2684354560, 
	MAXIMUM = 3355443200, 
}
```

### [RGB ¶](#RGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L301)

```
RGB :: struct {
	Red:   f32,
	Green: f32,
	Blue:  f32,
}
```

### [RGBA ¶](#RGBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L314)

```
RGBA :: D3DCOLORVALUE
```

### [SAMPLE\_DESC ¶](#SAMPLE_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L139)

```
SAMPLE_DESC :: struct {
	Count:   u32,
	Quality: u32,
}
```

### [SCALING ¶](#SCALING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L809)

```
SCALING :: enum i32 {
	STRETCH              = 0, 
	NONE                 = 1, 
	ASPECT_RATIO_STRETCH = 2, 
}
```

### [SHARED\_RESOURCE ¶](#SHARED_RESOURCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L407)

```
SHARED_RESOURCE :: struct {
	Handle: sys_windows.HANDLE,
}
```

### [SHARED\_RESOURCE\_RW ¶](#SHARED_RESOURCE_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L120)

```
SHARED_RESOURCE_RW :: distinct bit_set[SHARED_RESOURCE_RW_FLAG; u32]
```

### [SHARED\_RESOURCE\_RW\_FLAG ¶](#SHARED_RESOURCE_RW_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L121)

```
SHARED_RESOURCE_RW_FLAG :: enum u32 {
	READ  = 31, 
	WRITE = 0, 
}
```

### [SIZE ¶](#SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L29)

```
SIZE :: sys_windows.SIZE
```

### [SIZE\_T ¶](#SIZE_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L24)

```
SIZE_T :: uint
```

### [SURFACE\_DESC ¶](#SURFACE_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L417)

```
SURFACE_DESC :: struct {
	Width:      u32,
	Height:     u32,
	Format:     FORMAT,
	SampleDesc: SAMPLE_DESC,
}
```

### [SWAP\_CHAIN ¶](#SWAP_CHAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L431)

```
SWAP_CHAIN :: distinct bit_set[SWAP_CHAIN_FLAG; u32]
```

### [SWAP\_CHAIN\_COLOR\_SPACE\_SUPPORT ¶](#SWAP_CHAIN_COLOR_SPACE_SUPPORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1089)

```
SWAP_CHAIN_COLOR_SPACE_SUPPORT :: distinct bit_set[SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG; u32]
```

### [SWAP\_CHAIN\_COLOR\_SPACE\_SUPPORT\_FLAG ¶](#SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1090)

```
SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG :: enum u32 {
	PRESENT         = 0, 
	OVERLAY_PRESENT = 1, 
}
```

### [SWAP\_CHAIN\_DESC ¶](#SWAP_CHAIN_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L448)

```
SWAP_CHAIN_DESC :: struct {
	BufferDesc:   MODE_DESC,
	SampleDesc:   SAMPLE_DESC,
	BufferUsage:  USAGE,
	BufferCount:  u32,
	OutputWindow: sys_windows.HWND,
	Windowed:     sys_windows.BOOL,
	SwapEffect:   SWAP_EFFECT,
	Flags:        SWAP_CHAIN,
}
```

### [SWAP\_CHAIN\_DESC1 ¶](#SWAP_CHAIN_DESC1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L815)

```
SWAP_CHAIN_DESC1 :: struct {
	Width:       u32,
	Height:      u32,
	Format:      FORMAT,
	Stereo:      sys_windows.BOOL,
	SampleDesc:  SAMPLE_DESC,
	BufferUsage: USAGE,
	BufferCount: u32,
	Scaling:     SCALING,
	SwapEffect:  SWAP_EFFECT,
	AlphaMode:   ALPHA_MODE,
	Flags:       SWAP_CHAIN,
}
```

### [SWAP\_CHAIN\_FLAG ¶](#SWAP_CHAIN_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L432)

```
SWAP_CHAIN_FLAG :: enum u32 {
	NONPREROTATED                          = 0, 
	ALLOW_MODE_SWITCH, 
	GDI_COMPATIBLE, 
	RESTRICTED_CONTENT, 
	RESTRICT_SHARED_RESOURCE_DRIVER, 
	DISPLAY_ONLY, 
	FRAME_LATENCY_WAITABLE_OBJECT, 
	FOREGROUND_LAYER, 
	FULLSCREEN_VIDEO, 
	YUV_VIDEO, 
	HW_PROTECTED, 
	ALLOW_TEARING, 
	RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS, 
}
```

### [SWAP\_CHAIN\_FULLSCREEN\_DESC ¶](#SWAP_CHAIN_FULLSCREEN_DESC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L829)

```
SWAP_CHAIN_FULLSCREEN_DESC :: struct {
	RefreshRate:      RATIONAL,
	ScanlineOrdering: MODE_SCANLINE_ORDER,
	Scaling:          MODE_SCALING,
	Windowed:         sys_windows.BOOL,
}
```

### [SWAP\_EFFECT ¶](#SWAP_EFFECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L424)

```
SWAP_EFFECT :: enum i32 {
	DISCARD         = 0, 
	SEQUENTIAL      = 1, 
	FLIP_SEQUENTIAL = 3, 
	FLIP_DISCARD    = 4, 
}
```

### [UINT ¶](#UINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L13)

```
UINT :: u32
```

##### Related Procedures With Parameters

* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)

### [UINT64 ¶](#UINT64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L15)

```
UINT64 :: u64
```

### [ULONG ¶](#ULONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L25)

```
ULONG :: u32
```

##### Related Procedures With Parameters

* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)

### [USAGE ¶](#USAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L59)

```
USAGE :: distinct bit_set[USAGE_FLAG; u32]
```

### [USAGE\_FLAG ¶](#USAGE_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L60)

```
USAGE_FLAG :: enum u32 {
	SHADER_INPUT         = 4, 
	RENDER_TARGET_OUTPUT = 5, 
	BACK_BUFFER          = 6, 
	SHARED               = 7, 
	READ_ONLY            = 8, 
	DISCARD_ON_PRESENT   = 9, 
	UNORDERED_ACCESS     = 10, 
}
```

### [UUID ¶](#UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L14)

```
UUID :: sys_windows.GUID
```

##### Related Procedures With Parameters

* [CreateDXGIFactory](/vendor/directx/dxgi/#CreateDXGIFactory)
* [CreateDXGIFactory1](/vendor/directx/dxgi/#CreateDXGIFactory1)
* [CreateDXGIFactory2](/vendor/directx/dxgi/#CreateDXGIFactory2)
* [DXGIGetDebugInterface1](/vendor/directx/dxgi/#DXGIGetDebugInterface1)

### [WCHAR ¶](#WCHAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L30)

```
WCHAR :: u16
```

## Constants

### [CENTER\_MULTISAMPLE\_QUALITY\_PATTERN ¶](#CENTER_MULTISAMPLE_QUALITY_PATTERN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L47)

```
CENTER_MULTISAMPLE_QUALITY_PATTERN :: 0xfffffffe
```

### [CREATE\_FACTORY\_DEBUG ¶](#CREATE_FACTORY_DEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L127)

```
CREATE_FACTORY_DEBUG :: 0x1
```

### [ERROR\_ACCESS\_DENIED ¶](#ERROR_ACCESS_DENIED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1359)

```
ERROR_ACCESS_DENIED :: HRESULT(-2005270485)
```

 

0x887A002B

### [ERROR\_ACCESS\_LOST ¶](#ERROR_ACCESS_LOST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1360)

```
ERROR_ACCESS_LOST :: HRESULT(-2005270490)
```

 

0x887A0026

### [ERROR\_ALREADY\_EXISTS ¶](#ERROR_ALREADY_EXISTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1361)

```
ERROR_ALREADY_EXISTS :: HRESULT(-2005270474)
```

 

0x887A0036

### [ERROR\_CANNOT\_PROTECT\_CONTENT ¶](#ERROR_CANNOT_PROTECT_CONTENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1362)

```
ERROR_CANNOT_PROTECT_CONTENT :: HRESULT(-2005270486)
```

 

0x887A002A

### [ERROR\_DEVICE\_HUNG ¶](#ERROR_DEVICE_HUNG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1363)

```
ERROR_DEVICE_HUNG :: HRESULT(-2005270522)
```

 

0x887A0006

### [ERROR\_DEVICE\_REMOVED ¶](#ERROR_DEVICE_REMOVED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1364)

```
ERROR_DEVICE_REMOVED :: HRESULT(-2005270523)
```

 

0x887A0005

### [ERROR\_DEVICE\_RESET ¶](#ERROR_DEVICE_RESET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1365)

```
ERROR_DEVICE_RESET :: HRESULT(-2005270521)
```

 

0x887A0007

### [ERROR\_DRIVER\_INTERNAL\_ERROR ¶](#ERROR_DRIVER_INTERNAL_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1366)

```
ERROR_DRIVER_INTERNAL_ERROR :: HRESULT(-2005270496)
```

 

0x887A0020

### [ERROR\_FRAME\_STATISTICS\_DISJOINT ¶](#ERROR_FRAME_STATISTICS_DISJOINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1367)

```
ERROR_FRAME_STATISTICS_DISJOINT :: HRESULT(-2005270517)
```

 

0x887A000B

### [ERROR\_GRAPHICS\_VIDPN\_SOURCE\_IN\_USE ¶](#ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1368)

```
ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE :: HRESULT(-2005270516)
```

 

0x887A000C

### [ERROR\_INVALID\_CALL ¶](#ERROR_INVALID_CALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1369)

```
ERROR_INVALID_CALL :: HRESULT(-2005270527)
```

 

0x887A0001

### [ERROR\_MORE\_DATA ¶](#ERROR_MORE_DATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1370)

```
ERROR_MORE_DATA :: HRESULT(-2005270525)
```

 

0x887A0003

### [ERROR\_NAME\_ALREADY\_EXISTS ¶](#ERROR_NAME_ALREADY_EXISTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1371)

```
ERROR_NAME_ALREADY_EXISTS :: HRESULT(-2005270484)
```

 

0x887A002C

### [ERROR\_NONEXCLUSIVE ¶](#ERROR_NONEXCLUSIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1372)

```
ERROR_NONEXCLUSIVE :: HRESULT(-2005270495)
```

 

0x887A0021

### [ERROR\_NOT\_CURRENTLY\_AVAILABLE ¶](#ERROR_NOT_CURRENTLY_AVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1373)

```
ERROR_NOT_CURRENTLY_AVAILABLE :: HRESULT(-2005270494)
```

 

0x887A0022

### [ERROR\_NOT\_FOUND ¶](#ERROR_NOT_FOUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1374)

```
ERROR_NOT_FOUND :: HRESULT(-2005270526)
```

 

0x887A0002

### [ERROR\_REMOTE\_CLIENT\_DISCONNECTED ¶](#ERROR_REMOTE_CLIENT_DISCONNECTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1375)

```
ERROR_REMOTE_CLIENT_DISCONNECTED :: HRESULT(-2005270493)
```

 

0x887A0023

### [ERROR\_REMOTE\_OUTOFMEMORY ¶](#ERROR_REMOTE_OUTOFMEMORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1376)

```
ERROR_REMOTE_OUTOFMEMORY :: HRESULT(-2005270492)
```

 

0x887A0024

### [ERROR\_RESTRICT\_TO\_OUTPUT\_STALE ¶](#ERROR_RESTRICT_TO_OUTPUT_STALE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1377)

```
ERROR_RESTRICT_TO_OUTPUT_STALE :: HRESULT(-2005270487)
```

 

0x887A0029

### [ERROR\_SDK\_COMPONENT\_MISSING ¶](#ERROR_SDK_COMPONENT_MISSING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1378)

```
ERROR_SDK_COMPONENT_MISSING :: HRESULT(-2005270483)
```

 

0x887A002D

### [ERROR\_SESSION\_DISCONNECTED ¶](#ERROR_SESSION_DISCONNECTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1379)

```
ERROR_SESSION_DISCONNECTED :: HRESULT(-2005270488)
```

 

0x887A0028

### [ERROR\_UNSUPPORTED ¶](#ERROR_UNSUPPORTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1380)

```
ERROR_UNSUPPORTED :: HRESULT(-2005270524)
```

 

0x887A0004

### [ERROR\_WAIT\_TIMEOUT ¶](#ERROR_WAIT_TIMEOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1381)

```
ERROR_WAIT_TIMEOUT :: HRESULT(-2005270489)
```

 

0x887A0027

### [ERROR\_WAS\_STILL\_DRAWING ¶](#ERROR_WAS_STILL_DRAWING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1382)

```
ERROR_WAS_STILL_DRAWING :: HRESULT(-2005270518)
```

 

0x887A000A

### [FORMAT\_DEFINED ¶](#FORMAT_DEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L48)

```
FORMAT_DEFINED :: 1
```

### [IAdapter1\_UUID\_STRING ¶](#IAdapter1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L657)

```
IAdapter1_UUID_STRING :: "29038F61-3839-4626-91FD-086879011A05"
```

### [IAdapter2\_UUID\_STRING ¶](#IAdapter2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L918)

```
IAdapter2_UUID_STRING :: "0AA1AE0A-FA0E-4B84-8644-E05FF8E5ACB5"
```

### [IAdapter3\_UUID\_STRING ¶](#IAdapter3_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1150)

```
IAdapter3_UUID_STRING :: "645967A4-1392-4310-A798-8053CE3E93FD"
```

### [IAdapter4\_UUID\_STRING ¶](#IAdapter4_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1281)

```
IAdapter4_UUID_STRING :: "3c8d99d1-4fbf-4181-a82c-af66bf7bd24e"
```

### [IAdapter\_UUID\_STRING ¶](#IAdapter_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L536)

```
IAdapter_UUID_STRING :: "2411E7E1-12AC-4CCF-BD14-9798E8534DC0"
```

### [IDebug1\_UUID\_STRING ¶](#IDebug1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L131)

```
IDebug1_UUID_STRING :: "c5a05f0c-16f2-4adf-9f4d-a8c4d58ac550"
```

### [IDebug\_UUID\_STRING ¶](#IDebug_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L120)

```
IDebug_UUID_STRING :: "119E7452-DE9E-40fe-8806-88F90C12B441"
```

### [IDecodeSwapChain\_UUID\_STRING ¶](#IDecodeSwapChain_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1012)

```
IDecodeSwapChain_UUID_STRING :: "2633066B-4514-4C7A-8FD8-12EA98059D18"
```

### [IDevice1\_UUID\_STRING ¶](#IDevice1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L668)

```
IDevice1_UUID_STRING :: "77DB970F-6276-48BA-BA28-070143B4392C"
```

### [IDevice2\_UUID\_STRING ¶](#IDevice2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L787)

```
IDevice2_UUID_STRING :: "05008617-FBFD-4051-A790-144884B4F6A9"
```

### [IDevice3\_UUID\_STRING ¶](#IDevice3_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L942)

```
IDevice3_UUID_STRING :: "6007896C-3244-4AFD-BF18-A6D3BEDA5023"
```

### [IDevice4\_UUID\_STRING ¶](#IDevice4_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1227)

```
IDevice4_UUID_STRING :: "95B4F95F-D8DA-4CA4-9EE6-3B76D5968A10"
```

### [IDeviceSubObject\_UUID\_STRING ¶](#IDeviceSubObject_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L474)

```
IDeviceSubObject_UUID_STRING :: "3D3E0379-F9DE-4D58-BB6C-18D62992F1A6"
```

### [IDevice\_UUID\_STRING ¶](#IDevice_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L605)

```
IDevice_UUID_STRING :: "54EC77FA-1377-44E6-8C32-88FD5F44C84C"
```

### [IDisplayControl\_UUID\_STRING ¶](#IDisplayControl_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L680)

```
IDisplayControl_UUID_STRING :: "EA9DBF1A-C88E-4486-854A-98AA0138F30C"
```

### [IFactory1\_UUID\_STRING ¶](#IFactory1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L645)

```
IFactory1_UUID_STRING :: "770AAE78-F26F-4DBA-A829-253C83D1B387"
```

### [IFactory2\_UUID\_STRING ¶](#IFactory2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L866)

```
IFactory2_UUID_STRING :: "50C83A1C-E072-4C48-87B0-3630FA36A6D0"
```

### [IFactory3\_UUID\_STRING ¶](#IFactory3_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L990)

```
IFactory3_UUID_STRING :: "25483823-CD46-4C7D-86CA-47AA95B837BD"
```

### [IFactory4\_UUID\_STRING ¶](#IFactory4_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1126)

```
IFactory4_UUID_STRING :: "1BC6EA02-EF36-464F-BF0C-21CA39E5168A"
```

### [IFactory5\_UUID\_STRING ¶](#IFactory5_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1244)

```
IFactory5_UUID_STRING :: "7632e1f5-ee65-4dca-87fd-84cd75f8838d"
```

### [IFactory6\_UUID\_STRING ¶](#IFactory6_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1336)

```
IFactory6_UUID_STRING :: "c1b6694f-ff09-44a9-b03c-77900a0a1d17"
```

### [IFactory7\_UUID\_STRING ¶](#IFactory7_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1347)

```
IFactory7_UUID_STRING :: "a4966eed-76db-44da-84c1-ee9a7afb20a8"
```

### [IFactoryMedia\_UUID\_STRING ¶](#IFactoryMedia_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1031)

```
IFactoryMedia_UUID_STRING :: "41E7D1F2-A591-4F7B-A2E5-FA9C843E1C12"
```

### [IFactory\_UUID\_STRING ¶](#IFactory_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L591)

```
IFactory_UUID_STRING :: "7B7166EC-21C7-44AE-B21A-C9AE321AE369"
```

### [IInfoQueue\_UUID\_STRING ¶](#IInfoQueue_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L73)

```
IInfoQueue_UUID_STRING :: "D67441C7-672A-476f-9E82-CD55B44949CE"
```

### [IKeyedMutex\_UUID\_STRING ¶](#IKeyedMutex_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L499)

```
IKeyedMutex_UUID_STRING :: "9D8E1289-D7B3-465F-8126-250E349AF85D"
```

### [INFO\_QUEUE\_DEFAULT\_MESSAGE\_COUNT\_LIMIT ¶](#INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L70)

```
INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT :: 1024
```

### [IObject\_UUID\_STRING ¶](#IObject_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L460)

```
IObject_UUID_STRING :: "AEC22FB8-76F3-4639-9BE0-28EB43A67A2E"
```

### [IOutput1\_UUID\_STRING ¶](#IOutput1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L929)

```
IOutput1_UUID_STRING :: "00CDDEA8-939B-4B83-A340-A685226666CC"
```

### [IOutput2\_UUID\_STRING ¶](#IOutput2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L979)

```
IOutput2_UUID_STRING :: "595E39D1-2724-4663-99B1-DA969DE28364"
```

### [IOutput3\_UUID\_STRING ¶](#IOutput3_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1079)

```
IOutput3_UUID_STRING :: "8A6BB301-7E7E-41F4-A8E0-5B32F7F99B18"
```

### [IOutput4\_UUID\_STRING ¶](#IOutput4_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1115)

```
IOutput4_UUID_STRING :: "DC7DCA35-2196-414D-9F53-617884032A60"
```

### [IOutput5\_UUID\_STRING ¶](#IOutput5_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1171)

```
IOutput5_UUID_STRING :: "80A07424-AB52-42EB-833C-0C42FD282D98"
```

### [IOutput6\_UUID\_STRING ¶](#IOutput6_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1317)

```
IOutput6_UUID_STRING :: "068346e8-aaec-4b84-add7-137f513f77a1"
```

### [IOutputDuplication\_UUID\_STRING ¶](#IOutputDuplication_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L733)

```
IOutputDuplication_UUID_STRING :: "191CFAC3-A341-470D-B26E-A864F428319C"
```

### [IOutput\_UUID\_STRING ¶](#IOutput_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L549)

```
IOutput_UUID_STRING :: "AE02EEDB-C735-4690-8D52-5A8DC20213AA"
```

### [IResource1\_UUID\_STRING ¶](#IResource1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L769)

```
IResource1_UUID_STRING :: "30961379-4609-4A41-998E-54FE567EE0C1"
```

### [IResource\_UUID\_STRING ¶](#IResource_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L485)

```
IResource_UUID_STRING :: "035F3AB4-482E-4E50-B41F-8A7F8BD8960B"
```

### [ISurface1\_UUID\_STRING ¶](#ISurface1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L524)

```
ISurface1_UUID_STRING :: "4AE63092-6327-4C1B-80AE-BFE12EA32B86"
```

### [ISurface2\_UUID\_STRING ¶](#ISurface2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L758)

```
ISurface2_UUID_STRING :: "ABA496DD-B617-4CB8-A866-BC44D7EB1FA2"
```

### [ISurface\_UUID\_STRING ¶](#ISurface_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L511)

```
ISurface_UUID_STRING :: "CAFCB56C-6AC3-4889-BF47-9E23BBD260EC"
```

### [ISwapChain1\_UUID\_STRING ¶](#ISwapChain1_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L845)

```
ISwapChain1_UUID_STRING :: "790A45F7-0D42-4876-983A-0A55CFE6F4AA"
```

### [ISwapChain2\_UUID\_STRING ¶](#ISwapChain2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L962)

```
ISwapChain2_UUID_STRING :: "A8BE2AC4-199F-4946-B331-79599FB98DE7"
```

### [ISwapChain3\_UUID\_STRING ¶](#ISwapChain3_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1096)

```
ISwapChain3_UUID_STRING :: "94D99BDB-F1F8-4AB0-B236-7DA0170EDAB1"
```

### [ISwapChain4\_UUID\_STRING ¶](#ISwapChain4_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1204)

```
ISwapChain4_UUID_STRING :: "3D585D5A-BD4A-489E-B1F4-3DBCB6452FFB"
```

### [ISwapChainMedia\_UUID\_STRING ¶](#ISwapChainMedia_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1060)

```
ISwapChainMedia_UUID_STRING :: "DD95B90B-F05F-4F6A-BD65-25BFB264BD84"
```

### [ISwapChain\_UUID\_STRING ¶](#ISwapChain_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L571)

```
ISwapChain_UUID_STRING :: "310D36A0-D2E7-4C0A-AA04-6A9D23B8886A"
```

### [MAX\_SWAP\_CHAIN\_BUFFERS ¶](#MAX_SWAP_CHAIN_BUFFERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L93)

```
MAX_SWAP_CHAIN_BUFFERS :: 16
```

### [MWA\_VALID ¶](#MWA_VALID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L114)

```
MWA_VALID :: MWA{.NO_WINDOW_CHANGES, .NO_ALT_ENTER, .NO_PRINT_SCREEN}
```

### [SHARED\_RESOURCE\_READ ¶](#SHARED_RESOURCE_READ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L125)

```
SHARED_RESOURCE_READ :: 0x80000000
```

### [SHARED\_RESOURCE\_WRITE ¶](#SHARED_RESOURCE_WRITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L126)

```
SHARED_RESOURCE_WRITE :: 1
```

### [STANDARD\_MULTISAMPLE\_QUALITY\_PATTERN ¶](#STANDARD_MULTISAMPLE_QUALITY_PATTERN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L46)

```
STANDARD_MULTISAMPLE_QUALITY_PATTERN :: 0xffffffff
```

### [STATUS\_MODE\_CHANGED ¶](#STATUS_MODE_CHANGED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1385)

```
STATUS_MODE_CHANGED :: HRESULT(142213127)
```

 

0x087A0007

### [STATUS\_MODE\_CHANGE\_IN\_PROGRESS ¶](#STATUS_MODE_CHANGE_IN_PROGRESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1386)

```
STATUS_MODE_CHANGE_IN_PROGRESS :: HRESULT(142213128)
```

 

0x087A0008

### [STATUS\_OCCLUDED ¶](#STATUS_OCCLUDED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1384)

```
STATUS_OCCLUDED :: HRESULT(142213121)
```

 

0x087A0001

## Variables

### [DEBUG\_ALL ¶](#DEBUG_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L20)

```
DEBUG_ALL: sys_windows.GUID = …
```

### [DEBUG\_APP ¶](#DEBUG_APP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L23)

```
DEBUG_APP: sys_windows.GUID = …
```

### [DEBUG\_DX ¶](#DEBUG_DX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L21)

```
DEBUG_DX: sys_windows.GUID = …
```

### [DEBUG\_DXGI ¶](#DEBUG_DXGI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L22)

```
DEBUG_DXGI: sys_windows.GUID = …
```

### [IAdapter1\_UUID ¶](#IAdapter1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L658)

```
IAdapter1_UUID: ^sys_windows.GUID = …
```

### [IAdapter2\_UUID ¶](#IAdapter2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L919)

```
IAdapter2_UUID: ^sys_windows.GUID = …
```

### [IAdapter3\_UUID ¶](#IAdapter3_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1151)

```
IAdapter3_UUID: ^sys_windows.GUID = …
```

### [IAdapter4\_UUID ¶](#IAdapter4_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1282)

```
IAdapter4_UUID: ^sys_windows.GUID = …
```

### [IAdapter\_UUID ¶](#IAdapter_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L537)

```
IAdapter_UUID: ^sys_windows.GUID = …
```

### [IDebug1\_UUID ¶](#IDebug1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L132)

```
IDebug1_UUID: ^sys_windows.GUID = …
```

### [IDebug\_UUID ¶](#IDebug_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L121)

```
IDebug_UUID: ^sys_windows.GUID = …
```

### [IDecodeSwapChain\_UUID ¶](#IDecodeSwapChain_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1013)

```
IDecodeSwapChain_UUID: ^sys_windows.GUID = …
```

### [IDevice1\_UUID ¶](#IDevice1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L669)

```
IDevice1_UUID: ^sys_windows.GUID = …
```

### [IDevice2\_UUID ¶](#IDevice2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L788)

```
IDevice2_UUID: ^sys_windows.GUID = …
```

### [IDevice3\_UUID ¶](#IDevice3_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L943)

```
IDevice3_UUID: ^sys_windows.GUID = …
```

### [IDevice4\_UUID ¶](#IDevice4_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1228)

```
IDevice4_UUID: ^sys_windows.GUID = …
```

### [IDeviceSubObject\_UUID ¶](#IDeviceSubObject_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L475)

```
IDeviceSubObject_UUID: ^sys_windows.GUID = …
```

### [IDevice\_UUID ¶](#IDevice_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L606)

```
IDevice_UUID: ^sys_windows.GUID = …
```

### [IDisplayControl\_UUID ¶](#IDisplayControl_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L681)

```
IDisplayControl_UUID: ^sys_windows.GUID = …
```

### [IFactory1\_UUID ¶](#IFactory1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L646)

```
IFactory1_UUID: ^sys_windows.GUID = …
```

### [IFactory2\_UUID ¶](#IFactory2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L867)

```
IFactory2_UUID: ^sys_windows.GUID = …
```

### [IFactory3\_UUID ¶](#IFactory3_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L991)

```
IFactory3_UUID: ^sys_windows.GUID = …
```

### [IFactory4\_UUID ¶](#IFactory4_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1127)

```
IFactory4_UUID: ^sys_windows.GUID = …
```

### [IFactory5\_UUID ¶](#IFactory5_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1245)

```
IFactory5_UUID: ^sys_windows.GUID = …
```

### [IFactory6\_UUID ¶](#IFactory6_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1337)

```
IFactory6_UUID: ^sys_windows.GUID = …
```

### [IFactory7\_UUID ¶](#IFactory7_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1348)

```
IFactory7_UUID: ^sys_windows.GUID = …
```

### [IFactoryMedia\_UUID ¶](#IFactoryMedia_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1032)

```
IFactoryMedia_UUID: ^sys_windows.GUID = …
```

### [IFactory\_UUID ¶](#IFactory_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L592)

```
IFactory_UUID: ^sys_windows.GUID = …
```

### [IInfoQueue\_UUID ¶](#IInfoQueue_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin#L74)

```
IInfoQueue_UUID: ^sys_windows.GUID = …
```

### [IKeyedMutex\_UUID ¶](#IKeyedMutex_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L500)

```
IKeyedMutex_UUID: ^sys_windows.GUID = …
```

### [IObject\_UUID ¶](#IObject_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L461)

```
IObject_UUID: ^sys_windows.GUID = …
```

### [IOutput1\_UUID ¶](#IOutput1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L930)

```
IOutput1_UUID: ^sys_windows.GUID = …
```

### [IOutput2\_UUID ¶](#IOutput2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L980)

```
IOutput2_UUID: ^sys_windows.GUID = …
```

### [IOutput3\_UUID ¶](#IOutput3_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1080)

```
IOutput3_UUID: ^sys_windows.GUID = …
```

### [IOutput4\_UUID ¶](#IOutput4_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1116)

```
IOutput4_UUID: ^sys_windows.GUID = …
```

### [IOutput5\_UUID ¶](#IOutput5_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1172)

```
IOutput5_UUID: ^sys_windows.GUID = …
```

### [IOutput6\_UUID ¶](#IOutput6_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1318)

```
IOutput6_UUID: ^sys_windows.GUID = …
```

### [IOutputDuplication\_UUID ¶](#IOutputDuplication_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L734)

```
IOutputDuplication_UUID: ^sys_windows.GUID = …
```

### [IOutput\_UUID ¶](#IOutput_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L550)

```
IOutput_UUID: ^sys_windows.GUID = …
```

### [IResource1\_UUID ¶](#IResource1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L770)

```
IResource1_UUID: ^sys_windows.GUID = …
```

### [IResource\_UUID ¶](#IResource_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L486)

```
IResource_UUID: ^sys_windows.GUID = …
```

### [ISurface1\_UUID ¶](#ISurface1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L525)

```
ISurface1_UUID: ^sys_windows.GUID = …
```

### [ISurface2\_UUID ¶](#ISurface2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L759)

```
ISurface2_UUID: ^sys_windows.GUID = …
```

### [ISurface\_UUID ¶](#ISurface_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L512)

```
ISurface_UUID: ^sys_windows.GUID = …
```

### [ISwapChain1\_UUID ¶](#ISwapChain1_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L846)

```
ISwapChain1_UUID: ^sys_windows.GUID = …
```

### [ISwapChain2\_UUID ¶](#ISwapChain2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L963)

```
ISwapChain2_UUID: ^sys_windows.GUID = …
```

### [ISwapChain3\_UUID ¶](#ISwapChain3_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1097)

```
ISwapChain3_UUID: ^sys_windows.GUID = …
```

### [ISwapChain4\_UUID ¶](#ISwapChain4_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1205)

```
ISwapChain4_UUID: ^sys_windows.GUID = …
```

### [ISwapChainMedia\_UUID ¶](#ISwapChainMedia_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L1061)

```
ISwapChainMedia_UUID: ^sys_windows.GUID = …
```

### [ISwapChain\_UUID ¶](#ISwapChain_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L572)

```
ISwapChain_UUID: ^sys_windows.GUID = …
```

## Procedures

### [CreateDXGIFactory ¶](#CreateDXGIFactory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L39)

```
CreateDXGIFactory :: proc "stdcall" (riid: ^sys_windows.GUID, ppFactory: ^rawptr) -> sys_windows.HRESULT ---
```

### [CreateDXGIFactory1 ¶](#CreateDXGIFactory1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L40)

```
CreateDXGIFactory1 :: proc "stdcall" (riid: ^sys_windows.GUID, ppFactory: ^rawptr) -> sys_windows.HRESULT ---
```

### [CreateDXGIFactory2 ¶](#CreateDXGIFactory2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L41)

```
CreateDXGIFactory2 :: proc "stdcall" (Flags: CREATE_FACTORY, riid: ^sys_windows.GUID, ppFactory: ^rawptr) -> sys_windows.HRESULT ---
```

### [DXGIGetDebugInterface1 ¶](#DXGIGetDebugInterface1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L42)

```
DXGIGetDebugInterface1 :: proc "stdcall" (Flags: u32, riid: ^sys_windows.GUID, pDebug: ^rawptr) -> sys_windows.HRESULT ---
```

### [DeclareAdapterRemovalSupport ¶](#DeclareAdapterRemovalSupport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin#L43)

```
DeclareAdapterRemovalSupport :: proc "stdcall" () -> sys_windows.HRESULT ---
```

## Procedure Groups

This section is empty.

## Source Files

* [dxgi.odin](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgi.odin)
* [dxgidebug.odin](https://github.com/odin-lang/Odin/tree/master/vendor/directx/dxgi/dxgidebug.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.923298500 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [ADAPTER\_DESC](#ADAPTER_DESC)
    + [ADAPTER\_DESC1](#ADAPTER_DESC1)
    + [ADAPTER\_DESC2](#ADAPTER_DESC2)
    + [ADAPTER\_DESC3](#ADAPTER_DESC3)
    + [ADAPTER\_FLAG](#ADAPTER_FLAG)
    + [ADAPTER\_FLAG3](#ADAPTER_FLAG3)
    + [ADAPTER\_FLAGS](#ADAPTER_FLAGS)
    + [ADAPTER\_FLAGS3](#ADAPTER_FLAGS3)
    + [ALPHA\_MODE](#ALPHA_MODE)
    + [BOOL](#BOOL)
    + [COLOR\_SPACE\_TYPE](#COLOR_SPACE_TYPE)
    + [COMPUTE\_PREEMPTION\_GRANULARITY](#COMPUTE_PREEMPTION_GRANULARITY)
    + [CPU\_ACCESS](#CPU_ACCESS)
    + [CREATE\_FACTORY](#CREATE_FACTORY)
    + [CREATE\_FACTORY\_FLAG](#CREATE_FACTORY_FLAG)
    + [D3DCOLORVALUE](#D3DCOLORVALUE)
    + [DEBUG\_ID](#DEBUG_ID)
    + [DEBUG\_RLO\_FLAGS](#DEBUG_RLO_FLAGS)
    + [DECODE\_SWAP\_CHAIN\_DESC](#DECODE_SWAP_CHAIN_DESC)
    + [DISPLAY\_COLOR\_SPACE](#DISPLAY_COLOR_SPACE)
    + [DWORD](#DWORD)
    + [ENUM\_MODE](#ENUM_MODE)
    + [ENUM\_MODES](#ENUM_MODES)
    + [FEATURE](#FEATURE)
    + [FORMAT](#FORMAT)
    + [FRAME\_PRESENTATION\_MODE](#FRAME_PRESENTATION_MODE)
    + [FRAME\_STATISTICS](#FRAME_STATISTICS)
    + [FRAME\_STATISTICS\_MEDIA](#FRAME_STATISTICS_MEDIA)
    + [GAMMA\_CONTROL](#GAMMA_CONTROL)
    + [GAMMA\_CONTROL\_CAPABILITIES](#GAMMA_CONTROL_CAPABILITIES)
    + [GPU\_PREFERENCE](#GPU_PREFERENCE)
    + [GRAPHICS\_PREEMPTION\_GRANULARITY](#GRAPHICS_PREEMPTION_GRANULARITY)
    + [GUID](#GUID)
    + [HANDLE](#HANDLE)
    + [HARDWARE\_COMPOSITION\_SUPPORT\_FLAG](#HARDWARE_COMPOSITION_SUPPORT_FLAG)
    + [HARDWARE\_COMPOSITION\_SUPPORT\_FLAGS](#HARDWARE_COMPOSITION_SUPPORT_FLAGS)
    + [HDC](#HDC)
    + [HDR\_METADATA\_HDR10](#HDR_METADATA_HDR10)
    + [HDR\_METADATA\_HDR10PLUS](#HDR_METADATA_HDR10PLUS)
    + [HDR\_METADATA\_TYPE](#HDR_METADATA_TYPE)
    + [HMODULE](#HMODULE)
    + [HMONITOR](#HMONITOR)
    + [HRESULT](#HRESULT)
    + [HWND](#HWND)
    + [IAdapter](#IAdapter)
    + [IAdapter1](#IAdapter1)
    + [IAdapter1\_VTable](#IAdapter1_VTable)
    + [IAdapter2](#IAdapter2)
    + [IAdapter2\_VTable](#IAdapter2_VTable)
    + [IAdapter3](#IAdapter3)
    + [IAdapter3\_VTable](#IAdapter3_VTable)
    + [IAdapter4](#IAdapter4)
    + [IAdapter4\_VTable](#IAdapter4_VTable)
    + [IAdapter\_VTable](#IAdapter_VTable)
    + [IDebug](#IDebug)
    + [IDebug1](#IDebug1)
    + [IDebug1\_VTable](#IDebug1_VTable)
    + [IDebug\_VTable](#IDebug_VTable)
    + [IDecodeSwapChain](#IDecodeSwapChain)
    + [IDecodeSwapChain\_VTable](#IDecodeSwapChain_VTable)
    + [IDevice](#IDevice)
    + [IDevice1](#IDevice1)
    + [IDevice1\_VTable](#IDevice1_VTable)
    + [IDevice2](#IDevice2)
    + [IDevice2\_VTable](#IDevice2_VTable)
    + [IDevice3](#IDevice3)
    + [IDevice3\_VTable](#IDevice3_VTable)
    + [IDevice4](#IDevice4)
    + [IDevice4\_VTable](#IDevice4_VTable)
    + [IDeviceSubObject](#IDeviceSubObject)
    + [IDeviceSubObject\_VTable](#IDeviceSubObject_VTable)
    + [IDevice\_VTable](#IDevice_VTable)
    + [IDisplayControl](#IDisplayControl)
    + [IDisplayControl\_VTable](#IDisplayControl_VTable)
    + [IFactory](#IFactory)
    + [IFactory1](#IFactory1)
    + [IFactory1\_VTable](#IFactory1_VTable)
    + [IFactory2](#IFactory2)
    + [IFactory2\_VTable](#IFactory2_VTable)
    + [IFactory3](#IFactory3)
    + [IFactory3\_VTable](#IFactory3_VTable)
    + [IFactory4](#IFactory4)
    + [IFactory4\_VTable](#IFactory4_VTable)
    + [IFactory5](#IFactory5)
    + [IFactory5\_VTable](#IFactory5_VTable)
    + [IFactory6](#IFactory6)
    + [IFactory6\_VTable](#IFactory6_VTable)
    + [IFactory7](#IFactory7)
    + [IFactory7\_VTable](#IFactory7_VTable)
    + [IFactoryMedia](#IFactoryMedia)
    + [IFactoryMedia\_VTable](#IFactoryMedia_VTable)
    + [IFactory\_VTable](#IFactory_VTable)
    + [IID](#IID)
    + [IInfoQueue](#IInfoQueue)
    + [IInfoQueue\_VTable](#IInfoQueue_VTable)
    + [IKeyedMutex](#IKeyedMutex)
    + [IKeyedMutex\_VTable](#IKeyedMutex_VTable)
    + [INFO\_QUEUE\_FILTER](#INFO_QUEUE_FILTER)
    + [INFO\_QUEUE\_FILTER\_DESC](#INFO_QUEUE_FILTER_DESC)
    + [INFO\_QUEUE\_MESSAGE](#INFO_QUEUE_MESSAGE)
    + [INFO\_QUEUE\_MESSAGE\_CATEGORY](#INFO_QUEUE_MESSAGE_CATEGORY)
    + [INFO\_QUEUE\_MESSAGE\_ID](#INFO_QUEUE_MESSAGE_ID)
    + [INFO\_QUEUE\_MESSAGE\_SEVERITY](#INFO_QUEUE_MESSAGE_SEVERITY)
    + [INT](#INT)
    + [IObject](#IObject)
    + [IObject\_VTable](#IObject_VTable)
    + [IOutput](#IOutput)
    + [IOutput1](#IOutput1)
    + [IOutput1\_VTable](#IOutput1_VTable)
    + [IOutput2](#IOutput2)
    + [IOutput2\_VTable](#IOutput2_VTable)
    + [IOutput3](#IOutput3)
    + [IOutput3\_VTable](#IOutput3_VTable)
    + [IOutput4](#IOutput4)
    + [IOutput4\_VTable](#IOutput4_VTable)
    + [IOutput5](#IOutput5)
    + [IOutput5\_VTable](#IOutput5_VTable)
    + [IOutput6](#IOutput6)
    + [IOutput6\_VTable](#IOutput6_VTable)
    + [IOutputDuplication](#IOutputDuplication)
    + [IOutputDuplication\_VTable](#IOutputDuplication_VTable)
    + [IOutput\_VTable](#IOutput_VTable)
    + [IResource](#IResource)
    + [IResource1](#IResource1)
    + [IResource1\_VTable](#IResource1_VTable)
    + [IResource\_VTable](#IResource_VTable)
    + [ISurface](#ISurface)
    + [ISurface1](#ISurface1)
    + [ISurface1\_VTable](#ISurface1_VTable)
    + [ISurface2](#ISurface2)
    + [ISurface2\_VTable](#ISurface2_VTable)
    + [ISurface\_VTable](#ISurface_VTable)
    + [ISwapChain](#ISwapChain)
    + [ISwapChain1](#ISwapChain1)
    + [ISwapChain1\_VTable](#ISwapChain1_VTable)
    + [ISwapChain2](#ISwapChain2)
    + [ISwapChain2\_VTable](#ISwapChain2_VTable)
    + [ISwapChain3](#ISwapChain3)
    + [ISwapChain3\_VTable](#ISwapChain3_VTable)
    + [ISwapChain4](#ISwapChain4)
    + [ISwapChain4\_VTable](#ISwapChain4_VTable)
    + [ISwapChainMedia](#ISwapChainMedia)
    + [ISwapChainMedia\_VTable](#ISwapChainMedia_VTable)
    + [ISwapChain\_VTable](#ISwapChain_VTable)
    + [IUnknown](#IUnknown)
    + [IUnknown\_VTable](#IUnknown_VTable)
    + [JPEG\_AC\_HUFFMAN\_TABLE](#JPEG_AC_HUFFMAN_TABLE)
    + [JPEG\_DC\_HUFFMAN\_TABLE](#JPEG_DC_HUFFMAN_TABLE)
    + [JPEG\_QUANTIZATION\_TABLE](#JPEG_QUANTIZATION_TABLE)
    + [LARGE\_INTEGER](#LARGE_INTEGER)
    + [LONG](#LONG)
    + [LPCSTR](#LPCSTR)
    + [LPUNKNOWN](#LPUNKNOWN)
    + [LUID](#LUID)
    + [MAP](#MAP)
    + [MAPPED\_RECT](#MAPPED_RECT)
    + [MAP\_FLAG](#MAP_FLAG)
    + [MATRIX\_3X2\_F](#MATRIX_3X2_F)
    + [MEMORY\_SEGMENT\_GROUP](#MEMORY_SEGMENT_GROUP)
    + [MODE\_DESC](#MODE_DESC)
    + [MODE\_DESC1](#MODE_DESC1)
    + [MODE\_ROTATION](#MODE_ROTATION)
    + [MODE\_SCALING](#MODE_SCALING)
    + [MODE\_SCANLINE\_ORDER](#MODE_SCANLINE_ORDER)
    + [MULTIPLANE\_OVERLAY\_YCbCr](#MULTIPLANE_OVERLAY_YCbCr)
    + [MULTIPLANE\_OVERLAY\_YCbCr\_FLAGS](#MULTIPLANE_OVERLAY_YCbCr_FLAGS)
    + [MWA](#MWA)
    + [MWA\_FLAG](#MWA_FLAG)
    + [OFFER\_RESOURCE\_FLAG](#OFFER_RESOURCE_FLAG)
    + [OFFER\_RESOURCE\_FLAGS](#OFFER_RESOURCE_FLAGS)
    + [OFFER\_RESOURCE\_PRIORITY](#OFFER_RESOURCE_PRIORITY)
    + [OUTDUPL\_DESC](#OUTDUPL_DESC)
    + [OUTDUPL\_FLAG](#OUTDUPL_FLAG)
    + [OUTDUPL\_FRAME\_INFO](#OUTDUPL_FRAME_INFO)
    + [OUTDUPL\_MOVE\_RECT](#OUTDUPL_MOVE_RECT)
    + [OUTDUPL\_POINTER\_POSITION](#OUTDUPL_POINTER_POSITION)
    + [OUTDUPL\_POINTER\_SHAPE\_INFO](#OUTDUPL_POINTER_SHAPE_INFO)
    + [OUTDUPL\_POINTER\_SHAPE\_TYPE](#OUTDUPL_POINTER_SHAPE_TYPE)
    + [OUTPUT\_DESC](#OUTPUT_DESC)
    + [OUTPUT\_DESC1](#OUTPUT_DESC1)
    + [OVERLAY\_COLOR\_SPACE\_SUPPORT](#OVERLAY_COLOR_SPACE_SUPPORT)
    + [OVERLAY\_COLOR\_SPACE\_SUPPORT\_FLAG](#OVERLAY_COLOR_SPACE_SUPPORT_FLAG)
    + [OVERLAY\_SUPPORT](#OVERLAY_SUPPORT)
    + [OVERLAY\_SUPPORT\_FLAG](#OVERLAY_SUPPORT_FLAG)
    + [POINT](#POINT)
    + [PRESENT](#PRESENT)
    + [PRESENT\_FLAG](#PRESENT_FLAG)
    + [PRESENT\_PARAMETERS](#PRESENT_PARAMETERS)
    + [QUERY\_VIDEO\_MEMORY\_INFO](#QUERY_VIDEO_MEMORY_INFO)
    + [RATIONAL](#RATIONAL)
    + [RECLAIM\_RESOURCE\_RESULTS](#RECLAIM_RESOURCE_RESULTS)
    + [RECT](#RECT)
    + [RESIDENCY](#RESIDENCY)
    + [RESOURCE\_PRIORITY](#RESOURCE_PRIORITY)
    + [RGB](#RGB)
    + [RGBA](#RGBA)
    + [SAMPLE\_DESC](#SAMPLE_DESC)
    + [SCALING](#SCALING)
    + [SHARED\_RESOURCE](#SHARED_RESOURCE)
    + [SHARED\_RESOURCE\_RW](#SHARED_RESOURCE_RW)
    + [SHARED\_RESOURCE\_RW\_FLAG](#SHARED_RESOURCE_RW_FLAG)
    + [SIZE](#SIZE)
    + [SIZE\_T](#SIZE_T)
    + [SURFACE\_DESC](#SURFACE_DESC)
    + [SWAP\_CHAIN](#SWAP_CHAIN)
    + [SWAP\_CHAIN\_COLOR\_SPACE\_SUPPORT](#SWAP_CHAIN_COLOR_SPACE_SUPPORT)
    + [SWAP\_CHAIN\_COLOR\_SPACE\_SUPPORT\_FLAG](#SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG)
    + [SWAP\_CHAIN\_DESC](#SWAP_CHAIN_DESC)
    + [SWAP\_CHAIN\_DESC1](#SWAP_CHAIN_DESC1)
    + [SWAP\_CHAIN\_FLAG](#SWAP_CHAIN_FLAG)
    + [SWAP\_CHAIN\_FULLSCREEN\_DESC](#SWAP_CHAIN_FULLSCREEN_DESC)
    + [SWAP\_EFFECT](#SWAP_EFFECT)
    + [UINT](#UINT)
    + [UINT64](#UINT64)
    + [ULONG](#ULONG)
    + [USAGE](#USAGE)
    + [USAGE\_FLAG](#USAGE_FLAG)
    + [UUID](#UUID)
    + [WCHAR](#WCHAR)
  * [Constants](#pkg-Constants)
    + [CENTER\_MULTISAMPLE\_QUALITY\_PATTERN](#CENTER_MULTISAMPLE_QUALITY_PATTERN)
    + [CREATE\_FACTORY\_DEBUG](#CREATE_FACTORY_DEBUG)
    + [ERROR\_ACCESS\_DENIED](#ERROR_ACCESS_DENIED)
    + [ERROR\_ACCESS\_LOST](#ERROR_ACCESS_LOST)
    + [ERROR\_ALREADY\_EXISTS](#ERROR_ALREADY_EXISTS)
    + [ERROR\_CANNOT\_PROTECT\_CONTENT](#ERROR_CANNOT_PROTECT_CONTENT)
    + [ERROR\_DEVICE\_HUNG](#ERROR_DEVICE_HUNG)
    + [ERROR\_DEVICE\_REMOVED](#ERROR_DEVICE_REMOVED)
    + [ERROR\_DEVICE\_RESET](#ERROR_DEVICE_RESET)
    + [ERROR\_DRIVER\_INTERNAL\_ERROR](#ERROR_DRIVER_INTERNAL_ERROR)
    + [ERROR\_FRAME\_STATISTICS\_DISJOINT](#ERROR_FRAME_STATISTICS_DISJOINT)
    + [ERROR\_GRAPHICS\_VIDPN\_SOURCE\_IN\_USE](#ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE)
    + [ERROR\_INVALID\_CALL](#ERROR_INVALID_CALL)
    + [ERROR\_MORE\_DATA](#ERROR_MORE_DATA)
    + [ERROR\_NAME\_ALREADY\_EXISTS](#ERROR_NAME_ALREADY_EXISTS)
    + [ERROR\_NONEXCLUSIVE](#ERROR_NONEXCLUSIVE)
    + [ERROR\_NOT\_CURRENTLY\_AVAILABLE](#ERROR_NOT_CURRENTLY_AVAILABLE)
    + [ERROR\_NOT\_FOUND](#ERROR_NOT_FOUND)
    + [ERROR\_REMOTE\_CLIENT\_DISCONNECTED](#ERROR_REMOTE_CLIENT_DISCONNECTED)
    + [ERROR\_REMOTE\_OUTOFMEMORY](#ERROR_REMOTE_OUTOFMEMORY)
    + [ERROR\_RESTRICT\_TO\_OUTPUT\_STALE](#ERROR_RESTRICT_TO_OUTPUT_STALE)
    + [ERROR\_SDK\_COMPONENT\_MISSING](#ERROR_SDK_COMPONENT_MISSING)
    + [ERROR\_SESSION\_DISCONNECTED](#ERROR_SESSION_DISCONNECTED)
    + [ERROR\_UNSUPPORTED](#ERROR_UNSUPPORTED)
    + [ERROR\_WAIT\_TIMEOUT](#ERROR_WAIT_TIMEOUT)
    + [ERROR\_WAS\_STILL\_DRAWING](#ERROR_WAS_STILL_DRAWING)
    + [FORMAT\_DEFINED](#FORMAT_DEFINED)
    + [IAdapter1\_UUID\_STRING](#IAdapter1_UUID_STRING)
    + [IAdapter2\_UUID\_STRING](#IAdapter2_UUID_STRING)
    + [IAdapter3\_UUID\_STRING](#IAdapter3_UUID_STRING)
    + [IAdapter4\_UUID\_STRING](#IAdapter4_UUID_STRING)
    + [IAdapter\_UUID\_STRING](#IAdapter_UUID_STRING)
    + [IDebug1\_UUID\_STRING](#IDebug1_UUID_STRING)
    + [IDebug\_UUID\_STRING](#IDebug_UUID_STRING)
    + [IDecodeSwapChain\_UUID\_STRING](#IDecodeSwapChain_UUID_STRING)
    + [IDevice1\_UUID\_STRING](#IDevice1_UUID_STRING)
    + [IDevice2\_UUID\_STRING](#IDevice2_UUID_STRING)
    + [IDevice3\_UUID\_STRING](#IDevice3_UUID_STRING)
    + [IDevice4\_UUID\_STRING](#IDevice4_UUID_STRING)
    + [IDeviceSubObject\_UUID\_STRING](#IDeviceSubObject_UUID_STRING)
    + [IDevice\_UUID\_STRING](#IDevice_UUID_STRING)
    + [IDisplayControl\_UUID\_STRING](#IDisplayControl_UUID_STRING)
    + [IFactory1\_UUID\_STRING](#IFactory1_UUID_STRING)
    + [IFactory2\_UUID\_STRING](#IFactory2_UUID_STRING)
    + [IFactory3\_UUID\_STRING](#IFactory3_UUID_STRING)
    + [IFactory4\_UUID\_STRING](#IFactory4_UUID_STRING)
    + [IFactory5\_UUID\_STRING](#IFactory5_UUID_STRING)
    + [IFactory6\_UUID\_STRING](#IFactory6_UUID_STRING)
    + [IFactory7\_UUID\_STRING](#IFactory7_UUID_STRING)
    + [IFactoryMedia\_UUID\_STRING](#IFactoryMedia_UUID_STRING)
    + [IFactory\_UUID\_STRING](#IFactory_UUID_STRING)
    + [IInfoQueue\_UUID\_STRING](#IInfoQueue_UUID_STRING)
    + [IKeyedMutex\_UUID\_STRING](#IKeyedMutex_UUID_STRING)
    + [INFO\_QUEUE\_DEFAULT\_MESSAGE\_COUNT\_LIMIT](#INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT)
    + [IObject\_UUID\_STRING](#IObject_UUID_STRING)
    + [IOutput1\_UUID\_STRING](#IOutput1_UUID_STRING)
    + [IOutput2\_UUID\_STRING](#IOutput2_UUID_STRING)
    + [IOutput3\_UUID\_STRING](#IOutput3_UUID_STRING)
    + [IOutput4\_UUID\_STRING](#IOutput4_UUID_STRING)
    + [IOutput5\_UUID\_STRING](#IOutput5_UUID_STRING)
    + [IOutput6\_UUID\_STRING](#IOutput6_UUID_STRING)
    + [IOutputDuplication\_UUID\_STRING](#IOutputDuplication_UUID_STRING)
    + [IOutput\_UUID\_STRING](#IOutput_UUID_STRING)
    + [IResource1\_UUID\_STRING](#IResource1_UUID_STRING)
    + [IResource\_UUID\_STRING](#IResource_UUID_STRING)
    + [ISurface1\_UUID\_STRING](#ISurface1_UUID_STRING)
    + [ISurface2\_UUID\_STRING](#ISurface2_UUID_STRING)
    + [ISurface\_UUID\_STRING](#ISurface_UUID_STRING)
    + [ISwapChain1\_UUID\_STRING](#ISwapChain1_UUID_STRING)
    + [ISwapChain2\_UUID\_STRING](#ISwapChain2_UUID_STRING)
    + [ISwapChain3\_UUID\_STRING](#ISwapChain3_UUID_STRING)
    + [ISwapChain4\_UUID\_STRING](#ISwapChain4_UUID_STRING)
    + [ISwapChainMedia\_UUID\_STRING](#ISwapChainMedia_UUID_STRING)
    + [ISwapChain\_UUID\_STRING](#ISwapChain_UUID_STRING)
    + [MAX\_SWAP\_CHAIN\_BUFFERS](#MAX_SWAP_CHAIN_BUFFERS)
    + [MWA\_VALID](#MWA_VALID)
    + [SHARED\_RESOURCE\_READ](#SHARED_RESOURCE_READ)
    + [SHARED\_RESOURCE\_WRITE](#SHARED_RESOURCE_WRITE)
    + [STANDARD\_MULTISAMPLE\_QUALITY\_PATTERN](#STANDARD_MULTISAMPLE_QUALITY_PATTERN)
    + [STATUS\_MODE\_CHANGED](#STATUS_MODE_CHANGED)
    + [STATUS\_MODE\_CHANGE\_IN\_PROGRESS](#STATUS_MODE_CHANGE_IN_PROGRESS)
    + [STATUS\_OCCLUDED](#STATUS_OCCLUDED)
  * [Variables](#pkg-Variables)
    + [DEBUG\_ALL](#DEBUG_ALL)
    + [DEBUG\_APP](#DEBUG_APP)
    + [DEBUG\_DX](#DEBUG_DX)
    + [DEBUG\_DXGI](#DEBUG_DXGI)
    + [IAdapter1\_UUID](#IAdapter1_UUID)
    + [IAdapter2\_UUID](#IAdapter2_UUID)
    + [IAdapter3\_UUID](#IAdapter3_UUID)
    + [IAdapter4\_UUID](#IAdapter4_UUID)
    + [IAdapter\_UUID](#IAdapter_UUID)
    + [IDebug1\_UUID](#IDebug1_UUID)
    + [IDebug\_UUID](#IDebug_UUID)
    + [IDecodeSwapChain\_UUID](#IDecodeSwapChain_UUID)
    + [IDevice1\_UUID](#IDevice1_UUID)
    + [IDevice2\_UUID](#IDevice2_UUID)
    + [IDevice3\_UUID](#IDevice3_UUID)
    + [IDevice4\_UUID](#IDevice4_UUID)
    + [IDeviceSubObject\_UUID](#IDeviceSubObject_UUID)
    + [IDevice\_UUID](#IDevice_UUID)
    + [IDisplayControl\_UUID](#IDisplayControl_UUID)
    + [IFactory1\_UUID](#IFactory1_UUID)
    + [IFactory2\_UUID](#IFactory2_UUID)
    + [IFactory3\_UUID](#IFactory3_UUID)
    + [IFactory4\_UUID](#IFactory4_UUID)
    + [IFactory5\_UUID](#IFactory5_UUID)
    + [IFactory6\_UUID](#IFactory6_UUID)
    + [IFactory7\_UUID](#IFactory7_UUID)
    + [IFactoryMedia\_UUID](#IFactoryMedia_UUID)
    + [IFactory\_UUID](#IFactory_UUID)
    + [IInfoQueue\_UUID](#IInfoQueue_UUID)
    + [IKeyedMutex\_UUID](#IKeyedMutex_UUID)
    + [IObject\_UUID](#IObject_UUID)
    + [IOutput1\_UUID](#IOutput1_UUID)
    + [IOutput2\_UUID](#IOutput2_UUID)
    + [IOutput3\_UUID](#IOutput3_UUID)
    + [IOutput4\_UUID](#IOutput4_UUID)
    + [IOutput5\_UUID](#IOutput5_UUID)
    + [IOutput6\_UUID](#IOutput6_UUID)
    + [IOutputDuplication\_UUID](#IOutputDuplication_UUID)
    + [IOutput\_UUID](#IOutput_UUID)
    + [IResource1\_UUID](#IResource1_UUID)
    + [IResource\_UUID](#IResource_UUID)
    + [ISurface1\_UUID](#ISurface1_UUID)
    + [ISurface2\_UUID](#ISurface2_UUID)
    + [ISurface\_UUID](#ISurface_UUID)
    + [ISwapChain1\_UUID](#ISwapChain1_UUID)
    + [ISwapChain2\_UUID](#ISwapChain2_UUID)
    + [ISwapChain3\_UUID](#ISwapChain3_UUID)
    + [ISwapChain4\_UUID](#ISwapChain4_UUID)
    + [ISwapChainMedia\_UUID](#ISwapChainMedia_UUID)
    + [ISwapChain\_UUID](#ISwapChain_UUID)
  * [Procedures](#pkg-Procedures)
    + [CreateDXGIFactory](#CreateDXGIFactory)
    + [CreateDXGIFactory1](#CreateDXGIFactory1)
    + [CreateDXGIFactory2](#CreateDXGIFactory2)
    + [DXGIGetDebugInterface1](#DXGIGetDebugInterface1)
    + [DeclareAdapterRemovalSupport](#DeclareAdapterRemovalSupport)
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