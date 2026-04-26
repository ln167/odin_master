package wgpu - pkg.odin-lang.org 






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



Current Package: *[wgpu](/vendor/wgpu)*

  

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
2. [wgpu](/vendor/wgpu)

# package vendor:wgpu [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A cross-platform (and WASM) GPU API.

WASM support is achieved by providing wrappers around the browser native WebGPU API
that are called instead of the [wgpu-native](https://github.com/gfx-rs/wgpu-native) library,
the wgpu-native library provides support for all other targets.

**Examples**

You can find a number of examples on [Odin's official examples repository](https://github.com/odin-lang/examples/tree/master/wgpu).

**Getting the wgpu-native libraries**

For native support (not the browser), some libraries are required. Fortunately this is
extremely easy, just download them from the [releases on GitHub](https://github.com/gfx-rs/wgpu-native/releases/tag/v29.0.0.0).
the bindings are for v29.0.0.0 at the moment.

These are expected in the `lib` folder under the same name as they are released (just unzipped).
By default it will look for a static release version (`wgpu-OS-ARCH-release.a|lib`),
you can set `-define:WGPU_DEBUG=true` for it to look for a debug version,
and use `-define:WGPU_SHARED=true` to look for the shared libraries.

**WASM**

For WASM, the module has to be built with a function table to enable callbacks.
You can do so using `-extra-linker-flags:"--export-table"`.

Being able to allocate is also required (for some auxiliary APIs but also for mapping/unmapping buffers).

You can set the context that is used for allocations by setting the global variable `wpgu.g_context`.
It will default to the `runtime.default_context`.

Have a look at the [example build file](https://github.com/odin-lang/examples/blob/master/wgpu/glfw-triangle/build_web.sh) and [html file](https://github.com/odin-lang/examples/blob/master/wgpu/glfw-triangle/web/index.html)
to see how it looks when set up, doing the `--import-memory` and the likes
is not strictly necessary but allows your app more memory than the minimal default.

The bindings work on both `-target:js_wasm32` and `-target:js_wasm64p32`.

**SDL Glue**

There is an inner package `sdl2glue` (and `sdl3glue`) that can be used to glue together WGPU and SDL.
It exports one procedure `GetSurface(wgpu.Instance, ^SDL.Window) -> wgpu.Surface`.
The procedure will call the needed target specific procedures and return a surface configured
for the given window.

**GLFW Glue**

There is an inner package `glfwglue` that can be used to glue together WGPU and GLFW.
It exports one procedure `GetSurface(wgpu.Instance, glfw.WindowHandle) -> wgpu.Surface`.
The procedure will call the needed target specific procedures and return a surface configured
for the given window.

Do note that wgpu does not require GLFW, you can use native windows or another windowing library too.
For that you can take inspiration from `glfwglue` on glueing them together.

**GLFW and Wayland**

GLFW supports Wayland from version 3.4 onwards and only if it is compiled with `-DGLFW_EXPOSE_NATIVE_WAYLAND`.

Odin links against your system's glfw library (probably installed through a package manager).
If that version is lower than 3.4 or hasn't been compiled with the previously mentioned define,
you will have to compile glfw from source yourself and adjust the `foreign import` declarations in `vendor:glfw/bindings` to
point to it.

## Index

Types (230)

* [Adapter](#Adapter)
* [AdapterInfo](#AdapterInfo)
* [AdapterType](#AdapterType)
* [AddressMode](#AddressMode)
* [BackendType](#BackendType)
* [BindGroup](#BindGroup)
* [BindGroupDescriptor](#BindGroupDescriptor)
* [BindGroupEntry](#BindGroupEntry)
* [BindGroupEntryExtras](#BindGroupEntryExtras)
* [BindGroupLayout](#BindGroupLayout)
* [BindGroupLayoutDescriptor](#BindGroupLayoutDescriptor)
* [BindGroupLayoutEntry](#BindGroupLayoutEntry)
* [BindGroupLayoutEntryExtras](#BindGroupLayoutEntryExtras)
* [BlendComponent](#BlendComponent)
* [BlendFactor](#BlendFactor)
* [BlendOperation](#BlendOperation)
* [BlendState](#BlendState)
* [Bool](#Bool)
* [Buffer](#Buffer)
* [BufferBindingLayout](#BufferBindingLayout)
* [BufferBindingType](#BufferBindingType)
* [BufferDescriptor](#BufferDescriptor)
* [BufferMapCallback](#BufferMapCallback)
* [BufferMapCallbackInfo](#BufferMapCallbackInfo)
* [BufferMapState](#BufferMapState)
* [BufferUsage](#BufferUsage)
* [BufferUsageFlags](#BufferUsageFlags)
* [BufferWithDataDescriptor](#BufferWithDataDescriptor)
* [CallbackMode](#CallbackMode)
* [ChainedStruct](#ChainedStruct)
* [Color](#Color)
* [ColorTargetState](#ColorTargetState)
* [ColorWriteMask](#ColorWriteMask)
* [ColorWriteMaskFlags](#ColorWriteMaskFlags)
* [CommandBuffer](#CommandBuffer)
* [CommandBufferDescriptor](#CommandBufferDescriptor)
* [CommandEncoder](#CommandEncoder)
* [CommandEncoderDescriptor](#CommandEncoderDescriptor)
* [CompareFunction](#CompareFunction)
* [CompatibilityModeLimits](#CompatibilityModeLimits)
* [CompilationInfo](#CompilationInfo)
* [CompilationInfoCallback](#CompilationInfoCallback)
* [CompilationInfoCallbackInfo](#CompilationInfoCallbackInfo)
* [CompilationInfoRequestStatus](#CompilationInfoRequestStatus)
* [CompilationMessage](#CompilationMessage)
* [CompilationMessageType](#CompilationMessageType)
* [ComponentSwizzle](#ComponentSwizzle)
* [CompositeAlphaMode](#CompositeAlphaMode)
* [ComputePassDescriptor](#ComputePassDescriptor)
* [ComputePassEncoder](#ComputePassEncoder)
* [ComputePipeline](#ComputePipeline)
* [ComputePipelineDescriptor](#ComputePipelineDescriptor)
* [ComputeState](#ComputeState)
* [ConstantEntry](#ConstantEntry)
* [CreateComputePipelineAsyncCallback](#CreateComputePipelineAsyncCallback)
* [CreateComputePipelineAsyncCallbackInfo](#CreateComputePipelineAsyncCallbackInfo)
* [CreatePipelineAsyncStatus](#CreatePipelineAsyncStatus)
* [CreateRenderPipelineAsyncCallback](#CreateRenderPipelineAsyncCallback)
* [CreateRenderPipelineAsyncCallbackInfo](#CreateRenderPipelineAsyncCallbackInfo)
* [CullMode](#CullMode)
* [DepthStencilState](#DepthStencilState)
* [Device](#Device)
* [DeviceDescriptor](#DeviceDescriptor)
* [DeviceExtras](#DeviceExtras)
* [DeviceLostCallback](#DeviceLostCallback)
* [DeviceLostCallbackInfo](#DeviceLostCallbackInfo)
* [DeviceLostReason](#DeviceLostReason)
* [Dx12Compiler](#Dx12Compiler)
* [Dx12SwapchainKind](#Dx12SwapchainKind)
* [DxcMaxShaderModel](#DxcMaxShaderModel)
* [ErrorFilter](#ErrorFilter)
* [ErrorType](#ErrorType)
* [Extent3D](#Extent3D)
* [ExternalTexture](#ExternalTexture)
* [ExternalTextureBindingEntry](#ExternalTextureBindingEntry)
* [ExternalTextureBindingLayout](#ExternalTextureBindingLayout)
* [FeatureLevel](#FeatureLevel)
* [FeatureName](#FeatureName)
* [FilterMode](#FilterMode)
* [Flags](#Flags)
* [FragmentState](#FragmentState)
* [FrontFace](#FrontFace)
* [Future](#Future)
* [FutureWaitInfo](#FutureWaitInfo)
* [GLFenceBehaviour](#GLFenceBehaviour)
* [Gles3MinorVersion](#Gles3MinorVersion)
* [GlobalReport](#GlobalReport)
* [HubReport](#HubReport)
* [IndexFormat](#IndexFormat)
* [Instance](#Instance)
* [InstanceBackend](#InstanceBackend)
* [InstanceBackendFlags](#InstanceBackendFlags)
* [InstanceDescriptor](#InstanceDescriptor)
* [InstanceEnumerateAdapterOptions](#InstanceEnumerateAdapterOptions)
* [InstanceExtras](#InstanceExtras)
* [InstanceFeatureName](#InstanceFeatureName)
* [InstanceFlag](#InstanceFlag)
* [InstanceFlags](#InstanceFlags)
* [InstanceLimits](#InstanceLimits)
* [Limits](#Limits)
* [LoadOp](#LoadOp)
* [LogCallback](#LogCallback)
* [LogLevel](#LogLevel)
* [MapAsyncStatus](#MapAsyncStatus)
* [MapMode](#MapMode)
* [MapModeFlags](#MapModeFlags)
* [MipmapFilterMode](#MipmapFilterMode)
* [MultisampleState](#MultisampleState)
* [NativeDisplayHandle](#NativeDisplayHandle)
* [NativeDisplayHandleType](#NativeDisplayHandleType)
* [NativeLimits](#NativeLimits)
* [OptionalBool](#OptionalBool)
* [Origin3D](#Origin3D)
* [PassTimestampWrites](#PassTimestampWrites)
* [PipelineLayout](#PipelineLayout)
* [PipelineLayoutDescriptor](#PipelineLayoutDescriptor)
* [PipelineLayoutExtras](#PipelineLayoutExtras)
* [PipelineStatisticName](#PipelineStatisticName)
* [PolygonMode](#PolygonMode)
* [PopErrorScopeCallback](#PopErrorScopeCallback)
* [PopErrorScopeCallbackInfo](#PopErrorScopeCallbackInfo)
* [PopErrorScopeStatus](#PopErrorScopeStatus)
* [PowerPreference](#PowerPreference)
* [PredefinedColorSpace](#PredefinedColorSpace)
* [PresentMode](#PresentMode)
* [PrimitiveState](#PrimitiveState)
* [PrimitiveStateExtras](#PrimitiveStateExtras)
* [PrimitiveTopology](#PrimitiveTopology)
* [Proc](#Proc)
* [QuerySet](#QuerySet)
* [QuerySetDescriptor](#QuerySetDescriptor)
* [QuerySetDescriptorExtras](#QuerySetDescriptorExtras)
* [QueryType](#QueryType)
* [Queue](#Queue)
* [QueueDescriptor](#QueueDescriptor)
* [QueueWorkDoneCallback](#QueueWorkDoneCallback)
* [QueueWorkDoneCallbackInfo](#QueueWorkDoneCallbackInfo)
* [QueueWorkDoneStatus](#QueueWorkDoneStatus)
* [RegistryReport](#RegistryReport)
* [RenderBundle](#RenderBundle)
* [RenderBundleDescriptor](#RenderBundleDescriptor)
* [RenderBundleEncoder](#RenderBundleEncoder)
* [RenderBundleEncoderDescriptor](#RenderBundleEncoderDescriptor)
* [RenderPassColorAttachment](#RenderPassColorAttachment)
* [RenderPassDepthStencilAttachment](#RenderPassDepthStencilAttachment)
* [RenderPassDescriptor](#RenderPassDescriptor)
* [RenderPassEncoder](#RenderPassEncoder)
* [RenderPassMaxDrawCount](#RenderPassMaxDrawCount)
* [RenderPipeline](#RenderPipeline)
* [RenderPipelineDescriptor](#RenderPipelineDescriptor)
* [RequestAdapterCallback](#RequestAdapterCallback)
* [RequestAdapterCallbackInfo](#RequestAdapterCallbackInfo)
* [RequestAdapterOptions](#RequestAdapterOptions)
* [RequestAdapterStatus](#RequestAdapterStatus)
* [RequestAdapterWebXROptions](#RequestAdapterWebXROptions)
* [RequestDeviceCallback](#RequestDeviceCallback)
* [RequestDeviceCallbackInfo](#RequestDeviceCallbackInfo)
* [RequestDeviceStatus](#RequestDeviceStatus)
* [SType](#SType)
* [Sampler](#Sampler)
* [SamplerBindingLayout](#SamplerBindingLayout)
* [SamplerBindingType](#SamplerBindingType)
* [SamplerDescriptor](#SamplerDescriptor)
* [ShaderDefine](#ShaderDefine)
* [ShaderModule](#ShaderModule)
* [ShaderModuleDescriptor](#ShaderModuleDescriptor)
* [ShaderModuleDescriptorSpirV](#ShaderModuleDescriptorSpirV)
* [ShaderSourceGLSL](#ShaderSourceGLSL)
* [ShaderSourceSPIRV](#ShaderSourceSPIRV)
* [ShaderSourceWGSL](#ShaderSourceWGSL)
* [ShaderStage](#ShaderStage)
* [ShaderStageFlags](#ShaderStageFlags)
* [Status](#Status)
* [StencilFaceState](#StencilFaceState)
* [StencilOperation](#StencilOperation)
* [StorageTextureAccess](#StorageTextureAccess)
* [StorageTextureBindingLayout](#StorageTextureBindingLayout)
* [StoreOp](#StoreOp)
* [StringView](#StringView)
* [SubmissionIndex](#SubmissionIndex)
* [SupportedFeatures](#SupportedFeatures)
* [SupportedInstanceFeatures](#SupportedInstanceFeatures)
* [SupportedWGSLLanguageFeatures](#SupportedWGSLLanguageFeatures)
* [Surface](#Surface)
* [SurfaceCapabilities](#SurfaceCapabilities)
* [SurfaceColorManagement](#SurfaceColorManagement)
* [SurfaceConfiguration](#SurfaceConfiguration)
* [SurfaceConfigurationExtras](#SurfaceConfigurationExtras)
* [SurfaceDescriptor](#SurfaceDescriptor)
* [SurfaceGetCurrentTextureStatus](#SurfaceGetCurrentTextureStatus)
* [SurfaceSourceAndroidNativeWindow](#SurfaceSourceAndroidNativeWindow)
* [SurfaceSourceCanvasHTMLSelector](#SurfaceSourceCanvasHTMLSelector)
* [SurfaceSourceMetalLayer](#SurfaceSourceMetalLayer)
* [SurfaceSourceSwapChainPanel](#SurfaceSourceSwapChainPanel)
* [SurfaceSourceWaylandSurface](#SurfaceSourceWaylandSurface)
* [SurfaceSourceWindowsHWND](#SurfaceSourceWindowsHWND)
* [SurfaceSourceXcbWindow](#SurfaceSourceXcbWindow)
* [SurfaceSourceXlibWindow](#SurfaceSourceXlibWindow)
* [SurfaceTexture](#SurfaceTexture)
* [TexelCopyBufferInfo](#TexelCopyBufferInfo)
* [TexelCopyBufferLayout](#TexelCopyBufferLayout)
* [TexelCopyTextureInfo](#TexelCopyTextureInfo)
* [Texture](#Texture)
* [TextureAspect](#TextureAspect)
* [TextureBindingLayout](#TextureBindingLayout)
* [TextureBindingViewDimension](#TextureBindingViewDimension)
* [TextureComponentSwizzle](#TextureComponentSwizzle)
* [TextureComponentSwizzleDescriptor](#TextureComponentSwizzleDescriptor)
* [TextureDescriptor](#TextureDescriptor)
* [TextureDimension](#TextureDimension)
* [TextureFormat](#TextureFormat)
* [TextureSampleType](#TextureSampleType)
* [TextureUsage](#TextureUsage)
* [TextureUsageFlags](#TextureUsageFlags)
* [TextureView](#TextureView)
* [TextureViewDescriptor](#TextureViewDescriptor)
* [TextureViewDimension](#TextureViewDimension)
* [ToneMappingMode](#ToneMappingMode)
* [UncapturedErrorCallback](#UncapturedErrorCallback)
* [UncapturedErrorCallbackInfo](#UncapturedErrorCallbackInfo)
* [VertexAttribute](#VertexAttribute)
* [VertexBufferLayout](#VertexBufferLayout)
* [VertexFormat](#VertexFormat)
* [VertexState](#VertexState)
* [VertexStepMode](#VertexStepMode)
* [WGSLLanguageFeatureName](#WGSLLanguageFeatureName)
* [WaitStatus](#WaitStatus)
* [WaylandDisplayHandle](#WaylandDisplayHandle)
* [XcbDisplayHandle](#XcbDisplayHandle)
* [XlibDisplayHandle](#XlibDisplayHandle)

Constants (19)

* [ARRAY\_LAYER\_COUNT\_UNDEFINED](#ARRAY_LAYER_COUNT_UNDEFINED)
* [BINDINGS\_VERSION](#BINDINGS_VERSION)
* [BINDINGS\_VERSION\_STRING](#BINDINGS_VERSION_STRING)
* [COPY\_STRIDE\_UNDEFINED](#COPY_STRIDE_UNDEFINED)
* [ColorWriteMaskFlags\_All](#ColorWriteMaskFlags_All)
* [DEPTH\_SLICE\_UNDEFINED](#DEPTH_SLICE_UNDEFINED)
* [InstanceBackendFlags\_All](#InstanceBackendFlags_All)
* [InstanceBackendFlags\_Primary](#InstanceBackendFlags_Primary)
* [InstanceBackendFlags\_Secondary](#InstanceBackendFlags_Secondary)
* [InstanceFlags\_Empty](#InstanceFlags_Empty)
* [LIMIT\_U32\_UNDEFINED](#LIMIT_U32_UNDEFINED)
* [LIMIT\_U64\_UNDEFINED](#LIMIT_U64_UNDEFINED)
* [MIP\_LEVEL\_COUNT\_UNDEFINED](#MIP_LEVEL_COUNT_UNDEFINED)
* [QUERY\_SET\_INDEX\_UNDEFINED](#QUERY_SET_INDEX_UNDEFINED)
* [STRLEN](#STRLEN)
* [WGPU\_DEBUG](#WGPU_DEBUG)
* [WGPU\_SHARED](#WGPU_SHARED)
* [WHOLE\_MAP\_SIZE](#WHOLE_MAP_SIZE)
* [WHOLE\_SIZE](#WHOLE_SIZE)

Variables (0)

This section is empty.

Procedures (254)

* [AdapterAddRef](#AdapterAddRef)
* [AdapterGetFeatures](#AdapterGetFeatures)
* [AdapterGetInfo](#AdapterGetInfo)
* [AdapterGetLimits](#AdapterGetLimits)
* [AdapterHasFeature](#AdapterHasFeature)
* [AdapterInfoFreeMembers](#AdapterInfoFreeMembers)
* [AdapterRelease](#AdapterRelease)
* [AdapterRequestDevice](#AdapterRequestDevice)
* [BindGroupAddRef](#BindGroupAddRef)
* [BindGroupLayoutAddRef](#BindGroupLayoutAddRef)
* [BindGroupLayoutRelease](#BindGroupLayoutRelease)
* [BindGroupLayoutSetLabel](#BindGroupLayoutSetLabel)
* [BindGroupRelease](#BindGroupRelease)
* [BindGroupSetLabel](#BindGroupSetLabel)
* [BufferAddRef](#BufferAddRef)
* [BufferDestroy](#BufferDestroy)
* [BufferGetConstMappedRange](#BufferGetConstMappedRange)
* [BufferGetConstMappedRangeSlice](#BufferGetConstMappedRangeSlice)
* [BufferGetConstMappedRangeTyped](#BufferGetConstMappedRangeTyped)
* [BufferGetMapState](#BufferGetMapState)
* [BufferGetMappedRange](#BufferGetMappedRange)
* [BufferGetMappedRangeSlice](#BufferGetMappedRangeSlice)
* [BufferGetMappedRangeTyped](#BufferGetMappedRangeTyped)
* [BufferGetSize](#BufferGetSize)
* [BufferGetUsage](#BufferGetUsage)
* [BufferMapAsync](#BufferMapAsync)
* [BufferReadMappedRange](#BufferReadMappedRange)
* [BufferRelease](#BufferRelease)
* [BufferSetLabel](#BufferSetLabel)
* [BufferUnmap](#BufferUnmap)
* [BufferWriteMappedRange](#BufferWriteMappedRange)
* [CommandBufferAddRef](#CommandBufferAddRef)
* [CommandBufferRelease](#CommandBufferRelease)
* [CommandBufferSetLabel](#CommandBufferSetLabel)
* [CommandEncoderAddRef](#CommandEncoderAddRef)
* [CommandEncoderBeginComputePass](#CommandEncoderBeginComputePass)
* [CommandEncoderBeginRenderPass](#CommandEncoderBeginRenderPass)
* [CommandEncoderClearBuffer](#CommandEncoderClearBuffer)
* [CommandEncoderCopyBufferToBuffer](#CommandEncoderCopyBufferToBuffer)
* [CommandEncoderCopyBufferToTexture](#CommandEncoderCopyBufferToTexture)
* [CommandEncoderCopyTextureToBuffer](#CommandEncoderCopyTextureToBuffer)
* [CommandEncoderCopyTextureToTexture](#CommandEncoderCopyTextureToTexture)
* [CommandEncoderFinish](#CommandEncoderFinish)
* [CommandEncoderInsertDebugMarker](#CommandEncoderInsertDebugMarker)
* [CommandEncoderPopDebugGroup](#CommandEncoderPopDebugGroup)
* [CommandEncoderPushDebugGroup](#CommandEncoderPushDebugGroup)
* [CommandEncoderRelease](#CommandEncoderRelease)
* [CommandEncoderResolveQuerySet](#CommandEncoderResolveQuerySet)
* [CommandEncoderSetLabel](#CommandEncoderSetLabel)
* [CommandEncoderWriteTimestamp](#CommandEncoderWriteTimestamp)
* [ComputePassEncoderAddRef](#ComputePassEncoderAddRef)
* [ComputePassEncoderBeginPipelineStatisticsQuery](#ComputePassEncoderBeginPipelineStatisticsQuery)
* [ComputePassEncoderDispatchWorkgroups](#ComputePassEncoderDispatchWorkgroups)
* [ComputePassEncoderDispatchWorkgroupsIndirect](#ComputePassEncoderDispatchWorkgroupsIndirect)
* [ComputePassEncoderEnd](#ComputePassEncoderEnd)
* [ComputePassEncoderEndPipelineStatisticsQuery](#ComputePassEncoderEndPipelineStatisticsQuery)
* [ComputePassEncoderInsertDebugMarker](#ComputePassEncoderInsertDebugMarker)
* [ComputePassEncoderPopDebugGroup](#ComputePassEncoderPopDebugGroup)
* [ComputePassEncoderPushDebugGroup](#ComputePassEncoderPushDebugGroup)
* [ComputePassEncoderRelease](#ComputePassEncoderRelease)
* [ComputePassEncoderSetBindGroup](#ComputePassEncoderSetBindGroup)
* [ComputePassEncoderSetImmediates](#ComputePassEncoderSetImmediates)
* [ComputePassEncoderSetLabel](#ComputePassEncoderSetLabel)
* [ComputePassEncoderSetPipeline](#ComputePassEncoderSetPipeline)
* [ComputePassEncoderWriteTimestamp](#ComputePassEncoderWriteTimestamp)
* [ComputePipelineAddRef](#ComputePipelineAddRef)
* [ComputePipelineGetBindGroupLayout](#ComputePipelineGetBindGroupLayout)
* [ComputePipelineRelease](#ComputePipelineRelease)
* [ComputePipelineSetLabel](#ComputePipelineSetLabel)
* [ConvertOdinToWGPULogLevel](#ConvertOdinToWGPULogLevel)
* [ConvertWGPUToOdinLogLevel](#ConvertWGPUToOdinLogLevel)
* [CreateInstance](#CreateInstance)
* [DeviceAddRef](#DeviceAddRef)
* [DeviceCreateBindGroup](#DeviceCreateBindGroup)
* [DeviceCreateBindGroupLayout](#DeviceCreateBindGroupLayout)
* [DeviceCreateBuffer](#DeviceCreateBuffer)
* [DeviceCreateBufferWithDataSlice](#DeviceCreateBufferWithDataSlice)
* [DeviceCreateBufferWithDataTyped](#DeviceCreateBufferWithDataTyped)
* [DeviceCreateCommandEncoder](#DeviceCreateCommandEncoder)
* [DeviceCreateComputePipeline](#DeviceCreateComputePipeline)
* [DeviceCreateComputePipelineAsync](#DeviceCreateComputePipelineAsync)
* [DeviceCreatePipelineLayout](#DeviceCreatePipelineLayout)
* [DeviceCreateQuerySet](#DeviceCreateQuerySet)
* [DeviceCreateRenderBundleEncoder](#DeviceCreateRenderBundleEncoder)
* [DeviceCreateRenderPipeline](#DeviceCreateRenderPipeline)
* [DeviceCreateRenderPipelineAsync](#DeviceCreateRenderPipelineAsync)
* [DeviceCreateSampler](#DeviceCreateSampler)
* [DeviceCreateShaderModule](#DeviceCreateShaderModule)
* [DeviceCreateShaderModuleSpirV](#DeviceCreateShaderModuleSpirV)
* [DeviceCreateTexture](#DeviceCreateTexture)
* [DeviceDestroy](#DeviceDestroy)
* [DeviceGetAdapterInfo](#DeviceGetAdapterInfo)
* [DeviceGetFeatures](#DeviceGetFeatures)
* [DeviceGetLimits](#DeviceGetLimits)
* [DeviceGetLostFuture](#DeviceGetLostFuture)
* [DeviceGetNativeMetalCommandQueue](#DeviceGetNativeMetalCommandQueue)
* [DeviceGetNativeMetalDevice](#DeviceGetNativeMetalDevice)
* [DeviceGetNativeMetalTexture](#DeviceGetNativeMetalTexture)
* [DeviceGetQueue](#DeviceGetQueue)
* [DeviceHasFeature](#DeviceHasFeature)
* [DevicePoll](#DevicePoll)
* [DevicePopErrorScope](#DevicePopErrorScope)
* [DevicePushErrorScope](#DevicePushErrorScope)
* [DeviceRelease](#DeviceRelease)
* [DeviceSetLabel](#DeviceSetLabel)
* [DeviceStartGraphicsDebuggerCapture](#DeviceStartGraphicsDebuggerCapture)
* [DeviceStopGraphicsDebuggerCapture](#DeviceStopGraphicsDebuggerCapture)
* [ExternalTextureAddRef](#ExternalTextureAddRef)
* [ExternalTextureRelease](#ExternalTextureRelease)
* [ExternalTextureSetLabel](#ExternalTextureSetLabel)
* [GenerateReport](#GenerateReport)
* [GetInstanceFeatures](#GetInstanceFeatures)
* [GetInstanceLimits](#GetInstanceLimits)
* [GetProcAddress](#GetProcAddress)
* [GetVersion](#GetVersion)
* [HasInstanceFeature](#HasInstanceFeature)
* [InstanceAddRef](#InstanceAddRef)
* [InstanceCreateSurface](#InstanceCreateSurface)
* [InstanceEnumerateAdapters](#InstanceEnumerateAdapters)
* [InstanceGetWGSLLanguageFeatures](#InstanceGetWGSLLanguageFeatures)
* [InstanceHasWGSLLanguageFeature](#InstanceHasWGSLLanguageFeature)
* [InstanceProcessEvents](#InstanceProcessEvents)
* [InstanceRelease](#InstanceRelease)
* [InstanceRequestAdapter](#InstanceRequestAdapter)
* [InstanceWaitAny](#InstanceWaitAny)
* [PipelineLayoutAddRef](#PipelineLayoutAddRef)
* [PipelineLayoutRelease](#PipelineLayoutRelease)
* [PipelineLayoutSetLabel](#PipelineLayoutSetLabel)
* [QuerySetAddRef](#QuerySetAddRef)
* [QuerySetDestroy](#QuerySetDestroy)
* [QuerySetGetCount](#QuerySetGetCount)
* [QuerySetGetType](#QuerySetGetType)
* [QuerySetRelease](#QuerySetRelease)
* [QuerySetSetLabel](#QuerySetSetLabel)
* [QueueAddRef](#QueueAddRef)
* [QueueGetTimestampPeriod](#QueueGetTimestampPeriod)
* [QueueOnSubmittedWorkDone](#QueueOnSubmittedWorkDone)
* [QueueRelease](#QueueRelease)
* [QueueSetLabel](#QueueSetLabel)
* [QueueSubmit](#QueueSubmit)
* [QueueSubmitForIndex](#QueueSubmitForIndex)
* [QueueWriteBuffer](#QueueWriteBuffer)
* [QueueWriteTexture](#QueueWriteTexture)
* [RawAdapterGetFeatures](#RawAdapterGetFeatures)
* [RawAdapterGetInfo](#RawAdapterGetInfo)
* [RawAdapterGetLimits](#RawAdapterGetLimits)
* [RawBufferGetConstMappedRange](#RawBufferGetConstMappedRange)
* [RawBufferGetMappedRange](#RawBufferGetMappedRange)
* [RawComputePassEncoderSetBindGroup](#RawComputePassEncoderSetBindGroup)
* [RawCreateInstance](#RawCreateInstance)
* [RawDeviceGetAdapterInfo](#RawDeviceGetAdapterInfo)
* [RawDeviceGetFeatures](#RawDeviceGetFeatures)
* [RawDeviceGetLimits](#RawDeviceGetLimits)
* [RawGenerateReport](#RawGenerateReport)
* [RawGetInstanceLimits](#RawGetInstanceLimits)
* [RawInstanceEnumerateAdapters](#RawInstanceEnumerateAdapters)
* [RawQueueSubmit](#RawQueueSubmit)
* [RawQueueSubmitForIndex](#RawQueueSubmitForIndex)
* [RawRenderBundleEncoderSetBindGroup](#RawRenderBundleEncoderSetBindGroup)
* [RawRenderPassEncoderExecuteBundles](#RawRenderPassEncoderExecuteBundles)
* [RawRenderPassEncoderSetBindGroup](#RawRenderPassEncoderSetBindGroup)
* [RawSurfaceGetCapabilities](#RawSurfaceGetCapabilities)
* [RawSurfaceGetCurrentTexture](#RawSurfaceGetCurrentTexture)
* [RenderBundleAddRef](#RenderBundleAddRef)
* [RenderBundleEncoderAddRef](#RenderBundleEncoderAddRef)
* [RenderBundleEncoderDraw](#RenderBundleEncoderDraw)
* [RenderBundleEncoderDrawIndexed](#RenderBundleEncoderDrawIndexed)
* [RenderBundleEncoderDrawIndexedIndirect](#RenderBundleEncoderDrawIndexedIndirect)
* [RenderBundleEncoderDrawIndirect](#RenderBundleEncoderDrawIndirect)
* [RenderBundleEncoderFinish](#RenderBundleEncoderFinish)
* [RenderBundleEncoderInsertDebugMarker](#RenderBundleEncoderInsertDebugMarker)
* [RenderBundleEncoderPopDebugGroup](#RenderBundleEncoderPopDebugGroup)
* [RenderBundleEncoderPushDebugGroup](#RenderBundleEncoderPushDebugGroup)
* [RenderBundleEncoderRelease](#RenderBundleEncoderRelease)
* [RenderBundleEncoderSetBindGroup](#RenderBundleEncoderSetBindGroup)
* [RenderBundleEncoderSetImmediates](#RenderBundleEncoderSetImmediates)
* [RenderBundleEncoderSetIndexBuffer](#RenderBundleEncoderSetIndexBuffer)
* [RenderBundleEncoderSetLabel](#RenderBundleEncoderSetLabel)
* [RenderBundleEncoderSetPipeline](#RenderBundleEncoderSetPipeline)
* [RenderBundleEncoderSetVertexBuffer](#RenderBundleEncoderSetVertexBuffer)
* [RenderBundleRelease](#RenderBundleRelease)
* [RenderBundleSetLabel](#RenderBundleSetLabel)
* [RenderPassEncoderAddRef](#RenderPassEncoderAddRef)
* [RenderPassEncoderBeginOcclusionQuery](#RenderPassEncoderBeginOcclusionQuery)
* [RenderPassEncoderBeginPipelineStatisticsQuery](#RenderPassEncoderBeginPipelineStatisticsQuery)
* [RenderPassEncoderDraw](#RenderPassEncoderDraw)
* [RenderPassEncoderDrawIndexed](#RenderPassEncoderDrawIndexed)
* [RenderPassEncoderDrawIndexedIndirect](#RenderPassEncoderDrawIndexedIndirect)
* [RenderPassEncoderDrawIndirect](#RenderPassEncoderDrawIndirect)
* [RenderPassEncoderEnd](#RenderPassEncoderEnd)
* [RenderPassEncoderEndOcclusionQuery](#RenderPassEncoderEndOcclusionQuery)
* [RenderPassEncoderEndPipelineStatisticsQuery](#RenderPassEncoderEndPipelineStatisticsQuery)
* [RenderPassEncoderExecuteBundles](#RenderPassEncoderExecuteBundles)
* [RenderPassEncoderInsertDebugMarker](#RenderPassEncoderInsertDebugMarker)
* [RenderPassEncoderMultiDrawIndexedIndirect](#RenderPassEncoderMultiDrawIndexedIndirect)
* [RenderPassEncoderMultiDrawIndexedIndirectCount](#RenderPassEncoderMultiDrawIndexedIndirectCount)
* [RenderPassEncoderMultiDrawIndirect](#RenderPassEncoderMultiDrawIndirect)
* [RenderPassEncoderMultiDrawIndirectCount](#RenderPassEncoderMultiDrawIndirectCount)
* [RenderPassEncoderPopDebugGroup](#RenderPassEncoderPopDebugGroup)
* [RenderPassEncoderPushDebugGroup](#RenderPassEncoderPushDebugGroup)
* [RenderPassEncoderRelease](#RenderPassEncoderRelease)
* [RenderPassEncoderSetBindGroup](#RenderPassEncoderSetBindGroup)
* [RenderPassEncoderSetBlendConstant](#RenderPassEncoderSetBlendConstant)
* [RenderPassEncoderSetImmediates](#RenderPassEncoderSetImmediates)
* [RenderPassEncoderSetIndexBuffer](#RenderPassEncoderSetIndexBuffer)
* [RenderPassEncoderSetLabel](#RenderPassEncoderSetLabel)
* [RenderPassEncoderSetPipeline](#RenderPassEncoderSetPipeline)
* [RenderPassEncoderSetScissorRect](#RenderPassEncoderSetScissorRect)
* [RenderPassEncoderSetStencilReference](#RenderPassEncoderSetStencilReference)
* [RenderPassEncoderSetVertexBuffer](#RenderPassEncoderSetVertexBuffer)
* [RenderPassEncoderSetViewport](#RenderPassEncoderSetViewport)
* [RenderPassEncoderWriteTimestamp](#RenderPassEncoderWriteTimestamp)
* [RenderPipelineAddRef](#RenderPipelineAddRef)
* [RenderPipelineGetBindGroupLayout](#RenderPipelineGetBindGroupLayout)
* [RenderPipelineRelease](#RenderPipelineRelease)
* [RenderPipelineSetLabel](#RenderPipelineSetLabel)
* [SamplerAddRef](#SamplerAddRef)
* [SamplerRelease](#SamplerRelease)
* [SamplerSetLabel](#SamplerSetLabel)
* [SetLogCallback](#SetLogCallback)
* [SetLogLevel](#SetLogLevel)
* [ShaderModuleAddRef](#ShaderModuleAddRef)
* [ShaderModuleGetCompilationInfo](#ShaderModuleGetCompilationInfo)
* [ShaderModuleRelease](#ShaderModuleRelease)
* [ShaderModuleSetLabel](#ShaderModuleSetLabel)
* [SupportedFeaturesFreeMembers](#SupportedFeaturesFreeMembers)
* [SupportedInstanceFeaturesFreeMembers](#SupportedInstanceFeaturesFreeMembers)
* [SupportedWGSLLanguageFeaturesFreeMembers](#SupportedWGSLLanguageFeaturesFreeMembers)
* [SurfaceAddRef](#SurfaceAddRef)
* [SurfaceCapabilitiesFreeMembers](#SurfaceCapabilitiesFreeMembers)
* [SurfaceConfigure](#SurfaceConfigure)
* [SurfaceGetCapabilities](#SurfaceGetCapabilities)
* [SurfaceGetCurrentTexture](#SurfaceGetCurrentTexture)
* [SurfacePresent](#SurfacePresent)
* [SurfaceRelease](#SurfaceRelease)
* [SurfaceSetLabel](#SurfaceSetLabel)
* [SurfaceUnconfigure](#SurfaceUnconfigure)
* [TextureAddRef](#TextureAddRef)
* [TextureCreateView](#TextureCreateView)
* [TextureDestroy](#TextureDestroy)
* [TextureGetDepthOrArrayLayers](#TextureGetDepthOrArrayLayers)
* [TextureGetDimension](#TextureGetDimension)
* [TextureGetFormat](#TextureGetFormat)
* [TextureGetHeight](#TextureGetHeight)
* [TextureGetMipLevelCount](#TextureGetMipLevelCount)
* [TextureGetSampleCount](#TextureGetSampleCount)
* [TextureGetTextureBindingViewDimension](#TextureGetTextureBindingViewDimension)
* [TextureGetUsage](#TextureGetUsage)
* [TextureGetWidth](#TextureGetWidth)
* [TextureRelease](#TextureRelease)
* [TextureSetLabel](#TextureSetLabel)
* [TextureViewAddRef](#TextureViewAddRef)
* [TextureViewRelease](#TextureViewRelease)
* [TextureViewSetLabel](#TextureViewSetLabel)

Procedure Groups (2)

* [ConvertLogLevel](#ConvertLogLevel)
* [DeviceCreateBufferWithData](#DeviceCreateBufferWithData)

`#config` values (2)

* [WGPU\_DEBUG](#WGPU_DEBUG)
* [WGPU\_SHARED](#WGPU_SHARED)

## Types

### [Adapter ¶](#Adapter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L90)

```
Adapter :: distinct rawptr
```

##### Related Procedures With Parameters

* [AdapterAddRef](/vendor/wgpu/#AdapterAddRef)
* [AdapterGetFeatures](/vendor/wgpu/#AdapterGetFeatures)
* [AdapterGetInfo](/vendor/wgpu/#AdapterGetInfo)
* [AdapterGetLimits](/vendor/wgpu/#AdapterGetLimits)
* [AdapterHasFeature](/vendor/wgpu/#AdapterHasFeature)
* [AdapterRelease](/vendor/wgpu/#AdapterRelease)
* [AdapterRequestDevice](/vendor/wgpu/#AdapterRequestDevice)
* [RawAdapterGetFeatures](/vendor/wgpu/#RawAdapterGetFeatures)
* [RawAdapterGetInfo](/vendor/wgpu/#RawAdapterGetInfo)
* [RawAdapterGetLimits](/vendor/wgpu/#RawAdapterGetLimits)
* [RawInstanceEnumerateAdapters](/vendor/wgpu/#RawInstanceEnumerateAdapters)
* [RawSurfaceGetCapabilities](/vendor/wgpu/#RawSurfaceGetCapabilities)
* [SurfaceGetCapabilities](/vendor/wgpu/#SurfaceGetCapabilities)

### [AdapterInfo ¶](#AdapterInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L902)

```
AdapterInfo :: struct {
	nextInChain:     ^ChainedStruct,
	vendor:          string,
	architecture:    string,
	device:          string,
	description:     string,
	backendType:     BackendType,
	adapterType:     AdapterType,
	vendorID:        u32,
	deviceID:        u32,
	subgroupMinSize: u32,
	subgroupMaxSize: u32,
}
```

##### Related Procedures With Parameters

* [AdapterInfoFreeMembers](/vendor/wgpu/#AdapterInfoFreeMembers)
* [RawAdapterGetInfo](/vendor/wgpu/#RawAdapterGetInfo)
* [RawDeviceGetAdapterInfo](/vendor/wgpu/#RawDeviceGetAdapterInfo)



##### Related Procedures With Returns

* [AdapterGetInfo](/vendor/wgpu/#AdapterGetInfo)
* [DeviceGetAdapterInfo](/vendor/wgpu/#DeviceGetAdapterInfo)

### [AdapterType ¶](#AdapterType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L114)

```
AdapterType :: enum i32 {
	DiscreteGPU   = 1, 
	IntegratedGPU = 2, 
	CPU           = 3, 
	Unknown       = 4, 
}
```

### [AddressMode ¶](#AddressMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L121)

```
AddressMode :: enum i32 {
	Undefined    = 0, 
	ClampToEdge  = 1, 
	Repeat       = 2, 
	MirrorRepeat = 3, 
}
```

### [BackendType ¶](#BackendType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L128)

```
BackendType :: enum i32 {
	Undefined = 0, 
	Null      = 1, 
	WebGPU    = 2, 
	D3D11     = 3, 
	D3D12     = 4, 
	Metal     = 5, 
	Vulkan    = 6, 
	OpenGL    = 7, 
	OpenGLES  = 8, 
}
```

### [BindGroup ¶](#BindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L91)

```
BindGroup :: distinct rawptr
```

##### Related Procedures With Parameters

* [BindGroupAddRef](/vendor/wgpu/#BindGroupAddRef)
* [BindGroupRelease](/vendor/wgpu/#BindGroupRelease)
* [BindGroupSetLabel](/vendor/wgpu/#BindGroupSetLabel)
* [ComputePassEncoderSetBindGroup](/vendor/wgpu/#ComputePassEncoderSetBindGroup)
* [RawComputePassEncoderSetBindGroup](/vendor/wgpu/#RawComputePassEncoderSetBindGroup)
* [RawRenderBundleEncoderSetBindGroup](/vendor/wgpu/#RawRenderBundleEncoderSetBindGroup)
* [RawRenderPassEncoderSetBindGroup](/vendor/wgpu/#RawRenderPassEncoderSetBindGroup)
* [RenderBundleEncoderSetBindGroup](/vendor/wgpu/#RenderBundleEncoderSetBindGroup)
* [RenderPassEncoderSetBindGroup](/vendor/wgpu/#RenderPassEncoderSetBindGroup)



##### Related Procedures With Returns

* [DeviceCreateBindGroup](/vendor/wgpu/#DeviceCreateBindGroup)

### [BindGroupDescriptor ¶](#BindGroupDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1460)

```
BindGroupDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
	layout:      BindGroupLayout,
	entryCount:  uint,
	entries:     [^]BindGroupEntry `fmt:"v,entryCount"`,
}
```

##### Related Procedures With Parameters

* [DeviceCreateBindGroup](/vendor/wgpu/#DeviceCreateBindGroup)

### [BindGroupEntry ¶](#BindGroupEntry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1282)

```
BindGroupEntry :: struct {
	nextInChain: ^ChainedStruct,
	binding:     u32,
	buffer:      Buffer,
	offset:      u64,
	size:        u64,
	sampler:     Sampler,
	textureView: TextureView,
}
```

### [BindGroupEntryExtras ¶](#BindGroupEntryExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L209)

```
BindGroupEntryExtras :: struct {
	using chain:      ChainedStruct,
	buffers:          [^]Buffer `fmt:"v,bufferCount"`,
	bufferCount:      uint,
	samplers:         [^]Sampler `fmt:"v,samplerCount"`,
	samplerCount:     uint,
	textureViews:     [^]TextureView `fmt:"v,textureViewCount"`,
	textureViewCount: uint,
}
```

### [BindGroupLayout ¶](#BindGroupLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L92)

```
BindGroupLayout :: distinct rawptr
```

##### Related Procedures With Parameters

* [BindGroupLayoutAddRef](/vendor/wgpu/#BindGroupLayoutAddRef)
* [BindGroupLayoutRelease](/vendor/wgpu/#BindGroupLayoutRelease)
* [BindGroupLayoutSetLabel](/vendor/wgpu/#BindGroupLayoutSetLabel)



##### Related Procedures With Returns

* [ComputePipelineGetBindGroupLayout](/vendor/wgpu/#ComputePipelineGetBindGroupLayout)
* [DeviceCreateBindGroupLayout](/vendor/wgpu/#DeviceCreateBindGroupLayout)
* [RenderPipelineGetBindGroupLayout](/vendor/wgpu/#RenderPipelineGetBindGroupLayout)

### [BindGroupLayoutDescriptor ¶](#BindGroupLayoutDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1468)

```
BindGroupLayoutDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
	entryCount:  uint,
	entries:     [^]BindGroupLayoutEntry `fmt:"v,entryCount"`,
}
```

##### Related Procedures With Parameters

* [DeviceCreateBindGroupLayout](/vendor/wgpu/#DeviceCreateBindGroupLayout)

### [BindGroupLayoutEntry ¶](#BindGroupLayoutEntry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1292)

```
BindGroupLayoutEntry :: struct {
	nextInChain:      ^ChainedStruct,
	binding:          u32,
	visibility:       bit_set[ShaderStage; u64],
	bindingArraySize: u32,
	buffer:           BufferBindingLayout,
	sampler:          SamplerBindingLayout,
	texture:          TextureBindingLayout,
	storageTexture:   StorageTextureBindingLayout,
}
```

### [BindGroupLayoutEntryExtras ¶](#BindGroupLayoutEntryExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L219)

```
BindGroupLayoutEntryExtras :: struct {
	using chain: ChainedStruct,
	count: u32,
}
```

### [BlendComponent ¶](#BlendComponent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L916)

```
BlendComponent :: struct {
	operation: BlendOperation,
	srcFactor: BlendFactor,
	dstFactor: BlendFactor,
}
```

### [BlendFactor ¶](#BlendFactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L140)

```
BlendFactor :: enum i32 {
	Undefined         = 0, 
	Zero              = 1, 
	One               = 2, 
	Src               = 3, 
	OneMinusSrc       = 4, 
	SrcAlpha          = 5, 
	OneMinusSrcAlpha  = 6, 
	Dst               = 7, 
	OneMinusDst       = 8, 
	DstAlpha          = 9, 
	OneMinusDstAlpha  = 10, 
	SrcAlphaSaturated = 11, 
	Constant          = 12, 
	OneMinusConstant  = 13, 
	Src1              = 14, 
	OneMinusSrc1      = 15, 
	Src1Alpha         = 16, 
	OneMinusSrc1Alpha = 17, 
}
```

### [BlendOperation ¶](#BlendOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L161)

```
BlendOperation :: enum i32 {
	Add             = 0, 
	Subtract        = 1, 
	ReverseSubtract = 2, 
	Min             = 3, 
	Max             = 4, 
}
```

### [BlendState ¶](#BlendState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1303)

```
BlendState :: struct {
	color: BlendComponent,
	alpha: BlendComponent,
}
```

### [Bool ¶](#Bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L84)

```
Bool :: b32
```

##### Related Procedures With Parameters

* [DevicePoll](/vendor/wgpu/#DevicePoll)



##### Related Procedures With Returns

* [AdapterHasFeature](/vendor/wgpu/#AdapterHasFeature)
* [DeviceHasFeature](/vendor/wgpu/#DeviceHasFeature)
* [DeviceStartGraphicsDebuggerCapture](/vendor/wgpu/#DeviceStartGraphicsDebuggerCapture)
* [HasInstanceFeature](/vendor/wgpu/#HasInstanceFeature)
* [InstanceHasWGSLLanguageFeature](/vendor/wgpu/#InstanceHasWGSLLanguageFeature)

### [Buffer ¶](#Buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L93)

```
Buffer :: distinct rawptr
```

##### Related Procedures With Parameters

* [BufferAddRef](/vendor/wgpu/#BufferAddRef)
* [BufferDestroy](/vendor/wgpu/#BufferDestroy)
* [BufferGetConstMappedRange](/vendor/wgpu/#BufferGetConstMappedRange)
* [BufferGetConstMappedRangeSlice](/vendor/wgpu/#BufferGetConstMappedRangeSlice)
* [BufferGetConstMappedRangeTyped](/vendor/wgpu/#BufferGetConstMappedRangeTyped)
* [BufferGetMapState](/vendor/wgpu/#BufferGetMapState)
* [BufferGetMappedRange](/vendor/wgpu/#BufferGetMappedRange)
* [BufferGetMappedRangeSlice](/vendor/wgpu/#BufferGetMappedRangeSlice)
* [BufferGetMappedRangeTyped](/vendor/wgpu/#BufferGetMappedRangeTyped)
* [BufferGetSize](/vendor/wgpu/#BufferGetSize)
* [BufferGetUsage](/vendor/wgpu/#BufferGetUsage)
* [BufferMapAsync](/vendor/wgpu/#BufferMapAsync)
* [BufferReadMappedRange](/vendor/wgpu/#BufferReadMappedRange)
* [BufferRelease](/vendor/wgpu/#BufferRelease)
* [BufferSetLabel](/vendor/wgpu/#BufferSetLabel)
* [BufferUnmap](/vendor/wgpu/#BufferUnmap)
* [BufferWriteMappedRange](/vendor/wgpu/#BufferWriteMappedRange)
* [CommandEncoderClearBuffer](/vendor/wgpu/#CommandEncoderClearBuffer)
* [CommandEncoderCopyBufferToBuffer](/vendor/wgpu/#CommandEncoderCopyBufferToBuffer)
* [CommandEncoderResolveQuerySet](/vendor/wgpu/#CommandEncoderResolveQuerySet)
* [ComputePassEncoderDispatchWorkgroupsIndirect](/vendor/wgpu/#ComputePassEncoderDispatchWorkgroupsIndirect)
* [QueueWriteBuffer](/vendor/wgpu/#QueueWriteBuffer)
* [RawBufferGetConstMappedRange](/vendor/wgpu/#RawBufferGetConstMappedRange)
* [RawBufferGetMappedRange](/vendor/wgpu/#RawBufferGetMappedRange)
* [RenderBundleEncoderDrawIndexedIndirect](/vendor/wgpu/#RenderBundleEncoderDrawIndexedIndirect)
* [RenderBundleEncoderDrawIndirect](/vendor/wgpu/#RenderBundleEncoderDrawIndirect)
* [RenderBundleEncoderSetIndexBuffer](/vendor/wgpu/#RenderBundleEncoderSetIndexBuffer)
* [RenderBundleEncoderSetVertexBuffer](/vendor/wgpu/#RenderBundleEncoderSetVertexBuffer)
* [RenderPassEncoderDrawIndexedIndirect](/vendor/wgpu/#RenderPassEncoderDrawIndexedIndirect)
* [RenderPassEncoderDrawIndirect](/vendor/wgpu/#RenderPassEncoderDrawIndirect)
* [RenderPassEncoderMultiDrawIndexedIndirect](/vendor/wgpu/#RenderPassEncoderMultiDrawIndexedIndirect)
* [RenderPassEncoderMultiDrawIndexedIndirectCount](/vendor/wgpu/#RenderPassEncoderMultiDrawIndexedIndirectCount)
* [RenderPassEncoderMultiDrawIndirect](/vendor/wgpu/#RenderPassEncoderMultiDrawIndirect)
* [RenderPassEncoderMultiDrawIndirectCount](/vendor/wgpu/#RenderPassEncoderMultiDrawIndirectCount)
* [RenderPassEncoderSetIndexBuffer](/vendor/wgpu/#RenderPassEncoderSetIndexBuffer)
* [RenderPassEncoderSetVertexBuffer](/vendor/wgpu/#RenderPassEncoderSetVertexBuffer)



##### Related Procedures With Returns

* [DeviceCreateBuffer](/vendor/wgpu/#DeviceCreateBuffer)
* [DeviceCreateBufferWithDataSlice](/vendor/wgpu/#DeviceCreateBufferWithDataSlice)
* [DeviceCreateBufferWithDataTyped](/vendor/wgpu/#DeviceCreateBufferWithDataTyped)
* [DeviceCreateBufferWithData](/vendor/wgpu/#DeviceCreateBufferWithData) *(procedure groups)*

### [BufferBindingLayout ¶](#BufferBindingLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L922)

```
BufferBindingLayout :: struct {
	nextInChain:      ^ChainedStruct,
	type:             BufferBindingType,
	hasDynamicOffset: b32,
	minBindingSize:   u64,
}
```

### [BufferBindingType ¶](#BufferBindingType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L169)

```
BufferBindingType :: enum i32 {
	BindingNotUsed  = 0, 
	Undefined       = 1, 
	Uniform         = 2, 
	Storage         = 3, 
	ReadOnlyStorage = 4, 
}
```

### [BufferDescriptor ¶](#BufferDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L929)

```
BufferDescriptor :: struct {
	nextInChain:      ^ChainedStruct,
	label:            string,
	usage:            bit_set[BufferUsage; u64],
	size:             u64,
	mappedAtCreation: b32,
}
```

##### Related Procedures With Parameters

* [DeviceCreateBuffer](/vendor/wgpu/#DeviceCreateBuffer)

### [BufferMapCallback ¶](#BufferMapCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L807)

```
BufferMapCallback :: proc "c" (status: MapAsyncStatus, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [BufferMapCallbackInfo ¶](#BufferMapCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L823)

```
BufferMapCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    BufferMapCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [BufferMapAsync](/vendor/wgpu/#BufferMapAsync)

### [BufferMapState ¶](#BufferMapState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L177)

```
BufferMapState :: enum i32 {
	Unmapped = 1, 
	Pending  = 2, 
	Mapped   = 3, 
}
```

##### Related Procedures With Returns

* [BufferGetMapState](/vendor/wgpu/#BufferGetMapState)

### [BufferUsage ¶](#BufferUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L759)

```
BufferUsage :: enum i32 {
	MapRead      = 0, 
	MapWrite     = 1, 
	CopySrc      = 2, 
	CopyDst      = 3, 
	Index        = 4, 
	Vertex       = 5, 
	Uniform      = 6, 
	Storage      = 7, 
	Indirect     = 8, 
	QueryResolve = 9, 
}
```

### [BufferUsageFlags ¶](#BufferUsageFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L771)

```
BufferUsageFlags :: bit_set[BufferUsage; u64]
```

##### Related Procedures With Returns

* [BufferGetUsage](/vendor/wgpu/#BufferGetUsage)

### [BufferWithDataDescriptor ¶](#BufferWithDataDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1924)

```
BufferWithDataDescriptor :: struct {
	label: string,
	usage: bit_set[BufferUsage; u64],
}
```

##### Related Procedures With Parameters

* [DeviceCreateBufferWithDataSlice](/vendor/wgpu/#DeviceCreateBufferWithDataSlice)
* [DeviceCreateBufferWithDataTyped](/vendor/wgpu/#DeviceCreateBufferWithDataTyped)
* [DeviceCreateBufferWithData](/vendor/wgpu/#DeviceCreateBufferWithData) *(procedure groups)*

### [CallbackMode ¶](#CallbackMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L183)

```
CallbackMode :: enum i32 {
	WaitAnyOnly        = 1, 
	AllowProcessEvents = 2, 
	AllowSpontaneos    = 3, 
}
```

### [ChainedStruct ¶](#ChainedStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L818)

```
ChainedStruct :: struct {
	next:  ^ChainedStruct,
	sType: SType,
}
```

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L937)

```
Color :: [4]f64
```

##### Related Procedures With Parameters

* [RenderPassEncoderSetBlendConstant](/vendor/wgpu/#RenderPassEncoderSetBlendConstant)

### [ColorTargetState ¶](#ColorTargetState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1475)

```
ColorTargetState :: struct {
	nextInChain: ^ChainedStruct,
	format:      TextureFormat,
	blend:       ^BlendState,
	writeMask:   bit_set[ColorWriteMask; u64],
}
```

### [ColorWriteMask ¶](#ColorWriteMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L773)

```
ColorWriteMask :: enum i32 {
	Red   = 0, 
	Green = 1, 
	Blue  = 2, 
	Alpha = 3, 
}
```

### [ColorWriteMaskFlags ¶](#ColorWriteMaskFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L779)

```
ColorWriteMaskFlags :: bit_set[ColorWriteMask; u64]
```

##### Related Constants

* [ColorWriteMaskFlags\_All](/vendor/wgpu/#ColorWriteMaskFlags_All)

### [CommandBuffer ¶](#CommandBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L94)

```
CommandBuffer :: distinct rawptr
```

##### Related Procedures With Parameters

* [CommandBufferAddRef](/vendor/wgpu/#CommandBufferAddRef)
* [CommandBufferRelease](/vendor/wgpu/#CommandBufferRelease)
* [CommandBufferSetLabel](/vendor/wgpu/#CommandBufferSetLabel)
* [RawQueueSubmit](/vendor/wgpu/#RawQueueSubmit)
* [RawQueueSubmitForIndex](/vendor/wgpu/#RawQueueSubmitForIndex)



##### Related Procedures With Returns

* [CommandEncoderFinish](/vendor/wgpu/#CommandEncoderFinish)

### [CommandBufferDescriptor ¶](#CommandBufferDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L939)

```
CommandBufferDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
}
```

##### Related Procedures With Parameters

* [CommandEncoderFinish](/vendor/wgpu/#CommandEncoderFinish)

### [CommandEncoder ¶](#CommandEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L95)

```
CommandEncoder :: distinct rawptr
```

##### Related Procedures With Parameters

* [CommandEncoderAddRef](/vendor/wgpu/#CommandEncoderAddRef)
* [CommandEncoderBeginComputePass](/vendor/wgpu/#CommandEncoderBeginComputePass)
* [CommandEncoderBeginRenderPass](/vendor/wgpu/#CommandEncoderBeginRenderPass)
* [CommandEncoderClearBuffer](/vendor/wgpu/#CommandEncoderClearBuffer)
* [CommandEncoderCopyBufferToBuffer](/vendor/wgpu/#CommandEncoderCopyBufferToBuffer)
* [CommandEncoderCopyBufferToTexture](/vendor/wgpu/#CommandEncoderCopyBufferToTexture)
* [CommandEncoderCopyTextureToBuffer](/vendor/wgpu/#CommandEncoderCopyTextureToBuffer)
* [CommandEncoderCopyTextureToTexture](/vendor/wgpu/#CommandEncoderCopyTextureToTexture)
* [CommandEncoderFinish](/vendor/wgpu/#CommandEncoderFinish)
* [CommandEncoderInsertDebugMarker](/vendor/wgpu/#CommandEncoderInsertDebugMarker)
* [CommandEncoderPopDebugGroup](/vendor/wgpu/#CommandEncoderPopDebugGroup)
* [CommandEncoderPushDebugGroup](/vendor/wgpu/#CommandEncoderPushDebugGroup)
* [CommandEncoderRelease](/vendor/wgpu/#CommandEncoderRelease)
* [CommandEncoderResolveQuerySet](/vendor/wgpu/#CommandEncoderResolveQuerySet)
* [CommandEncoderSetLabel](/vendor/wgpu/#CommandEncoderSetLabel)
* [CommandEncoderWriteTimestamp](/vendor/wgpu/#CommandEncoderWriteTimestamp)



##### Related Procedures With Returns

* [DeviceCreateCommandEncoder](/vendor/wgpu/#DeviceCreateCommandEncoder)

### [CommandEncoderDescriptor ¶](#CommandEncoderDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L944)

```
CommandEncoderDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
}
```

##### Related Procedures With Parameters

* [DeviceCreateCommandEncoder](/vendor/wgpu/#DeviceCreateCommandEncoder)

### [CompareFunction ¶](#CompareFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L189)

```
CompareFunction :: enum i32 {
	Undefined    = 0, 
	Never        = 1, 
	Less         = 2, 
	Equal        = 3, 
	LessEqual    = 4, 
	Greater      = 5, 
	NotEqual     = 6, 
	GreaterEqual = 7, 
	Always       = 8, 
}
```

### [CompatibilityModeLimits ¶](#CompatibilityModeLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L949)

```
CompatibilityModeLimits :: struct {
	using chain:                       ChainedStruct,
	maxStorageBuffersInVertexStage:    u32,
	maxStorageTexturesInVertexStage:   u32,
	maxStorageBuffersInFragmentStage:  u32,
	maxStorageTexturesInFragmentStage: u32,
}
```

### [CompilationInfo ¶](#CompilationInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1308)

```
CompilationInfo :: struct {
	nextInChain:  ^ChainedStruct,
	messageCount: uint,
	messages:     [^]CompilationMessage `fmt:"v,messageCount"`,
}
```

### [CompilationInfoCallback ¶](#CompilationInfoCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L808)

```
CompilationInfoCallback :: proc "c" (status: CompilationInfoRequestStatus, compilationInfo: ^CompilationInfo, userdata1: rawptr, userdata2: rawptr)
```

### [CompilationInfoCallbackInfo ¶](#CompilationInfoCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L831)

```
CompilationInfoCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    CompilationInfoCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [ShaderModuleGetCompilationInfo](/vendor/wgpu/#ShaderModuleGetCompilationInfo)

### [CompilationInfoRequestStatus ¶](#CompilationInfoRequestStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L201)

```
CompilationInfoRequestStatus :: enum i32 {
	Success           = 1, 
	CallbackCancelled = 2, 
}
```

### [CompilationMessage ¶](#CompilationMessage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L957)

```
CompilationMessage :: struct {
	nextInChain: ^ChainedStruct,
	message:     string,
	type:        CompilationMessageType,
	lineNum:     u64,
	linePos:     u64,
	offset:      u64,
	length:      u64,
}
```

### [CompilationMessageType ¶](#CompilationMessageType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L206)

```
CompilationMessageType :: enum i32 {
	Error   = 1, 
	Warning = 2, 
	Info    = 3, 
}
```

### [ComponentSwizzle ¶](#ComponentSwizzle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L212)

```
ComponentSwizzle :: enum i32 {
	Undefined, 
	Zero, 
	One, 
	R, 
	G, 
	B, 
	A, 
}
```

### [CompositeAlphaMode ¶](#CompositeAlphaMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L222)

```
CompositeAlphaMode :: enum i32 {
	Auto            = 0, 
	Opaque          = 1, 
	Premultiplied   = 2, 
	Unpremultiplied = 3, 
	Inherit         = 4, 
}
```

### [ComputePassDescriptor ¶](#ComputePassDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1314)

```
ComputePassDescriptor :: struct {
	nextInChain:     ^ChainedStruct,
	label:           string,
	timestampWrites: ^PassTimestampWrites,
}
```

##### Related Procedures With Parameters

* [CommandEncoderBeginComputePass](/vendor/wgpu/#CommandEncoderBeginComputePass)

### [ComputePassEncoder ¶](#ComputePassEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L96)

```
ComputePassEncoder :: distinct rawptr
```

##### Related Procedures With Parameters

* [ComputePassEncoderAddRef](/vendor/wgpu/#ComputePassEncoderAddRef)
* [ComputePassEncoderBeginPipelineStatisticsQuery](/vendor/wgpu/#ComputePassEncoderBeginPipelineStatisticsQuery)
* [ComputePassEncoderDispatchWorkgroups](/vendor/wgpu/#ComputePassEncoderDispatchWorkgroups)
* [ComputePassEncoderDispatchWorkgroupsIndirect](/vendor/wgpu/#ComputePassEncoderDispatchWorkgroupsIndirect)
* [ComputePassEncoderEnd](/vendor/wgpu/#ComputePassEncoderEnd)
* [ComputePassEncoderEndPipelineStatisticsQuery](/vendor/wgpu/#ComputePassEncoderEndPipelineStatisticsQuery)
* [ComputePassEncoderInsertDebugMarker](/vendor/wgpu/#ComputePassEncoderInsertDebugMarker)
* [ComputePassEncoderPopDebugGroup](/vendor/wgpu/#ComputePassEncoderPopDebugGroup)
* [ComputePassEncoderPushDebugGroup](/vendor/wgpu/#ComputePassEncoderPushDebugGroup)
* [ComputePassEncoderRelease](/vendor/wgpu/#ComputePassEncoderRelease)
* [ComputePassEncoderSetBindGroup](/vendor/wgpu/#ComputePassEncoderSetBindGroup)
* [ComputePassEncoderSetImmediates](/vendor/wgpu/#ComputePassEncoderSetImmediates)
* [ComputePassEncoderSetLabel](/vendor/wgpu/#ComputePassEncoderSetLabel)
* [ComputePassEncoderSetPipeline](/vendor/wgpu/#ComputePassEncoderSetPipeline)
* [ComputePassEncoderWriteTimestamp](/vendor/wgpu/#ComputePassEncoderWriteTimestamp)
* [RawComputePassEncoderSetBindGroup](/vendor/wgpu/#RawComputePassEncoderSetBindGroup)



##### Related Procedures With Returns

* [CommandEncoderBeginComputePass](/vendor/wgpu/#CommandEncoderBeginComputePass)

### [ComputePipeline ¶](#ComputePipeline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L97)

```
ComputePipeline :: distinct rawptr
```

##### Related Procedures With Parameters

* [ComputePassEncoderSetPipeline](/vendor/wgpu/#ComputePassEncoderSetPipeline)
* [ComputePipelineAddRef](/vendor/wgpu/#ComputePipelineAddRef)
* [ComputePipelineGetBindGroupLayout](/vendor/wgpu/#ComputePipelineGetBindGroupLayout)
* [ComputePipelineRelease](/vendor/wgpu/#ComputePipelineRelease)
* [ComputePipelineSetLabel](/vendor/wgpu/#ComputePipelineSetLabel)



##### Related Procedures With Returns

* [DeviceCreateComputePipeline](/vendor/wgpu/#DeviceCreateComputePipeline)

### [ComputePipelineDescriptor ¶](#ComputePipelineDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1482)

```
ComputePipelineDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
	layout:      PipelineLayout,
	compute:     ComputeState,
}
```

##### Related Procedures With Parameters

* [DeviceCreateComputePipeline](/vendor/wgpu/#DeviceCreateComputePipeline)
* [DeviceCreateComputePipelineAsync](/vendor/wgpu/#DeviceCreateComputePipelineAsync)

### [ComputeState ¶](#ComputeState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1320)

```
ComputeState :: struct {
	nextInChain:   ^ChainedStruct,
	module:        ShaderModule,
	entryPoint:    string,
	constantCount: uint,
	constants:     [^]ConstantEntry `fmt:"v,constantCount"`,
}
```

### [ConstantEntry ¶](#ConstantEntry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L967)

```
ConstantEntry :: struct {
	nextInChain: ^ChainedStruct,
	key:         string,
	value:       f64,
}
```

### [CreateComputePipelineAsyncCallback ¶](#CreateComputePipelineAsyncCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L809)

```
CreateComputePipelineAsyncCallback :: proc "c" (status: CreatePipelineAsyncStatus, pipeline: ComputePipeline, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [CreateComputePipelineAsyncCallbackInfo ¶](#CreateComputePipelineAsyncCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L839)

```
CreateComputePipelineAsyncCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    CreateComputePipelineAsyncCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [DeviceCreateComputePipelineAsync](/vendor/wgpu/#DeviceCreateComputePipelineAsync)

### [CreatePipelineAsyncStatus ¶](#CreatePipelineAsyncStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L230)

```
CreatePipelineAsyncStatus :: enum i32 {
	Success           = 1, 
	CallbackCancelled = 2, 
	ValidationError   = 3, 
	InternalError     = 4, 
}
```

### [CreateRenderPipelineAsyncCallback ¶](#CreateRenderPipelineAsyncCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L810)

```
CreateRenderPipelineAsyncCallback :: proc "c" (status: CreatePipelineAsyncStatus, pipeline: RenderPipeline, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [CreateRenderPipelineAsyncCallbackInfo ¶](#CreateRenderPipelineAsyncCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L847)

```
CreateRenderPipelineAsyncCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    CreateRenderPipelineAsyncCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [DeviceCreateRenderPipelineAsync](/vendor/wgpu/#DeviceCreateRenderPipelineAsync)

### [CullMode ¶](#CullMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L237)

```
CullMode :: enum i32 {
	Undefined = 0, 
	None      = 1, 
	Front     = 2, 
	Back      = 3, 
}
```

### [DepthStencilState ¶](#DepthStencilState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1328)

```
DepthStencilState :: struct {
	nextInChain:         ^ChainedStruct,
	format:              TextureFormat,
	depthWriteEnabled:   OptionalBool,
	depthCompare:        CompareFunction,
	stencilFront:        StencilFaceState,
	stencilBack:         StencilFaceState,
	stencilReadMask:     u32,
	stencilWriteMask:    u32,
	depthBias:           i32,
	depthBiasSlopeScale: f32,
	depthBiasClamp:      f32,
}
```

### [Device ¶](#Device) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L98)

```
Device :: distinct rawptr
```

##### Related Procedures With Parameters

* [DeviceAddRef](/vendor/wgpu/#DeviceAddRef)
* [DeviceCreateBindGroup](/vendor/wgpu/#DeviceCreateBindGroup)
* [DeviceCreateBindGroupLayout](/vendor/wgpu/#DeviceCreateBindGroupLayout)
* [DeviceCreateBuffer](/vendor/wgpu/#DeviceCreateBuffer)
* [DeviceCreateBufferWithDataSlice](/vendor/wgpu/#DeviceCreateBufferWithDataSlice)
* [DeviceCreateBufferWithDataTyped](/vendor/wgpu/#DeviceCreateBufferWithDataTyped)
* [DeviceCreateCommandEncoder](/vendor/wgpu/#DeviceCreateCommandEncoder)
* [DeviceCreateComputePipeline](/vendor/wgpu/#DeviceCreateComputePipeline)
* [DeviceCreateComputePipelineAsync](/vendor/wgpu/#DeviceCreateComputePipelineAsync)
* [DeviceCreatePipelineLayout](/vendor/wgpu/#DeviceCreatePipelineLayout)
* [DeviceCreateQuerySet](/vendor/wgpu/#DeviceCreateQuerySet)
* [DeviceCreateRenderBundleEncoder](/vendor/wgpu/#DeviceCreateRenderBundleEncoder)
* [DeviceCreateRenderPipeline](/vendor/wgpu/#DeviceCreateRenderPipeline)
* [DeviceCreateRenderPipelineAsync](/vendor/wgpu/#DeviceCreateRenderPipelineAsync)
* [DeviceCreateSampler](/vendor/wgpu/#DeviceCreateSampler)
* [DeviceCreateShaderModule](/vendor/wgpu/#DeviceCreateShaderModule)
* [DeviceCreateShaderModuleSpirV](/vendor/wgpu/#DeviceCreateShaderModuleSpirV)
* [DeviceCreateTexture](/vendor/wgpu/#DeviceCreateTexture)
* [DeviceDestroy](/vendor/wgpu/#DeviceDestroy)
* [DeviceGetAdapterInfo](/vendor/wgpu/#DeviceGetAdapterInfo)
* [DeviceGetFeatures](/vendor/wgpu/#DeviceGetFeatures)
* [DeviceGetLimits](/vendor/wgpu/#DeviceGetLimits)
* [DeviceGetLostFuture](/vendor/wgpu/#DeviceGetLostFuture)
* [DeviceGetNativeMetalCommandQueue](/vendor/wgpu/#DeviceGetNativeMetalCommandQueue)
* [DeviceGetNativeMetalDevice](/vendor/wgpu/#DeviceGetNativeMetalDevice)
* [DeviceGetNativeMetalTexture](/vendor/wgpu/#DeviceGetNativeMetalTexture)
* [DeviceGetQueue](/vendor/wgpu/#DeviceGetQueue)
* [DeviceHasFeature](/vendor/wgpu/#DeviceHasFeature)
* [DevicePoll](/vendor/wgpu/#DevicePoll)
* [DevicePopErrorScope](/vendor/wgpu/#DevicePopErrorScope)
* [DevicePushErrorScope](/vendor/wgpu/#DevicePushErrorScope)
* [DeviceRelease](/vendor/wgpu/#DeviceRelease)
* [DeviceSetLabel](/vendor/wgpu/#DeviceSetLabel)
* [DeviceStartGraphicsDebuggerCapture](/vendor/wgpu/#DeviceStartGraphicsDebuggerCapture)
* [DeviceStopGraphicsDebuggerCapture](/vendor/wgpu/#DeviceStopGraphicsDebuggerCapture)
* [RawDeviceGetAdapterInfo](/vendor/wgpu/#RawDeviceGetAdapterInfo)
* [RawDeviceGetFeatures](/vendor/wgpu/#RawDeviceGetFeatures)
* [RawDeviceGetLimits](/vendor/wgpu/#RawDeviceGetLimits)
* [DeviceCreateBufferWithData](/vendor/wgpu/#DeviceCreateBufferWithData) *(procedure groups)*

### [DeviceDescriptor ¶](#DeviceDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1489)

```
DeviceDescriptor :: struct {
	nextInChain:                 ^ChainedStruct,
	label:                       string,
	requiredFeatureCount:        uint,
	requiredFeatures:            [^]FeatureName `fmt:"v,requiredFeatureCount"`,
	requiredLimits:              ^Limits,
	defaultQueue:                QueueDescriptor,
	deviceLostCallbackInfo:      DeviceLostCallbackInfo,
	uncapturedErrorCallbackInfo: UncapturedErrorCallbackInfo,
}
```

##### Related Procedures With Parameters

* [AdapterRequestDevice](/vendor/wgpu/#AdapterRequestDevice)

### [DeviceExtras ¶](#DeviceExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L134)

```
DeviceExtras :: struct {
	using chain: ChainedStruct,
	tracePath: string,
}
```

### [DeviceLostCallback ¶](#DeviceLostCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L811)

```
DeviceLostCallback :: proc "c" (device: ^Device, reason: DeviceLostReason, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [DeviceLostCallbackInfo ¶](#DeviceLostCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L855)

```
DeviceLostCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    DeviceLostCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

### [DeviceLostReason ¶](#DeviceLostReason) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L244)

```
DeviceLostReason :: enum i32 {
	Undefined         = 0, 
	Unknown           = 1, 
	Destroyed         = 2, 
	CallbackCancelled = 3, 
	FailedCreation    = 4, 
}
```

### [Dx12Compiler ¶](#Dx12Compiler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L46)

```
Dx12Compiler :: enum i32 {
	Undefined, 
	Fxc, 
	Dxc, 
}
```

### [Dx12SwapchainKind ¶](#Dx12SwapchainKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L83)

```
Dx12SwapchainKind :: enum i32 {
	Undefined, 
	DxgiFromHwnd, 
	DxgiFromVisual, 
}
```

### [DxcMaxShaderModel ¶](#DxcMaxShaderModel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L67)

```
DxcMaxShaderModel :: enum i32 {
	V6_0, 
	V6_1, 
	V6_2, 
	V6_3, 
	V6_4, 
	V6_5, 
	V6_6, 
	V6_7, 
}
```

### [ErrorFilter ¶](#ErrorFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L252)

```
ErrorFilter :: enum i32 {
	Validation  = 1, 
	OutOfMemory = 2, 
	Internal    = 3, 
}
```

##### Related Procedures With Parameters

* [DevicePushErrorScope](/vendor/wgpu/#DevicePushErrorScope)

### [ErrorType ¶](#ErrorType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L258)

```
ErrorType :: enum i32 {
	NoError     = 1, 
	Validation  = 2, 
	OutOfMemory = 3, 
	Internal    = 4, 
	Unknown     = 5, 
}
```

### [Extent3D ¶](#Extent3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L973)

```
Extent3D :: struct {
	width:              u32,
	height:             u32,
	depthOrArrayLayers: u32,
}
```

##### Related Procedures With Parameters

* [CommandEncoderCopyBufferToTexture](/vendor/wgpu/#CommandEncoderCopyBufferToTexture)
* [CommandEncoderCopyTextureToBuffer](/vendor/wgpu/#CommandEncoderCopyTextureToBuffer)
* [CommandEncoderCopyTextureToTexture](/vendor/wgpu/#CommandEncoderCopyTextureToTexture)
* [QueueWriteTexture](/vendor/wgpu/#QueueWriteTexture)

### [ExternalTexture ¶](#ExternalTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L112)

```
ExternalTexture :: distinct rawptr
```

##### Related Procedures With Parameters

* [ExternalTextureAddRef](/vendor/wgpu/#ExternalTextureAddRef)
* [ExternalTextureRelease](/vendor/wgpu/#ExternalTextureRelease)
* [ExternalTextureSetLabel](/vendor/wgpu/#ExternalTextureSetLabel)

### [ExternalTextureBindingEntry ¶](#ExternalTextureBindingEntry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L982)

```
ExternalTextureBindingEntry :: struct {
	using chain:     ChainedStruct,
	externalTexture: ExternalTexture,
}
```

 

Chained in a `BindGroupEntry`.

### [ExternalTextureBindingLayout ¶](#ExternalTextureBindingLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L990)

```
ExternalTextureBindingLayout :: struct {
	using chain: ChainedStruct,
}
```

 

Chained in a `BindGroupLayoutEntry`.

### [FeatureLevel ¶](#FeatureLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L266)

```
FeatureLevel :: enum i32 {
	Undefined, 
	Compatibility = 1, 
	Core          = 2, 
}
```

### [FeatureName ¶](#FeatureName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L272)

```
FeatureName :: enum i32 {
	// WebGPU.
	Undefined                                             = 0, 
	CoreFeaturesAndLimits                                 = 1, 
	DepthClipControl                                      = 2, 
	Depth32FloatStencil8                                  = 3, 
	TextureCompressionBC                                  = 4, 
	TextureCompressionBCSliced3D                          = 5, 
	TextureCompressionETC2                                = 6, 
	TextureCompressionASTC                                = 7, 
	TextureCompressionASTCSliced3D                        = 8, 
	TimestampQuery                                        = 9, 
	IndirectFirstInstance                                 = 10, 
	ShaderF16                                             = 11, 
	RG11B10UfloatRenderable                               = 12, 
	BGRA8UnormStorage                                     = 13, 
	Float32Filterable                                     = 14, 
	Float32Blendable                                      = 15, 
	ClipDistances                                         = 16, 
	DualSourceBlending                                    = 17, 
	Subgroups                                             = 18, 
	TextureFormatsTier1                                   = 19, 
	TextureFormatsTier2                                   = 20, 
	PrimitiveIndex                                        = 21, 
	TextureComponentSwizzle                               = 22, 
	// Native.
	Immediates                                            = 196609, 
	TextureAdapterSpecificFormatFeatures, 
	MultiDrawIndirectCount                                = 196612, 
	VertexWritableStorage, 
	TextureBindingArray, 
	SampledTextureAndStorageBufferArrayNonUniformIndexing, 
	PipelineStatisticsQuery, 
	StorageResourceBindingArray, 
	PartiallyBoundBindingArray, 
	TextureFormat16bitNorm, 
	TextureCompressionAstcHdr, 
	MappablePrimaryBuffers                                = 196622, 
	BufferBindingArray, 
	UniformBufferAndStorageTextureArrayNonUniformIndexing, 
	// TODO: requires wgpu.h api change
	// AddressModeClampToZero,
	// AddressModeClampToBorder,
	PolygonModeLine                                       = 196627, 
	PolygonModePoint, 
	ConservativeRasterization, 
	// ClearTexture,
	SpirvShaderPassthrough                                = 196631, 
	// MultiView,
	VertexAttribute64bit                                  = 196633, 
	TextureFormatNv12, 
	RayQuery                                              = 196636, 
	ShaderF64, 
	ShaderI16, 
	ShaderEarlyDepthTest                                  = 196640, 
	Subgroup, 
	SubgroupVertex, 
	SubgroupBarrier, 
	TimestampQueryInsideEncoders, 
	TimestampQueryInsidePasses, 
	ShaderInt64, 
}
```

##### Related Procedures With Parameters

* [AdapterHasFeature](/vendor/wgpu/#AdapterHasFeature)
* [DeviceHasFeature](/vendor/wgpu/#DeviceHasFeature)

### [FilterMode ¶](#FilterMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L336)

```
FilterMode :: enum i32 {
	Undefined = 0, 
	Nearest   = 1, 
	Linear    = 2, 
}
```

### [Flags ¶](#Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L83)

```
Flags :: u64
```

##### Related Procedures With Parameters

* [CommandEncoderClearBuffer](/vendor/wgpu/#CommandEncoderClearBuffer)
* [CommandEncoderCopyBufferToBuffer](/vendor/wgpu/#CommandEncoderCopyBufferToBuffer)
* [CommandEncoderResolveQuerySet](/vendor/wgpu/#CommandEncoderResolveQuerySet)
* [ComputePassEncoderDispatchWorkgroupsIndirect](/vendor/wgpu/#ComputePassEncoderDispatchWorkgroupsIndirect)
* [InstanceWaitAny](/vendor/wgpu/#InstanceWaitAny)
* [QueueWriteBuffer](/vendor/wgpu/#QueueWriteBuffer)
* [RenderBundleEncoderDrawIndexedIndirect](/vendor/wgpu/#RenderBundleEncoderDrawIndexedIndirect)
* [RenderBundleEncoderDrawIndirect](/vendor/wgpu/#RenderBundleEncoderDrawIndirect)
* [RenderBundleEncoderSetIndexBuffer](/vendor/wgpu/#RenderBundleEncoderSetIndexBuffer)
* [RenderBundleEncoderSetVertexBuffer](/vendor/wgpu/#RenderBundleEncoderSetVertexBuffer)
* [RenderPassEncoderDrawIndexedIndirect](/vendor/wgpu/#RenderPassEncoderDrawIndexedIndirect)
* [RenderPassEncoderDrawIndirect](/vendor/wgpu/#RenderPassEncoderDrawIndirect)
* [RenderPassEncoderMultiDrawIndexedIndirect](/vendor/wgpu/#RenderPassEncoderMultiDrawIndexedIndirect)
* [RenderPassEncoderMultiDrawIndexedIndirectCount](/vendor/wgpu/#RenderPassEncoderMultiDrawIndexedIndirectCount)
* [RenderPassEncoderMultiDrawIndirect](/vendor/wgpu/#RenderPassEncoderMultiDrawIndirect)
* [RenderPassEncoderMultiDrawIndirectCount](/vendor/wgpu/#RenderPassEncoderMultiDrawIndirectCount)
* [RenderPassEncoderSetIndexBuffer](/vendor/wgpu/#RenderPassEncoderSetIndexBuffer)
* [RenderPassEncoderSetVertexBuffer](/vendor/wgpu/#RenderPassEncoderSetVertexBuffer)



##### Related Procedures With Returns

* [BufferGetSize](/vendor/wgpu/#BufferGetSize)

### [FragmentState ¶](#FragmentState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1533)

```
FragmentState :: struct {
	nextInChain:   ^ChainedStruct,
	module:        ShaderModule,
	entryPoint:    string,
	constantCount: uint,
	constants:     [^]ConstantEntry `fmt:"v,constantCount"`,
	targetCount:   uint,
	targets:       [^]ColorTargetState `fmt:"v,targetCount"`,
}
```

### [FrontFace ¶](#FrontFace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L342)

```
FrontFace :: enum i32 {
	Undefined = 0, 
	CCW       = 1, 
	CW        = 2, 
}
```

### [Future ¶](#Future) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L994)

```
Future :: struct {
	id: u64,
}
```

##### Related Procedures With Returns

* [AdapterRequestDevice](/vendor/wgpu/#AdapterRequestDevice)
* [BufferMapAsync](/vendor/wgpu/#BufferMapAsync)
* [DeviceCreateComputePipelineAsync](/vendor/wgpu/#DeviceCreateComputePipelineAsync)
* [DeviceCreateRenderPipelineAsync](/vendor/wgpu/#DeviceCreateRenderPipelineAsync)
* [DeviceGetLostFuture](/vendor/wgpu/#DeviceGetLostFuture)
* [DevicePopErrorScope](/vendor/wgpu/#DevicePopErrorScope)
* [InstanceRequestAdapter](/vendor/wgpu/#InstanceRequestAdapter)
* [QueueOnSubmittedWorkDone](/vendor/wgpu/#QueueOnSubmittedWorkDone)
* [ShaderModuleGetCompilationInfo](/vendor/wgpu/#ShaderModuleGetCompilationInfo)

### [FutureWaitInfo ¶](#FutureWaitInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1342)

```
FutureWaitInfo :: struct {
	future:    Future,
	completed: b32,
}
```

##### Related Procedures With Parameters

* [InstanceWaitAny](/vendor/wgpu/#InstanceWaitAny)

### [GLFenceBehaviour ¶](#GLFenceBehaviour) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L78)

```
GLFenceBehaviour :: enum i32 {
	Normal, 
	AutoFinish, 
}
```

### [Gles3MinorVersion ¶](#Gles3MinorVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L52)

```
Gles3MinorVersion :: enum i32 {
	Automatic, 
	Version0, 
	Version1, 
	Version2, 
}
```

### [GlobalReport ¶](#GlobalReport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L199)

```
GlobalReport :: struct {
	surfaces: RegistryReport,
	hub:      HubReport,
}
```

##### Related Procedures With Parameters

* [RawGenerateReport](/vendor/wgpu/#RawGenerateReport)



##### Related Procedures With Returns

* [GenerateReport](/vendor/wgpu/#GenerateReport)

### [HubReport ¶](#HubReport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L179)

```
HubReport :: struct {
	adapters:         RegistryReport,
	devices:          RegistryReport,
	queues:           RegistryReport,
	pipelineLayouts:  RegistryReport,
	shaderModules:    RegistryReport,
	bindGroupLayouts: RegistryReport,
	bindGroups:       RegistryReport,
	commandBuffers:   RegistryReport,
	renderBundles:    RegistryReport,
	renderPipelines:  RegistryReport,
	computePipelines: RegistryReport,
	pipelineCaches:   RegistryReport,
	querySets:        RegistryReport,
	buffers:          RegistryReport,
	textures:         RegistryReport,
	textureViews:     RegistryReport,
	samplers:         RegistryReport,
}
```

### [IndexFormat ¶](#IndexFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L348)

```
IndexFormat :: enum i32 {
	Undefined = 0, 
	Uint16    = 1, 
	Uint32    = 2, 
}
```

##### Related Procedures With Parameters

* [RenderBundleEncoderSetIndexBuffer](/vendor/wgpu/#RenderBundleEncoderSetIndexBuffer)
* [RenderPassEncoderSetIndexBuffer](/vendor/wgpu/#RenderPassEncoderSetIndexBuffer)

### [Instance ¶](#Instance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L99)

```
Instance :: distinct rawptr
```

##### Related Procedures With Parameters

* [GenerateReport](/vendor/wgpu/#GenerateReport)
* [InstanceAddRef](/vendor/wgpu/#InstanceAddRef)
* [InstanceCreateSurface](/vendor/wgpu/#InstanceCreateSurface)
* [InstanceEnumerateAdapters](/vendor/wgpu/#InstanceEnumerateAdapters)
* [InstanceGetWGSLLanguageFeatures](/vendor/wgpu/#InstanceGetWGSLLanguageFeatures)
* [InstanceHasWGSLLanguageFeature](/vendor/wgpu/#InstanceHasWGSLLanguageFeature)
* [InstanceProcessEvents](/vendor/wgpu/#InstanceProcessEvents)
* [InstanceRelease](/vendor/wgpu/#InstanceRelease)
* [InstanceRequestAdapter](/vendor/wgpu/#InstanceRequestAdapter)
* [InstanceWaitAny](/vendor/wgpu/#InstanceWaitAny)
* [RawGenerateReport](/vendor/wgpu/#RawGenerateReport)
* [RawInstanceEnumerateAdapters](/vendor/wgpu/#RawInstanceEnumerateAdapters)



##### Related Procedures With Returns

* [CreateInstance](/vendor/wgpu/#CreateInstance)
* [RawCreateInstance](/vendor/wgpu/#RawCreateInstance)

### [InstanceBackend ¶](#InstanceBackend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L17)

```
InstanceBackend :: enum i32 {
	Vulkan, 
	GL, 
	Metal, 
	DX12, 
	// DX11,
	BrowserWebGPU = 5, 
}
```

### [InstanceBackendFlags ¶](#InstanceBackendFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L25)

```
InstanceBackendFlags :: bit_set[InstanceBackend; u64]
```

##### Related Constants

* [InstanceBackendFlags\_All](/vendor/wgpu/#InstanceBackendFlags_All)
* [InstanceBackendFlags\_Primary](/vendor/wgpu/#InstanceBackendFlags_Primary)
* [InstanceBackendFlags\_Secondary](/vendor/wgpu/#InstanceBackendFlags_Secondary)

### [InstanceDescriptor ¶](#InstanceDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1347)

```
InstanceDescriptor :: struct {
	nextInChain:          ^ChainedStruct,
	requiredFeatureCount: uint,
	requiredFeatures:     [^]InstanceFeatureName `fmt:"v,requiredFeatureCount"`,
	requiredLimits:       ^InstanceLimits,
}
```

##### Related Procedures With Parameters

* [CreateInstance](/vendor/wgpu/#CreateInstance)
* [RawCreateInstance](/vendor/wgpu/#RawCreateInstance)

### [InstanceEnumerateAdapterOptions ¶](#InstanceEnumerateAdapterOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L204)

```
InstanceEnumerateAdapterOptions :: struct {
	nextInChain: ^ChainedStruct,
	backends:    bit_set[InstanceBackend; u64],
}
```

##### Related Procedures With Parameters

* [InstanceEnumerateAdapters](/vendor/wgpu/#InstanceEnumerateAdapters)
* [RawInstanceEnumerateAdapters](/vendor/wgpu/#RawInstanceEnumerateAdapters)

### [InstanceExtras ¶](#InstanceExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L119)

```
InstanceExtras :: struct {
	using chain:             ChainedStruct,
	backends:                bit_set[InstanceBackend; u64],
	flags:                   bit_set[InstanceFlag; u64],
	dx12ShaderCompiler:      Dx12Compiler,
	gles3MinorVersion:       Gles3MinorVersion,
	glFenceBehaviour:        GLFenceBehaviour,
	dxcPath:                 string,
	dcxMaxShaderModel:       DxcMaxShaderModel,
	dx12PresentationSystem:  Dx12SwapchainKind,
	budgetForDeviceCreation: ^u8,
	budgetForDeviceLoss:     ^u8,
	displayHandle:           NativeDisplayHandle,
}
```

### [InstanceFeatureName ¶](#InstanceFeatureName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L354)

```
InstanceFeatureName :: enum i32 {
	TimedWaitAny              = 1, 
	ShaderSourceSPIRV         = 2, 
	MultipleDevicesPerAdapter = 3, 
}
```

##### Related Procedures With Parameters

* [HasInstanceFeature](/vendor/wgpu/#HasInstanceFeature)

### [InstanceFlag ¶](#InstanceFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L30)

```
InstanceFlag :: enum i32 {
	Debug, 
	Validation, 
	DiscardHalLabels, 
	AllowUnderlyingNoncompliantAdapter, 
	GPUBasedValidation, 
	ValidationIndirectCall, 
	AutomaticTimestampNormalization, 
	Default                            = 24, 
	Debugging, 
	AdvancedDebugging, 
	WithEnv, 
}
```

### [InstanceFlags ¶](#InstanceFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L43)

```
InstanceFlags :: bit_set[InstanceFlag; u64]
```

##### Related Constants

* [InstanceFlags\_Empty](/vendor/wgpu/#InstanceFlags_Empty)

### [InstanceLimits ¶](#InstanceLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L998)

```
InstanceLimits :: struct {
	nextInChain:          ^ChainedStruct,
	timedWaitAnyMaxCount: uint,
}
```

##### Related Procedures With Parameters

* [RawGetInstanceLimits](/vendor/wgpu/#RawGetInstanceLimits)



##### Related Procedures With Returns

* [GetInstanceLimits](/vendor/wgpu/#GetInstanceLimits)

### [Limits ¶](#Limits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1354)

```
Limits :: struct {
	nextInChain:                               ^ChainedStruct,
	maxTextureDimension1D:                     u32,
	maxTextureDimension2D:                     u32,
	maxTextureDimension3D:                     u32,
	maxTextureArrayLayers:                     u32,
	maxBindGroups:                             u32,
	maxBindGroupsPlusVertexBuffers:            u32,
	maxBindingsPerBindGroup:                   u32,
	maxDynamicUniformBuffersPerPipelineLayout: u32,
	maxDynamicStorageBuffersPerPipelineLayout: u32,
	maxSampledTexturesPerShaderStage:          u32,
	maxSamplersPerShaderStage:                 u32,
	maxStorageBuffersPerShaderStage:           u32,
	maxStorageTexturesPerShaderStage:          u32,
	maxUniformBuffersPerShaderStage:           u32,
	maxUniformBufferBindingSize:               u64,
	maxStorageBufferBindingSize:               u64,
	minUniformBufferOffsetAlignment:           u32,
	minStorageBufferOffsetAlignment:           u32,
	maxVertexBuffers:                          u32,
	maxBufferSize:                             u64,
	maxVertexAttributes:                       u32,
	maxVertexBufferArrayStride:                u32,
	maxInterStageShaderVariables:              u32,
	maxColorAttachments:                       u32,
	maxColorAttachmentBytesPerSample:          u32,
	maxComputeWorkgroupStorageSize:            u32,
	maxComputeInvocationsPerWorkgroup:         u32,
	maxComputeWorkgroupSizeX:                  u32,
	maxComputeWorkgroupSizeY:                  u32,
	maxComputeWorkgroupSizeZ:                  u32,
	maxComputeWorkgroupsPerDimension:          u32,
	maxImmediateSize:                          u32,
}
```

##### Related Procedures With Parameters

* [RawAdapterGetLimits](/vendor/wgpu/#RawAdapterGetLimits)
* [RawDeviceGetLimits](/vendor/wgpu/#RawDeviceGetLimits)



##### Related Procedures With Returns

* [AdapterGetLimits](/vendor/wgpu/#AdapterGetLimits)
* [DeviceGetLimits](/vendor/wgpu/#DeviceGetLimits)

### [LoadOp ¶](#LoadOp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L360)

```
LoadOp :: enum i32 {
	Undefined = 0, 
	Load      = 1, 
	Clear     = 2, 
}
```

### [LogCallback ¶](#LogCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L259)

```
LogCallback :: proc "c" (level: LogLevel, message: string, userdata: rawptr)
```

##### Related Procedures With Parameters

* [SetLogCallback](/vendor/wgpu/#SetLogCallback)

### [LogLevel ¶](#LogLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L8)

```
LogLevel :: enum i32 {
	Off, 
	Error, 
	Warn, 
	Info, 
	Debug, 
	Trace, 
}
```

##### Related Procedures With Parameters

* [ConvertWGPUToOdinLogLevel](/vendor/wgpu/#ConvertWGPUToOdinLogLevel)
* [SetLogLevel](/vendor/wgpu/#SetLogLevel)
* [ConvertLogLevel](/vendor/wgpu/#ConvertLogLevel) *(procedure groups)*



##### Related Procedures With Returns

* [ConvertOdinToWGPULogLevel](/vendor/wgpu/#ConvertOdinToWGPULogLevel)

### [MapAsyncStatus ¶](#MapAsyncStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L366)

```
MapAsyncStatus :: enum i32 {
	Success           = 1, 
	CallbackCancelled = 2, 
	Error             = 3, 
	Aborted           = 4, 
}
```

### [MapMode ¶](#MapMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L782)

```
MapMode :: enum i32 {
	Read  = 0, 
	Write = 1, 
}
```

### [MapModeFlags ¶](#MapModeFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L786)

```
MapModeFlags :: bit_set[MapMode; u64]
```

##### Related Procedures With Parameters

* [BufferMapAsync](/vendor/wgpu/#BufferMapAsync)

### [MipmapFilterMode ¶](#MipmapFilterMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L373)

```
MipmapFilterMode :: enum i32 {
	Undefined = 0, 
	Nearest   = 1, 
	Linear    = 2, 
}
```

### [MultisampleState ¶](#MultisampleState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1003)

```
MultisampleState :: struct {
	nextInChain:            ^ChainedStruct,
	count:                  u32,
	mask:                   u32,
	alphaToCoverageEnabled: b32,
}
```

### [NativeDisplayHandle ¶](#NativeDisplayHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L110)

```
NativeDisplayHandle :: struct {
	type: NativeDisplayHandleType,
	using data: struct #raw_union {
		xlib:    XlibDisplayHandle,
		xcb:     XcbDisplayHandle,
		wayland: WaylandDisplayHandle,
	},
}
```

### [NativeDisplayHandleType ¶](#NativeDisplayHandleType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L89)

```
NativeDisplayHandleType :: enum i32 {
	None, 
	Xlib, 
	Xcb, 
	Wayland, 
}
```

### [NativeLimits ¶](#NativeLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L139)

```
NativeLimits :: struct {
	using chain:                           ChainedStruct,
	maxImmediateSize:                      u32,
	maxNonSamplerBindings:                 u32,
	maxBindingArrayElementsPerShaderStage: u32,
}
```

### [OptionalBool ¶](#OptionalBool) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L379)

```
OptionalBool :: enum i32 {
	False     = 0, 
	True      = 1, 
	Undefined = 2, 
}
```

### [Origin3D ¶](#Origin3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1010)

```
Origin3D :: struct {
	x: u32,
	y: u32,
	z: u32,
}
```

### [PassTimestampWrites ¶](#PassTimestampWrites) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1016)

```
PassTimestampWrites :: struct {
	nextInChain:               ^ChainedStruct,
	querySet:                  QuerySet,
	beginningOfPassWriteIndex: u32,
	endOfPassWriteIndex:       u32,
}
```

### [PipelineLayout ¶](#PipelineLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L100)

```
PipelineLayout :: distinct rawptr
```

##### Related Procedures With Parameters

* [PipelineLayoutAddRef](/vendor/wgpu/#PipelineLayoutAddRef)
* [PipelineLayoutRelease](/vendor/wgpu/#PipelineLayoutRelease)
* [PipelineLayoutSetLabel](/vendor/wgpu/#PipelineLayoutSetLabel)



##### Related Procedures With Returns

* [DeviceCreatePipelineLayout](/vendor/wgpu/#DeviceCreatePipelineLayout)

### [PipelineLayoutDescriptor ¶](#PipelineLayoutDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1023)

```
PipelineLayoutDescriptor :: struct {
	nextInChain:          ^ChainedStruct,
	label:                string,
	bindGroupLayoutCount: uint,
	bindGroupLayouts:     [^]BindGroupLayout `fmt:"v,bindGroupLayoutCount"`,
	immediateSize:        u32,
}
```

##### Related Procedures With Parameters

* [DeviceCreatePipelineLayout](/vendor/wgpu/#DeviceCreatePipelineLayout)

### [PipelineLayoutExtras ¶](#PipelineLayoutExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L146)

```
PipelineLayoutExtras :: struct {
	using chain:       ChainedStruct,
	immediateDataSize: u32,
}
```

### [PipelineStatisticName ¶](#PipelineStatisticName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L59)

```
PipelineStatisticName :: enum i32 {
	VertexShaderInvocations, 
	ClipperInvocations, 
	ClipperPrimitivesOut, 
	FragmentShaderInvocations, 
	ComputeShaderInvocations, 
}
```

### [PolygonMode ¶](#PolygonMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L247)

```
PolygonMode :: enum i32 {
	Fill, 
	Line, 
	Point, 
}
```

### [PopErrorScopeCallback ¶](#PopErrorScopeCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L812)

```
PopErrorScopeCallback :: proc "c" (status: PopErrorScopeStatus, type: ErrorType, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [PopErrorScopeCallbackInfo ¶](#PopErrorScopeCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L863)

```
PopErrorScopeCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    PopErrorScopeCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [DevicePopErrorScope](/vendor/wgpu/#DevicePopErrorScope)

### [PopErrorScopeStatus ¶](#PopErrorScopeStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L385)

```
PopErrorScopeStatus :: enum i32 {
	Success           = 1, 
	CallbackCancelled = 2, 
	Error             = 3, 
}
```

### [PowerPreference ¶](#PowerPreference) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L391)

```
PowerPreference :: enum i32 {
	Undefined       = 0, 
	LowPower        = 1, 
	HighPerformance = 2, 
}
```

### [PredefinedColorSpace ¶](#PredefinedColorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L397)

```
PredefinedColorSpace :: enum i32 {
	SRGB      = 1, 
	DisplayP3, 
}
```

### [PresentMode ¶](#PresentMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L402)

```
PresentMode :: enum i32 {
	Undefined   = 0, 
	Fifo        = 1, 
	FifoRelaxed = 2, 
	Immediate   = 3, 
	Mailbox     = 4, 
}
```

### [PrimitiveState ¶](#PrimitiveState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1031)

```
PrimitiveState :: struct {
	nextInChain:      ^ChainedStruct,
	topology:         PrimitiveTopology,
	stripIndexFormat: IndexFormat,
	frontFace:        FrontFace,
	cullMode:         CullMode,
	unclippedDepth:   b32,
}
```

### [PrimitiveStateExtras ¶](#PrimitiveStateExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L253)

```
PrimitiveStateExtras :: struct {
	using chain:  ChainedStruct,
	polygonMode:  PolygonMode,
	conservative: b32,
}
```

### [PrimitiveTopology ¶](#PrimitiveTopology) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L410)

```
PrimitiveTopology :: enum i32 {
	Undefined     = 0, 
	PointList     = 1, 
	LineList      = 2, 
	LineStrip     = 3, 
	TriangleList  = 4, 
	TriangleStrip = 5, 
}
```

### [Proc ¶](#Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L805)

```
Proc :: distinct rawptr
```

##### Related Procedures With Returns

* [GetProcAddress](/vendor/wgpu/#GetProcAddress)

### [QuerySet ¶](#QuerySet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L101)

```
QuerySet :: distinct rawptr
```

##### Related Procedures With Parameters

* [CommandEncoderResolveQuerySet](/vendor/wgpu/#CommandEncoderResolveQuerySet)
* [CommandEncoderWriteTimestamp](/vendor/wgpu/#CommandEncoderWriteTimestamp)
* [ComputePassEncoderBeginPipelineStatisticsQuery](/vendor/wgpu/#ComputePassEncoderBeginPipelineStatisticsQuery)
* [ComputePassEncoderWriteTimestamp](/vendor/wgpu/#ComputePassEncoderWriteTimestamp)
* [QuerySetAddRef](/vendor/wgpu/#QuerySetAddRef)
* [QuerySetDestroy](/vendor/wgpu/#QuerySetDestroy)
* [QuerySetGetCount](/vendor/wgpu/#QuerySetGetCount)
* [QuerySetGetType](/vendor/wgpu/#QuerySetGetType)
* [QuerySetRelease](/vendor/wgpu/#QuerySetRelease)
* [QuerySetSetLabel](/vendor/wgpu/#QuerySetSetLabel)
* [RenderPassEncoderBeginPipelineStatisticsQuery](/vendor/wgpu/#RenderPassEncoderBeginPipelineStatisticsQuery)
* [RenderPassEncoderWriteTimestamp](/vendor/wgpu/#RenderPassEncoderWriteTimestamp)



##### Related Procedures With Returns

* [DeviceCreateQuerySet](/vendor/wgpu/#DeviceCreateQuerySet)

### [QuerySetDescriptor ¶](#QuerySetDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1040)

```
QuerySetDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
	type:        QueryType,
	count:       u32,
}
```

##### Related Procedures With Parameters

* [DeviceCreateQuerySet](/vendor/wgpu/#DeviceCreateQuerySet)

### [QuerySetDescriptorExtras ¶](#QuerySetDescriptorExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L224)

```
QuerySetDescriptorExtras :: struct {
	using chain:            ChainedStruct,
	pipelineStatistics:     [^]PipelineStatisticName `fmt:"v,pipelineStatisticCount"`,
	pipelineStatisticCount: uint,
}
```

### [QueryType ¶](#QueryType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L419)

```
QueryType :: enum i32 {
	// WebGPU.
	Occlusion          = 1, 
	Timestamp          = 2, 
	// Native.
	PipelineStatistics = 196608, 
}
```

##### Related Procedures With Returns

* [QuerySetGetType](/vendor/wgpu/#QuerySetGetType)

### [Queue ¶](#Queue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L102)

```
Queue :: distinct rawptr
```

##### Related Procedures With Parameters

* [QueueAddRef](/vendor/wgpu/#QueueAddRef)
* [QueueGetTimestampPeriod](/vendor/wgpu/#QueueGetTimestampPeriod)
* [QueueOnSubmittedWorkDone](/vendor/wgpu/#QueueOnSubmittedWorkDone)
* [QueueRelease](/vendor/wgpu/#QueueRelease)
* [QueueSetLabel](/vendor/wgpu/#QueueSetLabel)
* [QueueSubmit](/vendor/wgpu/#QueueSubmit)
* [QueueSubmitForIndex](/vendor/wgpu/#QueueSubmitForIndex)
* [QueueWriteBuffer](/vendor/wgpu/#QueueWriteBuffer)
* [QueueWriteTexture](/vendor/wgpu/#QueueWriteTexture)
* [RawQueueSubmit](/vendor/wgpu/#RawQueueSubmit)
* [RawQueueSubmitForIndex](/vendor/wgpu/#RawQueueSubmitForIndex)



##### Related Procedures With Returns

* [DeviceGetQueue](/vendor/wgpu/#DeviceGetQueue)

### [QueueDescriptor ¶](#QueueDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1047)

```
QueueDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
}
```

### [QueueWorkDoneCallback ¶](#QueueWorkDoneCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L813)

```
QueueWorkDoneCallback :: proc "c" (status: QueueWorkDoneStatus, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [QueueWorkDoneCallbackInfo ¶](#QueueWorkDoneCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L871)

```
QueueWorkDoneCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    QueueWorkDoneCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [QueueOnSubmittedWorkDone](/vendor/wgpu/#QueueOnSubmittedWorkDone)

### [QueueWorkDoneStatus ¶](#QueueWorkDoneStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L428)

```
QueueWorkDoneStatus :: enum i32 {
	Success           = 1, 
	CallbackCancelled = 2, 
	Error             = 3, 
}
```

### [RegistryReport ¶](#RegistryReport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L172)

```
RegistryReport :: struct {
	numAllocated:        uint,
	numKeptFromUser:     uint,
	numReleasedFromUser: uint,
	elementSize:         uint,
}
```

### [RenderBundle ¶](#RenderBundle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L103)

```
RenderBundle :: distinct rawptr
```

##### Related Procedures With Parameters

* [RawRenderPassEncoderExecuteBundles](/vendor/wgpu/#RawRenderPassEncoderExecuteBundles)
* [RenderBundleAddRef](/vendor/wgpu/#RenderBundleAddRef)
* [RenderBundleRelease](/vendor/wgpu/#RenderBundleRelease)
* [RenderBundleSetLabel](/vendor/wgpu/#RenderBundleSetLabel)



##### Related Procedures With Returns

* [RenderBundleEncoderFinish](/vendor/wgpu/#RenderBundleEncoderFinish)

### [RenderBundleDescriptor ¶](#RenderBundleDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1052)

```
RenderBundleDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
}
```

##### Related Procedures With Parameters

* [RenderBundleEncoderFinish](/vendor/wgpu/#RenderBundleEncoderFinish)

### [RenderBundleEncoder ¶](#RenderBundleEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L104)

```
RenderBundleEncoder :: distinct rawptr
```

##### Related Procedures With Parameters

* [RawRenderBundleEncoderSetBindGroup](/vendor/wgpu/#RawRenderBundleEncoderSetBindGroup)
* [RenderBundleEncoderAddRef](/vendor/wgpu/#RenderBundleEncoderAddRef)
* [RenderBundleEncoderDraw](/vendor/wgpu/#RenderBundleEncoderDraw)
* [RenderBundleEncoderDrawIndexed](/vendor/wgpu/#RenderBundleEncoderDrawIndexed)
* [RenderBundleEncoderDrawIndexedIndirect](/vendor/wgpu/#RenderBundleEncoderDrawIndexedIndirect)
* [RenderBundleEncoderDrawIndirect](/vendor/wgpu/#RenderBundleEncoderDrawIndirect)
* [RenderBundleEncoderFinish](/vendor/wgpu/#RenderBundleEncoderFinish)
* [RenderBundleEncoderInsertDebugMarker](/vendor/wgpu/#RenderBundleEncoderInsertDebugMarker)
* [RenderBundleEncoderPopDebugGroup](/vendor/wgpu/#RenderBundleEncoderPopDebugGroup)
* [RenderBundleEncoderPushDebugGroup](/vendor/wgpu/#RenderBundleEncoderPushDebugGroup)
* [RenderBundleEncoderRelease](/vendor/wgpu/#RenderBundleEncoderRelease)
* [RenderBundleEncoderSetBindGroup](/vendor/wgpu/#RenderBundleEncoderSetBindGroup)
* [RenderBundleEncoderSetImmediates](/vendor/wgpu/#RenderBundleEncoderSetImmediates)
* [RenderBundleEncoderSetIndexBuffer](/vendor/wgpu/#RenderBundleEncoderSetIndexBuffer)
* [RenderBundleEncoderSetLabel](/vendor/wgpu/#RenderBundleEncoderSetLabel)
* [RenderBundleEncoderSetPipeline](/vendor/wgpu/#RenderBundleEncoderSetPipeline)
* [RenderBundleEncoderSetVertexBuffer](/vendor/wgpu/#RenderBundleEncoderSetVertexBuffer)



##### Related Procedures With Returns

* [DeviceCreateRenderBundleEncoder](/vendor/wgpu/#DeviceCreateRenderBundleEncoder)

### [RenderBundleEncoderDescriptor ¶](#RenderBundleEncoderDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1057)

```
RenderBundleEncoderDescriptor :: struct {
	nextInChain:        ^ChainedStruct,
	label:              string,
	colorFormatCount:   uint,
	colorFormats:       [^]TextureFormat `fmt:"v,colorFormatCount"`,
	depthStencilFormat: TextureFormat,
	sampleCount:        u32,
	depthReadOnly:      b32,
	stencilReadOnly:    b32,
}
```

##### Related Procedures With Parameters

* [DeviceCreateRenderBundleEncoder](/vendor/wgpu/#DeviceCreateRenderBundleEncoder)

### [RenderPassColorAttachment ¶](#RenderPassColorAttachment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1390)

```
RenderPassColorAttachment :: struct {
	nextInChain:   ^ChainedStruct,
	view:          TextureView,
	depthSlice:    u32,
	resolveTarget: TextureView,
	loadOp:        LoadOp,
	storeOp:       StoreOp,
	clearValue:    [4]f64,
}
```

### [RenderPassDepthStencilAttachment ¶](#RenderPassDepthStencilAttachment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1068)

```
RenderPassDepthStencilAttachment :: struct {
	nextInChain:       ^ChainedStruct,
	view:              TextureView,
	depthLoadOp:       LoadOp,
	depthStoreOp:      StoreOp,
	depthClearValue:   f32,
	depthReadOnly:     b32,
	stencilLoadOp:     LoadOp,
	stencilStoreOp:    StoreOp,
	stencilClearValue: u32,
	stencilReadOnly:   b32,
}
```

### [RenderPassDescriptor ¶](#RenderPassDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1500)

```
RenderPassDescriptor :: struct {
	nextInChain:            ^ChainedStruct,
	label:                  string,
	colorAttachmentCount:   uint,
	colorAttachments:       [^]RenderPassColorAttachment `fmt:"v,colorAttachmentCount"`,
	depthStencilAttachment: ^RenderPassDepthStencilAttachment,
	occlusionQuerySet:      QuerySet,
	timestampWrites:        ^PassTimestampWrites,
}
```

##### Related Procedures With Parameters

* [CommandEncoderBeginRenderPass](/vendor/wgpu/#CommandEncoderBeginRenderPass)

### [RenderPassEncoder ¶](#RenderPassEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L105)

```
RenderPassEncoder :: distinct rawptr
```

##### Related Procedures With Parameters

* [RawRenderPassEncoderExecuteBundles](/vendor/wgpu/#RawRenderPassEncoderExecuteBundles)
* [RawRenderPassEncoderSetBindGroup](/vendor/wgpu/#RawRenderPassEncoderSetBindGroup)
* [RenderPassEncoderAddRef](/vendor/wgpu/#RenderPassEncoderAddRef)
* [RenderPassEncoderBeginOcclusionQuery](/vendor/wgpu/#RenderPassEncoderBeginOcclusionQuery)
* [RenderPassEncoderBeginPipelineStatisticsQuery](/vendor/wgpu/#RenderPassEncoderBeginPipelineStatisticsQuery)
* [RenderPassEncoderDraw](/vendor/wgpu/#RenderPassEncoderDraw)
* [RenderPassEncoderDrawIndexed](/vendor/wgpu/#RenderPassEncoderDrawIndexed)
* [RenderPassEncoderDrawIndexedIndirect](/vendor/wgpu/#RenderPassEncoderDrawIndexedIndirect)
* [RenderPassEncoderDrawIndirect](/vendor/wgpu/#RenderPassEncoderDrawIndirect)
* [RenderPassEncoderEnd](/vendor/wgpu/#RenderPassEncoderEnd)
* [RenderPassEncoderEndOcclusionQuery](/vendor/wgpu/#RenderPassEncoderEndOcclusionQuery)
* [RenderPassEncoderEndPipelineStatisticsQuery](/vendor/wgpu/#RenderPassEncoderEndPipelineStatisticsQuery)
* [RenderPassEncoderExecuteBundles](/vendor/wgpu/#RenderPassEncoderExecuteBundles)
* [RenderPassEncoderInsertDebugMarker](/vendor/wgpu/#RenderPassEncoderInsertDebugMarker)
* [RenderPassEncoderMultiDrawIndexedIndirect](/vendor/wgpu/#RenderPassEncoderMultiDrawIndexedIndirect)
* [RenderPassEncoderMultiDrawIndexedIndirectCount](/vendor/wgpu/#RenderPassEncoderMultiDrawIndexedIndirectCount)
* [RenderPassEncoderMultiDrawIndirect](/vendor/wgpu/#RenderPassEncoderMultiDrawIndirect)
* [RenderPassEncoderMultiDrawIndirectCount](/vendor/wgpu/#RenderPassEncoderMultiDrawIndirectCount)
* [RenderPassEncoderPopDebugGroup](/vendor/wgpu/#RenderPassEncoderPopDebugGroup)
* [RenderPassEncoderPushDebugGroup](/vendor/wgpu/#RenderPassEncoderPushDebugGroup)
* [RenderPassEncoderRelease](/vendor/wgpu/#RenderPassEncoderRelease)
* [RenderPassEncoderSetBindGroup](/vendor/wgpu/#RenderPassEncoderSetBindGroup)
* [RenderPassEncoderSetBlendConstant](/vendor/wgpu/#RenderPassEncoderSetBlendConstant)
* [RenderPassEncoderSetImmediates](/vendor/wgpu/#RenderPassEncoderSetImmediates)
* [RenderPassEncoderSetIndexBuffer](/vendor/wgpu/#RenderPassEncoderSetIndexBuffer)
* [RenderPassEncoderSetLabel](/vendor/wgpu/#RenderPassEncoderSetLabel)
* [RenderPassEncoderSetPipeline](/vendor/wgpu/#RenderPassEncoderSetPipeline)
* [RenderPassEncoderSetScissorRect](/vendor/wgpu/#RenderPassEncoderSetScissorRect)
* [RenderPassEncoderSetStencilReference](/vendor/wgpu/#RenderPassEncoderSetStencilReference)
* [RenderPassEncoderSetVertexBuffer](/vendor/wgpu/#RenderPassEncoderSetVertexBuffer)
* [RenderPassEncoderSetViewport](/vendor/wgpu/#RenderPassEncoderSetViewport)
* [RenderPassEncoderWriteTimestamp](/vendor/wgpu/#RenderPassEncoderWriteTimestamp)



##### Related Procedures With Returns

* [CommandEncoderBeginRenderPass](/vendor/wgpu/#CommandEncoderBeginRenderPass)

### [RenderPassMaxDrawCount ¶](#RenderPassMaxDrawCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1081)

```
RenderPassMaxDrawCount :: struct {
	using chain:  ChainedStruct,
	maxDrawCount: u64,
}
```

### [RenderPipeline ¶](#RenderPipeline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L106)

```
RenderPipeline :: distinct rawptr
```

##### Related Procedures With Parameters

* [RenderBundleEncoderSetPipeline](/vendor/wgpu/#RenderBundleEncoderSetPipeline)
* [RenderPassEncoderSetPipeline](/vendor/wgpu/#RenderPassEncoderSetPipeline)
* [RenderPipelineAddRef](/vendor/wgpu/#RenderPipelineAddRef)
* [RenderPipelineGetBindGroupLayout](/vendor/wgpu/#RenderPipelineGetBindGroupLayout)
* [RenderPipelineRelease](/vendor/wgpu/#RenderPipelineRelease)
* [RenderPipelineSetLabel](/vendor/wgpu/#RenderPipelineSetLabel)



##### Related Procedures With Returns

* [DeviceCreateRenderPipeline](/vendor/wgpu/#DeviceCreateRenderPipeline)

### [RenderPipelineDescriptor ¶](#RenderPipelineDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1543)

```
RenderPipelineDescriptor :: struct {
	nextInChain:  ^ChainedStruct,
	label:        string,
	layout:       PipelineLayout,
	vertex:       VertexState,
	primitive:    PrimitiveState,
	depthStencil: ^DepthStencilState,
	multisample:  MultisampleState,
	fragment:     ^FragmentState,
}
```

##### Related Procedures With Parameters

* [DeviceCreateRenderPipeline](/vendor/wgpu/#DeviceCreateRenderPipeline)
* [DeviceCreateRenderPipelineAsync](/vendor/wgpu/#DeviceCreateRenderPipelineAsync)

### [RequestAdapterCallback ¶](#RequestAdapterCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L814)

```
RequestAdapterCallback :: proc "c" (status: RequestAdapterStatus, adapter: Adapter, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [RequestAdapterCallbackInfo ¶](#RequestAdapterCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L879)

```
RequestAdapterCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    RequestAdapterCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [InstanceRequestAdapter](/vendor/wgpu/#InstanceRequestAdapter)

### [RequestAdapterOptions ¶](#RequestAdapterOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1400)

```
RequestAdapterOptions :: struct {
	nextInChain:          ^ChainedStruct,
	featureLevel:         FeatureLevel,
	powerPreference:      PowerPreference,
	forceFallbackAdapter: b32,
	backendType:          BackendType,
	compatibleSurface:    Surface,
}
```

##### Related Procedures With Parameters

* [InstanceRequestAdapter](/vendor/wgpu/#InstanceRequestAdapter)

### [RequestAdapterStatus ¶](#RequestAdapterStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L434)

```
RequestAdapterStatus :: enum i32 {
	Success           = 1, 
	CallbackCancelled = 2, 
	Unavailable       = 3, 
	Error             = 4, 
}
```

### [RequestAdapterWebXROptions ¶](#RequestAdapterWebXROptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1089)

```
RequestAdapterWebXROptions :: struct {
	using chain:  ChainedStruct,
	xrCompatible: b32,
}
```

 

Chained in a `RequestAdapterOptions`.

### [RequestDeviceCallback ¶](#RequestDeviceCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L815)

```
RequestDeviceCallback :: proc "c" (status: RequestDeviceStatus, adapter: Device, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [RequestDeviceCallbackInfo ¶](#RequestDeviceCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L887)

```
RequestDeviceCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	mode:        CallbackMode,
	callback:    RequestDeviceCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

##### Related Procedures With Parameters

* [AdapterRequestDevice](/vendor/wgpu/#AdapterRequestDevice)

### [RequestDeviceStatus ¶](#RequestDeviceStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L441)

```
RequestDeviceStatus :: enum i32 {
	Success           = 1, 
	CallbackCancelled = 2, 
	Error             = 3, 
}
```

### [SType ¶](#SType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L486)

```
SType :: enum i32 {
	// WebGPU.
	ShaderSourceSPIRV                 = 1, 
	ShaderSourceWGSL                  = 2, 
	RenderPassMaxDrawCount            = 3, 
	SurfaceSourceMetalLayer           = 4, 
	SurfaceSourceWindowsHWND          = 5, 
	SurfaceSourceXlibWindow           = 6, 
	SurfaceSourceWaylandSurface       = 7, 
	SurfaceSourceAndroidNativeWindow  = 8, 
	SurfaceSourceXCBWindow            = 9, 
	SurfaceColorManagement            = 10, 
	RequestAdapterWebXROptions        = 11, 
	TextureComponentSwizzleDescriptor = 12, 
	ExternalTextureBindingLayout      = 13, 
	ExternalTextureBindingEntry       = 14, 
	CompatibilityModeLimits           = 15, 
	TextureBindingViewDimension       = 16, 
	// Native.
	DeviceExtras                      = 196609, 
	NativeLimits, 
	PipelineLayoutExtras, 
	ShaderSourceGLSL, 
	SupportedLimitsExtras, 
	InstanceExtras, 
	BindGroupEntryExtras, 
	BindGroupLayoutEntryExtras, 
	QuerySetDescriptorExtras, 
	SurfaceConfigurationExtras, 
	SurfaceSourceSwapChainPanel, 
	PrimitiveStateExtras, 
	// Odin.
	SurfaceSourceCanvasHTMLSelector   = 262145, 
}
```

### [Sampler ¶](#Sampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L107)

```
Sampler :: distinct rawptr
```

##### Related Procedures With Parameters

* [SamplerAddRef](/vendor/wgpu/#SamplerAddRef)
* [SamplerRelease](/vendor/wgpu/#SamplerRelease)
* [SamplerSetLabel](/vendor/wgpu/#SamplerSetLabel)



##### Related Procedures With Returns

* [DeviceCreateSampler](/vendor/wgpu/#DeviceCreateSampler)

### [SamplerBindingLayout ¶](#SamplerBindingLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1094)

```
SamplerBindingLayout :: struct {
	nextInChain: ^ChainedStruct,
	type:        SamplerBindingType,
}
```

### [SamplerBindingType ¶](#SamplerBindingType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L447)

```
SamplerBindingType :: enum i32 {
	BindingNotUsed = 0, 
	Undefined      = 1, 
	Filtering      = 2, 
	NonFiltering   = 3, 
	Comparison     = 4, 
}
```

### [SamplerDescriptor ¶](#SamplerDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1099)

```
SamplerDescriptor :: struct {
	nextInChain:   ^ChainedStruct,
	label:         string,
	addressModeU:  AddressMode,
	addressModeV:  AddressMode,
	addressModeW:  AddressMode,
	magFilter:     FilterMode,
	minFilter:     FilterMode,
	mipmapFilter:  MipmapFilterMode,
	lodMinClamp:   f32,
	lodMaxClamp:   f32,
	compare:       CompareFunction,
	maxAnisotropy: u16,
}
```

##### Related Procedures With Parameters

* [DeviceCreateSampler](/vendor/wgpu/#DeviceCreateSampler)

### [ShaderDefine ¶](#ShaderDefine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L153)

```
ShaderDefine :: struct {
	name:  string,
	value: string,
}
```

### [ShaderModule ¶](#ShaderModule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L108)

```
ShaderModule :: distinct rawptr
```

##### Related Procedures With Parameters

* [ShaderModuleAddRef](/vendor/wgpu/#ShaderModuleAddRef)
* [ShaderModuleGetCompilationInfo](/vendor/wgpu/#ShaderModuleGetCompilationInfo)
* [ShaderModuleRelease](/vendor/wgpu/#ShaderModuleRelease)
* [ShaderModuleSetLabel](/vendor/wgpu/#ShaderModuleSetLabel)



##### Related Procedures With Returns

* [DeviceCreateShaderModule](/vendor/wgpu/#DeviceCreateShaderModule)
* [DeviceCreateShaderModuleSpirV](/vendor/wgpu/#DeviceCreateShaderModuleSpirV)

### [ShaderModuleDescriptor ¶](#ShaderModuleDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1409)

```
ShaderModuleDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
}
```

##### Related Procedures With Parameters

* [DeviceCreateShaderModule](/vendor/wgpu/#DeviceCreateShaderModule)

### [ShaderModuleDescriptorSpirV ¶](#ShaderModuleDescriptorSpirV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L166)

```
ShaderModuleDescriptorSpirV :: struct {
	label:      string,
	sourceSize: u32,
	source:     [^]u32 `fmt:"v,sourceSize"`,
}
```

##### Related Procedures With Parameters

* [DeviceCreateShaderModuleSpirV](/vendor/wgpu/#DeviceCreateShaderModuleSpirV)

### [ShaderSourceGLSL ¶](#ShaderSourceGLSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L158)

```
ShaderSourceGLSL :: struct {
	using chain: ChainedStruct,
	stage:       ShaderStage,
	code:        string,
	defineCount: uint,
	defines:     [^]ShaderDefine `fmt:"v,defineCount"`,
}
```

### [ShaderSourceSPIRV ¶](#ShaderSourceSPIRV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1114)

```
ShaderSourceSPIRV :: struct {
	using chain: ChainedStruct,
	codeSize: u32,
	code:     [^]u32 `fmt:"v,codeSize"`,
}
```

### [ShaderSourceWGSL ¶](#ShaderSourceWGSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1120)

```
ShaderSourceWGSL :: struct {
	using chain: ChainedStruct,
	code:  string,
}
```

### [ShaderStage ¶](#ShaderStage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L788)

```
ShaderStage :: enum i32 {
	Vertex   = 0, 
	Fragment = 1, 
	Compute  = 2, 
}
```

### [ShaderStageFlags ¶](#ShaderStageFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L793)

```
ShaderStageFlags :: bit_set[ShaderStage; u64]
```

##### Related Procedures With Parameters

* [RenderBundleEncoderSetImmediates](/vendor/wgpu/#RenderBundleEncoderSetImmediates)
* [RenderPassEncoderSetImmediates](/vendor/wgpu/#RenderPassEncoderSetImmediates)

### [Status ¶](#Status) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L455)

```
Status :: enum i32 {
	Success = 1, 
	Error   = 2, 
}
```

##### Related Procedures With Returns

* [AdapterGetInfo](/vendor/wgpu/#AdapterGetInfo)
* [AdapterGetLimits](/vendor/wgpu/#AdapterGetLimits)
* [BufferReadMappedRange](/vendor/wgpu/#BufferReadMappedRange)
* [BufferWriteMappedRange](/vendor/wgpu/#BufferWriteMappedRange)
* [DeviceGetAdapterInfo](/vendor/wgpu/#DeviceGetAdapterInfo)
* [DeviceGetLimits](/vendor/wgpu/#DeviceGetLimits)
* [GetInstanceLimits](/vendor/wgpu/#GetInstanceLimits)
* [RawAdapterGetInfo](/vendor/wgpu/#RawAdapterGetInfo)
* [RawAdapterGetLimits](/vendor/wgpu/#RawAdapterGetLimits)
* [RawDeviceGetAdapterInfo](/vendor/wgpu/#RawDeviceGetAdapterInfo)
* [RawDeviceGetLimits](/vendor/wgpu/#RawDeviceGetLimits)
* [RawGetInstanceLimits](/vendor/wgpu/#RawGetInstanceLimits)
* [RawSurfaceGetCapabilities](/vendor/wgpu/#RawSurfaceGetCapabilities)
* [SurfaceGetCapabilities](/vendor/wgpu/#SurfaceGetCapabilities)
* [SurfacePresent](/vendor/wgpu/#SurfacePresent)

### [StencilFaceState ¶](#StencilFaceState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1125)

```
StencilFaceState :: struct {
	compare:     CompareFunction,
	failOp:      StencilOperation,
	depthFailOp: StencilOperation,
	passOp:      StencilOperation,
}
```

### [StencilOperation ¶](#StencilOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L460)

```
StencilOperation :: enum i32 {
	Undefined      = 0, 
	Keep           = 1, 
	Zero           = 2, 
	Replace        = 3, 
	Invert         = 4, 
	IncrementClamp = 5, 
	DecrementClamp = 6, 
	IncrementWrap  = 7, 
	DecrementWrap  = 8, 
}
```

### [StorageTextureAccess ¶](#StorageTextureAccess) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L472)

```
StorageTextureAccess :: enum i32 {
	BindingNotUsed = 0, 
	Undefined      = 1, 
	WriteOnly      = 2, 
	ReadOnly       = 3, 
	ReadWrite      = 4, 
}
```

### [StorageTextureBindingLayout ¶](#StorageTextureBindingLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1132)

```
StorageTextureBindingLayout :: struct {
	nextInChain:   ^ChainedStruct,
	access:        StorageTextureAccess,
	format:        TextureFormat,
	viewDimension: TextureViewDimension,
}
```

### [StoreOp ¶](#StoreOp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L480)

```
StoreOp :: enum i32 {
	Undefined = 0, 
	Store     = 1, 
	Discard   = 2, 
}
```

### [StringView ¶](#StringView) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L86)

```
StringView :: string
```

##### Related Procedures With Parameters

* [BindGroupSetLabel](/vendor/wgpu/#BindGroupSetLabel)
* [BufferSetLabel](/vendor/wgpu/#BufferSetLabel)
* [CommandBufferSetLabel](/vendor/wgpu/#CommandBufferSetLabel)
* [CommandEncoderInsertDebugMarker](/vendor/wgpu/#CommandEncoderInsertDebugMarker)
* [CommandEncoderPushDebugGroup](/vendor/wgpu/#CommandEncoderPushDebugGroup)
* [CommandEncoderSetLabel](/vendor/wgpu/#CommandEncoderSetLabel)
* [ComputePassEncoderInsertDebugMarker](/vendor/wgpu/#ComputePassEncoderInsertDebugMarker)
* [ComputePassEncoderPushDebugGroup](/vendor/wgpu/#ComputePassEncoderPushDebugGroup)
* [ComputePassEncoderSetLabel](/vendor/wgpu/#ComputePassEncoderSetLabel)
* [ComputePipelineSetLabel](/vendor/wgpu/#ComputePipelineSetLabel)
* [DeviceSetLabel](/vendor/wgpu/#DeviceSetLabel)
* [ExternalTextureSetLabel](/vendor/wgpu/#ExternalTextureSetLabel)
* [GetProcAddress](/vendor/wgpu/#GetProcAddress)
* [PipelineLayoutSetLabel](/vendor/wgpu/#PipelineLayoutSetLabel)
* [QuerySetSetLabel](/vendor/wgpu/#QuerySetSetLabel)
* [QueueSetLabel](/vendor/wgpu/#QueueSetLabel)
* [RenderBundleEncoderInsertDebugMarker](/vendor/wgpu/#RenderBundleEncoderInsertDebugMarker)
* [RenderBundleEncoderPushDebugGroup](/vendor/wgpu/#RenderBundleEncoderPushDebugGroup)
* [RenderBundleEncoderSetLabel](/vendor/wgpu/#RenderBundleEncoderSetLabel)
* [RenderBundleSetLabel](/vendor/wgpu/#RenderBundleSetLabel)
* [RenderPassEncoderInsertDebugMarker](/vendor/wgpu/#RenderPassEncoderInsertDebugMarker)
* [RenderPassEncoderPushDebugGroup](/vendor/wgpu/#RenderPassEncoderPushDebugGroup)
* [RenderPassEncoderSetLabel](/vendor/wgpu/#RenderPassEncoderSetLabel)
* [RenderPipelineSetLabel](/vendor/wgpu/#RenderPipelineSetLabel)
* [SamplerSetLabel](/vendor/wgpu/#SamplerSetLabel)
* [ShaderModuleSetLabel](/vendor/wgpu/#ShaderModuleSetLabel)
* [SurfaceSetLabel](/vendor/wgpu/#SurfaceSetLabel)
* [TextureSetLabel](/vendor/wgpu/#TextureSetLabel)
* [TextureViewSetLabel](/vendor/wgpu/#TextureViewSetLabel)

### [SubmissionIndex ¶](#SubmissionIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L151)

```
SubmissionIndex :: distinct u64
```

##### Related Procedures With Parameters

* [DevicePoll](/vendor/wgpu/#DevicePoll)



##### Related Procedures With Returns

* [QueueSubmitForIndex](/vendor/wgpu/#QueueSubmitForIndex)
* [RawQueueSubmitForIndex](/vendor/wgpu/#RawQueueSubmitForIndex)

### [SupportedFeatures ¶](#SupportedFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1139)

```
SupportedFeatures :: struct {
	featureCount: uint,
	features:     [^]FeatureName `fmt:"v,featureCount"`,
}
```

##### Related Procedures With Parameters

* [RawAdapterGetFeatures](/vendor/wgpu/#RawAdapterGetFeatures)
* [RawDeviceGetFeatures](/vendor/wgpu/#RawDeviceGetFeatures)
* [SupportedFeaturesFreeMembers](/vendor/wgpu/#SupportedFeaturesFreeMembers)



##### Related Procedures With Returns

* [AdapterGetFeatures](/vendor/wgpu/#AdapterGetFeatures)
* [DeviceGetFeatures](/vendor/wgpu/#DeviceGetFeatures)

### [SupportedInstanceFeatures ¶](#SupportedInstanceFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1144)

```
SupportedInstanceFeatures :: struct {
	featureCount: uint,
	features:     [^]InstanceFeatureName `fmt:"v,featureCount"`,
}
```

##### Related Procedures With Parameters

* [GetInstanceFeatures](/vendor/wgpu/#GetInstanceFeatures)
* [SupportedInstanceFeaturesFreeMembers](/vendor/wgpu/#SupportedInstanceFeaturesFreeMembers)

### [SupportedWGSLLanguageFeatures ¶](#SupportedWGSLLanguageFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1149)

```
SupportedWGSLLanguageFeatures :: struct {
	featureCount: uint,
	features:     [^]WGSLLanguageFeatureName `fmt:"v,featureCount"`,
}
```

##### Related Procedures With Parameters

* [InstanceGetWGSLLanguageFeatures](/vendor/wgpu/#InstanceGetWGSLLanguageFeatures)
* [SupportedWGSLLanguageFeaturesFreeMembers](/vendor/wgpu/#SupportedWGSLLanguageFeaturesFreeMembers)

### [Surface ¶](#Surface) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L109)

```
Surface :: distinct rawptr
```

##### Related Procedures With Parameters

* [RawSurfaceGetCapabilities](/vendor/wgpu/#RawSurfaceGetCapabilities)
* [RawSurfaceGetCurrentTexture](/vendor/wgpu/#RawSurfaceGetCurrentTexture)
* [SurfaceAddRef](/vendor/wgpu/#SurfaceAddRef)
* [SurfaceConfigure](/vendor/wgpu/#SurfaceConfigure)
* [SurfaceGetCapabilities](/vendor/wgpu/#SurfaceGetCapabilities)
* [SurfaceGetCurrentTexture](/vendor/wgpu/#SurfaceGetCurrentTexture)
* [SurfacePresent](/vendor/wgpu/#SurfacePresent)
* [SurfaceRelease](/vendor/wgpu/#SurfaceRelease)
* [SurfaceSetLabel](/vendor/wgpu/#SurfaceSetLabel)
* [SurfaceUnconfigure](/vendor/wgpu/#SurfaceUnconfigure)



##### Related Procedures With Returns

* [InstanceCreateSurface](/vendor/wgpu/#InstanceCreateSurface)

### [SurfaceCapabilities ¶](#SurfaceCapabilities) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1154)

```
SurfaceCapabilities :: struct {
	nextInChain:      ^ChainedStruct,
	usages:           bit_set[TextureUsage; u64],
	formatCount:      uint,
	formats:          [^]TextureFormat `fmt:"v,formatCount"`,
	presentModeCount: uint,
	presentModes:     [^]PresentMode `fmt:"v,presentModeCount"`,
	alphaModeCount:   uint,
	alphaModes:       [^]CompositeAlphaMode `fmt:"v,alphaModeCount"`,
}
```

##### Related Procedures With Parameters

* [RawSurfaceGetCapabilities](/vendor/wgpu/#RawSurfaceGetCapabilities)
* [SurfaceCapabilitiesFreeMembers](/vendor/wgpu/#SurfaceCapabilitiesFreeMembers)



##### Related Procedures With Returns

* [SurfaceGetCapabilities](/vendor/wgpu/#SurfaceGetCapabilities)

### [SurfaceColorManagement ¶](#SurfaceColorManagement) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1168)

```
SurfaceColorManagement :: struct {
	using chain:     ChainedStruct,
	colorSpace:      PredefinedColorSpace,
	toneMappingMode: ToneMappingMode,
}
```

 

Chained in a `SurfaceConfiguration`.

### [SurfaceConfiguration ¶](#SurfaceConfiguration) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1174)

```
SurfaceConfiguration :: struct {
	nextInChain:     ^ChainedStruct,
	device:          Device,
	format:          TextureFormat,
	usage:           bit_set[TextureUsage; u64],
	width:           u32,
	height:          u32,
	viewFormatCount: uint,
	viewFormats:     [^]TextureFormat `fmt:"v,viewFormatCount"`,
	alphaMode:       CompositeAlphaMode,
	presentMode:     PresentMode,
}
```

##### Related Procedures With Parameters

* [SurfaceConfigure](/vendor/wgpu/#SurfaceConfigure)

### [SurfaceConfigurationExtras ¶](#SurfaceConfigurationExtras) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L230)

```
SurfaceConfigurationExtras :: struct {
	using chain:                ChainedStruct,
	desiredMaximumFrameLatency: u32,
}
```

### [SurfaceDescriptor ¶](#SurfaceDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1414)

```
SurfaceDescriptor :: struct {
	nextInChain: ^ChainedStruct,
	label:       string,
}
```

##### Related Procedures With Parameters

* [InstanceCreateSurface](/vendor/wgpu/#InstanceCreateSurface)

### [SurfaceGetCurrentTextureStatus ¶](#SurfaceGetCurrentTextureStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L523)

```
SurfaceGetCurrentTextureStatus :: enum i32 {
	SuccessOptimal    = 1, 
	SuccessSuboptimal = 2, 
	Timeout           = 3, 
	Outdated          = 4, 
	Lost              = 5, 
	Error             = 6, 
	// Native.
	Occluded          = 196609, 
}
```

### [SurfaceSourceAndroidNativeWindow ¶](#SurfaceSourceAndroidNativeWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1190)

```
SurfaceSourceAndroidNativeWindow :: struct {
	using chain: ChainedStruct,
	window: rawptr,
}
```

 

Chained in a `SurfaceDescriptor`.

### [SurfaceSourceCanvasHTMLSelector ¶](#SurfaceSourceCanvasHTMLSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1198)

```
SurfaceSourceCanvasHTMLSelector :: struct {
	using chain: ChainedStruct,
	selector: string,
}
```

 

Chained in a `SurfaceDescriptor`.

### [SurfaceSourceMetalLayer ¶](#SurfaceSourceMetalLayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1206)

```
SurfaceSourceMetalLayer :: struct {
	using chain: ChainedStruct,
	layer: rawptr,
}
```

 

Chained in a `SurfaceDescriptor`.

### [SurfaceSourceSwapChainPanel ¶](#SurfaceSourceSwapChainPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L238)

```
SurfaceSourceSwapChainPanel :: struct {
	using chain: ChainedStruct,
	// *
	//      * A pointer to the [[ ISwapChainPanelNative ; https://learn.microsoft.com/en-us/windows/windows-app-sdk/api/win32/microsoft.ui.xaml.media.dxinterop/nn-microsoft-ui-xaml-media-dxinterop-iswapchainpanelnative ]]
	//      * interface of the `SwapChainPanel` that will be wrapped by the `Surface`.
	panelNative: rawptr,
}
```

 

\*
Chained in `SurfaceDescriptor` to make a `Surface` wrapping a WinUI [SwapChainPanel](https://learn.microsoft.com/en-us/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.controls.swapchainpanel).

### [SurfaceSourceWaylandSurface ¶](#SurfaceSourceWaylandSurface) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1214)

```
SurfaceSourceWaylandSurface :: struct {
	using chain: ChainedStruct,
	display: rawptr,
	surface: rawptr,
}
```

 

Chained in a `SurfaceDescriptor`.

### [SurfaceSourceWindowsHWND ¶](#SurfaceSourceWindowsHWND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1223)

```
SurfaceSourceWindowsHWND :: struct {
	using chain: ChainedStruct,
	hinstance: rawptr,
	hwnd:      rawptr,
}
```

 

Chained in a `SurfaceDescriptor`.

### [SurfaceSourceXcbWindow ¶](#SurfaceSourceXcbWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1232)

```
SurfaceSourceXcbWindow :: struct {
	using chain: ChainedStruct,
	connection: rawptr,
	window:     u32,
}
```

 

Chained in a `SurfaceDescriptor`.

### [SurfaceSourceXlibWindow ¶](#SurfaceSourceXlibWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1241)

```
SurfaceSourceXlibWindow :: struct {
	using chain: ChainedStruct,
	display: rawptr,
	window:  u64,
}
```

 

Chained in a `SurfaceDescriptor`.

### [SurfaceTexture ¶](#SurfaceTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1247)

```
SurfaceTexture :: struct {
	nextInChain: ^ChainedStruct,
	texture:     Texture,
	status:      SurfaceGetCurrentTextureStatus,
}
```

##### Related Procedures With Parameters

* [RawSurfaceGetCurrentTexture](/vendor/wgpu/#RawSurfaceGetCurrentTexture)



##### Related Procedures With Returns

* [SurfaceGetCurrentTexture](/vendor/wgpu/#SurfaceGetCurrentTexture)

### [TexelCopyBufferInfo ¶](#TexelCopyBufferInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1419)

```
TexelCopyBufferInfo :: struct {
	layout: TexelCopyBufferLayout,
	buffer: Buffer,
}
```

##### Related Procedures With Parameters

* [CommandEncoderCopyBufferToTexture](/vendor/wgpu/#CommandEncoderCopyBufferToTexture)
* [CommandEncoderCopyTextureToBuffer](/vendor/wgpu/#CommandEncoderCopyTextureToBuffer)

### [TexelCopyBufferLayout ¶](#TexelCopyBufferLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1253)

```
TexelCopyBufferLayout :: struct {
	offset:       u64,
	bytesPerRow:  u32,
	rowsPerImage: u32,
}
```

##### Related Procedures With Parameters

* [QueueWriteTexture](/vendor/wgpu/#QueueWriteTexture)

### [TexelCopyTextureInfo ¶](#TexelCopyTextureInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1424)

```
TexelCopyTextureInfo :: struct {
	texture:  Texture,
	mipLevel: u32,
	origin:   Origin3D,
	aspect:   TextureAspect,
}
```

##### Related Procedures With Parameters

* [CommandEncoderCopyBufferToTexture](/vendor/wgpu/#CommandEncoderCopyBufferToTexture)
* [CommandEncoderCopyTextureToBuffer](/vendor/wgpu/#CommandEncoderCopyTextureToBuffer)
* [CommandEncoderCopyTextureToTexture](/vendor/wgpu/#CommandEncoderCopyTextureToTexture)
* [QueueWriteTexture](/vendor/wgpu/#QueueWriteTexture)

### [Texture ¶](#Texture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L110)

```
Texture :: distinct rawptr
```

##### Related Procedures With Parameters

* [TextureAddRef](/vendor/wgpu/#TextureAddRef)
* [TextureCreateView](/vendor/wgpu/#TextureCreateView)
* [TextureDestroy](/vendor/wgpu/#TextureDestroy)
* [TextureGetDepthOrArrayLayers](/vendor/wgpu/#TextureGetDepthOrArrayLayers)
* [TextureGetDimension](/vendor/wgpu/#TextureGetDimension)
* [TextureGetFormat](/vendor/wgpu/#TextureGetFormat)
* [TextureGetHeight](/vendor/wgpu/#TextureGetHeight)
* [TextureGetMipLevelCount](/vendor/wgpu/#TextureGetMipLevelCount)
* [TextureGetSampleCount](/vendor/wgpu/#TextureGetSampleCount)
* [TextureGetTextureBindingViewDimension](/vendor/wgpu/#TextureGetTextureBindingViewDimension)
* [TextureGetUsage](/vendor/wgpu/#TextureGetUsage)
* [TextureGetWidth](/vendor/wgpu/#TextureGetWidth)
* [TextureRelease](/vendor/wgpu/#TextureRelease)
* [TextureSetLabel](/vendor/wgpu/#TextureSetLabel)



##### Related Procedures With Returns

* [DeviceCreateTexture](/vendor/wgpu/#DeviceCreateTexture)

### [TextureAspect ¶](#TextureAspect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L535)

```
TextureAspect :: enum i32 {
	Undefined   = 0, 
	All         = 1, 
	StencilOnly = 2, 
	DepthOnly   = 3, 
}
```

### [TextureBindingLayout ¶](#TextureBindingLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1259)

```
TextureBindingLayout :: struct {
	nextInChain:   ^ChainedStruct,
	sampleType:    TextureSampleType,
	viewDimension: TextureViewDimension,
	multisampled:  b32,
}
```

### [TextureBindingViewDimension ¶](#TextureBindingViewDimension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1266)

```
TextureBindingViewDimension :: struct {
	using chain:                 ChainedStruct,
	textureBindingViewDimension: TextureViewDimension,
}
```

### [TextureComponentSwizzle ¶](#TextureComponentSwizzle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1271)

```
TextureComponentSwizzle :: struct {
	r: ComponentSwizzle,
	g: ComponentSwizzle,
	b: ComponentSwizzle,
	a: ComponentSwizzle,
}
```

### [TextureComponentSwizzleDescriptor ¶](#TextureComponentSwizzleDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1434)

```
TextureComponentSwizzleDescriptor :: struct {
	using chain: ChainedStruct,
	swizzle: TextureComponentSwizzle,
}
```

 

Chained in a `TextureViewDescriptor`.

### [TextureDescriptor ¶](#TextureDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1439)

```
TextureDescriptor :: struct {
	nextInChain:     ^ChainedStruct,
	label:           string,
	usage:           bit_set[TextureUsage; u64],
	dimension:       TextureDimension,
	size:            Extent3D,
	format:          TextureFormat,
	mipLevelCount:   u32,
	sampleCount:     u32,
	viewFormatCount: uint,
	viewFormats:     [^]TextureFormat `fmt:"v,viewFormatCount"`,
}
```

##### Related Procedures With Parameters

* [DeviceCreateTexture](/vendor/wgpu/#DeviceCreateTexture)

### [TextureDimension ¶](#TextureDimension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L542)

```
TextureDimension :: enum i32 {
	Undefined = 0, 
	_1D       = 1, 
	_2D       = 2, 
	_3D       = 3, 
}
```

##### Related Procedures With Returns

* [TextureGetDimension](/vendor/wgpu/#TextureGetDimension)

### [TextureFormat ¶](#TextureFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L549)

```
TextureFormat :: enum i32 {
	Undefined            = 0, 
	R8Unorm              = 1, 
	R8Snorm              = 2, 
	R8Uint               = 3, 
	R8Sint               = 4, 
	R16Unorm             = 5, 
	R16Snorm             = 6, 
	R16Uint              = 7, 
	R16Sint              = 8, 
	R16Float             = 9, 
	RG8Unorm             = 10, 
	RG8Snorm             = 11, 
	RG8Uint              = 12, 
	RG8Sint              = 13, 
	R32Float             = 14, 
	R32Uint              = 15, 
	R32Sint              = 16, 
	RG16Unorm            = 17, 
	RG16Snorm            = 18, 
	RG16Uint             = 19, 
	RG16Sint             = 20, 
	RG16Float            = 21, 
	RGBA8Unorm           = 22, 
	RGBA8UnormSrgb       = 23, 
	RGBA8Snorm           = 24, 
	RGBA8Uint            = 25, 
	RGBA8Sint            = 26, 
	BGRA8Unorm           = 27, 
	BGRA8UnormSrgb       = 28, 
	RGB10A2Uint          = 29, 
	RGB10A2Unorm         = 30, 
	RG11B10Ufloat        = 31, 
	RGB9E5Ufloat         = 32, 
	RG32Float            = 33, 
	RG32Uint             = 34, 
	RG32Sint             = 35, 
	RGBA16Unorm          = 36, 
	RGBA16Snorm          = 37, 
	RGBA16Uint           = 38, 
	RGBA16Sint           = 39, 
	RGBA16Float          = 40, 
	RGBA32Float          = 41, 
	RGBA32Uint           = 42, 
	RGBA32Sint           = 43, 
	Stencil8             = 44, 
	Depth16Unorm         = 45, 
	Depth24Plus          = 46, 
	Depth24PlusStencil8  = 47, 
	Depth32Float         = 48, 
	Depth32FloatStencil8 = 49, 
	BC1RGBAUnorm         = 50, 
	BC1RGBAUnormSrgb     = 51, 
	BC2RGBAUnorm         = 52, 
	BC2RGBAUnormSrgb     = 53, 
	BC3RGBAUnorm         = 54, 
	BC3RGBAUnormSrgb     = 55, 
	BC4RUnorm            = 56, 
	BC4RSnorm            = 57, 
	BC5RGUnorm           = 58, 
	BC5RGSnorm           = 59, 
	BC6HRGBUfloat        = 60, 
	BC6HRGBFloat         = 61, 
	BC7RGBAUnorm         = 62, 
	BC7RGBAUnormSrgb     = 63, 
	ETC2RGB8Unorm        = 64, 
	ETC2RGB8UnormSrgb    = 65, 
	ETC2RGB8A1Unorm      = 66, 
	ETC2RGB8A1UnormSrgb  = 67, 
	ETC2RGBA8Unorm       = 68, 
	ETC2RGBA8UnormSrgb   = 69, 
	EACR11Unorm          = 70, 
	EACR11Snorm          = 71, 
	EACRG11Unorm         = 72, 
	EACRG11Snorm         = 73, 
	ASTC4x4Unorm         = 74, 
	ASTC4x4UnormSrgb     = 75, 
	ASTC5x4Unorm         = 76, 
	ASTC5x4UnormSrgb     = 77, 
	ASTC5x5Unorm         = 78, 
	ASTC5x5UnormSrgb     = 79, 
	ASTC6x5Unorm         = 80, 
	ASTC6x5UnormSrgb     = 81, 
	ASTC6x6Unorm         = 82, 
	ASTC6x6UnormSrgb     = 83, 
	ASTC8x5Unorm         = 84, 
	ASTC8x5UnormSrgb     = 85, 
	ASTC8x6Unorm         = 86, 
	ASTC8x6UnormSrgb     = 87, 
	ASTC8x8Unorm         = 88, 
	ASTC8x8UnormSrgb     = 89, 
	ASTC10x5Unorm        = 90, 
	ASTC10x5UnormSrgb    = 91, 
	ASTC10x6Unorm        = 92, 
	ASTC10x6UnormSrgb    = 93, 
	ASTC10x8Unorm        = 94, 
	ASTC10x8UnormSrgb    = 95, 
	ASTC10x10Unorm       = 96, 
	ASTC10x10UnormSrgb   = 97, 
	ASTC12x10Unorm       = 98, 
	ASTC12x10UnormSrgb   = 99, 
	ASTC12x12Unorm       = 100, 
	ASTC12x12UnormSrgb   = 101, 
	// From FeatureName.TextureFormat16bitNorm
	NativeR16Unorm       = 196609, 
	NativeR16Snorm, 
	Rg16Unorm, 
	Rg16Snorm, 
	Rgba16Unorm, 
	Rgba16Snorm, 
	NV12, 
	P010, 
}
```

##### Related Procedures With Returns

* [TextureGetFormat](/vendor/wgpu/#TextureGetFormat)

### [TextureSampleType ¶](#TextureSampleType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L666)

```
TextureSampleType :: enum i32 {
	BindingNotUsed    = 0, 
	Undefined         = 1, 
	Float             = 2, 
	UnfilterableFloat = 3, 
	Depth             = 4, 
	Sint              = 5, 
	Uint              = 6, 
}
```

### [TextureUsage ¶](#TextureUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L795)

```
TextureUsage :: enum i32 {
	CopySrc, 
	CopyDst, 
	TextureBinding, 
	StorageBinding, 
	RenderAttachment, 
	TransientAttachment, 
}
```

### [TextureUsageFlags ¶](#TextureUsageFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L803)

```
TextureUsageFlags :: bit_set[TextureUsage; u64]
```

##### Related Procedures With Returns

* [TextureGetUsage](/vendor/wgpu/#TextureGetUsage)

### [TextureView ¶](#TextureView) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L111)

```
TextureView :: distinct rawptr
```

##### Related Procedures With Parameters

* [TextureViewAddRef](/vendor/wgpu/#TextureViewAddRef)
* [TextureViewRelease](/vendor/wgpu/#TextureViewRelease)
* [TextureViewSetLabel](/vendor/wgpu/#TextureViewSetLabel)



##### Related Procedures With Returns

* [TextureCreateView](/vendor/wgpu/#TextureCreateView)

### [TextureViewDescriptor ¶](#TextureViewDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1510)

```
TextureViewDescriptor :: struct {
	nextInChain:     ^ChainedStruct,
	label:           string,
	format:          TextureFormat,
	dimension:       TextureViewDimension,
	baseMipLevel:    u32,
	mipLevelCount:   u32,
	baseArrayLayer:  u32,
	arrayLayerCount: u32,
	aspect:          TextureAspect,
	usage:           bit_set[TextureUsage; u64],
}
```

##### Related Procedures With Parameters

* [TextureCreateView](/vendor/wgpu/#TextureCreateView)

### [TextureViewDimension ¶](#TextureViewDimension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L676)

```
TextureViewDimension :: enum i32 {
	Undefined = 0, 
	_1D       = 1, 
	_2D       = 2, 
	_2DArray  = 3, 
	Cube      = 4, 
	CubeArray = 5, 
	_3D       = 6, 
}
```

##### Related Procedures With Returns

* [TextureGetTextureBindingViewDimension](/vendor/wgpu/#TextureGetTextureBindingViewDimension)

### [ToneMappingMode ¶](#ToneMappingMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L686)

```
ToneMappingMode :: enum i32 {
	Standard = 1, 
	Extended, 
}
```

### [UncapturedErrorCallback ¶](#UncapturedErrorCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L816)

```
UncapturedErrorCallback :: proc "c" (device: ^Device, type: ErrorType, message: string, userdata1: rawptr, userdata2: rawptr)
```

### [UncapturedErrorCallbackInfo ¶](#UncapturedErrorCallbackInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L895)

```
UncapturedErrorCallbackInfo :: struct {
	nextInChain: ^ChainedStruct,
	callback:    UncapturedErrorCallback,
	userdata1:   rawptr,
	userdata2:   rawptr,
}
```

### [VertexAttribute ¶](#VertexAttribute) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1275)

```
VertexAttribute :: struct {
	nextInChain:    ^ChainedStruct,
	format:         VertexFormat,
	offset:         u64,
	shaderLocation: u32,
}
```

### [VertexBufferLayout ¶](#VertexBufferLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1452)

```
VertexBufferLayout :: struct {
	nextInChain:    ^ChainedStruct,
	stepMode:       VertexStepMode,
	arrayStride:    u64,
	attributeCount: uint,
	attributes:     [^]VertexAttribute `fmt:"v,attributeCount"`,
}
```

### [VertexFormat ¶](#VertexFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L691)

```
VertexFormat :: enum i32 {
	Uint8           = 1, 
	Uint8x2         = 2, 
	Uint8x4         = 3, 
	Sint8           = 4, 
	Sint8x2         = 5, 
	Sint8x4         = 6, 
	Unorm8          = 7, 
	Unorm8x2        = 8, 
	Unorm8x4        = 9, 
	Snorm8          = 10, 
	Snorm8x2        = 11, 
	Snorm8x4        = 12, 
	Uint16          = 13, 
	Uint16x2        = 14, 
	Uint16x4        = 15, 
	Sint16          = 16, 
	Sint16x2        = 17, 
	Sint16x4        = 18, 
	Unorm16         = 19, 
	Unorm16x2       = 20, 
	Unorm16x4       = 21, 
	Snorm16         = 22, 
	Snorm16x2       = 23, 
	Snorm16x4       = 24, 
	Float16         = 25, 
	Float16x2       = 26, 
	Float16x4       = 27, 
	Float32         = 28, 
	Float32x2       = 29, 
	Float32x3       = 30, 
	Float32x4       = 31, 
	Uint32          = 32, 
	Uint32x2        = 33, 
	Uint32x3        = 34, 
	Uint32x4        = 35, 
	Sint32          = 36, 
	Sint32x2        = 37, 
	Sint32x3        = 38, 
	Sint32x4        = 39, 
	Unorm10_10_10_2 = 40, 
	Unorm8x4BGRA    = 41, 
}
```

### [VertexState ¶](#VertexState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1523)

```
VertexState :: struct {
	nextInChain:   ^ChainedStruct,
	module:        ShaderModule,
	entryPoint:    string,
	constantCount: uint,
	constants:     [^]ConstantEntry `fmt:"v,constantCount"`,
	bufferCount:   uint,
	buffers:       [^]VertexBufferLayout `fmt:"v,bufferCount"`,
}
```

### [VertexStepMode ¶](#VertexStepMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L735)

```
VertexStepMode :: enum i32 {
	Undefined = 0, 
	Vertex    = 1, 
	Instance  = 2, 
}
```

### [WGSLLanguageFeatureName ¶](#WGSLLanguageFeatureName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L747)

```
WGSLLanguageFeatureName :: enum i32 {
	ReadonlyAndReadwriteStorageTextures = 1, 
	Packed4x8IntegerDotProduct          = 2, 
	UnrestrictedPointerParameters       = 3, 
	PointerCompositeAccess              = 4, 
	UniformBufferStandardLayout         = 5, 
	SubgroupId                          = 6, 
	TextureAndSamplerLet                = 7, 
	SubgroupUniformity                  = 8, 
	TextureFormatsTier1                 = 9, 
}
```

##### Related Procedures With Parameters

* [InstanceHasWGSLLanguageFeature](/vendor/wgpu/#InstanceHasWGSLLanguageFeature)

### [WaitStatus ¶](#WaitStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L741)

```
WaitStatus :: enum i32 {
	Success  = 1, 
	TimedOut = 2, 
	Error    = 3, 
}
```

##### Related Procedures With Returns

* [InstanceWaitAny](/vendor/wgpu/#InstanceWaitAny)

### [WaylandDisplayHandle ¶](#WaylandDisplayHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L106)

```
WaylandDisplayHandle :: struct {
	display: rawptr,
}
```

### [XcbDisplayHandle ¶](#XcbDisplayHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L101)

```
XcbDisplayHandle :: struct {
	connection: rawptr,
	screen:     i32,
}
```

### [XlibDisplayHandle ¶](#XlibDisplayHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L96)

```
XlibDisplayHandle :: struct {
	display: rawptr,
	screen:  i32,
}
```

## Constants

### [ARRAY\_LAYER\_COUNT\_UNDEFINED ¶](#ARRAY_LAYER_COUNT_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L73)

```
ARRAY_LAYER_COUNT_UNDEFINED: u32 : max(u32)
```

### [BINDINGS\_VERSION ¶](#BINDINGS_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L5)

```
BINDINGS_VERSION: [4]u8 : [4]u8{29, 0, 0, 0}
```

### [BINDINGS\_VERSION\_STRING ¶](#BINDINGS_VERSION_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L6)

```
BINDINGS_VERSION_STRING :: "29.0.0.0"
```

### [COPY\_STRIDE\_UNDEFINED ¶](#COPY_STRIDE_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L74)

```
COPY_STRIDE_UNDEFINED: u32 : max(u32)
```

### [ColorWriteMaskFlags\_All ¶](#ColorWriteMaskFlags_All) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L780)

```
ColorWriteMaskFlags_All: bit_set[ColorWriteMask; u64] : ColorWriteMaskFlags{.Red, .Green, .Blue, .Alpha}
```

### [DEPTH\_SLICE\_UNDEFINED ¶](#DEPTH_SLICE_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L75)

```
DEPTH_SLICE_UNDEFINED: u32 : max(u32)
```

### [InstanceBackendFlags\_All ¶](#InstanceBackendFlags_All) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L26)

```
InstanceBackendFlags_All: bit_set[InstanceBackend; u64] : InstanceBackendFlags{}
```

### [InstanceBackendFlags\_Primary ¶](#InstanceBackendFlags_Primary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L27)

```
InstanceBackendFlags_Primary: bit_set[InstanceBackend; u64] : InstanceBackendFlags{.Vulkan, .Metal, .DX12, .BrowserWebGPU}
```

### [InstanceBackendFlags\_Secondary ¶](#InstanceBackendFlags_Secondary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L28)

```
InstanceBackendFlags_Secondary: bit_set[InstanceBackend; u64] : InstanceBackendFlags{.GL}
```

### [InstanceFlags\_Empty ¶](#InstanceFlags_Empty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L44)

```
InstanceFlags_Empty: bit_set[InstanceFlag; u64] : InstanceFlags{}
```

### [LIMIT\_U32\_UNDEFINED ¶](#LIMIT_U32_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L76)

```
LIMIT_U32_UNDEFINED: u32 : max(u32)
```

### [LIMIT\_U64\_UNDEFINED ¶](#LIMIT_U64_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L77)

```
LIMIT_U64_UNDEFINED: u64 : max(u64)
```

### [MIP\_LEVEL\_COUNT\_UNDEFINED ¶](#MIP_LEVEL_COUNT_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L78)

```
MIP_LEVEL_COUNT_UNDEFINED: u32 : max(u32)
```

### [QUERY\_SET\_INDEX\_UNDEFINED ¶](#QUERY_SET_INDEX_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L79)

```
QUERY_SET_INDEX_UNDEFINED: u32 : max(u32)
```

### [STRLEN ¶](#STRLEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L88)

```
STRLEN: int : transmute(int)(max(uint))
```

### [WGPU\_DEBUG ¶](#WGPU_DEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L6)

```
WGPU_DEBUG :: #config(WGPU_DEBUG, false)
```

### [WGPU\_SHARED ¶](#WGPU_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L5)

```
WGPU_SHARED :: #config(WGPU_SHARED, false)
```

### [WHOLE\_MAP\_SIZE ¶](#WHOLE_MAP_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L80)

```
WHOLE_MAP_SIZE: uint : max(uint)
```

### [WHOLE\_SIZE ¶](#WHOLE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L81)

```
WHOLE_SIZE: u64 : max(u64)
```

## Variables

This section is empty.

## Procedures

### [AdapterAddRef ¶](#AdapterAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1573)

```
AdapterAddRef :: proc "c" (adapter: Adapter) ---
```

### [AdapterGetFeatures ¶](#AdapterGetFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1866)

```
AdapterGetFeatures :: proc "c" (adapter: Adapter) -> (features: SupportedFeatures) {…}
```

### [AdapterGetInfo ¶](#AdapterGetInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1861)

```
AdapterGetInfo :: proc "c" (adapter: Adapter) -> (info: AdapterInfo, status: Status) {…}
```

### [AdapterGetLimits ¶](#AdapterGetLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1856)

```
AdapterGetLimits :: proc "c" (adapter: Adapter) -> (limits: Limits, status: Status) {…}
```

### [AdapterHasFeature ¶](#AdapterHasFeature) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1571)

```
AdapterHasFeature :: proc "c" (adapter: Adapter, feature: FeatureName) -> b32 ---
```

### [AdapterInfoFreeMembers ¶](#AdapterInfoFreeMembers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1577)

```
AdapterInfoFreeMembers :: proc "c" (adapterInfo: AdapterInfo) ---
```

 

Procs of AdapterInfo

### [AdapterRelease ¶](#AdapterRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1574)

```
AdapterRelease :: proc "c" (adapter: Adapter) ---
```

### [AdapterRequestDevice ¶](#AdapterRequestDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1572)

```
AdapterRequestDevice :: proc "c" (adapter: Adapter, descriptor: ^DeviceDescriptor, callbackInfo: RequestDeviceCallbackInfo) -> Future ---
```

### [BindGroupAddRef ¶](#BindGroupAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1581)

```
BindGroupAddRef :: proc "c" (bindGroup: BindGroup) ---
```

### [BindGroupLayoutAddRef ¶](#BindGroupLayoutAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1586)

```
BindGroupLayoutAddRef :: proc "c" (bindGroupLayout: BindGroupLayout) ---
```

### [BindGroupLayoutRelease ¶](#BindGroupLayoutRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1587)

```
BindGroupLayoutRelease :: proc "c" (bindGroupLayout: BindGroupLayout) ---
```

### [BindGroupLayoutSetLabel ¶](#BindGroupLayoutSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1585)

```
BindGroupLayoutSetLabel :: proc "c" (bindGroupLayout: BindGroupLayout, label: cstring) ---
```

 

Methods of BindGroupLayout

### [BindGroupRelease ¶](#BindGroupRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1582)

```
BindGroupRelease :: proc "c" (bindGroup: BindGroup) ---
```

### [BindGroupSetLabel ¶](#BindGroupSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1580)

```
BindGroupSetLabel :: proc "c" (bindGroup: BindGroup, label: string) ---
```

 

Methods of BindGroup

### [BufferAddRef ¶](#BufferAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1603)

```
BufferAddRef :: proc "c" (buffer: Buffer) ---
```

### [BufferDestroy ¶](#BufferDestroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1590)

```
BufferDestroy :: proc "c" (buffer: Buffer) ---
```

 

Methods of Buffer

### [BufferGetConstMappedRange ¶](#BufferGetConstMappedRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1873)

```
BufferGetConstMappedRange :: proc "c" (buffer: Buffer, offset: uint, size: uint) -> []u8 {…}
```

### [BufferGetConstMappedRangeSlice ¶](#BufferGetConstMappedRangeSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1883)

```
BufferGetConstMappedRangeSlice :: proc "c" (buffer: Buffer, offset: uint, length: uint, $T: typeid) -> []typeid {…}
```

### [BufferGetConstMappedRangeTyped ¶](#BufferGetConstMappedRangeTyped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1877)

```
BufferGetConstMappedRangeTyped :: proc "c" (buffer: Buffer, offset: uint, $T: typeid) -> ^typeid {…}
```

### [BufferGetMapState ¶](#BufferGetMapState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1595)

```
BufferGetMapState :: proc "c" (buffer: Buffer) -> BufferMapState ---
```

### [BufferGetMappedRange ¶](#BufferGetMappedRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1887)

```
BufferGetMappedRange :: proc "c" (buffer: Buffer, offset: uint, size: uint) -> []u8 {…}
```

### [BufferGetMappedRangeSlice ¶](#BufferGetMappedRangeSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1897)

```
BufferGetMappedRangeSlice :: proc "c" (buffer: Buffer, offset: uint, $T: typeid, length: uint) -> []typeid {…}
```

### [BufferGetMappedRangeTyped ¶](#BufferGetMappedRangeTyped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1891)

```
BufferGetMappedRangeTyped :: proc "c" (buffer: Buffer, offset: uint, $T: typeid) -> ^typeid {…}
```

### [BufferGetSize ¶](#BufferGetSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1596)

```
BufferGetSize :: proc "c" (buffer: Buffer) -> u64 ---
```

### [BufferGetUsage ¶](#BufferGetUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1597)

```
BufferGetUsage :: proc "c" (buffer: Buffer) -> bit_set[BufferUsage; u64] ---
```

### [BufferMapAsync ¶](#BufferMapAsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1598)

```
BufferMapAsync :: proc "c" (buffer: Buffer, mode: bit_set[MapMode; u64], offset: uint, size: uint, callbackInfo: BufferMapCallbackInfo) -> Future ---
```

### [BufferReadMappedRange ¶](#BufferReadMappedRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1599)

```
BufferReadMappedRange :: proc "c" (buffer: Buffer, offset: uint, data: rawptr, size: uint) -> Status ---
```

### [BufferRelease ¶](#BufferRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1604)

```
BufferRelease :: proc "c" (buffer: Buffer) ---
```

### [BufferSetLabel ¶](#BufferSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1600)

```
BufferSetLabel :: proc "c" (buffer: Buffer, label: string) ---
```

### [BufferUnmap ¶](#BufferUnmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1601)

```
BufferUnmap :: proc "c" (buffer: Buffer) ---
```

### [BufferWriteMappedRange ¶](#BufferWriteMappedRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1602)

```
BufferWriteMappedRange :: proc "c" (buffer: Buffer, offset: uint, data: rawptr, size: uint) -> Status ---
```

### [CommandBufferAddRef ¶](#CommandBufferAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1608)

```
CommandBufferAddRef :: proc "c" (commandBuffer: CommandBuffer) ---
```

### [CommandBufferRelease ¶](#CommandBufferRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1609)

```
CommandBufferRelease :: proc "c" (commandBuffer: CommandBuffer) ---
```

### [CommandBufferSetLabel ¶](#CommandBufferSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1607)

```
CommandBufferSetLabel :: proc "c" (commandBuffer: CommandBuffer, label: string) ---
```

 

Methods of CommandBuffer

### [CommandEncoderAddRef ¶](#CommandEncoderAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1626)

```
CommandEncoderAddRef :: proc "c" (commandEncoder: CommandEncoder) ---
```

### [CommandEncoderBeginComputePass ¶](#CommandEncoderBeginComputePass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1612)

```
CommandEncoderBeginComputePass :: proc "c" (commandEncoder: CommandEncoder, descriptor: ^ComputePassDescriptor = nil) -> ComputePassEncoder ---
```

 

Methods of CommandEncoder

### [CommandEncoderBeginRenderPass ¶](#CommandEncoderBeginRenderPass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1613)

```
CommandEncoderBeginRenderPass :: proc "c" (commandEncoder: CommandEncoder, descriptor: ^RenderPassDescriptor) -> RenderPassEncoder ---
```

### [CommandEncoderClearBuffer ¶](#CommandEncoderClearBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1614)

```
CommandEncoderClearBuffer :: proc "c" (commandEncoder: CommandEncoder, buffer: Buffer, offset: u64, size: u64) ---
```

### [CommandEncoderCopyBufferToBuffer ¶](#CommandEncoderCopyBufferToBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1615)

```
CommandEncoderCopyBufferToBuffer :: proc "c" (
	commandEncoder:    CommandEncoder, 
	source:            Buffer, 
	sourceOffset:      u64, 
	destination:       Buffer, 
	destinationOffset: u64, 
	size:              u64, 
) ---
```

### [CommandEncoderCopyBufferToTexture ¶](#CommandEncoderCopyBufferToTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1616)

```
CommandEncoderCopyBufferToTexture :: proc "c" (commandEncoder: CommandEncoder, source: ^TexelCopyBufferInfo, destination: ^TexelCopyTextureInfo, copySize: ^Extent3D) ---
```

### [CommandEncoderCopyTextureToBuffer ¶](#CommandEncoderCopyTextureToBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1617)

```
CommandEncoderCopyTextureToBuffer :: proc "c" (commandEncoder: CommandEncoder, source: ^TexelCopyTextureInfo, destination: ^TexelCopyBufferInfo, copySize: ^Extent3D) ---
```

### [CommandEncoderCopyTextureToTexture ¶](#CommandEncoderCopyTextureToTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1618)

```
CommandEncoderCopyTextureToTexture :: proc "c" (commandEncoder: CommandEncoder, source: ^TexelCopyTextureInfo, destination: ^TexelCopyTextureInfo, copySize: ^Extent3D) ---
```

### [CommandEncoderFinish ¶](#CommandEncoderFinish) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1619)

```
CommandEncoderFinish :: proc "c" (commandEncoder: CommandEncoder, descriptor: ^CommandBufferDescriptor = nil) -> CommandBuffer ---
```

### [CommandEncoderInsertDebugMarker ¶](#CommandEncoderInsertDebugMarker) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1620)

```
CommandEncoderInsertDebugMarker :: proc "c" (commandEncoder: CommandEncoder, markerLabel: string) ---
```

### [CommandEncoderPopDebugGroup ¶](#CommandEncoderPopDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1621)

```
CommandEncoderPopDebugGroup :: proc "c" (commandEncoder: CommandEncoder) ---
```

### [CommandEncoderPushDebugGroup ¶](#CommandEncoderPushDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1622)

```
CommandEncoderPushDebugGroup :: proc "c" (commandEncoder: CommandEncoder, groupLabel: string) ---
```

### [CommandEncoderRelease ¶](#CommandEncoderRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1627)

```
CommandEncoderRelease :: proc "c" (commandEncoder: CommandEncoder) ---
```

### [CommandEncoderResolveQuerySet ¶](#CommandEncoderResolveQuerySet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1623)

```
CommandEncoderResolveQuerySet :: proc "c" (
	commandEncoder:    CommandEncoder, 
	querySet:          QuerySet, 
	firstQuery:        u32, 
	queryCount:        u32, 
	destination:       Buffer, 
	destinationOffset: u64, 
) ---
```

### [CommandEncoderSetLabel ¶](#CommandEncoderSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1624)

```
CommandEncoderSetLabel :: proc "c" (commandEncoder: CommandEncoder, label: string) ---
```

### [CommandEncoderWriteTimestamp ¶](#CommandEncoderWriteTimestamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1625)

```
CommandEncoderWriteTimestamp :: proc "c" (commandEncoder: CommandEncoder, querySet: QuerySet, queryIndex: u32) ---
```

### [ComputePassEncoderAddRef ¶](#ComputePassEncoderAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1640)

```
ComputePassEncoderAddRef :: proc "c" (computePassEncoder: ComputePassEncoder) ---
```

### [ComputePassEncoderBeginPipelineStatisticsQuery ¶](#ComputePassEncoderBeginPipelineStatisticsQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L40)

```
ComputePassEncoderBeginPipelineStatisticsQuery :: proc "c" (computePassEncoder: ComputePassEncoder, querySet: QuerySet, queryIndex: u32) ---
```

### [ComputePassEncoderDispatchWorkgroups ¶](#ComputePassEncoderDispatchWorkgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1630)

```
ComputePassEncoderDispatchWorkgroups :: proc "c" (computePassEncoder: ComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) ---
```

 

Methods of ComputePassEncoder

### [ComputePassEncoderDispatchWorkgroupsIndirect ¶](#ComputePassEncoderDispatchWorkgroupsIndirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1631)

```
ComputePassEncoderDispatchWorkgroupsIndirect :: proc "c" (computePassEncoder: ComputePassEncoder, indirectBuffer: Buffer, indirectOffset: u64) ---
```

### [ComputePassEncoderEnd ¶](#ComputePassEncoderEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1632)

```
ComputePassEncoderEnd :: proc "c" (computePassEncoder: ComputePassEncoder) ---
```

### [ComputePassEncoderEndPipelineStatisticsQuery ¶](#ComputePassEncoderEndPipelineStatisticsQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L41)

```
ComputePassEncoderEndPipelineStatisticsQuery :: proc "c" (computePassEncoder: ComputePassEncoder) ---
```

### [ComputePassEncoderInsertDebugMarker ¶](#ComputePassEncoderInsertDebugMarker) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1633)

```
ComputePassEncoderInsertDebugMarker :: proc "c" (computePassEncoder: ComputePassEncoder, markerLabel: string) ---
```

### [ComputePassEncoderPopDebugGroup ¶](#ComputePassEncoderPopDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1634)

```
ComputePassEncoderPopDebugGroup :: proc "c" (computePassEncoder: ComputePassEncoder) ---
```

### [ComputePassEncoderPushDebugGroup ¶](#ComputePassEncoderPushDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1635)

```
ComputePassEncoderPushDebugGroup :: proc "c" (computePassEncoder: ComputePassEncoder, groupLabel: string) ---
```

### [ComputePassEncoderRelease ¶](#ComputePassEncoderRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1641)

```
ComputePassEncoderRelease :: proc "c" (computePassEncoder: ComputePassEncoder) ---
```

### [ComputePassEncoderSetBindGroup ¶](#ComputePassEncoderSetBindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1903)

```
ComputePassEncoderSetBindGroup :: proc "c" (computePassEncoder: ComputePassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsets: []u32 = nil) {…}
```

### [ComputePassEncoderSetImmediates ¶](#ComputePassEncoderSetImmediates) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L31)

```
ComputePassEncoderSetImmediates :: proc "c" (encoder: ComputePassEncoder, offset: u32, sizeBytes: u32, data: rawptr) ---
```

### [ComputePassEncoderSetLabel ¶](#ComputePassEncoderSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1638)

```
ComputePassEncoderSetLabel :: proc "c" (computePassEncoder: ComputePassEncoder, label: string) ---
```

### [ComputePassEncoderSetPipeline ¶](#ComputePassEncoderSetPipeline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1639)

```
ComputePassEncoderSetPipeline :: proc "c" (computePassEncoder: ComputePassEncoder, pipeline: ComputePipeline) ---
```

### [ComputePassEncoderWriteTimestamp ¶](#ComputePassEncoderWriteTimestamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L45)

```
ComputePassEncoderWriteTimestamp :: proc "c" (computePassEncoder: ComputePassEncoder, querySet: QuerySet, queryIndex: u32) ---
```

### [ComputePipelineAddRef ¶](#ComputePipelineAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1646)

```
ComputePipelineAddRef :: proc "c" (computePipeline: ComputePipeline) ---
```

### [ComputePipelineGetBindGroupLayout ¶](#ComputePipelineGetBindGroupLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1644)

```
ComputePipelineGetBindGroupLayout :: proc "c" (computePipeline: ComputePipeline, groupIndex: u32) -> BindGroupLayout ---
```

 

Methods of ComputePipeline

### [ComputePipelineRelease ¶](#ComputePipelineRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1647)

```
ComputePipelineRelease :: proc "c" (computePipeline: ComputePipeline) ---
```

### [ComputePipelineSetLabel ¶](#ComputePipelineSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1645)

```
ComputePipelineSetLabel :: proc "c" (computePipeline: ComputePipeline, label: string) ---
```

### [ConvertOdinToWGPULogLevel ¶](#ConvertOdinToWGPULogLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L263)

```
ConvertOdinToWGPULogLevel :: proc(level: runtime.Logger_Level) -> LogLevel {…}
```

##### Related Procedure Groups

* [ConvertLogLevel](/vendor/wgpu/#ConvertLogLevel)

### [ConvertWGPUToOdinLogLevel ¶](#ConvertWGPUToOdinLogLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L273)

```
ConvertWGPUToOdinLogLevel :: proc(level: LogLevel) -> runtime.Logger_Level {…}
```

##### Related Procedure Groups

* [ConvertLogLevel](/vendor/wgpu/#ConvertLogLevel)

### [CreateInstance ¶](#CreateInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1832)

```
CreateInstance :: proc "c" (descriptor: ^InstanceDescriptor = nil) -> Instance {…}
```

### [DeviceAddRef ¶](#DeviceAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1677)

```
DeviceAddRef :: proc "c" (device: Device) ---
```

### [DeviceCreateBindGroup ¶](#DeviceCreateBindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1650)

```
DeviceCreateBindGroup :: proc "c" (device: Device, descriptor: ^BindGroupDescriptor) -> BindGroup ---
```

 

Methods of Device

### [DeviceCreateBindGroupLayout ¶](#DeviceCreateBindGroupLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1651)

```
DeviceCreateBindGroupLayout :: proc "c" (device: Device, descriptor: ^BindGroupLayoutDescriptor) -> BindGroupLayout ---
```

### [DeviceCreateBuffer ¶](#DeviceCreateBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1652)

```
DeviceCreateBuffer :: proc "c" (device: Device, descriptor: ^BufferDescriptor) -> Buffer ---
```

### [DeviceCreateBufferWithDataSlice ¶](#DeviceCreateBufferWithDataSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1929)

```
DeviceCreateBufferWithDataSlice :: proc "c" (device: Device, descriptor: ^BufferWithDataDescriptor, data: []$T) -> (buf: Buffer) {…}
```

##### Related Procedure Groups

* [DeviceCreateBufferWithData](/vendor/wgpu/#DeviceCreateBufferWithData)

### [DeviceCreateBufferWithDataTyped ¶](#DeviceCreateBufferWithDataTyped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1945)

```
DeviceCreateBufferWithDataTyped :: proc "c" (device: Device, descriptor: ^BufferWithDataDescriptor, data: $T) -> (buf: Buffer) {…}
```

##### Related Procedure Groups

* [DeviceCreateBufferWithData](/vendor/wgpu/#DeviceCreateBufferWithData)

### [DeviceCreateCommandEncoder ¶](#DeviceCreateCommandEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1653)

```
DeviceCreateCommandEncoder :: proc "c" (device: Device, descriptor: ^CommandEncoderDescriptor = nil) -> CommandEncoder ---
```

### [DeviceCreateComputePipeline ¶](#DeviceCreateComputePipeline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1654)

```
DeviceCreateComputePipeline :: proc "c" (device: Device, descriptor: ^ComputePipelineDescriptor) -> ComputePipeline ---
```

### [DeviceCreateComputePipelineAsync ¶](#DeviceCreateComputePipelineAsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1655)

```
DeviceCreateComputePipelineAsync :: proc "c" (device: Device, descriptor: ^ComputePipelineDescriptor, callbackInfo: CreateComputePipelineAsyncCallbackInfo) -> Future ---
```

### [DeviceCreatePipelineLayout ¶](#DeviceCreatePipelineLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1656)

```
DeviceCreatePipelineLayout :: proc "c" (device: Device, descriptor: ^PipelineLayoutDescriptor) -> PipelineLayout ---
```

### [DeviceCreateQuerySet ¶](#DeviceCreateQuerySet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1657)

```
DeviceCreateQuerySet :: proc "c" (device: Device, descriptor: ^QuerySetDescriptor) -> QuerySet ---
```

### [DeviceCreateRenderBundleEncoder ¶](#DeviceCreateRenderBundleEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1658)

```
DeviceCreateRenderBundleEncoder :: proc "c" (device: Device, descriptor: ^RenderBundleEncoderDescriptor) -> RenderBundleEncoder ---
```

### [DeviceCreateRenderPipeline ¶](#DeviceCreateRenderPipeline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1659)

```
DeviceCreateRenderPipeline :: proc "c" (device: Device, descriptor: ^RenderPipelineDescriptor) -> RenderPipeline ---
```

### [DeviceCreateRenderPipelineAsync ¶](#DeviceCreateRenderPipelineAsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1660)

```
DeviceCreateRenderPipelineAsync :: proc "c" (device: Device, descriptor: ^RenderPipelineDescriptor, callbackInfo: CreateRenderPipelineAsyncCallbackInfo) -> Future ---
```

### [DeviceCreateSampler ¶](#DeviceCreateSampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1661)

```
DeviceCreateSampler :: proc "c" (device: Device, descriptor: ^SamplerDescriptor = nil) -> Sampler ---
```

### [DeviceCreateShaderModule ¶](#DeviceCreateShaderModule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1662)

```
DeviceCreateShaderModule :: proc "c" (device: Device, descriptor: ^ShaderModuleDescriptor) -> ShaderModule ---
```

### [DeviceCreateShaderModuleSpirV ¶](#DeviceCreateShaderModuleSpirV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L18)

```
DeviceCreateShaderModuleSpirV :: proc "c" (device: Device, descriptor: ^ShaderModuleDescriptorSpirV) -> ShaderModule ---
```

### [DeviceCreateTexture ¶](#DeviceCreateTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1663)

```
DeviceCreateTexture :: proc "c" (device: Device, descriptor: ^TextureDescriptor) -> Texture ---
```

### [DeviceDestroy ¶](#DeviceDestroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1664)

```
DeviceDestroy :: proc "c" (device: Device) ---
```

### [DeviceGetAdapterInfo ¶](#DeviceGetAdapterInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1914)

```
DeviceGetAdapterInfo :: proc "c" (device: Device) -> (info: AdapterInfo, status: Status) {…}
```

### [DeviceGetFeatures ¶](#DeviceGetFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1919)

```
DeviceGetFeatures :: proc "c" (device: Device) -> (features: SupportedFeatures) {…}
```

### [DeviceGetLimits ¶](#DeviceGetLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1909)

```
DeviceGetLimits :: proc "c" (device: Device) -> (limits: Limits, status: Status) {…}
```

### [DeviceGetLostFuture ¶](#DeviceGetLostFuture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1671)

```
DeviceGetLostFuture :: proc "c" (device: Device) -> Future ---
```

### [DeviceGetNativeMetalCommandQueue ¶](#DeviceGetNativeMetalCommandQueue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L27)

```
DeviceGetNativeMetalCommandQueue :: proc "c" (device: Device) -> rawptr ---
```

### [DeviceGetNativeMetalDevice ¶](#DeviceGetNativeMetalDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L26)

```
DeviceGetNativeMetalDevice :: proc "c" (device: Device) -> rawptr ---
```

### [DeviceGetNativeMetalTexture ¶](#DeviceGetNativeMetalTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L28)

```
DeviceGetNativeMetalTexture :: proc "c" (device: Device) -> rawptr ---
```

### [DeviceGetQueue ¶](#DeviceGetQueue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1672)

```
DeviceGetQueue :: proc "c" (device: Device) -> Queue ---
```

### [DeviceHasFeature ¶](#DeviceHasFeature) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1673)

```
DeviceHasFeature :: proc "c" (device: Device, feature: FeatureName) -> b32 ---
```

### [DevicePoll ¶](#DevicePoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L17)

```
DevicePoll :: proc "c" (device: Device, wait: b32, submissionIndex: ^SubmissionIndex = nil) -> b32 ---
```

 

Returns true if the queue is empty, or false if there are more queue submissions still in flight.

### [DevicePopErrorScope ¶](#DevicePopErrorScope) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1674)

```
DevicePopErrorScope :: proc "c" (device: Device, callbackInfo: PopErrorScopeCallbackInfo) -> Future ---
```

### [DevicePushErrorScope ¶](#DevicePushErrorScope) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1675)

```
DevicePushErrorScope :: proc "c" (device: Device, filter: ErrorFilter) ---
```

### [DeviceRelease ¶](#DeviceRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1678)

```
DeviceRelease :: proc "c" (device: Device) ---
```

### [DeviceSetLabel ¶](#DeviceSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1676)

```
DeviceSetLabel :: proc "c" (device: Device, label: string) ---
```

### [DeviceStartGraphicsDebuggerCapture ¶](#DeviceStartGraphicsDebuggerCapture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L48)

```
DeviceStartGraphicsDebuggerCapture :: proc "c" (device: Device) -> b32 ---
```

### [DeviceStopGraphicsDebuggerCapture ¶](#DeviceStopGraphicsDebuggerCapture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L49)

```
DeviceStopGraphicsDebuggerCapture :: proc "c" (device: Device) ---
```

### [ExternalTextureAddRef ¶](#ExternalTextureAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1682)

```
ExternalTextureAddRef :: proc "c" (externalTexture: ExternalTexture) ---
```

### [ExternalTextureRelease ¶](#ExternalTextureRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1683)

```
ExternalTextureRelease :: proc "c" (externalTexture: ExternalTexture) ---
```

### [ExternalTextureSetLabel ¶](#ExternalTextureSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1681)

```
ExternalTextureSetLabel :: proc "c" (externalTexture: ExternalTexture, label: string) ---
```

 

Methods of ExternalTexture

### [GenerateReport ¶](#GenerateReport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L52)

```
GenerateReport :: proc "c" (instance: Instance) -> (report: GlobalReport) {…}
```

### [GetInstanceFeatures ¶](#GetInstanceFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1558)

```
GetInstanceFeatures :: proc "c" (features: ^SupportedInstanceFeatures) ---
```

### [GetInstanceLimits ¶](#GetInstanceLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1849)

```
GetInstanceLimits :: proc "c" () -> (limits: InstanceLimits, status: Status) {…}
```

### [GetProcAddress ¶](#GetProcAddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1562)

```
GetProcAddress :: proc "c" (procName: string) -> Proc ---
```

### [GetVersion ¶](#GetVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L24)

```
GetVersion :: proc "c" () -> u32 ---
```

### [HasInstanceFeature ¶](#HasInstanceFeature) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1561)

```
HasInstanceFeature :: proc "c" (feature: InstanceFeatureName) -> b32 ---
```

### [InstanceAddRef ¶](#InstanceAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1692)

```
InstanceAddRef :: proc "c" (instance: Instance) ---
```

### [InstanceCreateSurface ¶](#InstanceCreateSurface) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1686)

```
InstanceCreateSurface :: proc "c" (instance: Instance, descriptor: ^SurfaceDescriptor) -> Surface ---
```

 

Methods of Instance

### [InstanceEnumerateAdapters ¶](#InstanceEnumerateAdapters) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L57)

```
InstanceEnumerateAdapters :: proc(instance: Instance, options: ^InstanceEnumerateAdapterOptions = nil, allocator := context.allocator) -> (adapters: []Adapter) {…}
```

### [InstanceGetWGSLLanguageFeatures ¶](#InstanceGetWGSLLanguageFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1687)

```
InstanceGetWGSLLanguageFeatures :: proc "c" (instance: Instance, features: ^SupportedWGSLLanguageFeatures) ---
```

### [InstanceHasWGSLLanguageFeature ¶](#InstanceHasWGSLLanguageFeature) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1688)

```
InstanceHasWGSLLanguageFeature :: proc "c" (instance: Instance, feature: WGSLLanguageFeatureName) -> b32 ---
```

### [InstanceProcessEvents ¶](#InstanceProcessEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1689)

```
InstanceProcessEvents :: proc "c" (instance: Instance) ---
```

### [InstanceRelease ¶](#InstanceRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1693)

```
InstanceRelease :: proc "c" (instance: Instance) ---
```

### [InstanceRequestAdapter ¶](#InstanceRequestAdapter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1690)

```
InstanceRequestAdapter :: proc "c" (instance: Instance, options: ^RequestAdapterOptions, callbackInfo: RequestAdapterCallbackInfo) -> Future ---
```

### [InstanceWaitAny ¶](#InstanceWaitAny) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1691)

```
InstanceWaitAny :: proc "c" (instance: Instance, futureCount: uint, futures: [^]FutureWaitInfo, timeoutNS: u64) -> WaitStatus ---
```

### [PipelineLayoutAddRef ¶](#PipelineLayoutAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1697)

```
PipelineLayoutAddRef :: proc "c" (pipelineLayout: PipelineLayout) ---
```

### [PipelineLayoutRelease ¶](#PipelineLayoutRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1698)

```
PipelineLayoutRelease :: proc "c" (pipelineLayout: PipelineLayout) ---
```

### [PipelineLayoutSetLabel ¶](#PipelineLayoutSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1696)

```
PipelineLayoutSetLabel :: proc "c" (pipelineLayout: PipelineLayout, label: string) ---
```

 

Methods of PipelineLayout

### [QuerySetAddRef ¶](#QuerySetAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1705)

```
QuerySetAddRef :: proc "c" (querySet: QuerySet) ---
```

### [QuerySetDestroy ¶](#QuerySetDestroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1701)

```
QuerySetDestroy :: proc "c" (querySet: QuerySet) ---
```

 

Methods of QuerySet

### [QuerySetGetCount ¶](#QuerySetGetCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1702)

```
QuerySetGetCount :: proc "c" (querySet: QuerySet) -> u32 ---
```

### [QuerySetGetType ¶](#QuerySetGetType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1703)

```
QuerySetGetType :: proc "c" (querySet: QuerySet) -> QueryType ---
```

### [QuerySetRelease ¶](#QuerySetRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1706)

```
QuerySetRelease :: proc "c" (querySet: QuerySet) ---
```

### [QuerySetSetLabel ¶](#QuerySetSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1704)

```
QuerySetSetLabel :: proc "c" (querySet: QuerySet, label: string) ---
```

### [QueueAddRef ¶](#QueueAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1715)

```
QueueAddRef :: proc "c" (queue: Queue) ---
```

### [QueueGetTimestampPeriod ¶](#QueueGetTimestampPeriod) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L14)

```
QueueGetTimestampPeriod :: proc "c" (queue: Queue) -> f32 ---
```

### [QueueOnSubmittedWorkDone ¶](#QueueOnSubmittedWorkDone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1709)

```
QueueOnSubmittedWorkDone :: proc "c" (queue: Queue, callbackInfo: QueueWorkDoneCallbackInfo) -> Future ---
```

 

Methods of Queue

### [QueueRelease ¶](#QueueRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1716)

```
QueueRelease :: proc "c" (queue: Queue) ---
```

### [QueueSetLabel ¶](#QueueSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1710)

```
QueueSetLabel :: proc "c" (queue: Queue, label: string) ---
```

### [QueueSubmit ¶](#QueueSubmit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1969)

```
QueueSubmit :: proc "c" (queue: Queue, commands: []CommandBuffer) {…}
```

### [QueueSubmitForIndex ¶](#QueueSubmitForIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L64)

```
QueueSubmitForIndex :: proc "c" (queue: Queue, commands: []CommandBuffer) -> SubmissionIndex {…}
```

### [QueueWriteBuffer ¶](#QueueWriteBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1713)

```
QueueWriteBuffer :: proc "c" (queue: Queue, buffer: Buffer, bufferOffset: u64, data: rawptr, size: uint) ---
```

### [QueueWriteTexture ¶](#QueueWriteTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1714)

```
QueueWriteTexture :: proc "c" (
	queue:       Queue, 
	destination: ^TexelCopyTextureInfo, 
	data:        rawptr, 
	dataSize:    uint, 
	dataLayout:  ^TexelCopyBufferLayout, 
	writeSize:   ^Extent3D, 
) ---
```

### [RawAdapterGetFeatures ¶](#RawAdapterGetFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1566)

```
RawAdapterGetFeatures :: proc "c" (adapter: Adapter, features: ^SupportedFeatures) ---
```

 

Methods of Adapter

### [RawAdapterGetInfo ¶](#RawAdapterGetInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1568)

```
RawAdapterGetInfo :: proc "c" (adapter: Adapter, info: ^AdapterInfo) -> Status ---
```

### [RawAdapterGetLimits ¶](#RawAdapterGetLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1570)

```
RawAdapterGetLimits :: proc "c" (adapter: Adapter, limits: ^Limits) -> Status ---
```

### [RawBufferGetConstMappedRange ¶](#RawBufferGetConstMappedRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1592)

```
RawBufferGetConstMappedRange :: proc "c" (buffer: Buffer, offset: uint, size: uint) -> rawptr ---
```

### [RawBufferGetMappedRange ¶](#RawBufferGetMappedRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1594)

```
RawBufferGetMappedRange :: proc "c" (buffer: Buffer, offset: uint, size: uint) -> rawptr ---
```

### [RawComputePassEncoderSetBindGroup ¶](#RawComputePassEncoderSetBindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1637)

```
RawComputePassEncoderSetBindGroup :: proc "c" (computePassEncoder: ComputePassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: uint, dynamicOffsets: [^]u32) ---
```

### [RawCreateInstance ¶](#RawCreateInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1557)

```
RawCreateInstance :: proc "c" (descriptor: ^InstanceDescriptor = nil) -> Instance ---
```

### [RawDeviceGetAdapterInfo ¶](#RawDeviceGetAdapterInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1666)

```
RawDeviceGetAdapterInfo :: proc "c" (device: Device, info: ^AdapterInfo) -> Status ---
```

### [RawDeviceGetFeatures ¶](#RawDeviceGetFeatures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1668)

```
RawDeviceGetFeatures :: proc "c" (device: Device, features: ^SupportedFeatures) ---
```

### [RawDeviceGetLimits ¶](#RawDeviceGetLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1670)

```
RawDeviceGetLimits :: proc "c" (device: Device, limits: ^Limits) -> Status ---
```

### [RawGenerateReport ¶](#RawGenerateReport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L7)

```
RawGenerateReport :: proc "c" (instance: Instance, report: ^GlobalReport) ---
```

### [RawGetInstanceLimits ¶](#RawGetInstanceLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1560)

```
RawGetInstanceLimits :: proc "c" (limits: ^InstanceLimits) -> Status ---
```

### [RawInstanceEnumerateAdapters ¶](#RawInstanceEnumerateAdapters) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L9)

```
RawInstanceEnumerateAdapters :: proc "c" (instance: Instance, options: ^InstanceEnumerateAdapterOptions, adapters: [^]Adapter) -> uint ---
```

### [RawQueueSubmit ¶](#RawQueueSubmit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1712)

```
RawQueueSubmit :: proc "c" (queue: Queue, commandCount: uint, commands: [^]CommandBuffer) ---
```

### [RawQueueSubmitForIndex ¶](#RawQueueSubmitForIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L12)

```
RawQueueSubmitForIndex :: proc "c" (queue: Queue, commandCount: uint, commands: [^]CommandBuffer) -> SubmissionIndex ---
```

### [RawRenderBundleEncoderSetBindGroup ¶](#RawRenderBundleEncoderSetBindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1733)

```
RawRenderBundleEncoderSetBindGroup :: proc "c" (renderBundleEncoder: RenderBundleEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: uint, dynamicOffsets: [^]u32) ---
```

### [RawRenderPassEncoderExecuteBundles ¶](#RawRenderPassEncoderExecuteBundles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1750)

```
RawRenderPassEncoderExecuteBundles :: proc "c" (renderPassEncoder: RenderPassEncoder, bundleCount: uint, bundles: [^]RenderBundle) ---
```

### [RawRenderPassEncoderSetBindGroup ¶](#RawRenderPassEncoderSetBindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1755)

```
RawRenderPassEncoderSetBindGroup :: proc "c" (renderPassEncoder: RenderPassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: uint, dynamicOffsets: [^]u32) ---
```

### [RawSurfaceGetCapabilities ¶](#RawSurfaceGetCapabilities) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1796)

```
RawSurfaceGetCapabilities :: proc "c" (surface: Surface, adapter: Adapter, capabilities: ^SurfaceCapabilities) -> Status ---
```

### [RawSurfaceGetCurrentTexture ¶](#RawSurfaceGetCurrentTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1798)

```
RawSurfaceGetCurrentTexture :: proc "c" (surface: Surface, surfaceTexture: ^SurfaceTexture) ---
```

### [RenderBundleAddRef ¶](#RenderBundleAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1720)

```
RenderBundleAddRef :: proc "c" (renderBundle: RenderBundle) ---
```

### [RenderBundleEncoderAddRef ¶](#RenderBundleEncoderAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1738)

```
RenderBundleEncoderAddRef :: proc "c" (renderBundleEncoder: RenderBundleEncoder) ---
```

### [RenderBundleEncoderDraw ¶](#RenderBundleEncoderDraw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1724)

```
RenderBundleEncoderDraw :: proc "c" (renderBundleEncoder: RenderBundleEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) ---
```

 

Methods of RenderBundleEncoder

### [RenderBundleEncoderDrawIndexed ¶](#RenderBundleEncoderDrawIndexed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1725)

```
RenderBundleEncoderDrawIndexed :: proc "c" (
	renderBundleEncoder: RenderBundleEncoder, 
	indexCount:          u32, 
	instanceCount:       u32, 
	firstIndex:          u32, 
	baseVertex:          i32, 
	firstInstance:       u32, 
) ---
```

### [RenderBundleEncoderDrawIndexedIndirect ¶](#RenderBundleEncoderDrawIndexedIndirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1726)

```
RenderBundleEncoderDrawIndexedIndirect :: proc "c" (renderBundleEncoder: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: u64) ---
```

### [RenderBundleEncoderDrawIndirect ¶](#RenderBundleEncoderDrawIndirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1727)

```
RenderBundleEncoderDrawIndirect :: proc "c" (renderBundleEncoder: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: u64) ---
```

### [RenderBundleEncoderFinish ¶](#RenderBundleEncoderFinish) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1728)

```
RenderBundleEncoderFinish :: proc "c" (renderBundleEncoder: RenderBundleEncoder, descriptor: ^RenderBundleDescriptor = nil) -> RenderBundle ---
```

### [RenderBundleEncoderInsertDebugMarker ¶](#RenderBundleEncoderInsertDebugMarker) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1729)

```
RenderBundleEncoderInsertDebugMarker :: proc "c" (renderBundleEncoder: RenderBundleEncoder, markerLabel: string) ---
```

### [RenderBundleEncoderPopDebugGroup ¶](#RenderBundleEncoderPopDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1730)

```
RenderBundleEncoderPopDebugGroup :: proc "c" (renderBundleEncoder: RenderBundleEncoder) ---
```

### [RenderBundleEncoderPushDebugGroup ¶](#RenderBundleEncoderPushDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1731)

```
RenderBundleEncoderPushDebugGroup :: proc "c" (renderBundleEncoder: RenderBundleEncoder, groupLabel: string) ---
```

### [RenderBundleEncoderRelease ¶](#RenderBundleEncoderRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1739)

```
RenderBundleEncoderRelease :: proc "c" (renderBundleEncoder: RenderBundleEncoder) ---
```

### [RenderBundleEncoderSetBindGroup ¶](#RenderBundleEncoderSetBindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1975)

```
RenderBundleEncoderSetBindGroup :: proc "c" (renderBundleEncoder: RenderBundleEncoder, groupIndex: u32, group: BindGroup, dynamicOffsets: []u32 = nil) {…}
```

### [RenderBundleEncoderSetImmediates ¶](#RenderBundleEncoderSetImmediates) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L32)

```
RenderBundleEncoderSetImmediates :: proc "c" (encoder: RenderBundleEncoder, stages: bit_set[ShaderStage; u64], offset: u32, sizeBytes: u32, data: rawptr) ---
```

### [RenderBundleEncoderSetIndexBuffer ¶](#RenderBundleEncoderSetIndexBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1734)

```
RenderBundleEncoderSetIndexBuffer :: proc "c" (renderBundleEncoder: RenderBundleEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) ---
```

### [RenderBundleEncoderSetLabel ¶](#RenderBundleEncoderSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1735)

```
RenderBundleEncoderSetLabel :: proc "c" (renderBundleEncoder: RenderBundleEncoder, label: string) ---
```

### [RenderBundleEncoderSetPipeline ¶](#RenderBundleEncoderSetPipeline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1736)

```
RenderBundleEncoderSetPipeline :: proc "c" (renderBundleEncoder: RenderBundleEncoder, pipeline: RenderPipeline) ---
```

### [RenderBundleEncoderSetVertexBuffer ¶](#RenderBundleEncoderSetVertexBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1737)

```
RenderBundleEncoderSetVertexBuffer :: proc "c" (renderBundleEncoder: RenderBundleEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) ---
```

### [RenderBundleRelease ¶](#RenderBundleRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1721)

```
RenderBundleRelease :: proc "c" (renderBundle: RenderBundle) ---
```

### [RenderBundleSetLabel ¶](#RenderBundleSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1719)

```
RenderBundleSetLabel :: proc "c" (renderBundle: RenderBundle, label: string) ---
```

 

Methods of RenderBundle

### [RenderPassEncoderAddRef ¶](#RenderPassEncoderAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1764)

```
RenderPassEncoderAddRef :: proc "c" (renderPassEncoder: RenderPassEncoder) ---
```

### [RenderPassEncoderBeginOcclusionQuery ¶](#RenderPassEncoderBeginOcclusionQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1742)

```
RenderPassEncoderBeginOcclusionQuery :: proc "c" (renderPassEncoder: RenderPassEncoder, queryIndex: u32) ---
```

 

Methods of RenderPassEncoder

### [RenderPassEncoderBeginPipelineStatisticsQuery ¶](#RenderPassEncoderBeginPipelineStatisticsQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L42)

```
RenderPassEncoderBeginPipelineStatisticsQuery :: proc "c" (renderPassEncoder: RenderPassEncoder, querySet: QuerySet, queryIndex: u32) ---
```

### [RenderPassEncoderDraw ¶](#RenderPassEncoderDraw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1743)

```
RenderPassEncoderDraw :: proc "c" (renderPassEncoder: RenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) ---
```

### [RenderPassEncoderDrawIndexed ¶](#RenderPassEncoderDrawIndexed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1744)

```
RenderPassEncoderDrawIndexed :: proc "c" (
	renderPassEncoder: RenderPassEncoder, 
	indexCount:        u32, 
	instanceCount:     u32, 
	firstIndex:        u32, 
	baseVertex:        i32, 
	firstInstance:     u32, 
) ---
```

### [RenderPassEncoderDrawIndexedIndirect ¶](#RenderPassEncoderDrawIndexedIndirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1745)

```
RenderPassEncoderDrawIndexedIndirect :: proc "c" (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) ---
```

### [RenderPassEncoderDrawIndirect ¶](#RenderPassEncoderDrawIndirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1746)

```
RenderPassEncoderDrawIndirect :: proc "c" (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) ---
```

### [RenderPassEncoderEnd ¶](#RenderPassEncoderEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1747)

```
RenderPassEncoderEnd :: proc "c" (renderPassEncoder: RenderPassEncoder) ---
```

### [RenderPassEncoderEndOcclusionQuery ¶](#RenderPassEncoderEndOcclusionQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1748)

```
RenderPassEncoderEndOcclusionQuery :: proc "c" (renderPassEncoder: RenderPassEncoder) ---
```

### [RenderPassEncoderEndPipelineStatisticsQuery ¶](#RenderPassEncoderEndPipelineStatisticsQuery) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L43)

```
RenderPassEncoderEndPipelineStatisticsQuery :: proc "c" (renderPassEncoder: RenderPassEncoder) ---
```

### [RenderPassEncoderExecuteBundles ¶](#RenderPassEncoderExecuteBundles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1981)

```
RenderPassEncoderExecuteBundles :: proc "c" (renderPassEncoder: RenderPassEncoder, bundles: []RenderBundle) {…}
```

### [RenderPassEncoderInsertDebugMarker ¶](#RenderPassEncoderInsertDebugMarker) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1751)

```
RenderPassEncoderInsertDebugMarker :: proc "c" (renderPassEncoder: RenderPassEncoder, markerLabel: string) ---
```

### [RenderPassEncoderMultiDrawIndexedIndirect ¶](#RenderPassEncoderMultiDrawIndexedIndirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L35)

```
RenderPassEncoderMultiDrawIndexedIndirect :: proc "c" (encoder: RenderPassEncoder, buffer: Buffer, offset: u64, count: u32) ---
```

### [RenderPassEncoderMultiDrawIndexedIndirectCount ¶](#RenderPassEncoderMultiDrawIndexedIndirectCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L38)

```
RenderPassEncoderMultiDrawIndexedIndirectCount :: proc "c" (
	encoder:             RenderPassEncoder, 
	buffer:              Buffer, 
	offset:              u64, 
	count_buffer:        Buffer, 
	count_buffer_offset: u64, 
	max_count:           u32, 
) ---
```

### [RenderPassEncoderMultiDrawIndirect ¶](#RenderPassEncoderMultiDrawIndirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L34)

```
RenderPassEncoderMultiDrawIndirect :: proc "c" (encoder: RenderPassEncoder, buffer: Buffer, offset: u64, count: u32) ---
```

### [RenderPassEncoderMultiDrawIndirectCount ¶](#RenderPassEncoderMultiDrawIndirectCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L37)

```
RenderPassEncoderMultiDrawIndirectCount :: proc "c" (
	encoder:             RenderPassEncoder, 
	buffer:              Buffer, 
	offset:              u64, 
	count_buffer:        Buffer, 
	count_buffer_offset: u64, 
	max_count:           u32, 
) ---
```

### [RenderPassEncoderPopDebugGroup ¶](#RenderPassEncoderPopDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1752)

```
RenderPassEncoderPopDebugGroup :: proc "c" (renderPassEncoder: RenderPassEncoder) ---
```

### [RenderPassEncoderPushDebugGroup ¶](#RenderPassEncoderPushDebugGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1753)

```
RenderPassEncoderPushDebugGroup :: proc "c" (renderPassEncoder: RenderPassEncoder, groupLabel: string) ---
```

### [RenderPassEncoderRelease ¶](#RenderPassEncoderRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1765)

```
RenderPassEncoderRelease :: proc "c" (renderPassEncoder: RenderPassEncoder) ---
```

### [RenderPassEncoderSetBindGroup ¶](#RenderPassEncoderSetBindGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1985)

```
RenderPassEncoderSetBindGroup :: proc "c" (renderPassEncoder: RenderPassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsets: []u32 = nil) {…}
```

### [RenderPassEncoderSetBlendConstant ¶](#RenderPassEncoderSetBlendConstant) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1756)

```
RenderPassEncoderSetBlendConstant :: proc "c" (renderPassEncoder: RenderPassEncoder, color: ^[4]f64) ---
```

### [RenderPassEncoderSetImmediates ¶](#RenderPassEncoderSetImmediates) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L30)

```
RenderPassEncoderSetImmediates :: proc "c" (encoder: RenderPassEncoder, stages: bit_set[ShaderStage; u64], offset: u32, sizeBytes: u32, data: rawptr) ---
```

### [RenderPassEncoderSetIndexBuffer ¶](#RenderPassEncoderSetIndexBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1757)

```
RenderPassEncoderSetIndexBuffer :: proc "c" (renderPassEncoder: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) ---
```

### [RenderPassEncoderSetLabel ¶](#RenderPassEncoderSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1758)

```
RenderPassEncoderSetLabel :: proc "c" (renderPassEncoder: RenderPassEncoder, label: string) ---
```

### [RenderPassEncoderSetPipeline ¶](#RenderPassEncoderSetPipeline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1759)

```
RenderPassEncoderSetPipeline :: proc "c" (renderPassEncoder: RenderPassEncoder, pipeline: RenderPipeline) ---
```

### [RenderPassEncoderSetScissorRect ¶](#RenderPassEncoderSetScissorRect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1760)

```
RenderPassEncoderSetScissorRect :: proc "c" (renderPassEncoder: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) ---
```

### [RenderPassEncoderSetStencilReference ¶](#RenderPassEncoderSetStencilReference) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1761)

```
RenderPassEncoderSetStencilReference :: proc "c" (renderPassEncoder: RenderPassEncoder, reference: u32) ---
```

### [RenderPassEncoderSetVertexBuffer ¶](#RenderPassEncoderSetVertexBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1762)

```
RenderPassEncoderSetVertexBuffer :: proc "c" (renderPassEncoder: RenderPassEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) ---
```

### [RenderPassEncoderSetViewport ¶](#RenderPassEncoderSetViewport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1763)

```
RenderPassEncoderSetViewport :: proc "c" (
	renderPassEncoder: RenderPassEncoder, 
	x:                 f32, 
	y:                 f32, 
	width:             f32, 
	height:            f32, 
	minDepth:          f32, 
	maxDepth:          f32, 
) ---
```

### [RenderPassEncoderWriteTimestamp ¶](#RenderPassEncoderWriteTimestamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L46)

```
RenderPassEncoderWriteTimestamp :: proc "c" (renderPassEncoder: RenderPassEncoder, querySet: QuerySet, queryIndex: u32) ---
```

### [RenderPipelineAddRef ¶](#RenderPipelineAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1770)

```
RenderPipelineAddRef :: proc "c" (renderPipeline: RenderPipeline) ---
```

### [RenderPipelineGetBindGroupLayout ¶](#RenderPipelineGetBindGroupLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1768)

```
RenderPipelineGetBindGroupLayout :: proc "c" (renderPipeline: RenderPipeline, groupIndex: u32) -> BindGroupLayout ---
```

 

Methods of RenderPipeline

### [RenderPipelineRelease ¶](#RenderPipelineRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1771)

```
RenderPipelineRelease :: proc "c" (renderPipeline: RenderPipeline) ---
```

### [RenderPipelineSetLabel ¶](#RenderPipelineSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1769)

```
RenderPipelineSetLabel :: proc "c" (renderPipeline: RenderPipeline, label: string) ---
```

### [SamplerAddRef ¶](#SamplerAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1775)

```
SamplerAddRef :: proc "c" (sampler: Sampler) ---
```

### [SamplerRelease ¶](#SamplerRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1776)

```
SamplerRelease :: proc "c" (sampler: Sampler) ---
```

### [SamplerSetLabel ¶](#SamplerSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1774)

```
SamplerSetLabel :: proc "c" (sampler: Sampler, label: string) ---
```

 

Methods of Sampler

### [SetLogCallback ¶](#SetLogCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L20)

```
SetLogCallback :: proc "c" (callback: LogCallback, userdata: rawptr) ---
```

### [SetLogLevel ¶](#SetLogLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin#L22)

```
SetLogLevel :: proc "c" (level: LogLevel) ---
```

### [ShaderModuleAddRef ¶](#ShaderModuleAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1781)

```
ShaderModuleAddRef :: proc "c" (shaderModule: ShaderModule) ---
```

### [ShaderModuleGetCompilationInfo ¶](#ShaderModuleGetCompilationInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1779)

```
ShaderModuleGetCompilationInfo :: proc "c" (shaderModule: ShaderModule, callbackInfo: CompilationInfoCallbackInfo) -> Future ---
```

 

Methods of ShaderModule

### [ShaderModuleRelease ¶](#ShaderModuleRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1782)

```
ShaderModuleRelease :: proc "c" (shaderModule: ShaderModule) ---
```

### [ShaderModuleSetLabel ¶](#ShaderModuleSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1780)

```
ShaderModuleSetLabel :: proc "c" (shaderModule: ShaderModule, label: string) ---
```

### [SupportedFeaturesFreeMembers ¶](#SupportedFeaturesFreeMembers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1785)

```
SupportedFeaturesFreeMembers :: proc "c" (supportedFeatures: SupportedFeatures) ---
```

 

Methods of SupportedFeatures

### [SupportedInstanceFeaturesFreeMembers ¶](#SupportedInstanceFeaturesFreeMembers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1788)

```
SupportedInstanceFeaturesFreeMembers :: proc "c" (SupportedInstanceFeatures: SupportedInstanceFeatures) ---
```

 

Methods of SupportedInstanceFeatures

### [SupportedWGSLLanguageFeaturesFreeMembers ¶](#SupportedWGSLLanguageFeaturesFreeMembers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1791)

```
SupportedWGSLLanguageFeaturesFreeMembers :: proc "c" (supportedWGSLLanguageFeatures: SupportedWGSLLanguageFeatures) ---
```

 

Methods of SupportedWGSLLanguageFeatures

### [SurfaceAddRef ¶](#SurfaceAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1802)

```
SurfaceAddRef :: proc "c" (surface: Surface) ---
```

### [SurfaceCapabilitiesFreeMembers ¶](#SurfaceCapabilitiesFreeMembers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1806)

```
SurfaceCapabilitiesFreeMembers :: proc "c" (surfaceCapabilities: SurfaceCapabilities) ---
```

 

Methods of SurfaceCapabilities

### [SurfaceConfigure ¶](#SurfaceConfigure) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1794)

```
SurfaceConfigure :: proc "c" (surface: Surface, config: ^SurfaceConfiguration) ---
```

 

Methods of Surface

### [SurfaceGetCapabilities ¶](#SurfaceGetCapabilities) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1991)

```
SurfaceGetCapabilities :: proc "c" (surface: Surface, adapter: Adapter) -> (capabilities: SurfaceCapabilities, status: Status) {…}
```

### [SurfaceGetCurrentTexture ¶](#SurfaceGetCurrentTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1996)

```
SurfaceGetCurrentTexture :: proc "c" (surface: Surface) -> (surface_texture: SurfaceTexture) {…}
```

### [SurfacePresent ¶](#SurfacePresent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1799)

```
SurfacePresent :: proc "c" (surface: Surface) -> Status ---
```

### [SurfaceRelease ¶](#SurfaceRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1803)

```
SurfaceRelease :: proc "c" (surface: Surface) ---
```

### [SurfaceSetLabel ¶](#SurfaceSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1800)

```
SurfaceSetLabel :: proc "c" (surface: Surface, label: string) ---
```

### [SurfaceUnconfigure ¶](#SurfaceUnconfigure) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1801)

```
SurfaceUnconfigure :: proc "c" (surface: Surface) ---
```

### [TextureAddRef ¶](#TextureAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1821)

```
TextureAddRef :: proc "c" (texture: Texture) ---
```

### [TextureCreateView ¶](#TextureCreateView) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1809)

```
TextureCreateView :: proc "c" (texture: Texture, descriptor: ^TextureViewDescriptor = nil) -> TextureView ---
```

 

Methods of Texture

### [TextureDestroy ¶](#TextureDestroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1810)

```
TextureDestroy :: proc "c" (texture: Texture) ---
```

### [TextureGetDepthOrArrayLayers ¶](#TextureGetDepthOrArrayLayers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1811)

```
TextureGetDepthOrArrayLayers :: proc "c" (texture: Texture) -> u32 ---
```

### [TextureGetDimension ¶](#TextureGetDimension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1812)

```
TextureGetDimension :: proc "c" (texture: Texture) -> TextureDimension ---
```

### [TextureGetFormat ¶](#TextureGetFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1813)

```
TextureGetFormat :: proc "c" (texture: Texture) -> TextureFormat ---
```

### [TextureGetHeight ¶](#TextureGetHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1814)

```
TextureGetHeight :: proc "c" (texture: Texture) -> u32 ---
```

### [TextureGetMipLevelCount ¶](#TextureGetMipLevelCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1815)

```
TextureGetMipLevelCount :: proc "c" (texture: Texture) -> u32 ---
```

### [TextureGetSampleCount ¶](#TextureGetSampleCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1816)

```
TextureGetSampleCount :: proc "c" (texture: Texture) -> u32 ---
```

### [TextureGetTextureBindingViewDimension ¶](#TextureGetTextureBindingViewDimension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1817)

```
TextureGetTextureBindingViewDimension :: proc "c" (texture: Texture) -> TextureViewDimension ---
```

### [TextureGetUsage ¶](#TextureGetUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1818)

```
TextureGetUsage :: proc "c" (texture: Texture) -> bit_set[TextureUsage; u64] ---
```

### [TextureGetWidth ¶](#TextureGetWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1819)

```
TextureGetWidth :: proc "c" (texture: Texture) -> u32 ---
```

### [TextureRelease ¶](#TextureRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1822)

```
TextureRelease :: proc "c" (texture: Texture) ---
```

### [TextureSetLabel ¶](#TextureSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1820)

```
TextureSetLabel :: proc "c" (texture: Texture, label: string) ---
```

### [TextureViewAddRef ¶](#TextureViewAddRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1826)

```
TextureViewAddRef :: proc "c" (textureView: TextureView) ---
```

### [TextureViewRelease ¶](#TextureViewRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1827)

```
TextureViewRelease :: proc "c" (textureView: TextureView) ---
```

### [TextureViewSetLabel ¶](#TextureViewSetLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1825)

```
TextureViewSetLabel :: proc "c" (textureView: TextureView, label: string) ---
```

 

Methods of TextureView

## Procedure Groups

### [ConvertLogLevel ¶](#ConvertLogLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin#L283)

```
ConvertLogLevel :: proc{
	ConvertOdinToWGPULogLevel,
	ConvertWGPUToOdinLogLevel,
}
```

### [DeviceCreateBufferWithData ¶](#DeviceCreateBufferWithData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L1962)

```
DeviceCreateBufferWithData :: proc{
	DeviceCreateBufferWithDataSlice,
	DeviceCreateBufferWithDataTyped,
}
```

## `#config` values

### [WGPU\_DEBUG ¶](#WGPU_DEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L6)

```
WGPU_DEBUG :: #config(WGPU_DEBUG, false)
```

### [WGPU\_SHARED ¶](#WGPU_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin#L5)

```
WGPU_SHARED :: #config(WGPU_SHARED, false)
```

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/doc.odin)
* [wgpu.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu.odin)
* [wgpu\_native.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native.odin)
* [wgpu\_native\_types.odin](https://github.com/odin-lang/Odin/tree/master/vendor/wgpu/wgpu_native_types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:55.392439900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Adapter](#Adapter)
    + [AdapterInfo](#AdapterInfo)
    + [AdapterType](#AdapterType)
    + [AddressMode](#AddressMode)
    + [BackendType](#BackendType)
    + [BindGroup](#BindGroup)
    + [BindGroupDescriptor](#BindGroupDescriptor)
    + [BindGroupEntry](#BindGroupEntry)
    + [BindGroupEntryExtras](#BindGroupEntryExtras)
    + [BindGroupLayout](#BindGroupLayout)
    + [BindGroupLayoutDescriptor](#BindGroupLayoutDescriptor)
    + [BindGroupLayoutEntry](#BindGroupLayoutEntry)
    + [BindGroupLayoutEntryExtras](#BindGroupLayoutEntryExtras)
    + [BlendComponent](#BlendComponent)
    + [BlendFactor](#BlendFactor)
    + [BlendOperation](#BlendOperation)
    + [BlendState](#BlendState)
    + [Bool](#Bool)
    + [Buffer](#Buffer)
    + [BufferBindingLayout](#BufferBindingLayout)
    + [BufferBindingType](#BufferBindingType)
    + [BufferDescriptor](#BufferDescriptor)
    + [BufferMapCallback](#BufferMapCallback)
    + [BufferMapCallbackInfo](#BufferMapCallbackInfo)
    + [BufferMapState](#BufferMapState)
    + [BufferUsage](#BufferUsage)
    + [BufferUsageFlags](#BufferUsageFlags)
    + [BufferWithDataDescriptor](#BufferWithDataDescriptor)
    + [CallbackMode](#CallbackMode)
    + [ChainedStruct](#ChainedStruct)
    + [Color](#Color)
    + [ColorTargetState](#ColorTargetState)
    + [ColorWriteMask](#ColorWriteMask)
    + [ColorWriteMaskFlags](#ColorWriteMaskFlags)
    + [CommandBuffer](#CommandBuffer)
    + [CommandBufferDescriptor](#CommandBufferDescriptor)
    + [CommandEncoder](#CommandEncoder)
    + [CommandEncoderDescriptor](#CommandEncoderDescriptor)
    + [CompareFunction](#CompareFunction)
    + [CompatibilityModeLimits](#CompatibilityModeLimits)
    + [CompilationInfo](#CompilationInfo)
    + [CompilationInfoCallback](#CompilationInfoCallback)
    + [CompilationInfoCallbackInfo](#CompilationInfoCallbackInfo)
    + [CompilationInfoRequestStatus](#CompilationInfoRequestStatus)
    + [CompilationMessage](#CompilationMessage)
    + [CompilationMessageType](#CompilationMessageType)
    + [ComponentSwizzle](#ComponentSwizzle)
    + [CompositeAlphaMode](#CompositeAlphaMode)
    + [ComputePassDescriptor](#ComputePassDescriptor)
    + [ComputePassEncoder](#ComputePassEncoder)
    + [ComputePipeline](#ComputePipeline)
    + [ComputePipelineDescriptor](#ComputePipelineDescriptor)
    + [ComputeState](#ComputeState)
    + [ConstantEntry](#ConstantEntry)
    + [CreateComputePipelineAsyncCallback](#CreateComputePipelineAsyncCallback)
    + [CreateComputePipelineAsyncCallbackInfo](#CreateComputePipelineAsyncCallbackInfo)
    + [CreatePipelineAsyncStatus](#CreatePipelineAsyncStatus)
    + [CreateRenderPipelineAsyncCallback](#CreateRenderPipelineAsyncCallback)
    + [CreateRenderPipelineAsyncCallbackInfo](#CreateRenderPipelineAsyncCallbackInfo)
    + [CullMode](#CullMode)
    + [DepthStencilState](#DepthStencilState)
    + [Device](#Device)
    + [DeviceDescriptor](#DeviceDescriptor)
    + [DeviceExtras](#DeviceExtras)
    + [DeviceLostCallback](#DeviceLostCallback)
    + [DeviceLostCallbackInfo](#DeviceLostCallbackInfo)
    + [DeviceLostReason](#DeviceLostReason)
    + [Dx12Compiler](#Dx12Compiler)
    + [Dx12SwapchainKind](#Dx12SwapchainKind)
    + [DxcMaxShaderModel](#DxcMaxShaderModel)
    + [ErrorFilter](#ErrorFilter)
    + [ErrorType](#ErrorType)
    + [Extent3D](#Extent3D)
    + [ExternalTexture](#ExternalTexture)
    + [ExternalTextureBindingEntry](#ExternalTextureBindingEntry)
    + [ExternalTextureBindingLayout](#ExternalTextureBindingLayout)
    + [FeatureLevel](#FeatureLevel)
    + [FeatureName](#FeatureName)
    + [FilterMode](#FilterMode)
    + [Flags](#Flags)
    + [FragmentState](#FragmentState)
    + [FrontFace](#FrontFace)
    + [Future](#Future)
    + [FutureWaitInfo](#FutureWaitInfo)
    + [GLFenceBehaviour](#GLFenceBehaviour)
    + [Gles3MinorVersion](#Gles3MinorVersion)
    + [GlobalReport](#GlobalReport)
    + [HubReport](#HubReport)
    + [IndexFormat](#IndexFormat)
    + [Instance](#Instance)
    + [InstanceBackend](#InstanceBackend)
    + [InstanceBackendFlags](#InstanceBackendFlags)
    + [InstanceDescriptor](#InstanceDescriptor)
    + [InstanceEnumerateAdapterOptions](#InstanceEnumerateAdapterOptions)
    + [InstanceExtras](#InstanceExtras)
    + [InstanceFeatureName](#InstanceFeatureName)
    + [InstanceFlag](#InstanceFlag)
    + [InstanceFlags](#InstanceFlags)
    + [InstanceLimits](#InstanceLimits)
    + [Limits](#Limits)
    + [LoadOp](#LoadOp)
    + [LogCallback](#LogCallback)
    + [LogLevel](#LogLevel)
    + [MapAsyncStatus](#MapAsyncStatus)
    + [MapMode](#MapMode)
    + [MapModeFlags](#MapModeFlags)
    + [MipmapFilterMode](#MipmapFilterMode)
    + [MultisampleState](#MultisampleState)
    + [NativeDisplayHandle](#NativeDisplayHandle)
    + [NativeDisplayHandleType](#NativeDisplayHandleType)
    + [NativeLimits](#NativeLimits)
    + [OptionalBool](#OptionalBool)
    + [Origin3D](#Origin3D)
    + [PassTimestampWrites](#PassTimestampWrites)
    + [PipelineLayout](#PipelineLayout)
    + [PipelineLayoutDescriptor](#PipelineLayoutDescriptor)
    + [PipelineLayoutExtras](#PipelineLayoutExtras)
    + [PipelineStatisticName](#PipelineStatisticName)
    + [PolygonMode](#PolygonMode)
    + [PopErrorScopeCallback](#PopErrorScopeCallback)
    + [PopErrorScopeCallbackInfo](#PopErrorScopeCallbackInfo)
    + [PopErrorScopeStatus](#PopErrorScopeStatus)
    + [PowerPreference](#PowerPreference)
    + [PredefinedColorSpace](#PredefinedColorSpace)
    + [PresentMode](#PresentMode)
    + [PrimitiveState](#PrimitiveState)
    + [PrimitiveStateExtras](#PrimitiveStateExtras)
    + [PrimitiveTopology](#PrimitiveTopology)
    + [Proc](#Proc)
    + [QuerySet](#QuerySet)
    + [QuerySetDescriptor](#QuerySetDescriptor)
    + [QuerySetDescriptorExtras](#QuerySetDescriptorExtras)
    + [QueryType](#QueryType)
    + [Queue](#Queue)
    + [QueueDescriptor](#QueueDescriptor)
    + [QueueWorkDoneCallback](#QueueWorkDoneCallback)
    + [QueueWorkDoneCallbackInfo](#QueueWorkDoneCallbackInfo)
    + [QueueWorkDoneStatus](#QueueWorkDoneStatus)
    + [RegistryReport](#RegistryReport)
    + [RenderBundle](#RenderBundle)
    + [RenderBundleDescriptor](#RenderBundleDescriptor)
    + [RenderBundleEncoder](#RenderBundleEncoder)
    + [RenderBundleEncoderDescriptor](#RenderBundleEncoderDescriptor)
    + [RenderPassColorAttachment](#RenderPassColorAttachment)
    + [RenderPassDepthStencilAttachment](#RenderPassDepthStencilAttachment)
    + [RenderPassDescriptor](#RenderPassDescriptor)
    + [RenderPassEncoder](#RenderPassEncoder)
    + [RenderPassMaxDrawCount](#RenderPassMaxDrawCount)
    + [RenderPipeline](#RenderPipeline)
    + [RenderPipelineDescriptor](#RenderPipelineDescriptor)
    + [RequestAdapterCallback](#RequestAdapterCallback)
    + [RequestAdapterCallbackInfo](#RequestAdapterCallbackInfo)
    + [RequestAdapterOptions](#RequestAdapterOptions)
    + [RequestAdapterStatus](#RequestAdapterStatus)
    + [RequestAdapterWebXROptions](#RequestAdapterWebXROptions)
    + [RequestDeviceCallback](#RequestDeviceCallback)
    + [RequestDeviceCallbackInfo](#RequestDeviceCallbackInfo)
    + [RequestDeviceStatus](#RequestDeviceStatus)
    + [SType](#SType)
    + [Sampler](#Sampler)
    + [SamplerBindingLayout](#SamplerBindingLayout)
    + [SamplerBindingType](#SamplerBindingType)
    + [SamplerDescriptor](#SamplerDescriptor)
    + [ShaderDefine](#ShaderDefine)
    + [ShaderModule](#ShaderModule)
    + [ShaderModuleDescriptor](#ShaderModuleDescriptor)
    + [ShaderModuleDescriptorSpirV](#ShaderModuleDescriptorSpirV)
    + [ShaderSourceGLSL](#ShaderSourceGLSL)
    + [ShaderSourceSPIRV](#ShaderSourceSPIRV)
    + [ShaderSourceWGSL](#ShaderSourceWGSL)
    + [ShaderStage](#ShaderStage)
    + [ShaderStageFlags](#ShaderStageFlags)
    + [Status](#Status)
    + [StencilFaceState](#StencilFaceState)
    + [StencilOperation](#StencilOperation)
    + [StorageTextureAccess](#StorageTextureAccess)
    + [StorageTextureBindingLayout](#StorageTextureBindingLayout)
    + [StoreOp](#StoreOp)
    + [StringView](#StringView)
    + [SubmissionIndex](#SubmissionIndex)
    + [SupportedFeatures](#SupportedFeatures)
    + [SupportedInstanceFeatures](#SupportedInstanceFeatures)
    + [SupportedWGSLLanguageFeatures](#SupportedWGSLLanguageFeatures)
    + [Surface](#Surface)
    + [SurfaceCapabilities](#SurfaceCapabilities)
    + [SurfaceColorManagement](#SurfaceColorManagement)
    + [SurfaceConfiguration](#SurfaceConfiguration)
    + [SurfaceConfigurationExtras](#SurfaceConfigurationExtras)
    + [SurfaceDescriptor](#SurfaceDescriptor)
    + [SurfaceGetCurrentTextureStatus](#SurfaceGetCurrentTextureStatus)
    + [SurfaceSourceAndroidNativeWindow](#SurfaceSourceAndroidNativeWindow)
    + [SurfaceSourceCanvasHTMLSelector](#SurfaceSourceCanvasHTMLSelector)
    + [SurfaceSourceMetalLayer](#SurfaceSourceMetalLayer)
    + [SurfaceSourceSwapChainPanel](#SurfaceSourceSwapChainPanel)
    + [SurfaceSourceWaylandSurface](#SurfaceSourceWaylandSurface)
    + [SurfaceSourceWindowsHWND](#SurfaceSourceWindowsHWND)
    + [SurfaceSourceXcbWindow](#SurfaceSourceXcbWindow)
    + [SurfaceSourceXlibWindow](#SurfaceSourceXlibWindow)
    + [SurfaceTexture](#SurfaceTexture)
    + [TexelCopyBufferInfo](#TexelCopyBufferInfo)
    + [TexelCopyBufferLayout](#TexelCopyBufferLayout)
    + [TexelCopyTextureInfo](#TexelCopyTextureInfo)
    + [Texture](#Texture)
    + [TextureAspect](#TextureAspect)
    + [TextureBindingLayout](#TextureBindingLayout)
    + [TextureBindingViewDimension](#TextureBindingViewDimension)
    + [TextureComponentSwizzle](#TextureComponentSwizzle)
    + [TextureComponentSwizzleDescriptor](#TextureComponentSwizzleDescriptor)
    + [TextureDescriptor](#TextureDescriptor)
    + [TextureDimension](#TextureDimension)
    + [TextureFormat](#TextureFormat)
    + [TextureSampleType](#TextureSampleType)
    + [TextureUsage](#TextureUsage)
    + [TextureUsageFlags](#TextureUsageFlags)
    + [TextureView](#TextureView)
    + [TextureViewDescriptor](#TextureViewDescriptor)
    + [TextureViewDimension](#TextureViewDimension)
    + [ToneMappingMode](#ToneMappingMode)
    + [UncapturedErrorCallback](#UncapturedErrorCallback)
    + [UncapturedErrorCallbackInfo](#UncapturedErrorCallbackInfo)
    + [VertexAttribute](#VertexAttribute)
    + [VertexBufferLayout](#VertexBufferLayout)
    + [VertexFormat](#VertexFormat)
    + [VertexState](#VertexState)
    + [VertexStepMode](#VertexStepMode)
    + [WGSLLanguageFeatureName](#WGSLLanguageFeatureName)
    + [WaitStatus](#WaitStatus)
    + [WaylandDisplayHandle](#WaylandDisplayHandle)
    + [XcbDisplayHandle](#XcbDisplayHandle)
    + [XlibDisplayHandle](#XlibDisplayHandle)
  * [Constants](#pkg-Constants)
    + [ARRAY\_LAYER\_COUNT\_UNDEFINED](#ARRAY_LAYER_COUNT_UNDEFINED)
    + [BINDINGS\_VERSION](#BINDINGS_VERSION)
    + [BINDINGS\_VERSION\_STRING](#BINDINGS_VERSION_STRING)
    + [COPY\_STRIDE\_UNDEFINED](#COPY_STRIDE_UNDEFINED)
    + [ColorWriteMaskFlags\_All](#ColorWriteMaskFlags_All)
    + [DEPTH\_SLICE\_UNDEFINED](#DEPTH_SLICE_UNDEFINED)
    + [InstanceBackendFlags\_All](#InstanceBackendFlags_All)
    + [InstanceBackendFlags\_Primary](#InstanceBackendFlags_Primary)
    + [InstanceBackendFlags\_Secondary](#InstanceBackendFlags_Secondary)
    + [InstanceFlags\_Empty](#InstanceFlags_Empty)
    + [LIMIT\_U32\_UNDEFINED](#LIMIT_U32_UNDEFINED)
    + [LIMIT\_U64\_UNDEFINED](#LIMIT_U64_UNDEFINED)
    + [MIP\_LEVEL\_COUNT\_UNDEFINED](#MIP_LEVEL_COUNT_UNDEFINED)
    + [QUERY\_SET\_INDEX\_UNDEFINED](#QUERY_SET_INDEX_UNDEFINED)
    + [STRLEN](#STRLEN)
    + [WGPU\_DEBUG](#WGPU_DEBUG)
    + [WGPU\_SHARED](#WGPU_SHARED)
    + [WHOLE\_MAP\_SIZE](#WHOLE_MAP_SIZE)
    + [WHOLE\_SIZE](#WHOLE_SIZE)
  * [Procedures](#pkg-Procedures)
    + [AdapterAddRef](#AdapterAddRef)
    + [AdapterGetFeatures](#AdapterGetFeatures)
    + [AdapterGetInfo](#AdapterGetInfo)
    + [AdapterGetLimits](#AdapterGetLimits)
    + [AdapterHasFeature](#AdapterHasFeature)
    + [AdapterInfoFreeMembers](#AdapterInfoFreeMembers)
    + [AdapterRelease](#AdapterRelease)
    + [AdapterRequestDevice](#AdapterRequestDevice)
    + [BindGroupAddRef](#BindGroupAddRef)
    + [BindGroupLayoutAddRef](#BindGroupLayoutAddRef)
    + [BindGroupLayoutRelease](#BindGroupLayoutRelease)
    + [BindGroupLayoutSetLabel](#BindGroupLayoutSetLabel)
    + [BindGroupRelease](#BindGroupRelease)
    + [BindGroupSetLabel](#BindGroupSetLabel)
    + [BufferAddRef](#BufferAddRef)
    + [BufferDestroy](#BufferDestroy)
    + [BufferGetConstMappedRange](#BufferGetConstMappedRange)
    + [BufferGetConstMappedRangeSlice](#BufferGetConstMappedRangeSlice)
    + [BufferGetConstMappedRangeTyped](#BufferGetConstMappedRangeTyped)
    + [BufferGetMapState](#BufferGetMapState)
    + [BufferGetMappedRange](#BufferGetMappedRange)
    + [BufferGetMappedRangeSlice](#BufferGetMappedRangeSlice)
    + [BufferGetMappedRangeTyped](#BufferGetMappedRangeTyped)
    + [BufferGetSize](#BufferGetSize)
    + [BufferGetUsage](#BufferGetUsage)
    + [BufferMapAsync](#BufferMapAsync)
    + [BufferReadMappedRange](#BufferReadMappedRange)
    + [BufferRelease](#BufferRelease)
    + [BufferSetLabel](#BufferSetLabel)
    + [BufferUnmap](#BufferUnmap)
    + [BufferWriteMappedRange](#BufferWriteMappedRange)
    + [CommandBufferAddRef](#CommandBufferAddRef)
    + [CommandBufferRelease](#CommandBufferRelease)
    + [CommandBufferSetLabel](#CommandBufferSetLabel)
    + [CommandEncoderAddRef](#CommandEncoderAddRef)
    + [CommandEncoderBeginComputePass](#CommandEncoderBeginComputePass)
    + [CommandEncoderBeginRenderPass](#CommandEncoderBeginRenderPass)
    + [CommandEncoderClearBuffer](#CommandEncoderClearBuffer)
    + [CommandEncoderCopyBufferToBuffer](#CommandEncoderCopyBufferToBuffer)
    + [CommandEncoderCopyBufferToTexture](#CommandEncoderCopyBufferToTexture)
    + [CommandEncoderCopyTextureToBuffer](#CommandEncoderCopyTextureToBuffer)
    + [CommandEncoderCopyTextureToTexture](#CommandEncoderCopyTextureToTexture)
    + [CommandEncoderFinish](#CommandEncoderFinish)
    + [CommandEncoderInsertDebugMarker](#CommandEncoderInsertDebugMarker)
    + [CommandEncoderPopDebugGroup](#CommandEncoderPopDebugGroup)
    + [CommandEncoderPushDebugGroup](#CommandEncoderPushDebugGroup)
    + [CommandEncoderRelease](#CommandEncoderRelease)
    + [CommandEncoderResolveQuerySet](#CommandEncoderResolveQuerySet)
    + [CommandEncoderSetLabel](#CommandEncoderSetLabel)
    + [CommandEncoderWriteTimestamp](#CommandEncoderWriteTimestamp)
    + [ComputePassEncoderAddRef](#ComputePassEncoderAddRef)
    + [ComputePassEncoderBeginPipelineStatisticsQuery](#ComputePassEncoderBeginPipelineStatisticsQuery)
    + [ComputePassEncoderDispatchWorkgroups](#ComputePassEncoderDispatchWorkgroups)
    + [ComputePassEncoderDispatchWorkgroupsIndirect](#ComputePassEncoderDispatchWorkgroupsIndirect)
    + [ComputePassEncoderEnd](#ComputePassEncoderEnd)
    + [ComputePassEncoderEndPipelineStatisticsQuery](#ComputePassEncoderEndPipelineStatisticsQuery)
    + [ComputePassEncoderInsertDebugMarker](#ComputePassEncoderInsertDebugMarker)
    + [ComputePassEncoderPopDebugGroup](#ComputePassEncoderPopDebugGroup)
    + [ComputePassEncoderPushDebugGroup](#ComputePassEncoderPushDebugGroup)
    + [ComputePassEncoderRelease](#ComputePassEncoderRelease)
    + [ComputePassEncoderSetBindGroup](#ComputePassEncoderSetBindGroup)
    + [ComputePassEncoderSetImmediates](#ComputePassEncoderSetImmediates)
    + [ComputePassEncoderSetLabel](#ComputePassEncoderSetLabel)
    + [ComputePassEncoderSetPipeline](#ComputePassEncoderSetPipeline)
    + [ComputePassEncoderWriteTimestamp](#ComputePassEncoderWriteTimestamp)
    + [ComputePipelineAddRef](#ComputePipelineAddRef)
    + [ComputePipelineGetBindGroupLayout](#ComputePipelineGetBindGroupLayout)
    + [ComputePipelineRelease](#ComputePipelineRelease)
    + [ComputePipelineSetLabel](#ComputePipelineSetLabel)
    + [ConvertOdinToWGPULogLevel](#ConvertOdinToWGPULogLevel)
    + [ConvertWGPUToOdinLogLevel](#ConvertWGPUToOdinLogLevel)
    + [CreateInstance](#CreateInstance)
    + [DeviceAddRef](#DeviceAddRef)
    + [DeviceCreateBindGroup](#DeviceCreateBindGroup)
    + [DeviceCreateBindGroupLayout](#DeviceCreateBindGroupLayout)
    + [DeviceCreateBuffer](#DeviceCreateBuffer)
    + [DeviceCreateBufferWithDataSlice](#DeviceCreateBufferWithDataSlice)
    + [DeviceCreateBufferWithDataTyped](#DeviceCreateBufferWithDataTyped)
    + [DeviceCreateCommandEncoder](#DeviceCreateCommandEncoder)
    + [DeviceCreateComputePipeline](#DeviceCreateComputePipeline)
    + [DeviceCreateComputePipelineAsync](#DeviceCreateComputePipelineAsync)
    + [DeviceCreatePipelineLayout](#DeviceCreatePipelineLayout)
    + [DeviceCreateQuerySet](#DeviceCreateQuerySet)
    + [DeviceCreateRenderBundleEncoder](#DeviceCreateRenderBundleEncoder)
    + [DeviceCreateRenderPipeline](#DeviceCreateRenderPipeline)
    + [DeviceCreateRenderPipelineAsync](#DeviceCreateRenderPipelineAsync)
    + [DeviceCreateSampler](#DeviceCreateSampler)
    + [DeviceCreateShaderModule](#DeviceCreateShaderModule)
    + [DeviceCreateShaderModuleSpirV](#DeviceCreateShaderModuleSpirV)
    + [DeviceCreateTexture](#DeviceCreateTexture)
    + [DeviceDestroy](#DeviceDestroy)
    + [DeviceGetAdapterInfo](#DeviceGetAdapterInfo)
    + [DeviceGetFeatures](#DeviceGetFeatures)
    + [DeviceGetLimits](#DeviceGetLimits)
    + [DeviceGetLostFuture](#DeviceGetLostFuture)
    + [DeviceGetNativeMetalCommandQueue](#DeviceGetNativeMetalCommandQueue)
    + [DeviceGetNativeMetalDevice](#DeviceGetNativeMetalDevice)
    + [DeviceGetNativeMetalTexture](#DeviceGetNativeMetalTexture)
    + [DeviceGetQueue](#DeviceGetQueue)
    + [DeviceHasFeature](#DeviceHasFeature)
    + [DevicePoll](#DevicePoll)
    + [DevicePopErrorScope](#DevicePopErrorScope)
    + [DevicePushErrorScope](#DevicePushErrorScope)
    + [DeviceRelease](#DeviceRelease)
    + [DeviceSetLabel](#DeviceSetLabel)
    + [DeviceStartGraphicsDebuggerCapture](#DeviceStartGraphicsDebuggerCapture)
    + [DeviceStopGraphicsDebuggerCapture](#DeviceStopGraphicsDebuggerCapture)
    + [ExternalTextureAddRef](#ExternalTextureAddRef)
    + [ExternalTextureRelease](#ExternalTextureRelease)
    + [ExternalTextureSetLabel](#ExternalTextureSetLabel)
    + [GenerateReport](#GenerateReport)
    + [GetInstanceFeatures](#GetInstanceFeatures)
    + [GetInstanceLimits](#GetInstanceLimits)
    + [GetProcAddress](#GetProcAddress)
    + [GetVersion](#GetVersion)
    + [HasInstanceFeature](#HasInstanceFeature)
    + [InstanceAddRef](#InstanceAddRef)
    + [InstanceCreateSurface](#InstanceCreateSurface)
    + [InstanceEnumerateAdapters](#InstanceEnumerateAdapters)
    + [InstanceGetWGSLLanguageFeatures](#InstanceGetWGSLLanguageFeatures)
    + [InstanceHasWGSLLanguageFeature](#InstanceHasWGSLLanguageFeature)
    + [InstanceProcessEvents](#InstanceProcessEvents)
    + [InstanceRelease](#InstanceRelease)
    + [InstanceRequestAdapter](#InstanceRequestAdapter)
    + [InstanceWaitAny](#InstanceWaitAny)
    + [PipelineLayoutAddRef](#PipelineLayoutAddRef)
    + [PipelineLayoutRelease](#PipelineLayoutRelease)
    + [PipelineLayoutSetLabel](#PipelineLayoutSetLabel)
    + [QuerySetAddRef](#QuerySetAddRef)
    + [QuerySetDestroy](#QuerySetDestroy)
    + [QuerySetGetCount](#QuerySetGetCount)
    + [QuerySetGetType](#QuerySetGetType)
    + [QuerySetRelease](#QuerySetRelease)
    + [QuerySetSetLabel](#QuerySetSetLabel)
    + [QueueAddRef](#QueueAddRef)
    + [QueueGetTimestampPeriod](#QueueGetTimestampPeriod)
    + [QueueOnSubmittedWorkDone](#QueueOnSubmittedWorkDone)
    + [QueueRelease](#QueueRelease)
    + [QueueSetLabel](#QueueSetLabel)
    + [QueueSubmit](#QueueSubmit)
    + [QueueSubmitForIndex](#QueueSubmitForIndex)
    + [QueueWriteBuffer](#QueueWriteBuffer)
    + [QueueWriteTexture](#QueueWriteTexture)
    + [RawAdapterGetFeatures](#RawAdapterGetFeatures)
    + [RawAdapterGetInfo](#RawAdapterGetInfo)
    + [RawAdapterGetLimits](#RawAdapterGetLimits)
    + [RawBufferGetConstMappedRange](#RawBufferGetConstMappedRange)
    + [RawBufferGetMappedRange](#RawBufferGetMappedRange)
    + [RawComputePassEncoderSetBindGroup](#RawComputePassEncoderSetBindGroup)
    + [RawCreateInstance](#RawCreateInstance)
    + [RawDeviceGetAdapterInfo](#RawDeviceGetAdapterInfo)
    + [RawDeviceGetFeatures](#RawDeviceGetFeatures)
    + [RawDeviceGetLimits](#RawDeviceGetLimits)
    + [RawGenerateReport](#RawGenerateReport)
    + [RawGetInstanceLimits](#RawGetInstanceLimits)
    + [RawInstanceEnumerateAdapters](#RawInstanceEnumerateAdapters)
    + [RawQueueSubmit](#RawQueueSubmit)
    + [RawQueueSubmitForIndex](#RawQueueSubmitForIndex)
    + [RawRenderBundleEncoderSetBindGroup](#RawRenderBundleEncoderSetBindGroup)
    + [RawRenderPassEncoderExecuteBundles](#RawRenderPassEncoderExecuteBundles)
    + [RawRenderPassEncoderSetBindGroup](#RawRenderPassEncoderSetBindGroup)
    + [RawSurfaceGetCapabilities](#RawSurfaceGetCapabilities)
    + [RawSurfaceGetCurrentTexture](#RawSurfaceGetCurrentTexture)
    + [RenderBundleAddRef](#RenderBundleAddRef)
    + [RenderBundleEncoderAddRef](#RenderBundleEncoderAddRef)
    + [RenderBundleEncoderDraw](#RenderBundleEncoderDraw)
    + [RenderBundleEncoderDrawIndexed](#RenderBundleEncoderDrawIndexed)
    + [RenderBundleEncoderDrawIndexedIndirect](#RenderBundleEncoderDrawIndexedIndirect)
    + [RenderBundleEncoderDrawIndirect](#RenderBundleEncoderDrawIndirect)
    + [RenderBundleEncoderFinish](#RenderBundleEncoderFinish)
    + [RenderBundleEncoderInsertDebugMarker](#RenderBundleEncoderInsertDebugMarker)
    + [RenderBundleEncoderPopDebugGroup](#RenderBundleEncoderPopDebugGroup)
    + [RenderBundleEncoderPushDebugGroup](#RenderBundleEncoderPushDebugGroup)
    + [RenderBundleEncoderRelease](#RenderBundleEncoderRelease)
    + [RenderBundleEncoderSetBindGroup](#RenderBundleEncoderSetBindGroup)
    + [RenderBundleEncoderSetImmediates](#RenderBundleEncoderSetImmediates)
    + [RenderBundleEncoderSetIndexBuffer](#RenderBundleEncoderSetIndexBuffer)
    + [RenderBundleEncoderSetLabel](#RenderBundleEncoderSetLabel)
    + [RenderBundleEncoderSetPipeline](#RenderBundleEncoderSetPipeline)
    + [RenderBundleEncoderSetVertexBuffer](#RenderBundleEncoderSetVertexBuffer)
    + [RenderBundleRelease](#RenderBundleRelease)
    + [RenderBundleSetLabel](#RenderBundleSetLabel)
    + [RenderPassEncoderAddRef](#RenderPassEncoderAddRef)
    + [RenderPassEncoderBeginOcclusionQuery](#RenderPassEncoderBeginOcclusionQuery)
    + [RenderPassEncoderBeginPipelineStatisticsQuery](#RenderPassEncoderBeginPipelineStatisticsQuery)
    + [RenderPassEncoderDraw](#RenderPassEncoderDraw)
    + [RenderPassEncoderDrawIndexed](#RenderPassEncoderDrawIndexed)
    + [RenderPassEncoderDrawIndexedIndirect](#RenderPassEncoderDrawIndexedIndirect)
    + [RenderPassEncoderDrawIndirect](#RenderPassEncoderDrawIndirect)
    + [RenderPassEncoderEnd](#RenderPassEncoderEnd)
    + [RenderPassEncoderEndOcclusionQuery](#RenderPassEncoderEndOcclusionQuery)
    + [RenderPassEncoderEndPipelineStatisticsQuery](#RenderPassEncoderEndPipelineStatisticsQuery)
    + [RenderPassEncoderExecuteBundles](#RenderPassEncoderExecuteBundles)
    + [RenderPassEncoderInsertDebugMarker](#RenderPassEncoderInsertDebugMarker)
    + [RenderPassEncoderMultiDrawIndexedIndirect](#RenderPassEncoderMultiDrawIndexedIndirect)
    + [RenderPassEncoderMultiDrawIndexedIndirectCount](#RenderPassEncoderMultiDrawIndexedIndirectCount)
    + [RenderPassEncoderMultiDrawIndirect](#RenderPassEncoderMultiDrawIndirect)
    + [RenderPassEncoderMultiDrawIndirectCount](#RenderPassEncoderMultiDrawIndirectCount)
    + [RenderPassEncoderPopDebugGroup](#RenderPassEncoderPopDebugGroup)
    + [RenderPassEncoderPushDebugGroup](#RenderPassEncoderPushDebugGroup)
    + [RenderPassEncoderRelease](#RenderPassEncoderRelease)
    + [RenderPassEncoderSetBindGroup](#RenderPassEncoderSetBindGroup)
    + [RenderPassEncoderSetBlendConstant](#RenderPassEncoderSetBlendConstant)
    + [RenderPassEncoderSetImmediates](#RenderPassEncoderSetImmediates)
    + [RenderPassEncoderSetIndexBuffer](#RenderPassEncoderSetIndexBuffer)
    + [RenderPassEncoderSetLabel](#RenderPassEncoderSetLabel)
    + [RenderPassEncoderSetPipeline](#RenderPassEncoderSetPipeline)
    + [RenderPassEncoderSetScissorRect](#RenderPassEncoderSetScissorRect)
    + [RenderPassEncoderSetStencilReference](#RenderPassEncoderSetStencilReference)
    + [RenderPassEncoderSetVertexBuffer](#RenderPassEncoderSetVertexBuffer)
    + [RenderPassEncoderSetViewport](#RenderPassEncoderSetViewport)
    + [RenderPassEncoderWriteTimestamp](#RenderPassEncoderWriteTimestamp)
    + [RenderPipelineAddRef](#RenderPipelineAddRef)
    + [RenderPipelineGetBindGroupLayout](#RenderPipelineGetBindGroupLayout)
    + [RenderPipelineRelease](#RenderPipelineRelease)
    + [RenderPipelineSetLabel](#RenderPipelineSetLabel)
    + [SamplerAddRef](#SamplerAddRef)
    + [SamplerRelease](#SamplerRelease)
    + [SamplerSetLabel](#SamplerSetLabel)
    + [SetLogCallback](#SetLogCallback)
    + [SetLogLevel](#SetLogLevel)
    + [ShaderModuleAddRef](#ShaderModuleAddRef)
    + [ShaderModuleGetCompilationInfo](#ShaderModuleGetCompilationInfo)
    + [ShaderModuleRelease](#ShaderModuleRelease)
    + [ShaderModuleSetLabel](#ShaderModuleSetLabel)
    + [SupportedFeaturesFreeMembers](#SupportedFeaturesFreeMembers)
    + [SupportedInstanceFeaturesFreeMembers](#SupportedInstanceFeaturesFreeMembers)
    + [SupportedWGSLLanguageFeaturesFreeMembers](#SupportedWGSLLanguageFeaturesFreeMembers)
    + [SurfaceAddRef](#SurfaceAddRef)
    + [SurfaceCapabilitiesFreeMembers](#SurfaceCapabilitiesFreeMembers)
    + [SurfaceConfigure](#SurfaceConfigure)
    + [SurfaceGetCapabilities](#SurfaceGetCapabilities)
    + [SurfaceGetCurrentTexture](#SurfaceGetCurrentTexture)
    + [SurfacePresent](#SurfacePresent)
    + [SurfaceRelease](#SurfaceRelease)
    + [SurfaceSetLabel](#SurfaceSetLabel)
    + [SurfaceUnconfigure](#SurfaceUnconfigure)
    + [TextureAddRef](#TextureAddRef)
    + [TextureCreateView](#TextureCreateView)
    + [TextureDestroy](#TextureDestroy)
    + [TextureGetDepthOrArrayLayers](#TextureGetDepthOrArrayLayers)
    + [TextureGetDimension](#TextureGetDimension)
    + [TextureGetFormat](#TextureGetFormat)
    + [TextureGetHeight](#TextureGetHeight)
    + [TextureGetMipLevelCount](#TextureGetMipLevelCount)
    + [TextureGetSampleCount](#TextureGetSampleCount)
    + [TextureGetTextureBindingViewDimension](#TextureGetTextureBindingViewDimension)
    + [TextureGetUsage](#TextureGetUsage)
    + [TextureGetWidth](#TextureGetWidth)
    + [TextureRelease](#TextureRelease)
    + [TextureSetLabel](#TextureSetLabel)
    + [TextureViewAddRef](#TextureViewAddRef)
    + [TextureViewRelease](#TextureViewRelease)
    + [TextureViewSetLabel](#TextureViewSetLabel)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [ConvertLogLevel](#ConvertLogLevel)
    + [DeviceCreateBufferWithData](#DeviceCreateBufferWithData)
  * [`#config` values](#pkg-`#config` values)
    + [WGPU\_DEBUG](#WGPU_DEBUG)
    + [WGPU\_SHARED](#WGPU_SHARED)
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