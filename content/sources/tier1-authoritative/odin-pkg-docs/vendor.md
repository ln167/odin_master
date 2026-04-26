vendor library - pkg.odin-lang.org 






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

# vendor Library Collection

* License: [zlib](https://github.com/odin-lang/Odin/tree/master/LICENSE)
* Repository: <https://github.com/odin-lang/Odin/tree/master/vendor>

⌘K

Ctrl+K

or

/

---



## Directories

|  |  |
| --- | --- |
| [box2d](/vendor/box2d) | Bindings for [Box2D](https://box2d.org/). |
| [cgltf](/vendor/cgltf) | Bindings for [Cgtlf](https://github.com/jkuhlmann/cgltf). |
| [commonmark](/vendor/commonmark) | Bindings for [CMark](https://github.com/commonmark/cmark). |
| compress |  |
| [lz4](/vendor/compress/lz4/) | Bindings for [LZ4](https://github.com/lz4/lz4). |
| [curl](/vendor/curl) |  |
| darwin |  |
| [CoreVideo](/vendor/darwin/CoreVideo/) | Bindings for [CoreVideo](https://developer.apple.com/documentation/corevideo). |
| [Metal](/vendor/darwin/Metal/) | Bindings for [Metal](https://developer.apple.com/documentation/metal). |
| [MetalKit](/vendor/darwin/MetalKit/) | Bindings for [MetalKit](https://developer.apple.com/documentation/metalkit). |
| [QuartzCore](/vendor/darwin/QuartzCore/) | Bindings for [QuartzCore](https://developer.apple.com/documentation/quartzcore). |
| directx |  |
| [d3d11](/vendor/directx/d3d11/) | Bindings for [Direct3D 11](https://learn.microsoft.com/en-us/windows/win32/direct3d11/atoc-dx-graphics-direct3d-11). |
| [d3d12](/vendor/directx/d3d12/) | Bindings for [Direct3D 12](https://learn.microsoft.com/en-us/windows/win32/direct3d12/direct3d-12-graphics). |
| [d3d\_common](/vendor/directx/d3d_common/) | Declarations shared between D3D versions. |
| [dxc](/vendor/directx/dxc/) | Bindings for [DXC](https://learn.microsoft.com/en-us/windows/win32/api/dxcapi/). |
| [dxgi](/vendor/directx/dxgi/) | Bindings for [DXGI](https://learn.microsoft.com/en-us/windows/win32/api/dxgi/). |
| [ENet](/vendor/ENet) | Bindings for [ENet](https://github.com/lsalzman/enet). |
| [fontstash](/vendor/fontstash) |  |
| [ggpo](/vendor/ggpo) | Bindings for [GGPO](https://www.ggpo.net/) rollback networking. |
| [glfw](/vendor/glfw) | Bindings for [GLFW](https://www.glfw.org/) |
| [bindings](/vendor/glfw/bindings/) |  |
| [kb\_text\_shape](/vendor/kb_text_shape) | Bindings for [Jimmy Lefevre's Text Shape](https://github.com/JimmyLefevre/kb) Unicode text segmentation and OpenType shaping. |
| [libc-shim](/vendor/libc-shim) | A (very small) subset of a libc implementation over Odin libraries for use with `vendor:*` packages. |
| lua |  |
| [5.4](/vendor/lua/5.4/) | Bindings for [Lua 5.4](https://www.lua.org/manual/5.4/). |
| [microui](/vendor/microui) | An Odin-native source port of [rxi's microui](https://github.com/rxi/microui) immediate mode UI. |
| [miniaudio](/vendor/miniaudio) | Bindings for [miniaudio](https://miniaud.io/docs) audio playback and capture library. |
| [nanovg](/vendor/nanovg) |  |
| [gl](/vendor/nanovg/gl/) |  |
| [OpenEXRCore](/vendor/OpenEXRCore) | Bindings for [OpenEXRCore](https://github.com/AcademySoftwareFoundation/openexr/tree/main/src/lib/OpenEXRCore). |
| [OpenGL](/vendor/OpenGL) | OpenGL function pointer loader implemented in Odin. Supports the `core` profile up to version 4.6. |
| [portmidi](/vendor/portmidi) | Bindings for [PortMidi](http://sourceforge.net/projects/portmedia) Portable Real-Time MIDI Library. |
| [raylib](/vendor/raylib) | Bindings for [raylib v5.5](https://www.raylib.com/). |
| [sdl2](/vendor/sdl2) | Bindings for [SDL2](https://wiki.libsdl.org/SDL2/FrontPage). |
| [image](/vendor/sdl2/image/) | Bindings for [SDL2 Image](https://wiki.libsdl.org/SDL2_image/FrontPage). |
| [mixer](/vendor/sdl2/mixer/) | Bindings for [SDL2 Mixer](https://wiki.libsdl.org/SDL2_mixer/FrontPage). |
| [net](/vendor/sdl2/net/) | Bindings for [SDL2 Net](https://wiki.libsdl.org/SDL2_net/FrontPage). |
| [ttf](/vendor/sdl2/ttf/) | Bindings for [SDL2 TTF](https://wiki.libsdl.org/SDL2_ttf/FrontPage). |
| [sdl3](/vendor/sdl3) | Bindings for [SDL3](https://wiki.libsdl.org/SDL3/FrontPage). |
| [image](/vendor/sdl3/image/) | Bindings for [SDL3 Image](https://wiki.libsdl.org/SDL3_image/FrontPage). |
| [ttf](/vendor/sdl3/ttf/) | Bindings for [SDL3 TTF](https://wiki.libsdl.org/SDL3_ttf/FrontPage). |
| stb |  |
| [easy\_font](/vendor/stb/easy_font/) | An Odin-native source port of [stb\_easy\_font.h](https://github.com/nothings/stb/blob/master/stb_easy_font.h). |
| [image](/vendor/stb/image/) | Bindings for [stb\_image.h](https://github.com/nothings/stb/blob/master/stb_image.h). |
| [rect\_pack](/vendor/stb/rect_pack/) | Bindings for [stb\_rect\_pack.h](https://github.com/nothings/stb/blob/master/stb_rect_pack.h). |
| [sprintf](/vendor/stb/sprintf/) |  |
| [truetype](/vendor/stb/truetype/) | Bindings for [stb\_truetype.h](https://github.com/nothings/stb/blob/master/stb_truetype.h). |
| [vorbis](/vendor/stb/vorbis/) | Bindings for [stb\_vorbis.c](https://github.com/nothings/stb/blob/master/stb_vorbis.c). |
| [vulkan](/vendor/vulkan) | Vulkan wrapper generated from [vulkan\_core.h](https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/master/include/vulkan/vulkan_core.h). |
| wasm |  |
| [WebGL](/vendor/wasm/WebGL/) |  |
| [wgpu](/vendor/wgpu) | A cross-platform (and WASM) GPU API. |
| [glfwglue](/vendor/wgpu/glfwglue/) | WGPU glue for GLFW. |
| [sdl2glue](/vendor/wgpu/sdl2glue/) | WGPU glue for SDL2. |
| [sdl3glue](/vendor/wgpu/sdl3glue/) | WGPU glue for SDL3. |
| windows |  |
| [GameInput](/vendor/windows/GameInput/) | Bindings for [Windows Game Input GDK](https://learn.microsoft.com/en-us/gaming/gdk/_content/gc/input/overviews/input-overview). |
| [XAudio2](/vendor/windows/XAudio2/) | Bindings for [Windows XAudio2](https://learn.microsoft.com/en-us/windows/win32/xaudio2/xaudio2-introduction). |
| x11 |  |
| [xlib](/vendor/x11/xlib/) | Bindings for [X11's Xlib (PDF)](https://www.x.org/docs/X11/xlib.pdf). |
| [zlib](/vendor/zlib) | Bindings for [libz](https://zlib.net/) ZLIB compression library. |



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