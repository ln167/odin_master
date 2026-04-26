package miniaudio - pkg.odin-lang.org 






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



Current Package: *[miniaudio](/vendor/miniaudio)*

  

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
2. [miniaudio](/vendor/miniaudio)

# package vendor:miniaudio [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [miniaudio](https://miniaud.io/docs) audio playback and capture library.

Choice of public domain or MIT-0. See license statements at the end of this file.
miniaudio - v0.11.24 - 2025-09-11

David Reid - mackron@gmail.com

Website: https://miniaud.io
Documentation: https://miniaud.io/docs
GitHub: https://github.com/mackron/miniaudio

1. Introduction
===============
miniaudio is a single file library for audio playback and capture. To use it, do the following in
one .c file:

`c
#define MINIAUDIO\_IMPLEMENTATION
#include "miniaudio.h"
`

You can do `#include "miniaudio.h"` in other parts of the program just like any other header.

miniaudio includes both low level and high level APIs. The low level API is good for those who want
to do all of their mixing themselves and only require a light weight interface to the underlying
audio device. The high level API is good for those who have complex mixing and effect requirements.

In miniaudio, objects are transparent structures. Unlike many other libraries, there are no handles
to opaque objects which means you need to allocate memory for objects yourself. In the examples
presented in this documentation you will often see objects declared on the stack. You need to be
careful when translating these examples to your own code so that you don't accidentally declare
your objects on the stack and then cause them to become invalid once the function returns. In
addition, you must ensure the memory address of your objects remain the same throughout their
lifetime. You therefore cannot be making copies of your objects.

A config/init pattern is used throughout the entire library. The idea is that you set up a config
object and pass that into the initialization routine. The advantage to this system is that the
config object can be initialized with logical defaults and new properties added to it without
breaking the API. The config object can be allocated on the stack and does not need to be
maintained after initialization of the corresponding object.

1.1. Low Level API
------------------
The low level API gives you access to the raw audio data of an audio device. It supports playback,
capture, full-duplex and loopback (WASAPI only). You can enumerate over devices to determine which
physical device(s) you want to connect to.

The low level API uses the concept of a "device" as the abstraction for physical devices. The idea
is that you choose a physical device to emit or capture audio from, and then move data to/from the
device when miniaudio tells you to. Data is delivered to and from devices asynchronously via a
callback which you specify when initializing the device.

When initializing the device you first need to configure it. The device configuration allows you to
specify things like the format of the data delivered via the callback, the size of the internal
buffer and the ID of the device you want to emit or capture audio from.

Once you have the device configuration set up you can initialize the device. When initializing a
device you need to allocate memory for the device object beforehand. This gives the application
complete control over how the memory is allocated. In the example below we initialize a playback
device on the stack, but you could allocate it on the heap if that suits your situation better.

`c
void data\_callback(ma\_device *pDevice, void* pOutput, const void\* pInput, ma\_uint32 frameCount)
{
// In playback mode copy data to pOutput. In capture mode read data from pInput. In full-duplex mode, both
// pOutput and pInput will be valid and you can move data from pInput into pOutput. Never process more than
// frameCount frames.
}

int main()
{
ma\_device\_config config = ma\_device\_config\_init(ma\_device\_type\_playback);
config.playback.format = ma\_format\_f32; // Set to ma\_format\_unknown to use the device's native format.
config.playback.channels = 2; // Set to 0 to use the device's native channel count.
config.sampleRate = 48000; // Set to 0 to use the device's native sample rate.
config.dataCallback = data\_callback; // This function will be called when miniaudio needs more data.
config.pUserData = pMyCustomData; // Can be accessed from the device object (device.pUserData).

ma\_device device;
if (ma\_device\_init(NULL, &config, &device) != MA\_SUCCESS) {
return -1; // Failed to initialize the device.
}

ma\_device\_start(&device); // The device is sleeping by default so you'll need to start it manually.

// Do something here. Probably your program's main loop.

ma\_device\_uninit(&device);
return 0;
}
`

In the example above, `data_callback()` is where audio data is written and read from the device.
The idea is in playback mode you cause sound to be emitted from the speakers by writing audio data
to the output buffer (`pOutput` in the example). In capture mode you read data from the input
buffer (`pInput`) to extract sound captured by the microphone. The `frameCount` parameter tells you
how many frames can be written to the output buffer and read from the input buffer. A "frame" is
one sample for each channel. For example, in a stereo stream (2 channels), one frame is 2
samples: one for the left, one for the right. The channel count is defined by the device config.
The size in bytes of an individual sample is defined by the sample format which is also specified
in the device config. Multi-channel audio data is always interleaved, which means the samples for
each frame are stored next to each other in memory. For example, in a stereo stream the first pair
of samples will be the left and right samples for the first frame, the second pair of samples will
be the left and right samples for the second frame, etc.

The configuration of the device is defined by the `ma_device_config` structure. The config object
is always initialized with `ma_device_config_init()`. It's important to always initialize the
config with this function as it initializes it with logical defaults and ensures your program
doesn't break when new members are added to the `ma_device_config` structure. The example above
uses a fairly simple and standard device configuration. The call to `ma_device_config_init()` takes
a single parameter, which is whether or not the device is a playback, capture, duplex or loopback
device (loopback devices are not supported on all backends). The `config.playback.format` member
sets the sample format which can be one of the following (all formats are native-endian):

+---------------+----------------------------------------+---------------------------+
| Symbol | Description | Range |
+---------------+----------------------------------------+---------------------------+
| ma\_format\_f32 | 32-bit floating point | [-1, 1] |
| ma\_format\_s16 | 16-bit signed integer | [-32768, 32767] |
| ma\_format\_s24 | 24-bit signed integer (tightly packed) | [-8388608, 8388607] |
| ma\_format\_s32 | 32-bit signed integer | [-2147483648, 2147483647] |
| ma\_format\_u8 | 8-bit unsigned integer | [0, 255] |
+---------------+----------------------------------------+---------------------------+

The `config.playback.channels` member sets the number of channels to use with the device. The
channel count cannot exceed MA\_MAX\_CHANNELS. The `config.sampleRate` member sets the sample rate
(which must be the same for both playback and capture in full-duplex configurations). This is
usually set to 44100 or 48000, but can be set to anything. It's recommended to keep this between
8000 and 384000, however.

Note that leaving the format, channel count and/or sample rate at their default values will result
in the internal device's native configuration being used which is useful if you want to avoid the
overhead of miniaudio's automatic data conversion.

In addition to the sample format, channel count and sample rate, the data callback and user data
pointer are also set via the config. The user data pointer is not passed into the callback as a
parameter, but is instead set to the `pUserData` member of `ma_device` which you can access
directly since all miniaudio structures are transparent.

Initializing the device is done with `ma_device_init()`. This will return a result code telling you
what went wrong, if anything. On success it will return `MA_SUCCESS`. After initialization is
complete the device will be in a stopped state. To start it, use `ma_device_start()`.
Uninitializing the device will stop it, which is what the example above does, but you can also stop
the device with `ma_device_stop()`. To resume the device simply call `ma_device_start()` again.
Note that it's important to never stop or start the device from inside the callback. This will
result in a deadlock. Instead you set a variable or signal an event indicating that the device
needs to stop and handle it in a different thread. The following APIs must never be called inside
the callback:

`c
ma\_device\_init()
ma\_device\_init\_ex()
ma\_device\_uninit()
ma\_device\_start()
ma\_device\_stop()
`

You must never try uninitializing and reinitializing a device inside the callback. You must also
never try to stop and start it from inside the callback. There are a few other things you shouldn't
do in the callback depending on your requirements, however this isn't so much a thread-safety
thing, but rather a real-time processing thing which is beyond the scope of this introduction.

The example above demonstrates the initialization of a playback device, but it works exactly the
same for capture. All you need to do is change the device type from `ma_device_type_playback` to
`ma_device_type_capture` when setting up the config, like so:

`c
ma\_device\_config config = ma\_device\_config\_init(ma\_device\_type\_capture);
config.capture.format = MY\_FORMAT;
config.capture.channels = MY\_CHANNEL\_COUNT;
`

In the data callback you just read from the input buffer (`pInput` in the example above) and leave
the output buffer alone (it will be set to NULL when the device type is set to
`ma_device_type_capture`).

These are the available device types and how you should handle the buffers in the callback:

+-------------------------+--------------------------------------------------------+
| Device Type | Callback Behavior |
+-------------------------+--------------------------------------------------------+
| ma\_device\_type\_playback | Write to output buffer, leave input buffer untouched. |
| ma\_device\_type\_capture | Read from input buffer, leave output buffer untouched. |
| ma\_device\_type\_duplex | Read from input buffer, write to output buffer. |
| ma\_device\_type\_loopback | Read from input buffer, leave output buffer untouched. |
+-------------------------+--------------------------------------------------------+

You will notice in the example above that the sample format and channel count is specified
separately for playback and capture. This is to support different data formats between the playback
and capture devices in a full-duplex system. An example may be that you want to capture audio data
as a monaural stream (one channel), but output sound to a stereo speaker system. Note that if you
use different formats between playback and capture in a full-duplex configuration you will need to
convert the data yourself. There are functions available to help you do this which will be
explained later.

The example above did not specify a physical device to connect to which means it will use the
operating system's default device. If you have multiple physical devices connected and you want to
use a specific one you will need to specify the device ID in the configuration, like so:

`c
config.playback.pDeviceID = pMyPlaybackDeviceID; // Only if requesting a playback or duplex device.
config.capture.pDeviceID = pMyCaptureDeviceID; // Only if requesting a capture, duplex or loopback device.
`

To retrieve the device ID you will need to perform device enumeration, however this requires the
use of a new concept called the "context". Conceptually speaking the context sits above the device.
There is one context to many devices. The purpose of the context is to represent the backend at a
more global level and to perform operations outside the scope of an individual device. Mainly it is
used for performing run-time linking against backend libraries, initializing backends and
enumerating devices. The example below shows how to enumerate devices.

`c
ma\_context context;
if (ma\_context\_init(NULL, 0, NULL, &context) != MA\_SUCCESS) {
// Error.
}

ma\_device\_info\* pPlaybackInfos;
ma\_uint32 playbackCount;
ma\_device\_info\* pCaptureInfos;
ma\_uint32 captureCount;
if (ma\_context\_get\_devices(&context, &pPlaybackInfos, &playbackCount, &pCaptureInfos, &captureCount) != MA\_SUCCESS) {
// Error.
}

// Loop over each device info and do something with it. Here we just print the name with their index. You may want
// to give the user the opportunity to choose which device they'd prefer.
for (ma\_uint32 iDevice = 0; iDevice < playbackCount; iDevice += 1) {
printf("%d - %s\n", iDevice, pPlaybackInfos[iDevice].name);
}

ma\_device\_config config = ma\_device\_config\_init(ma\_device\_type\_playback);
config.playback.pDeviceID = &pPlaybackInfos[chosenPlaybackDeviceIndex].id;
config.playback.format = MY\_FORMAT;
config.playback.channels = MY\_CHANNEL\_COUNT;
config.sampleRate = MY\_SAMPLE\_RATE;
config.dataCallback = data\_callback;
config.pUserData = pMyCustomData;

ma\_device device;
if (ma\_device\_init(&context, &config, &device) != MA\_SUCCESS) {
// Error
}

...

ma\_device\_uninit(&device);
ma\_context\_uninit(&context);
`

The first thing we do in this example is initialize a `ma_context` object with `ma_context_init()`.
The first parameter is a pointer to a list of `ma_backend` values which are used to override the
default backend priorities. When this is NULL, as in this example, miniaudio's default priorities
are used. The second parameter is the number of backends listed in the array pointed to by the
first parameter. The third parameter is a pointer to a `ma_context_config` object which can be
NULL, in which case defaults are used. The context configuration is used for setting the logging
callback, custom memory allocation callbacks, user-defined data and some backend-specific
configurations.

Once the context has been initialized you can enumerate devices. In the example above we use the
simpler `ma_context_get_devices()`, however you can also use a callback for handling devices by
using `ma_context_enumerate_devices()`. When using `ma_context_get_devices()` you provide a pointer
to a pointer that will, upon output, be set to a pointer to a buffer containing a list of
`ma_device_info` structures. You also provide a pointer to an unsigned integer that will receive
the number of items in the returned buffer. Do not free the returned buffers as their memory is
managed internally by miniaudio.

The `ma_device_info` structure contains an `id` member which is the ID you pass to the device
config. It also contains the name of the device which is useful for presenting a list of devices
to the user via the UI.

When creating your own context you will want to pass it to `ma_device_init()` when initializing the
device. Passing in NULL, like we do in the first example, will result in miniaudio creating the
context for you, which you don't want to do since you've already created a context. Note that
internally the context is only tracked by it's pointer which means you must not change the location
of the `ma_context` object. If this is an issue, consider using `malloc()` to allocate memory for
the context.

1.2. High Level API
-------------------
The high level API consists of three main parts:

\* Resource management for loading and streaming sounds.
\* A node graph for advanced mixing and effect processing.
\* A high level "engine" that wraps around the resource manager and node graph.

The resource manager (`ma_resource_manager`) is used for loading sounds. It supports loading sounds
fully into memory and also streaming. It will also deal with reference counting for you which
avoids the same sound being loaded multiple times.

The node graph is used for mixing and effect processing. The idea is that you connect a number of
nodes into the graph by connecting each node's outputs to another node's inputs. Each node can
implement its own effect. By chaining nodes together, advanced mixing and effect processing can
be achieved.

The engine encapsulates both the resource manager and the node graph to create a simple, easy to
use high level API. The resource manager and node graph APIs are covered in more later sections of
this manual.

The code below shows how you can initialize an engine using its default configuration.

`c
ma\_result result;
ma\_engine engine;

result = ma\_engine\_init(NULL, &engine);
if (result != MA\_SUCCESS) {
return result; // Failed to initialize the engine.
}
`

This creates an engine instance which will initialize a device internally which you can access with
`ma_engine_get_device()`. It will also initialize a resource manager for you which can be accessed
with `ma_engine_get_resource_manager()`. The engine itself is a node graph (`ma_node_graph`) which
means you can pass a pointer to the engine object into any of the `ma_node_graph` APIs (with a
cast). Alternatively, you can use `ma_engine_get_node_graph()` instead of a cast.

Note that all objects in miniaudio, including the `ma_engine` object in the example above, are
transparent structures. There are no handles to opaque structures in miniaudio which means you need
to be mindful of how you declare them. In the example above we are declaring it on the stack, but
this will result in the struct being invalidated once the function encapsulating it returns. If
allocating the engine on the heap is more appropriate, you can easily do so with a standard call
to `malloc()` or whatever heap allocation routine you like:

`c
ma\_engine *pEngine = malloc(sizeof(*pEngine));
`

The `ma_engine` API uses the same config/init pattern used all throughout miniaudio. To configure
an engine, you can fill out a `ma_engine_config` object and pass it into the first parameter of
`ma_engine_init()`:

`c
ma\_result result;
ma\_engine engine;
ma\_engine\_config engineConfig;

engineConfig = ma\_engine\_config\_init();
engineConfig.pResourceManager = &myCustomResourceManager // <-- Initialized as some earlier stage.

result = ma\_engine\_init(&engineConfig, &engine);
if (result != MA\_SUCCESS) {
return result;
}
`

This creates an engine instance using a custom config. In this particular example it's showing how
you can specify a custom resource manager rather than having the engine initialize one internally.
This is particularly useful if you want to have multiple engine's share the same resource manager.

The engine must be uninitialized with `ma_engine_uninit()` when it's no longer needed.

By default the engine will be started, but nothing will be playing because no sounds have been
initialized. The easiest but least flexible way of playing a sound is like so:

`c
ma\_engine\_play\_sound(&engine, "my\_sound.wav", NULL);
`

This plays what miniaudio calls an "inline" sound. It plays the sound once, and then puts the
internal sound up for recycling. The last parameter is used to specify which sound group the sound
should be associated with which will be explained later. This particular way of playing a sound is
simple, but lacks flexibility and features. A more flexible way of playing a sound is to first
initialize a sound:

`c
ma\_result result;
ma\_sound sound;

result = ma\_sound\_init\_from\_file(&engine, "my\_sound.wav", 0, NULL, NULL, &sound);
if (result != MA\_SUCCESS) {
return result;
}

ma\_sound\_start(&sound);
`

This returns a `ma_sound` object which represents a single instance of the specified sound file. If
you want to play the same file multiple times simultaneously, you need to create one sound for each
instance.

Sounds should be uninitialized with `ma_sound_uninit()`.

Sounds are not started by default. Start a sound with `ma_sound_start()` and stop it with
`ma_sound_stop()`. When a sound is stopped, it is not rewound to the start. Use
`ma_sound_seek_to_pcm_frame(&sound, 0)` to seek back to the start of a sound. By default, starting
and stopping sounds happens immediately, but sometimes it might be convenient to schedule the sound
to be started and/or stopped at a specific time. This can be done with the following functions:

`c
ma\_sound\_set\_start\_time\_in\_pcm\_frames()
ma\_sound\_set\_start\_time\_in\_milliseconds()
ma\_sound\_set\_stop\_time\_in\_pcm\_frames()
ma\_sound\_set\_stop\_time\_in\_milliseconds()
`

The start/stop time needs to be specified based on the absolute timer which is controlled by the
engine. The current global time in PCM frames can be retrieved with
`ma_engine_get_time_in_pcm_frames()`. The engine's global time can be changed with
`ma_engine_set_time_in_pcm_frames()` for synchronization purposes if required. Note that scheduling
a start time still requires an explicit call to `ma_sound_start()` before anything will play:

`c
ma\_sound\_set\_start\_time\_in\_pcm\_frames(&sound, ma\_engine\_get\_time\_in\_pcm\_frames(&engine) + (ma\_engine\_get\_sample\_rate(&engine) \* 2);
ma\_sound\_start(&sound);
`

The third parameter of `ma_sound_init_from_file()` is a set of flags that control how the sound be
loaded and a few options on which features should be enabled for that sound. By default, the sound
is synchronously loaded fully into memory straight from the file system without any kind of
decoding. If you want to decode the sound before storing it in memory, you need to specify the
`MA_SOUND_FLAG_DECODE` flag. This is useful if you want to incur the cost of decoding at an earlier
stage, such as a loading stage. Without this option, decoding will happen dynamically at mixing
time which might be too expensive on the audio thread.

If you want to load the sound asynchronously, you can specify the `MA_SOUND_FLAG_ASYNC` flag. This
will result in `ma_sound_init_from_file()` returning quickly, but the sound will not start playing
until the sound has had some audio decoded.

The fourth parameter is a pointer to sound group. A sound group is used as a mechanism to organise
sounds into groups which have their own effect processing and volume control. An example is a game
which might have separate groups for sfx, voice and music. Each of these groups have their own
independent volume control. Use `ma_sound_group_init()` or `ma_sound_group_init_ex()` to initialize
a sound group.

Sounds and sound groups are nodes in the engine's node graph and can be plugged into any `ma_node`
API. This makes it possible to connect sounds and sound groups to effect nodes to produce complex
effect chains.

A sound can have its volume changed with `ma_sound_set_volume()`. If you prefer decibel volume
control you can use `ma_volume_db_to_linear()` to convert from decibel representation to linear.

Panning and pitching is supported with `ma_sound_set_pan()` and `ma_sound_set_pitch()`. If you know
a sound will never have its pitch changed with `ma_sound_set_pitch()` or via the doppler effect,
you can specify the `MA_SOUND_FLAG_NO_PITCH` flag when initializing the sound for an optimization.

By default, sounds and sound groups have spatialization enabled. If you don't ever want to
spatialize your sounds, initialize the sound with the `MA_SOUND_FLAG_NO_SPATIALIZATION` flag. The
spatialization model is fairly simple and is roughly on feature parity with OpenAL. HRTF and
environmental occlusion are not currently supported, but planned for the future. The supported
features include:

\* Sound and listener positioning and orientation with cones
\* Attenuation models: none, inverse, linear and exponential
\* Doppler effect

Sounds can be faded in and out with `ma_sound_set_fade_in_pcm_frames()`.

To check if a sound is currently playing, you can use `ma_sound_is_playing()`. To check if a sound
is at the end, use `ma_sound_at_end()`. Looping of a sound can be controlled with
`ma_sound_set_looping()`. Use `ma_sound_is_looping()` to check whether or not the sound is looping.

2. Building
===========
miniaudio should work cleanly out of the box without the need to download or install any
dependencies. See below for platform-specific details.

This library has been designed to be added directly to your source tree which is the preferred way
of using it, but you can compile it as a normal library if that's your preference. Be careful if
compiling as a shared object because miniaudio is not ABI compatible between any release, including
bug fix releases. It's recommended you link statically

Note that GCC and Clang require `-msse2`, `-mavx2`, etc. for SIMD optimizations.

If you get errors about undefined references to `__sync_val_compare_and_swap_8`, `__atomic_load_8`,
etc. you need to link with `-latomic`.

2.1. Windows
------------
The Windows build should compile cleanly on all popular compilers without the need to configure any
include paths nor link to any libraries.

The UWP build may require linking to mmdevapi.lib if you get errors about an unresolved external
symbol for `ActivateAudioInterfaceAsync()`.

2.2. macOS and iOS
------------------
The macOS build should compile cleanly without the need to download any dependencies nor link to
any libraries or frameworks. The iOS build needs to be compiled as Objective-C and will need to
link the relevant frameworks but should compile cleanly out of the box with Xcode. Compiling
through the command line requires linking to `-lpthread` and `-lm`.

Due to the way miniaudio links to frameworks at runtime, your application may not pass Apple's
notarization process. To fix this there are two options. The first is to compile with
`-DMA_NO_RUNTIME_LINKING` which in turn will require linking with
`-framework CoreFoundation -framework CoreAudio -framework AudioToolbox`. If you get errors about
AudioToolbox, try with `-framework AudioUnit` instead. You may get this when using older versions
of iOS. Alternatively, if you would rather keep using runtime linking you can add the following to
your entitlements.xcent file:

`
<key>com.apple.security.cs.allow-dyld-environment-variables</key>
<true/>
<key>com.apple.security.cs.allow-unsigned-executable-memory</key>
<true/>
`

See this discussion for more info: https://github.com/mackron/miniaudio/issues/203.

2.3. Linux
----------
The Linux build only requires linking to `-ldl`, `-lpthread` and `-lm`. You do not need any
development packages. You may need to link with `-latomic` if you're compiling for 32-bit ARM.

2.4. BSD
--------
The BSD build only requires linking to `-lpthread` and `-lm`. NetBSD uses audio(4), OpenBSD uses
sndio and FreeBSD uses OSS. You may need to link with `-latomic` if you're compiling for 32-bit
ARM.

2.5. Android
------------
AAudio is the highest priority backend on Android. This should work out of the box without needing
any kind of compiler configuration. Support for AAudio starts with Android 8 which means older
versions will fall back to OpenSL|ES which requires API level 16+.

There have been reports that the OpenSL|ES backend fails to initialize on some Android based
devices due to `dlopen()` failing to open "libOpenSLES.so". If this happens on your platform
you'll need to disable run-time linking with `MA_NO_RUNTIME_LINKING` and link with -lOpenSLES.

2.6. Emscripten
---------------
The Emscripten build emits Web Audio JavaScript directly and should compile cleanly out of the box.
You cannot use `-std=c*` compiler flags, nor `-ansi`.

You can enable the use of AudioWorklets by defining `MA_ENABLE_AUDIO_WORKLETS` and then compiling
with the following options:

-sAUDIO\_WORKLET=1 -sWASM\_WORKERS=1 -sASYNCIFY

An example for compiling with AudioWorklet support might look like this:

emcc program.c -o bin/program.html -DMA\_ENABLE\_AUDIO\_WORKLETS -sAUDIO\_WORKLET=1 -sWASM\_WORKERS=1 -sASYNCIFY

To run locally, you'll need to use emrun:

emrun bin/program.html

2.7. Build Options
------------------
`#define` these options before including miniaudio.c, or pass them as compiler flags:

+----------------------------------+--------------------------------------------------------------------+
| Option | Description |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_WASAPI | Disables the WASAPI backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_DSOUND | Disables the DirectSound backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_WINMM | Disables the WinMM backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_ALSA | Disables the ALSA backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_PULSEAUDIO | Disables the PulseAudio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_JACK | Disables the JACK backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_COREAUDIO | Disables the Core Audio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_SNDIO | Disables the sndio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_AUDIO4 | Disables the audio(4) backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_OSS | Disables the OSS backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_AAUDIO | Disables the AAudio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_OPENSL | Disables the OpenSL|ES backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_WEBAUDIO | Disables the Web Audio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_CUSTOM | Disables support for custom backends. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_NULL | Disables the null backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS | Disables all backends by default and requires `MA_ENABLE_*` to |
| | enable specific backends. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_WASAPI | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the WASAPI backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_DSOUND | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the DirectSound backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_WINMM | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the WinMM backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_ALSA | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the ALSA backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_PULSEAUDIO | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the PulseAudio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_JACK | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the JACK backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_COREAUDIO | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the Core Audio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_SNDIO | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the sndio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_AUDIO4 | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the audio(4) backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_OSS | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the OSS backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_AAUDIO | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the AAudio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_OPENSL | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the OpenSL|ES backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_WEBAUDIO | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the Web Audio backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_CUSTOM | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable custom backends. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ENABLE\_NULL | Used in conjunction with MA\_ENABLE\_ONLY\_SPECIFIC\_BACKENDS to |
| | enable the null backend. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_DECODING | Disables decoding APIs. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_ENCODING | Disables encoding APIs. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_WAV | Disables the built-in WAV decoder and encoder. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_FLAC | Disables the built-in FLAC decoder. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_MP3 | Disables the built-in MP3 decoder. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_DEVICE\_IO | Disables playback and recording. This will disable `ma_context` |
| | and `ma_device` APIs. This is useful if you only want to use |
| | miniaudio's data conversion and/or decoding APIs. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_RESOURCE\_MANAGER | Disables the resource manager. When using the engine this will |
| | also disable the following functions: |
| | |
| | ` |
| | ma\_sound\_init\_from\_file() |
| | ma\_sound\_init\_from\_file\_w() |
| | ma\_sound\_init\_copy() |
| | ma\_engine\_play\_sound\_ex() |
| | ma\_engine\_play\_sound() |
| | ` |
| | |
| | The only way to initialize a `ma_sound` object is to initialize it |
| | from a data source. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_NODE\_GRAPH | Disables the node graph API. This will also disable the engine API |
| | because it depends on the node graph. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_ENGINE | Disables the engine API. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_THREADING | Disables the `ma_thread`, `ma_mutex`, `ma_semaphore` and |
| | `ma_event` APIs. This option is useful if you only need to use |
| | miniaudio for data conversion, decoding and/or encoding. Some |
| | families of APIs require threading which means the following |
| | options must also be set: |
| | |
| | ` |
| | MA\_NO\_DEVICE\_IO |
| | ` |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_GENERATION | Disables generation APIs such a `ma_waveform` and `ma_noise`. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_SSE2 | Disables SSE2 optimizations. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_AVX2 | Disables AVX2 optimizations. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_NEON | Disables NEON optimizations. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_NO\_RUNTIME\_LINKING | Disables runtime linking. This is useful for passing Apple's |
| | notarization process. When enabling this, you may need to avoid |
| | using `-std=c89` or `-std=c99` on Linux builds or else you may end |
| | up with compilation errors due to conflicts with `timespec` and |
| | `timeval` data types. |
| | |
| | You may need to enable this if your target platform does not allow |
| | runtime linking via `dlopen()`. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_USE\_STDINT | (Pass this in a compiler flag. Do not #define this before |

```
|                                  | miniaudio.c) Forces the use of stdint.h for sized types.           |
```

+----------------------------------+--------------------------------------------------------------------+
| MA\_DEBUG\_OUTPUT | Enable `printf()` output of debug logs (`MA_LOG_LEVEL_DEBUG`). |
+----------------------------------+--------------------------------------------------------------------+
| MA\_COINIT\_VALUE | Windows only. The value to pass to internal calls to |
| | `CoInitializeEx()`. Defaults to `COINIT_MULTITHREADED`. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_FORCE\_UWP | Windows only. Affects only the WASAPI backend. Will force the |
| | WASAPI backend to use the UWP code path instead of the regular |
| | desktop path. This is normally auto-detected and should rarely be |
| | needed to be used explicitly, but can be useful for debugging. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ON\_THREAD\_ENTRY | Defines some code that will be executed as soon as an internal |
| | miniaudio-managed thread is created. This will be the first thing |
| | to be executed by the thread entry point. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_ON\_THREAD\_EXIT | Defines some code that will be executed from the entry point of an |
| | internal miniaudio-managed thread upon exit. This will be the last |
| | thing to be executed before the thread's entry point exits. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_THREAD\_DEFAULT\_STACK\_SIZE | If set, specifies the default stack size used by miniaudio-managed |
| | threads. |
+----------------------------------+--------------------------------------------------------------------+
| MA\_API | Controls how public APIs should be decorated. Default is `extern`. |
+----------------------------------+--------------------------------------------------------------------+

3. Definitions
==============
This section defines common terms used throughout miniaudio. Unfortunately there is often ambiguity
in the use of terms throughout the audio space, so this section is intended to clarify how miniaudio
uses each term.

3.1. Sample
-----------
A sample is a single unit of audio data. If the sample format is f32, then one sample is one 32-bit
floating point number.

3.2. Frame / PCM Frame
----------------------
A frame is a group of samples equal to the number of channels. For a stereo stream a frame is 2
samples, a mono frame is 1 sample, a 5.1 surround sound frame is 6 samples, etc. The terms "frame"
and "PCM frame" are the same thing in miniaudio. Note that this is different to a compressed frame.
If ever miniaudio needs to refer to a compressed frame, such as a FLAC frame, it will always
clarify what it's referring to with something like "FLAC frame".

3.3. Channel
------------
A stream of monaural audio that is emitted from an individual speaker in a speaker system, or
received from an individual microphone in a microphone system. A stereo stream has two channels (a
left channel, and a right channel), a 5.1 surround sound system has 6 channels, etc. Some audio
systems refer to a channel as a complex audio stream that's mixed with other channels to produce
the final mix - this is completely different to miniaudio's use of the term "channel" and should
not be confused.

3.4. Sample Rate
----------------
The sample rate in miniaudio is always expressed in Hz, such as 44100, 48000, etc. It's the number
of PCM frames that are processed per second.

3.5. Formats
------------
Throughout miniaudio you will see references to different sample formats:

+---------------+----------------------------------------+---------------------------+
| Symbol | Description | Range |
+---------------+----------------------------------------+---------------------------+
| ma\_format\_f32 | 32-bit floating point | [-1, 1] |
| ma\_format\_s16 | 16-bit signed integer | [-32768, 32767] |
| ma\_format\_s24 | 24-bit signed integer (tightly packed) | [-8388608, 8388607] |
| ma\_format\_s32 | 32-bit signed integer | [-2147483648, 2147483647] |
| ma\_format\_u8 | 8-bit unsigned integer | [0, 255] |
+---------------+----------------------------------------+---------------------------+

All formats are native-endian.

4. Data Sources
===============
The data source abstraction in miniaudio is used for retrieving audio data from some source. A few
examples include `ma_decoder`, `ma_noise` and `ma_waveform`. You will need to be familiar with data
sources in order to make sense of some of the higher level concepts in miniaudio.

The `ma_data_source` API is a generic interface for reading from a data source. Any object that
implements the data source interface can be plugged into any `ma_data_source` function.

To read data from a data source:

`c
ma\_result result;
ma\_uint64 framesRead;

result = ma\_data\_source\_read\_pcm\_frames(pDataSource, pFramesOut, frameCount, &framesRead);
if (result != MA\_SUCCESS) {
return result; // Failed to read data from the data source.
}
`

If you don't need the number of frames that were successfully read you can pass in `NULL` to the
`pFramesRead` parameter. If this returns a value less than the number of frames requested it means
the end of the file has been reached. `MA_AT_END` will be returned only when the number of frames
read is 0.

When calling any data source function, with the exception of `ma_data_source_init()` and
`ma_data_source_uninit()`, you can pass in any object that implements a data source. For example,
you could plug in a decoder like so:

`c
ma\_result result;
ma\_uint64 framesRead;
ma\_decoder decoder; // <-- This would be initialized with `ma_decoder_init_*()`.

result = ma\_data\_source\_read\_pcm\_frames(&decoder, pFramesOut, frameCount, &framesRead);
if (result != MA\_SUCCESS) {
return result; // Failed to read data from the decoder.
}
`

If you want to seek forward you can pass in `NULL` to the `pFramesOut` parameter. Alternatively you
can use `ma_data_source_seek_pcm_frames()`.

To seek to a specific PCM frame:

`c
result = ma\_data\_source\_seek\_to\_pcm\_frame(pDataSource, frameIndex);
if (result != MA\_SUCCESS) {
return result; // Failed to seek to PCM frame.
}
`

You can retrieve the total length of a data source in PCM frames, but note that some data sources
may not have the notion of a length, such as noise and waveforms, and others may just not have a
way of determining the length such as some decoders. To retrieve the length:

`c
ma\_uint64 length;

result = ma\_data\_source\_get\_length\_in\_pcm\_frames(pDataSource, &length);
if (result != MA\_SUCCESS) {
return result; // Failed to retrieve the length.
}
`

Care should be taken when retrieving the length of a data source where the underlying decoder is
pulling data from a data stream with an undefined length, such as internet radio or some kind of
broadcast. If you do this, `ma_data_source_get_length_in_pcm_frames()` may never return.

The current position of the cursor in PCM frames can also be retrieved:

`c
ma\_uint64 cursor;

result = ma\_data\_source\_get\_cursor\_in\_pcm\_frames(pDataSource, &cursor);
if (result != MA\_SUCCESS) {
return result; // Failed to retrieve the cursor.
}
`

You will often need to know the data format that will be returned after reading. This can be
retrieved like so:

`c
ma\_format format;
ma\_uint32 channels;
ma\_uint32 sampleRate;
ma\_channel channelMap[MA\_MAX\_CHANNELS];

result = ma\_data\_source\_get\_data\_format(pDataSource, &format, &channels, &sampleRate, channelMap, MA\_MAX\_CHANNELS);
if (result != MA\_SUCCESS) {
return result; // Failed to retrieve data format.
}
`

If you do not need a specific data format property, just pass in NULL to the respective parameter.

There may be cases where you want to implement something like a sound bank where you only want to
read data within a certain range of the underlying data. To do this you can use a range:

`c
result = ma\_data\_source\_set\_range\_in\_pcm\_frames(pDataSource, rangeBegInFrames, rangeEndInFrames);
if (result != MA\_SUCCESS) {
return result; // Failed to set the range.
}
`

This is useful if you have a sound bank where many sounds are stored in the same file and you want
the data source to only play one of those sub-sounds. Note that once the range is set, everything
that takes a position, such as cursors and loop points, should always be relative to the start of
the range. When the range is set, any previously defined loop point will be reset.

Custom loop points can also be used with data sources. By default, data sources will loop after
they reach the end of the data source, but if you need to loop at a specific location, you can do
the following:

`c
result = ma\_data\_source\_set\_loop\_point\_in\_pcm\_frames(pDataSource, loopBegInFrames, loopEndInFrames);
if (result != MA\_SUCCESS) {
return result; // Failed to set the loop point.
}
`

The loop point is relative to the current range.

It's sometimes useful to chain data sources together so that a seamless transition can be achieved.
To do this, you can use chaining:

`c
ma\_decoder decoder1;
ma\_decoder decoder2;

// ... initialize decoders with ma\_decoder\_init\_\*() ...

result = ma\_data\_source\_set\_next(&decoder1, &decoder2);
if (result != MA\_SUCCESS) {
return result; // Failed to set the next data source.
}

result = ma\_data\_source\_read\_pcm\_frames(&decoder1, pFramesOut, frameCount, pFramesRead);
if (result != MA\_SUCCESS) {
return result; // Failed to read from the decoder.
}
`

In the example above we're using decoders. When reading from a chain, you always want to read from
the top level data source in the chain. In the example above, `decoder1` is the top level data
source in the chain. When `decoder1` reaches the end, `decoder2` will start seamlessly without any
gaps.

Note that when looping is enabled, only the current data source will be looped. You can loop the
entire chain by linking in a loop like so:

`c
ma\_data\_source\_set\_next(&decoder1, &decoder2); // decoder1 -> decoder2
ma\_data\_source\_set\_next(&decoder2, &decoder1); // decoder2 -> decoder1 (loop back to the start).
`

Note that setting up chaining is not thread safe, so care needs to be taken if you're dynamically
changing links while the audio thread is in the middle of reading.

Do not use `ma_decoder_seek_to_pcm_frame()` as a means to reuse a data source to play multiple
instances of the same sound simultaneously. This can be extremely inefficient depending on the type
of data source and can result in glitching due to subtle changes to the state of internal filters.
Instead, initialize multiple data sources for each instance.

4.1. Custom Data Sources
------------------------
You can implement a custom data source by implementing the functions in `ma_data_source_vtable`.
Your custom object must have `ma_data_source_base` as it's first member:

`c
struct my\_data\_source
{
ma\_data\_source\_base base;
...
};
`

In your initialization routine, you need to call `ma_data_source_init()` in order to set up the
base object (`ma_data_source_base`):

`c
static ma\_result my\_data\_source\_read(ma\_data\_source *pDataSource, void* pFramesOut, ma\_uint64 frameCount, ma\_uint64\* pFramesRead)
{
// Read data here. Output in the same format returned by my\_data\_source\_get\_data\_format().
}

static ma\_result my\_data\_source\_seek(ma\_data\_source\* pDataSource, ma\_uint64 frameIndex)
{
// Seek to a specific PCM frame here. Return MA\_NOT\_IMPLEMENTED if seeking is not supported.
}

static ma\_result my\_data\_source\_get\_data\_format(ma\_data\_source *pDataSource, ma\_format* pFormat, ma\_uint32 *pChannels, ma\_uint32* pSampleRate, ma\_channel\* pChannelMap, size\_t channelMapCap)
{
// Return the format of the data here.
}

static ma\_result my\_data\_source\_get\_cursor(ma\_data\_source *pDataSource, ma\_uint64* pCursor)
{
// Retrieve the current position of the cursor here. Return MA\_NOT\_IMPLEMENTED and set \*pCursor to 0 if there is no notion of a cursor.
}

static ma\_result my\_data\_source\_get\_length(ma\_data\_source *pDataSource, ma\_uint64* pLength)
{
// Retrieve the length in PCM frames here. Return MA\_NOT\_IMPLEMENTED and set \*pLength to 0 if there is no notion of a length or if the length is unknown.
}

static ma\_data\_source\_vtable g\_my\_data\_source\_vtable =
{
my\_data\_source\_read,
my\_data\_source\_seek,
my\_data\_source\_get\_data\_format,
my\_data\_source\_get\_cursor,
my\_data\_source\_get\_length
};

ma\_result my\_data\_source\_init(my\_data\_source\* pMyDataSource)
{
ma\_result result;
ma\_data\_source\_config baseConfig;

baseConfig = ma\_data\_source\_config\_init();
baseConfig.vtable = &g\_my\_data\_source\_vtable;

result = ma\_data\_source\_init(&baseConfig, &pMyDataSource->base);
if (result != MA\_SUCCESS) {
return result;
}

// ... do the initialization of your custom data source here ...

return MA\_SUCCESS;
}

void my\_data\_source\_uninit(my\_data\_source\* pMyDataSource)
{
// ... do the uninitialization of your custom data source here ...

// You must uninitialize the base data source.
ma\_data\_source\_uninit(&pMyDataSource->base);
}
`

Note that `ma_data_source_init()` and `ma_data_source_uninit()` are never called directly outside
of the custom data source. It's up to the custom data source itself to call these within their own
init/uninit functions.

5. Engine
=========
The `ma_engine` API is a high level API for managing and mixing sounds and effect processing. The
`ma_engine` object encapsulates a resource manager and a node graph, both of which will be
explained in more detail later.

Sounds are called `ma_sound` and are created from an engine. Sounds can be associated with a mixing
group called `ma_sound_group` which are also created from the engine. Both `ma_sound` and
`ma_sound_group` objects are nodes within the engine's node graph.

When the engine is initialized, it will normally create a device internally. If you would rather
manage the device yourself, you can do so and just pass a pointer to it via the engine config when
you initialize the engine. You can also just use the engine without a device, which again can be
configured via the engine config.

The most basic way to initialize the engine is with a default config, like so:

`c
ma\_result result;
ma\_engine engine;

result = ma\_engine\_init(NULL, &engine);
if (result != MA\_SUCCESS) {
return result; // Failed to initialize the engine.
}
`

This will result in the engine initializing a playback device using the operating system's default
device. This will be sufficient for many use cases, but if you need more flexibility you'll want to
configure the engine with an engine config:

`c
ma\_result result;
ma\_engine engine;
ma\_engine\_config engineConfig;

engineConfig = ma\_engine\_config\_init();
engineConfig.pDevice = &myDevice

result = ma\_engine\_init(&engineConfig, &engine);
if (result != MA\_SUCCESS) {
return result; // Failed to initialize the engine.
}
`

In the example above we're passing in a pre-initialized device. Since the caller is the one in
control of the device's data callback, it's their responsibility to manually call
`ma_engine_read_pcm_frames()` from inside their data callback:

`c
void playback\_data\_callback(ma\_device *pDevice, void* pOutput, const void\* pInput, ma\_uint32 frameCount)
{
ma\_engine\_read\_pcm\_frames(&g\_Engine, pOutput, frameCount, NULL);
}
`

You can also use the engine independent of a device entirely:

`c
ma\_result result;
ma\_engine engine;
ma\_engine\_config engineConfig;

engineConfig = ma\_engine\_config\_init();
engineConfig.noDevice = MA\_TRUE;
engineConfig.channels = 2; // Must be set when not using a device.
engineConfig.sampleRate = 48000; // Must be set when not using a device.

result = ma\_engine\_init(&engineConfig, &engine);
if (result != MA\_SUCCESS) {
return result; // Failed to initialize the engine.
}
`

Note that when you're not using a device, you must set the channel count and sample rate in the
config or else miniaudio won't know what to use (miniaudio will use the device to determine this
normally). When not using a device, you need to use `ma_engine_read_pcm_frames()` to process audio
data from the engine. This kind of setup is useful if you want to do something like offline
processing or want to use a different audio system for playback such as SDL.

When a sound is loaded it goes through a resource manager. By default the engine will initialize a
resource manager internally, but you can also specify a pre-initialized resource manager:

`c
ma\_result result;
ma\_engine engine1;
ma\_engine engine2;
ma\_engine\_config engineConfig;

engineConfig = ma\_engine\_config\_init();
engineConfig.pResourceManager = &myResourceManager

ma\_engine\_init(&engineConfig, &engine1);
ma\_engine\_init(&engineConfig, &engine2);
`

In this example we are initializing two engines, both of which are sharing the same resource
manager. This is especially useful for saving memory when loading the same file across multiple
engines. If you were not to use a shared resource manager, each engine instance would use their own
which would result in any sounds that are used between both engine's being loaded twice. By using
a shared resource manager, it would only be loaded once. Using multiple engine's is useful when you
need to output to multiple playback devices, such as in a local multiplayer game where each player
is using their own set of headphones.

By default an engine will be in a started state. To make it so the engine is not automatically
started you can configure it as such:

`c
engineConfig.noAutoStart = MA\_TRUE;

// The engine will need to be started manually.
ma\_engine\_start(&engine);

// Later on the engine can be stopped with ma\_engine\_stop().
ma\_engine\_stop(&engine);
`

The concept of starting or stopping an engine is only relevant when using the engine with a
device. Attempting to start or stop an engine that is not associated with a device will result in
`MA_INVALID_OPERATION`.

The master volume of the engine can be controlled with `ma_engine_set_volume()` which takes a
linear scale, with 0 resulting in silence and anything above 1 resulting in amplification. If you
prefer decibel based volume control, use `ma_volume_db_to_linear()` to convert from dB to linear.

When a sound is spatialized, it is done so relative to a listener. An engine can be configured to
have multiple listeners which can be configured via the config:

`c
engineConfig.listenerCount = 2;
`

The maximum number of listeners is restricted to `MA_ENGINE_MAX_LISTENERS`. By default, when a
sound is spatialized, it will be done so relative to the closest listener. You can also pin a sound
to a specific listener which will be explained later. Listener's have a position, direction, cone,
and velocity (for doppler effect). A listener is referenced by an index, the meaning of which is up
to the caller (the index is 0 based and cannot go beyond the listener count, minus 1). The
position, direction and velocity are all specified in absolute terms:

`c
ma\_engine\_listener\_set\_position(&engine, listenerIndex, worldPosX, worldPosY, worldPosZ);
`

The direction of the listener represents it's forward vector. The listener's up vector can also be
specified and defaults to +1 on the Y axis.

`c
ma\_engine\_listener\_set\_direction(&engine, listenerIndex, forwardX, forwardY, forwardZ);
ma\_engine\_listener\_set\_world\_up(&engine, listenerIndex, 0, 1, 0);
`

The engine supports directional attenuation. The listener can have a cone the controls how sound is
attenuated based on the listener's direction. When a sound is between the inner and outer cones, it
will be attenuated between 1 and the cone's outer gain:

`c
ma\_engine\_listener\_set\_cone(&engine, listenerIndex, innerAngleInRadians, outerAngleInRadians, outerGain);
`

When a sound is inside the inner code, no directional attenuation is applied. When the sound is
outside of the outer cone, the attenuation will be set to `outerGain` in the example above. When
the sound is in between the inner and outer cones, the attenuation will be interpolated between 1
and the outer gain.

The engine's coordinate system follows the OpenGL coordinate system where positive X points right,
positive Y points up and negative Z points forward.

The simplest and least flexible way to play a sound is like so:

`c
ma\_engine\_play\_sound(&engine, "my\_sound.wav", pGroup);
`

This is a "fire and forget" style of function. The engine will manage the `ma_sound` object
internally. When the sound finishes playing, it'll be put up for recycling. For more flexibility
you'll want to initialize a sound object:

`c
ma\_sound sound;

result = ma\_sound\_init\_from\_file(&engine, "my\_sound.wav", flags, pGroup, NULL, &sound);
if (result != MA\_SUCCESS) {
return result; // Failed to load sound.
}
`

Sounds need to be uninitialized with `ma_sound_uninit()`.

The example above loads a sound from a file. If the resource manager has been disabled you will not
be able to use this function and instead you'll need to initialize a sound directly from a data
source:

`c
ma\_sound sound;

result = ma\_sound\_init\_from\_data\_source(&engine, &dataSource, flags, pGroup, &sound);
if (result != MA\_SUCCESS) {
return result;
}
`

Each `ma_sound` object represents a single instance of the sound. If you want to play the same
sound multiple times at the same time, you need to initialize a separate `ma_sound` object.

For the most flexibility when initializing sounds, use `ma_sound_init_ex()`. This uses miniaudio's
standard config/init pattern:

`c
ma\_sound sound;
ma\_sound\_config soundConfig;

soundConfig = ma\_sound\_config\_init();
soundConfig.pFilePath = NULL; // Set this to load from a file path.
soundConfig.pDataSource = NULL; // Set this to initialize from an existing data source.
soundConfig.pInitialAttachment = &someNodeInTheNodeGraph
soundConfig.initialAttachmentInputBusIndex = 0;
soundConfig.channelsIn = 1;
soundConfig.channelsOut = 0; // Set to 0 to use the engine's native channel count.

result = ma\_sound\_init\_ex(&soundConfig, &sound);
if (result != MA\_SUCCESS) {
return result;
}
`

In the example above, the sound is being initialized without a file nor a data source. This is
valid, in which case the sound acts as a node in the middle of the node graph. This means you can
connect other sounds to this sound and allow it to act like a sound group. Indeed, this is exactly
what a `ma_sound_group` is.

When loading a sound, you specify a set of flags that control how the sound is loaded and what
features are enabled for that sound. When no flags are set, the sound will be fully loaded into
memory in exactly the same format as how it's stored on the file system. The resource manager will
allocate a block of memory and then load the file directly into it. When reading audio data, it
will be decoded dynamically on the fly. In order to save processing time on the audio thread, it
might be beneficial to pre-decode the sound. You can do this with the `MA_SOUND_FLAG_DECODE` flag:

`c
ma\_sound\_init\_from\_file(&engine, "my\_sound.wav", MA\_SOUND\_FLAG\_DECODE, pGroup, NULL, &sound);
`

By default, sounds will be loaded synchronously, meaning `ma_sound_init_*()` will not return until
the sound has been fully loaded. If this is prohibitive you can instead load sounds asynchronously
by specifying the `MA_SOUND_FLAG_ASYNC` flag:

`c
ma\_sound\_init\_from\_file(&engine, "my\_sound.wav", MA\_SOUND\_FLAG\_DECODE | MA\_SOUND\_FLAG\_ASYNC, pGroup, NULL, &sound);
`

This will result in `ma_sound_init_*()` returning quickly, but the sound won't yet have been fully
loaded. When you start the sound, it won't output anything until some sound is available. The sound
will start outputting audio before the sound has been fully decoded when the `MA_SOUND_FLAG_DECODE`
is specified.

If you need to wait for an asynchronously loaded sound to be fully loaded, you can use a fence. A
fence in miniaudio is a simple synchronization mechanism which simply blocks until it's internal
counter hit's zero. You can specify a fence like so:

`c
ma\_result result;
ma\_fence fence;
ma\_sound sounds[4];

result = ma\_fence\_init(&fence);
if (result != MA\_SUCCESS) {
return result;
}

// Load some sounds asynchronously.
for (int iSound = 0; iSound < 4; iSound += 1) {
ma\_sound\_init\_from\_file(&engine, mySoundFilesPaths[iSound], MA\_SOUND\_FLAG\_DECODE | MA\_SOUND\_FLAG\_ASYNC, pGroup, &fence, &sounds[iSound]);
}

// ... do some other stuff here in the mean time ...

// Wait for all sounds to finish loading.
ma\_fence\_wait(&fence);
`

If loading the entire sound into memory is prohibitive, you can also configure the engine to stream
the audio data:

`c
ma\_sound\_init\_from\_file(&engine, "my\_sound.wav", MA\_SOUND\_FLAG\_STREAM, pGroup, NULL, &sound);
`

When streaming sounds, 2 seconds worth of audio data is stored in memory. Although it should work
fine, it's inefficient to use streaming for short sounds. Streaming is useful for things like music
tracks in games.

When loading a sound from a file path, the engine will reference count the file to prevent it from
being loaded if it's already in memory. When you uninitialize a sound, the reference count will be
decremented, and if it hits zero, the sound will be unloaded from memory. This reference counting
system is not used for streams. The engine will use a 64-bit hash of the file name when comparing
file paths which means there's a small chance you might encounter a name collision. If this is an
issue, you'll need to use a different name for one of the colliding file paths, or just not load
from files and instead load from a data source.

You can use `ma_sound_init_copy()` to initialize a copy of another sound. Note, however, that this
only works for sounds that were initialized with `ma_sound_init_from_file()` and without the
`MA_SOUND_FLAG_STREAM` flag.

When you initialize a sound, if you specify a sound group the sound will be attached to that group
automatically. If you set it to NULL, it will be automatically attached to the engine's endpoint.
If you would instead rather leave the sound unattached by default, you can specify the
`MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT` flag. This is useful if you want to set up a complex node
graph.

Sounds are not started by default. To start a sound, use `ma_sound_start()`. Stop a sound with
`ma_sound_stop()`.

Sounds can have their volume controlled with `ma_sound_set_volume()` in the same way as the
engine's master volume.

Sounds support stereo panning and pitching. Set the pan with `ma_sound_set_pan()`. Setting the pan
to 0 will result in an unpanned sound. Setting it to -1 will shift everything to the left, whereas
+1 will shift it to the right. The pitch can be controlled with `ma_sound_set_pitch()`. A larger
value will result in a higher pitch. The pitch must be greater than 0.

The engine supports 3D spatialization of sounds. By default sounds will have spatialization
enabled, but if a sound does not need to be spatialized it's best to disable it. There are two ways
to disable spatialization of a sound:

`c
// Disable spatialization at initialization time via a flag:
ma\_sound\_init\_from\_file(&engine, "my\_sound.wav", MA\_SOUND\_FLAG\_NO\_SPATIALIZATION, NULL, NULL, &sound);

// Dynamically disable or enable spatialization post-initialization:
ma\_sound\_set\_spatialization\_enabled(&sound, isSpatializationEnabled);
`

By default sounds will be spatialized based on the closest listener. If a sound should always be
spatialized relative to a specific listener it can be pinned to one:

`c
ma\_sound\_set\_pinned\_listener\_index(&sound, listenerIndex);
`

Like listeners, sounds have a position. By default, the position of a sound is in absolute space,
but it can be changed to be relative to a listener:

`c
ma\_sound\_set\_positioning(&sound, ma\_positioning\_relative);
`

Note that relative positioning of a sound only makes sense if there is either only one listener, or
the sound is pinned to a specific listener. To set the position of a sound:

`c
ma\_sound\_set\_position(&sound, posX, posY, posZ);
`

The direction works the same way as a listener and represents the sound's forward direction:

`c
ma\_sound\_set\_direction(&sound, forwardX, forwardY, forwardZ);
`

Sound's also have a cone for controlling directional attenuation. This works exactly the same as
listeners:

`c
ma\_sound\_set\_cone(&sound, innerAngleInRadians, outerAngleInRadians, outerGain);
`

The velocity of a sound is used for doppler effect and can be set as such:

`c
ma\_sound\_set\_velocity(&sound, velocityX, velocityY, velocityZ);
`

The engine supports different attenuation models which can be configured on a per-sound basis. By
default the attenuation model is set to `ma_attenuation_model_inverse` which is the equivalent to
OpenAL's `AL_INVERSE_DISTANCE_CLAMPED`. Configure the attenuation model like so:

`c
ma\_sound\_set\_attenuation\_model(&sound, ma\_attenuation\_model\_inverse);
`

The supported attenuation models include the following:

+----------------------------------+----------------------------------------------+
| ma\_attenuation\_model\_none | No distance attenuation. |
+----------------------------------+----------------------------------------------+
| ma\_attenuation\_model\_inverse | Equivalent to `AL_INVERSE_DISTANCE_CLAMPED`. |
+----------------------------------+----------------------------------------------+
| ma\_attenuation\_model\_linear | Linear attenuation. |
+----------------------------------+----------------------------------------------+
| ma\_attenuation\_model\_exponential | Exponential attenuation. |
+----------------------------------+----------------------------------------------+

To control how quickly a sound rolls off as it moves away from the listener, you need to configure
the rolloff:

`c
ma\_sound\_set\_rolloff(&sound, rolloff);
`

You can control the minimum and maximum gain to apply from spatialization:

`c
ma\_sound\_set\_min\_gain(&sound, minGain);
ma\_sound\_set\_max\_gain(&sound, maxGain);
`

Likewise, in the calculation of attenuation, you can control the minimum and maximum distances for
the attenuation calculation. This is useful if you want to ensure sounds don't drop below a certain
volume after the listener moves further away and to have sounds play a maximum volume when the
listener is within a certain distance:

`c
ma\_sound\_set\_min\_distance(&sound, minDistance);
ma\_sound\_set\_max\_distance(&sound, maxDistance);
`

The engine's spatialization system supports doppler effect. The doppler factor can be configure on
a per-sound basis like so:

`c
ma\_sound\_set\_doppler\_factor(&sound, dopplerFactor);
`

You can fade sounds in and out with `ma_sound_set_fade_in_pcm_frames()` and
`ma_sound_set_fade_in_milliseconds()`. Set the volume to -1 to use the current volume as the
starting volume:

`c
// Fade in over 1 second.
ma\_sound\_set\_fade\_in\_milliseconds(&sound, 0, 1, 1000);

// ... sometime later ...

// Fade out over 1 second, starting from the current volume.
ma\_sound\_set\_fade\_in\_milliseconds(&sound, -1, 0, 1000);
`

By default sounds will start immediately, but sometimes for timing and synchronization purposes it
can be useful to schedule a sound to start or stop:

`c
// Start the sound in 1 second from now.
ma\_sound\_set\_start\_time\_in\_pcm\_frames(&sound, ma\_engine\_get\_time\_in\_pcm\_frames(&engine) + (ma\_engine\_get\_sample\_rate(&engine) \* 1));

// Stop the sound in 2 seconds from now.
ma\_sound\_set\_stop\_time\_in\_pcm\_frames(&sound, ma\_engine\_get\_time\_in\_pcm\_frames(&engine) + (ma\_engine\_get\_sample\_rate(&engine) \* 2));
`

Note that scheduling a start time still requires an explicit call to `ma_sound_start()` before
anything will play.

The time is specified in global time which is controlled by the engine. You can get the engine's
current time with `ma_engine_get_time_in_pcm_frames()`. The engine's global time is incremented
automatically as audio data is read, but it can be reset with `ma_engine_set_time_in_pcm_frames()`
in case it needs to be resynchronized for some reason.

To determine whether or not a sound is currently playing, use `ma_sound_is_playing()`. This will
take the scheduled start and stop times into account.

Whether or not a sound should loop can be controlled with `ma_sound_set_looping()`. Sounds will not
be looping by default. Use `ma_sound_is_looping()` to determine whether or not a sound is looping.

Use `ma_sound_at_end()` to determine whether or not a sound is currently at the end. For a looping
sound this should never return true. Alternatively, you can configure a callback that will be fired
when the sound reaches the end. Note that the callback is fired from the audio thread which means
you cannot be uninitializing sound from the callback. To set the callback you can use
`ma_sound_set_end_callback()`. Alternatively, if you're using `ma_sound_init_ex()`, you can pass it
into the config like so:

`c
soundConfig.endCallback = my\_end\_callback;
soundConfig.pEndCallbackUserData = pMyEndCallbackUserData;
`

The end callback is declared like so:

`c
void my\_end\_callback(void *pUserData, ma\_sound* pSound)
{
...
}
`

Internally a sound wraps around a data source. Some APIs exist to control the underlying data
source, mainly for convenience:

`c
ma\_sound\_seek\_to\_pcm\_frame(&sound, frameIndex);
ma\_sound\_get\_data\_format(&sound, &format, &channels, &sampleRate, pChannelMap, channelMapCapacity);
ma\_sound\_get\_cursor\_in\_pcm\_frames(&sound, &cursor);
ma\_sound\_get\_length\_in\_pcm\_frames(&sound, &length);
`

Sound groups have the same API as sounds, only they are called `ma_sound_group`, and since they do
not have any notion of a data source, anything relating to a data source is unavailable.

Internally, sound data is loaded via the `ma_decoder` API which means by default it only supports
file formats that have built-in support in miniaudio. You can extend this to support any kind of
file format through the use of custom decoders. To do this you'll need to use a self-managed
resource manager and configure it appropriately. See the "Resource Management" section below for
details on how to set this up.

6. Resource Management
======================
Many programs will want to manage sound resources for things such as reference counting and
streaming. This is supported by miniaudio via the `ma_resource_manager` API.

The resource manager is mainly responsible for the following:

\* Loading of sound files into memory with reference counting.
\* Streaming of sound data.

When loading a sound file, the resource manager will give you back a `ma_data_source` compatible
object called `ma_resource_manager_data_source`. This object can be passed into any
`ma_data_source` API which is how you can read and seek audio data. When loading a sound file, you
specify whether or not you want the sound to be fully loaded into memory (and optionally
pre-decoded) or streamed. When loading into memory, you can also specify whether or not you want
the data to be loaded asynchronously.

The example below is how you can initialize a resource manager using it's default configuration:

`c
ma\_resource\_manager\_config config;
ma\_resource\_manager resourceManager;

config = ma\_resource\_manager\_config\_init();
result = ma\_resource\_manager\_init(&config, &resourceManager);
if (result != MA\_SUCCESS) {
ma\_device\_uninit(&device);
printf("Failed to initialize the resource manager.");
return -1;
}
`

You can configure the format, channels and sample rate of the decoded audio data. By default it
will use the file's native data format, but you can configure it to use a consistent format. This
is useful for offloading the cost of data conversion to load time rather than dynamically
converting at mixing time. To do this, you configure the decoded format, channels and sample rate
like the code below:

`c
config = ma\_resource\_manager\_config\_init();
config.decodedFormat = device.playback.format;
config.decodedChannels = device.playback.channels;
config.decodedSampleRate = device.sampleRate;
`

In the code above, the resource manager will be configured so that any decoded audio data will be
pre-converted at load time to the device's native data format. If instead you used defaults and
the data format of the file did not match the device's data format, you would need to convert the
data at mixing time which may be prohibitive in high-performance and large scale scenarios like
games.

Internally the resource manager uses the `ma_decoder` API to load sounds. This means by default it
only supports decoders that are built into miniaudio. It's possible to support additional encoding
formats through the use of custom decoders. To do so, pass in your `ma_decoding_backend_vtable`
vtables into the resource manager config:

`c
ma\_decoding\_backend\_vtable\* pCustomBackendVTables[] =
{
&g\_ma\_decoding\_backend\_vtable\_libvorbis,
&g\_ma\_decoding\_backend\_vtable\_libopus
};

...

resourceManagerConfig.ppCustomDecodingBackendVTables = pCustomBackendVTables;
resourceManagerConfig.customDecodingBackendCount = sizeof(pCustomBackendVTables) / sizeof(pCustomBackendVTables[0]);
resourceManagerConfig.pCustomDecodingBackendUserData = NULL;
`

This system can allow you to support any kind of file format. See the "Decoding" section for
details on how to implement custom decoders. The miniaudio repository includes examples for Opus
via libopus and libopusfile and Vorbis via libvorbis and libvorbisfile.

Asynchronicity is achieved via a job system. When an operation needs to be performed, such as the
decoding of a page, a job will be posted to a queue which will then be processed by a job thread.
By default there will be only one job thread running, but this can be configured, like so:

`c
config = ma\_resource\_manager\_config\_init();
config.jobThreadCount = MY\_JOB\_THREAD\_COUNT;
`

By default job threads are managed internally by the resource manager, however you can also self
manage your job threads if, for example, you want to integrate the job processing into your
existing job infrastructure, or if you simply don't like the way the resource manager does it. To
do this, just set the job thread count to 0 and process jobs manually. To process jobs, you first
need to retrieve a job using `ma_resource_manager_next_job()` and then process it using
`ma_job_process()`:

`c
config = ma\_resource\_manager\_config\_init();
config.jobThreadCount = 0; // Don't manage any job threads internally.
config.flags = MA\_RESOURCE\_MANAGER\_FLAG\_NON\_BLOCKING; // Optional. Makes `ma_resource_manager_next_job()` non-blocking.

// ... Initialize your custom job threads ...

void my\_custom\_job\_thread(...)
{
for (;;) {
ma\_job job;
ma\_result result = ma\_resource\_manager\_next\_job(pMyResourceManager, &job);
if (result != MA\_SUCCESS) {
if (result == MA\_NO\_DATA\_AVAILABLE) {
// No jobs are available. Keep going. Will only get this if the resource manager was initialized
// with MA\_RESOURCE\_MANAGER\_FLAG\_NON\_BLOCKING.
continue;
} else if (result == MA\_CANCELLED) {
// MA\_JOB\_TYPE\_QUIT was posted. Exit.
break;
} else {
// Some other error occurred.
break;
}
}

ma\_job\_process(&job);
}
}
`

In the example above, the `MA_JOB_TYPE_QUIT` event is the used as the termination
indicator, but you can use whatever you would like to terminate the thread. The call to
`ma_resource_manager_next_job()` is blocking by default, but can be configured to be non-blocking
by initializing the resource manager with the `MA_RESOURCE_MANAGER_FLAG_NON_BLOCKING` configuration
flag. Note that the `MA_JOB_TYPE_QUIT` will never be removed from the job queue. This
is to give every thread the opportunity to catch the event and terminate naturally.

When loading a file, it's sometimes convenient to be able to customize how files are opened and
read instead of using standard `fopen()`, `fclose()`, etc. which is what miniaudio will use by
default. This can be done by setting `pVFS` member of the resource manager's config:

`c
// Initialize your custom VFS object. See documentation for VFS for information on how to do this.
my\_custom\_vfs vfs = my\_custom\_vfs\_init();

config = ma\_resource\_manager\_config\_init();
config.pVFS = &vfs
`

This is particularly useful in programs like games where you want to read straight from an archive
rather than the normal file system. If you do not specify a custom VFS, the resource manager will
use the operating system's normal file operations.

To load a sound file and create a data source, call `ma_resource_manager_data_source_init()`. When
loading a sound you need to specify the file path and options for how the sounds should be loaded.
By default a sound will be loaded synchronously. The returned data source is owned by the caller
which means the caller is responsible for the allocation and freeing of the data source. Below is
an example for initializing a data source:

`c
ma\_resource\_manager\_data\_source dataSource;
ma\_result result = ma\_resource\_manager\_data\_source\_init(pResourceManager, pFilePath, flags, &dataSource);
if (result != MA\_SUCCESS) {
// Error.
}

// ...

// A ma\_resource\_manager\_data\_source object is compatible with the `ma_data_source` API. To read data, just call
// the `ma_data_source_read_pcm_frames()` like you would with any normal data source.
result = ma\_data\_source\_read\_pcm\_frames(&dataSource, pDecodedData, frameCount, &framesRead);
if (result != MA\_SUCCESS) {
// Failed to read PCM frames.
}

// ...

ma\_resource\_manager\_data\_source\_uninit(&dataSource);
`

The `flags` parameter specifies how you want to perform loading of the sound file. It can be a
combination of the following flags:

`
MA\_RESOURCE\_MANAGER\_DATA\_SOURCE\_FLAG\_STREAM
MA\_RESOURCE\_MANAGER\_DATA\_SOURCE\_FLAG\_DECODE
MA\_RESOURCE\_MANAGER\_DATA\_SOURCE\_FLAG\_ASYNC
MA\_RESOURCE\_MANAGER\_DATA\_SOURCE\_FLAG\_WAIT\_INIT
MA\_RESOURCE\_MANAGER\_DATA\_SOURCE\_FLAG\_LOOPING
`

When no flags are specified (set to 0), the sound will be fully loaded into memory, but not
decoded, meaning the raw file data will be stored in memory, and then dynamically decoded when
`ma_data_source_read_pcm_frames()` is called. To instead decode the audio data before storing it in
memory, use the `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE` flag. By default, the sound file will
be loaded synchronously, meaning `ma_resource_manager_data_source_init()` will only return after
the entire file has been loaded. This is good for simplicity, but can be prohibitively slow. You
can instead load the sound asynchronously using the `MA_RESOURCE_MANAGER_DATA_SOURCE_ASYNC` flag.
This will result in `ma_resource_manager_data_source_init()` returning quickly, but no data will be
returned by `ma_data_source_read_pcm_frames()` until some data is available. When no data is
available because the asynchronous decoding hasn't caught up, `MA_BUSY` will be returned by
`ma_data_source_read_pcm_frames()`.

For large sounds, it's often prohibitive to store the entire file in memory. To mitigate this, you
can instead stream audio data which you can do by specifying the
`MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM` flag. When streaming, data will be decoded in 1
second pages. When a new page needs to be decoded, a job will be posted to the job queue and then
subsequently processed in a job thread.

The `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_LOOPING` flag can be used so that the sound will loop
when it reaches the end by default. It's recommended you use this flag when you want to have a
looping streaming sound. If you try loading a very short sound as a stream, you will get a glitch.
This is because the resource manager needs to pre-fill the initial buffer at initialization time,
and if you don't specify the `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_LOOPING` flag, the resource
manager will assume the sound is not looping and will stop filling the buffer when it reaches the
end, therefore resulting in a discontinuous buffer.

For in-memory sounds, reference counting is used to ensure the data is loaded only once. This means
multiple calls to `ma_resource_manager_data_source_init()` with the same file path will result in
the file data only being loaded once. Each call to `ma_resource_manager_data_source_init()` must be
matched up with a call to `ma_resource_manager_data_source_uninit()`. Sometimes it can be useful
for a program to register self-managed raw audio data and associate it with a file path. Use the
`ma_resource_manager_register_*()` and `ma_resource_manager_unregister_*()` APIs to do this.
`ma_resource_manager_register_decoded_data()` is used to associate a pointer to raw, self-managed
decoded audio data in the specified data format with the specified name. Likewise,
`ma_resource_manager_register_encoded_data()` is used to associate a pointer to raw self-managed
encoded audio data (the raw file data) with the specified name. Note that these names need not be
actual file paths. When `ma_resource_manager_data_source_init()` is called (without the
`MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM` flag), the resource manager will look for these
explicitly registered data buffers and, if found, will use it as the backing data for the data
source. Note that the resource manager does *not* make a copy of this data so it is up to the
caller to ensure the pointer stays valid for its lifetime. Use
`ma_resource_manager_unregister_data()` to unregister the self-managed data. You can also use
`ma_resource_manager_register_file()` and `ma_resource_manager_unregister_file()` to register and
unregister a file. It does not make sense to use the `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM`
flag with a self-managed data pointer.

6.1. Asynchronous Loading and Synchronization
---------------------------------------------
When loading asynchronously, it can be useful to poll whether or not loading has finished. Use
`ma_resource_manager_data_source_result()` to determine this. For in-memory sounds, this will
return `MA_SUCCESS` when the file has been *entirely* decoded. If the sound is still being decoded,
`MA_BUSY` will be returned. Otherwise, some other error code will be returned if the sound failed
to load. For streaming data sources, `MA_SUCCESS` will be returned when the first page has been
decoded and the sound is ready to be played. If the first page is still being decoded, `MA_BUSY`
will be returned. Otherwise, some other error code will be returned if the sound failed to load.

In addition to polling, you can also use a simple synchronization object called a "fence" to wait
for asynchronously loaded sounds to finish. This is called `ma_fence`. The advantage to using a
fence is that it can be used to wait for a group of sounds to finish loading rather than waiting
for sounds on an individual basis. There are two stages to loading a sound:

\* Initialization of the internal decoder; and
\* Completion of decoding of the file (the file is fully decoded)

You can specify separate fences for each of the different stages. Waiting for the initialization
of the internal decoder is important for when you need to know the sample format, channels and
sample rate of the file.

The example below shows how you could use a fence when loading a number of sounds:

`c
// This fence will be released when all sounds are finished loading entirely.
ma\_fence fence;
ma\_fence\_init(&fence);

// This will be passed into the initialization routine for each sound.
ma\_resource\_manager\_pipeline\_notifications notifications = ma\_resource\_manager\_pipeline\_notifications\_init();
notifications.done.pFence = &fence

// Now load a bunch of sounds:
for (iSound = 0; iSound < soundCount; iSound += 1) {
ma\_resource\_manager\_data\_source\_init(pResourceManager, pSoundFilePaths[iSound], flags, &notifications, &pSoundSources[iSound]);
}

// ... DO SOMETHING ELSE WHILE SOUNDS ARE LOADING ...

// Wait for loading of sounds to finish.
ma\_fence\_wait(&fence);
`

In the example above we used a fence for waiting until the entire file has been fully decoded. If
you only need to wait for the initialization of the internal decoder to complete, you can use the
`init` member of the `ma_resource_manager_pipeline_notifications` object:

`c
notifications.init.pFence = &fence
`

If a fence is not appropriate for your situation, you can instead use a callback that is fired on
an individual sound basis. This is done in a very similar way to fences:

`c
typedef struct
{
ma\_async\_notification\_callbacks cb;
void\* pMyData;
} my\_notification;

void my\_notification\_callback(ma\_async\_notification\* pNotification)
{
my\_notification *pMyNotification = (my\_notification*)pNotification;

// Do something in response to the sound finishing loading.
}

...

my\_notification myCallback;
myCallback.cb.onSignal = my\_notification\_callback;
myCallback.pMyData = pMyData;

ma\_resource\_manager\_pipeline\_notifications notifications = ma\_resource\_manager\_pipeline\_notifications\_init();
notifications.done.pNotification = &myCallback

ma\_resource\_manager\_data\_source\_init(pResourceManager, "my\_sound.wav", flags, &notifications, &mySound);
`

In the example above we just extend the `ma_async_notification_callbacks` object and pass an
instantiation into the `ma_resource_manager_pipeline_notifications` in the same way as we did with
the fence, only we set `pNotification` instead of `pFence`. You can set both of these at the same
time and they should both work as expected. If using the `pNotification` system, you need to ensure
your `ma_async_notification_callbacks` object stays valid.

6.2. Resource Manager Implementation Details
--------------------------------------------
Resources are managed in two main ways:

\* By storing the entire sound inside an in-memory buffer (referred to as a data buffer)
\* By streaming audio data on the fly (referred to as a data stream)

A resource managed data source (`ma_resource_manager_data_source`) encapsulates a data buffer or
data stream, depending on whether or not the data source was initialized with the
`MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM` flag. If so, it will make use of a
`ma_resource_manager_data_stream` object. Otherwise it will use a `ma_resource_manager_data_buffer`
object. Both of these objects are data sources which means they can be used with any
`ma_data_source_*()` API.

Another major feature of the resource manager is the ability to asynchronously decode audio files.
This relieves the audio thread of time-consuming decoding which can negatively affect scalability
due to the audio thread needing to complete it's work extremely quickly to avoid glitching.
Asynchronous decoding is achieved through a job system. There is a central multi-producer,
multi-consumer, fixed-capacity job queue. When some asynchronous work needs to be done, a job is
posted to the queue which is then read by a job thread. The number of job threads can be
configured for improved scalability, and job threads can all run in parallel without needing to
worry about the order of execution (how this is achieved is explained below).

When a sound is being loaded asynchronously, playback can begin before the sound has been fully
decoded. This enables the application to start playback of the sound quickly, while at the same
time allowing to resource manager to keep loading in the background. Since there may be less
threads than the number of sounds being loaded at a given time, a simple scheduling system is used
to keep decoding time balanced and fair. The resource manager solves this by splitting decoding
into chunks called pages. By default, each page is 1 second long. When a page has been decoded, a
new job will be posted to start decoding the next page. By dividing up decoding into pages, an
individual sound shouldn't ever delay every other sound from having their first page decoded. Of
course, when loading many sounds at the same time, there will always be an amount of time required
to process jobs in the queue so in heavy load situations there will still be some delay. To
determine if a data source is ready to have some frames read, use
`ma_resource_manager_data_source_get_available_frames()`. This will return the number of frames
available starting from the current position.

6.2.1. Job Queue
----------------
The resource manager uses a job queue which is multi-producer, multi-consumer, and fixed-capacity.
This job queue is not currently lock-free, and instead uses a spinlock to achieve thread-safety.
Only a fixed number of jobs can be allocated and inserted into the queue which is done through a
lock-free data structure for allocating an index into a fixed sized array, with reference counting
for mitigation of the ABA problem. The reference count is 32-bit.

For many types of jobs it's important that they execute in a specific order. In these cases, jobs
are executed serially. For the resource manager, serial execution of jobs is only required on a
per-object basis (per data buffer or per data stream). Each of these objects stores an execution
counter. When a job is posted it is associated with an execution counter. When the job is
processed, it checks if the execution counter of the job equals the execution counter of the
owning object and if so, processes the job. If the counters are not equal, the job will be posted
back onto the job queue for later processing. When the job finishes processing the execution order
of the main object is incremented. This system means the no matter how many job threads are
executing, decoding of an individual sound will always get processed serially. The advantage to
having multiple threads comes into play when loading multiple sounds at the same time.

The resource manager's job queue is not 100% lock-free and will use a spinlock to achieve
thread-safety for a very small section of code. This is only relevant when the resource manager
uses more than one job thread. If only using a single job thread, which is the default, the
lock should never actually wait in practice. The amount of time spent locking should be quite
short, but it's something to be aware of for those who have pedantic lock-free requirements and
need to use more than one job thread. There are plans to remove this lock in a future version.

In addition, posting a job will release a semaphore, which on Win32 is implemented with
`ReleaseSemaphore` and on POSIX platforms via a condition variable:

`c
pthread\_mutex\_lock(&pSemaphore->lock);
{
pSemaphore->value += 1;
pthread\_cond\_signal(&pSemaphore->cond);
}
pthread\_mutex\_unlock(&pSemaphore->lock);
`

Again, this is relevant for those with strict lock-free requirements in the audio thread. To avoid
this, you can use non-blocking mode (via the `MA_JOB_QUEUE_FLAG_NON_BLOCKING`
flag) and implement your own job processing routine (see the "Resource Manager" section above for
details on how to do this).

6.2.2. Data Buffers
-------------------
When the `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM` flag is excluded at initialization time, the
resource manager will try to load the data into an in-memory data buffer. Before doing so, however,
it will first check if the specified file is already loaded. If so, it will increment a reference
counter and just use the already loaded data. This saves both time and memory. When the data buffer
is uninitialized, the reference counter will be decremented. If the counter hits zero, the file
will be unloaded. This is a detail to keep in mind because it could result in excessive loading and
unloading of a sound. For example, the following sequence will result in a file be loaded twice,
once after the other:

`c
ma\_resource\_manager\_data\_source\_init(pResourceManager, "my\_file", ..., &myDataBuffer0); // Refcount = 1. Initial load.
ma\_resource\_manager\_data\_source\_uninit(&myDataBuffer0); // Refcount = 0. Unloaded.

ma\_resource\_manager\_data\_source\_init(pResourceManager, "my\_file", ..., &myDataBuffer1); // Refcount = 1. Reloaded because previous uninit() unloaded it.
ma\_resource\_manager\_data\_source\_uninit(&myDataBuffer1); // Refcount = 0. Unloaded.
`

A binary search tree (BST) is used for storing data buffers as it has good balance between
efficiency and simplicity. The key of the BST is a 64-bit hash of the file path that was passed
into `ma_resource_manager_data_source_init()`. The advantage of using a hash is that it saves
memory over storing the entire path, has faster comparisons, and results in a mostly balanced BST
due to the random nature of the hash. The disadvantages are that file names are case-sensitive and
there's a small chance of name collisions. If case-sensitivity is an issue, you should normalize
your file names to upper- or lower-case before initializing your data sources. If name collisions
become an issue, you'll need to change the name of one of the colliding names or just not use the
resource manager.

When a sound file has not already been loaded and the `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC`
flag is excluded, the file will be decoded synchronously by the calling thread. There are two
options for controlling how the audio is stored in the data buffer - encoded or decoded. When the
`MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE` option is excluded, the raw file data will be stored
in memory. Otherwise the sound will be decoded before storing it in memory. Synchronous loading is
a very simple and standard process of simply adding an item to the BST, allocating a block of
memory and then decoding (if `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE` is specified).

When the `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC` flag is specified, loading of the data buffer
is done asynchronously. In this case, a job is posted to the queue to start loading and then the
function immediately returns, setting an internal result code to `MA_BUSY`. This result code is
returned when the program calls `ma_resource_manager_data_source_result()`. When decoding has fully
completed `MA_SUCCESS` will be returned. This can be used to know if loading has fully completed.

When loading asynchronously, a single job is posted to the queue of the type
`MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE`. This involves making a copy of the file path and
associating it with job. When the job is processed by the job thread, it will first load the file
using the VFS associated with the resource manager. When using a custom VFS, it's important that it
be completely thread-safe because it will be used from one or more job threads at the same time.
Individual files should only ever be accessed by one thread at a time, however. After opening the
file via the VFS, the job will determine whether or not the file is being decoded. If not, it
simply allocates a block of memory and loads the raw file contents into it and returns. On the
other hand, when the file is being decoded, it will first allocate a decoder on the heap and
initialize it. Then it will check if the length of the file is known. If so it will allocate a
block of memory to store the decoded output and initialize it to silence. If the size is unknown,
it will allocate room for one page. After memory has been allocated, the first page will be
decoded. If the sound is shorter than a page, the result code will be set to `MA_SUCCESS` and the
completion event will be signalled and loading is now complete. If, however, there is more to
decode, a job with the code `MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE` is posted. This job
will decode the next page and perform the same process if it reaches the end. If there is more to
decode, the job will post another `MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE` job which will
keep on happening until the sound has been fully decoded. For sounds of an unknown length, each
page will be linked together as a linked list. Internally this is implemented via the
`ma_paged_audio_buffer` object.

6.2.3. Data Streams
-------------------
Data streams only ever store two pages worth of data for each instance. They are most useful for
large sounds like music tracks in games that would consume too much memory if fully decoded in
memory. After every frame from a page has been read, a job will be posted to load the next page
which is done from the VFS.

For data streams, the `MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC` flag will determine whether or
not initialization of the data source waits until the two pages have been decoded. When unset,
`ma_resource_manager_data_source_init()` will wait until the two pages have been loaded, otherwise
it will return immediately.

When frames are read from a data stream using `ma_resource_manager_data_source_read_pcm_frames()`,
`MA_BUSY` will be returned if there are no frames available. If there are some frames available,
but less than the number requested, `MA_SUCCESS` will be returned, but the actual number of frames
read will be less than the number requested. Due to the asynchronous nature of data streams,
seeking is also asynchronous. If the data stream is in the middle of a seek, `MA_BUSY` will be
returned when trying to read frames.

When `ma_resource_manager_data_source_read_pcm_frames()` results in a page getting fully consumed
a job is posted to load the next page. This will be posted from the same thread that called
`ma_resource_manager_data_source_read_pcm_frames()`.

Data streams are uninitialized by posting a job to the queue, but the function won't return until
that job has been processed. The reason for this is that the caller owns the data stream object and
therefore miniaudio needs to ensure everything completes before handing back control to the caller.
Also, if the data stream is uninitialized while pages are in the middle of decoding, they must
complete before destroying any underlying object and the job system handles this cleanly.

Note that when a new page needs to be loaded, a job will be posted to the resource manager's job
thread from the audio thread. You must keep in mind the details mentioned in the "Job Queue"
section above regarding locking when posting an event if you require a strictly lock-free audio
thread.

7. Node Graph
=============
miniaudio's routing infrastructure follows a node graph paradigm. The idea is that you create a
node whose outputs are attached to inputs of another node, thereby creating a graph. There are
different types of nodes, with each node in the graph processing input data to produce output,
which is then fed through the chain. Each node in the graph can apply their own custom effects. At
the start of the graph will usually be one or more data source nodes which have no inputs and
instead pull their data from a data source. At the end of the graph is an endpoint which represents
the end of the chain and is where the final output is ultimately extracted from.

Each node has a number of input buses and a number of output buses. An output bus from a node is
attached to an input bus of another. Multiple nodes can connect their output buses to another
node's input bus, in which case their outputs will be mixed before processing by the node. Below is
a diagram that illustrates a hypothetical node graph setup:

`
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Data flows left to right >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

+---------------+ +-----------------+
| Data Source 1 =----+ +----------+ +----= Low Pass Filter =----+
+---------------+ | | =----+ +-----------------+ | +----------+
+----= Splitter | +----= ENDPOINT |
+---------------+ | | =----+ +-----------------+ | +----------+
| Data Source 2 =----+ +----------+ +----= Echo / Delay =----+
+---------------+ +-----------------+
`

In the above graph, it starts with two data sources whose outputs are attached to the input of a
splitter node. It's at this point that the two data sources are mixed. After mixing, the splitter
performs it's processing routine and produces two outputs which is simply a duplication of the
input stream. One output is attached to a low pass filter, whereas the other output is attached to
a echo/delay. The outputs of the low pass filter and the echo are attached to the endpoint, and
since they're both connected to the same input bus, they'll be mixed.

Each input bus must be configured to accept the same number of channels, but the number of channels
used by input buses can be different to the number of channels for output buses in which case
miniaudio will automatically convert the input data to the output channel count before processing.
The number of channels of an output bus of one node must match the channel count of the input bus
it's attached to. The channel counts cannot be changed after the node has been initialized. If you
attempt to attach an output bus to an input bus with a different channel count, attachment will
fail.

To use a node graph, you first need to initialize a `ma_node_graph` object. This is essentially a
container around the entire graph. The `ma_node_graph` object is required for some thread-safety
issues which will be explained later. A `ma_node_graph` object is initialized using miniaudio's
standard config/init system:

`c
ma\_node\_graph\_config nodeGraphConfig = ma\_node\_graph\_config\_init(myChannelCount);

result = ma\_node\_graph\_init(&nodeGraphConfig, NULL, &nodeGraph); // Second parameter is a pointer to allocation callbacks.
if (result != MA\_SUCCESS) {
// Failed to initialize node graph.
}
`

When you initialize the node graph, you're specifying the channel count of the endpoint. The
endpoint is a special node which has one input bus and one output bus, both of which have the
same channel count, which is specified in the config. Any nodes that connect directly to the
endpoint must be configured such that their output buses have the same channel count. When you read
audio data from the node graph, it'll have the channel count you specified in the config. To read
data from the graph:

`c
ma\_uint32 framesRead;
result = ma\_node\_graph\_read\_pcm\_frames(&nodeGraph, pFramesOut, frameCount, &framesRead);
if (result != MA\_SUCCESS) {
// Failed to read data from the node graph.
}
`

When you read audio data, miniaudio starts at the node graph's endpoint node which then pulls in
data from its input attachments, which in turn recursively pull in data from their inputs, and so
on. At the start of the graph there will be some kind of data source node which will have zero
inputs and will instead read directly from a data source. The base nodes don't literally need to
read from a `ma_data_source` object, but they will always have some kind of underlying object that
sources some kind of audio. The `ma_data_source_node` node can be used to read from a
`ma_data_source`. Data is always in floating-point format and in the number of channels you
specified when the graph was initialized. The sample rate is defined by the underlying data sources.
It's up to you to ensure they use a consistent and appropriate sample rate.

The `ma_node` API is designed to allow custom nodes to be implemented with relative ease, but
miniaudio includes a few stock nodes for common functionality. This is how you would initialize a
node which reads directly from a data source (`ma_data_source_node`) which is an example of one
of the stock nodes that comes with miniaudio:

`c
ma\_data\_source\_node\_config config = ma\_data\_source\_node\_config\_init(pMyDataSource);

ma\_data\_source\_node dataSourceNode;
result = ma\_data\_source\_node\_init(&nodeGraph, &config, NULL, &dataSourceNode);
if (result != MA\_SUCCESS) {
// Failed to create data source node.
}
`

The data source node will use the output channel count to determine the channel count of the output
bus. There will be 1 output bus and 0 input buses (data will be drawn directly from the data
source). The data source must output to floating-point (`ma_format_f32`) or else an error will be
returned from `ma_data_source_node_init()`.

By default the node will not be attached to the graph. To do so, use `ma_node_attach_output_bus()`:

`c
result = ma\_node\_attach\_output\_bus(&dataSourceNode, 0, ma\_node\_graph\_get\_endpoint(&nodeGraph), 0);
if (result != MA\_SUCCESS) {
// Failed to attach node.
}
`

The code above connects the data source node directly to the endpoint. Since the data source node
has only a single output bus, the index will always be 0. Likewise, the endpoint only has a single
input bus which means the input bus index will also always be 0.

To detach a specific output bus, use `ma_node_detach_output_bus()`. To detach all output buses, use
`ma_node_detach_all_output_buses()`. If you want to just move the output bus from one attachment to
another, you do not need to detach first. You can just call `ma_node_attach_output_bus()` and it'll
deal with it for you.

Less frequently you may want to create a specialized node. This will be a node where you implement
your own processing callback to apply a custom effect of some kind. This is similar to initializing
one of the stock node types, only this time you need to specify a pointer to a vtable containing a
pointer to the processing function and the number of input and output buses. Example:

`c
static void my\_custom\_node\_process\_pcm\_frames(ma\_node *pNode, const float*\* ppFramesIn, ma\_uint32 *pFrameCountIn, float*\* ppFramesOut, ma\_uint32\* pFrameCountOut)
{
// Do some processing of ppFramesIn (one stream of audio data per input bus)
const float\* pFramesIn\_0 = ppFramesIn[0]; // Input bus @ index 0.
const float\* pFramesIn\_1 = ppFramesIn[1]; // Input bus @ index 1.
float\* pFramesOut\_0 = ppFramesOut[0]; // Output bus @ index 0.

// Do some processing. On input, `pFrameCountIn` will be the number of input frames in each
// buffer in `ppFramesIn` and `pFrameCountOut` will be the capacity of each of the buffers
// in `ppFramesOut`. On output, `pFrameCountIn` should be set to the number of input frames
// your node consumed and `pFrameCountOut` should be set the number of output frames that
// were produced.
//
// You should process as many frames as you can. If your effect consumes input frames at the
// same rate as output frames (always the case, unless you're doing resampling), you need
// only look at `ppFramesOut` and process that exact number of frames. If you're doing
// resampling, you'll need to be sure to set both `pFrameCountIn` and `pFrameCountOut`
// properly.
}

static ma\_node\_vtable my\_custom\_node\_vtable =
{
my\_custom\_node\_process\_pcm\_frames, // The function that will be called to process your custom node. This is where you'd implement your effect processing.
NULL, // Optional. A callback for calculating the number of input frames that are required to process a specified number of output frames.
2, // 2 input buses.
1, // 1 output bus.
0 // Default flags.
};

...

// Each bus needs to have a channel count specified. To do this you need to specify the channel
// counts in an array and then pass that into the node config.
ma\_uint32 inputChannels[2]; // Equal in size to the number of input channels specified in the vtable.
ma\_uint32 outputChannels[1]; // Equal in size to the number of output channels specified in the vtable.

inputChannels[0] = channelsIn;
inputChannels[1] = channelsIn;
outputChannels[0] = channelsOut;

ma\_node\_config nodeConfig = ma\_node\_config\_init();
nodeConfig.vtable = &my\_custom\_node\_vtable;
nodeConfig.pInputChannels = inputChannels;
nodeConfig.pOutputChannels = outputChannels;

ma\_node\_base node;
result = ma\_node\_init(&nodeGraph, &nodeConfig, NULL, &node);
if (result != MA\_SUCCESS) {
// Failed to initialize node.
}
`

When initializing a custom node, as in the code above, you'll normally just place your vtable in
static space. The number of input and output buses are specified as part of the vtable. If you need
a variable number of buses on a per-node bases, the vtable should have the relevant bus count set
to `MA_NODE_BUS_COUNT_UNKNOWN`. In this case, the bus count should be set in the node config:

`c
static ma\_node\_vtable my\_custom\_node\_vtable =
{
my\_custom\_node\_process\_pcm\_frames, // The function that will be called process your custom node. This is where you'd implement your effect processing.
NULL, // Optional. A callback for calculating the number of input frames that are required to process a specified number of output frames.
MA\_NODE\_BUS\_COUNT\_UNKNOWN, // The number of input buses is determined on a per-node basis.
1, // 1 output bus.
0 // Default flags.
};

...

ma\_node\_config nodeConfig = ma\_node\_config\_init();
nodeConfig.vtable = &my\_custom\_node\_vtable;
nodeConfig.inputBusCount = myBusCount; // <-- Since the vtable specifies MA\_NODE\_BUS\_COUNT\_UNKNOWN, the input bus count should be set here.
nodeConfig.pInputChannels = inputChannels; // <-- Make sure there are nodeConfig.inputBusCount elements in this array.
nodeConfig.pOutputChannels = outputChannels; // <-- The vtable specifies 1 output bus, so there must be 1 element in this array.
`

In the above example it's important to never set the `inputBusCount` and `outputBusCount` members
to anything other than their defaults if the vtable specifies an explicit count. They can only be
set if the vtable specifies MA\_NODE\_BUS\_COUNT\_UNKNOWN in the relevant bus count.

Most often you'll want to create a structure to encapsulate your node with some extra data. You
need to make sure the `ma_node_base` object is your first member of the structure:

`c
typedef struct
{
ma\_node\_base base; // <-- Make sure this is always the first member.
float someCustomData;
} my\_custom\_node;
`

By doing this, your object will be compatible with all `ma_node` APIs and you can attach it to the
graph just like any other node.

In the custom processing callback (`my_custom_node_process_pcm_frames()` in the example above), the
number of channels for each bus is what was specified by the config when the node was initialized
with `ma_node_init()`. In addition, all attachments to each of the input buses will have been
pre-mixed by miniaudio. The config allows you to specify different channel counts for each
individual input and output bus. It's up to the effect to handle it appropriate, and if it can't,
return an error in it's initialization routine.

Custom nodes can be assigned some flags to describe their behaviour. These are set via the vtable
and include the following:

+-----------------------------------------+---------------------------------------------------+
| Flag Name | Description |
+-----------------------------------------+---------------------------------------------------+
| MA\_NODE\_FLAG\_PASSTHROUGH | Useful for nodes that do not do any kind of audio |
| | processing, but are instead used for tracking |
| | time, handling events, etc. Also used by the |
| | internal endpoint node. It reads directly from |
| | the input bus to the output bus. Nodes with this |
| | flag must have exactly 1 input bus and 1 output |
| | bus, and both buses must have the same channel |
| | counts. |
+-----------------------------------------+---------------------------------------------------+
| MA\_NODE\_FLAG\_CONTINUOUS\_PROCESSING | Causes the processing callback to be called even |
| | when no data is available to be read from input |
| | attachments. When a node has at least one input |
| | bus, but there are no inputs attached or the |
| | inputs do not deliver any data, the node's |
| | processing callback will not get fired. This flag |
| | will make it so the callback is always fired |
| | regardless of whether or not any input data is |
| | received. This is useful for effects like |
| | echos where there will be a tail of audio data |
| | that still needs to be processed even when the |
| | original data sources have reached their ends. It |
| | may also be useful for nodes that must always |
| | have their processing callback fired when there |
| | are no inputs attached. |
+-----------------------------------------+---------------------------------------------------+
| MA\_NODE\_FLAG\_ALLOW\_NULL\_INPUT | Used in conjunction with |
| | `MA_NODE_FLAG_CONTINUOUS_PROCESSING`. When this |
| | is set, the `ppFramesIn` parameter of the |
| | processing callback will be set to NULL when |
| | there are no input frames are available. When |
| | this is unset, silence will be posted to the |
| | processing callback. |
+-----------------------------------------+---------------------------------------------------+
| MA\_NODE\_FLAG\_DIFFERENT\_PROCESSING\_RATES | Used to tell miniaudio that input and output |
| | frames are processed at different rates. You |
| | should set this for any nodes that perform |
| | resampling. |
+-----------------------------------------+---------------------------------------------------+
| MA\_NODE\_FLAG\_SILENT\_OUTPUT | Used to tell miniaudio that a node produces only |
| | silent output. This is useful for nodes where you |
| | don't want the output to contribute to the final |
| | mix. An example might be if you want split your |
| | stream and have one branch be output to a file. |
| | When using this flag, you should avoid writing to |
| | the output buffer of the node's processing |
| | callback because miniaudio will ignore it anyway. |
+-----------------------------------------+---------------------------------------------------+

If you need to make a copy of an audio stream for effect processing you can use a splitter node
called `ma_splitter_node`. This takes has 1 input bus and splits the stream into 2 output buses.
You can use it like this:

`c
ma\_splitter\_node\_config splitterNodeConfig = ma\_splitter\_node\_config\_init(channels);

ma\_splitter\_node splitterNode;
result = ma\_splitter\_node\_init(&nodeGraph, &splitterNodeConfig, NULL, &splitterNode);
if (result != MA\_SUCCESS) {
// Failed to create node.
}

// Attach your output buses to two different input buses (can be on two different nodes).
ma\_node\_attach\_output\_bus(&splitterNode, 0, ma\_node\_graph\_get\_endpoint(&nodeGraph), 0); // Attach directly to the endpoint.
ma\_node\_attach\_output\_bus(&splitterNode, 1, &myEffectNode, 0); // Attach to input bus 0 of some effect node.
`

The volume of an output bus can be configured on a per-bus basis:

`c
ma\_node\_set\_output\_bus\_volume(&splitterNode, 0, 0.5f);
ma\_node\_set\_output\_bus\_volume(&splitterNode, 1, 0.5f);
`

In the code above we're using the splitter node from before and changing the volume of each of the
copied streams.

You can start and stop a node with the following:

`c
ma\_node\_set\_state(&splitterNode, ma\_node\_state\_started); // The default state.
ma\_node\_set\_state(&splitterNode, ma\_node\_state\_stopped);
`

By default the node is in a started state, but since it won't be connected to anything won't
actually be invoked by the node graph until it's connected. When you stop a node, data will not be
read from any of its input connections. You can use this property to stop a group of sounds
atomically.

You can configure the initial state of a node in it's config:

`c
nodeConfig.initialState = ma\_node\_state\_stopped;
`

Note that for the stock specialized nodes, all of their configs will have a `nodeConfig` member
which is the config to use with the base node. This is where the initial state can be configured
for specialized nodes:

`c
dataSourceNodeConfig.nodeConfig.initialState = ma\_node\_state\_stopped;
`

When using a specialized node like `ma_data_source_node` or `ma_splitter_node`, be sure to not
modify the `vtable` member of the `nodeConfig` object.

7.1. Timing
-----------
The node graph supports starting and stopping nodes at scheduled times. This is especially useful
for data source nodes where you want to get the node set up, but only start playback at a specific
time. There are two clocks: local and global.

A local clock is per-node, whereas the global clock is per graph. Scheduling starts and stops can
only be done based on the global clock because the local clock will not be running while the node
is stopped. The global clocks advances whenever `ma_node_graph_read_pcm_frames()` is called. On the
other hand, the local clock only advances when the node's processing callback is fired, and is
advanced based on the output frame count.

To retrieve the global time, use `ma_node_graph_get_time()`. The global time can be set with
`ma_node_graph_set_time()` which might be useful if you want to do seeking on a global timeline.
Getting and setting the local time is similar. Use `ma_node_get_time()` to retrieve the local time,
and `ma_node_set_time()` to set the local time. The global and local times will be advanced by the
audio thread, so care should be taken to avoid data races. Ideally you should avoid calling these
outside of the node processing callbacks which are always run on the audio thread.

There is basic support for scheduling the starting and stopping of nodes. You can only schedule one
start and one stop at a time. This is mainly intended for putting nodes into a started or stopped
state in a frame-exact manner. Without this mechanism, starting and stopping of a node is limited
to the resolution of a call to `ma_node_graph_read_pcm_frames()` which would typically be in blocks
of several milliseconds. The following APIs can be used for scheduling node states:

`c
ma\_node\_set\_state\_time()
ma\_node\_get\_state\_time()
`

The time is absolute and must be based on the global clock. An example is below:

`c
ma\_node\_set\_state\_time(&myNode, ma\_node\_state\_started, sampleRate\*1); // Delay starting to 1 second.
ma\_node\_set\_state\_time(&myNode, ma\_node\_state\_stopped, sampleRate\*5); // Delay stopping to 5 seconds.
`

An example for changing the state using a relative time.

`c
ma\_node\_set\_state\_time(&myNode, ma\_node\_state\_started, sampleRate\*1 + ma\_node\_graph\_get\_time(&myNodeGraph));
ma\_node\_set\_state\_time(&myNode, ma\_node\_state\_stopped, sampleRate\*5 + ma\_node\_graph\_get\_time(&myNodeGraph));
`

Note that due to the nature of multi-threading the times may not be 100% exact. If this is an
issue, consider scheduling state changes from within a processing callback. An idea might be to
have some kind of passthrough trigger node that is used specifically for tracking time and handling
events.

7.2. Thread Safety and Locking
------------------------------
When processing audio, it's ideal not to have any kind of locking in the audio thread. Since it's
expected that `ma_node_graph_read_pcm_frames()` would be run on the audio thread, it does so
without the use of any locks. This section discusses the implementation used by miniaudio and goes
over some of the compromises employed by miniaudio to achieve this goal. Note that the current
implementation may not be ideal - feedback and critiques are most welcome.

The node graph API is not *entirely* lock-free. Only `ma_node_graph_read_pcm_frames()` is expected
to be lock-free. Attachment, detachment and uninitialization of nodes use locks to simplify the
implementation, but are crafted in a way such that such locking is not required when reading audio
data from the graph. Locking in these areas are achieved by means of spinlocks.

The main complication with keeping `ma_node_graph_read_pcm_frames()` lock-free stems from the fact
that a node can be uninitialized, and it's memory potentially freed, while in the middle of being
processed on the audio thread. There are times when the audio thread will be referencing a node,
which means the uninitialization process of a node needs to make sure it delays returning until the
audio thread is finished so that control is not handed back to the caller thereby giving them a
chance to free the node's memory.

When the audio thread is processing a node, it does so by reading from each of the output buses of
the node. In order for a node to process data for one of its output buses, it needs to read from
each of its input buses, and so on an so forth. It follows that once all output buses of a node
are detached, the node as a whole will be disconnected and no further processing will occur unless
it's output buses are reattached, which won't be happening when the node is being uninitialized.
By having `ma_node_detach_output_bus()` wait until the audio thread is finished with it, we can
simplify a few things, at the expense of making `ma_node_detach_output_bus()` a bit slower. By
doing this, the implementation of `ma_node_uninit()` becomes trivial - just detach all output
nodes, followed by each of the attachments to each of its input nodes, and then do any final clean
up.

With the above design, the worst-case scenario is `ma_node_detach_output_bus()` taking as long as
it takes to process the output bus being detached. This will happen if it's called at just the
wrong moment where the audio thread has just iterated it and has just started processing. The
caller of `ma_node_detach_output_bus()` will stall until the audio thread is finished, which
includes the cost of recursively processing its inputs. This is the biggest compromise made with
the approach taken by miniaudio for its lock-free processing system. The cost of detaching nodes
earlier in the pipeline (data sources, for example) will be cheaper than the cost of detaching
higher level nodes, such as some kind of final post-processing endpoint. If you need to do mass
detachments, detach starting from the lowest level nodes and work your way towards the final
endpoint node (but don't try detaching the node graph's endpoint). If the audio thread is not
running, detachment will be fast and detachment in any order will be the same. The reason nodes
need to wait for their input attachments to complete is due to the potential for desyncs between
data sources. If the node was to terminate processing mid way through processing its inputs,
there's a chance that some of the underlying data sources will have been read, but then others not.
That will then result in a potential desynchronization when detaching and reattaching higher-level
nodes. A possible solution to this is to have an option when detaching to terminate processing
before processing all input attachments which should be fairly simple.

Another compromise, albeit less significant, is locking when attaching and detaching nodes. This
locking is achieved by means of a spinlock in order to reduce memory overhead. A lock is present
for each input bus and output bus. When an output bus is connected to an input bus, both the output
bus and input bus is locked. This locking is specifically for attaching and detaching across
different threads and does not affect `ma_node_graph_read_pcm_frames()` in any way. The locking and
unlocking is mostly self-explanatory, but a slightly less intuitive aspect comes into it when
considering that iterating over attachments must not break as a result of attaching or detaching a
node while iteration is occurring.

Attaching and detaching are both quite simple. When an output bus of a node is attached to an input
bus of another node, it's added to a linked list. Basically, an input bus is a linked list, where
each item in the list is and output bus. We have some intentional (and convenient) restrictions on
what can done with the linked list in order to simplify the implementation. First of all, whenever
something needs to iterate over the list, it must do so in a forward direction. Backwards iteration
is not supported. Also, items can only be added to the start of the list.

The linked list is a doubly-linked list where each item in the list (an output bus) holds a pointer
to the next item in the list, and another to the previous item. A pointer to the previous item is
only required for fast detachment of the node - it is never used in iteration. This is an
important property because it means from the perspective of iteration, attaching and detaching of
an item can be done with a single atomic assignment. This is exploited by both the attachment and
detachment process. When attaching the node, the first thing that is done is the setting of the
local "next" and "previous" pointers of the node. After that, the item is "attached" to the list
by simply performing an atomic exchange with the head pointer. After that, the node is "attached"
to the list from the perspective of iteration. Even though the "previous" pointer of the next item
hasn't yet been set, from the perspective of iteration it's been attached because iteration will
only be happening in a forward direction which means the "previous" pointer won't actually ever get
used. The same general process applies to detachment. See `ma_node_attach_output_bus()` and
`ma_node_detach_output_bus()` for the implementation of this mechanism.

8. Decoding
===========
The `ma_decoder` API is used for reading audio files. Decoders are completely decoupled from
devices and can be used independently. Built-in support is included for the following formats:

+---------+
| Format |
+---------+
| WAV |
| MP3 |
| FLAC |
+---------+

You can disable the built-in decoders by specifying one or more of the following options before the
miniaudio implementation:

`c
#define MA\_NO\_WAV
#define MA\_NO\_MP3
#define MA\_NO\_FLAC
`

miniaudio supports the ability to plug in custom decoders. See the section below for details on how
to use custom decoders.

A decoder can be initialized from a file with `ma_decoder_init_file()`, a block of memory with
`ma_decoder_init_memory()`, or from data delivered via callbacks with `ma_decoder_init()`. Here is
an example for loading a decoder from a file:

`c
ma\_decoder decoder;
ma\_result result = ma\_decoder\_init\_file("MySong.mp3", NULL, &decoder);
if (result != MA\_SUCCESS) {
return false; // An error occurred.
}

...

ma\_decoder\_uninit(&decoder);
`

When initializing a decoder, you can optionally pass in a pointer to a `ma_decoder_config` object
(the `NULL` argument in the example above) which allows you to configure the output format, channel
count, sample rate and channel map:

`c
ma\_decoder\_config config = ma\_decoder\_config\_init(ma\_format\_f32, 2, 48000);
`

When passing in `NULL` for decoder config in `ma_decoder_init*()`, the output format will be the
same as that defined by the decoding backend.

Data is read from the decoder as PCM frames. This will output the number of PCM frames actually
read. If this is less than the requested number of PCM frames it means you've reached the end. The
return value will be `MA_AT_END` if no samples have been read and the end has been reached.

`c
ma\_result result = ma\_decoder\_read\_pcm\_frames(pDecoder, pFrames, framesToRead, &framesRead);
if (framesRead < framesToRead) {
// Reached the end.
}
`

You can also seek to a specific frame like so:

`c
ma\_result result = ma\_decoder\_seek\_to\_pcm\_frame(pDecoder, targetFrame);
if (result != MA\_SUCCESS) {
return false; // An error occurred.
}
`

If you want to loop back to the start, you can simply seek back to the first PCM frame:

`c
ma\_decoder\_seek\_to\_pcm\_frame(pDecoder, 0);
`

When loading a decoder, miniaudio uses a trial and error technique to find the appropriate decoding
backend. This can be unnecessarily inefficient if the type is already known. In this case you can
use `encodingFormat` variable in the device config to specify a specific encoding format you want
to decode:

`c
decoderConfig.encodingFormat = ma\_encoding\_format\_wav;
`

See the `ma_encoding_format` enum for possible encoding formats.

The `ma_decoder_init_file()` API will try using the file extension to determine which decoding
backend to prefer.

8.1. Custom Decoders
--------------------
It's possible to implement a custom decoder and plug it into miniaudio. This is extremely useful
when you want to use the `ma_decoder` API, but need to support an encoding format that's not one of
the stock formats supported by miniaudio. This can be put to particularly good use when using the
`ma_engine` and/or `ma_resource_manager` APIs because they use `ma_decoder` internally. If, for
example, you wanted to support Opus, you can do so with a custom decoder (there if a reference
Opus decoder in the "extras" folder of the miniaudio repository which uses libopus + libopusfile).

A custom decoder must implement a data source. A vtable called `ma_decoding_backend_vtable` needs
to be implemented which is then passed into the decoder config:

`c
ma\_decoding\_backend\_vtable\* pCustomBackendVTables[] =
{
&g\_ma\_decoding\_backend\_vtable\_libvorbis,
&g\_ma\_decoding\_backend\_vtable\_libopus
};

...

decoderConfig = ma\_decoder\_config\_init\_default();
decoderConfig.pCustomBackendUserData = NULL;
decoderConfig.ppCustomBackendVTables = pCustomBackendVTables;
decoderConfig.customBackendCount = sizeof(pCustomBackendVTables) / sizeof(pCustomBackendVTables[0]);
`

The `ma_decoding_backend_vtable` vtable has the following functions:

`
onInit
onInitFile
onInitFileW
onInitMemory
onUninit
`

There are only two functions that must be implemented - `onInit` and `onUninit`. The other
functions can be implemented for a small optimization for loading from a file path or memory. If
these are not specified, miniaudio will deal with it for you via a generic implementation.

When you initialize a custom data source (by implementing the `onInit` function in the vtable) you
will need to output a pointer to a `ma_data_source` which implements your custom decoder. See the
section about data sources for details on how to implement this. Alternatively, see the
"custom\_decoders" example in the miniaudio repository.

The `onInit` function takes a pointer to some callbacks for the purpose of reading raw audio data
from some arbitrary source. You'll use these functions to read from the raw data and perform the
decoding. When you call them, you will pass in the `pReadSeekTellUserData` pointer to the relevant
parameter.

The `pConfig` parameter in `onInit` can be used to configure the backend if appropriate. It's only
used as a hint and can be ignored. However, if any of the properties are relevant to your decoder,
an optimal implementation will handle the relevant properties appropriately.

If memory allocation is required, it should be done so via the specified allocation callbacks if
possible (the `pAllocationCallbacks` parameter).

If an error occurs when initializing the decoder, you should leave `ppBackend` unset, or set to
NULL, and make sure everything is cleaned up appropriately and an appropriate result code returned.
When multiple custom backends are specified, miniaudio will cycle through the vtables in the order
they're listed in the array that's passed into the decoder config so it's important that your
initialization routine is clean.

When a decoder is uninitialized, the `onUninit` callback will be fired which will give you an
opportunity to clean up and internal data.

9. Encoding
===========
The `ma_encoding` API is used for writing audio files. The only supported output format is WAV.
This can be disabled by specifying the following option before the implementation of miniaudio:

`c
#define MA\_NO\_WAV
`

An encoder can be initialized to write to a file with `ma_encoder_init_file()` or from data
delivered via callbacks with `ma_encoder_init()`. Below is an example for initializing an encoder
to output to a file.

`c
ma\_encoder\_config config = ma\_encoder\_config\_init(ma\_encoding\_format\_wav, FORMAT, CHANNELS, SAMPLE\_RATE);
ma\_encoder encoder;
ma\_result result = ma\_encoder\_init\_file("my\_file.wav", &config, &encoder);
if (result != MA\_SUCCESS) {
// Error
}

...

ma\_encoder\_uninit(&encoder);
`

When initializing an encoder you must specify a config which is initialized with
`ma_encoder_config_init()`. Here you must specify the file type, the output sample format, output
channel count and output sample rate. The following file types are supported:

+------------------------+-------------+
| Enum | Description |
+------------------------+-------------+
| ma\_encoding\_format\_wav | WAV |
+------------------------+-------------+

If the format, channel count or sample rate is not supported by the output file type an error will
be returned. The encoder will not perform data conversion so you will need to convert it before
outputting any audio data. To output audio data, use `ma_encoder_write_pcm_frames()`, like in the
example below:

`c
ma\_uint64 framesWritten;
result = ma\_encoder\_write\_pcm\_frames(&encoder, pPCMFramesToWrite, framesToWrite, &framesWritten);
if (result != MA\_SUCCESS) {
... handle error ...
}
`

The `framesWritten` variable will contain the number of PCM frames that were actually written. This
is optionally and you can pass in `NULL` if you need this.

Encoders must be uninitialized with `ma_encoder_uninit()`.

10. Data Conversion
===================
A data conversion API is included with miniaudio which supports the majority of data conversion
requirements. This supports conversion between sample formats, channel counts (with channel
mapping) and sample rates.

10.1. Sample Format Conversion
------------------------------
Conversion between sample formats is achieved with the `ma_pcm_*_to_*()`, `ma_pcm_convert()` and
`ma_convert_pcm_frames_format()` APIs. Use `ma_pcm_*_to_*()` to convert between two specific
formats. Use `ma_pcm_convert()` to convert based on a `ma_format` variable. Use
`ma_convert_pcm_frames_format()` to convert PCM frames where you want to specify the frame count
and channel count as a variable instead of the total sample count.

10.1.1. Dithering
-----------------
Dithering can be set using the ditherMode parameter.

The different dithering modes include the following, in order of efficiency:

+-----------+--------------------------+
| Type | Enum Token |
+-----------+--------------------------+
| None | ma\_dither\_mode\_none |
| Rectangle | ma\_dither\_mode\_rectangle |
| Triangle | ma\_dither\_mode\_triangle |
+-----------+--------------------------+

Note that even if the dither mode is set to something other than `ma_dither_mode_none`, it will be
ignored for conversions where dithering is not needed. Dithering is available for the following
conversions:

`
s16 -> u8
s24 -> u8
s32 -> u8
f32 -> u8
s24 -> s16
s32 -> s16
f32 -> s16
`

Note that it is not an error to pass something other than ma\_dither\_mode\_none for conversions where
dither is not used. It will just be ignored.

10.2. Channel Conversion
------------------------
Channel conversion is used for channel rearrangement and conversion from one channel count to
another. The `ma_channel_converter` API is used for channel conversion. Below is an example of
initializing a simple channel converter which converts from mono to stereo.

`c
ma\_channel\_converter\_config config = ma\_channel\_converter\_config\_init(
ma\_format, // Sample format
1, // Input channels
NULL, // Input channel map
2, // Output channels
NULL, // Output channel map
ma\_channel\_mix\_mode\_default); // The mixing algorithm to use when combining channels.

result = ma\_channel\_converter\_init(&config, NULL, &converter);
if (result != MA\_SUCCESS) {
// Error.
}
`

To perform the conversion simply call `ma_channel_converter_process_pcm_frames()` like so:

`c
ma\_result result = ma\_channel\_converter\_process\_pcm\_frames(&converter, pFramesOut, pFramesIn, frameCount);
if (result != MA\_SUCCESS) {
// Error.
}
`

It is up to the caller to ensure the output buffer is large enough to accommodate the new PCM
frames.

Input and output PCM frames are always interleaved. Deinterleaved layouts are not supported.

10.2.1. Channel Mapping
-----------------------
In addition to converting from one channel count to another, like the example above, the channel
converter can also be used to rearrange channels. When initializing the channel converter, you can
optionally pass in channel maps for both the input and output frames. If the channel counts are the
same, and each channel map contains the same channel positions with the exception that they're in
a different order, a simple shuffling of the channels will be performed. If, however, there is not
a 1:1 mapping of channel positions, or the channel counts differ, the input channels will be mixed
based on a mixing mode which is specified when initializing the `ma_channel_converter_config`
object.

When converting from mono to multi-channel, the mono channel is simply copied to each output
channel. When going the other way around, the audio of each output channel is simply averaged and
copied to the mono channel.

In more complicated cases blending is used. The `ma_channel_mix_mode_simple` mode will drop excess
channels and silence extra channels. For example, converting from 4 to 2 channels, the 3rd and 4th
channels will be dropped, whereas converting from 2 to 4 channels will put silence into the 3rd and
4th channels.

The `ma_channel_mix_mode_rectangle` mode uses spacial locality based on a rectangle to compute a
simple distribution between input and output. Imagine sitting in the middle of a room, with
speakers on the walls representing channel positions. The `MA_CHANNEL_FRONT_LEFT` position can be
thought of as being in the corner of the front and left walls.

Finally, the `ma_channel_mix_mode_custom_weights` mode can be used to use custom user-defined
weights. Custom weights can be passed in as the last parameter of
`ma_channel_converter_config_init()`.

Predefined channel maps can be retrieved with `ma_channel_map_init_standard()`. This takes a
`ma_standard_channel_map` enum as its first parameter, which can be one of the following:

+-----------------------------------+-----------------------------------------------------------+
| Name | Description |
+-----------------------------------+-----------------------------------------------------------+
| ma\_standard\_channel\_map\_default | Default channel map used by miniaudio. See below. |
| ma\_standard\_channel\_map\_microsoft | Channel map used by Microsoft's bitfield channel maps. |
| ma\_standard\_channel\_map\_alsa | Default ALSA channel map. |
| ma\_standard\_channel\_map\_rfc3551 | RFC 3551. Based on AIFF. |
| ma\_standard\_channel\_map\_flac | FLAC channel map. |
| ma\_standard\_channel\_map\_vorbis | Vorbis channel map. |
| ma\_standard\_channel\_map\_sound4 | FreeBSD's sound(4). |
| ma\_standard\_channel\_map\_sndio | sndio channel map. http://www.sndio.org/tips.html. |
| ma\_standard\_channel\_map\_webaudio | https://webaudio.github.io/web-audio-api/#ChannelOrdering |
+-----------------------------------+-----------------------------------------------------------+

Below are the channel maps used by default in miniaudio (`ma_standard_channel_map_default`):

+---------------+---------------------------------+
| Channel Count | Mapping |
+---------------+---------------------------------+
| 1 (Mono) | 0: MA\_CHANNEL\_MONO |
+---------------+---------------------------------+
| 2 (Stereo) | 0: MA\_CHANNEL\_FRONT\_LEFT <br> |
| | 1: MA\_CHANNEL\_FRONT\_RIGHT |
+---------------+---------------------------------+
| 3 | 0: MA\_CHANNEL\_FRONT\_LEFT <br> |
| | 1: MA\_CHANNEL\_FRONT\_RIGHT <br> |
| | 2: MA\_CHANNEL\_FRONT\_CENTER |
+---------------+---------------------------------+
| 4 (Surround) | 0: MA\_CHANNEL\_FRONT\_LEFT <br> |
| | 1: MA\_CHANNEL\_FRONT\_RIGHT <br> |
| | 2: MA\_CHANNEL\_FRONT\_CENTER <br> |
| | 3: MA\_CHANNEL\_BACK\_CENTER |
+---------------+---------------------------------+
| 5 | 0: MA\_CHANNEL\_FRONT\_LEFT <br> |
| | 1: MA\_CHANNEL\_FRONT\_RIGHT <br> |
| | 2: MA\_CHANNEL\_FRONT\_CENTER <br> |
| | 3: MA\_CHANNEL\_BACK\_LEFT <br> |
| | 4: MA\_CHANNEL\_BACK\_RIGHT |
+---------------+---------------------------------+
| 6 (5.1) | 0: MA\_CHANNEL\_FRONT\_LEFT <br> |
| | 1: MA\_CHANNEL\_FRONT\_RIGHT <br> |
| | 2: MA\_CHANNEL\_FRONT\_CENTER <br> |
| | 3: MA\_CHANNEL\_LFE <br> |
| | 4: MA\_CHANNEL\_SIDE\_LEFT <br> |
| | 5: MA\_CHANNEL\_SIDE\_RIGHT |
+---------------+---------------------------------+
| 7 | 0: MA\_CHANNEL\_FRONT\_LEFT <br> |
| | 1: MA\_CHANNEL\_FRONT\_RIGHT <br> |
| | 2: MA\_CHANNEL\_FRONT\_CENTER <br> |
| | 3: MA\_CHANNEL\_LFE <br> |
| | 4: MA\_CHANNEL\_BACK\_CENTER <br> |
| | 4: MA\_CHANNEL\_SIDE\_LEFT <br> |
| | 5: MA\_CHANNEL\_SIDE\_RIGHT |
+---------------+---------------------------------+
| 8 (7.1) | 0: MA\_CHANNEL\_FRONT\_LEFT <br> |
| | 1: MA\_CHANNEL\_FRONT\_RIGHT <br> |
| | 2: MA\_CHANNEL\_FRONT\_CENTER <br> |
| | 3: MA\_CHANNEL\_LFE <br> |
| | 4: MA\_CHANNEL\_BACK\_LEFT <br> |
| | 5: MA\_CHANNEL\_BACK\_RIGHT <br> |
| | 6: MA\_CHANNEL\_SIDE\_LEFT <br> |
| | 7: MA\_CHANNEL\_SIDE\_RIGHT |
+---------------+---------------------------------+
| Other | All channels set to 0. This |
| | is equivalent to the same |
| | mapping as the device. |
+---------------+---------------------------------+

10.3. Resampling
----------------
Resampling is achieved with the `ma_resampler` object. To create a resampler object, do something
like the following:

`c
ma\_resampler\_config config = ma\_resampler\_config\_init(
ma\_format\_s16,
channels,
sampleRateIn,
sampleRateOut,
ma\_resample\_algorithm\_linear);

ma\_resampler resampler;
ma\_result result = ma\_resampler\_init(&config, NULL, &resampler);
if (result != MA\_SUCCESS) {
// An error occurred...
}
`

Do the following to uninitialize the resampler:

`c
ma\_resampler\_uninit(&resampler);
`

The following example shows how data can be processed

`c
ma\_uint64 frameCountIn = 1000;
ma\_uint64 frameCountOut = 2000;
ma\_result result = ma\_resampler\_process\_pcm\_frames(&resampler, pFramesIn, &frameCountIn, pFramesOut, &frameCountOut);
if (result != MA\_SUCCESS) {
// An error occurred...
}

// At this point, frameCountIn contains the number of input frames that were consumed and frameCountOut contains the
// number of output frames written.
`

To initialize the resampler you first need to set up a config (`ma_resampler_config`) with
`ma_resampler_config_init()`. You need to specify the sample format you want to use, the number of
channels, the input and output sample rate, and the algorithm.

The sample format can be either `ma_format_s16` or `ma_format_f32`. If you need a different format
you will need to perform pre- and post-conversions yourself where necessary. Note that the format
is the same for both input and output. The format cannot be changed after initialization.

The resampler supports multiple channels and is always interleaved (both input and output). The
channel count cannot be changed after initialization.

The sample rates can be anything other than zero, and are always specified in hertz. They should be
set to something like 44100, etc. The sample rate is the only configuration property that can be
changed after initialization.

The miniaudio resampler has built-in support for the following algorithms:

+-----------+------------------------------+
| Algorithm | Enum Token |
+-----------+------------------------------+
| Linear | ma\_resample\_algorithm\_linear |
| Custom | ma\_resample\_algorithm\_custom |
+-----------+------------------------------+

The algorithm cannot be changed after initialization.

Processing always happens on a per PCM frame basis and always assumes interleaved input and output.
De-interleaved processing is not supported. To process frames, use
`ma_resampler_process_pcm_frames()`. On input, this function takes the number of output frames you
can fit in the output buffer and the number of input frames contained in the input buffer. On
output these variables contain the number of output frames that were written to the output buffer
and the number of input frames that were consumed in the process. You can pass in NULL for the
input buffer in which case it will be treated as an infinitely large buffer of zeros. The output
buffer can also be NULL, in which case the processing will be treated as seek.

The sample rate can be changed dynamically on the fly. You can change this with explicit sample
rates with `ma_resampler_set_rate()` and also with a decimal ratio with
`ma_resampler_set_rate_ratio()`. The ratio is in/out.

Sometimes it's useful to know exactly how many input frames will be required to output a specific
number of frames. You can calculate this with `ma_resampler_get_required_input_frame_count()`.
Likewise, it's sometimes useful to know exactly how many frames would be output given a certain
number of input frames. You can do this with `ma_resampler_get_expected_output_frame_count()`.

Due to the nature of how resampling works, the resampler introduces some latency. This can be
retrieved in terms of both the input rate and the output rate with
`ma_resampler_get_input_latency()` and `ma_resampler_get_output_latency()`.

10.3.1. Resampling Algorithms
-----------------------------
The choice of resampling algorithm depends on your situation and requirements.

10.3.1.1. Linear Resampling
---------------------------
The linear resampler is the fastest, but comes at the expense of poorer quality. There is, however,
some control over the quality of the linear resampler which may make it a suitable option depending
on your requirements.

The linear resampler performs low-pass filtering before or after downsampling or upsampling,
depending on the sample rates you're converting between. When decreasing the sample rate, the
low-pass filter will be applied before downsampling. When increasing the rate it will be performed
after upsampling. By default a fourth order low-pass filter will be applied. This can be configured
via the `lpfOrder` configuration variable. Setting this to 0 will disable filtering.

The low-pass filter has a cutoff frequency which defaults to half the sample rate of the lowest of
the input and output sample rates (Nyquist Frequency).

The API for the linear resampler is the same as the main resampler API, only it's called
`ma_linear_resampler`.

10.3.2. Custom Resamplers
-------------------------
You can implement a custom resampler by using the `ma_resample_algorithm_custom` resampling
algorithm and setting a vtable in the resampler config:

`c
ma\_resampler\_config config = ma\_resampler\_config\_init(..., ma\_resample\_algorithm\_custom);
config.pBackendVTable = &g\_customResamplerVTable;
`

Custom resamplers are useful if the stock algorithms are not appropriate for your use case. You
need to implement the required functions in `ma_resampling_backend_vtable`. Note that not all
functions in the vtable need to be implemented, but if it's possible to implement, they should be.

You can use the `ma_linear_resampler` object for an example on how to implement the vtable. The
`onGetHeapSize` callback is used to calculate the size of any internal heap allocation the custom
resampler will need to make given the supplied config. When you initialize the resampler via the
`onInit` callback, you'll be given a pointer to a heap allocation which is where you should store
the heap allocated data. You should not free this data in `onUninit` because miniaudio will manage
it for you.

The `onProcess` callback is where the actual resampling takes place. On input, `pFrameCountIn`
points to a variable containing the number of frames in the `pFramesIn` buffer and
`pFrameCountOut` points to a variable containing the capacity in frames of the `pFramesOut` buffer.
On output, `pFrameCountIn` should be set to the number of input frames that were fully consumed,
whereas `pFrameCountOut` should be set to the number of frames that were written to `pFramesOut`.

The `onSetRate` callback is optional and is used for dynamically changing the sample rate. If
dynamic rate changes are not supported, you can set this callback to NULL.

The `onGetInputLatency` and `onGetOutputLatency` functions are used for retrieving the latency in
input and output rates respectively. These can be NULL in which case latency calculations will be
assumed to be NULL.

The `onGetRequiredInputFrameCount` callback is used to give miniaudio a hint as to how many input
frames are required to be available to produce the given number of output frames. Likewise, the
`onGetExpectedOutputFrameCount` callback is used to determine how many output frames will be
produced given the specified number of input frames. miniaudio will use these as a hint, but they
are optional and can be set to NULL if you're unable to implement them.

10.4. General Data Conversion
-----------------------------
The `ma_data_converter` API can be used to wrap sample format conversion, channel conversion and
resampling into one operation. This is what miniaudio uses internally to convert between the format
requested when the device was initialized and the format of the backend's native device. The API
for general data conversion is very similar to the resampling API. Create a `ma_data_converter`
object like this:

`c
ma\_data\_converter\_config config = ma\_data\_converter\_config\_init(
inputFormat,
outputFormat,
inputChannels,
outputChannels,
inputSampleRate,
outputSampleRate
);

ma\_data\_converter converter;
ma\_result result = ma\_data\_converter\_init(&config, NULL, &converter);
if (result != MA\_SUCCESS) {
// An error occurred...
}
`

In the example above we use `ma_data_converter_config_init()` to initialize the config, however
there's many more properties that can be configured, such as channel maps and resampling quality.
Something like the following may be more suitable depending on your requirements:

`c
ma\_data\_converter\_config config = ma\_data\_converter\_config\_init\_default();
config.formatIn = inputFormat;
config.formatOut = outputFormat;
config.channelsIn = inputChannels;
config.channelsOut = outputChannels;
config.sampleRateIn = inputSampleRate;
config.sampleRateOut = outputSampleRate;
ma\_channel\_map\_init\_standard(ma\_standard\_channel\_map\_flac, config.channelMapIn, sizeof(config.channelMapIn)/sizeof(config.channelMapIn[0]), config.channelCountIn);
config.resampling.linear.lpfOrder = MA\_MAX\_FILTER\_ORDER;
`

Do the following to uninitialize the data converter:

`c
ma\_data\_converter\_uninit(&converter, NULL);
`

The following example shows how data can be processed

`c
ma\_uint64 frameCountIn = 1000;
ma\_uint64 frameCountOut = 2000;
ma\_result result = ma\_data\_converter\_process\_pcm\_frames(&converter, pFramesIn, &frameCountIn, pFramesOut, &frameCountOut);
if (result != MA\_SUCCESS) {
// An error occurred...
}

// At this point, frameCountIn contains the number of input frames that were consumed and frameCountOut contains the number
// of output frames written.
`

The data converter supports multiple channels and is always interleaved (both input and output).
The channel count cannot be changed after initialization.

Sample rates can be anything other than zero, and are always specified in hertz. They should be set
to something like 44100, etc. The sample rate is the only configuration property that can be
changed after initialization, but only if the `resampling.allowDynamicSampleRate` member of
`ma_data_converter_config` is set to `MA_TRUE`. To change the sample rate, use
`ma_data_converter_set_rate()` or `ma_data_converter_set_rate_ratio()`. The ratio must be in/out.
The resampling algorithm cannot be changed after initialization.

Processing always happens on a per PCM frame basis and always assumes interleaved input and output.
De-interleaved processing is not supported. To process frames, use
`ma_data_converter_process_pcm_frames()`. On input, this function takes the number of output frames
you can fit in the output buffer and the number of input frames contained in the input buffer. On
output these variables contain the number of output frames that were written to the output buffer
and the number of input frames that were consumed in the process. You can pass in NULL for the
input buffer in which case it will be treated as an infinitely large
buffer of zeros. The output buffer can also be NULL, in which case the processing will be treated
as seek.

Sometimes it's useful to know exactly how many input frames will be required to output a specific
number of frames. You can calculate this with `ma_data_converter_get_required_input_frame_count()`.
Likewise, it's sometimes useful to know exactly how many frames would be output given a certain
number of input frames. You can do this with `ma_data_converter_get_expected_output_frame_count()`.

Due to the nature of how resampling works, the data converter introduces some latency if resampling
is required. This can be retrieved in terms of both the input rate and the output rate with
`ma_data_converter_get_input_latency()` and `ma_data_converter_get_output_latency()`.

11. Filtering
=============

11.1. Biquad Filtering
----------------------
Biquad filtering is achieved with the `ma_biquad` API. Example:

`c
ma\_biquad\_config config = ma\_biquad\_config\_init(ma\_format\_f32, channels, b0, b1, b2, a0, a1, a2);
ma\_result result = ma\_biquad\_init(&config, NULL, &biquad);
if (result != MA\_SUCCESS) {
// Error.
}

...

ma\_biquad\_process\_pcm\_frames(&biquad, pFramesOut, pFramesIn, frameCount);
`

Biquad filtering is implemented using transposed direct form 2. The numerator coefficients are b0,
b1 and b2, and the denominator coefficients are a0, a1 and a2. The a0 coefficient is required and
coefficients must not be pre-normalized.

Supported formats are `ma_format_s16` and `ma_format_f32`. If you need to use a different format
you need to convert it yourself beforehand. When using `ma_format_s16` the biquad filter will use
fixed point arithmetic. When using `ma_format_f32`, floating point arithmetic will be used.

Input and output frames are always interleaved.

Filtering can be applied in-place by passing in the same pointer for both the input and output
buffers, like so:

`c
ma\_biquad\_process\_pcm\_frames(&biquad, pMyData, pMyData, frameCount);
`

If you need to change the values of the coefficients, but maintain the values in the registers you
can do so with `ma_biquad_reinit()`. This is useful if you need to change the properties of the
filter while keeping the values of registers valid to avoid glitching. Do not use
`ma_biquad_init()` for this as it will do a full initialization which involves clearing the
registers to 0. Note that changing the format or channel count after initialization is invalid and
will result in an error.

11.2. Low-Pass Filtering
------------------------
Low-pass filtering is achieved with the following APIs:

+---------+------------------------------------------+
| API | Description |
+---------+------------------------------------------+
| ma\_lpf1 | First order low-pass filter |
| ma\_lpf2 | Second order low-pass filter |
| ma\_lpf | High order low-pass filter (Butterworth) |
+---------+------------------------------------------+

Low-pass filter example:

`c
ma\_lpf\_config config = ma\_lpf\_config\_init(ma\_format\_f32, channels, sampleRate, cutoffFrequency, order);
ma\_result result = ma\_lpf\_init(&config, &lpf);
if (result != MA\_SUCCESS) {
// Error.
}

...

ma\_lpf\_process\_pcm\_frames(&lpf, pFramesOut, pFramesIn, frameCount);
`

Supported formats are `ma_format_s16` and `ma_format_f32`. If you need to use a different format
you need to convert it yourself beforehand. Input and output frames are always interleaved.

Filtering can be applied in-place by passing in the same pointer for both the input and output
buffers, like so:

`c
ma\_lpf\_process\_pcm\_frames(&lpf, pMyData, pMyData, frameCount);
`

The maximum filter order is limited to `MA_MAX_FILTER_ORDER` which is set to 8. If you need more,
you can chain first and second order filters together.

`c
for (iFilter = 0; iFilter < filterCount; iFilter += 1) {
ma\_lpf2\_process\_pcm\_frames(&lpf2[iFilter], pMyData, pMyData, frameCount);
}
`

If you need to change the configuration of the filter, but need to maintain the state of internal
registers you can do so with `ma_lpf_reinit()`. This may be useful if you need to change the sample
rate and/or cutoff frequency dynamically while maintaining smooth transitions. Note that changing the
format or channel count after initialization is invalid and will result in an error.

The `ma_lpf` object supports a configurable order, but if you only need a first order filter you
may want to consider using `ma_lpf1`. Likewise, if you only need a second order filter you can use
`ma_lpf2`. The advantage of this is that they're lighter weight and a bit more efficient.

If an even filter order is specified, a series of second order filters will be processed in a
chain. If an odd filter order is specified, a first order filter will be applied, followed by a
series of second order filters in a chain.

11.3. High-Pass Filtering
-------------------------
High-pass filtering is achieved with the following APIs:

+---------+-------------------------------------------+
| API | Description |
+---------+-------------------------------------------+
| ma\_hpf1 | First order high-pass filter |
| ma\_hpf2 | Second order high-pass filter |
| ma\_hpf | High order high-pass filter (Butterworth) |
+---------+-------------------------------------------+

High-pass filters work exactly the same as low-pass filters, only the APIs are called `ma_hpf1`,
`ma_hpf2` and `ma_hpf`. See example code for low-pass filters for example usage.

11.4. Band-Pass Filtering
-------------------------
Band-pass filtering is achieved with the following APIs:

+---------+-------------------------------+
| API | Description |
+---------+-------------------------------+
| ma\_bpf2 | Second order band-pass filter |
| ma\_bpf | High order band-pass filter |
+---------+-------------------------------+

Band-pass filters work exactly the same as low-pass filters, only the APIs are called `ma_bpf2` and
`ma_hpf`. See example code for low-pass filters for example usage. Note that the order for
band-pass filters must be an even number which means there is no first order band-pass filter,
unlike low-pass and high-pass filters.

11.5. Notch Filtering
---------------------
Notch filtering is achieved with the following APIs:

+-----------+------------------------------------------+
| API | Description |
+-----------+------------------------------------------+
| ma\_notch2 | Second order notching filter |
+-----------+------------------------------------------+

11.6. Peaking EQ Filtering
-------------------------
Peaking filtering is achieved with the following APIs:

+----------+------------------------------------------+
| API | Description |
+----------+------------------------------------------+
| ma\_peak2 | Second order peaking filter |
+----------+------------------------------------------+

11.7. Low Shelf Filtering
-------------------------
Low shelf filtering is achieved with the following APIs:

+-------------+------------------------------------------+
| API | Description |
+-------------+------------------------------------------+
| ma\_loshelf2 | Second order low shelf filter |
+-------------+------------------------------------------+

Where a high-pass filter is used to eliminate lower frequencies, a low shelf filter can be used to
just turn them down rather than eliminate them entirely.

11.8. High Shelf Filtering
--------------------------
High shelf filtering is achieved with the following APIs:

+-------------+------------------------------------------+
| API | Description |
+-------------+------------------------------------------+
| ma\_hishelf2 | Second order high shelf filter |
+-------------+------------------------------------------+

The high shelf filter has the same API as the low shelf filter, only you would use `ma_hishelf`
instead of `ma_loshelf`. Where a low shelf filter is used to adjust the volume of low frequencies,
the high shelf filter does the same thing for high frequencies.

12. Waveform and Noise Generation
=================================

12.1. Waveforms
---------------
miniaudio supports generation of sine, square, triangle and sawtooth waveforms. This is achieved
with the `ma_waveform` API. Example:

`c
ma\_waveform\_config config = ma\_waveform\_config\_init(
FORMAT,
CHANNELS,
SAMPLE\_RATE,
ma\_waveform\_type\_sine,
amplitude,
frequency);

ma\_waveform waveform;
ma\_result result = ma\_waveform\_init(&config, &waveform);
if (result != MA\_SUCCESS) {
// Error.
}

...

ma\_waveform\_read\_pcm\_frames(&waveform, pOutput, frameCount);
`

The amplitude, frequency, type, and sample rate can be changed dynamically with
`ma_waveform_set_amplitude()`, `ma_waveform_set_frequency()`, `ma_waveform_set_type()`, and
`ma_waveform_set_sample_rate()` respectively.

You can invert the waveform by setting the amplitude to a negative value. You can use this to
control whether or not a sawtooth has a positive or negative ramp, for example.

Below are the supported waveform types:

+---------------------------+
| Enum Name |
+---------------------------+
| ma\_waveform\_type\_sine |
| ma\_waveform\_type\_square |
| ma\_waveform\_type\_triangle |
| ma\_waveform\_type\_sawtooth |
+---------------------------+

12.2. Noise
-----------
miniaudio supports generation of white, pink and Brownian noise via the `ma_noise` API. Example:

`c
ma\_noise\_config config = ma\_noise\_config\_init(
FORMAT,
CHANNELS,
ma\_noise\_type\_white,
SEED,
amplitude);

ma\_noise noise;
ma\_result result = ma\_noise\_init(&config, &noise);
if (result != MA\_SUCCESS) {
// Error.
}

...

ma\_noise\_read\_pcm\_frames(&noise, pOutput, frameCount);
`

The noise API uses simple LCG random number generation. It supports a custom seed which is useful
for things like automated testing requiring reproducibility. Setting the seed to zero will default
to `MA_DEFAULT_LCG_SEED`.

The amplitude and seed can be changed dynamically with `ma_noise_set_amplitude()` and
`ma_noise_set_seed()` respectively.

By default, the noise API will use different values for different channels. So, for example, the
left side in a stereo stream will be different to the right side. To instead have each channel use
the same random value, set the `duplicateChannels` member of the noise config to true, like so:

`c
config.duplicateChannels = MA\_TRUE;
`

Below are the supported noise types.

+------------------------+
| Enum Name |
+------------------------+
| ma\_noise\_type\_white |
| ma\_noise\_type\_pink |
| ma\_noise\_type\_brownian |
+------------------------+

13. Audio Buffers
=================
miniaudio supports reading from a buffer of raw audio data via the `ma_audio_buffer` API. This can
read from memory that's managed by the application, but can also handle the memory management for
you internally. Memory management is flexible and should support most use cases.

Audio buffers are initialized using the standard configuration system used everywhere in miniaudio:

`c
ma\_audio\_buffer\_config config = ma\_audio\_buffer\_config\_init(
format,
channels,
sizeInFrames,
pExistingData,
&allocationCallbacks);

ma\_audio\_buffer buffer;
result = ma\_audio\_buffer\_init(&config, &buffer);
if (result != MA\_SUCCESS) {
// Error.
}

...

ma\_audio\_buffer\_uninit(&buffer);
`

In the example above, the memory pointed to by `pExistingData` will *not* be copied and is how an
application can do self-managed memory allocation. If you would rather make a copy of the data, use
`ma_audio_buffer_init_copy()`. To uninitialize the buffer, use `ma_audio_buffer_uninit()`.

Sometimes it can be convenient to allocate the memory for the `ma_audio_buffer` structure and the
raw audio data in a contiguous block of memory. That is, the raw audio data will be located
immediately after the `ma_audio_buffer` structure. To do this, use
`ma_audio_buffer_alloc_and_init()`:

`c
ma\_audio\_buffer\_config config = ma\_audio\_buffer\_config\_init(
format,
channels,
sizeInFrames,
pExistingData,
&allocationCallbacks);

ma\_audio\_buffer\* pBuffer
result = ma\_audio\_buffer\_alloc\_and\_init(&config, &pBuffer);
if (result != MA\_SUCCESS) {
// Error
}

...

ma\_audio\_buffer\_uninit\_and\_free(&buffer);
`

If you initialize the buffer with `ma_audio_buffer_alloc_and_init()` you should uninitialize it
with `ma_audio_buffer_uninit_and_free()`. In the example above, the memory pointed to by
`pExistingData` will be copied into the buffer, which is contrary to the behavior of
`ma_audio_buffer_init()`.

An audio buffer has a playback cursor just like a decoder. As you read frames from the buffer, the
cursor moves forward. The last parameter (`loop`) can be used to determine if the buffer should
loop. The return value is the number of frames actually read. If this is less than the number of
frames requested it means the end has been reached. This should never happen if the `loop`
parameter is set to true. If you want to manually loop back to the start, you can do so with with
`ma_audio_buffer_seek_to_pcm_frame(pAudioBuffer, 0)`. Below is an example for reading data from an
audio buffer.

`c
ma\_uint64 framesRead = ma\_audio\_buffer\_read\_pcm\_frames(pAudioBuffer, pFramesOut, desiredFrameCount, isLooping);
if (framesRead < desiredFrameCount) {
// If not looping, this means the end has been reached. This should never happen in looping mode with valid input.
}
`

Sometimes you may want to avoid the cost of data movement between the internal buffer and the
output buffer. Instead you can use memory mapping to retrieve a pointer to a segment of data:

`c
void\* pMappedFrames;
ma\_uint64 frameCount = frameCountToTryMapping;
ma\_result result = ma\_audio\_buffer\_map(pAudioBuffer, &pMappedFrames, &frameCount);
if (result == MA\_SUCCESS) {
// Map was successful. The value in frameCount will be how many frames were \_actually\_ mapped, which may be
// less due to the end of the buffer being reached.
ma\_copy\_pcm\_frames(pFramesOut, pMappedFrames, frameCount, pAudioBuffer->format, pAudioBuffer->channels);

// You must unmap the buffer.
ma\_audio\_buffer\_unmap(pAudioBuffer, frameCount);
}
`

When you use memory mapping, the read cursor is increment by the frame count passed in to
`ma_audio_buffer_unmap()`. If you decide not to process every frame you can pass in a value smaller
than the value returned by `ma_audio_buffer_map()`. The disadvantage to using memory mapping is
that it does not handle looping for you. You can determine if the buffer is at the end for the
purpose of looping with `ma_audio_buffer_at_end()` or by inspecting the return value of
`ma_audio_buffer_unmap()` and checking if it equals `MA_AT_END`. You should not treat `MA_AT_END`
as an error when returned by `ma_audio_buffer_unmap()`.

14. Ring Buffers
================
miniaudio supports lock free (single producer, single consumer) ring buffers which are exposed via
the `ma_rb` and `ma_pcm_rb` APIs. The `ma_rb` API operates on bytes, whereas the `ma_pcm_rb`
operates on PCM frames. They are otherwise identical as `ma_pcm_rb` is just a wrapper around
`ma_rb`.

Unlike most other APIs in miniaudio, ring buffers support both interleaved and deinterleaved
streams. The caller can also allocate their own backing memory for the ring buffer to use
internally for added flexibility. Otherwise the ring buffer will manage it's internal memory for
you.

The examples below use the PCM frame variant of the ring buffer since that's most likely the one
you will want to use. To initialize a ring buffer, do something like the following:

`c
ma\_pcm\_rb rb;
ma\_result result = ma\_pcm\_rb\_init(FORMAT, CHANNELS, BUFFER\_SIZE\_IN\_FRAMES, NULL, NULL, &rb);
if (result != MA\_SUCCESS) {
// Error
}
`

The `ma_pcm_rb_init()` function takes the sample format and channel count as parameters because
it's the PCM variant of the ring buffer API. For the regular ring buffer that operates on bytes you
would call `ma_rb_init()` which leaves these out and just takes the size of the buffer in bytes
instead of frames. The fourth parameter is an optional pre-allocated buffer and the fifth parameter
is a pointer to a `ma_allocation_callbacks` structure for custom memory allocation routines.
Passing in `NULL` for this results in `MA_MALLOC()` and `MA_FREE()` being used.

Use `ma_pcm_rb_init_ex()` if you need a deinterleaved buffer. The data for each sub-buffer is
offset from each other based on the stride. To manage your sub-buffers you can use
`ma_pcm_rb_get_subbuffer_stride()`, `ma_pcm_rb_get_subbuffer_offset()` and
`ma_pcm_rb_get_subbuffer_ptr()`.

Use `ma_pcm_rb_acquire_read()` and `ma_pcm_rb_acquire_write()` to retrieve a pointer to a section
of the ring buffer. You specify the number of frames you need, and on output it will set to what
was actually acquired. If the read or write pointer is positioned such that the number of frames
requested will require a loop, it will be clamped to the end of the buffer. Therefore, the number
of frames you're given may be less than the number you requested.

After calling `ma_pcm_rb_acquire_read()` or `ma_pcm_rb_acquire_write()`, you do your work on the
buffer and then "commit" it with `ma_pcm_rb_commit_read()` or `ma_pcm_rb_commit_write()`. This is
where the read/write pointers are updated. When you commit you need to pass in the buffer that was
returned by the earlier call to `ma_pcm_rb_acquire_read()` or `ma_pcm_rb_acquire_write()` and is
only used for validation. The number of frames passed to `ma_pcm_rb_commit_read()` and
`ma_pcm_rb_commit_write()` is what's used to increment the pointers, and can be less that what was
originally requested.

If you want to correct for drift between the write pointer and the read pointer you can use a
combination of `ma_pcm_rb_pointer_distance()`, `ma_pcm_rb_seek_read()` and
`ma_pcm_rb_seek_write()`. Note that you can only move the pointers forward, and you should only
move the read pointer forward via the consumer thread, and the write pointer forward by the
producer thread. If there is too much space between the pointers, move the read pointer forward. If
there is too little space between the pointers, move the write pointer forward.

You can use a ring buffer at the byte level instead of the PCM frame level by using the `ma_rb`
API. This is exactly the same, only you will use the `ma_rb` functions instead of `ma_pcm_rb` and
instead of frame counts you will pass around byte counts.

The maximum size of the buffer in bytes is `0x7FFFFFFF-(MA_SIMD_ALIGNMENT-1)` due to the most
significant bit being used to encode a loop flag and the internally managed buffers always being
aligned to `MA_SIMD_ALIGNMENT`.

Note that the ring buffer is only thread safe when used by a single consumer thread and single
producer thread.

15. Backends
============
The following backends are supported by miniaudio. These are listed in order of default priority.
When no backend is specified when initializing a context or device, miniaudio will attempt to use
each of these backends in the order listed in the table below.

Note that backends that are not usable by the build target will not be included in the build. For
example, ALSA, which is specific to Linux, will not be included in the Windows build.

+-------------+-----------------------+--------------------------------------------------------+
| Name | Enum Name | Supported Operating Systems |
+-------------+-----------------------+--------------------------------------------------------+
| WASAPI | ma\_backend\_wasapi | Windows Vista+ |
| DirectSound | ma\_backend\_dsound | Windows XP+ |
| WinMM | ma\_backend\_winmm | Windows 95+ |
| Core Audio | ma\_backend\_coreaudio | macOS, iOS |
| sndio | ma\_backend\_sndio | OpenBSD |
| audio(4) | ma\_backend\_audio4 | NetBSD, OpenBSD |
| OSS | ma\_backend\_oss | FreeBSD |
| PulseAudio | ma\_backend\_pulseaudio | Cross Platform (disabled on Windows, BSD and Android) |
| ALSA | ma\_backend\_alsa | Linux |
| JACK | ma\_backend\_jack | Cross Platform (disabled on BSD and Android) |
| AAudio | ma\_backend\_aaudio | Android 8+ |
| OpenSL ES | ma\_backend\_opensl | Android (API level 16+) |
| Web Audio | ma\_backend\_webaudio | Web (via Emscripten) |
| Custom | ma\_backend\_custom | Cross Platform |
| Null | ma\_backend\_null | Cross Platform (not used on Web) |
+-------------+-----------------------+--------------------------------------------------------+

Some backends have some nuance details you may want to be aware of.

15.1. WASAPI
------------
Low-latency shared mode will be disabled when using an application-defined sample rate which is
different to the device's native sample rate. To work around this, set `wasapi.noAutoConvertSRC`
to true in the device config. This is due to IAudioClient3\_InitializeSharedAudioStream() failing
when the `AUDCLNT_STREAMFLAGS_AUTOCONVERTPCM` flag is specified. Setting wasapi.noAutoConvertSRC
will result in miniaudio's internal resampler being used instead which will in turn enable the
use of low-latency shared mode.

15.2. PulseAudio
----------------
If you experience bad glitching/noise on Arch Linux, consider this fix from the Arch wiki:
https://wiki.archlinux.org/index.php/PulseAudio/Troubleshooting#Glitches,\_skips\_or\_crackling.
Alternatively, consider using a different backend such as ALSA.

15.3. Android
-------------
To capture audio on Android, remember to add the RECORD\_AUDIO permission to your manifest:
`<uses-permission android:name="android.permission.RECORD_AUDIO" />`
With OpenSL|ES, only a single ma\_context can be active at any given time. This is due to a
limitation with OpenSL|ES.
With AAudio, only default devices are enumerated. This is due to AAudio not having an enumeration
API (devices are enumerated through Java). You can however perform your own device enumeration
through Java and then set the ID in the ma\_device\_id structure (ma\_device\_id.aaudio) and pass it
to ma\_device\_init().
The backend API will perform resampling where possible. The reason for this as opposed to using
miniaudio's built-in resampler is to take advantage of any potential device-specific
optimizations the driver may implement.

BSD
---
The sndio backend is currently only enabled on OpenBSD builds.
The audio(4) backend is supported on OpenBSD, but you may need to disable sndiod before you can
use it.

15.4. UWP
---------
UWP only supports default playback and capture devices.
UWP requires the Microphone capability to be enabled in the application's manifest (Package.appxmanifest):

`
<Package ...>
...
<Capabilities>
<DeviceCapability Name="microphone" />
</Capabilities>
</Package>
`

15.5. Web Audio / Emscripten
----------------------------
You cannot use `-std=c*` compiler flags, nor `-ansi`. This only applies to the Emscripten build.
The first time a context is initialized it will create a global object called "miniaudio" whose
primary purpose is to act as a factory for device objects.
Currently the Web Audio backend uses ScriptProcessorNode's, but this may need to change later as
they've been deprecated.
Google has implemented a policy in their browsers that prevent automatic media output without
first receiving some kind of user input. The following web page has additional details:
https://developers.google.com/web/updates/2017/09/autoplay-policy-changes. Starting the device
may fail if you try to start playback without first handling some kind of user input.

16. Optimization Tips
=====================
See below for some tips on improving performance.

16.1. Low Level API
-------------------
In the data callback, if your data is already clipped prior to copying it into the output buffer,
set the `noClip` config option in the device config to true. This will disable miniaudio's built
in clipping function.
By default, miniaudio will pre-silence the data callback's output buffer. If you know that you
will always write valid data to the output buffer you can disable pre-silencing by setting the
`noPreSilence` config option in the device config to true.

16.2. High Level API
--------------------
If a sound does not require doppler or pitch shifting, consider disabling pitching by
initializing the sound with the `MA_SOUND_FLAG_NO_PITCH` flag.
If a sound does not require spatialization, disable it by initializing the sound with the
`MA_SOUND_FLAG_NO_SPATIALIZATION` flag. It can be re-enabled again post-initialization with
`ma_sound_set_spatialization_enabled()`.
If you know all of your sounds will always be the same sample rate, set the engine's sample
rate to match that of the sounds. Likewise, if you're using a self-managed resource manager,
consider setting the decoded sample rate to match your sounds. By configuring everything to
use a consistent sample rate, sample rate conversion can be avoided.

17. Miscellaneous Notes
=======================
Automatic stream routing is enabled on a per-backend basis. Support is explicitly enabled for
WASAPI and Core Audio, however other backends such as PulseAudio may naturally support it, though
not all have been tested.
When compiling with VC6 and earlier, decoding is restricted to files less than 2GB in size. This
is due to 64-bit file APIs not being available.

## Index

Types (254)

* [IMMNotificationClient](#IMMNotificationClient)
* [aaudio\_allowed\_capture\_policy](#aaudio_allowed_capture_policy)
* [aaudio\_content\_type](#aaudio_content_type)
* [aaudio\_input\_preset](#aaudio_input_preset)
* [aaudio\_usage](#aaudio_usage)
* [allocation\_callbacks](#allocation_callbacks)
* [async\_notification](#async_notification)
* [async\_notification\_callbacks](#async_notification_callbacks)
* [async\_notification\_event](#async_notification_event)
* [async\_notification\_poll](#async_notification_poll)
* [atomic\_vec3f](#atomic_vec3f)
* [attenuation\_model](#attenuation_model)
* [audio\_buffer](#audio_buffer)
* [audio\_buffer\_config](#audio_buffer_config)
* [audio\_buffer\_ref](#audio_buffer_ref)
* [backend](#backend)
* [backend\_callbacks](#backend_callbacks)
* [biquad](#biquad)
* [biquad\_coefficient](#biquad_coefficient)
* [biquad\_config](#biquad_config)
* [biquad\_node](#biquad_node)
* [biquad\_node\_config](#biquad_node_config)
* [bpf](#bpf)
* [bpf2](#bpf2)
* [bpf2\_config](#bpf2_config)
* [bpf\_config](#bpf_config)
* [bpf\_node](#bpf_node)
* [bpf\_node\_config](#bpf_node_config)
* [channel](#channel)
* [channel\_conversion\_path](#channel_conversion_path)
* [channel\_converter](#channel_converter)
* [channel\_converter\_config](#channel_converter_config)
* [channel\_mix\_mode](#channel_mix_mode)
* [context\_command\_\_wasapi](#context_command__wasapi)
* [context\_config](#context_config)
* [context\_type](#context_type)
* [data\_converter](#data_converter)
* [data\_converter\_config](#data_converter_config)
* [data\_converter\_execution\_path](#data_converter_execution_path)
* [data\_format\_flag](#data_format_flag)
* [data\_format\_flags](#data_format_flags)
* [data\_source](#data_source)
* [data\_source\_base](#data_source_base)
* [data\_source\_config](#data_source_config)
* [data\_source\_flag](#data_source_flag)
* [data\_source\_flags](#data_source_flags)
* [data\_source\_get\_next\_proc](#data_source_get_next_proc)
* [data\_source\_node](#data_source_node)
* [data\_source\_node\_config](#data_source_node_config)
* [data\_source\_vtable](#data_source_vtable)
* [decoder](#decoder)
* [decoder\_config](#decoder_config)
* [decoder\_read\_proc](#decoder_read_proc)
* [decoder\_seek\_proc](#decoder_seek_proc)
* [decoder\_tell\_proc](#decoder_tell_proc)
* [decoding\_backend\_config](#decoding_backend_config)
* [decoding\_backend\_vtable](#decoding_backend_vtable)
* [default\_vfs](#default_vfs)
* [delay](#delay)
* [delay\_config](#delay_config)
* [delay\_node](#delay_node)
* [delay\_node\_config](#delay_node_config)
* [device](#device)
* [device\_config](#device_config)
* [device\_data\_proc](#device_data_proc)
* [device\_descriptor](#device_descriptor)
* [device\_id](#device_id)
* [device\_info](#device_info)
* [device\_job\_thread](#device_job_thread)
* [device\_job\_thread\_config](#device_job_thread_config)
* [device\_notification](#device_notification)
* [device\_notification\_proc](#device_notification_proc)
* [device\_notification\_type](#device_notification_type)
* [device\_state](#device_state)
* [device\_type](#device_type)
* [dither\_mode](#dither_mode)
* [duplex\_rb](#duplex_rb)
* [encoder](#encoder)
* [encoder\_config](#encoder_config)
* [encoder\_init\_proc](#encoder_init_proc)
* [encoder\_seek\_proc](#encoder_seek_proc)
* [encoder\_uninit\_proc](#encoder_uninit_proc)
* [encoder\_write\_pcm\_frames\_proc](#encoder_write_pcm_frames_proc)
* [encoder\_write\_proc](#encoder_write_proc)
* [encoding\_format](#encoding_format)
* [engine](#engine)
* [engine\_config](#engine_config)
* [engine\_node](#engine_node)
* [engine\_node\_config](#engine_node_config)
* [engine\_node\_type](#engine_node_type)
* [engine\_process\_proc](#engine_process_proc)
* [enum\_devices\_callback\_proc](#enum_devices_callback_proc)
* [event](#event)
* [fader](#fader)
* [fader\_config](#fader_config)
* [fence](#fence)
* [file\_info](#file_info)
* [format](#format)
* [gainer](#gainer)
* [gainer\_config](#gainer_config)
* [handedness](#handedness)
* [handle](#handle)
* [hishelf2](#hishelf2)
* [hishelf2\_config](#hishelf2_config)
* [hishelf\_config](#hishelf_config)
* [hishelf\_node](#hishelf_node)
* [hishelf\_node\_config](#hishelf_node_config)
* [hpf](#hpf)
* [hpf1](#hpf1)
* [hpf1\_config](#hpf1_config)
* [hpf2](#hpf2)
* [hpf2\_config](#hpf2_config)
* [hpf\_config](#hpf_config)
* [hpf\_node](#hpf_node)
* [hpf\_node\_config](#hpf_node_config)
* [ios\_session\_category](#ios_session_category)
* [ios\_session\_category\_option](#ios_session_category_option)
* [job](#job)
* [job\_proc](#job_proc)
* [job\_queue](#job_queue)
* [job\_queue\_config](#job_queue_config)
* [job\_queue\_flag](#job_queue_flag)
* [job\_queue\_flags](#job_queue_flags)
* [job\_type](#job_type)
* [lcg](#lcg)
* [linear\_resampler](#linear_resampler)
* [linear\_resampler\_config](#linear_resampler_config)
* [log](#log)
* [log\_callback](#log_callback)
* [log\_callback\_proc](#log_callback_proc)
* [log\_level](#log_level)
* [loshelf2](#loshelf2)
* [loshelf2\_config](#loshelf2_config)
* [loshelf\_config](#loshelf_config)
* [loshelf\_node](#loshelf_node)
* [loshelf\_node\_config](#loshelf_node_config)
* [lpf](#lpf)
* [lpf1](#lpf1)
* [lpf1\_config](#lpf1_config)
* [lpf2](#lpf2)
* [lpf2\_config](#lpf2_config)
* [lpf\_config](#lpf_config)
* [lpf\_node](#lpf_node)
* [lpf\_node\_config](#lpf_node_config)
* [ma\_read\_proc](#ma_read_proc)
* [ma\_seek\_proc](#ma_seek_proc)
* [ma\_tell\_proc](#ma_tell_proc)
* [mono\_expansion\_mode](#mono_expansion_mode)
* [mutex](#mutex)
* [node](#node)
* [node\_base](#node_base)
* [node\_config](#node_config)
* [node\_flag](#node_flag)
* [node\_flags](#node_flags)
* [node\_graph](#node_graph)
* [node\_graph\_config](#node_graph_config)
* [node\_input\_bus](#node_input_bus)
* [node\_output\_bus](#node_output_bus)
* [node\_output\_bus\_flag](#node_output_bus_flag)
* [node\_output\_bus\_flags](#node_output_bus_flags)
* [node\_state](#node_state)
* [node\_vtable](#node_vtable)
* [noise](#noise)
* [noise\_config](#noise_config)
* [noise\_type](#noise_type)
* [notch2](#notch2)
* [notch2\_config](#notch2_config)
* [notch\_config](#notch_config)
* [notch\_node](#notch_node)
* [notch\_node\_config](#notch_node_config)
* [open\_mode\_flag](#open_mode_flag)
* [open\_mode\_flags](#open_mode_flags)
* [opensl\_recording\_preset](#opensl_recording_preset)
* [opensl\_stream\_type](#opensl_stream_type)
* [paged\_audio\_buffer](#paged_audio_buffer)
* [paged\_audio\_buffer\_config](#paged_audio_buffer_config)
* [paged\_audio\_buffer\_data](#paged_audio_buffer_data)
* [paged\_audio\_buffer\_page](#paged_audio_buffer_page)
* [pan\_mode](#pan_mode)
* [panner](#panner)
* [panner\_config](#panner_config)
* [pcm\_rb](#pcm_rb)
* [peak2](#peak2)
* [peak2\_config](#peak2_config)
* [peak\_config](#peak_config)
* [peak\_node](#peak_node)
* [peak\_node\_config](#peak_node_config)
* [performance\_profile](#performance_profile)
* [positioning](#positioning)
* [pulsewave](#pulsewave)
* [pulsewave\_config](#pulsewave_config)
* [rb](#rb)
* [resample\_algorithm](#resample_algorithm)
* [resampler](#resampler)
* [resampler\_config](#resampler_config)
* [resampling\_backend](#resampling_backend)
* [resampling\_backend\_vtable](#resampling_backend_vtable)
* [resource\_manager](#resource_manager)
* [resource\_manager\_config](#resource_manager_config)
* [resource\_manager\_data\_buffer](#resource_manager_data_buffer)
* [resource\_manager\_data\_buffer\_node](#resource_manager_data_buffer_node)
* [resource\_manager\_data\_source](#resource_manager_data_source)
* [resource\_manager\_data\_source\_config](#resource_manager_data_source_config)
* [resource\_manager\_data\_source\_flag](#resource_manager_data_source_flag)
* [resource\_manager\_data\_source\_flags](#resource_manager_data_source_flags)
* [resource\_manager\_data\_stream](#resource_manager_data_stream)
* [resource\_manager\_data\_supply](#resource_manager_data_supply)
* [resource\_manager\_data\_supply\_type](#resource_manager_data_supply_type)
* [resource\_manager\_flag](#resource_manager_flag)
* [resource\_manager\_flags](#resource_manager_flags)
* [resource\_manager\_job](#resource_manager_job)
* [resource\_manager\_job\_queue](#resource_manager_job_queue)
* [resource\_manager\_job\_queue\_config](#resource_manager_job_queue_config)
* [resource\_manager\_pipeline\_notifications](#resource_manager_pipeline_notifications)
* [resource\_manager\_pipeline\_stage\_notification](#resource_manager_pipeline_stage_notification)
* [result](#result)
* [seek\_origin](#seek_origin)
* [semaphore](#semaphore)
* [share\_mode](#share_mode)
* [slot\_allocator](#slot_allocator)
* [slot\_allocator\_config](#slot_allocator_config)
* [slot\_allocator\_group](#slot_allocator_group)
* [sound](#sound)
* [sound\_config](#sound_config)
* [sound\_end\_proc](#sound_end_proc)
* [sound\_flag](#sound_flag)
* [sound\_flags](#sound_flags)
* [sound\_group](#sound_group)
* [sound\_group\_config](#sound_group_config)
* [sound\_inlined](#sound_inlined)
* [spatializer](#spatializer)
* [spatializer\_config](#spatializer_config)
* [spatializer\_listener](#spatializer_listener)
* [spatializer\_listener\_config](#spatializer_listener_config)
* [spinlock](#spinlock)
* [splitter\_node](#splitter_node)
* [splitter\_node\_config](#splitter_node_config)
* [stack](#stack)
* [standard\_channel\_map](#standard_channel_map)
* [standard\_sample\_rate](#standard_sample_rate)
* [stop\_proc](#stop_proc)
* [stream\_format](#stream_format)
* [stream\_layout](#stream_layout)
* [thread](#thread)
* [thread\_priority](#thread_priority)
* [timer](#timer)
* [vec3f](#vec3f)
* [vfs](#vfs)
* [vfs\_callbacks](#vfs_callbacks)
* [vfs\_file](#vfs_file)
* [wasapi\_usage](#wasapi_usage)
* [waveform](#waveform)
* [waveform\_config](#waveform_config)
* [waveform\_type](#waveform_type)

Constants (39)

* [BACKEND\_COUNT](#BACKEND_COUNT)
* [BINDINGS\_VERSION](#BINDINGS_VERSION)
* [BINDINGS\_VERSION\_MAJOR](#BINDINGS_VERSION_MAJOR)
* [BINDINGS\_VERSION\_MINOR](#BINDINGS_VERSION_MINOR)
* [BINDINGS\_VERSION\_REVISION](#BINDINGS_VERSION_REVISION)
* [BINDINGS\_VERSION\_STRING](#BINDINGS_VERSION_STRING)
* [CHANNEL\_INDEX\_NULL](#CHANNEL_INDEX_NULL)
* [ENGINE\_MAX\_LISTENERS](#ENGINE_MAX_LISTENERS)
* [JOB\_TYPE\_RESOURCE\_MANAGER\_QUEUE\_FLAG\_NON\_BLOCKING](#JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING)
* [LISTENER\_INDEX\_CLOSEST](#LISTENER_INDEX_CLOSEST)
* [MAX\_CHANNELS](#MAX_CHANNELS)
* [MAX\_DEVICE\_NAME\_LENGTH](#MAX_DEVICE_NAME_LENGTH)
* [MAX\_FILTER\_ORDER](#MAX_FILTER_ORDER)
* [MAX\_LOG\_CALLBACKS](#MAX_LOG_CALLBACKS)
* [MAX\_NODE\_BUS\_COUNT](#MAX_NODE_BUS_COUNT)
* [MAX\_NODE\_LOCAL\_BUS\_COUNT](#MAX_NODE_LOCAL_BUS_COUNT)
* [MINIAUDIO\_SHARED](#MINIAUDIO_SHARED)
* [MIN\_CHANNELS](#MIN_CHANNELS)
* [NODE\_BUS\_COUNT\_UNKNOWN](#NODE_BUS_COUNT_UNKNOWN)
* [NO\_THREADING](#NO_THREADING)
* [RESOURCE\_MANAGER\_MAX\_JOB\_THREAD\_COUNT](#RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT)
* [SIMD\_ALIGNMENT](#SIMD_ALIGNMENT)
* [SOUND\_SOURCE\_CHANNEL\_COUNT](#SOUND_SOURCE_CHANNEL_COUNT)
* [SUPPORT\_AAUDIO](#SUPPORT_AAUDIO)
* [SUPPORT\_ALSA](#SUPPORT_ALSA)
* [SUPPORT\_AUDIO4](#SUPPORT_AUDIO4)
* [SUPPORT\_COREAUDIO](#SUPPORT_COREAUDIO)
* [SUPPORT\_CUSTOM](#SUPPORT_CUSTOM)
* [SUPPORT\_DSOUND](#SUPPORT_DSOUND)
* [SUPPORT\_JACK](#SUPPORT_JACK)
* [SUPPORT\_NULL](#SUPPORT_NULL)
* [SUPPORT\_OPENSL](#SUPPORT_OPENSL)
* [SUPPORT\_OSS](#SUPPORT_OSS)
* [SUPPORT\_PULSEAUDIO](#SUPPORT_PULSEAUDIO)
* [SUPPORT\_SNDIO](#SUPPORT_SNDIO)
* [SUPPORT\_WASAPI](#SUPPORT_WASAPI)
* [SUPPORT\_WEBAUDIO](#SUPPORT_WEBAUDIO)
* [SUPPORT\_WINMM](#SUPPORT_WINMM)
* [USE\_EXPERIMENTAL\_LOCK\_FREE\_JOB\_QUEUE](#USE_EXPERIMENTAL_LOCK_FREE_JOB_QUEUE)

Variables (0)

This section is empty.

Procedures (943)

* [aligned\_free](#aligned_free)
* [aligned\_malloc](#aligned_malloc)
* [apply\_volume\_factor\_f32](#apply_volume_factor_f32)
* [apply\_volume\_factor\_pcm\_frames](#apply_volume_factor_pcm_frames)
* [apply\_volume\_factor\_pcm\_frames\_f32](#apply_volume_factor_pcm_frames_f32)
* [apply\_volume\_factor\_pcm\_frames\_s16](#apply_volume_factor_pcm_frames_s16)
* [apply\_volume\_factor\_pcm\_frames\_s24](#apply_volume_factor_pcm_frames_s24)
* [apply\_volume\_factor\_pcm\_frames\_s32](#apply_volume_factor_pcm_frames_s32)
* [apply\_volume\_factor\_pcm\_frames\_u8](#apply_volume_factor_pcm_frames_u8)
* [apply\_volume\_factor\_s16](#apply_volume_factor_s16)
* [apply\_volume\_factor\_s24](#apply_volume_factor_s24)
* [apply\_volume\_factor\_s32](#apply_volume_factor_s32)
* [apply\_volume\_factor\_u8](#apply_volume_factor_u8)
* [async\_notification\_event\_init](#async_notification_event_init)
* [async\_notification\_event\_signal](#async_notification_event_signal)
* [async\_notification\_event\_uninit](#async_notification_event_uninit)
* [async\_notification\_event\_wait](#async_notification_event_wait)
* [async\_notification\_poll\_init](#async_notification_poll_init)
* [async\_notification\_poll\_is\_signalled](#async_notification_poll_is_signalled)
* [async\_notification\_signal](#async_notification_signal)
* [audio\_buffer\_alloc\_and\_init](#audio_buffer_alloc_and_init)
* [audio\_buffer\_at\_end](#audio_buffer_at_end)
* [audio\_buffer\_config\_init](#audio_buffer_config_init)
* [audio\_buffer\_get\_available\_frames](#audio_buffer_get_available_frames)
* [audio\_buffer\_get\_cursor\_in\_pcm\_frames](#audio_buffer_get_cursor_in_pcm_frames)
* [audio\_buffer\_get\_length\_in\_pcm\_frames](#audio_buffer_get_length_in_pcm_frames)
* [audio\_buffer\_init](#audio_buffer_init)
* [audio\_buffer\_init\_copy](#audio_buffer_init_copy)
* [audio\_buffer\_map](#audio_buffer_map)
* [audio\_buffer\_read\_pcm\_frames](#audio_buffer_read_pcm_frames)
* [audio\_buffer\_ref\_at\_end](#audio_buffer_ref_at_end)
* [audio\_buffer\_ref\_get\_available\_frames](#audio_buffer_ref_get_available_frames)
* [audio\_buffer\_ref\_get\_cursor\_in\_pcm\_frames](#audio_buffer_ref_get_cursor_in_pcm_frames)
* [audio\_buffer\_ref\_get\_length\_in\_pcm\_frames](#audio_buffer_ref_get_length_in_pcm_frames)
* [audio\_buffer\_ref\_init](#audio_buffer_ref_init)
* [audio\_buffer\_ref\_map](#audio_buffer_ref_map)
* [audio\_buffer\_ref\_read\_pcm\_frames](#audio_buffer_ref_read_pcm_frames)
* [audio\_buffer\_ref\_seek\_to\_pcm\_frame](#audio_buffer_ref_seek_to_pcm_frame)
* [audio\_buffer\_ref\_set\_data](#audio_buffer_ref_set_data)
* [audio\_buffer\_ref\_uninit](#audio_buffer_ref_uninit)
* [audio\_buffer\_ref\_unmap](#audio_buffer_ref_unmap)
* [audio\_buffer\_seek\_to\_pcm\_frame](#audio_buffer_seek_to_pcm_frame)
* [audio\_buffer\_uninit](#audio_buffer_uninit)
* [audio\_buffer\_uninit\_and\_free](#audio_buffer_uninit_and_free)
* [audio\_buffer\_unmap](#audio_buffer_unmap)
* [biquad\_clear\_cache](#biquad_clear_cache)
* [biquad\_config\_init](#biquad_config_init)
* [biquad\_get\_heap\_size](#biquad_get_heap_size)
* [biquad\_get\_latency](#biquad_get_latency)
* [biquad\_init](#biquad_init)
* [biquad\_init\_preallocated](#biquad_init_preallocated)
* [biquad\_node\_config\_init](#biquad_node_config_init)
* [biquad\_node\_init](#biquad_node_init)
* [biquad\_node\_reinit](#biquad_node_reinit)
* [biquad\_node\_uninit](#biquad_node_uninit)
* [biquad\_process\_pcm\_frames](#biquad_process_pcm_frames)
* [biquad\_reinit](#biquad_reinit)
* [biquad\_uninit](#biquad_uninit)
* [blend\_f32](#blend_f32)
* [bpf2\_config\_init](#bpf2_config_init)
* [bpf2\_get\_heap\_size](#bpf2_get_heap_size)
* [bpf2\_get\_latency](#bpf2_get_latency)
* [bpf2\_init](#bpf2_init)
* [bpf2\_init\_preallocated](#bpf2_init_preallocated)
* [bpf2\_process\_pcm\_frames](#bpf2_process_pcm_frames)
* [bpf2\_reinit](#bpf2_reinit)
* [bpf2\_uninit](#bpf2_uninit)
* [bpf\_config\_init](#bpf_config_init)
* [bpf\_get\_heap\_size](#bpf_get_heap_size)
* [bpf\_get\_latency](#bpf_get_latency)
* [bpf\_init](#bpf_init)
* [bpf\_init\_preallocated](#bpf_init_preallocated)
* [bpf\_node\_config\_init](#bpf_node_config_init)
* [bpf\_node\_init](#bpf_node_init)
* [bpf\_node\_reinit](#bpf_node_reinit)
* [bpf\_node\_uninit](#bpf_node_uninit)
* [bpf\_process\_pcm\_frames](#bpf_process_pcm_frames)
* [bpf\_reinit](#bpf_reinit)
* [bpf\_uninit](#bpf_uninit)
* [calculate\_buffer\_size\_in\_frames\_from\_descriptor](#calculate_buffer_size_in_frames_from_descriptor)
* [calculate\_buffer\_size\_in\_frames\_from\_milliseconds](#calculate_buffer_size_in_frames_from_milliseconds)
* [calculate\_buffer\_size\_in\_milliseconds\_from\_frames](#calculate_buffer_size_in_milliseconds_from_frames)
* [calloc](#calloc)
* [channel\_converter\_config\_init](#channel_converter_config_init)
* [channel\_converter\_get\_heap\_size](#channel_converter_get_heap_size)
* [channel\_converter\_get\_input\_channel\_map](#channel_converter_get_input_channel_map)
* [channel\_converter\_get\_output\_channel\_map](#channel_converter_get_output_channel_map)
* [channel\_converter\_init](#channel_converter_init)
* [channel\_converter\_init\_preallocated](#channel_converter_init_preallocated)
* [channel\_converter\_process\_pcm\_frames](#channel_converter_process_pcm_frames)
* [channel\_converter\_uninit](#channel_converter_uninit)
* [channel\_map\_contains\_channel\_position](#channel_map_contains_channel_position)
* [channel\_map\_copy](#channel_map_copy)
* [channel\_map\_copy\_or\_default](#channel_map_copy_or_default)
* [channel\_map\_find\_channel\_position](#channel_map_find_channel_position)
* [channel\_map\_get\_channel](#channel_map_get_channel)
* [channel\_map\_init\_blank](#channel_map_init_blank)
* [channel\_map\_init\_standard](#channel_map_init_standard)
* [channel\_map\_is\_blank](#channel_map_is_blank)
* [channel\_map\_is\_equal](#channel_map_is_equal)
* [channel\_map\_is\_valid](#channel_map_is_valid)
* [channel\_map\_to\_string](#channel_map_to_string)
* [channel\_position\_to\_string](#channel_position_to_string)
* [clip\_pcm\_frames](#clip_pcm_frames)
* [clip\_samples\_f32](#clip_samples_f32)
* [clip\_samples\_s16](#clip_samples_s16)
* [clip\_samples\_s24](#clip_samples_s24)
* [clip\_samples\_s32](#clip_samples_s32)
* [clip\_samples\_u8](#clip_samples_u8)
* [context\_config\_init](#context_config_init)
* [context\_enumerate\_devices](#context_enumerate_devices)
* [context\_get\_device\_info](#context_get_device_info)
* [context\_get\_devices](#context_get_devices)
* [context\_get\_log](#context_get_log)
* [context\_init](#context_init)
* [context\_is\_loopback\_supported](#context_is_loopback_supported)
* [context\_sizeof](#context_sizeof)
* [context\_uninit](#context_uninit)
* [convert\_frames](#convert_frames)
* [convert\_frames\_ex](#convert_frames_ex)
* [convert\_pcm\_frames\_format](#convert_pcm_frames_format)
* [copy\_and\_apply\_volume\_factor\_f32](#copy_and_apply_volume_factor_f32)
* [copy\_and\_apply\_volume\_factor\_pcm\_frames](#copy_and_apply_volume_factor_pcm_frames)
* [copy\_and\_apply\_volume\_factor\_pcm\_frames\_f32](#copy_and_apply_volume_factor_pcm_frames_f32)
* [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s16](#copy_and_apply_volume_factor_pcm_frames_s16)
* [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s24](#copy_and_apply_volume_factor_pcm_frames_s24)
* [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s32](#copy_and_apply_volume_factor_pcm_frames_s32)
* [copy\_and\_apply\_volume\_factor\_pcm\_frames\_u8](#copy_and_apply_volume_factor_pcm_frames_u8)
* [copy\_and\_apply\_volume\_factor\_per\_channel\_f32](#copy_and_apply_volume_factor_per_channel_f32)
* [copy\_and\_apply\_volume\_factor\_s16](#copy_and_apply_volume_factor_s16)
* [copy\_and\_apply\_volume\_factor\_s24](#copy_and_apply_volume_factor_s24)
* [copy\_and\_apply\_volume\_factor\_s32](#copy_and_apply_volume_factor_s32)
* [copy\_and\_apply\_volume\_factor\_u8](#copy_and_apply_volume_factor_u8)
* [copy\_pcm\_frames](#copy_pcm_frames)
* [data\_converter\_config\_init](#data_converter_config_init)
* [data\_converter\_config\_init\_default](#data_converter_config_init_default)
* [data\_converter\_get\_expected\_output\_frame\_count](#data_converter_get_expected_output_frame_count)
* [data\_converter\_get\_heap\_size](#data_converter_get_heap_size)
* [data\_converter\_get\_input\_channel\_map](#data_converter_get_input_channel_map)
* [data\_converter\_get\_input\_latency](#data_converter_get_input_latency)
* [data\_converter\_get\_output\_channel\_map](#data_converter_get_output_channel_map)
* [data\_converter\_get\_output\_latency](#data_converter_get_output_latency)
* [data\_converter\_get\_required\_input\_frame\_count](#data_converter_get_required_input_frame_count)
* [data\_converter\_init](#data_converter_init)
* [data\_converter\_init\_preallocated](#data_converter_init_preallocated)
* [data\_converter\_process\_pcm\_frames](#data_converter_process_pcm_frames)
* [data\_converter\_reset](#data_converter_reset)
* [data\_converter\_set\_rate](#data_converter_set_rate)
* [data\_converter\_set\_rate\_ratio](#data_converter_set_rate_ratio)
* [data\_converter\_uninit](#data_converter_uninit)
* [data\_source\_config\_init](#data_source_config_init)
* [data\_source\_get\_current](#data_source_get_current)
* [data\_source\_get\_cursor\_in\_pcm\_frames](#data_source_get_cursor_in_pcm_frames)
* [data\_source\_get\_cursor\_in\_seconds](#data_source_get_cursor_in_seconds)
* [data\_source\_get\_data\_format](#data_source_get_data_format)
* [data\_source\_get\_length\_in\_pcm\_frames](#data_source_get_length_in_pcm_frames)
* [data\_source\_get\_length\_in\_seconds](#data_source_get_length_in_seconds)
* [data\_source\_get\_loop\_point\_in\_pcm\_frames](#data_source_get_loop_point_in_pcm_frames)
* [data\_source\_get\_next](#data_source_get_next)
* [data\_source\_get\_next\_callback](#data_source_get_next_callback)
* [data\_source\_get\_range\_in\_pcm\_frames](#data_source_get_range_in_pcm_frames)
* [data\_source\_init](#data_source_init)
* [data\_source\_is\_looping](#data_source_is_looping)
* [data\_source\_node\_config\_init](#data_source_node_config_init)
* [data\_source\_node\_init](#data_source_node_init)
* [data\_source\_node\_is\_looping](#data_source_node_is_looping)
* [data\_source\_node\_set\_looping](#data_source_node_set_looping)
* [data\_source\_node\_uninit](#data_source_node_uninit)
* [data\_source\_read\_pcm\_frames](#data_source_read_pcm_frames)
* [data\_source\_seek\_pcm\_frames](#data_source_seek_pcm_frames)
* [data\_source\_seek\_seconds](#data_source_seek_seconds)
* [data\_source\_seek\_to\_pcm\_frame](#data_source_seek_to_pcm_frame)
* [data\_source\_seek\_to\_seconds](#data_source_seek_to_seconds)
* [data\_source\_set\_current](#data_source_set_current)
* [data\_source\_set\_loop\_point\_in\_pcm\_frames](#data_source_set_loop_point_in_pcm_frames)
* [data\_source\_set\_looping](#data_source_set_looping)
* [data\_source\_set\_next](#data_source_set_next)
* [data\_source\_set\_next\_callback](#data_source_set_next_callback)
* [data\_source\_set\_range\_in\_pcm\_frames](#data_source_set_range_in_pcm_frames)
* [data\_source\_uninit](#data_source_uninit)
* [decode\_file](#decode_file)
* [decode\_from\_vfs](#decode_from_vfs)
* [decode\_memory](#decode_memory)
* [decoder\_config\_init](#decoder_config_init)
* [decoder\_config\_init\_default](#decoder_config_init_default)
* [decoder\_get\_available\_frames](#decoder_get_available_frames)
* [decoder\_get\_cursor\_in\_pcm\_frames](#decoder_get_cursor_in_pcm_frames)
* [decoder\_get\_data\_format](#decoder_get_data_format)
* [decoder\_get\_length\_in\_pcm\_frames](#decoder_get_length_in_pcm_frames)
* [decoder\_init](#decoder_init)
* [decoder\_init\_file](#decoder_init_file)
* [decoder\_init\_file\_w](#decoder_init_file_w)
* [decoder\_init\_memory](#decoder_init_memory)
* [decoder\_init\_vfs](#decoder_init_vfs)
* [decoder\_init\_vfs\_w](#decoder_init_vfs_w)
* [decoder\_read\_pcm\_frames](#decoder_read_pcm_frames)
* [decoder\_seek\_to\_pcm\_frame](#decoder_seek_to_pcm_frame)
* [decoder\_uninit](#decoder_uninit)
* [decoding\_backend\_config\_init](#decoding_backend_config_init)
* [default\_vfs\_init](#default_vfs_init)
* [deinterleave\_pcm\_frames](#deinterleave_pcm_frames)
* [delay\_config\_init](#delay_config_init)
* [delay\_get\_decay](#delay_get_decay)
* [delay\_get\_dry](#delay_get_dry)
* [delay\_get\_wet](#delay_get_wet)
* [delay\_init](#delay_init)
* [delay\_node\_config\_init](#delay_node_config_init)
* [delay\_node\_get\_decay](#delay_node_get_decay)
* [delay\_node\_get\_dry](#delay_node_get_dry)
* [delay\_node\_get\_wet](#delay_node_get_wet)
* [delay\_node\_init](#delay_node_init)
* [delay\_node\_set\_decay](#delay_node_set_decay)
* [delay\_node\_set\_dry](#delay_node_set_dry)
* [delay\_node\_set\_wet](#delay_node_set_wet)
* [delay\_node\_uninit](#delay_node_uninit)
* [delay\_process\_pcm\_frames](#delay_process_pcm_frames)
* [delay\_set\_decay](#delay_set_decay)
* [delay\_set\_dry](#delay_set_dry)
* [delay\_set\_wet](#delay_set_wet)
* [delay\_uninit](#delay_uninit)
* [device\_config\_init](#device_config_init)
* [device\_get\_context](#device_get_context)
* [device\_get\_info](#device_get_info)
* [device\_get\_log](#device_get_log)
* [device\_get\_master\_volume](#device_get_master_volume)
* [device\_get\_master\_volume\_db](#device_get_master_volume_db)
* [device\_get\_name](#device_get_name)
* [device\_get\_state](#device_get_state)
* [device\_handle\_backend\_data\_callback](#device_handle_backend_data_callback)
* [device\_id\_equal](#device_id_equal)
* [device\_init](#device_init)
* [device\_init\_ex](#device_init_ex)
* [device\_is\_started](#device_is_started)
* [device\_job\_thread\_config\_init](#device_job_thread_config_init)
* [device\_job\_thread\_init](#device_job_thread_init)
* [device\_job\_thread\_next](#device_job_thread_next)
* [device\_job\_thread\_post](#device_job_thread_post)
* [device\_job\_thread\_uninit](#device_job_thread_uninit)
* [device\_post\_init](#device_post_init)
* [device\_set\_master\_volume](#device_set_master_volume)
* [device\_set\_master\_volume\_db](#device_set_master_volume_db)
* [device\_start](#device_start)
* [device\_stop](#device_stop)
* [device\_uninit](#device_uninit)
* [duplex\_rb\_init](#duplex_rb_init)
* [duplex\_rb\_uninit](#duplex_rb_uninit)
* [encoder\_config\_init](#encoder_config_init)
* [encoder\_init](#encoder_init)
* [encoder\_init\_file](#encoder_init_file)
* [encoder\_init\_file\_w](#encoder_init_file_w)
* [encoder\_init\_vfs](#encoder_init_vfs)
* [encoder\_init\_vfs\_w](#encoder_init_vfs_w)
* [encoder\_uninit](#encoder_uninit)
* [encoder\_write\_pcm\_frames](#encoder_write_pcm_frames)
* [engine\_config\_init](#engine_config_init)
* [engine\_find\_closest\_listener](#engine_find_closest_listener)
* [engine\_get\_channels](#engine_get_channels)
* [engine\_get\_device](#engine_get_device)
* [engine\_get\_endpoint](#engine_get_endpoint)
* [engine\_get\_gain\_db](#engine_get_gain_db)
* [engine\_get\_listener\_count](#engine_get_listener_count)
* [engine\_get\_log](#engine_get_log)
* [engine\_get\_node\_graph](#engine_get_node_graph)
* [engine\_get\_resource\_manager](#engine_get_resource_manager)
* [engine\_get\_sample\_rate](#engine_get_sample_rate)
* [engine\_get\_time](#engine_get_time)
* [engine\_get\_time\_in\_milliseconds](#engine_get_time_in_milliseconds)
* [engine\_get\_time\_in\_pcm\_frames](#engine_get_time_in_pcm_frames)
* [engine\_get\_volume](#engine_get_volume)
* [engine\_init](#engine_init)
* [engine\_listener\_get\_cone](#engine_listener_get_cone)
* [engine\_listener\_get\_direction](#engine_listener_get_direction)
* [engine\_listener\_get\_position](#engine_listener_get_position)
* [engine\_listener\_get\_velocity](#engine_listener_get_velocity)
* [engine\_listener\_get\_world\_up](#engine_listener_get_world_up)
* [engine\_listener\_is\_enabled](#engine_listener_is_enabled)
* [engine\_listener\_set\_cone](#engine_listener_set_cone)
* [engine\_listener\_set\_direction](#engine_listener_set_direction)
* [engine\_listener\_set\_enabled](#engine_listener_set_enabled)
* [engine\_listener\_set\_position](#engine_listener_set_position)
* [engine\_listener\_set\_velocity](#engine_listener_set_velocity)
* [engine\_listener\_set\_world\_up](#engine_listener_set_world_up)
* [engine\_node\_config\_init](#engine_node_config_init)
* [engine\_node\_get\_heap\_size](#engine_node_get_heap_size)
* [engine\_node\_init](#engine_node_init)
* [engine\_node\_init\_preallocated](#engine_node_init_preallocated)
* [engine\_node\_uninit](#engine_node_uninit)
* [engine\_play\_sound](#engine_play_sound)
* [engine\_play\_sound\_ex](#engine_play_sound_ex)
* [engine\_read\_pcm\_frames](#engine_read_pcm_frames)
* [engine\_set\_gain\_db](#engine_set_gain_db)
* [engine\_set\_time](#engine_set_time)
* [engine\_set\_time\_in\_milliseconds](#engine_set_time_in_milliseconds)
* [engine\_set\_time\_in\_pcm\_frames](#engine_set_time_in_pcm_frames)
* [engine\_set\_volume](#engine_set_volume)
* [engine\_start](#engine_start)
* [engine\_stop](#engine_stop)
* [engine\_uninit](#engine_uninit)
* [event\_init](#event_init)
* [event\_signal](#event_signal)
* [event\_uninit](#event_uninit)
* [event\_wait](#event_wait)
* [fader\_config\_init](#fader_config_init)
* [fader\_get\_current\_volume](#fader_get_current_volume)
* [fader\_get\_data\_format](#fader_get_data_format)
* [fader\_init](#fader_init)
* [fader\_process\_pcm\_frames](#fader_process_pcm_frames)
* [fader\_set\_fade](#fader_set_fade)
* [fader\_set\_fade\_ex](#fader_set_fade_ex)
* [fence\_acquire](#fence_acquire)
* [fence\_init](#fence_init)
* [fence\_release](#fence_release)
* [fence\_uninit](#fence_uninit)
* [fence\_wait](#fence_wait)
* [free](#free)
* [gainer\_config\_init](#gainer_config_init)
* [gainer\_get\_heap\_size](#gainer_get_heap_size)
* [gainer\_get\_master\_volume](#gainer_get_master_volume)
* [gainer\_init](#gainer_init)
* [gainer\_init\_preallocated](#gainer_init_preallocated)
* [gainer\_process\_pcm\_frames](#gainer_process_pcm_frames)
* [gainer\_set\_gain](#gainer_set_gain)
* [gainer\_set\_gains](#gainer_set_gains)
* [gainer\_set\_master\_volume](#gainer_set_master_volume)
* [gainer\_uninit](#gainer_uninit)
* [get\_backend\_from\_name](#get_backend_from_name)
* [get\_backend\_name](#get_backend_name)
* [get\_bytes\_per\_frame](#get_bytes_per_frame)
* [get\_bytes\_per\_sample](#get_bytes_per_sample)
* [get\_enabled\_backends](#get_enabled_backends)
* [get\_format\_name](#get_format_name)
* [hishelf2\_config\_init](#hishelf2_config_init)
* [hishelf2\_get\_heap\_size](#hishelf2_get_heap_size)
* [hishelf2\_get\_latency](#hishelf2_get_latency)
* [hishelf2\_init](#hishelf2_init)
* [hishelf2\_init\_preallocated](#hishelf2_init_preallocated)
* [hishelf2\_process\_pcm\_frames](#hishelf2_process_pcm_frames)
* [hishelf2\_reinit](#hishelf2_reinit)
* [hishelf2\_uninit](#hishelf2_uninit)
* [hishelf\_node\_config\_init](#hishelf_node_config_init)
* [hishelf\_node\_init](#hishelf_node_init)
* [hishelf\_node\_reinit](#hishelf_node_reinit)
* [hishelf\_node\_uninit](#hishelf_node_uninit)
* [hpf1\_config\_init](#hpf1_config_init)
* [hpf1\_get\_heap\_size](#hpf1_get_heap_size)
* [hpf1\_get\_latency](#hpf1_get_latency)
* [hpf1\_init](#hpf1_init)
* [hpf1\_init\_preallocated](#hpf1_init_preallocated)
* [hpf1\_process\_pcm\_frames](#hpf1_process_pcm_frames)
* [hpf1\_reinit](#hpf1_reinit)
* [hpf1\_uninit](#hpf1_uninit)
* [hpf2\_config\_init](#hpf2_config_init)
* [hpf2\_get\_heap\_size](#hpf2_get_heap_size)
* [hpf2\_get\_latency](#hpf2_get_latency)
* [hpf2\_init](#hpf2_init)
* [hpf2\_init\_preallocated](#hpf2_init_preallocated)
* [hpf2\_process\_pcm\_frames](#hpf2_process_pcm_frames)
* [hpf2\_reinit](#hpf2_reinit)
* [hpf2\_uninit](#hpf2_uninit)
* [hpf\_config\_init](#hpf_config_init)
* [hpf\_get\_heap\_size](#hpf_get_heap_size)
* [hpf\_get\_latency](#hpf_get_latency)
* [hpf\_init](#hpf_init)
* [hpf\_init\_preallocated](#hpf_init_preallocated)
* [hpf\_node\_config\_init](#hpf_node_config_init)
* [hpf\_node\_init](#hpf_node_init)
* [hpf\_node\_reinit](#hpf_node_reinit)
* [hpf\_node\_uninit](#hpf_node_uninit)
* [hpf\_process\_pcm\_frames](#hpf_process_pcm_frames)
* [hpf\_reinit](#hpf_reinit)
* [hpf\_uninit](#hpf_uninit)
* [interleave\_pcm\_frames](#interleave_pcm_frames)
* [is\_backend\_enabled](#is_backend_enabled)
* [is\_loopback\_supported](#is_loopback_supported)
* [job\_init](#job_init)
* [job\_process](#job_process)
* [job\_queue\_config\_init](#job_queue_config_init)
* [job\_queue\_get\_heap\_size](#job_queue_get_heap_size)
* [job\_queue\_init](#job_queue_init)
* [job\_queue\_init\_preallocated](#job_queue_init_preallocated)
* [job\_queue\_next](#job_queue_next)
* [job\_queue\_post](#job_queue_post)
* [job\_queue\_uninit](#job_queue_uninit)
* [linear\_resampler\_config\_init](#linear_resampler_config_init)
* [linear\_resampler\_get\_expected\_output\_frame\_count](#linear_resampler_get_expected_output_frame_count)
* [linear\_resampler\_get\_heap\_size](#linear_resampler_get_heap_size)
* [linear\_resampler\_get\_input\_latency](#linear_resampler_get_input_latency)
* [linear\_resampler\_get\_output\_latency](#linear_resampler_get_output_latency)
* [linear\_resampler\_get\_required\_input\_frame\_count](#linear_resampler_get_required_input_frame_count)
* [linear\_resampler\_init](#linear_resampler_init)
* [linear\_resampler\_init\_preallocated](#linear_resampler_init_preallocated)
* [linear\_resampler\_process\_pcm\_frames](#linear_resampler_process_pcm_frames)
* [linear\_resampler\_reset](#linear_resampler_reset)
* [linear\_resampler\_set\_rate](#linear_resampler_set_rate)
* [linear\_resampler\_set\_rate\_ratio](#linear_resampler_set_rate_ratio)
* [linear\_resampler\_uninit](#linear_resampler_uninit)
* [log\_callback\_init](#log_callback_init)
* [log\_init](#log_init)
* [log\_level\_to\_string](#log_level_to_string)
* [log\_post](#log_post)
* [log\_postf](#log_postf)
* [log\_postv](#log_postv)
* [log\_register\_callback](#log_register_callback)
* [log\_uninit](#log_uninit)
* [log\_unregister\_callback](#log_unregister_callback)
* [loshelf2\_config\_init](#loshelf2_config_init)
* [loshelf2\_get\_heap\_size](#loshelf2_get_heap_size)
* [loshelf2\_get\_latency](#loshelf2_get_latency)
* [loshelf2\_init](#loshelf2_init)
* [loshelf2\_init\_preallocated](#loshelf2_init_preallocated)
* [loshelf2\_process\_pcm\_frames](#loshelf2_process_pcm_frames)
* [loshelf2\_reinit](#loshelf2_reinit)
* [loshelf2\_uninit](#loshelf2_uninit)
* [loshelf\_node\_config\_init](#loshelf_node_config_init)
* [loshelf\_node\_init](#loshelf_node_init)
* [loshelf\_node\_reinit](#loshelf_node_reinit)
* [loshelf\_node\_uninit](#loshelf_node_uninit)
* [lpf1\_clear\_cache](#lpf1_clear_cache)
* [lpf1\_config\_init](#lpf1_config_init)
* [lpf1\_get\_heap\_size](#lpf1_get_heap_size)
* [lpf1\_get\_latency](#lpf1_get_latency)
* [lpf1\_init](#lpf1_init)
* [lpf1\_init\_preallocated](#lpf1_init_preallocated)
* [lpf1\_process\_pcm\_frames](#lpf1_process_pcm_frames)
* [lpf1\_reinit](#lpf1_reinit)
* [lpf1\_uninit](#lpf1_uninit)
* [lpf2\_clear\_cache](#lpf2_clear_cache)
* [lpf2\_config\_init](#lpf2_config_init)
* [lpf2\_get\_heap\_size](#lpf2_get_heap_size)
* [lpf2\_get\_latency](#lpf2_get_latency)
* [lpf2\_init](#lpf2_init)
* [lpf2\_init\_preallocated](#lpf2_init_preallocated)
* [lpf2\_process\_pcm\_frames](#lpf2_process_pcm_frames)
* [lpf2\_reinit](#lpf2_reinit)
* [lpf2\_uninit](#lpf2_uninit)
* [lpf\_clear\_cache](#lpf_clear_cache)
* [lpf\_config\_init](#lpf_config_init)
* [lpf\_get\_heap\_size](#lpf_get_heap_size)
* [lpf\_get\_latency](#lpf_get_latency)
* [lpf\_init](#lpf_init)
* [lpf\_init\_preallocated](#lpf_init_preallocated)
* [lpf\_node\_config\_init](#lpf_node_config_init)
* [lpf\_node\_init](#lpf_node_init)
* [lpf\_node\_reinit](#lpf_node_reinit)
* [lpf\_node\_uninit](#lpf_node_uninit)
* [lpf\_process\_pcm\_frames](#lpf_process_pcm_frames)
* [lpf\_reinit](#lpf_reinit)
* [lpf\_uninit](#lpf_uninit)
* [ma\_copy\_and\_apply\_volume\_and\_clip\_pcm\_frames](#ma_copy_and_apply_volume_and_clip_pcm_frames)
* [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_f32](#ma_copy_and_apply_volume_and_clip_samples_f32)
* [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s16](#ma_copy_and_apply_volume_and_clip_samples_s16)
* [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s24](#ma_copy_and_apply_volume_and_clip_samples_s24)
* [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s32](#ma_copy_and_apply_volume_and_clip_samples_s32)
* [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_u8](#ma_copy_and_apply_volume_and_clip_samples_u8)
* [ma\_mix\_pcm\_frames\_f32](#ma_mix_pcm_frames_f32)
* [malloc](#malloc)
* [mutex\_init](#mutex_init)
* [mutex\_lock](#mutex_lock)
* [mutex\_uninit](#mutex_uninit)
* [mutex\_unlock](#mutex_unlock)
* [node\_attach\_output\_bus](#node_attach_output_bus)
* [node\_config\_init](#node_config_init)
* [node\_detach\_all\_output\_buses](#node_detach_all_output_buses)
* [node\_detach\_output\_bus](#node_detach_output_bus)
* [node\_get\_heap\_size](#node_get_heap_size)
* [node\_get\_input\_bus\_count](#node_get_input_bus_count)
* [node\_get\_input\_channels](#node_get_input_channels)
* [node\_get\_node\_graph](#node_get_node_graph)
* [node\_get\_output\_bus\_count](#node_get_output_bus_count)
* [node\_get\_output\_bus\_volume](#node_get_output_bus_volume)
* [node\_get\_output\_channels](#node_get_output_channels)
* [node\_get\_state](#node_get_state)
* [node\_get\_state\_by\_time](#node_get_state_by_time)
* [node\_get\_state\_by\_time\_range](#node_get_state_by_time_range)
* [node\_get\_state\_time](#node_get_state_time)
* [node\_get\_time](#node_get_time)
* [node\_graph\_config\_init](#node_graph_config_init)
* [node\_graph\_get\_channels](#node_graph_get_channels)
* [node\_graph\_get\_endpoint](#node_graph_get_endpoint)
* [node\_graph\_get\_processing\_size\_in\_frames](#node_graph_get_processing_size_in_frames)
* [node\_graph\_get\_time](#node_graph_get_time)
* [node\_graph\_init](#node_graph_init)
* [node\_graph\_read\_pcm\_frames](#node_graph_read_pcm_frames)
* [node\_graph\_set\_time](#node_graph_set_time)
* [node\_graph\_uninit](#node_graph_uninit)
* [node\_init](#node_init)
* [node\_init\_preallocated](#node_init_preallocated)
* [node\_set\_output\_bus\_volume](#node_set_output_bus_volume)
* [node\_set\_state](#node_set_state)
* [node\_set\_state\_time](#node_set_state_time)
* [node\_set\_time](#node_set_time)
* [node\_uninit](#node_uninit)
* [noise\_config\_init](#noise_config_init)
* [noise\_get\_heap\_size](#noise_get_heap_size)
* [noise\_init](#noise_init)
* [noise\_init\_preallocated](#noise_init_preallocated)
* [noise\_read\_pcm\_frames](#noise_read_pcm_frames)
* [noise\_set\_amplitude](#noise_set_amplitude)
* [noise\_set\_seed](#noise_set_seed)
* [noise\_set\_type](#noise_set_type)
* [noise\_uninit](#noise_uninit)
* [notch2\_config\_init](#notch2_config_init)
* [notch2\_get\_heap\_size](#notch2_get_heap_size)
* [notch2\_get\_latency](#notch2_get_latency)
* [notch2\_init](#notch2_init)
* [notch2\_init\_preallocated](#notch2_init_preallocated)
* [notch2\_process\_pcm\_frames](#notch2_process_pcm_frames)
* [notch2\_reinit](#notch2_reinit)
* [notch2\_uninit](#notch2_uninit)
* [notch\_node\_config\_init](#notch_node_config_init)
* [notch\_node\_init](#notch_node_init)
* [notch\_node\_reinit](#notch_node_reinit)
* [notch\_node\_uninit](#notch_node_uninit)
* [offset\_pcm\_frames\_const\_ptr](#offset_pcm_frames_const_ptr)
* [offset\_pcm\_frames\_const\_ptr\_f32](#offset_pcm_frames_const_ptr_f32)
* [offset\_pcm\_frames\_ptr](#offset_pcm_frames_ptr)
* [offset\_pcm\_frames\_ptr\_f32](#offset_pcm_frames_ptr_f32)
* [paged\_audio\_buffer\_config\_init](#paged_audio_buffer_config_init)
* [paged\_audio\_buffer\_data\_allocate\_and\_append\_page](#paged_audio_buffer_data_allocate_and_append_page)
* [paged\_audio\_buffer\_data\_allocate\_page](#paged_audio_buffer_data_allocate_page)
* [paged\_audio\_buffer\_data\_append\_page](#paged_audio_buffer_data_append_page)
* [paged\_audio\_buffer\_data\_free\_page](#paged_audio_buffer_data_free_page)
* [paged\_audio\_buffer\_data\_get\_head](#paged_audio_buffer_data_get_head)
* [paged\_audio\_buffer\_data\_get\_length\_in\_pcm\_frames](#paged_audio_buffer_data_get_length_in_pcm_frames)
* [paged\_audio\_buffer\_data\_get\_tail](#paged_audio_buffer_data_get_tail)
* [paged\_audio\_buffer\_data\_init](#paged_audio_buffer_data_init)
* [paged\_audio\_buffer\_data\_uninit](#paged_audio_buffer_data_uninit)
* [paged\_audio\_buffer\_get\_cursor\_in\_pcm\_frames](#paged_audio_buffer_get_cursor_in_pcm_frames)
* [paged\_audio\_buffer\_get\_length\_in\_pcm\_frames](#paged_audio_buffer_get_length_in_pcm_frames)
* [paged\_audio\_buffer\_init](#paged_audio_buffer_init)
* [paged\_audio\_buffer\_read\_pcm\_frames](#paged_audio_buffer_read_pcm_frames)
* [paged\_audio\_buffer\_seek\_to\_pcm\_frame](#paged_audio_buffer_seek_to_pcm_frame)
* [paged\_audio\_buffer\_uninit](#paged_audio_buffer_uninit)
* [panner\_config\_init](#panner_config_init)
* [panner\_get\_mode](#panner_get_mode)
* [panner\_get\_pan](#panner_get_pan)
* [panner\_init](#panner_init)
* [panner\_process\_pcm\_frames](#panner_process_pcm_frames)
* [panner\_set\_mode](#panner_set_mode)
* [panner\_set\_pan](#panner_set_pan)
* [pcm\_convert](#pcm_convert)
* [pcm\_f32\_to\_s16](#pcm_f32_to_s16)
* [pcm\_f32\_to\_s24](#pcm_f32_to_s24)
* [pcm\_f32\_to\_s32](#pcm_f32_to_s32)
* [pcm\_f32\_to\_u8](#pcm_f32_to_u8)
* [pcm\_rb\_acquire\_read](#pcm_rb_acquire_read)
* [pcm\_rb\_acquire\_write](#pcm_rb_acquire_write)
* [pcm\_rb\_available\_read](#pcm_rb_available_read)
* [pcm\_rb\_available\_write](#pcm_rb_available_write)
* [pcm\_rb\_commit\_read](#pcm_rb_commit_read)
* [pcm\_rb\_commit\_write](#pcm_rb_commit_write)
* [pcm\_rb\_get\_channels](#pcm_rb_get_channels)
* [pcm\_rb\_get\_format](#pcm_rb_get_format)
* [pcm\_rb\_get\_sample\_rate](#pcm_rb_get_sample_rate)
* [pcm\_rb\_get\_subbuffer\_offset](#pcm_rb_get_subbuffer_offset)
* [pcm\_rb\_get\_subbuffer\_ptr](#pcm_rb_get_subbuffer_ptr)
* [pcm\_rb\_get\_subbuffer\_size](#pcm_rb_get_subbuffer_size)
* [pcm\_rb\_get\_subbuffer\_stride](#pcm_rb_get_subbuffer_stride)
* [pcm\_rb\_init](#pcm_rb_init)
* [pcm\_rb\_init\_ex](#pcm_rb_init_ex)
* [pcm\_rb\_pointer\_distance](#pcm_rb_pointer_distance)
* [pcm\_rb\_reset](#pcm_rb_reset)
* [pcm\_rb\_seek\_read](#pcm_rb_seek_read)
* [pcm\_rb\_seek\_write](#pcm_rb_seek_write)
* [pcm\_rb\_set\_sample\_rate](#pcm_rb_set_sample_rate)
* [pcm\_rb\_uninit](#pcm_rb_uninit)
* [pcm\_s16\_to\_f32](#pcm_s16_to_f32)
* [pcm\_s16\_to\_s24](#pcm_s16_to_s24)
* [pcm\_s16\_to\_s32](#pcm_s16_to_s32)
* [pcm\_s16\_to\_u8](#pcm_s16_to_u8)
* [pcm\_s24\_to\_f32](#pcm_s24_to_f32)
* [pcm\_s24\_to\_s16](#pcm_s24_to_s16)
* [pcm\_s24\_to\_s32](#pcm_s24_to_s32)
* [pcm\_s24\_to\_u8](#pcm_s24_to_u8)
* [pcm\_s32\_to\_f32](#pcm_s32_to_f32)
* [pcm\_s32\_to\_s16](#pcm_s32_to_s16)
* [pcm\_s32\_to\_s24](#pcm_s32_to_s24)
* [pcm\_s32\_to\_u8](#pcm_s32_to_u8)
* [pcm\_u8\_to\_f32](#pcm_u8_to_f32)
* [pcm\_u8\_to\_s16](#pcm_u8_to_s16)
* [pcm\_u8\_to\_s24](#pcm_u8_to_s24)
* [pcm\_u8\_to\_s32](#pcm_u8_to_s32)
* [peak2\_config\_init](#peak2_config_init)
* [peak2\_get\_heap\_size](#peak2_get_heap_size)
* [peak2\_get\_latency](#peak2_get_latency)
* [peak2\_init](#peak2_init)
* [peak2\_init\_preallocated](#peak2_init_preallocated)
* [peak2\_process\_pcm\_frames](#peak2_process_pcm_frames)
* [peak2\_reinit](#peak2_reinit)
* [peak2\_uninit](#peak2_uninit)
* [peak\_node\_config\_init](#peak_node_config_init)
* [peak\_node\_init](#peak_node_init)
* [peak\_node\_reinit](#peak_node_reinit)
* [peak\_node\_uninit](#peak_node_uninit)
* [pulsewave\_config\_init](#pulsewave_config_init)
* [pulsewave\_init](#pulsewave_init)
* [pulsewave\_read\_pcm\_frames](#pulsewave_read_pcm_frames)
* [pulsewave\_seek\_to\_pcm\_frame](#pulsewave_seek_to_pcm_frame)
* [pulsewave\_set\_amplitude](#pulsewave_set_amplitude)
* [pulsewave\_set\_duty\_cycle](#pulsewave_set_duty_cycle)
* [pulsewave\_set\_frequency](#pulsewave_set_frequency)
* [pulsewave\_set\_sample\_rate](#pulsewave_set_sample_rate)
* [pulsewave\_uninit](#pulsewave_uninit)
* [rb\_acquire\_read](#rb_acquire_read)
* [rb\_acquire\_write](#rb_acquire_write)
* [rb\_available\_read](#rb_available_read)
* [rb\_available\_write](#rb_available_write)
* [rb\_commit\_read](#rb_commit_read)
* [rb\_commit\_write](#rb_commit_write)
* [rb\_get\_subbuffer\_offset](#rb_get_subbuffer_offset)
* [rb\_get\_subbuffer\_ptr](#rb_get_subbuffer_ptr)
* [rb\_get\_subbuffer\_size](#rb_get_subbuffer_size)
* [rb\_get\_subbuffer\_stride](#rb_get_subbuffer_stride)
* [rb\_init](#rb_init)
* [rb\_init\_ex](#rb_init_ex)
* [rb\_pointer\_distance](#rb_pointer_distance)
* [rb\_reset](#rb_reset)
* [rb\_seek\_read](#rb_seek_read)
* [rb\_seek\_write](#rb_seek_write)
* [rb\_uninit](#rb_uninit)
* [realloc](#realloc)
* [resampler\_config\_init](#resampler_config_init)
* [resampler\_get\_expected\_output\_frame\_count](#resampler_get_expected_output_frame_count)
* [resampler\_get\_heap\_size](#resampler_get_heap_size)
* [resampler\_get\_input\_latency](#resampler_get_input_latency)
* [resampler\_get\_output\_latency](#resampler_get_output_latency)
* [resampler\_get\_required\_input\_frame\_count](#resampler_get_required_input_frame_count)
* [resampler\_init](#resampler_init)
* [resampler\_init\_preallocated](#resampler_init_preallocated)
* [resampler\_process\_pcm\_frames](#resampler_process_pcm_frames)
* [resampler\_reset](#resampler_reset)
* [resampler\_set\_rate](#resampler_set_rate)
* [resampler\_set\_rate\_ratio](#resampler_set_rate_ratio)
* [resampler\_uninit](#resampler_uninit)
* [resource\_manager\_config\_init](#resource_manager_config_init)
* [resource\_manager\_data\_buffer\_get\_available\_frames](#resource_manager_data_buffer_get_available_frames)
* [resource\_manager\_data\_buffer\_get\_cursor\_in\_pcm\_frames](#resource_manager_data_buffer_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_buffer\_get\_data\_format](#resource_manager_data_buffer_get_data_format)
* [resource\_manager\_data\_buffer\_get\_length\_in\_pcm\_frames](#resource_manager_data_buffer_get_length_in_pcm_frames)
* [resource\_manager\_data\_buffer\_init](#resource_manager_data_buffer_init)
* [resource\_manager\_data\_buffer\_init\_copy](#resource_manager_data_buffer_init_copy)
* [resource\_manager\_data\_buffer\_init\_ex](#resource_manager_data_buffer_init_ex)
* [resource\_manager\_data\_buffer\_init\_w](#resource_manager_data_buffer_init_w)
* [resource\_manager\_data\_buffer\_is\_looping](#resource_manager_data_buffer_is_looping)
* [resource\_manager\_data\_buffer\_read\_pcm\_frames](#resource_manager_data_buffer_read_pcm_frames)
* [resource\_manager\_data\_buffer\_result](#resource_manager_data_buffer_result)
* [resource\_manager\_data\_buffer\_seek\_to\_pcm\_frame](#resource_manager_data_buffer_seek_to_pcm_frame)
* [resource\_manager\_data\_buffer\_set\_looping](#resource_manager_data_buffer_set_looping)
* [resource\_manager\_data\_buffer\_uninit](#resource_manager_data_buffer_uninit)
* [resource\_manager\_data\_source\_config\_init](#resource_manager_data_source_config_init)
* [resource\_manager\_data\_source\_get\_available\_frames](#resource_manager_data_source_get_available_frames)
* [resource\_manager\_data\_source\_get\_cursor\_in\_pcm\_frames](#resource_manager_data_source_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_source\_get\_data\_format](#resource_manager_data_source_get_data_format)
* [resource\_manager\_data\_source\_get\_length\_in\_pcm\_frames](#resource_manager_data_source_get_length_in_pcm_frames)
* [resource\_manager\_data\_source\_init](#resource_manager_data_source_init)
* [resource\_manager\_data\_source\_init\_copy](#resource_manager_data_source_init_copy)
* [resource\_manager\_data\_source\_init\_ex](#resource_manager_data_source_init_ex)
* [resource\_manager\_data\_source\_init\_w](#resource_manager_data_source_init_w)
* [resource\_manager\_data\_source\_is\_looping](#resource_manager_data_source_is_looping)
* [resource\_manager\_data\_source\_read\_pcm\_frames](#resource_manager_data_source_read_pcm_frames)
* [resource\_manager\_data\_source\_result](#resource_manager_data_source_result)
* [resource\_manager\_data\_source\_seek\_to\_pcm\_frame](#resource_manager_data_source_seek_to_pcm_frame)
* [resource\_manager\_data\_source\_set\_looping](#resource_manager_data_source_set_looping)
* [resource\_manager\_data\_source\_uninit](#resource_manager_data_source_uninit)
* [resource\_manager\_data\_stream\_get\_available\_frames](#resource_manager_data_stream_get_available_frames)
* [resource\_manager\_data\_stream\_get\_cursor\_in\_pcm\_frames](#resource_manager_data_stream_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_stream\_get\_data\_format](#resource_manager_data_stream_get_data_format)
* [resource\_manager\_data\_stream\_get\_length\_in\_pcm\_frames](#resource_manager_data_stream_get_length_in_pcm_frames)
* [resource\_manager\_data\_stream\_init](#resource_manager_data_stream_init)
* [resource\_manager\_data\_stream\_init\_ex](#resource_manager_data_stream_init_ex)
* [resource\_manager\_data\_stream\_init\_w](#resource_manager_data_stream_init_w)
* [resource\_manager\_data\_stream\_is\_looping](#resource_manager_data_stream_is_looping)
* [resource\_manager\_data\_stream\_read\_pcm\_frames](#resource_manager_data_stream_read_pcm_frames)
* [resource\_manager\_data\_stream\_result](#resource_manager_data_stream_result)
* [resource\_manager\_data\_stream\_seek\_to\_pcm\_frame](#resource_manager_data_stream_seek_to_pcm_frame)
* [resource\_manager\_data\_stream\_set\_looping](#resource_manager_data_stream_set_looping)
* [resource\_manager\_data\_stream\_uninit](#resource_manager_data_stream_uninit)
* [resource\_manager\_get\_log](#resource_manager_get_log)
* [resource\_manager\_init](#resource_manager_init)
* [resource\_manager\_job\_init](#resource_manager_job_init)
* [resource\_manager\_job\_queue\_config\_init](#resource_manager_job_queue_config_init)
* [resource\_manager\_job\_queue\_get\_heap\_size](#resource_manager_job_queue_get_heap_size)
* [resource\_manager\_job\_queue\_init](#resource_manager_job_queue_init)
* [resource\_manager\_job\_queue\_init\_preallocated](#resource_manager_job_queue_init_preallocated)
* [resource\_manager\_job\_queue\_next](#resource_manager_job_queue_next)
* [resource\_manager\_job\_queue\_post](#resource_manager_job_queue_post)
* [resource\_manager\_job\_queue\_uninit](#resource_manager_job_queue_uninit)
* [resource\_manager\_next\_job](#resource_manager_next_job)
* [resource\_manager\_pipeline\_notifications\_init](#resource_manager_pipeline_notifications_init)
* [resource\_manager\_post\_job](#resource_manager_post_job)
* [resource\_manager\_post\_job\_quit](#resource_manager_post_job_quit)
* [resource\_manager\_process\_job](#resource_manager_process_job)
* [resource\_manager\_process\_next\_job](#resource_manager_process_next_job)
* [resource\_manager\_register\_decoded\_data](#resource_manager_register_decoded_data)
* [resource\_manager\_register\_decoded\_data\_w](#resource_manager_register_decoded_data_w)
* [resource\_manager\_register\_encoded\_data](#resource_manager_register_encoded_data)
* [resource\_manager\_register\_encoded\_data\_w](#resource_manager_register_encoded_data_w)
* [resource\_manager\_register\_file](#resource_manager_register_file)
* [resource\_manager\_register\_file\_w](#resource_manager_register_file_w)
* [resource\_manager\_uninit](#resource_manager_uninit)
* [resource\_manager\_unregister\_data](#resource_manager_unregister_data)
* [resource\_manager\_unregister\_data\_w](#resource_manager_unregister_data_w)
* [resource\_manager\_unregister\_file](#resource_manager_unregister_file)
* [resource\_manager\_unregister\_file\_w](#resource_manager_unregister_file_w)
* [result\_description](#result_description)
* [semaphore\_init](#semaphore_init)
* [semaphore\_release](#semaphore_release)
* [semaphore\_uninit](#semaphore_uninit)
* [semaphore\_wait](#semaphore_wait)
* [silence\_pcm\_frames](#silence_pcm_frames)
* [slot\_allocator\_alloc](#slot_allocator_alloc)
* [slot\_allocator\_config\_init](#slot_allocator_config_init)
* [slot\_allocator\_free](#slot_allocator_free)
* [slot\_allocator\_get\_heap\_size](#slot_allocator_get_heap_size)
* [slot\_allocator\_init](#slot_allocator_init)
* [slot\_allocator\_init\_preallocated](#slot_allocator_init_preallocated)
* [slot\_allocator\_uninit](#slot_allocator_uninit)
* [sound\_at\_end](#sound_at_end)
* [sound\_config\_init](#sound_config_init)
* [sound\_config\_init\_2](#sound_config_init_2)
* [sound\_get\_attenuation\_model](#sound_get_attenuation_model)
* [sound\_get\_cone](#sound_get_cone)
* [sound\_get\_current\_fade\_volume](#sound_get_current_fade_volume)
* [sound\_get\_cursor\_in\_pcm\_frames](#sound_get_cursor_in_pcm_frames)
* [sound\_get\_cursor\_in\_seconds](#sound_get_cursor_in_seconds)
* [sound\_get\_data\_format](#sound_get_data_format)
* [sound\_get\_data\_source](#sound_get_data_source)
* [sound\_get\_direction](#sound_get_direction)
* [sound\_get\_direction\_to\_listener](#sound_get_direction_to_listener)
* [sound\_get\_directional\_attenuation\_factor](#sound_get_directional_attenuation_factor)
* [sound\_get\_doppler\_factor](#sound_get_doppler_factor)
* [sound\_get\_engine](#sound_get_engine)
* [sound\_get\_length\_in\_pcm\_frames](#sound_get_length_in_pcm_frames)
* [sound\_get\_length\_in\_seconds](#sound_get_length_in_seconds)
* [sound\_get\_listener\_index](#sound_get_listener_index)
* [sound\_get\_max\_distance](#sound_get_max_distance)
* [sound\_get\_max\_gain](#sound_get_max_gain)
* [sound\_get\_min\_distance](#sound_get_min_distance)
* [sound\_get\_min\_gain](#sound_get_min_gain)
* [sound\_get\_pan](#sound_get_pan)
* [sound\_get\_pan\_mode](#sound_get_pan_mode)
* [sound\_get\_pinned\_listener\_index](#sound_get_pinned_listener_index)
* [sound\_get\_pitch](#sound_get_pitch)
* [sound\_get\_position](#sound_get_position)
* [sound\_get\_positioning](#sound_get_positioning)
* [sound\_get\_rolloff](#sound_get_rolloff)
* [sound\_get\_time\_in\_milliseconds](#sound_get_time_in_milliseconds)
* [sound\_get\_time\_in\_pcm\_frames](#sound_get_time_in_pcm_frames)
* [sound\_get\_velocity](#sound_get_velocity)
* [sound\_get\_volume](#sound_get_volume)
* [sound\_group\_config\_init](#sound_group_config_init)
* [sound\_group\_config\_init\_2](#sound_group_config_init_2)
* [sound\_group\_get\_attenuation\_model](#sound_group_get_attenuation_model)
* [sound\_group\_get\_cone](#sound_group_get_cone)
* [sound\_group\_get\_current\_fade\_volume](#sound_group_get_current_fade_volume)
* [sound\_group\_get\_direction](#sound_group_get_direction)
* [sound\_group\_get\_direction\_to\_listener](#sound_group_get_direction_to_listener)
* [sound\_group\_get\_directional\_attenuation\_factor](#sound_group_get_directional_attenuation_factor)
* [sound\_group\_get\_doppler\_factor](#sound_group_get_doppler_factor)
* [sound\_group\_get\_engine](#sound_group_get_engine)
* [sound\_group\_get\_listener\_index](#sound_group_get_listener_index)
* [sound\_group\_get\_max\_distance](#sound_group_get_max_distance)
* [sound\_group\_get\_max\_gain](#sound_group_get_max_gain)
* [sound\_group\_get\_min\_distance](#sound_group_get_min_distance)
* [sound\_group\_get\_min\_gain](#sound_group_get_min_gain)
* [sound\_group\_get\_pan](#sound_group_get_pan)
* [sound\_group\_get\_pan\_mode](#sound_group_get_pan_mode)
* [sound\_group\_get\_pinned\_listener\_index](#sound_group_get_pinned_listener_index)
* [sound\_group\_get\_pitch](#sound_group_get_pitch)
* [sound\_group\_get\_position](#sound_group_get_position)
* [sound\_group\_get\_positioning](#sound_group_get_positioning)
* [sound\_group\_get\_rolloff](#sound_group_get_rolloff)
* [sound\_group\_get\_time\_in\_pcm\_frames](#sound_group_get_time_in_pcm_frames)
* [sound\_group\_get\_velocity](#sound_group_get_velocity)
* [sound\_group\_get\_volume](#sound_group_get_volume)
* [sound\_group\_init](#sound_group_init)
* [sound\_group\_init\_ex](#sound_group_init_ex)
* [sound\_group\_is\_playing](#sound_group_is_playing)
* [sound\_group\_is\_spatialization\_enabled](#sound_group_is_spatialization_enabled)
* [sound\_group\_set\_attenuation\_model](#sound_group_set_attenuation_model)
* [sound\_group\_set\_cone](#sound_group_set_cone)
* [sound\_group\_set\_direction](#sound_group_set_direction)
* [sound\_group\_set\_directional\_attenuation\_factor](#sound_group_set_directional_attenuation_factor)
* [sound\_group\_set\_doppler\_factor](#sound_group_set_doppler_factor)
* [sound\_group\_set\_fade\_in\_milliseconds](#sound_group_set_fade_in_milliseconds)
* [sound\_group\_set\_fade\_in\_pcm\_frames](#sound_group_set_fade_in_pcm_frames)
* [sound\_group\_set\_max\_distance](#sound_group_set_max_distance)
* [sound\_group\_set\_max\_gain](#sound_group_set_max_gain)
* [sound\_group\_set\_min\_distance](#sound_group_set_min_distance)
* [sound\_group\_set\_min\_gain](#sound_group_set_min_gain)
* [sound\_group\_set\_pan](#sound_group_set_pan)
* [sound\_group\_set\_pan\_mode](#sound_group_set_pan_mode)
* [sound\_group\_set\_pinned\_listener\_index](#sound_group_set_pinned_listener_index)
* [sound\_group\_set\_pitch](#sound_group_set_pitch)
* [sound\_group\_set\_position](#sound_group_set_position)
* [sound\_group\_set\_positioning](#sound_group_set_positioning)
* [sound\_group\_set\_rolloff](#sound_group_set_rolloff)
* [sound\_group\_set\_spatialization\_enabled](#sound_group_set_spatialization_enabled)
* [sound\_group\_set\_start\_time\_in\_milliseconds](#sound_group_set_start_time_in_milliseconds)
* [sound\_group\_set\_start\_time\_in\_pcm\_frames](#sound_group_set_start_time_in_pcm_frames)
* [sound\_group\_set\_stop\_time\_in\_milliseconds](#sound_group_set_stop_time_in_milliseconds)
* [sound\_group\_set\_stop\_time\_in\_pcm\_frames](#sound_group_set_stop_time_in_pcm_frames)
* [sound\_group\_set\_velocity](#sound_group_set_velocity)
* [sound\_group\_set\_volume](#sound_group_set_volume)
* [sound\_group\_start](#sound_group_start)
* [sound\_group\_stop](#sound_group_stop)
* [sound\_group\_uninit](#sound_group_uninit)
* [sound\_init\_copy](#sound_init_copy)
* [sound\_init\_ex](#sound_init_ex)
* [sound\_init\_from\_data\_source](#sound_init_from_data_source)
* [sound\_init\_from\_file](#sound_init_from_file)
* [sound\_init\_from\_file\_w](#sound_init_from_file_w)
* [sound\_is\_looping](#sound_is_looping)
* [sound\_is\_playing](#sound_is_playing)
* [sound\_is\_spatialization\_enabled](#sound_is_spatialization_enabled)
* [sound\_reset\_fade](#sound_reset_fade)
* [sound\_reset\_start\_time](#sound_reset_start_time)
* [sound\_reset\_stop\_time](#sound_reset_stop_time)
* [sound\_reset\_stop\_time\_and\_fade](#sound_reset_stop_time_and_fade)
* [sound\_seek\_to\_pcm\_frame](#sound_seek_to_pcm_frame)
* [sound\_seek\_to\_second](#sound_seek_to_second)
* [sound\_set\_attenuation\_model](#sound_set_attenuation_model)
* [sound\_set\_cone](#sound_set_cone)
* [sound\_set\_direction](#sound_set_direction)
* [sound\_set\_directional\_attenuation\_factor](#sound_set_directional_attenuation_factor)
* [sound\_set\_doppler\_factor](#sound_set_doppler_factor)
* [sound\_set\_end\_callback](#sound_set_end_callback)
* [sound\_set\_fade\_in\_milliseconds](#sound_set_fade_in_milliseconds)
* [sound\_set\_fade\_in\_pcm\_frames](#sound_set_fade_in_pcm_frames)
* [sound\_set\_fade\_start\_in\_milliseconds](#sound_set_fade_start_in_milliseconds)
* [sound\_set\_fade\_start\_in\_pcm\_frames](#sound_set_fade_start_in_pcm_frames)
* [sound\_set\_looping](#sound_set_looping)
* [sound\_set\_max\_distance](#sound_set_max_distance)
* [sound\_set\_max\_gain](#sound_set_max_gain)
* [sound\_set\_min\_distance](#sound_set_min_distance)
* [sound\_set\_min\_gain](#sound_set_min_gain)
* [sound\_set\_pan](#sound_set_pan)
* [sound\_set\_pan\_mode](#sound_set_pan_mode)
* [sound\_set\_pinned\_listener\_index](#sound_set_pinned_listener_index)
* [sound\_set\_pitch](#sound_set_pitch)
* [sound\_set\_position](#sound_set_position)
* [sound\_set\_positioning](#sound_set_positioning)
* [sound\_set\_rolloff](#sound_set_rolloff)
* [sound\_set\_spatialization\_enabled](#sound_set_spatialization_enabled)
* [sound\_set\_start\_time\_in\_milliseconds](#sound_set_start_time_in_milliseconds)
* [sound\_set\_start\_time\_in\_pcm\_frames](#sound_set_start_time_in_pcm_frames)
* [sound\_set\_stop\_time\_in\_milliseconds](#sound_set_stop_time_in_milliseconds)
* [sound\_set\_stop\_time\_in\_pcm\_frames](#sound_set_stop_time_in_pcm_frames)
* [sound\_set\_stop\_time\_with\_fade\_in\_milliseconds](#sound_set_stop_time_with_fade_in_milliseconds)
* [sound\_set\_stop\_time\_with\_fade\_in\_pcm\_frames](#sound_set_stop_time_with_fade_in_pcm_frames)
* [sound\_set\_velocity](#sound_set_velocity)
* [sound\_set\_volume](#sound_set_volume)
* [sound\_start](#sound_start)
* [sound\_stop](#sound_stop)
* [sound\_stop\_with\_fade\_in\_milliseconds](#sound_stop_with_fade_in_milliseconds)
* [sound\_stop\_with\_fade\_in\_pcm\_frames](#sound_stop_with_fade_in_pcm_frames)
* [sound\_uninit](#sound_uninit)
* [spatializer\_config\_init](#spatializer_config_init)
* [spatializer\_get\_attenuation\_model](#spatializer_get_attenuation_model)
* [spatializer\_get\_cone](#spatializer_get_cone)
* [spatializer\_get\_direction](#spatializer_get_direction)
* [spatializer\_get\_directional\_attenuation\_factor](#spatializer_get_directional_attenuation_factor)
* [spatializer\_get\_doppler\_factor](#spatializer_get_doppler_factor)
* [spatializer\_get\_heap\_size](#spatializer_get_heap_size)
* [spatializer\_get\_input\_channels](#spatializer_get_input_channels)
* [spatializer\_get\_master\_volume](#spatializer_get_master_volume)
* [spatializer\_get\_max\_distance](#spatializer_get_max_distance)
* [spatializer\_get\_max\_gain](#spatializer_get_max_gain)
* [spatializer\_get\_min\_distance](#spatializer_get_min_distance)
* [spatializer\_get\_min\_gain](#spatializer_get_min_gain)
* [spatializer\_get\_output\_channels](#spatializer_get_output_channels)
* [spatializer\_get\_position](#spatializer_get_position)
* [spatializer\_get\_positioning](#spatializer_get_positioning)
* [spatializer\_get\_relative\_position\_and\_direction](#spatializer_get_relative_position_and_direction)
* [spatializer\_get\_rolloff](#spatializer_get_rolloff)
* [spatializer\_get\_velocity](#spatializer_get_velocity)
* [spatializer\_init](#spatializer_init)
* [spatializer\_init\_preallocated](#spatializer_init_preallocated)
* [spatializer\_listener\_config\_init](#spatializer_listener_config_init)
* [spatializer\_listener\_get\_channel\_map](#spatializer_listener_get_channel_map)
* [spatializer\_listener\_get\_cone](#spatializer_listener_get_cone)
* [spatializer\_listener\_get\_direction](#spatializer_listener_get_direction)
* [spatializer\_listener\_get\_heap\_size](#spatializer_listener_get_heap_size)
* [spatializer\_listener\_get\_position](#spatializer_listener_get_position)
* [spatializer\_listener\_get\_speed\_of\_sound](#spatializer_listener_get_speed_of_sound)
* [spatializer\_listener\_get\_velocity](#spatializer_listener_get_velocity)
* [spatializer\_listener\_get\_world\_up](#spatializer_listener_get_world_up)
* [spatializer\_listener\_init](#spatializer_listener_init)
* [spatializer\_listener\_init\_preallocated](#spatializer_listener_init_preallocated)
* [spatializer\_listener\_is\_enabled](#spatializer_listener_is_enabled)
* [spatializer\_listener\_set\_cone](#spatializer_listener_set_cone)
* [spatializer\_listener\_set\_direction](#spatializer_listener_set_direction)
* [spatializer\_listener\_set\_enabled](#spatializer_listener_set_enabled)
* [spatializer\_listener\_set\_position](#spatializer_listener_set_position)
* [spatializer\_listener\_set\_speed\_of\_sound](#spatializer_listener_set_speed_of_sound)
* [spatializer\_listener\_set\_velocity](#spatializer_listener_set_velocity)
* [spatializer\_listener\_set\_world\_up](#spatializer_listener_set_world_up)
* [spatializer\_listener\_uninit](#spatializer_listener_uninit)
* [spatializer\_process\_pcm\_frames](#spatializer_process_pcm_frames)
* [spatializer\_set\_attenuation\_model](#spatializer_set_attenuation_model)
* [spatializer\_set\_cone](#spatializer_set_cone)
* [spatializer\_set\_direction](#spatializer_set_direction)
* [spatializer\_set\_directional\_attenuation\_factor](#spatializer_set_directional_attenuation_factor)
* [spatializer\_set\_doppler\_factor](#spatializer_set_doppler_factor)
* [spatializer\_set\_master\_volume](#spatializer_set_master_volume)
* [spatializer\_set\_max\_distance](#spatializer_set_max_distance)
* [spatializer\_set\_max\_gain](#spatializer_set_max_gain)
* [spatializer\_set\_min\_distance](#spatializer_set_min_distance)
* [spatializer\_set\_min\_gain](#spatializer_set_min_gain)
* [spatializer\_set\_position](#spatializer_set_position)
* [spatializer\_set\_positioning](#spatializer_set_positioning)
* [spatializer\_set\_rolloff](#spatializer_set_rolloff)
* [spatializer\_set\_velocity](#spatializer_set_velocity)
* [spatializer\_uninit](#spatializer_uninit)
* [spinlock\_lock](#spinlock_lock)
* [spinlock\_lock\_noyield](#spinlock_lock_noyield)
* [spinlock\_unlock](#spinlock_unlock)
* [splitter\_node\_config\_init](#splitter_node_config_init)
* [splitter\_node\_init](#splitter_node_init)
* [splitter\_node\_uninit](#splitter_node_uninit)
* [version](#version)
* [version\_check](#version_check)
* [version\_string](#version_string)
* [vfs\_close](#vfs_close)
* [vfs\_info](#vfs_info)
* [vfs\_open](#vfs_open)
* [vfs\_open\_and\_read\_file](#vfs_open_and_read_file)
* [vfs\_open\_w](#vfs_open_w)
* [vfs\_read](#vfs_read)
* [vfs\_seek](#vfs_seek)
* [vfs\_tell](#vfs_tell)
* [vfs\_write](#vfs_write)
* [volume\_db\_to\_linear](#volume_db_to_linear)
* [volume\_linear\_to\_db](#volume_linear_to_db)
* [waveform\_config\_init](#waveform_config_init)
* [waveform\_init](#waveform_init)
* [waveform\_read\_pcm\_frames](#waveform_read_pcm_frames)
* [waveform\_seek\_to\_pcm\_frame](#waveform_seek_to_pcm_frame)
* [waveform\_set\_amplitude](#waveform_set_amplitude)
* [waveform\_set\_frequency](#waveform_set_frequency)
* [waveform\_set\_sample\_rate](#waveform_set_sample_rate)
* [waveform\_set\_type](#waveform_set_type)
* [waveform\_uninit](#waveform_uninit)

Procedure Groups (0)

This section is empty.

`#config` values (1)

* [MINIAUDIO\_SHARED](#MINIAUDIO_SHARED)

## Types

### [IMMNotificationClient ¶](#IMMNotificationClient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L31)

```
IMMNotificationClient :: struct {
	lpVtbl:  rawptr,
	counter: u32,
	pDevice: ^device,
}
```

### [aaudio\_allowed\_capture\_policy ¶](#aaudio_allowed_capture_policy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L319)

```
aaudio_allowed_capture_policy :: enum i32 {
	default = 0, // Leaves the allowed capture policy unset.
	all,         // AAUDIO_ALLOW_CAPTURE_BY_ALL
	system,      // AAUDIO_ALLOW_CAPTURE_BY_SYSTEM
	none,        // AAUDIO_ALLOW_CAPTURE_BY_NONE
}
```

### [aaudio\_content\_type ¶](#aaudio_content_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L300)

```
aaudio_content_type :: enum i32 {
	default      = 0, // Leaves the content type unset.
	speech,           // AAUDIO_CONTENT_TYPE_SPEECH
	music,            // AAUDIO_CONTENT_TYPE_MUSIC
	movie,            // AAUDIO_CONTENT_TYPE_MOVIE
	sonification,     // AAUDIO_CONTENT_TYPE_SONIFICATION
}
```

 

AAudio content types.

### [aaudio\_input\_preset ¶](#aaudio_input_preset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L309)

```
aaudio_input_preset :: enum i32 {
	default             = 0, // Leaves the input preset unset.
	generic,                 // AAUDIO_INPUT_PRESET_GENERIC
	camcorder,               // AAUDIO_INPUT_PRESET_CAMCORDER
	voice_recognition,       // AAUDIO_INPUT_PRESET_VOICE_RECOGNITION
	voice_communication,     // AAUDIO_INPUT_PRESET_VOICE_COMMUNICATION
	unprocessed,             // AAUDIO_INPUT_PRESET_UNPROCESSED
	voice_performance,       // AAUDIO_INPUT_PRESET_VOICE_PERFORMANCE
}
```

 

AAudio input presets.

### [aaudio\_usage ¶](#aaudio_usage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L279)

```
aaudio_usage :: enum i32 {
	default                        = 0, // Leaves the usage type unset.
	media,                              // AAUDIO_USAGE_MEDIA
	voice_communication,                // AAUDIO_USAGE_VOICE_COMMUNICATION
	voice_communication_signalling,     // AAUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING
	alarm,                              // AAUDIO_USAGE_ALARM
	notification,                       // AAUDIO_USAGE_NOTIFICATION
	notification_ringtone,              // AAUDIO_USAGE_NOTIFICATION_RINGTONE
	notification_event,                 // AAUDIO_USAGE_NOTIFICATION_EVENT
	assistance_accessibility,           // AAUDIO_USAGE_ASSISTANCE_ACCESSIBILITY
	assistance_navigation_guidance,     // AAUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE
	assistance_sonification,            // AAUDIO_USAGE_ASSISTANCE_SONIFICATION
	game,                               // AAUDIO_USAGE_GAME
	assitant,                           // AAUDIO_USAGE_ASSISTANT
	emergency,                          // AAUDIO_SYSTEM_USAGE_EMERGENCY
	safety,                             // AAUDIO_SYSTEM_USAGE_SAFETY
	vehicle_status,                     // AAUDIO_SYSTEM_USAGE_VEHICLE_STATUS
	announcement,                       // AAUDIO_SYSTEM_USAGE_ANNOUNCEMENT
}
```

 

AAudio usage types.

### [allocation\_callbacks ¶](#allocation_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L291)

```
allocation_callbacks :: struct {
	pUserData: rawptr,
	onMalloc:  proc "c" (sz: uint, pUserData: rawptr) -> rawptr,
	onRealloc: proc "c" (p: rawptr, sz: uint, pUserData: rawptr) -> rawptr,
	onFree:    proc "c" (p: rawptr, pUserData: rawptr),
}
```

##### Related Procedures With Parameters

* [aligned\_free](/vendor/miniaudio/#aligned_free)
* [aligned\_malloc](/vendor/miniaudio/#aligned_malloc)
* [audio\_buffer\_config\_init](/vendor/miniaudio/#audio_buffer_config_init)
* [biquad\_init](/vendor/miniaudio/#biquad_init)
* [biquad\_node\_init](/vendor/miniaudio/#biquad_node_init)
* [biquad\_node\_uninit](/vendor/miniaudio/#biquad_node_uninit)
* [biquad\_uninit](/vendor/miniaudio/#biquad_uninit)
* [bpf2\_init](/vendor/miniaudio/#bpf2_init)
* [bpf2\_uninit](/vendor/miniaudio/#bpf2_uninit)
* [bpf\_init](/vendor/miniaudio/#bpf_init)
* [bpf\_node\_init](/vendor/miniaudio/#bpf_node_init)
* [bpf\_node\_uninit](/vendor/miniaudio/#bpf_node_uninit)
* [bpf\_uninit](/vendor/miniaudio/#bpf_uninit)
* [calloc](/vendor/miniaudio/#calloc)
* [channel\_converter\_init](/vendor/miniaudio/#channel_converter_init)
* [channel\_converter\_uninit](/vendor/miniaudio/#channel_converter_uninit)
* [data\_converter\_init](/vendor/miniaudio/#data_converter_init)
* [data\_converter\_uninit](/vendor/miniaudio/#data_converter_uninit)
* [data\_source\_node\_init](/vendor/miniaudio/#data_source_node_init)
* [data\_source\_node\_uninit](/vendor/miniaudio/#data_source_node_uninit)
* [default\_vfs\_init](/vendor/miniaudio/#default_vfs_init)
* [delay\_init](/vendor/miniaudio/#delay_init)
* [delay\_node\_init](/vendor/miniaudio/#delay_node_init)
* [delay\_node\_uninit](/vendor/miniaudio/#delay_node_uninit)
* [delay\_uninit](/vendor/miniaudio/#delay_uninit)
* [device\_job\_thread\_init](/vendor/miniaudio/#device_job_thread_init)
* [device\_job\_thread\_uninit](/vendor/miniaudio/#device_job_thread_uninit)
* [duplex\_rb\_init](/vendor/miniaudio/#duplex_rb_init)
* [engine\_node\_init](/vendor/miniaudio/#engine_node_init)
* [engine\_node\_uninit](/vendor/miniaudio/#engine_node_uninit)
* [free](/vendor/miniaudio/#free)
* [gainer\_init](/vendor/miniaudio/#gainer_init)
* [gainer\_uninit](/vendor/miniaudio/#gainer_uninit)
* [hishelf2\_init](/vendor/miniaudio/#hishelf2_init)
* [hishelf2\_uninit](/vendor/miniaudio/#hishelf2_uninit)
* [hishelf\_node\_init](/vendor/miniaudio/#hishelf_node_init)
* [hishelf\_node\_uninit](/vendor/miniaudio/#hishelf_node_uninit)
* [hpf1\_init](/vendor/miniaudio/#hpf1_init)
* [hpf1\_uninit](/vendor/miniaudio/#hpf1_uninit)
* [hpf2\_init](/vendor/miniaudio/#hpf2_init)
* [hpf2\_uninit](/vendor/miniaudio/#hpf2_uninit)
* [hpf\_init](/vendor/miniaudio/#hpf_init)
* [hpf\_node\_init](/vendor/miniaudio/#hpf_node_init)
* [hpf\_node\_uninit](/vendor/miniaudio/#hpf_node_uninit)
* [hpf\_uninit](/vendor/miniaudio/#hpf_uninit)
* [job\_queue\_init](/vendor/miniaudio/#job_queue_init)
* [job\_queue\_uninit](/vendor/miniaudio/#job_queue_uninit)
* [linear\_resampler\_init](/vendor/miniaudio/#linear_resampler_init)
* [linear\_resampler\_uninit](/vendor/miniaudio/#linear_resampler_uninit)
* [log\_init](/vendor/miniaudio/#log_init)
* [loshelf2\_init](/vendor/miniaudio/#loshelf2_init)
* [loshelf2\_uninit](/vendor/miniaudio/#loshelf2_uninit)
* [loshelf\_node\_init](/vendor/miniaudio/#loshelf_node_init)
* [loshelf\_node\_uninit](/vendor/miniaudio/#loshelf_node_uninit)
* [lpf1\_init](/vendor/miniaudio/#lpf1_init)
* [lpf1\_uninit](/vendor/miniaudio/#lpf1_uninit)
* [lpf2\_init](/vendor/miniaudio/#lpf2_init)
* [lpf2\_uninit](/vendor/miniaudio/#lpf2_uninit)
* [lpf\_init](/vendor/miniaudio/#lpf_init)
* [lpf\_node\_init](/vendor/miniaudio/#lpf_node_init)
* [lpf\_node\_uninit](/vendor/miniaudio/#lpf_node_uninit)
* [lpf\_uninit](/vendor/miniaudio/#lpf_uninit)
* [malloc](/vendor/miniaudio/#malloc)
* [node\_graph\_init](/vendor/miniaudio/#node_graph_init)
* [node\_graph\_uninit](/vendor/miniaudio/#node_graph_uninit)
* [node\_init](/vendor/miniaudio/#node_init)
* [node\_uninit](/vendor/miniaudio/#node_uninit)
* [noise\_init](/vendor/miniaudio/#noise_init)
* [noise\_uninit](/vendor/miniaudio/#noise_uninit)
* [notch2\_init](/vendor/miniaudio/#notch2_init)
* [notch2\_uninit](/vendor/miniaudio/#notch2_uninit)
* [notch\_node\_init](/vendor/miniaudio/#notch_node_init)
* [notch\_node\_uninit](/vendor/miniaudio/#notch_node_uninit)
* [paged\_audio\_buffer\_data\_allocate\_and\_append\_page](/vendor/miniaudio/#paged_audio_buffer_data_allocate_and_append_page)
* [paged\_audio\_buffer\_data\_allocate\_page](/vendor/miniaudio/#paged_audio_buffer_data_allocate_page)
* [paged\_audio\_buffer\_data\_free\_page](/vendor/miniaudio/#paged_audio_buffer_data_free_page)
* [paged\_audio\_buffer\_data\_uninit](/vendor/miniaudio/#paged_audio_buffer_data_uninit)
* [pcm\_rb\_init](/vendor/miniaudio/#pcm_rb_init)
* [pcm\_rb\_init\_ex](/vendor/miniaudio/#pcm_rb_init_ex)
* [peak2\_init](/vendor/miniaudio/#peak2_init)
* [peak2\_uninit](/vendor/miniaudio/#peak2_uninit)
* [peak\_node\_init](/vendor/miniaudio/#peak_node_init)
* [peak\_node\_uninit](/vendor/miniaudio/#peak_node_uninit)
* [rb\_init](/vendor/miniaudio/#rb_init)
* [rb\_init\_ex](/vendor/miniaudio/#rb_init_ex)
* [realloc](/vendor/miniaudio/#realloc)
* [resampler\_init](/vendor/miniaudio/#resampler_init)
* [resampler\_uninit](/vendor/miniaudio/#resampler_uninit)
* [slot\_allocator\_init](/vendor/miniaudio/#slot_allocator_init)
* [slot\_allocator\_uninit](/vendor/miniaudio/#slot_allocator_uninit)
* [spatializer\_init](/vendor/miniaudio/#spatializer_init)
* [spatializer\_listener\_init](/vendor/miniaudio/#spatializer_listener_init)
* [spatializer\_listener\_uninit](/vendor/miniaudio/#spatializer_listener_uninit)
* [spatializer\_uninit](/vendor/miniaudio/#spatializer_uninit)
* [splitter\_node\_init](/vendor/miniaudio/#splitter_node_init)
* [splitter\_node\_uninit](/vendor/miniaudio/#splitter_node_uninit)
* [vfs\_open\_and\_read\_file](/vendor/miniaudio/#vfs_open_and_read_file)

### [async\_notification ¶](#async_notification) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L106)

```
async_notification :: struct {}
```

 

Notification callback for asynchronous operations.




##### Related Procedures With Parameters

* [async\_notification\_signal](/vendor/miniaudio/#async_notification_signal)

### [async\_notification\_callbacks ¶](#async_notification_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L108)

```
async_notification_callbacks :: struct {
	onSignal: proc "c" (pNotification: ^async_notification),
}
```

### [async\_notification\_event ¶](#async_notification_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L140)

```
async_notification_event :: struct {
	cb: async_notification_callbacks,
	e:  event,
}
```

 

Event Notification

This uses an ma\_event. If threading is disabled (MA\_NO\_THREADING), initialization will fail.




##### Related Procedures With Parameters

* [async\_notification\_event\_init](/vendor/miniaudio/#async_notification_event_init)
* [async\_notification\_event\_signal](/vendor/miniaudio/#async_notification_event_signal)
* [async\_notification\_event\_uninit](/vendor/miniaudio/#async_notification_event_uninit)
* [async\_notification\_event\_wait](/vendor/miniaudio/#async_notification_event_wait)

### [async\_notification\_poll ¶](#async_notification_poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L123)

```
async_notification_poll :: struct {
	cb:        async_notification_callbacks,
	signalled: b32,
}
```

 

Simple polling notification.

This just sets a variable when the notification has been signalled which is then polled with ma\_async\_notification\_poll\_is\_signalled()




##### Related Procedures With Parameters

* [async\_notification\_poll\_init](/vendor/miniaudio/#async_notification_poll_init)
* [async\_notification\_poll\_is\_signalled](/vendor/miniaudio/#async_notification_poll_is_signalled)

### [atomic\_vec3f ¶](#atomic_vec3f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L145)

```
atomic_vec3f :: struct {
	v:    vec3f,
	lock: spinlock,
}
```

### [attenuation\_model ¶](#attenuation_model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L150)

```
attenuation_model :: enum i32 {
	none,        // No distance attenuation and no spatialization.
	inverse,     // Equivalent to OpenAL's AL_INVERSE_DISTANCE_CLAMPED.
	linear,      // Linear attenuation. Equivalent to OpenAL's AL_LINEAR_DISTANCE_CLAMPED.
	exponential, // Exponential attenuation. Equivalent to OpenAL's AL_EXPONENT_DISTANCE_CLAMPED.
}
```

##### Related Procedures With Parameters

* [sound\_group\_set\_attenuation\_model](/vendor/miniaudio/#sound_group_set_attenuation_model)
* [sound\_set\_attenuation\_model](/vendor/miniaudio/#sound_set_attenuation_model)
* [spatializer\_set\_attenuation\_model](/vendor/miniaudio/#spatializer_set_attenuation_model)



##### Related Procedures With Returns

* [sound\_get\_attenuation\_model](/vendor/miniaudio/#sound_get_attenuation_model)
* [sound\_group\_get\_attenuation\_model](/vendor/miniaudio/#sound_group_get_attenuation_model)
* [spatializer\_get\_attenuation\_model](/vendor/miniaudio/#spatializer_get_attenuation_model)

### [audio\_buffer ¶](#audio_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L223)

```
audio_buffer :: struct {
	ref:                 audio_buffer_ref,
	allocationCallbacks: allocation_callbacks,
	ownsData:            b32,
	// Used to control whether or not miniaudio owns the data buffer. If set to true, pData will be freed in ma_audio_buffer_uninit(). 
	_pExtraData:         [1]u8,
}
```

##### Related Procedures With Parameters

* [audio\_buffer\_at\_end](/vendor/miniaudio/#audio_buffer_at_end)
* [audio\_buffer\_get\_available\_frames](/vendor/miniaudio/#audio_buffer_get_available_frames)
* [audio\_buffer\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_get_cursor_in_pcm_frames)
* [audio\_buffer\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_get_length_in_pcm_frames)
* [audio\_buffer\_init](/vendor/miniaudio/#audio_buffer_init)
* [audio\_buffer\_init\_copy](/vendor/miniaudio/#audio_buffer_init_copy)
* [audio\_buffer\_map](/vendor/miniaudio/#audio_buffer_map)
* [audio\_buffer\_read\_pcm\_frames](/vendor/miniaudio/#audio_buffer_read_pcm_frames)
* [audio\_buffer\_seek\_to\_pcm\_frame](/vendor/miniaudio/#audio_buffer_seek_to_pcm_frame)
* [audio\_buffer\_uninit](/vendor/miniaudio/#audio_buffer_uninit)
* [audio\_buffer\_uninit\_and\_free](/vendor/miniaudio/#audio_buffer_uninit_and_free)
* [audio\_buffer\_unmap](/vendor/miniaudio/#audio_buffer_unmap)

### [audio\_buffer\_config ¶](#audio_buffer_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L214)

```
audio_buffer_config :: struct {
	format:              format,
	channels:            u32,
	sampleRate:          u32,
	sizeInFrames:        u64,
	pData:               rawptr,
	// If set to NULL, will allocate a block of memory for you. 
	allocationCallbacks: allocation_callbacks,
}
```

##### Related Procedures With Parameters

* [audio\_buffer\_alloc\_and\_init](/vendor/miniaudio/#audio_buffer_alloc_and_init)
* [audio\_buffer\_init](/vendor/miniaudio/#audio_buffer_init)
* [audio\_buffer\_init\_copy](/vendor/miniaudio/#audio_buffer_init_copy)



##### Related Procedures With Returns

* [audio\_buffer\_config\_init](/vendor/miniaudio/#audio_buffer_config_init)

### [audio\_buffer\_ref ¶](#audio_buffer_ref) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L188)

```
audio_buffer_ref :: struct {
	ds:           data_source_base,
	format:       format,
	channels:     u32,
	sampleRate:   u32,
	cursor:       u64,
	sizeInFrames: u64,
	pData:        rawptr,
}
```

##### Related Procedures With Parameters

* [audio\_buffer\_ref\_at\_end](/vendor/miniaudio/#audio_buffer_ref_at_end)
* [audio\_buffer\_ref\_get\_available\_frames](/vendor/miniaudio/#audio_buffer_ref_get_available_frames)
* [audio\_buffer\_ref\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_ref_get_cursor_in_pcm_frames)
* [audio\_buffer\_ref\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_ref_get_length_in_pcm_frames)
* [audio\_buffer\_ref\_init](/vendor/miniaudio/#audio_buffer_ref_init)
* [audio\_buffer\_ref\_map](/vendor/miniaudio/#audio_buffer_ref_map)
* [audio\_buffer\_ref\_read\_pcm\_frames](/vendor/miniaudio/#audio_buffer_ref_read_pcm_frames)
* [audio\_buffer\_ref\_seek\_to\_pcm\_frame](/vendor/miniaudio/#audio_buffer_ref_seek_to_pcm_frame)
* [audio\_buffer\_ref\_set\_data](/vendor/miniaudio/#audio_buffer_ref_set_data)
* [audio\_buffer\_ref\_uninit](/vendor/miniaudio/#audio_buffer_ref_uninit)
* [audio\_buffer\_ref\_unmap](/vendor/miniaudio/#audio_buffer_ref_unmap)

### [backend ¶](#backend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L39)

```
backend :: enum i32 {
	wasapi, 
	dsound, 
	winmm, 
	coreaudio, 
	sndio, 
	audio4, 
	oss, 
	pulseaudio, 
	alsa, 
	jack, 
	aaudio, 
	opensl, 
	webaudio, 
	custom,     // <-- Custom backend, with callbacks defined by the context config.
	null,       // <-- Must always be the last item. Lowest priority, and used as the terminator for backend enumeration.
}
```

 

Backend enums must be in priority order.




##### Related Procedures With Parameters

* [context\_init](/vendor/miniaudio/#context_init)
* [device\_init\_ex](/vendor/miniaudio/#device_init_ex)
* [get\_backend\_from\_name](/vendor/miniaudio/#get_backend_from_name)
* [get\_backend\_name](/vendor/miniaudio/#get_backend_name)
* [get\_enabled\_backends](/vendor/miniaudio/#get_enabled_backends)
* [is\_backend\_enabled](/vendor/miniaudio/#is_backend_enabled)
* [is\_loopback\_supported](/vendor/miniaudio/#is_loopback_supported)

### [backend\_callbacks ¶](#backend_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L558)

```
backend_callbacks :: struct {
	onContextInit:             proc "c" (pContext: ^context_type, pConfig: ^context_config, pCallbacks: ^backend_callbacks) -> result,
	onContextUninit:           proc "c" (pContext: ^context_type) -> result,
	onContextEnumerateDevices: proc "c" (pContext: ^context_type, callback: enum_devices_callback_proc, pUserData: rawptr) -> result,
	onContextGetDeviceInfo:    proc "c" (pContext: ^context_type, deviceType: device_type, pDeviceID: ^device_id, pDeviceInfo: ^device_info) -> result,
	onDeviceInit:              proc "c" (pDevice: ^device, pConfig: ^device_config, pDescriptorPlayback, pDescriptorCapture: ^device_descriptor) -> result,
	onDeviceUninit:            proc "c" (pDevice: ^device) -> result,
	onDeviceStart:             proc "c" (pDevice: ^device) -> result,
	onDeviceStop:              proc "c" (pDevice: ^device) -> result,
	onDeviceRead:              proc "c" (pDevice: ^device, pFrames: rawptr, frameCount: u32, pFramesRead: ^u32) -> result,
	onDeviceWrite:             proc "c" (pDevice: ^device, pFrames: rawptr, frameCount: u32, pFramesWritten: ^u32) -> result,
	onDeviceDataLoop:          proc "c" (pDevice: ^device) -> result,
	onDeviceDataLoopWakeup:    proc "c" (pDevice: ^device) -> result,
	onDeviceGetInfo:           proc "c" (pDevice: ^device, type: device_type, pDeviceInfo: ^device_info) -> result,
}
```

 

These are the callbacks required to be implemented for a backend. These callbacks are grouped into two parts: context and device. There is one context
to many devices. A device is created from a context.

The general flow goes like this:

1) A context is created with `onContextInit()`
1a) Available devices can be enumerated with `onContextEnumerateDevices()` if required.
1b) Detailed information about a device can be queried with `onContextGetDeviceInfo()` if required.
2) A device is created from the context that was created in the first step using `onDeviceInit()`, and optionally a device ID that was
selected from device enumeration via `onContextEnumerateDevices()`.
3) A device is started or stopped with `onDeviceStart()` / `onDeviceStop()`
4) Data is delivered to and from the device by the backend. This is always done based on the native format returned by the prior call
to `onDeviceInit()`. Conversion between the device's native format and the format requested by the application will be handled by
miniaudio internally.

Initialization of the context is quite simple. You need to do any necessary initialization of internal objects and then output the
callbacks defined in this structure.

Once the context has been initialized you can initialize a device. Before doing so, however, the application may want to know which
physical devices are available. This is where `onContextEnumerateDevices()` comes in. This is fairly simple. For each device, fire the
given callback with, at a minimum, the basic information filled out in `ma_device_info`. When the callback returns `MA_FALSE`, enumeration
needs to stop and the `onContextEnumerateDevices()` function returns with a success code.

Detailed device information can be retrieved from a device ID using `onContextGetDeviceInfo()`. This takes as input the device type and ID,
and on output returns detailed information about the device in `ma_device_info`. The `onContextGetDeviceInfo()` callback must handle the
case when the device ID is NULL, in which case information about the default device needs to be retrieved.

Once the context has been created and the device ID retrieved (if using anything other than the default device), the device can be created.
This is a little bit more complicated than initialization of the context due to its more complicated configuration. When initializing a
device, a duplex device may be requested. This means a separate data format needs to be specified for both playback and capture. On input,
the data format is set to what the application wants. On output it's set to the native format which should match as closely as possible to
the requested format. The conversion between the format requested by the application and the device's native format will be handled
internally by miniaudio.

On input, if the sample format is set to `ma_format_unknown`, the backend is free to use whatever sample format it desires, so long as it's
supported by miniaudio. When the channel count is set to 0, the backend should use the device's native channel count. The same applies for
sample rate. For the channel map, the default should be used when `ma_channel_map_is_blank()` returns true (all channels set to
`MA_CHANNEL_NONE`). On input, the `periodSizeInFrames` or `periodSizeInMilliseconds` option should always be set. The backend should
inspect both of these variables. If `periodSizeInFrames` is set, it should take priority, otherwise it needs to be derived from the period
size in milliseconds (`periodSizeInMilliseconds`) and the sample rate, keeping in mind that the sample rate may be 0, in which case the
sample rate will need to be determined before calculating the period size in frames. On output, all members of the `ma_device_descriptor`
object should be set to a valid value, except for `periodSizeInMilliseconds` which is optional (`periodSizeInFrames` *must* be set).

Starting and stopping of the device is done with `onDeviceStart()` and `onDeviceStop()` and should be self-explanatory. If the backend uses
asynchronous reading and writing, `onDeviceStart()` and `onDeviceStop()` should always be implemented.

The handling of data delivery between the application and the device is the most complicated part of the process. To make this a bit
easier, some helper callbacks are available. If the backend uses a blocking read/write style of API, the `onDeviceRead()` and
`onDeviceWrite()` callbacks can optionally be implemented. These are blocking and work just like reading and writing from a file. If the
backend uses a callback for data delivery, that callback must call `ma_device_handle_backend_data_callback()` from within its callback.
This allows miniaudio to then process any necessary data conversion and then pass it to the miniaudio data callback.

If the backend requires absolute flexibility with its data delivery, it can optionally implement the `onDeviceDataLoop()` callback
which will allow it to implement the logic that will run on the audio thread. This is much more advanced and is completely optional.

The audio thread should run data delivery logic in a loop while `ma_device_get_state() == ma_device_state_started` and no errors have been
encountered. Do not start or stop the device here. That will be handled from outside the `onDeviceDataLoop()` callback.

The invocation of the `onDeviceDataLoop()` callback will be handled by miniaudio. When you start the device, miniaudio will fire this
callback. When the device is stopped, the `ma_device_get_state() == ma_device_state_started` condition will fail and the loop will be terminated
which will then fall through to the part that stops the device. For an example on how to implement the `onDeviceDataLoop()` callback,
look at `ma_device_audio_thread__default_read_write()`. Implement the `onDeviceDataLoopWakeup()` callback if you need a mechanism to
wake up the audio thread.

If the backend supports an optimized retrieval of device information from an initialized `ma_device` object, it should implement the
`onDeviceGetInfo()` callback. This is optional, in which case it will fall back to `onContextGetDeviceInfo()` which is less efficient.

### [biquad ¶](#biquad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L28)

```
biquad :: struct {
	format:    format,
	channels:  u32,
	b0:        biquad_coefficient,
	b1:        biquad_coefficient,
	b2:        biquad_coefficient,
	a1:        biquad_coefficient,
	a2:        biquad_coefficient,
	pR1:       ^biquad_coefficient,
	pR2:       ^biquad_coefficient,
	// Memory management. 
	_pHeap:    rawptr,
	_ownsHeap: b32,
}
```

##### Related Procedures With Parameters

* [biquad\_clear\_cache](/vendor/miniaudio/#biquad_clear_cache)
* [biquad\_get\_latency](/vendor/miniaudio/#biquad_get_latency)
* [biquad\_init](/vendor/miniaudio/#biquad_init)
* [biquad\_init\_preallocated](/vendor/miniaudio/#biquad_init_preallocated)
* [biquad\_process\_pcm\_frames](/vendor/miniaudio/#biquad_process_pcm_frames)
* [biquad\_reinit](/vendor/miniaudio/#biquad_reinit)
* [biquad\_uninit](/vendor/miniaudio/#biquad_uninit)

### [biquad\_coefficient ¶](#biquad_coefficient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L12)

```
biquad_coefficient :: struct #raw_union {
	f32: f32,
	s32: i32,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Biquad Filtering

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

### [biquad\_config ¶](#biquad_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L17)

```
biquad_config :: struct {
	format:   format,
	channels: u32,
	b0:       f64,
	b1:       f64,
	b2:       f64,
	a0:       f64,
	a1:       f64,
	a2:       f64,
}
```

##### Related Procedures With Parameters

* [biquad\_get\_heap\_size](/vendor/miniaudio/#biquad_get_heap_size)
* [biquad\_init](/vendor/miniaudio/#biquad_init)
* [biquad\_init\_preallocated](/vendor/miniaudio/#biquad_init_preallocated)
* [biquad\_node\_reinit](/vendor/miniaudio/#biquad_node_reinit)
* [biquad\_reinit](/vendor/miniaudio/#biquad_reinit)



##### Related Procedures With Returns

* [biquad\_config\_init](/vendor/miniaudio/#biquad_config_init)

### [biquad\_node ¶](#biquad_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L286)

```
biquad_node :: struct {
	baseNode: node_base,
	biquad:   biquad,
}
```

##### Related Procedures With Parameters

* [biquad\_node\_init](/vendor/miniaudio/#biquad_node_init)
* [biquad\_node\_reinit](/vendor/miniaudio/#biquad_node_reinit)
* [biquad\_node\_uninit](/vendor/miniaudio/#biquad_node_uninit)

### [biquad\_node\_config ¶](#biquad_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L281)

```
biquad_node_config :: struct {
	nodeConfig: node_config,
	biquad:     biquad_config,
}
```

 

Biquad Node




##### Related Procedures With Parameters

* [biquad\_node\_init](/vendor/miniaudio/#biquad_node_init)



##### Related Procedures With Returns

* [biquad\_node\_config\_init](/vendor/miniaudio/#biquad_node_config_init)

### [bpf ¶](#bpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L257)

```
bpf :: struct {
	format:    format,
	channels:  u32,
	bpf2Count: u32,
	pBPF2:     ^bpf2,
	// Memory management. 
	_pHeap:    rawptr,
	_ownsHeap: b32,
}
```

##### Related Procedures With Parameters

* [bpf\_get\_latency](/vendor/miniaudio/#bpf_get_latency)
* [bpf\_init](/vendor/miniaudio/#bpf_init)
* [bpf\_init\_preallocated](/vendor/miniaudio/#bpf_init_preallocated)
* [bpf\_process\_pcm\_frames](/vendor/miniaudio/#bpf_process_pcm_frames)
* [bpf\_reinit](/vendor/miniaudio/#bpf_reinit)
* [bpf\_uninit](/vendor/miniaudio/#bpf_uninit)

### [bpf2 ¶](#bpf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L245)

```
bpf2 :: struct {
	bq: biquad,
}
```

##### Related Procedures With Parameters

* [bpf2\_get\_latency](/vendor/miniaudio/#bpf2_get_latency)
* [bpf2\_init](/vendor/miniaudio/#bpf2_init)
* [bpf2\_init\_preallocated](/vendor/miniaudio/#bpf2_init_preallocated)
* [bpf2\_process\_pcm\_frames](/vendor/miniaudio/#bpf2_process_pcm_frames)
* [bpf2\_reinit](/vendor/miniaudio/#bpf2_reinit)
* [bpf2\_uninit](/vendor/miniaudio/#bpf2_uninit)

### [bpf2\_config ¶](#bpf2_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L237)

```
bpf2_config :: struct {
	format:          format,
	channels:        u32,
	sampleRate:      u32,
	cutoffFrequency: f64,
	q:               f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Band-Pass Filtering

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [bpf2\_get\_heap\_size](/vendor/miniaudio/#bpf2_get_heap_size)
* [bpf2\_init](/vendor/miniaudio/#bpf2_init)
* [bpf2\_init\_preallocated](/vendor/miniaudio/#bpf2_init_preallocated)
* [bpf2\_reinit](/vendor/miniaudio/#bpf2_reinit)



##### Related Procedures With Returns

* [bpf2\_config\_init](/vendor/miniaudio/#bpf2_config_init)

### [bpf\_config ¶](#bpf_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L249)

```
bpf_config :: struct {
	format:          format,
	channels:        u32,
	sampleRate:      u32,
	cutoffFrequency: f64,
	order:           u32,
}
```

##### Related Procedures With Parameters

* [bpf\_get\_heap\_size](/vendor/miniaudio/#bpf_get_heap_size)
* [bpf\_init](/vendor/miniaudio/#bpf_init)
* [bpf\_init\_preallocated](/vendor/miniaudio/#bpf_init_preallocated)
* [bpf\_node\_reinit](/vendor/miniaudio/#bpf_node_reinit)
* [bpf\_reinit](/vendor/miniaudio/#bpf_reinit)



##### Related Procedures With Returns

* [bpf\_config\_init](/vendor/miniaudio/#bpf_config_init)

### [bpf\_node ¶](#bpf_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L355)

```
bpf_node :: struct {
	baseNode: node_base,
	bpf:      bpf,
}
```

##### Related Procedures With Parameters

* [bpf\_node\_init](/vendor/miniaudio/#bpf_node_init)
* [bpf\_node\_reinit](/vendor/miniaudio/#bpf_node_reinit)
* [bpf\_node\_uninit](/vendor/miniaudio/#bpf_node_uninit)

### [bpf\_node\_config ¶](#bpf_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L350)

```
bpf_node_config :: struct {
	nodeConfig: node_config,
	bpf:        bpf_config,
}
```

 

Band Pass Filter Node




##### Related Procedures With Parameters

* [bpf\_node\_init](/vendor/miniaudio/#bpf_node_init)



##### Related Procedures With Returns

* [bpf\_node\_config\_init](/vendor/miniaudio/#bpf_node_config_init)

### [channel ¶](#channel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L64)

```
channel :: enum u8 {
	NONE               = 0, 
	MONO               = 1, 
	FRONT_LEFT         = 2, 
	FRONT_RIGHT        = 3, 
	FRONT_CENTER       = 4, 
	LFE                = 5, 
	BACK_LEFT          = 6, 
	BACK_RIGHT         = 7, 
	FRONT_LEFT_CENTER  = 8, 
	FRONT_RIGHT_CENTER = 9, 
	BACK_CENTER        = 10, 
	SIDE_LEFT          = 11, 
	SIDE_RIGHT         = 12, 
	TOP_CENTER         = 13, 
	TOP_FRONT_LEFT     = 14, 
	TOP_FRONT_CENTER   = 15, 
	TOP_FRONT_RIGHT    = 16, 
	TOP_BACK_LEFT      = 17, 
	TOP_BACK_CENTER    = 18, 
	TOP_BACK_RIGHT     = 19, 
	AUX_0              = 20, 
	AUX_1              = 21, 
	AUX_2              = 22, 
	AUX_3              = 23, 
	AUX_4              = 24, 
	AUX_5              = 25, 
	AUX_6              = 26, 
	AUX_7              = 27, 
	AUX_8              = 28, 
	AUX_9              = 29, 
	AUX_10             = 30, 
	AUX_11             = 31, 
	AUX_12             = 32, 
	AUX_13             = 33, 
	AUX_14             = 34, 
	AUX_15             = 35, 
	AUX_16             = 36, 
	AUX_17             = 37, 
	AUX_18             = 38, 
	AUX_19             = 39, 
	AUX_20             = 40, 
	AUX_21             = 41, 
	AUX_22             = 42, 
	AUX_23             = 43, 
	AUX_24             = 44, 
	AUX_25             = 45, 
	AUX_26             = 46, 
	AUX_27             = 47, 
	AUX_28             = 48, 
	AUX_29             = 49, 
	AUX_30             = 50, 
	AUX_31             = 51, 
	POSITION_COUNT, 
	LEFT               = 2, 
	RIGHT              = 3, 
}
```

##### Related Procedures With Parameters

* [channel\_converter\_config\_init](/vendor/miniaudio/#channel_converter_config_init)
* [channel\_converter\_get\_input\_channel\_map](/vendor/miniaudio/#channel_converter_get_input_channel_map)
* [channel\_converter\_get\_output\_channel\_map](/vendor/miniaudio/#channel_converter_get_output_channel_map)
* [channel\_map\_contains\_channel\_position](/vendor/miniaudio/#channel_map_contains_channel_position)
* [channel\_map\_copy](/vendor/miniaudio/#channel_map_copy)
* [channel\_map\_copy\_or\_default](/vendor/miniaudio/#channel_map_copy_or_default)
* [channel\_map\_find\_channel\_position](/vendor/miniaudio/#channel_map_find_channel_position)
* [channel\_map\_get\_channel](/vendor/miniaudio/#channel_map_get_channel)
* [channel\_map\_init\_blank](/vendor/miniaudio/#channel_map_init_blank)
* [channel\_map\_init\_standard](/vendor/miniaudio/#channel_map_init_standard)
* [channel\_map\_is\_blank](/vendor/miniaudio/#channel_map_is_blank)
* [channel\_map\_is\_equal](/vendor/miniaudio/#channel_map_is_equal)
* [channel\_map\_is\_valid](/vendor/miniaudio/#channel_map_is_valid)
* [channel\_map\_to\_string](/vendor/miniaudio/#channel_map_to_string)
* [channel\_position\_to\_string](/vendor/miniaudio/#channel_position_to_string)
* [data\_converter\_get\_input\_channel\_map](/vendor/miniaudio/#data_converter_get_input_channel_map)
* [data\_converter\_get\_output\_channel\_map](/vendor/miniaudio/#data_converter_get_output_channel_map)
* [data\_source\_get\_data\_format](/vendor/miniaudio/#data_source_get_data_format)
* [decoder\_get\_data\_format](/vendor/miniaudio/#decoder_get_data_format)
* [resource\_manager\_data\_buffer\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_buffer_get_data_format)
* [resource\_manager\_data\_source\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_source_get_data_format)
* [resource\_manager\_data\_stream\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_stream_get_data_format)
* [sound\_get\_data\_format](/vendor/miniaudio/#sound_get_data_format)



##### Related Procedures With Returns

* [spatializer\_listener\_get\_channel\_map](/vendor/miniaudio/#spatializer_listener_get_channel_map)

### [channel\_conversion\_path ¶](#channel_conversion_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L208)

```
channel_conversion_path :: enum i32 {
	unknown, 
	passthrough, 
	mono_out,    // Converting to mono.
	mono_in,     // Converting from mono.
	shuffle,     // Simple shuffle. Will use this when all channels are present in both input and output channel maps, but just in a different order.
	weights,     // Blended based on weights.
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Channel Conversion

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

### [channel\_converter ¶](#channel_converter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L235)

```
channel_converter :: struct {
	format:         format,
	channelsIn:     u32,
	channelsOut:    u32,
	mixingMode:     channel_mix_mode,
	conversionPath: channel_conversion_path,
	pChannelMapIn:  [^]channel,
	pChannelMapOut: [^]channel,
	pShuffleTable:  [^]u8,
	weights:        struct #raw_union {
		// [in][out] 
		f32: ^[^]f32,
		s16: ^[^]i32,
	},
	// Memory management. 
	_pHeap:         rawptr,
	_ownsHeap:      b32,
}
```

##### Related Procedures With Parameters

* [channel\_converter\_get\_input\_channel\_map](/vendor/miniaudio/#channel_converter_get_input_channel_map)
* [channel\_converter\_get\_output\_channel\_map](/vendor/miniaudio/#channel_converter_get_output_channel_map)
* [channel\_converter\_init](/vendor/miniaudio/#channel_converter_init)
* [channel\_converter\_init\_preallocated](/vendor/miniaudio/#channel_converter_init_preallocated)
* [channel\_converter\_process\_pcm\_frames](/vendor/miniaudio/#channel_converter_process_pcm_frames)
* [channel\_converter\_uninit](/vendor/miniaudio/#channel_converter_uninit)

### [channel\_converter\_config ¶](#channel_converter_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L224)

```
channel_converter_config :: struct {
	format:                          format,
	channelsIn:                      u32,
	channelsOut:                     u32,
	pChannelMapIn:                   [^]channel,
	pChannelMapOut:                  [^]channel,
	mixingMode:                      channel_mix_mode,
	calculateLFEFromSpatialChannels: b32,
	// When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. 
	ppWeights:                       ^[^]f32,
}
```

##### Related Procedures With Parameters

* [channel\_converter\_get\_heap\_size](/vendor/miniaudio/#channel_converter_get_heap_size)
* [channel\_converter\_init](/vendor/miniaudio/#channel_converter_init)
* [channel\_converter\_init\_preallocated](/vendor/miniaudio/#channel_converter_init_preallocated)



##### Related Procedures With Returns

* [channel\_converter\_config\_init](/vendor/miniaudio/#channel_converter_config_init)

### [channel\_mix\_mode ¶](#channel_mix_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L266)

```
channel_mix_mode :: enum i32 {
	rectangular    = 0, // Simple averaging based on the plane(s) the channel is sitting on.
	simple,             // Drop excess channels; zeroed out extra channels.
	custom_weights,     // Use custom weights specified in ma_channel_converter_config.
	default        = 0, 
}
```

##### Related Procedures With Parameters

* [channel\_converter\_config\_init](/vendor/miniaudio/#channel_converter_config_init)

### [context\_command\_\_wasapi ¶](#context_command__wasapi) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L605)

```
context_command__wasapi :: struct {
	code:   i32,
	pEvent: ^event,
	// This will be signalled when the event is complete. 
	data:   struct #raw_union {
		quit:               struct {
			_unused: i32,
		},
		createAudioClient:  struct {
			deviceType:           device_type,
			pAudioClient:         rawptr,
			ppAudioClientService: ^rawptr,
			pResult:              ^result,
		},
		releaseAudioClient: struct {
			pDevice:    ^device,
			deviceType: device_type,
		},
	},
}
```

 

WASAPI specific structure for some commands which must run on a common thread due to bugs in WASAPI.

### [context\_config ¶](#context_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L574)

```
context_config :: struct {
	pLog:                ^log,
	threadPriority:      thread_priority,
	threadStackSize:     uint,
	pUserData:           rawptr,
	allocationCallbacks: allocation_callbacks,
	dsound:              struct {
		hWnd: handle,
	},
	alsa:                struct {
		useVerboseDeviceEnumeration: b32,
	},
	pulse:               struct {
		pApplicationName: cstring,
		pServerName:      cstring,
		tryAutoSpawn:     b32,
	},
	coreaudio:           struct {
		sessionCategory:          ios_session_category,
		sessionCategoryOptions:   u32,
		noAudioSessionActivate:   b32,
		// iOS only. When set to true, does not perform an explicit [[AVAudioSession sharedInstace] setActive:true] on initialization. 
		noAudioSessionDeactivate: b32,
	},
	jack:                struct {
		pClientName:    cstring,
		tryStartServer: b32,
	},
	custom:              backend_callbacks,
}
```

##### Related Procedures With Parameters

* [context\_init](/vendor/miniaudio/#context_init)
* [device\_init\_ex](/vendor/miniaudio/#device_init_ex)



##### Related Procedures With Returns

* [context\_config\_init](/vendor/miniaudio/#context_config_init)

### [context\_type ¶](#context_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L625)

```
context_type :: struct {
	callbacks:               backend_callbacks,
	backend:                 backend,
	// DirectSound, ALSA, etc. 
	pLog:                    ^log,
	log:                     log,
	// Only used if the log is owned by the context. The pLog member will be set to &log in this case. 
	threadPriority:          thread_priority,
	threadStackSize:         uint,
	pUserData:               rawptr,
	allocationCallbacks:     allocation_callbacks,
	deviceEnumLock:          mutex,
	// Used to make ma_context_get_devices() thread safe. 
	deviceInfoLock:          mutex,
	// Used to make ma_context_get_device_info() thread safe. 
	deviceInfoCapacity:      u32,
	// Total capacity of pDeviceInfos. 
	playbackDeviceInfoCount: u32,
	captureDeviceInfoCount:  u32,
	pDeviceInfos:            [^]device_info,
	// Playback devices first, then capture. 
	using _:                 struct #raw_union {
		wasapi:       struct {
			commandThread:                   thread,
			commandLock:                     mutex,
			commandSem:                      semaphore,
			commandIndex:                    u32,
			commandCount:                    u32,
			commands:                        [4]context_command__wasapi,
			hAvrt:                           handle,
			AvSetMmThreadCharacteristicsA:   proc "stdcall" (),
			AvRevertMmThreadCharacteristics: proc "stdcall" (),
			hMMDevapi:                       handle,
			ActivateAudioInterfaceAsync:     proc "stdcall" (),
		},
		dsound:       struct {
			hWnd:                         handle,
			// Can be null. 
			hDSoundDLL:                   handle,
			DirectSoundCreate:            proc "stdcall" (),
			DirectSoundEnumerateA:        proc "stdcall" (),
			DirectSoundCaptureCreate:     proc "stdcall" (),
			DirectSoundCaptureEnumerateA: proc "stdcall" (),
		},
		winmm:        struct {
			hWinMM:                 handle,
			waveOutGetNumDevs:      proc "stdcall" (),
			waveOutGetDevCapsA:     proc "stdcall" (),
			waveOutOpen:            proc "stdcall" (),
			waveOutClose:           proc "stdcall" (),
			waveOutPrepareHeader:   proc "stdcall" (),
			waveOutUnprepareHeader: proc "stdcall" (),
			waveOutWrite:           proc "stdcall" (),
			waveOutReset:           proc "stdcall" (),
			waveInGetNumDevs:       proc "stdcall" (),
			waveInGetDevCapsA:      proc "stdcall" (),
			waveInOpen:             proc "stdcall" (),
			waveInClose:            proc "stdcall" (),
			waveInPrepareHeader:    proc "stdcall" (),
			waveInUnprepareHeader:  proc "stdcall" (),
			waveInAddBuffer:        proc "stdcall" (),
			waveInStart:            proc "stdcall" (),
			waveInReset:            proc "stdcall" (),
		},
		alsa:         struct {},
		pulse:        struct {},
		jack:         struct {
			jackSO:                        handle,
			jack_client_open:              proc "stdcall" (),
			jack_client_close:             proc "stdcall" (),
			jack_client_name_size:         proc "stdcall" (),
			jack_set_process_callback:     proc "stdcall" (),
			jack_set_buffer_size_callback: proc "stdcall" (),
			jack_on_shutdown:              proc "stdcall" (),
			jack_get_sample_rate:          proc "stdcall" (),
			jack_get_buffer_size:          proc "stdcall" (),
			jack_get_ports:                proc "stdcall" (),
			jack_activate:                 proc "stdcall" (),
			jack_deactivate:               proc "stdcall" (),
			jack_connect:                  proc "stdcall" (),
			jack_port_register:            proc "stdcall" (),
			jack_port_name:                proc "stdcall" (),
			jack_port_get_buffer:          proc "stdcall" (),
			jack_free:                     proc "stdcall" (),
			pClientName:                   cstring,
			tryStartServer:                b32,
		},
		coreaudio:    struct {},
		sndio:        struct {},
		audio4:       struct {},
		oss:          struct {},
		aaudio:       struct {},
		opensl:       struct {},
		webaudio:     struct {},
		null_backend: struct {
			_unused: i32,
		},
	},
	using _:                 struct #raw_union {
		win32:   struct {
			hOle32DLL:           handle,
			CoInitialize:        proc "stdcall" (),
			CoInitializeEx:      proc "stdcall" (),
			CoUninitialize:      proc "stdcall" (),
			CoCreateInstance:    proc "stdcall" (),
			CoTaskMemFree:       proc "stdcall" (),
			PropVariantClear:    proc "stdcall" (),
			StringFromGUID2:     proc "stdcall" (),
			hUser32DLL:          handle,
			GetForegroundWindow: proc "stdcall" (),
			GetDesktopWindow:    proc "stdcall" (),
			hAdvapi32DLL:        handle,
			RegOpenKeyExA:       proc "stdcall" (),
			RegCloseKey:         proc "stdcall" (),
			RegQueryValueExA:    proc "stdcall" (),
			CoInitializeResult:  i32,
		},
		posix:   struct {},
		_unused: i32,
	},
}
```

##### Related Procedures With Parameters

* [context\_enumerate\_devices](/vendor/miniaudio/#context_enumerate_devices)
* [context\_get\_device\_info](/vendor/miniaudio/#context_get_device_info)
* [context\_get\_devices](/vendor/miniaudio/#context_get_devices)
* [context\_get\_log](/vendor/miniaudio/#context_get_log)
* [context\_init](/vendor/miniaudio/#context_init)
* [context\_is\_loopback\_supported](/vendor/miniaudio/#context_is_loopback_supported)
* [context\_uninit](/vendor/miniaudio/#context_uninit)
* [device\_init](/vendor/miniaudio/#device_init)



##### Related Procedures With Returns

* [device\_get\_context](/vendor/miniaudio/#device_get_context)

### [data\_converter ¶](#data_converter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L300)

```
data_converter :: struct {
	formatIn:                format,
	formatOut:               format,
	channelsIn:              u32,
	channelsOut:             u32,
	sampleRateIn:            u32,
	sampleRateOut:           u32,
	ditherMode:              dither_mode,
	executionPath:           data_converter_execution_path,
	// The execution path the data converter will follow when processing. 
	channelConverter:        channel_converter,
	resampler:               resampler,
	hasPreFormatConversion:  b8,
	hasPostFormatConversion: b8,
	hasChannelConverter:     b8,
	hasResampler:            b8,
	isPassthrough:           b8,
	// Memory management. 
	_ownsHeap:               b8,
	_pHeap:                  rawptr,
}
```

##### Related Procedures With Parameters

* [data\_converter\_get\_expected\_output\_frame\_count](/vendor/miniaudio/#data_converter_get_expected_output_frame_count)
* [data\_converter\_get\_input\_channel\_map](/vendor/miniaudio/#data_converter_get_input_channel_map)
* [data\_converter\_get\_input\_latency](/vendor/miniaudio/#data_converter_get_input_latency)
* [data\_converter\_get\_output\_channel\_map](/vendor/miniaudio/#data_converter_get_output_channel_map)
* [data\_converter\_get\_output\_latency](/vendor/miniaudio/#data_converter_get_output_latency)
* [data\_converter\_get\_required\_input\_frame\_count](/vendor/miniaudio/#data_converter_get_required_input_frame_count)
* [data\_converter\_init](/vendor/miniaudio/#data_converter_init)
* [data\_converter\_init\_preallocated](/vendor/miniaudio/#data_converter_init_preallocated)
* [data\_converter\_process\_pcm\_frames](/vendor/miniaudio/#data_converter_process_pcm_frames)
* [data\_converter\_reset](/vendor/miniaudio/#data_converter_reset)
* [data\_converter\_set\_rate](/vendor/miniaudio/#data_converter_set_rate)
* [data\_converter\_set\_rate\_ratio](/vendor/miniaudio/#data_converter_set_rate_ratio)
* [data\_converter\_uninit](/vendor/miniaudio/#data_converter_uninit)

### [data\_converter\_config ¶](#data_converter_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L274)

```
data_converter_config :: struct {
	formatIn:                        format,
	formatOut:                       format,
	channelsIn:                      u32,
	channelsOut:                     u32,
	sampleRateIn:                    u32,
	sampleRateOut:                   u32,
	pChannelMapIn:                   [^]channel,
	pChannelMapOut:                  [^]channel,
	ditherMode:                      dither_mode,
	channelMixMode:                  channel_mix_mode,
	calculateLFEFromSpatialChannels: b32,
	// When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. 
	ppChannelWeights:                ^[^]f32,
	// [in][out]. Only used when channelMixMode is set to ma_channel_mix_mode_custom_weights. 
	allowDynamicSampleRate:          b32,
	resampling:                      resampler_config,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Data Conversion

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [convert\_frames\_ex](/vendor/miniaudio/#convert_frames_ex)
* [data\_converter\_get\_heap\_size](/vendor/miniaudio/#data_converter_get_heap_size)
* [data\_converter\_init](/vendor/miniaudio/#data_converter_init)
* [data\_converter\_init\_preallocated](/vendor/miniaudio/#data_converter_init_preallocated)



##### Related Procedures With Returns

* [data\_converter\_config\_init](/vendor/miniaudio/#data_converter_config_init)
* [data\_converter\_config\_init\_default](/vendor/miniaudio/#data_converter_config_init_default)

### [data\_converter\_execution\_path ¶](#data_converter_execution_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L291)

```
data_converter_execution_path :: enum i32 {
	passthrough,    // No conversion.
	format_only,    // Only format conversion.
	channels_only,  // Only channel conversion.
	resample_only,  // Only resampling.
	resample_first, // All conversions, but resample as the first step.
	channels_first, // All conversions, but channels as the first step.
}
```

### [data\_format\_flag ¶](#data_format_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L354)

```
data_format_flag :: enum i32 {
	EXCLUSIVE_MODE = 1, // If set, this is supported in exclusive mode. Otherwise not natively supported by exclusive mode.
}
```

### [data\_format\_flags ¶](#data_format_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L358)

```
data_format_flags :: bit_set[data_format_flag; u32]
```

### [data\_source ¶](#data_source) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L120)

```
data_source :: struct {}
```

##### Related Procedures With Parameters

* [data\_source\_get\_current](/vendor/miniaudio/#data_source_get_current)
* [data\_source\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#data_source_get_cursor_in_pcm_frames)
* [data\_source\_get\_cursor\_in\_seconds](/vendor/miniaudio/#data_source_get_cursor_in_seconds)
* [data\_source\_get\_data\_format](/vendor/miniaudio/#data_source_get_data_format)
* [data\_source\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#data_source_get_length_in_pcm_frames)
* [data\_source\_get\_length\_in\_seconds](/vendor/miniaudio/#data_source_get_length_in_seconds)
* [data\_source\_get\_loop\_point\_in\_pcm\_frames](/vendor/miniaudio/#data_source_get_loop_point_in_pcm_frames)
* [data\_source\_get\_next](/vendor/miniaudio/#data_source_get_next)
* [data\_source\_get\_next\_callback](/vendor/miniaudio/#data_source_get_next_callback)
* [data\_source\_get\_range\_in\_pcm\_frames](/vendor/miniaudio/#data_source_get_range_in_pcm_frames)
* [data\_source\_init](/vendor/miniaudio/#data_source_init)
* [data\_source\_is\_looping](/vendor/miniaudio/#data_source_is_looping)
* [data\_source\_node\_config\_init](/vendor/miniaudio/#data_source_node_config_init)
* [data\_source\_read\_pcm\_frames](/vendor/miniaudio/#data_source_read_pcm_frames)
* [data\_source\_seek\_pcm\_frames](/vendor/miniaudio/#data_source_seek_pcm_frames)
* [data\_source\_seek\_seconds](/vendor/miniaudio/#data_source_seek_seconds)
* [data\_source\_seek\_to\_pcm\_frame](/vendor/miniaudio/#data_source_seek_to_pcm_frame)
* [data\_source\_seek\_to\_seconds](/vendor/miniaudio/#data_source_seek_to_seconds)
* [data\_source\_set\_current](/vendor/miniaudio/#data_source_set_current)
* [data\_source\_set\_loop\_point\_in\_pcm\_frames](/vendor/miniaudio/#data_source_set_loop_point_in_pcm_frames)
* [data\_source\_set\_looping](/vendor/miniaudio/#data_source_set_looping)
* [data\_source\_set\_next](/vendor/miniaudio/#data_source_set_next)
* [data\_source\_set\_next\_callback](/vendor/miniaudio/#data_source_set_next_callback)
* [data\_source\_set\_range\_in\_pcm\_frames](/vendor/miniaudio/#data_source_set_range_in_pcm_frames)
* [data\_source\_uninit](/vendor/miniaudio/#data_source_uninit)
* [sound\_init\_from\_data\_source](/vendor/miniaudio/#sound_init_from_data_source)



##### Related Procedures With Returns

* [sound\_get\_data\_source](/vendor/miniaudio/#sound_get_data_source)

### [data\_source\_base ¶](#data_source_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L145)

```
data_source_base :: struct {
	vtable:           ^data_source_vtable,
	rangeBegInFrames: u64,
	rangeEndInFrames: u64,
	// Set to -1 for unranged (default). 
	loopBegInFrames:  u64,
	// Relative to rangeBegInFrames. 
	loopEndInFrames:  u64,
	// Relative to rangeBegInFrames. Set to -1 for the end of the range. 
	pCurrent:         ^data_source,
	// When non-NULL, the data source being initialized will act as a proxy and will route all operations to pCurrent. Used in conjunction with pNext/onGetNext for seamless chaining. 
	pNext:            ^data_source,
	// When set to NULL, onGetNext will be used. 
	onGetNext:        data_source_get_next_proc,
	// Will be used when pNext is NULL. If both are NULL, no next will be used. 
	isLooping:        b32,
}
```

### [data\_source\_config ¶](#data_source_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L141)

```
data_source_config :: struct {
	vtable: ^data_source_vtable,
}
```

##### Related Procedures With Parameters

* [data\_source\_init](/vendor/miniaudio/#data_source_init)



##### Related Procedures With Returns

* [data\_source\_config\_init](/vendor/miniaudio/#data_source_config_init)

### [data\_source\_flag ¶](#data_source_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L122)

```
data_source_flag :: enum i32 {
	SELF_MANAGED_RANGE_AND_LOOP_POINT = 0, 
}
```

### [data\_source\_flags ¶](#data_source_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L126)

```
data_source_flags :: bit_set[data_source_flag; u32]
```

### [data\_source\_get\_next\_proc ¶](#data_source_get_next_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L139)

```
data_source_get_next_proc :: proc "c" (pDataSource: ^data_source) -> ^data_source
```

##### Related Procedures With Parameters

* [data\_source\_set\_next\_callback](/vendor/miniaudio/#data_source_set_next_callback)



##### Related Procedures With Returns

* [data\_source\_get\_next\_callback](/vendor/miniaudio/#data_source_get_next_callback)

### [data\_source\_node ¶](#data_source_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L242)

```
data_source_node :: struct {
	base:        node_base,
	pDataSource: ^data_source,
}
```

##### Related Procedures With Parameters

* [data\_source\_node\_init](/vendor/miniaudio/#data_source_node_init)
* [data\_source\_node\_is\_looping](/vendor/miniaudio/#data_source_node_is_looping)
* [data\_source\_node\_set\_looping](/vendor/miniaudio/#data_source_node_set_looping)
* [data\_source\_node\_uninit](/vendor/miniaudio/#data_source_node_uninit)

### [data\_source\_node\_config ¶](#data_source_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L237)

```
data_source_node_config :: struct {
	nodeConfig:  node_config,
	pDataSource: ^data_source,
}
```

 

Data source node. 0 input buses, 1 output bus. Used for reading from a data source.




##### Related Procedures With Parameters

* [data\_source\_node\_init](/vendor/miniaudio/#data_source_node_init)



##### Related Procedures With Returns

* [data\_source\_node\_config\_init](/vendor/miniaudio/#data_source_node_config_init)

### [data\_source\_vtable ¶](#data_source_vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L129)

```
data_source_vtable :: struct {
	onRead:          proc "c" (pDataSource: ^data_source, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result,
	onSeek:          proc "c" (pDataSource: ^data_source, frameIndex: u64) -> result,
	onGetDataFormat: proc "c" (pDataSource: ^data_source, pFormat: ^format, pChannels: ^u32, pSampleRate: ^u32, pChannelMap: [^]channel, channelMapCap: uint) -> result,
	onGetCursor:     proc "c" (pDataSource: ^data_source, pCursor: ^u64) -> result,
	onGetLength:     proc "c" (pDataSource: ^data_source, pLength: ^u64) -> result,
	onSetLooping:    proc "c" (pDataSource: ^data_source, isLooping: b32) -> result,
	flags:           bit_set[data_source_flag; u32],
}
```

### [decoder ¶](#decoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L57)

```
decoder :: struct {
	ds:                     data_source_base,
	pBackend:               ^data_source,
	// The decoding backend we'll be pulling data from. 
	pBackendVTable:         ^decoding_backend_vtable,
	// The vtable for the decoding backend. This needs to be stored so we can access the onUninit() callback. 
	pBackendUserData:       rawptr,
	onRead:                 decoder_read_proc,
	onSeek:                 decoder_seek_proc,
	onTell:                 decoder_tell_proc,
	pUserData:              rawptr,
	readPointerInPCMFrames: u64,
	// In output sample rate. Used for keeping track of how many frames are available for decoding. 
	outputFormat:           format,
	outputChannels:         u32,
	outputSampleRate:       u32,
	converter:              data_converter,
	// <-- Data conversion is achieved by running frames through this. 
	pInputCache:            rawptr,
	// In input format. Can be null if it's not needed. 
	inputCacheCap:          u64,
	// The capacity of the input cache. 
	inputCacheConsumed:     u64,
	// The number of frames that have been consumed in the cache. Used for determining the next valid frame. 
	inputCacheRemaining:    u64,
	// The number of valid frames remaining in the cache. 
	allocationCallbacks:    allocation_callbacks,
	data:                   struct #raw_union {
		vfs:    struct {
			pVFS: ^vfs,
			file: vfs_file,
		},
		memory: struct {
			pData:          [^]u8,
			dataSize:       uint,
			currentReadPos: uint,
		},
	},
}
```

##### Related Procedures With Parameters

* [decoder\_get\_available\_frames](/vendor/miniaudio/#decoder_get_available_frames)
* [decoder\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#decoder_get_cursor_in_pcm_frames)
* [decoder\_get\_data\_format](/vendor/miniaudio/#decoder_get_data_format)
* [decoder\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#decoder_get_length_in_pcm_frames)
* [decoder\_init](/vendor/miniaudio/#decoder_init)
* [decoder\_init\_file](/vendor/miniaudio/#decoder_init_file)
* [decoder\_init\_file\_w](/vendor/miniaudio/#decoder_init_file_w)
* [decoder\_init\_memory](/vendor/miniaudio/#decoder_init_memory)
* [decoder\_init\_vfs](/vendor/miniaudio/#decoder_init_vfs)
* [decoder\_init\_vfs\_w](/vendor/miniaudio/#decoder_init_vfs_w)
* [decoder\_read\_pcm\_frames](/vendor/miniaudio/#decoder_read_pcm_frames)
* [decoder\_seek\_to\_pcm\_frame](/vendor/miniaudio/#decoder_seek_to_pcm_frame)
* [decoder\_uninit](/vendor/miniaudio/#decoder_uninit)

### [decoder\_config ¶](#decoder_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L41)

```
decoder_config :: struct {
	format:                 format,
	// Set to 0 or ma_format_unknown to use the stream's internal format. 
	channels:               u32,
	// Set to 0 to use the stream's internal channels. 
	sampleRate:             u32,
	// Set to 0 to use the stream's internal sample rate. 
	channelMap:             [^]channel,
	channelMixMode:         channel_mix_mode,
	ditherMode:             dither_mode,
	resampling:             resampler_config,
	allocationCallbacks:    allocation_callbacks,
	encodingFormat:         encoding_format,
	seekPointCount:         u32,
	// When set to > 0, specifies the number of seek points to use for the generation of a seek table. Not all decoding backends support this. 
	ppCustomBackendVTables: ^[^]decoding_backend_vtable,
	customBackendCount:     u32,
	pCustomBackendUserData: rawptr,
}
```

##### Related Procedures With Parameters

* [decode\_file](/vendor/miniaudio/#decode_file)
* [decode\_from\_vfs](/vendor/miniaudio/#decode_from_vfs)
* [decode\_memory](/vendor/miniaudio/#decode_memory)
* [decoder\_init](/vendor/miniaudio/#decoder_init)
* [decoder\_init\_file](/vendor/miniaudio/#decoder_init_file)
* [decoder\_init\_file\_w](/vendor/miniaudio/#decoder_init_file_w)
* [decoder\_init\_memory](/vendor/miniaudio/#decoder_init_memory)
* [decoder\_init\_vfs](/vendor/miniaudio/#decoder_init_vfs)
* [decoder\_init\_vfs\_w](/vendor/miniaudio/#decoder_init_vfs_w)



##### Related Procedures With Returns

* [decoder\_config\_init](/vendor/miniaudio/#decoder_config_init)
* [decoder\_config\_init\_default](/vendor/miniaudio/#decoder_config_init_default)

### [decoder\_read\_proc ¶](#decoder_read_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L37)

```
decoder_read_proc :: proc "c" (pDecoder: ^decoder, pBufferOut: rawptr, bytesToRead: uint, pBytesRead: ^uint) -> result
```

 

Returns the number of bytes read.




##### Related Procedures With Parameters

* [decoder\_init](/vendor/miniaudio/#decoder_init)

### [decoder\_seek\_proc ¶](#decoder_seek_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L38)

```
decoder_seek_proc :: proc "c" (pDecoder: ^decoder, byteOffset: i64, origin: seek_origin) -> result
```

##### Related Procedures With Parameters

* [decoder\_init](/vendor/miniaudio/#decoder_init)

### [decoder\_tell\_proc ¶](#decoder_tell_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L39)

```
decoder_tell_proc :: proc "c" (pDecoder: ^decoder, pCursor: ^i64) -> result
```

### [decoding\_backend\_config ¶](#decoding_backend_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L17)

```
decoding_backend_config :: struct {
	preferredFormat: format,
	seekPointCount:  u32,
}
```

##### Related Procedures With Returns

* [decoding\_backend\_config\_init](/vendor/miniaudio/#decoding_backend_config_init)

### [decoding\_backend\_vtable ¶](#decoding_backend_vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L28)

```
decoding_backend_vtable :: struct {
	onInit:       proc "c" (pUserData: rawptr, onRead: decoder_read_proc, onSeek: decoder_seek_proc, onTell: decoder_tell_proc, pReadSeekTellUserData: rawptr, pConfig: ^decoding_backend_config, pAllocationCallbacks: ^allocation_callbacks, ppBackend: ^^data_source) -> result,
	onInitFile:   proc "c" (pUserData: rawptr, pFilePath: cstring, pConfig: ^decoding_backend_config, pAllocationCallbacks: ^allocation_callbacks, ppBackend: ^^data_source) -> result,
	// Optional. 
	onInitFileW:  proc "c" (pUserData: rawptr, pFilePath: [^]u16, pConfig: ^decoding_backend_config, pAllocationCallbacks: ^allocation_callbacks, ppBackend: ^^data_source) -> result,
	// Optional. 
	onInitMemory: proc "c" (pUserData: rawptr, pData: rawptr, dataSize: uint, pConfig: ^decoding_backend_config, pAllocationCallbacks: ^allocation_callbacks, ppBackend: ^^data_source) -> result,
	// Optional. 
	onUninit:     proc "c" (pUserData: rawptr, pBackend: ^data_source, pAllocationCallbacks: ^allocation_callbacks),
}
```

### [default\_vfs ¶](#default_vfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L47)

```
default_vfs :: struct {
	cb:                  vfs_callbacks,
	allocationCallbacks: allocation_callbacks,
}
```

##### Related Procedures With Parameters

* [default\_vfs\_init](/vendor/miniaudio/#default_vfs_init)

### [delay ¶](#delay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L20)

```
delay :: struct {
	config:             delay_config,
	cursor:             u32,
	// Feedback is written to this cursor. Always equal or in front of the read cursor. 
	bufferSizeInFrames: u32,
	pBuffer:            [^]f32,
}
```

##### Related Procedures With Parameters

* [delay\_get\_decay](/vendor/miniaudio/#delay_get_decay)
* [delay\_get\_dry](/vendor/miniaudio/#delay_get_dry)
* [delay\_get\_wet](/vendor/miniaudio/#delay_get_wet)
* [delay\_init](/vendor/miniaudio/#delay_init)
* [delay\_process\_pcm\_frames](/vendor/miniaudio/#delay_process_pcm_frames)
* [delay\_set\_decay](/vendor/miniaudio/#delay_set_decay)
* [delay\_set\_dry](/vendor/miniaudio/#delay_set_dry)
* [delay\_set\_wet](/vendor/miniaudio/#delay_set_wet)
* [delay\_uninit](/vendor/miniaudio/#delay_uninit)

### [delay\_config ¶](#delay_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L10)

```
delay_config :: struct {
	channels:      u32,
	sampleRate:    u32,
	delayInFrames: u32,
	delayStart:    b32,
	// Set to true to delay the start of the output; false otherwise. 
	wet:           f32,
	// 0..1. Default = 1. 
	dry:           f32,
	// 0..1. Default = 1. 
	decay:         f32,
}
```

 

Delay




##### Related Procedures With Parameters

* [delay\_init](/vendor/miniaudio/#delay_init)



##### Related Procedures With Returns

* [delay\_config\_init](/vendor/miniaudio/#delay_config_init)

### [delay\_node ¶](#delay_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L470)

```
delay_node :: struct {
	baseNode: node_base,
	delay:    delay,
}
```

##### Related Procedures With Parameters

* [delay\_node\_get\_decay](/vendor/miniaudio/#delay_node_get_decay)
* [delay\_node\_get\_dry](/vendor/miniaudio/#delay_node_get_dry)
* [delay\_node\_get\_wet](/vendor/miniaudio/#delay_node_get_wet)
* [delay\_node\_init](/vendor/miniaudio/#delay_node_init)
* [delay\_node\_set\_decay](/vendor/miniaudio/#delay_node_set_decay)
* [delay\_node\_set\_dry](/vendor/miniaudio/#delay_node_set_dry)
* [delay\_node\_set\_wet](/vendor/miniaudio/#delay_node_set_wet)
* [delay\_node\_uninit](/vendor/miniaudio/#delay_node_uninit)

### [delay\_node\_config ¶](#delay_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L465)

```
delay_node_config :: struct {
	nodeConfig: node_config,
	delay:      delay_config,
}
```

 

Delay Filter Node




##### Related Procedures With Parameters

* [delay\_node\_init](/vendor/miniaudio/#delay_node_init)



##### Related Procedures With Returns

* [delay\_node\_config\_init](/vendor/miniaudio/#delay_node_config_init)

### [device ¶](#device) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L996)

```
device :: struct {
	pContext:                  ^context_type,
	type:                      device_type,
	sampleRate:                u32,
	state:                     u32,
	// atomic
	// The state of the device is variable and can change at any time on any thread. Must be used atomically. 
	onData:                    device_data_proc,
	// Set once at initialization time and should not be changed after. 
	onNotification:            device_notification_proc,
	// Set once at initialization time and should not be changed after. 
	onStop:                    stop_proc,
	// DEPRECATED. Use the notification callback instead. Set once at initialization time and should not be changed after. 
	pUserData:                 rawptr,
	// Application defined data. 
	startStopLock:             mutex,
	wakeupEvent:               event,
	startEvent:                event,
	stopEvent:                 event,
	device_thread:             thread,
	workResult:                result,
	// This is set by the worker thread after it's finished doing a job. 
	isOwnerOfContext:          b8,
	// When set to true, uninitializing the device will also uninitialize the context. Set to true when NULL is passed into ma_device_init(). 
	noPreSilencedOutputBuffer: b8,
	noClip:                    b8,
	noDisableDenormals:        b8,
	noFixedSizedCallback:      b8,
	masterVolumeFactor:        f32,
	// atomic
	// Linear 0..1. Can be read and written simultaneously by different threads. Must be used atomically. 
	duplexRB:                  duplex_rb,
	// Intermediary buffer for duplex device on asynchronous backends. 
	resampling:                struct {
		algorithm:        resample_algorithm,
		pBackendVTable:   ^resampling_backend_vtable,
		pBackendUserData: rawptr,
		linear:           struct {
			lpfOrder: u32,
		},
	},
	playback:                  struct {
		pID:                             ^device_id,
		// Set to NULL if using default ID, otherwise set to the address of "id". 
		id:                              device_id,
		// If using an explicit device, will be set to a copy of the ID used for initialization. Otherwise cleared to 0. 
		name:                            [256]u8,
		// Maybe temporary. Likely to be replaced with a query API. 
		shareMode:                       share_mode,
		// Set to whatever was passed in when the device was initialized. 
		playback_format:                 format,
		channels:                        u32,
		channelMap:                      [254]channel,
		internalFormat:                  format,
		internalChannels:                u32,
		internalSampleRate:              u32,
		internalChannelMap:              [254]channel,
		internalPeriodSizeInFrames:      u32,
		internalPeriods:                 u32,
		channelMixMode:                  channel_mix_mode,
		calculateLFEFromSpatialChannels: b32,
		converter:                       data_converter,
		pIntermediaryBuffer:             rawptr,
		// For implementing fixed sized buffer callbacks. Will be null if using variable sized callbacks. 
		intermediaryBufferCap:           u32,
		intermediaryBufferLen:           u32,
		// How many valid frames are sitting in the intermediary buffer. 
		pInputCache:                     rawptr,
		// In external format. Can be null. 
		inputCacheCap:                   u64,
		inputCacheConsumed:              u64,
		inputCacheRemaining:             u64,
	},
	capture:                   struct {
		pID:                             ^device_id,
		// Set to NULL if using default ID, otherwise set to the address of "id". 
		id:                              device_id,
		// If using an explicit device, will be set to a copy of the ID used for initialization. Otherwise cleared to 0. 
		name:                            [256]u8,
		// Maybe temporary. Likely to be replaced with a query API. 
		shareMode:                       share_mode,
		// Set to whatever was passed in when the device was initialized. 
		capture_format:                  format,
		channels:                        u32,
		channelMap:                      [254]channel,
		internalFormat:                  format,
		internalChannels:                u32,
		internalSampleRate:              u32,
		internalChannelMap:              [254]channel,
		internalPeriodSizeInFrames:      u32,
		internalPeriods:                 u32,
		channelMixMode:                  channel_mix_mode,
		calculateLFEFromSpatialChannels: b32,
		converter:                       data_converter,
		pIntermediaryBuffer:             rawptr,
		// For implementing fixed sized buffer callbacks. Will be null if using variable sized callbacks. 
		intermediaryBufferCap:           u32,
		intermediaryBufferLen:           u32,
	},
	using _:                   struct #raw_union {
		wasapi:      struct {
			pAudioClientPlayback:             rawptr,
			pAudioClientCapture:              rawptr,
			pRenderClient:                    rawptr,
			pCaptureClient:                   rawptr,
			pDeviceEnumerator:                rawptr,
			// Used for IMMNotificationClient notifications. Required for detecting default device changes. 
			notificationClient:               IMMNotificationClient,
			hEventPlayback:                   handle,
			hEventCapture:                    handle,
			// Auto reset. Initialized to unsignaled. 
			actualPeriodSizeInFramesPlayback: u32,
			// Value from GetBufferSize(). internalPeriodSizeInFrames is not set to the _actual_ buffer size when low-latency shared mode is being used due to the way the IAudioClient3 API works. 
			actualPeriodSizeInFramesCapture:  u32,
			originalPeriodSizeInFrames:       u32,
			originalPeriodSizeInMilliseconds: u32,
			originalPeriods:                  u32,
			originalPerformanceProfile:       performance_profile,
			periodSizeInFramesPlayback:       u32,
			periodSizeInFramesCapture:        u32,
			pMappedBufferCapture:             rawptr,
			mappedBufferCaptureCap:           u32,
			mappedBufferCaptureLen:           u32,
			pMappedBufferPlayback:            rawptr,
			mappedBufferPlaybackCap:          u32,
			mappedBufferPlaybackLen:          u32,
			isStartedCapture:                 b32,
			// atomic
			// Can be read and written simultaneously across different threads. Must be used atomically, and must be 32-bit. 
			isStartedPlayback:                b32,
			// atomic
			// Can be read and written simultaneously across different threads. Must be used atomically, and must be 32-bit. 
			loopbackProcessID:                u32,
			loopbackProcessExclude:           b8,
			noAutoConvertSRC:                 b8,
			// When set to true, disables the use of AUDCLNT_STREAMFLAGS_AUTOCONVERTPCM. 
			noDefaultQualitySRC:              b8,
			// When set to true, disables the use of AUDCLNT_STREAMFLAGS_SRC_DEFAULT_QUALITY. 
			noHardwareOffloading:             b8,
			allowCaptureAutoStreamRouting:    b8,
			allowPlaybackAutoStreamRouting:   b8,
			isDetachedPlayback:               b8,
			isDetachedCapture:                b8,
			usage:                            wasapi_usage,
			hAvrtHandle:                      rawptr,
			rerouteLock:                      mutex,
		},
		dsound:      struct {
			pPlayback:              rawptr,
			pPlaybackPrimaryBuffer: rawptr,
			pPlaybackBuffer:        rawptr,
			pCapture:               rawptr,
			pCaptureBuffer:         rawptr,
		},
		winmm:       struct {
			hDevicePlayback:              handle,
			hDeviceCapture:               handle,
			hEventPlayback:               handle,
			hEventCapture:                handle,
			fragmentSizeInFrames:         u32,
			iNextHeaderPlayback:          u32,
			// [0,periods). Used as an index into pWAVEHDRPlayback. 
			iNextHeaderCapture:           u32,
			// [0,periods). Used as an index into pWAVEHDRCapture. 
			headerFramesConsumedPlayback: u32,
			// The number of PCM frames consumed in the buffer in pWAVEHEADER[iNextHeader]. 
			headerFramesConsumedCapture:  u32,
			pWAVEHDRPlayback:             [^]u8,
			pWAVEHDRCapture:              [^]u8,
			// One instantiation for each period. 
			pIntermediaryBufferPlayback:  [^]u8,
			pIntermediaryBufferCapture:   [^]u8,
			_pHeapData:                   [^]u8,
		},
		alsa:        struct {},
		pulse:       struct {},
		jack:        struct {
			pClient:                     rawptr,
			pPortsPlayback:              [^]rawptr,
			pPortsCapture:               [^]rawptr,
			pIntermediaryBufferPlayback: [^]f32,
			// Typed as a float because JACK is always floating point. 
			pIntermediaryBufferCapture:  [^]f32,
		},
		coreaudio:   struct {},
		sndio:       struct {},
		audio4:      struct {},
		oss:         struct {},
		aaudio:      struct {},
		opensl:      struct {},
		webaudio:    struct {},
		null_device: struct {
			deviceThread:                         thread,
			operationEvent:                       event,
			operationCompletionEvent:             event,
			operationSemaphore:                   semaphore,
			operation:                            u32,
			operationResult:                      result,
			timer:                                timer,
			priorRunTime:                         f64,
			currentPeriodFramesRemainingPlayback: u32,
			currentPeriodFramesRemainingCapture:  u32,
			lastProcessedFramePlayback:           u64,
			lastProcessedFrameCapture:            u64,
			sStarted:                             b32,
		},
	},
}
```

##### Related Procedures With Parameters

* [device\_get\_context](/vendor/miniaudio/#device_get_context)
* [device\_get\_info](/vendor/miniaudio/#device_get_info)
* [device\_get\_log](/vendor/miniaudio/#device_get_log)
* [device\_get\_master\_volume](/vendor/miniaudio/#device_get_master_volume)
* [device\_get\_master\_volume\_db](/vendor/miniaudio/#device_get_master_volume_db)
* [device\_get\_name](/vendor/miniaudio/#device_get_name)
* [device\_get\_state](/vendor/miniaudio/#device_get_state)
* [device\_handle\_backend\_data\_callback](/vendor/miniaudio/#device_handle_backend_data_callback)
* [device\_init](/vendor/miniaudio/#device_init)
* [device\_init\_ex](/vendor/miniaudio/#device_init_ex)
* [device\_is\_started](/vendor/miniaudio/#device_is_started)
* [device\_post\_init](/vendor/miniaudio/#device_post_init)
* [device\_set\_master\_volume](/vendor/miniaudio/#device_set_master_volume)
* [device\_set\_master\_volume\_db](/vendor/miniaudio/#device_set_master_volume_db)
* [device\_start](/vendor/miniaudio/#device_start)
* [device\_stop](/vendor/miniaudio/#device_stop)
* [device\_uninit](/vendor/miniaudio/#device_uninit)



##### Related Procedures With Returns

* [engine\_get\_device](/vendor/miniaudio/#engine_get_device)

### [device\_config ¶](#device_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L377)

```
device_config :: struct {
	deviceType:                device_type,
	sampleRate:                u32,
	periodSizeInFrames:        u32,
	periodSizeInMilliseconds:  u32,
	periods:                   u32,
	performanceProfile:        performance_profile,
	noPreSilencedOutputBuffer: b8,
	// When set to true, the contents of the output buffer passed into the data callback will be left undefined rather than initialized to zero. 
	noClip:                    b8,
	// When set to true, the contents of the output buffer passed into the data callback will not be clipped after returning. Only applies when the playback sample format is f32. 
	noDisableDenormals:        b8,
	// Do not disable denormals when firing the data callback. 
	noFixedSizedCallback:      b8,
	// Disables strict fixed-sized data callbacks. Setting this to true will result in the period size being treated only as a hint to the backend. This is an optimization for those who don't need fixed sized callbacks. 
	dataCallback:              device_data_proc,
	notificationCallback:      device_notification_proc,
	stopCallback:              stop_proc,
	pUserData:                 rawptr,
	resampling:                resampler_config,
	playback:                  struct {
		pDeviceID:                       ^device_id,
		format:                          format,
		channels:                        u32,
		channelMap:                      [^]channel,
		channelMixMode:                  channel_mix_mode,
		calculateLFEFromSpatialChannels: b32,
		// When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. 
		shareMode:                       share_mode,
	},
	capture:                   struct {
		pDeviceID:                       ^device_id,
		format:                          format,
		channels:                        u32,
		channelMap:                      [^]channel,
		channelMixMode:                  channel_mix_mode,
		calculateLFEFromSpatialChannels: b32,
		// When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. 
		shareMode:                       share_mode,
	},
	wasapi:                    struct {
		usage:                  wasapi_usage,
		// When configured, uses Avrt APIs to set the thread characteristics. 
		noAutoConvertSRC:       b8,
		// When set to true, disables the use of AUDCLNT_STREAMFLAGS_AUTOCONVERTPCM. 
		noDefaultQualitySRC:    b8,
		// When set to true, disables the use of AUDCLNT_STREAMFLAGS_SRC_DEFAULT_QUALITY. 
		noAutoStreamRouting:    b8,
		// Disables automatic stream routing. 
		noHardwareOffloading:   b8,
		// Disables WASAPI's hardware offloading feature. 
		loopbackProcessID:      u32,
		// The process ID to include or exclude for loopback mode. Set to 0 to capture audio from all processes. Ignored when an explicit device ID is specified. 
		loopbackProcessExclude: b8,
	},
	alsa:                      struct {
		noMMap:         b32,
		// Disables MMap mode. 
		noAutoFormat:   b32,
		// Opens the ALSA device with SND_PCM_NO_AUTO_FORMAT. 
		noAutoChannels: b32,
		// Opens the ALSA device with SND_PCM_NO_AUTO_CHANNELS. 
		noAutoResample: b32,
	},
	pulse:                     struct {
		pStreamNamePlayback: cstring,
		pStreamNameCapture:  cstring,
		channelMap:          i32,
	},
	coreaudio:                 struct {
		allowNominalSampleRateChange: b32,
	},
	opensl:                    struct {
		streamType:                     opensl_stream_type,
		recordingPreset:                opensl_recording_preset,
		enableCompatibilityWorkarounds: b32,
	},
	aaudio:                    struct {
		usage:                          aaudio_usage,
		contentType:                    aaudio_content_type,
		inputPreset:                    aaudio_input_preset,
		allowedCapturePolicy:           aaudio_allowed_capture_policy,
		noAutoStartAfterReroute:        b32,
		enableCompatibilityWorkarounds: b32,
		allowSetBufferCapacity:         b32,
	},
}
```

##### Related Procedures With Parameters

* [device\_init](/vendor/miniaudio/#device_init)
* [device\_init\_ex](/vendor/miniaudio/#device_init_ex)



##### Related Procedures With Returns

* [device\_config\_init](/vendor/miniaudio/#device_config_init)

### [device\_data\_proc ¶](#device_data_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L191)

```
device_data_proc :: proc "c" (pDevice: ^device, pOutput, pInput: rawptr, frameCount: u32)
```

 

The callback for processing audio data from the device.

The data callback is fired by miniaudio whenever the device needs to have more data delivered to a playback device, or when a capture device has some data
available. This is called as soon as the backend asks for more data which means it may be called with inconsistent frame counts. You cannot assume the
callback will be fired with a consistent frame count.

Parameters
----------
pDevice (in)

```
A pointer to the relevant device.
```

pOutput (out)

```
A pointer to the output buffer that will receive audio data that will later be played back through the speakers. This will be non-null for a playback or
full-duplex device and null for a capture and loopback device.
```

pInput (in)

```
A pointer to the buffer containing input data from a recording device. This will be non-null for a capture, full-duplex or loopback device and null for a
playback device.
```

frameCount (in)

```
The number of PCM frames to process. Note that this will not necessarily be equal to what you requested when you initialized the device. The
`periodSizeInFrames` and `periodSizeInMilliseconds` members of the device config are just hints, and are not necessarily exactly what you'll get. You must
not assume this will always be the same value each time the callback is fired.
```

Remarks
-------
You cannot stop and start the device from inside the callback or else you'll get a deadlock. You must also not uninitialize the device from inside the
callback. The following APIs cannot be called from inside the callback:

```
ma_device_init()
ma_device_init_ex()
ma_device_uninit()
ma_device_start()
ma_device_stop()
```

The proper way to stop the device is to call `ma_device_stop()` from a different thread, normally the main application thread.

### [device\_descriptor ¶](#device_descriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L478)

```
device_descriptor :: struct {
	pDeviceID:                ^device_id,
	shareMode:                share_mode,
	format:                   format,
	channels:                 u32,
	sampleRate:               u32,
	channelMap:               [254]channel,
	periodSizeInFrames:       u32,
	periodSizeInMilliseconds: u32,
	periodCount:              u32,
}
```

 

Describes some basic details about a playback or capture device.




##### Related Procedures With Parameters

* [calculate\_buffer\_size\_in\_frames\_from\_descriptor](/vendor/miniaudio/#calculate_buffer_size_in_frames_from_descriptor)
* [device\_post\_init](/vendor/miniaudio/#device_post_init)

### [device\_id ¶](#device_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L332)

```
device_id :: struct #raw_union {
	wasapi:      [64]u16,
	// WASAPI uses a wchar_t string for identification. 
	dsound:      [16]u8,
	winmm:       u32,
	// When creating a device, WinMM expects a Win32 UINT_PTR for device identification. In practice it's actually just a UINT. 
	alsa:        [256]u8,
	// ALSA uses a name string for identification. 
	pulse:       [256]u8,
	// PulseAudio uses a name string for identification. 
	jack:        i32,
	// JACK always uses default devices. 
	coreaudio:   [256]u8,
	// Core Audio uses a string for identification. 
	sndio:       [256]u8,
	// "snd/0", etc. 
	audio4:      [256]u8,
	// "/dev/audio", etc. 
	oss:         [64]u8,
	// "dev/dsp0", etc. "dev/dsp" for the default device. 
	aaudio:      i32,
	// AAudio uses a 32-bit integer for identification. 
	opensl:      u32,
	// OpenSL|ES uses a 32-bit unsigned integer for identification. 
	webaudio:    [32]u8,
	// Web Audio always uses default devices for now, but if this changes it'll be a GUID. 
	custom:      struct #raw_union {
		i: i32,
		s: [256]u8,
		p: rawptr,
	},
	// The custom backend could be anything. Give them a few options. 
	nullbackend: i32,
}
```

##### Related Procedures With Parameters

* [context\_get\_device\_info](/vendor/miniaudio/#context_get_device_info)
* [device\_id\_equal](/vendor/miniaudio/#device_id_equal)

### [device\_info ¶](#device_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L362)

```
device_info :: struct {
	// Basic info. This is the only information guaranteed to be filled in during device enumeration. 
	id:                    device_id,
	name:                  [256]u8,
	// +1 for null terminator. 
	isDefault:             b32,
	nativeDataFormatCount: u32,
	nativeDataFormats:     [64]struct {
		// Not sure how big to make this. There can be *many* permutations for virtual devices which can support anything. 
		format:     format,
		// Sample format. If set to ma_format_unknown, all sample formats are supported. 
		channels:   u32,
		// If set to 0, all channels are supported. 
		sampleRate: u32,
		// If set to 0, all sample rates are supported. 
		flags:      bit_set[data_format_flag; u32],
	},
}
```

##### Related Procedures With Parameters

* [context\_get\_device\_info](/vendor/miniaudio/#context_get_device_info)
* [device\_get\_info](/vendor/miniaudio/#device_get_info)

### [device\_job\_thread ¶](#device_job_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L73)

```
device_job_thread :: struct {
	thread:     thread,
	jobQueue:   job_queue,
	_hasThread: b32,
}
```

##### Related Procedures With Parameters

* [device\_job\_thread\_init](/vendor/miniaudio/#device_job_thread_init)
* [device\_job\_thread\_next](/vendor/miniaudio/#device_job_thread_next)
* [device\_job\_thread\_post](/vendor/miniaudio/#device_job_thread_post)
* [device\_job\_thread\_uninit](/vendor/miniaudio/#device_job_thread_uninit)

### [device\_job\_thread\_config ¶](#device_job_thread_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L67)

```
device_job_thread_config :: struct {
	noThread:         b32,
	// Set this to true if you want to process jobs yourself. 
	jobQueueCapacity: u32,
	jobQueueFlags:    u32,
}
```

 

Device job thread. This is used by backends that require asynchronous processing of certain
operations. It is not used by all backends.

The device job thread is made up of a thread and a job queue. You can post a job to the thread with
ma\_device\_job\_thread\_post(). The thread will do the processing of the job.




##### Related Procedures With Parameters

* [device\_job\_thread\_init](/vendor/miniaudio/#device_job_thread_init)



##### Related Procedures With Returns

* [device\_job\_thread\_config\_init](/vendor/miniaudio/#device_job_thread_config_init)

### [device\_notification ¶](#device_notification) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L90)

```
device_notification :: struct {
	pDevice: ^device,
	type:    device_notification_type,
	data:    struct #raw_union {
		started:      struct {
			_unused: i32,
		} `raw_union_tag:"type=.started"`,
		stopped:      struct {
			_unused: i32,
		} `raw_union_tag:"type=.stopped"`,
		rerouted:     struct {
			_unused: i32,
		} `raw_union_tag:"type=.rerouted"`,
		interruption: struct {
			_unused: i32,
		} `raw_union_tag:"type=.interruption_began,.interruption_ended,"`,
	},
}
```

### [device\_notification\_proc ¶](#device_notification_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L149)

```
device_notification_proc :: proc "c" (pNotification: ^device_notification)
```

 

The notification callback for when the application should be notified of a change to the device.

This callback is used for notifying the application of changes such as when the device has started,
stopped, rerouted or an interruption has occurred. Note that not all backends will post all
notification types. For example, some backends will perform automatic stream routing without any
kind of notification to the host program which means miniaudio will never know about it and will
never be able to fire the rerouted notification. You should keep this in mind when designing your
program.

The stopped notification will *not* get fired when a device is rerouted.

Parameters
----------
pNotification (in)
A pointer to a structure containing information about the event. Use the `pDevice` member of
this object to retrieve the relevant device. The `type` member can be used to discriminate
against each of the notification types.

Remarks
-------
Do not restart or uninitialize the device from the callback.

Not all notifications will be triggered by all backends, however the started and stopped events
should be reliable for all backends. Some backends do not have a good way to detect device
stoppages due to unplugging the device which may result in the stopped callback not getting
fired. This has been observed with at least one BSD variant.

The rerouted notification is fired *after* the reroute has occurred. The stopped notification will
*not* get fired when a device is rerouted. The following backends are known to do automatic stream
rerouting, but do not have a way to be notified of the change:

\* DirectSound

The interruption notifications are used on mobile platforms for detecting when audio is interrupted
due to things like an incoming phone call. Currently this is only implemented on iOS. None of the
Android backends will report this notification.

### [device\_notification\_type ¶](#device_notification_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L81)

```
device_notification_type :: enum i32 {
	started, 
	stopped, 
	rerouted, 
	interruption_began, 
	interruption_ended, 
	unlocked, 
}
```

 

Device notification types.

### [device\_state ¶](#device_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L21)

```
device_state :: enum i32 {
	uninitialized = 0, 
	stopped       = 1, // The device's default state after initialization.
	started       = 2, // The device is started and is requesting and/or delivering audio data.
	starting      = 3, // Transitioning from a stopped state to started.
	stopping      = 4, // Transitioning from a started state to stopped.
}
```

##### Related Procedures With Returns

* [device\_get\_state](/vendor/miniaudio/#device_get_state)

### [device\_type ¶](#device_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L215)

```
device_type :: enum i32 {
	playback = 1, 
	capture  = 2, 
	duplex   = 3, // playback | capture
	loopback = 4, 
}
```

##### Related Procedures With Parameters

* [context\_get\_device\_info](/vendor/miniaudio/#context_get_device_info)
* [device\_config\_init](/vendor/miniaudio/#device_config_init)
* [device\_get\_info](/vendor/miniaudio/#device_get_info)
* [device\_get\_name](/vendor/miniaudio/#device_get_name)
* [device\_post\_init](/vendor/miniaudio/#device_post_init)

### [dither\_mode ¶](#dither_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L220)

```
dither_mode :: enum i32 {
	none      = 0, 
	rectangle, 
	triangle, 
}
```

##### Related Procedures With Parameters

* [convert\_pcm\_frames\_format](/vendor/miniaudio/#convert_pcm_frames_format)
* [pcm\_convert](/vendor/miniaudio/#pcm_convert)
* [pcm\_f32\_to\_s16](/vendor/miniaudio/#pcm_f32_to_s16)
* [pcm\_f32\_to\_s24](/vendor/miniaudio/#pcm_f32_to_s24)
* [pcm\_f32\_to\_s32](/vendor/miniaudio/#pcm_f32_to_s32)
* [pcm\_f32\_to\_u8](/vendor/miniaudio/#pcm_f32_to_u8)
* [pcm\_s16\_to\_f32](/vendor/miniaudio/#pcm_s16_to_f32)
* [pcm\_s16\_to\_s24](/vendor/miniaudio/#pcm_s16_to_s24)
* [pcm\_s16\_to\_s32](/vendor/miniaudio/#pcm_s16_to_s32)
* [pcm\_s16\_to\_u8](/vendor/miniaudio/#pcm_s16_to_u8)
* [pcm\_s24\_to\_f32](/vendor/miniaudio/#pcm_s24_to_f32)
* [pcm\_s24\_to\_s16](/vendor/miniaudio/#pcm_s24_to_s16)
* [pcm\_s24\_to\_s32](/vendor/miniaudio/#pcm_s24_to_s32)
* [pcm\_s24\_to\_u8](/vendor/miniaudio/#pcm_s24_to_u8)
* [pcm\_s32\_to\_f32](/vendor/miniaudio/#pcm_s32_to_f32)
* [pcm\_s32\_to\_s16](/vendor/miniaudio/#pcm_s32_to_s16)
* [pcm\_s32\_to\_s24](/vendor/miniaudio/#pcm_s32_to_s24)
* [pcm\_s32\_to\_u8](/vendor/miniaudio/#pcm_s32_to_u8)
* [pcm\_u8\_to\_f32](/vendor/miniaudio/#pcm_u8_to_f32)
* [pcm\_u8\_to\_s16](/vendor/miniaudio/#pcm_u8_to_s16)
* [pcm\_u8\_to\_s24](/vendor/miniaudio/#pcm_u8_to_s24)
* [pcm\_u8\_to\_s32](/vendor/miniaudio/#pcm_u8_to_s32)

### [duplex\_rb ¶](#duplex_rb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L597)

```
duplex_rb :: struct {
	rb: pcm_rb,
}
```

 

The idea of the duplex ring buffer is to act as the intermediary buffer when running two asynchronous devices in a duplex set up. The
capture device writes to it, and then a playback device reads from it.

At the moment this is just a simple naive implementation, but in the future I want to implement some dynamic resampling to seamlessly
handle desyncs. Note that the API is work in progress and may change at any time in any version.

The size of the buffer is based on the capture side since that's what'll be written to the buffer. It is based on the capture period size
in frames. The internal sample rate of the capture device is also needed in order to calculate the size.




##### Related Procedures With Parameters

* [duplex\_rb\_init](/vendor/miniaudio/#duplex_rb_init)
* [duplex\_rb\_uninit](/vendor/miniaudio/#duplex_rb_uninit)

### [encoder ¶](#encoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L30)

```
encoder :: struct {
	config:           encoder_config,
	onWrite:          encoder_write_proc,
	onSeek:           encoder_seek_proc,
	onInit:           encoder_init_proc,
	onUninit:         encoder_uninit_proc,
	onWritePCMFrames: encoder_write_pcm_frames_proc,
	pUserData:        rawptr,
	pInternalEncoder: rawptr,
	data:             struct {
		vfs: struct {
			pVFS: ^vfs,
			file: vfs_file,
		},
	},
}
```

##### Related Procedures With Parameters

* [encoder\_init](/vendor/miniaudio/#encoder_init)
* [encoder\_init\_file](/vendor/miniaudio/#encoder_init_file)
* [encoder\_init\_file\_w](/vendor/miniaudio/#encoder_init_file_w)
* [encoder\_init\_vfs](/vendor/miniaudio/#encoder_init_vfs)
* [encoder\_init\_vfs\_w](/vendor/miniaudio/#encoder_init_vfs_w)
* [encoder\_uninit](/vendor/miniaudio/#encoder_uninit)
* [encoder\_write\_pcm\_frames](/vendor/miniaudio/#encoder_write_pcm_frames)

### [encoder\_config ¶](#encoder_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L22)

```
encoder_config :: struct {
	encodingFormat:      encoding_format,
	format:              format,
	channels:            u32,
	sampleRate:          u32,
	allocationCallbacks: allocation_callbacks,
}
```

##### Related Procedures With Parameters

* [encoder\_init](/vendor/miniaudio/#encoder_init)
* [encoder\_init\_file](/vendor/miniaudio/#encoder_init_file)
* [encoder\_init\_file\_w](/vendor/miniaudio/#encoder_init_file_w)
* [encoder\_init\_vfs](/vendor/miniaudio/#encoder_init_vfs)
* [encoder\_init\_vfs\_w](/vendor/miniaudio/#encoder_init_vfs_w)



##### Related Procedures With Returns

* [encoder\_config\_init](/vendor/miniaudio/#encoder_config_init)

### [encoder\_init\_proc ¶](#encoder_init_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L18)

```
encoder_init_proc :: proc "c" (pEncoder: ^encoder) -> result
```

### [encoder\_seek\_proc ¶](#encoder_seek_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L17)

```
encoder_seek_proc :: proc "c" (pEncoder: ^encoder, offset: i64, origin: seek_origin) -> result
```

##### Related Procedures With Parameters

* [encoder\_init](/vendor/miniaudio/#encoder_init)

### [encoder\_uninit\_proc ¶](#encoder_uninit_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L19)

```
encoder_uninit_proc :: proc "c" (pEncoder: ^encoder)
```

### [encoder\_write\_pcm\_frames\_proc ¶](#encoder_write_pcm_frames_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L20)

```
encoder_write_pcm_frames_proc :: proc "c" (pEncoder: ^encoder, pFramesIn: rawptr, frameCount: u64, pFramesWritten: ^u64) -> result
```

### [encoder\_write\_proc ¶](#encoder_write_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L16)

```
encoder_write_proc :: proc "c" (pEncoder: ^encoder, pBufferIn: rawptr, bytesToWrite: uint, pBytesWritten: ^uint) -> result
```

##### Related Procedures With Parameters

* [encoder\_init](/vendor/miniaudio/#encoder_init)

### [encoding\_format ¶](#encoding_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L72)

```
encoding_format :: enum i32 {
	unknown = 0, 
	wav, 
	flac, 
	mp3, 
	vorbis, 
}
```

##### Related Procedures With Parameters

* [encoder\_config\_init](/vendor/miniaudio/#encoder_config_init)

### [engine ¶](#engine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L352)

```
engine :: struct {
	nodeGraph:                          node_graph,
	// An engine is a node graph. It should be able to be plugged into any ma_node_graph API (with a cast) which means this must be the first member of this struct. 
	pResourceManager:                   ^resource_manager,
	pDevice:                            ^device,
	// Optionally set via the config, otherwise allocated by the engine in ma_engine_init(). 
	pLog:                               ^log,
	sampleRate:                         u32,
	listenerCount:                      u32,
	listeners:                          [4]spatializer_listener,
	allocationCallbacks:                allocation_callbacks,
	ownsResourceManager:                b8,
	ownsDevice:                         b8,
	inlinedSoundLock:                   spinlock,
	// For synchronizing access to the inlined sound list. 
	pInlinedSoundHead:                  ^sound_inlined,
	// The first inlined sound. Inlined sounds are tracked in a linked list. 
	inlinedSoundCount:                  u32,
	// atomic
	// The total number of allocated inlined sound objects. Used for debugging. 
	gainSmoothTimeInFrames:             u32,
	// The number of frames to interpolate the gain of spatialized sounds across. 
	defaultVolumeSmoothTimeInPCMFrames: u32,
	monoExpansionMode:                  mono_expansion_mode,
	onProcess:                          engine_process_proc,
	pProcessUserData:                   rawptr,
	pitchResamplingConfig:              resampler_config,
}
```

##### Related Procedures With Parameters

* [engine\_find\_closest\_listener](/vendor/miniaudio/#engine_find_closest_listener)
* [engine\_get\_channels](/vendor/miniaudio/#engine_get_channels)
* [engine\_get\_device](/vendor/miniaudio/#engine_get_device)
* [engine\_get\_endpoint](/vendor/miniaudio/#engine_get_endpoint)
* [engine\_get\_gain\_db](/vendor/miniaudio/#engine_get_gain_db)
* [engine\_get\_listener\_count](/vendor/miniaudio/#engine_get_listener_count)
* [engine\_get\_log](/vendor/miniaudio/#engine_get_log)
* [engine\_get\_node\_graph](/vendor/miniaudio/#engine_get_node_graph)
* [engine\_get\_resource\_manager](/vendor/miniaudio/#engine_get_resource_manager)
* [engine\_get\_sample\_rate](/vendor/miniaudio/#engine_get_sample_rate)
* [engine\_get\_time](/vendor/miniaudio/#engine_get_time)
* [engine\_get\_time\_in\_milliseconds](/vendor/miniaudio/#engine_get_time_in_milliseconds)
* [engine\_get\_time\_in\_pcm\_frames](/vendor/miniaudio/#engine_get_time_in_pcm_frames)
* [engine\_get\_volume](/vendor/miniaudio/#engine_get_volume)
* [engine\_init](/vendor/miniaudio/#engine_init)
* [engine\_listener\_get\_cone](/vendor/miniaudio/#engine_listener_get_cone)
* [engine\_listener\_get\_direction](/vendor/miniaudio/#engine_listener_get_direction)
* [engine\_listener\_get\_position](/vendor/miniaudio/#engine_listener_get_position)
* [engine\_listener\_get\_velocity](/vendor/miniaudio/#engine_listener_get_velocity)
* [engine\_listener\_get\_world\_up](/vendor/miniaudio/#engine_listener_get_world_up)
* [engine\_listener\_is\_enabled](/vendor/miniaudio/#engine_listener_is_enabled)
* [engine\_listener\_set\_cone](/vendor/miniaudio/#engine_listener_set_cone)
* [engine\_listener\_set\_direction](/vendor/miniaudio/#engine_listener_set_direction)
* [engine\_listener\_set\_enabled](/vendor/miniaudio/#engine_listener_set_enabled)
* [engine\_listener\_set\_position](/vendor/miniaudio/#engine_listener_set_position)
* [engine\_listener\_set\_velocity](/vendor/miniaudio/#engine_listener_set_velocity)
* [engine\_listener\_set\_world\_up](/vendor/miniaudio/#engine_listener_set_world_up)
* [engine\_node\_config\_init](/vendor/miniaudio/#engine_node_config_init)
* [engine\_play\_sound](/vendor/miniaudio/#engine_play_sound)
* [engine\_play\_sound\_ex](/vendor/miniaudio/#engine_play_sound_ex)
* [engine\_read\_pcm\_frames](/vendor/miniaudio/#engine_read_pcm_frames)
* [engine\_set\_gain\_db](/vendor/miniaudio/#engine_set_gain_db)
* [engine\_set\_time](/vendor/miniaudio/#engine_set_time)
* [engine\_set\_time\_in\_milliseconds](/vendor/miniaudio/#engine_set_time_in_milliseconds)
* [engine\_set\_time\_in\_pcm\_frames](/vendor/miniaudio/#engine_set_time_in_pcm_frames)
* [engine\_set\_volume](/vendor/miniaudio/#engine_set_volume)
* [engine\_start](/vendor/miniaudio/#engine_start)
* [engine\_stop](/vendor/miniaudio/#engine_stop)
* [engine\_uninit](/vendor/miniaudio/#engine_uninit)
* [sound\_config\_init\_2](/vendor/miniaudio/#sound_config_init_2)
* [sound\_group\_config\_init\_2](/vendor/miniaudio/#sound_group_config_init_2)
* [sound\_group\_init](/vendor/miniaudio/#sound_group_init)
* [sound\_group\_init\_ex](/vendor/miniaudio/#sound_group_init_ex)
* [sound\_init\_copy](/vendor/miniaudio/#sound_init_copy)
* [sound\_init\_ex](/vendor/miniaudio/#sound_init_ex)
* [sound\_init\_from\_data\_source](/vendor/miniaudio/#sound_init_from_data_source)
* [sound\_init\_from\_file](/vendor/miniaudio/#sound_init_from_file)
* [sound\_init\_from\_file\_w](/vendor/miniaudio/#sound_init_from_file_w)



##### Related Procedures With Returns

* [sound\_get\_engine](/vendor/miniaudio/#sound_get_engine)
* [sound\_group\_get\_engine](/vendor/miniaudio/#sound_group_get_engine)

### [engine\_config ¶](#engine_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L320)

```
engine_config :: struct {
	pResourceManager:                   ^resource_manager,
	// Can be null in which case a resource manager will be created for you. 
	pContext:                           ^context_type,
	pDevice:                            ^device,
	// If set, the caller is responsible for calling ma_engine_data_callback() in the device's data callback. 
	pPlaybackDeviceID:                  ^device_id,
	// The ID of the playback device to use with the default listener. 
	dataCallback:                       device_data_proc,
	// Can be null. Can be used to provide a custom device data callback. 
	notificationCallback:               device_notification_proc,
	pLog:                               ^log,
	// When set to NULL, will use the context's log. 
	listenerCount:                      u32,
	// Must be between 1 and MA_ENGINE_MAX_LISTENERS. 
	channels:                           u32,
	// The number of channels to use when mixing and spatializing. When set to 0, will use the native channel count of the device. 
	sampleRate:                         u32,
	// The sample rate. When set to 0 will use the native sample rate of the device. 
	periodSizeInFrames:                 u32,
	// If set to something other than 0, updates will always be exactly this size. The underlying device may be a different size, but from the perspective of the mixer that won't matter.
	periodSizeInMilliseconds:           u32,
	// Used if periodSizeInFrames is unset. 
	gainSmoothTimeInFrames:             u32,
	// The number of frames to interpolate the gain of spatialized sounds across. If set to 0, will use gainSmoothTimeInMilliseconds. 
	gainSmoothTimeInMilliseconds:       u32,
	// When set to 0, gainSmoothTimeInFrames will be used. If both are set to 0, a default value will be used. 
	defaultVolumeSmoothTimeInPCMFrames: u32,
	// Defaults to 0. Controls the default amount of smoothing to apply to volume changes to sounds. High values means more smoothing at the expense of high latency (will take longer to reach the new volume). 
	preMixStackSizeInBytes:             u32,
	// A stack is used for internal processing in the node graph. This allows you to configure the size of this stack. Smaller values will reduce the maximum depth of your node graph. You should rarely need to modify this. 
	allocationCallbacks:                allocation_callbacks,
	noAutoStart:                        b32,
	// When set to true, requires an explicit call to ma_engine_start(). This is false by default, meaning the engine will be started automatically in ma_engine_init(). 
	noDevice:                           b32,
	// When set to true, don't create a default device. ma_engine_read_pcm_frames() can be called manually to read data. 
	monoExpansionMode:                  mono_expansion_mode,
	// Controls how the mono channel should be expanded to other channels when spatialization is disabled on a sound. 
	pResourceManagerVFS:                ^vfs,
	// A pointer to a pre-allocated VFS object to use with the resource manager. This is ignored if pResourceManager is not NULL. 
	onProcess:                          engine_process_proc,
	// Fired at the end of each call to ma_engine_read_pcm_frames(). For engine's that manage their own internal device (the default configuration), this will be fired from the audio thread, and you do not need to call ma_engine_read_pcm_frames() manually in order to trigger this. 
	pProcessUserData:                   rawptr,
	// User data that's passed into onProcess. 
	resourceManagerResampling:          resampler_config,
	// The resampling config to use with the resource manager. 
	pitchResampling:                    resampler_config,
}
```

##### Related Procedures With Parameters

* [engine\_init](/vendor/miniaudio/#engine_init)



##### Related Procedures With Returns

* [engine\_config\_init](/vendor/miniaudio/#engine_config_init)

### [engine\_node ¶](#engine_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L55)

```
engine_node :: struct {
	baseNode:                    node_base,
	// Must be the first member for compatibility with the ma_node API. 
	pEngine:                     ^engine,
	// A pointer to the engine. Set based on the value from the config. 
	sampleRate:                  u32,
	// The sample rate of the input data. For sounds backed by a data source, this will be the data source's sample rate. Otherwise it'll be the engine's sample rate. 
	volumeSmoothTimeInPCMFrames: u32,
	monoExpansionMode:           mono_expansion_mode,
	fader:                       fader,
	resampler:                   resampler,
	// For pitch shift. 
	spatializer:                 spatializer,
	panner:                      panner,
	volumeGainer:                gainer,
	// This will only be used if volumeSmoothTimeInPCMFrames is > 0. 
	volume:                      f32,
	// atomic
	// Defaults to 1. 
	pitch:                       f32,
	// atomic
	oldPitch:                    f32,
	// For determining whether or not the resampler needs to be updated to reflect the new pitch. The resampler will be updated on the mixing thread. 
	oldDopplerPitch:             f32,
	// For determining whether or not the resampler needs to be updated to take a new doppler pitch into account. 
	isPitchDisabled:             b32,
	// atomic
	// When set to true, pitching will be disabled which will allow the resampler to be bypassed to save some computation. 
	isSpatializationDisabled:    b32,
	// atomic
	// Set to false by default. When set to false, will not have spatialisation applied. 
	pinnedListenerIndex:         u32,
	// atomic
	// The index of the listener this node should always use for spatialization. If set to MA_LISTENER_INDEX_CLOSEST the engine will use the closest listener. 
	fadeSettings:                struct {
		volumeBeg:                  f32,
		// atomic
		volumeEnd:                  f32,
		// atomic
		fadeLengthInFrames:         u64,
		// atomic
		// <-- Defaults to (~(ma_uint64)0) which is used to indicate that no fade should be applied. 
		absoluteGlobalTimeInFrames: u64,
	},
	// Memory management. 
	_ownsHeap:                   b8,
	_pHeap:                      rawptr,
}
```

 

Base node object for both ma\_sound and ma\_sound\_group.




##### Related Procedures With Parameters

* [engine\_node\_init](/vendor/miniaudio/#engine_node_init)
* [engine\_node\_init\_preallocated](/vendor/miniaudio/#engine_node_init_preallocated)
* [engine\_node\_uninit](/vendor/miniaudio/#engine_node_uninit)

### [engine\_node\_config ¶](#engine_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L40)

```
engine_node_config :: struct {
	pEngine:                     ^engine,
	type:                        engine_node_type,
	channelsIn:                  u32,
	channelsOut:                 u32,
	sampleRate:                  u32,
	// Only used when the type is set to ma_engine_node_type_sound. 
	volumeSmoothTimeInPCMFrames: u32,
	monoExpansionMode:           mono_expansion_mode,
	isPitchDisabled:             b8,
	// Pitching can be explicitly disable with MA_SOUND_FLAG_NO_PITCH to optimize processing. 
	isSpatializationDisabled:    b8,
	// Spatialization can be explicitly disabled with MA_SOUND_FLAG_NO_SPATIALIZATION. 
	pinnedListenerIndex:         u8,
	// The index of the listener this node should always use for spatialization. If set to MA_LISTENER_INDEX_CLOSEST the engine will use the closest listener. 
	resampling:                  resampler_config,
}
```

##### Related Procedures With Parameters

* [engine\_node\_get\_heap\_size](/vendor/miniaudio/#engine_node_get_heap_size)
* [engine\_node\_init](/vendor/miniaudio/#engine_node_init)
* [engine\_node\_init\_preallocated](/vendor/miniaudio/#engine_node_init_preallocated)



##### Related Procedures With Returns

* [engine\_node\_config\_init](/vendor/miniaudio/#engine_node_config_init)

### [engine\_node\_type ¶](#engine_node_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L35)

```
engine_node_type :: enum i32 {
	sound, 
	group, 
}
```

##### Related Procedures With Parameters

* [engine\_node\_config\_init](/vendor/miniaudio/#engine_node_config_init)

### [engine\_process\_proc ¶](#engine_process_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L318)

```
engine_process_proc :: proc "c" (pUserData: rawptr, pFramesOut: [^]f32, frameCount: u64)
```

### [enum\_devices\_callback\_proc ¶](#enum_devices_callback_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L472)

```
enum_devices_callback_proc :: proc "c" (pContext: ^context_type, deviceType: device_type, pInfo: ^device_info, pUserData: rawptr) -> b32
```

 

The callback for handling device enumeration. This is fired from `ma_context_enumerate_devices()`.

Parameters
----------
pContext (in)

```
A pointer to the context performing the enumeration.
```

deviceType (in)

```
The type of the device being enumerated. This will always be either `ma_device_type_playback` or `ma_device_type_capture`.
```

pInfo (in)

```
A pointer to a `ma_device_info` containing the ID and name of the enumerated device. Note that this will not include detailed information about the device,
only basic information (ID and name). The reason for this is that it would otherwise require opening the backend device to probe for the information which
is too inefficient.
```

pUserData (in)

```
The user data pointer passed into `ma_context_enumerate_devices()`.
```




##### Related Procedures With Parameters

* [context\_enumerate\_devices](/vendor/miniaudio/#context_enumerate_devices)

### [event ¶](#event) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common_windows.odin#L5)

```
event :: distinct rawptr
```

##### Related Procedures With Parameters

* [event\_init](/vendor/miniaudio/#event_init)
* [event\_signal](/vendor/miniaudio/#event_signal)
* [event\_uninit](/vendor/miniaudio/#event_uninit)
* [event\_wait](/vendor/miniaudio/#event_wait)

### [fader ¶](#fader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L117)

```
fader :: struct {
	config:         fader_config,
	volumeBeg:      f32,
	// If volumeBeg and volumeEnd is equal to 1, no fading happens (ma_fader_process_pcm_frames() will run as a passthrough). 
	volumeEnd:      f32,
	lengthInFrames: u64,
	// The total length of the fade. 
	cursorInFrames: i64,
}
```

##### Related Procedures With Parameters

* [fader\_get\_current\_volume](/vendor/miniaudio/#fader_get_current_volume)
* [fader\_get\_data\_format](/vendor/miniaudio/#fader_get_data_format)
* [fader\_init](/vendor/miniaudio/#fader_init)
* [fader\_process\_pcm\_frames](/vendor/miniaudio/#fader_process_pcm_frames)
* [fader\_set\_fade](/vendor/miniaudio/#fader_set_fade)
* [fader\_set\_fade\_ex](/vendor/miniaudio/#fader_set_fade_ex)

### [fader\_config ¶](#fader_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L111)

```
fader_config :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
}
```

 

Fader.




##### Related Procedures With Parameters

* [fader\_init](/vendor/miniaudio/#fader_init)



##### Related Procedures With Returns

* [fader\_config\_init](/vendor/miniaudio/#fader_config_init)

### [fence ¶](#fence) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L88)

```
fence :: struct {
	e:       event,
	counter: struct {},
}
```

 

Fence
=====
This locks while the counter is larger than 0. Counter can be incremented and decremented by any
thread, but care needs to be taken when waiting. It is possible for one thread to acquire the
fence just as another thread returns from ma\_fence\_wait().

The idea behind a fence is to allow you to wait for a group of operations to complete. When an
operation starts, the counter is incremented which locks the fence. When the operation completes,
the fence will be released which decrements the counter. ma\_fence\_wait() will block until the
counter hits zero.

If threading is disabled, ma\_fence\_wait() will spin on the counter.




##### Related Procedures With Parameters

* [fence\_acquire](/vendor/miniaudio/#fence_acquire)
* [fence\_init](/vendor/miniaudio/#fence_init)
* [fence\_release](/vendor/miniaudio/#fence_release)
* [fence\_uninit](/vendor/miniaudio/#fence_uninit)
* [fence\_wait](/vendor/miniaudio/#fence_wait)
* [sound\_init\_from\_file](/vendor/miniaudio/#sound_init_from_file)
* [sound\_init\_from\_file\_w](/vendor/miniaudio/#sound_init_from_file_w)

### [file\_info ¶](#file_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L32)

```
file_info :: struct {
	sizeInBytes: u64,
}
```

##### Related Procedures With Parameters

* [vfs\_info](/vendor/miniaudio/#vfs_info)

### [format ¶](#format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L226)

```
format :: enum i32 {
	// 	I like to keep these explicitly defined because they're used as a key into a lookup table. When items are
	// 	added to this, make sure there are no gaps and that they're added to the lookup table in ma_get_bytes_per_sample().
	unknown = 0, // Mainly used for indicating an error, but also used as the default for the output format for decoders.
	u8      = 1, 
	s16     = 2, // Seems to be the most widely supported format.
	s24     = 3, // Tightly packed. 3 bytes per sample.
	s32     = 4, 
	f32     = 5, 
}
```

##### Related Procedures With Parameters

* [apply\_volume\_factor\_pcm\_frames](/vendor/miniaudio/#apply_volume_factor_pcm_frames)
* [audio\_buffer\_config\_init](/vendor/miniaudio/#audio_buffer_config_init)
* [audio\_buffer\_ref\_init](/vendor/miniaudio/#audio_buffer_ref_init)
* [biquad\_config\_init](/vendor/miniaudio/#biquad_config_init)
* [bpf2\_config\_init](/vendor/miniaudio/#bpf2_config_init)
* [bpf\_config\_init](/vendor/miniaudio/#bpf_config_init)
* [channel\_converter\_config\_init](/vendor/miniaudio/#channel_converter_config_init)
* [clip\_pcm\_frames](/vendor/miniaudio/#clip_pcm_frames)
* [convert\_frames](/vendor/miniaudio/#convert_frames)
* [convert\_pcm\_frames\_format](/vendor/miniaudio/#convert_pcm_frames_format)
* [copy\_and\_apply\_volume\_factor\_pcm\_frames](/vendor/miniaudio/#copy_and_apply_volume_factor_pcm_frames)
* [copy\_pcm\_frames](/vendor/miniaudio/#copy_pcm_frames)
* [data\_converter\_config\_init](/vendor/miniaudio/#data_converter_config_init)
* [data\_source\_get\_data\_format](/vendor/miniaudio/#data_source_get_data_format)
* [decoder\_config\_init](/vendor/miniaudio/#decoder_config_init)
* [decoder\_get\_data\_format](/vendor/miniaudio/#decoder_get_data_format)
* [decoding\_backend\_config\_init](/vendor/miniaudio/#decoding_backend_config_init)
* [deinterleave\_pcm\_frames](/vendor/miniaudio/#deinterleave_pcm_frames)
* [duplex\_rb\_init](/vendor/miniaudio/#duplex_rb_init)
* [encoder\_config\_init](/vendor/miniaudio/#encoder_config_init)
* [fader\_config\_init](/vendor/miniaudio/#fader_config_init)
* [fader\_get\_data\_format](/vendor/miniaudio/#fader_get_data_format)
* [get\_bytes\_per\_frame](/vendor/miniaudio/#get_bytes_per_frame)
* [get\_bytes\_per\_sample](/vendor/miniaudio/#get_bytes_per_sample)
* [get\_format\_name](/vendor/miniaudio/#get_format_name)
* [hishelf2\_config\_init](/vendor/miniaudio/#hishelf2_config_init)
* [hpf1\_config\_init](/vendor/miniaudio/#hpf1_config_init)
* [hpf2\_config\_init](/vendor/miniaudio/#hpf2_config_init)
* [hpf\_config\_init](/vendor/miniaudio/#hpf_config_init)
* [interleave\_pcm\_frames](/vendor/miniaudio/#interleave_pcm_frames)
* [linear\_resampler\_config\_init](/vendor/miniaudio/#linear_resampler_config_init)
* [loshelf2\_config\_init](/vendor/miniaudio/#loshelf2_config_init)
* [lpf1\_config\_init](/vendor/miniaudio/#lpf1_config_init)
* [lpf2\_config\_init](/vendor/miniaudio/#lpf2_config_init)
* [lpf\_config\_init](/vendor/miniaudio/#lpf_config_init)
* [ma\_copy\_and\_apply\_volume\_and\_clip\_pcm\_frames](/vendor/miniaudio/#ma_copy_and_apply_volume_and_clip_pcm_frames)
* [noise\_config\_init](/vendor/miniaudio/#noise_config_init)
* [notch2\_config\_init](/vendor/miniaudio/#notch2_config_init)
* [offset\_pcm\_frames\_const\_ptr](/vendor/miniaudio/#offset_pcm_frames_const_ptr)
* [offset\_pcm\_frames\_ptr](/vendor/miniaudio/#offset_pcm_frames_ptr)
* [paged\_audio\_buffer\_data\_init](/vendor/miniaudio/#paged_audio_buffer_data_init)
* [panner\_config\_init](/vendor/miniaudio/#panner_config_init)
* [pcm\_convert](/vendor/miniaudio/#pcm_convert)
* [pcm\_rb\_init](/vendor/miniaudio/#pcm_rb_init)
* [pcm\_rb\_init\_ex](/vendor/miniaudio/#pcm_rb_init_ex)
* [peak2\_config\_init](/vendor/miniaudio/#peak2_config_init)
* [pulsewave\_config\_init](/vendor/miniaudio/#pulsewave_config_init)
* [resampler\_config\_init](/vendor/miniaudio/#resampler_config_init)
* [resource\_manager\_data\_buffer\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_buffer_get_data_format)
* [resource\_manager\_data\_source\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_source_get_data_format)
* [resource\_manager\_data\_stream\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_stream_get_data_format)
* [resource\_manager\_register\_decoded\_data](/vendor/miniaudio/#resource_manager_register_decoded_data)
* [resource\_manager\_register\_decoded\_data\_w](/vendor/miniaudio/#resource_manager_register_decoded_data_w)
* [silence\_pcm\_frames](/vendor/miniaudio/#silence_pcm_frames)
* [sound\_get\_data\_format](/vendor/miniaudio/#sound_get_data_format)
* [waveform\_config\_init](/vendor/miniaudio/#waveform_config_init)



##### Related Procedures With Returns

* [pcm\_rb\_get\_format](/vendor/miniaudio/#pcm_rb_get_format)

### [gainer ¶](#gainer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L49)

```
gainer :: struct {
	config:       gainer_config,
	t:            u32,
	masterVolume: f32,
	pOldGains:    [^]f32,
	pNewGains:    [^]f32,
	// Memory management. 
	_pHeap:       rawptr,
	_ownsHeap:    b32,
}
```

##### Related Procedures With Parameters

* [gainer\_get\_master\_volume](/vendor/miniaudio/#gainer_get_master_volume)
* [gainer\_init](/vendor/miniaudio/#gainer_init)
* [gainer\_init\_preallocated](/vendor/miniaudio/#gainer_init_preallocated)
* [gainer\_process\_pcm\_frames](/vendor/miniaudio/#gainer_process_pcm_frames)
* [gainer\_set\_gain](/vendor/miniaudio/#gainer_set_gain)
* [gainer\_set\_gains](/vendor/miniaudio/#gainer_set_gains)
* [gainer\_set\_master\_volume](/vendor/miniaudio/#gainer_set_master_volume)
* [gainer\_uninit](/vendor/miniaudio/#gainer_uninit)

### [gainer\_config ¶](#gainer_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L44)

```
gainer_config :: struct {
	channels:           u32,
	smoothTimeInFrames: u32,
}
```

 

Gainer for smooth volume changes.




##### Related Procedures With Parameters

* [gainer\_get\_heap\_size](/vendor/miniaudio/#gainer_get_heap_size)
* [gainer\_init](/vendor/miniaudio/#gainer_init)
* [gainer\_init\_preallocated](/vendor/miniaudio/#gainer_init_preallocated)



##### Related Procedures With Returns

* [gainer\_config\_init](/vendor/miniaudio/#gainer_config_init)

### [handedness ¶](#handedness) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L162)

```
handedness :: enum i32 {
	right, 
	left, 
}
```

### [handle ¶](#handle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L51)

```
handle :: distinct rawptr
```

### [hishelf2 ¶](#hishelf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L405)

```
hishelf2 :: struct {
	bq: biquad,
}
```

##### Related Procedures With Parameters

* [hishelf2\_get\_latency](/vendor/miniaudio/#hishelf2_get_latency)
* [hishelf2\_init](/vendor/miniaudio/#hishelf2_init)
* [hishelf2\_init\_preallocated](/vendor/miniaudio/#hishelf2_init_preallocated)
* [hishelf2\_process\_pcm\_frames](/vendor/miniaudio/#hishelf2_process_pcm_frames)
* [hishelf2\_reinit](/vendor/miniaudio/#hishelf2_reinit)
* [hishelf2\_uninit](/vendor/miniaudio/#hishelf2_uninit)

### [hishelf2\_config ¶](#hishelf2_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L403)

```
hishelf2_config :: hishelf_config
```

##### Related Procedures With Parameters

* [hishelf2\_get\_heap\_size](/vendor/miniaudio/#hishelf2_get_heap_size)
* [hishelf2\_init](/vendor/miniaudio/#hishelf2_init)
* [hishelf2\_init\_preallocated](/vendor/miniaudio/#hishelf2_init_preallocated)
* [hishelf2\_reinit](/vendor/miniaudio/#hishelf2_reinit)
* [hishelf\_node\_reinit](/vendor/miniaudio/#hishelf_node_reinit)



##### Related Procedures With Returns

* [hishelf2\_config\_init](/vendor/miniaudio/#hishelf2_config_init)

### [hishelf\_config ¶](#hishelf_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L395)

```
hishelf_config :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	gainDB:     f64,
	shelfSlope: f64,
	frequency:  f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

High Shelf Filter

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [hishelf2\_get\_heap\_size](/vendor/miniaudio/#hishelf2_get_heap_size)
* [hishelf2\_init](/vendor/miniaudio/#hishelf2_init)
* [hishelf2\_init\_preallocated](/vendor/miniaudio/#hishelf2_init_preallocated)
* [hishelf2\_reinit](/vendor/miniaudio/#hishelf2_reinit)
* [hishelf\_node\_reinit](/vendor/miniaudio/#hishelf_node_reinit)



##### Related Procedures With Returns

* [hishelf2\_config\_init](/vendor/miniaudio/#hishelf2_config_init)

### [hishelf\_node ¶](#hishelf_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L447)

```
hishelf_node :: struct {
	baseNode: node_base,
	hishelf:  hishelf2,
}
```

##### Related Procedures With Parameters

* [hishelf\_node\_init](/vendor/miniaudio/#hishelf_node_init)
* [hishelf\_node\_reinit](/vendor/miniaudio/#hishelf_node_reinit)
* [hishelf\_node\_uninit](/vendor/miniaudio/#hishelf_node_uninit)

### [hishelf\_node\_config ¶](#hishelf_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L442)

```
hishelf_node_config :: struct {
	nodeConfig: node_config,
	hishelf:    hishelf_config,
}
```

 

High Shelf Filter Node




##### Related Procedures With Parameters

* [hishelf\_node\_init](/vendor/miniaudio/#hishelf_node_init)



##### Related Procedures With Returns

* [hishelf\_node\_config\_init](/vendor/miniaudio/#hishelf_node_config_init)

### [hpf ¶](#hpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L184)

```
hpf :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	hpf1Count:  u32,
	hpf2Count:  u32,
	pHPF1:      ^hpf1,
	pHPF2:      ^hpf2,
	// Memory management. 
	_pHeap:     rawptr,
	_ownsHeap:  b32,
}
```

##### Related Procedures With Parameters

* [hpf\_get\_latency](/vendor/miniaudio/#hpf_get_latency)
* [hpf\_init](/vendor/miniaudio/#hpf_init)
* [hpf\_init\_preallocated](/vendor/miniaudio/#hpf_init_preallocated)
* [hpf\_process\_pcm\_frames](/vendor/miniaudio/#hpf_process_pcm_frames)
* [hpf\_reinit](/vendor/miniaudio/#hpf_reinit)
* [hpf\_uninit](/vendor/miniaudio/#hpf_uninit)

### [hpf1 ¶](#hpf1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L161)

```
hpf1 :: struct {
	format:    format,
	channels:  u32,
	a:         biquad_coefficient,
	pR1:       ^biquad_coefficient,
	// Memory management. 
	_pHeap:    rawptr,
	_ownsHeap: b32,
}
```

##### Related Procedures With Parameters

* [hpf1\_get\_latency](/vendor/miniaudio/#hpf1_get_latency)
* [hpf1\_init](/vendor/miniaudio/#hpf1_init)
* [hpf1\_init\_preallocated](/vendor/miniaudio/#hpf1_init_preallocated)
* [hpf1\_process\_pcm\_frames](/vendor/miniaudio/#hpf1_process_pcm_frames)
* [hpf1\_reinit](/vendor/miniaudio/#hpf1_reinit)
* [hpf1\_uninit](/vendor/miniaudio/#hpf1_uninit)

### [hpf1\_config ¶](#hpf1_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L152)

```
hpf1_config :: struct {
	format:          format,
	channels:        u32,
	sampleRate:      u32,
	cutoffFrequency: f64,
	q:               f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

High-Pass Filtering

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [hpf1\_get\_heap\_size](/vendor/miniaudio/#hpf1_get_heap_size)
* [hpf1\_init](/vendor/miniaudio/#hpf1_init)
* [hpf1\_init\_preallocated](/vendor/miniaudio/#hpf1_init_preallocated)
* [hpf1\_reinit](/vendor/miniaudio/#hpf1_reinit)
* [hpf2\_get\_heap\_size](/vendor/miniaudio/#hpf2_get_heap_size)
* [hpf2\_init](/vendor/miniaudio/#hpf2_init)
* [hpf2\_init\_preallocated](/vendor/miniaudio/#hpf2_init_preallocated)
* [hpf2\_reinit](/vendor/miniaudio/#hpf2_reinit)



##### Related Procedures With Returns

* [hpf1\_config\_init](/vendor/miniaudio/#hpf1_config_init)
* [hpf2\_config\_init](/vendor/miniaudio/#hpf2_config_init)

### [hpf2 ¶](#hpf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L172)

```
hpf2 :: struct {
	bq: biquad,
}
```

##### Related Procedures With Parameters

* [hpf2\_get\_latency](/vendor/miniaudio/#hpf2_get_latency)
* [hpf2\_init](/vendor/miniaudio/#hpf2_init)
* [hpf2\_init\_preallocated](/vendor/miniaudio/#hpf2_init_preallocated)
* [hpf2\_process\_pcm\_frames](/vendor/miniaudio/#hpf2_process_pcm_frames)
* [hpf2\_reinit](/vendor/miniaudio/#hpf2_reinit)
* [hpf2\_uninit](/vendor/miniaudio/#hpf2_uninit)

### [hpf2\_config ¶](#hpf2_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L159)

```
hpf2_config :: hpf1_config
```

##### Related Procedures With Parameters

* [hpf1\_get\_heap\_size](/vendor/miniaudio/#hpf1_get_heap_size)
* [hpf1\_init](/vendor/miniaudio/#hpf1_init)
* [hpf1\_init\_preallocated](/vendor/miniaudio/#hpf1_init_preallocated)
* [hpf1\_reinit](/vendor/miniaudio/#hpf1_reinit)
* [hpf2\_get\_heap\_size](/vendor/miniaudio/#hpf2_get_heap_size)
* [hpf2\_init](/vendor/miniaudio/#hpf2_init)
* [hpf2\_init\_preallocated](/vendor/miniaudio/#hpf2_init_preallocated)
* [hpf2\_reinit](/vendor/miniaudio/#hpf2_reinit)



##### Related Procedures With Returns

* [hpf1\_config\_init](/vendor/miniaudio/#hpf1_config_init)
* [hpf2\_config\_init](/vendor/miniaudio/#hpf2_config_init)

### [hpf\_config ¶](#hpf_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L176)

```
hpf_config :: struct {
	format:          format,
	channels:        u32,
	sampleRate:      u32,
	cutoffFrequency: f64,
	order:           u32,
}
```

##### Related Procedures With Parameters

* [hpf\_get\_heap\_size](/vendor/miniaudio/#hpf_get_heap_size)
* [hpf\_init](/vendor/miniaudio/#hpf_init)
* [hpf\_init\_preallocated](/vendor/miniaudio/#hpf_init_preallocated)
* [hpf\_node\_reinit](/vendor/miniaudio/#hpf_node_reinit)
* [hpf\_reinit](/vendor/miniaudio/#hpf_reinit)



##### Related Procedures With Returns

* [hpf\_config\_init](/vendor/miniaudio/#hpf_config_init)

### [hpf\_node ¶](#hpf_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L332)

```
hpf_node :: struct {
	baseNode: node_base,
	hpf:      hpf,
}
```

##### Related Procedures With Parameters

* [hpf\_node\_init](/vendor/miniaudio/#hpf_node_init)
* [hpf\_node\_reinit](/vendor/miniaudio/#hpf_node_reinit)
* [hpf\_node\_uninit](/vendor/miniaudio/#hpf_node_uninit)

### [hpf\_node\_config ¶](#hpf_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L327)

```
hpf_node_config :: struct {
	nodeConfig: node_config,
	hpf:        hpf_config,
}
```

 

High Pass Filter Node




##### Related Procedures With Parameters

* [hpf\_node\_init](/vendor/miniaudio/#hpf_node_init)



##### Related Procedures With Returns

* [hpf\_node\_config\_init](/vendor/miniaudio/#hpf_node_config_init)

### [ios\_session\_category ¶](#ios_session_category) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L228)

```
ios_session_category :: enum i32 {
	default         = 0, // AVAudioSessionCategoryPlayAndRecord.
	none,                // Leave the session category unchanged.
	ambient,             // AVAudioSessionCategoryAmbient
	solo_ambient,        // AVAudioSessionCategorySoloAmbient
	playback,            // AVAudioSessionCategoryPlayback
	record,              // AVAudioSessionCategoryRecord
	play_and_record,     // AVAudioSessionCategoryPlayAndRecord
	multi_route,         // AVAudioSessionCategoryMultiRoute
}
```

 

iOS/tvOS/watchOS session categories.

### [ios\_session\_category\_option ¶](#ios_session_category_option) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L240)

```
ios_session_category_option :: enum i32 {
	mix_with_others                            = 1,  // AVAudioSessionCategoryOptionMixWithOthers
	duck_others                                = 2,  // AVAudioSessionCategoryOptionDuckOthers
	allow_bluetooth                            = 4,  // AVAudioSessionCategoryOptionAllowBluetooth
	default_to_speaker                         = 8,  // AVAudioSessionCategoryOptionDefaultToSpeaker
	interrupt_spoken_audio_and_mix_with_others = 17, // AVAudioSessionCategoryOptionInterruptSpokenAudioAndMixWithOthers
	allow_bluetooth_a2dp                       = 32, // AVAudioSessionCategoryOptionAllowBluetoothA2DP
	allow_air_play                             = 64, // AVAudioSessionCategoryOptionAllowAirPlay
}
```

 

iOS/tvOS/watchOS session category options

### [job ¶](#job) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L84)

```
job :: struct {
	toc:   struct #raw_union {
		// 8 bytes. We encode the job code into the slot allocation data to save space. 
		breakup:    struct {
			code:     u16,
			// Job type. 
			slot:     u16,
			// Index into a ma_slot_allocator. 
			refcount: u32,
		},
		allocation: u64,
	},
	next:  u64,
	// atomic
	// refcount + slot for the next item. Does not include the job code. 
	order: u32,
	// Execution order. Used to create a data dependency and ensure a job is executed in order. Usage is contextual depending on the job type. 
	data:  struct #raw_union {
		// Miscellaneous. 
		custom:          struct {
			proc_: job_proc,
			data0: uintptr,
			data1: uintptr,
		},
		// Resource Manager 
		resourceManager: struct #raw_union {
			loadDataBufferNode: struct {
				pResourceManager:  rawptr,
				pDataBufferNode:   rawptr,
				pFilePath:         cstring,
				pFilePathW:        [^]u16,
				flags:             bit_set[resource_manager_data_source_flag; u32],
				// Resource manager data source flags that were used when initializing the data buffer. 
				pInitNotification: ^async_notification,
				// Signalled when the data buffer has been initialized and the format/channels/rate can be retrieved. 
				pDoneNotification: ^async_notification,
				// Signalled when the data buffer has been fully decoded. Will be passed through to MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE when decoding. 
				pInitFence:        ^fence,
				// Released when initialization of the decoder is complete. 
				pDoneFence:        ^fence,
			},
			freeDataBufferNode: struct {
				pResourceManager:  rawptr,
				pDataBufferNode:   rawptr,
				pDoneNotification: ^async_notification,
				pDoneFence:        ^fence,
			},
			pageDataBufferNode: struct {
				pResourceManager:  rawptr,
				pDataBufferNode:   rawptr,
				pDecoder:          rawptr,
				pDoneNotification: ^async_notification,
				// Signalled when the data buffer has been fully decoded. 
				pDoneFence:        ^fence,
			},
			loadDataBuffer:     struct {
				pDataBuffer:             rawptr,
				pInitNotification:       ^async_notification,
				// Signalled when the data buffer has been initialized and the format/channels/rate can be retrieved. 
				pDoneNotification:       ^async_notification,
				// Signalled when the data buffer has been fully decoded. 
				pInitFence:              ^fence,
				// Released when the data buffer has been initialized and the format/channels/rate can be retrieved. 
				pDoneFence:              ^fence,
				// Released when the data buffer has been fully decoded. 
				rangeBegInPCMFrames:     u64,
				rangeEndInPCMFrames:     u64,
				loopPointBegInPCMFrames: u64,
				loopPointEndInPCMFrames: u64,
				isLooping:               u32,
			},
			freeDataBuffer:     struct {
				pDataBuffer:       rawptr,
				pDoneNotification: ^async_notification,
				pDoneFence:        ^fence,
			},
			loadDataStream:     struct {
				pDataStream:       rawptr,
				pFilePath:         cstring,
				// Allocated when the job is posted, freed by the job thread after loading. 
				pFilePathW:        [^]u16,
				// ^ As above ^. Only used if pFilePath is NULL. 
				initialSeekPoint:  u64,
				pInitNotification: ^async_notification,
				// Signalled after the first two pages have been decoded and frames can be read from the stream. 
				pInitFence:        ^fence,
			},
			freeDataStream:     struct {
				pDataStream:       rawptr,
				pDoneNotification: ^async_notification,
				pDoneFence:        ^fence,
			},
			pageDataStream:     struct {
				pDataStream: rawptr,
				pageIndex:   u32,
			},
			seekDataStream:     struct {
				pDataStream: rawptr,
				frameIndex:  u64,
			},
		},
		// Device. 
		device:          struct {
			aaudio: struct {
				reroute: struct {
					pDevice:    rawptr,
					deviceType: u32,
				},
			},
		},
	},
}
```

##### Related Procedures With Parameters

* [device\_job\_thread\_next](/vendor/miniaudio/#device_job_thread_next)
* [device\_job\_thread\_post](/vendor/miniaudio/#device_job_thread_post)
* [job\_process](/vendor/miniaudio/#job_process)
* [job\_queue\_next](/vendor/miniaudio/#job_queue_next)
* [job\_queue\_post](/vendor/miniaudio/#job_queue_post)
* [resource\_manager\_next\_job](/vendor/miniaudio/#resource_manager_next_job)
* [resource\_manager\_post\_job](/vendor/miniaudio/#resource_manager_post_job)
* [resource\_manager\_process\_job](/vendor/miniaudio/#resource_manager_process_job)



##### Related Procedures With Returns

* [job\_init](/vendor/miniaudio/#job_init)

### [job\_proc ¶](#job_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L58)

```
job_proc :: proc "c" (pJob: ^job)
```

 

Callback for processing a job. Each job type will have their own processing callback which will be
called by ma\_job\_process().

### [job\_queue ¶](#job_queue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L210)

```
job_queue :: struct {
	flags:     bit_set[job_queue_flag; u32],
	// Flags passed in at initialization time. 
	capacity:  u32,
	// The maximum number of jobs that can fit in the queue at a time. Set by the config. 
	head:      u64,
	// atomic
	// The first item in the list. Required for removing from the top of the list. 
	tail:      u64,
	// atomic
	// The last item in the list. Required for appending to the end of the list. 
	sem:       semaphore,
	// Only used when MA_JOB_QUEUE_FLAG_NON_BLOCKING is unset. 
	allocator: slot_allocator,
	pJobs:     [^]job,
	lock:      spinlock,
	// Memory management. 
	_pHeap:    rawptr,
	_ownsHeap: b32,
}
```

##### Related Procedures With Parameters

* [job\_queue\_init](/vendor/miniaudio/#job_queue_init)
* [job\_queue\_init\_preallocated](/vendor/miniaudio/#job_queue_init_preallocated)
* [job\_queue\_next](/vendor/miniaudio/#job_queue_next)
* [job\_queue\_post](/vendor/miniaudio/#job_queue_post)
* [job\_queue\_uninit](/vendor/miniaudio/#job_queue_uninit)

### [job\_queue\_config ¶](#job_queue_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L203)

```
job_queue_config :: struct {
	flags:    bit_set[job_queue_flag; u32],
	capacity: u32,
}
```

##### Related Procedures With Parameters

* [job\_queue\_get\_heap\_size](/vendor/miniaudio/#job_queue_get_heap_size)
* [job\_queue\_init](/vendor/miniaudio/#job_queue_init)
* [job\_queue\_init\_preallocated](/vendor/miniaudio/#job_queue_init_preallocated)



##### Related Procedures With Returns

* [job\_queue\_config\_init](/vendor/miniaudio/#job_queue_config_init)

### [job\_queue\_flag ¶](#job_queue_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L197)

```
job_queue_flag :: enum i32 {
	NON_BLOCKING = 0, 
}
```

 

When set, ma\_job\_queue\_next() will not wait and no semaphore will be signaled in
ma\_job\_queue\_post(). ma\_job\_queue\_next() will return MA\_NO\_DATA\_AVAILABLE if nothing is available.

This flag should always be used for platforms that do not support multithreading.

##### Related Constants

* [JOB\_TYPE\_RESOURCE\_MANAGER\_QUEUE\_FLAG\_NON\_BLOCKING](/vendor/miniaudio/#JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING)

### [job\_queue\_flags ¶](#job_queue_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L201)

```
job_queue_flags :: bit_set[job_queue_flag; u32]
```

##### Related Procedures With Parameters

* [job\_queue\_config\_init](/vendor/miniaudio/#job_queue_config_init)

### [job\_type ¶](#job_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L61)

```
job_type :: enum i32 {
	// Miscellaneous. 
	QUIT                                   = 0, 
	CUSTOM, 
	// Resource Manager. 
	RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE, 
	RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE, 
	RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE, 
	RESOURCE_MANAGER_LOAD_DATA_BUFFER, 
	RESOURCE_MANAGER_FREE_DATA_BUFFER, 
	RESOURCE_MANAGER_LOAD_DATA_STREAM, 
	RESOURCE_MANAGER_FREE_DATA_STREAM, 
	RESOURCE_MANAGER_PAGE_DATA_STREAM, 
	RESOURCE_MANAGER_SEEK_DATA_STREAM, 
	// Device. 
	DEVICE_AAUDIO_REROUTE, 
	// Count. Must always be last. 
	COUNT, 
}
```

 

When a job type is added here an callback needs to be added go "g\_jobVTable" in the implementation section.

### [lcg ¶](#lcg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L298)

```
lcg :: struct {
	state: u32,
}
```

### [linear\_resampler ¶](#linear_resampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L32)

```
linear_resampler :: struct {
	config:        linear_resampler_config,
	inAdvanceInt:  u32,
	inAdvanceFrac: u32,
	inTimeInt:     u32,
	inTimeFrac:    u32,
	x0:            struct #raw_union {
		f32: [^]f32,
		s16: [^]i16,
	},
	// The previous input frame. 
	x1:            struct #raw_union {
		f32: [^]f32,
		s16: [^]i16,
	},
	// The next input frame. 
	lpf:           lpf,
	// Memory management. 
	_pHeap:        rawptr,
	_ownsHeap:     b32,
}
```

##### Related Procedures With Parameters

* [linear\_resampler\_get\_expected\_output\_frame\_count](/vendor/miniaudio/#linear_resampler_get_expected_output_frame_count)
* [linear\_resampler\_get\_input\_latency](/vendor/miniaudio/#linear_resampler_get_input_latency)
* [linear\_resampler\_get\_output\_latency](/vendor/miniaudio/#linear_resampler_get_output_latency)
* [linear\_resampler\_get\_required\_input\_frame\_count](/vendor/miniaudio/#linear_resampler_get_required_input_frame_count)
* [linear\_resampler\_init](/vendor/miniaudio/#linear_resampler_init)
* [linear\_resampler\_init\_preallocated](/vendor/miniaudio/#linear_resampler_init_preallocated)
* [linear\_resampler\_process\_pcm\_frames](/vendor/miniaudio/#linear_resampler_process_pcm_frames)
* [linear\_resampler\_reset](/vendor/miniaudio/#linear_resampler_reset)
* [linear\_resampler\_set\_rate](/vendor/miniaudio/#linear_resampler_set_rate)
* [linear\_resampler\_set\_rate\_ratio](/vendor/miniaudio/#linear_resampler_set_rate_ratio)
* [linear\_resampler\_uninit](/vendor/miniaudio/#linear_resampler_uninit)

### [linear\_resampler\_config ¶](#linear_resampler_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L23)

```
linear_resampler_config :: struct {
	format:           format,
	channels:         u32,
	sampleRateIn:     u32,
	sampleRateOut:    u32,
	lpfOrder:         u32,
	// The low-pass filter order. Setting this to 0 will disable low-pass filtering. 
	lpfNyquistFactor: f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Resampling

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [linear\_resampler\_get\_heap\_size](/vendor/miniaudio/#linear_resampler_get_heap_size)
* [linear\_resampler\_init](/vendor/miniaudio/#linear_resampler_init)
* [linear\_resampler\_init\_preallocated](/vendor/miniaudio/#linear_resampler_init_preallocated)



##### Related Procedures With Returns

* [linear\_resampler\_config\_init](/vendor/miniaudio/#linear_resampler_config_init)

### [log ¶](#log) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L41)

```
log :: struct {
	callbacks:           [4]log_callback,
	callbackCount:       u32,
	allocationCallbacks: allocation_callbacks,
	// Need to store these persistently because log_postv() might need to allocate a buffer on the heap. 
	lock:                mutex,
}
```

##### Related Procedures With Parameters

* [log\_init](/vendor/miniaudio/#log_init)
* [log\_post](/vendor/miniaudio/#log_post)
* [log\_postf](/vendor/miniaudio/#log_postf)
* [log\_postv](/vendor/miniaudio/#log_postv)
* [log\_register\_callback](/vendor/miniaudio/#log_register_callback)
* [log\_uninit](/vendor/miniaudio/#log_uninit)
* [log\_unregister\_callback](/vendor/miniaudio/#log_unregister_callback)



##### Related Procedures With Returns

* [context\_get\_log](/vendor/miniaudio/#context_get_log)
* [device\_get\_log](/vendor/miniaudio/#device_get_log)
* [engine\_get\_log](/vendor/miniaudio/#engine_get_log)
* [resource\_manager\_get\_log](/vendor/miniaudio/#resource_manager_get_log)

### [log\_callback ¶](#log_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L36)

```
log_callback :: struct {
	onLog:     log_callback_proc,
	pUserData: rawptr,
}
```

##### Related Procedures With Parameters

* [log\_register\_callback](/vendor/miniaudio/#log_register_callback)
* [log\_unregister\_callback](/vendor/miniaudio/#log_unregister_callback)



##### Related Procedures With Returns

* [log\_callback\_init](/vendor/miniaudio/#log_callback_init)

### [log\_callback\_proc ¶](#log_callback_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L34)

```
log_callback_proc :: proc "c" (pUserData: rawptr, level: u32, pMessage: cstring)
```

 

The callback for handling log messages.

Parameters
----------
pUserData (in)
The user data pointer that was passed into ma\_log\_register\_callback().

logLevel (in)
The log level. This can be one of the following:

+----------------------+
| Log Level |
+----------------------+
| MA\_LOG\_LEVEL\_DEBUG |
| MA\_LOG\_LEVEL\_INFO |
| MA\_LOG\_LEVEL\_WARNING |
| MA\_LOG\_LEVEL\_ERROR |
+----------------------+

pMessage (in)
The log message.




##### Related Procedures With Parameters

* [log\_callback\_init](/vendor/miniaudio/#log_callback_init)

### [log\_level ¶](#log_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L56)

```
log_level :: enum i32 {
	LOG_LEVEL_DEBUG   = 4, 
	LOG_LEVEL_INFO    = 3, 
	LOG_LEVEL_WARNING = 2, 
	LOG_LEVEL_ERROR   = 1, 
}
```

### [loshelf2 ¶](#loshelf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L372)

```
loshelf2 :: struct {
	bq: biquad,
}
```

##### Related Procedures With Parameters

* [loshelf2\_get\_latency](/vendor/miniaudio/#loshelf2_get_latency)
* [loshelf2\_init](/vendor/miniaudio/#loshelf2_init)
* [loshelf2\_init\_preallocated](/vendor/miniaudio/#loshelf2_init_preallocated)
* [loshelf2\_process\_pcm\_frames](/vendor/miniaudio/#loshelf2_process_pcm_frames)
* [loshelf2\_reinit](/vendor/miniaudio/#loshelf2_reinit)
* [loshelf2\_uninit](/vendor/miniaudio/#loshelf2_uninit)

### [loshelf2\_config ¶](#loshelf2_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L370)

```
loshelf2_config :: loshelf_config
```

##### Related Procedures With Parameters

* [loshelf2\_get\_heap\_size](/vendor/miniaudio/#loshelf2_get_heap_size)
* [loshelf2\_init](/vendor/miniaudio/#loshelf2_init)
* [loshelf2\_init\_preallocated](/vendor/miniaudio/#loshelf2_init_preallocated)
* [loshelf2\_reinit](/vendor/miniaudio/#loshelf2_reinit)
* [loshelf\_node\_reinit](/vendor/miniaudio/#loshelf_node_reinit)



##### Related Procedures With Returns

* [loshelf2\_config\_init](/vendor/miniaudio/#loshelf2_config_init)

### [loshelf\_config ¶](#loshelf_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L362)

```
loshelf_config :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	gainDB:     f64,
	shelfSlope: f64,
	frequency:  f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Low Shelf Filter

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [loshelf2\_get\_heap\_size](/vendor/miniaudio/#loshelf2_get_heap_size)
* [loshelf2\_init](/vendor/miniaudio/#loshelf2_init)
* [loshelf2\_init\_preallocated](/vendor/miniaudio/#loshelf2_init_preallocated)
* [loshelf2\_reinit](/vendor/miniaudio/#loshelf2_reinit)
* [loshelf\_node\_reinit](/vendor/miniaudio/#loshelf_node_reinit)



##### Related Procedures With Returns

* [loshelf2\_config\_init](/vendor/miniaudio/#loshelf2_config_init)

### [loshelf\_node ¶](#loshelf_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L424)

```
loshelf_node :: struct {
	baseNode: node_base,
	loshelf:  loshelf2,
}
```

##### Related Procedures With Parameters

* [loshelf\_node\_init](/vendor/miniaudio/#loshelf_node_init)
* [loshelf\_node\_reinit](/vendor/miniaudio/#loshelf_node_reinit)
* [loshelf\_node\_uninit](/vendor/miniaudio/#loshelf_node_uninit)

### [loshelf\_node\_config ¶](#loshelf_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L419)

```
loshelf_node_config :: struct {
	nodeConfig: node_config,
	loshelf:    loshelf_config,
}
```

 

Low Shelf Filter Node




##### Related Procedures With Parameters

* [loshelf\_node\_init](/vendor/miniaudio/#loshelf_node_init)



##### Related Procedures With Returns

* [loshelf\_node\_config\_init](/vendor/miniaudio/#loshelf_node_config_init)

### [lpf ¶](#lpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L96)

```
lpf :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	lpf1Count:  u32,
	lpf2Count:  u32,
	pLPF1:      ^lpf1,
	pLPF2:      ^lpf2,
	// Memory management. 
	_pHeap:     rawptr,
	_ownsHeap:  b32,
}
```

##### Related Procedures With Parameters

* [lpf\_clear\_cache](/vendor/miniaudio/#lpf_clear_cache)
* [lpf\_get\_latency](/vendor/miniaudio/#lpf_get_latency)
* [lpf\_init](/vendor/miniaudio/#lpf_init)
* [lpf\_init\_preallocated](/vendor/miniaudio/#lpf_init_preallocated)
* [lpf\_process\_pcm\_frames](/vendor/miniaudio/#lpf_process_pcm_frames)
* [lpf\_reinit](/vendor/miniaudio/#lpf_reinit)
* [lpf\_uninit](/vendor/miniaudio/#lpf_uninit)

### [lpf1 ¶](#lpf1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L73)

```
lpf1 :: struct {
	format:    format,
	channels:  u32,
	a:         biquad_coefficient,
	pR1:       ^biquad_coefficient,
	// Memory management. 
	_pHeap:    rawptr,
	_ownsHeap: b32,
}
```

##### Related Procedures With Parameters

* [lpf1\_clear\_cache](/vendor/miniaudio/#lpf1_clear_cache)
* [lpf1\_get\_latency](/vendor/miniaudio/#lpf1_get_latency)
* [lpf1\_init](/vendor/miniaudio/#lpf1_init)
* [lpf1\_init\_preallocated](/vendor/miniaudio/#lpf1_init_preallocated)
* [lpf1\_process\_pcm\_frames](/vendor/miniaudio/#lpf1_process_pcm_frames)
* [lpf1\_reinit](/vendor/miniaudio/#lpf1_reinit)
* [lpf1\_uninit](/vendor/miniaudio/#lpf1_uninit)

### [lpf1\_config ¶](#lpf1_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L64)

```
lpf1_config :: struct {
	format:          format,
	channels:        u32,
	sampleRate:      u32,
	cutoffFrequency: f64,
	q:               f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Low-Pass Filtering

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [lpf1\_get\_heap\_size](/vendor/miniaudio/#lpf1_get_heap_size)
* [lpf1\_init](/vendor/miniaudio/#lpf1_init)
* [lpf1\_init\_preallocated](/vendor/miniaudio/#lpf1_init_preallocated)
* [lpf1\_reinit](/vendor/miniaudio/#lpf1_reinit)
* [lpf2\_get\_heap\_size](/vendor/miniaudio/#lpf2_get_heap_size)
* [lpf2\_init](/vendor/miniaudio/#lpf2_init)
* [lpf2\_init\_preallocated](/vendor/miniaudio/#lpf2_init_preallocated)
* [lpf2\_reinit](/vendor/miniaudio/#lpf2_reinit)



##### Related Procedures With Returns

* [lpf1\_config\_init](/vendor/miniaudio/#lpf1_config_init)
* [lpf2\_config\_init](/vendor/miniaudio/#lpf2_config_init)

### [lpf2 ¶](#lpf2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L84)

```
lpf2 :: struct {
	bq: biquad,
}
```

##### Related Procedures With Parameters

* [lpf2\_clear\_cache](/vendor/miniaudio/#lpf2_clear_cache)
* [lpf2\_get\_latency](/vendor/miniaudio/#lpf2_get_latency)
* [lpf2\_init](/vendor/miniaudio/#lpf2_init)
* [lpf2\_init\_preallocated](/vendor/miniaudio/#lpf2_init_preallocated)
* [lpf2\_process\_pcm\_frames](/vendor/miniaudio/#lpf2_process_pcm_frames)
* [lpf2\_reinit](/vendor/miniaudio/#lpf2_reinit)
* [lpf2\_uninit](/vendor/miniaudio/#lpf2_uninit)

### [lpf2\_config ¶](#lpf2_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L71)

```
lpf2_config :: lpf1_config
```

##### Related Procedures With Parameters

* [lpf1\_get\_heap\_size](/vendor/miniaudio/#lpf1_get_heap_size)
* [lpf1\_init](/vendor/miniaudio/#lpf1_init)
* [lpf1\_init\_preallocated](/vendor/miniaudio/#lpf1_init_preallocated)
* [lpf1\_reinit](/vendor/miniaudio/#lpf1_reinit)
* [lpf2\_get\_heap\_size](/vendor/miniaudio/#lpf2_get_heap_size)
* [lpf2\_init](/vendor/miniaudio/#lpf2_init)
* [lpf2\_init\_preallocated](/vendor/miniaudio/#lpf2_init_preallocated)
* [lpf2\_reinit](/vendor/miniaudio/#lpf2_reinit)



##### Related Procedures With Returns

* [lpf1\_config\_init](/vendor/miniaudio/#lpf1_config_init)
* [lpf2\_config\_init](/vendor/miniaudio/#lpf2_config_init)

### [lpf\_config ¶](#lpf_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L88)

```
lpf_config :: struct {
	format:          format,
	channels:        u32,
	sampleRate:      u32,
	cutoffFrequency: f64,
	order:           u32,
}
```

##### Related Procedures With Parameters

* [lpf\_get\_heap\_size](/vendor/miniaudio/#lpf_get_heap_size)
* [lpf\_init](/vendor/miniaudio/#lpf_init)
* [lpf\_init\_preallocated](/vendor/miniaudio/#lpf_init_preallocated)
* [lpf\_node\_reinit](/vendor/miniaudio/#lpf_node_reinit)
* [lpf\_reinit](/vendor/miniaudio/#lpf_reinit)



##### Related Procedures With Returns

* [lpf\_config\_init](/vendor/miniaudio/#lpf_config_init)

### [lpf\_node ¶](#lpf_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L309)

```
lpf_node :: struct {
	baseNode: node_base,
	lpf:      lpf,
}
```

##### Related Procedures With Parameters

* [lpf\_node\_init](/vendor/miniaudio/#lpf_node_init)
* [lpf\_node\_reinit](/vendor/miniaudio/#lpf_node_reinit)
* [lpf\_node\_uninit](/vendor/miniaudio/#lpf_node_uninit)

### [lpf\_node\_config ¶](#lpf_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L304)

```
lpf_node_config :: struct {
	nodeConfig: node_config,
	lpf:        lpf_config,
}
```

 

Low Pass Filter Node




##### Related Procedures With Parameters

* [lpf\_node\_init](/vendor/miniaudio/#lpf_node_init)



##### Related Procedures With Returns

* [lpf\_node\_config\_init](/vendor/miniaudio/#lpf_node_config_init)

### [ma\_read\_proc ¶](#ma_read_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L52)

```
ma_read_proc :: proc "c" (pUserData: rawptr, pBufferOut: rawptr, bytesToRead: uint, pBytesRead: ^uint) -> result
```

### [ma\_seek\_proc ¶](#ma_seek_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L53)

```
ma_seek_proc :: proc "c" (pUserData: rawptr, offset: i64, origin: seek_origin) -> result
```

### [ma\_tell\_proc ¶](#ma_tell_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L54)

```
ma_tell_proc :: proc "c" (pUserData: rawptr, pCursor: ^i64) -> result
```

### [mono\_expansion\_mode ¶](#mono_expansion_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L217)

```
mono_expansion_mode :: enum i32 {
	duplicate   = 0, // The default.
	average,         // Average the mono channel across all channels.
	stereo_only,     // Duplicate to the left and right channels only and ignore the others.
	default     = 0, 
}
```

### [mutex ¶](#mutex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common_windows.odin#L4)

```
mutex :: distinct rawptr
```

##### Related Procedures With Parameters

* [mutex\_init](/vendor/miniaudio/#mutex_init)
* [mutex\_lock](/vendor/miniaudio/#mutex_lock)
* [mutex\_uninit](/vendor/miniaudio/#mutex_uninit)
* [mutex\_unlock](/vendor/miniaudio/#mutex_unlock)

### [node ¶](#node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L29)

```
node :: struct {}
```

##### Related Procedures With Parameters

* [engine\_play\_sound\_ex](/vendor/miniaudio/#engine_play_sound_ex)
* [node\_attach\_output\_bus](/vendor/miniaudio/#node_attach_output_bus)
* [node\_detach\_all\_output\_buses](/vendor/miniaudio/#node_detach_all_output_buses)
* [node\_detach\_output\_bus](/vendor/miniaudio/#node_detach_output_bus)
* [node\_get\_input\_bus\_count](/vendor/miniaudio/#node_get_input_bus_count)
* [node\_get\_input\_channels](/vendor/miniaudio/#node_get_input_channels)
* [node\_get\_node\_graph](/vendor/miniaudio/#node_get_node_graph)
* [node\_get\_output\_bus\_count](/vendor/miniaudio/#node_get_output_bus_count)
* [node\_get\_output\_bus\_volume](/vendor/miniaudio/#node_get_output_bus_volume)
* [node\_get\_output\_channels](/vendor/miniaudio/#node_get_output_channels)
* [node\_get\_state](/vendor/miniaudio/#node_get_state)
* [node\_get\_state\_by\_time](/vendor/miniaudio/#node_get_state_by_time)
* [node\_get\_state\_by\_time\_range](/vendor/miniaudio/#node_get_state_by_time_range)
* [node\_get\_state\_time](/vendor/miniaudio/#node_get_state_time)
* [node\_get\_time](/vendor/miniaudio/#node_get_time)
* [node\_init](/vendor/miniaudio/#node_init)
* [node\_init\_preallocated](/vendor/miniaudio/#node_init_preallocated)
* [node\_set\_output\_bus\_volume](/vendor/miniaudio/#node_set_output_bus_volume)
* [node\_set\_state](/vendor/miniaudio/#node_set_state)
* [node\_set\_state\_time](/vendor/miniaudio/#node_set_state_time)
* [node\_set\_time](/vendor/miniaudio/#node_set_time)
* [node\_uninit](/vendor/miniaudio/#node_uninit)



##### Related Procedures With Returns

* [engine\_get\_endpoint](/vendor/miniaudio/#engine_get_endpoint)
* [node\_graph\_get\_endpoint](/vendor/miniaudio/#node_graph_get_endpoint)

### [node\_base ¶](#node_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L142)

```
node_base :: struct {
	// These variables are set once at startup. 
	pNodeGraph:                  ^node_graph,
	// The graph this node belongs to. 
	vtable:                      ^node_vtable,
	inputBusCount:               u32,
	outputBusCount:              u32,
	pInputBuses:                 [^]node_input_bus `fmt:"v,inputBusCount"`,
	pOutputBuses:                [^]node_output_bus `fmt:"v,outputBusCount"`,
	pCachedData:                 [^]f32,
	// Allocated on the heap. Fixed size. Needs to be stored on the heap because reading from output buses is done in separate function calls. 
	cachedDataCapInFramesPerBus: u16,
	// These variables are read and written only from the audio thread. 
	cachedFrameCountOut:         u16,
	cachedFrameCountIn:          u16,
	consumedFrameCountIn:        u16,
	// These variables are read and written between different threads. 
	state:                       node_state,
	// atomic
	// When set to stopped, nothing will be read, regardless of the times in stateTimes. 
	stateTimes:                  [2]u64,
	// atomic
	// Indexed by ma_node_state. Specifies the time based on the global clock that a node should be considered to be in the relevant state. 
	localTime:                   u64,
	// Memory management. 
	_inputBuses:                 [2]node_input_bus,
	_outputBuses:                [2]node_output_bus,
	_pHeap:                      rawptr,
	// A heap allocation for internal use only. pInputBuses and/or pOutputBuses will point to this if the bus count exceeds MA_MAX_NODE_LOCAL_BUS_COUNT. 
	_ownsHeap:                   b32,
}
```

### [node\_config ¶](#node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L90)

```
node_config :: struct {
	vtable:          ^node_vtable,
	// Should never be null. Initialization of the node will fail if so. 
	initialState:    node_state,
	// Defaults to ma_node_state_started. 
	inputBusCount:   u32,
	// Only used if the vtable specifies an input bus count of `MA_NODE_BUS_COUNT_UNKNOWN`, otherwise must be set to `MA_NODE_BUS_COUNT_UNKNOWN` (default). 
	outputBusCount:  u32,
	// Only used if the vtable specifies an output bus count of `MA_NODE_BUS_COUNT_UNKNOWN`, otherwise  be set to `MA_NODE_BUS_COUNT_UNKNOWN` (default). 
	pInputChannels:  ^u32,
	// The number of elements are determined by the input bus count as determined by the vtable, or `inputBusCount` if the vtable specifies `MA_NODE_BUS_COUNT_UNKNOWN`. 
	pOutputChannels: ^u32,
}
```

##### Related Procedures With Parameters

* [node\_get\_heap\_size](/vendor/miniaudio/#node_get_heap_size)
* [node\_init](/vendor/miniaudio/#node_init)
* [node\_init\_preallocated](/vendor/miniaudio/#node_init_preallocated)



##### Related Procedures With Returns

* [node\_config\_init](/vendor/miniaudio/#node_config_init)

### [node\_flag ¶](#node_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L32)

```
node_flag :: enum i32 {
	PASSTHROUGH                = 0, 
	CONTINUOUS_PROCESSING      = 1, 
	ALLOW_NULL_INPUT           = 2, 
	DIFFERENT_PROCESSING_RATES = 3, 
	SILENT_OUTPUT              = 4, 
}
```

 

Node flags.

### [node\_flags ¶](#node_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L40)

```
node_flags :: bit_set[node_flag; u32]
```

### [node\_graph ¶](#node_graph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L204)

```
node_graph :: struct {
	// Immutable. 
	base:                           node_base,
	// The node graph itself is a node so it can be connected as an input to different node graph. This has zero inputs and calls ma_node_graph_read_pcm_frames() to generate it's output. 
	endpoint:                       node_base,
	// Special node that all nodes eventually connect to. Data is read from this node in ma_node_graph_read_pcm_frames(). 
	pProcessingCache:               [^]f32,
	// This will be allocated when processingSizeInFrames is non-zero. This is needed because ma_node_graph_read_pcm_frames() can be called with a variable number of frames, and we may need to do some buffering in situations where the caller requests a frame count that's not a multiple of processingSizeInFrames. 
	processingCacheFramesRemaining: u32,
	processingSizeInFrames:         u32,
	// Read and written by multiple threads. 
	isReading:                      b32,
	// Modified only by the audio thread. 
	pPreMixStack:                   ^stack,
}
```

##### Related Procedures With Parameters

* [biquad\_node\_init](/vendor/miniaudio/#biquad_node_init)
* [bpf\_node\_init](/vendor/miniaudio/#bpf_node_init)
* [data\_source\_node\_init](/vendor/miniaudio/#data_source_node_init)
* [delay\_node\_init](/vendor/miniaudio/#delay_node_init)
* [hishelf\_node\_init](/vendor/miniaudio/#hishelf_node_init)
* [hpf\_node\_init](/vendor/miniaudio/#hpf_node_init)
* [loshelf\_node\_init](/vendor/miniaudio/#loshelf_node_init)
* [lpf\_node\_init](/vendor/miniaudio/#lpf_node_init)
* [node\_get\_heap\_size](/vendor/miniaudio/#node_get_heap_size)
* [node\_graph\_get\_channels](/vendor/miniaudio/#node_graph_get_channels)
* [node\_graph\_get\_endpoint](/vendor/miniaudio/#node_graph_get_endpoint)
* [node\_graph\_get\_processing\_size\_in\_frames](/vendor/miniaudio/#node_graph_get_processing_size_in_frames)
* [node\_graph\_get\_time](/vendor/miniaudio/#node_graph_get_time)
* [node\_graph\_init](/vendor/miniaudio/#node_graph_init)
* [node\_graph\_read\_pcm\_frames](/vendor/miniaudio/#node_graph_read_pcm_frames)
* [node\_graph\_set\_time](/vendor/miniaudio/#node_graph_set_time)
* [node\_graph\_uninit](/vendor/miniaudio/#node_graph_uninit)
* [node\_init](/vendor/miniaudio/#node_init)
* [node\_init\_preallocated](/vendor/miniaudio/#node_init_preallocated)
* [notch\_node\_init](/vendor/miniaudio/#notch_node_init)
* [peak\_node\_init](/vendor/miniaudio/#peak_node_init)
* [splitter\_node\_init](/vendor/miniaudio/#splitter_node_init)



##### Related Procedures With Returns

* [engine\_get\_node\_graph](/vendor/miniaudio/#engine_get_node_graph)
* [node\_get\_node\_graph](/vendor/miniaudio/#node_get_node_graph)

### [node\_graph\_config ¶](#node_graph_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L198)

```
node_graph_config :: struct {
	channels:               u32,
	processingSizeInFrames: u32,
	// This is the preferred processing size for node processing callbacks unless overridden by a node itself. Can be 0 in which case it will be based on the frame count passed into ma_node_graph_read_pcm_frames(), but will not be well defined. 
	preMixStackSizeInBytes: uint,
}
```

##### Related Procedures With Parameters

* [node\_graph\_init](/vendor/miniaudio/#node_graph_init)



##### Related Procedures With Returns

* [node\_graph\_config\_init](/vendor/miniaudio/#node_graph_config_init)

### [node\_input\_bus ¶](#node_input_bus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L131)

```
node_input_bus :: struct {
	// Mutable via multiple threads. 
	head:        node_output_bus,
	// Dummy head node for simplifying some lock-free thread-safety stuff. 
	nextCounter: u32,
	// atomic
	// This is used to determine whether or not the input bus is finding the next node in the list. Used for thread safety when detaching output buses. 
	lock:        spinlock,
	// Set once at startup. 
	channels:    u8,
}
```

 

A node has multiple input buses. The output buses of a node are connecting to the input busses of
another. An input bus is essentially just a linked list of output buses.

### [node\_output\_bus ¶](#node_output_bus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L109)

```
node_output_bus :: struct {
	// Immutable. 
	pNode:                  ^node,
	// The node that owns this output bus. The input node. Will be null for dummy head and tail nodes. 
	outputBusIndex:         u8,
	// The index of the output bus on pNode that this output bus represents. 
	channels:               u8,
	// Mutable via multiple threads. Must be used atomically. The weird ordering here is for packing reasons. 
	inputNodeInputBusIndex: u8,
	// The index of the input bus on the input. Required for detaching. Will only be used in the spinlock so does not need to be atomic. 
	flags:                  bit_set[node_output_bus_flag; u32],
	// atomic
	// Some state flags for tracking the read state of the output buffer. A combination of MA_NODE_OUTPUT_BUS_FLAG_*. 
	refCount:               u32,
	// atomic
	// Reference count for some thread-safety when detaching. 
	isAttached:             b32,
	// atomic
	// This is used to prevent iteration of nodes that are in the middle of being detached. Used for thread safety. 
	lock:                   spinlock,
	// atomic
	// Unfortunate lock, but significantly simplifies the implementation. Required for thread-safe attaching and detaching. 
	volume:                 f32,
	// atomic
	// Linear. 
	pNext:                  ^node_output_bus,
	// atomic
	// If null, it's the tail node or detached. 
	pPrev:                  ^node_output_bus,
	// atomic
	// If null, it's the head node or detached. 
	pInputNode:             ^node,
}
```

 

A node has multiple output buses. An output bus is attached to an input bus as an item in a linked
list. Think of the input bus as a linked list, with the output bus being an item in that list.

### [node\_output\_bus\_flag ¶](#node_output_bus_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L99)

```
node_output_bus_flag :: enum i32 {
	HAS_READ = 0, // 0x01
}
```

### [node\_output\_bus\_flags ¶](#node_output_bus_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L103)

```
node_output_bus_flags :: bit_set[node_output_bus_flag; u32]
```

### [node\_state ¶](#node_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L43)

```
node_state :: enum i32 {
	started = 0, 
	stopped = 1, 
}
```

 

The playback state of a node. Either started or stopped.




##### Related Procedures With Parameters

* [node\_get\_state\_time](/vendor/miniaudio/#node_get_state_time)
* [node\_set\_state](/vendor/miniaudio/#node_set_state)
* [node\_set\_state\_time](/vendor/miniaudio/#node_set_state_time)



##### Related Procedures With Returns

* [node\_get\_state](/vendor/miniaudio/#node_get_state)
* [node\_get\_state\_by\_time](/vendor/miniaudio/#node_get_state_by_time)
* [node\_get\_state\_by\_time\_range](/vendor/miniaudio/#node_get_state_by_time_range)

### [node\_vtable ¶](#node_vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L48)

```
node_vtable :: struct {
	// 	Extended processing callback. This callback is used for effects that process input and output
	// 	at different rates (i.e. they perform resampling). This is similar to the simple version, only
	// 	they take two separate frame counts: one for input, and one for output.
	// 
	// 	On input, `pFrameCountOut` is equal to the capacity of the output buffer for each bus, whereas
	// 	`pFrameCountIn` will be equal to the number of PCM frames in each of the buffers in `ppFramesIn`.
	// 
	// 	On output, set `pFrameCountOut` to the number of PCM frames that were actually output and set
	// 	`pFrameCountIn` to the number of input frames that were consumed.
	onProcess:                    proc "c" (pNode: ^node, ppFramesIn: ^[^]f32, pFrameCountIn: ^u32, ppFramesOut: ^[^]f32, pFrameCountOut: ^u32),
	// 	A callback for retrieving the number of input frames that are required to output the
	// 	specified number of output frames. You would only want to implement this when the node performs
	// 	resampling. This is optional, even for nodes that perform resampling, but it does offer a
	// 	small reduction in latency as it allows miniaudio to calculate the exact number of input frames
	// 	to read at a time instead of having to estimate.
	onGetRequiredInputFrameCount: proc "c" (pNode: ^node, outputFrameCount: u32, pInputFrameCount: ^u32) -> result,
	// 	The number of input buses. This is how many sub-buffers will be contained in the `ppFramesIn`
	// 	parameters of the callbacks above.
	inputBusCount:                u8,
	// 	The number of output buses. This is how many sub-buffers will be contained in the `ppFramesOut`
	// 	parameters of the callbacks above.
	outputBusCount:               u8,
	// 	Flags describing characteristics of the node. This is currently just a placeholder for some
	// 	ideas for later on.
	flags:                        bit_set[node_flag; u32],
}
```

### [noise ¶](#noise) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L47)

```
noise :: struct {
	ds:        data_source_base,
	config:    noise_config,
	lcg:       lcg,
	state:     struct #raw_union {
		pink:     struct {
			bin:          ^[^]f64,
			accumulation: [^]f64,
			counter:      [^]u32,
		},
		brownian: struct {
			accumulation: [^]f64,
		},
	},
	// Memory management. 
	_pHeap:    rawptr,
	_ownsHeap: b32,
}
```

##### Related Procedures With Parameters

* [noise\_init](/vendor/miniaudio/#noise_init)
* [noise\_init\_preallocated](/vendor/miniaudio/#noise_init_preallocated)
* [noise\_read\_pcm\_frames](/vendor/miniaudio/#noise_read_pcm_frames)
* [noise\_set\_amplitude](/vendor/miniaudio/#noise_set_amplitude)
* [noise\_set\_seed](/vendor/miniaudio/#noise_set_seed)
* [noise\_set\_type](/vendor/miniaudio/#noise_set_type)
* [noise\_uninit](/vendor/miniaudio/#noise_uninit)

### [noise\_config ¶](#noise_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L38)

```
noise_config :: struct {
	format:            format,
	channels:          u32,
	type:              noise_type,
	seed:              i32,
	amplitude:         f64,
	duplicateChannels: b32,
}
```

##### Related Procedures With Parameters

* [noise\_get\_heap\_size](/vendor/miniaudio/#noise_get_heap_size)
* [noise\_init](/vendor/miniaudio/#noise_init)
* [noise\_init\_preallocated](/vendor/miniaudio/#noise_init_preallocated)



##### Related Procedures With Returns

* [noise\_config\_init](/vendor/miniaudio/#noise_config_init)

### [noise\_type ¶](#noise_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L32)

```
noise_type :: enum i32 {
	white, 
	pink, 
	brownian, 
}
```

##### Related Procedures With Parameters

* [noise\_config\_init](/vendor/miniaudio/#noise_config_init)
* [noise\_set\_type](/vendor/miniaudio/#noise_set_type)

### [notch2 ¶](#notch2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L306)

```
notch2 :: struct {
	bq: biquad,
}
```

##### Related Procedures With Parameters

* [notch2\_get\_latency](/vendor/miniaudio/#notch2_get_latency)
* [notch2\_init](/vendor/miniaudio/#notch2_init)
* [notch2\_init\_preallocated](/vendor/miniaudio/#notch2_init_preallocated)
* [notch2\_process\_pcm\_frames](/vendor/miniaudio/#notch2_process_pcm_frames)
* [notch2\_reinit](/vendor/miniaudio/#notch2_reinit)
* [notch2\_uninit](/vendor/miniaudio/#notch2_uninit)

### [notch2\_config ¶](#notch2_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L304)

```
notch2_config :: notch_config
```

##### Related Procedures With Parameters

* [notch2\_get\_heap\_size](/vendor/miniaudio/#notch2_get_heap_size)
* [notch2\_init](/vendor/miniaudio/#notch2_init)
* [notch2\_init\_preallocated](/vendor/miniaudio/#notch2_init_preallocated)
* [notch2\_reinit](/vendor/miniaudio/#notch2_reinit)
* [notch\_node\_reinit](/vendor/miniaudio/#notch_node_reinit)



##### Related Procedures With Returns

* [notch2\_config\_init](/vendor/miniaudio/#notch2_config_init)

### [notch\_config ¶](#notch_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L297)

```
notch_config :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	q:          f64,
	frequency:  f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Notching Filter

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [notch2\_get\_heap\_size](/vendor/miniaudio/#notch2_get_heap_size)
* [notch2\_init](/vendor/miniaudio/#notch2_init)
* [notch2\_init\_preallocated](/vendor/miniaudio/#notch2_init_preallocated)
* [notch2\_reinit](/vendor/miniaudio/#notch2_reinit)
* [notch\_node\_reinit](/vendor/miniaudio/#notch_node_reinit)



##### Related Procedures With Returns

* [notch2\_config\_init](/vendor/miniaudio/#notch2_config_init)

### [notch\_node ¶](#notch_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L378)

```
notch_node :: struct {
	baseNode: node_base,
	notch:    notch2,
}
```

##### Related Procedures With Parameters

* [notch\_node\_init](/vendor/miniaudio/#notch_node_init)
* [notch\_node\_reinit](/vendor/miniaudio/#notch_node_reinit)
* [notch\_node\_uninit](/vendor/miniaudio/#notch_node_uninit)

### [notch\_node\_config ¶](#notch_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L373)

```
notch_node_config :: struct {
	nodeConfig: node_config,
	notch:      notch_config,
}
```

 

Notching Filter Node




##### Related Procedures With Parameters

* [notch\_node\_init](/vendor/miniaudio/#notch_node_init)



##### Related Procedures With Returns

* [notch\_node\_config\_init](/vendor/miniaudio/#notch_node_config_init)

### [open\_mode\_flag ¶](#open_mode_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L19)

```
open_mode_flag :: enum i32 {
	READ  = 0, 
	WRITE = 1, 
}
```

### [open\_mode\_flags ¶](#open_mode_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L24)

```
open_mode_flags :: bit_set[open_mode_flag; u32]
```

##### Related Procedures With Parameters

* [vfs\_open](/vendor/miniaudio/#vfs_open)
* [vfs\_open\_w](/vendor/miniaudio/#vfs_open_w)

### [opensl\_recording\_preset ¶](#opensl_recording_preset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L262)

```
opensl_recording_preset :: enum i32 {
	default             = 0, // Leaves the input preset unset.
	generic,                 // SL_ANDROID_RECORDING_PRESET_GENERIC
	camcorder,               // SL_ANDROID_RECORDING_PRESET_CAMCORDER
	voice_recognition,       // SL_ANDROID_RECORDING_PRESET_VOICE_RECOGNITION
	voice_communication,     // SL_ANDROID_RECORDING_PRESET_VOICE_COMMUNICATION
	voice_unprocessed,       // SL_ANDROID_RECORDING_PRESET_UNPROCESSED
}
```

 

OpenSL recording presets.

### [opensl\_stream\_type ¶](#opensl_stream_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L251)

```
opensl_stream_type :: enum i32 {
	default      = 0, // Leaves the stream type unset.
	voice,            // SL_ANDROID_STREAM_VOICE
	system,           // SL_ANDROID_STREAM_SYSTEM
	ring,             // SL_ANDROID_STREAM_RING
	media,            // SL_ANDROID_STREAM_MEDIA
	alarm,            // SL_ANDROID_STREAM_ALARM
	notification,     // SL_ANDROID_STREAM_NOTIFICATION
}
```

 

OpenSL stream types.

### [paged\_audio\_buffer ¶](#paged_audio_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L291)

```
paged_audio_buffer :: struct {
	ds:             data_source_base,
	pData:          ^paged_audio_buffer_data,
	// Audio data is read from here. Cannot be null. 
	pCurrent:       ^paged_audio_buffer_page,
	relativeCursor: u64,
	// Relative to the current page. 
	absoluteCursor: u64,
}
```

##### Related Procedures With Parameters

* [paged\_audio\_buffer\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_get_cursor_in_pcm_frames)
* [paged\_audio\_buffer\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_get_length_in_pcm_frames)
* [paged\_audio\_buffer\_init](/vendor/miniaudio/#paged_audio_buffer_init)
* [paged\_audio\_buffer\_read\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_read_pcm_frames)
* [paged\_audio\_buffer\_seek\_to\_pcm\_frame](/vendor/miniaudio/#paged_audio_buffer_seek_to_pcm_frame)
* [paged\_audio\_buffer\_uninit](/vendor/miniaudio/#paged_audio_buffer_uninit)

### [paged\_audio\_buffer\_config ¶](#paged_audio_buffer_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L287)

```
paged_audio_buffer_config :: struct {
	pData: ^paged_audio_buffer_data,
}
```

##### Related Procedures With Parameters

* [paged\_audio\_buffer\_init](/vendor/miniaudio/#paged_audio_buffer_init)



##### Related Procedures With Returns

* [paged\_audio\_buffer\_config\_init](/vendor/miniaudio/#paged_audio_buffer_config_init)

### [paged\_audio\_buffer\_data ¶](#paged_audio_buffer_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L266)

```
paged_audio_buffer_data :: struct {
	format:   format,
	channels: u32,
	head:     paged_audio_buffer_page,
	// Dummy head for the lock-free algorithm. Always has a size of 0. 
	pTail:    ^paged_audio_buffer_page,
}
```

##### Related Procedures With Parameters

* [paged\_audio\_buffer\_config\_init](/vendor/miniaudio/#paged_audio_buffer_config_init)
* [paged\_audio\_buffer\_data\_allocate\_and\_append\_page](/vendor/miniaudio/#paged_audio_buffer_data_allocate_and_append_page)
* [paged\_audio\_buffer\_data\_allocate\_page](/vendor/miniaudio/#paged_audio_buffer_data_allocate_page)
* [paged\_audio\_buffer\_data\_append\_page](/vendor/miniaudio/#paged_audio_buffer_data_append_page)
* [paged\_audio\_buffer\_data\_free\_page](/vendor/miniaudio/#paged_audio_buffer_data_free_page)
* [paged\_audio\_buffer\_data\_get\_head](/vendor/miniaudio/#paged_audio_buffer_data_get_head)
* [paged\_audio\_buffer\_data\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_data_get_length_in_pcm_frames)
* [paged\_audio\_buffer\_data\_get\_tail](/vendor/miniaudio/#paged_audio_buffer_data_get_tail)
* [paged\_audio\_buffer\_data\_init](/vendor/miniaudio/#paged_audio_buffer_data_init)
* [paged\_audio\_buffer\_data\_uninit](/vendor/miniaudio/#paged_audio_buffer_data_uninit)

### [paged\_audio\_buffer\_page ¶](#paged_audio_buffer_page) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L260)

```
paged_audio_buffer_page :: struct {
	pNext:        ^paged_audio_buffer_page,
	// atomic
	sizeInFrames: u64,
	pAudioData:   [1]u8,
}
```

 

Paged Audio Buffer
==================
A paged audio buffer is made up of a linked list of pages. It's expandable, but not shrinkable. It
can be used for cases where audio data is streamed in asynchronously while allowing data to be read
at the same time.

This is lock-free, but not 100% thread safe. You can append a page and read from the buffer across
simultaneously across different threads, however only one thread at a time can append, and only one
thread at a time can read and seek.




##### Related Procedures With Parameters

* [paged\_audio\_buffer\_data\_append\_page](/vendor/miniaudio/#paged_audio_buffer_data_append_page)
* [paged\_audio\_buffer\_data\_free\_page](/vendor/miniaudio/#paged_audio_buffer_data_free_page)



##### Related Procedures With Returns

* [paged\_audio\_buffer\_data\_get\_head](/vendor/miniaudio/#paged_audio_buffer_data_get_head)
* [paged\_audio\_buffer\_data\_get\_tail](/vendor/miniaudio/#paged_audio_buffer_data_get_tail)

### [pan\_mode ¶](#pan_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L78)

```
pan_mode :: enum i32 {
	balance = 0, // Does not blend one side with the other. Technically just a balance. Compatible with other popular audio engines and therefore the default.
	pan,         // A true pan. The sound from one side will "move" to the other side and blend with it.
}
```

 

Stereo panner.




##### Related Procedures With Parameters

* [panner\_set\_mode](/vendor/miniaudio/#panner_set_mode)
* [sound\_group\_set\_pan\_mode](/vendor/miniaudio/#sound_group_set_pan_mode)
* [sound\_set\_pan\_mode](/vendor/miniaudio/#sound_set_pan_mode)



##### Related Procedures With Returns

* [panner\_get\_mode](/vendor/miniaudio/#panner_get_mode)
* [sound\_get\_pan\_mode](/vendor/miniaudio/#sound_get_pan_mode)
* [sound\_group\_get\_pan\_mode](/vendor/miniaudio/#sound_group_get_pan_mode)

### [panner ¶](#panner) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L90)

```
panner :: struct {
	format:   format,
	channels: u32,
	mode:     pan_mode,
	pan:      f32,
}
```

##### Related Procedures With Parameters

* [panner\_get\_mode](/vendor/miniaudio/#panner_get_mode)
* [panner\_get\_pan](/vendor/miniaudio/#panner_get_pan)
* [panner\_init](/vendor/miniaudio/#panner_init)
* [panner\_process\_pcm\_frames](/vendor/miniaudio/#panner_process_pcm_frames)
* [panner\_set\_mode](/vendor/miniaudio/#panner_set_mode)
* [panner\_set\_pan](/vendor/miniaudio/#panner_set_pan)

### [panner\_config ¶](#panner_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L83)

```
panner_config :: struct {
	format:   format,
	channels: u32,
	mode:     pan_mode,
	pan:      f32,
}
```

##### Related Procedures With Parameters

* [panner\_init](/vendor/miniaudio/#panner_init)



##### Related Procedures With Returns

* [panner\_config\_init](/vendor/miniaudio/#panner_config_init)

### [pcm\_rb ¶](#pcm_rb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L536)

```
pcm_rb :: struct {
	ds:         data_source_base,
	rb:         rb,
	format:     format,
	channels:   u32,
	sampleRate: u32,
}
```

##### Related Procedures With Parameters

* [pcm\_rb\_acquire\_read](/vendor/miniaudio/#pcm_rb_acquire_read)
* [pcm\_rb\_acquire\_write](/vendor/miniaudio/#pcm_rb_acquire_write)
* [pcm\_rb\_available\_read](/vendor/miniaudio/#pcm_rb_available_read)
* [pcm\_rb\_available\_write](/vendor/miniaudio/#pcm_rb_available_write)
* [pcm\_rb\_commit\_read](/vendor/miniaudio/#pcm_rb_commit_read)
* [pcm\_rb\_commit\_write](/vendor/miniaudio/#pcm_rb_commit_write)
* [pcm\_rb\_get\_channels](/vendor/miniaudio/#pcm_rb_get_channels)
* [pcm\_rb\_get\_format](/vendor/miniaudio/#pcm_rb_get_format)
* [pcm\_rb\_get\_sample\_rate](/vendor/miniaudio/#pcm_rb_get_sample_rate)
* [pcm\_rb\_get\_subbuffer\_offset](/vendor/miniaudio/#pcm_rb_get_subbuffer_offset)
* [pcm\_rb\_get\_subbuffer\_ptr](/vendor/miniaudio/#pcm_rb_get_subbuffer_ptr)
* [pcm\_rb\_get\_subbuffer\_size](/vendor/miniaudio/#pcm_rb_get_subbuffer_size)
* [pcm\_rb\_get\_subbuffer\_stride](/vendor/miniaudio/#pcm_rb_get_subbuffer_stride)
* [pcm\_rb\_init](/vendor/miniaudio/#pcm_rb_init)
* [pcm\_rb\_init\_ex](/vendor/miniaudio/#pcm_rb_init_ex)
* [pcm\_rb\_pointer\_distance](/vendor/miniaudio/#pcm_rb_pointer_distance)
* [pcm\_rb\_reset](/vendor/miniaudio/#pcm_rb_reset)
* [pcm\_rb\_seek\_read](/vendor/miniaudio/#pcm_rb_seek_read)
* [pcm\_rb\_seek\_write](/vendor/miniaudio/#pcm_rb_seek_write)
* [pcm\_rb\_set\_sample\_rate](/vendor/miniaudio/#pcm_rb_set_sample_rate)
* [pcm\_rb\_uninit](/vendor/miniaudio/#pcm_rb_uninit)

### [peak2 ¶](#peak2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L339)

```
peak2 :: struct {
	bq: biquad,
}
```

##### Related Procedures With Parameters

* [peak2\_get\_latency](/vendor/miniaudio/#peak2_get_latency)
* [peak2\_init](/vendor/miniaudio/#peak2_init)
* [peak2\_init\_preallocated](/vendor/miniaudio/#peak2_init_preallocated)
* [peak2\_process\_pcm\_frames](/vendor/miniaudio/#peak2_process_pcm_frames)
* [peak2\_reinit](/vendor/miniaudio/#peak2_reinit)
* [peak2\_uninit](/vendor/miniaudio/#peak2_uninit)

### [peak2\_config ¶](#peak2_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L337)

```
peak2_config :: peak_config
```

##### Related Procedures With Parameters

* [peak2\_get\_heap\_size](/vendor/miniaudio/#peak2_get_heap_size)
* [peak2\_init](/vendor/miniaudio/#peak2_init)
* [peak2\_init\_preallocated](/vendor/miniaudio/#peak2_init_preallocated)
* [peak2\_reinit](/vendor/miniaudio/#peak2_reinit)
* [peak\_node\_reinit](/vendor/miniaudio/#peak_node_reinit)



##### Related Procedures With Returns

* [peak2\_config\_init](/vendor/miniaudio/#peak2_config_init)

### [peak\_config ¶](#peak_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L329)

```
peak_config :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	gainDB:     f64,
	q:          f64,
	frequency:  f64,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Peaking EQ Filter

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [peak2\_get\_heap\_size](/vendor/miniaudio/#peak2_get_heap_size)
* [peak2\_init](/vendor/miniaudio/#peak2_init)
* [peak2\_init\_preallocated](/vendor/miniaudio/#peak2_init_preallocated)
* [peak2\_reinit](/vendor/miniaudio/#peak2_reinit)
* [peak\_node\_reinit](/vendor/miniaudio/#peak_node_reinit)



##### Related Procedures With Returns

* [peak2\_config\_init](/vendor/miniaudio/#peak2_config_init)

### [peak\_node ¶](#peak_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L401)

```
peak_node :: struct {
	baseNode: node_base,
	peak:     peak2,
}
```

##### Related Procedures With Parameters

* [peak\_node\_init](/vendor/miniaudio/#peak_node_init)
* [peak\_node\_reinit](/vendor/miniaudio/#peak_node_reinit)
* [peak\_node\_uninit](/vendor/miniaudio/#peak_node_uninit)

### [peak\_node\_config ¶](#peak_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L396)

```
peak_node_config :: struct {
	nodeConfig: node_config,
	peak:       peak_config,
}
```

 

Peaking Filter Node




##### Related Procedures With Parameters

* [peak\_node\_init](/vendor/miniaudio/#peak_node_init)



##### Related Procedures With Returns

* [peak\_node\_config\_init](/vendor/miniaudio/#peak_node_config_init)

### [performance\_profile ¶](#performance_profile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L285)

```
performance_profile :: enum i32 {
	low_latency  = 0, 
	conservative, 
}
```

##### Related Procedures With Parameters

* [calculate\_buffer\_size\_in\_frames\_from\_descriptor](/vendor/miniaudio/#calculate_buffer_size_in_frames_from_descriptor)

### [positioning ¶](#positioning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L157)

```
positioning :: enum i32 {
	absolute, 
	relative, 
}
```

##### Related Procedures With Parameters

* [sound\_group\_set\_positioning](/vendor/miniaudio/#sound_group_set_positioning)
* [sound\_set\_positioning](/vendor/miniaudio/#sound_set_positioning)
* [spatializer\_set\_positioning](/vendor/miniaudio/#spatializer_set_positioning)



##### Related Procedures With Returns

* [sound\_get\_positioning](/vendor/miniaudio/#sound_get_positioning)
* [sound\_group\_get\_positioning](/vendor/miniaudio/#sound_group_get_positioning)
* [spatializer\_get\_positioning](/vendor/miniaudio/#spatializer_get_positioning)

### [pulsewave ¶](#pulsewave) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L320)

```
pulsewave :: struct {
	waveform: waveform,
	config:   pulsewave_config,
}
```

##### Related Procedures With Parameters

* [pulsewave\_init](/vendor/miniaudio/#pulsewave_init)
* [pulsewave\_read\_pcm\_frames](/vendor/miniaudio/#pulsewave_read_pcm_frames)
* [pulsewave\_seek\_to\_pcm\_frame](/vendor/miniaudio/#pulsewave_seek_to_pcm_frame)
* [pulsewave\_set\_amplitude](/vendor/miniaudio/#pulsewave_set_amplitude)
* [pulsewave\_set\_duty\_cycle](/vendor/miniaudio/#pulsewave_set_duty_cycle)
* [pulsewave\_set\_frequency](/vendor/miniaudio/#pulsewave_set_frequency)
* [pulsewave\_set\_sample\_rate](/vendor/miniaudio/#pulsewave_set_sample_rate)
* [pulsewave\_uninit](/vendor/miniaudio/#pulsewave_uninit)

### [pulsewave\_config ¶](#pulsewave_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L311)

```
pulsewave_config :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	dutyCycle:  f64,
	amplitude:  f64,
	frequency:  f64,
}
```

##### Related Procedures With Parameters

* [pulsewave\_init](/vendor/miniaudio/#pulsewave_init)



##### Related Procedures With Returns

* [pulsewave\_config\_init](/vendor/miniaudio/#pulsewave_config_init)

### [rb ¶](#rb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L524)

```
rb :: struct {
	pBuffer:                rawptr,
	subbufferSizeInBytes:   u32,
	subbufferCount:         u32,
	subbufferStrideInBytes: u32,
	encodedReadOffset:      u32,
	// atomic
	// Most significant bit is the loop flag. Lower 31 bits contains the actual offset in bytes. Must be used atomically. 
	encodedWriteOffset:     u32,
	// atomic
	// Most significant bit is the loop flag. Lower 31 bits contains the actual offset in bytes. Must be used atomically. 
	ownsBuffer:             b8,
	// Used to know whether or not miniaudio is responsible for free()-ing the buffer. 
	clearOnWriteAcquire:    b8,
	// When set, clears the acquired write buffer before returning from ma_rb_acquire_write(). 
	allocationCallbacks:    allocation_callbacks,
}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Ring Buffer

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [rb\_acquire\_read](/vendor/miniaudio/#rb_acquire_read)
* [rb\_acquire\_write](/vendor/miniaudio/#rb_acquire_write)
* [rb\_available\_read](/vendor/miniaudio/#rb_available_read)
* [rb\_available\_write](/vendor/miniaudio/#rb_available_write)
* [rb\_commit\_read](/vendor/miniaudio/#rb_commit_read)
* [rb\_commit\_write](/vendor/miniaudio/#rb_commit_write)
* [rb\_get\_subbuffer\_offset](/vendor/miniaudio/#rb_get_subbuffer_offset)
* [rb\_get\_subbuffer\_ptr](/vendor/miniaudio/#rb_get_subbuffer_ptr)
* [rb\_get\_subbuffer\_size](/vendor/miniaudio/#rb_get_subbuffer_size)
* [rb\_get\_subbuffer\_stride](/vendor/miniaudio/#rb_get_subbuffer_stride)
* [rb\_init](/vendor/miniaudio/#rb_init)
* [rb\_init\_ex](/vendor/miniaudio/#rb_init_ex)
* [rb\_pointer\_distance](/vendor/miniaudio/#rb_pointer_distance)
* [rb\_reset](/vendor/miniaudio/#rb_reset)
* [rb\_seek\_read](/vendor/miniaudio/#rb_seek_read)
* [rb\_seek\_write](/vendor/miniaudio/#rb_seek_write)
* [rb\_uninit](/vendor/miniaudio/#rb_uninit)

### [resample\_algorithm ¶](#resample_algorithm) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L67)

```
resample_algorithm :: enum i32 {
	linear = 0, // Fastest, lowest quality. Optional low-pass filtering. Default.
	custom, 
}
```

##### Related Procedures With Parameters

* [resampler\_config\_init](/vendor/miniaudio/#resampler_config_init)

### [resampler ¶](#resampler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L85)

```
resampler :: struct {
	pBackend:         ^resampling_backend,
	pBackendVTable:   ^resampling_backend_vtable,
	pBackendUserData: rawptr,
	format:           format,
	channels:         u32,
	sampleRateIn:     u32,
	sampleRateOut:    u32,
	state:            struct {
		linear: linear_resampler,
	},
	// Memory management. 
	_pHeap:           rawptr,
	_ownsHeap:        b32,
}
```

##### Related Procedures With Parameters

* [resampler\_get\_expected\_output\_frame\_count](/vendor/miniaudio/#resampler_get_expected_output_frame_count)
* [resampler\_get\_input\_latency](/vendor/miniaudio/#resampler_get_input_latency)
* [resampler\_get\_output\_latency](/vendor/miniaudio/#resampler_get_output_latency)
* [resampler\_get\_required\_input\_frame\_count](/vendor/miniaudio/#resampler_get_required_input_frame_count)
* [resampler\_init](/vendor/miniaudio/#resampler_init)
* [resampler\_init\_preallocated](/vendor/miniaudio/#resampler_init_preallocated)
* [resampler\_process\_pcm\_frames](/vendor/miniaudio/#resampler_process_pcm_frames)
* [resampler\_reset](/vendor/miniaudio/#resampler_reset)
* [resampler\_set\_rate](/vendor/miniaudio/#resampler_set_rate)
* [resampler\_set\_rate\_ratio](/vendor/miniaudio/#resampler_set_rate_ratio)
* [resampler\_uninit](/vendor/miniaudio/#resampler_uninit)

### [resampler\_config ¶](#resampler_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L72)

```
resampler_config :: struct {
	format:           format,
	// Must be either ma_format_f32 or ma_format_s16. 
	channels:         u32,
	sampleRateIn:     u32,
	sampleRateOut:    u32,
	algorithm:        resample_algorithm,
	// When set to ma_resample_algorithm_custom, pBackendVTable will be used. 
	pBackendVTable:   ^resampling_backend_vtable,
	pBackendUserData: rawptr,
	linear:           struct {
		lpfOrder: u32,
	},
}
```

##### Related Procedures With Parameters

* [resampler\_get\_heap\_size](/vendor/miniaudio/#resampler_get_heap_size)
* [resampler\_init](/vendor/miniaudio/#resampler_init)
* [resampler\_init\_preallocated](/vendor/miniaudio/#resampler_init_preallocated)



##### Related Procedures With Returns

* [resampler\_config\_init](/vendor/miniaudio/#resampler_config_init)

### [resampling\_backend ¶](#resampling_backend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L53)

```
resampling_backend :: struct {}
```

### [resampling\_backend\_vtable ¶](#resampling_backend_vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L54)

```
resampling_backend_vtable :: struct {
	onGetHeapSize:                 proc "c" (pUserData: rawptr, pConfig: ^resampler_config, pHeapSizeInBytes: ^uint) -> result,
	onInit:                        proc "c" (pUserData: rawptr, pConfig: ^resampler_config, pHeap: rawptr, ppBackend: ^^resampling_backend) -> result,
	onUninit:                      proc "c" (pUserData: rawptr, pBackend: ^resampling_backend, pAllocationCallbacks: ^allocation_callbacks),
	onProcess:                     proc "c" (pUserData: rawptr, pBackend: ^resampling_backend, pFramesIn: rawptr, pFrameCountIn: ^u64, pFramesOut: rawptr, pFrameCountOut: ^u64) -> result,
	onSetRate:                     proc "c" (pUserData: rawptr, pBackend: ^resampling_backend, sampleRateIn: u32, sampleRateOut: u32) -> result,
	// Optional. Rate changes will be disabled. 
	onGetInputLatency:             proc "c" (pUserData: rawptr, pBackend: ^resampling_backend) -> u64,
	// Optional. Latency will be reported as 0. 
	onGetOutputLatency:            proc "c" (pUserData: rawptr, pBackend: ^resampling_backend) -> u64,
	// Optional. Latency will be reported as 0. 
	onGetRequiredInputFrameCount:  proc "c" (pUserData: rawptr, pBackend: ^resampling_backend, outputFrameCount: u64, pInputFrameCount: ^u64) -> result,
	// Optional. Latency mitigation will be disabled. 
	onGetExpectedOutputFrameCount: proc "c" (pUserData: rawptr, pBackend: ^resampling_backend, inputFrameCount: u64, pOutputFrameCount: ^u64) -> result,
	// Optional. Latency mitigation will be disabled. 
	onReset:                       proc "c" (pUserData: rawptr, pBackend: ^resampling_backend) -> result,
}
```

### [resource\_manager ¶](#resource_manager) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L204)

```
resource_manager :: struct {
	config:              resource_manager_config,
	pRootDataBufferNode: ^resource_manager_data_buffer_node,
	// The root buffer in the binary tree. 
	dataBufferBSTLock:   mutex,
	// For synchronizing access to the data buffer binary tree. 
	jobThreads:          [64]thread,
	// The threads for executing jobs. 
	jobQueue:            job_queue,
	// Multi-consumer, multi-producer job queue for managing jobs for asynchronous decoding and streaming. 
	defaultVFS:          default_vfs,
	// Only used if a custom VFS is not specified. 
	log:                 log,
}
```

##### Related Procedures With Parameters

* [resource\_manager\_data\_buffer\_init](/vendor/miniaudio/#resource_manager_data_buffer_init)
* [resource\_manager\_data\_buffer\_init\_copy](/vendor/miniaudio/#resource_manager_data_buffer_init_copy)
* [resource\_manager\_data\_buffer\_init\_ex](/vendor/miniaudio/#resource_manager_data_buffer_init_ex)
* [resource\_manager\_data\_buffer\_init\_w](/vendor/miniaudio/#resource_manager_data_buffer_init_w)
* [resource\_manager\_data\_source\_init](/vendor/miniaudio/#resource_manager_data_source_init)
* [resource\_manager\_data\_source\_init\_copy](/vendor/miniaudio/#resource_manager_data_source_init_copy)
* [resource\_manager\_data\_source\_init\_ex](/vendor/miniaudio/#resource_manager_data_source_init_ex)
* [resource\_manager\_data\_source\_init\_w](/vendor/miniaudio/#resource_manager_data_source_init_w)
* [resource\_manager\_data\_stream\_init](/vendor/miniaudio/#resource_manager_data_stream_init)
* [resource\_manager\_data\_stream\_init\_ex](/vendor/miniaudio/#resource_manager_data_stream_init_ex)
* [resource\_manager\_data\_stream\_init\_w](/vendor/miniaudio/#resource_manager_data_stream_init_w)
* [resource\_manager\_get\_log](/vendor/miniaudio/#resource_manager_get_log)
* [resource\_manager\_init](/vendor/miniaudio/#resource_manager_init)
* [resource\_manager\_next\_job](/vendor/miniaudio/#resource_manager_next_job)
* [resource\_manager\_post\_job](/vendor/miniaudio/#resource_manager_post_job)
* [resource\_manager\_post\_job\_quit](/vendor/miniaudio/#resource_manager_post_job_quit)
* [resource\_manager\_process\_job](/vendor/miniaudio/#resource_manager_process_job)
* [resource\_manager\_process\_next\_job](/vendor/miniaudio/#resource_manager_process_next_job)
* [resource\_manager\_register\_decoded\_data](/vendor/miniaudio/#resource_manager_register_decoded_data)
* [resource\_manager\_register\_decoded\_data\_w](/vendor/miniaudio/#resource_manager_register_decoded_data_w)
* [resource\_manager\_register\_encoded\_data](/vendor/miniaudio/#resource_manager_register_encoded_data)
* [resource\_manager\_register\_encoded\_data\_w](/vendor/miniaudio/#resource_manager_register_encoded_data_w)
* [resource\_manager\_register\_file](/vendor/miniaudio/#resource_manager_register_file)
* [resource\_manager\_register\_file\_w](/vendor/miniaudio/#resource_manager_register_file_w)
* [resource\_manager\_uninit](/vendor/miniaudio/#resource_manager_uninit)
* [resource\_manager\_unregister\_data](/vendor/miniaudio/#resource_manager_unregister_data)
* [resource\_manager\_unregister\_data\_w](/vendor/miniaudio/#resource_manager_unregister_data_w)
* [resource\_manager\_unregister\_file](/vendor/miniaudio/#resource_manager_unregister_file)
* [resource\_manager\_unregister\_file\_w](/vendor/miniaudio/#resource_manager_unregister_file_w)



##### Related Procedures With Returns

* [engine\_get\_resource\_manager](/vendor/miniaudio/#engine_get_resource_manager)

### [resource\_manager\_config ¶](#resource_manager_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L187)

```
resource_manager_config :: struct {
	allocationCallbacks:            allocation_callbacks,
	pLog:                           ^log,
	decodedFormat:                  format,
	// The decoded format to use. Set to ma_format_unknown (default) to use the file's native format. 
	decodedChannels:                u32,
	// The decoded channel count to use. Set to 0 (default) to use the file's native channel count. 
	decodedSampleRate:              u32,
	// the decoded sample rate to use. Set to 0 (default) to use the file's native sample rate. 
	jobThreadCount:                 u32,
	// Set to 0 if you want to self-manage your job threads. Defaults to 1. 
	jobThreadStackSize:             uint,
	jobQueueCapacity:               u32,
	// The maximum number of jobs that can fit in the queue at a time. Defaults to MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_CAPACITY. Cannot be zero. 
	flags:                          u32,
	pVFS:                           ^vfs,
	// Can be NULL in which case defaults will be used. 
	ppCustomDecodingBackendVTables: ^[^]decoding_backend_vtable,
	customDecodingBackendCount:     u32,
	pCustomDecodingBackendUserData: rawptr,
	resampling:                     resampler_config,
}
```

##### Related Procedures With Parameters

* [resource\_manager\_init](/vendor/miniaudio/#resource_manager_init)



##### Related Procedures With Returns

* [resource\_manager\_config\_init](/vendor/miniaudio/#resource_manager_config_init)

### [resource\_manager\_data\_buffer ¶](#resource_manager_data_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L130)

```
resource_manager_data_buffer :: struct {
	ds:                     data_source_base,
	// Base data source. A data buffer is a data source. 
	pResourceManager:       ^resource_manager,
	// A pointer to the resource manager that owns this buffer. 
	pNode:                  ^resource_manager_data_buffer_node,
	// The data node. This is reference counted and is what supplies the data. 
	flags:                  bit_set[resource_manager_flag; u32],
	// The flags that were passed used to initialize the buffer. 
	executionCounter:       u32,
	// atomic
	// For allocating execution orders for jobs. 
	executionPointer:       u32,
	// atomic
	// For managing the order of execution for asynchronous jobs relating to this object. Incremented as jobs complete processing. 
	seekTargetInPCMFrames:  u64,
	// Only updated by the public API. Never written nor read from the job thread. 
	seekToCursorOnNextRead: b32,
	// On the next read we need to seek to the frame cursor. 
	result:                 result,
	// atomic
	// Keeps track of a result of decoding. Set to MA_BUSY while the buffer is still loading. Set to MA_SUCCESS when loading is finished successfully. Otherwise set to some other code. 
	isLooping:              b32,
	// atomic
	// Can be read and written by different threads at the same time. Must be used atomically. 
	isConnectorInitialized: b32,
	// Used for asynchronous loading to ensure we don't try to initialize the connector multiple times while waiting for the node to fully load. 
	connector:              struct #raw_union {
		decoder:     decoder,
		// Supply type is ma_resource_manager_data_supply_type_encoded 
		buffer:      audio_buffer,
		// Supply type is ma_resource_manager_data_supply_type_decoded 
		pagedBuffer: paged_audio_buffer,
	},
}
```

##### Related Procedures With Parameters

* [resource\_manager\_data\_buffer\_get\_available\_frames](/vendor/miniaudio/#resource_manager_data_buffer_get_available_frames)
* [resource\_manager\_data\_buffer\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_buffer_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_buffer\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_buffer_get_data_format)
* [resource\_manager\_data\_buffer\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_buffer_get_length_in_pcm_frames)
* [resource\_manager\_data\_buffer\_init](/vendor/miniaudio/#resource_manager_data_buffer_init)
* [resource\_manager\_data\_buffer\_init\_copy](/vendor/miniaudio/#resource_manager_data_buffer_init_copy)
* [resource\_manager\_data\_buffer\_init\_ex](/vendor/miniaudio/#resource_manager_data_buffer_init_ex)
* [resource\_manager\_data\_buffer\_init\_w](/vendor/miniaudio/#resource_manager_data_buffer_init_w)
* [resource\_manager\_data\_buffer\_is\_looping](/vendor/miniaudio/#resource_manager_data_buffer_is_looping)
* [resource\_manager\_data\_buffer\_read\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_buffer_read_pcm_frames)
* [resource\_manager\_data\_buffer\_result](/vendor/miniaudio/#resource_manager_data_buffer_result)
* [resource\_manager\_data\_buffer\_seek\_to\_pcm\_frame](/vendor/miniaudio/#resource_manager_data_buffer_seek_to_pcm_frame)
* [resource\_manager\_data\_buffer\_set\_looping](/vendor/miniaudio/#resource_manager_data_buffer_set_looping)
* [resource\_manager\_data\_buffer\_uninit](/vendor/miniaudio/#resource_manager_data_buffer_uninit)

### [resource\_manager\_data\_buffer\_node ¶](#resource_manager_data_buffer_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L117)

```
resource_manager_data_buffer_node :: struct {
	hashedName32:                 u32,
	// The hashed name. This is the key. 
	refCount:                     u32,
	result:                       result,
	// atomic
	// Result from asynchronous loading. When loading set to MA_BUSY. When fully loaded set to MA_SUCCESS. When deleting set to MA_UNAVAILABLE. 
	executionCounter:             u32,
	// atomic
	// For allocating execution orders for jobs. 
	executionPointer:             u32,
	// atomic
	// For managing the order of execution for asynchronous jobs relating to this object. Incremented as jobs complete processing. 
	isDataOwnedByResourceManager: b32,
	// Set to true when the underlying data buffer was allocated the resource manager. Set to false if it is owned by the application (via ma_resource_manager_register_*()). 
	data:                         resource_manager_data_supply,
	pParent:                      ^resource_manager_data_buffer_node,
	pChildLo:                     ^resource_manager_data_buffer_node,
	pChildHi:                     ^resource_manager_data_buffer_node,
}
```

### [resource\_manager\_data\_source ¶](#resource_manager_data_source) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L176)

```
resource_manager_data_source :: struct {
	backend:          struct #raw_union {
		buffer: resource_manager_data_buffer,
		stream: resource_manager_data_stream,
	},
	// Must be the first item because we need the first item to be the data source callbacks for the buffer or stream. 
	flags:            u32,
	// The flags that were passed in to ma_resource_manager_data_source_init(). 
	executionCounter: u32,
	// atomic
	// For allocating execution orders for jobs. 
	executionPointer: u32,
}
```

##### Related Procedures With Parameters

* [resource\_manager\_data\_source\_get\_available\_frames](/vendor/miniaudio/#resource_manager_data_source_get_available_frames)
* [resource\_manager\_data\_source\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_source_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_source\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_source_get_data_format)
* [resource\_manager\_data\_source\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_source_get_length_in_pcm_frames)
* [resource\_manager\_data\_source\_init](/vendor/miniaudio/#resource_manager_data_source_init)
* [resource\_manager\_data\_source\_init\_copy](/vendor/miniaudio/#resource_manager_data_source_init_copy)
* [resource\_manager\_data\_source\_init\_ex](/vendor/miniaudio/#resource_manager_data_source_init_ex)
* [resource\_manager\_data\_source\_init\_w](/vendor/miniaudio/#resource_manager_data_source_init_w)
* [resource\_manager\_data\_source\_is\_looping](/vendor/miniaudio/#resource_manager_data_source_is_looping)
* [resource\_manager\_data\_source\_read\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_source_read_pcm_frames)
* [resource\_manager\_data\_source\_result](/vendor/miniaudio/#resource_manager_data_source_result)
* [resource\_manager\_data\_source\_seek\_to\_pcm\_frame](/vendor/miniaudio/#resource_manager_data_source_seek_to_pcm_frame)
* [resource\_manager\_data\_source\_set\_looping](/vendor/miniaudio/#resource_manager_data_source_set_looping)
* [resource\_manager\_data\_source\_uninit](/vendor/miniaudio/#resource_manager_data_source_uninit)

### [resource\_manager\_data\_source\_config ¶](#resource_manager_data_source_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L74)

```
resource_manager_data_source_config :: struct {
	pFilePath:                   cstring,
	pFilePathW:                  [^]u16,
	pNotifications:              ^resource_manager_pipeline_notifications,
	initialSeekPointInPCMFrames: u64,
	rangeBegInPCMFrames:         u64,
	rangeEndInPCMFrames:         u64,
	loopPointBegInPCMFrames:     u64,
	loopPointEndInPCMFrames:     u64,
	flags:                       u32,
	isLooping:                   b32,
}
```

##### Related Procedures With Parameters

* [resource\_manager\_data\_buffer\_init\_ex](/vendor/miniaudio/#resource_manager_data_buffer_init_ex)
* [resource\_manager\_data\_source\_init\_ex](/vendor/miniaudio/#resource_manager_data_source_init_ex)
* [resource\_manager\_data\_stream\_init\_ex](/vendor/miniaudio/#resource_manager_data_stream_init_ex)



##### Related Procedures With Returns

* [resource\_manager\_data\_source\_config\_init](/vendor/miniaudio/#resource_manager_data_source_config_init)

### [resource\_manager\_data\_source\_flag ¶](#resource_manager_data_source_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L13)

```
resource_manager_data_source_flag :: enum i32 {
	STREAM         = 0, // When set, does not load the entire data source in memory. Disk I/O will happen on job threads.
	DECODE         = 1, // Decode data before storing in memory. When set, decoding is done at the resource manager level rather than the mixing thread. Results in faster mixing, but higher memory usage.
	ASYNC          = 2, // When set, the resource manager will load the data source asynchronously.
	WAIT_INIT      = 3, // When set, waits for initialization of the underlying data source before returning from ma_resource_manager_data_source_init().
	UNKNOWN_LENGTH = 4, // Gives the resource manager a hint that the length of the data source is unknown and calling `ma_data_source_get_length_in_pcm_frames()` should be avoided.
	LOOPING        = 5, // When set, configures the data source to loop by default.
}
```

### [resource\_manager\_data\_source\_flags ¶](#resource_manager_data_source_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L22)

```
resource_manager_data_source_flags :: bit_set[resource_manager_data_source_flag; u32]
```

### [resource\_manager\_data\_stream ¶](#resource_manager_data_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L149)

```
resource_manager_data_stream :: struct {
	ds:                     data_source_base,
	// Base data source. A data stream is a data source. 
	pResourceManager:       ^resource_manager,
	// A pointer to the resource manager that owns this data stream. 
	flags:                  u32,
	// The flags that were passed used to initialize the stream. 
	decoder:                decoder,
	// Used for filling pages with data. This is only ever accessed by the job thread. The public API should never touch this. 
	isDecoderInitialized:   b32,
	// Required for determining whether or not the decoder should be uninitialized in MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_STREAM. 
	totalLengthInPCMFrames: u64,
	// This is calculated when first loaded by the MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_STREAM. 
	relativeCursor:         u32,
	// The playback cursor, relative to the current page. Only ever accessed by the public API. Never accessed by the job thread. 
	absoluteCursor:         u64,
	// atomic
	// The playback cursor, in absolute position starting from the start of the file. 
	currentPageIndex:       u32,
	// Toggles between 0 and 1. Index 0 is the first half of pPageData. Index 1 is the second half. Only ever accessed by the public API. Never accessed by the job thread. 
	executionCounter:       u32,
	// atomic
	// For allocating execution orders for jobs. 
	executionPointer:       u32,
	// Written by the public API, read by the job thread. 
	isLooping:              b32,
	// Written by the job thread, read by the public API. 
	pPageData:              rawptr,
	// Buffer containing the decoded data of each page. Allocated once at initialization time. 
	pageFrameCount:         [2]u32,
	// Written and read by both the public API and the job thread. These must be atomic. 
	result:                 result,
	// atomic
	// Result from asynchronous loading. When loading set to MA_BUSY. When initialized set to MA_SUCCESS. When deleting set to MA_UNAVAILABLE. If an error occurs when loading, set to an error code. 
	isDecoderAtEnd:         b32,
	// atomic
	// Whether or not the decoder has reached the end. 
	isPageValid:            [2]b32,
	// atomic
	// Booleans to indicate whether or not a page is valid. Set to false by the public API, set to true by the job thread. Set to false as the pages are consumed, true when they are filled. 
	seekCounter:            b32,
}
```

##### Related Procedures With Parameters

* [resource\_manager\_data\_stream\_get\_available\_frames](/vendor/miniaudio/#resource_manager_data_stream_get_available_frames)
* [resource\_manager\_data\_stream\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_stream_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_stream\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_stream_get_data_format)
* [resource\_manager\_data\_stream\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_stream_get_length_in_pcm_frames)
* [resource\_manager\_data\_stream\_init](/vendor/miniaudio/#resource_manager_data_stream_init)
* [resource\_manager\_data\_stream\_init\_ex](/vendor/miniaudio/#resource_manager_data_stream_init_ex)
* [resource\_manager\_data\_stream\_init\_w](/vendor/miniaudio/#resource_manager_data_stream_init_w)
* [resource\_manager\_data\_stream\_is\_looping](/vendor/miniaudio/#resource_manager_data_stream_is_looping)
* [resource\_manager\_data\_stream\_read\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_stream_read_pcm_frames)
* [resource\_manager\_data\_stream\_result](/vendor/miniaudio/#resource_manager_data_stream_result)
* [resource\_manager\_data\_stream\_seek\_to\_pcm\_frame](/vendor/miniaudio/#resource_manager_data_stream_seek_to_pcm_frame)
* [resource\_manager\_data\_stream\_set\_looping](/vendor/miniaudio/#resource_manager_data_stream_set_looping)
* [resource\_manager\_data\_stream\_uninit](/vendor/miniaudio/#resource_manager_data_stream_uninit)

### [resource\_manager\_data\_supply ¶](#resource_manager_data_supply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L94)

```
resource_manager_data_supply :: struct {
	type:    resource_manager_data_supply_type,
	// atomic
	// Read and written from different threads so needs to be accessed atomically. 
	backend: struct #raw_union {
		encoded:      struct {
			pData:       rawptr,
			sizeInBytes: uint,
		},
		decoded:      struct {
			pData:             rawptr,
			totalFrameCount:   u64,
			decodedFrameCount: u64,
			format:            format,
			channels:          u32,
			sampleRate:        u32,
		},
		decodedPaged: struct {
			data:              paged_audio_buffer_data,
			decodedFrameCount: u64,
			sampleRate:        u32,
		},
	},
}
```

### [resource\_manager\_data\_supply\_type ¶](#resource_manager_data_supply_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L87)

```
resource_manager_data_supply_type :: enum i32 {
	unknown       = 0, // Used for determining whether or the data supply has been initialized.
	encoded,           // Data supply is an encoded buffer. Connector is ma_decoder.
	decoded,           // Data supply is a decoded buffer. Connector is ma_audio_buffer.
	decoded_paged,     // Data supply is a linked list of decoded buffers. Connector is ma_paged_audio_buffer.
}
```

### [resource\_manager\_flag ¶](#resource_manager_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L64)

```
resource_manager_flag :: enum i32 {
	// Indicates ma_resource_manager_next_job() should not block. Only valid when the job thread count is 0. 
	NON_BLOCKING = 0, 
	// Disables any kind of multithreading. Implicitly enables MA_RESOURCE_MANAGER_FLAG_NON_BLOCKING. 
	NO_THREADING = 1, 
}
```

### [resource\_manager\_flags ¶](#resource_manager_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L72)

```
resource_manager_flags :: bit_set[resource_manager_flag; u32]
```

### [resource\_manager\_job ¶](#resource_manager_job) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L45)

```
resource_manager_job :: job
```

 

BEGIN BACKWARDS COMPATIBILITY
TODO: Remove this block in version 0.12.




##### Related Procedures With Parameters

* [device\_job\_thread\_next](/vendor/miniaudio/#device_job_thread_next)
* [device\_job\_thread\_post](/vendor/miniaudio/#device_job_thread_post)
* [job\_process](/vendor/miniaudio/#job_process)
* [job\_queue\_next](/vendor/miniaudio/#job_queue_next)
* [job\_queue\_post](/vendor/miniaudio/#job_queue_post)
* [resource\_manager\_next\_job](/vendor/miniaudio/#resource_manager_next_job)
* [resource\_manager\_post\_job](/vendor/miniaudio/#resource_manager_post_job)
* [resource\_manager\_process\_job](/vendor/miniaudio/#resource_manager_process_job)



##### Related Procedures With Returns

* [job\_init](/vendor/miniaudio/#job_init)

### [resource\_manager\_job\_queue ¶](#resource_manager_job_queue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L50)

```
resource_manager_job_queue :: job_queue
```

##### Related Procedures With Parameters

* [job\_queue\_init](/vendor/miniaudio/#job_queue_init)
* [job\_queue\_init\_preallocated](/vendor/miniaudio/#job_queue_init_preallocated)
* [job\_queue\_next](/vendor/miniaudio/#job_queue_next)
* [job\_queue\_post](/vendor/miniaudio/#job_queue_post)
* [job\_queue\_uninit](/vendor/miniaudio/#job_queue_uninit)

### [resource\_manager\_job\_queue\_config ¶](#resource_manager_job_queue_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L48)

```
resource_manager_job_queue_config :: job_queue_config
```

##### Related Procedures With Parameters

* [job\_queue\_get\_heap\_size](/vendor/miniaudio/#job_queue_get_heap_size)
* [job\_queue\_init](/vendor/miniaudio/#job_queue_init)
* [job\_queue\_init\_preallocated](/vendor/miniaudio/#job_queue_init_preallocated)



##### Related Procedures With Returns

* [job\_queue\_config\_init](/vendor/miniaudio/#job_queue_config_init)

### [resource\_manager\_pipeline\_notifications ¶](#resource_manager_pipeline_notifications) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L32)

```
resource_manager_pipeline_notifications :: struct {
	init: resource_manager_pipeline_stage_notification,
	// Initialization of the decoder. 
	done: resource_manager_pipeline_stage_notification,
}
```

##### Related Procedures With Parameters

* [resource\_manager\_data\_buffer\_init](/vendor/miniaudio/#resource_manager_data_buffer_init)
* [resource\_manager\_data\_buffer\_init\_w](/vendor/miniaudio/#resource_manager_data_buffer_init_w)
* [resource\_manager\_data\_source\_init](/vendor/miniaudio/#resource_manager_data_source_init)
* [resource\_manager\_data\_source\_init\_w](/vendor/miniaudio/#resource_manager_data_source_init_w)
* [resource\_manager\_data\_stream\_init](/vendor/miniaudio/#resource_manager_data_stream_init)
* [resource\_manager\_data\_stream\_init\_w](/vendor/miniaudio/#resource_manager_data_stream_init_w)



##### Related Procedures With Returns

* [resource\_manager\_pipeline\_notifications\_init](/vendor/miniaudio/#resource_manager_pipeline_notifications_init)

### [resource\_manager\_pipeline\_stage\_notification ¶](#resource_manager_pipeline_stage_notification) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L27)

```
resource_manager_pipeline_stage_notification :: struct {
	pNotification: ^async_notification,
	pFence:        ^fence,
}
```

 

Pipeline notifications used by the resource manager. Made up of both an async notification and a fence, both of which are optional.

### [result ¶](#result) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L122)

```
result :: enum i32 {
	SUCCESS                        = 0, 
	ERROR                          = -1,   // A generic error.
	INVALID_ARGS                   = -2, 
	INVALID_OPERATION              = -3, 
	OUT_OF_MEMORY                  = -4, 
	OUT_OF_RANGE                   = -5, 
	ACCESS_DENIED                  = -6, 
	DOES_NOT_EXIST                 = -7, 
	ALREADY_EXISTS                 = -8, 
	TOO_MANY_OPEN_FILES            = -9, 
	INVALID_FILE                   = -01, 
	TOO_BIG                        = -11, 
	PATH_TOO_LONG                  = -21, 
	NAME_TOO_LONG                  = -31, 
	NOT_DIRECTORY                  = -41, 
	IS_DIRECTORY                   = -51, 
	DIRECTORY_NOT_EMPTY            = -61, 
	AT_END                         = -71, 
	NO_SPACE                       = -81, 
	BUSY                           = -91, 
	IO_ERROR                       = -02, 
	INTERRUPT                      = -12, 
	UNAVAILABLE                    = -22, 
	ALREADY_IN_USE                 = -32, 
	BAD_ADDRESS                    = -42, 
	BAD_SEEK                       = -52, 
	BAD_PIPE                       = -62, 
	DEADLOCK                       = -72, 
	TOO_MANY_LINKS                 = -82, 
	NOT_IMPLEMENTED                = -92, 
	NO_MESSAGE                     = -03, 
	BAD_MESSAGE                    = -13, 
	NO_DATA_AVAILABLE              = -23, 
	INVALID_DATA                   = -33, 
	TIMEOUT                        = -43, 
	NO_NETWORK                     = -53, 
	NOT_UNIQUE                     = -63, 
	NOT_SOCKET                     = -73, 
	NO_ADDRESS                     = -83, 
	BAD_PROTOCOL                   = -93, 
	PROTOCOL_UNAVAILABLE           = -04, 
	PROTOCOL_NOT_SUPPORTED         = -14, 
	PROTOCOL_FAMILY_NOT_SUPPORTED  = -24, 
	ADDRESS_FAMILY_NOT_SUPPORTED   = -34, 
	SOCKET_NOT_SUPPORTED           = -44, 
	CONNECTION_RESET               = -54, 
	ALREADY_CONNECTED              = -64, 
	NOT_CONNECTED                  = -74, 
	CONNECTION_REFUSED             = -84, 
	NO_HOST                        = -94, 
	IN_PROGRESS                    = -05, 
	CANCELLED                      = -15, 
	MEMORY_ALREADY_MAPPED          = -25, 
	// General non-standard errors. 
	CRC_MISMATCH                   = -100, 
	// General miniaudio-specific errors. 
	FORMAT_NOT_SUPPORTED           = -200, 
	DEVICE_TYPE_NOT_SUPPORTED      = -201, 
	SHARE_MODE_NOT_SUPPORTED       = -202, 
	NO_BACKEND                     = -203, 
	NO_DEVICE                      = -204, 
	API_NOT_FOUND                  = -205, 
	INVALID_DEVICE_CONFIG          = -206, 
	LOOP                           = -207, 
	BACKEND_NOT_ENABLED            = -208, 
	// State errors. 
	DEVICE_NOT_INITIALIZED         = -300, 
	DEVICE_ALREADY_INITIALIZED     = -301, 
	DEVICE_NOT_STARTED             = -302, 
	DEVICE_NOT_STOPPED             = -303, 
	// Operation errors. 
	FAILED_TO_INIT_BACKEND         = -400, 
	FAILED_TO_OPEN_BACKEND_DEVICE  = -401, 
	FAILED_TO_START_BACKEND_DEVICE = -402, 
	FAILED_TO_STOP_BACKEND_DEVICE  = -403, 
}
```

##### Related Procedures With Parameters

* [result\_description](/vendor/miniaudio/#result_description)



##### Related Procedures With Returns

* [async\_notification\_event\_init](/vendor/miniaudio/#async_notification_event_init)
* [async\_notification\_event\_signal](/vendor/miniaudio/#async_notification_event_signal)
* [async\_notification\_event\_uninit](/vendor/miniaudio/#async_notification_event_uninit)
* [async\_notification\_event\_wait](/vendor/miniaudio/#async_notification_event_wait)
* [async\_notification\_poll\_init](/vendor/miniaudio/#async_notification_poll_init)
* [async\_notification\_signal](/vendor/miniaudio/#async_notification_signal)
* [audio\_buffer\_alloc\_and\_init](/vendor/miniaudio/#audio_buffer_alloc_and_init)
* [audio\_buffer\_get\_available\_frames](/vendor/miniaudio/#audio_buffer_get_available_frames)
* [audio\_buffer\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_get_cursor_in_pcm_frames)
* [audio\_buffer\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_get_length_in_pcm_frames)
* [audio\_buffer\_init](/vendor/miniaudio/#audio_buffer_init)
* [audio\_buffer\_init\_copy](/vendor/miniaudio/#audio_buffer_init_copy)
* [audio\_buffer\_map](/vendor/miniaudio/#audio_buffer_map)
* [audio\_buffer\_ref\_get\_available\_frames](/vendor/miniaudio/#audio_buffer_ref_get_available_frames)
* [audio\_buffer\_ref\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_ref_get_cursor_in_pcm_frames)
* [audio\_buffer\_ref\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#audio_buffer_ref_get_length_in_pcm_frames)
* [audio\_buffer\_ref\_init](/vendor/miniaudio/#audio_buffer_ref_init)
* [audio\_buffer\_ref\_map](/vendor/miniaudio/#audio_buffer_ref_map)
* [audio\_buffer\_ref\_seek\_to\_pcm\_frame](/vendor/miniaudio/#audio_buffer_ref_seek_to_pcm_frame)
* [audio\_buffer\_ref\_set\_data](/vendor/miniaudio/#audio_buffer_ref_set_data)
* [audio\_buffer\_ref\_unmap](/vendor/miniaudio/#audio_buffer_ref_unmap)
* [audio\_buffer\_seek\_to\_pcm\_frame](/vendor/miniaudio/#audio_buffer_seek_to_pcm_frame)
* [audio\_buffer\_unmap](/vendor/miniaudio/#audio_buffer_unmap)
* [biquad\_clear\_cache](/vendor/miniaudio/#biquad_clear_cache)
* [biquad\_get\_heap\_size](/vendor/miniaudio/#biquad_get_heap_size)
* [biquad\_init](/vendor/miniaudio/#biquad_init)
* [biquad\_init\_preallocated](/vendor/miniaudio/#biquad_init_preallocated)
* [biquad\_node\_init](/vendor/miniaudio/#biquad_node_init)
* [biquad\_node\_reinit](/vendor/miniaudio/#biquad_node_reinit)
* [biquad\_process\_pcm\_frames](/vendor/miniaudio/#biquad_process_pcm_frames)
* [biquad\_reinit](/vendor/miniaudio/#biquad_reinit)
* [bpf2\_get\_heap\_size](/vendor/miniaudio/#bpf2_get_heap_size)
* [bpf2\_init](/vendor/miniaudio/#bpf2_init)
* [bpf2\_init\_preallocated](/vendor/miniaudio/#bpf2_init_preallocated)
* [bpf2\_process\_pcm\_frames](/vendor/miniaudio/#bpf2_process_pcm_frames)
* [bpf2\_reinit](/vendor/miniaudio/#bpf2_reinit)
* [bpf\_get\_heap\_size](/vendor/miniaudio/#bpf_get_heap_size)
* [bpf\_init](/vendor/miniaudio/#bpf_init)
* [bpf\_init\_preallocated](/vendor/miniaudio/#bpf_init_preallocated)
* [bpf\_node\_init](/vendor/miniaudio/#bpf_node_init)
* [bpf\_node\_reinit](/vendor/miniaudio/#bpf_node_reinit)
* [bpf\_process\_pcm\_frames](/vendor/miniaudio/#bpf_process_pcm_frames)
* [bpf\_reinit](/vendor/miniaudio/#bpf_reinit)
* [channel\_converter\_get\_heap\_size](/vendor/miniaudio/#channel_converter_get_heap_size)
* [channel\_converter\_get\_input\_channel\_map](/vendor/miniaudio/#channel_converter_get_input_channel_map)
* [channel\_converter\_get\_output\_channel\_map](/vendor/miniaudio/#channel_converter_get_output_channel_map)
* [channel\_converter\_init](/vendor/miniaudio/#channel_converter_init)
* [channel\_converter\_init\_preallocated](/vendor/miniaudio/#channel_converter_init_preallocated)
* [channel\_converter\_process\_pcm\_frames](/vendor/miniaudio/#channel_converter_process_pcm_frames)
* [context\_enumerate\_devices](/vendor/miniaudio/#context_enumerate_devices)
* [context\_get\_device\_info](/vendor/miniaudio/#context_get_device_info)
* [context\_get\_devices](/vendor/miniaudio/#context_get_devices)
* [context\_init](/vendor/miniaudio/#context_init)
* [context\_uninit](/vendor/miniaudio/#context_uninit)
* [data\_converter\_get\_expected\_output\_frame\_count](/vendor/miniaudio/#data_converter_get_expected_output_frame_count)
* [data\_converter\_get\_heap\_size](/vendor/miniaudio/#data_converter_get_heap_size)
* [data\_converter\_get\_input\_channel\_map](/vendor/miniaudio/#data_converter_get_input_channel_map)
* [data\_converter\_get\_output\_channel\_map](/vendor/miniaudio/#data_converter_get_output_channel_map)
* [data\_converter\_get\_required\_input\_frame\_count](/vendor/miniaudio/#data_converter_get_required_input_frame_count)
* [data\_converter\_init](/vendor/miniaudio/#data_converter_init)
* [data\_converter\_init\_preallocated](/vendor/miniaudio/#data_converter_init_preallocated)
* [data\_converter\_process\_pcm\_frames](/vendor/miniaudio/#data_converter_process_pcm_frames)
* [data\_converter\_reset](/vendor/miniaudio/#data_converter_reset)
* [data\_converter\_set\_rate](/vendor/miniaudio/#data_converter_set_rate)
* [data\_converter\_set\_rate\_ratio](/vendor/miniaudio/#data_converter_set_rate_ratio)
* [data\_source\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#data_source_get_cursor_in_pcm_frames)
* [data\_source\_get\_cursor\_in\_seconds](/vendor/miniaudio/#data_source_get_cursor_in_seconds)
* [data\_source\_get\_data\_format](/vendor/miniaudio/#data_source_get_data_format)
* [data\_source\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#data_source_get_length_in_pcm_frames)
* [data\_source\_get\_length\_in\_seconds](/vendor/miniaudio/#data_source_get_length_in_seconds)
* [data\_source\_init](/vendor/miniaudio/#data_source_init)
* [data\_source\_node\_init](/vendor/miniaudio/#data_source_node_init)
* [data\_source\_node\_set\_looping](/vendor/miniaudio/#data_source_node_set_looping)
* [data\_source\_read\_pcm\_frames](/vendor/miniaudio/#data_source_read_pcm_frames)
* [data\_source\_seek\_pcm\_frames](/vendor/miniaudio/#data_source_seek_pcm_frames)
* [data\_source\_seek\_seconds](/vendor/miniaudio/#data_source_seek_seconds)
* [data\_source\_seek\_to\_pcm\_frame](/vendor/miniaudio/#data_source_seek_to_pcm_frame)
* [data\_source\_seek\_to\_seconds](/vendor/miniaudio/#data_source_seek_to_seconds)
* [data\_source\_set\_current](/vendor/miniaudio/#data_source_set_current)
* [data\_source\_set\_loop\_point\_in\_pcm\_frames](/vendor/miniaudio/#data_source_set_loop_point_in_pcm_frames)
* [data\_source\_set\_looping](/vendor/miniaudio/#data_source_set_looping)
* [data\_source\_set\_next](/vendor/miniaudio/#data_source_set_next)
* [data\_source\_set\_next\_callback](/vendor/miniaudio/#data_source_set_next_callback)
* [data\_source\_set\_range\_in\_pcm\_frames](/vendor/miniaudio/#data_source_set_range_in_pcm_frames)
* [decode\_file](/vendor/miniaudio/#decode_file)
* [decode\_from\_vfs](/vendor/miniaudio/#decode_from_vfs)
* [decode\_memory](/vendor/miniaudio/#decode_memory)
* [decoder\_get\_available\_frames](/vendor/miniaudio/#decoder_get_available_frames)
* [decoder\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#decoder_get_cursor_in_pcm_frames)
* [decoder\_get\_data\_format](/vendor/miniaudio/#decoder_get_data_format)
* [decoder\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#decoder_get_length_in_pcm_frames)
* [decoder\_init](/vendor/miniaudio/#decoder_init)
* [decoder\_init\_file](/vendor/miniaudio/#decoder_init_file)
* [decoder\_init\_file\_w](/vendor/miniaudio/#decoder_init_file_w)
* [decoder\_init\_memory](/vendor/miniaudio/#decoder_init_memory)
* [decoder\_init\_vfs](/vendor/miniaudio/#decoder_init_vfs)
* [decoder\_init\_vfs\_w](/vendor/miniaudio/#decoder_init_vfs_w)
* [decoder\_read\_pcm\_frames](/vendor/miniaudio/#decoder_read_pcm_frames)
* [decoder\_seek\_to\_pcm\_frame](/vendor/miniaudio/#decoder_seek_to_pcm_frame)
* [decoder\_uninit](/vendor/miniaudio/#decoder_uninit)
* [default\_vfs\_init](/vendor/miniaudio/#default_vfs_init)
* [delay\_init](/vendor/miniaudio/#delay_init)
* [delay\_node\_init](/vendor/miniaudio/#delay_node_init)
* [delay\_process\_pcm\_frames](/vendor/miniaudio/#delay_process_pcm_frames)
* [device\_get\_info](/vendor/miniaudio/#device_get_info)
* [device\_get\_master\_volume](/vendor/miniaudio/#device_get_master_volume)
* [device\_get\_master\_volume\_db](/vendor/miniaudio/#device_get_master_volume_db)
* [device\_get\_name](/vendor/miniaudio/#device_get_name)
* [device\_handle\_backend\_data\_callback](/vendor/miniaudio/#device_handle_backend_data_callback)
* [device\_init](/vendor/miniaudio/#device_init)
* [device\_init\_ex](/vendor/miniaudio/#device_init_ex)
* [device\_job\_thread\_init](/vendor/miniaudio/#device_job_thread_init)
* [device\_job\_thread\_next](/vendor/miniaudio/#device_job_thread_next)
* [device\_job\_thread\_post](/vendor/miniaudio/#device_job_thread_post)
* [device\_post\_init](/vendor/miniaudio/#device_post_init)
* [device\_set\_master\_volume](/vendor/miniaudio/#device_set_master_volume)
* [device\_set\_master\_volume\_db](/vendor/miniaudio/#device_set_master_volume_db)
* [device\_start](/vendor/miniaudio/#device_start)
* [device\_stop](/vendor/miniaudio/#device_stop)
* [duplex\_rb\_init](/vendor/miniaudio/#duplex_rb_init)
* [duplex\_rb\_uninit](/vendor/miniaudio/#duplex_rb_uninit)
* [encoder\_init](/vendor/miniaudio/#encoder_init)
* [encoder\_init\_file](/vendor/miniaudio/#encoder_init_file)
* [encoder\_init\_file\_w](/vendor/miniaudio/#encoder_init_file_w)
* [encoder\_init\_vfs](/vendor/miniaudio/#encoder_init_vfs)
* [encoder\_init\_vfs\_w](/vendor/miniaudio/#encoder_init_vfs_w)
* [encoder\_write\_pcm\_frames](/vendor/miniaudio/#encoder_write_pcm_frames)
* [engine\_init](/vendor/miniaudio/#engine_init)
* [engine\_node\_get\_heap\_size](/vendor/miniaudio/#engine_node_get_heap_size)
* [engine\_node\_init](/vendor/miniaudio/#engine_node_init)
* [engine\_node\_init\_preallocated](/vendor/miniaudio/#engine_node_init_preallocated)
* [engine\_play\_sound](/vendor/miniaudio/#engine_play_sound)
* [engine\_play\_sound\_ex](/vendor/miniaudio/#engine_play_sound_ex)
* [engine\_read\_pcm\_frames](/vendor/miniaudio/#engine_read_pcm_frames)
* [engine\_set\_gain\_db](/vendor/miniaudio/#engine_set_gain_db)
* [engine\_set\_time](/vendor/miniaudio/#engine_set_time)
* [engine\_set\_time\_in\_milliseconds](/vendor/miniaudio/#engine_set_time_in_milliseconds)
* [engine\_set\_time\_in\_pcm\_frames](/vendor/miniaudio/#engine_set_time_in_pcm_frames)
* [engine\_set\_volume](/vendor/miniaudio/#engine_set_volume)
* [engine\_start](/vendor/miniaudio/#engine_start)
* [engine\_stop](/vendor/miniaudio/#engine_stop)
* [event\_init](/vendor/miniaudio/#event_init)
* [event\_signal](/vendor/miniaudio/#event_signal)
* [event\_wait](/vendor/miniaudio/#event_wait)
* [fader\_init](/vendor/miniaudio/#fader_init)
* [fader\_process\_pcm\_frames](/vendor/miniaudio/#fader_process_pcm_frames)
* [fence\_acquire](/vendor/miniaudio/#fence_acquire)
* [fence\_init](/vendor/miniaudio/#fence_init)
* [fence\_release](/vendor/miniaudio/#fence_release)
* [fence\_wait](/vendor/miniaudio/#fence_wait)
* [gainer\_get\_heap\_size](/vendor/miniaudio/#gainer_get_heap_size)
* [gainer\_get\_master\_volume](/vendor/miniaudio/#gainer_get_master_volume)
* [gainer\_init](/vendor/miniaudio/#gainer_init)
* [gainer\_init\_preallocated](/vendor/miniaudio/#gainer_init_preallocated)
* [gainer\_process\_pcm\_frames](/vendor/miniaudio/#gainer_process_pcm_frames)
* [gainer\_set\_gain](/vendor/miniaudio/#gainer_set_gain)
* [gainer\_set\_gains](/vendor/miniaudio/#gainer_set_gains)
* [gainer\_set\_master\_volume](/vendor/miniaudio/#gainer_set_master_volume)
* [get\_backend\_from\_name](/vendor/miniaudio/#get_backend_from_name)
* [get\_enabled\_backends](/vendor/miniaudio/#get_enabled_backends)
* [hishelf2\_get\_heap\_size](/vendor/miniaudio/#hishelf2_get_heap_size)
* [hishelf2\_init](/vendor/miniaudio/#hishelf2_init)
* [hishelf2\_init\_preallocated](/vendor/miniaudio/#hishelf2_init_preallocated)
* [hishelf2\_process\_pcm\_frames](/vendor/miniaudio/#hishelf2_process_pcm_frames)
* [hishelf2\_reinit](/vendor/miniaudio/#hishelf2_reinit)
* [hishelf\_node\_init](/vendor/miniaudio/#hishelf_node_init)
* [hishelf\_node\_reinit](/vendor/miniaudio/#hishelf_node_reinit)
* [hpf1\_get\_heap\_size](/vendor/miniaudio/#hpf1_get_heap_size)
* [hpf1\_init](/vendor/miniaudio/#hpf1_init)
* [hpf1\_init\_preallocated](/vendor/miniaudio/#hpf1_init_preallocated)
* [hpf1\_process\_pcm\_frames](/vendor/miniaudio/#hpf1_process_pcm_frames)
* [hpf1\_reinit](/vendor/miniaudio/#hpf1_reinit)
* [hpf2\_get\_heap\_size](/vendor/miniaudio/#hpf2_get_heap_size)
* [hpf2\_init](/vendor/miniaudio/#hpf2_init)
* [hpf2\_init\_preallocated](/vendor/miniaudio/#hpf2_init_preallocated)
* [hpf2\_process\_pcm\_frames](/vendor/miniaudio/#hpf2_process_pcm_frames)
* [hpf2\_reinit](/vendor/miniaudio/#hpf2_reinit)
* [hpf\_get\_heap\_size](/vendor/miniaudio/#hpf_get_heap_size)
* [hpf\_init](/vendor/miniaudio/#hpf_init)
* [hpf\_init\_preallocated](/vendor/miniaudio/#hpf_init_preallocated)
* [hpf\_node\_init](/vendor/miniaudio/#hpf_node_init)
* [hpf\_node\_reinit](/vendor/miniaudio/#hpf_node_reinit)
* [hpf\_process\_pcm\_frames](/vendor/miniaudio/#hpf_process_pcm_frames)
* [hpf\_reinit](/vendor/miniaudio/#hpf_reinit)
* [job\_process](/vendor/miniaudio/#job_process)
* [job\_queue\_get\_heap\_size](/vendor/miniaudio/#job_queue_get_heap_size)
* [job\_queue\_init](/vendor/miniaudio/#job_queue_init)
* [job\_queue\_init\_preallocated](/vendor/miniaudio/#job_queue_init_preallocated)
* [job\_queue\_next](/vendor/miniaudio/#job_queue_next)
* [job\_queue\_post](/vendor/miniaudio/#job_queue_post)
* [linear\_resampler\_get\_expected\_output\_frame\_count](/vendor/miniaudio/#linear_resampler_get_expected_output_frame_count)
* [linear\_resampler\_get\_heap\_size](/vendor/miniaudio/#linear_resampler_get_heap_size)
* [linear\_resampler\_get\_required\_input\_frame\_count](/vendor/miniaudio/#linear_resampler_get_required_input_frame_count)
* [linear\_resampler\_init](/vendor/miniaudio/#linear_resampler_init)
* [linear\_resampler\_init\_preallocated](/vendor/miniaudio/#linear_resampler_init_preallocated)
* [linear\_resampler\_process\_pcm\_frames](/vendor/miniaudio/#linear_resampler_process_pcm_frames)
* [linear\_resampler\_reset](/vendor/miniaudio/#linear_resampler_reset)
* [linear\_resampler\_set\_rate](/vendor/miniaudio/#linear_resampler_set_rate)
* [linear\_resampler\_set\_rate\_ratio](/vendor/miniaudio/#linear_resampler_set_rate_ratio)
* [log\_init](/vendor/miniaudio/#log_init)
* [log\_post](/vendor/miniaudio/#log_post)
* [log\_postf](/vendor/miniaudio/#log_postf)
* [log\_postv](/vendor/miniaudio/#log_postv)
* [log\_register\_callback](/vendor/miniaudio/#log_register_callback)
* [log\_unregister\_callback](/vendor/miniaudio/#log_unregister_callback)
* [loshelf2\_get\_heap\_size](/vendor/miniaudio/#loshelf2_get_heap_size)
* [loshelf2\_init](/vendor/miniaudio/#loshelf2_init)
* [loshelf2\_init\_preallocated](/vendor/miniaudio/#loshelf2_init_preallocated)
* [loshelf2\_process\_pcm\_frames](/vendor/miniaudio/#loshelf2_process_pcm_frames)
* [loshelf2\_reinit](/vendor/miniaudio/#loshelf2_reinit)
* [loshelf\_node\_init](/vendor/miniaudio/#loshelf_node_init)
* [loshelf\_node\_reinit](/vendor/miniaudio/#loshelf_node_reinit)
* [lpf1\_clear\_cache](/vendor/miniaudio/#lpf1_clear_cache)
* [lpf1\_get\_heap\_size](/vendor/miniaudio/#lpf1_get_heap_size)
* [lpf1\_init](/vendor/miniaudio/#lpf1_init)
* [lpf1\_init\_preallocated](/vendor/miniaudio/#lpf1_init_preallocated)
* [lpf1\_process\_pcm\_frames](/vendor/miniaudio/#lpf1_process_pcm_frames)
* [lpf1\_reinit](/vendor/miniaudio/#lpf1_reinit)
* [lpf2\_clear\_cache](/vendor/miniaudio/#lpf2_clear_cache)
* [lpf2\_get\_heap\_size](/vendor/miniaudio/#lpf2_get_heap_size)
* [lpf2\_init](/vendor/miniaudio/#lpf2_init)
* [lpf2\_init\_preallocated](/vendor/miniaudio/#lpf2_init_preallocated)
* [lpf2\_process\_pcm\_frames](/vendor/miniaudio/#lpf2_process_pcm_frames)
* [lpf2\_reinit](/vendor/miniaudio/#lpf2_reinit)
* [lpf\_clear\_cache](/vendor/miniaudio/#lpf_clear_cache)
* [lpf\_get\_heap\_size](/vendor/miniaudio/#lpf_get_heap_size)
* [lpf\_init](/vendor/miniaudio/#lpf_init)
* [lpf\_init\_preallocated](/vendor/miniaudio/#lpf_init_preallocated)
* [lpf\_node\_init](/vendor/miniaudio/#lpf_node_init)
* [lpf\_node\_reinit](/vendor/miniaudio/#lpf_node_reinit)
* [lpf\_process\_pcm\_frames](/vendor/miniaudio/#lpf_process_pcm_frames)
* [lpf\_reinit](/vendor/miniaudio/#lpf_reinit)
* [ma\_mix\_pcm\_frames\_f32](/vendor/miniaudio/#ma_mix_pcm_frames_f32)
* [mutex\_init](/vendor/miniaudio/#mutex_init)
* [node\_attach\_output\_bus](/vendor/miniaudio/#node_attach_output_bus)
* [node\_detach\_all\_output\_buses](/vendor/miniaudio/#node_detach_all_output_buses)
* [node\_detach\_output\_bus](/vendor/miniaudio/#node_detach_output_bus)
* [node\_get\_heap\_size](/vendor/miniaudio/#node_get_heap_size)
* [node\_graph\_init](/vendor/miniaudio/#node_graph_init)
* [node\_graph\_read\_pcm\_frames](/vendor/miniaudio/#node_graph_read_pcm_frames)
* [node\_graph\_set\_time](/vendor/miniaudio/#node_graph_set_time)
* [node\_init](/vendor/miniaudio/#node_init)
* [node\_init\_preallocated](/vendor/miniaudio/#node_init_preallocated)
* [node\_set\_output\_bus\_volume](/vendor/miniaudio/#node_set_output_bus_volume)
* [node\_set\_state](/vendor/miniaudio/#node_set_state)
* [node\_set\_state\_time](/vendor/miniaudio/#node_set_state_time)
* [node\_set\_time](/vendor/miniaudio/#node_set_time)
* [noise\_get\_heap\_size](/vendor/miniaudio/#noise_get_heap_size)
* [noise\_init](/vendor/miniaudio/#noise_init)
* [noise\_init\_preallocated](/vendor/miniaudio/#noise_init_preallocated)
* [noise\_read\_pcm\_frames](/vendor/miniaudio/#noise_read_pcm_frames)
* [noise\_set\_amplitude](/vendor/miniaudio/#noise_set_amplitude)
* [noise\_set\_seed](/vendor/miniaudio/#noise_set_seed)
* [noise\_set\_type](/vendor/miniaudio/#noise_set_type)
* [notch2\_get\_heap\_size](/vendor/miniaudio/#notch2_get_heap_size)
* [notch2\_init](/vendor/miniaudio/#notch2_init)
* [notch2\_init\_preallocated](/vendor/miniaudio/#notch2_init_preallocated)
* [notch2\_process\_pcm\_frames](/vendor/miniaudio/#notch2_process_pcm_frames)
* [notch2\_reinit](/vendor/miniaudio/#notch2_reinit)
* [notch\_node\_init](/vendor/miniaudio/#notch_node_init)
* [notch\_node\_reinit](/vendor/miniaudio/#notch_node_reinit)
* [paged\_audio\_buffer\_data\_allocate\_and\_append\_page](/vendor/miniaudio/#paged_audio_buffer_data_allocate_and_append_page)
* [paged\_audio\_buffer\_data\_allocate\_page](/vendor/miniaudio/#paged_audio_buffer_data_allocate_page)
* [paged\_audio\_buffer\_data\_append\_page](/vendor/miniaudio/#paged_audio_buffer_data_append_page)
* [paged\_audio\_buffer\_data\_free\_page](/vendor/miniaudio/#paged_audio_buffer_data_free_page)
* [paged\_audio\_buffer\_data\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_data_get_length_in_pcm_frames)
* [paged\_audio\_buffer\_data\_init](/vendor/miniaudio/#paged_audio_buffer_data_init)
* [paged\_audio\_buffer\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_get_cursor_in_pcm_frames)
* [paged\_audio\_buffer\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_get_length_in_pcm_frames)
* [paged\_audio\_buffer\_init](/vendor/miniaudio/#paged_audio_buffer_init)
* [paged\_audio\_buffer\_read\_pcm\_frames](/vendor/miniaudio/#paged_audio_buffer_read_pcm_frames)
* [paged\_audio\_buffer\_seek\_to\_pcm\_frame](/vendor/miniaudio/#paged_audio_buffer_seek_to_pcm_frame)
* [panner\_init](/vendor/miniaudio/#panner_init)
* [panner\_process\_pcm\_frames](/vendor/miniaudio/#panner_process_pcm_frames)
* [pcm\_rb\_acquire\_read](/vendor/miniaudio/#pcm_rb_acquire_read)
* [pcm\_rb\_acquire\_write](/vendor/miniaudio/#pcm_rb_acquire_write)
* [pcm\_rb\_commit\_read](/vendor/miniaudio/#pcm_rb_commit_read)
* [pcm\_rb\_commit\_write](/vendor/miniaudio/#pcm_rb_commit_write)
* [pcm\_rb\_init](/vendor/miniaudio/#pcm_rb_init)
* [pcm\_rb\_init\_ex](/vendor/miniaudio/#pcm_rb_init_ex)
* [pcm\_rb\_seek\_read](/vendor/miniaudio/#pcm_rb_seek_read)
* [pcm\_rb\_seek\_write](/vendor/miniaudio/#pcm_rb_seek_write)
* [peak2\_get\_heap\_size](/vendor/miniaudio/#peak2_get_heap_size)
* [peak2\_init](/vendor/miniaudio/#peak2_init)
* [peak2\_init\_preallocated](/vendor/miniaudio/#peak2_init_preallocated)
* [peak2\_process\_pcm\_frames](/vendor/miniaudio/#peak2_process_pcm_frames)
* [peak2\_reinit](/vendor/miniaudio/#peak2_reinit)
* [peak\_node\_init](/vendor/miniaudio/#peak_node_init)
* [peak\_node\_reinit](/vendor/miniaudio/#peak_node_reinit)
* [pulsewave\_init](/vendor/miniaudio/#pulsewave_init)
* [pulsewave\_read\_pcm\_frames](/vendor/miniaudio/#pulsewave_read_pcm_frames)
* [pulsewave\_seek\_to\_pcm\_frame](/vendor/miniaudio/#pulsewave_seek_to_pcm_frame)
* [pulsewave\_set\_amplitude](/vendor/miniaudio/#pulsewave_set_amplitude)
* [pulsewave\_set\_duty\_cycle](/vendor/miniaudio/#pulsewave_set_duty_cycle)
* [pulsewave\_set\_frequency](/vendor/miniaudio/#pulsewave_set_frequency)
* [pulsewave\_set\_sample\_rate](/vendor/miniaudio/#pulsewave_set_sample_rate)
* [rb\_acquire\_read](/vendor/miniaudio/#rb_acquire_read)
* [rb\_acquire\_write](/vendor/miniaudio/#rb_acquire_write)
* [rb\_commit\_read](/vendor/miniaudio/#rb_commit_read)
* [rb\_commit\_write](/vendor/miniaudio/#rb_commit_write)
* [rb\_init](/vendor/miniaudio/#rb_init)
* [rb\_init\_ex](/vendor/miniaudio/#rb_init_ex)
* [rb\_seek\_read](/vendor/miniaudio/#rb_seek_read)
* [rb\_seek\_write](/vendor/miniaudio/#rb_seek_write)
* [resampler\_get\_expected\_output\_frame\_count](/vendor/miniaudio/#resampler_get_expected_output_frame_count)
* [resampler\_get\_heap\_size](/vendor/miniaudio/#resampler_get_heap_size)
* [resampler\_get\_required\_input\_frame\_count](/vendor/miniaudio/#resampler_get_required_input_frame_count)
* [resampler\_init](/vendor/miniaudio/#resampler_init)
* [resampler\_init\_preallocated](/vendor/miniaudio/#resampler_init_preallocated)
* [resampler\_process\_pcm\_frames](/vendor/miniaudio/#resampler_process_pcm_frames)
* [resampler\_reset](/vendor/miniaudio/#resampler_reset)
* [resampler\_set\_rate](/vendor/miniaudio/#resampler_set_rate)
* [resampler\_set\_rate\_ratio](/vendor/miniaudio/#resampler_set_rate_ratio)
* [resource\_manager\_data\_buffer\_get\_available\_frames](/vendor/miniaudio/#resource_manager_data_buffer_get_available_frames)
* [resource\_manager\_data\_buffer\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_buffer_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_buffer\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_buffer_get_data_format)
* [resource\_manager\_data\_buffer\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_buffer_get_length_in_pcm_frames)
* [resource\_manager\_data\_buffer\_init](/vendor/miniaudio/#resource_manager_data_buffer_init)
* [resource\_manager\_data\_buffer\_init\_copy](/vendor/miniaudio/#resource_manager_data_buffer_init_copy)
* [resource\_manager\_data\_buffer\_init\_ex](/vendor/miniaudio/#resource_manager_data_buffer_init_ex)
* [resource\_manager\_data\_buffer\_init\_w](/vendor/miniaudio/#resource_manager_data_buffer_init_w)
* [resource\_manager\_data\_buffer\_read\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_buffer_read_pcm_frames)
* [resource\_manager\_data\_buffer\_result](/vendor/miniaudio/#resource_manager_data_buffer_result)
* [resource\_manager\_data\_buffer\_seek\_to\_pcm\_frame](/vendor/miniaudio/#resource_manager_data_buffer_seek_to_pcm_frame)
* [resource\_manager\_data\_buffer\_set\_looping](/vendor/miniaudio/#resource_manager_data_buffer_set_looping)
* [resource\_manager\_data\_buffer\_uninit](/vendor/miniaudio/#resource_manager_data_buffer_uninit)
* [resource\_manager\_data\_source\_get\_available\_frames](/vendor/miniaudio/#resource_manager_data_source_get_available_frames)
* [resource\_manager\_data\_source\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_source_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_source\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_source_get_data_format)
* [resource\_manager\_data\_source\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_source_get_length_in_pcm_frames)
* [resource\_manager\_data\_source\_init](/vendor/miniaudio/#resource_manager_data_source_init)
* [resource\_manager\_data\_source\_init\_copy](/vendor/miniaudio/#resource_manager_data_source_init_copy)
* [resource\_manager\_data\_source\_init\_ex](/vendor/miniaudio/#resource_manager_data_source_init_ex)
* [resource\_manager\_data\_source\_init\_w](/vendor/miniaudio/#resource_manager_data_source_init_w)
* [resource\_manager\_data\_source\_read\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_source_read_pcm_frames)
* [resource\_manager\_data\_source\_result](/vendor/miniaudio/#resource_manager_data_source_result)
* [resource\_manager\_data\_source\_seek\_to\_pcm\_frame](/vendor/miniaudio/#resource_manager_data_source_seek_to_pcm_frame)
* [resource\_manager\_data\_source\_set\_looping](/vendor/miniaudio/#resource_manager_data_source_set_looping)
* [resource\_manager\_data\_source\_uninit](/vendor/miniaudio/#resource_manager_data_source_uninit)
* [resource\_manager\_data\_stream\_get\_available\_frames](/vendor/miniaudio/#resource_manager_data_stream_get_available_frames)
* [resource\_manager\_data\_stream\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_stream_get_cursor_in_pcm_frames)
* [resource\_manager\_data\_stream\_get\_data\_format](/vendor/miniaudio/#resource_manager_data_stream_get_data_format)
* [resource\_manager\_data\_stream\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_stream_get_length_in_pcm_frames)
* [resource\_manager\_data\_stream\_init](/vendor/miniaudio/#resource_manager_data_stream_init)
* [resource\_manager\_data\_stream\_init\_ex](/vendor/miniaudio/#resource_manager_data_stream_init_ex)
* [resource\_manager\_data\_stream\_init\_w](/vendor/miniaudio/#resource_manager_data_stream_init_w)
* [resource\_manager\_data\_stream\_read\_pcm\_frames](/vendor/miniaudio/#resource_manager_data_stream_read_pcm_frames)
* [resource\_manager\_data\_stream\_result](/vendor/miniaudio/#resource_manager_data_stream_result)
* [resource\_manager\_data\_stream\_seek\_to\_pcm\_frame](/vendor/miniaudio/#resource_manager_data_stream_seek_to_pcm_frame)
* [resource\_manager\_data\_stream\_set\_looping](/vendor/miniaudio/#resource_manager_data_stream_set_looping)
* [resource\_manager\_data\_stream\_uninit](/vendor/miniaudio/#resource_manager_data_stream_uninit)
* [resource\_manager\_init](/vendor/miniaudio/#resource_manager_init)
* [resource\_manager\_next\_job](/vendor/miniaudio/#resource_manager_next_job)
* [resource\_manager\_post\_job](/vendor/miniaudio/#resource_manager_post_job)
* [resource\_manager\_post\_job\_quit](/vendor/miniaudio/#resource_manager_post_job_quit)
* [resource\_manager\_process\_job](/vendor/miniaudio/#resource_manager_process_job)
* [resource\_manager\_process\_next\_job](/vendor/miniaudio/#resource_manager_process_next_job)
* [resource\_manager\_register\_decoded\_data](/vendor/miniaudio/#resource_manager_register_decoded_data)
* [resource\_manager\_register\_decoded\_data\_w](/vendor/miniaudio/#resource_manager_register_decoded_data_w)
* [resource\_manager\_register\_encoded\_data](/vendor/miniaudio/#resource_manager_register_encoded_data)
* [resource\_manager\_register\_encoded\_data\_w](/vendor/miniaudio/#resource_manager_register_encoded_data_w)
* [resource\_manager\_register\_file](/vendor/miniaudio/#resource_manager_register_file)
* [resource\_manager\_register\_file\_w](/vendor/miniaudio/#resource_manager_register_file_w)
* [resource\_manager\_unregister\_data](/vendor/miniaudio/#resource_manager_unregister_data)
* [resource\_manager\_unregister\_data\_w](/vendor/miniaudio/#resource_manager_unregister_data_w)
* [resource\_manager\_unregister\_file](/vendor/miniaudio/#resource_manager_unregister_file)
* [resource\_manager\_unregister\_file\_w](/vendor/miniaudio/#resource_manager_unregister_file_w)
* [semaphore\_init](/vendor/miniaudio/#semaphore_init)
* [semaphore\_release](/vendor/miniaudio/#semaphore_release)
* [semaphore\_wait](/vendor/miniaudio/#semaphore_wait)
* [slot\_allocator\_alloc](/vendor/miniaudio/#slot_allocator_alloc)
* [slot\_allocator\_free](/vendor/miniaudio/#slot_allocator_free)
* [slot\_allocator\_get\_heap\_size](/vendor/miniaudio/#slot_allocator_get_heap_size)
* [slot\_allocator\_init](/vendor/miniaudio/#slot_allocator_init)
* [slot\_allocator\_init\_preallocated](/vendor/miniaudio/#slot_allocator_init_preallocated)
* [sound\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#sound_get_cursor_in_pcm_frames)
* [sound\_get\_cursor\_in\_seconds](/vendor/miniaudio/#sound_get_cursor_in_seconds)
* [sound\_get\_data\_format](/vendor/miniaudio/#sound_get_data_format)
* [sound\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#sound_get_length_in_pcm_frames)
* [sound\_get\_length\_in\_seconds](/vendor/miniaudio/#sound_get_length_in_seconds)
* [sound\_group\_init](/vendor/miniaudio/#sound_group_init)
* [sound\_group\_init\_ex](/vendor/miniaudio/#sound_group_init_ex)
* [sound\_group\_start](/vendor/miniaudio/#sound_group_start)
* [sound\_group\_stop](/vendor/miniaudio/#sound_group_stop)
* [sound\_init\_copy](/vendor/miniaudio/#sound_init_copy)
* [sound\_init\_ex](/vendor/miniaudio/#sound_init_ex)
* [sound\_init\_from\_data\_source](/vendor/miniaudio/#sound_init_from_data_source)
* [sound\_init\_from\_file](/vendor/miniaudio/#sound_init_from_file)
* [sound\_init\_from\_file\_w](/vendor/miniaudio/#sound_init_from_file_w)
* [sound\_seek\_to\_pcm\_frame](/vendor/miniaudio/#sound_seek_to_pcm_frame)
* [sound\_seek\_to\_second](/vendor/miniaudio/#sound_seek_to_second)
* [sound\_start](/vendor/miniaudio/#sound_start)
* [sound\_stop](/vendor/miniaudio/#sound_stop)
* [spatializer\_get\_heap\_size](/vendor/miniaudio/#spatializer_get_heap_size)
* [spatializer\_get\_master\_volume](/vendor/miniaudio/#spatializer_get_master_volume)
* [spatializer\_init](/vendor/miniaudio/#spatializer_init)
* [spatializer\_init\_preallocated](/vendor/miniaudio/#spatializer_init_preallocated)
* [spatializer\_listener\_get\_heap\_size](/vendor/miniaudio/#spatializer_listener_get_heap_size)
* [spatializer\_listener\_init](/vendor/miniaudio/#spatializer_listener_init)
* [spatializer\_listener\_init\_preallocated](/vendor/miniaudio/#spatializer_listener_init_preallocated)
* [spatializer\_process\_pcm\_frames](/vendor/miniaudio/#spatializer_process_pcm_frames)
* [spatializer\_set\_master\_volume](/vendor/miniaudio/#spatializer_set_master_volume)
* [spinlock\_lock](/vendor/miniaudio/#spinlock_lock)
* [spinlock\_lock\_noyield](/vendor/miniaudio/#spinlock_lock_noyield)
* [spinlock\_unlock](/vendor/miniaudio/#spinlock_unlock)
* [splitter\_node\_init](/vendor/miniaudio/#splitter_node_init)
* [vfs\_close](/vendor/miniaudio/#vfs_close)
* [vfs\_info](/vendor/miniaudio/#vfs_info)
* [vfs\_open](/vendor/miniaudio/#vfs_open)
* [vfs\_open\_and\_read\_file](/vendor/miniaudio/#vfs_open_and_read_file)
* [vfs\_open\_w](/vendor/miniaudio/#vfs_open_w)
* [vfs\_read](/vendor/miniaudio/#vfs_read)
* [vfs\_seek](/vendor/miniaudio/#vfs_seek)
* [vfs\_tell](/vendor/miniaudio/#vfs_tell)
* [vfs\_write](/vendor/miniaudio/#vfs_write)
* [waveform\_init](/vendor/miniaudio/#waveform_init)
* [waveform\_read\_pcm\_frames](/vendor/miniaudio/#waveform_read_pcm_frames)
* [waveform\_seek\_to\_pcm\_frame](/vendor/miniaudio/#waveform_seek_to_pcm_frame)
* [waveform\_set\_amplitude](/vendor/miniaudio/#waveform_set_amplitude)
* [waveform\_set\_frequency](/vendor/miniaudio/#waveform_set_frequency)
* [waveform\_set\_sample\_rate](/vendor/miniaudio/#waveform_set_sample_rate)
* [waveform\_set\_type](/vendor/miniaudio/#waveform_set_type)

### [seek\_origin ¶](#seek_origin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L26)

```
seek_origin :: enum i32 {
	start, 
	current, 
	end,     // Not used by decoders.
}
```

##### Related Procedures With Parameters

* [vfs\_seek](/vendor/miniaudio/#vfs_seek)

### [semaphore ¶](#semaphore) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common_windows.odin#L6)

```
semaphore :: distinct rawptr
```

##### Related Procedures With Parameters

* [semaphore\_init](/vendor/miniaudio/#semaphore_init)
* [semaphore\_release](/vendor/miniaudio/#semaphore_release)
* [semaphore\_uninit](/vendor/miniaudio/#semaphore_uninit)
* [semaphore\_wait](/vendor/miniaudio/#semaphore_wait)

### [share\_mode ¶](#share_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L222)

```
share_mode :: enum i32 {
	shared    = 0, 
	exclusive, 
}
```

### [slot\_allocator ¶](#slot_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L31)

```
slot_allocator :: struct {
	pGroups:   [^]slot_allocator_group,
	// Slots are grouped in chunks of 32. 
	pSlots:    [^]u32,
	// 32 bits for reference counting for ABA mitigation. 
	count:     u32,
	// Allocation count. 
	capacity:  u32,
	// Memory management. 
	_ownsHeap: b32,
	_pHeap:    rawptr,
}
```

##### Related Procedures With Parameters

* [slot\_allocator\_alloc](/vendor/miniaudio/#slot_allocator_alloc)
* [slot\_allocator\_free](/vendor/miniaudio/#slot_allocator_free)
* [slot\_allocator\_init](/vendor/miniaudio/#slot_allocator_init)
* [slot\_allocator\_init\_preallocated](/vendor/miniaudio/#slot_allocator_init_preallocated)
* [slot\_allocator\_uninit](/vendor/miniaudio/#slot_allocator_uninit)

### [slot\_allocator\_config ¶](#slot_allocator_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L23)

```
slot_allocator_config :: struct {
	capacity: u32,
}
```

 

Slot Allocator
--------------
The idea of the slot allocator is for it to be used in conjunction with a fixed sized buffer. You use the slot allocator to allocator an index that can be used
as the insertion point for an object.

Slots are reference counted to help mitigate the ABA problem in the lock-free queue we use for tracking jobs.

The slot index is stored in the low 32 bits. The reference counter is stored in the high 32 bits:

```
	+-----------------+-----------------+
	| 32 Bits         | 32 Bits         |
	+-----------------+-----------------+
	| Reference Count | Slot Index      |
	+-----------------+-----------------+
```




##### Related Procedures With Parameters

* [slot\_allocator\_get\_heap\_size](/vendor/miniaudio/#slot_allocator_get_heap_size)
* [slot\_allocator\_init](/vendor/miniaudio/#slot_allocator_init)
* [slot\_allocator\_init\_preallocated](/vendor/miniaudio/#slot_allocator_init_preallocated)



##### Related Procedures With Returns

* [slot\_allocator\_config\_init](/vendor/miniaudio/#slot_allocator_config_init)

### [slot\_allocator\_group ¶](#slot_allocator_group) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L27)

```
slot_allocator_group :: struct {
	bitfield: u32,
}
```

### [sound ¶](#sound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L130)

```
sound :: struct {
	engineNode:                     engine_node,
	// Must be the first member for compatibility with the ma_node API. 
	pDataSource:                    ^data_source,
	seekTarget:                     u64,
	// atomic
	// The PCM frame index to seek to in the mixing thread. Set to (~(ma_uint64)0) to not perform any seeking. 
	atEnd:                          b32,
	// atomic
	endCallback:                    sound_end_proc,
	pEndCallbackUserData:           rawptr,
	pProcessingCache:               ^f32,
	processingCacheFramesRemaining: u32,
	processingCacheMap:             u32,
	ownsDataSource:                 b8,
	// 	We're declaring a resource manager data source object here to save us a malloc when loading a
	// 	sound via the resource manager, which I *think* will be the most common scenario.
	pResourceManagerDataSource:     ^resource_manager_data_source,
}
```

##### Related Procedures With Parameters

* [sound\_at\_end](/vendor/miniaudio/#sound_at_end)
* [sound\_get\_attenuation\_model](/vendor/miniaudio/#sound_get_attenuation_model)
* [sound\_get\_cone](/vendor/miniaudio/#sound_get_cone)
* [sound\_get\_current\_fade\_volume](/vendor/miniaudio/#sound_get_current_fade_volume)
* [sound\_get\_cursor\_in\_pcm\_frames](/vendor/miniaudio/#sound_get_cursor_in_pcm_frames)
* [sound\_get\_cursor\_in\_seconds](/vendor/miniaudio/#sound_get_cursor_in_seconds)
* [sound\_get\_data\_format](/vendor/miniaudio/#sound_get_data_format)
* [sound\_get\_data\_source](/vendor/miniaudio/#sound_get_data_source)
* [sound\_get\_direction](/vendor/miniaudio/#sound_get_direction)
* [sound\_get\_direction\_to\_listener](/vendor/miniaudio/#sound_get_direction_to_listener)
* [sound\_get\_directional\_attenuation\_factor](/vendor/miniaudio/#sound_get_directional_attenuation_factor)
* [sound\_get\_doppler\_factor](/vendor/miniaudio/#sound_get_doppler_factor)
* [sound\_get\_engine](/vendor/miniaudio/#sound_get_engine)
* [sound\_get\_length\_in\_pcm\_frames](/vendor/miniaudio/#sound_get_length_in_pcm_frames)
* [sound\_get\_length\_in\_seconds](/vendor/miniaudio/#sound_get_length_in_seconds)
* [sound\_get\_listener\_index](/vendor/miniaudio/#sound_get_listener_index)
* [sound\_get\_max\_distance](/vendor/miniaudio/#sound_get_max_distance)
* [sound\_get\_max\_gain](/vendor/miniaudio/#sound_get_max_gain)
* [sound\_get\_min\_distance](/vendor/miniaudio/#sound_get_min_distance)
* [sound\_get\_min\_gain](/vendor/miniaudio/#sound_get_min_gain)
* [sound\_get\_pan](/vendor/miniaudio/#sound_get_pan)
* [sound\_get\_pan\_mode](/vendor/miniaudio/#sound_get_pan_mode)
* [sound\_get\_pinned\_listener\_index](/vendor/miniaudio/#sound_get_pinned_listener_index)
* [sound\_get\_pitch](/vendor/miniaudio/#sound_get_pitch)
* [sound\_get\_position](/vendor/miniaudio/#sound_get_position)
* [sound\_get\_positioning](/vendor/miniaudio/#sound_get_positioning)
* [sound\_get\_rolloff](/vendor/miniaudio/#sound_get_rolloff)
* [sound\_get\_time\_in\_milliseconds](/vendor/miniaudio/#sound_get_time_in_milliseconds)
* [sound\_get\_time\_in\_pcm\_frames](/vendor/miniaudio/#sound_get_time_in_pcm_frames)
* [sound\_get\_velocity](/vendor/miniaudio/#sound_get_velocity)
* [sound\_get\_volume](/vendor/miniaudio/#sound_get_volume)
* [sound\_init\_copy](/vendor/miniaudio/#sound_init_copy)
* [sound\_init\_ex](/vendor/miniaudio/#sound_init_ex)
* [sound\_init\_from\_data\_source](/vendor/miniaudio/#sound_init_from_data_source)
* [sound\_init\_from\_file](/vendor/miniaudio/#sound_init_from_file)
* [sound\_init\_from\_file\_w](/vendor/miniaudio/#sound_init_from_file_w)
* [sound\_is\_looping](/vendor/miniaudio/#sound_is_looping)
* [sound\_is\_playing](/vendor/miniaudio/#sound_is_playing)
* [sound\_is\_spatialization\_enabled](/vendor/miniaudio/#sound_is_spatialization_enabled)
* [sound\_reset\_fade](/vendor/miniaudio/#sound_reset_fade)
* [sound\_reset\_start\_time](/vendor/miniaudio/#sound_reset_start_time)
* [sound\_reset\_stop\_time](/vendor/miniaudio/#sound_reset_stop_time)
* [sound\_reset\_stop\_time\_and\_fade](/vendor/miniaudio/#sound_reset_stop_time_and_fade)
* [sound\_seek\_to\_pcm\_frame](/vendor/miniaudio/#sound_seek_to_pcm_frame)
* [sound\_seek\_to\_second](/vendor/miniaudio/#sound_seek_to_second)
* [sound\_set\_attenuation\_model](/vendor/miniaudio/#sound_set_attenuation_model)
* [sound\_set\_cone](/vendor/miniaudio/#sound_set_cone)
* [sound\_set\_direction](/vendor/miniaudio/#sound_set_direction)
* [sound\_set\_directional\_attenuation\_factor](/vendor/miniaudio/#sound_set_directional_attenuation_factor)
* [sound\_set\_doppler\_factor](/vendor/miniaudio/#sound_set_doppler_factor)
* [sound\_set\_end\_callback](/vendor/miniaudio/#sound_set_end_callback)
* [sound\_set\_fade\_in\_milliseconds](/vendor/miniaudio/#sound_set_fade_in_milliseconds)
* [sound\_set\_fade\_in\_pcm\_frames](/vendor/miniaudio/#sound_set_fade_in_pcm_frames)
* [sound\_set\_fade\_start\_in\_milliseconds](/vendor/miniaudio/#sound_set_fade_start_in_milliseconds)
* [sound\_set\_fade\_start\_in\_pcm\_frames](/vendor/miniaudio/#sound_set_fade_start_in_pcm_frames)
* [sound\_set\_looping](/vendor/miniaudio/#sound_set_looping)
* [sound\_set\_max\_distance](/vendor/miniaudio/#sound_set_max_distance)
* [sound\_set\_max\_gain](/vendor/miniaudio/#sound_set_max_gain)
* [sound\_set\_min\_distance](/vendor/miniaudio/#sound_set_min_distance)
* [sound\_set\_min\_gain](/vendor/miniaudio/#sound_set_min_gain)
* [sound\_set\_pan](/vendor/miniaudio/#sound_set_pan)
* [sound\_set\_pan\_mode](/vendor/miniaudio/#sound_set_pan_mode)
* [sound\_set\_pinned\_listener\_index](/vendor/miniaudio/#sound_set_pinned_listener_index)
* [sound\_set\_pitch](/vendor/miniaudio/#sound_set_pitch)
* [sound\_set\_position](/vendor/miniaudio/#sound_set_position)
* [sound\_set\_positioning](/vendor/miniaudio/#sound_set_positioning)
* [sound\_set\_rolloff](/vendor/miniaudio/#sound_set_rolloff)
* [sound\_set\_spatialization\_enabled](/vendor/miniaudio/#sound_set_spatialization_enabled)
* [sound\_set\_start\_time\_in\_milliseconds](/vendor/miniaudio/#sound_set_start_time_in_milliseconds)
* [sound\_set\_start\_time\_in\_pcm\_frames](/vendor/miniaudio/#sound_set_start_time_in_pcm_frames)
* [sound\_set\_stop\_time\_in\_milliseconds](/vendor/miniaudio/#sound_set_stop_time_in_milliseconds)
* [sound\_set\_stop\_time\_in\_pcm\_frames](/vendor/miniaudio/#sound_set_stop_time_in_pcm_frames)
* [sound\_set\_stop\_time\_with\_fade\_in\_milliseconds](/vendor/miniaudio/#sound_set_stop_time_with_fade_in_milliseconds)
* [sound\_set\_stop\_time\_with\_fade\_in\_pcm\_frames](/vendor/miniaudio/#sound_set_stop_time_with_fade_in_pcm_frames)
* [sound\_set\_velocity](/vendor/miniaudio/#sound_set_velocity)
* [sound\_set\_volume](/vendor/miniaudio/#sound_set_volume)
* [sound\_start](/vendor/miniaudio/#sound_start)
* [sound\_stop](/vendor/miniaudio/#sound_stop)
* [sound\_stop\_with\_fade\_in\_milliseconds](/vendor/miniaudio/#sound_stop_with_fade_in_milliseconds)
* [sound\_stop\_with\_fade\_in\_pcm\_frames](/vendor/miniaudio/#sound_stop_with_fade_in_pcm_frames)
* [sound\_uninit](/vendor/miniaudio/#sound_uninit)

### [sound\_config ¶](#sound_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L102)

```
sound_config :: struct {
	pFilePath:                      cstring,
	// Set this to load from the resource manager. 
	pFilePathW:                     [^]u16,
	// Set this to load from the resource manager. 
	pDataSource:                    ^data_source,
	// Set this to load from an existing data source. 
	pInitialAttachment:             ^node,
	// If set, the sound will be attached to an input of this node. This can be set to a ma_sound. If set to NULL, the sound will be attached directly to the endpoint unless MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT is set in `flags`. 
	initialAttachmentInputBusIndex: u32,
	// The index of the input bus of pInitialAttachment to attach the sound to. 
	channelsIn:                     u32,
	// Ignored if using a data source as input (the data source's channel count will be used always). Otherwise, setting to 0 will cause the engine's channel count to be used. 
	channelsOut:                    u32,
	// Set this to 0 (default) to use the engine's channel count. Set to MA_SOUND_SOURCE_CHANNEL_COUNT to use the data source's channel count (only used if using a data source as input). 
	monoExpansionMode:              mono_expansion_mode,
	// Controls how the mono channel should be expanded to other channels when spatialization is disabled on a sound. 
	flags:                          bit_set[sound_flag; u32],
	// A combination of MA_SOUND_FLAG_* flags. 
	volumeSmoothTimeInPCMFrames:    u32,
	// The number of frames to smooth over volume changes. Defaults to 0 in which case no smoothing is used. 
	initialSeekPointInPCMFrames:    u64,
	// Initializes the sound such that it's seeked to this location by default. 
	rangeBegInPCMFrames:            u64,
	rangeEndInPCMFrames:            u64,
	loopPointBegInPCMFrames:        u64,
	loopPointEndInPCMFrames:        u64,
	endCallback:                    sound_end_proc,
	// Fired when the sound reaches the end. Will be fired from the audio thread. Do not restart, uninitialize or otherwise change the state of the sound from here. Instead fire an event or set a variable to indicate to a different thread to change the start of the sound. Will not be fired in response to a scheduled stop with ma_sound_set_stop_time_*(). 
	pEndCallbackUserData:           rawptr,
	pitchResampling:                resampler_config,
	initNotifications:              resource_manager_pipeline_notifications,
	pDoneFence:                     ^fence,
	// Deprecated. Use initNotifications instead. Released when the resource manager has finished decoding the entire sound. Not used with streams. 
	isLooping:                      b32,
}
```

##### Related Procedures With Parameters

* [sound\_init\_ex](/vendor/miniaudio/#sound_init_ex)



##### Related Procedures With Returns

* [sound\_config\_init](/vendor/miniaudio/#sound_config_init)
* [sound\_config\_init\_2](/vendor/miniaudio/#sound_config_init_2)

### [sound\_end\_proc ¶](#sound_end_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L100)

```
sound_end_proc :: proc "c" (pUserData: rawptr, pSound: ^sound)
```

 

Callback for when a sound reaches the end.




##### Related Procedures With Parameters

* [sound\_set\_end\_callback](/vendor/miniaudio/#sound_set_end_callback)

### [sound\_flag ¶](#sound_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L14)

```
sound_flag :: enum i32 {
	// Resource manager flags. 
	STREAM                = 0,  // MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM
	DECODE                = 1,  // MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE
	ASYNC                 = 2,  // MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC
	WAIT_INIT             = 3,  // MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_WAIT_INIT
	UNKNOWN_LENGTH        = 4,  // MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_UNKNOWN_LENGTH
	LOOPING               = 5,  // MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_LOOPING
	// ma_sound specific flags. 
	NO_DEFAULT_ATTACHMENT = 12, // Do not attach to the endpoint by default. Useful for when setting up nodes in a complex graph system.
	NO_PITCH              = 13, // Disable pitch shifting with ma_sound_set_pitch() and ma_sound_group_set_pitch(). This is an optimization.
	NO_SPATIALIZATION     = 14, // Disable spatialization.
}
```

 

Sound flags.

### [sound\_flags ¶](#sound_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L29)

```
sound_flags :: bit_set[sound_flag; u32]
```

##### Related Procedures With Parameters

* [engine\_node\_config\_init](/vendor/miniaudio/#engine_node_config_init)
* [sound\_group\_init](/vendor/miniaudio/#sound_group_init)
* [sound\_init\_copy](/vendor/miniaudio/#sound_init_copy)
* [sound\_init\_from\_data\_source](/vendor/miniaudio/#sound_init_from_data_source)
* [sound\_init\_from\_file](/vendor/miniaudio/#sound_init_from_file)
* [sound\_init\_from\_file\_w](/vendor/miniaudio/#sound_init_from_file_w)

### [sound\_group ¶](#sound_group) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L253)

```
sound_group :: struct {
	engineNode:                     engine_node,
	// Must be the first member for compatibility with the ma_node API. 
	pDataSource:                    ^data_source,
	seekTarget:                     u64,
	// atomic
	// The PCM frame index to seek to in the mixing thread. Set to (~(ma_uint64)0) to not perform any seeking. 
	atEnd:                          b32,
	// atomic
	endCallback:                    sound_end_proc,
	pEndCallbackUserData:           rawptr,
	pProcessingCache:               ^f32,
	processingCacheFramesRemaining: u32,
	processingCacheMap:             u32,
	ownsDataSource:                 b8,
	// 	We're declaring a resource manager data source object here to save us a malloc when loading a
	// 	sound via the resource manager, which I *think* will be the most common scenario.
	pResourceManagerDataSource:     ^resource_manager_data_source,
}
```

##### Related Procedures With Parameters

* [engine\_play\_sound](/vendor/miniaudio/#engine_play_sound)
* [sound\_group\_get\_attenuation\_model](/vendor/miniaudio/#sound_group_get_attenuation_model)
* [sound\_group\_get\_cone](/vendor/miniaudio/#sound_group_get_cone)
* [sound\_group\_get\_current\_fade\_volume](/vendor/miniaudio/#sound_group_get_current_fade_volume)
* [sound\_group\_get\_direction](/vendor/miniaudio/#sound_group_get_direction)
* [sound\_group\_get\_direction\_to\_listener](/vendor/miniaudio/#sound_group_get_direction_to_listener)
* [sound\_group\_get\_directional\_attenuation\_factor](/vendor/miniaudio/#sound_group_get_directional_attenuation_factor)
* [sound\_group\_get\_doppler\_factor](/vendor/miniaudio/#sound_group_get_doppler_factor)
* [sound\_group\_get\_engine](/vendor/miniaudio/#sound_group_get_engine)
* [sound\_group\_get\_listener\_index](/vendor/miniaudio/#sound_group_get_listener_index)
* [sound\_group\_get\_max\_distance](/vendor/miniaudio/#sound_group_get_max_distance)
* [sound\_group\_get\_max\_gain](/vendor/miniaudio/#sound_group_get_max_gain)
* [sound\_group\_get\_min\_distance](/vendor/miniaudio/#sound_group_get_min_distance)
* [sound\_group\_get\_min\_gain](/vendor/miniaudio/#sound_group_get_min_gain)
* [sound\_group\_get\_pan](/vendor/miniaudio/#sound_group_get_pan)
* [sound\_group\_get\_pan\_mode](/vendor/miniaudio/#sound_group_get_pan_mode)
* [sound\_group\_get\_pinned\_listener\_index](/vendor/miniaudio/#sound_group_get_pinned_listener_index)
* [sound\_group\_get\_pitch](/vendor/miniaudio/#sound_group_get_pitch)
* [sound\_group\_get\_position](/vendor/miniaudio/#sound_group_get_position)
* [sound\_group\_get\_positioning](/vendor/miniaudio/#sound_group_get_positioning)
* [sound\_group\_get\_rolloff](/vendor/miniaudio/#sound_group_get_rolloff)
* [sound\_group\_get\_time\_in\_pcm\_frames](/vendor/miniaudio/#sound_group_get_time_in_pcm_frames)
* [sound\_group\_get\_velocity](/vendor/miniaudio/#sound_group_get_velocity)
* [sound\_group\_get\_volume](/vendor/miniaudio/#sound_group_get_volume)
* [sound\_group\_init](/vendor/miniaudio/#sound_group_init)
* [sound\_group\_init\_ex](/vendor/miniaudio/#sound_group_init_ex)
* [sound\_group\_is\_playing](/vendor/miniaudio/#sound_group_is_playing)
* [sound\_group\_is\_spatialization\_enabled](/vendor/miniaudio/#sound_group_is_spatialization_enabled)
* [sound\_group\_set\_attenuation\_model](/vendor/miniaudio/#sound_group_set_attenuation_model)
* [sound\_group\_set\_cone](/vendor/miniaudio/#sound_group_set_cone)
* [sound\_group\_set\_direction](/vendor/miniaudio/#sound_group_set_direction)
* [sound\_group\_set\_directional\_attenuation\_factor](/vendor/miniaudio/#sound_group_set_directional_attenuation_factor)
* [sound\_group\_set\_doppler\_factor](/vendor/miniaudio/#sound_group_set_doppler_factor)
* [sound\_group\_set\_fade\_in\_milliseconds](/vendor/miniaudio/#sound_group_set_fade_in_milliseconds)
* [sound\_group\_set\_fade\_in\_pcm\_frames](/vendor/miniaudio/#sound_group_set_fade_in_pcm_frames)
* [sound\_group\_set\_max\_distance](/vendor/miniaudio/#sound_group_set_max_distance)
* [sound\_group\_set\_max\_gain](/vendor/miniaudio/#sound_group_set_max_gain)
* [sound\_group\_set\_min\_distance](/vendor/miniaudio/#sound_group_set_min_distance)
* [sound\_group\_set\_min\_gain](/vendor/miniaudio/#sound_group_set_min_gain)
* [sound\_group\_set\_pan](/vendor/miniaudio/#sound_group_set_pan)
* [sound\_group\_set\_pan\_mode](/vendor/miniaudio/#sound_group_set_pan_mode)
* [sound\_group\_set\_pinned\_listener\_index](/vendor/miniaudio/#sound_group_set_pinned_listener_index)
* [sound\_group\_set\_pitch](/vendor/miniaudio/#sound_group_set_pitch)
* [sound\_group\_set\_position](/vendor/miniaudio/#sound_group_set_position)
* [sound\_group\_set\_positioning](/vendor/miniaudio/#sound_group_set_positioning)
* [sound\_group\_set\_rolloff](/vendor/miniaudio/#sound_group_set_rolloff)
* [sound\_group\_set\_spatialization\_enabled](/vendor/miniaudio/#sound_group_set_spatialization_enabled)
* [sound\_group\_set\_start\_time\_in\_milliseconds](/vendor/miniaudio/#sound_group_set_start_time_in_milliseconds)
* [sound\_group\_set\_start\_time\_in\_pcm\_frames](/vendor/miniaudio/#sound_group_set_start_time_in_pcm_frames)
* [sound\_group\_set\_stop\_time\_in\_milliseconds](/vendor/miniaudio/#sound_group_set_stop_time_in_milliseconds)
* [sound\_group\_set\_stop\_time\_in\_pcm\_frames](/vendor/miniaudio/#sound_group_set_stop_time_in_pcm_frames)
* [sound\_group\_set\_velocity](/vendor/miniaudio/#sound_group_set_velocity)
* [sound\_group\_set\_volume](/vendor/miniaudio/#sound_group_set_volume)
* [sound\_group\_start](/vendor/miniaudio/#sound_group_start)
* [sound\_group\_stop](/vendor/miniaudio/#sound_group_stop)
* [sound\_group\_uninit](/vendor/miniaudio/#sound_group_uninit)
* [sound\_init\_copy](/vendor/miniaudio/#sound_init_copy)
* [sound\_init\_from\_data\_source](/vendor/miniaudio/#sound_init_from_data_source)
* [sound\_init\_from\_file](/vendor/miniaudio/#sound_init_from_file)
* [sound\_init\_from\_file\_w](/vendor/miniaudio/#sound_init_from_file_w)

### [sound\_group\_config ¶](#sound_group_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L252)

```
sound_group_config :: struct {
	pFilePath:                      cstring,
	// Set this to load from the resource manager. 
	pFilePathW:                     [^]u16,
	// Set this to load from the resource manager. 
	pDataSource:                    ^data_source,
	// Set this to load from an existing data source. 
	pInitialAttachment:             ^node,
	// If set, the sound will be attached to an input of this node. This can be set to a ma_sound. If set to NULL, the sound will be attached directly to the endpoint unless MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT is set in `flags`. 
	initialAttachmentInputBusIndex: u32,
	// The index of the input bus of pInitialAttachment to attach the sound to. 
	channelsIn:                     u32,
	// Ignored if using a data source as input (the data source's channel count will be used always). Otherwise, setting to 0 will cause the engine's channel count to be used. 
	channelsOut:                    u32,
	// Set this to 0 (default) to use the engine's channel count. Set to MA_SOUND_SOURCE_CHANNEL_COUNT to use the data source's channel count (only used if using a data source as input). 
	monoExpansionMode:              mono_expansion_mode,
	// Controls how the mono channel should be expanded to other channels when spatialization is disabled on a sound. 
	flags:                          bit_set[sound_flag; u32],
	// A combination of MA_SOUND_FLAG_* flags. 
	volumeSmoothTimeInPCMFrames:    u32,
	// The number of frames to smooth over volume changes. Defaults to 0 in which case no smoothing is used. 
	initialSeekPointInPCMFrames:    u64,
	// Initializes the sound such that it's seeked to this location by default. 
	rangeBegInPCMFrames:            u64,
	rangeEndInPCMFrames:            u64,
	loopPointBegInPCMFrames:        u64,
	loopPointEndInPCMFrames:        u64,
	endCallback:                    sound_end_proc,
	// Fired when the sound reaches the end. Will be fired from the audio thread. Do not restart, uninitialize or otherwise change the state of the sound from here. Instead fire an event or set a variable to indicate to a different thread to change the start of the sound. Will not be fired in response to a scheduled stop with ma_sound_set_stop_time_*(). 
	pEndCallbackUserData:           rawptr,
	pitchResampling:                resampler_config,
	initNotifications:              resource_manager_pipeline_notifications,
	pDoneFence:                     ^fence,
	// Deprecated. Use initNotifications instead. Released when the resource manager has finished decoding the entire sound. Not used with streams. 
	isLooping:                      b32,
}
```

 

A sound group is just a sound.




##### Related Procedures With Parameters

* [sound\_group\_init\_ex](/vendor/miniaudio/#sound_group_init_ex)



##### Related Procedures With Returns

* [sound\_group\_config\_init](/vendor/miniaudio/#sound_group_config_init)
* [sound\_group\_config\_init\_2](/vendor/miniaudio/#sound_group_config_init_2)

### [sound\_inlined ¶](#sound_inlined) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L153)

```
sound_inlined :: struct {
	sound: sound,
	pNext: ^sound_inlined,
	pPrev: ^sound_inlined,
}
```

 

Structure specifically for sounds played with ma\_engine\_play\_sound(). Making this a separate structure to reduce overhead.

### [spatializer ¶](#spatializer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L236)

```
spatializer :: struct {
	channelsIn:                   u32,
	channelsOut:                  u32,
	pChannelMapIn:                [^]channel,
	attenuationModel:             attenuation_model,
	positioning:                  positioning,
	handedness:                   handedness,
	// Defaults to right. Forward is -1 on the Z axis. In a left handed system, forward is +1 on the Z axis. 
	minGain:                      f32,
	maxGain:                      f32,
	minDistance:                  f32,
	maxDistance:                  f32,
	rolloff:                      f32,
	coneInnerAngleInRadians:      f32,
	coneOuterAngleInRadians:      f32,
	coneOuterGain:                f32,
	dopplerFactor:                f32,
	// Set to 0 to disable doppler effect. 
	directionalAttenuationFactor: f32,
	// Set to 0 to disable directional attenuation. 
	gainSmoothTimeInFrames:       u32,
	// When the gain of a channel changes during spatialization, the transition will be linearly interpolated over this number of frames. 
	position:                     atomic_vec3f,
	direction:                    atomic_vec3f,
	velocity:                     atomic_vec3f,
	// For doppler effect. 
	dopplerPitch:                 f32,
	// Will be updated by ma_spatializer_process_pcm_frames() and can be used by higher level functions to apply a pitch shift for doppler effect. 
	minSpatializationChannelGain: f32,
	gainer:                       gainer,
	// For smooth gain transitions. 
	pNewChannelGainsOut:          [^]f32,
	// Memory management. 
	_pHeap:                       rawptr,
	_ownsHeap:                    b32,
}
```

##### Related Procedures With Parameters

* [spatializer\_get\_attenuation\_model](/vendor/miniaudio/#spatializer_get_attenuation_model)
* [spatializer\_get\_cone](/vendor/miniaudio/#spatializer_get_cone)
* [spatializer\_get\_direction](/vendor/miniaudio/#spatializer_get_direction)
* [spatializer\_get\_directional\_attenuation\_factor](/vendor/miniaudio/#spatializer_get_directional_attenuation_factor)
* [spatializer\_get\_doppler\_factor](/vendor/miniaudio/#spatializer_get_doppler_factor)
* [spatializer\_get\_input\_channels](/vendor/miniaudio/#spatializer_get_input_channels)
* [spatializer\_get\_master\_volume](/vendor/miniaudio/#spatializer_get_master_volume)
* [spatializer\_get\_max\_distance](/vendor/miniaudio/#spatializer_get_max_distance)
* [spatializer\_get\_max\_gain](/vendor/miniaudio/#spatializer_get_max_gain)
* [spatializer\_get\_min\_distance](/vendor/miniaudio/#spatializer_get_min_distance)
* [spatializer\_get\_min\_gain](/vendor/miniaudio/#spatializer_get_min_gain)
* [spatializer\_get\_output\_channels](/vendor/miniaudio/#spatializer_get_output_channels)
* [spatializer\_get\_position](/vendor/miniaudio/#spatializer_get_position)
* [spatializer\_get\_positioning](/vendor/miniaudio/#spatializer_get_positioning)
* [spatializer\_get\_relative\_position\_and\_direction](/vendor/miniaudio/#spatializer_get_relative_position_and_direction)
* [spatializer\_get\_rolloff](/vendor/miniaudio/#spatializer_get_rolloff)
* [spatializer\_get\_velocity](/vendor/miniaudio/#spatializer_get_velocity)
* [spatializer\_init](/vendor/miniaudio/#spatializer_init)
* [spatializer\_init\_preallocated](/vendor/miniaudio/#spatializer_init_preallocated)
* [spatializer\_process\_pcm\_frames](/vendor/miniaudio/#spatializer_process_pcm_frames)
* [spatializer\_set\_attenuation\_model](/vendor/miniaudio/#spatializer_set_attenuation_model)
* [spatializer\_set\_cone](/vendor/miniaudio/#spatializer_set_cone)
* [spatializer\_set\_direction](/vendor/miniaudio/#spatializer_set_direction)
* [spatializer\_set\_directional\_attenuation\_factor](/vendor/miniaudio/#spatializer_set_directional_attenuation_factor)
* [spatializer\_set\_doppler\_factor](/vendor/miniaudio/#spatializer_set_doppler_factor)
* [spatializer\_set\_master\_volume](/vendor/miniaudio/#spatializer_set_master_volume)
* [spatializer\_set\_max\_distance](/vendor/miniaudio/#spatializer_set_max_distance)
* [spatializer\_set\_max\_gain](/vendor/miniaudio/#spatializer_set_max_gain)
* [spatializer\_set\_min\_distance](/vendor/miniaudio/#spatializer_set_min_distance)
* [spatializer\_set\_min\_gain](/vendor/miniaudio/#spatializer_set_min_gain)
* [spatializer\_set\_position](/vendor/miniaudio/#spatializer_set_position)
* [spatializer\_set\_positioning](/vendor/miniaudio/#spatializer_set_positioning)
* [spatializer\_set\_rolloff](/vendor/miniaudio/#spatializer_set_rolloff)
* [spatializer\_set\_velocity](/vendor/miniaudio/#spatializer_set_velocity)
* [spatializer\_uninit](/vendor/miniaudio/#spatializer_uninit)

### [spatializer\_config ¶](#spatializer_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L215)

```
spatializer_config :: struct {
	channelsIn:                   u32,
	channelsOut:                  u32,
	pChannelMapIn:                [^]channel,
	attenuationModel:             attenuation_model,
	positioning:                  positioning,
	handedness:                   handedness,
	// Defaults to right. Forward is -1 on the Z axis. In a left handed system, forward is +1 on the Z axis. 
	minGain:                      f32,
	maxGain:                      f32,
	minDistance:                  f32,
	maxDistance:                  f32,
	rolloff:                      f32,
	coneInnerAngleInRadians:      f32,
	coneOuterAngleInRadians:      f32,
	coneOuterGain:                f32,
	dopplerFactor:                f32,
	// Set to 0 to disable doppler effect. 
	directionalAttenuationFactor: f32,
	// Set to 0 to disable directional attenuation. 
	minSpatializationChannelGain: f32,
	// The minimal scaling factor to apply to channel gains when accounting for the direction of the sound relative to the listener. Must be in the range of 0..1. Smaller values means more aggressive directional panning, larger values means more subtle directional panning. 
	gainSmoothTimeInFrames:       u32,
}
```

##### Related Procedures With Parameters

* [spatializer\_get\_heap\_size](/vendor/miniaudio/#spatializer_get_heap_size)
* [spatializer\_init](/vendor/miniaudio/#spatializer_init)
* [spatializer\_init\_preallocated](/vendor/miniaudio/#spatializer_init_preallocated)



##### Related Procedures With Returns

* [spatializer\_config\_init](/vendor/miniaudio/#spatializer_config_init)

### [spatializer\_listener ¶](#spatializer_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L178)

```
spatializer_listener :: struct {
	config:    spatializer_listener_config,
	position:  atomic_vec3f,
	// The absolute position of the listener. 
	direction: atomic_vec3f,
	// The direction the listener is facing. The world up vector is config.worldUp. 
	velocity:  atomic_vec3f,
	isEnabled: b32,
	// Memory management. 
	_ownsHeap: b32,
	_pHeap:    rawptr,
}
```

##### Related Procedures With Parameters

* [spatializer\_get\_relative\_position\_and\_direction](/vendor/miniaudio/#spatializer_get_relative_position_and_direction)
* [spatializer\_listener\_get\_channel\_map](/vendor/miniaudio/#spatializer_listener_get_channel_map)
* [spatializer\_listener\_get\_cone](/vendor/miniaudio/#spatializer_listener_get_cone)
* [spatializer\_listener\_get\_direction](/vendor/miniaudio/#spatializer_listener_get_direction)
* [spatializer\_listener\_get\_position](/vendor/miniaudio/#spatializer_listener_get_position)
* [spatializer\_listener\_get\_speed\_of\_sound](/vendor/miniaudio/#spatializer_listener_get_speed_of_sound)
* [spatializer\_listener\_get\_velocity](/vendor/miniaudio/#spatializer_listener_get_velocity)
* [spatializer\_listener\_get\_world\_up](/vendor/miniaudio/#spatializer_listener_get_world_up)
* [spatializer\_listener\_init](/vendor/miniaudio/#spatializer_listener_init)
* [spatializer\_listener\_init\_preallocated](/vendor/miniaudio/#spatializer_listener_init_preallocated)
* [spatializer\_listener\_is\_enabled](/vendor/miniaudio/#spatializer_listener_is_enabled)
* [spatializer\_listener\_set\_cone](/vendor/miniaudio/#spatializer_listener_set_cone)
* [spatializer\_listener\_set\_direction](/vendor/miniaudio/#spatializer_listener_set_direction)
* [spatializer\_listener\_set\_enabled](/vendor/miniaudio/#spatializer_listener_set_enabled)
* [spatializer\_listener\_set\_position](/vendor/miniaudio/#spatializer_listener_set_position)
* [spatializer\_listener\_set\_speed\_of\_sound](/vendor/miniaudio/#spatializer_listener_set_speed_of_sound)
* [spatializer\_listener\_set\_velocity](/vendor/miniaudio/#spatializer_listener_set_velocity)
* [spatializer\_listener\_set\_world\_up](/vendor/miniaudio/#spatializer_listener_set_world_up)
* [spatializer\_listener\_uninit](/vendor/miniaudio/#spatializer_listener_uninit)
* [spatializer\_process\_pcm\_frames](/vendor/miniaudio/#spatializer_process_pcm_frames)

### [spatializer\_listener\_config ¶](#spatializer_listener_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L167)

```
spatializer_listener_config :: struct {
	channelsOut:             u32,
	pChannelMapOut:          [^]channel,
	handedness:              handedness,
	// Defaults to right. Forward is -1 on the Z axis. In a left handed system, forward is +1 on the Z axis. 
	coneInnerAngleInRadians: f32,
	coneOuterAngleInRadians: f32,
	coneOuterGain:           f32,
	speedOfSound:            f32,
	worldUp:                 vec3f,
}
```

##### Related Procedures With Parameters

* [spatializer\_listener\_get\_heap\_size](/vendor/miniaudio/#spatializer_listener_get_heap_size)
* [spatializer\_listener\_init](/vendor/miniaudio/#spatializer_listener_init)
* [spatializer\_listener\_init\_preallocated](/vendor/miniaudio/#spatializer_listener_init_preallocated)



##### Related Procedures With Returns

* [spatializer\_listener\_config\_init](/vendor/miniaudio/#spatializer_listener_config_init)

### [spinlock ¶](#spinlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L304)

```
spinlock :: distinct u32
```

 

Spinlocks are 32-bit for compatibility reasons.




##### Related Procedures With Parameters

* [spinlock\_lock](/vendor/miniaudio/#spinlock_lock)
* [spinlock\_lock\_noyield](/vendor/miniaudio/#spinlock_lock_noyield)
* [spinlock\_unlock](/vendor/miniaudio/#spinlock_unlock)

### [splitter\_node ¶](#splitter_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L265)

```
splitter_node :: struct {
	base: node_base,
}
```

##### Related Procedures With Parameters

* [splitter\_node\_init](/vendor/miniaudio/#splitter_node_init)
* [splitter\_node\_uninit](/vendor/miniaudio/#splitter_node_uninit)

### [splitter\_node\_config ¶](#splitter_node_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L259)

```
splitter_node_config :: struct {
	nodeConfig:     node_config,
	channels:       u32,
	outputBusCount: u32,
}
```

 

Splitter Node. 1 input, many outputs. Used for splitting/copying a stream so it can be as input into two separate output nodes.




##### Related Procedures With Parameters

* [splitter\_node\_init](/vendor/miniaudio/#splitter_node_init)



##### Related Procedures With Returns

* [splitter\_node\_config\_init](/vendor/miniaudio/#splitter_node_config_init)

### [stack ¶](#stack) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L23)

```
stack :: struct {
	offset:      uint,
	sizeInBytes: uint,
	_data:       [1]u8,
}
```

 

For some internal memory management of ma\_node\_graph.

### [standard\_channel\_map ¶](#standard_channel_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L273)

```
standard_channel_map :: enum i32 {
	microsoft, 
	alsa, 
	rfc3551,       // Based off AIFF.
	flac, 
	vorbis, 
	sound4,        // FreeBSD's sound(4).
	sndio,         // www.sndio.org/tips.html
	webaudio  = 3, // https://webaudio.github.io/web-audio-api/#ChannelOrdering. Only 1, 2, 4 and 6 channels are defined, but can fill in the gaps with logical assumptions.
	default   = 0, 
}
```

##### Related Procedures With Parameters

* [channel\_map\_init\_standard](/vendor/miniaudio/#channel_map_init_standard)

### [standard\_sample\_rate ¶](#standard_sample_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L239)

```
standard_sample_rate :: enum u32 {
	// Standard rates need to be in priority order. 
	rate_48000  = 48000,  // Most common
	rate_44100  = 44100, 
	rate_32000  = 32000,  // Lows
	rate_24000  = 24000, 
	rate_22050  = 22050, 
	rate_88200  = 88200,  // Highs
	rate_96000  = 96000, 
	rate_176400 = 176400, 
	rate_192000 = 192000, 
	rate_16000  = 16000,  // Extreme lows
	rate_11025  = 11025, 
	rate_8000   = 8000, 
	rate_352800 = 352800, // Extreme highs
	rate_384000 = 384000, 
	rate_min    = 8000, 
	rate_max    = 384000, 
	rate_count  = 14,     // Need to maintain the count manually. Make sure this is updated if items are added to enum.
}
```

### [stop\_proc ¶](#stop_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L212)

```
stop_proc :: proc "c" (pDevice: ^device)
```

 

DEPRECATED. Use ma\_device\_notification\_proc instead.

The callback for when the device has been stopped.

This will be called when the device is stopped explicitly with `ma_device_stop()` and also called implicitly when the device is stopped through external forces
such as being unplugged or an internal error occurring.

Parameters
----------
pDevice (in)
A pointer to the device that has just stopped.

Remarks
-------
Do not restart or uninitialize the device from the callback.

### [stream\_format ¶](#stream_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L211)

```
stream_format :: enum i32 {
	pcm = 0, 
}
```

### [stream\_layout ¶](#stream_layout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L215)

```
stream_layout :: enum i32 {
	interleaved   = 0, 
	deinterleaved, 
}
```

### [thread ¶](#thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common_windows.odin#L3)

```
thread :: distinct rawptr
```

### [thread\_priority ¶](#thread_priority) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L310)

```
thread_priority :: enum i32 {
	idle     = -5, 
	lowest   = -4, 
	low      = -3, 
	normal   = -2, 
	high     = -1, 
	highest  = 0, 
	realtime = 1, 
	default  = 0, 
}
```

 

Thread priorities should be ordered such that the default priority of the worker thread is 0.

### [timer ¶](#timer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L327)

```
timer :: struct #raw_union {
	counter:  i64,
	counterD: f64,
}
```

### [vec3f ¶](#vec3f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L139)

```
vec3f :: struct {
	x: f32,
	y: f32,
	z: f32,
}
```

 

Spatializer.




##### Related Procedures With Parameters

* [spatializer\_get\_relative\_position\_and\_direction](/vendor/miniaudio/#spatializer_get_relative_position_and_direction)



##### Related Procedures With Returns

* [engine\_listener\_get\_direction](/vendor/miniaudio/#engine_listener_get_direction)
* [engine\_listener\_get\_position](/vendor/miniaudio/#engine_listener_get_position)
* [engine\_listener\_get\_velocity](/vendor/miniaudio/#engine_listener_get_velocity)
* [engine\_listener\_get\_world\_up](/vendor/miniaudio/#engine_listener_get_world_up)
* [sound\_get\_direction](/vendor/miniaudio/#sound_get_direction)
* [sound\_get\_direction\_to\_listener](/vendor/miniaudio/#sound_get_direction_to_listener)
* [sound\_get\_position](/vendor/miniaudio/#sound_get_position)
* [sound\_get\_velocity](/vendor/miniaudio/#sound_get_velocity)
* [sound\_group\_get\_direction](/vendor/miniaudio/#sound_group_get_direction)
* [sound\_group\_get\_direction\_to\_listener](/vendor/miniaudio/#sound_group_get_direction_to_listener)
* [sound\_group\_get\_position](/vendor/miniaudio/#sound_group_get_position)
* [sound\_group\_get\_velocity](/vendor/miniaudio/#sound_group_get_velocity)
* [spatializer\_get\_direction](/vendor/miniaudio/#spatializer_get_direction)
* [spatializer\_get\_position](/vendor/miniaudio/#spatializer_get_position)
* [spatializer\_get\_velocity](/vendor/miniaudio/#spatializer_get_velocity)
* [spatializer\_listener\_get\_direction](/vendor/miniaudio/#spatializer_listener_get_direction)
* [spatializer\_listener\_get\_position](/vendor/miniaudio/#spatializer_listener_get_position)
* [spatializer\_listener\_get\_velocity](/vendor/miniaudio/#spatializer_listener_get_velocity)
* [spatializer\_listener\_get\_world\_up](/vendor/miniaudio/#spatializer_listener_get_world_up)

### [vfs ¶](#vfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L16)

```
vfs :: struct {}
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

VFS
===

The VFS object (virtual file system) is what's used to customize file access. This is useful in cases where stdio FILE\* based APIs may not be entirely
appropriate for a given situation.

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*




##### Related Procedures With Parameters

* [decode\_from\_vfs](/vendor/miniaudio/#decode_from_vfs)
* [decoder\_init\_vfs](/vendor/miniaudio/#decoder_init_vfs)
* [decoder\_init\_vfs\_w](/vendor/miniaudio/#decoder_init_vfs_w)
* [encoder\_init\_vfs](/vendor/miniaudio/#encoder_init_vfs)
* [encoder\_init\_vfs\_w](/vendor/miniaudio/#encoder_init_vfs_w)
* [vfs\_close](/vendor/miniaudio/#vfs_close)
* [vfs\_info](/vendor/miniaudio/#vfs_info)
* [vfs\_open](/vendor/miniaudio/#vfs_open)
* [vfs\_open\_and\_read\_file](/vendor/miniaudio/#vfs_open_and_read_file)
* [vfs\_open\_w](/vendor/miniaudio/#vfs_open_w)
* [vfs\_read](/vendor/miniaudio/#vfs_read)
* [vfs\_seek](/vendor/miniaudio/#vfs_seek)
* [vfs\_tell](/vendor/miniaudio/#vfs_tell)
* [vfs\_write](/vendor/miniaudio/#vfs_write)

### [vfs\_callbacks ¶](#vfs_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L36)

```
vfs_callbacks :: struct {
	onOpen:  proc "c" (pVFS: ^vfs, pFilePath: cstring, openMode: bit_set[open_mode_flag; u32], pFile: ^vfs_file) -> result,
	onOpenW: proc "c" (pVFS: ^vfs, pFilePath: [^]u16, openMode: bit_set[open_mode_flag; u32], pFile: ^vfs_file) -> result,
	onClose: proc "c" (pVFS: ^vfs, file: vfs_file) -> result,
	onRead:  proc "c" (pVFS: ^vfs, file: vfs_file, pDst: rawptr, sizeInBytes: uint, pBytesRead: ^uint) -> result,
	onWrite: proc "c" (pVFS: ^vfs, file: vfs_file, pSrc: rawptr, sizeInBytes: uint, pBytesWritten: ^uint) -> result,
	onSeek:  proc "c" (pVFS: ^vfs, file: vfs_file, offset: i64, origin: seek_origin) -> result,
	onTell:  proc "c" (pVFS: ^vfs, file: vfs_file, pCursor: ^i64) -> result,
	onInfo:  proc "c" (pVFS: ^vfs, file: vfs_file, pInfo: ^file_info) -> result,
}
```

### [vfs\_file ¶](#vfs_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L17)

```
vfs_file :: distinct rawptr
```

##### Related Procedures With Parameters

* [vfs\_close](/vendor/miniaudio/#vfs_close)
* [vfs\_info](/vendor/miniaudio/#vfs_info)
* [vfs\_open](/vendor/miniaudio/#vfs_open)
* [vfs\_open\_w](/vendor/miniaudio/#vfs_open_w)
* [vfs\_read](/vendor/miniaudio/#vfs_read)
* [vfs\_seek](/vendor/miniaudio/#vfs_seek)
* [vfs\_tell](/vendor/miniaudio/#vfs_tell)
* [vfs\_write](/vendor/miniaudio/#vfs_write)

### [wasapi\_usage ¶](#wasapi_usage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L272)

```
wasapi_usage :: enum i32 {
	default   = 0, 
	games, 
	pro_audio, 
}
```

 

WASAPI audio thread priority characteristics.

### [waveform ¶](#waveform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L24)

```
waveform :: struct {
	ds:      data_source_base,
	config:  waveform_config,
	advance: f64,
	time:    f64,
}
```

##### Related Procedures With Parameters

* [waveform\_init](/vendor/miniaudio/#waveform_init)
* [waveform\_read\_pcm\_frames](/vendor/miniaudio/#waveform_read_pcm_frames)
* [waveform\_seek\_to\_pcm\_frame](/vendor/miniaudio/#waveform_seek_to_pcm_frame)
* [waveform\_set\_amplitude](/vendor/miniaudio/#waveform_set_amplitude)
* [waveform\_set\_frequency](/vendor/miniaudio/#waveform_set_frequency)
* [waveform\_set\_sample\_rate](/vendor/miniaudio/#waveform_set_sample_rate)
* [waveform\_set\_type](/vendor/miniaudio/#waveform_set_type)
* [waveform\_uninit](/vendor/miniaudio/#waveform_uninit)

### [waveform\_config ¶](#waveform_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L14)

```
waveform_config :: struct {
	format:     format,
	channels:   u32,
	sampleRate: u32,
	type:       waveform_type,
	amplitude:  f64,
	frequency:  f64,
}
```

##### Related Procedures With Parameters

* [waveform\_init](/vendor/miniaudio/#waveform_init)



##### Related Procedures With Returns

* [waveform\_config\_init](/vendor/miniaudio/#waveform_config_init)

### [waveform\_type ¶](#waveform_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L7)

```
waveform_type :: enum i32 {
	sine, 
	square, 
	triangle, 
	sawtooth, 
}
```

##### Related Procedures With Parameters

* [waveform\_config\_init](/vendor/miniaudio/#waveform_config_init)
* [waveform\_set\_type](/vendor/miniaudio/#waveform_set_type)

## Constants

### [BACKEND\_COUNT ¶](#BACKEND_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L57)

```
BACKEND_COUNT :: len(backend)
```

### [BINDINGS\_VERSION ¶](#BINDINGS_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L24)

```
BINDINGS_VERSION: [3]u32 : [3]u32{BINDINGS_VERSION_MAJOR, BINDINGS_VERSION_MINOR, BINDINGS_VERSION_REVISION}
```

### [BINDINGS\_VERSION\_MAJOR ¶](#BINDINGS_VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L21)

```
BINDINGS_VERSION_MAJOR :: 0
```

### [BINDINGS\_VERSION\_MINOR ¶](#BINDINGS_VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L22)

```
BINDINGS_VERSION_MINOR :: 11
```

### [BINDINGS\_VERSION\_REVISION ¶](#BINDINGS_VERSION_REVISION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L23)

```
BINDINGS_VERSION_REVISION :: 24
```

### [BINDINGS\_VERSION\_STRING ¶](#BINDINGS_VERSION_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L25)

```
BINDINGS_VERSION_STRING :: "0.11.24"
```

### [CHANNEL\_INDEX\_NULL ¶](#CHANNEL_INDEX_NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L396)

```
CHANNEL_INDEX_NULL :: 255
```

 

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

Channel Maps

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

This is used in the shuffle table to indicate that the channel index is undefined and should be ignored.

### [ENGINE\_MAX\_LISTENERS ¶](#ENGINE_MAX_LISTENERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L31)

```
ENGINE_MAX_LISTENERS :: 4
```

### [JOB\_TYPE\_RESOURCE\_MANAGER\_QUEUE\_FLAG\_NON\_BLOCKING ¶](#JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L47)

```
JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING :: job_queue_flags.NON_BLOCKING
```

### [LISTENER\_INDEX\_CLOSEST ¶](#LISTENER_INDEX_CLOSEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L33)

```
LISTENER_INDEX_CLOSEST :: 255
```

### [MAX\_CHANNELS ¶](#MAX_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L206)

```
MAX_CHANNELS :: 254
```

### [MAX\_DEVICE\_NAME\_LENGTH ¶](#MAX_DEVICE_NAME_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L360)

```
MAX_DEVICE_NAME_LENGTH :: 255
```

### [MAX\_FILTER\_ORDER ¶](#MAX_FILTER_ORDER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L208)

```
MAX_FILTER_ORDER :: 8
```

### [MAX\_LOG\_CALLBACKS ¶](#MAX_LOG_CALLBACKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L7)

```
MAX_LOG_CALLBACKS :: 4
```

### [MAX\_NODE\_BUS\_COUNT ¶](#MAX_NODE_BUS_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L14)

```
MAX_NODE_BUS_COUNT :: 254
```

 

Must never exceed 254.

### [MAX\_NODE\_LOCAL\_BUS\_COUNT ¶](#MAX_NODE_LOCAL_BUS_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L17)

```
MAX_NODE_LOCAL_BUS_COUNT :: 2
```

 

Used internally by miniaudio for memory management. Must never exceed MA\_MAX\_NODE\_BUS\_COUNT.

### [MINIAUDIO\_SHARED ¶](#MINIAUDIO_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L5)

```
MINIAUDIO_SHARED :: #config(MINIAUDIO_SHARED, false)
```

### [MIN\_CHANNELS ¶](#MIN_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L205)

```
MIN_CHANNELS :: 1
```

### [NODE\_BUS\_COUNT\_UNKNOWN ¶](#NODE_BUS_COUNT_UNKNOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L20)

```
NODE_BUS_COUNT_UNKNOWN :: 255
```

 

Use this when the bus count is determined by the node instance rather than the vtable.

### [NO\_THREADING ¶](#NO_THREADING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L306)

```
NO_THREADING :: false
```

### [RESOURCE\_MANAGER\_MAX\_JOB\_THREAD\_COUNT ¶](#RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L62)

```
RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT :: 64
```

 

Maximum job thread count will be restricted to this, but this may be removed later and replaced with a heap allocation thereby removing any limitation.

### [SIMD\_ALIGNMENT ¶](#SIMD_ALIGNMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L54)

```
SIMD_ALIGNMENT :: 32
```

 

SIMD alignment in bytes. Currently set to 32 bytes in preparation for future AVX optimizations.

### [SOUND\_SOURCE\_CHANNEL\_COUNT ¶](#SOUND_SOURCE_CHANNEL_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L97)

```
SOUND_SOURCE_CHANNEL_COUNT :: 0xFFFFFFFF
```

### [SUPPORT\_AAUDIO ¶](#SUPPORT_AAUDIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L15)

```
SUPPORT_AAUDIO :: false
```

 

ODIN\_OS == .Android

### [SUPPORT\_ALSA ¶](#SUPPORT_ALSA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L13)

```
SUPPORT_ALSA :: ODIN_OS == .Linux
```

### [SUPPORT\_AUDIO4 ¶](#SUPPORT_AUDIO4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L10)

```
SUPPORT_AUDIO4 :: false
```

 

ODIN\_OS == .OpenBSD || ODIN\_OS == .NetBSD

### [SUPPORT\_COREAUDIO ¶](#SUPPORT_COREAUDIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L8)

```
SUPPORT_COREAUDIO :: ODIN_OS == .Darwin
```

### [SUPPORT\_CUSTOM ¶](#SUPPORT_CUSTOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L18)

```
SUPPORT_CUSTOM :: true
```

### [SUPPORT\_DSOUND ¶](#SUPPORT_DSOUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L6)

```
SUPPORT_DSOUND :: ODIN_OS == .Windows
```

### [SUPPORT\_JACK ¶](#SUPPORT_JACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L14)

```
SUPPORT_JACK :: ODIN_OS == .Windows
```

### [SUPPORT\_NULL ¶](#SUPPORT_NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L19)

```
SUPPORT_NULL :: true
```

 

ODIN\_OS != .Emscripten

### [SUPPORT\_OPENSL ¶](#SUPPORT_OPENSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L16)

```
SUPPORT_OPENSL :: false
```

 

ODIN\_OS == .Android

### [SUPPORT\_OSS ¶](#SUPPORT_OSS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L11)

```
SUPPORT_OSS :: ODIN_OS == .FreeBSD
```

### [SUPPORT\_PULSEAUDIO ¶](#SUPPORT_PULSEAUDIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L12)

```
SUPPORT_PULSEAUDIO :: ODIN_OS == .Linux
```

### [SUPPORT\_SNDIO ¶](#SUPPORT_SNDIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L9)

```
SUPPORT_SNDIO :: ODIN_OS == .OpenBSD
```

### [SUPPORT\_WASAPI ¶](#SUPPORT_WASAPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L5)

```
SUPPORT_WASAPI :: ODIN_OS == .Windows
```

### [SUPPORT\_WEBAUDIO ¶](#SUPPORT_WEBAUDIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L17)

```
SUPPORT_WEBAUDIO :: false
```

 

ODIN\_OS == .Emscripten

### [SUPPORT\_WINMM ¶](#SUPPORT_WINMM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin#L7)

```
SUPPORT_WINMM :: ODIN_OS == .Windows
```

### [USE\_EXPERIMENTAL\_LOCK\_FREE\_JOB\_QUEUE ¶](#USE_EXPERIMENTAL_LOCK_FREE_JOB_QUEUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L208)

```
USE_EXPERIMENTAL_LOCK_FREE_JOB_QUEUE :: false
```

## Variables

This section is empty.

## Procedures

### [aligned\_free ¶](#aligned_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L372)

```
aligned_free :: proc "c" (p: rawptr, pAllocationCallbacks: ^allocation_callbacks) ---
```

 

Free's an aligned malloc'd buffer.

### [aligned\_malloc ¶](#aligned_malloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L367)

```
aligned_malloc :: proc "c" (sz, alignment: uint, pAllocationCallbacks: ^allocation_callbacks) -> rawptr ---
```

 

Performs an aligned malloc, with the assumption that the alignment is a power of 2.

### [apply\_volume\_factor\_f32 ¶](#apply_volume_factor_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L67)

```
apply_volume_factor_f32 :: proc "c" (pSamples: [^]f32, sampleCount: u64, factor: f32) ---
```

### [apply\_volume\_factor\_pcm\_frames ¶](#apply_volume_factor_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L81)

```
apply_volume_factor_pcm_frames :: proc "c" (pFrames: rawptr, frameCount: u64, format: format, channels: u32, factor: f32) ---
```

### [apply\_volume\_factor\_pcm\_frames\_f32 ¶](#apply_volume_factor_pcm_frames_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L80)

```
apply_volume_factor_pcm_frames_f32 :: proc "c" (pFrames: [^]f32, frameCount: u64, channels: u32, factor: f32) ---
```

### [apply\_volume\_factor\_pcm\_frames\_s16 ¶](#apply_volume_factor_pcm_frames_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L77)

```
apply_volume_factor_pcm_frames_s16 :: proc "c" (pFrames: [^]i16, frameCount: u64, channels: u32, factor: f32) ---
```

### [apply\_volume\_factor\_pcm\_frames\_s24 ¶](#apply_volume_factor_pcm_frames_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L78)

```
apply_volume_factor_pcm_frames_s24 :: proc "c" (pFrames: rawptr, frameCount: u64, channels: u32, factor: f32) ---
```

### [apply\_volume\_factor\_pcm\_frames\_s32 ¶](#apply_volume_factor_pcm_frames_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L79)

```
apply_volume_factor_pcm_frames_s32 :: proc "c" (pFrames: [^]i32, frameCount: u64, channels: u32, factor: f32) ---
```

### [apply\_volume\_factor\_pcm\_frames\_u8 ¶](#apply_volume_factor_pcm_frames_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L76)

```
apply_volume_factor_pcm_frames_u8 :: proc "c" (pFrames: [^]u8, frameCount: u64, channels: u32, factor: f32) ---
```

### [apply\_volume\_factor\_s16 ¶](#apply_volume_factor_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L64)

```
apply_volume_factor_s16 :: proc "c" (pSamples: [^]i16, sampleCount: u64, factor: f32) ---
```

### [apply\_volume\_factor\_s24 ¶](#apply_volume_factor_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L65)

```
apply_volume_factor_s24 :: proc "c" (pSamples: rawptr, sampleCount: u64, factor: f32) ---
```

### [apply\_volume\_factor\_s32 ¶](#apply_volume_factor_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L66)

```
apply_volume_factor_s32 :: proc "c" (pSamples: [^]i32, sampleCount: u64, factor: f32) ---
```

### [apply\_volume\_factor\_u8 ¶](#apply_volume_factor_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L63)

```
apply_volume_factor_u8 :: proc "c" (pSamples: [^]u8, sampleCount: u64, factor: f32) ---
```

### [async\_notification\_event\_init ¶](#async_notification_event_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L147)

```
async_notification_event_init :: proc "c" (pNotificationEvent: ^async_notification_event) -> result ---
```

### [async\_notification\_event\_signal ¶](#async_notification_event_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L150)

```
async_notification_event_signal :: proc "c" (pNotificationEvent: ^async_notification_event) -> result ---
```

### [async\_notification\_event\_uninit ¶](#async_notification_event_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L148)

```
async_notification_event_uninit :: proc "c" (pNotificationEvent: ^async_notification_event) -> result ---
```

### [async\_notification\_event\_wait ¶](#async_notification_event_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L149)

```
async_notification_event_wait :: proc "c" (pNotificationEvent: ^async_notification_event) -> result ---
```

### [async\_notification\_poll\_init ¶](#async_notification_poll_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L130)

```
async_notification_poll_init :: proc "c" (pNotificationPoll: ^async_notification_poll) -> result ---
```

### [async\_notification\_poll\_is\_signalled ¶](#async_notification_poll_is_signalled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L131)

```
async_notification_poll_is_signalled :: proc "c" (pNotificationPoll: ^async_notification_poll) -> b32 ---
```

### [async\_notification\_signal ¶](#async_notification_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L114)

```
async_notification_signal :: proc "c" (pNotification: ^async_notification) -> result ---
```

### [audio\_buffer\_alloc\_and\_init ¶](#audio_buffer_alloc_and_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L236)

```
audio_buffer_alloc_and_init :: proc "c" (pConfig: ^audio_buffer_config, ppAudioBuffer: ^^audio_buffer) -> result ---
```

 

Always copies the data. Doesn't make sense to use this otherwise. Use ma\_audio\_buffer\_uninit\_and\_free() to uninit.

### [audio\_buffer\_at\_end ¶](#audio_buffer_at_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L243)

```
audio_buffer_at_end :: proc "c" (pAudioBuffer: ^audio_buffer) -> b32 ---
```

### [audio\_buffer\_config\_init ¶](#audio_buffer_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L232)

```
audio_buffer_config_init :: proc "c" (format: format, channels: u32, sizeInFrames: u64, pData: rawptr, pAllocationCallbacks: ^allocation_callbacks) -> audio_buffer_config ---
```

### [audio\_buffer\_get\_available\_frames ¶](#audio_buffer_get_available_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L246)

```
audio_buffer_get_available_frames :: proc "c" (pAudioBuffer: ^audio_buffer, pAvailableFrames: ^u64) -> result ---
```

### [audio\_buffer\_get\_cursor\_in\_pcm\_frames ¶](#audio_buffer_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L244)

```
audio_buffer_get_cursor_in_pcm_frames :: proc "c" (pAudioBuffer: ^audio_buffer, pCursor: ^u64) -> result ---
```

### [audio\_buffer\_get\_length\_in\_pcm\_frames ¶](#audio_buffer_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L245)

```
audio_buffer_get_length_in_pcm_frames :: proc "c" (pAudioBuffer: ^audio_buffer, pLength: ^u64) -> result ---
```

### [audio\_buffer\_init ¶](#audio_buffer_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L234)

```
audio_buffer_init :: proc "c" (pConfig: ^audio_buffer_config, pAudioBuffer: ^audio_buffer) -> result ---
```

### [audio\_buffer\_init\_copy ¶](#audio_buffer_init_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L235)

```
audio_buffer_init_copy :: proc "c" (pConfig: ^audio_buffer_config, pAudioBuffer: ^audio_buffer) -> result ---
```

### [audio\_buffer\_map ¶](#audio_buffer_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L241)

```
audio_buffer_map :: proc "c" (pAudioBuffer: ^audio_buffer, ppFramesOut: ^rawptr, pFrameCount: ^u64) -> result ---
```

### [audio\_buffer\_read\_pcm\_frames ¶](#audio_buffer_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L239)

```
audio_buffer_read_pcm_frames :: proc "c" (pAudioBuffer: ^audio_buffer, pFramesOut: rawptr, frameCount: u64, loop: b32) -> u64 ---
```

### [audio\_buffer\_ref\_at\_end ¶](#audio_buffer_ref_at_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L207)

```
audio_buffer_ref_at_end :: proc "c" (pAudioBufferRef: ^audio_buffer_ref) -> b32 ---
```

### [audio\_buffer\_ref\_get\_available\_frames ¶](#audio_buffer_ref_get_available_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L210)

```
audio_buffer_ref_get_available_frames :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, pAvailableFrames: ^u64) -> result ---
```

### [audio\_buffer\_ref\_get\_cursor\_in\_pcm\_frames ¶](#audio_buffer_ref_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L208)

```
audio_buffer_ref_get_cursor_in_pcm_frames :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, pCursor: ^u64) -> result ---
```

### [audio\_buffer\_ref\_get\_length\_in\_pcm\_frames ¶](#audio_buffer_ref_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L209)

```
audio_buffer_ref_get_length_in_pcm_frames :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, pLength: ^u64) -> result ---
```

### [audio\_buffer\_ref\_init ¶](#audio_buffer_ref_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L200)

```
audio_buffer_ref_init :: proc "c" (format: format, channels: u32, pData: rawptr, sizeInFrames: u64, pAudioBufferRef: ^audio_buffer_ref) -> result ---
```

### [audio\_buffer\_ref\_map ¶](#audio_buffer_ref_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L205)

```
audio_buffer_ref_map :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, ppFramesOut: ^rawptr, pFrameCount: ^u64) -> result ---
```

### [audio\_buffer\_ref\_read\_pcm\_frames ¶](#audio_buffer_ref_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L203)

```
audio_buffer_ref_read_pcm_frames :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, pFramesOut: rawptr, frameCount: u64, loop: b32) -> u64 ---
```

### [audio\_buffer\_ref\_seek\_to\_pcm\_frame ¶](#audio_buffer_ref_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L204)

```
audio_buffer_ref_seek_to_pcm_frame :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, frameIndex: u64) -> result ---
```

### [audio\_buffer\_ref\_set\_data ¶](#audio_buffer_ref_set_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L202)

```
audio_buffer_ref_set_data :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, pData: rawptr, sizeInFrames: u64) -> result ---
```

### [audio\_buffer\_ref\_uninit ¶](#audio_buffer_ref_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L201)

```
audio_buffer_ref_uninit :: proc "c" (pAudioBufferRef: ^audio_buffer_ref) ---
```

### [audio\_buffer\_ref\_unmap ¶](#audio_buffer_ref_unmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L206)

```
audio_buffer_ref_unmap :: proc "c" (pAudioBufferRef: ^audio_buffer_ref, frameCount: u64) -> result ---
```

 

Returns MA\_AT\_END if the end has been reached. This should be considered successful.

### [audio\_buffer\_seek\_to\_pcm\_frame ¶](#audio_buffer_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L240)

```
audio_buffer_seek_to_pcm_frame :: proc "c" (pAudioBuffer: ^audio_buffer, frameIndex: u64) -> result ---
```

### [audio\_buffer\_uninit ¶](#audio_buffer_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L237)

```
audio_buffer_uninit :: proc "c" (pAudioBuffer: ^audio_buffer) ---
```

### [audio\_buffer\_uninit\_and\_free ¶](#audio_buffer_uninit_and_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L238)

```
audio_buffer_uninit_and_free :: proc "c" (pAudioBuffer: ^audio_buffer) ---
```

### [audio\_buffer\_unmap ¶](#audio_buffer_unmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L242)

```
audio_buffer_unmap :: proc "c" (pAudioBuffer: ^audio_buffer, frameCount: u64) -> result ---
```

 

Returns MA\_AT\_END if the end has been reached. This should be considered successful.

### [biquad\_clear\_cache ¶](#biquad_clear_cache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L53)

```
biquad_clear_cache :: proc "c" (pBQ: ^biquad) -> result ---
```

### [biquad\_config\_init ¶](#biquad_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L46)

```
biquad_config_init :: proc "c" (
	format:             format, 
	channels:           u32, 
	b0, b1, b2, a0, a1, 
	a2:                 f64, 
) -> biquad_config ---
```

### [biquad\_get\_heap\_size ¶](#biquad_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L48)

```
biquad_get_heap_size :: proc "c" (pConfig: ^biquad_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [biquad\_get\_latency ¶](#biquad_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L55)

```
biquad_get_latency :: proc "c" (pBQ: ^biquad) -> u32 ---
```

### [biquad\_init ¶](#biquad_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L50)

```
biquad_init :: proc "c" (pConfig: ^biquad_config, pAllocationCallbacks: ^allocation_callbacks, pBQ: ^biquad) -> result ---
```

### [biquad\_init\_preallocated ¶](#biquad_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L49)

```
biquad_init_preallocated :: proc "c" (pConfig: ^biquad_config, pHeap: rawptr, pBQ: ^biquad) -> result ---
```

### [biquad\_node\_config\_init ¶](#biquad_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L293)

```
biquad_node_config_init :: proc "c" (
	channels:           u32, 
	b0, b1, b2, a0, a1, 
	a2:                 f32, 
) -> biquad_node_config ---
```

### [biquad\_node\_init ¶](#biquad_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L295)

```
biquad_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^biquad_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^biquad_node) -> result ---
```

### [biquad\_node\_reinit ¶](#biquad_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L296)

```
biquad_node_reinit :: proc "c" (pConfig: ^biquad_config, pNode: ^biquad_node) -> result ---
```

### [biquad\_node\_uninit ¶](#biquad_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L297)

```
biquad_node_uninit :: proc "c" (pNode: ^biquad_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [biquad\_process\_pcm\_frames ¶](#biquad_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L54)

```
biquad_process_pcm_frames :: proc "c" (pBQ: ^biquad, pFramesOut, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [biquad\_reinit ¶](#biquad_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L52)

```
biquad_reinit :: proc "c" (pConfig: ^biquad_config, pBQ: ^biquad) -> result ---
```

### [biquad\_uninit ¶](#biquad_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L51)

```
biquad_uninit :: proc "c" (pBQ: ^biquad, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [blend\_f32 ¶](#blend_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L382)

```
blend_f32 :: proc "c" (pOut, pInA, pInB: [^]f32, factor: f32, channels: u32) ---
```

 

Blends two frames in floating point format.

### [bpf2\_config\_init ¶](#bpf2_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L270)

```
bpf2_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64, q: f64) -> bpf2_config ---
```

### [bpf2\_get\_heap\_size ¶](#bpf2_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L272)

```
bpf2_get_heap_size :: proc "c" (pConfig: ^bpf2_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [bpf2\_get\_latency ¶](#bpf2_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L278)

```
bpf2_get_latency :: proc "c" (pBPF: ^bpf2) -> u32 ---
```

### [bpf2\_init ¶](#bpf2_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L274)

```
bpf2_init :: proc "c" (pConfig: ^bpf2_config, pAllocationCallbacks: ^allocation_callbacks, pBPF: ^bpf2) -> result ---
```

### [bpf2\_init\_preallocated ¶](#bpf2_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L273)

```
bpf2_init_preallocated :: proc "c" (pConfig: ^bpf2_config, pHeap: rawptr, pBPF: ^bpf2) -> result ---
```

### [bpf2\_process\_pcm\_frames ¶](#bpf2_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L277)

```
bpf2_process_pcm_frames :: proc "c" (pBPF: ^bpf2, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [bpf2\_reinit ¶](#bpf2_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L276)

```
bpf2_reinit :: proc "c" (pConfig: ^bpf2_config, pBPF: ^bpf2) -> result ---
```

### [bpf2\_uninit ¶](#bpf2_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L275)

```
bpf2_uninit :: proc "c" (pBPF: ^bpf2, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [bpf\_config\_init ¶](#bpf_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L280)

```
bpf_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64, order: u32) -> bpf_config ---
```

### [bpf\_get\_heap\_size ¶](#bpf_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L282)

```
bpf_get_heap_size :: proc "c" (pConfig: ^bpf_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [bpf\_get\_latency ¶](#bpf_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L288)

```
bpf_get_latency :: proc "c" (pBPF: ^bpf) -> u32 ---
```

### [bpf\_init ¶](#bpf_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L284)

```
bpf_init :: proc "c" (pConfig: ^bpf_config, pAllocationCallbacks: ^allocation_callbacks, pBPF: ^bpf) -> result ---
```

### [bpf\_init\_preallocated ¶](#bpf_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L283)

```
bpf_init_preallocated :: proc "c" (pConfig: ^bpf_config, pHeap: rawptr, pBPF: ^bpf) -> result ---
```

### [bpf\_node\_config\_init ¶](#bpf_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L362)

```
bpf_node_config_init :: proc "c" (channels, sampleRate: u32, cutoffFrequency: f64, order: u32) -> bpf_node_config ---
```

### [bpf\_node\_init ¶](#bpf_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L364)

```
bpf_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^bpf_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^bpf_node) -> result ---
```

### [bpf\_node\_reinit ¶](#bpf_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L365)

```
bpf_node_reinit :: proc "c" (pConfig: ^bpf_config, pNode: ^bpf_node) -> result ---
```

### [bpf\_node\_uninit ¶](#bpf_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L366)

```
bpf_node_uninit :: proc "c" (pNode: ^bpf_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [bpf\_process\_pcm\_frames ¶](#bpf_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L287)

```
bpf_process_pcm_frames :: proc "c" (pBPF: ^bpf, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [bpf\_reinit ¶](#bpf_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L286)

```
bpf_reinit :: proc "c" (pConfig: ^bpf_config, pBPF: ^bpf) -> result ---
```

### [bpf\_uninit ¶](#bpf_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L285)

```
bpf_uninit :: proc "c" (pBPF: ^bpf, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [calculate\_buffer\_size\_in\_frames\_from\_descriptor ¶](#calculate_buffer_size_in_frames_from_descriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1582)

```
calculate_buffer_size_in_frames_from_descriptor :: proc "c" (pDescriptor: ^device_descriptor, nativeSampleRate: u32, performanceProfile: performance_profile) -> u32 ---
```

 

Calculates an appropriate buffer size from a descriptor, native sample rate and performance profile.

This function is used by backends for helping determine an appropriately sized buffer to use with
the device depending on the values of `periodSizeInFrames` and `periodSizeInMilliseconds` in the
`pDescriptor` object. Since buffer size calculations based on time depends on the sample rate, a
best guess at the device's native sample rate is also required which is where `nativeSampleRate`
comes in. In addition, the performance profile is also needed for cases where both the period size
in frames and milliseconds are both zero.

Parameters
----------
pDescriptor (in)

```
	A pointer to device descriptor whose `periodSizeInFrames` and `periodSizeInMilliseconds` members
	will be used for the calculation of the buffer size.
```

nativeSampleRate (in)

```
	The device's native sample rate. This is only ever used when the `periodSizeInFrames` member of
	`pDescriptor` is zero. In this case, `periodSizeInMilliseconds` will be used instead, in which
	case a sample rate is required to convert to a size in frames.
```

performanceProfile (in)

```
	When both the `periodSizeInFrames` and `periodSizeInMilliseconds` members of `pDescriptor` are
	zero, miniaudio will fall back to a buffer size based on the performance profile. The profile
	to use for this calculation is determine by this parameter.
```

Return Value
------------
The calculated buffer size in frames.

Thread Safety
-------------
This is safe so long as nothing modifies `pDescriptor` at the same time. However, this function
should only ever be called from within the backend's device initialization routine and therefore
shouldn't have any multithreading concerns.

Callback Safety
---------------
This is safe to call within the data callback, but there is no reason to ever do this.

Remarks
-------
If `nativeSampleRate` is zero, this function will fall back to `pDescriptor->sampleRate`. If that
is also zero, `MA_DEFAULT_SAMPLE_RATE` will be used instead.

### [calculate\_buffer\_size\_in\_frames\_from\_milliseconds ¶](#calculate_buffer_size_in_frames_from_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L17)

```
calculate_buffer_size_in_frames_from_milliseconds :: proc "c" (bufferSizeInMilliseconds: u32, sampleRate: u32) -> u32 ---
```

 

Calculates a buffer size in frames from the specified number of milliseconds and sample rate.

### [calculate\_buffer\_size\_in\_milliseconds\_from\_frames ¶](#calculate_buffer_size_in_milliseconds_from_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L12)

```
calculate_buffer_size_in_milliseconds_from_frames :: proc "c" (bufferSizeInFrames: u32, sampleRate: u32) -> u32 ---
```

 

Calculates a buffer size in milliseconds (rounded up) from the specified number of frames and sample rate.

### [calloc ¶](#calloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L352)

```
calloc :: proc "c" (sz: uint, pAllocationCallbacks: ^allocation_callbacks) -> rawptr ---
```

 

calloc()

### [channel\_converter\_config\_init ¶](#channel_converter_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L257)

```
channel_converter_config_init :: proc "c" (
	format:         format, 
	channelsIn:     u32, 
	pChannelMapIn:  [^]channel, 
	channelsOut:    u32, 
	pChannelMapOut: [^]channel, 
	mixingMode:     channel_mix_mode, 
) -> channel_converter_config ---
```

### [channel\_converter\_get\_heap\_size ¶](#channel_converter_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L259)

```
channel_converter_get_heap_size :: proc "c" (pConfig: ^channel_converter_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [channel\_converter\_get\_input\_channel\_map ¶](#channel_converter_get_input_channel_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L264)

```
channel_converter_get_input_channel_map :: proc "c" (pConverter: ^channel_converter, pChannelMap: [^]channel, channelMapCap: uint) -> result ---
```

### [channel\_converter\_get\_output\_channel\_map ¶](#channel_converter_get_output_channel_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L265)

```
channel_converter_get_output_channel_map :: proc "c" (pConverter: ^channel_converter, pChannelMap: [^]channel, channelMapCap: uint) -> result ---
```

### [channel\_converter\_init ¶](#channel_converter_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L261)

```
channel_converter_init :: proc "c" (pConfig: ^channel_converter_config, pAllocationCallbacks: ^allocation_callbacks, pConverter: ^channel_converter) -> result ---
```

### [channel\_converter\_init\_preallocated ¶](#channel_converter_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L260)

```
channel_converter_init_preallocated :: proc "c" (pConfig: ^channel_converter_config, pHeap: rawptr, pConverter: ^channel_converter) -> result ---
```

### [channel\_converter\_process\_pcm\_frames ¶](#channel_converter_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L263)

```
channel_converter_process_pcm_frames :: proc "c" (pConverter: ^channel_converter, pFramesOut, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [channel\_converter\_uninit ¶](#channel_converter_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L262)

```
channel_converter_uninit :: proc "c" (pConverter: ^channel_converter, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [channel\_map\_contains\_channel\_position ¶](#channel_map_contains_channel_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L471)

```
channel_map_contains_channel_position :: proc "c" (channels: u32, pChannelMap: [^]channel, channelPosition: channel) -> b32 ---
```

 

Helper for determining whether or not a channel is present in the given channel map.

The channel map buffer must have a capacity of at least `channels`.

### [channel\_map\_copy ¶](#channel_map_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L426)

```
channel_map_copy :: proc "c" (pOut: [^]channel, pIn: [^]channel, channels: u32) ---
```

 

Copies a channel map.

Both input and output channel map buffers must have a capacity of at least `channels`.

### [channel\_map\_copy\_or\_default ¶](#channel_map_copy_or_default) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L433)

```
channel_map_copy_or_default :: proc "c" (pOut: [^]channel, channelMapCapOut: uint, pIn: [^]channel, channels: u32) ---
```

 

Copies a channel map if one is specified, otherwise copies the default channel map.

The output buffer must have a capacity of at least `channels`. If not NULL, the input channel map must also have a capacity of at least `channels`.

### [channel\_map\_find\_channel\_position ¶](#channel_map_find_channel_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L479)

```
channel_map_find_channel_position :: proc "c" (channels: u32, pChannelMap: [^]channel, channelPosition: channel, pChannelIndex: ^u32) -> b32 ---
```

 

Find a channel position in the given channel map. Returns MA\_TRUE if the channel is found; MA\_FALSE otherwise. The
index of the channel is output to `pChannelIndex`.

The channel map buffer must have a capacity of at least `channels`.

### [channel\_map\_get\_channel ¶](#channel_map_get_channel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L405)

```
channel_map_get_channel :: proc "c" (pChannelMap: [^]channel, channelCount: u32, channelIndex: u32) -> channel ---
```

 

Retrieves the channel position of the specified channel in the given channel map.

The pChannelMap parameter can be null, in which case miniaudio's default channel map will be assumed.

### [channel\_map\_init\_blank ¶](#channel_map_init_blank) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L412)

```
channel_map_init_blank :: proc "c" (pChannelMap: [^]channel, channels: u32) ---
```

 

Initializes a blank channel map.

When a blank channel map is specified anywhere it indicates that the native channel map should be used.

### [channel\_map\_init\_standard ¶](#channel_map_init_standard) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L419)

```
channel_map_init_standard :: proc "c" (standardChannelMap: standard_channel_map, pChannelMap: [^]channel, channelMapCap: uint, channels: u32) ---
```

 

Helper for retrieving a standard channel map.

The output channel map buffer must have a capacity of at least `channelMapCap`.

### [channel\_map\_is\_blank ¶](#channel_map_is_blank) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L464)

```
channel_map_is_blank :: proc "c" (pChannelMap: [^]channel, channels: u32) -> b32 ---
```

 

Helper for determining if a channel map is blank (all channels set to MA\_CHANNEL\_NONE).

The channel map buffer must have a capacity of at least `channels`.

### [channel\_map\_is\_equal ¶](#channel_map_is_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L457)

```
channel_map_is_equal :: proc "c" (pChannelMapA, pChannelMapB: [^]channel, channels: u32) -> b32 ---
```

 

Helper for comparing two channel maps for equality.

This assumes the channel count is the same between the two.

Both channels map buffers must have a capacity of at least `channels`.

### [channel\_map\_is\_valid ¶](#channel_map_is_valid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L448)

```
channel_map_is_valid :: proc "c" (pChannelMap: [^]channel, channels: u32) -> b32 ---
```

 

Determines whether or not a channel map is valid.

A blank channel map is valid (all channels set to MA\_CHANNEL\_NONE). The way a blank channel map is handled is context specific, but
is usually treated as a passthrough.

Invalid channel maps:

```
- A channel map with no channels
- A channel map with more than one channel and a mono channel
```

The channel map buffer must have a capacity of at least `channels`.

### [channel\_map\_to\_string ¶](#channel_map_to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L488)

```
channel_map_to_string :: proc "c" (pChannelMap: [^]channel, channels: u32, pBufferOut: [^]u8, bufferCap: uint) -> uint ---
```

 

Generates a string representing the given channel map.

This is for printing and debugging purposes, not serialization/deserialization.

Returns the length of the string, not including the null terminator.

### [channel\_position\_to\_string ¶](#channel_position_to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L493)

```
channel_position_to_string :: proc "c" (channel: channel) -> cstring ---
```

 

Retrieves a human readable version of a channel position.

### [clip\_pcm\_frames ¶](#clip_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L50)

```
clip_pcm_frames :: proc "c" (pDst, pSrc: rawptr, frameCount: u64, format: format, channels: u32) ---
```

### [clip\_samples\_f32 ¶](#clip_samples_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L49)

```
clip_samples_f32 :: proc "c" (pDst, pSrc: [^]f32, count: u64) ---
```

### [clip\_samples\_s16 ¶](#clip_samples_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L46)

```
clip_samples_s16 :: proc "c" (pDst: [^]i16, pSrc: [^]i32, count: u64) ---
```

### [clip\_samples\_s24 ¶](#clip_samples_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L47)

```
clip_samples_s24 :: proc "c" (pDst: [^]u8, pSrc: [^]i64, count: u64) ---
```

### [clip\_samples\_s32 ¶](#clip_samples_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L48)

```
clip_samples_s32 :: proc "c" (pDst: [^]i32, pSrc: [^]i64, count: u64) ---
```

### [clip\_samples\_u8 ¶](#clip_samples_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L45)

```
clip_samples_u8 :: proc "c" (pDst: [^]u8, pSrc: [^]i16, count: u64) ---
```

 

Clips samples.

### [context\_config\_init ¶](#context_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L39)

```
context_config_init :: proc "c" () -> context_config ---
```

 

Initializes a `ma_context_config` object.

Return Value
------------
A `ma_context_config` initialized to defaults.

Remarks
-------
You must always use this to initialize the default state of the `ma_context_config` object. Not using this will result in your program breaking when miniaudio
is updated and new members are added to `ma_context_config`. It also sets logical defaults.

You can override members of the returned object by changing it's members directly.

See Also
--------
ma\_context\_init()

### [context\_enumerate\_devices ¶](#context_enumerate_devices) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L367)

```
context_enumerate_devices :: proc "c" (pContext: ^context_type, callback: enum_devices_callback_proc, pUserData: rawptr) -> result ---
```

 

Enumerates over every device (both playback and capture).

This is a lower-level enumeration function to the easier to use `ma_context_get_devices()`. Use `ma_context_enumerate_devices()` if you would rather not incur
an internal heap allocation, or it simply suits your code better.

Note that this only retrieves the ID and name/description of the device. The reason for only retrieving basic information is that it would otherwise require
opening the backend device in order to probe it for more detailed information which can be inefficient. Consider using `ma_context_get_device_info()` for this,
but don't call it from within the enumeration callback.

Returning false from the callback will stop enumeration. Returning true will continue enumeration.

Parameters
----------
pContext (in)

```
	A pointer to the context performing the enumeration.
```

callback (in)

```
	The callback to fire for each enumerated device.
```

pUserData (in)

```
	A pointer to application-defined data passed to the callback.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Safe. This is guarded using a simple mutex lock.

Remarks
-------
Do \_not\_ assume the first enumerated device of a given type is the default device.

Some backends and platforms may only support default playback and capture devices.

In general, you should not do anything complicated from within the callback. In particular, do not try initializing a device from within the callback. Also,
do not try to call `ma_context_get_device_info()` from within the callback.

Consider using `ma_context_get_devices()` for a simpler and safer API, albeit at the expense of an internal heap allocation.

Example 1 - Simple Enumeration
------------------------------
ma\_bool32 ma\_device\_enum\_callback(ma\_context *pContext, ma\_device\_type deviceType, const ma\_device\_info* pInfo, void\* pUserData)
{

```
	printf("Device Name: %s\n", pInfo->name);
	return MA_TRUE;
```

}

ma\_result result = ma\_context\_enumerate\_devices(&context, my\_device\_enum\_callback, pMyUserData);
if (result != MA\_SUCCESS) {

```
	// Error.
```

}

See Also
--------
ma\_context\_get\_devices()

### [context\_get\_device\_info ¶](#context_get_device_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L463)

```
context_get_device_info :: proc "c" (pContext: ^context_type, deviceType: device_type, pDeviceID: ^device_id, pDeviceInfo: ^device_info) -> result ---
```

 

Retrieves information about a device of the given type, with the specified ID and share mode.

Parameters
----------
pContext (in)

```
	A pointer to the context performing the query.
```

deviceType (in)

```
	The type of the device being queried. Must be either `ma_device_type_playback` or `ma_device_type_capture`.
```

pDeviceID (in)

```
	The ID of the device being queried.
```

pDeviceInfo (out)

```
	A pointer to the `ma_device_info` structure that will receive the device information.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Safe. This is guarded using a simple mutex lock.

Remarks
-------
Do \_not\_ call this from within the `ma_context_enumerate_devices()` callback.

It's possible for a device to have different information and capabilities depending on whether or not it's opened in shared or exclusive mode. For example, in
shared mode, WASAPI always uses floating point samples for mixing, but in exclusive mode it can be anything. Therefore, this function allows you to specify
which share mode you want information for. Note that not all backends and devices support shared or exclusive mode, in which case this function will fail if
the requested share mode is unsupported.

This leaves pDeviceInfo unmodified in the result of an error.

### [context\_get\_devices ¶](#context_get_devices) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L421)

```
context_get_devices :: proc "c" (pContext: ^context_type, ppPlaybackDeviceInfos: ^[^]device_info, pPlaybackDeviceCount: ^u32, ppCaptureDeviceInfos: ^[^]device_info, pCaptureDeviceCount: ^u32) -> result ---
```

 

Retrieves basic information about every active playback and/or capture device.

This function will allocate memory internally for the device lists and return a pointer to them through the `ppPlaybackDeviceInfos` and `ppCaptureDeviceInfos`
parameters. If you do not want to incur the overhead of these allocations consider using `ma_context_enumerate_devices()` which will instead use a callback.

Note that this only retrieves the ID and name/description of the device. The reason for only retrieving basic information is that it would otherwise require
opening the backend device in order to probe it for more detailed information which can be inefficient. Consider using `ma_context_get_device_info()` for this,
but don't call it from within the enumeration callback.

Parameters
----------
pContext (in)

```
	A pointer to the context performing the enumeration.
```

ppPlaybackDeviceInfos (out)

```
	A pointer to a pointer that will receive the address of a buffer containing the list of `ma_device_info` structures for playback devices.
```

pPlaybackDeviceCount (out)

```
	A pointer to an unsigned integer that will receive the number of playback devices.
```

ppCaptureDeviceInfos (out)

```
	A pointer to a pointer that will receive the address of a buffer containing the list of `ma_device_info` structures for capture devices.
```

pCaptureDeviceCount (out)

```
	A pointer to an unsigned integer that will receive the number of capture devices.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Unsafe. Since each call to this function invalidates the pointers from the previous call, you should not be calling this simultaneously across multiple
threads. Instead, you need to make a copy of the returned data with your own higher level synchronization.

Remarks
-------
It is \_not\_ safe to assume the first device in the list is the default device.

You can pass in NULL for the playback or capture lists in which case they'll be ignored.

The returned pointers will become invalid upon the next call this this function, or when the context is uninitialized. Do not free the returned pointers.

See Also
--------
ma\_context\_enumerate\_devices()

### [context\_get\_log ¶](#context_get_log) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L300)

```
context_get_log :: proc "c" (pContext: ^context_type) -> log ---
```

 

Retrieves a pointer to the log object associated with this context.

Remarks
-------
Pass the returned pointer to `ma_log_post()`, `ma_log_postv()` or `ma_log_postf()` to post a log
message.

Return Value
------------
A pointer to the `ma_log` object that the context uses to post log messages. If some error occurs,
NULL will be returned.

### [context\_init ¶](#context_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L251)

```
context_init :: proc "c" (backends: [^]backend, backendCount: u32, pConfig: ^context_config, pContext: ^context_type) -> result ---
```

 

Initializes a context.

The context is used for selecting and initializing an appropriate backend and to represent the backend at a more global level than that of an individual
device. There is one context to many devices, and a device is created from a context. A context is required to enumerate devices.

Parameters
----------
backends (in, optional)

```
	A list of backends to try initializing, in priority order. Can be NULL, in which case it uses default priority order.
```

backendCount (in, optional)

```
	The number of items in `backend`. Ignored if `backend` is NULL.
```

pConfig (in, optional)

```
	The context configuration.
```

pContext (in)

```
	A pointer to the context object being initialized.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Unsafe. Do not call this function across multiple threads as some backends read and write to global state.

Remarks
-------
When `backends` is NULL, the default priority order will be used. Below is a list of backends in priority order:

```
	|-------------|-----------------------|--------------------------------------------------------|
	| Name        | Enum Name             | Supported Operating Systems                            |
	|-------------|-----------------------|--------------------------------------------------------|
	| WASAPI      | ma_backend_wasapi     | Windows Vista+                                         |
	| DirectSound | ma_backend_dsound     | Windows XP+                                            |
	| WinMM       | ma_backend_winmm      | Windows XP+ (may work on older versions, but untested) |
	| Core Audio  | ma_backend_coreaudio  | macOS, iOS                                             |
	| ALSA        | ma_backend_alsa       | Linux                                                  |
	| PulseAudio  | ma_backend_pulseaudio | Cross Platform (disabled on Windows, BSD and Android)  |
	| JACK        | ma_backend_jack       | Cross Platform (disabled on BSD and Android)           |
	| sndio       | ma_backend_sndio      | OpenBSD                                                |
	| audio(4)    | ma_backend_audio4     | NetBSD, OpenBSD                                        |
	| OSS         | ma_backend_oss        | FreeBSD                                                |
	| AAudio      | ma_backend_aaudio     | Android 8+                                             |
	| OpenSL|ES   | ma_backend_opensl     | Android (API level 16+)                                |
	| Web Audio   | ma_backend_webaudio   | Web (via Emscripten)                                   |
	| Null        | ma_backend_null       | Cross Platform (not used on Web)                       |
	|-------------|-----------------------|--------------------------------------------------------|
```

The context can be configured via the `pConfig` argument. The config object is initialized with `ma_context_config_init()`. Individual configuration settings
can then be set directly on the structure. Below are the members of the `ma_context_config` object.

```
	pLog
			A pointer to the `ma_log` to post log messages to. Can be NULL if the application does not
			require logging. See the `ma_log` API for details on how to use the logging system.

	threadPriority
			The desired priority to use for the audio thread. Allowable values include the following:

			|--------------------------------------|
			| Thread Priority                      |
			|--------------------------------------|
			| ma_thread_priority_idle              |
			| ma_thread_priority_lowest            |
			| ma_thread_priority_low               |
			| ma_thread_priority_normal            |
			| ma_thread_priority_high              |
			| ma_thread_priority_highest (default) |
			| ma_thread_priority_realtime          |
			| ma_thread_priority_default           |
			|--------------------------------------|

	threadStackSize
			The desired size of the stack for the audio thread. Defaults to the operating system's default.

	pUserData
			A pointer to application-defined data. This can be accessed from the context object directly such as `context.pUserData`.

	allocationCallbacks
			Structure containing custom allocation callbacks. Leaving this at defaults will cause it to use MA_MALLOC, MA_REALLOC and MA_FREE. These allocation
			callbacks will be used for anything tied to the context, including devices.

	alsa.useVerboseDeviceEnumeration
			ALSA will typically enumerate many different devices which can be intrusive and not user-friendly. To combat this, miniaudio will enumerate only unique
			card/device pairs by default. The problem with this is that you lose a bit of flexibility and control. Setting alsa.useVerboseDeviceEnumeration makes
			it so the ALSA backend includes all devices. Defaults to false.

	pulse.pApplicationName
			PulseAudio only. The application name to use when initializing the PulseAudio context with `pa_context_new()`.

	pulse.pServerName
			PulseAudio only. The name of the server to connect to with `pa_context_connect()`.

	pulse.tryAutoSpawn
			PulseAudio only. Whether or not to try automatically starting the PulseAudio daemon. Defaults to false. If you set this to true, keep in mind that
			miniaudio uses a trial and error method to find the most appropriate backend, and this will result in the PulseAudio daemon starting which may be
			intrusive for the end user.

	coreaudio.sessionCategory
			iOS only. The session category to use for the shared AudioSession instance. Below is a list of allowable values and their Core Audio equivalents.

			|-----------------------------------------|-------------------------------------|
			| miniaudio Token                         | Core Audio Token                    |
			|-----------------------------------------|-------------------------------------|
			| ma_ios_session_category_ambient         | AVAudioSessionCategoryAmbient       |
			| ma_ios_session_category_solo_ambient    | AVAudioSessionCategorySoloAmbient   |
			| ma_ios_session_category_playback        | AVAudioSessionCategoryPlayback      |
			| ma_ios_session_category_record          | AVAudioSessionCategoryRecord        |
			| ma_ios_session_category_play_and_record | AVAudioSessionCategoryPlayAndRecord |
			| ma_ios_session_category_multi_route     | AVAudioSessionCategoryMultiRoute    |
			| ma_ios_session_category_none            | AVAudioSessionCategoryAmbient       |
			| ma_ios_session_category_default         | AVAudioSessionCategoryAmbient       |
			|-----------------------------------------|-------------------------------------|

	coreaudio.sessionCategoryOptions
			iOS only. Session category options to use with the shared AudioSession instance. Below is a list of allowable values and their Core Audio equivalents.

			|---------------------------------------------------------------------------|------------------------------------------------------------------|
			| miniaudio Token                                                           | Core Audio Token                                                 |
			|---------------------------------------------------------------------------|------------------------------------------------------------------|
			| ma_ios_session_category_option_mix_with_others                            | AVAudioSessionCategoryOptionMixWithOthers                        |
			| ma_ios_session_category_option_duck_others                                | AVAudioSessionCategoryOptionDuckOthers                           |
			| ma_ios_session_category_option_allow_bluetooth                            | AVAudioSessionCategoryOptionAllowBluetooth                       |
			| ma_ios_session_category_option_default_to_speaker                         | AVAudioSessionCategoryOptionDefaultToSpeaker                     |
			| ma_ios_session_category_option_interrupt_spoken_audio_and_mix_with_others | AVAudioSessionCategoryOptionInterruptSpokenAudioAndMixWithOthers |
			| ma_ios_session_category_option_allow_bluetooth_a2dp                       | AVAudioSessionCategoryOptionAllowBluetoothA2DP                   |
			| ma_ios_session_category_option_allow_air_play                             | AVAudioSessionCategoryOptionAllowAirPlay                         |
			|---------------------------------------------------------------------------|------------------------------------------------------------------|

	coreaudio.noAudioSessionActivate
			iOS only. When set to true, does not perform an explicit [[AVAudioSession sharedInstace] setActive:true] on initialization.

	coreaudio.noAudioSessionDeactivate
			iOS only. When set to true, does not perform an explicit [[AVAudioSession sharedInstace] setActive:false] on uninitialization.

	jack.pClientName
			The name of the client to pass to `jack_client_open()`.

	jack.tryStartServer
			Whether or not to try auto-starting the JACK server. Defaults to false.
```

It is recommended that only a single context is active at any given time because it's a bulky data structure which performs run-time linking for the
relevant backends every time it's initialized.

The location of the context cannot change throughout it's lifetime. Consider allocating the `ma_context` object with `malloc()` if this is an issue. The
reason for this is that a pointer to the context is stored in the `ma_device` structure.

Example 1 - Default Initialization
----------------------------------
The example below shows how to initialize the context using the default configuration.

`c
ma\_context context;
ma\_result result = ma\_context\_init(NULL, 0, NULL, &context);
if (result != MA\_SUCCESS) {

```
	// Error.
```

}
`

Example 2 - Custom Configuration
--------------------------------
The example below shows how to initialize the context using custom backend priorities and a custom configuration. In this hypothetical example, the program
wants to prioritize ALSA over PulseAudio on Linux. They also want to avoid using the WinMM backend on Windows because it's latency is too high. They also
want an error to be returned if no valid backend is available which they achieve by excluding the Null backend.

For the configuration, the program wants to capture any log messages so they can, for example, route it to a log file and user interface.

`c
ma\_backend backends[] = {

```
	ma_backend_alsa,
	ma_backend_pulseaudio,
	ma_backend_wasapi,
	ma_backend_dsound
```

};

ma\_log log;
ma\_log\_init(&log);
ma\_log\_register\_callback(&log, ma\_log\_callback\_init(my\_log\_callbac, pMyLogUserData));

ma\_context\_config config = ma\_context\_config\_init();
config.pLog = &log // Specify a custom log object in the config so any logs that are posted from ma\_context\_init() are captured.

ma\_context context;
ma\_result result = ma\_context\_init(backends, sizeof(backends)/sizeof(backends[0]), &config, &context);
if (result != MA\_SUCCESS) {

```
	// Error.
	if (result == MA_NO_BACKEND) {
			// Couldn't find an appropriate backend.
	}
```

}

// You could also attach a log callback post-initialization:
ma\_log\_register\_callback(ma\_context\_get\_log(&context), ma\_log\_callback\_init(my\_log\_callback, pMyLogUserData));
`

See Also
--------
ma\_context\_config\_init()
ma\_context\_uninit()

### [context\_is\_loopback\_supported ¶](#context_is_loopback_supported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L479)

```
context_is_loopback_supported :: proc "c" (pContext: ^context_type) -> b32 ---
```

 

Determines if the given context supports loopback mode.

Parameters
----------
pContext (in)
A pointer to the context getting queried.

Return Value
------------
MA\_TRUE if the context supports loopback mode; MA\_FALSE otherwise.

### [context\_sizeof ¶](#context_sizeof) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L283)

```
context_sizeof :: proc "c" () -> uint ---
```

 

Retrieves the size of the ma\_context object.

This is mainly for the purpose of bindings to know how much memory to allocate.

### [context\_uninit ¶](#context_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L276)

```
context_uninit :: proc "c" (pContext: ^context_type) -> result ---
```

 

Uninitializes a context.

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Unsafe. Do not call this function across multiple threads as some backends read and write to global state.

Remarks
-------
Results are undefined if you call this while any device created by this context is still active.

See Also
--------
ma\_context\_init()

### [convert\_frames ¶](#convert_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L514)

```
convert_frames :: proc "c" (
	pOut:          rawptr, 
	frameCountOut: u64, 
	formatOut:     format, 
	channelsOut:   u32, 
	sampleRateOut: u32, 
	pIn:           rawptr, 
	frameCountIn:  u64, 
	formatIn:      format, 
	channelsIn:    u32, 
	sampleRateIn:  u32, 
) -> u64 ---
```

 

High-level helper for doing a full format conversion in one go. Returns the number of output frames. Call this with pOut set to NULL to
determine the required size of the output buffer. frameCountOut should be set to the capacity of pOut. If pOut is NULL, frameCountOut is
ignored.

A return value of 0 indicates an error.

This function is useful for one-off bulk conversions, but if you're streaming data you should use the ma\_data\_converter APIs instead.

### [convert\_frames\_ex ¶](#convert_frames_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L515)

```
convert_frames_ex :: proc "c" (pOut: rawptr, frameCountOut: u64, pIn: rawptr, frameCountIn: u64, pConfig: ^data_converter_config) -> u64 ---
```

### [convert\_pcm\_frames\_format ¶](#convert_pcm_frames_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L374)

```
convert_pcm_frames_format :: proc "c" (
	pOut:       rawptr, 
	formatOut:  format, 
	pIn:        rawptr, 
	formatIn:   format, 
	frameCount: u64, 
	channels:   u32, 
	ditherMode: dither_mode, 
) ---
```

### [copy\_and\_apply\_volume\_factor\_f32 ¶](#copy_and_apply_volume_factor_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L61)

```
copy_and_apply_volume_factor_f32 :: proc "c" (pSamplesOut, pSamplesIn: [^]f32, sampleCount: u64, factor: f64) ---
```

### [copy\_and\_apply\_volume\_factor\_pcm\_frames ¶](#copy_and_apply_volume_factor_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L74)

```
copy_and_apply_volume_factor_pcm_frames :: proc "c" (
	pFramesOut, pFramesIn: rawptr, 
	frameCount:            u64, 
	format:                format, 
	channels:              u32, 
	factor:                f32, 
) ---
```

### [copy\_and\_apply\_volume\_factor\_pcm\_frames\_f32 ¶](#copy_and_apply_volume_factor_pcm_frames_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L73)

```
copy_and_apply_volume_factor_pcm_frames_f32 :: proc "c" (pPCMFramesOut, pPCMFramesIn: [^]f32, frameCount: u64, channels: u32, factor: f32) ---
```

### [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s16 ¶](#copy_and_apply_volume_factor_pcm_frames_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L70)

```
copy_and_apply_volume_factor_pcm_frames_s16 :: proc "c" (pPCMFramesOut, pPCMFramesIn: [^]i16, frameCount: u64, channels: u32, factor: f32) ---
```

### [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s24 ¶](#copy_and_apply_volume_factor_pcm_frames_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L71)

```
copy_and_apply_volume_factor_pcm_frames_s24 :: proc "c" (pPCMFramesOut, pPCMFramesIn: rawptr, frameCount: u64, channels: u32, factor: f32) ---
```

### [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s32 ¶](#copy_and_apply_volume_factor_pcm_frames_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L72)

```
copy_and_apply_volume_factor_pcm_frames_s32 :: proc "c" (pPCMFramesOut, pPCMFramesIn: [^]i32, frameCount: u64, channels: u32, factor: f32) ---
```

### [copy\_and\_apply\_volume\_factor\_pcm\_frames\_u8 ¶](#copy_and_apply_volume_factor_pcm_frames_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L69)

```
copy_and_apply_volume_factor_pcm_frames_u8 :: proc "c" (pPCMFramesOut, pPCMFramesIn: [^]u8, frameCount: u64, channels: u32, factor: f32) ---
```

### [copy\_and\_apply\_volume\_factor\_per\_channel\_f32 ¶](#copy_and_apply_volume_factor_per_channel_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L83)

```
copy_and_apply_volume_factor_per_channel_f32 :: proc "c" (pFramesOut, pFramesIn: [^]f32, frameCount: u64, channels: u32, pChannelGains: [^]f32) ---
```

### [copy\_and\_apply\_volume\_factor\_s16 ¶](#copy_and_apply_volume_factor_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L58)

```
copy_and_apply_volume_factor_s16 :: proc "c" (pSamplesOut, pSamplesIn: [^]i16, sampleCount: u64, factor: f64) ---
```

### [copy\_and\_apply\_volume\_factor\_s24 ¶](#copy_and_apply_volume_factor_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L59)

```
copy_and_apply_volume_factor_s24 :: proc "c" (pSamplesOut, pSamplesIn: rawptr, sampleCount: u64, factor: f64) ---
```

### [copy\_and\_apply\_volume\_factor\_s32 ¶](#copy_and_apply_volume_factor_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L60)

```
copy_and_apply_volume_factor_s32 :: proc "c" (pSamplesOut, pSamplesIn: [^]i32, sampleCount: u64, factor: f64) ---
```

### [copy\_and\_apply\_volume\_factor\_u8 ¶](#copy_and_apply_volume_factor_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L57)

```
copy_and_apply_volume_factor_u8 :: proc "c" (pSamplesOut, pSamplesIn: [^]u8, sampleCount: u64, factor: f64) ---
```

 

Helper for applying a volume factor to samples.

Note that the source and destination buffers can be the same, in which case it'll perform the operation in-place.

### [copy\_pcm\_frames ¶](#copy_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L22)

```
copy_pcm_frames :: proc "c" (dst: rawptr, src: rawptr, frameCount: u64, format: format, channels: u32) ---
```

 

Copies PCM frames from one buffer to another.

### [data\_converter\_config\_init ¶](#data_converter_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L326)

```
data_converter_config_init :: proc "c" (
	formatIn, formatOut:     format, 
	channelsIn, channelsOut: u32, 
	sampleRateIn, 
	sampleRateOut:           u32, 
) -> data_converter_config ---
```

### [data\_converter\_config\_init\_default ¶](#data_converter_config_init_default) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L325)

```
data_converter_config_init_default :: proc "c" () -> data_converter_config ---
```

### [data\_converter\_get\_expected\_output\_frame\_count ¶](#data_converter_get_expected_output_frame_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L338)

```
data_converter_get_expected_output_frame_count :: proc "c" (pConverter: ^data_converter, inputFrameCount: u64, pOutputFrameCount: ^u64) -> result ---
```

### [data\_converter\_get\_heap\_size ¶](#data_converter_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L328)

```
data_converter_get_heap_size :: proc "c" (pConfig: ^data_converter_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [data\_converter\_get\_input\_channel\_map ¶](#data_converter_get_input_channel_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L339)

```
data_converter_get_input_channel_map :: proc "c" (pConverter: ^data_converter, pChannelMap: [^]channel, channelMapCap: uint) -> result ---
```

### [data\_converter\_get\_input\_latency ¶](#data_converter_get_input_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L335)

```
data_converter_get_input_latency :: proc "c" (pConverter: ^data_converter) -> u64 ---
```

### [data\_converter\_get\_output\_channel\_map ¶](#data_converter_get_output_channel_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L340)

```
data_converter_get_output_channel_map :: proc "c" (pConverter: ^data_converter, pChannelMap: [^]channel, channelMapCap: uint) -> result ---
```

### [data\_converter\_get\_output\_latency ¶](#data_converter_get_output_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L336)

```
data_converter_get_output_latency :: proc "c" (pConverter: ^data_converter) -> u64 ---
```

### [data\_converter\_get\_required\_input\_frame\_count ¶](#data_converter_get_required_input_frame_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L337)

```
data_converter_get_required_input_frame_count :: proc "c" (pConverter: ^data_converter, outputFrameCount: u64, pInputFrameCount: ^u64) -> result ---
```

### [data\_converter\_init ¶](#data_converter_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L330)

```
data_converter_init :: proc "c" (pConfig: ^data_converter_config, pAllocationCallbacks: ^allocation_callbacks, pConverter: ^data_converter) -> result ---
```

### [data\_converter\_init\_preallocated ¶](#data_converter_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L329)

```
data_converter_init_preallocated :: proc "c" (pConfig: ^data_converter_config, pHeap: rawptr, pConverter: ^data_converter) -> result ---
```

### [data\_converter\_process\_pcm\_frames ¶](#data_converter_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L332)

```
data_converter_process_pcm_frames :: proc "c" (pConverter: ^data_converter, pFramesIn: rawptr, pFrameCountIn: ^u64, pFramesOut: rawptr, pFrameCountOut: ^u64) -> result ---
```

### [data\_converter\_reset ¶](#data_converter_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L341)

```
data_converter_reset :: proc "c" (pConverter: ^data_converter) -> result ---
```

### [data\_converter\_set\_rate ¶](#data_converter_set_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L333)

```
data_converter_set_rate :: proc "c" (pConverter: ^data_converter, sampleRateIn, sampleRateOut: u32) -> result ---
```

### [data\_converter\_set\_rate\_ratio ¶](#data_converter_set_rate_ratio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L334)

```
data_converter_set_rate_ratio :: proc "c" (pConverter: ^data_converter, ratioInOut: f32) -> result ---
```

### [data\_converter\_uninit ¶](#data_converter_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L331)

```
data_converter_uninit :: proc "c" (pConverter: ^data_converter, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [data\_source\_config\_init ¶](#data_source_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L159)

```
data_source_config_init :: proc "c" () -> data_source_config ---
```

### [data\_source\_get\_current ¶](#data_source_get_current) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L180)

```
data_source_get_current :: proc "c" (pDataSource: ^data_source) -> ^data_source ---
```

### [data\_source\_get\_cursor\_in\_pcm\_frames ¶](#data_source_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L169)

```
data_source_get_cursor_in_pcm_frames :: proc "c" (pDataSource: ^data_source, pCursor: ^u64) -> result ---
```

### [data\_source\_get\_cursor\_in\_seconds ¶](#data_source_get_cursor_in_seconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L171)

```
data_source_get_cursor_in_seconds :: proc "c" (pDataSource: ^data_source, pCursor: ^f32) -> result ---
```

### [data\_source\_get\_data\_format ¶](#data_source_get_data_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L168)

```
data_source_get_data_format :: proc "c" (
	pDataSource:   ^data_source, 
	pFormat:       ^format, 
	pChannels:     ^u32, 
	pSampleRate:   ^u32, 
	pChannelMap:   [^]channel, 
	channelMapCap: uint, 
) -> result ---
```

### [data\_source\_get\_length\_in\_pcm\_frames ¶](#data_source_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L170)

```
data_source_get_length_in_pcm_frames :: proc "c" (pDataSource: ^data_source, pLength: ^u64) -> result ---
```

 

Returns MA\_NOT\_IMPLEMENTED if the length is unknown or cannot be determined. Decoders can return this.

### [data\_source\_get\_length\_in\_seconds ¶](#data_source_get_length_in_seconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L172)

```
data_source_get_length_in_seconds :: proc "c" (pDataSource: ^data_source, pLength: ^f32) -> result ---
```

### [data\_source\_get\_loop\_point\_in\_pcm\_frames ¶](#data_source_get_loop_point_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L178)

```
data_source_get_loop_point_in_pcm_frames :: proc "c" (pDataSource: ^data_source, pLoopBegInFrames: ^u64, pLoopEndInFrames: ^u64) ---
```

### [data\_source\_get\_next ¶](#data_source_get_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L182)

```
data_source_get_next :: proc "c" (pDataSource: ^data_source) -> ^data_source ---
```

### [data\_source\_get\_next\_callback ¶](#data_source_get_next_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L184)

```
data_source_get_next_callback :: proc "c" (pDataSource: ^data_source) -> ^data_source_get_next_proc ---
```

### [data\_source\_get\_range\_in\_pcm\_frames ¶](#data_source_get_range_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L176)

```
data_source_get_range_in_pcm_frames :: proc "c" (pDataSource: ^data_source, pRangeBegInFrames: ^u64, pRangeEndInFrames: ^u64) ---
```

### [data\_source\_init ¶](#data_source_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L161)

```
data_source_init :: proc "c" (pConfig: ^data_source_config, pDataSource: ^data_source) -> result ---
```

### [data\_source\_is\_looping ¶](#data_source_is_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L174)

```
data_source_is_looping :: proc "c" (pDataSource: ^data_source) -> b32 ---
```

### [data\_source\_node\_config\_init ¶](#data_source_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L249)

```
data_source_node_config_init :: proc "c" (pDataSource: ^data_source) -> data_source_node_config ---
```

### [data\_source\_node\_init ¶](#data_source_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L251)

```
data_source_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^data_source_node_config, pAllocationCallbacks: ^allocation_callbacks, pDataSourceNode: ^data_source_node) -> result ---
```

### [data\_source\_node\_is\_looping ¶](#data_source_node_is_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L254)

```
data_source_node_is_looping :: proc "c" (pDataSourceNode: ^data_source_node) -> b32 ---
```

### [data\_source\_node\_set\_looping ¶](#data_source_node_set_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L253)

```
data_source_node_set_looping :: proc "c" (pDataSourceNode: ^data_source_node, isLooping: b32) -> result ---
```

### [data\_source\_node\_uninit ¶](#data_source_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L252)

```
data_source_node_uninit :: proc "c" (pDataSourceNode: ^data_source_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [data\_source\_read\_pcm\_frames ¶](#data_source_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L163)

```
data_source_read_pcm_frames :: proc "c" (pDataSource: ^data_source, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

 

Must support pFramesOut = NULL in which case a forward seek should be performed.

### [data\_source\_seek\_pcm\_frames ¶](#data_source_seek_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L164)

```
data_source_seek_pcm_frames :: proc "c" (pDataSource: ^data_source, frameCount: u64, pFramesSeeked: ^u64) -> result ---
```

 

Can only seek forward. Equivalent to ma\_data\_source\_read\_pcm\_frames(pDataSource, NULL, frameCount);

### [data\_source\_seek\_seconds ¶](#data_source_seek_seconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L166)

```
data_source_seek_seconds :: proc "c" (pDataSource: ^data_source, secondCount: f32, pSecondsSeeked: ^f32) -> result ---
```

 

Can only seek forward. Abstraction to ma\_data\_source\_seek\_pcm\_frames()

### [data\_source\_seek\_to\_pcm\_frame ¶](#data_source_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L165)

```
data_source_seek_to_pcm_frame :: proc "c" (pDataSource: ^data_source, frameIndex: u64) -> result ---
```

### [data\_source\_seek\_to\_seconds ¶](#data_source_seek_to_seconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L167)

```
data_source_seek_to_seconds :: proc "c" (pDataSource: ^data_source, seekPointInSeconds: f32) -> result ---
```

 

Abstraction to ma\_data\_source\_seek\_to\_pcm\_frame()

### [data\_source\_set\_current ¶](#data_source_set_current) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L179)

```
data_source_set_current :: proc "c" (pDataSource: ^data_source, pCurrentDataSource: ^data_source) -> result ---
```

### [data\_source\_set\_loop\_point\_in\_pcm\_frames ¶](#data_source_set_loop_point_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L177)

```
data_source_set_loop_point_in_pcm_frames :: proc "c" (pDataSource: ^data_source, loopBegInFrames: u64, loopEndInFrames: u64) -> result ---
```

### [data\_source\_set\_looping ¶](#data_source_set_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L173)

```
data_source_set_looping :: proc "c" (pDataSource: ^data_source, isLooping: b32) -> result ---
```

### [data\_source\_set\_next ¶](#data_source_set_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L181)

```
data_source_set_next :: proc "c" (pDataSource: ^data_source, pNextDataSource: ^data_source) -> result ---
```

### [data\_source\_set\_next\_callback ¶](#data_source_set_next_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L183)

```
data_source_set_next_callback :: proc "c" (pDataSource: ^data_source, onGetNext: ^data_source_get_next_proc) -> result ---
```

### [data\_source\_set\_range\_in\_pcm\_frames ¶](#data_source_set_range_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L175)

```
data_source_set_range_in_pcm_frames :: proc "c" (pDataSource: ^data_source, rangeBegInFrames: u64, rangeEndInFrames: u64) -> result ---
```

### [data\_source\_uninit ¶](#data_source_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L162)

```
data_source_uninit :: proc "c" (pDataSource: ^data_source) ---
```

### [decode\_file ¶](#decode_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L162)

```
decode_file :: proc "c" (pFilePath: cstring, pConfig: ^decoder_config, pFrameCountOut: ^u64, ppPCMFramesOut: ^rawptr) -> result ---
```

### [decode\_from\_vfs ¶](#decode_from_vfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L161)

```
decode_from_vfs :: proc "c" (pVFS: ^vfs, pFilePath: cstring, pConfig: ^decoder_config, pFrameCountOut: ^u64, ppPCMFramesOut: ^rawptr) -> result ---
```

 

Helper for opening and decoding a file into a heap allocated block of memory. Free the returned pointer with ma\_free(). On input,
pConfig should be set to what you want. On output it will be set to what you got.

### [decode\_memory ¶](#decode_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L163)

```
decode_memory :: proc "c" (pData: rawptr, dataSize: uint, pConfig: ^decoder_config, pFrameCountOut: ^u64, ppPCMFramesOut: ^rawptr) -> result ---
```

### [decoder\_config\_init ¶](#decoder_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L91)

```
decoder_config_init :: proc "c" (outputFormat: format, outputChannels, outputSampleRate: u32) -> decoder_config ---
```

### [decoder\_config\_init\_default ¶](#decoder_config_init_default) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L92)

```
decoder_config_init_default :: proc "c" () -> decoder_config ---
```

### [decoder\_get\_available\_frames ¶](#decoder_get_available_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L155)

```
decoder_get_available_frames :: proc "c" (pDecoder: ^decoder, pAvailableFrames: ^u64) -> result ---
```

 

Retrieves the number of frames that can be read before reaching the end.

This calls `ma_decoder_get_length_in_pcm_frames()` so you need to be aware of the rules for that function, in
particular ensuring you do not call it on streams of an undefined length, such as internet radio.

If the total length of the decoder cannot be retrieved, such as with Vorbis decoders, `MA_NOT_IMPLEMENTED` will be
returned.

### [decoder\_get\_cursor\_in\_pcm\_frames ¶](#decoder_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L128)

```
decoder_get_cursor_in_pcm_frames :: proc "c" (pDecoder: ^decoder, pCursor: ^u64) -> result ---
```

 

Retrieves the current position of the read cursor in PCM frames.

### [decoder\_get\_data\_format ¶](#decoder_get_data_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L123)

```
decoder_get_data_format :: proc "c" (
	pDecoder:               ^decoder, 
	pFormat:                ^format, 
	pChannels, pSampleRate: ^u32, 
	pChannelMap:            ^channel, 
	channelMapCap:          uint, 
) -> result ---
```

 

Retrieves the decoder's output data format.

### [decoder\_get\_length\_in\_pcm\_frames ¶](#decoder_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L144)

```
decoder_get_length_in_pcm_frames :: proc "c" (pDecoder: ^decoder, pLength: ^u64) -> result ---
```

 

Retrieves the length of the decoder in PCM frames.

Do not call this on streams of an undefined length, such as internet radio.

If the length is unknown or an error occurs, 0 will be returned.

This will always return 0 for Vorbis decoders. This is due to a limitation with stb\_vorbis in push mode which is what miniaudio
uses internally.

For MP3's, this will decode the entire file. Do not call this in time critical scenarios.

This function is not thread safe without your own synchronization.

### [decoder\_init ¶](#decoder_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L94)

```
decoder_init :: proc "c" (onRead: decoder_read_proc, onSeek: decoder_seek_proc, pUserData: rawptr, pConfig: ^decoder_config, pDecoder: ^decoder) -> result ---
```

### [decoder\_init\_file ¶](#decoder_init_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L98)

```
decoder_init_file :: proc "c" (pFilePath: cstring, pConfig: ^decoder_config, pDecoder: ^decoder) -> result ---
```

### [decoder\_init\_file\_w ¶](#decoder_init_file_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L99)

```
decoder_init_file_w :: proc "c" (pFilePath: [^]u16, pConfig: ^decoder_config, pDecoder: ^decoder) -> result ---
```

### [decoder\_init\_memory ¶](#decoder_init_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L95)

```
decoder_init_memory :: proc "c" (pData: rawptr, dataSize: uint, pConfig: ^decoder_config, pDecoder: ^decoder) -> result ---
```

### [decoder\_init\_vfs ¶](#decoder_init_vfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L96)

```
decoder_init_vfs :: proc "c" (pVFS: ^vfs, pFilePath: cstring, pConfig: ^decoder_config, pDecoder: ^decoder) -> result ---
```

### [decoder\_init\_vfs\_w ¶](#decoder_init_vfs_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L97)

```
decoder_init_vfs_w :: proc "c" (pVFS: ^vfs, pFilePath: [^]u16, pConfig: ^decoder_config, pDecoder: ^decoder) -> result ---
```

### [decoder\_read\_pcm\_frames ¶](#decoder_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L111)

```
decoder_read_pcm_frames :: proc "c" (pDecoder: ^decoder, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

 

Reads PCM frames from the given decoder.

This is not thread safe without your own synchronization.

### [decoder\_seek\_to\_pcm\_frame ¶](#decoder_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L118)

```
decoder_seek_to_pcm_frame :: proc "c" (pDecoder: ^decoder, frameIndex: u64) -> result ---
```

 

Seeks to a PCM frame based on its absolute index.

This is not thread safe without your own synchronization.

### [decoder\_uninit ¶](#decoder_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L104)

```
decoder_uninit :: proc "c" (pDecoder: ^decoder) -> result ---
```

 

Uninitializes a decoder.

### [decoding\_backend\_config\_init ¶](#decoding_backend_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin#L24)

```
decoding_backend_config_init :: proc "c" (preferredFormat: format, seekPointCount: u32) -> decoding_backend_config ---
```

### [default\_vfs\_init ¶](#default_vfs_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L69)

```
default_vfs_init :: proc "c" (pVFS: ^default_vfs, pAllocationCallbacks: ^allocation_callbacks) -> result ---
```

### [deinterleave\_pcm\_frames ¶](#deinterleave_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L379)

```
deinterleave_pcm_frames :: proc "c" (format: format, channels: u32, frameCount: u64, pInterleavedPCMFrames: rawptr, ppDeinterleavedPCMFrames: ^rawptr) ---
```

 

Deinterleaves an interleaved buffer.

### [delay\_config\_init ¶](#delay_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L29)

```
delay_config_init :: proc "c" (channels, sampleRate, delayInFrames: u32, decay: f32) -> delay_config ---
```

### [delay\_get\_decay ¶](#delay_get_decay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L39)

```
delay_get_decay :: proc "c" (pDelay: ^delay) -> f32 ---
```

### [delay\_get\_dry ¶](#delay_get_dry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L37)

```
delay_get_dry :: proc "c" (pDelay: ^delay) -> f32 ---
```

### [delay\_get\_wet ¶](#delay_get_wet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L35)

```
delay_get_wet :: proc "c" (pDelay: ^delay) -> f32 ---
```

### [delay\_init ¶](#delay_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L31)

```
delay_init :: proc "c" (pConfig: ^delay_config, pAllocationCallbacks: ^allocation_callbacks, pDelay: ^delay) -> result ---
```

### [delay\_node\_config\_init ¶](#delay_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L477)

```
delay_node_config_init :: proc "c" (channels, sampleRate, delayInFrames: u32, decay: f32) -> delay_node_config ---
```

### [delay\_node\_get\_decay ¶](#delay_node_get_decay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L486)

```
delay_node_get_decay :: proc "c" (pDelayNode: ^delay_node) -> f32 ---
```

### [delay\_node\_get\_dry ¶](#delay_node_get_dry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L484)

```
delay_node_get_dry :: proc "c" (pDelayNode: ^delay_node) -> f32 ---
```

### [delay\_node\_get\_wet ¶](#delay_node_get_wet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L482)

```
delay_node_get_wet :: proc "c" (pDelayNode: ^delay_node) -> f32 ---
```

### [delay\_node\_init ¶](#delay_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L479)

```
delay_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^delay_node_config, pAllocationCallbacks: ^allocation_callbacks, pDelayNode: ^delay_node) -> result ---
```

### [delay\_node\_set\_decay ¶](#delay_node_set_decay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L485)

```
delay_node_set_decay :: proc "c" (pDelayNode: ^delay_node, value: f32) ---
```

### [delay\_node\_set\_dry ¶](#delay_node_set_dry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L483)

```
delay_node_set_dry :: proc "c" (pDelayNode: ^delay_node, value: f32) ---
```

### [delay\_node\_set\_wet ¶](#delay_node_set_wet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L481)

```
delay_node_set_wet :: proc "c" (pDelayNode: ^delay_node, value: f32) ---
```

### [delay\_node\_uninit ¶](#delay_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L480)

```
delay_node_uninit :: proc "c" (pDelayNode: ^delay_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [delay\_process\_pcm\_frames ¶](#delay_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L33)

```
delay_process_pcm_frames :: proc "c" (pDelay: ^delay, pFramesOut, pFramesIn: rawptr, frameCount: u32) -> result ---
```

### [delay\_set\_decay ¶](#delay_set_decay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L38)

```
delay_set_decay :: proc "c" (pDelay: ^delay, value: f32) ---
```

### [delay\_set\_dry ¶](#delay_set_dry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L36)

```
delay_set_dry :: proc "c" (pDelay: ^delay, value: f32) ---
```

### [delay\_set\_wet ¶](#delay_set_wet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L34)

```
delay_set_wet :: proc "c" (pDelay: ^delay, value: f32) ---
```

### [delay\_uninit ¶](#delay_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L32)

```
delay_uninit :: proc "c" (pDelay: ^delay, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [device\_config\_init ¶](#device_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L547)

```
device_config_init :: proc "c" (deviceType: device_type) -> device_config ---
```

 

Initializes a device config with default settings.

Parameters
----------
deviceType (in)

```
	The type of the device this config is being initialized for. This must set to one of the following:

	|-------------------------|
	| Device Type             |
	|-------------------------|
	| ma_device_type_playback |
	| ma_device_type_capture  |
	| ma_device_type_duplex   |
	| ma_device_type_loopback |
	|-------------------------|
```

Return Value
------------
A new device config object with default settings. You will typically want to adjust the config after this function returns. See remarks.

Thread Safety
-------------
Safe.

Callback Safety
---------------
Safe, but don't try initializing a device in a callback.

Remarks
-------
The returned config will be initialized to defaults. You will normally want to customize a few variables before initializing the device. See Example 1 for a
typical configuration which sets the sample format, channel count, sample rate, data callback and user data. These are usually things you will want to change
before initializing the device.

See `ma_device_init()` for details on specific configuration options.

Example 1 - Simple Configuration
--------------------------------
The example below is what a program will typically want to configure for each device at a minimum. Notice how `ma_device_config_init()` is called first, and
then the returned object is modified directly. This is important because it ensures that your program continues to work as new configuration options are added
to the `ma_device_config` structure.

`c
ma\_device\_config config = ma\_device\_config\_init(ma\_device\_type\_playback);
config.playback.format = ma\_format\_f32;
config.playback.channels = 2;
config.sampleRate = 48000;
config.dataCallback = ma\_data\_callback;
config.pUserData = pMyUserData;
`

See Also
--------
ma\_device\_init()
ma\_device\_init\_ex()

### [device\_get\_context ¶](#device_get_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L978)

```
device_get_context :: proc "c" (pDevice: ^device) -> ^context_type ---
```

 

Retrieves a pointer to the context that owns the given device.

### [device\_get\_info ¶](#device_get_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1019)

```
device_get_info :: proc "c" (pDevice: ^device, type: device_type, pDeviceInfo: ^device_info) -> result ---
```

 

Retrieves information about the device.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose information is being retrieved.
```

type (in)

```
	The device type. This parameter is required for duplex devices. When retrieving device
	information, you are doing so for an individual playback or capture device.
```

pDeviceInfo (out)

```
	A pointer to the `ma_device_info` that will receive the device information.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Unsafe. This should be considered unsafe because it may be calling into the backend which may or
may not be safe.

Callback Safety
---------------
Unsafe. You should avoid calling this in the data callback because it may call into the backend
which may or may not be safe.

### [device\_get\_log ¶](#device_get_log) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L983)

```
device_get_log :: proc "c" (pDevice: ^device) -> ^log ---
```

 

Helper function for retrieving the log object associated with the context that owns this device.

### [device\_get\_master\_volume ¶](#device_get_master_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1391)

```
device_get_master_volume :: proc "c" (pDevice: ^device, pVolume: ^f32) -> result ---
```

 

Retrieves the master volume factor for the device.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose volume factor is being retrieved.
```

pVolume (in)

```
	A pointer to the variable that will receive the volume factor. The returned value will be in the range of [0, 1].
```

Return Value
------------
MA\_SUCCESS if successful.
MA\_INVALID\_ARGS if pDevice is NULL.
MA\_INVALID\_ARGS if pVolume is NULL.

Thread Safety
-------------
Safe. This just a simple member retrieval.

Callback Safety
---------------
Safe.

Remarks
-------
If an error occurs, `*pVolume` will be set to 0.

See Also
--------
ma\_device\_set\_master\_volume()
ma\_device\_set\_master\_volume\_gain\_db()
ma\_device\_get\_master\_volume\_gain\_db()

### [device\_get\_master\_volume\_db ¶](#device_get_master_volume_db) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1481)

```
device_get_master_volume_db :: proc "c" (pDevice: ^device, pGainDB: ^f32) -> result ---
```

 

Retrieves the master gain in decibels.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose gain is being retrieved.
```

pGainDB (in)

```
	A pointer to the variable that will receive the gain in decibels. The returned value will be <= 0.
```

Return Value
------------
MA\_SUCCESS if successful.
MA\_INVALID\_ARGS if pDevice is NULL.
MA\_INVALID\_ARGS if pGainDB is NULL.

Thread Safety
-------------
Safe. This just a simple member retrieval.

Callback Safety
---------------
Safe.

Remarks
-------
If an error occurs, `*pGainDB` will be set to 0.

See Also
--------
ma\_device\_set\_master\_volume\_db()
ma\_device\_set\_master\_volume()
ma\_device\_get\_master\_volume()

### [device\_get\_name ¶](#device_get_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1072)

```
device_get_name :: proc "c" (pDevice: ^device, type: device_type, pName: [^]u8, nameCap: uint, pLengthNotIncludingNullTerminator: ^uint) -> result ---
```

 

Retrieves the name of the device.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose information is being retrieved.
```

type (in)

```
	The device type. This parameter is required for duplex devices. When retrieving device
	information, you are doing so for an individual playback or capture device.
```

pName (out)

```
	A pointer to the buffer that will receive the name.
```

nameCap (in)

```
	The capacity of the output buffer, including space for the null terminator.
```

pLengthNotIncludingNullTerminator (out, optional)

```
	A pointer to the variable that will receive the length of the name, not including the null
	terminator.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Unsafe. This should be considered unsafe because it may be calling into the backend which may or
may not be safe.

Callback Safety
---------------
Unsafe. You should avoid calling this in the data callback because it may call into the backend
which may or may not be safe.

Remarks
-------
If the name does not fully fit into the output buffer, it'll be truncated. You can pass in NULL to
`pName` if you want to first get the length of the name for the purpose of memory allocation of the
output buffer. Allocating a buffer of size `MA_MAX_DEVICE_NAME_LENGTH + 1` should be enough for
most cases and will avoid the need for the inefficiency of calling this function twice.

This is implemented in terms of `ma_device_get_info()`.

### [device\_get\_state ¶](#device_get_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1250)

```
device_get_state :: proc "c" (pDevice: ^device) -> device_state ---
```

 

Retrieves the state of the device.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose state is being retrieved.
```

Return Value
------------
The current state of the device. The return value will be one of the following:

```
	+-------------------------------+------------------------------------------------------------------------------+
	| ma_device_state_uninitialized | Will only be returned if the device is in the middle of initialization.      |
	+-------------------------------+------------------------------------------------------------------------------+
	| ma_device_state_stopped       | The device is stopped. The initial state of the device after initialization. |
	+-------------------------------+------------------------------------------------------------------------------+
	| ma_device_state_started       | The device started and requesting and/or delivering audio data.              |
	+-------------------------------+------------------------------------------------------------------------------+
	| ma_device_state_starting      | The device is in the process of starting.                                    |
	+-------------------------------+------------------------------------------------------------------------------+
	| ma_device_state_stopping      | The device is in the process of stopping.                                    |
	+-------------------------------+------------------------------------------------------------------------------+
```

Thread Safety
-------------
Safe. This is implemented as a simple accessor. Note that if the device is started or stopped at the same time as this function is called,
there's a possibility the return value could be out of sync. See remarks.

Callback Safety
---------------
Safe. This is implemented as a simple accessor.

Remarks
-------
The general flow of a devices state goes like this:

```
	```
	ma_device_init()  -> ma_device_state_uninitialized -> ma_device_state_stopped
	ma_device_start() -> ma_device_state_starting      -> ma_device_state_started
	ma_device_stop()  -> ma_device_state_stopping      -> ma_device_state_stopped
	```
```

When the state of the device is changed with `ma_device_start()` or `ma_device_stop()` at this same time as this function is called, the
value returned by this function could potentially be out of sync. If this is significant to your program you need to implement your own
synchronization.

### [device\_handle\_backend\_data\_callback ¶](#device_handle_backend_data_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1529)

```
device_handle_backend_data_callback :: proc "c" (pDevice: ^device, pOutput, pInput: rawptr, frameCount: u32) -> result ---
```

 

Called from the data callback of asynchronous backends to allow miniaudio to process the data and fire the miniaudio data callback.

Parameters
----------
pDevice (in)

```
	A pointer to device whose processing the data callback.
```

pOutput (out)

```
	A pointer to the buffer that will receive the output PCM frame data. On a playback device this must not be NULL. On a duplex device
	this can be NULL, in which case pInput must not be NULL.
```

pInput (in)

```
	A pointer to the buffer containing input PCM frame data. On a capture device this must not be NULL. On a duplex device this can be
	NULL, in which case `pOutput` must not be NULL.
```

frameCount (in)

```
	The number of frames being processed.
```

Return Value
------------
MA\_SUCCESS if successful; any other result code otherwise.

Thread Safety
-------------
This function should only ever be called from the internal data callback of the backend. It is safe to call this simultaneously between a
playback and capture device in duplex setups.

Callback Safety
---------------
Do not call this from the miniaudio data callback. It should only ever be called from the internal data callback of the backend.

Remarks
-------
If both `pOutput` and `pInput` are NULL, and error will be returned. In duplex scenarios, both `pOutput` and `pInput` can be non-NULL, in
which case `pInput` will be processed first, followed by `pOutput`.

If you are implementing a custom backend, and that backend uses a callback for data delivery, you'll need to call this from inside that
callback.

### [device\_id\_equal ¶](#device_id_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L16)

```
device_id_equal :: proc "c" (pA: ^device_id, pB: ^device_id) -> b32 ---
```

### [device\_init ¶](#device_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L880)

```
device_init :: proc "c" (pContext: ^context_type, pConfig: ^device_config, pDevice: ^device) -> result ---
```

 

```
Initializes a device.

A device represents a physical audio device. The idea is you send or receive audio data from the device to either play it back through a speaker, or capture it
from a microphone. Whether or not you should send or receive data from the device (or both) depends on the type of device you are initializing which can be
playback, capture, full-duplex or loopback. (Note that loopback mode is only supported on select backends.) Sending and receiving audio data to and from the
device is done via a callback which is fired by miniaudio at periodic time intervals.

The frequency at which data is delivered to and from a device depends on the size of its period. The size of the period can be defined in terms of PCM frames
or milliseconds, whichever is more convenient. Generally speaking, the smaller the period, the lower the latency at the expense of higher CPU usage and
increased risk of glitching due to the more frequent and granular data deliver intervals. The size of a period will depend on your requirements, but
miniaudio's defaults should work fine for most scenarios. If you're building a game you should leave this fairly small, whereas if you're building a simple
media player you can make it larger. Note that the period size you request is actually just a hint - miniaudio will tell the backend what you want, but the
backend is ultimately responsible for what it gives you. You cannot assume you will get exactly what you ask for.

When delivering data to and from a device you need to make sure it's in the correct format which you can set through the device configuration. You just set the
format that you want to use and miniaudio will perform all of the necessary conversion for you internally. When delivering data to and from the callback you
can assume the format is the same as what you requested when you initialized the device. See Remarks for more details on miniaudio's data conversion pipeline.


Parameters
----------
pContext (in, optional)
		A pointer to the context that owns the device. This can be null, in which case it creates a default context internally.

pConfig (in)
		A pointer to the device configuration. Cannot be null. See remarks for details.

pDevice (out)
		A pointer to the device object being initialized.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. It is not safe to call this function simultaneously for different devices because some backends depend on and mutate global state. The same applies to
calling this at the same time as `ma_device_uninit()`.


Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback.


Remarks
-------
Setting `pContext` to NULL will result in miniaudio creating a default context internally and is equivalent to passing in a context initialized like so:

		```c
		ma_context_init(NULL, 0, NULL, &context);
		```

Do not set `pContext` to NULL if you are needing to open multiple devices. You can, however, use NULL when initializing the first device, and then use
device.pContext for the initialization of other devices.

The device can be configured via the `pConfig` argument. The config object is initialized with `ma_device_config_init()`. Individual configuration settings can
then be set directly on the structure. Below are the members of the `ma_device_config` object.

		deviceType
				Must be `ma_device_type_playback`, `ma_device_type_capture`, `ma_device_type_duplex` of `ma_device_type_loopback`.

		sampleRate
				The sample rate, in hertz. The most common sample rates are 48000 and 44100. Setting this to 0 will use the device's native sample rate.

		periodSizeInFrames
				The desired size of a period in PCM frames. If this is 0, `periodSizeInMilliseconds` will be used instead. If both are 0 the default buffer size will
				be used depending on the selected performance profile. This value affects latency. See below for details.

		periodSizeInMilliseconds
				The desired size of a period in milliseconds. If this is 0, `periodSizeInFrames` will be used instead. If both are 0 the default buffer size will be
				used depending on the selected performance profile. The value affects latency. See below for details.

		periods
				The number of periods making up the device's entire buffer. The total buffer size is `periodSizeInFrames` or `periodSizeInMilliseconds` multiplied by
				this value. This is just a hint as backends will be the ones who ultimately decide how your periods will be configured.

		performanceProfile
				A hint to miniaudio as to the performance requirements of your program. Can be either `ma_performance_profile_low_latency` (default) or
				`ma_performance_profile_conservative`. This mainly affects the size of default buffers and can usually be left at its default value.

		noPreSilencedOutputBuffer
				When set to true, the contents of the output buffer passed into the data callback will be left undefined. When set to false (default), the contents of
				the output buffer will be cleared the zero. You can use this to avoid the overhead of zeroing out the buffer if you can guarantee that your data
				callback will write to every sample in the output buffer, or if you are doing your own clearing.

		noClip
```

When set to true, the contents of the output buffer are left alone after returning and it will be left up to the backend itself to decide whether or
not to clip. When set to false (default), the contents of the output buffer passed into the data callback will be clipped after returning. This only

```
				applies when the playback sample format is f32.

		noDisableDenormals
				By default, miniaudio will disable denormals when the data callback is called. Setting this to true will prevent the disabling of denormals.

		noFixedSizedCallback
```

Allows miniaudio to fire the data callback with any frame count. When this is set to false (the default), the data callback will be fired with a
consistent frame count as specified by `periodSizeInFrames` or `periodSizeInMilliseconds`. When set to true, miniaudio will fire the callback with
whatever the backend requests, which could be anything.

```
		dataCallback
				The callback to fire whenever data is ready to be delivered to or from the device.

		notificationCallback
				The callback to fire when something has changed with the device, such as whether or not it has been started or stopped.

		pUserData
				The user data pointer to use with the device. You can access this directly from the device object like `device.pUserData`.

		resampling.algorithm
				The resampling algorithm to use when miniaudio needs to perform resampling between the rate specified by `sampleRate` and the device's native rate. The
				default value is `ma_resample_algorithm_linear`, and the quality can be configured with `resampling.linear.lpfOrder`.

		resampling.pBackendVTable
				A pointer to an optional vtable that can be used for plugging in a custom resampler.

		resampling.pBackendUserData
				A pointer that will passed to callbacks in pBackendVTable.

		resampling.linear.lpfOrder
				The linear resampler applies a low-pass filter as part of its processing for anti-aliasing. This setting controls the order of the filter. The higher
				the value, the better the quality, in general. Setting this to 0 will disable low-pass filtering altogether. The maximum value is
				`MA_MAX_FILTER_ORDER`. The default value is `min(4, MA_MAX_FILTER_ORDER)`.

		playback.pDeviceID
				A pointer to a `ma_device_id` structure containing the ID of the playback device to initialize. Setting this NULL (default) will use the system's
				default playback device. Retrieve the device ID from the `ma_device_info` structure, which can be retrieved using device enumeration.

		playback.format
				The sample format to use for playback. When set to `ma_format_unknown` the device's native format will be used. This can be retrieved after
				initialization from the device object directly with `device.playback.format`.

		playback.channels
				The number of channels to use for playback. When set to 0 the device's native channel count will be used. This can be retrieved after initialization
				from the device object directly with `device.playback.channels`.

		playback.pChannelMap
				The channel map to use for playback. When left empty, the device's native channel map will be used. This can be retrieved after initialization from the
				device object direct with `device.playback.pChannelMap`. When set, the buffer should contain `channels` items.

		playback.shareMode
				The preferred share mode to use for playback. Can be either `ma_share_mode_shared` (default) or `ma_share_mode_exclusive`. Note that if you specify
				exclusive mode, but it's not supported by the backend, initialization will fail. You can then fall back to shared mode if desired by changing this to
				ma_share_mode_shared and reinitializing.

		capture.pDeviceID
				A pointer to a `ma_device_id` structure containing the ID of the capture device to initialize. Setting this NULL (default) will use the system's
				default capture device. Retrieve the device ID from the `ma_device_info` structure, which can be retrieved using device enumeration.

		capture.format
				The sample format to use for capture. When set to `ma_format_unknown` the device's native format will be used. This can be retrieved after
				initialization from the device object directly with `device.capture.format`.

		capture.channels
				The number of channels to use for capture. When set to 0 the device's native channel count will be used. This can be retrieved after initialization
				from the device object directly with `device.capture.channels`.

		capture.pChannelMap
				The channel map to use for capture. When left empty, the device's native channel map will be used. This can be retrieved after initialization from the
				device object direct with `device.capture.pChannelMap`. When set, the buffer should contain `channels` items.

		capture.shareMode
				The preferred share mode to use for capture. Can be either `ma_share_mode_shared` (default) or `ma_share_mode_exclusive`. Note that if you specify
				exclusive mode, but it's not supported by the backend, initialization will fail. You can then fall back to shared mode if desired by changing this to
				ma_share_mode_shared and reinitializing.

		wasapi.noAutoConvertSRC
				WASAPI only. When set to true, disables WASAPI's automatic resampling and forces the use of miniaudio's resampler. Defaults to false.

		wasapi.noDefaultQualitySRC
				WASAPI only. Only used when `wasapi.noAutoConvertSRC` is set to false. When set to true, disables the use of `AUDCLNT_STREAMFLAGS_SRC_DEFAULT_QUALITY`.
				You should usually leave this set to false, which is the default.

		wasapi.noAutoStreamRouting
				WASAPI only. When set to true, disables automatic stream routing on the WASAPI backend. Defaults to false.

		wasapi.noHardwareOffloading
				WASAPI only. When set to true, disables the use of WASAPI's hardware offloading feature. Defaults to false.

		alsa.noMMap
				ALSA only. When set to true, disables MMap mode. Defaults to false.

		alsa.noAutoFormat
				ALSA only. When set to true, disables ALSA's automatic format conversion by including the SND_PCM_NO_AUTO_FORMAT flag. Defaults to false.

		alsa.noAutoChannels
				ALSA only. When set to true, disables ALSA's automatic channel conversion by including the SND_PCM_NO_AUTO_CHANNELS flag. Defaults to false.

		alsa.noAutoResample
				ALSA only. When set to true, disables ALSA's automatic resampling by including the SND_PCM_NO_AUTO_RESAMPLE flag. Defaults to false.

		pulse.pStreamNamePlayback
				PulseAudio only. Sets the stream name for playback.

		pulse.pStreamNameCapture
				PulseAudio only. Sets the stream name for capture.

		pulse.channelMap
			PulseAudio only. Sets the channel map that is requested from PulseAudio. See MA_PA_CHANNEL_MAP_* constants. Defaults to MA_PA_CHANNEL_MAP_AIFF.

		coreaudio.allowNominalSampleRateChange
				Core Audio only. Desktop only. When enabled, allows the sample rate of the device to be changed at the operating system level. This
				is disabled by default in order to prevent intrusive changes to the user's system. This is useful if you want to use a sample rate
				that is known to be natively supported by the hardware thereby avoiding the cost of resampling. When set to true, miniaudio will
				find the closest match between the sample rate requested in the device config and the sample rates natively supported by the
				hardware. When set to false, the sample rate currently set by the operating system will always be used.

		opensl.streamType
				OpenSL only. Explicitly sets the stream type. If left unset (`ma_opensl_stream_type_default`), the
				stream type will be left unset. Think of this as the type of audio you're playing.

		opensl.recordingPreset
				OpenSL only. Explicitly sets the type of recording your program will be doing. When left
				unset, the recording preset will be left unchanged.

		aaudio.usage
				AAudio only. Explicitly sets the nature of the audio the program will be consuming. When
				left unset, the usage will be left unchanged.

		aaudio.contentType
				AAudio only. Sets the content type. When left unset, the content type will be left unchanged.

		aaudio.inputPreset
				AAudio only. Explicitly sets the type of recording your program will be doing. When left
				unset, the input preset will be left unchanged.

		aaudio.noAutoStartAfterReroute
				AAudio only. Controls whether or not the device should be automatically restarted after a
				stream reroute. When set to false (default) the device will be restarted automatically;
				otherwise the device will be stopped.


Once initialized, the device's config is immutable. If you need to change the config you will need to initialize a new device.

After initializing the device it will be in a stopped state. To start it, use `ma_device_start()`.

If both `periodSizeInFrames` and `periodSizeInMilliseconds` are set to zero, it will default to `MA_DEFAULT_PERIOD_SIZE_IN_MILLISECONDS_LOW_LATENCY` or
`MA_DEFAULT_PERIOD_SIZE_IN_MILLISECONDS_CONSERVATIVE`, depending on whether or not `performanceProfile` is set to `ma_performance_profile_low_latency` or
`ma_performance_profile_conservative`.

If you request exclusive mode and the backend does not support it an error will be returned. For robustness, you may want to first try initializing the device
in exclusive mode, and then fall back to shared mode if required. Alternatively you can just request shared mode (the default if you leave it unset in the
config) which is the most reliable option. Some backends do not have a practical way of choosing whether or not the device should be exclusive or not (ALSA,
for example) in which case it just acts as a hint. Unless you have special requirements you should try avoiding exclusive mode as it's intrusive to the user.
Starting with Windows 10, miniaudio will use low-latency shared mode where possible which may make exclusive mode unnecessary.

When sending or receiving data to/from a device, miniaudio will internally perform a format conversion to convert between the format specified by the config
and the format used internally by the backend. If you pass in 0 for the sample format, channel count, sample rate _and_ channel map, data transmission will run
on an optimized pass-through fast path. You can retrieve the format, channel count and sample rate by inspecting the `playback/capture.format`,
`playback/capture.channels` and `sampleRate` members of the device object.

When compiling for UWP you must ensure you call this function on the main UI thread because the operating system may need to present the user with a message
asking for permissions. Please refer to the official documentation for ActivateAudioInterfaceAsync() for more information.

ALSA Specific: When initializing the default device, requesting shared mode will try using the "dmix" device for playback and the "dsnoop" device for capture.
If these fail it will try falling back to the "hw" device.


Example 1 - Simple Initialization
---------------------------------
This example shows how to initialize a simple playback device using a standard configuration. If you are just needing to do simple playback from the default
playback device this is usually all you need.

```c
ma_device_config config = ma_device_config_init(ma_device_type_playback);
config.playback.format   = ma_format_f32;
config.playback.channels = 2;
config.sampleRate        = 48000;
config.dataCallback      = ma_data_callback;
config.pMyUserData       = pMyUserData;

ma_device device;
ma_result result = ma_device_init(NULL, &config, &device);
if (result != MA_SUCCESS) {
		// Error
}
```


Example 2 - Advanced Initialization
-----------------------------------
This example shows how you might do some more advanced initialization. In this hypothetical example we want to control the latency by setting the buffer size
and period count. We also want to allow the user to be able to choose which device to output from which means we need a context so we can perform device
enumeration.

```c
ma_context context;
ma_result result = ma_context_init(NULL, 0, NULL, &context);
if (result != MA_SUCCESS) {
		// Error
}

ma_device_info* pPlaybackDeviceInfos;
ma_uint32 playbackDeviceCount;
result = ma_context_get_devices(&context, &pPlaybackDeviceInfos, &playbackDeviceCount, NULL, NULL);
if (result != MA_SUCCESS) {
		// Error
}

// ... choose a device from pPlaybackDeviceInfos ...

ma_device_config config = ma_device_config_init(ma_device_type_playback);
config.playback.pDeviceID       = pMyChosenDeviceID;    // <-- Get this from the `id` member of one of the `ma_device_info` objects returned by ma_context_get_devices().
config.playback.format          = ma_format_f32;
config.playback.channels        = 2;
config.sampleRate               = 48000;
config.dataCallback             = ma_data_callback;
config.pUserData                = pMyUserData;
config.periodSizeInMilliseconds = 10;
config.periods                  = 3;

ma_device device;
result = ma_device_init(&context, &config, &device);
if (result != MA_SUCCESS) {
		// Error
}
```


See Also
--------
ma_device_config_init()
ma_device_uninit()
ma_device_start()
ma_context_init()
ma_context_get_devices()
ma_context_enumerate_devices()
```

### [device\_init\_ex ¶](#device_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L938)

```
device_init_ex :: proc "c" (backends: [^]backend, backendCount: u32, pContextConfig: ^context_config, pConfig: ^device_config, pDevice: ^device) -> result ---
```

 

Initializes a device without a context, with extra parameters for controlling the configuration of the internal self-managed context.

This is the same as `ma_device_init()`, only instead of a context being passed in, the parameters from `ma_context_init()` are passed in instead. This function
allows you to configure the internally created context.

Parameters
----------
backends (in, optional)

```
	A list of backends to try initializing, in priority order. Can be NULL, in which case it uses default priority order.
```

backendCount (in, optional)

```
	The number of items in `backend`. Ignored if `backend` is NULL.
```

pContextConfig (in, optional)

```
	The context configuration.
```

pConfig (in)

```
	A pointer to the device configuration. Cannot be null. See remarks for details.
```

pDevice (out)

```
	A pointer to the device object being initialized.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Unsafe. It is not safe to call this function simultaneously for different devices because some backends depend on and mutate global state. The same applies to
calling this at the same time as `ma_device_uninit()`.

Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback.

Remarks
-------
You only need to use this function if you want to configure the context differently to its defaults. You should never use this function if you want to manage
your own context.

See the documentation for `ma_context_init()` for information on the different context configuration options.

See Also
--------
ma\_device\_init()
ma\_device\_uninit()
ma\_device\_config\_init()
ma\_context\_init()

### [device\_is\_started ¶](#device_is_started) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1195)

```
device_is_started :: proc "c" (pDevice: ^device) -> b32 ---
```

 

Determines whether or not the device is started.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose start state is being retrieved.
```

Return Value
------------
True if the device is started, false otherwise.

Thread Safety
-------------
Safe. If another thread calls `ma_device_start()` or `ma_device_stop()` at this same time as this function is called, there's a very small chance the return
value will be out of sync.

Callback Safety
---------------
Safe. This is implemented as a simple accessor.

See Also
--------
ma\_device\_start()
ma\_device\_stop()

### [device\_job\_thread\_config\_init ¶](#device_job_thread_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L9)

```
device_job_thread_config_init :: proc "c" () -> device_job_thread_config ---
```

### [device\_job\_thread\_init ¶](#device_job_thread_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L11)

```
device_job_thread_init :: proc "c" (pConfig: ^device_job_thread_config, pAllocationCallbacks: ^allocation_callbacks, pJobThread: ^device_job_thread) -> result ---
```

### [device\_job\_thread\_next ¶](#device_job_thread_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L14)

```
device_job_thread_next :: proc "c" (pJobThread: ^device_job_thread, pJob: ^job) -> result ---
```

### [device\_job\_thread\_post ¶](#device_job_thread_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L13)

```
device_job_thread_post :: proc "c" (pJobThread: ^device_job_thread, pJob: ^job) -> result ---
```

### [device\_job\_thread\_uninit ¶](#device_job_thread_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L12)

```
device_job_thread_uninit :: proc "c" (pJobThread: ^device_job_thread, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [device\_post\_init ¶](#device_post_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1299)

```
device_post_init :: proc "c" (pDevice: ^device, deviceType: device_type, pPlaybackDescriptor, pCaptureDescriptor: ^device_descriptor) -> result ---
```

 

Performs post backend initialization routines for setting up internal data conversion.

This should be called whenever the backend is initialized. The only time this should be called from
outside of miniaudio is if you're implementing a custom backend, and you would only do it if you
are reinitializing the backend due to rerouting or reinitializing for some reason.

Parameters
----------
pDevice [in]

```
	A pointer to the device.
```

deviceType [in]

```
	The type of the device that was just reinitialized.
```

pPlaybackDescriptor [in]

```
	The descriptor of the playback device containing the internal data format and buffer sizes.
```

pPlaybackDescriptor [in]

```
	The descriptor of the capture device containing the internal data format and buffer sizes.
```

Return Value
------------
MA\_SUCCESS if successful; any other error otherwise.

Thread Safety
-------------
Unsafe. This will be reinitializing internal data converters which may be in use by another thread.

Callback Safety
---------------
Unsafe. This will be reinitializing internal data converters which may be in use by the callback.

Remarks
-------
For a duplex device, you can call this for only one side of the system. This is why the deviceType
is specified as a parameter rather than deriving it from the device.

You do not need to call this manually unless you are doing a custom backend, in which case you need
only do it if you're manually performing rerouting or reinitialization.

### [device\_set\_master\_volume ¶](#device_set_master_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1348)

```
device_set_master_volume :: proc "c" (pDevice: ^device, volume: f32) -> result ---
```

 

Sets the master volume factor for the device.

The volume factor must be between 0 (silence) and 1 (full volume). Use `ma_device_set_master_volume_db()` to use decibel notation, where 0 is full volume and
values less than 0 decreases the volume.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose volume is being set.
```

volume (in)

```
	The new volume factor. Must be >= 0.
```

Return Value
------------
MA\_SUCCESS if the volume was set successfully.
MA\_INVALID\_ARGS if pDevice is NULL.
MA\_INVALID\_ARGS if volume is negative.

Thread Safety
-------------
Safe. This just sets a local member of the device object.

Callback Safety
---------------
Safe. If you set the volume in the data callback, that data written to the output buffer will have the new volume applied.

Remarks
-------
This applies the volume factor across all channels.

This does not change the operating system's volume. It only affects the volume for the given `ma_device` object's audio stream.

See Also
--------
ma\_device\_get\_master\_volume()
ma\_device\_set\_master\_volume\_db()
ma\_device\_get\_master\_volume\_db()

### [device\_set\_master\_volume\_db ¶](#device_set_master_volume_db) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1438)

```
device_set_master_volume_db :: proc "c" (pDevice: ^device, gainDB: f32) -> result ---
```

 

Sets the master volume for the device as gain in decibels.

A gain of 0 is full volume, whereas a gain of < 0 will decrease the volume.

Parameters
----------
pDevice (in)

```
	A pointer to the device whose gain is being set.
```

gainDB (in)

```
	The new volume as gain in decibels. Must be less than or equal to 0, where 0 is full volume and anything less than 0 decreases the volume.
```

Return Value
------------
MA\_SUCCESS if the volume was set successfully.
MA\_INVALID\_ARGS if pDevice is NULL.
MA\_INVALID\_ARGS if the gain is > 0.

Thread Safety
-------------
Safe. This just sets a local member of the device object.

Callback Safety
---------------
Safe. If you set the volume in the data callback, that data written to the output buffer will have the new volume applied.

Remarks
-------
This applies the gain across all channels.

This does not change the operating system's volume. It only affects the volume for the given `ma_device` object's audio stream.

See Also
--------
ma\_device\_get\_master\_volume\_gain\_db()
ma\_device\_set\_master\_volume()
ma\_device\_get\_master\_volume()

### [device\_start ¶](#device_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1116)

```
device_start :: proc "c" (pDevice: ^device) -> result ---
```

 

Starts the device. For playback devices this begins playback. For capture devices it begins recording.

Use `ma_device_stop()` to stop the device.

Parameters
----------
pDevice (in)

```
	A pointer to the device to start.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Safe. It's safe to call this from any thread with the exception of the callback thread.

Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback.

Remarks
-------
For a playback device, this will retrieve an initial chunk of audio data from the client before returning. The reason for this is to ensure there is valid
audio data in the buffer, which needs to be done before the device begins playback.

This API waits until the backend device has been started for real by the worker thread. It also waits on a mutex for thread-safety.

Do not call this in any callback.

See Also
--------
ma\_device\_stop()

### [device\_stop ¶](#device_stop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1162)

```
device_stop :: proc "c" (pDevice: ^device) -> result ---
```

 

Stops the device. For playback devices this stops playback. For capture devices it stops recording.

Use `ma_device_start()` to start the device again.

Parameters
----------
pDevice (in)

```
	A pointer to the device to stop.
```

Return Value
------------
MA\_SUCCESS if successful; any other error code otherwise.

Thread Safety
-------------
Safe. It's safe to call this from any thread with the exception of the callback thread.

Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback. Doing this will result in a deadlock.

Remarks
-------
This API needs to wait on the worker thread to stop the backend device properly before returning. It also waits on a mutex for thread-safety. In addition, some
backends need to wait for the device to finish playback/recording of the current fragment which can take some time (usually proportionate to the buffer size
that was specified at initialization time).

Backends are required to either pause the stream in-place or drain the buffer if pausing is not possible. The reason for this is that stopping the device and
the resuming it with ma\_device\_start() (which you might do when your program loses focus) may result in a situation where those samples are never output to the
speakers or received from the microphone which can in turn result in de-syncs.

Do not call this in any callback.

See Also
--------
ma\_device\_start()

### [device\_uninit ¶](#device_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L972)

```
device_uninit :: proc "c" (pDevice: ^device) ---
```

 

Uninitializes a device.

This will explicitly stop the device. You do not need to call `ma_device_stop()` beforehand, but it's harmless if you do.

Parameters
----------
pDevice (in)

```
	A pointer to the device to stop.
```

Return Value
------------
Nothing

Thread Safety
-------------
Unsafe. As soon as this API is called the device should be considered undefined.

Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback. Doing this will result in a deadlock.

See Also
--------
ma\_device\_init()
ma\_device\_stop()

### [duplex\_rb\_init ¶](#duplex_rb_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L603)

```
duplex_rb_init :: proc "c" (
	captureFormat:                                                format, 
	captureChannels:                                              u32, 
	sampleRate:                                                   u32, 
	captureInternalSampleRate, captureInternalPeriodSizeInFrames: u32, 
	pAllocationCallbacks:                                         ^allocation_callbacks, 
	pRB:                                                          ^duplex_rb, 
) -> result ---
```

### [duplex\_rb\_uninit ¶](#duplex_rb_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L604)

```
duplex_rb_uninit :: proc "c" (pRB: ^duplex_rb) -> result ---
```

### [encoder\_config\_init ¶](#encoder_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L49)

```
encoder_config_init :: proc "c" (encodingFormat: encoding_format, format: format, channels: u32, sampleRate: u32) -> encoder_config ---
```

### [encoder\_init ¶](#encoder_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L51)

```
encoder_init :: proc "c" (onWrite: encoder_write_proc, onSeek: encoder_seek_proc, pUserData: rawptr, pConfig: ^encoder_config, pEncoder: ^encoder) -> result ---
```

### [encoder\_init\_file ¶](#encoder_init_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L54)

```
encoder_init_file :: proc "c" (pFilePath: cstring, pConfig: ^encoder_config, pEncoder: ^encoder) -> result ---
```

### [encoder\_init\_file\_w ¶](#encoder_init_file_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L55)

```
encoder_init_file_w :: proc "c" (pFilePath: [^]u16, pConfig: ^encoder_config, pEncoder: ^encoder) -> result ---
```

### [encoder\_init\_vfs ¶](#encoder_init_vfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L52)

```
encoder_init_vfs :: proc "c" (pVFS: ^vfs, pFilePath: cstring, pConfig: ^encoder_config, pEncoder: ^encoder) -> result ---
```

### [encoder\_init\_vfs\_w ¶](#encoder_init_vfs_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L53)

```
encoder_init_vfs_w :: proc "c" (pVFS: ^vfs, pFilePath: [^]u16, pConfig: ^encoder_config, pEncoder: ^encoder) -> result ---
```

### [encoder\_uninit ¶](#encoder_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L56)

```
encoder_uninit :: proc "c" (pEncoder: ^encoder) ---
```

### [encoder\_write\_pcm\_frames ¶](#encoder_write_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin#L57)

```
encoder_write_pcm_frames :: proc "c" (pEncoder: ^encoder, FramesIn: rawptr, frameCount: u64, pFramesWritten: ^u64) -> result ---
```

### [engine\_config\_init ¶](#engine_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L379)

```
engine_config_init :: proc "c" () -> engine_config ---
```

### [engine\_find\_closest\_listener ¶](#engine_find_closest_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L411)

```
engine_find_closest_listener :: proc "c" (pEngine: ^engine, absolutePosX, absolutePosY, absolutePosZ: f32) -> u32 ---
```

### [engine\_get\_channels ¶](#engine_get_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L400)

```
engine_get_channels :: proc "c" (pEngine: ^engine) -> u32 ---
```

### [engine\_get\_device ¶](#engine_get_device) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L386)

```
engine_get_device :: proc "c" (pEngine: ^engine) -> ^device ---
```

### [engine\_get\_endpoint ¶](#engine_get_endpoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L388)

```
engine_get_endpoint :: proc "c" (pEngine: ^engine) -> ^node ---
```

### [engine\_get\_gain\_db ¶](#engine_get_gain_db) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L408)

```
engine_get_gain_db :: proc "c" (pEngine: ^engine) -> f32 ---
```

### [engine\_get\_listener\_count ¶](#engine_get_listener_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L410)

```
engine_get_listener_count :: proc "c" (pEngine: ^engine) -> u32 ---
```

### [engine\_get\_log ¶](#engine_get_log) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L387)

```
engine_get_log :: proc "c" (pEngine: ^engine) -> ^log ---
```

### [engine\_get\_node\_graph ¶](#engine_get_node_graph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L384)

```
engine_get_node_graph :: proc "c" (pEngine: ^engine) -> ^node_graph ---
```

### [engine\_get\_resource\_manager ¶](#engine_get_resource_manager) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L385)

```
engine_get_resource_manager :: proc "c" (pEngine: ^engine) -> ^resource_manager ---
```

### [engine\_get\_sample\_rate ¶](#engine_get_sample_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L401)

```
engine_get_sample_rate :: proc "c" (pEngine: ^engine) -> u32 ---
```

### [engine\_get\_time ¶](#engine_get_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L396)

```
engine_get_time :: proc "c" (pEngine: ^engine) -> u64 ---
```

### [engine\_get\_time\_in\_milliseconds ¶](#engine_get_time_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L391)

```
engine_get_time_in_milliseconds :: proc "c" (pEngine: ^engine) -> u64 ---
```

### [engine\_get\_time\_in\_pcm\_frames ¶](#engine_get_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L390)

```
engine_get_time_in_pcm_frames :: proc "c" (pEngine: ^engine) -> u64 ---
```

### [engine\_get\_volume ¶](#engine_get_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L406)

```
engine_get_volume :: proc "c" (pEngine: ^engine) -> f32 ---
```

### [engine\_init ¶](#engine_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L381)

```
engine_init :: proc "c" (pConfig: ^engine_config, pEngine: ^engine) -> result ---
```

### [engine\_listener\_get\_cone ¶](#engine_listener_get_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L419)

```
engine_listener_get_cone :: proc "c" (pEngine: ^engine, listenerIndex: u32, pInnerAngleInRadians, pOuterAngleInRadians, pOuterGain: ^f32) ---
```

### [engine\_listener\_get\_direction ¶](#engine_listener_get_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L415)

```
engine_listener_get_direction :: proc "c" (pEngine: ^engine, listenerIndex: u32) -> vec3f ---
```

### [engine\_listener\_get\_position ¶](#engine_listener_get_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L413)

```
engine_listener_get_position :: proc "c" (pEngine: ^engine, listenerIndex: u32) -> vec3f ---
```

### [engine\_listener\_get\_velocity ¶](#engine_listener_get_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L417)

```
engine_listener_get_velocity :: proc "c" (pEngine: ^engine, listenerIndex: u32) -> vec3f ---
```

### [engine\_listener\_get\_world\_up ¶](#engine_listener_get_world_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L421)

```
engine_listener_get_world_up :: proc "c" (pEngine: ^engine, listenerIndex: u32) -> vec3f ---
```

### [engine\_listener\_is\_enabled ¶](#engine_listener_is_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L423)

```
engine_listener_is_enabled :: proc "c" (pEngine: ^engine, listenerIndex: u32) -> b32 ---
```

### [engine\_listener\_set\_cone ¶](#engine_listener_set_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L418)

```
engine_listener_set_cone :: proc "c" (pEngine: ^engine, listenerIndex: u32, innerAngleInRadians, outerAngleInRadians, outerGain: f32) ---
```

### [engine\_listener\_set\_direction ¶](#engine_listener_set_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L414)

```
engine_listener_set_direction :: proc "c" (pEngine: ^engine, listenerIndex: u32, x, y, z: f32) ---
```

### [engine\_listener\_set\_enabled ¶](#engine_listener_set_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L422)

```
engine_listener_set_enabled :: proc "c" (pEngine: ^engine, listenerIndex: u32, isEnabled: b32) ---
```

### [engine\_listener\_set\_position ¶](#engine_listener_set_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L412)

```
engine_listener_set_position :: proc "c" (pEngine: ^engine, listenerIndex: u32, x, y, z: f32) ---
```

### [engine\_listener\_set\_velocity ¶](#engine_listener_set_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L416)

```
engine_listener_set_velocity :: proc "c" (pEngine: ^engine, listenerIndex: u32, x, y, z: f32) ---
```

### [engine\_listener\_set\_world\_up ¶](#engine_listener_set_world_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L420)

```
engine_listener_set_world_up :: proc "c" (pEngine: ^engine, listenerIndex: u32, x, y, z: f32) ---
```

### [engine\_node\_config\_init ¶](#engine_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L88)

```
engine_node_config_init :: proc "c" (pEngine: ^engine, type: engine_node_type, flags: bit_set[sound_flag; u32]) -> engine_node_config ---
```

### [engine\_node\_get\_heap\_size ¶](#engine_node_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L90)

```
engine_node_get_heap_size :: proc "c" (pConfig: ^engine_node_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [engine\_node\_init ¶](#engine_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L92)

```
engine_node_init :: proc "c" (pConfig: ^engine_node_config, pAllocationCallbacks: ^allocation_callbacks, pEngineNode: ^engine_node) -> result ---
```

### [engine\_node\_init\_preallocated ¶](#engine_node_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L91)

```
engine_node_init_preallocated :: proc "c" (pConfig: ^engine_node_config, pHeap: rawptr, pEngineNode: ^engine_node) -> result ---
```

### [engine\_node\_uninit ¶](#engine_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L93)

```
engine_node_uninit :: proc "c" (pEngineNode: ^engine_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [engine\_play\_sound ¶](#engine_play_sound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L426)

```
engine_play_sound :: proc "c" (pEngine: ^engine, pFilePath: cstring, pGroup: ^sound_group) -> result ---
```

 

Fire and forget.

### [engine\_play\_sound\_ex ¶](#engine_play_sound_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L425)

```
engine_play_sound_ex :: proc "c" (pEngine: ^engine, pFilePath: cstring, pNode: ^node, nodeInputBusIndex: u32) -> result ---
```

### [engine\_read\_pcm\_frames ¶](#engine_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L383)

```
engine_read_pcm_frames :: proc "c" (pEngine: ^engine, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [engine\_set\_gain\_db ¶](#engine_set_gain_db) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L407)

```
engine_set_gain_db :: proc "c" (pEngine: ^engine, gainDB: f32) -> result ---
```

### [engine\_set\_time ¶](#engine_set_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L398)

```
engine_set_time :: proc "c" (pEngine: ^engine, globalTime: u64) -> result ---
```

### [engine\_set\_time\_in\_milliseconds ¶](#engine_set_time_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L393)

```
engine_set_time_in_milliseconds :: proc "c" (pEngine: ^engine, globalTime: u64) -> result ---
```

### [engine\_set\_time\_in\_pcm\_frames ¶](#engine_set_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L392)

```
engine_set_time_in_pcm_frames :: proc "c" (pEngine: ^engine, globalTime: u64) -> result ---
```

### [engine\_set\_volume ¶](#engine_set_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L405)

```
engine_set_volume :: proc "c" (pEngine: ^engine, volume: f32) -> result ---
```

### [engine\_start ¶](#engine_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L403)

```
engine_start :: proc "c" (pEngine: ^engine) -> result ---
```

### [engine\_stop ¶](#engine_stop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L404)

```
engine_stop :: proc "c" (pEngine: ^engine) -> result ---
```

### [engine\_uninit ¶](#engine_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L382)

```
engine_uninit :: proc "c" (pEngine: ^engine) ---
```

### [event\_init ¶](#event_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L49)

```
event_init :: proc "c" (pEvent: ^event) -> result ---
```

 

Initializes an auto-reset event.

### [event\_signal ¶](#event_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L64)

```
event_signal :: proc "c" (pEvent: ^event) -> result ---
```

 

Signals the specified auto-reset event.

### [event\_uninit ¶](#event_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L54)

```
event_uninit :: proc "c" (pEvent: ^event) ---
```

 

Uninitializes an auto-reset event.

### [event\_wait ¶](#event_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L59)

```
event_wait :: proc "c" (pEvent: ^event) -> result ---
```

 

Waits for the specified auto-reset event to become signalled.

### [fader\_config\_init ¶](#fader_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L127)

```
fader_config_init :: proc "c" (format: format, channels, sampleRate: u32) -> fader_config ---
```

### [fader\_get\_current\_volume ¶](#fader_get_current_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L134)

```
fader_get_current_volume :: proc "c" (pFader: ^fader) -> f32 ---
```

### [fader\_get\_data\_format ¶](#fader_get_data_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L131)

```
fader_get_data_format :: proc "c" (pFader: ^fader, pFormat: ^format, pChannels, pSampleRate: ^u32) ---
```

### [fader\_init ¶](#fader_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L129)

```
fader_init :: proc "c" (pConfig: ^fader_config, pFader: ^fader) -> result ---
```

### [fader\_process\_pcm\_frames ¶](#fader_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L130)

```
fader_process_pcm_frames :: proc "c" (pFader: ^fader, pFramesOut, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [fader\_set\_fade ¶](#fader_set_fade) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L132)

```
fader_set_fade :: proc "c" (pFader: ^fader, volumeBeg, volumeEnd: f32, lengthInFrames: u64) ---
```

### [fader\_set\_fade\_ex ¶](#fader_set_fade_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L133)

```
fader_set_fade_ex :: proc "c" (pFader: ^fader, volumeBeg, volumeEnd: f32, lengthInFrames: u64, startOffsetInFrames: i64) ---
```

### [fence\_acquire ¶](#fence_acquire) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L97)

```
fence_acquire :: proc "c" (pFence: ^fence) -> result ---
```

 

Increment counter.

### [fence\_init ¶](#fence_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L95)

```
fence_init :: proc "c" (pFence: ^fence) -> result ---
```

### [fence\_release ¶](#fence_release) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L98)

```
fence_release :: proc "c" (pFence: ^fence) -> result ---
```

 

Decrement counter.

### [fence\_uninit ¶](#fence_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L96)

```
fence_uninit :: proc "c" (pFence: ^fence) ---
```

### [fence\_wait ¶](#fence_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L99)

```
fence_wait :: proc "c" (pFence: ^fence) -> result ---
```

 

Wait for counter to reach 0.

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L362)

```
free :: proc "c" (p: rawptr, pAllocationCallbacks: ^allocation_callbacks) ---
```

 

free()

### [gainer\_config\_init ¶](#gainer_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L63)

```
gainer_config_init :: proc "c" (channels, smoothTimeInFrames: u32) -> gainer_config ---
```

### [gainer\_get\_heap\_size ¶](#gainer_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L65)

```
gainer_get_heap_size :: proc "c" (pConfig: ^gainer_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [gainer\_get\_master\_volume ¶](#gainer_get_master_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L73)

```
gainer_get_master_volume :: proc "c" (pGainer: ^gainer, volume: ^f32) -> result ---
```

### [gainer\_init ¶](#gainer_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L67)

```
gainer_init :: proc "c" (pConfig: ^gainer_config, pAllocationCallbacks: ^allocation_callbacks, pGainer: ^gainer) -> result ---
```

### [gainer\_init\_preallocated ¶](#gainer_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L66)

```
gainer_init_preallocated :: proc "c" (pConfig: ^gainer_config, pHeap: rawptr, pGainer: ^gainer) -> result ---
```

### [gainer\_process\_pcm\_frames ¶](#gainer_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L69)

```
gainer_process_pcm_frames :: proc "c" (pGainer: ^gainer, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [gainer\_set\_gain ¶](#gainer_set_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L70)

```
gainer_set_gain :: proc "c" (pGainer: ^gainer, newGain: f32) -> result ---
```

### [gainer\_set\_gains ¶](#gainer_set_gains) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L71)

```
gainer_set_gains :: proc "c" (pGainer: ^gainer, pNewGains: [^]f32) -> result ---
```

### [gainer\_set\_master\_volume ¶](#gainer_set_master_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L72)

```
gainer_set_master_volume :: proc "c" (pGainer: ^gainer, volume: f32) -> result ---
```

### [gainer\_uninit ¶](#gainer_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L68)

```
gainer_uninit :: proc "c" (pGainer: ^gainer, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [get\_backend\_from\_name ¶](#get_backend_from_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1594)

```
get_backend_from_name :: proc "c" (pBackendName: cstring, pBackend: ^backend) -> result ---
```

 

Retrieves the backend enum from the given name.

### [get\_backend\_name ¶](#get_backend_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1589)

```
get_backend_name :: proc "c" (backend: backend) -> cstring ---
```

 

Retrieves a friendly name for a backend.

### [get\_bytes\_per\_frame ¶](#get_bytes_per_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L400)

```
get_bytes_per_frame :: proc "c" (format: format, channels: u32) -> u32 {…}
```

### [get\_bytes\_per\_sample ¶](#get_bytes_per_sample) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L392)

```
get_bytes_per_sample :: proc "c" (format: format) -> u32 ---
```

 

Retrieves the size of a sample in bytes for the given format.

This API is efficient and is implemented using a lookup table.

Thread Safety: SAFE
This API is pure.

### [get\_enabled\_backends ¶](#get_enabled_backends) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1672)

```
get_enabled_backends :: proc "c" (pBackends: [^]backend, backendCap: uint, pBackendCount: ^uint) -> result ---
```

 

Retrieves compile-time enabled backends.

Parameters
----------
pBackends (out, optional)

```
	A pointer to the buffer that will receive the enabled backends. Set to NULL to retrieve the backend count. Setting
	the capacity of the buffer to `MA_BACKEND_COUNT` will guarantee it's large enough for all backends.
```

backendCap (in)

```
	The capacity of the `pBackends` buffer.
```

pBackendCount (out)

```
	A pointer to the variable that will receive the enabled backend count.
```

Return Value
------------
MA\_SUCCESS if successful.
MA\_INVALID\_ARGS if `pBackendCount` is NULL.
MA\_NO\_SPACE if the capacity of `pBackends` is not large enough.

If `MA_NO_SPACE` is returned, the `pBackends` buffer will be filled with `*pBackendCount` values.

Thread Safety
-------------
Safe.

Callback Safety
---------------
Safe.

Remarks
-------
If you want to retrieve the number of backends so you can determine the capacity of `pBackends` buffer, you can call
this function with `pBackends` set to NULL.

This will also enumerate the null backend. If you don't want to include this you need to check for `ma_backend_null`
when you enumerate over the returned backends and handle it appropriately. Alternatively, you can disable it at
compile time with `MA_NO_NULL`.

The returned backends are determined based on compile time settings, not the platform it's currently running on. For
example, PulseAudio will be returned if it was enabled at compile time, even when the user doesn't actually have
PulseAudio installed.

Example 1
---------
The example below retrieves the enabled backend count using a fixed sized buffer allocated on the stack. The buffer is
given a capacity of `MA_BACKEND_COUNT` which will guarantee it'll be large enough to store all available backends.
Since `MA_BACKEND_COUNT` is always a relatively small value, this should be suitable for most scenarios.

`
ma\_backend enabledBackends[MA\_BACKEND\_COUNT];
size\_t enabledBackendCount;

result = ma\_get\_enabled\_backends(enabledBackends, MA\_BACKEND\_COUNT, &enabledBackendCount);
if (result != MA\_SUCCESS) {

```
	// Failed to retrieve enabled backends. Should never happen in this example since all inputs are valid.
```

}
`

See Also
--------
ma\_is\_backend\_enabled()

### [get\_format\_name ¶](#get_format_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L377)

```
get_format_name :: proc "c" (format: format) -> cstring ---
```

 

Retrieves a friendly name for a format.

### [hishelf2\_config\_init ¶](#hishelf2_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L411)

```
hishelf2_config_init :: proc "c" (
	format:             format, 
	channels:           u32, 
	sampleRate:         u32, 
	gainDB, shelfSlope, 
	frequency:          f64, 
) -> hishelf_config ---
```

### [hishelf2\_get\_heap\_size ¶](#hishelf2_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L413)

```
hishelf2_get_heap_size :: proc "c" (pConfig: ^hishelf_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [hishelf2\_get\_latency ¶](#hishelf2_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L419)

```
hishelf2_get_latency :: proc "c" (pFilter: ^hishelf2) -> u32 ---
```

### [hishelf2\_init ¶](#hishelf2_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L415)

```
hishelf2_init :: proc "c" (pConfig: ^hishelf_config, pAllocationCallbacks: ^allocation_callbacks, pFilter: ^hishelf2) -> result ---
```

### [hishelf2\_init\_preallocated ¶](#hishelf2_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L414)

```
hishelf2_init_preallocated :: proc "c" (pConfig: ^hishelf_config, pHeap: rawptr, pFilter: ^hishelf2) -> result ---
```

### [hishelf2\_process\_pcm\_frames ¶](#hishelf2_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L418)

```
hishelf2_process_pcm_frames :: proc "c" (pFilter: ^hishelf2, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [hishelf2\_reinit ¶](#hishelf2_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L417)

```
hishelf2_reinit :: proc "c" (pConfig: ^hishelf_config, pFilter: ^hishelf2) -> result ---
```

### [hishelf2\_uninit ¶](#hishelf2_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L416)

```
hishelf2_uninit :: proc "c" (pFilter: ^hishelf2, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [hishelf\_node\_config\_init ¶](#hishelf_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L454)

```
hishelf_node_config_init :: proc "c" (channels, sampleRate: u32, gainDB, q, frequency: f64) -> hishelf_node_config ---
```

### [hishelf\_node\_init ¶](#hishelf_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L456)

```
hishelf_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^hishelf_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^hishelf_node) -> result ---
```

### [hishelf\_node\_reinit ¶](#hishelf_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L457)

```
hishelf_node_reinit :: proc "c" (pConfig: ^hishelf_config, pNode: ^hishelf_node) -> result ---
```

### [hishelf\_node\_uninit ¶](#hishelf_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L458)

```
hishelf_node_uninit :: proc "c" (pNode: ^hishelf_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [hpf1\_config\_init ¶](#hpf1_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L201)

```
hpf1_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64) -> hpf1_config ---
```

### [hpf1\_get\_heap\_size ¶](#hpf1_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L204)

```
hpf1_get_heap_size :: proc "c" (pConfig: ^hpf1_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [hpf1\_get\_latency ¶](#hpf1_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L210)

```
hpf1_get_latency :: proc "c" (pHPF: ^hpf1) -> u32 ---
```

### [hpf1\_init ¶](#hpf1_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L206)

```
hpf1_init :: proc "c" (pConfig: ^hpf1_config, pAllocationCallbacks: ^allocation_callbacks, pHPF: ^hpf1) -> result ---
```

### [hpf1\_init\_preallocated ¶](#hpf1_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L205)

```
hpf1_init_preallocated :: proc "c" (pConfig: ^hpf1_config, pHeap: rawptr, pLPF: ^hpf1) -> result ---
```

### [hpf1\_process\_pcm\_frames ¶](#hpf1_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L209)

```
hpf1_process_pcm_frames :: proc "c" (pHPF: ^hpf1, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [hpf1\_reinit ¶](#hpf1_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L208)

```
hpf1_reinit :: proc "c" (pConfig: ^hpf1_config, pHPF: ^hpf1) -> result ---
```

### [hpf1\_uninit ¶](#hpf1_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L207)

```
hpf1_uninit :: proc "c" (pHPF: ^hpf1, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [hpf2\_config\_init ¶](#hpf2_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L202)

```
hpf2_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64, q: f64) -> hpf1_config ---
```

### [hpf2\_get\_heap\_size ¶](#hpf2_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L212)

```
hpf2_get_heap_size :: proc "c" (pConfig: ^hpf1_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [hpf2\_get\_latency ¶](#hpf2_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L218)

```
hpf2_get_latency :: proc "c" (pHPF: ^hpf2) -> u32 ---
```

### [hpf2\_init ¶](#hpf2_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L214)

```
hpf2_init :: proc "c" (pConfig: ^hpf1_config, pAllocationCallbacks: ^allocation_callbacks, pHPF: ^hpf2) -> result ---
```

### [hpf2\_init\_preallocated ¶](#hpf2_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L213)

```
hpf2_init_preallocated :: proc "c" (pConfig: ^hpf1_config, pHeap: rawptr, pHPF: ^hpf2) -> result ---
```

### [hpf2\_process\_pcm\_frames ¶](#hpf2_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L217)

```
hpf2_process_pcm_frames :: proc "c" (pHPF: ^hpf2, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [hpf2\_reinit ¶](#hpf2_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L216)

```
hpf2_reinit :: proc "c" (pConfig: ^hpf1_config, pHPF: ^hpf2) -> result ---
```

### [hpf2\_uninit ¶](#hpf2_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L215)

```
hpf2_uninit :: proc "c" (pHPF: ^hpf2, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [hpf\_config\_init ¶](#hpf_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L220)

```
hpf_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64, order: u32) -> hpf_config ---
```

### [hpf\_get\_heap\_size ¶](#hpf_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L222)

```
hpf_get_heap_size :: proc "c" (pConfig: ^hpf_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [hpf\_get\_latency ¶](#hpf_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L228)

```
hpf_get_latency :: proc "c" (pHPF: ^hpf) -> u32 ---
```

### [hpf\_init ¶](#hpf_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L224)

```
hpf_init :: proc "c" (pConfig: ^hpf_config, pAllocationCallbacks: ^allocation_callbacks, pHPF: ^hpf) -> result ---
```

### [hpf\_init\_preallocated ¶](#hpf_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L223)

```
hpf_init_preallocated :: proc "c" (pConfig: ^hpf_config, pHeap: rawptr, pLPF: ^hpf) -> result ---
```

### [hpf\_node\_config\_init ¶](#hpf_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L339)

```
hpf_node_config_init :: proc "c" (channels, sampleRate: u32, cutoffFrequency: f64, order: u32) -> hpf_node_config ---
```

### [hpf\_node\_init ¶](#hpf_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L341)

```
hpf_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^hpf_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^hpf_node) -> result ---
```

### [hpf\_node\_reinit ¶](#hpf_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L342)

```
hpf_node_reinit :: proc "c" (pConfig: ^hpf_config, pNode: ^hpf_node) -> result ---
```

### [hpf\_node\_uninit ¶](#hpf_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L343)

```
hpf_node_uninit :: proc "c" (pNode: ^hpf_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [hpf\_process\_pcm\_frames ¶](#hpf_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L227)

```
hpf_process_pcm_frames :: proc "c" (pHPF: ^hpf, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [hpf\_reinit ¶](#hpf_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L226)

```
hpf_reinit :: proc "c" (pConfig: ^hpf_config, pHPF: ^hpf) -> result ---
```

### [hpf\_uninit ¶](#hpf_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L225)

```
hpf_uninit :: proc "c" (pHPF: ^hpf, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [interleave\_pcm\_frames ¶](#interleave_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L384)

```
interleave_pcm_frames :: proc "c" (format: format, channels: u32, frameCount: u64, ppDeinterleavedPCMFrames: ^rawptr, pInterleavedPCMFrames: rawptr) ---
```

 

Interleaves a group of deinterleaved buffers.

### [is\_backend\_enabled ¶](#is_backend_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1599)

```
is_backend_enabled :: proc "c" (backend: backend) -> b32 ---
```

 

Determines whether or not the given backend is available by the compilation environment.

### [is\_loopback\_supported ¶](#is_loopback_supported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin#L1677)

```
is_loopback_supported :: proc "c" (backend: backend) -> b32 ---
```

 

Determines whether or not loopback mode is support by a backend.

### [job\_init ¶](#job_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L186)

```
job_init :: proc "c" (code: u16) -> job ---
```

### [job\_process ¶](#job_process) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L187)

```
job_process :: proc "c" (pJob: ^job) -> result ---
```

### [job\_queue\_config\_init ¶](#job_queue_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L227)

```
job_queue_config_init :: proc "c" (flags: bit_set[job_queue_flag; u32], capacity: u32) -> job_queue_config ---
```

### [job\_queue\_get\_heap\_size ¶](#job_queue_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L229)

```
job_queue_get_heap_size :: proc "c" (pConfig: ^job_queue_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [job\_queue\_init ¶](#job_queue_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L231)

```
job_queue_init :: proc "c" (pConfig: ^job_queue_config, pAllocationCallbacks: ^allocation_callbacks, pQueue: ^job_queue) -> result ---
```

### [job\_queue\_init\_preallocated ¶](#job_queue_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L230)

```
job_queue_init_preallocated :: proc "c" (pConfig: ^job_queue_config, pHeap: rawptr, pQueue: ^job_queue) -> result ---
```

### [job\_queue\_next ¶](#job_queue_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L234)

```
job_queue_next :: proc "c" (pQueue: ^job_queue, pJob: ^job) -> result ---
```

 

Returns MA\_CANCELLED if the next job is a quit job.

### [job\_queue\_post ¶](#job_queue_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L233)

```
job_queue_post :: proc "c" (pQueue: ^job_queue, pJob: ^job) -> result ---
```

### [job\_queue\_uninit ¶](#job_queue_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L232)

```
job_queue_uninit :: proc "c" (pQueue: ^job_queue, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [linear\_resampler\_config\_init ¶](#linear_resampler_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L104)

```
linear_resampler_config_init :: proc "c" (format: format, channels: u32, sampleRateIn, sampleRateOut: u32) -> linear_resampler_config ---
```

### [linear\_resampler\_get\_expected\_output\_frame\_count ¶](#linear_resampler_get_expected_output_frame_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L116)

```
linear_resampler_get_expected_output_frame_count :: proc "c" (pResampler: ^linear_resampler, inputFrameCount: u64, pOutputFrameCount: ^u64) -> result ---
```

### [linear\_resampler\_get\_heap\_size ¶](#linear_resampler_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L106)

```
linear_resampler_get_heap_size :: proc "c" (pConfig: ^linear_resampler_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [linear\_resampler\_get\_input\_latency ¶](#linear_resampler_get_input_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L113)

```
linear_resampler_get_input_latency :: proc "c" (pResampler: ^linear_resampler) -> u64 ---
```

### [linear\_resampler\_get\_output\_latency ¶](#linear_resampler_get_output_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L114)

```
linear_resampler_get_output_latency :: proc "c" (pResampler: ^linear_resampler) -> u64 ---
```

### [linear\_resampler\_get\_required\_input\_frame\_count ¶](#linear_resampler_get_required_input_frame_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L115)

```
linear_resampler_get_required_input_frame_count :: proc "c" (pResampler: ^linear_resampler, outputFrameCount: u64, pInputFrameCount: ^u64) -> result ---
```

### [linear\_resampler\_init ¶](#linear_resampler_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L108)

```
linear_resampler_init :: proc "c" (pConfig: ^linear_resampler_config, pAllocationCallbacks: ^allocation_callbacks, pResampler: ^linear_resampler) -> result ---
```

### [linear\_resampler\_init\_preallocated ¶](#linear_resampler_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L107)

```
linear_resampler_init_preallocated :: proc "c" (pConfig: ^linear_resampler_config, pHeap: rawptr, pResampler: ^linear_resampler) -> result ---
```

### [linear\_resampler\_process\_pcm\_frames ¶](#linear_resampler_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L110)

```
linear_resampler_process_pcm_frames :: proc "c" (pResampler: ^linear_resampler, pFramesIn: rawptr, pFrameCountIn: ^u64, pFramesOut: rawptr, pFrameCountOut: ^u64) -> result ---
```

### [linear\_resampler\_reset ¶](#linear_resampler_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L117)

```
linear_resampler_reset :: proc "c" (pResampler: ^linear_resampler) -> result ---
```

### [linear\_resampler\_set\_rate ¶](#linear_resampler_set_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L111)

```
linear_resampler_set_rate :: proc "c" (pResampler: ^linear_resampler, sampleRateIn, sampleRateOut: u32) -> result ---
```

### [linear\_resampler\_set\_rate\_ratio ¶](#linear_resampler_set_rate_ratio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L112)

```
linear_resampler_set_rate_ratio :: proc "c" (pResampler: ^linear_resampler, ratioInOut: f32) -> result ---
```

### [linear\_resampler\_uninit ¶](#linear_resampler_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L109)

```
linear_resampler_uninit :: proc "c" (pResampler: ^linear_resampler, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [log\_callback\_init ¶](#log_callback_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L50)

```
log_callback_init :: proc "c" (onLog: log_callback_proc, pUserData: rawptr) -> log_callback ---
```

### [log\_init ¶](#log_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L52)

```
log_init :: proc "c" (pAllocationCallbacks: ^allocation_callbacks, pLog: ^log) -> result ---
```

### [log\_level\_to\_string ¶](#log_level_to_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L397)

```
log_level_to_string :: proc "c" (logLevel: u32) -> cstring ---
```

 

Converts a log level to a string.

### [log\_post ¶](#log_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L56)

```
log_post :: proc "c" (pLog: ^log, level: u32, pMessage: cstring) -> result ---
```

### [log\_postf ¶](#log_postf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L58)

```
log_postf :: proc "c" (pLog: ^log, level: u32, pFormat: cstring, .. args: ..any) -> result ---
```

### [log\_postv ¶](#log_postv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L57)

```
log_postv :: proc "c" (pLog: ^log, level: u32, pFormat: cstring, args: c.va_list) -> result ---
```

### [log\_register\_callback ¶](#log_register_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L54)

```
log_register_callback :: proc "c" (pLog: ^log, callback: log_callback) -> result ---
```

### [log\_uninit ¶](#log_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L53)

```
log_uninit :: proc "c" (pLog: ^log) ---
```

### [log\_unregister\_callback ¶](#log_unregister_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin#L55)

```
log_unregister_callback :: proc "c" (pLog: ^log, callback: log_callback) -> result ---
```

### [loshelf2\_config\_init ¶](#loshelf2_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L378)

```
loshelf2_config_init :: proc "c" (
	format:             format, 
	channels:           u32, 
	sampleRate:         u32, 
	gainDB, shelfSlope, 
	frequency:          f64, 
) -> loshelf_config ---
```

### [loshelf2\_get\_heap\_size ¶](#loshelf2_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L380)

```
loshelf2_get_heap_size :: proc "c" (pConfig: ^loshelf_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [loshelf2\_get\_latency ¶](#loshelf2_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L386)

```
loshelf2_get_latency :: proc "c" (pFilter: ^loshelf2) -> u32 ---
```

### [loshelf2\_init ¶](#loshelf2_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L382)

```
loshelf2_init :: proc "c" (pConfig: ^loshelf_config, pAllocationCallbacks: ^allocation_callbacks, pFilter: ^loshelf2) -> result ---
```

### [loshelf2\_init\_preallocated ¶](#loshelf2_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L381)

```
loshelf2_init_preallocated :: proc "c" (pConfig: ^loshelf_config, pHeap: rawptr, pFilter: ^loshelf2) -> result ---
```

### [loshelf2\_process\_pcm\_frames ¶](#loshelf2_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L385)

```
loshelf2_process_pcm_frames :: proc "c" (pFilter: ^loshelf2, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [loshelf2\_reinit ¶](#loshelf2_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L384)

```
loshelf2_reinit :: proc "c" (pConfig: ^loshelf_config, pFilter: ^loshelf2) -> result ---
```

### [loshelf2\_uninit ¶](#loshelf2_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L383)

```
loshelf2_uninit :: proc "c" (pFilter: ^loshelf2, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [loshelf\_node\_config\_init ¶](#loshelf_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L431)

```
loshelf_node_config_init :: proc "c" (channels, sampleRate: u32, gainDB, q, frequency: f64) -> loshelf_node_config ---
```

### [loshelf\_node\_init ¶](#loshelf_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L433)

```
loshelf_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^loshelf_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^loshelf_node) -> result ---
```

### [loshelf\_node\_reinit ¶](#loshelf_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L434)

```
loshelf_node_reinit :: proc "c" (pConfig: ^loshelf_config, pNode: ^loshelf_node) -> result ---
```

### [loshelf\_node\_uninit ¶](#loshelf_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L435)

```
loshelf_node_uninit :: proc "c" (pNode: ^loshelf_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [lpf1\_clear\_cache ¶](#lpf1_clear_cache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L121)

```
lpf1_clear_cache :: proc "c" (pLPF: ^lpf1) -> result ---
```

### [lpf1\_config\_init ¶](#lpf1_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L113)

```
lpf1_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64) -> lpf1_config ---
```

### [lpf1\_get\_heap\_size ¶](#lpf1_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L116)

```
lpf1_get_heap_size :: proc "c" (pConfig: ^lpf1_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [lpf1\_get\_latency ¶](#lpf1_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L123)

```
lpf1_get_latency :: proc "c" (pLPF: ^lpf1) -> u32 ---
```

### [lpf1\_init ¶](#lpf1_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L118)

```
lpf1_init :: proc "c" (pConfig: ^lpf1_config, pAllocationCallbacks: ^allocation_callbacks, pLPF: ^lpf1) -> result ---
```

### [lpf1\_init\_preallocated ¶](#lpf1_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L117)

```
lpf1_init_preallocated :: proc "c" (pConfig: ^lpf1_config, pHeap: rawptr, pLPF: ^lpf1) -> result ---
```

### [lpf1\_process\_pcm\_frames ¶](#lpf1_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L122)

```
lpf1_process_pcm_frames :: proc "c" (pLPF: ^lpf1, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [lpf1\_reinit ¶](#lpf1_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L120)

```
lpf1_reinit :: proc "c" (pConfig: ^lpf1_config, pLPF: ^lpf1) -> result ---
```

### [lpf1\_uninit ¶](#lpf1_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L119)

```
lpf1_uninit :: proc "c" (pLPF: ^lpf1, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [lpf2\_clear\_cache ¶](#lpf2_clear_cache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L130)

```
lpf2_clear_cache :: proc "c" (pLPF: ^lpf2) -> result ---
```

### [lpf2\_config\_init ¶](#lpf2_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L114)

```
lpf2_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64, q: f64) -> lpf1_config ---
```

### [lpf2\_get\_heap\_size ¶](#lpf2_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L125)

```
lpf2_get_heap_size :: proc "c" (pConfig: ^lpf1_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [lpf2\_get\_latency ¶](#lpf2_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L132)

```
lpf2_get_latency :: proc "c" (pLPF: ^lpf2) -> u32 ---
```

### [lpf2\_init ¶](#lpf2_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L127)

```
lpf2_init :: proc "c" (pConfig: ^lpf1_config, pAllocationCallbacks: ^allocation_callbacks, pLPF: ^lpf2) -> result ---
```

### [lpf2\_init\_preallocated ¶](#lpf2_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L126)

```
lpf2_init_preallocated :: proc "c" (pConfig: ^lpf1_config, pHeap: rawptr, pHPF: ^lpf2) -> result ---
```

### [lpf2\_process\_pcm\_frames ¶](#lpf2_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L131)

```
lpf2_process_pcm_frames :: proc "c" (pLPF: ^lpf2, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [lpf2\_reinit ¶](#lpf2_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L129)

```
lpf2_reinit :: proc "c" (pConfig: ^lpf1_config, pLPF: ^lpf2) -> result ---
```

### [lpf2\_uninit ¶](#lpf2_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L128)

```
lpf2_uninit :: proc "c" (pLPF: ^lpf2, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [lpf\_clear\_cache ¶](#lpf_clear_cache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L141)

```
lpf_clear_cache :: proc "c" (pLPF: ^lpf) -> result ---
```

### [lpf\_config\_init ¶](#lpf_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L134)

```
lpf_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, cutoffFrequency: f64, order: u32) -> lpf_config ---
```

### [lpf\_get\_heap\_size ¶](#lpf_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L136)

```
lpf_get_heap_size :: proc "c" (pConfig: ^lpf_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [lpf\_get\_latency ¶](#lpf_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L143)

```
lpf_get_latency :: proc "c" (pLPF: ^lpf) -> u32 ---
```

### [lpf\_init ¶](#lpf_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L138)

```
lpf_init :: proc "c" (pConfig: ^lpf_config, pAllocationCallbacks: ^allocation_callbacks, pLPF: ^lpf) -> result ---
```

### [lpf\_init\_preallocated ¶](#lpf_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L137)

```
lpf_init_preallocated :: proc "c" (pConfig: ^lpf_config, pHeap: rawptr, pLPF: ^lpf) -> result ---
```

### [lpf\_node\_config\_init ¶](#lpf_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L316)

```
lpf_node_config_init :: proc "c" (channels, sampleRate: u32, cutoffFrequency: f64, order: u32) -> lpf_node_config ---
```

### [lpf\_node\_init ¶](#lpf_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L318)

```
lpf_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^lpf_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^lpf_node) -> result ---
```

### [lpf\_node\_reinit ¶](#lpf_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L319)

```
lpf_node_reinit :: proc "c" (pConfig: ^lpf_config, pNode: ^lpf_node) -> result ---
```

### [lpf\_node\_uninit ¶](#lpf_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L320)

```
lpf_node_uninit :: proc "c" (pNode: ^lpf_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [lpf\_process\_pcm\_frames ¶](#lpf_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L142)

```
lpf_process_pcm_frames :: proc "c" (pLPF: ^lpf, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [lpf\_reinit ¶](#lpf_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L140)

```
lpf_reinit :: proc "c" (pConfig: ^lpf_config, pLPF: ^lpf) -> result ---
```

### [lpf\_uninit ¶](#lpf_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L139)

```
lpf_uninit :: proc "c" (pLPF: ^lpf, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [ma\_copy\_and\_apply\_volume\_and\_clip\_pcm\_frames ¶](#ma_copy_and_apply_volume_and_clip_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L91)

```
ma_copy_and_apply_volume_and_clip_pcm_frames :: proc "c" (
	pDst, pSrc: rawptr, 
	frameCount: u64, 
	format:     format, 
	channels:   u32, 
	volume:     f32, 
) ---
```

### [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_f32 ¶](#ma_copy_and_apply_volume_and_clip_samples_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L90)

```
ma_copy_and_apply_volume_and_clip_samples_f32 :: proc "c" (pDst, pSrc: [^]f32, count: u64, volume: f32) ---
```

### [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s16 ¶](#ma_copy_and_apply_volume_and_clip_samples_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L87)

```
ma_copy_and_apply_volume_and_clip_samples_s16 :: proc "c" (pDst: [^]i16, pSrc: [^]i32, count: u64, volume: f32) ---
```

### [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s24 ¶](#ma_copy_and_apply_volume_and_clip_samples_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L88)

```
ma_copy_and_apply_volume_and_clip_samples_s24 :: proc "c" (pDst: [^]u8, pSrc: [^]i64, count: u64, volume: f32) ---
```

### [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s32 ¶](#ma_copy_and_apply_volume_and_clip_samples_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L89)

```
ma_copy_and_apply_volume_and_clip_samples_s32 :: proc "c" (pDst: [^]i32, pSrc: [^]i64, count: u64, volume: f32) ---
```

### [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_u8 ¶](#ma_copy_and_apply_volume_and_clip_samples_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L86)

```
ma_copy_and_apply_volume_and_clip_samples_u8 :: proc "c" (pDst: [^]u8, pSrc: [^]i16, count: u64, volume: f32) ---
```

### [ma\_mix\_pcm\_frames\_f32 ¶](#ma_mix_pcm_frames_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L109)

```
ma_mix_pcm_frames_f32 :: proc "c" (pDst: ^f32, pSrc: ^f32, frameCount: u64, channels: u32, volume: f32) -> result ---
```

 

Mixes the specified number of frames in floating point format with a volume factor.

This will run on an optimized path when the volume is equal to 1.

### [malloc ¶](#malloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L347)

```
malloc :: proc "c" (sz: uint, pAllocationCallbacks: ^allocation_callbacks) -> rawptr ---
```

 

malloc()

### [mutex\_init ¶](#mutex_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L28)

```
mutex_init :: proc "c" (pMutex: ^mutex) -> result ---
```

 

Creates a mutex.

A mutex must be created from a valid context. A mutex is initially unlocked.

### [mutex\_lock ¶](#mutex_lock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L38)

```
mutex_lock :: proc "c" (pMutex: ^mutex) ---
```

 

Locks a mutex with an infinite timeout.

### [mutex\_uninit ¶](#mutex_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L33)

```
mutex_uninit :: proc "c" (pMutex: ^mutex) ---
```

 

Deletes a mutex.

### [mutex\_unlock ¶](#mutex_unlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L43)

```
mutex_unlock :: proc "c" (pMutex: ^mutex) ---
```

 

Unlocks a mutex.

### [node\_attach\_output\_bus ¶](#node_attach_output_bus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L183)

```
node_attach_output_bus :: proc "c" (pNode: ^node, outputBusIndex: u32, pOtherNode: ^node, otherNodeInputBusIndex: u32) -> result ---
```

### [node\_config\_init ¶](#node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L172)

```
node_config_init :: proc "c" () -> node_config ---
```

### [node\_detach\_all\_output\_buses ¶](#node_detach_all_output_buses) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L185)

```
node_detach_all_output_buses :: proc "c" (pNode: ^node) -> result ---
```

### [node\_detach\_output\_bus ¶](#node_detach_output_bus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L184)

```
node_detach_output_bus :: proc "c" (pNode: ^node, outputBusIndex: u32) -> result ---
```

### [node\_get\_heap\_size ¶](#node_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L174)

```
node_get_heap_size :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^node_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [node\_get\_input\_bus\_count ¶](#node_get_input_bus_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L179)

```
node_get_input_bus_count :: proc "c" (pNode: ^node) -> u32 ---
```

### [node\_get\_input\_channels ¶](#node_get_input_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L181)

```
node_get_input_channels :: proc "c" (pNode: ^node, inputBusIndex: u32) -> u32 ---
```

### [node\_get\_node\_graph ¶](#node_get_node_graph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L178)

```
node_get_node_graph :: proc "c" (pNode: ^node) -> ^node_graph ---
```

### [node\_get\_output\_bus\_count ¶](#node_get_output_bus_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L180)

```
node_get_output_bus_count :: proc "c" (pNode: ^node) -> u32 ---
```

### [node\_get\_output\_bus\_volume ¶](#node_get_output_bus_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L187)

```
node_get_output_bus_volume :: proc "c" (pNode: ^node, outputBusIndex: u32) -> f32 ---
```

### [node\_get\_output\_channels ¶](#node_get_output_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L182)

```
node_get_output_channels :: proc "c" (pNode: ^node, outputBusIndex: u32) -> u32 ---
```

### [node\_get\_state ¶](#node_get_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L189)

```
node_get_state :: proc "c" (pNode: ^node) -> node_state ---
```

### [node\_get\_state\_by\_time ¶](#node_get_state_by_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L192)

```
node_get_state_by_time :: proc "c" (pNode: ^node, globalTime: u64) -> node_state ---
```

### [node\_get\_state\_by\_time\_range ¶](#node_get_state_by_time_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L193)

```
node_get_state_by_time_range :: proc "c" (pNode: ^node, globalTimeBeg: u64, globalTimeEnd: u64) -> node_state ---
```

### [node\_get\_state\_time ¶](#node_get_state_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L191)

```
node_get_state_time :: proc "c" (pNode: ^node, state: node_state) -> u64 ---
```

### [node\_get\_time ¶](#node_get_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L194)

```
node_get_time :: proc "c" (pNode: ^node) -> u64 ---
```

### [node\_graph\_config\_init ¶](#node_graph_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L222)

```
node_graph_config_init :: proc "c" (channels: u32) -> node_graph_config ---
```

### [node\_graph\_get\_channels ¶](#node_graph_get_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L228)

```
node_graph_get_channels :: proc "c" (pNodeGraph: ^node_graph) -> u32 ---
```

### [node\_graph\_get\_endpoint ¶](#node_graph_get_endpoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L226)

```
node_graph_get_endpoint :: proc "c" (pNodeGraph: ^node_graph) -> ^node ---
```

### [node\_graph\_get\_processing\_size\_in\_frames ¶](#node_graph_get_processing_size_in_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L231)

```
node_graph_get_processing_size_in_frames :: proc "c" (pNodeGraph: ^node_graph) -> u32 ---
```

### [node\_graph\_get\_time ¶](#node_graph_get_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L229)

```
node_graph_get_time :: proc "c" (pNodeGraph: ^node_graph) -> u64 ---
```

### [node\_graph\_init ¶](#node_graph_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L224)

```
node_graph_init :: proc "c" (pConfig: ^node_graph_config, pAllocationCallbacks: ^allocation_callbacks, pNodeGraph: ^node_graph) -> result ---
```

### [node\_graph\_read\_pcm\_frames ¶](#node_graph_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L227)

```
node_graph_read_pcm_frames :: proc "c" (pNodeGraph: ^node_graph, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [node\_graph\_set\_time ¶](#node_graph_set_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L230)

```
node_graph_set_time :: proc "c" (pNodeGraph: ^node_graph, globalTime: u64) -> result ---
```

### [node\_graph\_uninit ¶](#node_graph_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L225)

```
node_graph_uninit :: proc "c" (pNodeGraph: ^node_graph, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [node\_init ¶](#node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L176)

```
node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^node) -> result ---
```

### [node\_init\_preallocated ¶](#node_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L175)

```
node_init_preallocated :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^node_config, pHeap: rawptr, pNode: ^node) -> result ---
```

### [node\_set\_output\_bus\_volume ¶](#node_set_output_bus_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L186)

```
node_set_output_bus_volume :: proc "c" (pNode: ^node, outputBusIndex: u32, volume: f32) -> result ---
```

### [node\_set\_state ¶](#node_set_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L188)

```
node_set_state :: proc "c" (pNode: ^node, state: node_state) -> result ---
```

### [node\_set\_state\_time ¶](#node_set_state_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L190)

```
node_set_state_time :: proc "c" (pNode: ^node, state: node_state, globalTime: u64) -> result ---
```

### [node\_set\_time ¶](#node_set_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L195)

```
node_set_time :: proc "c" (pNode: ^node, localTime: u64) -> result ---
```

### [node\_uninit ¶](#node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L177)

```
node_uninit :: proc "c" (pNode: ^node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [noise\_config\_init ¶](#noise_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L80)

```
noise_config_init :: proc "c" (format: format, channels: u32, type: noise_type, seed: i32, amplitude: f64) -> noise_config ---
```

### [noise\_get\_heap\_size ¶](#noise_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L82)

```
noise_get_heap_size :: proc "c" (pConfig: ^noise_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [noise\_init ¶](#noise_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L84)

```
noise_init :: proc "c" (pConfig: ^noise_config, pAllocationCallbacks: ^allocation_callbacks, pNoise: ^noise) -> result ---
```

### [noise\_init\_preallocated ¶](#noise_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L83)

```
noise_init_preallocated :: proc "c" (pConfig: ^noise_config, pHeap: rawptr, pNoise: ^noise) -> result ---
```

### [noise\_read\_pcm\_frames ¶](#noise_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L86)

```
noise_read_pcm_frames :: proc "c" (pNoise: ^noise, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [noise\_set\_amplitude ¶](#noise_set_amplitude) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L87)

```
noise_set_amplitude :: proc "c" (pNoise: ^noise, amplitude: f64) -> result ---
```

### [noise\_set\_seed ¶](#noise_set_seed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L88)

```
noise_set_seed :: proc "c" (pNoise: ^noise, seed: i32) -> result ---
```

### [noise\_set\_type ¶](#noise_set_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L89)

```
noise_set_type :: proc "c" (pNoise: ^noise, type: noise_type) -> result ---
```

### [noise\_uninit ¶](#noise_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L85)

```
noise_uninit :: proc "c" (pNoise: ^noise, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [notch2\_config\_init ¶](#notch2_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L312)

```
notch2_config_init :: proc "c" (format: format, channels: u32, sampleRate: u32, q: f64, frequency: f64) -> notch_config ---
```

### [notch2\_get\_heap\_size ¶](#notch2_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L314)

```
notch2_get_heap_size :: proc "c" (pConfig: ^notch_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [notch2\_get\_latency ¶](#notch2_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L320)

```
notch2_get_latency :: proc "c" (pFilter: ^notch2) -> u32 ---
```

### [notch2\_init ¶](#notch2_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L316)

```
notch2_init :: proc "c" (pConfig: ^notch_config, pAllocationCallbacks: ^allocation_callbacks, pFilter: ^notch2) -> result ---
```

### [notch2\_init\_preallocated ¶](#notch2_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L315)

```
notch2_init_preallocated :: proc "c" (pConfig: ^notch_config, pHeap: rawptr, pFilter: ^notch2) -> result ---
```

### [notch2\_process\_pcm\_frames ¶](#notch2_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L319)

```
notch2_process_pcm_frames :: proc "c" (pFilter: ^notch2, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [notch2\_reinit ¶](#notch2_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L318)

```
notch2_reinit :: proc "c" (pConfig: ^notch_config, pFilter: ^notch2) -> result ---
```

### [notch2\_uninit ¶](#notch2_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L317)

```
notch2_uninit :: proc "c" (pFilter: ^notch2, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [notch\_node\_config\_init ¶](#notch_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L385)

```
notch_node_config_init :: proc "c" (channels, sampleRate: u32, q, frequency: f64) -> notch_node_config ---
```

### [notch\_node\_init ¶](#notch_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L387)

```
notch_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^notch_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^notch_node) -> result ---
```

### [notch\_node\_reinit ¶](#notch_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L388)

```
notch_node_reinit :: proc "c" (pConfig: ^notch_config, pNode: ^notch_node) -> result ---
```

### [notch\_node\_uninit ¶](#notch_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L389)

```
notch_node_uninit :: proc "c" (pNode: ^notch_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [offset\_pcm\_frames\_const\_ptr ¶](#offset_pcm_frames_const_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L39)

```
offset_pcm_frames_const_ptr :: proc "c" (p: rawptr, offsetInFrames: u64, format: format, channels: u32) -> rawptr ---
```

### [offset\_pcm\_frames\_const\_ptr\_f32 ¶](#offset_pcm_frames_const_ptr_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L115)

```
offset_pcm_frames_const_ptr_f32 :: proc "c" (p: [^]f32, offsetInFrames: u64, channels: u32) -> [^]f32 {…}
```

### [offset\_pcm\_frames\_ptr ¶](#offset_pcm_frames_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L38)

```
offset_pcm_frames_ptr :: proc "c" (p: rawptr, offsetInFrames: u64, format: format, channels: u32) -> rawptr ---
```

 

Offsets a pointer by the specified number of PCM frames.

### [offset\_pcm\_frames\_ptr\_f32 ¶](#offset_pcm_frames_ptr_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L112)

```
offset_pcm_frames_ptr_f32 :: proc "c" (p: [^]f32, offsetInFrames: u64, channels: u32) -> [^]f32 {…}
```

### [paged\_audio\_buffer\_config\_init ¶](#paged_audio_buffer_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L301)

```
paged_audio_buffer_config_init :: proc "c" (pData: ^paged_audio_buffer_data) -> paged_audio_buffer_config ---
```

### [paged\_audio\_buffer\_data\_allocate\_and\_append\_page ¶](#paged_audio_buffer_data_allocate_and_append_page) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L283)

```
paged_audio_buffer_data_allocate_and_append_page :: proc "c" (pData: ^paged_audio_buffer_data, pageSizeInFrames: u32, pInitialData: rawptr, pAllocationCallbacks: ^allocation_callbacks) -> result ---
```

### [paged\_audio\_buffer\_data\_allocate\_page ¶](#paged_audio_buffer_data_allocate_page) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L280)

```
paged_audio_buffer_data_allocate_page :: proc "c" (pData: ^paged_audio_buffer_data, pageSizeInFrames: u64, pInitialData: rawptr, pAllocationCallbacks: ^allocation_callbacks, ppPage: ^^paged_audio_buffer_page) -> result ---
```

### [paged\_audio\_buffer\_data\_append\_page ¶](#paged_audio_buffer_data_append_page) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L282)

```
paged_audio_buffer_data_append_page :: proc "c" (pData: ^paged_audio_buffer_data, pPage: ^paged_audio_buffer_page) -> result ---
```

### [paged\_audio\_buffer\_data\_free\_page ¶](#paged_audio_buffer_data_free_page) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L281)

```
paged_audio_buffer_data_free_page :: proc "c" (pData: ^paged_audio_buffer_data, pPage: ^paged_audio_buffer_page, pAllocationCallbacks: ^allocation_callbacks) -> result ---
```

### [paged\_audio\_buffer\_data\_get\_head ¶](#paged_audio_buffer_data_get_head) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L277)

```
paged_audio_buffer_data_get_head :: proc "c" (pData: ^paged_audio_buffer_data) -> ^paged_audio_buffer_page ---
```

### [paged\_audio\_buffer\_data\_get\_length\_in\_pcm\_frames ¶](#paged_audio_buffer_data_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L279)

```
paged_audio_buffer_data_get_length_in_pcm_frames :: proc "c" (pData: ^paged_audio_buffer_data, pLength: ^u64) -> result ---
```

### [paged\_audio\_buffer\_data\_get\_tail ¶](#paged_audio_buffer_data_get_tail) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L278)

```
paged_audio_buffer_data_get_tail :: proc "c" (pData: ^paged_audio_buffer_data) -> ^paged_audio_buffer_page ---
```

### [paged\_audio\_buffer\_data\_init ¶](#paged_audio_buffer_data_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L275)

```
paged_audio_buffer_data_init :: proc "c" (format: format, channels: u32, pData: ^paged_audio_buffer_data) -> result ---
```

### [paged\_audio\_buffer\_data\_uninit ¶](#paged_audio_buffer_data_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L276)

```
paged_audio_buffer_data_uninit :: proc "c" (pData: ^paged_audio_buffer_data, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [paged\_audio\_buffer\_get\_cursor\_in\_pcm\_frames ¶](#paged_audio_buffer_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L307)

```
paged_audio_buffer_get_cursor_in_pcm_frames :: proc "c" (pPagedAudioBuffer: ^paged_audio_buffer, pCursor: ^u64) -> result ---
```

### [paged\_audio\_buffer\_get\_length\_in\_pcm\_frames ¶](#paged_audio_buffer_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L308)

```
paged_audio_buffer_get_length_in_pcm_frames :: proc "c" (pPagedAudioBuffer: ^paged_audio_buffer, pLength: ^u64) -> result ---
```

### [paged\_audio\_buffer\_init ¶](#paged_audio_buffer_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L303)

```
paged_audio_buffer_init :: proc "c" (pConfig: ^paged_audio_buffer_config, pPagedAudioBuffer: ^paged_audio_buffer) -> result ---
```

### [paged\_audio\_buffer\_read\_pcm\_frames ¶](#paged_audio_buffer_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L305)

```
paged_audio_buffer_read_pcm_frames :: proc "c" (pPagedAudioBuffer: ^paged_audio_buffer, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

 

Returns MA\_AT\_END if no more pages available.

### [paged\_audio\_buffer\_seek\_to\_pcm\_frame ¶](#paged_audio_buffer_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L306)

```
paged_audio_buffer_seek_to_pcm_frame :: proc "c" (pPagedAudioBuffer: ^paged_audio_buffer, frameIndex: u64) -> result ---
```

### [paged\_audio\_buffer\_uninit ¶](#paged_audio_buffer_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L304)

```
paged_audio_buffer_uninit :: proc "c" (pPagedAudioBuffer: ^paged_audio_buffer) ---
```

### [panner\_config\_init ¶](#panner_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L99)

```
panner_config_init :: proc "c" (format: format, channels: u32) -> panner_config ---
```

### [panner\_get\_mode ¶](#panner_get_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L104)

```
panner_get_mode :: proc "c" (pPanner: ^panner) -> pan_mode ---
```

### [panner\_get\_pan ¶](#panner_get_pan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L106)

```
panner_get_pan :: proc "c" (pPanner: ^panner) -> f32 ---
```

### [panner\_init ¶](#panner_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L101)

```
panner_init :: proc "c" (pConfig: ^panner_config, pPanner: ^panner) -> result ---
```

### [panner\_process\_pcm\_frames ¶](#panner_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L102)

```
panner_process_pcm_frames :: proc "c" (pPanner: ^panner, pFramesOut, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [panner\_set\_mode ¶](#panner_set_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L103)

```
panner_set_mode :: proc "c" (pPanner: ^panner, mode: pan_mode) ---
```

### [panner\_set\_pan ¶](#panner_set_pan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L105)

```
panner_set_pan :: proc "c" (pPanner: ^panner, pan: f32) ---
```

### [pcm\_convert ¶](#pcm_convert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L373)

```
pcm_convert :: proc "c" (
	pOut:        rawptr, 
	formatOut:   format, 
	pIn:         rawptr, 
	formatIn:    format, 
	sampleCount: u64, 
	ditherMode:  dither_mode, 
) ---
```

### [pcm\_f32\_to\_s16 ¶](#pcm_f32_to_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L370)

```
pcm_f32_to_s16 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_f32\_to\_s24 ¶](#pcm_f32_to_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L371)

```
pcm_f32_to_s24 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_f32\_to\_s32 ¶](#pcm_f32_to_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L372)

```
pcm_f32_to_s32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_f32\_to\_u8 ¶](#pcm_f32_to_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L369)

```
pcm_f32_to_u8 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_rb\_acquire\_read ¶](#pcm_rb_acquire_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L568)

```
pcm_rb_acquire_read :: proc "c" (pRB: ^pcm_rb, pSizeInFrames: ^u32, ppBufferOut: ^rawptr) -> result ---
```

### [pcm\_rb\_acquire\_write ¶](#pcm_rb_acquire_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L570)

```
pcm_rb_acquire_write :: proc "c" (pRB: ^pcm_rb, pSizeInFrames: ^u32, ppBufferOut: ^rawptr) -> result ---
```

### [pcm\_rb\_available\_read ¶](#pcm_rb_available_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L575)

```
pcm_rb_available_read :: proc "c" (pRB: ^pcm_rb) -> u32 ---
```

### [pcm\_rb\_available\_write ¶](#pcm_rb_available_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L576)

```
pcm_rb_available_write :: proc "c" (pRB: ^pcm_rb) -> u32 ---
```

### [pcm\_rb\_commit\_read ¶](#pcm_rb_commit_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L569)

```
pcm_rb_commit_read :: proc "c" (pRB: ^pcm_rb, sizeInFrames: u32) -> result ---
```

### [pcm\_rb\_commit\_write ¶](#pcm_rb_commit_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L571)

```
pcm_rb_commit_write :: proc "c" (pRB: ^pcm_rb, sizeInFrames: u32) -> result ---
```

### [pcm\_rb\_get\_channels ¶](#pcm_rb_get_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L582)

```
pcm_rb_get_channels :: proc "c" (pRB: ^pcm_rb) -> u32 ---
```

### [pcm\_rb\_get\_format ¶](#pcm_rb_get_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L581)

```
pcm_rb_get_format :: proc "c" (pRB: ^pcm_rb) -> format ---
```

### [pcm\_rb\_get\_sample\_rate ¶](#pcm_rb_get_sample_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L583)

```
pcm_rb_get_sample_rate :: proc "c" (pRB: ^pcm_rb) -> u32 ---
```

### [pcm\_rb\_get\_subbuffer\_offset ¶](#pcm_rb_get_subbuffer_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L579)

```
pcm_rb_get_subbuffer_offset :: proc "c" (pRB: ^pcm_rb, subbufferIndex: u32) -> u32 ---
```

### [pcm\_rb\_get\_subbuffer\_ptr ¶](#pcm_rb_get_subbuffer_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L580)

```
pcm_rb_get_subbuffer_ptr :: proc "c" (pRB: ^pcm_rb, subbufferIndex: u32, pBuffer: rawptr) -> rawptr ---
```

### [pcm\_rb\_get\_subbuffer\_size ¶](#pcm_rb_get_subbuffer_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L577)

```
pcm_rb_get_subbuffer_size :: proc "c" (pRB: ^pcm_rb) -> u32 ---
```

### [pcm\_rb\_get\_subbuffer\_stride ¶](#pcm_rb_get_subbuffer_stride) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L578)

```
pcm_rb_get_subbuffer_stride :: proc "c" (pRB: ^pcm_rb) -> u32 ---
```

### [pcm\_rb\_init ¶](#pcm_rb_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L565)

```
pcm_rb_init :: proc "c" (
	format:                      format, 
	channels:                    u32, 
	bufferSizeInFrames:          u32, 
	pOptionalPreallocatedBuffer: rawptr, 
	pAllocationCallbacks:        ^allocation_callbacks, 
	pRB:                         ^pcm_rb, 
) -> result ---
```

### [pcm\_rb\_init\_ex ¶](#pcm_rb_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L564)

```
pcm_rb_init_ex :: proc "c" (
	format:                                                         format, 
	channels:                                                       u32, 
	subbufferSizeInFrames, subbufferCount, subbufferStrideInFrames: u32, 
	pOptionalPreallocatedBuffer:                                    rawptr, 
	pAllocationCallbacks:                                           ^allocation_callbacks, 
	pRB:                                                            ^pcm_rb, 
) -> result ---
```

### [pcm\_rb\_pointer\_distance ¶](#pcm_rb_pointer_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L574)

```
pcm_rb_pointer_distance :: proc "c" (pRB: ^pcm_rb) -> i32 ---
```

 

Return value is in frames.

### [pcm\_rb\_reset ¶](#pcm_rb_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L567)

```
pcm_rb_reset :: proc "c" (pRB: ^pcm_rb) ---
```

### [pcm\_rb\_seek\_read ¶](#pcm_rb_seek_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L572)

```
pcm_rb_seek_read :: proc "c" (pRB: ^pcm_rb, offsetInFrames: u32) -> result ---
```

### [pcm\_rb\_seek\_write ¶](#pcm_rb_seek_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L573)

```
pcm_rb_seek_write :: proc "c" (pRB: ^pcm_rb, offsetInFrames: u32) -> result ---
```

### [pcm\_rb\_set\_sample\_rate ¶](#pcm_rb_set_sample_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L584)

```
pcm_rb_set_sample_rate :: proc "c" (pRB: ^pcm_rb, sampleRate: u32) ---
```

### [pcm\_rb\_uninit ¶](#pcm_rb_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L566)

```
pcm_rb_uninit :: proc "c" (pRB: ^pcm_rb) ---
```

### [pcm\_s16\_to\_f32 ¶](#pcm_s16_to_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L360)

```
pcm_s16_to_f32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s16\_to\_s24 ¶](#pcm_s16_to_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L358)

```
pcm_s16_to_s24 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s16\_to\_s32 ¶](#pcm_s16_to_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L359)

```
pcm_s16_to_s32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s16\_to\_u8 ¶](#pcm_s16_to_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L357)

```
pcm_s16_to_u8 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s24\_to\_f32 ¶](#pcm_s24_to_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L364)

```
pcm_s24_to_f32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s24\_to\_s16 ¶](#pcm_s24_to_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L362)

```
pcm_s24_to_s16 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s24\_to\_s32 ¶](#pcm_s24_to_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L363)

```
pcm_s24_to_s32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s24\_to\_u8 ¶](#pcm_s24_to_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L361)

```
pcm_s24_to_u8 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s32\_to\_f32 ¶](#pcm_s32_to_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L368)

```
pcm_s32_to_f32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s32\_to\_s16 ¶](#pcm_s32_to_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L366)

```
pcm_s32_to_s16 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s32\_to\_s24 ¶](#pcm_s32_to_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L367)

```
pcm_s32_to_s24 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_s32\_to\_u8 ¶](#pcm_s32_to_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L365)

```
pcm_s32_to_u8 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_u8\_to\_f32 ¶](#pcm_u8_to_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L356)

```
pcm_u8_to_f32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_u8\_to\_s16 ¶](#pcm_u8_to_s16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L353)

```
pcm_u8_to_s16 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_u8\_to\_s24 ¶](#pcm_u8_to_s24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L354)

```
pcm_u8_to_s24 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [pcm\_u8\_to\_s32 ¶](#pcm_u8_to_s32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L355)

```
pcm_u8_to_s32 :: proc "c" (pOut: rawptr, pIn: rawptr, count: u64, ditherMode: dither_mode) ---
```

### [peak2\_config\_init ¶](#peak2_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L345)

```
peak2_config_init :: proc "c" (
	format:     format, 
	channels:   u32, 
	sampleRate: u32, 
	gainDB, q, 
	frequency:  f64, 
) -> peak_config ---
```

### [peak2\_get\_heap\_size ¶](#peak2_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L347)

```
peak2_get_heap_size :: proc "c" (pConfig: ^peak_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [peak2\_get\_latency ¶](#peak2_get_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L353)

```
peak2_get_latency :: proc "c" (pFilter: ^peak2) -> u32 ---
```

### [peak2\_init ¶](#peak2_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L349)

```
peak2_init :: proc "c" (pConfig: ^peak_config, pAllocationCallbacks: ^allocation_callbacks, pFilter: ^peak2) -> result ---
```

### [peak2\_init\_preallocated ¶](#peak2_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L348)

```
peak2_init_preallocated :: proc "c" (pConfig: ^peak_config, pHeap: rawptr, pFilter: ^peak2) -> result ---
```

### [peak2\_process\_pcm\_frames ¶](#peak2_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L352)

```
peak2_process_pcm_frames :: proc "c" (pFilter: ^peak2, pFramesOut: rawptr, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [peak2\_reinit ¶](#peak2_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L351)

```
peak2_reinit :: proc "c" (pConfig: ^peak_config, pFilter: ^peak2) -> result ---
```

### [peak2\_uninit ¶](#peak2_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin#L350)

```
peak2_uninit :: proc "c" (pFilter: ^peak2, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [peak\_node\_config\_init ¶](#peak_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L408)

```
peak_node_config_init :: proc "c" (channels, sampleRate: u32, gainDB, q, frequency: f64) -> peak_node_config ---
```

### [peak\_node\_init ¶](#peak_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L410)

```
peak_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^peak_node_config, pAllocationCallbacks: ^allocation_callbacks, pNode: ^peak_node) -> result ---
```

### [peak\_node\_reinit ¶](#peak_node_reinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L411)

```
peak_node_reinit :: proc "c" (pConfig: ^peak_config, pNode: ^peak_node) -> result ---
```

### [peak\_node\_uninit ¶](#peak_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L412)

```
peak_node_uninit :: proc "c" (pNode: ^peak_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [pulsewave\_config\_init ¶](#pulsewave_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L327)

```
pulsewave_config_init :: proc "c" (
	format:     format, 
	channels:   u32, 
	sampleRate: u32, 
	dutyCycle:  f64, 
	amplitude:  f64, 
	frequency:  f64, 
) -> pulsewave_config ---
```

### [pulsewave\_init ¶](#pulsewave_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L329)

```
pulsewave_init :: proc "c" (pConfig: ^pulsewave_config, pWaveForm: ^pulsewave) -> result ---
```

### [pulsewave\_read\_pcm\_frames ¶](#pulsewave_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L331)

```
pulsewave_read_pcm_frames :: proc "c" (pWaveForm: ^pulsewave, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [pulsewave\_seek\_to\_pcm\_frame ¶](#pulsewave_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L332)

```
pulsewave_seek_to_pcm_frame :: proc "c" (pWaveForm: ^pulsewave, frameIndex: u64) -> result ---
```

### [pulsewave\_set\_amplitude ¶](#pulsewave_set_amplitude) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L333)

```
pulsewave_set_amplitude :: proc "c" (pWaveForm: ^pulsewave, amplitude: f64) -> result ---
```

### [pulsewave\_set\_duty\_cycle ¶](#pulsewave_set_duty_cycle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L336)

```
pulsewave_set_duty_cycle :: proc "c" (pWaveForm: ^pulsewave, dutyCycle: f64) -> result ---
```

### [pulsewave\_set\_frequency ¶](#pulsewave_set_frequency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L334)

```
pulsewave_set_frequency :: proc "c" (pWaveForm: ^pulsewave, frequency: f64) -> result ---
```

### [pulsewave\_set\_sample\_rate ¶](#pulsewave_set_sample_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L335)

```
pulsewave_set_sample_rate :: proc "c" (pWaveForm: ^pulsewave, sampleRate: u32) -> result ---
```

### [pulsewave\_uninit ¶](#pulsewave_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L330)

```
pulsewave_uninit :: proc "c" (pWaveForm: ^pulsewave) ---
```

### [rb\_acquire\_read ¶](#rb_acquire_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L550)

```
rb_acquire_read :: proc "c" (pRB: ^rb, pSizeInBytes: ^uint, ppBufferOut: ^rawptr) -> result ---
```

### [rb\_acquire\_write ¶](#rb_acquire_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L552)

```
rb_acquire_write :: proc "c" (pRB: ^rb, pSizeInBytes: ^uint, ppBufferOut: ^rawptr) -> result ---
```

### [rb\_available\_read ¶](#rb_available_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L557)

```
rb_available_read :: proc "c" (pRB: ^rb) -> u32 ---
```

### [rb\_available\_write ¶](#rb_available_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L558)

```
rb_available_write :: proc "c" (pRB: ^rb) -> u32 ---
```

### [rb\_commit\_read ¶](#rb_commit_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L551)

```
rb_commit_read :: proc "c" (pRB: ^rb, sizeInBytes: uint) -> result ---
```

### [rb\_commit\_write ¶](#rb_commit_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L553)

```
rb_commit_write :: proc "c" (pRB: ^rb, sizeInBytes: uint) -> result ---
```

### [rb\_get\_subbuffer\_offset ¶](#rb_get_subbuffer_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L561)

```
rb_get_subbuffer_offset :: proc "c" (pRB: ^rb, subbufferIndex: uint) -> uint ---
```

### [rb\_get\_subbuffer\_ptr ¶](#rb_get_subbuffer_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L562)

```
rb_get_subbuffer_ptr :: proc "c" (pRB: ^rb, subbufferIndex: uint, pBuffer: rawptr) -> rawptr ---
```

### [rb\_get\_subbuffer\_size ¶](#rb_get_subbuffer_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L559)

```
rb_get_subbuffer_size :: proc "c" (pRB: ^rb) -> uint ---
```

### [rb\_get\_subbuffer\_stride ¶](#rb_get_subbuffer_stride) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L560)

```
rb_get_subbuffer_stride :: proc "c" (pRB: ^rb) -> uint ---
```

### [rb\_init ¶](#rb_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L547)

```
rb_init :: proc "c" (bufferSizeInBytes: uint, pOptionalPreallocatedBuffer: rawptr, pAllocationCallbacks: ^allocation_callbacks, pRB: ^rb) -> result ---
```

### [rb\_init\_ex ¶](#rb_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L546)

```
rb_init_ex :: proc "c" (
	subbufferSizeInBytes, subbufferCount, subbufferStrideInBytes: uint, 
	pOptionalPreallocatedBuffer:                                  rawptr, 
	pAllocationCallbacks:                                         ^allocation_callbacks, 
	pRB:                                                          ^rb, 
) -> result ---
```

### [rb\_pointer\_distance ¶](#rb_pointer_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L556)

```
rb_pointer_distance :: proc "c" (pRB: ^rb) -> i32 ---
```

 

Returns the distance between the write pointer and the read pointer. Should never be negative for a correct program. Will return the number of bytes that can be read before the read pointer hits the write pointer.

### [rb\_reset ¶](#rb_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L549)

```
rb_reset :: proc "c" (pRB: ^rb) ---
```

### [rb\_seek\_read ¶](#rb_seek_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L554)

```
rb_seek_read :: proc "c" (pRB: ^rb, offsetInBytes: uint) -> result ---
```

### [rb\_seek\_write ¶](#rb_seek_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L555)

```
rb_seek_write :: proc "c" (pRB: ^rb, offsetInBytes: uint) -> result ---
```

### [rb\_uninit ¶](#rb_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L548)

```
rb_uninit :: proc "c" (pRB: ^rb) ---
```

### [realloc ¶](#realloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L357)

```
realloc :: proc "c" (p: rawptr, sz: uint, pAllocationCallbacks: ^allocation_callbacks) -> rawptr ---
```

 

realloc()

### [resampler\_config\_init ¶](#resampler_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L119)

```
resampler_config_init :: proc "c" (format: format, channels: u32, sampleRateIn, sampleRateOut: u32, algorithm: resample_algorithm) -> resampler_config ---
```

### [resampler\_get\_expected\_output\_frame\_count ¶](#resampler_get_expected_output_frame_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L194)

```
resampler_get_expected_output_frame_count :: proc "c" (pResampler: ^resampler, inputFrameCount: u64, pOutputFrameCount: ^u64) -> result ---
```

 

Calculates the number of whole output frames that would be output after fully reading and consuming the specified number of
input frames.

### [resampler\_get\_heap\_size ¶](#resampler_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L121)

```
resampler_get_heap_size :: proc "c" (pConfig: ^resampler_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [resampler\_get\_input\_latency ¶](#resampler_get_input_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L174)

```
resampler_get_input_latency :: proc "c" (pResampler: ^resampler) -> u64 ---
```

 

Retrieves the latency introduced by the resampler in input frames.

### [resampler\_get\_output\_latency ¶](#resampler_get_output_latency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L179)

```
resampler_get_output_latency :: proc "c" (pResampler: ^resampler) -> u64 ---
```

 

Retrieves the latency introduced by the resampler in output frames.

### [resampler\_get\_required\_input\_frame\_count ¶](#resampler_get_required_input_frame_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L188)

```
resampler_get_required_input_frame_count :: proc "c" (pResampler: ^resampler, outputFrameCount: u64, pInputFrameCount: ^u64) -> result ---
```

 

Calculates the number of whole input frames that would need to be read from the client in order to output the specified
number of output frames.

The returned value does not include cached input frames. It only returns the number of extra frames that would need to be
read from the input buffer in order to output the specified number of output frames.

### [resampler\_init ¶](#resampler_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L127)

```
resampler_init :: proc "c" (pConfig: ^resampler_config, pAllocationCallbacks: ^allocation_callbacks, pResampler: ^resampler) -> result ---
```

 

Initializes a new resampler object from a config.

### [resampler\_init\_preallocated ¶](#resampler_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L122)

```
resampler_init_preallocated :: proc "c" (pConfig: ^resampler_config, pHeap: rawptr, pResampler: ^resampler) -> result ---
```

### [resampler\_process\_pcm\_frames ¶](#resampler_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L156)

```
resampler_process_pcm_frames :: proc "c" (pResampler: ^resampler, pFramesIn: rawptr, pFrameCountIn: ^u64, pFramesOut: rawptr, pFrameCountOut: ^u64) -> result ---
```

 

Converts the given input data.

Both the input and output frames must be in the format specified in the config when the resampler was initialized.

On input, [pFrameCountOut] contains the number of output frames to process. On output it contains the number of output frames that
were actually processed, which may be less than the requested amount which will happen if there's not enough input data. You can use
ma\_resampler\_get\_expected\_output\_frame\_count() to know how many output frames will be processed for a given number of input frames.

On input, [pFrameCountIn] contains the number of input frames contained in [pFramesIn]. On output it contains the number of whole
input frames that were actually processed. You can use ma\_resampler\_get\_required\_input\_frame\_count() to know how many input frames
you should provide for a given number of output frames. [pFramesIn] can be NULL, in which case zeroes will be used instead.

If [pFramesOut] is NULL, a seek is performed. In this case, if [pFrameCountOut] is not NULL it will seek by the specified number of
output frames. Otherwise, if [pFramesCountOut] is NULL and [pFrameCountIn] is not NULL, it will seek by the specified number of input
frames. When seeking, [pFramesIn] is allowed to NULL, in which case the internal timing state will be updated, but no input will be
processed. In this case, any internal filter state will be updated as if zeroes were passed in.

It is an error for [pFramesOut] to be non-NULL and [pFrameCountOut] to be NULL.

It is an error for both [pFrameCountOut] and [pFrameCountIn] to be NULL.

### [resampler\_reset ¶](#resampler_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L199)

```
resampler_reset :: proc "c" (pResampler: ^resampler) -> result ---
```

 

Resets the resampler's timer and clears its internal cache.

### [resampler\_set\_rate ¶](#resampler_set_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L162)

```
resampler_set_rate :: proc "c" (pResampler: ^resampler, sampleRateIn, sampleRateOut: u32) -> result ---
```

 

Sets the input and output sample rate.

### [resampler\_set\_rate\_ratio ¶](#resampler_set_rate_ratio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L169)

```
resampler_set_rate_ratio :: proc "c" (pResampler: ^resampler, ratio: f32) -> result ---
```

 

Sets the input and output sample rate as a ratio.

The ration is in/out.

### [resampler\_uninit ¶](#resampler_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin#L132)

```
resampler_uninit :: proc "c" (pResampler: ^resampler, pAllocationCallbacks: ^allocation_callbacks) ---
```

 

Uninitializes a resampler.

### [resource\_manager\_config\_init ¶](#resource_manager_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L217)

```
resource_manager_config_init :: proc "c" () -> resource_manager_config ---
```

### [resource\_manager\_data\_buffer\_get\_available\_frames ¶](#resource_manager_data_buffer_get_available_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L250)

```
resource_manager_data_buffer_get_available_frames :: proc "c" (pDataBuffer: ^resource_manager_data_buffer, pAvailableFrames: ^u64) -> result ---
```

### [resource\_manager\_data\_buffer\_get\_cursor\_in\_pcm\_frames ¶](#resource_manager_data_buffer_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L245)

```
resource_manager_data_buffer_get_cursor_in_pcm_frames :: proc "c" (pDataBuffer: ^resource_manager_data_buffer, pCursor: ^u64) -> result ---
```

### [resource\_manager\_data\_buffer\_get\_data\_format ¶](#resource_manager_data_buffer_get_data_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L244)

```
resource_manager_data_buffer_get_data_format :: proc "c" (
	pDataBuffer:   ^resource_manager_data_buffer, 
	pFormat:       ^format, 
	pChannels:     ^u32, 
	pSampleRate:   ^u32, 
	pChannelMap:   [^]channel, 
	channelMapCap: uint, 
) -> result ---
```

### [resource\_manager\_data\_buffer\_get\_length\_in\_pcm\_frames ¶](#resource_manager_data_buffer_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L246)

```
resource_manager_data_buffer_get_length_in_pcm_frames :: proc "c" (pDataBuffer: ^resource_manager_data_buffer, pLength: ^u64) -> result ---
```

### [resource\_manager\_data\_buffer\_init ¶](#resource_manager_data_buffer_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L238)

```
resource_manager_data_buffer_init :: proc "c" (pResourceManager: ^resource_manager, pFilePath: cstring, flags: u32, pNotifications: ^resource_manager_pipeline_notifications, pDataBuffer: ^resource_manager_data_buffer) -> result ---
```

### [resource\_manager\_data\_buffer\_init\_copy ¶](#resource_manager_data_buffer_init_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L240)

```
resource_manager_data_buffer_init_copy :: proc "c" (pResourceManager: ^resource_manager, pExistingDataBuffer, pDataBuffer: ^resource_manager_data_buffer) -> result ---
```

### [resource\_manager\_data\_buffer\_init\_ex ¶](#resource_manager_data_buffer_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L237)

```
resource_manager_data_buffer_init_ex :: proc "c" (pResourceManager: ^resource_manager, pConfig: ^resource_manager_data_source_config, pDataBuffer: ^resource_manager_data_buffer) -> result ---
```

 

Data Buffers.

### [resource\_manager\_data\_buffer\_init\_w ¶](#resource_manager_data_buffer_init_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L239)

```
resource_manager_data_buffer_init_w :: proc "c" (pResourceManager: ^resource_manager, pFilePath: [^]u16, flags: u32, pNotifications: ^resource_manager_pipeline_notifications, pDataBuffer: ^resource_manager_data_buffer) -> result ---
```

### [resource\_manager\_data\_buffer\_is\_looping ¶](#resource_manager_data_buffer_is_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L249)

```
resource_manager_data_buffer_is_looping :: proc "c" (pDataBuffer: ^resource_manager_data_buffer) -> b32 ---
```

### [resource\_manager\_data\_buffer\_read\_pcm\_frames ¶](#resource_manager_data_buffer_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L242)

```
resource_manager_data_buffer_read_pcm_frames :: proc "c" (pDataBuffer: ^resource_manager_data_buffer, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [resource\_manager\_data\_buffer\_result ¶](#resource_manager_data_buffer_result) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L247)

```
resource_manager_data_buffer_result :: proc "c" (pDataBuffer: ^resource_manager_data_buffer) -> result ---
```

### [resource\_manager\_data\_buffer\_seek\_to\_pcm\_frame ¶](#resource_manager_data_buffer_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L243)

```
resource_manager_data_buffer_seek_to_pcm_frame :: proc "c" (pDataBuffer: ^resource_manager_data_buffer, frameIndex: u64) -> result ---
```

### [resource\_manager\_data\_buffer\_set\_looping ¶](#resource_manager_data_buffer_set_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L248)

```
resource_manager_data_buffer_set_looping :: proc "c" (pDataBuffer: ^resource_manager_data_buffer, isLooping: b32) -> result ---
```

### [resource\_manager\_data\_buffer\_uninit ¶](#resource_manager_data_buffer_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L241)

```
resource_manager_data_buffer_uninit :: proc "c" (pDataBuffer: ^resource_manager_data_buffer) -> result ---
```

### [resource\_manager\_data\_source\_config\_init ¶](#resource_manager_data_source_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L216)

```
resource_manager_data_source_config_init :: proc "c" () -> resource_manager_data_source_config ---
```

### [resource\_manager\_data\_source\_get\_available\_frames ¶](#resource_manager_data_source_get_available_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L281)

```
resource_manager_data_source_get_available_frames :: proc "c" (pDataSource: ^resource_manager_data_source, pAvailableFrames: ^u64) -> result ---
```

### [resource\_manager\_data\_source\_get\_cursor\_in\_pcm\_frames ¶](#resource_manager_data_source_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L276)

```
resource_manager_data_source_get_cursor_in_pcm_frames :: proc "c" (pDataSource: ^resource_manager_data_source, pCursor: ^u64) -> result ---
```

### [resource\_manager\_data\_source\_get\_data\_format ¶](#resource_manager_data_source_get_data_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L275)

```
resource_manager_data_source_get_data_format :: proc "c" (
	pDataSource:            ^resource_manager_data_source, 
	pFormat:                ^format, 
	pChannels, pSampleRate: ^u32, 
	pChannelMap:            [^]channel, 
	channelMapCap:          uint, 
) -> result ---
```

### [resource\_manager\_data\_source\_get\_length\_in\_pcm\_frames ¶](#resource_manager_data_source_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L277)

```
resource_manager_data_source_get_length_in_pcm_frames :: proc "c" (pDataSource: ^resource_manager_data_source, pLength: ^u64) -> result ---
```

### [resource\_manager\_data\_source\_init ¶](#resource_manager_data_source_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L269)

```
resource_manager_data_source_init :: proc "c" (pResourceManager: ^resource_manager, pName: cstring, flags: u32, pNotifications: ^resource_manager_pipeline_notifications, pDataSource: ^resource_manager_data_source) -> result ---
```

### [resource\_manager\_data\_source\_init\_copy ¶](#resource_manager_data_source_init_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L271)

```
resource_manager_data_source_init_copy :: proc "c" (pResourceManager: ^resource_manager, pExistingDataSource, pDataSource: ^resource_manager_data_source) -> result ---
```

### [resource\_manager\_data\_source\_init\_ex ¶](#resource_manager_data_source_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L268)

```
resource_manager_data_source_init_ex :: proc "c" (pResourceManager: ^resource_manager, pConfig: ^resource_manager_data_source_config, pDataSource: ^resource_manager_data_source) -> result ---
```

 

Data Sources.

### [resource\_manager\_data\_source\_init\_w ¶](#resource_manager_data_source_init_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L270)

```
resource_manager_data_source_init_w :: proc "c" (pResourceManager: ^resource_manager, pName: [^]u16, flags: u32, pNotifications: ^resource_manager_pipeline_notifications, pDataSource: ^resource_manager_data_source) -> result ---
```

### [resource\_manager\_data\_source\_is\_looping ¶](#resource_manager_data_source_is_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L280)

```
resource_manager_data_source_is_looping :: proc "c" (pDataSource: ^resource_manager_data_source) -> b32 ---
```

### [resource\_manager\_data\_source\_read\_pcm\_frames ¶](#resource_manager_data_source_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L273)

```
resource_manager_data_source_read_pcm_frames :: proc "c" (pDataSource: ^resource_manager_data_source, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [resource\_manager\_data\_source\_result ¶](#resource_manager_data_source_result) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L278)

```
resource_manager_data_source_result :: proc "c" (pDataSource: ^resource_manager_data_source) -> result ---
```

### [resource\_manager\_data\_source\_seek\_to\_pcm\_frame ¶](#resource_manager_data_source_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L274)

```
resource_manager_data_source_seek_to_pcm_frame :: proc "c" (pDataSource: ^resource_manager_data_source, frameIndex: u64) -> result ---
```

### [resource\_manager\_data\_source\_set\_looping ¶](#resource_manager_data_source_set_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L279)

```
resource_manager_data_source_set_looping :: proc "c" (pDataSource: ^resource_manager_data_source, isLooping: b32) -> result ---
```

### [resource\_manager\_data\_source\_uninit ¶](#resource_manager_data_source_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L272)

```
resource_manager_data_source_uninit :: proc "c" (pDataSource: ^resource_manager_data_source) -> result ---
```

### [resource\_manager\_data\_stream\_get\_available\_frames ¶](#resource_manager_data_stream_get_available_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L265)

```
resource_manager_data_stream_get_available_frames :: proc "c" (pDataStream: ^resource_manager_data_stream, pAvailableFrames: ^u64) -> result ---
```

### [resource\_manager\_data\_stream\_get\_cursor\_in\_pcm\_frames ¶](#resource_manager_data_stream_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L260)

```
resource_manager_data_stream_get_cursor_in_pcm_frames :: proc "c" (pDataStream: ^resource_manager_data_stream, pCursor: ^u64) -> result ---
```

### [resource\_manager\_data\_stream\_get\_data\_format ¶](#resource_manager_data_stream_get_data_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L259)

```
resource_manager_data_stream_get_data_format :: proc "c" (
	pDataStream:            ^resource_manager_data_stream, 
	pFormat:                ^format, 
	pChannels, pSampleRate: ^u32, 
	pChannelMap:            [^]channel, 
	channelMapCap:          uint, 
) -> result ---
```

### [resource\_manager\_data\_stream\_get\_length\_in\_pcm\_frames ¶](#resource_manager_data_stream_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L261)

```
resource_manager_data_stream_get_length_in_pcm_frames :: proc "c" (pDataStream: ^resource_manager_data_stream, pLength: ^u64) -> result ---
```

### [resource\_manager\_data\_stream\_init ¶](#resource_manager_data_stream_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L254)

```
resource_manager_data_stream_init :: proc "c" (pResourceManager: ^resource_manager, pFilePath: cstring, flags: u32, pNotifications: ^resource_manager_pipeline_notifications, pDataStream: ^resource_manager_data_stream) -> result ---
```

### [resource\_manager\_data\_stream\_init\_ex ¶](#resource_manager_data_stream_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L253)

```
resource_manager_data_stream_init_ex :: proc "c" (pResourceManager: ^resource_manager, pConfig: ^resource_manager_data_source_config, pDataStream: ^resource_manager_data_stream) -> result ---
```

 

Data Streams.

### [resource\_manager\_data\_stream\_init\_w ¶](#resource_manager_data_stream_init_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L255)

```
resource_manager_data_stream_init_w :: proc "c" (pResourceManager: ^resource_manager, pFilePath: [^]u16, flags: u32, pNotifications: ^resource_manager_pipeline_notifications, pDataStream: ^resource_manager_data_stream) -> result ---
```

### [resource\_manager\_data\_stream\_is\_looping ¶](#resource_manager_data_stream_is_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L264)

```
resource_manager_data_stream_is_looping :: proc "c" (pDataStream: ^resource_manager_data_stream) -> b32 ---
```

### [resource\_manager\_data\_stream\_read\_pcm\_frames ¶](#resource_manager_data_stream_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L257)

```
resource_manager_data_stream_read_pcm_frames :: proc "c" (pDataStream: ^resource_manager_data_stream, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [resource\_manager\_data\_stream\_result ¶](#resource_manager_data_stream_result) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L262)

```
resource_manager_data_stream_result :: proc "c" (pDataStream: ^resource_manager_data_stream) -> result ---
```

### [resource\_manager\_data\_stream\_seek\_to\_pcm\_frame ¶](#resource_manager_data_stream_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L258)

```
resource_manager_data_stream_seek_to_pcm_frame :: proc "c" (pDataStream: ^resource_manager_data_stream, frameIndex: u64) -> result ---
```

### [resource\_manager\_data\_stream\_set\_looping ¶](#resource_manager_data_stream_set_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L263)

```
resource_manager_data_stream_set_looping :: proc "c" (pDataStream: ^resource_manager_data_stream, isLooping: b32) -> result ---
```

### [resource\_manager\_data\_stream\_uninit ¶](#resource_manager_data_stream_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L256)

```
resource_manager_data_stream_uninit :: proc "c" (pDataStream: ^resource_manager_data_stream) -> result ---
```

### [resource\_manager\_get\_log ¶](#resource_manager_get_log) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L222)

```
resource_manager_get_log :: proc "c" (pResourceManager: ^resource_manager) -> ^log ---
```

### [resource\_manager\_init ¶](#resource_manager_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L220)

```
resource_manager_init :: proc "c" (pConfig: ^resource_manager_config, pResourceManager: ^resource_manager) -> result ---
```

 

Init.

### [resource\_manager\_job\_init ¶](#resource_manager_job_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L186)

```
resource_manager_job_init :: job_init
```

### [resource\_manager\_job\_queue\_config\_init ¶](#resource_manager_job_queue_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L227)

```
resource_manager_job_queue_config_init :: job_queue_config_init
```

### [resource\_manager\_job\_queue\_get\_heap\_size ¶](#resource_manager_job_queue_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L229)

```
resource_manager_job_queue_get_heap_size :: job_queue_get_heap_size
```

### [resource\_manager\_job\_queue\_init ¶](#resource_manager_job_queue_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L231)

```
resource_manager_job_queue_init :: job_queue_init
```

### [resource\_manager\_job\_queue\_init\_preallocated ¶](#resource_manager_job_queue_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L230)

```
resource_manager_job_queue_init_preallocated :: job_queue_init_preallocated
```

### [resource\_manager\_job\_queue\_next ¶](#resource_manager_job_queue_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L234)

```
resource_manager_job_queue_next :: job_queue_next
```

 

Returns MA\_CANCELLED if the next job is a quit job.

### [resource\_manager\_job\_queue\_post ¶](#resource_manager_job_queue_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L233)

```
resource_manager_job_queue_post :: job_queue_post
```

### [resource\_manager\_job\_queue\_uninit ¶](#resource_manager_job_queue_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L232)

```
resource_manager_job_queue_uninit :: job_queue_uninit
```

### [resource\_manager\_next\_job ¶](#resource_manager_next_job) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L286)

```
resource_manager_next_job :: proc "c" (pResourceManager: ^resource_manager, pJob: ^job) -> result ---
```

### [resource\_manager\_pipeline\_notifications\_init ¶](#resource_manager_pipeline_notifications_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L39)

```
resource_manager_pipeline_notifications_init :: proc "c" () -> resource_manager_pipeline_notifications ---
```

### [resource\_manager\_post\_job ¶](#resource_manager_post_job) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L284)

```
resource_manager_post_job :: proc "c" (pResourceManager: ^resource_manager, pJob: ^job) -> result ---
```

 

Job management.

### [resource\_manager\_post\_job\_quit ¶](#resource_manager_post_job_quit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L285)

```
resource_manager_post_job_quit :: proc "c" (pResourceManager: ^resource_manager) -> result ---
```

 

Helper for posting a quit job.

### [resource\_manager\_process\_job ¶](#resource_manager_process_job) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L287)

```
resource_manager_process_job :: proc "c" (pResourceManager: ^resource_manager, pJob: ^job) -> result ---
```

 

DEPRECATED. Use ma\_job\_process(). Will be removed in version 0.12.

### [resource\_manager\_process\_next\_job ¶](#resource_manager_process_next_job) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L288)

```
resource_manager_process_next_job :: proc "c" (pResourceManager: ^resource_manager) -> result ---
```

 

Returns MA\_CANCELLED if a MA\_JOB\_TYPE\_QUIT job is found. In non-blocking mode, returns MA\_NO\_DATA\_AVAILABLE if no jobs are available.

### [resource\_manager\_register\_decoded\_data ¶](#resource_manager_register_decoded_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L227)

```
resource_manager_register_decoded_data :: proc "c" (
	pResourceManager: ^resource_manager, 
	pName:            cstring, 
	pData:            rawptr, 
	frameCount:       u64, 
	format:           format, 
	channels:         u32, 
	sampleRate:       u32, 
) -> result ---
```

 

Does not copy. Increments the reference count if already exists and returns MA\_SUCCESS.

### [resource\_manager\_register\_decoded\_data\_w ¶](#resource_manager_register_decoded_data_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L228)

```
resource_manager_register_decoded_data_w :: proc "c" (
	pResourceManager: ^resource_manager, 
	pName:            [^]u16, 
	pData:            rawptr, 
	frameCount:       u64, 
	format:           format, 
	channels:         u32, 
	sampleRate:       u32, 
) -> result ---
```

### [resource\_manager\_register\_encoded\_data ¶](#resource_manager_register_encoded_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L229)

```
resource_manager_register_encoded_data :: proc "c" (pResourceManager: ^resource_manager, pName: cstring, pData: rawptr, sizeInBytes: uint) -> result ---
```

 

Does not copy. Increments the reference count if already exists and returns MA\_SUCCESS.

### [resource\_manager\_register\_encoded\_data\_w ¶](#resource_manager_register_encoded_data_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L230)

```
resource_manager_register_encoded_data_w :: proc "c" (pResourceManager: ^resource_manager, pName: [^]u16, pData: rawptr, sizeInBytes: uint) -> result ---
```

### [resource\_manager\_register\_file ¶](#resource_manager_register_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L225)

```
resource_manager_register_file :: proc "c" (pResourceManager: ^resource_manager, pFilePath: cstring, flags: u32) -> result ---
```

 

Registration.

### [resource\_manager\_register\_file\_w ¶](#resource_manager_register_file_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L226)

```
resource_manager_register_file_w :: proc "c" (pResourceManager: ^resource_manager, pFilePath: [^]u16, flags: u32) -> result ---
```

### [resource\_manager\_uninit ¶](#resource_manager_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L221)

```
resource_manager_uninit :: proc "c" (pResourceManager: ^resource_manager) ---
```

### [resource\_manager\_unregister\_data ¶](#resource_manager_unregister_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L233)

```
resource_manager_unregister_data :: proc "c" (pResourceManager: ^resource_manager, pName: cstring) -> result ---
```

### [resource\_manager\_unregister\_data\_w ¶](#resource_manager_unregister_data_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L234)

```
resource_manager_unregister_data_w :: proc "c" (pResourceManager: ^resource_manager, pName: [^]u16) -> result ---
```

### [resource\_manager\_unregister\_file ¶](#resource_manager_unregister_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L231)

```
resource_manager_unregister_file :: proc "c" (pResourceManager: ^resource_manager, pFilePath: cstring) -> result ---
```

### [resource\_manager\_unregister\_file\_w ¶](#resource_manager_unregister_file_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin#L232)

```
resource_manager_unregister_file_w :: proc "c" (pResourceManager: ^resource_manager, pFilePath: [^]u16) -> result ---
```

### [result\_description ¶](#result_description) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L342)

```
result_description :: proc "c" (result: result) -> cstring ---
```

 

Retrieves a human readable description of the given result code.

### [semaphore\_init ¶](#semaphore_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L66)

```
semaphore_init :: proc "c" (initialValue: i32, pSemaphore: ^semaphore) -> result ---
```

### [semaphore\_release ¶](#semaphore_release) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L69)

```
semaphore_release :: proc "c" (pSemaphore: ^semaphore) -> result ---
```

### [semaphore\_uninit ¶](#semaphore_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L67)

```
semaphore_uninit :: proc "c" (pSemaphore: ^semaphore) ---
```

### [semaphore\_wait ¶](#semaphore_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L68)

```
semaphore_wait :: proc "c" (pSemaphore: ^semaphore) -> result ---
```

### [silence\_pcm\_frames ¶](#silence_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L32)

```
silence_pcm_frames :: proc "c" (p: rawptr, frameCount: u64, format: format, channels: u32) ---
```

 

Copies silent frames into the given buffer.

Remarks
-------
For all formats except `ma_format_u8`, the output buffer will be filled with 0. For `ma_format_u8` it will be filled with 128. The reason for this is that it
makes more sense for the purpose of mixing to initialize it to the center point.

### [slot\_allocator\_alloc ¶](#slot_allocator_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L50)

```
slot_allocator_alloc :: proc "c" (pAllocator: ^slot_allocator, pSlot: ^u64) -> result ---
```

### [slot\_allocator\_config\_init ¶](#slot_allocator_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L44)

```
slot_allocator_config_init :: proc "c" (capacity: u32) -> slot_allocator_config ---
```

### [slot\_allocator\_free ¶](#slot_allocator_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L51)

```
slot_allocator_free :: proc "c" (pAllocator: ^slot_allocator, slot: u64) -> result ---
```

### [slot\_allocator\_get\_heap\_size ¶](#slot_allocator_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L46)

```
slot_allocator_get_heap_size :: proc "c" (pConfig: ^slot_allocator_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [slot\_allocator\_init ¶](#slot_allocator_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L48)

```
slot_allocator_init :: proc "c" (pConfig: ^slot_allocator_config, pAllocationCallbacks: ^allocation_callbacks, pAllocator: ^slot_allocator) -> result ---
```

### [slot\_allocator\_init\_preallocated ¶](#slot_allocator_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L47)

```
slot_allocator_init_preallocated :: proc "c" (pConfig: ^slot_allocator_config, pHeap: rawptr, pAllocator: ^slot_allocator) -> result ---
```

### [slot\_allocator\_uninit ¶](#slot_allocator_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin#L49)

```
slot_allocator_uninit :: proc "c" (pAllocator: ^slot_allocator, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [sound\_at\_end ¶](#sound_at_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L239)

```
sound_at_end :: proc "c" (pSound: ^sound) -> b32 ---
```

### [sound\_config\_init ¶](#sound_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L162)

```
sound_config_init :: proc "c" () -> sound_config ---
```

### [sound\_config\_init\_2 ¶](#sound_config_init_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L163)

```
sound_config_init_2 :: proc "c" (pEngine: ^engine) -> sound_config ---
```

 

Will be renamed to sound\_config\_init() in version 0.12.

### [sound\_get\_attenuation\_model ¶](#sound_get_attenuation_model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L202)

```
sound_get_attenuation_model :: proc "c" (pSound: ^sound) -> attenuation_model ---
```

### [sound\_get\_cone ¶](#sound_get_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L216)

```
sound_get_cone :: proc "c" (pSound: ^sound, pInnerAngleInRadians, pOuterAngleInRadians, pOuterGain: ^f32) ---
```

### [sound\_get\_current\_fade\_volume ¶](#sound_get_current_fade_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L225)

```
sound_get_current_fade_volume :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_cursor\_in\_pcm\_frames ¶](#sound_get_cursor_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L243)

```
sound_get_cursor_in_pcm_frames :: proc "c" (pSound: ^sound, pCursor: ^u64) -> result ---
```

### [sound\_get\_cursor\_in\_seconds ¶](#sound_get_cursor_in_seconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L245)

```
sound_get_cursor_in_seconds :: proc "c" (pSound: ^sound, pCursor: ^f32) -> result ---
```

### [sound\_get\_data\_format ¶](#sound_get_data_format) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L242)

```
sound_get_data_format :: proc "c" (
	pSound:                 ^sound, 
	pFormat:                ^format, 
	pChannels, pSampleRate: ^u32, 
	pChannelMap:            ^channel, 
	channelMapCap:          uint, 
) -> result ---
```

### [sound\_get\_data\_source ¶](#sound_get_data_source) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L172)

```
sound_get_data_source :: proc "c" (pSound: ^sound) -> ^data_source ---
```

### [sound\_get\_direction ¶](#sound_get_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L198)

```
sound_get_direction :: proc "c" (pSound: ^sound) -> vec3f ---
```

### [sound\_get\_direction\_to\_listener ¶](#sound_get_direction_to_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L194)

```
sound_get_direction_to_listener :: proc "c" (pSound: ^sound) -> vec3f ---
```

### [sound\_get\_directional\_attenuation\_factor ¶](#sound_get_directional_attenuation_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L220)

```
sound_get_directional_attenuation_factor :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_doppler\_factor ¶](#sound_get_doppler_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L218)

```
sound_get_doppler_factor :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_engine ¶](#sound_get_engine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L171)

```
sound_get_engine :: proc "c" (pSound: ^sound) -> ^engine ---
```

### [sound\_get\_length\_in\_pcm\_frames ¶](#sound_get_length_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L244)

```
sound_get_length_in_pcm_frames :: proc "c" (pSound: ^sound, pLength: ^u64) -> result ---
```

### [sound\_get\_length\_in\_seconds ¶](#sound_get_length_in_seconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L246)

```
sound_get_length_in_seconds :: proc "c" (pSound: ^sound, pLength: ^f32) -> result ---
```

### [sound\_get\_listener\_index ¶](#sound_get_listener_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L193)

```
sound_get_listener_index :: proc "c" (pSound: ^sound) -> u32 ---
```

### [sound\_get\_max\_distance ¶](#sound_get_max_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L214)

```
sound_get_max_distance :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_max\_gain ¶](#sound_get_max_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L210)

```
sound_get_max_gain :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_min\_distance ¶](#sound_get_min_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L212)

```
sound_get_min_distance :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_min\_gain ¶](#sound_get_min_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L208)

```
sound_get_min_gain :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_pan ¶](#sound_get_pan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L184)

```
sound_get_pan :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_pan\_mode ¶](#sound_get_pan_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L186)

```
sound_get_pan_mode :: proc "c" (pSound: ^sound) -> pan_mode ---
```

### [sound\_get\_pinned\_listener\_index ¶](#sound_get_pinned_listener_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L192)

```
sound_get_pinned_listener_index :: proc "c" (pSound: ^sound) -> u32 ---
```

### [sound\_get\_pitch ¶](#sound_get_pitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L188)

```
sound_get_pitch :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_position ¶](#sound_get_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L196)

```
sound_get_position :: proc "c" (pSound: ^sound) -> vec3f ---
```

### [sound\_get\_positioning ¶](#sound_get_positioning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L204)

```
sound_get_positioning :: proc "c" (pSound: ^sound) -> positioning ---
```

### [sound\_get\_rolloff ¶](#sound_get_rolloff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L206)

```
sound_get_rolloff :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_get\_time\_in\_milliseconds ¶](#sound_get_time_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L236)

```
sound_get_time_in_milliseconds :: proc "c" (pSound: ^sound) -> u64 ---
```

### [sound\_get\_time\_in\_pcm\_frames ¶](#sound_get_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L235)

```
sound_get_time_in_pcm_frames :: proc "c" (pSound: ^sound) -> u64 ---
```

### [sound\_get\_velocity ¶](#sound_get_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L200)

```
sound_get_velocity :: proc "c" (pSound: ^sound) -> vec3f ---
```

### [sound\_get\_volume ¶](#sound_get_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L182)

```
sound_get_volume :: proc "c" (pSound: ^sound) -> f32 ---
```

### [sound\_group\_config\_init ¶](#sound_group_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L258)

```
sound_group_config_init :: proc "c" () -> sound_group_config ---
```

### [sound\_group\_config\_init\_2 ¶](#sound_group_config_init_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L259)

```
sound_group_config_init_2 :: proc "c" (pEngine: ^engine) -> sound_group_config ---
```

### [sound\_group\_get\_attenuation\_model ¶](#sound_group_get_attenuation_model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L288)

```
sound_group_get_attenuation_model :: proc "c" (pGroup: ^sound_group) -> attenuation_model ---
```

### [sound\_group\_get\_cone ¶](#sound_group_get_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L302)

```
sound_group_get_cone :: proc "c" (pGroup: ^sound_group, pInnerAngleInRadians, pOuterAngleInRadians, pOuterGain: ^f32) ---
```

### [sound\_group\_get\_current\_fade\_volume ¶](#sound_group_get_current_fade_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L309)

```
sound_group_get_current_fade_volume :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_direction ¶](#sound_group_get_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L284)

```
sound_group_get_direction :: proc "c" (pGroup: ^sound_group) -> vec3f ---
```

### [sound\_group\_get\_direction\_to\_listener ¶](#sound_group_get_direction_to_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L280)

```
sound_group_get_direction_to_listener :: proc "c" (pGroup: ^sound_group) -> vec3f ---
```

### [sound\_group\_get\_directional\_attenuation\_factor ¶](#sound_group_get_directional_attenuation_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L306)

```
sound_group_get_directional_attenuation_factor :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_doppler\_factor ¶](#sound_group_get_doppler_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L304)

```
sound_group_get_doppler_factor :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_engine ¶](#sound_group_get_engine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L264)

```
sound_group_get_engine :: proc "c" (pGroup: ^sound_group) -> ^engine ---
```

### [sound\_group\_get\_listener\_index ¶](#sound_group_get_listener_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L279)

```
sound_group_get_listener_index :: proc "c" (pGroup: ^sound_group) -> u32 ---
```

### [sound\_group\_get\_max\_distance ¶](#sound_group_get_max_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L300)

```
sound_group_get_max_distance :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_max\_gain ¶](#sound_group_get_max_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L296)

```
sound_group_get_max_gain :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_min\_distance ¶](#sound_group_get_min_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L298)

```
sound_group_get_min_distance :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_min\_gain ¶](#sound_group_get_min_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L294)

```
sound_group_get_min_gain :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_pan ¶](#sound_group_get_pan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L270)

```
sound_group_get_pan :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_pan\_mode ¶](#sound_group_get_pan_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L272)

```
sound_group_get_pan_mode :: proc "c" (pGroup: ^sound_group) -> pan_mode ---
```

### [sound\_group\_get\_pinned\_listener\_index ¶](#sound_group_get_pinned_listener_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L278)

```
sound_group_get_pinned_listener_index :: proc "c" (pGroup: ^sound_group) -> u32 ---
```

### [sound\_group\_get\_pitch ¶](#sound_group_get_pitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L274)

```
sound_group_get_pitch :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_position ¶](#sound_group_get_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L282)

```
sound_group_get_position :: proc "c" (pGroup: ^sound_group) -> vec3f ---
```

### [sound\_group\_get\_positioning ¶](#sound_group_get_positioning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L290)

```
sound_group_get_positioning :: proc "c" (pGroup: ^sound_group) -> positioning ---
```

### [sound\_group\_get\_rolloff ¶](#sound_group_get_rolloff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L292)

```
sound_group_get_rolloff :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_get\_time\_in\_pcm\_frames ¶](#sound_group_get_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L315)

```
sound_group_get_time_in_pcm_frames :: proc "c" (pGroup: ^sound_group) -> u64 ---
```

### [sound\_group\_get\_velocity ¶](#sound_group_get_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L286)

```
sound_group_get_velocity :: proc "c" (pGroup: ^sound_group) -> vec3f ---
```

### [sound\_group\_get\_volume ¶](#sound_group_get_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L268)

```
sound_group_get_volume :: proc "c" (pGroup: ^sound_group) -> f32 ---
```

### [sound\_group\_init ¶](#sound_group_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L261)

```
sound_group_init :: proc "c" (pEngine: ^engine, flags: bit_set[sound_flag; u32], pParentGroup, pGroup: ^sound_group) -> result ---
```

### [sound\_group\_init\_ex ¶](#sound_group_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L262)

```
sound_group_init_ex :: proc "c" (pEngine: ^engine, pConfig: ^sound_group_config, pGroup: ^sound_group) -> result ---
```

### [sound\_group\_is\_playing ¶](#sound_group_is_playing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L314)

```
sound_group_is_playing :: proc "c" (pGroup: ^sound_group) -> b32 ---
```

### [sound\_group\_is\_spatialization\_enabled ¶](#sound_group_is_spatialization_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L276)

```
sound_group_is_spatialization_enabled :: proc "c" (pGroup: ^sound_group) -> b32 ---
```

### [sound\_group\_set\_attenuation\_model ¶](#sound_group_set_attenuation_model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L287)

```
sound_group_set_attenuation_model :: proc "c" (pGroup: ^sound_group, attenuationModel: attenuation_model) ---
```

### [sound\_group\_set\_cone ¶](#sound_group_set_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L301)

```
sound_group_set_cone :: proc "c" (pGroup: ^sound_group, innerAngleInRadians, outerAngleInRadians, outerGain: f32) ---
```

### [sound\_group\_set\_direction ¶](#sound_group_set_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L283)

```
sound_group_set_direction :: proc "c" (pGroup: ^sound_group, x, y, z: f32) ---
```

### [sound\_group\_set\_directional\_attenuation\_factor ¶](#sound_group_set_directional_attenuation_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L305)

```
sound_group_set_directional_attenuation_factor :: proc "c" (pGroup: ^sound_group, directionalAttenuationFactor: f32) ---
```

### [sound\_group\_set\_doppler\_factor ¶](#sound_group_set_doppler_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L303)

```
sound_group_set_doppler_factor :: proc "c" (pGroup: ^sound_group, dopplerFactor: f32) ---
```

### [sound\_group\_set\_fade\_in\_milliseconds ¶](#sound_group_set_fade_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L308)

```
sound_group_set_fade_in_milliseconds :: proc "c" (pGroup: ^sound_group, volumeBeg, volumeEnd: f32, fadeLengthInMilliseconds: u64) ---
```

### [sound\_group\_set\_fade\_in\_pcm\_frames ¶](#sound_group_set_fade_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L307)

```
sound_group_set_fade_in_pcm_frames :: proc "c" (pGroup: ^sound_group, volumeBeg, volumeEnd: f32, fadeLengthInFrames: u64) ---
```

### [sound\_group\_set\_max\_distance ¶](#sound_group_set_max_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L299)

```
sound_group_set_max_distance :: proc "c" (pGroup: ^sound_group, maxDistance: f32) ---
```

### [sound\_group\_set\_max\_gain ¶](#sound_group_set_max_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L295)

```
sound_group_set_max_gain :: proc "c" (pGroup: ^sound_group, maxGain: f32) ---
```

### [sound\_group\_set\_min\_distance ¶](#sound_group_set_min_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L297)

```
sound_group_set_min_distance :: proc "c" (pGroup: ^sound_group, minDistance: f32) ---
```

### [sound\_group\_set\_min\_gain ¶](#sound_group_set_min_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L293)

```
sound_group_set_min_gain :: proc "c" (pGroup: ^sound_group, minGain: f32) ---
```

### [sound\_group\_set\_pan ¶](#sound_group_set_pan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L269)

```
sound_group_set_pan :: proc "c" (pGroup: ^sound_group, pan: f32) ---
```

### [sound\_group\_set\_pan\_mode ¶](#sound_group_set_pan_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L271)

```
sound_group_set_pan_mode :: proc "c" (pGroup: ^sound_group, panMode: pan_mode) ---
```

### [sound\_group\_set\_pinned\_listener\_index ¶](#sound_group_set_pinned_listener_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L277)

```
sound_group_set_pinned_listener_index :: proc "c" (pGroup: ^sound_group, listenerIndex: u32) ---
```

### [sound\_group\_set\_pitch ¶](#sound_group_set_pitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L273)

```
sound_group_set_pitch :: proc "c" (pGroup: ^sound_group, pitch: f32) ---
```

### [sound\_group\_set\_position ¶](#sound_group_set_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L281)

```
sound_group_set_position :: proc "c" (pGroup: ^sound_group, x, y, z: f32) ---
```

### [sound\_group\_set\_positioning ¶](#sound_group_set_positioning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L289)

```
sound_group_set_positioning :: proc "c" (pGroup: ^sound_group, positioning: positioning) ---
```

### [sound\_group\_set\_rolloff ¶](#sound_group_set_rolloff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L291)

```
sound_group_set_rolloff :: proc "c" (pGroup: ^sound_group, rolloff: f32) ---
```

### [sound\_group\_set\_spatialization\_enabled ¶](#sound_group_set_spatialization_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L275)

```
sound_group_set_spatialization_enabled :: proc "c" (pGroup: ^sound_group, enabled: b32) ---
```

### [sound\_group\_set\_start\_time\_in\_milliseconds ¶](#sound_group_set_start_time_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L311)

```
sound_group_set_start_time_in_milliseconds :: proc "c" (pGroup: ^sound_group, absoluteGlobalTimeInMilliseconds: u64) ---
```

### [sound\_group\_set\_start\_time\_in\_pcm\_frames ¶](#sound_group_set_start_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L310)

```
sound_group_set_start_time_in_pcm_frames :: proc "c" (pGroup: ^sound_group, absoluteGlobalTimeInFrames: u64) ---
```

### [sound\_group\_set\_stop\_time\_in\_milliseconds ¶](#sound_group_set_stop_time_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L313)

```
sound_group_set_stop_time_in_milliseconds :: proc "c" (pGroup: ^sound_group, absoluteGlobalTimeInMilliseconds: u64) ---
```

### [sound\_group\_set\_stop\_time\_in\_pcm\_frames ¶](#sound_group_set_stop_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L312)

```
sound_group_set_stop_time_in_pcm_frames :: proc "c" (pGroup: ^sound_group, absoluteGlobalTimeInFrames: u64) ---
```

### [sound\_group\_set\_velocity ¶](#sound_group_set_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L285)

```
sound_group_set_velocity :: proc "c" (pGroup: ^sound_group, x, y, z: f32) ---
```

### [sound\_group\_set\_volume ¶](#sound_group_set_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L267)

```
sound_group_set_volume :: proc "c" (pGroup: ^sound_group, volume: f32) ---
```

### [sound\_group\_start ¶](#sound_group_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L265)

```
sound_group_start :: proc "c" (pGroup: ^sound_group) -> result ---
```

### [sound\_group\_stop ¶](#sound_group_stop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L266)

```
sound_group_stop :: proc "c" (pGroup: ^sound_group) -> result ---
```

### [sound\_group\_uninit ¶](#sound_group_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L263)

```
sound_group_uninit :: proc "c" (pGroup: ^sound_group) ---
```

### [sound\_init\_copy ¶](#sound_init_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L167)

```
sound_init_copy :: proc "c" (pEngine: ^engine, pExistingSound: ^sound, flags: bit_set[sound_flag; u32], pGroup: ^sound_group, pSound: ^sound) -> result ---
```

### [sound\_init\_ex ¶](#sound_init_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L169)

```
sound_init_ex :: proc "c" (pEngine: ^engine, pConfig: ^sound_config, pSound: ^sound) -> result ---
```

### [sound\_init\_from\_data\_source ¶](#sound_init_from_data_source) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L168)

```
sound_init_from_data_source :: proc "c" (pEngine: ^engine, pDataSource: ^data_source, flags: bit_set[sound_flag; u32], pGroup: ^sound_group, pSound: ^sound) -> result ---
```

### [sound\_init\_from\_file ¶](#sound_init_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L165)

```
sound_init_from_file :: proc "c" (
	pEngine:    ^engine, 
	pFilePath:  cstring, 
	flags:      bit_set[sound_flag; u32], 
	pGroup:     ^sound_group, 
	pDoneFence: ^fence, 
	pSound:     ^sound, 
) -> result ---
```

### [sound\_init\_from\_file\_w ¶](#sound_init_from_file_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L166)

```
sound_init_from_file_w :: proc "c" (
	pEngine:    ^engine, 
	pFilePath:  [^]u16, 
	flags:      bit_set[sound_flag; u32], 
	pGroup:     ^sound_group, 
	pDoneFence: ^fence, 
	pSound:     ^sound, 
) -> result ---
```

### [sound\_is\_looping ¶](#sound_is_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L238)

```
sound_is_looping :: proc "c" (pSound: ^sound) -> b32 ---
```

### [sound\_is\_playing ¶](#sound_is_playing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L234)

```
sound_is_playing :: proc "c" (pSound: ^sound) -> b32 ---
```

### [sound\_is\_spatialization\_enabled ¶](#sound_is_spatialization_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L190)

```
sound_is_spatialization_enabled :: proc "c" (pSound: ^sound) -> b32 ---
```

### [sound\_reset\_fade ¶](#sound_reset_fade) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L179)

```
sound_reset_fade :: proc "c" (pSound: ^sound) ---
```

### [sound\_reset\_start\_time ¶](#sound_reset_start_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L177)

```
sound_reset_start_time :: proc "c" (pSound: ^sound) ---
```

### [sound\_reset\_stop\_time ¶](#sound_reset_stop_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L178)

```
sound_reset_stop_time :: proc "c" (pSound: ^sound) ---
```

### [sound\_reset\_stop\_time\_and\_fade ¶](#sound_reset_stop_time_and_fade) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L180)

```
sound_reset_stop_time_and_fade :: proc "c" (pSound: ^sound) ---
```

 

Resets fades and scheduled stop time. Does not seek back to the start.

### [sound\_seek\_to\_pcm\_frame ¶](#sound_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L240)

```
sound_seek_to_pcm_frame :: proc "c" (pSound: ^sound, frameIndex: u64) -> result ---
```

 

Just a wrapper around ma\_data\_source\_seek\_to\_pcm\_frame().

### [sound\_seek\_to\_second ¶](#sound_seek_to_second) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L241)

```
sound_seek_to_second :: proc "c" (pSound: ^sound, seekPointInSeconds: f32) -> result ---
```

 

Abstraction to ma\_sound\_seek\_to\_pcm\_frame()

### [sound\_set\_attenuation\_model ¶](#sound_set_attenuation_model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L201)

```
sound_set_attenuation_model :: proc "c" (pSound: ^sound, attenuationModel: attenuation_model) ---
```

### [sound\_set\_cone ¶](#sound_set_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L215)

```
sound_set_cone :: proc "c" (pSound: ^sound, innerAngleInRadians, outerAngleInRadians, outerGain: f32) ---
```

### [sound\_set\_direction ¶](#sound_set_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L197)

```
sound_set_direction :: proc "c" (pSound: ^sound, x, y, z: f32) ---
```

### [sound\_set\_directional\_attenuation\_factor ¶](#sound_set_directional_attenuation_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L219)

```
sound_set_directional_attenuation_factor :: proc "c" (pSound: ^sound, directionalAttenuationFactor: f32) ---
```

### [sound\_set\_doppler\_factor ¶](#sound_set_doppler_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L217)

```
sound_set_doppler_factor :: proc "c" (pSound: ^sound, dopplerFactor: f32) ---
```

### [sound\_set\_end\_callback ¶](#sound_set_end_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L247)

```
sound_set_end_callback :: proc "c" (pSound: ^sound, callback: sound_end_proc, pUserData: rawptr) ---
```

### [sound\_set\_fade\_in\_milliseconds ¶](#sound_set_fade_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L222)

```
sound_set_fade_in_milliseconds :: proc "c" (pSound: ^sound, volumeBeg, volumeEnd: f32, fadeLengthInMilliseconds: u64) ---
```

### [sound\_set\_fade\_in\_pcm\_frames ¶](#sound_set_fade_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L221)

```
sound_set_fade_in_pcm_frames :: proc "c" (pSound: ^sound, volumeBeg, volumeEnd: f32, fadeLengthInFrames: u64) ---
```

### [sound\_set\_fade\_start\_in\_milliseconds ¶](#sound_set_fade_start_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L224)

```
sound_set_fade_start_in_milliseconds :: proc "c" (pSound: ^sound, volumeBeg, volumeEnd: f32, fadeLengthInMilliseconds, absoluteGlobalTimeInMilliseconds: u64) ---
```

### [sound\_set\_fade\_start\_in\_pcm\_frames ¶](#sound_set_fade_start_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L223)

```
sound_set_fade_start_in_pcm_frames :: proc "c" (pSound: ^sound, volumeBeg, volumeEnd: f32, fadeLengthInFrames, absoluteGlobalTimeInFrames: u64) ---
```

### [sound\_set\_looping ¶](#sound_set_looping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L237)

```
sound_set_looping :: proc "c" (pSound: ^sound, isLooping: b32) ---
```

### [sound\_set\_max\_distance ¶](#sound_set_max_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L213)

```
sound_set_max_distance :: proc "c" (pSound: ^sound, maxDistance: f32) ---
```

### [sound\_set\_max\_gain ¶](#sound_set_max_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L209)

```
sound_set_max_gain :: proc "c" (pSound: ^sound, maxGain: f32) ---
```

### [sound\_set\_min\_distance ¶](#sound_set_min_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L211)

```
sound_set_min_distance :: proc "c" (pSound: ^sound, minDistance: f32) ---
```

### [sound\_set\_min\_gain ¶](#sound_set_min_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L207)

```
sound_set_min_gain :: proc "c" (pSound: ^sound, minGain: f32) ---
```

### [sound\_set\_pan ¶](#sound_set_pan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L183)

```
sound_set_pan :: proc "c" (pSound: ^sound, pan: f32) ---
```

### [sound\_set\_pan\_mode ¶](#sound_set_pan_mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L185)

```
sound_set_pan_mode :: proc "c" (pSound: ^sound, panMode: pan_mode) ---
```

### [sound\_set\_pinned\_listener\_index ¶](#sound_set_pinned_listener_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L191)

```
sound_set_pinned_listener_index :: proc "c" (pSound: ^sound, listenerIndex: u32) ---
```

### [sound\_set\_pitch ¶](#sound_set_pitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L187)

```
sound_set_pitch :: proc "c" (pSound: ^sound, pitch: f32) ---
```

### [sound\_set\_position ¶](#sound_set_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L195)

```
sound_set_position :: proc "c" (pSound: ^sound, x, y, z: f32) ---
```

### [sound\_set\_positioning ¶](#sound_set_positioning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L203)

```
sound_set_positioning :: proc "c" (pSound: ^sound, positioning: positioning) ---
```

### [sound\_set\_rolloff ¶](#sound_set_rolloff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L205)

```
sound_set_rolloff :: proc "c" (pSound: ^sound, rolloff: f32) ---
```

### [sound\_set\_spatialization\_enabled ¶](#sound_set_spatialization_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L189)

```
sound_set_spatialization_enabled :: proc "c" (pSound: ^sound, enabled: b32) ---
```

### [sound\_set\_start\_time\_in\_milliseconds ¶](#sound_set_start_time_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L227)

```
sound_set_start_time_in_milliseconds :: proc "c" (pSound: ^sound, absoluteGlobalTimeInMilliseconds: u64) ---
```

### [sound\_set\_start\_time\_in\_pcm\_frames ¶](#sound_set_start_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L226)

```
sound_set_start_time_in_pcm_frames :: proc "c" (pSound: ^sound, absoluteGlobalTimeInFrames: u64) ---
```

### [sound\_set\_stop\_time\_in\_milliseconds ¶](#sound_set_stop_time_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L229)

```
sound_set_stop_time_in_milliseconds :: proc "c" (pSound: ^sound, absoluteGlobalTimeInMilliseconds: u64) ---
```

### [sound\_set\_stop\_time\_in\_pcm\_frames ¶](#sound_set_stop_time_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L228)

```
sound_set_stop_time_in_pcm_frames :: proc "c" (pSound: ^sound, absoluteGlobalTimeInFrames: u64) ---
```

### [sound\_set\_stop\_time\_with\_fade\_in\_milliseconds ¶](#sound_set_stop_time_with_fade_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L232)

```
sound_set_stop_time_with_fade_in_milliseconds :: proc "c" (pSound: ^sound, fadeAbsoluteGlobalTimeInMilliseconds, fadeLengthInMilliseconds: u64) ---
```

### [sound\_set\_stop\_time\_with\_fade\_in\_pcm\_frames ¶](#sound_set_stop_time_with_fade_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L231)

```
sound_set_stop_time_with_fade_in_pcm_frames :: proc "c" (pSound: ^sound, stopAbsoluteGlobalTimeInFrames, fadeLengthInFrames: u64) ---
```

### [sound\_set\_velocity ¶](#sound_set_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L199)

```
sound_set_velocity :: proc "c" (pSound: ^sound, x, y, z: f32) ---
```

### [sound\_set\_volume ¶](#sound_set_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L181)

```
sound_set_volume :: proc "c" (pSound: ^sound, volume: f32) ---
```

### [sound\_start ¶](#sound_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L173)

```
sound_start :: proc "c" (pSound: ^sound) -> result ---
```

### [sound\_stop ¶](#sound_stop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L174)

```
sound_stop :: proc "c" (pSound: ^sound) -> result ---
```

### [sound\_stop\_with\_fade\_in\_milliseconds ¶](#sound_stop_with_fade_in_milliseconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L176)

```
sound_stop_with_fade_in_milliseconds :: proc "c" (pSound: ^sound, fadeLengthInFrames: u64) ---
```

 

Will overwrite any scheduled stop and fade. If you want to restart the sound, first reset it with `ma_sound_reset_stop_time_and_fade()`. There are plans to make this less awkward in the future.

### [sound\_stop\_with\_fade\_in\_pcm\_frames ¶](#sound_stop_with_fade_in_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L175)

```
sound_stop_with_fade_in_pcm_frames :: proc "c" (pSound: ^sound, fadeLengthInFrames: u64) ---
```

 

Will overwrite any scheduled stop and fade. If you want to restart the sound, first reset it with `ma_sound_reset_stop_time_and_fade()`. There are plans to make this less awkward in the future.

### [sound\_uninit ¶](#sound_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin#L170)

```
sound_uninit :: proc "c" (pSound: ^sound) ---
```

### [spatializer\_config\_init ¶](#spatializer_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L269)

```
spatializer_config_init :: proc "c" (channelsIn, channelsOut: u32) -> spatializer_config ---
```

### [spatializer\_get\_attenuation\_model ¶](#spatializer_get_attenuation_model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L281)

```
spatializer_get_attenuation_model :: proc "c" (pSpatializer: ^spatializer) -> attenuation_model ---
```

### [spatializer\_get\_cone ¶](#spatializer_get_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L295)

```
spatializer_get_cone :: proc "c" (pSpatializer: ^spatializer, pInnerAngleInRadians, pOuterAngleInRadians, pOuterGain: ^f32) ---
```

### [spatializer\_get\_direction ¶](#spatializer_get_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L303)

```
spatializer_get_direction :: proc "c" (pSpatializer: ^spatializer) -> vec3f ---
```

### [spatializer\_get\_directional\_attenuation\_factor ¶](#spatializer_get_directional_attenuation_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L299)

```
spatializer_get_directional_attenuation_factor :: proc "c" (pSpatializer: ^spatializer) -> f32 ---
```

### [spatializer\_get\_doppler\_factor ¶](#spatializer_get_doppler_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L297)

```
spatializer_get_doppler_factor :: proc "c" (pSpatializer: ^spatializer) -> f32 ---
```

### [spatializer\_get\_heap\_size ¶](#spatializer_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L271)

```
spatializer_get_heap_size :: proc "c" (pConfig: ^spatializer_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [spatializer\_get\_input\_channels ¶](#spatializer_get_input_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L278)

```
spatializer_get_input_channels :: proc "c" (pSpatializer: ^spatializer) -> u32 ---
```

### [spatializer\_get\_master\_volume ¶](#spatializer_get_master_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L277)

```
spatializer_get_master_volume :: proc "c" (pSpatializer: ^spatializer, pVolume: ^f32) -> result ---
```

### [spatializer\_get\_max\_distance ¶](#spatializer_get_max_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L293)

```
spatializer_get_max_distance :: proc "c" (pSpatializer: ^spatializer) -> f32 ---
```

### [spatializer\_get\_max\_gain ¶](#spatializer_get_max_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L289)

```
spatializer_get_max_gain :: proc "c" (pSpatializer: ^spatializer) -> f32 ---
```

### [spatializer\_get\_min\_distance ¶](#spatializer_get_min_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L291)

```
spatializer_get_min_distance :: proc "c" (pSpatializer: ^spatializer) -> f32 ---
```

### [spatializer\_get\_min\_gain ¶](#spatializer_get_min_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L287)

```
spatializer_get_min_gain :: proc "c" (pSpatializer: ^spatializer) -> f32 ---
```

### [spatializer\_get\_output\_channels ¶](#spatializer_get_output_channels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L279)

```
spatializer_get_output_channels :: proc "c" (pSpatializer: ^spatializer) -> u32 ---
```

### [spatializer\_get\_position ¶](#spatializer_get_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L301)

```
spatializer_get_position :: proc "c" (pSpatializer: ^spatializer) -> vec3f ---
```

### [spatializer\_get\_positioning ¶](#spatializer_get_positioning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L283)

```
spatializer_get_positioning :: proc "c" (pSpatializer: ^spatializer) -> positioning ---
```

### [spatializer\_get\_relative\_position\_and\_direction ¶](#spatializer_get_relative_position_and_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L306)

```
spatializer_get_relative_position_and_direction :: proc "c" (pSpatializer: ^spatializer, pListener: ^spatializer_listener, pRelativePos, pRelativeDir: ^vec3f) ---
```

### [spatializer\_get\_rolloff ¶](#spatializer_get_rolloff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L285)

```
spatializer_get_rolloff :: proc "c" (pSpatializer: ^spatializer) -> f32 ---
```

### [spatializer\_get\_velocity ¶](#spatializer_get_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L305)

```
spatializer_get_velocity :: proc "c" (pSpatializer: ^spatializer) -> vec3f ---
```

### [spatializer\_init ¶](#spatializer_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L273)

```
spatializer_init :: proc "c" (pConfig: ^spatializer_config, pAllocationCallbacks: ^allocation_callbacks, pSpatializer: ^spatializer) -> result ---
```

### [spatializer\_init\_preallocated ¶](#spatializer_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L272)

```
spatializer_init_preallocated :: proc "c" (pConfig: ^spatializer_config, pHeap: rawptr, pSpatializer: ^spatializer) -> result ---
```

### [spatializer\_listener\_config\_init ¶](#spatializer_listener_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L192)

```
spatializer_listener_config_init :: proc "c" (channelsOut: u32) -> spatializer_listener_config ---
```

### [spatializer\_listener\_get\_channel\_map ¶](#spatializer_listener_get_channel_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L198)

```
spatializer_listener_get_channel_map :: proc "c" (pListener: ^spatializer_listener) -> ^channel ---
```

### [spatializer\_listener\_get\_cone ¶](#spatializer_listener_get_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L200)

```
spatializer_listener_get_cone :: proc "c" (pListener: ^spatializer_listener, pInnerAngleInRadians, pOuterAngleInRadians, pOuterGain: ^f32) ---
```

### [spatializer\_listener\_get\_direction ¶](#spatializer_listener_get_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L204)

```
spatializer_listener_get_direction :: proc "c" (pListener: ^spatializer_listener) -> vec3f ---
```

### [spatializer\_listener\_get\_heap\_size ¶](#spatializer_listener_get_heap_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L194)

```
spatializer_listener_get_heap_size :: proc "c" (pConfig: ^spatializer_listener_config, pHeapSizeInBytes: ^uint) -> result ---
```

### [spatializer\_listener\_get\_position ¶](#spatializer_listener_get_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L202)

```
spatializer_listener_get_position :: proc "c" (pListener: ^spatializer_listener) -> vec3f ---
```

### [spatializer\_listener\_get\_speed\_of\_sound ¶](#spatializer_listener_get_speed_of_sound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L208)

```
spatializer_listener_get_speed_of_sound :: proc "c" (pListener: ^spatializer_listener) -> f32 ---
```

### [spatializer\_listener\_get\_velocity ¶](#spatializer_listener_get_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L206)

```
spatializer_listener_get_velocity :: proc "c" (pListener: ^spatializer_listener) -> vec3f ---
```

### [spatializer\_listener\_get\_world\_up ¶](#spatializer_listener_get_world_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L210)

```
spatializer_listener_get_world_up :: proc "c" (pListener: ^spatializer_listener) -> vec3f ---
```

### [spatializer\_listener\_init ¶](#spatializer_listener_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L196)

```
spatializer_listener_init :: proc "c" (pConfig: ^spatializer_listener_config, pAllocationCallbacks: ^allocation_callbacks, pListener: ^spatializer_listener) -> result ---
```

### [spatializer\_listener\_init\_preallocated ¶](#spatializer_listener_init_preallocated) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L195)

```
spatializer_listener_init_preallocated :: proc "c" (pConfig: ^spatializer_listener_config, pHeap: rawptr, pListener: ^spatializer_listener) -> result ---
```

### [spatializer\_listener\_is\_enabled ¶](#spatializer_listener_is_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L212)

```
spatializer_listener_is_enabled :: proc "c" (pListener: ^spatializer_listener) -> b32 ---
```

### [spatializer\_listener\_set\_cone ¶](#spatializer_listener_set_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L199)

```
spatializer_listener_set_cone :: proc "c" (pListener: ^spatializer_listener, innerAngleInRadians, outerAngleInRadians, outerGain: f32) ---
```

### [spatializer\_listener\_set\_direction ¶](#spatializer_listener_set_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L203)

```
spatializer_listener_set_direction :: proc "c" (pListener: ^spatializer_listener, x, y, z: f32) ---
```

### [spatializer\_listener\_set\_enabled ¶](#spatializer_listener_set_enabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L211)

```
spatializer_listener_set_enabled :: proc "c" (pListener: ^spatializer_listener, isEnabled: b32) ---
```

### [spatializer\_listener\_set\_position ¶](#spatializer_listener_set_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L201)

```
spatializer_listener_set_position :: proc "c" (pListener: ^spatializer_listener, x, y, z: f32) ---
```

### [spatializer\_listener\_set\_speed\_of\_sound ¶](#spatializer_listener_set_speed_of_sound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L207)

```
spatializer_listener_set_speed_of_sound :: proc "c" (pListener: ^spatializer_listener, speedOfSound: f32) ---
```

### [spatializer\_listener\_set\_velocity ¶](#spatializer_listener_set_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L205)

```
spatializer_listener_set_velocity :: proc "c" (pListener: ^spatializer_listener, x, y, z: f32) ---
```

### [spatializer\_listener\_set\_world\_up ¶](#spatializer_listener_set_world_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L209)

```
spatializer_listener_set_world_up :: proc "c" (pListener: ^spatializer_listener, x, y, z: f32) ---
```

### [spatializer\_listener\_uninit ¶](#spatializer_listener_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L197)

```
spatializer_listener_uninit :: proc "c" (pListener: ^spatializer_listener, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [spatializer\_process\_pcm\_frames ¶](#spatializer_process_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L275)

```
spatializer_process_pcm_frames :: proc "c" (pSpatializer: ^spatializer, pListener: ^spatializer_listener, pFramesOut, pFramesIn: rawptr, frameCount: u64) -> result ---
```

### [spatializer\_set\_attenuation\_model ¶](#spatializer_set_attenuation_model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L280)

```
spatializer_set_attenuation_model :: proc "c" (pSpatializer: ^spatializer, attenuationModel: attenuation_model) ---
```

### [spatializer\_set\_cone ¶](#spatializer_set_cone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L294)

```
spatializer_set_cone :: proc "c" (pSpatializer: ^spatializer, innerAngleInRadians, outerAngleInRadians, outerGain: f32) ---
```

### [spatializer\_set\_direction ¶](#spatializer_set_direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L302)

```
spatializer_set_direction :: proc "c" (pSpatializer: ^spatializer, x, y, z: f32) ---
```

### [spatializer\_set\_directional\_attenuation\_factor ¶](#spatializer_set_directional_attenuation_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L298)

```
spatializer_set_directional_attenuation_factor :: proc "c" (pSpatializer: ^spatializer, directionalAttenuationFactor: f32) ---
```

### [spatializer\_set\_doppler\_factor ¶](#spatializer_set_doppler_factor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L296)

```
spatializer_set_doppler_factor :: proc "c" (pSpatializer: ^spatializer, dopplerFactor: f32) ---
```

### [spatializer\_set\_master\_volume ¶](#spatializer_set_master_volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L276)

```
spatializer_set_master_volume :: proc "c" (pSpatializer: ^spatializer, volume: f32) -> result ---
```

### [spatializer\_set\_max\_distance ¶](#spatializer_set_max_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L292)

```
spatializer_set_max_distance :: proc "c" (pSpatializer: ^spatializer, maxDistance: f32) ---
```

### [spatializer\_set\_max\_gain ¶](#spatializer_set_max_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L288)

```
spatializer_set_max_gain :: proc "c" (pSpatializer: ^spatializer, maxGain: f32) ---
```

### [spatializer\_set\_min\_distance ¶](#spatializer_set_min_distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L290)

```
spatializer_set_min_distance :: proc "c" (pSpatializer: ^spatializer, minDistance: f32) ---
```

### [spatializer\_set\_min\_gain ¶](#spatializer_set_min_gain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L286)

```
spatializer_set_min_gain :: proc "c" (pSpatializer: ^spatializer, minGain: f32) ---
```

### [spatializer\_set\_position ¶](#spatializer_set_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L300)

```
spatializer_set_position :: proc "c" (pSpatializer: ^spatializer, x, y, z: f32) ---
```

### [spatializer\_set\_positioning ¶](#spatializer_set_positioning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L282)

```
spatializer_set_positioning :: proc "c" (pSpatializer: ^spatializer, positioning: positioning) ---
```

### [spatializer\_set\_rolloff ¶](#spatializer_set_rolloff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L284)

```
spatializer_set_rolloff :: proc "c" (pSpatializer: ^spatializer, rolloff: f32) ---
```

### [spatializer\_set\_velocity ¶](#spatializer_set_velocity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L304)

```
spatializer_set_velocity :: proc "c" (pSpatializer: ^spatializer, x, y, z: f32) ---
```

### [spatializer\_uninit ¶](#spatializer_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin#L274)

```
spatializer_uninit :: proc "c" (pSpatializer: ^spatializer, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [spinlock\_lock ¶](#spinlock_lock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L10)

```
spinlock_lock :: proc "c" (pSpinlock: ^spinlock) -> result ---
```

 

Locks a spinlock.

### [spinlock\_lock\_noyield ¶](#spinlock_lock_noyield) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L15)

```
spinlock_lock_noyield :: proc "c" (pSpinlock: ^spinlock) -> result ---
```

 

Locks a spinlock, but does not yield() when looping.

### [spinlock\_unlock ¶](#spinlock_unlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin#L20)

```
spinlock_unlock :: proc "c" (pSpinlock: ^spinlock) -> result ---
```

 

Unlocks a spinlock.

### [splitter\_node\_config\_init ¶](#splitter_node_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L271)

```
splitter_node_config_init :: proc "c" (channels: u32) -> splitter_node_config ---
```

### [splitter\_node\_init ¶](#splitter_node_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L273)

```
splitter_node_init :: proc "c" (pNodeGraph: ^node_graph, pConfig: ^splitter_node_config, pAllocationCallbacks: ^allocation_callbacks, pSplitterNode: ^splitter_node) -> result ---
```

### [splitter\_node\_uninit ¶](#splitter_node_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin#L274)

```
splitter_node_uninit :: proc "c" (pSplitterNode: ^splitter_node, pAllocationCallbacks: ^allocation_callbacks) ---
```

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L325)

```
version :: proc "c" (pMajor, pMinor, pRevision: ^u32) ---
```

### [version\_check ¶](#version_check) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L28)

```
version_check :: proc "contextless" () {…}
```

### [version\_string ¶](#version_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L326)

```
version_string :: proc "c" () -> cstring ---
```

### [vfs\_close ¶](#vfs_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L61)

```
vfs_close :: proc "c" (pVFS: ^vfs, file: vfs_file) -> result ---
```

### [vfs\_info ¶](#vfs_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L66)

```
vfs_info :: proc "c" (pVFS: ^vfs, file: vfs_file, pInfo: ^file_info) -> result ---
```

### [vfs\_open ¶](#vfs_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L59)

```
vfs_open :: proc "c" (pVFS: ^vfs, pFilePath: cstring, openMode: bit_set[open_mode_flag; u32], pFile: ^vfs_file) -> result ---
```

### [vfs\_open\_and\_read\_file ¶](#vfs_open_and_read_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L67)

```
vfs_open_and_read_file :: proc "c" (pVFS: ^vfs, pFilePath: cstring, ppData: ^rawptr, pSize: ^uint, pAllocationCallbacks: ^allocation_callbacks) -> result ---
```

### [vfs\_open\_w ¶](#vfs_open_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L60)

```
vfs_open_w :: proc "c" (pVFS: ^vfs, pFilePath: [^]u16, openMode: bit_set[open_mode_flag; u32], pFile: ^vfs_file) -> result ---
```

### [vfs\_read ¶](#vfs_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L62)

```
vfs_read :: proc "c" (pVFS: ^vfs, file: vfs_file, pDst: rawptr, sizeInBytes: uint, pBytesRead: ^uint) -> result ---
```

### [vfs\_seek ¶](#vfs_seek) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L64)

```
vfs_seek :: proc "c" (pVFS: ^vfs, file: vfs_file, offset: i64, origin: seek_origin) -> result ---
```

### [vfs\_tell ¶](#vfs_tell) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L65)

```
vfs_tell :: proc "c" (pVFS: ^vfs, file: vfs_file, pCursor: ^i64) -> result ---
```

### [vfs\_write ¶](#vfs_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin#L63)

```
vfs_write :: proc "c" (pVFS: ^vfs, file: vfs_file, pSrc: rawptr, sizeInBytes: uint, pBytesWritten: ^uint) -> result ---
```

### [volume\_db\_to\_linear ¶](#volume_db_to_linear) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L102)

```
volume_db_to_linear :: proc "c" (gain: f32) -> f32 ---
```

 

Helper for converting gain in decibels to a linear factor.

### [volume\_linear\_to\_db ¶](#volume_linear_to_db) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin#L97)

```
volume_linear_to_db :: proc "c" (factor: f32) -> f32 ---
```

 

Helper for converting a linear factor to gain in decibels.

### [waveform\_config\_init ¶](#waveform_config_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L69)

```
waveform_config_init :: proc "c" (
	format:     format, 
	channels:   u32, 
	sampleRate: u32, 
	type:       waveform_type, 
	amplitude:  f64, 
	frequency:  f64, 
) -> waveform_config ---
```

### [waveform\_init ¶](#waveform_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L71)

```
waveform_init :: proc "c" (pConfig: ^waveform_config, pWaveform: ^waveform) -> result ---
```

### [waveform\_read\_pcm\_frames ¶](#waveform_read_pcm_frames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L73)

```
waveform_read_pcm_frames :: proc "c" (pWaveform: ^waveform, pFramesOut: rawptr, frameCount: u64, pFramesRead: ^u64) -> result ---
```

### [waveform\_seek\_to\_pcm\_frame ¶](#waveform_seek_to_pcm_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L74)

```
waveform_seek_to_pcm_frame :: proc "c" (pWaveform: ^waveform, frameIndex: u64) -> result ---
```

### [waveform\_set\_amplitude ¶](#waveform_set_amplitude) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L75)

```
waveform_set_amplitude :: proc "c" (pWaveform: ^waveform, amplitude: f64) -> result ---
```

### [waveform\_set\_frequency ¶](#waveform_set_frequency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L76)

```
waveform_set_frequency :: proc "c" (pWaveform: ^waveform, frequency: f64) -> result ---
```

### [waveform\_set\_sample\_rate ¶](#waveform_set_sample_rate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L78)

```
waveform_set_sample_rate :: proc "c" (pWaveform: ^waveform, sampleRate: u32) -> result ---
```

### [waveform\_set\_type ¶](#waveform_set_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L77)

```
waveform_set_type :: proc "c" (pWaveform: ^waveform, type: waveform_type) -> result ---
```

### [waveform\_uninit ¶](#waveform_uninit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin#L72)

```
waveform_uninit :: proc "c" (pWaveform: ^waveform) ---
```

## Procedure Groups

This section is empty.

## `#config` values

### [MINIAUDIO\_SHARED ¶](#MINIAUDIO_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin#L5)

```
MINIAUDIO_SHARED :: #config(MINIAUDIO_SHARED, false)
```

## Source Files

* [common.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/common.odin)
* [data\_conversion.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/data_conversion.odin)
* [decoding.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/decoding.odin)
* [device\_io\_procs.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_procs.odin)
* [device\_io\_types.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/device_io_types.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/doc.odin)
* [effects.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/effects.odin)
* [encoding.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/encoding.odin)
* [engine.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/engine.odin)
* [filtering.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/filtering.odin)
* [generation.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/generation.odin)
* [job\_queue.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/job_queue.odin)
* [logging.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/logging.odin)
* [node\_graph.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/node_graph.odin)
* [resource\_manager.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/resource_manager.odin)
* [synchronization.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/synchronization.odin)
* [utilities.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/utilities.odin)
* [vfs.odin](https://github.com/odin-lang/Odin/tree/master/vendor/miniaudio/vfs.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.333713600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [IMMNotificationClient](#IMMNotificationClient)
    + [aaudio\_allowed\_capture\_policy](#aaudio_allowed_capture_policy)
    + [aaudio\_content\_type](#aaudio_content_type)
    + [aaudio\_input\_preset](#aaudio_input_preset)
    + [aaudio\_usage](#aaudio_usage)
    + [allocation\_callbacks](#allocation_callbacks)
    + [async\_notification](#async_notification)
    + [async\_notification\_callbacks](#async_notification_callbacks)
    + [async\_notification\_event](#async_notification_event)
    + [async\_notification\_poll](#async_notification_poll)
    + [atomic\_vec3f](#atomic_vec3f)
    + [attenuation\_model](#attenuation_model)
    + [audio\_buffer](#audio_buffer)
    + [audio\_buffer\_config](#audio_buffer_config)
    + [audio\_buffer\_ref](#audio_buffer_ref)
    + [backend](#backend)
    + [backend\_callbacks](#backend_callbacks)
    + [biquad](#biquad)
    + [biquad\_coefficient](#biquad_coefficient)
    + [biquad\_config](#biquad_config)
    + [biquad\_node](#biquad_node)
    + [biquad\_node\_config](#biquad_node_config)
    + [bpf](#bpf)
    + [bpf2](#bpf2)
    + [bpf2\_config](#bpf2_config)
    + [bpf\_config](#bpf_config)
    + [bpf\_node](#bpf_node)
    + [bpf\_node\_config](#bpf_node_config)
    + [channel](#channel)
    + [channel\_conversion\_path](#channel_conversion_path)
    + [channel\_converter](#channel_converter)
    + [channel\_converter\_config](#channel_converter_config)
    + [channel\_mix\_mode](#channel_mix_mode)
    + [context\_command\_\_wasapi](#context_command__wasapi)
    + [context\_config](#context_config)
    + [context\_type](#context_type)
    + [data\_converter](#data_converter)
    + [data\_converter\_config](#data_converter_config)
    + [data\_converter\_execution\_path](#data_converter_execution_path)
    + [data\_format\_flag](#data_format_flag)
    + [data\_format\_flags](#data_format_flags)
    + [data\_source](#data_source)
    + [data\_source\_base](#data_source_base)
    + [data\_source\_config](#data_source_config)
    + [data\_source\_flag](#data_source_flag)
    + [data\_source\_flags](#data_source_flags)
    + [data\_source\_get\_next\_proc](#data_source_get_next_proc)
    + [data\_source\_node](#data_source_node)
    + [data\_source\_node\_config](#data_source_node_config)
    + [data\_source\_vtable](#data_source_vtable)
    + [decoder](#decoder)
    + [decoder\_config](#decoder_config)
    + [decoder\_read\_proc](#decoder_read_proc)
    + [decoder\_seek\_proc](#decoder_seek_proc)
    + [decoder\_tell\_proc](#decoder_tell_proc)
    + [decoding\_backend\_config](#decoding_backend_config)
    + [decoding\_backend\_vtable](#decoding_backend_vtable)
    + [default\_vfs](#default_vfs)
    + [delay](#delay)
    + [delay\_config](#delay_config)
    + [delay\_node](#delay_node)
    + [delay\_node\_config](#delay_node_config)
    + [device](#device)
    + [device\_config](#device_config)
    + [device\_data\_proc](#device_data_proc)
    + [device\_descriptor](#device_descriptor)
    + [device\_id](#device_id)
    + [device\_info](#device_info)
    + [device\_job\_thread](#device_job_thread)
    + [device\_job\_thread\_config](#device_job_thread_config)
    + [device\_notification](#device_notification)
    + [device\_notification\_proc](#device_notification_proc)
    + [device\_notification\_type](#device_notification_type)
    + [device\_state](#device_state)
    + [device\_type](#device_type)
    + [dither\_mode](#dither_mode)
    + [duplex\_rb](#duplex_rb)
    + [encoder](#encoder)
    + [encoder\_config](#encoder_config)
    + [encoder\_init\_proc](#encoder_init_proc)
    + [encoder\_seek\_proc](#encoder_seek_proc)
    + [encoder\_uninit\_proc](#encoder_uninit_proc)
    + [encoder\_write\_pcm\_frames\_proc](#encoder_write_pcm_frames_proc)
    + [encoder\_write\_proc](#encoder_write_proc)
    + [encoding\_format](#encoding_format)
    + [engine](#engine)
    + [engine\_config](#engine_config)
    + [engine\_node](#engine_node)
    + [engine\_node\_config](#engine_node_config)
    + [engine\_node\_type](#engine_node_type)
    + [engine\_process\_proc](#engine_process_proc)
    + [enum\_devices\_callback\_proc](#enum_devices_callback_proc)
    + [event](#event)
    + [fader](#fader)
    + [fader\_config](#fader_config)
    + [fence](#fence)
    + [file\_info](#file_info)
    + [format](#format)
    + [gainer](#gainer)
    + [gainer\_config](#gainer_config)
    + [handedness](#handedness)
    + [handle](#handle)
    + [hishelf2](#hishelf2)
    + [hishelf2\_config](#hishelf2_config)
    + [hishelf\_config](#hishelf_config)
    + [hishelf\_node](#hishelf_node)
    + [hishelf\_node\_config](#hishelf_node_config)
    + [hpf](#hpf)
    + [hpf1](#hpf1)
    + [hpf1\_config](#hpf1_config)
    + [hpf2](#hpf2)
    + [hpf2\_config](#hpf2_config)
    + [hpf\_config](#hpf_config)
    + [hpf\_node](#hpf_node)
    + [hpf\_node\_config](#hpf_node_config)
    + [ios\_session\_category](#ios_session_category)
    + [ios\_session\_category\_option](#ios_session_category_option)
    + [job](#job)
    + [job\_proc](#job_proc)
    + [job\_queue](#job_queue)
    + [job\_queue\_config](#job_queue_config)
    + [job\_queue\_flag](#job_queue_flag)
    + [job\_queue\_flags](#job_queue_flags)
    + [job\_type](#job_type)
    + [lcg](#lcg)
    + [linear\_resampler](#linear_resampler)
    + [linear\_resampler\_config](#linear_resampler_config)
    + [log](#log)
    + [log\_callback](#log_callback)
    + [log\_callback\_proc](#log_callback_proc)
    + [log\_level](#log_level)
    + [loshelf2](#loshelf2)
    + [loshelf2\_config](#loshelf2_config)
    + [loshelf\_config](#loshelf_config)
    + [loshelf\_node](#loshelf_node)
    + [loshelf\_node\_config](#loshelf_node_config)
    + [lpf](#lpf)
    + [lpf1](#lpf1)
    + [lpf1\_config](#lpf1_config)
    + [lpf2](#lpf2)
    + [lpf2\_config](#lpf2_config)
    + [lpf\_config](#lpf_config)
    + [lpf\_node](#lpf_node)
    + [lpf\_node\_config](#lpf_node_config)
    + [ma\_read\_proc](#ma_read_proc)
    + [ma\_seek\_proc](#ma_seek_proc)
    + [ma\_tell\_proc](#ma_tell_proc)
    + [mono\_expansion\_mode](#mono_expansion_mode)
    + [mutex](#mutex)
    + [node](#node)
    + [node\_base](#node_base)
    + [node\_config](#node_config)
    + [node\_flag](#node_flag)
    + [node\_flags](#node_flags)
    + [node\_graph](#node_graph)
    + [node\_graph\_config](#node_graph_config)
    + [node\_input\_bus](#node_input_bus)
    + [node\_output\_bus](#node_output_bus)
    + [node\_output\_bus\_flag](#node_output_bus_flag)
    + [node\_output\_bus\_flags](#node_output_bus_flags)
    + [node\_state](#node_state)
    + [node\_vtable](#node_vtable)
    + [noise](#noise)
    + [noise\_config](#noise_config)
    + [noise\_type](#noise_type)
    + [notch2](#notch2)
    + [notch2\_config](#notch2_config)
    + [notch\_config](#notch_config)
    + [notch\_node](#notch_node)
    + [notch\_node\_config](#notch_node_config)
    + [open\_mode\_flag](#open_mode_flag)
    + [open\_mode\_flags](#open_mode_flags)
    + [opensl\_recording\_preset](#opensl_recording_preset)
    + [opensl\_stream\_type](#opensl_stream_type)
    + [paged\_audio\_buffer](#paged_audio_buffer)
    + [paged\_audio\_buffer\_config](#paged_audio_buffer_config)
    + [paged\_audio\_buffer\_data](#paged_audio_buffer_data)
    + [paged\_audio\_buffer\_page](#paged_audio_buffer_page)
    + [pan\_mode](#pan_mode)
    + [panner](#panner)
    + [panner\_config](#panner_config)
    + [pcm\_rb](#pcm_rb)
    + [peak2](#peak2)
    + [peak2\_config](#peak2_config)
    + [peak\_config](#peak_config)
    + [peak\_node](#peak_node)
    + [peak\_node\_config](#peak_node_config)
    + [performance\_profile](#performance_profile)
    + [positioning](#positioning)
    + [pulsewave](#pulsewave)
    + [pulsewave\_config](#pulsewave_config)
    + [rb](#rb)
    + [resample\_algorithm](#resample_algorithm)
    + [resampler](#resampler)
    + [resampler\_config](#resampler_config)
    + [resampling\_backend](#resampling_backend)
    + [resampling\_backend\_vtable](#resampling_backend_vtable)
    + [resource\_manager](#resource_manager)
    + [resource\_manager\_config](#resource_manager_config)
    + [resource\_manager\_data\_buffer](#resource_manager_data_buffer)
    + [resource\_manager\_data\_buffer\_node](#resource_manager_data_buffer_node)
    + [resource\_manager\_data\_source](#resource_manager_data_source)
    + [resource\_manager\_data\_source\_config](#resource_manager_data_source_config)
    + [resource\_manager\_data\_source\_flag](#resource_manager_data_source_flag)
    + [resource\_manager\_data\_source\_flags](#resource_manager_data_source_flags)
    + [resource\_manager\_data\_stream](#resource_manager_data_stream)
    + [resource\_manager\_data\_supply](#resource_manager_data_supply)
    + [resource\_manager\_data\_supply\_type](#resource_manager_data_supply_type)
    + [resource\_manager\_flag](#resource_manager_flag)
    + [resource\_manager\_flags](#resource_manager_flags)
    + [resource\_manager\_job](#resource_manager_job)
    + [resource\_manager\_job\_queue](#resource_manager_job_queue)
    + [resource\_manager\_job\_queue\_config](#resource_manager_job_queue_config)
    + [resource\_manager\_pipeline\_notifications](#resource_manager_pipeline_notifications)
    + [resource\_manager\_pipeline\_stage\_notification](#resource_manager_pipeline_stage_notification)
    + [result](#result)
    + [seek\_origin](#seek_origin)
    + [semaphore](#semaphore)
    + [share\_mode](#share_mode)
    + [slot\_allocator](#slot_allocator)
    + [slot\_allocator\_config](#slot_allocator_config)
    + [slot\_allocator\_group](#slot_allocator_group)
    + [sound](#sound)
    + [sound\_config](#sound_config)
    + [sound\_end\_proc](#sound_end_proc)
    + [sound\_flag](#sound_flag)
    + [sound\_flags](#sound_flags)
    + [sound\_group](#sound_group)
    + [sound\_group\_config](#sound_group_config)
    + [sound\_inlined](#sound_inlined)
    + [spatializer](#spatializer)
    + [spatializer\_config](#spatializer_config)
    + [spatializer\_listener](#spatializer_listener)
    + [spatializer\_listener\_config](#spatializer_listener_config)
    + [spinlock](#spinlock)
    + [splitter\_node](#splitter_node)
    + [splitter\_node\_config](#splitter_node_config)
    + [stack](#stack)
    + [standard\_channel\_map](#standard_channel_map)
    + [standard\_sample\_rate](#standard_sample_rate)
    + [stop\_proc](#stop_proc)
    + [stream\_format](#stream_format)
    + [stream\_layout](#stream_layout)
    + [thread](#thread)
    + [thread\_priority](#thread_priority)
    + [timer](#timer)
    + [vec3f](#vec3f)
    + [vfs](#vfs)
    + [vfs\_callbacks](#vfs_callbacks)
    + [vfs\_file](#vfs_file)
    + [wasapi\_usage](#wasapi_usage)
    + [waveform](#waveform)
    + [waveform\_config](#waveform_config)
    + [waveform\_type](#waveform_type)
  * [Constants](#pkg-Constants)
    + [BACKEND\_COUNT](#BACKEND_COUNT)
    + [BINDINGS\_VERSION](#BINDINGS_VERSION)
    + [BINDINGS\_VERSION\_MAJOR](#BINDINGS_VERSION_MAJOR)
    + [BINDINGS\_VERSION\_MINOR](#BINDINGS_VERSION_MINOR)
    + [BINDINGS\_VERSION\_REVISION](#BINDINGS_VERSION_REVISION)
    + [BINDINGS\_VERSION\_STRING](#BINDINGS_VERSION_STRING)
    + [CHANNEL\_INDEX\_NULL](#CHANNEL_INDEX_NULL)
    + [ENGINE\_MAX\_LISTENERS](#ENGINE_MAX_LISTENERS)
    + [JOB\_TYPE\_RESOURCE\_MANAGER\_QUEUE\_FLAG\_NON\_BLOCKING](#JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING)
    + [LISTENER\_INDEX\_CLOSEST](#LISTENER_INDEX_CLOSEST)
    + [MAX\_CHANNELS](#MAX_CHANNELS)
    + [MAX\_DEVICE\_NAME\_LENGTH](#MAX_DEVICE_NAME_LENGTH)
    + [MAX\_FILTER\_ORDER](#MAX_FILTER_ORDER)
    + [MAX\_LOG\_CALLBACKS](#MAX_LOG_CALLBACKS)
    + [MAX\_NODE\_BUS\_COUNT](#MAX_NODE_BUS_COUNT)
    + [MAX\_NODE\_LOCAL\_BUS\_COUNT](#MAX_NODE_LOCAL_BUS_COUNT)
    + [MINIAUDIO\_SHARED](#MINIAUDIO_SHARED)
    + [MIN\_CHANNELS](#MIN_CHANNELS)
    + [NODE\_BUS\_COUNT\_UNKNOWN](#NODE_BUS_COUNT_UNKNOWN)
    + [NO\_THREADING](#NO_THREADING)
    + [RESOURCE\_MANAGER\_MAX\_JOB\_THREAD\_COUNT](#RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT)
    + [SIMD\_ALIGNMENT](#SIMD_ALIGNMENT)
    + [SOUND\_SOURCE\_CHANNEL\_COUNT](#SOUND_SOURCE_CHANNEL_COUNT)
    + [SUPPORT\_AAUDIO](#SUPPORT_AAUDIO)
    + [SUPPORT\_ALSA](#SUPPORT_ALSA)
    + [SUPPORT\_AUDIO4](#SUPPORT_AUDIO4)
    + [SUPPORT\_COREAUDIO](#SUPPORT_COREAUDIO)
    + [SUPPORT\_CUSTOM](#SUPPORT_CUSTOM)
    + [SUPPORT\_DSOUND](#SUPPORT_DSOUND)
    + [SUPPORT\_JACK](#SUPPORT_JACK)
    + [SUPPORT\_NULL](#SUPPORT_NULL)
    + [SUPPORT\_OPENSL](#SUPPORT_OPENSL)
    + [SUPPORT\_OSS](#SUPPORT_OSS)
    + [SUPPORT\_PULSEAUDIO](#SUPPORT_PULSEAUDIO)
    + [SUPPORT\_SNDIO](#SUPPORT_SNDIO)
    + [SUPPORT\_WASAPI](#SUPPORT_WASAPI)
    + [SUPPORT\_WEBAUDIO](#SUPPORT_WEBAUDIO)
    + [SUPPORT\_WINMM](#SUPPORT_WINMM)
    + [USE\_EXPERIMENTAL\_LOCK\_FREE\_JOB\_QUEUE](#USE_EXPERIMENTAL_LOCK_FREE_JOB_QUEUE)
  * [Procedures](#pkg-Procedures)
    + [aligned\_free](#aligned_free)
    + [aligned\_malloc](#aligned_malloc)
    + [apply\_volume\_factor\_f32](#apply_volume_factor_f32)
    + [apply\_volume\_factor\_pcm\_frames](#apply_volume_factor_pcm_frames)
    + [apply\_volume\_factor\_pcm\_frames\_f32](#apply_volume_factor_pcm_frames_f32)
    + [apply\_volume\_factor\_pcm\_frames\_s16](#apply_volume_factor_pcm_frames_s16)
    + [apply\_volume\_factor\_pcm\_frames\_s24](#apply_volume_factor_pcm_frames_s24)
    + [apply\_volume\_factor\_pcm\_frames\_s32](#apply_volume_factor_pcm_frames_s32)
    + [apply\_volume\_factor\_pcm\_frames\_u8](#apply_volume_factor_pcm_frames_u8)
    + [apply\_volume\_factor\_s16](#apply_volume_factor_s16)
    + [apply\_volume\_factor\_s24](#apply_volume_factor_s24)
    + [apply\_volume\_factor\_s32](#apply_volume_factor_s32)
    + [apply\_volume\_factor\_u8](#apply_volume_factor_u8)
    + [async\_notification\_event\_init](#async_notification_event_init)
    + [async\_notification\_event\_signal](#async_notification_event_signal)
    + [async\_notification\_event\_uninit](#async_notification_event_uninit)
    + [async\_notification\_event\_wait](#async_notification_event_wait)
    + [async\_notification\_poll\_init](#async_notification_poll_init)
    + [async\_notification\_poll\_is\_signalled](#async_notification_poll_is_signalled)
    + [async\_notification\_signal](#async_notification_signal)
    + [audio\_buffer\_alloc\_and\_init](#audio_buffer_alloc_and_init)
    + [audio\_buffer\_at\_end](#audio_buffer_at_end)
    + [audio\_buffer\_config\_init](#audio_buffer_config_init)
    + [audio\_buffer\_get\_available\_frames](#audio_buffer_get_available_frames)
    + [audio\_buffer\_get\_cursor\_in\_pcm\_frames](#audio_buffer_get_cursor_in_pcm_frames)
    + [audio\_buffer\_get\_length\_in\_pcm\_frames](#audio_buffer_get_length_in_pcm_frames)
    + [audio\_buffer\_init](#audio_buffer_init)
    + [audio\_buffer\_init\_copy](#audio_buffer_init_copy)
    + [audio\_buffer\_map](#audio_buffer_map)
    + [audio\_buffer\_read\_pcm\_frames](#audio_buffer_read_pcm_frames)
    + [audio\_buffer\_ref\_at\_end](#audio_buffer_ref_at_end)
    + [audio\_buffer\_ref\_get\_available\_frames](#audio_buffer_ref_get_available_frames)
    + [audio\_buffer\_ref\_get\_cursor\_in\_pcm\_frames](#audio_buffer_ref_get_cursor_in_pcm_frames)
    + [audio\_buffer\_ref\_get\_length\_in\_pcm\_frames](#audio_buffer_ref_get_length_in_pcm_frames)
    + [audio\_buffer\_ref\_init](#audio_buffer_ref_init)
    + [audio\_buffer\_ref\_map](#audio_buffer_ref_map)
    + [audio\_buffer\_ref\_read\_pcm\_frames](#audio_buffer_ref_read_pcm_frames)
    + [audio\_buffer\_ref\_seek\_to\_pcm\_frame](#audio_buffer_ref_seek_to_pcm_frame)
    + [audio\_buffer\_ref\_set\_data](#audio_buffer_ref_set_data)
    + [audio\_buffer\_ref\_uninit](#audio_buffer_ref_uninit)
    + [audio\_buffer\_ref\_unmap](#audio_buffer_ref_unmap)
    + [audio\_buffer\_seek\_to\_pcm\_frame](#audio_buffer_seek_to_pcm_frame)
    + [audio\_buffer\_uninit](#audio_buffer_uninit)
    + [audio\_buffer\_uninit\_and\_free](#audio_buffer_uninit_and_free)
    + [audio\_buffer\_unmap](#audio_buffer_unmap)
    + [biquad\_clear\_cache](#biquad_clear_cache)
    + [biquad\_config\_init](#biquad_config_init)
    + [biquad\_get\_heap\_size](#biquad_get_heap_size)
    + [biquad\_get\_latency](#biquad_get_latency)
    + [biquad\_init](#biquad_init)
    + [biquad\_init\_preallocated](#biquad_init_preallocated)
    + [biquad\_node\_config\_init](#biquad_node_config_init)
    + [biquad\_node\_init](#biquad_node_init)
    + [biquad\_node\_reinit](#biquad_node_reinit)
    + [biquad\_node\_uninit](#biquad_node_uninit)
    + [biquad\_process\_pcm\_frames](#biquad_process_pcm_frames)
    + [biquad\_reinit](#biquad_reinit)
    + [biquad\_uninit](#biquad_uninit)
    + [blend\_f32](#blend_f32)
    + [bpf2\_config\_init](#bpf2_config_init)
    + [bpf2\_get\_heap\_size](#bpf2_get_heap_size)
    + [bpf2\_get\_latency](#bpf2_get_latency)
    + [bpf2\_init](#bpf2_init)
    + [bpf2\_init\_preallocated](#bpf2_init_preallocated)
    + [bpf2\_process\_pcm\_frames](#bpf2_process_pcm_frames)
    + [bpf2\_reinit](#bpf2_reinit)
    + [bpf2\_uninit](#bpf2_uninit)
    + [bpf\_config\_init](#bpf_config_init)
    + [bpf\_get\_heap\_size](#bpf_get_heap_size)
    + [bpf\_get\_latency](#bpf_get_latency)
    + [bpf\_init](#bpf_init)
    + [bpf\_init\_preallocated](#bpf_init_preallocated)
    + [bpf\_node\_config\_init](#bpf_node_config_init)
    + [bpf\_node\_init](#bpf_node_init)
    + [bpf\_node\_reinit](#bpf_node_reinit)
    + [bpf\_node\_uninit](#bpf_node_uninit)
    + [bpf\_process\_pcm\_frames](#bpf_process_pcm_frames)
    + [bpf\_reinit](#bpf_reinit)
    + [bpf\_uninit](#bpf_uninit)
    + [calculate\_buffer\_size\_in\_frames\_from\_descriptor](#calculate_buffer_size_in_frames_from_descriptor)
    + [calculate\_buffer\_size\_in\_frames\_from\_milliseconds](#calculate_buffer_size_in_frames_from_milliseconds)
    + [calculate\_buffer\_size\_in\_milliseconds\_from\_frames](#calculate_buffer_size_in_milliseconds_from_frames)
    + [calloc](#calloc)
    + [channel\_converter\_config\_init](#channel_converter_config_init)
    + [channel\_converter\_get\_heap\_size](#channel_converter_get_heap_size)
    + [channel\_converter\_get\_input\_channel\_map](#channel_converter_get_input_channel_map)
    + [channel\_converter\_get\_output\_channel\_map](#channel_converter_get_output_channel_map)
    + [channel\_converter\_init](#channel_converter_init)
    + [channel\_converter\_init\_preallocated](#channel_converter_init_preallocated)
    + [channel\_converter\_process\_pcm\_frames](#channel_converter_process_pcm_frames)
    + [channel\_converter\_uninit](#channel_converter_uninit)
    + [channel\_map\_contains\_channel\_position](#channel_map_contains_channel_position)
    + [channel\_map\_copy](#channel_map_copy)
    + [channel\_map\_copy\_or\_default](#channel_map_copy_or_default)
    + [channel\_map\_find\_channel\_position](#channel_map_find_channel_position)
    + [channel\_map\_get\_channel](#channel_map_get_channel)
    + [channel\_map\_init\_blank](#channel_map_init_blank)
    + [channel\_map\_init\_standard](#channel_map_init_standard)
    + [channel\_map\_is\_blank](#channel_map_is_blank)
    + [channel\_map\_is\_equal](#channel_map_is_equal)
    + [channel\_map\_is\_valid](#channel_map_is_valid)
    + [channel\_map\_to\_string](#channel_map_to_string)
    + [channel\_position\_to\_string](#channel_position_to_string)
    + [clip\_pcm\_frames](#clip_pcm_frames)
    + [clip\_samples\_f32](#clip_samples_f32)
    + [clip\_samples\_s16](#clip_samples_s16)
    + [clip\_samples\_s24](#clip_samples_s24)
    + [clip\_samples\_s32](#clip_samples_s32)
    + [clip\_samples\_u8](#clip_samples_u8)
    + [context\_config\_init](#context_config_init)
    + [context\_enumerate\_devices](#context_enumerate_devices)
    + [context\_get\_device\_info](#context_get_device_info)
    + [context\_get\_devices](#context_get_devices)
    + [context\_get\_log](#context_get_log)
    + [context\_init](#context_init)
    + [context\_is\_loopback\_supported](#context_is_loopback_supported)
    + [context\_sizeof](#context_sizeof)
    + [context\_uninit](#context_uninit)
    + [convert\_frames](#convert_frames)
    + [convert\_frames\_ex](#convert_frames_ex)
    + [convert\_pcm\_frames\_format](#convert_pcm_frames_format)
    + [copy\_and\_apply\_volume\_factor\_f32](#copy_and_apply_volume_factor_f32)
    + [copy\_and\_apply\_volume\_factor\_pcm\_frames](#copy_and_apply_volume_factor_pcm_frames)
    + [copy\_and\_apply\_volume\_factor\_pcm\_frames\_f32](#copy_and_apply_volume_factor_pcm_frames_f32)
    + [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s16](#copy_and_apply_volume_factor_pcm_frames_s16)
    + [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s24](#copy_and_apply_volume_factor_pcm_frames_s24)
    + [copy\_and\_apply\_volume\_factor\_pcm\_frames\_s32](#copy_and_apply_volume_factor_pcm_frames_s32)
    + [copy\_and\_apply\_volume\_factor\_pcm\_frames\_u8](#copy_and_apply_volume_factor_pcm_frames_u8)
    + [copy\_and\_apply\_volume\_factor\_per\_channel\_f32](#copy_and_apply_volume_factor_per_channel_f32)
    + [copy\_and\_apply\_volume\_factor\_s16](#copy_and_apply_volume_factor_s16)
    + [copy\_and\_apply\_volume\_factor\_s24](#copy_and_apply_volume_factor_s24)
    + [copy\_and\_apply\_volume\_factor\_s32](#copy_and_apply_volume_factor_s32)
    + [copy\_and\_apply\_volume\_factor\_u8](#copy_and_apply_volume_factor_u8)
    + [copy\_pcm\_frames](#copy_pcm_frames)
    + [data\_converter\_config\_init](#data_converter_config_init)
    + [data\_converter\_config\_init\_default](#data_converter_config_init_default)
    + [data\_converter\_get\_expected\_output\_frame\_count](#data_converter_get_expected_output_frame_count)
    + [data\_converter\_get\_heap\_size](#data_converter_get_heap_size)
    + [data\_converter\_get\_input\_channel\_map](#data_converter_get_input_channel_map)
    + [data\_converter\_get\_input\_latency](#data_converter_get_input_latency)
    + [data\_converter\_get\_output\_channel\_map](#data_converter_get_output_channel_map)
    + [data\_converter\_get\_output\_latency](#data_converter_get_output_latency)
    + [data\_converter\_get\_required\_input\_frame\_count](#data_converter_get_required_input_frame_count)
    + [data\_converter\_init](#data_converter_init)
    + [data\_converter\_init\_preallocated](#data_converter_init_preallocated)
    + [data\_converter\_process\_pcm\_frames](#data_converter_process_pcm_frames)
    + [data\_converter\_reset](#data_converter_reset)
    + [data\_converter\_set\_rate](#data_converter_set_rate)
    + [data\_converter\_set\_rate\_ratio](#data_converter_set_rate_ratio)
    + [data\_converter\_uninit](#data_converter_uninit)
    + [data\_source\_config\_init](#data_source_config_init)
    + [data\_source\_get\_current](#data_source_get_current)
    + [data\_source\_get\_cursor\_in\_pcm\_frames](#data_source_get_cursor_in_pcm_frames)
    + [data\_source\_get\_cursor\_in\_seconds](#data_source_get_cursor_in_seconds)
    + [data\_source\_get\_data\_format](#data_source_get_data_format)
    + [data\_source\_get\_length\_in\_pcm\_frames](#data_source_get_length_in_pcm_frames)
    + [data\_source\_get\_length\_in\_seconds](#data_source_get_length_in_seconds)
    + [data\_source\_get\_loop\_point\_in\_pcm\_frames](#data_source_get_loop_point_in_pcm_frames)
    + [data\_source\_get\_next](#data_source_get_next)
    + [data\_source\_get\_next\_callback](#data_source_get_next_callback)
    + [data\_source\_get\_range\_in\_pcm\_frames](#data_source_get_range_in_pcm_frames)
    + [data\_source\_init](#data_source_init)
    + [data\_source\_is\_looping](#data_source_is_looping)
    + [data\_source\_node\_config\_init](#data_source_node_config_init)
    + [data\_source\_node\_init](#data_source_node_init)
    + [data\_source\_node\_is\_looping](#data_source_node_is_looping)
    + [data\_source\_node\_set\_looping](#data_source_node_set_looping)
    + [data\_source\_node\_uninit](#data_source_node_uninit)
    + [data\_source\_read\_pcm\_frames](#data_source_read_pcm_frames)
    + [data\_source\_seek\_pcm\_frames](#data_source_seek_pcm_frames)
    + [data\_source\_seek\_seconds](#data_source_seek_seconds)
    + [data\_source\_seek\_to\_pcm\_frame](#data_source_seek_to_pcm_frame)
    + [data\_source\_seek\_to\_seconds](#data_source_seek_to_seconds)
    + [data\_source\_set\_current](#data_source_set_current)
    + [data\_source\_set\_loop\_point\_in\_pcm\_frames](#data_source_set_loop_point_in_pcm_frames)
    + [data\_source\_set\_looping](#data_source_set_looping)
    + [data\_source\_set\_next](#data_source_set_next)
    + [data\_source\_set\_next\_callback](#data_source_set_next_callback)
    + [data\_source\_set\_range\_in\_pcm\_frames](#data_source_set_range_in_pcm_frames)
    + [data\_source\_uninit](#data_source_uninit)
    + [decode\_file](#decode_file)
    + [decode\_from\_vfs](#decode_from_vfs)
    + [decode\_memory](#decode_memory)
    + [decoder\_config\_init](#decoder_config_init)
    + [decoder\_config\_init\_default](#decoder_config_init_default)
    + [decoder\_get\_available\_frames](#decoder_get_available_frames)
    + [decoder\_get\_cursor\_in\_pcm\_frames](#decoder_get_cursor_in_pcm_frames)
    + [decoder\_get\_data\_format](#decoder_get_data_format)
    + [decoder\_get\_length\_in\_pcm\_frames](#decoder_get_length_in_pcm_frames)
    + [decoder\_init](#decoder_init)
    + [decoder\_init\_file](#decoder_init_file)
    + [decoder\_init\_file\_w](#decoder_init_file_w)
    + [decoder\_init\_memory](#decoder_init_memory)
    + [decoder\_init\_vfs](#decoder_init_vfs)
    + [decoder\_init\_vfs\_w](#decoder_init_vfs_w)
    + [decoder\_read\_pcm\_frames](#decoder_read_pcm_frames)
    + [decoder\_seek\_to\_pcm\_frame](#decoder_seek_to_pcm_frame)
    + [decoder\_uninit](#decoder_uninit)
    + [decoding\_backend\_config\_init](#decoding_backend_config_init)
    + [default\_vfs\_init](#default_vfs_init)
    + [deinterleave\_pcm\_frames](#deinterleave_pcm_frames)
    + [delay\_config\_init](#delay_config_init)
    + [delay\_get\_decay](#delay_get_decay)
    + [delay\_get\_dry](#delay_get_dry)
    + [delay\_get\_wet](#delay_get_wet)
    + [delay\_init](#delay_init)
    + [delay\_node\_config\_init](#delay_node_config_init)
    + [delay\_node\_get\_decay](#delay_node_get_decay)
    + [delay\_node\_get\_dry](#delay_node_get_dry)
    + [delay\_node\_get\_wet](#delay_node_get_wet)
    + [delay\_node\_init](#delay_node_init)
    + [delay\_node\_set\_decay](#delay_node_set_decay)
    + [delay\_node\_set\_dry](#delay_node_set_dry)
    + [delay\_node\_set\_wet](#delay_node_set_wet)
    + [delay\_node\_uninit](#delay_node_uninit)
    + [delay\_process\_pcm\_frames](#delay_process_pcm_frames)
    + [delay\_set\_decay](#delay_set_decay)
    + [delay\_set\_dry](#delay_set_dry)
    + [delay\_set\_wet](#delay_set_wet)
    + [delay\_uninit](#delay_uninit)
    + [device\_config\_init](#device_config_init)
    + [device\_get\_context](#device_get_context)
    + [device\_get\_info](#device_get_info)
    + [device\_get\_log](#device_get_log)
    + [device\_get\_master\_volume](#device_get_master_volume)
    + [device\_get\_master\_volume\_db](#device_get_master_volume_db)
    + [device\_get\_name](#device_get_name)
    + [device\_get\_state](#device_get_state)
    + [device\_handle\_backend\_data\_callback](#device_handle_backend_data_callback)
    + [device\_id\_equal](#device_id_equal)
    + [device\_init](#device_init)
    + [device\_init\_ex](#device_init_ex)
    + [device\_is\_started](#device_is_started)
    + [device\_job\_thread\_config\_init](#device_job_thread_config_init)
    + [device\_job\_thread\_init](#device_job_thread_init)
    + [device\_job\_thread\_next](#device_job_thread_next)
    + [device\_job\_thread\_post](#device_job_thread_post)
    + [device\_job\_thread\_uninit](#device_job_thread_uninit)
    + [device\_post\_init](#device_post_init)
    + [device\_set\_master\_volume](#device_set_master_volume)
    + [device\_set\_master\_volume\_db](#device_set_master_volume_db)
    + [device\_start](#device_start)
    + [device\_stop](#device_stop)
    + [device\_uninit](#device_uninit)
    + [duplex\_rb\_init](#duplex_rb_init)
    + [duplex\_rb\_uninit](#duplex_rb_uninit)
    + [encoder\_config\_init](#encoder_config_init)
    + [encoder\_init](#encoder_init)
    + [encoder\_init\_file](#encoder_init_file)
    + [encoder\_init\_file\_w](#encoder_init_file_w)
    + [encoder\_init\_vfs](#encoder_init_vfs)
    + [encoder\_init\_vfs\_w](#encoder_init_vfs_w)
    + [encoder\_uninit](#encoder_uninit)
    + [encoder\_write\_pcm\_frames](#encoder_write_pcm_frames)
    + [engine\_config\_init](#engine_config_init)
    + [engine\_find\_closest\_listener](#engine_find_closest_listener)
    + [engine\_get\_channels](#engine_get_channels)
    + [engine\_get\_device](#engine_get_device)
    + [engine\_get\_endpoint](#engine_get_endpoint)
    + [engine\_get\_gain\_db](#engine_get_gain_db)
    + [engine\_get\_listener\_count](#engine_get_listener_count)
    + [engine\_get\_log](#engine_get_log)
    + [engine\_get\_node\_graph](#engine_get_node_graph)
    + [engine\_get\_resource\_manager](#engine_get_resource_manager)
    + [engine\_get\_sample\_rate](#engine_get_sample_rate)
    + [engine\_get\_time](#engine_get_time)
    + [engine\_get\_time\_in\_milliseconds](#engine_get_time_in_milliseconds)
    + [engine\_get\_time\_in\_pcm\_frames](#engine_get_time_in_pcm_frames)
    + [engine\_get\_volume](#engine_get_volume)
    + [engine\_init](#engine_init)
    + [engine\_listener\_get\_cone](#engine_listener_get_cone)
    + [engine\_listener\_get\_direction](#engine_listener_get_direction)
    + [engine\_listener\_get\_position](#engine_listener_get_position)
    + [engine\_listener\_get\_velocity](#engine_listener_get_velocity)
    + [engine\_listener\_get\_world\_up](#engine_listener_get_world_up)
    + [engine\_listener\_is\_enabled](#engine_listener_is_enabled)
    + [engine\_listener\_set\_cone](#engine_listener_set_cone)
    + [engine\_listener\_set\_direction](#engine_listener_set_direction)
    + [engine\_listener\_set\_enabled](#engine_listener_set_enabled)
    + [engine\_listener\_set\_position](#engine_listener_set_position)
    + [engine\_listener\_set\_velocity](#engine_listener_set_velocity)
    + [engine\_listener\_set\_world\_up](#engine_listener_set_world_up)
    + [engine\_node\_config\_init](#engine_node_config_init)
    + [engine\_node\_get\_heap\_size](#engine_node_get_heap_size)
    + [engine\_node\_init](#engine_node_init)
    + [engine\_node\_init\_preallocated](#engine_node_init_preallocated)
    + [engine\_node\_uninit](#engine_node_uninit)
    + [engine\_play\_sound](#engine_play_sound)
    + [engine\_play\_sound\_ex](#engine_play_sound_ex)
    + [engine\_read\_pcm\_frames](#engine_read_pcm_frames)
    + [engine\_set\_gain\_db](#engine_set_gain_db)
    + [engine\_set\_time](#engine_set_time)
    + [engine\_set\_time\_in\_milliseconds](#engine_set_time_in_milliseconds)
    + [engine\_set\_time\_in\_pcm\_frames](#engine_set_time_in_pcm_frames)
    + [engine\_set\_volume](#engine_set_volume)
    + [engine\_start](#engine_start)
    + [engine\_stop](#engine_stop)
    + [engine\_uninit](#engine_uninit)
    + [event\_init](#event_init)
    + [event\_signal](#event_signal)
    + [event\_uninit](#event_uninit)
    + [event\_wait](#event_wait)
    + [fader\_config\_init](#fader_config_init)
    + [fader\_get\_current\_volume](#fader_get_current_volume)
    + [fader\_get\_data\_format](#fader_get_data_format)
    + [fader\_init](#fader_init)
    + [fader\_process\_pcm\_frames](#fader_process_pcm_frames)
    + [fader\_set\_fade](#fader_set_fade)
    + [fader\_set\_fade\_ex](#fader_set_fade_ex)
    + [fence\_acquire](#fence_acquire)
    + [fence\_init](#fence_init)
    + [fence\_release](#fence_release)
    + [fence\_uninit](#fence_uninit)
    + [fence\_wait](#fence_wait)
    + [free](#free)
    + [gainer\_config\_init](#gainer_config_init)
    + [gainer\_get\_heap\_size](#gainer_get_heap_size)
    + [gainer\_get\_master\_volume](#gainer_get_master_volume)
    + [gainer\_init](#gainer_init)
    + [gainer\_init\_preallocated](#gainer_init_preallocated)
    + [gainer\_process\_pcm\_frames](#gainer_process_pcm_frames)
    + [gainer\_set\_gain](#gainer_set_gain)
    + [gainer\_set\_gains](#gainer_set_gains)
    + [gainer\_set\_master\_volume](#gainer_set_master_volume)
    + [gainer\_uninit](#gainer_uninit)
    + [get\_backend\_from\_name](#get_backend_from_name)
    + [get\_backend\_name](#get_backend_name)
    + [get\_bytes\_per\_frame](#get_bytes_per_frame)
    + [get\_bytes\_per\_sample](#get_bytes_per_sample)
    + [get\_enabled\_backends](#get_enabled_backends)
    + [get\_format\_name](#get_format_name)
    + [hishelf2\_config\_init](#hishelf2_config_init)
    + [hishelf2\_get\_heap\_size](#hishelf2_get_heap_size)
    + [hishelf2\_get\_latency](#hishelf2_get_latency)
    + [hishelf2\_init](#hishelf2_init)
    + [hishelf2\_init\_preallocated](#hishelf2_init_preallocated)
    + [hishelf2\_process\_pcm\_frames](#hishelf2_process_pcm_frames)
    + [hishelf2\_reinit](#hishelf2_reinit)
    + [hishelf2\_uninit](#hishelf2_uninit)
    + [hishelf\_node\_config\_init](#hishelf_node_config_init)
    + [hishelf\_node\_init](#hishelf_node_init)
    + [hishelf\_node\_reinit](#hishelf_node_reinit)
    + [hishelf\_node\_uninit](#hishelf_node_uninit)
    + [hpf1\_config\_init](#hpf1_config_init)
    + [hpf1\_get\_heap\_size](#hpf1_get_heap_size)
    + [hpf1\_get\_latency](#hpf1_get_latency)
    + [hpf1\_init](#hpf1_init)
    + [hpf1\_init\_preallocated](#hpf1_init_preallocated)
    + [hpf1\_process\_pcm\_frames](#hpf1_process_pcm_frames)
    + [hpf1\_reinit](#hpf1_reinit)
    + [hpf1\_uninit](#hpf1_uninit)
    + [hpf2\_config\_init](#hpf2_config_init)
    + [hpf2\_get\_heap\_size](#hpf2_get_heap_size)
    + [hpf2\_get\_latency](#hpf2_get_latency)
    + [hpf2\_init](#hpf2_init)
    + [hpf2\_init\_preallocated](#hpf2_init_preallocated)
    + [hpf2\_process\_pcm\_frames](#hpf2_process_pcm_frames)
    + [hpf2\_reinit](#hpf2_reinit)
    + [hpf2\_uninit](#hpf2_uninit)
    + [hpf\_config\_init](#hpf_config_init)
    + [hpf\_get\_heap\_size](#hpf_get_heap_size)
    + [hpf\_get\_latency](#hpf_get_latency)
    + [hpf\_init](#hpf_init)
    + [hpf\_init\_preallocated](#hpf_init_preallocated)
    + [hpf\_node\_config\_init](#hpf_node_config_init)
    + [hpf\_node\_init](#hpf_node_init)
    + [hpf\_node\_reinit](#hpf_node_reinit)
    + [hpf\_node\_uninit](#hpf_node_uninit)
    + [hpf\_process\_pcm\_frames](#hpf_process_pcm_frames)
    + [hpf\_reinit](#hpf_reinit)
    + [hpf\_uninit](#hpf_uninit)
    + [interleave\_pcm\_frames](#interleave_pcm_frames)
    + [is\_backend\_enabled](#is_backend_enabled)
    + [is\_loopback\_supported](#is_loopback_supported)
    + [job\_init](#job_init)
    + [job\_process](#job_process)
    + [job\_queue\_config\_init](#job_queue_config_init)
    + [job\_queue\_get\_heap\_size](#job_queue_get_heap_size)
    + [job\_queue\_init](#job_queue_init)
    + [job\_queue\_init\_preallocated](#job_queue_init_preallocated)
    + [job\_queue\_next](#job_queue_next)
    + [job\_queue\_post](#job_queue_post)
    + [job\_queue\_uninit](#job_queue_uninit)
    + [linear\_resampler\_config\_init](#linear_resampler_config_init)
    + [linear\_resampler\_get\_expected\_output\_frame\_count](#linear_resampler_get_expected_output_frame_count)
    + [linear\_resampler\_get\_heap\_size](#linear_resampler_get_heap_size)
    + [linear\_resampler\_get\_input\_latency](#linear_resampler_get_input_latency)
    + [linear\_resampler\_get\_output\_latency](#linear_resampler_get_output_latency)
    + [linear\_resampler\_get\_required\_input\_frame\_count](#linear_resampler_get_required_input_frame_count)
    + [linear\_resampler\_init](#linear_resampler_init)
    + [linear\_resampler\_init\_preallocated](#linear_resampler_init_preallocated)
    + [linear\_resampler\_process\_pcm\_frames](#linear_resampler_process_pcm_frames)
    + [linear\_resampler\_reset](#linear_resampler_reset)
    + [linear\_resampler\_set\_rate](#linear_resampler_set_rate)
    + [linear\_resampler\_set\_rate\_ratio](#linear_resampler_set_rate_ratio)
    + [linear\_resampler\_uninit](#linear_resampler_uninit)
    + [log\_callback\_init](#log_callback_init)
    + [log\_init](#log_init)
    + [log\_level\_to\_string](#log_level_to_string)
    + [log\_post](#log_post)
    + [log\_postf](#log_postf)
    + [log\_postv](#log_postv)
    + [log\_register\_callback](#log_register_callback)
    + [log\_uninit](#log_uninit)
    + [log\_unregister\_callback](#log_unregister_callback)
    + [loshelf2\_config\_init](#loshelf2_config_init)
    + [loshelf2\_get\_heap\_size](#loshelf2_get_heap_size)
    + [loshelf2\_get\_latency](#loshelf2_get_latency)
    + [loshelf2\_init](#loshelf2_init)
    + [loshelf2\_init\_preallocated](#loshelf2_init_preallocated)
    + [loshelf2\_process\_pcm\_frames](#loshelf2_process_pcm_frames)
    + [loshelf2\_reinit](#loshelf2_reinit)
    + [loshelf2\_uninit](#loshelf2_uninit)
    + [loshelf\_node\_config\_init](#loshelf_node_config_init)
    + [loshelf\_node\_init](#loshelf_node_init)
    + [loshelf\_node\_reinit](#loshelf_node_reinit)
    + [loshelf\_node\_uninit](#loshelf_node_uninit)
    + [lpf1\_clear\_cache](#lpf1_clear_cache)
    + [lpf1\_config\_init](#lpf1_config_init)
    + [lpf1\_get\_heap\_size](#lpf1_get_heap_size)
    + [lpf1\_get\_latency](#lpf1_get_latency)
    + [lpf1\_init](#lpf1_init)
    + [lpf1\_init\_preallocated](#lpf1_init_preallocated)
    + [lpf1\_process\_pcm\_frames](#lpf1_process_pcm_frames)
    + [lpf1\_reinit](#lpf1_reinit)
    + [lpf1\_uninit](#lpf1_uninit)
    + [lpf2\_clear\_cache](#lpf2_clear_cache)
    + [lpf2\_config\_init](#lpf2_config_init)
    + [lpf2\_get\_heap\_size](#lpf2_get_heap_size)
    + [lpf2\_get\_latency](#lpf2_get_latency)
    + [lpf2\_init](#lpf2_init)
    + [lpf2\_init\_preallocated](#lpf2_init_preallocated)
    + [lpf2\_process\_pcm\_frames](#lpf2_process_pcm_frames)
    + [lpf2\_reinit](#lpf2_reinit)
    + [lpf2\_uninit](#lpf2_uninit)
    + [lpf\_clear\_cache](#lpf_clear_cache)
    + [lpf\_config\_init](#lpf_config_init)
    + [lpf\_get\_heap\_size](#lpf_get_heap_size)
    + [lpf\_get\_latency](#lpf_get_latency)
    + [lpf\_init](#lpf_init)
    + [lpf\_init\_preallocated](#lpf_init_preallocated)
    + [lpf\_node\_config\_init](#lpf_node_config_init)
    + [lpf\_node\_init](#lpf_node_init)
    + [lpf\_node\_reinit](#lpf_node_reinit)
    + [lpf\_node\_uninit](#lpf_node_uninit)
    + [lpf\_process\_pcm\_frames](#lpf_process_pcm_frames)
    + [lpf\_reinit](#lpf_reinit)
    + [lpf\_uninit](#lpf_uninit)
    + [ma\_copy\_and\_apply\_volume\_and\_clip\_pcm\_frames](#ma_copy_and_apply_volume_and_clip_pcm_frames)
    + [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_f32](#ma_copy_and_apply_volume_and_clip_samples_f32)
    + [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s16](#ma_copy_and_apply_volume_and_clip_samples_s16)
    + [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s24](#ma_copy_and_apply_volume_and_clip_samples_s24)
    + [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_s32](#ma_copy_and_apply_volume_and_clip_samples_s32)
    + [ma\_copy\_and\_apply\_volume\_and\_clip\_samples\_u8](#ma_copy_and_apply_volume_and_clip_samples_u8)
    + [ma\_mix\_pcm\_frames\_f32](#ma_mix_pcm_frames_f32)
    + [malloc](#malloc)
    + [mutex\_init](#mutex_init)
    + [mutex\_lock](#mutex_lock)
    + [mutex\_uninit](#mutex_uninit)
    + [mutex\_unlock](#mutex_unlock)
    + [node\_attach\_output\_bus](#node_attach_output_bus)
    + [node\_config\_init](#node_config_init)
    + [node\_detach\_all\_output\_buses](#node_detach_all_output_buses)
    + [node\_detach\_output\_bus](#node_detach_output_bus)
    + [node\_get\_heap\_size](#node_get_heap_size)
    + [node\_get\_input\_bus\_count](#node_get_input_bus_count)
    + [node\_get\_input\_channels](#node_get_input_channels)
    + [node\_get\_node\_graph](#node_get_node_graph)
    + [node\_get\_output\_bus\_count](#node_get_output_bus_count)
    + [node\_get\_output\_bus\_volume](#node_get_output_bus_volume)
    + [node\_get\_output\_channels](#node_get_output_channels)
    + [node\_get\_state](#node_get_state)
    + [node\_get\_state\_by\_time](#node_get_state_by_time)
    + [node\_get\_state\_by\_time\_range](#node_get_state_by_time_range)
    + [node\_get\_state\_time](#node_get_state_time)
    + [node\_get\_time](#node_get_time)
    + [node\_graph\_config\_init](#node_graph_config_init)
    + [node\_graph\_get\_channels](#node_graph_get_channels)
    + [node\_graph\_get\_endpoint](#node_graph_get_endpoint)
    + [node\_graph\_get\_processing\_size\_in\_frames](#node_graph_get_processing_size_in_frames)
    + [node\_graph\_get\_time](#node_graph_get_time)
    + [node\_graph\_init](#node_graph_init)
    + [node\_graph\_read\_pcm\_frames](#node_graph_read_pcm_frames)
    + [node\_graph\_set\_time](#node_graph_set_time)
    + [node\_graph\_uninit](#node_graph_uninit)
    + [node\_init](#node_init)
    + [node\_init\_preallocated](#node_init_preallocated)
    + [node\_set\_output\_bus\_volume](#node_set_output_bus_volume)
    + [node\_set\_state](#node_set_state)
    + [node\_set\_state\_time](#node_set_state_time)
    + [node\_set\_time](#node_set_time)
    + [node\_uninit](#node_uninit)
    + [noise\_config\_init](#noise_config_init)
    + [noise\_get\_heap\_size](#noise_get_heap_size)
    + [noise\_init](#noise_init)
    + [noise\_init\_preallocated](#noise_init_preallocated)
    + [noise\_read\_pcm\_frames](#noise_read_pcm_frames)
    + [noise\_set\_amplitude](#noise_set_amplitude)
    + [noise\_set\_seed](#noise_set_seed)
    + [noise\_set\_type](#noise_set_type)
    + [noise\_uninit](#noise_uninit)
    + [notch2\_config\_init](#notch2_config_init)
    + [notch2\_get\_heap\_size](#notch2_get_heap_size)
    + [notch2\_get\_latency](#notch2_get_latency)
    + [notch2\_init](#notch2_init)
    + [notch2\_init\_preallocated](#notch2_init_preallocated)
    + [notch2\_process\_pcm\_frames](#notch2_process_pcm_frames)
    + [notch2\_reinit](#notch2_reinit)
    + [notch2\_uninit](#notch2_uninit)
    + [notch\_node\_config\_init](#notch_node_config_init)
    + [notch\_node\_init](#notch_node_init)
    + [notch\_node\_reinit](#notch_node_reinit)
    + [notch\_node\_uninit](#notch_node_uninit)
    + [offset\_pcm\_frames\_const\_ptr](#offset_pcm_frames_const_ptr)
    + [offset\_pcm\_frames\_const\_ptr\_f32](#offset_pcm_frames_const_ptr_f32)
    + [offset\_pcm\_frames\_ptr](#offset_pcm_frames_ptr)
    + [offset\_pcm\_frames\_ptr\_f32](#offset_pcm_frames_ptr_f32)
    + [paged\_audio\_buffer\_config\_init](#paged_audio_buffer_config_init)
    + [paged\_audio\_buffer\_data\_allocate\_and\_append\_page](#paged_audio_buffer_data_allocate_and_append_page)
    + [paged\_audio\_buffer\_data\_allocate\_page](#paged_audio_buffer_data_allocate_page)
    + [paged\_audio\_buffer\_data\_append\_page](#paged_audio_buffer_data_append_page)
    + [paged\_audio\_buffer\_data\_free\_page](#paged_audio_buffer_data_free_page)
    + [paged\_audio\_buffer\_data\_get\_head](#paged_audio_buffer_data_get_head)
    + [paged\_audio\_buffer\_data\_get\_length\_in\_pcm\_frames](#paged_audio_buffer_data_get_length_in_pcm_frames)
    + [paged\_audio\_buffer\_data\_get\_tail](#paged_audio_buffer_data_get_tail)
    + [paged\_audio\_buffer\_data\_init](#paged_audio_buffer_data_init)
    + [paged\_audio\_buffer\_data\_uninit](#paged_audio_buffer_data_uninit)
    + [paged\_audio\_buffer\_get\_cursor\_in\_pcm\_frames](#paged_audio_buffer_get_cursor_in_pcm_frames)
    + [paged\_audio\_buffer\_get\_length\_in\_pcm\_frames](#paged_audio_buffer_get_length_in_pcm_frames)
    + [paged\_audio\_buffer\_init](#paged_audio_buffer_init)
    + [paged\_audio\_buffer\_read\_pcm\_frames](#paged_audio_buffer_read_pcm_frames)
    + [paged\_audio\_buffer\_seek\_to\_pcm\_frame](#paged_audio_buffer_seek_to_pcm_frame)
    + [paged\_audio\_buffer\_uninit](#paged_audio_buffer_uninit)
    + [panner\_config\_init](#panner_config_init)
    + [panner\_get\_mode](#panner_get_mode)
    + [panner\_get\_pan](#panner_get_pan)
    + [panner\_init](#panner_init)
    + [panner\_process\_pcm\_frames](#panner_process_pcm_frames)
    + [panner\_set\_mode](#panner_set_mode)
    + [panner\_set\_pan](#panner_set_pan)
    + [pcm\_convert](#pcm_convert)
    + [pcm\_f32\_to\_s16](#pcm_f32_to_s16)
    + [pcm\_f32\_to\_s24](#pcm_f32_to_s24)
    + [pcm\_f32\_to\_s32](#pcm_f32_to_s32)
    + [pcm\_f32\_to\_u8](#pcm_f32_to_u8)
    + [pcm\_rb\_acquire\_read](#pcm_rb_acquire_read)
    + [pcm\_rb\_acquire\_write](#pcm_rb_acquire_write)
    + [pcm\_rb\_available\_read](#pcm_rb_available_read)
    + [pcm\_rb\_available\_write](#pcm_rb_available_write)
    + [pcm\_rb\_commit\_read](#pcm_rb_commit_read)
    + [pcm\_rb\_commit\_write](#pcm_rb_commit_write)
    + [pcm\_rb\_get\_channels](#pcm_rb_get_channels)
    + [pcm\_rb\_get\_format](#pcm_rb_get_format)
    + [pcm\_rb\_get\_sample\_rate](#pcm_rb_get_sample_rate)
    + [pcm\_rb\_get\_subbuffer\_offset](#pcm_rb_get_subbuffer_offset)
    + [pcm\_rb\_get\_subbuffer\_ptr](#pcm_rb_get_subbuffer_ptr)
    + [pcm\_rb\_get\_subbuffer\_size](#pcm_rb_get_subbuffer_size)
    + [pcm\_rb\_get\_subbuffer\_stride](#pcm_rb_get_subbuffer_stride)
    + [pcm\_rb\_init](#pcm_rb_init)
    + [pcm\_rb\_init\_ex](#pcm_rb_init_ex)
    + [pcm\_rb\_pointer\_distance](#pcm_rb_pointer_distance)
    + [pcm\_rb\_reset](#pcm_rb_reset)
    + [pcm\_rb\_seek\_read](#pcm_rb_seek_read)
    + [pcm\_rb\_seek\_write](#pcm_rb_seek_write)
    + [pcm\_rb\_set\_sample\_rate](#pcm_rb_set_sample_rate)
    + [pcm\_rb\_uninit](#pcm_rb_uninit)
    + [pcm\_s16\_to\_f32](#pcm_s16_to_f32)
    + [pcm\_s16\_to\_s24](#pcm_s16_to_s24)
    + [pcm\_s16\_to\_s32](#pcm_s16_to_s32)
    + [pcm\_s16\_to\_u8](#pcm_s16_to_u8)
    + [pcm\_s24\_to\_f32](#pcm_s24_to_f32)
    + [pcm\_s24\_to\_s16](#pcm_s24_to_s16)
    + [pcm\_s24\_to\_s32](#pcm_s24_to_s32)
    + [pcm\_s24\_to\_u8](#pcm_s24_to_u8)
    + [pcm\_s32\_to\_f32](#pcm_s32_to_f32)
    + [pcm\_s32\_to\_s16](#pcm_s32_to_s16)
    + [pcm\_s32\_to\_s24](#pcm_s32_to_s24)
    + [pcm\_s32\_to\_u8](#pcm_s32_to_u8)
    + [pcm\_u8\_to\_f32](#pcm_u8_to_f32)
    + [pcm\_u8\_to\_s16](#pcm_u8_to_s16)
    + [pcm\_u8\_to\_s24](#pcm_u8_to_s24)
    + [pcm\_u8\_to\_s32](#pcm_u8_to_s32)
    + [peak2\_config\_init](#peak2_config_init)
    + [peak2\_get\_heap\_size](#peak2_get_heap_size)
    + [peak2\_get\_latency](#peak2_get_latency)
    + [peak2\_init](#peak2_init)
    + [peak2\_init\_preallocated](#peak2_init_preallocated)
    + [peak2\_process\_pcm\_frames](#peak2_process_pcm_frames)
    + [peak2\_reinit](#peak2_reinit)
    + [peak2\_uninit](#peak2_uninit)
    + [peak\_node\_config\_init](#peak_node_config_init)
    + [peak\_node\_init](#peak_node_init)
    + [peak\_node\_reinit](#peak_node_reinit)
    + [peak\_node\_uninit](#peak_node_uninit)
    + [pulsewave\_config\_init](#pulsewave_config_init)
    + [pulsewave\_init](#pulsewave_init)
    + [pulsewave\_read\_pcm\_frames](#pulsewave_read_pcm_frames)
    + [pulsewave\_seek\_to\_pcm\_frame](#pulsewave_seek_to_pcm_frame)
    + [pulsewave\_set\_amplitude](#pulsewave_set_amplitude)
    + [pulsewave\_set\_duty\_cycle](#pulsewave_set_duty_cycle)
    + [pulsewave\_set\_frequency](#pulsewave_set_frequency)
    + [pulsewave\_set\_sample\_rate](#pulsewave_set_sample_rate)
    + [pulsewave\_uninit](#pulsewave_uninit)
    + [rb\_acquire\_read](#rb_acquire_read)
    + [rb\_acquire\_write](#rb_acquire_write)
    + [rb\_available\_read](#rb_available_read)
    + [rb\_available\_write](#rb_available_write)
    + [rb\_commit\_read](#rb_commit_read)
    + [rb\_commit\_write](#rb_commit_write)
    + [rb\_get\_subbuffer\_offset](#rb_get_subbuffer_offset)
    + [rb\_get\_subbuffer\_ptr](#rb_get_subbuffer_ptr)
    + [rb\_get\_subbuffer\_size](#rb_get_subbuffer_size)
    + [rb\_get\_subbuffer\_stride](#rb_get_subbuffer_stride)
    + [rb\_init](#rb_init)
    + [rb\_init\_ex](#rb_init_ex)
    + [rb\_pointer\_distance](#rb_pointer_distance)
    + [rb\_reset](#rb_reset)
    + [rb\_seek\_read](#rb_seek_read)
    + [rb\_seek\_write](#rb_seek_write)
    + [rb\_uninit](#rb_uninit)
    + [realloc](#realloc)
    + [resampler\_config\_init](#resampler_config_init)
    + [resampler\_get\_expected\_output\_frame\_count](#resampler_get_expected_output_frame_count)
    + [resampler\_get\_heap\_size](#resampler_get_heap_size)
    + [resampler\_get\_input\_latency](#resampler_get_input_latency)
    + [resampler\_get\_output\_latency](#resampler_get_output_latency)
    + [resampler\_get\_required\_input\_frame\_count](#resampler_get_required_input_frame_count)
    + [resampler\_init](#resampler_init)
    + [resampler\_init\_preallocated](#resampler_init_preallocated)
    + [resampler\_process\_pcm\_frames](#resampler_process_pcm_frames)
    + [resampler\_reset](#resampler_reset)
    + [resampler\_set\_rate](#resampler_set_rate)
    + [resampler\_set\_rate\_ratio](#resampler_set_rate_ratio)
    + [resampler\_uninit](#resampler_uninit)
    + [resource\_manager\_config\_init](#resource_manager_config_init)
    + [resource\_manager\_data\_buffer\_get\_available\_frames](#resource_manager_data_buffer_get_available_frames)
    + [resource\_manager\_data\_buffer\_get\_cursor\_in\_pcm\_frames](#resource_manager_data_buffer_get_cursor_in_pcm_frames)
    + [resource\_manager\_data\_buffer\_get\_data\_format](#resource_manager_data_buffer_get_data_format)
    + [resource\_manager\_data\_buffer\_get\_length\_in\_pcm\_frames](#resource_manager_data_buffer_get_length_in_pcm_frames)
    + [resource\_manager\_data\_buffer\_init](#resource_manager_data_buffer_init)
    + [resource\_manager\_data\_buffer\_init\_copy](#resource_manager_data_buffer_init_copy)
    + [resource\_manager\_data\_buffer\_init\_ex](#resource_manager_data_buffer_init_ex)
    + [resource\_manager\_data\_buffer\_init\_w](#resource_manager_data_buffer_init_w)
    + [resource\_manager\_data\_buffer\_is\_looping](#resource_manager_data_buffer_is_looping)
    + [resource\_manager\_data\_buffer\_read\_pcm\_frames](#resource_manager_data_buffer_read_pcm_frames)
    + [resource\_manager\_data\_buffer\_result](#resource_manager_data_buffer_result)
    + [resource\_manager\_data\_buffer\_seek\_to\_pcm\_frame](#resource_manager_data_buffer_seek_to_pcm_frame)
    + [resource\_manager\_data\_buffer\_set\_looping](#resource_manager_data_buffer_set_looping)
    + [resource\_manager\_data\_buffer\_uninit](#resource_manager_data_buffer_uninit)
    + [resource\_manager\_data\_source\_config\_init](#resource_manager_data_source_config_init)
    + [resource\_manager\_data\_source\_get\_available\_frames](#resource_manager_data_source_get_available_frames)
    + [resource\_manager\_data\_source\_get\_cursor\_in\_pcm\_frames](#resource_manager_data_source_get_cursor_in_pcm_frames)
    + [resource\_manager\_data\_source\_get\_data\_format](#resource_manager_data_source_get_data_format)
    + [resource\_manager\_data\_source\_get\_length\_in\_pcm\_frames](#resource_manager_data_source_get_length_in_pcm_frames)
    + [resource\_manager\_data\_source\_init](#resource_manager_data_source_init)
    + [resource\_manager\_data\_source\_init\_copy](#resource_manager_data_source_init_copy)
    + [resource\_manager\_data\_source\_init\_ex](#resource_manager_data_source_init_ex)
    + [resource\_manager\_data\_source\_init\_w](#resource_manager_data_source_init_w)
    + [resource\_manager\_data\_source\_is\_looping](#resource_manager_data_source_is_looping)
    + [resource\_manager\_data\_source\_read\_pcm\_frames](#resource_manager_data_source_read_pcm_frames)
    + [resource\_manager\_data\_source\_result](#resource_manager_data_source_result)
    + [resource\_manager\_data\_source\_seek\_to\_pcm\_frame](#resource_manager_data_source_seek_to_pcm_frame)
    + [resource\_manager\_data\_source\_set\_looping](#resource_manager_data_source_set_looping)
    + [resource\_manager\_data\_source\_uninit](#resource_manager_data_source_uninit)
    + [resource\_manager\_data\_stream\_get\_available\_frames](#resource_manager_data_stream_get_available_frames)
    + [resource\_manager\_data\_stream\_get\_cursor\_in\_pcm\_frames](#resource_manager_data_stream_get_cursor_in_pcm_frames)
    + [resource\_manager\_data\_stream\_get\_data\_format](#resource_manager_data_stream_get_data_format)
    + [resource\_manager\_data\_stream\_get\_length\_in\_pcm\_frames](#resource_manager_data_stream_get_length_in_pcm_frames)
    + [resource\_manager\_data\_stream\_init](#resource_manager_data_stream_init)
    + [resource\_manager\_data\_stream\_init\_ex](#resource_manager_data_stream_init_ex)
    + [resource\_manager\_data\_stream\_init\_w](#resource_manager_data_stream_init_w)
    + [resource\_manager\_data\_stream\_is\_looping](#resource_manager_data_stream_is_looping)
    + [resource\_manager\_data\_stream\_read\_pcm\_frames](#resource_manager_data_stream_read_pcm_frames)
    + [resource\_manager\_data\_stream\_result](#resource_manager_data_stream_result)
    + [resource\_manager\_data\_stream\_seek\_to\_pcm\_frame](#resource_manager_data_stream_seek_to_pcm_frame)
    + [resource\_manager\_data\_stream\_set\_looping](#resource_manager_data_stream_set_looping)
    + [resource\_manager\_data\_stream\_uninit](#resource_manager_data_stream_uninit)
    + [resource\_manager\_get\_log](#resource_manager_get_log)
    + [resource\_manager\_init](#resource_manager_init)
    + [resource\_manager\_job\_init](#resource_manager_job_init)
    + [resource\_manager\_job\_queue\_config\_init](#resource_manager_job_queue_config_init)
    + [resource\_manager\_job\_queue\_get\_heap\_size](#resource_manager_job_queue_get_heap_size)
    + [resource\_manager\_job\_queue\_init](#resource_manager_job_queue_init)
    + [resource\_manager\_job\_queue\_init\_preallocated](#resource_manager_job_queue_init_preallocated)
    + [resource\_manager\_job\_queue\_next](#resource_manager_job_queue_next)
    + [resource\_manager\_job\_queue\_post](#resource_manager_job_queue_post)
    + [resource\_manager\_job\_queue\_uninit](#resource_manager_job_queue_uninit)
    + [resource\_manager\_next\_job](#resource_manager_next_job)
    + [resource\_manager\_pipeline\_notifications\_init](#resource_manager_pipeline_notifications_init)
    + [resource\_manager\_post\_job](#resource_manager_post_job)
    + [resource\_manager\_post\_job\_quit](#resource_manager_post_job_quit)
    + [resource\_manager\_process\_job](#resource_manager_process_job)
    + [resource\_manager\_process\_next\_job](#resource_manager_process_next_job)
    + [resource\_manager\_register\_decoded\_data](#resource_manager_register_decoded_data)
    + [resource\_manager\_register\_decoded\_data\_w](#resource_manager_register_decoded_data_w)
    + [resource\_manager\_register\_encoded\_data](#resource_manager_register_encoded_data)
    + [resource\_manager\_register\_encoded\_data\_w](#resource_manager_register_encoded_data_w)
    + [resource\_manager\_register\_file](#resource_manager_register_file)
    + [resource\_manager\_register\_file\_w](#resource_manager_register_file_w)
    + [resource\_manager\_uninit](#resource_manager_uninit)
    + [resource\_manager\_unregister\_data](#resource_manager_unregister_data)
    + [resource\_manager\_unregister\_data\_w](#resource_manager_unregister_data_w)
    + [resource\_manager\_unregister\_file](#resource_manager_unregister_file)
    + [resource\_manager\_unregister\_file\_w](#resource_manager_unregister_file_w)
    + [result\_description](#result_description)
    + [semaphore\_init](#semaphore_init)
    + [semaphore\_release](#semaphore_release)
    + [semaphore\_uninit](#semaphore_uninit)
    + [semaphore\_wait](#semaphore_wait)
    + [silence\_pcm\_frames](#silence_pcm_frames)
    + [slot\_allocator\_alloc](#slot_allocator_alloc)
    + [slot\_allocator\_config\_init](#slot_allocator_config_init)
    + [slot\_allocator\_free](#slot_allocator_free)
    + [slot\_allocator\_get\_heap\_size](#slot_allocator_get_heap_size)
    + [slot\_allocator\_init](#slot_allocator_init)
    + [slot\_allocator\_init\_preallocated](#slot_allocator_init_preallocated)
    + [slot\_allocator\_uninit](#slot_allocator_uninit)
    + [sound\_at\_end](#sound_at_end)
    + [sound\_config\_init](#sound_config_init)
    + [sound\_config\_init\_2](#sound_config_init_2)
    + [sound\_get\_attenuation\_model](#sound_get_attenuation_model)
    + [sound\_get\_cone](#sound_get_cone)
    + [sound\_get\_current\_fade\_volume](#sound_get_current_fade_volume)
    + [sound\_get\_cursor\_in\_pcm\_frames](#sound_get_cursor_in_pcm_frames)
    + [sound\_get\_cursor\_in\_seconds](#sound_get_cursor_in_seconds)
    + [sound\_get\_data\_format](#sound_get_data_format)
    + [sound\_get\_data\_source](#sound_get_data_source)
    + [sound\_get\_direction](#sound_get_direction)
    + [sound\_get\_direction\_to\_listener](#sound_get_direction_to_listener)
    + [sound\_get\_directional\_attenuation\_factor](#sound_get_directional_attenuation_factor)
    + [sound\_get\_doppler\_factor](#sound_get_doppler_factor)
    + [sound\_get\_engine](#sound_get_engine)
    + [sound\_get\_length\_in\_pcm\_frames](#sound_get_length_in_pcm_frames)
    + [sound\_get\_length\_in\_seconds](#sound_get_length_in_seconds)
    + [sound\_get\_listener\_index](#sound_get_listener_index)
    + [sound\_get\_max\_distance](#sound_get_max_distance)
    + [sound\_get\_max\_gain](#sound_get_max_gain)
    + [sound\_get\_min\_distance](#sound_get_min_distance)
    + [sound\_get\_min\_gain](#sound_get_min_gain)
    + [sound\_get\_pan](#sound_get_pan)
    + [sound\_get\_pan\_mode](#sound_get_pan_mode)
    + [sound\_get\_pinned\_listener\_index](#sound_get_pinned_listener_index)
    + [sound\_get\_pitch](#sound_get_pitch)
    + [sound\_get\_position](#sound_get_position)
    + [sound\_get\_positioning](#sound_get_positioning)
    + [sound\_get\_rolloff](#sound_get_rolloff)
    + [sound\_get\_time\_in\_milliseconds](#sound_get_time_in_milliseconds)
    + [sound\_get\_time\_in\_pcm\_frames](#sound_get_time_in_pcm_frames)
    + [sound\_get\_velocity](#sound_get_velocity)
    + [sound\_get\_volume](#sound_get_volume)
    + [sound\_group\_config\_init](#sound_group_config_init)
    + [sound\_group\_config\_init\_2](#sound_group_config_init_2)
    + [sound\_group\_get\_attenuation\_model](#sound_group_get_attenuation_model)
    + [sound\_group\_get\_cone](#sound_group_get_cone)
    + [sound\_group\_get\_current\_fade\_volume](#sound_group_get_current_fade_volume)
    + [sound\_group\_get\_direction](#sound_group_get_direction)
    + [sound\_group\_get\_direction\_to\_listener](#sound_group_get_direction_to_listener)
    + [sound\_group\_get\_directional\_attenuation\_factor](#sound_group_get_directional_attenuation_factor)
    + [sound\_group\_get\_doppler\_factor](#sound_group_get_doppler_factor)
    + [sound\_group\_get\_engine](#sound_group_get_engine)
    + [sound\_group\_get\_listener\_index](#sound_group_get_listener_index)
    + [sound\_group\_get\_max\_distance](#sound_group_get_max_distance)
    + [sound\_group\_get\_max\_gain](#sound_group_get_max_gain)
    + [sound\_group\_get\_min\_distance](#sound_group_get_min_distance)
    + [sound\_group\_get\_min\_gain](#sound_group_get_min_gain)
    + [sound\_group\_get\_pan](#sound_group_get_pan)
    + [sound\_group\_get\_pan\_mode](#sound_group_get_pan_mode)
    + [sound\_group\_get\_pinned\_listener\_index](#sound_group_get_pinned_listener_index)
    + [sound\_group\_get\_pitch](#sound_group_get_pitch)
    + [sound\_group\_get\_position](#sound_group_get_position)
    + [sound\_group\_get\_positioning](#sound_group_get_positioning)
    + [sound\_group\_get\_rolloff](#sound_group_get_rolloff)
    + [sound\_group\_get\_time\_in\_pcm\_frames](#sound_group_get_time_in_pcm_frames)
    + [sound\_group\_get\_velocity](#sound_group_get_velocity)
    + [sound\_group\_get\_volume](#sound_group_get_volume)
    + [sound\_group\_init](#sound_group_init)
    + [sound\_group\_init\_ex](#sound_group_init_ex)
    + [sound\_group\_is\_playing](#sound_group_is_playing)
    + [sound\_group\_is\_spatialization\_enabled](#sound_group_is_spatialization_enabled)
    + [sound\_group\_set\_attenuation\_model](#sound_group_set_attenuation_model)
    + [sound\_group\_set\_cone](#sound_group_set_cone)
    + [sound\_group\_set\_direction](#sound_group_set_direction)
    + [sound\_group\_set\_directional\_attenuation\_factor](#sound_group_set_directional_attenuation_factor)
    + [sound\_group\_set\_doppler\_factor](#sound_group_set_doppler_factor)
    + [sound\_group\_set\_fade\_in\_milliseconds](#sound_group_set_fade_in_milliseconds)
    + [sound\_group\_set\_fade\_in\_pcm\_frames](#sound_group_set_fade_in_pcm_frames)
    + [sound\_group\_set\_max\_distance](#sound_group_set_max_distance)
    + [sound\_group\_set\_max\_gain](#sound_group_set_max_gain)
    + [sound\_group\_set\_min\_distance](#sound_group_set_min_distance)
    + [sound\_group\_set\_min\_gain](#sound_group_set_min_gain)
    + [sound\_group\_set\_pan](#sound_group_set_pan)
    + [sound\_group\_set\_pan\_mode](#sound_group_set_pan_mode)
    + [sound\_group\_set\_pinned\_listener\_index](#sound_group_set_pinned_listener_index)
    + [sound\_group\_set\_pitch](#sound_group_set_pitch)
    + [sound\_group\_set\_position](#sound_group_set_position)
    + [sound\_group\_set\_positioning](#sound_group_set_positioning)
    + [sound\_group\_set\_rolloff](#sound_group_set_rolloff)
    + [sound\_group\_set\_spatialization\_enabled](#sound_group_set_spatialization_enabled)
    + [sound\_group\_set\_start\_time\_in\_milliseconds](#sound_group_set_start_time_in_milliseconds)
    + [sound\_group\_set\_start\_time\_in\_pcm\_frames](#sound_group_set_start_time_in_pcm_frames)
    + [sound\_group\_set\_stop\_time\_in\_milliseconds](#sound_group_set_stop_time_in_milliseconds)
    + [sound\_group\_set\_stop\_time\_in\_pcm\_frames](#sound_group_set_stop_time_in_pcm_frames)
    + [sound\_group\_set\_velocity](#sound_group_set_velocity)
    + [sound\_group\_set\_volume](#sound_group_set_volume)
    + [sound\_group\_start](#sound_group_start)
    + [sound\_group\_stop](#sound_group_stop)
    + [sound\_group\_uninit](#sound_group_uninit)
    + [sound\_init\_copy](#sound_init_copy)
    + [sound\_init\_ex](#sound_init_ex)
    + [sound\_init\_from\_data\_source](#sound_init_from_data_source)
    + [sound\_init\_from\_file](#sound_init_from_file)
    + [sound\_init\_from\_file\_w](#sound_init_from_file_w)
    + [sound\_is\_looping](#sound_is_looping)
    + [sound\_is\_playing](#sound_is_playing)
    + [sound\_is\_spatialization\_enabled](#sound_is_spatialization_enabled)
    + [sound\_reset\_fade](#sound_reset_fade)
    + [sound\_reset\_start\_time](#sound_reset_start_time)
    + [sound\_reset\_stop\_time](#sound_reset_stop_time)
    + [sound\_reset\_stop\_time\_and\_fade](#sound_reset_stop_time_and_fade)
    + [sound\_seek\_to\_pcm\_frame](#sound_seek_to_pcm_frame)
    + [sound\_seek\_to\_second](#sound_seek_to_second)
    + [sound\_set\_attenuation\_model](#sound_set_attenuation_model)
    + [sound\_set\_cone](#sound_set_cone)
    + [sound\_set\_direction](#sound_set_direction)
    + [sound\_set\_directional\_attenuation\_factor](#sound_set_directional_attenuation_factor)
    + [sound\_set\_doppler\_factor](#sound_set_doppler_factor)
    + [sound\_set\_end\_callback](#sound_set_end_callback)
    + [sound\_set\_fade\_in\_milliseconds](#sound_set_fade_in_milliseconds)
    + [sound\_set\_fade\_in\_pcm\_frames](#sound_set_fade_in_pcm_frames)
    + [sound\_set\_fade\_start\_in\_milliseconds](#sound_set_fade_start_in_milliseconds)
    + [sound\_set\_fade\_start\_in\_pcm\_frames](#sound_set_fade_start_in_pcm_frames)
    + [sound\_set\_looping](#sound_set_looping)
    + [sound\_set\_max\_distance](#sound_set_max_distance)
    + [sound\_set\_max\_gain](#sound_set_max_gain)
    + [sound\_set\_min\_distance](#sound_set_min_distance)
    + [sound\_set\_min\_gain](#sound_set_min_gain)
    + [sound\_set\_pan](#sound_set_pan)
    + [sound\_set\_pan\_mode](#sound_set_pan_mode)
    + [sound\_set\_pinned\_listener\_index](#sound_set_pinned_listener_index)
    + [sound\_set\_pitch](#sound_set_pitch)
    + [sound\_set\_position](#sound_set_position)
    + [sound\_set\_positioning](#sound_set_positioning)
    + [sound\_set\_rolloff](#sound_set_rolloff)
    + [sound\_set\_spatialization\_enabled](#sound_set_spatialization_enabled)
    + [sound\_set\_start\_time\_in\_milliseconds](#sound_set_start_time_in_milliseconds)
    + [sound\_set\_start\_time\_in\_pcm\_frames](#sound_set_start_time_in_pcm_frames)
    + [sound\_set\_stop\_time\_in\_milliseconds](#sound_set_stop_time_in_milliseconds)
    + [sound\_set\_stop\_time\_in\_pcm\_frames](#sound_set_stop_time_in_pcm_frames)
    + [sound\_set\_stop\_time\_with\_fade\_in\_milliseconds](#sound_set_stop_time_with_fade_in_milliseconds)
    + [sound\_set\_stop\_time\_with\_fade\_in\_pcm\_frames](#sound_set_stop_time_with_fade_in_pcm_frames)
    + [sound\_set\_velocity](#sound_set_velocity)
    + [sound\_set\_volume](#sound_set_volume)
    + [sound\_start](#sound_start)
    + [sound\_stop](#sound_stop)
    + [sound\_stop\_with\_fade\_in\_milliseconds](#sound_stop_with_fade_in_milliseconds)
    + [sound\_stop\_with\_fade\_in\_pcm\_frames](#sound_stop_with_fade_in_pcm_frames)
    + [sound\_uninit](#sound_uninit)
    + [spatializer\_config\_init](#spatializer_config_init)
    + [spatializer\_get\_attenuation\_model](#spatializer_get_attenuation_model)
    + [spatializer\_get\_cone](#spatializer_get_cone)
    + [spatializer\_get\_direction](#spatializer_get_direction)
    + [spatializer\_get\_directional\_attenuation\_factor](#spatializer_get_directional_attenuation_factor)
    + [spatializer\_get\_doppler\_factor](#spatializer_get_doppler_factor)
    + [spatializer\_get\_heap\_size](#spatializer_get_heap_size)
    + [spatializer\_get\_input\_channels](#spatializer_get_input_channels)
    + [spatializer\_get\_master\_volume](#spatializer_get_master_volume)
    + [spatializer\_get\_max\_distance](#spatializer_get_max_distance)
    + [spatializer\_get\_max\_gain](#spatializer_get_max_gain)
    + [spatializer\_get\_min\_distance](#spatializer_get_min_distance)
    + [spatializer\_get\_min\_gain](#spatializer_get_min_gain)
    + [spatializer\_get\_output\_channels](#spatializer_get_output_channels)
    + [spatializer\_get\_position](#spatializer_get_position)
    + [spatializer\_get\_positioning](#spatializer_get_positioning)
    + [spatializer\_get\_relative\_position\_and\_direction](#spatializer_get_relative_position_and_direction)
    + [spatializer\_get\_rolloff](#spatializer_get_rolloff)
    + [spatializer\_get\_velocity](#spatializer_get_velocity)
    + [spatializer\_init](#spatializer_init)
    + [spatializer\_init\_preallocated](#spatializer_init_preallocated)
    + [spatializer\_listener\_config\_init](#spatializer_listener_config_init)
    + [spatializer\_listener\_get\_channel\_map](#spatializer_listener_get_channel_map)
    + [spatializer\_listener\_get\_cone](#spatializer_listener_get_cone)
    + [spatializer\_listener\_get\_direction](#spatializer_listener_get_direction)
    + [spatializer\_listener\_get\_heap\_size](#spatializer_listener_get_heap_size)
    + [spatializer\_listener\_get\_position](#spatializer_listener_get_position)
    + [spatializer\_listener\_get\_speed\_of\_sound](#spatializer_listener_get_speed_of_sound)
    + [spatializer\_listener\_get\_velocity](#spatializer_listener_get_velocity)
    + [spatializer\_listener\_get\_world\_up](#spatializer_listener_get_world_up)
    + [spatializer\_listener\_init](#spatializer_listener_init)
    + [spatializer\_listener\_init\_preallocated](#spatializer_listener_init_preallocated)
    + [spatializer\_listener\_is\_enabled](#spatializer_listener_is_enabled)
    + [spatializer\_listener\_set\_cone](#spatializer_listener_set_cone)
    + [spatializer\_listener\_set\_direction](#spatializer_listener_set_direction)
    + [spatializer\_listener\_set\_enabled](#spatializer_listener_set_enabled)
    + [spatializer\_listener\_set\_position](#spatializer_listener_set_position)
    + [spatializer\_listener\_set\_speed\_of\_sound](#spatializer_listener_set_speed_of_sound)
    + [spatializer\_listener\_set\_velocity](#spatializer_listener_set_velocity)
    + [spatializer\_listener\_set\_world\_up](#spatializer_listener_set_world_up)
    + [spatializer\_listener\_uninit](#spatializer_listener_uninit)
    + [spatializer\_process\_pcm\_frames](#spatializer_process_pcm_frames)
    + [spatializer\_set\_attenuation\_model](#spatializer_set_attenuation_model)
    + [spatializer\_set\_cone](#spatializer_set_cone)
    + [spatializer\_set\_direction](#spatializer_set_direction)
    + [spatializer\_set\_directional\_attenuation\_factor](#spatializer_set_directional_attenuation_factor)
    + [spatializer\_set\_doppler\_factor](#spatializer_set_doppler_factor)
    + [spatializer\_set\_master\_volume](#spatializer_set_master_volume)
    + [spatializer\_set\_max\_distance](#spatializer_set_max_distance)
    + [spatializer\_set\_max\_gain](#spatializer_set_max_gain)
    + [spatializer\_set\_min\_distance](#spatializer_set_min_distance)
    + [spatializer\_set\_min\_gain](#spatializer_set_min_gain)
    + [spatializer\_set\_position](#spatializer_set_position)
    + [spatializer\_set\_positioning](#spatializer_set_positioning)
    + [spatializer\_set\_rolloff](#spatializer_set_rolloff)
    + [spatializer\_set\_velocity](#spatializer_set_velocity)
    + [spatializer\_uninit](#spatializer_uninit)
    + [spinlock\_lock](#spinlock_lock)
    + [spinlock\_lock\_noyield](#spinlock_lock_noyield)
    + [spinlock\_unlock](#spinlock_unlock)
    + [splitter\_node\_config\_init](#splitter_node_config_init)
    + [splitter\_node\_init](#splitter_node_init)
    + [splitter\_node\_uninit](#splitter_node_uninit)
    + [version](#version)
    + [version\_check](#version_check)
    + [version\_string](#version_string)
    + [vfs\_close](#vfs_close)
    + [vfs\_info](#vfs_info)
    + [vfs\_open](#vfs_open)
    + [vfs\_open\_and\_read\_file](#vfs_open_and_read_file)
    + [vfs\_open\_w](#vfs_open_w)
    + [vfs\_read](#vfs_read)
    + [vfs\_seek](#vfs_seek)
    + [vfs\_tell](#vfs_tell)
    + [vfs\_write](#vfs_write)
    + [volume\_db\_to\_linear](#volume_db_to_linear)
    + [volume\_linear\_to\_db](#volume_linear_to_db)
    + [waveform\_config\_init](#waveform_config_init)
    + [waveform\_init](#waveform_init)
    + [waveform\_read\_pcm\_frames](#waveform_read_pcm_frames)
    + [waveform\_seek\_to\_pcm\_frame](#waveform_seek_to_pcm_frame)
    + [waveform\_set\_amplitude](#waveform_set_amplitude)
    + [waveform\_set\_frequency](#waveform_set_frequency)
    + [waveform\_set\_sample\_rate](#waveform_set_sample_rate)
    + [waveform\_set\_type](#waveform_set_type)
    + [waveform\_uninit](#waveform_uninit)
  * [`#config` values](#pkg-`#config` values)
    + [MINIAUDIO\_SHARED](#MINIAUDIO_SHARED)
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