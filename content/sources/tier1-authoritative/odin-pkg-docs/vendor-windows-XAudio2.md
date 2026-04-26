package windows/XAudio2 - pkg.odin-lang.org 






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



Current Package: *[windows\_xaudio2](/vendor/windows/XAudio2)*

  

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
2. windows
3. [XAudio2](/vendor/windows/XAudio2)

# package vendor:windows/XAudio2 [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [Windows XAudio2](https://learn.microsoft.com/en-us/windows/win32/xaudio2/xaudio2-introduction).

Compiling for Windows 10 RS5 (1809) and later

## Index

Types (80)

* [AUDIO\_STREAM\_CATEGORY](#AUDIO_STREAM_CATEGORY)
* [BUFFER](#BUFFER)
* [BUFFER\_WMA](#BUFFER_WMA)
* [CALCULATE\_FLAG](#CALCULATE_FLAG)
* [CALCULATE\_FLAGS](#CALCULATE_FLAGS)
* [CONE](#CONE)
* [DEBUG\_CONFIGURATION](#DEBUG_CONFIGURATION)
* [DEBUG\_CONFIG\_FLAG](#DEBUG_CONFIG_FLAG)
* [DEBUG\_CONFIG\_FLAGS](#DEBUG_CONFIG_FLAGS)
* [DISTANCE\_CURVE](#DISTANCE_CURVE)
* [DISTANCE\_CURVE\_POINT](#DISTANCE_CURVE_POINT)
* [DSP\_SETTINGS](#DSP_SETTINGS)
* [EFFECT\_CHAIN](#EFFECT_CHAIN)
* [EFFECT\_DESCRIPTOR](#EFFECT_DESCRIPTOR)
* [EMITTER](#EMITTER)
* [FILTER\_PARAMETERS](#FILTER_PARAMETERS)
* [FILTER\_TYPE](#FILTER_TYPE)
* [FLAG](#FLAG)
* [FLAGS](#FLAGS)
* [FXECHO\_INITDATA](#FXECHO_INITDATA)
* [FXECHO\_PARAMETERS](#FXECHO_PARAMETERS)
* [FXEQ\_PARAMETERS](#FXEQ_PARAMETERS)
* [FXMASTERINGLIMITER\_PARAMETERS](#FXMASTERINGLIMITER_PARAMETERS)
* [FXREVERB\_PARAMETERS](#FXREVERB_PARAMETERS)
* [HANDLE](#HANDLE)
* [HRESULT](#HRESULT)
* [HrtfApoInit](#HrtfApoInit)
* [HrtfDirectivity](#HrtfDirectivity)
* [HrtfDirectivityCardioid](#HrtfDirectivityCardioid)
* [HrtfDirectivityCone](#HrtfDirectivityCone)
* [HrtfDirectivityType](#HrtfDirectivityType)
* [HrtfDistanceDecay](#HrtfDistanceDecay)
* [HrtfDistanceDecayType](#HrtfDistanceDecayType)
* [HrtfEnvironment](#HrtfEnvironment)
* [HrtfOrientation](#HrtfOrientation)
* [HrtfPosition](#HrtfPosition)
* [IUnknown](#IUnknown)
* [IUnknown\_VTable](#IUnknown_VTable)
* [IXAPO](#IXAPO)
* [IXAPOHrtfParameters](#IXAPOHrtfParameters)
* [IXAPOHrtfParameters\_VTable](#IXAPOHrtfParameters_VTable)
* [IXAPOParameters](#IXAPOParameters)
* [IXAPOParameters\_VTable](#IXAPOParameters_VTable)
* [IXAPO\_VTable](#IXAPO_VTable)
* [IXAudio2](#IXAudio2)
* [IXAudio2EngineCallback](#IXAudio2EngineCallback)
* [IXAudio2EngineCallback\_VTable](#IXAudio2EngineCallback_VTable)
* [IXAudio2Extension](#IXAudio2Extension)
* [IXAudio2Extension\_VTable](#IXAudio2Extension_VTable)
* [IXAudio2MasteringVoice](#IXAudio2MasteringVoice)
* [IXAudio2MasteringVoice\_VTable](#IXAudio2MasteringVoice_VTable)
* [IXAudio2SourceVoice](#IXAudio2SourceVoice)
* [IXAudio2SourceVoice\_VTable](#IXAudio2SourceVoice_VTable)
* [IXAudio2SubmixVoice](#IXAudio2SubmixVoice)
* [IXAudio2SubmixVoice\_VTable](#IXAudio2SubmixVoice_VTable)
* [IXAudio2Voice](#IXAudio2Voice)
* [IXAudio2VoiceCallback](#IXAudio2VoiceCallback)
* [IXAudio2VoiceCallback\_VTable](#IXAudio2VoiceCallback_VTable)
* [IXAudio2Voice\_VTable](#IXAudio2Voice_VTable)
* [IXAudio2\_VTable](#IXAudio2_VTable)
* [LISTENER](#LISTENER)
* [PERFORMANCE\_DATA](#PERFORMANCE_DATA)
* [PROCESSOR\_FLAG](#PROCESSOR_FLAG)
* [PROCESSOR\_FLAGS](#PROCESSOR_FLAGS)
* [REVERB\_I3DL2\_PARAMETERS](#REVERB_I3DL2_PARAMETERS)
* [REVERB\_PARAMETERS](#REVERB_PARAMETERS)
* [SEND\_DESCRIPTOR](#SEND_DESCRIPTOR)
* [SPEAKER\_FLAGS](#SPEAKER_FLAGS)
* [VECTOR](#VECTOR)
* [VOICE\_DETAILS](#VOICE_DETAILS)
* [VOICE\_SENDS](#VOICE_SENDS)
* [VOICE\_STATE](#VOICE_STATE)
* [VOLUMEMETER\_LEVELS](#VOLUMEMETER_LEVELS)
* [WAVEFORMATEX](#WAVEFORMATEX)
* [XAPO\_BUFFER\_FLAGS](#XAPO_BUFFER_FLAGS)
* [XAPO\_FLAG](#XAPO_FLAG)
* [XAPO\_FLAGS](#XAPO_FLAGS)
* [XAPO\_LOCKFORPROCESS\_BUFFER\_PARAMETERS](#XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS)
* [XAPO\_PROCESS\_BUFFER\_PARAMETERS](#XAPO_PROCESS_BUFFER_PARAMETERS)
* [XAPO\_REGISTRATION\_PROPERTIES](#XAPO_REGISTRATION_PROPERTIES)

Constants (166)

* [COMMIT\_ALL](#COMMIT_ALL)
* [COMMIT\_NOW](#COMMIT_NOW)
* [DEFAULT\_CHANNELS](#DEFAULT_CHANNELS)
* [DEFAULT\_FILTER\_FREQUENCY](#DEFAULT_FILTER_FREQUENCY)
* [DEFAULT\_FILTER\_ONEOVERQ](#DEFAULT_FILTER_ONEOVERQ)
* [DEFAULT\_FILTER\_TYPE](#DEFAULT_FILTER_TYPE)
* [DEFAULT\_FREQ\_RATIO](#DEFAULT_FREQ_RATIO)
* [DEFAULT\_SAMPLERATE](#DEFAULT_SAMPLERATE)
* [DEVICE\_INVALIDATED](#DEVICE_INVALIDATED)
* [FXECHO\_DEFAULT\_DELAY](#FXECHO_DEFAULT_DELAY)
* [FXECHO\_DEFAULT\_FEEDBACK](#FXECHO_DEFAULT_FEEDBACK)
* [FXECHO\_DEFAULT\_WETDRYMIX](#FXECHO_DEFAULT_WETDRYMIX)
* [FXECHO\_MAX\_DELAY](#FXECHO_MAX_DELAY)
* [FXECHO\_MAX\_FEEDBACK](#FXECHO_MAX_FEEDBACK)
* [FXECHO\_MAX\_WETDRYMIX](#FXECHO_MAX_WETDRYMIX)
* [FXECHO\_MIN\_DELAY](#FXECHO_MIN_DELAY)
* [FXECHO\_MIN\_FEEDBACK](#FXECHO_MIN_FEEDBACK)
* [FXECHO\_MIN\_WETDRYMIX](#FXECHO_MIN_WETDRYMIX)
* [FXEQ\_DEFAULT\_BANDWIDTH](#FXEQ_DEFAULT_BANDWIDTH)
* [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_0](#FXEQ_DEFAULT_FREQUENCY_CENTER_0)
* [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_1](#FXEQ_DEFAULT_FREQUENCY_CENTER_1)
* [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_2](#FXEQ_DEFAULT_FREQUENCY_CENTER_2)
* [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_3](#FXEQ_DEFAULT_FREQUENCY_CENTER_3)
* [FXEQ\_DEFAULT\_GAIN](#FXEQ_DEFAULT_GAIN)
* [FXEQ\_MAX\_BANDWIDTH](#FXEQ_MAX_BANDWIDTH)
* [FXEQ\_MAX\_FRAMERATE](#FXEQ_MAX_FRAMERATE)
* [FXEQ\_MAX\_FREQUENCY\_CENTER](#FXEQ_MAX_FREQUENCY_CENTER)
* [FXEQ\_MAX\_GAIN](#FXEQ_MAX_GAIN)
* [FXEQ\_MIN\_BANDWIDTH](#FXEQ_MIN_BANDWIDTH)
* [FXEQ\_MIN\_FRAMERATE](#FXEQ_MIN_FRAMERATE)
* [FXEQ\_MIN\_FREQUENCY\_CENTER](#FXEQ_MIN_FREQUENCY_CENTER)
* [FXEQ\_MIN\_GAIN](#FXEQ_MIN_GAIN)
* [FXEQ\_UUID\_STRING](#FXEQ_UUID_STRING)
* [FXEcho\_UUID\_STRING](#FXEcho_UUID_STRING)
* [FXLOUDNESS\_DEFAULT\_MOMENTARY\_MS](#FXLOUDNESS_DEFAULT_MOMENTARY_MS)
* [FXLOUDNESS\_DEFAULT\_SHORTTERM\_MS](#FXLOUDNESS_DEFAULT_SHORTTERM_MS)
* [FXMASTERINGLIMITER\_DEFAULT\_LOUDNESS](#FXMASTERINGLIMITER_DEFAULT_LOUDNESS)
* [FXMASTERINGLIMITER\_DEFAULT\_RELEASE](#FXMASTERINGLIMITER_DEFAULT_RELEASE)
* [FXMASTERINGLIMITER\_MAX\_LOUDNESS](#FXMASTERINGLIMITER_MAX_LOUDNESS)
* [FXMASTERINGLIMITER\_MAX\_RELEASE](#FXMASTERINGLIMITER_MAX_RELEASE)
* [FXMASTERINGLIMITER\_MIN\_LOUDNESS](#FXMASTERINGLIMITER_MIN_LOUDNESS)
* [FXMASTERINGLIMITER\_MIN\_RELEASE](#FXMASTERINGLIMITER_MIN_RELEASE)
* [FXMasteringLimiter\_UUID\_STRING](#FXMasteringLimiter_UUID_STRING)
* [FXREVERB\_DEFAULT\_DIFFUSION](#FXREVERB_DEFAULT_DIFFUSION)
* [FXREVERB\_DEFAULT\_ROOMSIZE](#FXREVERB_DEFAULT_ROOMSIZE)
* [FXREVERB\_MAX\_DIFFUSION](#FXREVERB_MAX_DIFFUSION)
* [FXREVERB\_MAX\_ROOMSIZE](#FXREVERB_MAX_ROOMSIZE)
* [FXREVERB\_MIN\_DIFFUSION](#FXREVERB_MIN_DIFFUSION)
* [FXREVERB\_MIN\_ROOMSIZE](#FXREVERB_MIN_ROOMSIZE)
* [FXReverb\_UUID\_STRING](#FXReverb_UUID_STRING)
* [HANDLE\_BYTESIZE](#HANDLE_BYTESIZE)
* [HRTF\_DEFAULT\_CUTOFF\_DISTANCE](#HRTF_DEFAULT_CUTOFF_DISTANCE)
* [HRTF\_DEFAULT\_UNITY\_GAIN\_DISTANCE](#HRTF_DEFAULT_UNITY_GAIN_DISTANCE)
* [HRTF\_MAX\_GAIN\_LIMIT](#HRTF_MAX_GAIN_LIMIT)
* [HRTF\_MIN\_GAIN\_LIMIT](#HRTF_MIN_GAIN_LIMIT)
* [HRTF\_MIN\_UNITY\_GAIN\_DISTANCE](#HRTF_MIN_UNITY_GAIN_DISTANCE)
* [INVALID\_CALL](#INVALID_CALL)
* [INVALID\_OPSET](#INVALID_OPSET)
* [IXAPOHrtfParameters\_UUID\_STRING](#IXAPOHrtfParameters_UUID_STRING)
* [IXAPOParameters\_UUID\_STRING](#IXAPOParameters_UUID_STRING)
* [IXAPO\_UUID\_STRING](#IXAPO_UUID_STRING)
* [IXAudio2Extension\_UUID\_STRING](#IXAudio2Extension_UUID_STRING)
* [IXAudio2\_UUID\_STRING](#IXAudio2_UUID_STRING)
* [LOOP\_INFINITE](#LOOP_INFINITE)
* [MAX\_AUDIO\_CHANNELS](#MAX_AUDIO_CHANNELS)
* [MAX\_BUFFERS\_SYSTEM](#MAX_BUFFERS_SYSTEM)
* [MAX\_BUFFER\_BYTES](#MAX_BUFFER_BYTES)
* [MAX\_FILTER\_FREQUENCY](#MAX_FILTER_FREQUENCY)
* [MAX\_FILTER\_ONEOVERQ](#MAX_FILTER_ONEOVERQ)
* [MAX\_FREQ\_RATIO](#MAX_FREQ_RATIO)
* [MAX\_INSTANCES](#MAX_INSTANCES)
* [MAX\_LOOP\_COUNT](#MAX_LOOP_COUNT)
* [MAX\_QUEUED\_BUFFERS](#MAX_QUEUED_BUFFERS)
* [MAX\_RATIO\_TIMES\_RATE\_XMA\_MONO](#MAX_RATIO_TIMES_RATE_XMA_MONO)
* [MAX\_RATIO\_TIMES\_RATE\_XMA\_MULTICHANNEL](#MAX_RATIO_TIMES_RATE_XMA_MULTICHANNEL)
* [MAX\_SAMPLE\_RATE](#MAX_SAMPLE_RATE)
* [MAX\_VOLUME\_LEVEL](#MAX_VOLUME_LEVEL)
* [MIN\_FREQ\_RATIO](#MIN_FREQ_RATIO)
* [MIN\_SAMPLE\_RATE](#MIN_SAMPLE_RATE)
* [NO\_LOOP\_REGION](#NO_LOOP_REGION)
* [QUANTUM\_DENOMINATOR](#QUANTUM_DENOMINATOR)
* [QUANTUM\_MS](#QUANTUM_MS)
* [QUANTUM\_NUMERATOR](#QUANTUM_NUMERATOR)
* [REVERB\_DEFAULT\_7POINT1\_REAR\_DELAY](#REVERB_DEFAULT_7POINT1_REAR_DELAY)
* [REVERB\_DEFAULT\_7POINT1\_SIDE\_DELAY](#REVERB_DEFAULT_7POINT1_SIDE_DELAY)
* [REVERB\_DEFAULT\_DECAY\_TIME](#REVERB_DEFAULT_DECAY_TIME)
* [REVERB\_DEFAULT\_DENSITY](#REVERB_DEFAULT_DENSITY)
* [REVERB\_DEFAULT\_DISABLE\_LATE\_FIELD](#REVERB_DEFAULT_DISABLE_LATE_FIELD)
* [REVERB\_DEFAULT\_EARLY\_DIFFUSION](#REVERB_DEFAULT_EARLY_DIFFUSION)
* [REVERB\_DEFAULT\_HIGH\_EQ\_CUTOFF](#REVERB_DEFAULT_HIGH_EQ_CUTOFF)
* [REVERB\_DEFAULT\_HIGH\_EQ\_GAIN](#REVERB_DEFAULT_HIGH_EQ_GAIN)
* [REVERB\_DEFAULT\_LATE\_DIFFUSION](#REVERB_DEFAULT_LATE_DIFFUSION)
* [REVERB\_DEFAULT\_LOW\_EQ\_CUTOFF](#REVERB_DEFAULT_LOW_EQ_CUTOFF)
* [REVERB\_DEFAULT\_LOW\_EQ\_GAIN](#REVERB_DEFAULT_LOW_EQ_GAIN)
* [REVERB\_DEFAULT\_POSITION](#REVERB_DEFAULT_POSITION)
* [REVERB\_DEFAULT\_POSITION\_MATRIX](#REVERB_DEFAULT_POSITION_MATRIX)
* [REVERB\_DEFAULT\_REAR\_DELAY](#REVERB_DEFAULT_REAR_DELAY)
* [REVERB\_DEFAULT\_REFLECTIONS\_DELAY](#REVERB_DEFAULT_REFLECTIONS_DELAY)
* [REVERB\_DEFAULT\_REFLECTIONS\_GAIN](#REVERB_DEFAULT_REFLECTIONS_GAIN)
* [REVERB\_DEFAULT\_REVERB\_DELAY](#REVERB_DEFAULT_REVERB_DELAY)
* [REVERB\_DEFAULT\_REVERB\_GAIN](#REVERB_DEFAULT_REVERB_GAIN)
* [REVERB\_DEFAULT\_ROOM\_FILTER\_FREQ](#REVERB_DEFAULT_ROOM_FILTER_FREQ)
* [REVERB\_DEFAULT\_ROOM\_FILTER\_HF](#REVERB_DEFAULT_ROOM_FILTER_HF)
* [REVERB\_DEFAULT\_ROOM\_FILTER\_MAIN](#REVERB_DEFAULT_ROOM_FILTER_MAIN)
* [REVERB\_DEFAULT\_ROOM\_SIZE](#REVERB_DEFAULT_ROOM_SIZE)
* [REVERB\_DEFAULT\_WET\_DRY\_MIX](#REVERB_DEFAULT_WET_DRY_MIX)
* [REVERB\_MAX\_7POINT1\_REAR\_DELAY](#REVERB_MAX_7POINT1_REAR_DELAY)
* [REVERB\_MAX\_7POINT1\_SIDE\_DELAY](#REVERB_MAX_7POINT1_SIDE_DELAY)
* [REVERB\_MAX\_DENSITY](#REVERB_MAX_DENSITY)
* [REVERB\_MAX\_DIFFUSION](#REVERB_MAX_DIFFUSION)
* [REVERB\_MAX\_FRAMERATE](#REVERB_MAX_FRAMERATE)
* [REVERB\_MAX\_HIGH\_EQ\_CUTOFF](#REVERB_MAX_HIGH_EQ_CUTOFF)
* [REVERB\_MAX\_HIGH\_EQ\_GAIN](#REVERB_MAX_HIGH_EQ_GAIN)
* [REVERB\_MAX\_LOW\_EQ\_CUTOFF](#REVERB_MAX_LOW_EQ_CUTOFF)
* [REVERB\_MAX\_LOW\_EQ\_GAIN](#REVERB_MAX_LOW_EQ_GAIN)
* [REVERB\_MAX\_POSITION](#REVERB_MAX_POSITION)
* [REVERB\_MAX\_REAR\_DELAY](#REVERB_MAX_REAR_DELAY)
* [REVERB\_MAX\_REFLECTIONS\_DELAY](#REVERB_MAX_REFLECTIONS_DELAY)
* [REVERB\_MAX\_REFLECTIONS\_GAIN](#REVERB_MAX_REFLECTIONS_GAIN)
* [REVERB\_MAX\_REVERB\_DELAY](#REVERB_MAX_REVERB_DELAY)
* [REVERB\_MAX\_REVERB\_GAIN](#REVERB_MAX_REVERB_GAIN)
* [REVERB\_MAX\_ROOM\_FILTER\_FREQ](#REVERB_MAX_ROOM_FILTER_FREQ)
* [REVERB\_MAX\_ROOM\_FILTER\_HF](#REVERB_MAX_ROOM_FILTER_HF)
* [REVERB\_MAX\_ROOM\_FILTER\_MAIN](#REVERB_MAX_ROOM_FILTER_MAIN)
* [REVERB\_MAX\_ROOM\_SIZE](#REVERB_MAX_ROOM_SIZE)
* [REVERB\_MAX\_WET\_DRY\_MIX](#REVERB_MAX_WET_DRY_MIX)
* [REVERB\_MIN\_7POINT1\_REAR\_DELAY](#REVERB_MIN_7POINT1_REAR_DELAY)
* [REVERB\_MIN\_7POINT1\_SIDE\_DELAY](#REVERB_MIN_7POINT1_SIDE_DELAY)
* [REVERB\_MIN\_DECAY\_TIME](#REVERB_MIN_DECAY_TIME)
* [REVERB\_MIN\_DENSITY](#REVERB_MIN_DENSITY)
* [REVERB\_MIN\_DIFFUSION](#REVERB_MIN_DIFFUSION)
* [REVERB\_MIN\_FRAMERATE](#REVERB_MIN_FRAMERATE)
* [REVERB\_MIN\_HIGH\_EQ\_CUTOFF](#REVERB_MIN_HIGH_EQ_CUTOFF)
* [REVERB\_MIN\_HIGH\_EQ\_GAIN](#REVERB_MIN_HIGH_EQ_GAIN)
* [REVERB\_MIN\_LOW\_EQ\_CUTOFF](#REVERB_MIN_LOW_EQ_CUTOFF)
* [REVERB\_MIN\_LOW\_EQ\_GAIN](#REVERB_MIN_LOW_EQ_GAIN)
* [REVERB\_MIN\_POSITION](#REVERB_MIN_POSITION)
* [REVERB\_MIN\_REAR\_DELAY](#REVERB_MIN_REAR_DELAY)
* [REVERB\_MIN\_REFLECTIONS\_DELAY](#REVERB_MIN_REFLECTIONS_DELAY)
* [REVERB\_MIN\_REFLECTIONS\_GAIN](#REVERB_MIN_REFLECTIONS_GAIN)
* [REVERB\_MIN\_REVERB\_DELAY](#REVERB_MIN_REVERB_DELAY)
* [REVERB\_MIN\_REVERB\_GAIN](#REVERB_MIN_REVERB_GAIN)
* [REVERB\_MIN\_ROOM\_FILTER\_FREQ](#REVERB_MIN_ROOM_FILTER_FREQ)
* [REVERB\_MIN\_ROOM\_FILTER\_HF](#REVERB_MIN_ROOM_FILTER_HF)
* [REVERB\_MIN\_ROOM\_FILTER\_MAIN](#REVERB_MIN_ROOM_FILTER_MAIN)
* [REVERB\_MIN\_ROOM\_SIZE](#REVERB_MIN_ROOM_SIZE)
* [REVERB\_MIN\_WET\_DRY\_MIX](#REVERB_MIN_WET_DRY_MIX)
* [SPEAKER\_2POINT1](#SPEAKER_2POINT1)
* [SPEAKER\_4POINT1](#SPEAKER_4POINT1)
* [SPEAKER\_5POINT1](#SPEAKER_5POINT1)
* [SPEAKER\_5POINT1\_SURROUND](#SPEAKER_5POINT1_SURROUND)
* [SPEAKER\_7POINT1](#SPEAKER_7POINT1)
* [SPEAKER\_7POINT1\_SURROUND](#SPEAKER_7POINT1_SURROUND)
* [SPEAKER\_MONO](#SPEAKER_MONO)
* [SPEAKER\_QUAD](#SPEAKER_QUAD)
* [SPEAKER\_STEREO](#SPEAKER_STEREO)
* [SPEAKER\_SURROUND](#SPEAKER_SURROUND)
* [SPEED\_OF\_SOUND](#SPEED_OF_SOUND)
* [USE\_DEFAULT\_PROCESSOR](#USE_DEFAULT_PROCESSOR)
* [XAPO\_CREATION\_FAILED](#XAPO_CREATION_FAILED)
* [XAPO\_MAX\_CHANNELS](#XAPO_MAX_CHANNELS)
* [XAPO\_MAX\_FRAMERATE](#XAPO_MAX_FRAMERATE)
* [XAPO\_MIN\_CHANNELS](#XAPO_MIN_CHANNELS)
* [XAPO\_MIN\_FRAMERATE](#XAPO_MIN_FRAMERATE)
* [XAPO\_REGISTRATION\_STRING\_LENGTH](#XAPO_REGISTRATION_STRING_LENGTH)
* [XMA\_DECODER\_ERROR](#XMA_DECODER_ERROR)

Variables (43)

* [Default\_DirectionalCone](#Default_DirectionalCone)
* [Default\_LinearCurve](#Default_LinearCurve)
* [Default\_LinearCurvePoints](#Default_LinearCurvePoints)
* [FORMAT\_UNSUPPORTED](#FORMAT_UNSUPPORTED)
* [FXEQ\_UUID](#FXEQ_UUID)
* [FXEcho\_UUID](#FXEcho_UUID)
* [FXMasteringLimiter\_UUID](#FXMasteringLimiter_UUID)
* [FXReverb\_UUID](#FXReverb_UUID)
* [I3DL2\_PRESET\_ALLEY](#I3DL2_PRESET_ALLEY)
* [I3DL2\_PRESET\_ARENA](#I3DL2_PRESET_ARENA)
* [I3DL2\_PRESET\_AUDITORIUM](#I3DL2_PRESET_AUDITORIUM)
* [I3DL2\_PRESET\_BATHROOM](#I3DL2_PRESET_BATHROOM)
* [I3DL2\_PRESET\_CARPETEDHALLWAY](#I3DL2_PRESET_CARPETEDHALLWAY)
* [I3DL2\_PRESET\_CAVE](#I3DL2_PRESET_CAVE)
* [I3DL2\_PRESET\_CITY](#I3DL2_PRESET_CITY)
* [I3DL2\_PRESET\_CONCERTHALL](#I3DL2_PRESET_CONCERTHALL)
* [I3DL2\_PRESET\_DEFAULT](#I3DL2_PRESET_DEFAULT)
* [I3DL2\_PRESET\_FOREST](#I3DL2_PRESET_FOREST)
* [I3DL2\_PRESET\_GENERIC](#I3DL2_PRESET_GENERIC)
* [I3DL2\_PRESET\_HALLWAY](#I3DL2_PRESET_HALLWAY)
* [I3DL2\_PRESET\_HANGAR](#I3DL2_PRESET_HANGAR)
* [I3DL2\_PRESET\_LARGEHALL](#I3DL2_PRESET_LARGEHALL)
* [I3DL2\_PRESET\_LARGEROOM](#I3DL2_PRESET_LARGEROOM)
* [I3DL2\_PRESET\_LIVINGROOM](#I3DL2_PRESET_LIVINGROOM)
* [I3DL2\_PRESET\_MEDIUMHALL](#I3DL2_PRESET_MEDIUMHALL)
* [I3DL2\_PRESET\_MEDIUMROOM](#I3DL2_PRESET_MEDIUMROOM)
* [I3DL2\_PRESET\_MOUNTAINS](#I3DL2_PRESET_MOUNTAINS)
* [I3DL2\_PRESET\_PADDEDCELL](#I3DL2_PRESET_PADDEDCELL)
* [I3DL2\_PRESET\_PARKINGLOT](#I3DL2_PRESET_PARKINGLOT)
* [I3DL2\_PRESET\_PLAIN](#I3DL2_PRESET_PLAIN)
* [I3DL2\_PRESET\_PLATE](#I3DL2_PRESET_PLATE)
* [I3DL2\_PRESET\_QUARRY](#I3DL2_PRESET_QUARRY)
* [I3DL2\_PRESET\_ROOM](#I3DL2_PRESET_ROOM)
* [I3DL2\_PRESET\_SEWERPIPE](#I3DL2_PRESET_SEWERPIPE)
* [I3DL2\_PRESET\_SMALLROOM](#I3DL2_PRESET_SMALLROOM)
* [I3DL2\_PRESET\_STONECORRIDOR](#I3DL2_PRESET_STONECORRIDOR)
* [I3DL2\_PRESET\_STONEROOM](#I3DL2_PRESET_STONEROOM)
* [I3DL2\_PRESET\_UNDERWATER](#I3DL2_PRESET_UNDERWATER)
* [IXAPOHrtfParameters\_UUID](#IXAPOHrtfParameters_UUID)
* [IXAPOParameters\_UUID](#IXAPOParameters_UUID)
* [IXAPO\_UUID](#IXAPO_UUID)
* [IXAudio2Extension\_UUID](#IXAudio2Extension_UUID)
* [IXAudio2\_UUID](#IXAudio2_UUID)

Procedures (15)

* [AmplitudeRatioToDecibels](#AmplitudeRatioToDecibels)
* [Calculate](#Calculate)
* [Create](#Create)
* [CreateAudioReverb](#CreateAudioReverb)
* [CreateAudioVolumeMeter](#CreateAudioVolumeMeter)
* [CreateFX](#CreateFX)
* [CreateHrtfApo](#CreateHrtfApo)
* [CutoffFrequencyToOnePoleCoefficient](#CutoffFrequencyToOnePoleCoefficient)
* [CutoffFrequencyToRadians](#CutoffFrequencyToRadians)
* [DecibelsToAmplitudeRatio](#DecibelsToAmplitudeRatio)
* [FrequencyRatioToSemitones](#FrequencyRatioToSemitones)
* [Initialize](#Initialize)
* [RadiansToCutoffFrequency](#RadiansToCutoffFrequency)
* [ReverbConvertI3DL2ToNative](#ReverbConvertI3DL2ToNative)
* [SemitonesToFrequencyRatio](#SemitonesToFrequencyRatio)

Procedure Groups (0)

This section is empty.

## Types

### [AUDIO\_STREAM\_CATEGORY ¶](#AUDIO_STREAM_CATEGORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L801)

```
AUDIO_STREAM_CATEGORY :: enum i32 {
	Other          = 0, 
	// ForegroundOnlyMedia = 1,
	// BackgroundCapableMedia = 2,
	Communications = 3, 
	Alerts         = 4, 
	SoundEffects   = 5, 
	GameEffects    = 6, 
	GameMedia      = 7, 
	GameChat       = 8, 
	Speech         = 9, 
	Movie          = 10, 
	Media          = 11, 
	FarFieldSpeech = 12, 
	UniformSpeech  = 13, 
	VoiceTyping    = 14, 
}
```

 

-------------------------------------------------------------------------
Description: Audio stream categories

Other - All other streams (default)
ForegroundOnlyMedia - (deprecated for Win10) Music, Streaming audio
BackgroundCapableMedia - (deprecated for Win10) Video with audio
Communications - VOIP, chat, phone call
Alerts - Alarm, Ring tones
SoundEffects - Sound effects, clicks, dings
GameEffects - Game sound effects
GameMedia - Background audio for games
GameChat - In game player chat
Speech - Speech recognition
Media - Music, Streaming audio
Movie - Video with audio
FarFieldSpeech - Capture of far field speech
UniformSpeech - Uniform, device agnostic speech processing
VoiceTyping - Dictation, typing by voice

### [BUFFER ¶](#BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L187)

```
BUFFER :: struct #packed {
	Flags:      FLAGS,
	// Either 0 or END_OF_STREAM.
	AudioBytes: u32,
	// Size of the audio data buffer in bytes.
	pAudioData: [^]u8 `fmt:"v,AudioBytes"`,
	// Pointer to the audio data buffer.
	PlayBegin:  u32,
	// First sample in this buffer to be played.
	PlayLength: u32,
	// Length of the region to be played in samples, or 0 to play the whole buffer.
	LoopBegin:  u32,
	// First sample of the region to be looped.
	LoopLength: u32,
	// Length of the desired loop region in samples, or 0 to loop the entire buffer.
	LoopCount:  u32,
	// Number of times to repeat the loop region, or LOOP_INFINITE to loop forever.
	pContext:   rawptr,
}
```

 

Used in IXAudio2SourceVoice.SubmitSourceBuffer

### [BUFFER\_WMA ¶](#BUFFER_WMA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L202)

```
BUFFER_WMA :: struct #packed {
	pDecodedPacketCumulativeBytes: [^]u32 `fmt:"v,PacketCount"`,
	// Decoded packet's cumulative size array. Each element is the number of bytes accumulated when the corresponding XWMA packet is decoded in order.  The array must have PacketCount elements.
	PacketCount:                   u32,
}
```

 

Used in IXAudio2SourceVoice.SubmitSourceBuffer when submitting XWMA data.
NOTE: If an XWMA sound is submitted in more than one buffer, each buffer's pDecodedPacketCumulativeBytes[PacketCount-1] value must be subtracted from all the entries in the next buffer's pDecodedPacketCumulativeBytes array.
And whether a sound is submitted in more than one buffer or not, the final buffer of the sound should use the END\_OF\_STREAM flag, or else the client must call IXAudio2SourceVoice.Discontinuity after submitting it.

### [CALCULATE\_FLAG ¶](#CALCULATE_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L68)

```
CALCULATE_FLAG :: enum u32 {
	MATRIX          = 0,  // enable matrix coefficient table calculation
	DELAY           = 1,  // enable delay time array calculation (stereo final mix only)
	LPF_DIRECT      = 2,  // enable LPF direct-path coefficient calculation
	LPF_REVERB      = 3,  // enable LPF reverb-path coefficient calculation
	REVERB          = 4,  // enable reverb send level calculation
	DOPPLER         = 5,  // enable doppler shift factor calculation
	EMITTER_ANGLE   = 6,  // enable emitter-to-listener interior angle calculation
	ZEROCENTER      = 16, // do not position to front center speaker, signal positioned to remaining speakers instead, front center destination channel will be zero in returned matrix coefficient table, valid only for matrix calculations with final mix formats that have a front center channel
	REDIRECT_TO_LFE = 17, // apply equal mix of all source channels to LFE destination channel, valid only for matrix calculations with sources that have no LFE channel and final mix formats that have an LFE channel
}
```

### [CALCULATE\_FLAGS ¶](#CALCULATE_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L67)

```
CALCULATE_FLAGS :: distinct bit_set[CALCULATE_FLAG; u32]
```

 

calculation control flags, used with Calculate




##### Related Procedures With Parameters

* [Calculate](/vendor/windows/XAudio2/#Calculate)

### [CONE ¶](#CONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L116)

```
CONE :: struct #packed {
	InnerAngle:  f32,
	// inner cone angle in radians, must be within [0.0, TAU]
	OuterAngle:  f32,
	// outer cone angle in radians, must be within [InnerAngle, TAU]
	InnerVolume: f32,
	// volume level scaler on/within inner cone, used only for matrix calculations, must be within [0.0, 2.0] when used
	OuterVolume: f32,
	// volume level scaler on/beyond outer cone, used only for matrix calculations, must be within [0.0, 2.0] when used
	InnerLPF:    f32,
	// LPF (both direct and reverb paths) coefficient subtrahend on/within inner cone, used only for LPF (both direct and reverb paths) calculations, must be within [0.0, 1.0] when used
	OuterLPF:    f32,
	// LPF (both direct and reverb paths) coefficient subtrahend on/beyond outer cone, used only for LPF (both direct and reverb paths) calculations, must be within [0.0, 1.0] when used
	InnerReverb: f32,
	// reverb send level scaler on/within inner cone, used only for reverb calculations, must be within [0.0, 2.0] when used
	OuterReverb: f32,
}
```

 

Cone:
Specifies directionality for a listener or single-channel emitter by modifying DSP behaviour with respect to its front orientation.
This is modeled using two sound cones: an inner cone and an outer cone. On/within the inner cone, DSP settings are scaled by the inner values.
On/beyond the outer cone, DSP settings are scaled by the outer values. If on both the cones, DSP settings are scaled by the inner values only.
Between the two cones, the scaler is linearly interpolated between the inner and outer values. Set both cone angles to 0 or TAU for omnidirectionality using only the outer or inner values respectively.

### [DEBUG\_CONFIGURATION ¶](#DEBUG_CONFIGURATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L243)

```
DEBUG_CONFIGURATION :: struct #packed {
	TraceMask:       DEBUG_CONFIG_FLAGS,
	// Bitmap of enabled debug message types.
	BreakMask:       DEBUG_CONFIG_FLAGS,
	// Message types that will break into the debugger.
	LogThreadID:     b32,
	// Whether to log the thread ID with each message.
	LogFileline:     b32,
	// Whether to log the source file and line number.
	LogFunctionName: b32,
	// Whether to log the function name.
	LogTiming:       b32,
}
```

 

Used in IXAudio2.SetDebugConfiguration

### [DEBUG\_CONFIG\_FLAG ¶](#DEBUG_CONFIG_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L256)

```
DEBUG_CONFIG_FLAG :: enum u32 {
	ERRORS     = 0,  // For handled errors with serious effects.
	WARNINGS   = 1,  // For handled errors that may be recoverable.
	INFO       = 2,  // Informational chit-chat (e.g. state changes).
	DETAIL     = 3,  // More detailed chit-chat.
	API_CALLS  = 4,  // Public API function entries and exits.
	FUNC_CALLS = 5,  // Internal function entries and exits.
	TIMING     = 6,  // Delays detected and other timing data.
	LOCKS      = 7,  // Usage of critical sections and mutexes.
	MEMORY     = 8,  // Memory heap usage information.
	STREAMING  = 12, // Audio streaming information.
}
```

### [DEBUG\_CONFIG\_FLAGS ¶](#DEBUG_CONFIG_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L255)

```
DEBUG_CONFIG_FLAGS :: distinct bit_set[DEBUG_CONFIG_FLAG; u32]
```

 

Values for the TraceMask and BreakMask bitmaps. Only ERRORS and WARNINGS are valid in BreakMask.
WARNINGS implies ERRORS, DETAIL implies INFO, and FUNC\_CALLS implies API\_CALLS.
By default, TraceMask is ERRORS and WARNINGS and all the other settings are zero.

### [DISTANCE\_CURVE ¶](#DISTANCE_CURVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L104)

```
DISTANCE_CURVE :: struct #packed {
	pPoints:    [^]DISTANCE_CURVE_POINT `fmt:"v,PointCount"`,
	// distance curve point array, must have at least PointCount elements with no duplicates and be sorted in ascending order with respect to Distance
	PointCount: u32,
}
```

 

Distance curve:
A piecewise curve made up of linear segments used to define DSP behaviour with respect to normalized distance.

Note that curve point distances are normalized within [0.0, 1.0].
EMITTER.CurveDistanceScaler must be used to scale the normalized distances to user-defined world units.
For distances beyond CurveDistanceScaler \* 1.0, pPoints[PointCount-1].DSPSetting is used as the DSP setting.

All distance curve spans must be such that:
pPoints[k-1].DSPSetting + ((pPoints[k].DSPSetting-pPoints[k-1].DSPSetting) / (pPoints[k].Distance-pPoints[k-1].Distance)) \* (pPoints[k].Distance-pPoints[k-1].Distance) != NAN or infinite values
For all points in the distance curve where 1 <= k < PointCount.

### [DISTANCE\_CURVE\_POINT ¶](#DISTANCE_CURVE_POINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L89)

```
DISTANCE_CURVE_POINT :: struct #packed {
	Distance:   f32,
	// normalized distance, must be within [0.0, 1.0]
	DSPSetting: f32,
}
```

 

Distance curve point:
Defines a DSP setting at a given normalized distance.

### [DSP\_SETTINGS ¶](#DSP_SETTINGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L185)

```
DSP_SETTINGS :: struct #packed {
	pMatrixCoefficients:       [^]f32,
	// [inout] matrix coefficient table, receives an array representing the volume level used to send from source channel S to destination channel D, stored as pMatrixCoefficients[SrcChannelCount * D + S], must have at least SrcChannelCount*DstChannelCount elements
	pDelayTimes:               [^]f32,
	// [inout] delay time array, receives delays for each destination channel in milliseconds, must have at least DstChannelCount elements (stereo final mix only)
	SrcChannelCount:           u32,
	// [in] number of source channels, must equal number of channels in respective emitter
	DstChannelCount:           u32,
	// [in] number of destination channels, must equal number of channels of the final mix
	LPFDirectCoefficient:      f32,
	// [out] LPF direct-path coefficient
	LPFReverbCoefficient:      f32,
	// [out] LPF reverb-path coefficient
	ReverbLevel:               f32,
	// [out] reverb send level
	DopplerFactor:             f32,
	// [out] doppler shift factor, scales resampler ratio for doppler shift effect, where the effective frequency = DopplerFactor * original frequency
	EmitterToListenerAngle:    f32,
	// [out] emitter-to-listener interior angle, expressed in radians with respect to the emitter's front orientation
	EmitterToListenerDistance: f32,
	// [out] distance in user-defined world units from the emitter base to listener position, always calculated
	EmitterVelocityComponent:  f32,
	// [out] component of emitter velocity vector projected onto emitter->listener vector in user-defined world units/second, calculated only for doppler
	ListenerVelocityComponent: f32,
}
```

 

DSP settings:
Receives results from a call to Calculate to be sent to the low-level audio rendering API for 3D signal processing.
The user is responsible for allocating the matrix coefficient table, delay time array, and initializing the channel counts when used.




##### Related Procedures With Parameters

* [Calculate](/vendor/windows/XAudio2/#Calculate)

### [EFFECT\_CHAIN ¶](#EFFECT_CHAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L164)

```
EFFECT_CHAIN :: struct #packed {
	EffectCount:        u32,
	// Number of effects in this voice's effect chain.
	pEffectDescriptors: [^]EFFECT_DESCRIPTOR `fmt:"v,EffectCount"`,
}
```

 

Used in the voice creation functions and in IXAudio2Voice.SetEffectChain

### [EFFECT\_DESCRIPTOR ¶](#EFFECT_DESCRIPTOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L157)

```
EFFECT_DESCRIPTOR :: struct #packed {
	pEffect:        ^sys_windows.IUnknown,
	// Pointer to the effect object's IUnknown interface.
	InitialState:   b32,
	// TRUE if the effect should begin in the enabled state.
	OutputChannels: u32,
}
```

 

Used in EFFECT\_CHAIN below

### [EMITTER ¶](#EMITTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L156)

```
EMITTER :: struct #packed {
	pCone:               ^CONE,
	// sound cone, used only with single-channel emitters for matrix, LPF (both direct and reverb paths), and reverb calculations, nil specifies omnidirectionality
	OrientFront:         VECTOR,
	// orientation of front direction, used only for emitter angle calculations or with multi-channel emitters for matrix calculations or single-channel emitters with cones for matrix, LPF (both direct and reverb paths), and reverb calculations, must be normalized when used
	OrientTop:           VECTOR,
	// orientation of top direction, used only with multi-channel emitters for matrix calculations, must be orthonormal with OrientFront when used
	Position:            VECTOR,
	// position in user-defined world units, does not affect Velocity
	Velocity:            VECTOR,
	// velocity vector in user-defined world units/second, used only for doppler calculations, does not affect Position
	InnerRadius:         f32,
	// inner radius, must be within [0.0, max(f32)]
	InnerRadiusAngle:    f32,
	// inner radius angle, must be within [0.0, PI/4.0)
	ChannelCount:        u32,
	// number of sound channels, must be > 0
	ChannelRadius:       f32,
	// channel radius, used only with multi-channel emitters for matrix calculations, must be >= 0.0 when used
	pChannelAzimuths:    [^]f32 `fmt:"v,ChannelCount"`,
	// channel azimuth array, used only with multi-channel emitters for matrix calculations, contains positions of each channel expressed in radians along the channel radius with respect to the front orientation vector in the plane orthogonal to the top orientation vector, or TAU to specify an LFE channel, must have at least ChannelCount elements, all within [0.0, TAU] when used
	pVolumeCurve:        ^DISTANCE_CURVE,
	// volume level distance curve, used only for matrix calculations, nil specifies a default curve that conforms to the inverse square law, calculated in user-defined world units with distances <= CurveDistanceScaler clamped to no attenuation
	pLFECurve:           ^DISTANCE_CURVE,
	// LFE level distance curve, used only for matrix calculations, nil specifies a default curve that conforms to the inverse square law, calculated in user-defined world units with distances <= CurveDistanceScaler clamped to no attenuation
	pLPFDirectCurve:     ^DISTANCE_CURVE,
	// LPF direct-path coefficient distance curve, used only for LPF direct-path calculations, nil specifies the default curve: [0.0,1.0], [1.0,0.75]
	pLPFReverbCurve:     ^DISTANCE_CURVE,
	// LPF reverb-path coefficient distance curve, used only for LPF reverb-path calculations, nil specifies the default curve: [0.0,0.75], [1.0,0.75]
	pReverbCurve:        ^DISTANCE_CURVE,
	// reverb send level distance curve, used only for reverb calculations, nil specifies the default curve: [0.0,1.0], [1.0,0.0]
	CurveDistanceScaler: f32,
	// curve distance scaler, used to scale normalized distance curves to user-defined world units and/or exaggerate their effect, used only for matrix, LPF (both direct and reverb paths), and reverb calculations, must be within [min(f32), max(f32)] when used
	DopplerScaler:       f32,
}
```

 

Emitter:
Defines a 3D audio source, divided into two classifications:
Single-point -- For use with single-channel sounds.
Positioned at the emitter base, i.e. the channel radius and azimuth are ignored if the number of channels == 1.
May be omnidirectional or directional using a cone.
The cone originates from the emitter base position, and is directed by the emitter's front orientation.
Multi-point -- For use with multi-channel sounds.
Each non-LFE channel is positioned using an azimuth along the channel radius with respect to the front orientation vector in the plane orthogonal to the top orientation vector.
An azimuth of TAU specifies a channel is an LFE. Such channels are positioned at the emitter base and are calculated with respect to pLFECurve only, never pVolumeCurve.
Multi-point emitters are always omnidirectional, i.e. the cone is ignored if the number of channels > 1.
Note that many properties are shared among all channel points, locking certain behaviour with respect to the emitter base position.
For example, doppler shift is always calculated with respect to the emitter base position and so is constant for all its channel points.
Distance curve calculations are also with respect to the emitter base position, with the curves being calculated independently of each other.
For instance, volume and LFE calculations do not affect one another.




##### Related Procedures With Parameters

* [Calculate](/vendor/windows/XAudio2/#Calculate)

### [FILTER\_PARAMETERS ¶](#FILTER_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L180)

```
FILTER_PARAMETERS :: struct #packed {
	Type:      FILTER_TYPE,
	// Filter type.
	Frequency: f32,
	// Filter coefficient. Must be >= 0 and <= MAX_FILTER_FREQUENCY. See CutoffFrequencyToRadians() for state-variable filter types and CutoffFrequencyToOnePoleCoefficient() for one-pole filter types.
	OneOverQ:  f32,
}
```

 

Used in IXAudio2Voice.Set/GetFilterParameters and Set/GetOutputFilterParameters

### [FILTER\_TYPE ¶](#FILTER_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L170)

```
FILTER_TYPE :: enum i32 {
	LowPassFilter,         // Attenuates frequencies above the cutoff frequency (state-variable filter).
	BandPassFilter,        // Attenuates frequencies outside a given range      (state-variable filter).
	HighPassFilter,        // Attenuates frequencies below the cutoff frequency (state-variable filter).
	NotchFilter,           // Attenuates frequencies inside a given range       (state-variable filter).
	LowPassOnePoleFilter,  // Attenuates frequencies above the cutoff frequency (one-pole filter, FILTER_PARAMETERS.OneOverQ has no effect)
	HighPassOnePoleFilter, // Attenuates frequencies below the cutoff frequency (one-pole filter, FILTER_PARAMETERS.OneOverQ has no effect)
}
```

 

Used in FILTER\_PARAMETERS below

##### Related Constants

* [DEFAULT\_FILTER\_TYPE](/vendor/windows/XAudio2/#DEFAULT_FILTER_TYPE)

### [FLAG ¶](#FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L58)

```
FLAG :: enum u32 {
	DEBUG_ENGINE            = 0,  // Used in Create
	VOICE_NOPITCH           = 1,  // Used in IXAudio2.CreateSourceVoice
	VOICE_NOSRC             = 2,  // Used in IXAudio2.CreateSourceVoice
	VOICE_USEFILTER         = 3,  // Used in IXAudio2.CreateSource/SubmixVoice
	PLAY_TAILS              = 5,  // Used in IXAudio2SourceVoice.Stop
	END_OF_STREAM           = 6,  // Used in BUFFER.Flags
	SEND_USEFILTER          = 7,  // Used in SEND_DESCRIPTOR.Flags
	VOICE_NOSAMPLESPLAYED   = 8,  // Used in IXAudio2SourceVoice.GetState
	STOP_ENGINE_WHEN_IDLE   = 13, // Used in Create to force the engine to Stop when no source voices are Started, and Start when a voice is Started
	QUANTUM_1024            = 15, // Used in Create to specify nondefault processing quantum of 21.33 ms (1024 samples at 48KHz)
	NO_VIRTUAL_AUDIO_CLIENT = 16, // Used in CreateMasteringVoice to create a virtual audio client
}
```

### [FLAGS ¶](#FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L57)

```
FLAGS :: distinct bit_set[FLAG; u32]
```

 

Flags




##### Related Procedures With Parameters

* [Create](/vendor/windows/XAudio2/#Create)

### [FXECHO\_INITDATA ¶](#FXECHO_INITDATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L118)

```
FXECHO_INITDATA :: struct #packed {
	MaxDelay: f32,
}
```

 

Echo initialization data, used with CreateFX:
Use of this structure is optional, the default MaxDelay is FXECHO\_DEFAULT\_DELAY.

### [FXECHO\_PARAMETERS ¶](#FXECHO_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L124)

```
FXECHO_PARAMETERS :: struct #packed {
	WetDryMix: f32,
	// ratio of wet (processed) signal to dry (original) signal
	Feedback:  f32,
	// amount of output fed back into input
	Delay:     f32,
}
```

 

Echo parameters, used with IXAPOParameters.SetParameters:
The echo supports only f32 audio formats.

### [FXEQ\_PARAMETERS ¶](#FXEQ_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L84)

```
FXEQ_PARAMETERS :: struct #packed {
	FrequencyCenter0: f32,
	// center frequency in Hz, band 0
	Gain0:            f32,
	// boost/cut
	Bandwidth0:       f32,
	// bandwidth, region of EQ is center frequency +/- bandwidth/2
	FrequencyCenter1: f32,
	// band 1
	Gain1:            f32,
	Bandwidth1:       f32,
	FrequencyCenter2: f32,
	// band 2
	Gain2:            f32,
	Bandwidth2:       f32,
	FrequencyCenter3: f32,
	// band 3
	Gain3:            f32,
	Bandwidth3:       f32,
}
```

 

EQ parameters (4 bands), used with IXAPOParameters.SetParameters:
The EQ supports only f32 audio foramts.
The framerate must be within [22000, 48000] Hz.

### [FXMASTERINGLIMITER\_PARAMETERS ¶](#FXMASTERINGLIMITER_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L101)

```
FXMASTERINGLIMITER_PARAMETERS :: struct #packed {
	Release:  u32,
	// release time (tuning factor with no specific units)
	Loudness: u32,
}
```

 

Mastering limiter parameters, used with IXAPOParameters.SetParameters:
The mastering limiter supports only f32 audio formats.

### [FXREVERB\_PARAMETERS ¶](#FXREVERB_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L110)

```
FXREVERB_PARAMETERS :: struct #packed {
	Diffusion: f32,
	// diffusion
	RoomSize:  f32,
}
```

 

Reverb parameters, used with IXAPOParameters.SetParameters:
The reverb supports only f32 audio formats with the following channel configurations:
Input: Mono Output: Mono
Input: Stereo Output: Stereo

### [HANDLE ¶](#HANDLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L85)

```
HANDLE :: distinct [20]u8
```

 

instance handle of precalculated constants




##### Related Procedures With Parameters

* [Calculate](/vendor/windows/XAudio2/#Calculate)
* [Initialize](/vendor/windows/XAudio2/#Initialize)

### [HRESULT ¶](#HRESULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L16)

```
HRESULT :: sys_windows.HRESULT
```

##### Related Procedures With Returns

* [Create](/vendor/windows/XAudio2/#Create)
* [CreateAudioReverb](/vendor/windows/XAudio2/#CreateAudioReverb)
* [CreateAudioVolumeMeter](/vendor/windows/XAudio2/#CreateAudioVolumeMeter)
* [CreateFX](/vendor/windows/XAudio2/#CreateFX)
* [CreateHrtfApo](/vendor/windows/XAudio2/#CreateHrtfApo)
* [Initialize](/vendor/windows/XAudio2/#Initialize)

##### Related Constants

* [DEVICE\_INVALIDATED](/vendor/windows/XAudio2/#DEVICE_INVALIDATED)
* [INVALID\_CALL](/vendor/windows/XAudio2/#INVALID_CALL)
* [XAPO\_CREATION\_FAILED](/vendor/windows/XAudio2/#XAPO_CREATION_FAILED)
* [XMA\_DECODER\_ERROR](/vendor/windows/XAudio2/#XMA_DECODER_ERROR)

### [HrtfApoInit ¶](#HrtfApoInit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L103)

```
HrtfApoInit :: struct {
	// ! The decay type. If you pass in nil, the default value will be used. The default is natural decay.
	distanceDecay: ^HrtfDistanceDecay,
	// ! The directivity type. If you pass in nil, the default value will be used. The default directivity is omni-directional.
	directivity:   ^HrtfDirectivity,
}
```

 

! Specifies parameters used to initialize HRTF.
! Instances of the XAPO interface are created by using the CreateHrtfApo() API:
! `CreateHrtfApo :: proc(pInit: HrtfApoInit, ppXapo: ^^IXAPO) -> HRESULT`




##### Related Procedures With Parameters

* [CreateHrtfApo](/vendor/windows/XAudio2/#CreateHrtfApo)

### [HrtfDirectivity ¶](#HrtfDirectivity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L51)

```
HrtfDirectivity :: struct {
	// ! Indicates the type of directivity.
	type:    HrtfDirectivityType,
	// ! A normalized value between zero and one. Specifies the amount of linear interpolation between omnidirectional sound and the full directivity pattern, where 0 is fully omnidirectional and 1 is fully directional.
	scaling: f32,
}
```

 

! Base directivity pattern descriptor. Describes the type of directivity applied to a sound.
! The scaling parameter is used to interpolate between directivity behavior and omnidirectional, it determines how much attenuation is applied to the source outside of the directivity pattern and controls how directional the source is.

### [HrtfDirectivityCardioid ¶](#HrtfDirectivityCardioid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L59)

```
HrtfDirectivityCardioid :: struct {
	// ! Descriptor for the cardioid pattern. The type parameter must be set to HrtfDirectivityType.Cardioid.
	directivity: HrtfDirectivity,
	// ! Order controls the shape of the cardioid. The higher order the shape, the narrower it is. Must be greater than 0 and less than or equal to 32.
	order:       f32,
}
```

 

! Describes a cardioid directivity pattern.

### [HrtfDirectivityCone ¶](#HrtfDirectivityCone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L69)

```
HrtfDirectivityCone :: struct {
	// ! Descriptor for the cone pattern. The type parameter must be set to HrtfDirectivityType.Cone.
	directivity: HrtfDirectivity,
	// ! Angle, in radians, that defines the inner cone. Must be between 0 and TAU.
	innerAngle:  f32,
	// ! Angle, in radians, that defines the outer cone. Must be between 0 and TAU.
	outerAngle:  f32,
}
```

 

! Describes a cone directivity.
! Attenuation is 0 inside the inner cone.
! Attenuation is linearly interpolated between the inner cone, which is defined by innerAngle, and the outer cone, which is defined by outerAngle.

### [HrtfDirectivityType ¶](#HrtfDirectivityType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L28)

```
HrtfDirectivityType :: enum i32 {
	// ! The sound emission is in all directions.
	OmniDirectional = 0, 
	// ! The sound emission is a cardiod shape.
	Cardioid, 
	// ! The sound emission is a cone.
	Cone, 
}
```

 

! Indicates one of several stock directivity patterns.

### [HrtfDistanceDecay ¶](#HrtfDistanceDecay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L87)

```
HrtfDistanceDecay :: struct {
	// ! The type of decay behavior, natural or custom.
	type:              HrtfDistanceDecayType,
	// ! The maximum gain limit applied at any distance. Applies to both natural and custom decay. This value is specified in dB, with a range from -96 to 12 inclusive. The default value is 12 dB.
	maxGain:           f32,
	// ! The minimum gain limit applied at any distance. Applies to both natural and custom decay. This value is specified in dB, with a range from -96 to 12 inclusive. The default value is -96 dB.
	minGain:           f32,
	// ! The distance at which the gain is 0dB. Applies to natural decay only. This value is specified in meters, with a range from 0.05 to infinity (max(f32)). The default value is 1 meter.
	unityGainDistance: f32,
	// ! The distance at which output is silent. Applies to natural decay only. This value is specified in meters, with a range from zero (non-inclusive) to infinity (max(f32)). The default value is infinity.
	cutoffDistance:    f32,
}
```

 

! Describes a distance-based decay behavior.

### [HrtfDistanceDecayType ¶](#HrtfDistanceDecayType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L79)

```
HrtfDistanceDecayType :: enum i32 {
	// ! Simulates natural decay with distance, as constrained by minimum and maximum gain distance limits. Drops to silence at rolloff distance.
	NaturalDecay = 0, 
	// ! Used to set up a custom gain curve, within the maximum and minimum gain limit.
	CustomDecay, 
}
```

 

! Indicates a distance-based decay type applied to a sound.

### [HrtfEnvironment ¶](#HrtfEnvironment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L38)

```
HrtfEnvironment :: enum i32 {
	// ! A small room.
	Small    = 0, 
	// ! A medium-sized room.
	Medium, 
	// ! A large enclosed space.
	Large, 
	// ! An outdoor space.
	Outdoors, 
}
```

 

! Indicates one of several stock environment types.

### [HrtfOrientation ¶](#HrtfOrientation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L23)

```
HrtfOrientation :: struct {
	element: [9]f32,
}
```

 

! Indicates the orientation of an HRTF directivity object. This is a row-major 3x3 rotation matrix.

### [HrtfPosition ¶](#HrtfPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L16)

```
HrtfPosition :: struct {
	x: f32,
	y: f32,
	z: f32,
}
```

 

! Represents a position in 3D space, using a right-handed coordinate system.

### [IUnknown ¶](#IUnknown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L17)

```
IUnknown :: sys_windows.IUnknown
```

### [IUnknown\_VTable ¶](#IUnknown_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L18)

```
IUnknown_VTable :: sys_windows.IUnknown_VTable
```

### [IXAPO ¶](#IXAPO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L155)

```
IXAPO :: struct #raw_union {
	iunknown:     sys_windows.IUnknown,
	using ixapo_vtable: ^IXAPO_VTable,
}
```

### [IXAPOHrtfParameters ¶](#IXAPOHrtfParameters) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L131)

```
IXAPOHrtfParameters :: struct #raw_union {
	iunknown:                   sys_windows.IUnknown,
	using ixapohrtfparameters_vtable: ^IXAPOHrtfParameters_VTable,
}
```

### [IXAPOHrtfParameters\_VTable ¶](#IXAPOHrtfParameters_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L135)

```
IXAPOHrtfParameters_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	// HRTF params
	// ! The position of the sound relative to the listener.
	SetSourcePosition:    proc "stdcall" (this: ^IXAPOHrtfParameters, position: ^HrtfPosition) -> sys_windows.HRESULT,
	// ! The rotation matrix for the source orientation, with respect to the listener's frame of reference (the listener's coordinate system).
	SetSourceOrientation: proc "stdcall" (this: ^IXAPOHrtfParameters, orientation: ^HrtfOrientation) -> sys_windows.HRESULT,
	// ! The custom direct path gain value for the current source position. Valid only for sounds played with the HrtfDistanceDecayType. Custom decay type.
	SetSourceGain:        proc "stdcall" (this: ^IXAPOHrtfParameters, gain: f32) -> sys_windows.HRESULT,
	// Distance cue params
	// ! Selects the acoustic environment to simulate.
	SetEnvironment:       proc "stdcall" (this: ^IXAPOHrtfParameters, environment: HrtfEnvironment) -> sys_windows.HRESULT,
}
```

### [IXAPOParameters ¶](#IXAPOParameters) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L311)

```
IXAPOParameters :: struct #raw_union {
	iunknown:               sys_windows.IUnknown,
	using ixapoparameters_vtable: ^IXAPOParameters_VTable,
}
```

### [IXAPOParameters\_VTable ¶](#IXAPOParameters_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L315)

```
IXAPOParameters_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	// DESCRIPTION:
	//  Sets effect-specific parameters.
	// REMARKS:
	//  This method may only be called on the realtime thread; no synchronization between it and IXAPO.Process is necessary.
	//  This method should not block as it is called from the realtime thread.
	// PARAMETERS:
	//  pParameters       - [in] effect-specific parameter block, must be != nil
	//  ParameterByteSize - [in] size of pParameters in bytes, must be > 0
	// RETURN VALUE:
	//  void
	SetParameters:   proc "stdcall" (this: ^IXAPOParameters, pParameters: rawptr, ParameterByteSize: u32),
	// DESCRIPTION:
	//  Gets effect-specific parameters.
	// REMARKS:
	//  Unlike SetParameters, XAudio2 does not call this method on the realtime thread.  Thus, the XAPO must protect variables shared with SetParameters/Process using appropriate synchronization.
	// PARAMETERS:
	//  pParameters       - [out] receives effect-specific parameter block, must be != nil
	//  ParameterByteSize - [in]  size of pParameters in bytes, must be > 0
	// RETURN VALUE:
	//  void
	GetParameters:   proc "stdcall" (this: ^IXAPOParameters, pParameters: rawptr, ParameterByteSize: u32),
}
```

### [IXAPO\_VTable ¶](#IXAPO_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L159)

```
IXAPO_VTable :: struct {
	using iunknown_vtable:     sys_windows.IUnknown_VTable,
	// DESCRIPTION:
	//  Allocates a copy of the registration properties of the XAPO.
	// PARAMETERS:
	//  ppRegistrationProperties - [out] receives pointer to copy of registration properties, use XAPOFree to free structure, left untouched on failure
	// RETURN VALUE:
	//  COM error code
	GetRegistrationProperties: proc "stdcall" (this: ^IXAPO, ppRegistrationProperties: ^^XAPO_REGISTRATION_PROPERTIES) -> sys_windows.HRESULT,
	// DESCRIPTION:
	//  Queries if an input/output configuration is supported.
	// REMARKS:
	//  This method allows XAPOs to express dependency of input format with respect to output format.
	//  If the input/output format pair configuration is unsupported, this method also determines the nearest input format supported.
	//  Nearest meaning closest bit depth, framerate, and channel count, in that order of importance.
	//  The behaviour of this method should remain constant after the XAPO has been initialized.
	// PARAMETERS:
	//  pOutputFormat          - [in]  output format known to be supported
	//  pRequestedInputFormat  - [in]  input format to examine
	//  ppSupportedInputFormat - [out] receives pointer to nearest input format supported if not nil and input/output configuration unsupported, use XAPOFree to free structure, left untouched on any failure except FORMAT_UNSUPPORTED
	// RETURN VALUE:
	//  COM error code, including:
	//    S_OK                      - input/output configuration supported, ppSupportedInputFormat left untouched
	//    FORMAT_UNSUPPORTED        - input/output configuration unsupported, ppSupportedInputFormat receives pointer to nearest input format supported if not nil
	//    E_INVALIDARG              - either audio format invalid, ppSupportedInputFormat left untouched
	IsInputFormatSupported:    proc "stdcall" (this: ^IXAPO, pOutputFormat: ^sys_windows.WAVEFORMATEX, pRequestedInputFormat: ^sys_windows.WAVEFORMATEX, ppSupportedInputFormat: ^^sys_windows.WAVEFORMATEX) -> sys_windows.HRESULT,
	// DESCRIPTION:
	//  Queries if an input/output configuration is supported.
	// REMARKS:
	//  This method allows XAPOs to express dependency of output format with respect to input format.
	//  If the input/output format pair configuration is unsupported, this method also determines the nearest output format supported.
	//  Nearest meaning closest bit depth, framerate, and channel count, in that order of importance.
	//  The behaviour of this method should remain constant after the XAPO has been initialized.
	// PARAMETERS:
	//  pInputFormat            - [in]  input format known to be supported
	//  pRequestedOutputFormat  - [in]  output format to examine
	//  ppSupportedOutputFormat - [out] receives pointer to nearest output format supported if not nil and input/output configuration unsupported, use XAPOFree to free structure, left untouched on any failure except FORMAT_UNSUPPORTED
	// RETURN VALUE:
	//  COM error code, including:
	//    S_OK                      - input/output configuration supported, ppSupportedOutputFormat left untouched
	//    FORMAT_UNSUPPORTED        - input/output configuration unsupported, ppSupportedOutputFormat receives pointer to nearest output format supported if not nil
	//    E_INVALIDARG              - either audio format invalid, ppSupportedOutputFormat left untouched
	IsOutputFormatSupported:   proc "stdcall" (this: ^IXAPO, pInputFormat: ^sys_windows.WAVEFORMATEX, pRequestedOutputFormat: ^sys_windows.WAVEFORMATEX, ppSupportedOutputFormat: ^^sys_windows.WAVEFORMATEX) -> sys_windows.HRESULT,
	// DESCRIPTION:
	//  Performs any effect-specific initialization if required.
	// REMARKS:
	//  The contents of pData are defined by the XAPO.
	//  Immutable variables (constant during the lifespan of the XAPO) should be set once via this method.
	//  Once initialized, an XAPO cannot be initialized again.
	//  An XAPO should be initialized before passing it to XAudio2 as part of an effect chain. XAudio2 will not call this method; it exists for future content-driven initialization.
	// PARAMETERS:
	//  pData        - [in] effect-specific initialization parameters, may be nil if DataByteSize == 0
	//  DataByteSize - [in] size of pData in bytes, may be 0 if pData is nil
	// RETURN VALUE:
	//  COM error code
	Initialize:                proc "stdcall" (this: ^IXAPO, pData: rawptr, DataByteSize: u32) -> sys_windows.HRESULT,
	// DESCRIPTION:
	//  Resets variables dependent on frame history.
	// REMARKS:
	//  All other variables remain unchanged, including variables set by IXAPOParameters.SetParameters.
	//  For example, an effect with delay should zero out its delay line during this method, but should not reallocate anything as the
	//  XAPO remains locked with a constant input/output configuration. XAudio2 calls this method only if the XAPO is locked.
	//  This method should not block as it is called from the realtime thread.
	// PARAMETERS:
	//  void
	// RETURN VALUE:
	//  void
	Reset:                     proc "stdcall" (this: ^IXAPO),
	// DESCRIPTION:
	//  Locks the XAPO to a specific input/output configuration,
	//  allowing it to do any final initialization before Process
	//  is called on the realtime thread.
	// REMARKS:
	//  Once locked, the input/output configuration and any other locked variables remain constant until UnlockForProcess is called.
	//  XAPOs should assert the input/output configuration is supported and that any required effect-specific initialization is complete.
	//  IsInputFormatSupported, IsOutputFormatSupported, and Initialize should be called as necessary before this method is called.
	//  All internal memory buffers required for Process should be allocated by the time this method returns successfully as Process is non-blocking and should not allocate memory.
	//  Once locked, an XAPO cannot be locked again until UnLockForProcess is called.
	// PARAMETERS:
	//  InputLockedParameterCount  - [in] number of input buffers, must be within [XAPO_REGISTRATION_PROPERTIES.MinInputBufferCount, XAPO_REGISTRATION_PROPERTIES.MaxInputBufferCount]
	//  pInputLockedParameters     - [in] array of input locked buffer parameter structures, may be nil if InputLockedParameterCount == 0, otherwise must have InputLockedParameterCount elements
	//  OutputLockedParameterCount - [in] number of output buffers, must be within [XAPO_REGISTRATION_PROPERTIES.MinOutputBufferCount, XAPO_REGISTRATION_PROPERTIES.MaxOutputBufferCount], must match InputLockedParameterCount when XAPO_FLAG.BUFFERCOUNT_MUST_MATCH used
	//  pOutputLockedParameters    - [in] array of output locked buffer parameter structures, may be nil if OutputLockedParameterCount == 0, otherwise must have OutputLockedParameterCount elements
	// RETURN VALUE:
	//  COM error code
	LockForProcess:            proc "stdcall" (this: ^IXAPO, InputLockedParameterCount: u32, pInputLockedParameters: [^]XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS, OutputLockedParameterCount: u32, pOutputLockedParameters: [^]XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS) -> sys_windows.HRESULT,
	// DESCRIPTION:
	//  Opposite of LockForProcess.  Variables allocated during LockForProcess should be deallocated by this method.
	// REMARKS:
	//  Unlocking an XAPO allows an XAPO instance to be reused with different input/output configurations.
	// PARAMETERS:
	//  void
	// RETURN VALUE:
	//  void
	UnlockForProcess:          proc "stdcall" (this: ^IXAPO),
	// DESCRIPTION:
	//  Runs the XAPO's DSP code on the given input/output buffers.
	// REMARKS:
	//  In addition to writing to the output buffers as appropriate, an XAPO must set the BufferFlags and ValidFrameCount members of all elements in pOutputProcessParameters accordingly.
	//  ppInputProcessParameters will not necessarily be the same as ppOutputProcessParameters for in-place processing, rather the pBuffer members of each will point to the same memory.
	//  Multiple input/output buffers may be used with in-place XAPOs, though the input buffer count must equal the output buffer count.
	//  When multiple input/output buffers are used with in-place XAPOs, the XAPO may assume input buffer [N] equals output buffer [N].
	//  When IsEnabled is false, the XAPO should process thru. Thru processing means an XAPO should not apply its normal processing to the given input/output buffers during Process.
	//  It should instead pass data from input to output with as little modification possible. Effects that perform format conversion should continue to do so.
	//  The effect must ensure transitions between normal and thru processing do not introduce discontinuities into the signal.
	//  XAudio2 calls this method only if the XAPO is locked. This method should not block as it is called from the realtime thread.
	// PARAMETERS:
	//  InputProcessParameterCount  - [in]     number of input buffers, matches respective InputLockedParameterCount parameter given to LockForProcess
	//  pInputProcessParameters     - [in]     array of input process buffer parameter structures, may be nil if InputProcessParameterCount == 0, otherwise must have InputProcessParameterCount elements
	//  OutputProcessParameterCount - [in]     number of output buffers, matches respective OutputLockedParameterCount parameter given to LockForProcess
	//  pOutputProcessParameters    - [in/out] array of output process buffer parameter structures, may be nil if OutputProcessParameterCount == 0, otherwise must have OutputProcessParameterCount elements
	//  IsEnabled                   - [in]     true to process normally, false to process thru
	// RETURN VALUE:
	//  void
	Process:                   proc "stdcall" (this: ^IXAPO, InputProcessParameterCount: u32, pInputProcessParameters: [^]XAPO_PROCESS_BUFFER_PARAMETERS, OutputProcessParameterCount: u32, pOutputProcessParameters: [^]XAPO_PROCESS_BUFFER_PARAMETERS, IsEnabled: b32),
	// DESCRIPTION:
	//  Returns the number of input frames required to generate the requested number of output frames.
	// REMARKS:
	//  XAudio2 may call this method to determine how many input frames an XAPO requires.
	//  This is constant for locked CBR XAPOs; this method need only be called once while an XAPO is locked.
	//  XAudio2 calls this method only if the XAPO is locked. This method should not block as it is called from the realtime thread.
	// PARAMETERS:
	//  OutputFrameCount - [in] requested number of output frames, must be within respective [0, XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.MaxFrameCount], always XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.MaxFrameCount for CBR/user-defined XAPOs
	// RETURN VALUE:
	//  number of input frames required
	CalcInputFrames:           proc "stdcall" (this: ^IXAPO, OutputFrameCount: u32) -> u32,
	// DESCRIPTION:
	//  Returns the number of output frames generated for the requested number of input frames.
	// REMARKS:
	//  XAudio2 may call this method to determine how many output frames an XAPO will generate.  This is constant for locked CBR XAPOs; this method need only be called once while an XAPO is locked.
	//  XAudio2 calls this method only if the XAPO is locked. This method should not block as it is called from the realtime thread.
	// PARAMETERS:
	//  InputFrameCount - [in] requested number of input frames, must be within respective [0, XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.MaxFrameCount], always XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.MaxFrameCount for CBR/user-defined XAPOs
	// RETURN VALUE:
	//  number of output frames generated
	CalcOutputFrames:          proc "stdcall" (this: ^IXAPO, InputFrameCount: u32) -> u32,
}
```

### [IXAudio2 ¶](#IXAudio2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L277)

```
IXAudio2 :: struct #raw_union {
	iunknown:        sys_windows.IUnknown,
	using ixaudio2_vtable: ^IXAudio2_VTable,
}
```

### [IXAudio2EngineCallback ¶](#IXAudio2EngineCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L652)

```
IXAudio2EngineCallback :: struct {
	using ixaudio2enginecallback_vtable: ^IXAudio2EngineCallback_VTable,
}
```

### [IXAudio2EngineCallback\_VTable ¶](#IXAudio2EngineCallback_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L655)

```
IXAudio2EngineCallback_VTable :: struct {
	// Called by XAudio2 just before an audio processing pass begins.
	OnProcessingPassStart: proc "stdcall" (this: ^IXAudio2EngineCallback),
	// Called just after an audio processing pass ends.
	OnProcessingPassEnd:   proc "stdcall" (this: ^IXAudio2EngineCallback),
	// Called in the event of a critical system error which requires XAudio2 to be closed down and restarted. The error code is given in Error.
	OnCriticalError:       proc "stdcall" (this: ^IXAudio2EngineCallback, Error: sys_windows.HRESULT),
}
```

### [IXAudio2Extension ¶](#IXAudio2Extension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L364)

```
IXAudio2Extension :: struct #raw_union {
	iunknown:                 sys_windows.IUnknown,
	using ixaudio2extension_vtable: ^IXAudio2Extension_VTable,
}
```

### [IXAudio2Extension\_VTable ¶](#IXAudio2Extension_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L368)

```
IXAudio2Extension_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	// NAME: IXAudio2Extension.GetProcessingQuantum
	// DESCRIPTION: Returns the processing quantum
	//              quantumMilliseconds = (1000.0f * quantumNumerator / quantumDenominator)
	// ARGUMENTS:
	//  quantumNumerator - Quantum numerator
	//  quantumDenominator - Quantum denominator
	GetProcessingQuantum: proc "stdcall" (this: ^IXAudio2Extension, quantumNumerator: ^u32, quantumDenominator: ^u32),
	// NAME: IXAudio2Extension.GetProcessor
	// DESCRIPTION: Returns the number of the processor used by XAudio2
	// ARGUMENTS:
	//  processor - Non-zero Processor number
	GetProcessor:         proc "stdcall" (this: ^IXAudio2Extension, processor: ^PROCESSOR_FLAGS),
}
```

### [IXAudio2MasteringVoice ¶](#IXAudio2MasteringVoice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L629)

```
IXAudio2MasteringVoice :: struct #raw_union {
	ixaudio2voice:                 IXAudio2Voice,
	using ixaudio2masteringvoice_vtable: ^IXAudio2MasteringVoice_VTable,
}
```

### [IXAudio2MasteringVoice\_VTable ¶](#IXAudio2MasteringVoice_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L633)

```
IXAudio2MasteringVoice_VTable :: struct {
	using ixaudio2voice_vtable: IXAudio2Voice_VTable,
	// NAME: IXAudio2MasteringVoice.GetChannelMask
	// DESCRIPTION: Returns the channel mask for this voice
	// ARGUMENTS:
	//  pChannelMask - returns the channel mask for this voice.  This corresponds to the dwChannelMask member of WAVEFORMATEXTENSIBLE.
	GetChannelMask:       proc "stdcall" (this: ^IXAudio2MasteringVoice, pChannelmask: ^u32) -> sys_windows.HRESULT,
}
```

### [IXAudio2SourceVoice ¶](#IXAudio2SourceVoice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L539)

```
IXAudio2SourceVoice :: struct #raw_union {
	ixaudio2voice:              IXAudio2Voice,
	using ixaudio2sourcevoice_vtable: ^IXAudio2SourceVoice_VTable,
}
```

### [IXAudio2SourceVoice\_VTable ¶](#IXAudio2SourceVoice_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L543)

```
IXAudio2SourceVoice_VTable :: struct {
	using ixaudio2voice_vtable: IXAudio2Voice_VTable,
	// NAME: IXAudio2SourceVoice.Start
	// DESCRIPTION: Makes this voice start consuming and processing audio.
	// ARGUMENTS:
	//  Flags - Flags controlling how the voice should be started.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	Start:                proc "stdcall" (this: ^IXAudio2SourceVoice, Flags: FLAGS = {}, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2SourceVoice.Stop
	// DESCRIPTION: Makes this voice stop consuming audio.
	// ARGUMENTS:
	//  Flags - Flags controlling how the voice should be stopped.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	Stop:                 proc "stdcall" (this: ^IXAudio2SourceVoice, Flags: FLAGS = {}, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2SourceVoice.SubmitSourceBuffer
	// DESCRIPTION: Adds a new audio buffer to this voice's input queue.
	// ARGUMENTS:
	//  pBuffer - Pointer to the buffer structure to be queued.
	//  pBufferWMA - Additional structure used only when submitting XWMA data.
	SubmitSourceBuffer:   proc "stdcall" (this: ^IXAudio2SourceVoice, pBuffer: ^BUFFER, pBufferWMA: ^BUFFER_WMA = nil) -> sys_windows.HRESULT,
	// NAME: IXAudio2SourceVoice.FlushSourceBuffers
	// DESCRIPTION: Removes all pending audio buffers from this voice's queue.
	FlushSourceBuffers:   proc "stdcall" (this: ^IXAudio2SourceVoice) -> sys_windows.HRESULT,
	// NAME: IXAudio2SourceVoice.Discontinuity
	// DESCRIPTION: Notifies the voice of an intentional break in the stream of audio buffers (e.g. the end of a sound), to prevent XAudio2 from interpreting an empty buffer queue as a glitch.
	Discontinuity:        proc "stdcall" (this: ^IXAudio2SourceVoice) -> sys_windows.HRESULT,
	// NAME: IXAudio2SourceVoice.ExitLoop
	// DESCRIPTION: Breaks out of the current loop when its end is reached.
	// ARGUMENTS:
	//  OperationSet - Used to identify this call as part of a deferred batch.
	ExitLoop:             proc "stdcall" (this: ^IXAudio2SourceVoice, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2SourceVoice.GetState
	// DESCRIPTION: Returns the number of buffers currently queued on this voice, the pContext value associated with the currently processing buffer (if any), and other voice state information.
	// ARGUMENTS:
	//  pVoiceState - Returns the state information.
	//  Flags - Flags controlling what voice state is returned.
	GetState:             proc "stdcall" (this: ^IXAudio2SourceVoice, pVoiceState: ^VOICE_STATE, Flags: FLAGS = {}),
	// NAME: IXAudio2SourceVoice.SetFrequencyRatio
	// DESCRIPTION: Sets this voice's frequency adjustment, i.e. its pitch.
	// ARGUMENTS:
	//  Ratio - Frequency change, expressed as source frequency / target frequency.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	SetFrequencyRatio:    proc "stdcall" (this: ^IXAudio2SourceVoice, Ratio: f32, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2SourceVoice.GetFrequencyRatio
	// DESCRIPTION: Returns this voice's current frequency adjustment ratio.
	// ARGUMENTS:
	//  pRatio - Returns the frequency adjustment.
	GetFrequencyRatio:    proc "stdcall" (this: ^IXAudio2SourceVoice, pRatio: ^f32),
	// NAME: IXAudio2SourceVoice.SetSourceSampleRate
	// DESCRIPTION: Reconfigures this voice to treat its source data as being at a different sample rate than the original one specified in CreateSourceVoice's pSourceFormat argument.
	// ARGUMENTS:
	//  UINT32 - The intended sample rate of further submitted source data.
	SetSourceSampleRate:  proc "stdcall" (this: ^IXAudio2SourceVoice, NewSourceSampleRate: u32) -> sys_windows.HRESULT,
}
```

### [IXAudio2SubmixVoice ¶](#IXAudio2SubmixVoice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L614)

```
IXAudio2SubmixVoice :: struct #raw_union {
	ixaudio2voice:              IXAudio2Voice,
	using ixaudio2submixvoice_vtable: ^IXAudio2SubmixVoice_VTable,
}
```

### [IXAudio2SubmixVoice\_VTable ¶](#IXAudio2SubmixVoice_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L618)

```
IXAudio2SubmixVoice_VTable :: struct {
	using ixaudio2voice_vtable: IXAudio2Voice_VTable,
}
```

### [IXAudio2Voice ¶](#IXAudio2Voice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L392)

```
IXAudio2Voice :: struct {
	using ixaudio2voice_vtable: ^IXAudio2Voice_VTable,
}
```

### [IXAudio2VoiceCallback ¶](#IXAudio2VoiceCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L675)

```
IXAudio2VoiceCallback :: struct {
	using ixaudio2voicecallback_vtable: ^IXAudio2VoiceCallback_VTable,
}
```

### [IXAudio2VoiceCallback\_VTable ¶](#IXAudio2VoiceCallback_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L678)

```
IXAudio2VoiceCallback_VTable :: struct {
	// Called just before this voice's processing pass begins.
	OnVoiceProcessingPassStart: proc "stdcall" (this: ^IXAudio2VoiceCallback, BytesRequired: u32),
	// Called just after this voice's processing pass ends.
	OnVoiceProcessingPassEnd:   proc "stdcall" (this: ^IXAudio2VoiceCallback),
	// Called when this voice has just finished playing a buffer stream (as marked with the END_OF_STREAM flag on the last buffer).
	OnStreamEnd:                proc "stdcall" (this: ^IXAudio2VoiceCallback),
	// Called when this voice is about to start processing a new buffer.
	OnBufferStart:              proc "stdcall" (this: ^IXAudio2VoiceCallback, pBufferContext: rawptr),
	// Called when this voice has just finished processing a buffer.
	// The buffer can now be reused or destroyed.
	OnBufferEnd:                proc "stdcall" (this: ^IXAudio2VoiceCallback, pBufferContext: rawptr),
	// Called when this voice has just reached the end position of a loop.
	OnLoopEnd:                  proc "stdcall" (this: ^IXAudio2VoiceCallback, pBufferContext: rawptr),
	// Called in the event of a critical error during voice processing, such as a failing xAPO or an error from the hardware XMA decoder.
	// The voice may have to be destroyed and re-created to recover from the error.
	// The callback arguments report which buffer was being processed when the error occurred, and its HRESULT code.
	OnVoiceError:               proc "stdcall" (this: ^IXAudio2VoiceCallback, pBufferContext: rawptr, Error: sys_windows.HRESULT),
}
```

### [IXAudio2Voice\_VTable ¶](#IXAudio2Voice_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L395)

```
IXAudio2Voice_VTable :: struct {
	// NAME: IXAudio2Voice.GetVoiceDetails
	// DESCRIPTION: Returns the basic characteristics of this voice.
	// ARGUMENTS:
	//  pVoiceDetails - Returns the voice's details.
	GetVoiceDetails:           proc "stdcall" (this: ^IXAudio2Voice, pVoiceDetails: ^VOICE_DETAILS),
	// NAME: IXAudio2Voice.SetOutputVoices
	// DESCRIPTION: Replaces the set of submix/mastering voices that receive this voice's output.
	// ARGUMENTS:
	//  pSendList - Optional list of voices this voice should send audio to.
	SetOutputVoices:           proc "stdcall" (this: ^IXAudio2Voice, pSendList: [^]VOICE_SENDS) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.SetEffectChain
	// DESCRIPTION: Replaces this voice's current effect chain with a new one.
	// ARGUMENTS:
	//  pEffectChain - Structure describing the new effect chain to be used.
	SetEffectChain:            proc "stdcall" (this: ^IXAudio2Voice, pEffectChain: ^EFFECT_CHAIN) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.EnableEffect
	// DESCRIPTION: Enables an effect in this voice's effect chain.
	// ARGUMENTS:
	//  EffectIndex - Index of an effect within this voice's effect chain.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	EnableEffect:              proc "stdcall" (this: ^IXAudio2Voice, EffectIndex: u32, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.DisableEffect
	// DESCRIPTION: Disables an effect in this voice's effect chain.
	// ARGUMENTS:
	//  EffectIndex - Index of an effect within this voice's effect chain.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	DisableEffect:             proc "stdcall" (this: ^IXAudio2Voice, EffectIndex: u32, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.GetEffectState
	// DESCRIPTION: Returns the running state of an effect.
	// ARGUMENTS:
	//  EffectIndex - Index of an effect within this voice's effect chain.
	//  pEnabled - Returns the enabled/disabled state of the given effect.
	GetEffectState:            proc "stdcall" (this: ^IXAudio2Voice, EffectIndex: u32, pEnabled: ^b32),
	// NAME: IXAudio2Voice.SetEffectParameters
	// DESCRIPTION: Sets effect-specific parameters.
	// REMARKS: Unlike IXAPOParameters.SetParameters, this method may be called from any thread. XAudio2 implements appropriate synchronization to copy the parameters to the realtime audio processing thread.
	// ARGUMENTS:
	//  EffectIndex - Index of an effect within this voice's effect chain.
	//  pParameters - Pointer to an effect-specific parameters block.
	//  ParametersByteSize - Size of the pParameters array  in bytes.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	SetEffectParameters:       proc "stdcall" (this: ^IXAudio2Voice, EffectIndex: u32, pParameters: rawptr, ParametersByteSize: u32, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.GetEffectParameters
	// DESCRIPTION: Obtains the current effect-specific parameters.
	// ARGUMENTS:
	//  EffectIndex - Index of an effect within this voice's effect chain.
	//  pParameters - Returns the current values of the effect-specific parameters.
	//  ParametersByteSize - Size of the pParameters array in bytes.
	GetEffectParameters:       proc "stdcall" (this: ^IXAudio2Voice, EffectIndex: u32, pParameters: rawptr, ParametersByteSize: u32) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.SetFilterParameters
	// DESCRIPTION: Sets this voice's filter parameters.
	// ARGUMENTS:
	//  pParameters - Pointer to the filter's parameter structure.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	SetFilterParameters:       proc "stdcall" (this: ^IXAudio2Voice, pParameters: ^FILTER_PARAMETERS, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.GetFilterParameters
	// DESCRIPTION: Returns this voice's current filter parameters.
	// ARGUMENTS:
	//  pParameters - Returns the filter parameters.
	GetFilterParameters:       proc "stdcall" (this: ^IXAudio2Voice, pParameters: ^FILTER_PARAMETERS),
	// NAME: IXAudio2Voice.SetOutputFilterParameters
	// DESCRIPTION: Sets the filter parameters on one of this voice's sends.
	// ARGUMENTS:
	//  pDestinationVoice - Destination voice of the send whose filter parameters will be set.
	//  pParameters - Pointer to the filter's parameter structure.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	SetOutputFilterParameters: proc "stdcall" (this: ^IXAudio2Voice, pDestinationVoice: ^IXAudio2Voice, pParameters: ^FILTER_PARAMETERS, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.GetOutputFilterParameters
	// DESCRIPTION: Returns the filter parameters from one of this voice's sends.
	// ARGUMENTS:
	//  pDestinationVoice - Destination voice of the send whose filter parameters will be read.
	//  pParameters - Returns the filter parameters.
	GetOutputFilterParameters: proc "stdcall" (this: ^IXAudio2Voice, pDestinationVoice: ^IXAudio2Voice, pParameters: ^FILTER_PARAMETERS),
	// NAME: IXAudio2Voice.SetVolume
	// DESCRIPTION: Sets this voice's overall volume level.
	// ARGUMENTS:
	//  Volume - New overall volume level to be used, as an amplitude factor.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	SetVolume:                 proc "stdcall" (this: ^IXAudio2Voice, Volume: f32, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.GetVolume
	// DESCRIPTION: Obtains this voice's current overall volume level.
	// ARGUMENTS:
	//  pVolume: Returns the voice's current overall volume level.
	GetVolume:                 proc "stdcall" (this: ^IXAudio2Voice, pVolume: ^f32),
	// NAME: IXAudio2Voice.SetChannelVolumes
	// DESCRIPTION: Sets this voice's per-channel volume levels.
	// ARGUMENTS:
	//  Channels - Used to confirm the voice's channel count.
	//  pVolumes - Array of per-channel volume levels to be used.
	//  OperationSet - Used to identify this call as part of a deferred batch.
	SetChannelVolumes:         proc "stdcall" (this: ^IXAudio2Voice, Channels: u32, pVolumes: [^]f32, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.GetChannelVolumes
	// DESCRIPTION: Returns this voice's current per-channel volume levels.
	// ARGUMENTS:
	//  Channels - Used to confirm the voice's channel count.
	//  pVolumes - Returns an array of the current per-channel volume levels.
	GetChannelVolumes:         proc "stdcall" (this: ^IXAudio2Voice, Channels: u32, pVolumes: [^]f32),
	// NAME: IXAudio2Voice.SetOutputMatrix
	// DESCRIPTION: Sets the volume levels used to mix from each channel of this voice's output audio to each channel of a given destination voice's input audio.
	// ARGUMENTS:
	//  pDestinationVoice - The destination voice whose mix matrix to change.
	//  SourceChannels - Used to confirm this voice's output channel count (the number of channels produced by the last effect in the chain).
	//  DestinationChannels - Confirms the destination voice's input channels.
	//  pLevelMatrix - Array of [SourceChannels * DestinationChannels] send levels. The level used to send from source channel S to destination channel D should be in pLevelMatrix[S + SourceChannels * D].
	//  OperationSet - Used to identify this call as part of a deferred batch.
	SetOutputMatrix:           proc "stdcall" (this: ^IXAudio2Voice, pDestinationVoice: ^IXAudio2Voice, SourceChannels: u32, DestinationChannels: u32, pLevelMatrix: [^]f32, OperationSet: u32 = COMMIT_NOW) -> sys_windows.HRESULT,
	// NAME: IXAudio2Voice.GetOutputMatrix
	// DESCRIPTION: Obtains the volume levels used to send each channel of this voice's output audio to each channel of a given destination voice's input audio.
	// ARGUMENTS:
	//  pDestinationVoice - The destination voice whose mix matrix to obtain.
	//  SourceChannels - Used to confirm this voice's output channel count (the number of channels produced by the last effect in the chain).
	//  DestinationChannels - Confirms the destination voice's input channels.
	//  pLevelMatrix - Array of send levels, as above.
	GetOutputMatrix:           proc "stdcall" (this: ^IXAudio2Voice, pDestinationVoice: ^IXAudio2Voice, SourceChannels: u32, DestinationChannels: u32, pLevelMatrix: [^]f32),
	// NAME: IXAudio2Voice.DestroyVoice
	// DESCRIPTION: Destroys this voice, stopping it if necessary and removing it from the XAudio2 graph.
	DestroyVoice:              proc "stdcall" (this: ^IXAudio2Voice),
}
```

### [IXAudio2\_VTable ¶](#IXAudio2_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L281)

```
IXAudio2_VTable :: struct {
	using iunknown_vtable:  sys_windows.IUnknown_VTable,
	// NAME: IXAudio2.RegisterForCallbacks
	// DESCRIPTION: Adds a new client to receive XAudio2's engine callbacks.
	// ARGUMENTS:
	//  pCallback - Callback interface to be called during each processing pass.
	RegisterForCallbacks:   proc "stdcall" (this: ^IXAudio2, pCallback: ^IXAudio2EngineCallback) -> sys_windows.HRESULT,
	// NAME: IXAudio2.UnregisterForCallbacks
	// DESCRIPTION: Removes an existing receiver of XAudio2 engine callbacks.
	// ARGUMENTS:
	//  pCallback - Previously registered callback interface to be removed.
	UnregisterForCallbacks: proc "stdcall" (this: ^IXAudio2, pCallback: ^IXAudio2EngineCallback),
	// NAME: IXAudio2.CreateSourceVoice
	// DESCRIPTION: Creates and configures a source voice.
	// ARGUMENTS:
	//  ppSourceVoice - Returns the new object's IXAudio2SourceVoice interface.
	//  pSourceFormat - Format of the audio that will be fed to the voice.
	//  Flags - VOICE flags specifying the source voice's behavior.
	//  MaxFrequencyRatio - Maximum SetFrequencyRatio argument to be allowed.
	//  pCallback - Optional pointer to a client-provided callback interface.
	//  pSendList - Optional list of voices this voice should send audio to.
	//  pEffectChain - Optional list of effects to apply to the audio data.
	CreateSourceVoice:      proc "stdcall" (this: ^IXAudio2, ppSourceVoice: ^^IXAudio2SourceVoice, pSourceFormat: ^sys_windows.WAVEFORMATEX, Flags: FLAGS = {}, MaxFrequencyRatio: f32 = DEFAULT_FREQ_RATIO, pCallback: ^IXAudio2VoiceCallback = nil, pSendList: [^]VOICE_SENDS = nil, pEffectChain: [^]EFFECT_CHAIN = nil) -> sys_windows.HRESULT,
	// NAME: IXAudio2.CreateSubmixVoice
	// DESCRIPTION: Creates and configures a submix voice.
	// ARGUMENTS:
	//  ppSubmixVoice - Returns the new object's IXAudio2SubmixVoice interface.
	//  InputChannels - Number of channels in this voice's input audio data.
	//  InputSampleRate - Sample rate of this voice's input audio data.
	//  Flags - VOICE flags specifying the submix voice's behavior.
	//  ProcessingStage - Arbitrary number that determines the processing order.
	//  pSendList - Optional list of voices this voice should send audio to.
	//  pEffectChain - Optional list of effects to apply to the audio data.
	CreateSubmixVoice:      proc "stdcall" (this: ^IXAudio2, ppSubmixVoice: ^^IXAudio2SubmixVoice, InputChannels: u32, InputSampleRate: u32, Flags: FLAGS = {}, ProcessingStage: u32 = 0, pSendList: [^]VOICE_SENDS = nil, pEffectChain: [^]EFFECT_CHAIN = nil) -> sys_windows.HRESULT,
	// NAME: IXAudio2.CreateMasteringVoice
	// DESCRIPTION: Creates and configures a mastering voice.
	// ARGUMENTS:
	//  ppMasteringVoice - Returns the new object's IXAudio2MasteringVoice interface.
	//  InputChannels - Number of channels in this voice's input audio data.
	//  InputSampleRate - Sample rate of this voice's input audio data.
	//  Flags - VOICE flags specifying the mastering voice's behavior.
	//  szDeviceId - Identifier of the device to receive the output audio.
	//  pEffectChain - Optional list of effects to apply to the audio data.
	//  StreamCategory - The audio stream category to use for this mastering voice
	CreateMasteringVoice:   proc "stdcall" (this: ^IXAudio2, ppMasteringVoice: ^^IXAudio2MasteringVoice, InputChannels: u32 = DEFAULT_CHANNELS, InputSampleRate: u32 = DEFAULT_SAMPLERATE, Flags: FLAGS = {}, szDeviceId: cstring16 = nil, pEffectChain: [^]EFFECT_CHAIN = nil, StreamCategory: AUDIO_STREAM_CATEGORY = .GameEffects) -> sys_windows.HRESULT,
	// NAME: IXAudio2.:StartEngine
	// DESCRIPTION: Creates and starts the audio processing thread.
	StartEngine:            proc "stdcall" (this: ^IXAudio2) -> sys_windows.HRESULT,
	// NAME: IXAudio2.StopEngine
	// DESCRIPTION: Stops and destroys the audio processing thread.
	StopEngine:             proc "stdcall" (this: ^IXAudio2),
	// NAME: IXAudio2.CommitChanges
	// DESCRIPTION: Atomically applies a set of operations previously tagged with a given identifier.
	// ARGUMENTS:
	//  OperationSet - Identifier of the set of operations to be applied.
	CommitChanges:          proc "stdcall" (this: ^IXAudio2, OperationSet: u32) -> sys_windows.HRESULT,
	// NAME: IXAudio2.GetPerformanceData
	// DESCRIPTION: Returns current resource usage details: memory, CPU, etc.
	// ARGUMENTS:
	//  pPerfData - Returns the performance data structure.
	GetPerformanceData:     proc "stdcall" (this: ^IXAudio2, pPerfData: ^PERFORMANCE_DATA),
	// NAME: IXAudio2.SetDebugConfiguration
	// DESCRIPTION: Configures XAudio2's debug output (in debug builds only).
	// ARGUMENTS:
	//  pDebugConfiguration - Structure describing the debug output behavior.
	//  pReserved - Optional parameter; must be nil.
	SetDebugConfiguration:  proc "stdcall" (this: ^IXAudio2, pDebugConfiguration: ^DEBUG_CONFIGURATION, pReserved: rawptr = nil),
}
```

### [LISTENER ¶](#LISTENER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L132)

```
LISTENER :: struct #packed {
	OrientFront: VECTOR,
	// orientation of front direction, used only for matrix and delay calculations or listeners with cones for matrix, LPF (both direct and reverb paths), and reverb calculations, must be normalized when used
	OrientTop:   VECTOR,
	// orientation of top direction, used only for matrix and delay calculations, must be orthonormal with OrientFront when used
	Position:    VECTOR,
	// position in user-defined world units, does not affect Velocity
	Velocity:    VECTOR,
	// velocity vector in user-defined world units/second, used only for doppler calculations, does not affect Position
	pCone:       ^CONE,
}
```

 

Listener:
Defines a point of 3D audio reception.
The cone is directed by the listener's front orientation.




##### Related Procedures With Parameters

* [Calculate](/vendor/windows/XAudio2/#Calculate)

### [PERFORMANCE\_DATA ¶](#PERFORMANCE_DATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L215)

```
PERFORMANCE_DATA :: struct #packed {
	// CPU usage information
	AudioCyclesSinceLastQuery:  u64,
	// CPU cycles spent on audio processing since the last call to StartEngine or GetPerformanceData.
	TotalCyclesSinceLastQuery:  u64,
	// Total CPU cycles elapsed since the last call (only counts the CPU XAudio2 is running on).
	MinimumCyclesPerQuantum:    u32,
	// Fewest CPU cycles spent processing any one audio quantum since the last call.
	MaximumCyclesPerQuantum:    u32,
	// Memory usage information
	MemoryUsageInBytes:         u32,
	// Audio latency and glitching information
	CurrentLatencyInSamples:    u32,
	// Minimum delay from when a sample is read from a source buffer to when it reaches the speakers.
	GlitchesSinceEngineStarted: u32,
	// Data about XAudio2's current workload
	ActiveSourceVoiceCount:     u32,
	// Source voices currently playing.
	TotalSourceVoiceCount:      u32,
	// Source voices currently existing.
	ActiveSubmixVoiceCount:     u32,
	// Submix voices currently playing/existing.
	ActiveResamplerCount:       u32,
	// Resample xAPOs currently active.
	ActiveMatrixMixCount:       u32,
	// Usage of the hardware XMA decoder (Xbox 360 only)
	ActiveXmaSourceVoices:      u32,
	// Number of source voices decoding XMA data.
	ActiveXmaStreams:           u32,
}
```

 

Returned by IXAudio2.GetPerformanceData

### [PROCESSOR\_FLAG ¶](#PROCESSOR_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L99)

```
PROCESSOR_FLAG :: enum u32 {
	Processor1  = 0, 
	Processor2  = 1, 
	Processor3  = 2, 
	Processor4  = 3, 
	Processor5  = 4, 
	Processor6  = 5, 
	Processor7  = 6, 
	Processor8  = 7, 
	Processor9  = 8, 
	Processor10 = 9, 
	Processor11 = 10, 
	Processor12 = 11, 
	Processor13 = 12, 
	Processor14 = 13, 
	Processor15 = 14, 
	Processor16 = 15, 
	Processor17 = 16, 
	Processor18 = 17, 
	Processor19 = 18, 
	Processor20 = 19, 
	Processor21 = 20, 
	Processor22 = 21, 
	Processor23 = 22, 
	Processor24 = 23, 
	Processor25 = 24, 
	Processor26 = 25, 
	Processor27 = 26, 
	Processor28 = 27, 
	Processor29 = 28, 
	Processor30 = 29, 
	Processor31 = 30, 
	Processor32 = 31, 
}
```

### [PROCESSOR\_FLAGS ¶](#PROCESSOR_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L98)

```
PROCESSOR_FLAGS :: distinct bit_set[PROCESSOR_FLAG; u32]
```

 

Used in Create, specifies which CPU(s) to use.




##### Related Procedures With Parameters

* [Create](/vendor/windows/XAudio2/#Create)

##### Related Constants

* [USE\_DEFAULT\_PROCESSOR](/vendor/windows/XAudio2/#USE_DEFAULT_PROCESSOR)

### [REVERB\_I3DL2\_PARAMETERS ¶](#REVERB_I3DL2_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L161)

```
REVERB_I3DL2_PARAMETERS :: struct #packed {
	// ratio of wet (processed) signal to dry (original) signal
	WetDryMix:         f32,
	// Standard I3DL2 parameters
	Room:              i32,
	// [-10000, 0] in mB (hundredths of decibels)
	RoomHF:            i32,
	// [-10000, 0] in mB (hundredths of decibels)
	RoomRolloffFactor: f32,
	// [0.0, 10.0]
	DecayTime:         f32,
	// [0.1, 20.0] in seconds
	DecayHFRatio:      f32,
	// [0.1, 2.0]
	Reflections:       i32,
	// [-10000, 1000] in mB (hundredths of decibels)
	ReflectionsDelay:  f32,
	// [0.0, 0.3] in seconds
	Reverb:            i32,
	// [-10000, 2000] in mB (hundredths of decibels)
	ReverbDelay:       f32,
	// [0.0, 0.1] in seconds
	Diffusion:         f32,
	// [0.0, 100.0] (percentage)
	Density:           f32,
	// [0.0, 100.0] (percentage)
	HFReference:       f32,
}
```

##### Related Procedures With Parameters

* [ReverbConvertI3DL2ToNative](/vendor/windows/XAudio2/#ReverbConvertI3DL2ToNative)

### [REVERB\_PARAMETERS ¶](#REVERB_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L60)

```
REVERB_PARAMETERS :: struct #packed {
	// ratio of wet (processed) signal to dry (original) signal
	WetDryMix:           f32,
	// Delay times
	ReflectionsDelay:    u32,
	// [0, 300] in ms
	ReverbDelay:         u8,
	// [0, 85] in ms
	RearDelay:           u8,
	// 7.1: [0, 20] in ms, all other: [0, 5] in ms
	SideDelay:           u8,
	// Indexed parameters
	PositionLeft:        u8,
	// [0, 30] no units
	PositionRight:       u8,
	// [0, 30] no units, ignored when configured to mono
	PositionMatrixLeft:  u8,
	// [0, 30] no units
	PositionMatrixRight: u8,
	// [0, 30] no units, ignored when configured to mono
	EarlyDiffusion:      u8,
	// [0, 15] no units
	LateDiffusion:       u8,
	// [0, 15] no units
	LowEQGain:           u8,
	// [0, 12] no units
	LowEQCutoff:         u8,
	// [0, 9] no units
	HighEQGain:          u8,
	// [0, 8] no units
	HighEQCutoff:        u8,
	// Direct parameters
	RoomFilterFreq:      f32,
	// [20, 20000] in Hz
	RoomFilterMain:      f32,
	// [-100, 0] in dB
	RoomFilterHF:        f32,
	// [-100, 0] in dB
	ReflectionsGain:     f32,
	// [-100, 20] in dB
	ReverbGain:          f32,
	// [-100, 20] in dB
	DecayTime:           f32,
	// [0.1, inf] in seconds
	Density:             f32,
	// [0, 100] (percentage)
	RoomSize:            f32,
	// component control
	DisableLateField:    b32,
}
```

##### Related Procedures With Parameters

* [ReverbConvertI3DL2ToNative](/vendor/windows/XAudio2/#ReverbConvertI3DL2ToNative)

### [SEND\_DESCRIPTOR ¶](#SEND_DESCRIPTOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L145)

```
SEND_DESCRIPTOR :: struct #packed {
	Flags:        FLAGS,
	// Either 0 or SEND_USEFILTER.
	pOutputVoice: ^IXAudio2Voice,
}
```

 

Used in VOICE\_SENDS below

### [SPEAKER\_FLAGS ¶](#SPEAKER_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L44)

```
SPEAKER_FLAGS :: sys_windows.SPEAKER_FLAGS
```

##### Related Procedures With Parameters

* [Initialize](/vendor/windows/XAudio2/#Initialize)

##### Related Constants

* [SPEAKER\_2POINT1](/vendor/windows/XAudio2/#SPEAKER_2POINT1)
* [SPEAKER\_4POINT1](/vendor/windows/XAudio2/#SPEAKER_4POINT1)
* [SPEAKER\_5POINT1](/vendor/windows/XAudio2/#SPEAKER_5POINT1)
* [SPEAKER\_5POINT1\_SURROUND](/vendor/windows/XAudio2/#SPEAKER_5POINT1_SURROUND)
* [SPEAKER\_7POINT1](/vendor/windows/XAudio2/#SPEAKER_7POINT1)
* [SPEAKER\_7POINT1\_SURROUND](/vendor/windows/XAudio2/#SPEAKER_7POINT1_SURROUND)
* [SPEAKER\_MONO](/vendor/windows/XAudio2/#SPEAKER_MONO)
* [SPEAKER\_QUAD](/vendor/windows/XAudio2/#SPEAKER_QUAD)
* [SPEAKER\_STEREO](/vendor/windows/XAudio2/#SPEAKER_STEREO)
* [SPEAKER\_SURROUND](/vendor/windows/XAudio2/#SPEAKER_SURROUND)

### [VECTOR ¶](#VECTOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L82)

```
VECTOR :: distinct [3]f32
```

 

--------------<D-A-T-A---T-Y-P-E-S>---------------------------------------//

### [VOICE\_DETAILS ¶](#VOICE_DETAILS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L137)

```
VOICE_DETAILS :: struct #packed {
	CreatingFlags:   FLAGS,
	ActiveFlags:     FLAGS,
	InputChannels:   u32,
	InputSampleRate: u32,
}
```

 

Returned by IXAudio2Voice.GetVoiceDetails

### [VOICE\_SENDS ¶](#VOICE_SENDS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L151)

```
VOICE_SENDS :: struct #packed {
	SendCount: u32,
	// Number of sends from this voice.
	pSends:    [^]SEND_DESCRIPTOR `fmt:"v,SendCount"`,
}
```

 

Used in the voice creation functions and in IXAudio2Voice.SetOutputVoices

### [VOICE\_STATE ¶](#VOICE_STATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L208)

```
VOICE_STATE :: struct #packed {
	pCurrentBufferContext: rawptr,
	// The pContext value provided in the BUFFER that is currently being processed, or nil if there are no buffers in the queue.
	BuffersQueued:         u32,
	// Number of buffers currently queued on the voice (including the one that is being processed).
	SamplesPlayed:         u64,
}
```

 

Returned by IXAudio2SourceVoice.GetState

### [VOLUMEMETER\_LEVELS ¶](#VOLUMEMETER_LEVELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L33)

```
VOLUMEMETER_LEVELS :: struct #packed {
	pPeakLevels:  [^]f32 `fmt:"v,ChannelCount"`,
	// Peak levels table: receives maximum absolute level for each channel over a processing pass, may be nil if pRMSLevls != nil, otherwise must have at least ChannelCount elements.
	pRMSLevels:   [^]f32 `fmt:"v,ChannelCount"`,
	// Root mean square levels table: receives RMS level for each channel over a processing pass, may be nil if pPeakLevels != nil, otherwise must have at least ChannelCount elements.
	ChannelCount: u32,
}
```

 

VOLUMEMETER\_LEVELS: Receives results from GetEffectParameters().
The user is responsible for allocating pPeakLevels, pRMSLevels, and initializing ChannelCount accordingly.
The volume meter does not support SetEffectParameters().

### [WAVEFORMATEX ¶](#WAVEFORMATEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L19)

```
WAVEFORMATEX :: sys_windows.WAVEFORMATEX
```

### [XAPO\_BUFFER\_FLAGS ¶](#XAPO_BUFFER_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L132)

```
XAPO_BUFFER_FLAGS :: enum i32 {
	SILENT, // silent data should be assumed, respective memory may be uninitialized
	VALID,  // arbitrary data should be assumed (may or may not be silent frames), respective memory initialized
}
```

 

Buffer flags:
Describes assumed content of the respective buffer.
Used with XAPO\_PROCESS\_BUFFER\_PARAMETERS.BufferFlags.
This meta-data can be used by an XAPO to implement optimizations that require knowledge of a buffer's content.
For example, XAPOs that always produce silent output from silent input can check the flag on the input buffer to determine if any signal processing is necessary.
If silent, the XAPO may simply set the flag on the output buffer to silent and return, optimizing out the work of processing silent data: XAPOs that generate silence for any reason may set the buffer's flag accordingly rather than writing out silent frames to the buffer itself.
The flags represent what should be assumed is in the respective buffer. The flags may not reflect what is actually stored in memory.

### [XAPO\_FLAG ¶](#XAPO_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L66)

```
XAPO_FLAG :: enum u32 {
	// Number of channels of input and output buffers must match, applies to XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.pFormat.
	CHANNELS_MUST_MATCH      = 0, 
	// Framerate of input and output buffers must match, applies to XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.pFormat.
	FRAMERATE_MUST_MATCH     = 1, 
	// Bit depth of input and output buffers must match, applies to XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.pFormat.
	// Container size of input and output buffers must also match if XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.pFormat is WAVEFORMATEXTENSIBLE.
	BITSPERSAMPLE_MUST_MATCH = 2, 
	// Number of input and output buffers must match, applies to XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS.
	// Also, XAPO_REGISTRATION_PROPERTIES.MinInputBufferCount must equal XAPO_REGISTRATION_PROPERTIES.MinOutputBufferCount and XAPO_REGISTRATION_PROPERTIES.MaxInputBufferCount must equal XAPO_REGISTRATION_PROPERTIES.MaxOutputBufferCount when used.
	BUFFERCOUNT_MUST_MATCH   = 3, 
	// XAPO must be run in-place.  Use this flag only if your DSP implementation cannot process separate input and output buffers.
	// If set, the following flags must also be set:
	//     CHANNELS_MUST_MATCH
	//     FRAMERATE_MUST_MATCH
	//     BITSPERSAMPLE_MUST_MATCH
	//     BUFFERCOUNT_MUST_MATCH
	//     INPLACE_SUPPORTED
	// Multiple input and output buffers may be used with in-place XAPOs, though the input buffer count must equal the output buffer count.
	// When multiple input/output buffers are used, the XAPO may assume input buffer [N] equals output buffer [N] for in-place processing.
	INPLACE_REQUIRED         = 5, 
	// XAPO may be run in-place.  If the XAPO is used in a chain such that the requirements for XAPO_FLAG_INPLACE_REQUIRED are met, XAudio2 will ensure the XAPO is run in-place.
	// If not met, XAudio2 will still run the XAPO albeit with separate input and output buffers.
	// For example, consider an effect which may be ran in stereo->5.1 mode or mono->mono mode.  When set to stereo->5.1, it will be run with separate input and output buffers as format conversion is not permitted in-place.
	// However, if configured to run mono->mono, the same XAPO can be run in-place.  Thus the same implementation may be conveniently reused for various input/output configurations, while taking advantage of in-place processing when possible.
	INPLACE_SUPPORTED        = 4, 
}
```

### [XAPO\_FLAGS ¶](#XAPO_FLAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L65)

```
XAPO_FLAGS :: distinct bit_set[XAPO_FLAG; u32]
```

 

XAPO property flags, used with XAPO\_REGISTRATION\_PROPERTIES.Flags:

### [XAPO\_LOCKFORPROCESS\_BUFFER\_PARAMETERS ¶](#XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L120)

```
XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS :: struct #packed {
	pFormat:       ^sys_windows.WAVEFORMATEX,
	// buffer audio format
	MaxFrameCount: u32,
}
```

 

LockForProcess buffer parameters:
Defines buffer parameters that remain constant while an XAPO is locked.
Used with IXAPO.LockForProcess.
For CBR XAPOs, MaxFrameCount is the only number of frames
IXAPO.Process would have to handle for the respective buffer.

### [XAPO\_PROCESS\_BUFFER\_PARAMETERS ¶](#XAPO_PROCESS_BUFFER_PARAMETERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L143)

```
XAPO_PROCESS_BUFFER_PARAMETERS :: struct #packed {
	pBuffer:         rawptr,
	// audio data buffer, must be non-nil
	BufferFlags:     XAPO_BUFFER_FLAGS,
	// describes assumed content of pBuffer, does not affect ValidFrameCount
	ValidFrameCount: u32,
}
```

 

Process buffer parameters:
Defines buffer parameters that may change from one processing pass to the next. Used with IXAPO.Process.
Note the byte size of the respective buffer must be at least:
XAPO\_LOCKFORPROCESS\_BUFFER\_PARAMETERS.MaxFrameCount \* XAPO\_LOCKFORPROCESS\_BUFFER\_PARAMETERS.pFormat.nBlockAlign
Although the audio format and maximum size of the respective buffer is locked (defined by XAPO\_LOCKFORPROCESS\_BUFFER\_PARAMETERS), the actual memory address of the buffer given is permitted to change from one processing pass to the next.
For CBR XAPOs, ValidFrameCount is constant while locked and equals the respective XAPO\_LOCKFORPROCESS\_BUFFER\_PARAMETERS.MaxFrameCount.

### [XAPO\_REGISTRATION\_PROPERTIES ¶](#XAPO_REGISTRATION_PROPERTIES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L102)

```
XAPO_REGISTRATION_PROPERTIES :: struct #packed {
	clsid:                sys_windows.GUID,
	// COM class ID, used with CoCreate
	FriendlyName:         [256]u16,
	// friendly name unicode string
	CopyrightInfo:        [256]u16,
	// copyright information unicode string
	MajorVersion:         u32,
	// major version
	MinorVersion:         u32,
	// minor version
	Flags:                XAPO_FLAGS,
	// XAPO property flags, describes supported input/output configuration
	MinInputBufferCount:  u32,
	// minimum number of input buffers required for processing, can be 0
	MaxInputBufferCount:  u32,
	// maximum number of input buffers supported for processing, must be >= MinInputBufferCount
	MinOutputBufferCount: u32,
	// minimum number of output buffers required for processing, can be 0, must match MinInputBufferCount when XAPO_FLAG.BUFFERCOUNT_MUST_MATCH used
	MaxOutputBufferCount: u32,
}
```

 

XAPO registration properties, describes general XAPO characteristics, used with IXAPO.GetRegistrationProperties

## Constants

### [COMMIT\_ALL ¶](#COMMIT_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L49)

```
COMMIT_ALL :: 0
```

 

Used in IXAudio2.CommitChanges

### [COMMIT\_NOW ¶](#COMMIT_NOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L48)

```
COMMIT_NOW :: 0
```

 

Numeric values with special meanings

### [DEFAULT\_CHANNELS ¶](#DEFAULT_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L53)

```
DEFAULT_CHANNELS :: 0
```

 

Used in CreateMasteringVoice

### [DEFAULT\_FILTER\_FREQUENCY ¶](#DEFAULT_FILTER_FREQUENCY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L74)

```
DEFAULT_FILTER_FREQUENCY :: MAX_FILTER_FREQUENCY
```

### [DEFAULT\_FILTER\_ONEOVERQ ¶](#DEFAULT_FILTER_ONEOVERQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L75)

```
DEFAULT_FILTER_ONEOVERQ :: 1.0
```

### [DEFAULT\_FILTER\_TYPE ¶](#DEFAULT_FILTER_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L73)

```
DEFAULT_FILTER_TYPE :: FILTER_TYPE.LowPassFilter
```

 

Default parameters for the built-in filter

### [DEFAULT\_FREQ\_RATIO ¶](#DEFAULT_FREQ_RATIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L37)

```
DEFAULT_FREQ_RATIO :: 2.0
```

 

Default MaxFrequencyRatio argument

### [DEFAULT\_SAMPLERATE ¶](#DEFAULT_SAMPLERATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L54)

```
DEFAULT_SAMPLERATE :: 0
```

 

Used in CreateMasteringVoice

### [DEVICE\_INVALIDATED ¶](#DEVICE_INVALIDATED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L88)

```
DEVICE_INVALIDATED :: HRESULT(-2003435516)
```

 

0x88960004 An audio device became unusable (unplugged, etc)

### [FXECHO\_DEFAULT\_DELAY ¶](#FXECHO_DEFAULT_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L77)

```
FXECHO_DEFAULT_DELAY :: 500.0
```

### [FXECHO\_DEFAULT\_FEEDBACK ¶](#FXECHO_DEFAULT_FEEDBACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L73)

```
FXECHO_DEFAULT_FEEDBACK :: 0.5
```

### [FXECHO\_DEFAULT\_WETDRYMIX ¶](#FXECHO_DEFAULT_WETDRYMIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L69)

```
FXECHO_DEFAULT_WETDRYMIX :: 0.5
```

### [FXECHO\_MAX\_DELAY ¶](#FXECHO_MAX_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L76)

```
FXECHO_MAX_DELAY :: 2000.0
```

### [FXECHO\_MAX\_FEEDBACK ¶](#FXECHO_MAX_FEEDBACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L72)

```
FXECHO_MAX_FEEDBACK :: 1.0
```

### [FXECHO\_MAX\_WETDRYMIX ¶](#FXECHO_MAX_WETDRYMIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L68)

```
FXECHO_MAX_WETDRYMIX :: 1.0
```

### [FXECHO\_MIN\_DELAY ¶](#FXECHO_MIN_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L75)

```
FXECHO_MIN_DELAY :: 1.0
```

### [FXECHO\_MIN\_FEEDBACK ¶](#FXECHO_MIN_FEEDBACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L71)

```
FXECHO_MIN_FEEDBACK :: 0.0
```

### [FXECHO\_MIN\_WETDRYMIX ¶](#FXECHO_MIN_WETDRYMIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L67)

```
FXECHO_MIN_WETDRYMIX :: 0.0
```

 

Echo initialization data/parameter bounds (inclusive), used with FXEcho:

### [FXEQ\_DEFAULT\_BANDWIDTH ¶](#FXEQ_DEFAULT_BANDWIDTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L40)

```
FXEQ_DEFAULT_BANDWIDTH :: 1.0
```

 

all bands

### [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_0 ¶](#FXEQ_DEFAULT_FREQUENCY_CENTER_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L29)

```
FXEQ_DEFAULT_FREQUENCY_CENTER_0 :: 100.0
```

 

band 0

### [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_1 ¶](#FXEQ_DEFAULT_FREQUENCY_CENTER_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L30)

```
FXEQ_DEFAULT_FREQUENCY_CENTER_1 :: 800.0
```

 

band 1

### [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_2 ¶](#FXEQ_DEFAULT_FREQUENCY_CENTER_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L31)

```
FXEQ_DEFAULT_FREQUENCY_CENTER_2 :: 2000.0
```

 

band 2

### [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_3 ¶](#FXEQ_DEFAULT_FREQUENCY_CENTER_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L32)

```
FXEQ_DEFAULT_FREQUENCY_CENTER_3 :: 10000.0
```

 

band 3

### [FXEQ\_DEFAULT\_GAIN ¶](#FXEQ_DEFAULT_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L36)

```
FXEQ_DEFAULT_GAIN :: 1.0
```

 

0dB change, all bands

### [FXEQ\_MAX\_BANDWIDTH ¶](#FXEQ_MAX_BANDWIDTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L39)

```
FXEQ_MAX_BANDWIDTH :: 2.0
```

### [FXEQ\_MAX\_FRAMERATE ¶](#FXEQ_MAX_FRAMERATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L25)

```
FXEQ_MAX_FRAMERATE :: 48000
```

### [FXEQ\_MAX\_FREQUENCY\_CENTER ¶](#FXEQ_MAX_FREQUENCY_CENTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L28)

```
FXEQ_MAX_FREQUENCY_CENTER :: 20000.0
```

### [FXEQ\_MAX\_GAIN ¶](#FXEQ_MAX_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L35)

```
FXEQ_MAX_GAIN :: 7.94
```

### [FXEQ\_MIN\_BANDWIDTH ¶](#FXEQ_MIN_BANDWIDTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L38)

```
FXEQ_MIN_BANDWIDTH :: 0.1
```

### [FXEQ\_MIN\_FRAMERATE ¶](#FXEQ_MIN_FRAMERATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L24)

```
FXEQ_MIN_FRAMERATE :: 22000
```

 

EQ parameter bounds (inclusive), used with FXEQ:

### [FXEQ\_MIN\_FREQUENCY\_CENTER ¶](#FXEQ_MIN_FREQUENCY_CENTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L27)

```
FXEQ_MIN_FREQUENCY_CENTER :: 20.0
```

### [FXEQ\_MIN\_GAIN ¶](#FXEQ_MIN_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L34)

```
FXEQ_MIN_GAIN :: 0.126
```

 

-18dB

### [FXEQ\_UUID\_STRING ¶](#FXEQ_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L11)

```
FXEQ_UUID_STRING :: "F5E01117-D6C4-485A-A3F5-695196F3DBFA"
```

### [FXEcho\_UUID\_STRING ¶](#FXEcho_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L20)

```
FXEcho_UUID_STRING :: "5039D740-F736-449A-84D3-A56202557B87"
```

### [FXLOUDNESS\_DEFAULT\_MOMENTARY\_MS ¶](#FXLOUDNESS_DEFAULT_MOMENTARY_MS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L63)

```
FXLOUDNESS_DEFAULT_MOMENTARY_MS :: 400
```

 

Loudness defaults used with FXLoudness:

### [FXLOUDNESS\_DEFAULT\_SHORTTERM\_MS ¶](#FXLOUDNESS_DEFAULT_SHORTTERM_MS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L64)

```
FXLOUDNESS_DEFAULT_SHORTTERM_MS :: 3000
```

### [FXMASTERINGLIMITER\_DEFAULT\_LOUDNESS ¶](#FXMASTERINGLIMITER_DEFAULT_LOUDNESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L50)

```
FXMASTERINGLIMITER_DEFAULT_LOUDNESS :: 1000
```

### [FXMASTERINGLIMITER\_DEFAULT\_RELEASE ¶](#FXMASTERINGLIMITER_DEFAULT_RELEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L46)

```
FXMASTERINGLIMITER_DEFAULT_RELEASE :: 6
```

### [FXMASTERINGLIMITER\_MAX\_LOUDNESS ¶](#FXMASTERINGLIMITER_MAX_LOUDNESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L49)

```
FXMASTERINGLIMITER_MAX_LOUDNESS :: 1800
```

### [FXMASTERINGLIMITER\_MAX\_RELEASE ¶](#FXMASTERINGLIMITER_MAX_RELEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L45)

```
FXMASTERINGLIMITER_MAX_RELEASE :: 20
```

### [FXMASTERINGLIMITER\_MIN\_LOUDNESS ¶](#FXMASTERINGLIMITER_MIN_LOUDNESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L48)

```
FXMASTERINGLIMITER_MIN_LOUDNESS :: 1
```

### [FXMASTERINGLIMITER\_MIN\_RELEASE ¶](#FXMASTERINGLIMITER_MIN_RELEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L44)

```
FXMASTERINGLIMITER_MIN_RELEASE :: 1
```

 

Mastering limiter parameter bounds (inclusive), used with FXMasteringLimiter:

### [FXMasteringLimiter\_UUID\_STRING ¶](#FXMasteringLimiter_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L14)

```
FXMasteringLimiter_UUID_STRING :: "C4137916-2BE1-46FD-8599-441536F49856"
```

### [FXREVERB\_DEFAULT\_DIFFUSION ¶](#FXREVERB_DEFAULT_DIFFUSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L56)

```
FXREVERB_DEFAULT_DIFFUSION :: 0.9
```

### [FXREVERB\_DEFAULT\_ROOMSIZE ¶](#FXREVERB_DEFAULT_ROOMSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L60)

```
FXREVERB_DEFAULT_ROOMSIZE :: 0.6
```

### [FXREVERB\_MAX\_DIFFUSION ¶](#FXREVERB_MAX_DIFFUSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L55)

```
FXREVERB_MAX_DIFFUSION :: 1.0
```

### [FXREVERB\_MAX\_ROOMSIZE ¶](#FXREVERB_MAX_ROOMSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L59)

```
FXREVERB_MAX_ROOMSIZE :: 1.0
```

### [FXREVERB\_MIN\_DIFFUSION ¶](#FXREVERB_MIN_DIFFUSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L54)

```
FXREVERB_MIN_DIFFUSION :: 0.0
```

 

Reverb parameter bounds (inclusive), used with FXReverb:

### [FXREVERB\_MIN\_ROOMSIZE ¶](#FXREVERB_MIN_ROOMSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L58)

```
FXREVERB_MIN_ROOMSIZE :: 0.0001
```

### [FXReverb\_UUID\_STRING ¶](#FXReverb_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L17)

```
FXReverb_UUID_STRING :: "7D9ACA56-CB68-4807-B632-B137352E8596"
```

### [HANDLE\_BYTESIZE ¶](#HANDLE_BYTESIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L61)

```
HANDLE_BYTESIZE :: 20
```

 

size of instance handle in bytes

### [HRTF\_DEFAULT\_CUTOFF\_DISTANCE ¶](#HRTF_DEFAULT_CUTOFF_DISTANCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L13)

```
HRTF_DEFAULT_CUTOFF_DISTANCE :: 3.402823466e+38
```

### [HRTF\_DEFAULT\_UNITY\_GAIN\_DISTANCE ¶](#HRTF_DEFAULT_UNITY_GAIN_DISTANCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L12)

```
HRTF_DEFAULT_UNITY_GAIN_DISTANCE :: 1.0
```

### [HRTF\_MAX\_GAIN\_LIMIT ¶](#HRTF_MAX_GAIN_LIMIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L9)

```
HRTF_MAX_GAIN_LIMIT :: 12.0
```

### [HRTF\_MIN\_GAIN\_LIMIT ¶](#HRTF_MIN_GAIN_LIMIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L10)

```
HRTF_MIN_GAIN_LIMIT :: -96.0
```

### [HRTF\_MIN\_UNITY\_GAIN\_DISTANCE ¶](#HRTF_MIN_UNITY_GAIN_DISTANCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L11)

```
HRTF_MIN_UNITY_GAIN_DISTANCE :: 0.05
```

### [INVALID\_CALL ¶](#INVALID_CALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L85)

```
INVALID_CALL :: HRESULT(-2003435519)
```

 

XAudio2 error codes

### [INVALID\_OPSET ¶](#INVALID_OPSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L50)

```
INVALID_OPSET :: 0xffffffff
```

 

Not allowed for OperationSet arguments

### [IXAPOHrtfParameters\_UUID\_STRING ¶](#IXAPOHrtfParameters_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L129)

```
IXAPOHrtfParameters_UUID_STRING :: "15B3CD66-E9DE-4464-B6E6-2BC3CF63D455"
```

 

! The interface used to set parameters that control how HRTF is applied to a sound.

### [IXAPOParameters\_UUID\_STRING ¶](#IXAPOParameters_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L309)

```
IXAPOParameters_UUID_STRING :: "26D95C66-80F2-499A-AD54-5AE7F01C6D98"
```

 

IXAPOParameters:
Optional XAPO COM interface that allows an XAPO to use effect-specific parameters.

### [IXAPO\_UUID\_STRING ¶](#IXAPO_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L153)

```
IXAPO_UUID_STRING :: "A410B984-9839-4819-A0BE-2856AE6B3ADB"
```

### [IXAudio2Extension\_UUID\_STRING ¶](#IXAudio2Extension_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L362)

```
IXAudio2Extension_UUID_STRING :: "84ac29bb-d619-44d2-b197-e4acf7df3ed6"
```

 

This interface extends IXAudio2 with additional functionality.
Use IXAudio2.QueryInterface to obtain a pointer to this interface.

### [IXAudio2\_UUID\_STRING ¶](#IXAudio2_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L275)

```
IXAudio2_UUID_STRING :: "2B02E3CF-2E0B-4ec3-BE45-1B2A3FE7210D"
```

### [LOOP\_INFINITE ¶](#LOOP_INFINITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L52)

```
LOOP_INFINITE :: 255
```

 

Used in BUFFER.LoopCount

### [MAX\_AUDIO\_CHANNELS ¶](#MAX_AUDIO_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L31)

```
MAX_AUDIO_CHANNELS :: 64
```

 

Maximum channels in an audio stream

### [MAX\_BUFFERS\_SYSTEM ¶](#MAX_BUFFERS_SYSTEM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L30)

```
MAX_BUFFERS_SYSTEM :: 2
```

 

Maximum buffers allowed for system threads (Xbox 360 only)

### [MAX\_BUFFER\_BYTES ¶](#MAX_BUFFER_BYTES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L28)

```
MAX_BUFFER_BYTES :: 0x80000000
```

 

Numeric boundary values

### [MAX\_FILTER\_FREQUENCY ¶](#MAX_FILTER_FREQUENCY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L39)

```
MAX_FILTER_FREQUENCY :: 1.0
```

 

Maximum FILTER\_PARAMETERS.Frequency

### [MAX\_FILTER\_ONEOVERQ ¶](#MAX_FILTER_ONEOVERQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L38)

```
MAX_FILTER_ONEOVERQ :: 1.5
```

 

Maximum FILTER\_PARAMETERS.OneOverQ

### [MAX\_FREQ\_RATIO ¶](#MAX_FREQ_RATIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L36)

```
MAX_FREQ_RATIO :: 1024.0
```

 

Maximum MaxFrequencyRatio argument

### [MAX\_INSTANCES ¶](#MAX_INSTANCES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L41)

```
MAX_INSTANCES :: 8
```

 

Maximum simultaneous XAudio2 objects on Xbox 360

### [MAX\_LOOP\_COUNT ¶](#MAX_LOOP_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L40)

```
MAX_LOOP_COUNT :: 254
```

 

Maximum non-infinite BUFFER.LoopCount

### [MAX\_QUEUED\_BUFFERS ¶](#MAX_QUEUED_BUFFERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L29)

```
MAX_QUEUED_BUFFERS :: 64
```

 

Maximum buffers allowed in a voice queue

### [MAX\_RATIO\_TIMES\_RATE\_XMA\_MONO ¶](#MAX_RATIO_TIMES_RATE_XMA_MONO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L44)

```
MAX_RATIO_TIMES_RATE_XMA_MONO :: 600000
```

 

For XMA voices on Xbox 360 there is an additional restriction on the MaxFrequencyRatio argument and the voice's sample rate: the product of these numbers cannot exceed 600000 for one-channel voices or 300000 for voices with more than one channel.

### [MAX\_RATIO\_TIMES\_RATE\_XMA\_MULTICHANNEL ¶](#MAX_RATIO_TIMES_RATE_XMA_MULTICHANNEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L45)

```
MAX_RATIO_TIMES_RATE_XMA_MULTICHANNEL :: 300000
```

### [MAX\_SAMPLE\_RATE ¶](#MAX_SAMPLE_RATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L33)

```
MAX_SAMPLE_RATE :: 200000
```

 

Maximum audio sample rate supported

### [MAX\_VOLUME\_LEVEL ¶](#MAX_VOLUME_LEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L34)

```
MAX_VOLUME_LEVEL :: 16777216.0
```

 

Maximum acceptable volume level (2^24)

### [MIN\_FREQ\_RATIO ¶](#MIN_FREQ_RATIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L35)

```
MIN_FREQ_RATIO :: 1.0 / 1024.0
```

 

Minimum SetFrequencyRatio argument

### [MIN\_SAMPLE\_RATE ¶](#MIN_SAMPLE_RATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L32)

```
MIN_SAMPLE_RATE :: 1000
```

 

Minimum audio sample rate supported

### [NO\_LOOP\_REGION ¶](#NO_LOOP_REGION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L51)

```
NO_LOOP_REGION :: 0
```

 

Used in BUFFER.LoopCount

### [QUANTUM\_DENOMINATOR ¶](#QUANTUM_DENOMINATOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L81)

```
QUANTUM_DENOMINATOR :: 100
```

 

in 10ms chunks (= 1/100 seconds)

### [QUANTUM\_MS ¶](#QUANTUM_MS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L82)

```
QUANTUM_MS :: 1000.0 * QUANTUM_NUMERATOR / QUANTUM_DENOMINATOR
```

### [QUANTUM\_NUMERATOR ¶](#QUANTUM_NUMERATOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L80)

```
QUANTUM_NUMERATOR :: 1
```

 

Internal XAudio2 constants
The audio frame quantum can be calculated by reducing the fraction:
SamplesPerAudioFrame / SamplesPerSecond

### [REVERB\_DEFAULT\_7POINT1\_REAR\_DELAY ¶](#REVERB_DEFAULT_7POINT1_REAR_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L139)

```
REVERB_DEFAULT_7POINT1_REAR_DELAY :: 20
```

### [REVERB\_DEFAULT\_7POINT1\_SIDE\_DELAY ¶](#REVERB_DEFAULT_7POINT1_SIDE_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L138)

```
REVERB_DEFAULT_7POINT1_SIDE_DELAY :: 5
```

### [REVERB\_DEFAULT\_DECAY\_TIME ¶](#REVERB_DEFAULT_DECAY_TIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L153)

```
REVERB_DEFAULT_DECAY_TIME :: 1.0
```

### [REVERB\_DEFAULT\_DENSITY ¶](#REVERB_DEFAULT_DENSITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L154)

```
REVERB_DEFAULT_DENSITY :: 100.0
```

### [REVERB\_DEFAULT\_DISABLE\_LATE\_FIELD ¶](#REVERB_DEFAULT_DISABLE_LATE_FIELD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L157)

```
REVERB_DEFAULT_DISABLE_LATE_FIELD: b32 : false
```

### [REVERB\_DEFAULT\_EARLY\_DIFFUSION ¶](#REVERB_DEFAULT_EARLY_DIFFUSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L142)

```
REVERB_DEFAULT_EARLY_DIFFUSION :: 8
```

### [REVERB\_DEFAULT\_HIGH\_EQ\_CUTOFF ¶](#REVERB_DEFAULT_HIGH_EQ_CUTOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L147)

```
REVERB_DEFAULT_HIGH_EQ_CUTOFF :: 4
```

### [REVERB\_DEFAULT\_HIGH\_EQ\_GAIN ¶](#REVERB_DEFAULT_HIGH_EQ_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L146)

```
REVERB_DEFAULT_HIGH_EQ_GAIN :: 8
```

### [REVERB\_DEFAULT\_LATE\_DIFFUSION ¶](#REVERB_DEFAULT_LATE_DIFFUSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L143)

```
REVERB_DEFAULT_LATE_DIFFUSION :: 8
```

### [REVERB\_DEFAULT\_LOW\_EQ\_CUTOFF ¶](#REVERB_DEFAULT_LOW_EQ_CUTOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L145)

```
REVERB_DEFAULT_LOW_EQ_CUTOFF :: 4
```

### [REVERB\_DEFAULT\_LOW\_EQ\_GAIN ¶](#REVERB_DEFAULT_LOW_EQ_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L144)

```
REVERB_DEFAULT_LOW_EQ_GAIN :: 8
```

### [REVERB\_DEFAULT\_POSITION ¶](#REVERB_DEFAULT_POSITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L140)

```
REVERB_DEFAULT_POSITION :: 6
```

### [REVERB\_DEFAULT\_POSITION\_MATRIX ¶](#REVERB_DEFAULT_POSITION_MATRIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L141)

```
REVERB_DEFAULT_POSITION_MATRIX :: 27
```

### [REVERB\_DEFAULT\_REAR\_DELAY ¶](#REVERB_DEFAULT_REAR_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L137)

```
REVERB_DEFAULT_REAR_DELAY :: 5
```

### [REVERB\_DEFAULT\_REFLECTIONS\_DELAY ¶](#REVERB_DEFAULT_REFLECTIONS_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L135)

```
REVERB_DEFAULT_REFLECTIONS_DELAY :: 5
```

### [REVERB\_DEFAULT\_REFLECTIONS\_GAIN ¶](#REVERB_DEFAULT_REFLECTIONS_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L151)

```
REVERB_DEFAULT_REFLECTIONS_GAIN :: 0.0
```

### [REVERB\_DEFAULT\_REVERB\_DELAY ¶](#REVERB_DEFAULT_REVERB_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L136)

```
REVERB_DEFAULT_REVERB_DELAY :: 5
```

### [REVERB\_DEFAULT\_REVERB\_GAIN ¶](#REVERB_DEFAULT_REVERB_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L152)

```
REVERB_DEFAULT_REVERB_GAIN :: 0.0
```

### [REVERB\_DEFAULT\_ROOM\_FILTER\_FREQ ¶](#REVERB_DEFAULT_ROOM_FILTER_FREQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L148)

```
REVERB_DEFAULT_ROOM_FILTER_FREQ :: 5000.0
```

### [REVERB\_DEFAULT\_ROOM\_FILTER\_HF ¶](#REVERB_DEFAULT_ROOM_FILTER_HF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L150)

```
REVERB_DEFAULT_ROOM_FILTER_HF :: 0.0
```

### [REVERB\_DEFAULT\_ROOM\_FILTER\_MAIN ¶](#REVERB_DEFAULT_ROOM_FILTER_MAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L149)

```
REVERB_DEFAULT_ROOM_FILTER_MAIN :: 0.0
```

### [REVERB\_DEFAULT\_ROOM\_SIZE ¶](#REVERB_DEFAULT_ROOM_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L155)

```
REVERB_DEFAULT_ROOM_SIZE :: 100.0
```

### [REVERB\_DEFAULT\_WET\_DRY\_MIX ¶](#REVERB_DEFAULT_WET_DRY_MIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L134)

```
REVERB_DEFAULT_WET_DRY_MIX :: 100.0
```

### [REVERB\_MAX\_7POINT1\_REAR\_DELAY ¶](#REVERB_MAX_7POINT1_REAR_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L119)

```
REVERB_MAX_7POINT1_REAR_DELAY :: 20
```

### [REVERB\_MAX\_7POINT1\_SIDE\_DELAY ¶](#REVERB_MAX_7POINT1_SIDE_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L118)

```
REVERB_MAX_7POINT1_SIDE_DELAY :: 5
```

### [REVERB\_MAX\_DENSITY ¶](#REVERB_MAX_DENSITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L131)

```
REVERB_MAX_DENSITY :: 100.0
```

### [REVERB\_MAX\_DIFFUSION ¶](#REVERB_MAX_DIFFUSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L121)

```
REVERB_MAX_DIFFUSION :: 15
```

### [REVERB\_MAX\_FRAMERATE ¶](#REVERB_MAX_FRAMERATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L56)

```
REVERB_MAX_FRAMERATE :: 48000
```

### [REVERB\_MAX\_HIGH\_EQ\_CUTOFF ¶](#REVERB_MAX_HIGH_EQ_CUTOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L125)

```
REVERB_MAX_HIGH_EQ_CUTOFF :: 14
```

### [REVERB\_MAX\_HIGH\_EQ\_GAIN ¶](#REVERB_MAX_HIGH_EQ_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L124)

```
REVERB_MAX_HIGH_EQ_GAIN :: 8
```

### [REVERB\_MAX\_LOW\_EQ\_CUTOFF ¶](#REVERB_MAX_LOW_EQ_CUTOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L123)

```
REVERB_MAX_LOW_EQ_CUTOFF :: 9
```

### [REVERB\_MAX\_LOW\_EQ\_GAIN ¶](#REVERB_MAX_LOW_EQ_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L122)

```
REVERB_MAX_LOW_EQ_GAIN :: 12
```

### [REVERB\_MAX\_POSITION ¶](#REVERB_MAX_POSITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L120)

```
REVERB_MAX_POSITION :: 30
```

### [REVERB\_MAX\_REAR\_DELAY ¶](#REVERB_MAX_REAR_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L117)

```
REVERB_MAX_REAR_DELAY :: 5
```

### [REVERB\_MAX\_REFLECTIONS\_DELAY ¶](#REVERB_MAX_REFLECTIONS_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L115)

```
REVERB_MAX_REFLECTIONS_DELAY :: 300
```

### [REVERB\_MAX\_REFLECTIONS\_GAIN ¶](#REVERB_MAX_REFLECTIONS_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L129)

```
REVERB_MAX_REFLECTIONS_GAIN :: 20.0
```

### [REVERB\_MAX\_REVERB\_DELAY ¶](#REVERB_MAX_REVERB_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L116)

```
REVERB_MAX_REVERB_DELAY :: 85
```

### [REVERB\_MAX\_REVERB\_GAIN ¶](#REVERB_MAX_REVERB_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L130)

```
REVERB_MAX_REVERB_GAIN :: 20.0
```

### [REVERB\_MAX\_ROOM\_FILTER\_FREQ ¶](#REVERB_MAX_ROOM_FILTER_FREQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L126)

```
REVERB_MAX_ROOM_FILTER_FREQ :: 20000.0
```

### [REVERB\_MAX\_ROOM\_FILTER\_HF ¶](#REVERB_MAX_ROOM_FILTER_HF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L128)

```
REVERB_MAX_ROOM_FILTER_HF :: 0.0
```

### [REVERB\_MAX\_ROOM\_FILTER\_MAIN ¶](#REVERB_MAX_ROOM_FILTER_MAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L127)

```
REVERB_MAX_ROOM_FILTER_MAIN :: 0.0
```

### [REVERB\_MAX\_ROOM\_SIZE ¶](#REVERB_MAX_ROOM_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L132)

```
REVERB_MAX_ROOM_SIZE :: 100.0
```

### [REVERB\_MAX\_WET\_DRY\_MIX ¶](#REVERB_MAX_WET_DRY_MIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L114)

```
REVERB_MAX_WET_DRY_MIX :: 100.0
```

### [REVERB\_MIN\_7POINT1\_REAR\_DELAY ¶](#REVERB_MIN_7POINT1_REAR_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L98)

```
REVERB_MIN_7POINT1_REAR_DELAY :: 0
```

### [REVERB\_MIN\_7POINT1\_SIDE\_DELAY ¶](#REVERB_MIN_7POINT1_SIDE_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L97)

```
REVERB_MIN_7POINT1_SIDE_DELAY :: 0
```

### [REVERB\_MIN\_DECAY\_TIME ¶](#REVERB_MIN_DECAY_TIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L110)

```
REVERB_MIN_DECAY_TIME :: 0.1
```

### [REVERB\_MIN\_DENSITY ¶](#REVERB_MIN_DENSITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L111)

```
REVERB_MIN_DENSITY :: 0.0
```

### [REVERB\_MIN\_DIFFUSION ¶](#REVERB_MIN_DIFFUSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L100)

```
REVERB_MIN_DIFFUSION :: 0
```

### [REVERB\_MIN\_FRAMERATE ¶](#REVERB_MIN_FRAMERATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L55)

```
REVERB_MIN_FRAMERATE :: 20000
```

### [REVERB\_MIN\_HIGH\_EQ\_CUTOFF ¶](#REVERB_MIN_HIGH_EQ_CUTOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L104)

```
REVERB_MIN_HIGH_EQ_CUTOFF :: 0
```

### [REVERB\_MIN\_HIGH\_EQ\_GAIN ¶](#REVERB_MIN_HIGH_EQ_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L103)

```
REVERB_MIN_HIGH_EQ_GAIN :: 0
```

### [REVERB\_MIN\_LOW\_EQ\_CUTOFF ¶](#REVERB_MIN_LOW_EQ_CUTOFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L102)

```
REVERB_MIN_LOW_EQ_CUTOFF :: 0
```

### [REVERB\_MIN\_LOW\_EQ\_GAIN ¶](#REVERB_MIN_LOW_EQ_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L101)

```
REVERB_MIN_LOW_EQ_GAIN :: 0
```

### [REVERB\_MIN\_POSITION ¶](#REVERB_MIN_POSITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L99)

```
REVERB_MIN_POSITION :: 0
```

### [REVERB\_MIN\_REAR\_DELAY ¶](#REVERB_MIN_REAR_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L96)

```
REVERB_MIN_REAR_DELAY :: 0
```

### [REVERB\_MIN\_REFLECTIONS\_DELAY ¶](#REVERB_MIN_REFLECTIONS_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L94)

```
REVERB_MIN_REFLECTIONS_DELAY :: 0
```

### [REVERB\_MIN\_REFLECTIONS\_GAIN ¶](#REVERB_MIN_REFLECTIONS_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L108)

```
REVERB_MIN_REFLECTIONS_GAIN :: -100.0
```

### [REVERB\_MIN\_REVERB\_DELAY ¶](#REVERB_MIN_REVERB_DELAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L95)

```
REVERB_MIN_REVERB_DELAY :: 0
```

### [REVERB\_MIN\_REVERB\_GAIN ¶](#REVERB_MIN_REVERB_GAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L109)

```
REVERB_MIN_REVERB_GAIN :: -100.0
```

### [REVERB\_MIN\_ROOM\_FILTER\_FREQ ¶](#REVERB_MIN_ROOM_FILTER_FREQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L105)

```
REVERB_MIN_ROOM_FILTER_FREQ :: 20.0
```

### [REVERB\_MIN\_ROOM\_FILTER\_HF ¶](#REVERB_MIN_ROOM_FILTER_HF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L107)

```
REVERB_MIN_ROOM_FILTER_HF :: -100.0
```

### [REVERB\_MIN\_ROOM\_FILTER\_MAIN ¶](#REVERB_MIN_ROOM_FILTER_MAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L106)

```
REVERB_MIN_ROOM_FILTER_MAIN :: -100.0
```

### [REVERB\_MIN\_ROOM\_SIZE ¶](#REVERB_MIN_ROOM_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L112)

```
REVERB_MIN_ROOM_SIZE :: 0.0
```

### [REVERB\_MIN\_WET\_DRY\_MIX ¶](#REVERB_MIN_WET_DRY_MIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L93)

```
REVERB_MIN_WET_DRY_MIX :: 0.0
```

 

Maximum, minimum and default values for the parameters above

### [SPEAKER\_2POINT1 ¶](#SPEAKER_2POINT1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L51)

```
SPEAKER_2POINT1 :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .LOW_FREQUENCY}
```

### [SPEAKER\_4POINT1 ¶](#SPEAKER_4POINT1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L54)

```
SPEAKER_4POINT1 :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .LOW_FREQUENCY, .BACK_LEFT, .BACK_RIGHT}
```

### [SPEAKER\_5POINT1 ¶](#SPEAKER_5POINT1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L55)

```
SPEAKER_5POINT1 :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .FRONT_CENTER, .LOW_FREQUENCY, .BACK_LEFT, .BACK_RIGHT}
```

### [SPEAKER\_5POINT1\_SURROUND ¶](#SPEAKER_5POINT1_SURROUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L57)

```
SPEAKER_5POINT1_SURROUND :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .FRONT_CENTER, .LOW_FREQUENCY, .SIDE_LEFT, .SIDE_RIGHT}
```

### [SPEAKER\_7POINT1 ¶](#SPEAKER_7POINT1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L56)

```
SPEAKER_7POINT1 :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .FRONT_CENTER, .LOW_FREQUENCY, .BACK_LEFT, .BACK_RIGHT, .FRONT_LEFT_OF_CENTER, .FRONT_RIGHT_OF_CENTER}
```

### [SPEAKER\_7POINT1\_SURROUND ¶](#SPEAKER_7POINT1_SURROUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L58)

```
SPEAKER_7POINT1_SURROUND :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .FRONT_CENTER, .LOW_FREQUENCY, .BACK_LEFT, .BACK_RIGHT, .SIDE_LEFT, .SIDE_RIGHT}
```

### [SPEAKER\_MONO ¶](#SPEAKER_MONO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L49)

```
SPEAKER_MONO :: SPEAKER_FLAGS{.FRONT_CENTER}
```

 

standard speaker geometry configurations, used with Initialize

### [SPEAKER\_QUAD ¶](#SPEAKER_QUAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L53)

```
SPEAKER_QUAD :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .BACK_LEFT, .BACK_RIGHT}
```

### [SPEAKER\_STEREO ¶](#SPEAKER_STEREO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L50)

```
SPEAKER_STEREO :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT}
```

### [SPEAKER\_SURROUND ¶](#SPEAKER_SURROUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L52)

```
SPEAKER_SURROUND :: SPEAKER_FLAGS{.FRONT_LEFT, .FRONT_RIGHT, .FRONT_CENTER, .BACK_CENTER}
```

### [SPEED\_OF\_SOUND ¶](#SPEED_OF_SOUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L64)

```
SPEED_OF_SOUND :: 343.5
```

 

speed of sound in meters per second for dry air at approximately 20C, used with Initialize

### [USE\_DEFAULT\_PROCESSOR ¶](#USE_DEFAULT_PROCESSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L134)

```
USE_DEFAULT_PROCESSOR :: PROCESSOR_FLAGS{}
```

 

ANY\_PROCESSOR :: 0xffffffff

### [XAPO\_CREATION\_FAILED ¶](#XAPO_CREATION_FAILED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L87)

```
XAPO_CREATION_FAILED :: HRESULT(-2003435517)
```

 

0x88960003 XAudio2 failed to initialize an XAPO effect

### [XAPO\_MAX\_CHANNELS ¶](#XAPO_MAX_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L54)

```
XAPO_MAX_CHANNELS :: 64
```

### [XAPO\_MAX\_FRAMERATE ¶](#XAPO_MAX_FRAMERATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L58)

```
XAPO_MAX_FRAMERATE :: 200000
```

### [XAPO\_MIN\_CHANNELS ¶](#XAPO_MIN_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L53)

```
XAPO_MIN_CHANNELS :: 1
```

 

supported number of channels (samples per frame) range

### [XAPO\_MIN\_FRAMERATE ¶](#XAPO_MIN_FRAMERATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L57)

```
XAPO_MIN_FRAMERATE :: 1000
```

 

supported framerate range

### [XAPO\_REGISTRATION\_STRING\_LENGTH ¶](#XAPO_REGISTRATION_STRING_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L61)

```
XAPO_REGISTRATION_STRING_LENGTH :: 256
```

 

unicode string length, including terminator, used with XAPO\_REGISTRATION\_PROPERTIES

### [XMA\_DECODER\_ERROR ¶](#XMA_DECODER_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L86)

```
XMA_DECODER_ERROR :: HRESULT(-2003435518)
```

 

0x88960002 The XMA hardware suffered an unrecoverable error

## Variables

### [Default\_DirectionalCone ¶](#Default_DirectionalCone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L127)

```
Default_DirectionalCone: CONE = …
```

### [Default\_LinearCurve ¶](#Default_LinearCurve) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L109)

```
Default_LinearCurve: DISTANCE_CURVE = …
```

### [Default\_LinearCurvePoints ¶](#Default_LinearCurvePoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L108)

```
Default_LinearCurvePoints: [2]DISTANCE_CURVE_POINT = …
```

### [FORMAT\_UNSUPPORTED ¶](#FORMAT_UNSUPPORTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L50)

```
FORMAT_UNSUPPORTED: sys_windows.HRESULT = …
```

 

requested audio format unsupported

### [FXEQ\_UUID ¶](#FXEQ_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L12)

```
FXEQ_UUID: ^sys_windows.GUID = …
```

### [FXEcho\_UUID ¶](#FXEcho_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L21)

```
FXEcho_UUID: ^sys_windows.GUID = …
```

### [FXMasteringLimiter\_UUID ¶](#FXMasteringLimiter_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L15)

```
FXMasteringLimiter_UUID: ^sys_windows.GUID = …
```

### [FXReverb\_UUID ¶](#FXReverb_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L18)

```
FXReverb_UUID: ^sys_windows.GUID = …
```

### [I3DL2\_PRESET\_ALLEY ¶](#I3DL2_PRESET_ALLEY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L201)

```
I3DL2_PRESET_ALLEY: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_ARENA ¶](#I3DL2_PRESET_ARENA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L196)

```
I3DL2_PRESET_ARENA: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_AUDITORIUM ¶](#I3DL2_PRESET_AUDITORIUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L193)

```
I3DL2_PRESET_AUDITORIUM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_BATHROOM ¶](#I3DL2_PRESET_BATHROOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L190)

```
I3DL2_PRESET_BATHROOM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_CARPETEDHALLWAY ¶](#I3DL2_PRESET_CARPETEDHALLWAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L198)

```
I3DL2_PRESET_CARPETEDHALLWAY: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_CAVE ¶](#I3DL2_PRESET_CAVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L195)

```
I3DL2_PRESET_CAVE: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_CITY ¶](#I3DL2_PRESET_CITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L203)

```
I3DL2_PRESET_CITY: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_CONCERTHALL ¶](#I3DL2_PRESET_CONCERTHALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L194)

```
I3DL2_PRESET_CONCERTHALL: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_DEFAULT ¶](#I3DL2_PRESET_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L186)

```
I3DL2_PRESET_DEFAULT: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_FOREST ¶](#I3DL2_PRESET_FOREST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L202)

```
I3DL2_PRESET_FOREST: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_GENERIC ¶](#I3DL2_PRESET_GENERIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L187)

```
I3DL2_PRESET_GENERIC: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_HALLWAY ¶](#I3DL2_PRESET_HALLWAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L199)

```
I3DL2_PRESET_HALLWAY: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_HANGAR ¶](#I3DL2_PRESET_HANGAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L197)

```
I3DL2_PRESET_HANGAR: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_LARGEHALL ¶](#I3DL2_PRESET_LARGEHALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L214)

```
I3DL2_PRESET_LARGEHALL: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_LARGEROOM ¶](#I3DL2_PRESET_LARGEROOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L212)

```
I3DL2_PRESET_LARGEROOM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_LIVINGROOM ¶](#I3DL2_PRESET_LIVINGROOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L191)

```
I3DL2_PRESET_LIVINGROOM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_MEDIUMHALL ¶](#I3DL2_PRESET_MEDIUMHALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L213)

```
I3DL2_PRESET_MEDIUMHALL: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_MEDIUMROOM ¶](#I3DL2_PRESET_MEDIUMROOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L211)

```
I3DL2_PRESET_MEDIUMROOM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_MOUNTAINS ¶](#I3DL2_PRESET_MOUNTAINS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L204)

```
I3DL2_PRESET_MOUNTAINS: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_PADDEDCELL ¶](#I3DL2_PRESET_PADDEDCELL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L188)

```
I3DL2_PRESET_PADDEDCELL: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_PARKINGLOT ¶](#I3DL2_PRESET_PARKINGLOT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L207)

```
I3DL2_PRESET_PARKINGLOT: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_PLAIN ¶](#I3DL2_PRESET_PLAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L206)

```
I3DL2_PRESET_PLAIN: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_PLATE ¶](#I3DL2_PRESET_PLATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L215)

```
I3DL2_PRESET_PLATE: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_QUARRY ¶](#I3DL2_PRESET_QUARRY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L205)

```
I3DL2_PRESET_QUARRY: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_ROOM ¶](#I3DL2_PRESET_ROOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L189)

```
I3DL2_PRESET_ROOM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_SEWERPIPE ¶](#I3DL2_PRESET_SEWERPIPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L208)

```
I3DL2_PRESET_SEWERPIPE: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_SMALLROOM ¶](#I3DL2_PRESET_SMALLROOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L210)

```
I3DL2_PRESET_SMALLROOM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_STONECORRIDOR ¶](#I3DL2_PRESET_STONECORRIDOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L200)

```
I3DL2_PRESET_STONECORRIDOR: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_STONEROOM ¶](#I3DL2_PRESET_STONEROOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L192)

```
I3DL2_PRESET_STONEROOM: REVERB_I3DL2_PARAMETERS = …
```

### [I3DL2\_PRESET\_UNDERWATER ¶](#I3DL2_PRESET_UNDERWATER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L209)

```
I3DL2_PRESET_UNDERWATER: REVERB_I3DL2_PARAMETERS = …
```

### [IXAPOHrtfParameters\_UUID ¶](#IXAPOHrtfParameters_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L130)

```
IXAPOHrtfParameters_UUID: ^sys_windows.GUID = …
```

### [IXAPOParameters\_UUID ¶](#IXAPOParameters_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L310)

```
IXAPOParameters_UUID: ^sys_windows.GUID = …
```

### [IXAPO\_UUID ¶](#IXAPO_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin#L154)

```
IXAPO_UUID: ^sys_windows.GUID = …
```

### [IXAudio2Extension\_UUID ¶](#IXAudio2Extension_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L363)

```
IXAudio2Extension_UUID: ^sys_windows.GUID = …
```

### [IXAudio2\_UUID ¶](#IXAudio2_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L276)

```
IXAudio2_UUID: ^sys_windows.GUID = …
```

## Procedures

### [AmplitudeRatioToDecibels ¶](#AmplitudeRatioToDecibels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L735)

```
AmplitudeRatioToDecibels :: proc "contextless" (Volume: f32) -> f32 {…}
```

 

Recover a volume in decibels from an amplitude factor

### [Calculate ¶](#Calculate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L209)

```
Calculate :: proc "c" (Instance: HANDLE, #by_ptr pListener: LISTENER, #by_ptr pEmitter: EMITTER, Flags: CALCULATE_FLAGS, pDSPSettings: ^DSP_SETTINGS) ---
```

 

calculates DSP settings with respect to 3D parameters

### [Create ¶](#Create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L720)

```
Create :: proc "stdcall" (ppXaudio2: ^^IXAudio2, Flags: FLAGS = {}, Processor: PROCESSOR_FLAGS = {.Processor1}) -> sys_windows.HRESULT ---
```

### [CreateAudioReverb ¶](#CreateAudioReverb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L20)

```
CreateAudioReverb :: proc "stdcall" (ppApo: ^^sys_windows.IUnknown) -> sys_windows.HRESULT ---
```

### [CreateAudioVolumeMeter ¶](#CreateAudioVolumeMeter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L19)

```
CreateAudioVolumeMeter :: proc "stdcall" (ppApo: ^^sys_windows.IUnknown) -> sys_windows.HRESULT ---
```

### [CreateFX ¶](#CreateFX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin#L137)

```
CreateFX :: proc "c" (clsid: ^sys_windows.GUID, pEffect: ^^sys_windows.IUnknown, pInitDat: rawptr = nil, InitDataByteSize: u32 = 0) -> sys_windows.HRESULT ---
```

 

creates instance of requested XAPO, use Release to free instance
pInitData - [in] effect-specific initialization parameters, may be nil if InitDataByteSize == 0
InitDataByteSize - [in] size of pInitData in bytes, may be 0 if pInitData is nil

### [CreateHrtfApo ¶](#CreateHrtfApo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin#L120)

```
CreateHrtfApo :: proc "stdcall" (#by_ptr init: HrtfApoInit, xApo: ^^IXAPO) -> sys_windows.HRESULT ---
```

### [CutoffFrequencyToOnePoleCoefficient ¶](#CutoffFrequencyToOnePoleCoefficient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L775)

```
CutoffFrequencyToOnePoleCoefficient :: proc "contextless" (CutoffFrequency: f32, SampleRate: u32) -> f32 {…}
```

 

Convert from filter cutoff frequencies expressed in Hertz to the filter coefficients used with FILTER\_PARAMETERS.Frequency,
LowPassOnePoleFilter and HighPassOnePoleFilter filter types only.
Use CutoffFrequencyToRadians() for state-variable filter types.

### [CutoffFrequencyToRadians ¶](#CutoffFrequencyToRadians) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L760)

```
CutoffFrequencyToRadians :: proc "contextless" (CutoffFrequency: f32, SampleRate: u32) -> f32 {…}
```

 

Convert from filter cutoff frequencies expressed in Hertz to the radian frequency values used in FILTER\_PARAMETERS.Frequency, state-variable filter types only.
Use CutoffFrequencyToOnePoleCoefficient() for one-pole filter types.
Note that the highest CutoffFrequency supported is SampleRate/6.
Higher values of CutoffFrequency will return MAX\_FILTER\_FREQUENCY.

### [DecibelsToAmplitudeRatio ¶](#DecibelsToAmplitudeRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L730)

```
DecibelsToAmplitudeRatio :: proc "contextless" (Decibels: f32) -> f32 {…}
```

 

Calculate the argument to SetVolume from a decibel value

### [FrequencyRatioToSemitones ¶](#FrequencyRatioToSemitones) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L750)

```
FrequencyRatioToSemitones :: proc "contextless" (FrequencyRatio: f32) -> f32 {…}
```

 

Recover a pitch in semitones from a frequency ratio

### [Initialize ¶](#Initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin#L206)

```
Initialize :: proc "c" (SpeakerChannelMask: sys_windows.SPEAKER_FLAGS, SpeedOfSound: f32, Instance: HANDLE) -> sys_windows.HRESULT ---
```

 

initializes instance handle

### [RadiansToCutoffFrequency ¶](#RadiansToCutoffFrequency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L768)

```
RadiansToCutoffFrequency :: proc "contextless" (Radians: f32, SampleRate: f32) -> f32 {…}
```

 

Convert from radian frequencies back to absolute frequencies in Hertz

### [ReverbConvertI3DL2ToNative ¶](#ReverbConvertI3DL2ToNative) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin#L219)

```
ReverbConvertI3DL2ToNative :: proc "contextless" (pI3DL2: ^REVERB_I3DL2_PARAMETERS, pNative: ^REVERB_PARAMETERS, sevenDotOneReverb: b32 = true) {…}
```

### [SemitonesToFrequencyRatio ¶](#SemitonesToFrequencyRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin#L743)

```
SemitonesToFrequencyRatio :: proc "contextless" (Semitones: f32) -> f32 {…}
```

 

Calculate the argument to SetFrequencyRatio from a semitone value

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/doc.odin)
* [hrtfapoapi.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/hrtfapoapi.odin)
* [x3daudio.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/x3daudio.odin)
* [xapo.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapo.odin)
* [xapofx.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xapofx.odin)
* [xaudio2.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2.odin)
* [xaudio2fx.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/XAudio2/xaudio2fx.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:55.431950600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [AUDIO\_STREAM\_CATEGORY](#AUDIO_STREAM_CATEGORY)
    + [BUFFER](#BUFFER)
    + [BUFFER\_WMA](#BUFFER_WMA)
    + [CALCULATE\_FLAG](#CALCULATE_FLAG)
    + [CALCULATE\_FLAGS](#CALCULATE_FLAGS)
    + [CONE](#CONE)
    + [DEBUG\_CONFIGURATION](#DEBUG_CONFIGURATION)
    + [DEBUG\_CONFIG\_FLAG](#DEBUG_CONFIG_FLAG)
    + [DEBUG\_CONFIG\_FLAGS](#DEBUG_CONFIG_FLAGS)
    + [DISTANCE\_CURVE](#DISTANCE_CURVE)
    + [DISTANCE\_CURVE\_POINT](#DISTANCE_CURVE_POINT)
    + [DSP\_SETTINGS](#DSP_SETTINGS)
    + [EFFECT\_CHAIN](#EFFECT_CHAIN)
    + [EFFECT\_DESCRIPTOR](#EFFECT_DESCRIPTOR)
    + [EMITTER](#EMITTER)
    + [FILTER\_PARAMETERS](#FILTER_PARAMETERS)
    + [FILTER\_TYPE](#FILTER_TYPE)
    + [FLAG](#FLAG)
    + [FLAGS](#FLAGS)
    + [FXECHO\_INITDATA](#FXECHO_INITDATA)
    + [FXECHO\_PARAMETERS](#FXECHO_PARAMETERS)
    + [FXEQ\_PARAMETERS](#FXEQ_PARAMETERS)
    + [FXMASTERINGLIMITER\_PARAMETERS](#FXMASTERINGLIMITER_PARAMETERS)
    + [FXREVERB\_PARAMETERS](#FXREVERB_PARAMETERS)
    + [HANDLE](#HANDLE)
    + [HRESULT](#HRESULT)
    + [HrtfApoInit](#HrtfApoInit)
    + [HrtfDirectivity](#HrtfDirectivity)
    + [HrtfDirectivityCardioid](#HrtfDirectivityCardioid)
    + [HrtfDirectivityCone](#HrtfDirectivityCone)
    + [HrtfDirectivityType](#HrtfDirectivityType)
    + [HrtfDistanceDecay](#HrtfDistanceDecay)
    + [HrtfDistanceDecayType](#HrtfDistanceDecayType)
    + [HrtfEnvironment](#HrtfEnvironment)
    + [HrtfOrientation](#HrtfOrientation)
    + [HrtfPosition](#HrtfPosition)
    + [IUnknown](#IUnknown)
    + [IUnknown\_VTable](#IUnknown_VTable)
    + [IXAPO](#IXAPO)
    + [IXAPOHrtfParameters](#IXAPOHrtfParameters)
    + [IXAPOHrtfParameters\_VTable](#IXAPOHrtfParameters_VTable)
    + [IXAPOParameters](#IXAPOParameters)
    + [IXAPOParameters\_VTable](#IXAPOParameters_VTable)
    + [IXAPO\_VTable](#IXAPO_VTable)
    + [IXAudio2](#IXAudio2)
    + [IXAudio2EngineCallback](#IXAudio2EngineCallback)
    + [IXAudio2EngineCallback\_VTable](#IXAudio2EngineCallback_VTable)
    + [IXAudio2Extension](#IXAudio2Extension)
    + [IXAudio2Extension\_VTable](#IXAudio2Extension_VTable)
    + [IXAudio2MasteringVoice](#IXAudio2MasteringVoice)
    + [IXAudio2MasteringVoice\_VTable](#IXAudio2MasteringVoice_VTable)
    + [IXAudio2SourceVoice](#IXAudio2SourceVoice)
    + [IXAudio2SourceVoice\_VTable](#IXAudio2SourceVoice_VTable)
    + [IXAudio2SubmixVoice](#IXAudio2SubmixVoice)
    + [IXAudio2SubmixVoice\_VTable](#IXAudio2SubmixVoice_VTable)
    + [IXAudio2Voice](#IXAudio2Voice)
    + [IXAudio2VoiceCallback](#IXAudio2VoiceCallback)
    + [IXAudio2VoiceCallback\_VTable](#IXAudio2VoiceCallback_VTable)
    + [IXAudio2Voice\_VTable](#IXAudio2Voice_VTable)
    + [IXAudio2\_VTable](#IXAudio2_VTable)
    + [LISTENER](#LISTENER)
    + [PERFORMANCE\_DATA](#PERFORMANCE_DATA)
    + [PROCESSOR\_FLAG](#PROCESSOR_FLAG)
    + [PROCESSOR\_FLAGS](#PROCESSOR_FLAGS)
    + [REVERB\_I3DL2\_PARAMETERS](#REVERB_I3DL2_PARAMETERS)
    + [REVERB\_PARAMETERS](#REVERB_PARAMETERS)
    + [SEND\_DESCRIPTOR](#SEND_DESCRIPTOR)
    + [SPEAKER\_FLAGS](#SPEAKER_FLAGS)
    + [VECTOR](#VECTOR)
    + [VOICE\_DETAILS](#VOICE_DETAILS)
    + [VOICE\_SENDS](#VOICE_SENDS)
    + [VOICE\_STATE](#VOICE_STATE)
    + [VOLUMEMETER\_LEVELS](#VOLUMEMETER_LEVELS)
    + [WAVEFORMATEX](#WAVEFORMATEX)
    + [XAPO\_BUFFER\_FLAGS](#XAPO_BUFFER_FLAGS)
    + [XAPO\_FLAG](#XAPO_FLAG)
    + [XAPO\_FLAGS](#XAPO_FLAGS)
    + [XAPO\_LOCKFORPROCESS\_BUFFER\_PARAMETERS](#XAPO_LOCKFORPROCESS_BUFFER_PARAMETERS)
    + [XAPO\_PROCESS\_BUFFER\_PARAMETERS](#XAPO_PROCESS_BUFFER_PARAMETERS)
    + [XAPO\_REGISTRATION\_PROPERTIES](#XAPO_REGISTRATION_PROPERTIES)
  * [Constants](#pkg-Constants)
    + [COMMIT\_ALL](#COMMIT_ALL)
    + [COMMIT\_NOW](#COMMIT_NOW)
    + [DEFAULT\_CHANNELS](#DEFAULT_CHANNELS)
    + [DEFAULT\_FILTER\_FREQUENCY](#DEFAULT_FILTER_FREQUENCY)
    + [DEFAULT\_FILTER\_ONEOVERQ](#DEFAULT_FILTER_ONEOVERQ)
    + [DEFAULT\_FILTER\_TYPE](#DEFAULT_FILTER_TYPE)
    + [DEFAULT\_FREQ\_RATIO](#DEFAULT_FREQ_RATIO)
    + [DEFAULT\_SAMPLERATE](#DEFAULT_SAMPLERATE)
    + [DEVICE\_INVALIDATED](#DEVICE_INVALIDATED)
    + [FXECHO\_DEFAULT\_DELAY](#FXECHO_DEFAULT_DELAY)
    + [FXECHO\_DEFAULT\_FEEDBACK](#FXECHO_DEFAULT_FEEDBACK)
    + [FXECHO\_DEFAULT\_WETDRYMIX](#FXECHO_DEFAULT_WETDRYMIX)
    + [FXECHO\_MAX\_DELAY](#FXECHO_MAX_DELAY)
    + [FXECHO\_MAX\_FEEDBACK](#FXECHO_MAX_FEEDBACK)
    + [FXECHO\_MAX\_WETDRYMIX](#FXECHO_MAX_WETDRYMIX)
    + [FXECHO\_MIN\_DELAY](#FXECHO_MIN_DELAY)
    + [FXECHO\_MIN\_FEEDBACK](#FXECHO_MIN_FEEDBACK)
    + [FXECHO\_MIN\_WETDRYMIX](#FXECHO_MIN_WETDRYMIX)
    + [FXEQ\_DEFAULT\_BANDWIDTH](#FXEQ_DEFAULT_BANDWIDTH)
    + [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_0](#FXEQ_DEFAULT_FREQUENCY_CENTER_0)
    + [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_1](#FXEQ_DEFAULT_FREQUENCY_CENTER_1)
    + [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_2](#FXEQ_DEFAULT_FREQUENCY_CENTER_2)
    + [FXEQ\_DEFAULT\_FREQUENCY\_CENTER\_3](#FXEQ_DEFAULT_FREQUENCY_CENTER_3)
    + [FXEQ\_DEFAULT\_GAIN](#FXEQ_DEFAULT_GAIN)
    + [FXEQ\_MAX\_BANDWIDTH](#FXEQ_MAX_BANDWIDTH)
    + [FXEQ\_MAX\_FRAMERATE](#FXEQ_MAX_FRAMERATE)
    + [FXEQ\_MAX\_FREQUENCY\_CENTER](#FXEQ_MAX_FREQUENCY_CENTER)
    + [FXEQ\_MAX\_GAIN](#FXEQ_MAX_GAIN)
    + [FXEQ\_MIN\_BANDWIDTH](#FXEQ_MIN_BANDWIDTH)
    + [FXEQ\_MIN\_FRAMERATE](#FXEQ_MIN_FRAMERATE)
    + [FXEQ\_MIN\_FREQUENCY\_CENTER](#FXEQ_MIN_FREQUENCY_CENTER)
    + [FXEQ\_MIN\_GAIN](#FXEQ_MIN_GAIN)
    + [FXEQ\_UUID\_STRING](#FXEQ_UUID_STRING)
    + [FXEcho\_UUID\_STRING](#FXEcho_UUID_STRING)
    + [FXLOUDNESS\_DEFAULT\_MOMENTARY\_MS](#FXLOUDNESS_DEFAULT_MOMENTARY_MS)
    + [FXLOUDNESS\_DEFAULT\_SHORTTERM\_MS](#FXLOUDNESS_DEFAULT_SHORTTERM_MS)
    + [FXMASTERINGLIMITER\_DEFAULT\_LOUDNESS](#FXMASTERINGLIMITER_DEFAULT_LOUDNESS)
    + [FXMASTERINGLIMITER\_DEFAULT\_RELEASE](#FXMASTERINGLIMITER_DEFAULT_RELEASE)
    + [FXMASTERINGLIMITER\_MAX\_LOUDNESS](#FXMASTERINGLIMITER_MAX_LOUDNESS)
    + [FXMASTERINGLIMITER\_MAX\_RELEASE](#FXMASTERINGLIMITER_MAX_RELEASE)
    + [FXMASTERINGLIMITER\_MIN\_LOUDNESS](#FXMASTERINGLIMITER_MIN_LOUDNESS)
    + [FXMASTERINGLIMITER\_MIN\_RELEASE](#FXMASTERINGLIMITER_MIN_RELEASE)
    + [FXMasteringLimiter\_UUID\_STRING](#FXMasteringLimiter_UUID_STRING)
    + [FXREVERB\_DEFAULT\_DIFFUSION](#FXREVERB_DEFAULT_DIFFUSION)
    + [FXREVERB\_DEFAULT\_ROOMSIZE](#FXREVERB_DEFAULT_ROOMSIZE)
    + [FXREVERB\_MAX\_DIFFUSION](#FXREVERB_MAX_DIFFUSION)
    + [FXREVERB\_MAX\_ROOMSIZE](#FXREVERB_MAX_ROOMSIZE)
    + [FXREVERB\_MIN\_DIFFUSION](#FXREVERB_MIN_DIFFUSION)
    + [FXREVERB\_MIN\_ROOMSIZE](#FXREVERB_MIN_ROOMSIZE)
    + [FXReverb\_UUID\_STRING](#FXReverb_UUID_STRING)
    + [HANDLE\_BYTESIZE](#HANDLE_BYTESIZE)
    + [HRTF\_DEFAULT\_CUTOFF\_DISTANCE](#HRTF_DEFAULT_CUTOFF_DISTANCE)
    + [HRTF\_DEFAULT\_UNITY\_GAIN\_DISTANCE](#HRTF_DEFAULT_UNITY_GAIN_DISTANCE)
    + [HRTF\_MAX\_GAIN\_LIMIT](#HRTF_MAX_GAIN_LIMIT)
    + [HRTF\_MIN\_GAIN\_LIMIT](#HRTF_MIN_GAIN_LIMIT)
    + [HRTF\_MIN\_UNITY\_GAIN\_DISTANCE](#HRTF_MIN_UNITY_GAIN_DISTANCE)
    + [INVALID\_CALL](#INVALID_CALL)
    + [INVALID\_OPSET](#INVALID_OPSET)
    + [IXAPOHrtfParameters\_UUID\_STRING](#IXAPOHrtfParameters_UUID_STRING)
    + [IXAPOParameters\_UUID\_STRING](#IXAPOParameters_UUID_STRING)
    + [IXAPO\_UUID\_STRING](#IXAPO_UUID_STRING)
    + [IXAudio2Extension\_UUID\_STRING](#IXAudio2Extension_UUID_STRING)
    + [IXAudio2\_UUID\_STRING](#IXAudio2_UUID_STRING)
    + [LOOP\_INFINITE](#LOOP_INFINITE)
    + [MAX\_AUDIO\_CHANNELS](#MAX_AUDIO_CHANNELS)
    + [MAX\_BUFFERS\_SYSTEM](#MAX_BUFFERS_SYSTEM)
    + [MAX\_BUFFER\_BYTES](#MAX_BUFFER_BYTES)
    + [MAX\_FILTER\_FREQUENCY](#MAX_FILTER_FREQUENCY)
    + [MAX\_FILTER\_ONEOVERQ](#MAX_FILTER_ONEOVERQ)
    + [MAX\_FREQ\_RATIO](#MAX_FREQ_RATIO)
    + [MAX\_INSTANCES](#MAX_INSTANCES)
    + [MAX\_LOOP\_COUNT](#MAX_LOOP_COUNT)
    + [MAX\_QUEUED\_BUFFERS](#MAX_QUEUED_BUFFERS)
    + [MAX\_RATIO\_TIMES\_RATE\_XMA\_MONO](#MAX_RATIO_TIMES_RATE_XMA_MONO)
    + [MAX\_RATIO\_TIMES\_RATE\_XMA\_MULTICHANNEL](#MAX_RATIO_TIMES_RATE_XMA_MULTICHANNEL)
    + [MAX\_SAMPLE\_RATE](#MAX_SAMPLE_RATE)
    + [MAX\_VOLUME\_LEVEL](#MAX_VOLUME_LEVEL)
    + [MIN\_FREQ\_RATIO](#MIN_FREQ_RATIO)
    + [MIN\_SAMPLE\_RATE](#MIN_SAMPLE_RATE)
    + [NO\_LOOP\_REGION](#NO_LOOP_REGION)
    + [QUANTUM\_DENOMINATOR](#QUANTUM_DENOMINATOR)
    + [QUANTUM\_MS](#QUANTUM_MS)
    + [QUANTUM\_NUMERATOR](#QUANTUM_NUMERATOR)
    + [REVERB\_DEFAULT\_7POINT1\_REAR\_DELAY](#REVERB_DEFAULT_7POINT1_REAR_DELAY)
    + [REVERB\_DEFAULT\_7POINT1\_SIDE\_DELAY](#REVERB_DEFAULT_7POINT1_SIDE_DELAY)
    + [REVERB\_DEFAULT\_DECAY\_TIME](#REVERB_DEFAULT_DECAY_TIME)
    + [REVERB\_DEFAULT\_DENSITY](#REVERB_DEFAULT_DENSITY)
    + [REVERB\_DEFAULT\_DISABLE\_LATE\_FIELD](#REVERB_DEFAULT_DISABLE_LATE_FIELD)
    + [REVERB\_DEFAULT\_EARLY\_DIFFUSION](#REVERB_DEFAULT_EARLY_DIFFUSION)
    + [REVERB\_DEFAULT\_HIGH\_EQ\_CUTOFF](#REVERB_DEFAULT_HIGH_EQ_CUTOFF)
    + [REVERB\_DEFAULT\_HIGH\_EQ\_GAIN](#REVERB_DEFAULT_HIGH_EQ_GAIN)
    + [REVERB\_DEFAULT\_LATE\_DIFFUSION](#REVERB_DEFAULT_LATE_DIFFUSION)
    + [REVERB\_DEFAULT\_LOW\_EQ\_CUTOFF](#REVERB_DEFAULT_LOW_EQ_CUTOFF)
    + [REVERB\_DEFAULT\_LOW\_EQ\_GAIN](#REVERB_DEFAULT_LOW_EQ_GAIN)
    + [REVERB\_DEFAULT\_POSITION](#REVERB_DEFAULT_POSITION)
    + [REVERB\_DEFAULT\_POSITION\_MATRIX](#REVERB_DEFAULT_POSITION_MATRIX)
    + [REVERB\_DEFAULT\_REAR\_DELAY](#REVERB_DEFAULT_REAR_DELAY)
    + [REVERB\_DEFAULT\_REFLECTIONS\_DELAY](#REVERB_DEFAULT_REFLECTIONS_DELAY)
    + [REVERB\_DEFAULT\_REFLECTIONS\_GAIN](#REVERB_DEFAULT_REFLECTIONS_GAIN)
    + [REVERB\_DEFAULT\_REVERB\_DELAY](#REVERB_DEFAULT_REVERB_DELAY)
    + [REVERB\_DEFAULT\_REVERB\_GAIN](#REVERB_DEFAULT_REVERB_GAIN)
    + [REVERB\_DEFAULT\_ROOM\_FILTER\_FREQ](#REVERB_DEFAULT_ROOM_FILTER_FREQ)
    + [REVERB\_DEFAULT\_ROOM\_FILTER\_HF](#REVERB_DEFAULT_ROOM_FILTER_HF)
    + [REVERB\_DEFAULT\_ROOM\_FILTER\_MAIN](#REVERB_DEFAULT_ROOM_FILTER_MAIN)
    + [REVERB\_DEFAULT\_ROOM\_SIZE](#REVERB_DEFAULT_ROOM_SIZE)
    + [REVERB\_DEFAULT\_WET\_DRY\_MIX](#REVERB_DEFAULT_WET_DRY_MIX)
    + [REVERB\_MAX\_7POINT1\_REAR\_DELAY](#REVERB_MAX_7POINT1_REAR_DELAY)
    + [REVERB\_MAX\_7POINT1\_SIDE\_DELAY](#REVERB_MAX_7POINT1_SIDE_DELAY)
    + [REVERB\_MAX\_DENSITY](#REVERB_MAX_DENSITY)
    + [REVERB\_MAX\_DIFFUSION](#REVERB_MAX_DIFFUSION)
    + [REVERB\_MAX\_FRAMERATE](#REVERB_MAX_FRAMERATE)
    + [REVERB\_MAX\_HIGH\_EQ\_CUTOFF](#REVERB_MAX_HIGH_EQ_CUTOFF)
    + [REVERB\_MAX\_HIGH\_EQ\_GAIN](#REVERB_MAX_HIGH_EQ_GAIN)
    + [REVERB\_MAX\_LOW\_EQ\_CUTOFF](#REVERB_MAX_LOW_EQ_CUTOFF)
    + [REVERB\_MAX\_LOW\_EQ\_GAIN](#REVERB_MAX_LOW_EQ_GAIN)
    + [REVERB\_MAX\_POSITION](#REVERB_MAX_POSITION)
    + [REVERB\_MAX\_REAR\_DELAY](#REVERB_MAX_REAR_DELAY)
    + [REVERB\_MAX\_REFLECTIONS\_DELAY](#REVERB_MAX_REFLECTIONS_DELAY)
    + [REVERB\_MAX\_REFLECTIONS\_GAIN](#REVERB_MAX_REFLECTIONS_GAIN)
    + [REVERB\_MAX\_REVERB\_DELAY](#REVERB_MAX_REVERB_DELAY)
    + [REVERB\_MAX\_REVERB\_GAIN](#REVERB_MAX_REVERB_GAIN)
    + [REVERB\_MAX\_ROOM\_FILTER\_FREQ](#REVERB_MAX_ROOM_FILTER_FREQ)
    + [REVERB\_MAX\_ROOM\_FILTER\_HF](#REVERB_MAX_ROOM_FILTER_HF)
    + [REVERB\_MAX\_ROOM\_FILTER\_MAIN](#REVERB_MAX_ROOM_FILTER_MAIN)
    + [REVERB\_MAX\_ROOM\_SIZE](#REVERB_MAX_ROOM_SIZE)
    + [REVERB\_MAX\_WET\_DRY\_MIX](#REVERB_MAX_WET_DRY_MIX)
    + [REVERB\_MIN\_7POINT1\_REAR\_DELAY](#REVERB_MIN_7POINT1_REAR_DELAY)
    + [REVERB\_MIN\_7POINT1\_SIDE\_DELAY](#REVERB_MIN_7POINT1_SIDE_DELAY)
    + [REVERB\_MIN\_DECAY\_TIME](#REVERB_MIN_DECAY_TIME)
    + [REVERB\_MIN\_DENSITY](#REVERB_MIN_DENSITY)
    + [REVERB\_MIN\_DIFFUSION](#REVERB_MIN_DIFFUSION)
    + [REVERB\_MIN\_FRAMERATE](#REVERB_MIN_FRAMERATE)
    + [REVERB\_MIN\_HIGH\_EQ\_CUTOFF](#REVERB_MIN_HIGH_EQ_CUTOFF)
    + [REVERB\_MIN\_HIGH\_EQ\_GAIN](#REVERB_MIN_HIGH_EQ_GAIN)
    + [REVERB\_MIN\_LOW\_EQ\_CUTOFF](#REVERB_MIN_LOW_EQ_CUTOFF)
    + [REVERB\_MIN\_LOW\_EQ\_GAIN](#REVERB_MIN_LOW_EQ_GAIN)
    + [REVERB\_MIN\_POSITION](#REVERB_MIN_POSITION)
    + [REVERB\_MIN\_REAR\_DELAY](#REVERB_MIN_REAR_DELAY)
    + [REVERB\_MIN\_REFLECTIONS\_DELAY](#REVERB_MIN_REFLECTIONS_DELAY)
    + [REVERB\_MIN\_REFLECTIONS\_GAIN](#REVERB_MIN_REFLECTIONS_GAIN)
    + [REVERB\_MIN\_REVERB\_DELAY](#REVERB_MIN_REVERB_DELAY)
    + [REVERB\_MIN\_REVERB\_GAIN](#REVERB_MIN_REVERB_GAIN)
    + [REVERB\_MIN\_ROOM\_FILTER\_FREQ](#REVERB_MIN_ROOM_FILTER_FREQ)
    + [REVERB\_MIN\_ROOM\_FILTER\_HF](#REVERB_MIN_ROOM_FILTER_HF)
    + [REVERB\_MIN\_ROOM\_FILTER\_MAIN](#REVERB_MIN_ROOM_FILTER_MAIN)
    + [REVERB\_MIN\_ROOM\_SIZE](#REVERB_MIN_ROOM_SIZE)
    + [REVERB\_MIN\_WET\_DRY\_MIX](#REVERB_MIN_WET_DRY_MIX)
    + [SPEAKER\_2POINT1](#SPEAKER_2POINT1)
    + [SPEAKER\_4POINT1](#SPEAKER_4POINT1)
    + [SPEAKER\_5POINT1](#SPEAKER_5POINT1)
    + [SPEAKER\_5POINT1\_SURROUND](#SPEAKER_5POINT1_SURROUND)
    + [SPEAKER\_7POINT1](#SPEAKER_7POINT1)
    + [SPEAKER\_7POINT1\_SURROUND](#SPEAKER_7POINT1_SURROUND)
    + [SPEAKER\_MONO](#SPEAKER_MONO)
    + [SPEAKER\_QUAD](#SPEAKER_QUAD)
    + [SPEAKER\_STEREO](#SPEAKER_STEREO)
    + [SPEAKER\_SURROUND](#SPEAKER_SURROUND)
    + [SPEED\_OF\_SOUND](#SPEED_OF_SOUND)
    + [USE\_DEFAULT\_PROCESSOR](#USE_DEFAULT_PROCESSOR)
    + [XAPO\_CREATION\_FAILED](#XAPO_CREATION_FAILED)
    + [XAPO\_MAX\_CHANNELS](#XAPO_MAX_CHANNELS)
    + [XAPO\_MAX\_FRAMERATE](#XAPO_MAX_FRAMERATE)
    + [XAPO\_MIN\_CHANNELS](#XAPO_MIN_CHANNELS)
    + [XAPO\_MIN\_FRAMERATE](#XAPO_MIN_FRAMERATE)
    + [XAPO\_REGISTRATION\_STRING\_LENGTH](#XAPO_REGISTRATION_STRING_LENGTH)
    + [XMA\_DECODER\_ERROR](#XMA_DECODER_ERROR)
  * [Variables](#pkg-Variables)
    + [Default\_DirectionalCone](#Default_DirectionalCone)
    + [Default\_LinearCurve](#Default_LinearCurve)
    + [Default\_LinearCurvePoints](#Default_LinearCurvePoints)
    + [FORMAT\_UNSUPPORTED](#FORMAT_UNSUPPORTED)
    + [FXEQ\_UUID](#FXEQ_UUID)
    + [FXEcho\_UUID](#FXEcho_UUID)
    + [FXMasteringLimiter\_UUID](#FXMasteringLimiter_UUID)
    + [FXReverb\_UUID](#FXReverb_UUID)
    + [I3DL2\_PRESET\_ALLEY](#I3DL2_PRESET_ALLEY)
    + [I3DL2\_PRESET\_ARENA](#I3DL2_PRESET_ARENA)
    + [I3DL2\_PRESET\_AUDITORIUM](#I3DL2_PRESET_AUDITORIUM)
    + [I3DL2\_PRESET\_BATHROOM](#I3DL2_PRESET_BATHROOM)
    + [I3DL2\_PRESET\_CARPETEDHALLWAY](#I3DL2_PRESET_CARPETEDHALLWAY)
    + [I3DL2\_PRESET\_CAVE](#I3DL2_PRESET_CAVE)
    + [I3DL2\_PRESET\_CITY](#I3DL2_PRESET_CITY)
    + [I3DL2\_PRESET\_CONCERTHALL](#I3DL2_PRESET_CONCERTHALL)
    + [I3DL2\_PRESET\_DEFAULT](#I3DL2_PRESET_DEFAULT)
    + [I3DL2\_PRESET\_FOREST](#I3DL2_PRESET_FOREST)
    + [I3DL2\_PRESET\_GENERIC](#I3DL2_PRESET_GENERIC)
    + [I3DL2\_PRESET\_HALLWAY](#I3DL2_PRESET_HALLWAY)
    + [I3DL2\_PRESET\_HANGAR](#I3DL2_PRESET_HANGAR)
    + [I3DL2\_PRESET\_LARGEHALL](#I3DL2_PRESET_LARGEHALL)
    + [I3DL2\_PRESET\_LARGEROOM](#I3DL2_PRESET_LARGEROOM)
    + [I3DL2\_PRESET\_LIVINGROOM](#I3DL2_PRESET_LIVINGROOM)
    + [I3DL2\_PRESET\_MEDIUMHALL](#I3DL2_PRESET_MEDIUMHALL)
    + [I3DL2\_PRESET\_MEDIUMROOM](#I3DL2_PRESET_MEDIUMROOM)
    + [I3DL2\_PRESET\_MOUNTAINS](#I3DL2_PRESET_MOUNTAINS)
    + [I3DL2\_PRESET\_PADDEDCELL](#I3DL2_PRESET_PADDEDCELL)
    + [I3DL2\_PRESET\_PARKINGLOT](#I3DL2_PRESET_PARKINGLOT)
    + [I3DL2\_PRESET\_PLAIN](#I3DL2_PRESET_PLAIN)
    + [I3DL2\_PRESET\_PLATE](#I3DL2_PRESET_PLATE)
    + [I3DL2\_PRESET\_QUARRY](#I3DL2_PRESET_QUARRY)
    + [I3DL2\_PRESET\_ROOM](#I3DL2_PRESET_ROOM)
    + [I3DL2\_PRESET\_SEWERPIPE](#I3DL2_PRESET_SEWERPIPE)
    + [I3DL2\_PRESET\_SMALLROOM](#I3DL2_PRESET_SMALLROOM)
    + [I3DL2\_PRESET\_STONECORRIDOR](#I3DL2_PRESET_STONECORRIDOR)
    + [I3DL2\_PRESET\_STONEROOM](#I3DL2_PRESET_STONEROOM)
    + [I3DL2\_PRESET\_UNDERWATER](#I3DL2_PRESET_UNDERWATER)
    + [IXAPOHrtfParameters\_UUID](#IXAPOHrtfParameters_UUID)
    + [IXAPOParameters\_UUID](#IXAPOParameters_UUID)
    + [IXAPO\_UUID](#IXAPO_UUID)
    + [IXAudio2Extension\_UUID](#IXAudio2Extension_UUID)
    + [IXAudio2\_UUID](#IXAudio2_UUID)
  * [Procedures](#pkg-Procedures)
    + [AmplitudeRatioToDecibels](#AmplitudeRatioToDecibels)
    + [Calculate](#Calculate)
    + [Create](#Create)
    + [CreateAudioReverb](#CreateAudioReverb)
    + [CreateAudioVolumeMeter](#CreateAudioVolumeMeter)
    + [CreateFX](#CreateFX)
    + [CreateHrtfApo](#CreateHrtfApo)
    + [CutoffFrequencyToOnePoleCoefficient](#CutoffFrequencyToOnePoleCoefficient)
    + [CutoffFrequencyToRadians](#CutoffFrequencyToRadians)
    + [DecibelsToAmplitudeRatio](#DecibelsToAmplitudeRatio)
    + [FrequencyRatioToSemitones](#FrequencyRatioToSemitones)
    + [Initialize](#Initialize)
    + [RadiansToCutoffFrequency](#RadiansToCutoffFrequency)
    + [ReverbConvertI3DL2ToNative](#ReverbConvertI3DL2ToNative)
    + [SemitonesToFrequencyRatio](#SemitonesToFrequencyRatio)
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