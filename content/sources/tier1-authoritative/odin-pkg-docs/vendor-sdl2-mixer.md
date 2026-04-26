package sdl2/mixer - pkg.odin-lang.org 






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



Current Package: *[sdl2\_mixer](/vendor/sdl2/mixer)*

  

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
2. [sdl2](/vendor/sdl2)
3. [mixer](/vendor/sdl2/mixer)

# package vendor:sdl2/mixer [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [SDL2 Mixer](https://wiki.libsdl.org/SDL2_mixer/FrontPage).

## Index

Types (10)

* [Chunk](#Chunk)
* [EffectDone\_t](#EffectDone_t)
* [EffectFunc\_t](#EffectFunc_t)
* [Fading](#Fading)
* [InitFlag](#InitFlag)
* [InitFlags](#InitFlags)
* [MixFunc](#MixFunc)
* [Music](#Music)
* [MusicType](#MusicType)
* [bool](#bool)

Constants (30)

* [CHANNELS](#CHANNELS)
* [CHANNEL\_POST](#CHANNEL_POST)
* [DEFAULT\_CHANNELS](#DEFAULT_CHANNELS)
* [DEFAULT\_FORMAT](#DEFAULT_FORMAT)
* [DEFAULT\_FREQUENCY](#DEFAULT_FREQUENCY)
* [EFFECTSMAXSPEED](#EFFECTSMAXSPEED)
* [FADING\_IN](#FADING_IN)
* [FADING\_OUT](#FADING_OUT)
* [INIT\_FLAC](#INIT_FLAC)
* [INIT\_MID](#INIT_MID)
* [INIT\_MOD](#INIT_MOD)
* [INIT\_MP3](#INIT_MP3)
* [INIT\_OGG](#INIT_OGG)
* [INIT\_OPUS](#INIT_OPUS)
* [MAJOR\_VERSION](#MAJOR_VERSION)
* [MAX\_VOLUME](#MAX_VOLUME)
* [MINOR\_VERSION](#MINOR_VERSION)
* [MUS\_CMD](#MUS_CMD)
* [MUS\_FLAC](#MUS_FLAC)
* [MUS\_MID](#MUS_MID)
* [MUS\_MOD](#MUS_MOD)
* [MUS\_MODPLUG\_UNUSED](#MUS_MODPLUG_UNUSED)
* [MUS\_MP3](#MUS_MP3)
* [MUS\_MP3\_MAD\_UNUSED](#MUS_MP3_MAD_UNUSED)
* [MUS\_NONE](#MUS_NONE)
* [MUS\_OGG](#MUS_OGG)
* [MUS\_OPUS](#MUS_OPUS)
* [MUS\_WAV](#MUS_WAV)
* [NO\_FADING](#NO_FADING)
* [PATCHLEVEL](#PATCHLEVEL)

Variables (0)

This section is empty.

Procedures (93)

* [AllocateChannels](#AllocateChannels)
* [ChannelFinished](#ChannelFinished)
* [CloseAudio](#CloseAudio)
* [EachSoundFont](#EachSoundFont)
* [ExpireChannel](#ExpireChannel)
* [FadeInChannel](#FadeInChannel)
* [FadeInChannelTimed](#FadeInChannelTimed)
* [FadeInMusic](#FadeInMusic)
* [FadeInMusicPos](#FadeInMusicPos)
* [FadeOutChannel](#FadeOutChannel)
* [FadeOutGroup](#FadeOutGroup)
* [FadeOutMusic](#FadeOutMusic)
* [FadingChannel](#FadingChannel)
* [FadingMusic](#FadingMusic)
* [FreeChunk](#FreeChunk)
* [FreeMusic](#FreeMusic)
* [GetChunk](#GetChunk)
* [GetChunkDecoder](#GetChunkDecoder)
* [GetMusicAlbumTag](#GetMusicAlbumTag)
* [GetMusicArtistTag](#GetMusicArtistTag)
* [GetMusicCopyrightTag](#GetMusicCopyrightTag)
* [GetMusicDecoder](#GetMusicDecoder)
* [GetMusicHookData](#GetMusicHookData)
* [GetMusicLoopEndTime](#GetMusicLoopEndTime)
* [GetMusicLoopLengthTime](#GetMusicLoopLengthTime)
* [GetMusicLoopStartTime](#GetMusicLoopStartTime)
* [GetMusicPosition](#GetMusicPosition)
* [GetMusicTitle](#GetMusicTitle)
* [GetMusicTitleTag](#GetMusicTitleTag)
* [GetMusicType](#GetMusicType)
* [GetMusicVolume](#GetMusicVolume)
* [GetNumChunkDecoders](#GetNumChunkDecoders)
* [GetNumMusicDecoders](#GetNumMusicDecoders)
* [GetSoundFonts](#GetSoundFonts)
* [GetSynchroValue](#GetSynchroValue)
* [GetTimidityCfg](#GetTimidityCfg)
* [GroupAvailable](#GroupAvailable)
* [GroupChannel](#GroupChannel)
* [GroupChannels](#GroupChannels)
* [GroupCount](#GroupCount)
* [GroupNewer](#GroupNewer)
* [GroupOldest](#GroupOldest)
* [HaltChannel](#HaltChannel)
* [HaltGroup](#HaltGroup)
* [HaltMusic](#HaltMusic)
* [HasChunkDecoder](#HasChunkDecoder)
* [HasMusicDecoder](#HasMusicDecoder)
* [HookMusic](#HookMusic)
* [HookMusicFinished](#HookMusicFinished)
* [Init](#Init)
* [Linked\_Version](#Linked_Version)
* [LoadMUS](#LoadMUS)
* [LoadMUSType\_RW](#LoadMUSType_RW)
* [LoadMUS\_RW](#LoadMUS_RW)
* [LoadWAV](#LoadWAV)
* [LoadWAV\_RW](#LoadWAV_RW)
* [ModMusicJumpToOrder](#ModMusicJumpToOrder)
* [MusicDuration](#MusicDuration)
* [OpenAudio](#OpenAudio)
* [OpenAudioDevice](#OpenAudioDevice)
* [Pause](#Pause)
* [PauseMusic](#PauseMusic)
* [Paused](#Paused)
* [PausedMusic](#PausedMusic)
* [PlayChannel](#PlayChannel)
* [PlayChannelTimed](#PlayChannelTimed)
* [PlayMusic](#PlayMusic)
* [Playing](#Playing)
* [PlayingMusic](#PlayingMusic)
* [QuerySpec](#QuerySpec)
* [QuickLoad\_RAW](#QuickLoad_RAW)
* [QuickLoad\_WAV](#QuickLoad_WAV)
* [Quit](#Quit)
* [RegisterEffect](#RegisterEffect)
* [ReserveChannels](#ReserveChannels)
* [Resume](#Resume)
* [ResumeMusic](#ResumeMusic)
* [RewindMusic](#RewindMusic)
* [SetDistance](#SetDistance)
* [SetMusicCMD](#SetMusicCMD)
* [SetMusicPosition](#SetMusicPosition)
* [SetPanning](#SetPanning)
* [SetPosition](#SetPosition)
* [SetPostMix](#SetPostMix)
* [SetReverseStereo](#SetReverseStereo)
* [SetSoundFonts](#SetSoundFonts)
* [SetSynchroValue](#SetSynchroValue)
* [SetTimidityCfg](#SetTimidityCfg)
* [UnregisterAllEffects](#UnregisterAllEffects)
* [UnregisterEffect](#UnregisterEffect)
* [Volume](#Volume)
* [VolumeChunk](#VolumeChunk)
* [VolumeMusic](#VolumeMusic)

Procedure Groups (0)

This section is empty.

## Types

### [Chunk ¶](#Chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L46)

```
Chunk :: struct {
	allocated: i32,
	abuf:      [^]u8,
	alen:      u32,
	volume:    u8,
}
```

##### Related Procedures With Parameters

* [FadeInChannel](/vendor/sdl2/mixer/#FadeInChannel)
* [FadeInChannelTimed](/vendor/sdl2/mixer/#FadeInChannelTimed)
* [FreeChunk](/vendor/sdl2/mixer/#FreeChunk)
* [PlayChannel](/vendor/sdl2/mixer/#PlayChannel)
* [PlayChannelTimed](/vendor/sdl2/mixer/#PlayChannelTimed)
* [VolumeChunk](/vendor/sdl2/mixer/#VolumeChunk)



##### Related Procedures With Returns

* [GetChunk](/vendor/sdl2/mixer/#GetChunk)
* [LoadWAV](/vendor/sdl2/mixer/#LoadWAV)
* [LoadWAV\_RW](/vendor/sdl2/mixer/#LoadWAV_RW)
* [QuickLoad\_RAW](/vendor/sdl2/mixer/#QuickLoad_RAW)
* [QuickLoad\_WAV](/vendor/sdl2/mixer/#QuickLoad_WAV)

### [EffectDone\_t ¶](#EffectDone_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L148)

```
EffectDone_t :: proc "c" (chan: i32, udata: rawptr)
```

##### Related Procedures With Parameters

* [RegisterEffect](/vendor/sdl2/mixer/#RegisterEffect)

### [EffectFunc\_t ¶](#EffectFunc_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L147)

```
EffectFunc_t :: proc "c" (chan: i32, stream: rawptr, len: i32, udata: rawptr)
```

##### Related Procedures With Parameters

* [RegisterEffect](/vendor/sdl2/mixer/#RegisterEffect)
* [UnregisterEffect](/vendor/sdl2/mixer/#UnregisterEffect)

### [Fading ¶](#Fading) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L53)

```
Fading :: enum i32 {
	NO_FADING, 
	FADING_OUT, 
	FADING_IN, 
}
```

##### Related Procedures With Returns

* [FadingChannel](/vendor/sdl2/mixer/#FadingChannel)
* [FadingMusic](/vendor/sdl2/mixer/#FadingMusic)

##### Related Constants

* [FADING\_IN](/vendor/sdl2/mixer/#FADING_IN)
* [FADING\_OUT](/vendor/sdl2/mixer/#FADING_OUT)
* [NO\_FADING](/vendor/sdl2/mixer/#NO_FADING)

### [InitFlag ¶](#InitFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L23)

```
InitFlag :: enum i32 {
	FLAC = 0, 
	MOD  = 1, 
	MP3  = 3, 
	OGG  = 4, 
	MID  = 5, 
	OPUS = 6, 
}
```

### [InitFlags ¶](#InitFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L32)

```
InitFlags :: distinct bit_set[InitFlag; i32]
```

##### Related Procedures With Parameters

* [Init](/vendor/sdl2/mixer/#Init)

##### Related Constants

* [INIT\_FLAC](/vendor/sdl2/mixer/#INIT_FLAC)
* [INIT\_MID](/vendor/sdl2/mixer/#INIT_MID)
* [INIT\_MOD](/vendor/sdl2/mixer/#INIT_MOD)
* [INIT\_MP3](/vendor/sdl2/mixer/#INIT_MP3)
* [INIT\_OGG](/vendor/sdl2/mixer/#INIT_OGG)
* [INIT\_OPUS](/vendor/sdl2/mixer/#INIT_OPUS)

### [MixFunc ¶](#MixFunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L103)

```
MixFunc :: proc "c" (udata: rawptr, stream: [^]u8, len: i32)
```

##### Related Procedures With Parameters

* [HookMusic](/vendor/sdl2/mixer/#HookMusic)
* [SetPostMix](/vendor/sdl2/mixer/#SetPostMix)

### [Music ¶](#Music) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L89)

```
Music :: struct {}
```

##### Related Procedures With Parameters

* [FadeInMusic](/vendor/sdl2/mixer/#FadeInMusic)
* [FadeInMusicPos](/vendor/sdl2/mixer/#FadeInMusicPos)
* [FreeMusic](/vendor/sdl2/mixer/#FreeMusic)
* [GetMusicAlbumTag](/vendor/sdl2/mixer/#GetMusicAlbumTag)
* [GetMusicArtistTag](/vendor/sdl2/mixer/#GetMusicArtistTag)
* [GetMusicCopyrightTag](/vendor/sdl2/mixer/#GetMusicCopyrightTag)
* [GetMusicLoopEndTime](/vendor/sdl2/mixer/#GetMusicLoopEndTime)
* [GetMusicLoopLengthTime](/vendor/sdl2/mixer/#GetMusicLoopLengthTime)
* [GetMusicLoopStartTime](/vendor/sdl2/mixer/#GetMusicLoopStartTime)
* [GetMusicPosition](/vendor/sdl2/mixer/#GetMusicPosition)
* [GetMusicTitle](/vendor/sdl2/mixer/#GetMusicTitle)
* [GetMusicTitleTag](/vendor/sdl2/mixer/#GetMusicTitleTag)
* [GetMusicType](/vendor/sdl2/mixer/#GetMusicType)
* [GetMusicVolume](/vendor/sdl2/mixer/#GetMusicVolume)
* [MusicDuration](/vendor/sdl2/mixer/#MusicDuration)
* [PlayMusic](/vendor/sdl2/mixer/#PlayMusic)



##### Related Procedures With Returns

* [LoadMUS](/vendor/sdl2/mixer/#LoadMUS)
* [LoadMUSType\_RW](/vendor/sdl2/mixer/#LoadMUSType_RW)
* [LoadMUS\_RW](/vendor/sdl2/mixer/#LoadMUS_RW)

### [MusicType ¶](#MusicType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L63)

```
MusicType :: enum i32 {
	NONE, 
	CMD, 
	WAV, 
	MOD, 
	MID, 
	OGG, 
	MP3, 
	MP3_MAD_UNUSED, 
	FLAC, 
	MODPLUG_UNUSED, 
	OPUS, 
}
```

##### Related Procedures With Parameters

* [LoadMUSType\_RW](/vendor/sdl2/mixer/#LoadMUSType_RW)



##### Related Procedures With Returns

* [GetMusicType](/vendor/sdl2/mixer/#GetMusicType)

##### Related Constants

* [MUS\_CMD](/vendor/sdl2/mixer/#MUS_CMD)
* [MUS\_FLAC](/vendor/sdl2/mixer/#MUS_FLAC)
* [MUS\_MID](/vendor/sdl2/mixer/#MUS_MID)
* [MUS\_MOD](/vendor/sdl2/mixer/#MUS_MOD)
* [MUS\_MODPLUG\_UNUSED](/vendor/sdl2/mixer/#MUS_MODPLUG_UNUSED)
* [MUS\_MP3](/vendor/sdl2/mixer/#MUS_MP3)
* [MUS\_MP3\_MAD\_UNUSED](/vendor/sdl2/mixer/#MUS_MP3_MAD_UNUSED)
* [MUS\_NONE](/vendor/sdl2/mixer/#MUS_NONE)
* [MUS\_OGG](/vendor/sdl2/mixer/#MUS_OGG)
* [MUS\_OPUS](/vendor/sdl2/mixer/#MUS_OPUS)
* [MUS\_WAV](/vendor/sdl2/mixer/#MUS_WAV)

### [bool ¶](#bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L20)

```
bool :: sdl2.bool
```

##### Related Procedures With Parameters

* [LoadMUSType\_RW](/vendor/sdl2/mixer/#LoadMUSType_RW)
* [LoadMUS\_RW](/vendor/sdl2/mixer/#LoadMUS_RW)
* [LoadWAV\_RW](/vendor/sdl2/mixer/#LoadWAV_RW)
* [SetReverseStereo](/vendor/sdl2/mixer/#SetReverseStereo)



##### Related Procedures With Returns

* [HasChunkDecoder](/vendor/sdl2/mixer/#HasChunkDecoder)
* [HasMusicDecoder](/vendor/sdl2/mixer/#HasMusicDecoder)

## Constants

### [CHANNELS ¶](#CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L17)

```
CHANNELS :: 8
```

### [CHANNEL\_POST ¶](#CHANNEL_POST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L145)

```
CHANNEL_POST :: -2
```

### [DEFAULT\_CHANNELS ¶](#DEFAULT_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L43)

```
DEFAULT_CHANNELS :: 2
```

### [DEFAULT\_FORMAT ¶](#DEFAULT_FORMAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L42)

```
DEFAULT_FORMAT :: SDL.AUDIO_S16SYS
```

### [DEFAULT\_FREQUENCY ¶](#DEFAULT_FREQUENCY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L41)

```
DEFAULT_FREQUENCY :: 44100
```

### [EFFECTSMAXSPEED ¶](#EFFECTSMAXSPEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L150)

```
EFFECTSMAXSPEED :: "MIX_EFFECTSMAXSPEED"
```

### [FADING\_IN ¶](#FADING_IN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L61)

```
FADING_IN :: Fading.FADING_IN
```

### [FADING\_OUT ¶](#FADING_OUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L60)

```
FADING_OUT :: Fading.FADING_OUT
```

### [INIT\_FLAC ¶](#INIT_FLAC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L34)

```
INIT_FLAC :: InitFlags{.FLAC}
```

### [INIT\_MID ¶](#INIT_MID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L38)

```
INIT_MID :: InitFlags{.MID}
```

### [INIT\_MOD ¶](#INIT_MOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L35)

```
INIT_MOD :: InitFlags{.MOD}
```

### [INIT\_MP3 ¶](#INIT_MP3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L36)

```
INIT_MP3 :: InitFlags{.MP3}
```

### [INIT\_OGG ¶](#INIT_OGG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L37)

```
INIT_OGG :: InitFlags{.OGG}
```

### [INIT\_OPUS ¶](#INIT_OPUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L39)

```
INIT_OPUS :: InitFlags{.OPUS}
```

### [MAJOR\_VERSION ¶](#MAJOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L13)

```
MAJOR_VERSION :: 2
```

### [MAX\_VOLUME ¶](#MAX_VOLUME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L44)

```
MAX_VOLUME :: SDL.MIX_MAXVOLUME
```

### [MINOR\_VERSION ¶](#MINOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L14)

```
MINOR_VERSION :: 0
```

### [MUS\_CMD ¶](#MUS_CMD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L78)

```
MUS_CMD :: MusicType.CMD
```

### [MUS\_FLAC ¶](#MUS_FLAC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L85)

```
MUS_FLAC :: MusicType.FLAC
```

### [MUS\_MID ¶](#MUS_MID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L81)

```
MUS_MID :: MusicType.MID
```

### [MUS\_MOD ¶](#MUS_MOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L80)

```
MUS_MOD :: MusicType.MOD
```

### [MUS\_MODPLUG\_UNUSED ¶](#MUS_MODPLUG_UNUSED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L86)

```
MUS_MODPLUG_UNUSED :: MusicType.MODPLUG_UNUSED
```

### [MUS\_MP3 ¶](#MUS_MP3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L83)

```
MUS_MP3 :: MusicType.MP3
```

### [MUS\_MP3\_MAD\_UNUSED ¶](#MUS_MP3_MAD_UNUSED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L84)

```
MUS_MP3_MAD_UNUSED :: MusicType.MP3_MAD_UNUSED
```

### [MUS\_NONE ¶](#MUS_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L77)

```
MUS_NONE :: MusicType.NONE
```

### [MUS\_OGG ¶](#MUS_OGG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L82)

```
MUS_OGG :: MusicType.OGG
```

### [MUS\_OPUS ¶](#MUS_OPUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L87)

```
MUS_OPUS :: MusicType.OPUS
```

### [MUS\_WAV ¶](#MUS_WAV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L79)

```
MUS_WAV :: MusicType.WAV
```

### [NO\_FADING ¶](#NO_FADING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L59)

```
NO_FADING :: Fading.NO_FADING
```

### [PATCHLEVEL ¶](#PATCHLEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L15)

```
PATCHLEVEL :: 4
```

## Variables

This section is empty.

## Procedures

### [AllocateChannels ¶](#AllocateChannels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L114)

```
AllocateChannels :: proc "c" (numchans: i32) -> i32 ---
```

### [ChannelFinished ¶](#ChannelFinished) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L142)

```
ChannelFinished :: proc "c" (channel_finished: proc "c" (channel: i32)) ---
```

### [CloseAudio ¶](#CloseAudio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L220)

```
CloseAudio :: proc "c" () ---
```

### [EachSoundFont ¶](#EachSoundFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L216)

```
EachSoundFont :: proc "c" (function: proc "c" (cstring, rawptr) -> i32, data: rawptr) -> i32 ---
```

### [ExpireChannel ¶](#ExpireChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L189)

```
ExpireChannel :: proc "c" (channel: i32, ticks: i32) -> i32 ---
```

### [FadeInChannel ¶](#FadeInChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L155)

```
FadeInChannel :: proc "c" (channel: i32, chunk: ^Chunk, loops: i32, ms: i32) -> i32 {…}
```

### [FadeInChannelTimed ¶](#FadeInChannelTimed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L181)

```
FadeInChannelTimed :: proc "c" (channel: i32, chunk: ^Chunk, loops: i32, ms: i32, ticks: i32) -> i32 ---
```

### [FadeInMusic ¶](#FadeInMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L179)

```
FadeInMusic :: proc "c" (music: ^Music, loops: i32, ms: i32) -> i32 ---
```

### [FadeInMusicPos ¶](#FadeInMusicPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L180)

```
FadeInMusicPos :: proc "c" (music: ^Music, loops: i32, ms: i32, position: f64) -> i32 ---
```

### [FadeOutChannel ¶](#FadeOutChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L190)

```
FadeOutChannel :: proc "c" (which: i32, ms: i32) -> i32 ---
```

### [FadeOutGroup ¶](#FadeOutGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L191)

```
FadeOutGroup :: proc "c" (tag: i32, ms: i32) -> i32 ---
```

### [FadeOutMusic ¶](#FadeOutMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L192)

```
FadeOutMusic :: proc "c" (ms: i32) -> i32 ---
```

### [FadingChannel ¶](#FadingChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L194)

```
FadingChannel :: proc "c" (which: i32) -> Fading ---
```

### [FadingMusic ¶](#FadingMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L193)

```
FadingMusic :: proc "c" () -> Fading ---
```

### [FreeChunk ¶](#FreeChunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L122)

```
FreeChunk :: proc "c" (chunk: ^Chunk) ---
```

### [FreeMusic ¶](#FreeMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L123)

```
FreeMusic :: proc "c" (music: ^Music) ---
```

### [GetChunk ¶](#GetChunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L219)

```
GetChunk :: proc "c" (channel: i32) -> ^Chunk ---
```

### [GetChunkDecoder ¶](#GetChunkDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L125)

```
GetChunkDecoder :: proc "c" (index: i32) -> cstring ---
```

### [GetMusicAlbumTag ¶](#GetMusicAlbumTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L134)

```
GetMusicAlbumTag :: proc "c" (music: ^Music) -> cstring ---
```

### [GetMusicArtistTag ¶](#GetMusicArtistTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L133)

```
GetMusicArtistTag :: proc "c" (music: ^Music) -> cstring ---
```

### [GetMusicCopyrightTag ¶](#GetMusicCopyrightTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L135)

```
GetMusicCopyrightTag :: proc "c" (music: ^Music) -> cstring ---
```

### [GetMusicDecoder ¶](#GetMusicDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L128)

```
GetMusicDecoder :: proc "c" (index: i32) -> cstring ---
```

### [GetMusicHookData ¶](#GetMusicHookData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L140)

```
GetMusicHookData :: proc "c" () -> rawptr ---
```

### [GetMusicLoopEndTime ¶](#GetMusicLoopEndTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L207)

```
GetMusicLoopEndTime :: proc "c" (music: ^Music) -> f64 ---
```

### [GetMusicLoopLengthTime ¶](#GetMusicLoopLengthTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L208)

```
GetMusicLoopLengthTime :: proc "c" (music: ^Music) -> f64 ---
```

### [GetMusicLoopStartTime ¶](#GetMusicLoopStartTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L206)

```
GetMusicLoopStartTime :: proc "c" (music: ^Music) -> f64 ---
```

### [GetMusicPosition ¶](#GetMusicPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L204)

```
GetMusicPosition :: proc "c" (music: ^Music) -> f64 ---
```

### [GetMusicTitle ¶](#GetMusicTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L131)

```
GetMusicTitle :: proc "c" (music: ^Music) -> cstring ---
```

### [GetMusicTitleTag ¶](#GetMusicTitleTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L132)

```
GetMusicTitleTag :: proc "c" (music: ^Music) -> cstring ---
```

### [GetMusicType ¶](#GetMusicType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L130)

```
GetMusicType :: proc "c" (music: ^Music) -> MusicType ---
```

### [GetMusicVolume ¶](#GetMusicVolume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L185)

```
GetMusicVolume :: proc "c" (music: ^Music) -> i32 ---
```

### [GetNumChunkDecoders ¶](#GetNumChunkDecoders) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L124)

```
GetNumChunkDecoders :: proc "c" () -> i32 ---
```

### [GetNumMusicDecoders ¶](#GetNumMusicDecoders) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L127)

```
GetNumMusicDecoders :: proc "c" () -> i32 ---
```

### [GetSoundFonts ¶](#GetSoundFonts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L215)

```
GetSoundFonts :: proc "c" () -> cstring ---
```

### [GetSynchroValue ¶](#GetSynchroValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L213)

```
GetSynchroValue :: proc "c" () -> i32 ---
```

### [GetTimidityCfg ¶](#GetTimidityCfg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L218)

```
GetTimidityCfg :: proc "c" () -> cstring ---
```

### [GroupAvailable ¶](#GroupAvailable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L173)

```
GroupAvailable :: proc "c" (tag: i32) -> i32 ---
```

### [GroupChannel ¶](#GroupChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L171)

```
GroupChannel :: proc "c" (which: i32, tag: i32) -> i32 ---
```

### [GroupChannels ¶](#GroupChannels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L172)

```
GroupChannels :: proc "c" (from, to: i32, tag: i32) -> i32 ---
```

### [GroupCount ¶](#GroupCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L174)

```
GroupCount :: proc "c" (tag: i32) -> i32 ---
```

### [GroupNewer ¶](#GroupNewer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L176)

```
GroupNewer :: proc "c" (tag: i32) -> i32 ---
```

### [GroupOldest ¶](#GroupOldest) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L175)

```
GroupOldest :: proc "c" (tag: i32) -> i32 ---
```

### [HaltChannel ¶](#HaltChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L186)

```
HaltChannel :: proc "c" (channel: i32) -> i32 ---
```

### [HaltGroup ¶](#HaltGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L187)

```
HaltGroup :: proc "c" (tag: i32) -> i32 ---
```

### [HaltMusic ¶](#HaltMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L188)

```
HaltMusic :: proc "c" () -> i32 ---
```

### [HasChunkDecoder ¶](#HasChunkDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L126)

```
HasChunkDecoder :: proc "c" (name: cstring) -> sdl2.bool ---
```

### [HasMusicDecoder ¶](#HasMusicDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L129)

```
HasMusicDecoder :: proc "c" (name: cstring) -> sdl2.bool ---
```

### [HookMusic ¶](#HookMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L138)

```
HookMusic :: proc "c" (mix_func: MixFunc, arg: rawptr) ---
```

### [HookMusicFinished ¶](#HookMusicFinished) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L139)

```
HookMusicFinished :: proc "c" (music_finished: proc "c" ()) ---
```

### [Init ¶](#Init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L109)

```
Init :: proc "c" (flags: InitFlags) -> i32 ---
```

### [Linked\_Version ¶](#Linked_Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L107)

```
Linked_Version :: proc "c" () -> ^sdl2.version ---
```

### [LoadMUS ¶](#LoadMUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L117)

```
LoadMUS :: proc "c" (file: cstring) -> ^Music ---
```

### [LoadMUSType\_RW ¶](#LoadMUSType_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L119)

```
LoadMUSType_RW :: proc "c" (src: ^sdl2.RWops, type: MusicType, freesrc: sdl2.bool) -> ^Music ---
```

### [LoadMUS\_RW ¶](#LoadMUS_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L118)

```
LoadMUS_RW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool) -> ^Music ---
```

### [LoadWAV ¶](#LoadWAV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L98)

```
LoadWAV :: proc "c" (file: cstring) -> ^Chunk {…}
```

### [LoadWAV\_RW ¶](#LoadWAV_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L116)

```
LoadWAV_RW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool) -> ^Chunk ---
```

### [ModMusicJumpToOrder ¶](#ModMusicJumpToOrder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L202)

```
ModMusicJumpToOrder :: proc "c" (order: i32) -> i32 ---
```

### [MusicDuration ¶](#MusicDuration) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L205)

```
MusicDuration :: proc "c" (music: ^Music) -> f64 ---
```

### [OpenAudio ¶](#OpenAudio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L112)

```
OpenAudio :: proc "c" (frequency: i32, format: u16, channels: i32, chunksize: i32) -> i32 ---
```

### [OpenAudioDevice ¶](#OpenAudioDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L113)

```
OpenAudioDevice :: proc "c" (
	frequency:       i32, 
	format:          u16, 
	channels:        i32, 
	chunksize:       i32, 
	device:          cstring, 
	allowed_changed: i32, 
) -> i32 ---
```

### [Pause ¶](#Pause) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L195)

```
Pause :: proc "c" (channel: i32) ---
```

### [PauseMusic ¶](#PauseMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L198)

```
PauseMusic :: proc "c" () ---
```

### [Paused ¶](#Paused) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L197)

```
Paused :: proc "c" (channel: i32) -> i32 ---
```

### [PausedMusic ¶](#PausedMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L201)

```
PausedMusic :: proc "c" () -> i32 ---
```

### [PlayChannel ¶](#PlayChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L152)

```
PlayChannel :: proc "c" (channel: i32, chunk: ^Chunk, loops: i32) -> i32 {…}
```

### [PlayChannelTimed ¶](#PlayChannelTimed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L177)

```
PlayChannelTimed :: proc "c" (channel: i32, chunk: ^Chunk, loops: i32, ticks: i32) -> i32 ---
```

### [PlayMusic ¶](#PlayMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L178)

```
PlayMusic :: proc "c" (music: ^Music, loops: i32) -> i32 ---
```

### [Playing ¶](#Playing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L209)

```
Playing :: proc "c" (channel: i32) -> i32 ---
```

### [PlayingMusic ¶](#PlayingMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L210)

```
PlayingMusic :: proc "c" () -> i32 ---
```

### [QuerySpec ¶](#QuerySpec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L115)

```
QuerySpec :: proc "c" (frequency: ^i32, format: ^u16, channels: ^i32) -> i32 ---
```

### [QuickLoad\_RAW ¶](#QuickLoad_RAW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L121)

```
QuickLoad_RAW :: proc "c" (mem: [^]u8, len: u32) -> ^Chunk ---
```

### [QuickLoad\_WAV ¶](#QuickLoad_WAV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L120)

```
QuickLoad_WAV :: proc "c" (mem: [^]u8) -> ^Chunk ---
```

### [Quit ¶](#Quit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L110)

```
Quit :: proc "c" () ---
```

### [RegisterEffect ¶](#RegisterEffect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L162)

```
RegisterEffect :: proc "c" (chan: i32, f: EffectFunc_t, d: EffectDone_t, arg: rawptr) -> i32 ---
```

### [ReserveChannels ¶](#ReserveChannels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L170)

```
ReserveChannels :: proc "c" (num: i32) -> i32 ---
```

### [Resume ¶](#Resume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L196)

```
Resume :: proc "c" (channel: i32) ---
```

### [ResumeMusic ¶](#ResumeMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L199)

```
ResumeMusic :: proc "c" () ---
```

### [RewindMusic ¶](#RewindMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L200)

```
RewindMusic :: proc "c" () ---
```

### [SetDistance ¶](#SetDistance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L168)

```
SetDistance :: proc "c" (channel: i32, distance: u8) -> i32 ---
```

### [SetMusicCMD ¶](#SetMusicCMD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L211)

```
SetMusicCMD :: proc "c" (command: cstring) -> i32 ---
```

### [SetMusicPosition ¶](#SetMusicPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L203)

```
SetMusicPosition :: proc "c" (position: f64) -> i32 ---
```

### [SetPanning ¶](#SetPanning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L166)

```
SetPanning :: proc "c" (channel: i32, left, right: u8) -> i32 ---
```

### [SetPosition ¶](#SetPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L167)

```
SetPosition :: proc "c" (channel: i32, angle: i16, distance: u8) -> i32 ---
```

### [SetPostMix ¶](#SetPostMix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L137)

```
SetPostMix :: proc "c" (mix_func: MixFunc, arg: rawptr) ---
```

### [SetReverseStereo ¶](#SetReverseStereo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L169)

```
SetReverseStereo :: proc "c" (channel: i32, flip: sdl2.bool) -> i32 ---
```

### [SetSoundFonts ¶](#SetSoundFonts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L214)

```
SetSoundFonts :: proc "c" (paths: cstring) -> i32 ---
```

### [SetSynchroValue ¶](#SetSynchroValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L212)

```
SetSynchroValue :: proc "c" (value: i32) -> i32 ---
```

### [SetTimidityCfg ¶](#SetTimidityCfg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L217)

```
SetTimidityCfg :: proc "c" (path: cstring) -> i32 ---
```

### [UnregisterAllEffects ¶](#UnregisterAllEffects) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L164)

```
UnregisterAllEffects :: proc "c" (channel: i32) -> i32 ---
```

### [UnregisterEffect ¶](#UnregisterEffect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L163)

```
UnregisterEffect :: proc "c" (channel: i32, f: EffectFunc_t) -> i32 ---
```

### [Volume ¶](#Volume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L182)

```
Volume :: proc "c" (channel: i32, volume: i32) -> i32 ---
```

### [VolumeChunk ¶](#VolumeChunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L183)

```
VolumeChunk :: proc "c" (chunk: ^Chunk, volume: i32) -> i32 ---
```

### [VolumeMusic ¶](#VolumeMusic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin#L184)

```
VolumeMusic :: proc "c" (volume: i32) -> i32 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [sdl\_mixer.odin](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/mixer/sdl_mixer.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.846355100 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Chunk](#Chunk)
    + [EffectDone\_t](#EffectDone_t)
    + [EffectFunc\_t](#EffectFunc_t)
    + [Fading](#Fading)
    + [InitFlag](#InitFlag)
    + [InitFlags](#InitFlags)
    + [MixFunc](#MixFunc)
    + [Music](#Music)
    + [MusicType](#MusicType)
    + [bool](#bool)
  * [Constants](#pkg-Constants)
    + [CHANNELS](#CHANNELS)
    + [CHANNEL\_POST](#CHANNEL_POST)
    + [DEFAULT\_CHANNELS](#DEFAULT_CHANNELS)
    + [DEFAULT\_FORMAT](#DEFAULT_FORMAT)
    + [DEFAULT\_FREQUENCY](#DEFAULT_FREQUENCY)
    + [EFFECTSMAXSPEED](#EFFECTSMAXSPEED)
    + [FADING\_IN](#FADING_IN)
    + [FADING\_OUT](#FADING_OUT)
    + [INIT\_FLAC](#INIT_FLAC)
    + [INIT\_MID](#INIT_MID)
    + [INIT\_MOD](#INIT_MOD)
    + [INIT\_MP3](#INIT_MP3)
    + [INIT\_OGG](#INIT_OGG)
    + [INIT\_OPUS](#INIT_OPUS)
    + [MAJOR\_VERSION](#MAJOR_VERSION)
    + [MAX\_VOLUME](#MAX_VOLUME)
    + [MINOR\_VERSION](#MINOR_VERSION)
    + [MUS\_CMD](#MUS_CMD)
    + [MUS\_FLAC](#MUS_FLAC)
    + [MUS\_MID](#MUS_MID)
    + [MUS\_MOD](#MUS_MOD)
    + [MUS\_MODPLUG\_UNUSED](#MUS_MODPLUG_UNUSED)
    + [MUS\_MP3](#MUS_MP3)
    + [MUS\_MP3\_MAD\_UNUSED](#MUS_MP3_MAD_UNUSED)
    + [MUS\_NONE](#MUS_NONE)
    + [MUS\_OGG](#MUS_OGG)
    + [MUS\_OPUS](#MUS_OPUS)
    + [MUS\_WAV](#MUS_WAV)
    + [NO\_FADING](#NO_FADING)
    + [PATCHLEVEL](#PATCHLEVEL)
  * [Procedures](#pkg-Procedures)
    + [AllocateChannels](#AllocateChannels)
    + [ChannelFinished](#ChannelFinished)
    + [CloseAudio](#CloseAudio)
    + [EachSoundFont](#EachSoundFont)
    + [ExpireChannel](#ExpireChannel)
    + [FadeInChannel](#FadeInChannel)
    + [FadeInChannelTimed](#FadeInChannelTimed)
    + [FadeInMusic](#FadeInMusic)
    + [FadeInMusicPos](#FadeInMusicPos)
    + [FadeOutChannel](#FadeOutChannel)
    + [FadeOutGroup](#FadeOutGroup)
    + [FadeOutMusic](#FadeOutMusic)
    + [FadingChannel](#FadingChannel)
    + [FadingMusic](#FadingMusic)
    + [FreeChunk](#FreeChunk)
    + [FreeMusic](#FreeMusic)
    + [GetChunk](#GetChunk)
    + [GetChunkDecoder](#GetChunkDecoder)
    + [GetMusicAlbumTag](#GetMusicAlbumTag)
    + [GetMusicArtistTag](#GetMusicArtistTag)
    + [GetMusicCopyrightTag](#GetMusicCopyrightTag)
    + [GetMusicDecoder](#GetMusicDecoder)
    + [GetMusicHookData](#GetMusicHookData)
    + [GetMusicLoopEndTime](#GetMusicLoopEndTime)
    + [GetMusicLoopLengthTime](#GetMusicLoopLengthTime)
    + [GetMusicLoopStartTime](#GetMusicLoopStartTime)
    + [GetMusicPosition](#GetMusicPosition)
    + [GetMusicTitle](#GetMusicTitle)
    + [GetMusicTitleTag](#GetMusicTitleTag)
    + [GetMusicType](#GetMusicType)
    + [GetMusicVolume](#GetMusicVolume)
    + [GetNumChunkDecoders](#GetNumChunkDecoders)
    + [GetNumMusicDecoders](#GetNumMusicDecoders)
    + [GetSoundFonts](#GetSoundFonts)
    + [GetSynchroValue](#GetSynchroValue)
    + [GetTimidityCfg](#GetTimidityCfg)
    + [GroupAvailable](#GroupAvailable)
    + [GroupChannel](#GroupChannel)
    + [GroupChannels](#GroupChannels)
    + [GroupCount](#GroupCount)
    + [GroupNewer](#GroupNewer)
    + [GroupOldest](#GroupOldest)
    + [HaltChannel](#HaltChannel)
    + [HaltGroup](#HaltGroup)
    + [HaltMusic](#HaltMusic)
    + [HasChunkDecoder](#HasChunkDecoder)
    + [HasMusicDecoder](#HasMusicDecoder)
    + [HookMusic](#HookMusic)
    + [HookMusicFinished](#HookMusicFinished)
    + [Init](#Init)
    + [Linked\_Version](#Linked_Version)
    + [LoadMUS](#LoadMUS)
    + [LoadMUSType\_RW](#LoadMUSType_RW)
    + [LoadMUS\_RW](#LoadMUS_RW)
    + [LoadWAV](#LoadWAV)
    + [LoadWAV\_RW](#LoadWAV_RW)
    + [ModMusicJumpToOrder](#ModMusicJumpToOrder)
    + [MusicDuration](#MusicDuration)
    + [OpenAudio](#OpenAudio)
    + [OpenAudioDevice](#OpenAudioDevice)
    + [Pause](#Pause)
    + [PauseMusic](#PauseMusic)
    + [Paused](#Paused)
    + [PausedMusic](#PausedMusic)
    + [PlayChannel](#PlayChannel)
    + [PlayChannelTimed](#PlayChannelTimed)
    + [PlayMusic](#PlayMusic)
    + [Playing](#Playing)
    + [PlayingMusic](#PlayingMusic)
    + [QuerySpec](#QuerySpec)
    + [QuickLoad\_RAW](#QuickLoad_RAW)
    + [QuickLoad\_WAV](#QuickLoad_WAV)
    + [Quit](#Quit)
    + [RegisterEffect](#RegisterEffect)
    + [ReserveChannels](#ReserveChannels)
    + [Resume](#Resume)
    + [ResumeMusic](#ResumeMusic)
    + [RewindMusic](#RewindMusic)
    + [SetDistance](#SetDistance)
    + [SetMusicCMD](#SetMusicCMD)
    + [SetMusicPosition](#SetMusicPosition)
    + [SetPanning](#SetPanning)
    + [SetPosition](#SetPosition)
    + [SetPostMix](#SetPostMix)
    + [SetReverseStereo](#SetReverseStereo)
    + [SetSoundFonts](#SetSoundFonts)
    + [SetSynchroValue](#SetSynchroValue)
    + [SetTimidityCfg](#SetTimidityCfg)
    + [UnregisterAllEffects](#UnregisterAllEffects)
    + [UnregisterEffect](#UnregisterEffect)
    + [Volume](#Volume)
    + [VolumeChunk](#VolumeChunk)
    + [VolumeMusic](#VolumeMusic)
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