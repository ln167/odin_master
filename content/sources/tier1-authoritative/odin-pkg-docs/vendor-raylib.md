package raylib - pkg.odin-lang.org 






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



Current Package: *[raylib](/vendor/raylib)*

  

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
2. [raylib](/vendor/raylib)

# package vendor:raylib [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [raylib v5.5](https://www.raylib.com/).

```
*********************************************************************************************
*
*   raylib v5.5 - A simple and easy-to-use library to enjoy videogames programming (www.raylib.com)
*
*   FEATURES:
*       - NO external dependencies, all required libraries included with raylib
*       - Multiplatform: Windows, Linux, FreeBSD, OpenBSD, NetBSD, DragonFly,
*                        MacOS, Haiku, Android, Raspberry Pi, DRM native, HTML5.
*       - Written in plain C code (C99) in PascalCase/camelCase notation
*       - Hardware accelerated with OpenGL (1.1, 2.1, 3.3, 4.3, ES2, ES3 - choose at compile)
*       - Unique OpenGL abstraction layer (usable as standalone module): [rlgl]
*       - Multiple Fonts formats supported (TTF, OTF, FNT, BDF, Sprite fonts)
*       - Outstanding texture formats support, including compressed formats (DXT, ETC, ASTC)
*       - Full 3d support for 3d Shapes, Models, Billboards, Heightmaps and more!
*       - Flexible Materials system, supporting classic maps and PBR maps
*       - Animated 3D models supported (skeletal bones animation) (IQM, M3D, GLTF)
*       - Shaders support, including Model shaders and Postprocessing shaders
*       - Powerful math module for Vector, Matrix and Quaternion operations: [raymath]
*       - Audio loading and playing with streaming support (WAV, OGG, MP3, FLAC, QOA, XM, MOD)
*       - VR stereo rendering with configurable HMD device parameters
*       - Bindings to multiple programming languages available!
*
*   NOTES:
*       - One default Font is loaded on InitWindow()->LoadFontDefault() [core, text]
*       - One default Texture2D is loaded on rlglInit(), 1x1 white pixel R8G8B8A8 [rlgl] (OpenGL 3.3 or ES2)
*       - One default Shader is loaded on rlglInit()->rlLoadShaderDefault() [rlgl] (OpenGL 3.3 or ES2)
*       - One default RenderBatch is loaded on rlglInit()->rlLoadRenderBatch() [rlgl] (OpenGL 3.3 or ES2)
*
*   DEPENDENCIES (included):
*       [rcore][GLFW] rglfw (Camilla Löwy - github.com/glfw/glfw) for window/context management and input
*       [rcore][RGFW] rgfw (ColleagueRiley - github.com/ColleagueRiley/RGFW) for window/context management and input
*       [rlgl] glad/glad_gles2 (David Herberth - github.com/Dav1dde/glad) for OpenGL 3.3 extensions loading
*       [raudio] miniaudio (David Reid - github.com/mackron/miniaudio) for audio device/context management
*
*   OPTIONAL DEPENDENCIES (included):
*       [rcore] msf_gif (Miles Fogle) for GIF recording
*       [rcore] sinfl (Micha Mettke) for DEFLATE decompression algorithm
*       [rcore] sdefl (Micha Mettke) for DEFLATE compression algorithm
*       [rcore] rprand (Ramon Snatamaria) for pseudo-random numbers generation
*       [rtextures] qoi (Dominic Szablewski - https://phoboslab.org) for QOI image manage
*       [rtextures] stb_image (Sean Barret) for images loading (BMP, TGA, PNG, JPEG, HDR...)
*       [rtextures] stb_image_write (Sean Barret) for image writing (BMP, TGA, PNG, JPG)
*       [rtextures] stb_image_resize2 (Sean Barret) for image resizing algorithms
*       [rtextures] stb_perlin (Sean Barret) for Perlin Noise image generation
*       [rtext] stb_truetype (Sean Barret) for ttf fonts loading
*       [rtext] stb_rect_pack (Sean Barret) for rectangles packing
*       [rmodels] par_shapes (Philip Rideout) for parametric 3d shapes generation
*       [rmodels] tinyobj_loader_c (Syoyo Fujita) for models loading (OBJ, MTL)
*       [rmodels] cgltf (Johannes Kuhlmann) for models loading (glTF)
*       [rmodels] m3d (bzt) for models loading (M3D, https://bztsrc.gitlab.io/model3d)
*       [rmodels] vox_loader (Johann Nadalutti) for models loading (VOX)
*       [raudio] dr_wav (David Reid) for WAV audio file loading
*       [raudio] dr_flac (David Reid) for FLAC audio file loading
*       [raudio] dr_mp3 (David Reid) for MP3 audio file loading
*       [raudio] stb_vorbis (Sean Barret) for OGG audio loading
*       [raudio] jar_xm (Joshua Reisenauer) for XM audio module loading
*       [raudio] jar_mod (Joshua Reisenauer) for MOD audio module loading
*       [raudio] qoa (Dominic Szablewski - https://phoboslab.org) for QOA audio manage
*
*
*   LICENSE: zlib/libpng
*
*   raylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
*   BSD-like license that allows static linking with closed source software:
*
*   Copyright (c) 2013-2024 Ramon Santamaria (@raysan5)
*
*   This software is provided "as-is", without any express or implied warranty. In no event
*   will the authors be held liable for any damages arising from the use of this software.
*
*   Permission is granted to anyone to use this software for any purpose, including commercial
*   applications, and to alter it and redistribute it freely, subject to the following restrictions:
*
*     1. The origin of this software must not be misrepresented; you must not claim that you
*     wrote the original software. If you use this software in a product, an acknowledgment
*     in the product documentation would be appreciated but is not required.
*
*     2. Altered source versions must be plainly marked as such, and must not be misrepresented
*     as being the original software.
*
*     3. This notice may not be removed or altered from any source distribution.
*
*********************************************************************************************
```

## Index

Types (86)

* [AudioCallback](#AudioCallback)
* [AudioStream](#AudioStream)
* [AutomationEvent](#AutomationEvent)
* [AutomationEventList](#AutomationEventList)
* [BlendMode](#BlendMode)
* [BoneInfo](#BoneInfo)
* [BoundingBox](#BoundingBox)
* [Camera](#Camera)
* [Camera2D](#Camera2D)
* [Camera3D](#Camera3D)
* [CameraMode](#CameraMode)
* [CameraProjection](#CameraProjection)
* [Color](#Color)
* [ConfigFlag](#ConfigFlag)
* [ConfigFlags](#ConfigFlags)
* [CubemapLayout](#CubemapLayout)
* [FilePathList](#FilePathList)
* [Font](#Font)
* [FontType](#FontType)
* [GamepadAxis](#GamepadAxis)
* [GamepadButton](#GamepadButton)
* [Gesture](#Gesture)
* [Gestures](#Gestures)
* [GlyphInfo](#GlyphInfo)
* [GuiCheckBoxProperty](#GuiCheckBoxProperty)
* [GuiColorPickerProperty](#GuiColorPickerProperty)
* [GuiComboBoxProperty](#GuiComboBoxProperty)
* [GuiControl](#GuiControl)
* [GuiControlProperty](#GuiControlProperty)
* [GuiDefaultProperty](#GuiDefaultProperty)
* [GuiDropdownBoxProperty](#GuiDropdownBoxProperty)
* [GuiIconName](#GuiIconName)
* [GuiListViewProperty](#GuiListViewProperty)
* [GuiProgressBarProperty](#GuiProgressBarProperty)
* [GuiScrollBarProperty](#GuiScrollBarProperty)
* [GuiSliderProperty](#GuiSliderProperty)
* [GuiSpinnerProperty](#GuiSpinnerProperty)
* [GuiState](#GuiState)
* [GuiTextAlignment](#GuiTextAlignment)
* [GuiTextAlignmentVertical](#GuiTextAlignmentVertical)
* [GuiTextBoxProperty](#GuiTextBoxProperty)
* [GuiTextWrapMode](#GuiTextWrapMode)
* [GuiToggleProperty](#GuiToggleProperty)
* [Image](#Image)
* [KeyboardKey](#KeyboardKey)
* [LoadFileDataCallback](#LoadFileDataCallback)
* [LoadFileTextCallback](#LoadFileTextCallback)
* [Material](#Material)
* [MaterialMap](#MaterialMap)
* [MaterialMapIndex](#MaterialMapIndex)
* [Matrix](#Matrix)
* [Mesh](#Mesh)
* [Model](#Model)
* [ModelAnimation](#ModelAnimation)
* [MouseButton](#MouseButton)
* [MouseCursor](#MouseCursor)
* [Music](#Music)
* [NPatchInfo](#NPatchInfo)
* [NPatchLayout](#NPatchLayout)
* [PixelFormat](#PixelFormat)
* [Quaternion](#Quaternion)
* [Ray](#Ray)
* [RayCollision](#RayCollision)
* [Rectangle](#Rectangle)
* [RenderTexture](#RenderTexture)
* [RenderTexture2D](#RenderTexture2D)
* [SaveFileDataCallback](#SaveFileDataCallback)
* [SaveFileTextCallback](#SaveFileTextCallback)
* [Shader](#Shader)
* [ShaderLocationIndex](#ShaderLocationIndex)
* [ShaderUniformDataType](#ShaderUniformDataType)
* [Sound](#Sound)
* [Texture](#Texture)
* [Texture2D](#Texture2D)
* [TextureCubemap](#TextureCubemap)
* [TextureFilter](#TextureFilter)
* [TextureWrap](#TextureWrap)
* [TraceLogCallback](#TraceLogCallback)
* [TraceLogLevel](#TraceLogLevel)
* [Transform](#Transform)
* [Vector2](#Vector2)
* [Vector3](#Vector3)
* [Vector4](#Vector4)
* [VrDeviceInfo](#VrDeviceInfo)
* [VrStereoConfig](#VrStereoConfig)
* [Wave](#Wave)

Constants (49)

* [BEIGE](#BEIGE)
* [BLACK](#BLACK)
* [BLANK](#BLANK)
* [BLUE](#BLUE)
* [BROWN](#BROWN)
* [CAMERA\_MOUSE\_MOVE\_SENSITIVITY](#CAMERA_MOUSE_MOVE_SENSITIVITY)
* [CAMERA\_MOVE\_SPEED](#CAMERA_MOVE_SPEED)
* [CAMERA\_ORBITAL\_SPEED](#CAMERA_ORBITAL_SPEED)
* [CAMERA\_PAN\_SPEED](#CAMERA_PAN_SPEED)
* [CAMERA\_ROTATION\_SPEED](#CAMERA_ROTATION_SPEED)
* [DARKBLUE](#DARKBLUE)
* [DARKBROWN](#DARKBROWN)
* [DARKGRAY](#DARKGRAY)
* [DARKGREEN](#DARKGREEN)
* [DARKPURPLE](#DARKPURPLE)
* [DEG2RAD](#DEG2RAD)
* [EPSILON](#EPSILON)
* [GOLD](#GOLD)
* [GRAY](#GRAY)
* [GREEN](#GREEN)
* [LIGHTGRAY](#LIGHTGRAY)
* [LIME](#LIME)
* [MAGENTA](#MAGENTA)
* [MAROON](#MAROON)
* [MAX\_MATERIAL\_MAPS](#MAX_MATERIAL_MAPS)
* [MAX\_TEXTFORMAT\_BUFFERS](#MAX_TEXTFORMAT_BUFFERS)
* [MAX\_TEXT\_BUFFER\_LENGTH](#MAX_TEXT_BUFFER_LENGTH)
* [ORANGE](#ORANGE)
* [PI](#PI)
* [PINK](#PINK)
* [PURPLE](#PURPLE)
* [RAD2DEG](#RAD2DEG)
* [RAYGUI\_SHARED](#RAYGUI_SHARED)
* [RAYGUI\_VERSION](#RAYGUI_VERSION)
* [RAYGUI\_WASM\_LIB](#RAYGUI_WASM_LIB)
* [RAYLIB\_SHARED](#RAYLIB_SHARED)
* [RAYLIB\_WASM\_LIB](#RAYLIB_WASM_LIB)
* [RAYWHITE](#RAYWHITE)
* [RED](#RED)
* [SCROLLBAR\_LEFT\_SIDE](#SCROLLBAR_LEFT_SIDE)
* [SCROLLBAR\_RIGHT\_SIDE](#SCROLLBAR_RIGHT_SIDE)
* [SKYBLUE](#SKYBLUE)
* [VERSION](#VERSION)
* [VERSION\_MAJOR](#VERSION_MAJOR)
* [VERSION\_MINOR](#VERSION_MINOR)
* [VERSION\_PATCH](#VERSION_PATCH)
* [VIOLET](#VIOLET)
* [WHITE](#WHITE)
* [YELLOW](#YELLOW)

Variables (1)

* [version](#version)

Procedures (805)

* [AttachAudioMixedProcessor](#AttachAudioMixedProcessor)
* [AttachAudioStreamProcessor](#AttachAudioStreamProcessor)
* [BeginBlendMode](#BeginBlendMode)
* [BeginDrawing](#BeginDrawing)
* [BeginMode2D](#BeginMode2D)
* [BeginMode3D](#BeginMode3D)
* [BeginScissorMode](#BeginScissorMode)
* [BeginShaderMode](#BeginShaderMode)
* [BeginTextureMode](#BeginTextureMode)
* [BeginVrStereoMode](#BeginVrStereoMode)
* [CameraMoveForward](#CameraMoveForward)
* [CameraMoveRight](#CameraMoveRight)
* [CameraMoveToTarget](#CameraMoveToTarget)
* [CameraMoveUp](#CameraMoveUp)
* [CameraPitch](#CameraPitch)
* [CameraRoll](#CameraRoll)
* [CameraYaw](#CameraYaw)
* [ChangeDirectory](#ChangeDirectory)
* [CheckCollisionBoxSphere](#CheckCollisionBoxSphere)
* [CheckCollisionBoxes](#CheckCollisionBoxes)
* [CheckCollisionCircleLine](#CheckCollisionCircleLine)
* [CheckCollisionCircleRec](#CheckCollisionCircleRec)
* [CheckCollisionCircles](#CheckCollisionCircles)
* [CheckCollisionLines](#CheckCollisionLines)
* [CheckCollisionPointCircle](#CheckCollisionPointCircle)
* [CheckCollisionPointLine](#CheckCollisionPointLine)
* [CheckCollisionPointPoly](#CheckCollisionPointPoly)
* [CheckCollisionPointRec](#CheckCollisionPointRec)
* [CheckCollisionPointTriangle](#CheckCollisionPointTriangle)
* [CheckCollisionRecs](#CheckCollisionRecs)
* [CheckCollisionSpheres](#CheckCollisionSpheres)
* [Clamp](#Clamp)
* [ClearBackground](#ClearBackground)
* [ClearWindowState](#ClearWindowState)
* [CloseAudioDevice](#CloseAudioDevice)
* [CloseWindow](#CloseWindow)
* [CodepointToUTF8](#CodepointToUTF8)
* [ColorAlpha](#ColorAlpha)
* [ColorAlphaBlend](#ColorAlphaBlend)
* [ColorBrightness](#ColorBrightness)
* [ColorContrast](#ColorContrast)
* [ColorFromHSV](#ColorFromHSV)
* [ColorFromNormalized](#ColorFromNormalized)
* [ColorIsEqual](#ColorIsEqual)
* [ColorLerp](#ColorLerp)
* [ColorNormalize](#ColorNormalize)
* [ColorTint](#ColorTint)
* [ColorToHSV](#ColorToHSV)
* [ColorToInt](#ColorToInt)
* [CompressData](#CompressData)
* [ComputeCRC32](#ComputeCRC32)
* [ComputeMD5](#ComputeMD5)
* [ComputeSHA1](#ComputeSHA1)
* [DecodeDataBase64](#DecodeDataBase64)
* [DecompressData](#DecompressData)
* [DetachAudioMixedProcessor](#DetachAudioMixedProcessor)
* [DetachAudioStreamProcessor](#DetachAudioStreamProcessor)
* [DirectoryExists](#DirectoryExists)
* [DisableCursor](#DisableCursor)
* [DisableEventWaiting](#DisableEventWaiting)
* [DrawBillboard](#DrawBillboard)
* [DrawBillboardPro](#DrawBillboardPro)
* [DrawBillboardRec](#DrawBillboardRec)
* [DrawBoundingBox](#DrawBoundingBox)
* [DrawCapsule](#DrawCapsule)
* [DrawCapsuleWires](#DrawCapsuleWires)
* [DrawCircle](#DrawCircle)
* [DrawCircle3D](#DrawCircle3D)
* [DrawCircleGradient](#DrawCircleGradient)
* [DrawCircleLines](#DrawCircleLines)
* [DrawCircleLinesV](#DrawCircleLinesV)
* [DrawCircleSector](#DrawCircleSector)
* [DrawCircleSectorLines](#DrawCircleSectorLines)
* [DrawCircleV](#DrawCircleV)
* [DrawCube](#DrawCube)
* [DrawCubeV](#DrawCubeV)
* [DrawCubeWires](#DrawCubeWires)
* [DrawCubeWiresV](#DrawCubeWiresV)
* [DrawCylinder](#DrawCylinder)
* [DrawCylinderEx](#DrawCylinderEx)
* [DrawCylinderWires](#DrawCylinderWires)
* [DrawCylinderWiresEx](#DrawCylinderWiresEx)
* [DrawEllipse](#DrawEllipse)
* [DrawEllipseLines](#DrawEllipseLines)
* [DrawFPS](#DrawFPS)
* [DrawGrid](#DrawGrid)
* [DrawLine](#DrawLine)
* [DrawLine3D](#DrawLine3D)
* [DrawLineBezier](#DrawLineBezier)
* [DrawLineEx](#DrawLineEx)
* [DrawLineStrip](#DrawLineStrip)
* [DrawLineV](#DrawLineV)
* [DrawMesh](#DrawMesh)
* [DrawMeshInstanced](#DrawMeshInstanced)
* [DrawModel](#DrawModel)
* [DrawModelEx](#DrawModelEx)
* [DrawModelPoints](#DrawModelPoints)
* [DrawModelPointsEx](#DrawModelPointsEx)
* [DrawModelWires](#DrawModelWires)
* [DrawModelWiresEx](#DrawModelWiresEx)
* [DrawPixel](#DrawPixel)
* [DrawPixelV](#DrawPixelV)
* [DrawPlane](#DrawPlane)
* [DrawPoint3D](#DrawPoint3D)
* [DrawPoly](#DrawPoly)
* [DrawPolyLines](#DrawPolyLines)
* [DrawPolyLinesEx](#DrawPolyLinesEx)
* [DrawRay](#DrawRay)
* [DrawRectangle](#DrawRectangle)
* [DrawRectangleGradientEx](#DrawRectangleGradientEx)
* [DrawRectangleGradientH](#DrawRectangleGradientH)
* [DrawRectangleGradientV](#DrawRectangleGradientV)
* [DrawRectangleLines](#DrawRectangleLines)
* [DrawRectangleLinesEx](#DrawRectangleLinesEx)
* [DrawRectanglePro](#DrawRectanglePro)
* [DrawRectangleRec](#DrawRectangleRec)
* [DrawRectangleRounded](#DrawRectangleRounded)
* [DrawRectangleRoundedLines](#DrawRectangleRoundedLines)
* [DrawRectangleRoundedLinesEx](#DrawRectangleRoundedLinesEx)
* [DrawRectangleV](#DrawRectangleV)
* [DrawRing](#DrawRing)
* [DrawRingLines](#DrawRingLines)
* [DrawSphere](#DrawSphere)
* [DrawSphereEx](#DrawSphereEx)
* [DrawSphereWires](#DrawSphereWires)
* [DrawSplineBasis](#DrawSplineBasis)
* [DrawSplineBezierCubic](#DrawSplineBezierCubic)
* [DrawSplineBezierQuadratic](#DrawSplineBezierQuadratic)
* [DrawSplineCatmullRom](#DrawSplineCatmullRom)
* [DrawSplineLinear](#DrawSplineLinear)
* [DrawSplineSegmentBasis](#DrawSplineSegmentBasis)
* [DrawSplineSegmentBezierCubic](#DrawSplineSegmentBezierCubic)
* [DrawSplineSegmentBezierQuadratic](#DrawSplineSegmentBezierQuadratic)
* [DrawSplineSegmentCatmullRom](#DrawSplineSegmentCatmullRom)
* [DrawSplineSegmentLinear](#DrawSplineSegmentLinear)
* [DrawText](#DrawText)
* [DrawTextCodepoint](#DrawTextCodepoint)
* [DrawTextCodepoints](#DrawTextCodepoints)
* [DrawTextEx](#DrawTextEx)
* [DrawTextPro](#DrawTextPro)
* [DrawTexture](#DrawTexture)
* [DrawTextureEx](#DrawTextureEx)
* [DrawTextureNPatch](#DrawTextureNPatch)
* [DrawTexturePro](#DrawTexturePro)
* [DrawTextureRec](#DrawTextureRec)
* [DrawTextureV](#DrawTextureV)
* [DrawTriangle](#DrawTriangle)
* [DrawTriangle3D](#DrawTriangle3D)
* [DrawTriangleFan](#DrawTriangleFan)
* [DrawTriangleLines](#DrawTriangleLines)
* [DrawTriangleStrip](#DrawTriangleStrip)
* [DrawTriangleStrip3D](#DrawTriangleStrip3D)
* [EaseBackIn](#EaseBackIn)
* [EaseBackInOut](#EaseBackInOut)
* [EaseBackOut](#EaseBackOut)
* [EaseBounceIn](#EaseBounceIn)
* [EaseBounceInOut](#EaseBounceInOut)
* [EaseBounceOut](#EaseBounceOut)
* [EaseCircIn](#EaseCircIn)
* [EaseCircInOut](#EaseCircInOut)
* [EaseCircOut](#EaseCircOut)
* [EaseCubicIn](#EaseCubicIn)
* [EaseCubicInOut](#EaseCubicInOut)
* [EaseCubicOut](#EaseCubicOut)
* [EaseElasticIn](#EaseElasticIn)
* [EaseElasticInOut](#EaseElasticInOut)
* [EaseElasticOut](#EaseElasticOut)
* [EaseExpoIn](#EaseExpoIn)
* [EaseExpoInOut](#EaseExpoInOut)
* [EaseExpoOut](#EaseExpoOut)
* [EaseLinearIn](#EaseLinearIn)
* [EaseLinearInOut](#EaseLinearInOut)
* [EaseLinearNone](#EaseLinearNone)
* [EaseLinearOut](#EaseLinearOut)
* [EaseQuadIn](#EaseQuadIn)
* [EaseQuadInOut](#EaseQuadInOut)
* [EaseQuadOut](#EaseQuadOut)
* [EaseSineIn](#EaseSineIn)
* [EaseSineInOut](#EaseSineInOut)
* [EaseSineOut](#EaseSineOut)
* [EnableCursor](#EnableCursor)
* [EnableEventWaiting](#EnableEventWaiting)
* [EncodeDataBase64](#EncodeDataBase64)
* [EndBlendMode](#EndBlendMode)
* [EndDrawing](#EndDrawing)
* [EndMode2D](#EndMode2D)
* [EndMode3D](#EndMode3D)
* [EndScissorMode](#EndScissorMode)
* [EndShaderMode](#EndShaderMode)
* [EndTextureMode](#EndTextureMode)
* [EndVrStereoMode](#EndVrStereoMode)
* [ExportAutomationEventList](#ExportAutomationEventList)
* [ExportDataAsCode](#ExportDataAsCode)
* [ExportFontAsCode](#ExportFontAsCode)
* [ExportImage](#ExportImage)
* [ExportImageAsCode](#ExportImageAsCode)
* [ExportImageToMemory](#ExportImageToMemory)
* [ExportMesh](#ExportMesh)
* [ExportMeshAsCode](#ExportMeshAsCode)
* [ExportWave](#ExportWave)
* [ExportWaveAsCode](#ExportWaveAsCode)
* [Fade](#Fade)
* [FileExists](#FileExists)
* [FloatEquals](#FloatEquals)
* [GenImageCellular](#GenImageCellular)
* [GenImageChecked](#GenImageChecked)
* [GenImageColor](#GenImageColor)
* [GenImageFontAtlas](#GenImageFontAtlas)
* [GenImageGradientLinear](#GenImageGradientLinear)
* [GenImageGradientRadial](#GenImageGradientRadial)
* [GenImageGradientSquare](#GenImageGradientSquare)
* [GenImagePerlinNoise](#GenImagePerlinNoise)
* [GenImageText](#GenImageText)
* [GenImageWhiteNoise](#GenImageWhiteNoise)
* [GenMeshCone](#GenMeshCone)
* [GenMeshCube](#GenMeshCube)
* [GenMeshCubicmap](#GenMeshCubicmap)
* [GenMeshCylinder](#GenMeshCylinder)
* [GenMeshHeightmap](#GenMeshHeightmap)
* [GenMeshHemiSphere](#GenMeshHemiSphere)
* [GenMeshKnot](#GenMeshKnot)
* [GenMeshPlane](#GenMeshPlane)
* [GenMeshPoly](#GenMeshPoly)
* [GenMeshSphere](#GenMeshSphere)
* [GenMeshTangents](#GenMeshTangents)
* [GenMeshTorus](#GenMeshTorus)
* [GenTextureMipmaps](#GenTextureMipmaps)
* [GetApplicationDirectory](#GetApplicationDirectory)
* [GetCameraForward](#GetCameraForward)
* [GetCameraMatrix](#GetCameraMatrix)
* [GetCameraMatrix2D](#GetCameraMatrix2D)
* [GetCameraProjectionMatrix](#GetCameraProjectionMatrix)
* [GetCameraRight](#GetCameraRight)
* [GetCameraUp](#GetCameraUp)
* [GetCameraViewMatrix](#GetCameraViewMatrix)
* [GetCharPressed](#GetCharPressed)
* [GetClipboardImage](#GetClipboardImage)
* [GetClipboardText](#GetClipboardText)
* [GetCodepoint](#GetCodepoint)
* [GetCodepointCount](#GetCodepointCount)
* [GetCodepointNext](#GetCodepointNext)
* [GetCodepointPrevious](#GetCodepointPrevious)
* [GetCollisionRec](#GetCollisionRec)
* [GetColor](#GetColor)
* [GetCurrentMonitor](#GetCurrentMonitor)
* [GetDirectoryPath](#GetDirectoryPath)
* [GetFPS](#GetFPS)
* [GetFileExtension](#GetFileExtension)
* [GetFileLength](#GetFileLength)
* [GetFileModTime](#GetFileModTime)
* [GetFileName](#GetFileName)
* [GetFileNameWithoutExt](#GetFileNameWithoutExt)
* [GetFontDefault](#GetFontDefault)
* [GetFrameTime](#GetFrameTime)
* [GetGamepadAxisCount](#GetGamepadAxisCount)
* [GetGamepadAxisMovement](#GetGamepadAxisMovement)
* [GetGamepadButtonPressed](#GetGamepadButtonPressed)
* [GetGamepadName](#GetGamepadName)
* [GetGestureDetected](#GetGestureDetected)
* [GetGestureDragAngle](#GetGestureDragAngle)
* [GetGestureDragVector](#GetGestureDragVector)
* [GetGestureHoldDuration](#GetGestureHoldDuration)
* [GetGesturePinchAngle](#GetGesturePinchAngle)
* [GetGesturePinchVector](#GetGesturePinchVector)
* [GetGlyphAtlasRec](#GetGlyphAtlasRec)
* [GetGlyphIndex](#GetGlyphIndex)
* [GetGlyphInfo](#GetGlyphInfo)
* [GetImageAlphaBorder](#GetImageAlphaBorder)
* [GetImageColor](#GetImageColor)
* [GetKeyPressed](#GetKeyPressed)
* [GetMasterVolume](#GetMasterVolume)
* [GetMeshBoundingBox](#GetMeshBoundingBox)
* [GetModelBoundingBox](#GetModelBoundingBox)
* [GetMonitorCount](#GetMonitorCount)
* [GetMonitorHeight](#GetMonitorHeight)
* [GetMonitorName](#GetMonitorName)
* [GetMonitorPhysicalHeight](#GetMonitorPhysicalHeight)
* [GetMonitorPhysicalWidth](#GetMonitorPhysicalWidth)
* [GetMonitorPosition](#GetMonitorPosition)
* [GetMonitorRefreshRate](#GetMonitorRefreshRate)
* [GetMonitorWidth](#GetMonitorWidth)
* [GetMouseDelta](#GetMouseDelta)
* [GetMousePosition](#GetMousePosition)
* [GetMouseWheelMove](#GetMouseWheelMove)
* [GetMouseWheelMoveV](#GetMouseWheelMoveV)
* [GetMouseX](#GetMouseX)
* [GetMouseY](#GetMouseY)
* [GetMusicTimeLength](#GetMusicTimeLength)
* [GetMusicTimePlayed](#GetMusicTimePlayed)
* [GetPixelColor](#GetPixelColor)
* [GetPixelDataSize](#GetPixelDataSize)
* [GetPrevDirectoryPath](#GetPrevDirectoryPath)
* [GetRandomValue](#GetRandomValue)
* [GetRayCollisionBox](#GetRayCollisionBox)
* [GetRayCollisionMesh](#GetRayCollisionMesh)
* [GetRayCollisionQuad](#GetRayCollisionQuad)
* [GetRayCollisionSphere](#GetRayCollisionSphere)
* [GetRayCollisionTriangle](#GetRayCollisionTriangle)
* [GetRenderHeight](#GetRenderHeight)
* [GetRenderWidth](#GetRenderWidth)
* [GetScreenHeight](#GetScreenHeight)
* [GetScreenToWorld2D](#GetScreenToWorld2D)
* [GetScreenToWorldRay](#GetScreenToWorldRay)
* [GetScreenToWorldRayEx](#GetScreenToWorldRayEx)
* [GetScreenWidth](#GetScreenWidth)
* [GetShaderLocation](#GetShaderLocation)
* [GetShaderLocationAttrib](#GetShaderLocationAttrib)
* [GetShapesTexture](#GetShapesTexture)
* [GetShapesTextureRectangle](#GetShapesTextureRectangle)
* [GetSplinePointBasis](#GetSplinePointBasis)
* [GetSplinePointBezierCubic](#GetSplinePointBezierCubic)
* [GetSplinePointBezierQuad](#GetSplinePointBezierQuad)
* [GetSplinePointCatmullRom](#GetSplinePointCatmullRom)
* [GetSplinePointLinear](#GetSplinePointLinear)
* [GetTime](#GetTime)
* [GetTouchPointCount](#GetTouchPointCount)
* [GetTouchPointId](#GetTouchPointId)
* [GetTouchPosition](#GetTouchPosition)
* [GetTouchX](#GetTouchX)
* [GetTouchY](#GetTouchY)
* [GetWindowHandle](#GetWindowHandle)
* [GetWindowPosition](#GetWindowPosition)
* [GetWindowScaleDPI](#GetWindowScaleDPI)
* [GetWorkingDirectory](#GetWorkingDirectory)
* [GetWorldToScreen](#GetWorldToScreen)
* [GetWorldToScreen2D](#GetWorldToScreen2D)
* [GetWorldToScreenEx](#GetWorldToScreenEx)
* [GuiButton](#GuiButton)
* [GuiCheckBox](#GuiCheckBox)
* [GuiColorBarAlpha](#GuiColorBarAlpha)
* [GuiColorBarHue](#GuiColorBarHue)
* [GuiColorPanel](#GuiColorPanel)
* [GuiColorPanelHSV](#GuiColorPanelHSV)
* [GuiColorPicker](#GuiColorPicker)
* [GuiColorPickerHSV](#GuiColorPickerHSV)
* [GuiComboBox](#GuiComboBox)
* [GuiDisable](#GuiDisable)
* [GuiDisableTooltip](#GuiDisableTooltip)
* [GuiDrawIcon](#GuiDrawIcon)
* [GuiDropdownBox](#GuiDropdownBox)
* [GuiDummyRec](#GuiDummyRec)
* [GuiEnable](#GuiEnable)
* [GuiEnableTooltip](#GuiEnableTooltip)
* [GuiGetFont](#GuiGetFont)
* [GuiGetIcons](#GuiGetIcons)
* [GuiGetState](#GuiGetState)
* [GuiGetStyle](#GuiGetStyle)
* [GuiGrid](#GuiGrid)
* [GuiGroupBox](#GuiGroupBox)
* [GuiIconText](#GuiIconText)
* [GuiIsLocked](#GuiIsLocked)
* [GuiLabel](#GuiLabel)
* [GuiLabelButton](#GuiLabelButton)
* [GuiLine](#GuiLine)
* [GuiListView](#GuiListView)
* [GuiListViewEx](#GuiListViewEx)
* [GuiLoadIcons](#GuiLoadIcons)
* [GuiLoadStyle](#GuiLoadStyle)
* [GuiLoadStyleDefault](#GuiLoadStyleDefault)
* [GuiLock](#GuiLock)
* [GuiMessageBox](#GuiMessageBox)
* [GuiPanel](#GuiPanel)
* [GuiProgressBar](#GuiProgressBar)
* [GuiScrollPanel](#GuiScrollPanel)
* [GuiSetAlpha](#GuiSetAlpha)
* [GuiSetFont](#GuiSetFont)
* [GuiSetIconScale](#GuiSetIconScale)
* [GuiSetState](#GuiSetState)
* [GuiSetStyle](#GuiSetStyle)
* [GuiSetTooltip](#GuiSetTooltip)
* [GuiSlider](#GuiSlider)
* [GuiSliderBar](#GuiSliderBar)
* [GuiSpinner](#GuiSpinner)
* [GuiStatusBar](#GuiStatusBar)
* [GuiTabBar](#GuiTabBar)
* [GuiTextBox](#GuiTextBox)
* [GuiTextInputBox](#GuiTextInputBox)
* [GuiToggle](#GuiToggle)
* [GuiToggleGroup](#GuiToggleGroup)
* [GuiToggleSlider](#GuiToggleSlider)
* [GuiUnlock](#GuiUnlock)
* [GuiValueBox](#GuiValueBox)
* [GuiWindowBox](#GuiWindowBox)
* [HideCursor](#HideCursor)
* [ImageAlphaClear](#ImageAlphaClear)
* [ImageAlphaCrop](#ImageAlphaCrop)
* [ImageAlphaMask](#ImageAlphaMask)
* [ImageAlphaPremultiply](#ImageAlphaPremultiply)
* [ImageBlurGaussian](#ImageBlurGaussian)
* [ImageClearBackground](#ImageClearBackground)
* [ImageColorBrightness](#ImageColorBrightness)
* [ImageColorContrast](#ImageColorContrast)
* [ImageColorGrayscale](#ImageColorGrayscale)
* [ImageColorInvert](#ImageColorInvert)
* [ImageColorReplace](#ImageColorReplace)
* [ImageColorTint](#ImageColorTint)
* [ImageCopy](#ImageCopy)
* [ImageCrop](#ImageCrop)
* [ImageDither](#ImageDither)
* [ImageDraw](#ImageDraw)
* [ImageDrawCircle](#ImageDrawCircle)
* [ImageDrawCircleLines](#ImageDrawCircleLines)
* [ImageDrawCircleLinesV](#ImageDrawCircleLinesV)
* [ImageDrawCircleV](#ImageDrawCircleV)
* [ImageDrawLine](#ImageDrawLine)
* [ImageDrawLineEx](#ImageDrawLineEx)
* [ImageDrawLineV](#ImageDrawLineV)
* [ImageDrawPixel](#ImageDrawPixel)
* [ImageDrawPixelV](#ImageDrawPixelV)
* [ImageDrawRectangle](#ImageDrawRectangle)
* [ImageDrawRectangleLines](#ImageDrawRectangleLines)
* [ImageDrawRectangleRec](#ImageDrawRectangleRec)
* [ImageDrawRectangleV](#ImageDrawRectangleV)
* [ImageDrawText](#ImageDrawText)
* [ImageDrawTextEx](#ImageDrawTextEx)
* [ImageDrawTriangle](#ImageDrawTriangle)
* [ImageDrawTriangleEx](#ImageDrawTriangleEx)
* [ImageDrawTriangleFan](#ImageDrawTriangleFan)
* [ImageDrawTriangleLines](#ImageDrawTriangleLines)
* [ImageDrawTriangleStrip](#ImageDrawTriangleStrip)
* [ImageFlipHorizontal](#ImageFlipHorizontal)
* [ImageFlipVertical](#ImageFlipVertical)
* [ImageFormat](#ImageFormat)
* [ImageFromChannel](#ImageFromChannel)
* [ImageFromImage](#ImageFromImage)
* [ImageKernelConvolution](#ImageKernelConvolution)
* [ImageMipmaps](#ImageMipmaps)
* [ImageResize](#ImageResize)
* [ImageResizeCanvas](#ImageResizeCanvas)
* [ImageResizeNN](#ImageResizeNN)
* [ImageRotate](#ImageRotate)
* [ImageRotateCCW](#ImageRotateCCW)
* [ImageRotateCW](#ImageRotateCW)
* [ImageText](#ImageText)
* [ImageTextEx](#ImageTextEx)
* [ImageToPOT](#ImageToPOT)
* [InitAudioDevice](#InitAudioDevice)
* [InitWindow](#InitWindow)
* [IsAudioDeviceReady](#IsAudioDeviceReady)
* [IsAudioStreamPlaying](#IsAudioStreamPlaying)
* [IsAudioStreamProcessed](#IsAudioStreamProcessed)
* [IsAudioStreamReady](#IsAudioStreamReady)
* [IsAudioStreamValid](#IsAudioStreamValid)
* [IsCursorHidden](#IsCursorHidden)
* [IsCursorOnScreen](#IsCursorOnScreen)
* [IsFileDropped](#IsFileDropped)
* [IsFileExtension](#IsFileExtension)
* [IsFileNameValid](#IsFileNameValid)
* [IsFontReady](#IsFontReady)
* [IsFontValid](#IsFontValid)
* [IsGamepadAvailable](#IsGamepadAvailable)
* [IsGamepadButtonDown](#IsGamepadButtonDown)
* [IsGamepadButtonPressed](#IsGamepadButtonPressed)
* [IsGamepadButtonReleased](#IsGamepadButtonReleased)
* [IsGamepadButtonUp](#IsGamepadButtonUp)
* [IsGestureDetected](#IsGestureDetected)
* [IsImageReady](#IsImageReady)
* [IsImageValid](#IsImageValid)
* [IsKeyDown](#IsKeyDown)
* [IsKeyPressed](#IsKeyPressed)
* [IsKeyPressedRepeat](#IsKeyPressedRepeat)
* [IsKeyReleased](#IsKeyReleased)
* [IsKeyUp](#IsKeyUp)
* [IsMaterialReady](#IsMaterialReady)
* [IsMaterialValid](#IsMaterialValid)
* [IsModelAnimationValid](#IsModelAnimationValid)
* [IsModelReady](#IsModelReady)
* [IsModelValid](#IsModelValid)
* [IsMouseButtonDown](#IsMouseButtonDown)
* [IsMouseButtonPressed](#IsMouseButtonPressed)
* [IsMouseButtonReleased](#IsMouseButtonReleased)
* [IsMouseButtonUp](#IsMouseButtonUp)
* [IsMusicReady](#IsMusicReady)
* [IsMusicStreamPlaying](#IsMusicStreamPlaying)
* [IsMusicValid](#IsMusicValid)
* [IsPathFile](#IsPathFile)
* [IsRenderTextureReady](#IsRenderTextureReady)
* [IsRenderTextureValid](#IsRenderTextureValid)
* [IsShaderReady](#IsShaderReady)
* [IsShaderValid](#IsShaderValid)
* [IsSoundPlaying](#IsSoundPlaying)
* [IsSoundReady](#IsSoundReady)
* [IsSoundValid](#IsSoundValid)
* [IsTextureReady](#IsTextureReady)
* [IsTextureValid](#IsTextureValid)
* [IsWaveReady](#IsWaveReady)
* [IsWaveValid](#IsWaveValid)
* [IsWindowFocused](#IsWindowFocused)
* [IsWindowFullscreen](#IsWindowFullscreen)
* [IsWindowHidden](#IsWindowHidden)
* [IsWindowMaximized](#IsWindowMaximized)
* [IsWindowMinimized](#IsWindowMinimized)
* [IsWindowReady](#IsWindowReady)
* [IsWindowResized](#IsWindowResized)
* [IsWindowState](#IsWindowState)
* [Lerp](#Lerp)
* [LoadAudioStream](#LoadAudioStream)
* [LoadAutomationEventList](#LoadAutomationEventList)
* [LoadCodepoints](#LoadCodepoints)
* [LoadDirectoryFiles](#LoadDirectoryFiles)
* [LoadDirectoryFilesEx](#LoadDirectoryFilesEx)
* [LoadDroppedFiles](#LoadDroppedFiles)
* [LoadFileData](#LoadFileData)
* [LoadFileText](#LoadFileText)
* [LoadFont](#LoadFont)
* [LoadFontData](#LoadFontData)
* [LoadFontEx](#LoadFontEx)
* [LoadFontFromImage](#LoadFontFromImage)
* [LoadFontFromMemory](#LoadFontFromMemory)
* [LoadImage](#LoadImage)
* [LoadImageAnim](#LoadImageAnim)
* [LoadImageAnimFromMemory](#LoadImageAnimFromMemory)
* [LoadImageColors](#LoadImageColors)
* [LoadImageFromMemory](#LoadImageFromMemory)
* [LoadImageFromScreen](#LoadImageFromScreen)
* [LoadImageFromTexture](#LoadImageFromTexture)
* [LoadImagePalette](#LoadImagePalette)
* [LoadImageRaw](#LoadImageRaw)
* [LoadMaterialDefault](#LoadMaterialDefault)
* [LoadMaterials](#LoadMaterials)
* [LoadModel](#LoadModel)
* [LoadModelAnimations](#LoadModelAnimations)
* [LoadModelFromMesh](#LoadModelFromMesh)
* [LoadMusicStream](#LoadMusicStream)
* [LoadMusicStreamFromMemory](#LoadMusicStreamFromMemory)
* [LoadRandomSequence](#LoadRandomSequence)
* [LoadRenderTexture](#LoadRenderTexture)
* [LoadShader](#LoadShader)
* [LoadShaderFromMemory](#LoadShaderFromMemory)
* [LoadSound](#LoadSound)
* [LoadSoundAlias](#LoadSoundAlias)
* [LoadSoundFromWave](#LoadSoundFromWave)
* [LoadTexture](#LoadTexture)
* [LoadTextureCubemap](#LoadTextureCubemap)
* [LoadTextureFromImage](#LoadTextureFromImage)
* [LoadUTF8](#LoadUTF8)
* [LoadVrStereoConfig](#LoadVrStereoConfig)
* [LoadWave](#LoadWave)
* [LoadWaveFromMemory](#LoadWaveFromMemory)
* [LoadWaveSamples](#LoadWaveSamples)
* [MakeDirectory](#MakeDirectory)
* [MatrixAdd](#MatrixAdd)
* [MatrixDeterminant](#MatrixDeterminant)
* [MatrixIdentity](#MatrixIdentity)
* [MatrixInvert](#MatrixInvert)
* [MatrixLookAt](#MatrixLookAt)
* [MatrixMultiply](#MatrixMultiply)
* [MatrixOrtho](#MatrixOrtho)
* [MatrixPerspective](#MatrixPerspective)
* [MatrixRotate](#MatrixRotate)
* [MatrixRotateX](#MatrixRotateX)
* [MatrixRotateXYZ](#MatrixRotateXYZ)
* [MatrixRotateY](#MatrixRotateY)
* [MatrixRotateZ](#MatrixRotateZ)
* [MatrixRotateZYX](#MatrixRotateZYX)
* [MatrixScale](#MatrixScale)
* [MatrixSubtract](#MatrixSubtract)
* [MatrixToFloatV](#MatrixToFloatV)
* [MatrixTrace](#MatrixTrace)
* [MatrixTranslate](#MatrixTranslate)
* [MatrixTranspose](#MatrixTranspose)
* [MaximizeWindow](#MaximizeWindow)
* [MeasureText](#MeasureText)
* [MeasureTextEx](#MeasureTextEx)
* [MemAlloc](#MemAlloc)
* [MemAllocator](#MemAllocator)
* [MemAllocatorProc](#MemAllocatorProc)
* [MemFreeCstring](#MemFreeCstring)
* [MemFreePtr](#MemFreePtr)
* [MemRealloc](#MemRealloc)
* [MinimizeWindow](#MinimizeWindow)
* [Normalize](#Normalize)
* [OpenURL](#OpenURL)
* [PauseAudioStream](#PauseAudioStream)
* [PauseMusicStream](#PauseMusicStream)
* [PauseSound](#PauseSound)
* [PlayAudioStream](#PlayAudioStream)
* [PlayAutomationEvent](#PlayAutomationEvent)
* [PlayMusicStream](#PlayMusicStream)
* [PlaySound](#PlaySound)
* [PollInputEvents](#PollInputEvents)
* [QuaternionAdd](#QuaternionAdd)
* [QuaternionAddValue](#QuaternionAddValue)
* [QuaternionDivide](#QuaternionDivide)
* [QuaternionEquals](#QuaternionEquals)
* [QuaternionFromAxisAngle](#QuaternionFromAxisAngle)
* [QuaternionFromEuler](#QuaternionFromEuler)
* [QuaternionFromMatrix](#QuaternionFromMatrix)
* [QuaternionFromVector3ToVector3](#QuaternionFromVector3ToVector3)
* [QuaternionIdentity](#QuaternionIdentity)
* [QuaternionInvert](#QuaternionInvert)
* [QuaternionLength](#QuaternionLength)
* [QuaternionLerp](#QuaternionLerp)
* [QuaternionMultiply](#QuaternionMultiply)
* [QuaternionNlerp](#QuaternionNlerp)
* [QuaternionNormalize](#QuaternionNormalize)
* [QuaternionScale](#QuaternionScale)
* [QuaternionSlerp](#QuaternionSlerp)
* [QuaternionSubtract](#QuaternionSubtract)
* [QuaternionSubtractValue](#QuaternionSubtractValue)
* [QuaternionToAxisAngle](#QuaternionToAxisAngle)
* [QuaternionToEuler](#QuaternionToEuler)
* [QuaternionToMatrix](#QuaternionToMatrix)
* [QuaternionTransform](#QuaternionTransform)
* [Remap](#Remap)
* [RestoreWindow](#RestoreWindow)
* [ResumeAudioStream](#ResumeAudioStream)
* [ResumeMusicStream](#ResumeMusicStream)
* [ResumeSound](#ResumeSound)
* [SaveFileData](#SaveFileData)
* [SaveFileText](#SaveFileText)
* [SeekMusicStream](#SeekMusicStream)
* [SetAudioStreamBufferSizeDefault](#SetAudioStreamBufferSizeDefault)
* [SetAudioStreamCallback](#SetAudioStreamCallback)
* [SetAudioStreamPan](#SetAudioStreamPan)
* [SetAudioStreamPitch](#SetAudioStreamPitch)
* [SetAudioStreamVolume](#SetAudioStreamVolume)
* [SetAutomationEventBaseFrame](#SetAutomationEventBaseFrame)
* [SetAutomationEventList](#SetAutomationEventList)
* [SetClipboardText](#SetClipboardText)
* [SetConfigFlags](#SetConfigFlags)
* [SetExitKey](#SetExitKey)
* [SetGamepadMappings](#SetGamepadMappings)
* [SetGamepadVibration](#SetGamepadVibration)
* [SetGesturesEnabled](#SetGesturesEnabled)
* [SetLoadFileDataCallback](#SetLoadFileDataCallback)
* [SetLoadFileTextCallback](#SetLoadFileTextCallback)
* [SetMasterVolume](#SetMasterVolume)
* [SetMaterialTexture](#SetMaterialTexture)
* [SetModelMeshMaterial](#SetModelMeshMaterial)
* [SetMouseCursor](#SetMouseCursor)
* [SetMouseOffset](#SetMouseOffset)
* [SetMousePosition](#SetMousePosition)
* [SetMouseScale](#SetMouseScale)
* [SetMusicPan](#SetMusicPan)
* [SetMusicPitch](#SetMusicPitch)
* [SetMusicVolume](#SetMusicVolume)
* [SetPixelColor](#SetPixelColor)
* [SetRandomSeed](#SetRandomSeed)
* [SetSaveFileDataCallback](#SetSaveFileDataCallback)
* [SetSaveFileTextCallback](#SetSaveFileTextCallback)
* [SetShaderValue](#SetShaderValue)
* [SetShaderValueMatrix](#SetShaderValueMatrix)
* [SetShaderValueTexture](#SetShaderValueTexture)
* [SetShaderValueV](#SetShaderValueV)
* [SetShapesTexture](#SetShapesTexture)
* [SetSoundPan](#SetSoundPan)
* [SetSoundPitch](#SetSoundPitch)
* [SetSoundVolume](#SetSoundVolume)
* [SetTargetFPS](#SetTargetFPS)
* [SetTextLineSpacing](#SetTextLineSpacing)
* [SetTextureFilter](#SetTextureFilter)
* [SetTextureWrap](#SetTextureWrap)
* [SetTraceLogCallback](#SetTraceLogCallback)
* [SetTraceLogLevel](#SetTraceLogLevel)
* [SetWindowFocused](#SetWindowFocused)
* [SetWindowIcon](#SetWindowIcon)
* [SetWindowIcons](#SetWindowIcons)
* [SetWindowMaxSize](#SetWindowMaxSize)
* [SetWindowMinSize](#SetWindowMinSize)
* [SetWindowMonitor](#SetWindowMonitor)
* [SetWindowOpacity](#SetWindowOpacity)
* [SetWindowPosition](#SetWindowPosition)
* [SetWindowSize](#SetWindowSize)
* [SetWindowState](#SetWindowState)
* [SetWindowTitle](#SetWindowTitle)
* [ShowCursor](#ShowCursor)
* [StartAutomationEventRecording](#StartAutomationEventRecording)
* [StopAudioStream](#StopAudioStream)
* [StopAutomationEventRecording](#StopAutomationEventRecording)
* [StopMusicStream](#StopMusicStream)
* [StopSound](#StopSound)
* [SwapScreenBuffer](#SwapScreenBuffer)
* [TakeScreenshot](#TakeScreenshot)
* [TextAppend](#TextAppend)
* [TextCopy](#TextCopy)
* [TextFindIndex](#TextFindIndex)
* [TextFormat](#TextFormat)
* [TextFormatAlloc](#TextFormatAlloc)
* [TextInsert](#TextInsert)
* [TextIsEqual](#TextIsEqual)
* [TextJoin](#TextJoin)
* [TextLength](#TextLength)
* [TextReplace](#TextReplace)
* [TextSplit](#TextSplit)
* [TextSubtext](#TextSubtext)
* [TextToCamel](#TextToCamel)
* [TextToFloat](#TextToFloat)
* [TextToInteger](#TextToInteger)
* [TextToLower](#TextToLower)
* [TextToPascal](#TextToPascal)
* [TextToSnake](#TextToSnake)
* [TextToUpper](#TextToUpper)
* [ToggleBorderlessWindowed](#ToggleBorderlessWindowed)
* [ToggleFullscreen](#ToggleFullscreen)
* [TraceLog](#TraceLog)
* [UnloadAudioStream](#UnloadAudioStream)
* [UnloadAutomationEventList](#UnloadAutomationEventList)
* [UnloadCodepoints](#UnloadCodepoints)
* [UnloadDirectoryFiles](#UnloadDirectoryFiles)
* [UnloadDroppedFiles](#UnloadDroppedFiles)
* [UnloadFileData](#UnloadFileData)
* [UnloadFileText](#UnloadFileText)
* [UnloadFont](#UnloadFont)
* [UnloadFontData](#UnloadFontData)
* [UnloadImage](#UnloadImage)
* [UnloadImageColors](#UnloadImageColors)
* [UnloadImagePalette](#UnloadImagePalette)
* [UnloadMaterial](#UnloadMaterial)
* [UnloadMesh](#UnloadMesh)
* [UnloadModel](#UnloadModel)
* [UnloadModelAnimation](#UnloadModelAnimation)
* [UnloadModelAnimations](#UnloadModelAnimations)
* [UnloadMusicStream](#UnloadMusicStream)
* [UnloadRandomSequence](#UnloadRandomSequence)
* [UnloadRenderTexture](#UnloadRenderTexture)
* [UnloadShader](#UnloadShader)
* [UnloadSound](#UnloadSound)
* [UnloadSoundAlias](#UnloadSoundAlias)
* [UnloadTexture](#UnloadTexture)
* [UnloadUTF8](#UnloadUTF8)
* [UnloadVrStereoConfig](#UnloadVrStereoConfig)
* [UnloadWave](#UnloadWave)
* [UnloadWaveSamples](#UnloadWaveSamples)
* [UpdateAudioStream](#UpdateAudioStream)
* [UpdateCamera](#UpdateCamera)
* [UpdateCameraPro](#UpdateCameraPro)
* [UpdateMeshBuffer](#UpdateMeshBuffer)
* [UpdateModelAnimation](#UpdateModelAnimation)
* [UpdateModelAnimationBones](#UpdateModelAnimationBones)
* [UpdateMusicStream](#UpdateMusicStream)
* [UpdateSound](#UpdateSound)
* [UpdateTexture](#UpdateTexture)
* [UpdateTextureRec](#UpdateTextureRec)
* [UploadMesh](#UploadMesh)
* [Vector2Add](#Vector2Add)
* [Vector2AddValue](#Vector2AddValue)
* [Vector2Angle](#Vector2Angle)
* [Vector2Clamp](#Vector2Clamp)
* [Vector2ClampValue](#Vector2ClampValue)
* [Vector2Distance](#Vector2Distance)
* [Vector2DistanceSqrt](#Vector2DistanceSqrt)
* [Vector2Divide](#Vector2Divide)
* [Vector2DotProduct](#Vector2DotProduct)
* [Vector2Equals](#Vector2Equals)
* [Vector2Invert](#Vector2Invert)
* [Vector2Length](#Vector2Length)
* [Vector2LengthSqr](#Vector2LengthSqr)
* [Vector2Lerp](#Vector2Lerp)
* [Vector2LineAngle](#Vector2LineAngle)
* [Vector2MoveTowards](#Vector2MoveTowards)
* [Vector2Multiply](#Vector2Multiply)
* [Vector2Negate](#Vector2Negate)
* [Vector2Normalize](#Vector2Normalize)
* [Vector2One](#Vector2One)
* [Vector2Reflect](#Vector2Reflect)
* [Vector2Rotate](#Vector2Rotate)
* [Vector2Scale](#Vector2Scale)
* [Vector2Subtract](#Vector2Subtract)
* [Vector2SubtractValue](#Vector2SubtractValue)
* [Vector2Transform](#Vector2Transform)
* [Vector2Zero](#Vector2Zero)
* [Vector3Add](#Vector3Add)
* [Vector3AddValue](#Vector3AddValue)
* [Vector3Angle](#Vector3Angle)
* [Vector3Barycenter](#Vector3Barycenter)
* [Vector3Clamp](#Vector3Clamp)
* [Vector3ClampValue](#Vector3ClampValue)
* [Vector3CrossProduct](#Vector3CrossProduct)
* [Vector3Distance](#Vector3Distance)
* [Vector3DistanceSqrt](#Vector3DistanceSqrt)
* [Vector3Divide](#Vector3Divide)
* [Vector3DotProduct](#Vector3DotProduct)
* [Vector3Equals](#Vector3Equals)
* [Vector3Invert](#Vector3Invert)
* [Vector3Length](#Vector3Length)
* [Vector3LengthSqr](#Vector3LengthSqr)
* [Vector3Lerp](#Vector3Lerp)
* [Vector3LineAngle](#Vector3LineAngle)
* [Vector3Max](#Vector3Max)
* [Vector3Min](#Vector3Min)
* [Vector3MoveTowards](#Vector3MoveTowards)
* [Vector3Multiply](#Vector3Multiply)
* [Vector3Negate](#Vector3Negate)
* [Vector3Normalize](#Vector3Normalize)
* [Vector3One](#Vector3One)
* [Vector3OrthoNormalize](#Vector3OrthoNormalize)
* [Vector3Project](#Vector3Project)
* [Vector3Reflect](#Vector3Reflect)
* [Vector3Refract](#Vector3Refract)
* [Vector3Reject](#Vector3Reject)
* [Vector3RotateByAxisAngle](#Vector3RotateByAxisAngle)
* [Vector3RotateByQuaternion](#Vector3RotateByQuaternion)
* [Vector3Scale](#Vector3Scale)
* [Vector3Subtract](#Vector3Subtract)
* [Vector3SubtractValue](#Vector3SubtractValue)
* [Vector3Transform](#Vector3Transform)
* [Vector3Unproject](#Vector3Unproject)
* [Vector3Zero](#Vector3Zero)
* [WaitTime](#WaitTime)
* [WaveCopy](#WaveCopy)
* [WaveCrop](#WaveCrop)
* [WaveFormat](#WaveFormat)
* [WindowShouldClose](#WindowShouldClose)
* [Wrap](#Wrap)

Procedure Groups (1)

* [MemFree](#MemFree)

`#config` values (7)

* [MAX\_MATERIAL\_MAPS](#MAX_MATERIAL_MAPS)
* [MAX\_TEXTFORMAT\_BUFFERS](#MAX_TEXTFORMAT_BUFFERS)
* [MAX\_TEXT\_BUFFER\_LENGTH](#MAX_TEXT_BUFFER_LENGTH)
* [RAYGUI\_SHARED](#RAYGUI_SHARED)
* [RAYGUI\_WASM\_LIB](#RAYGUI_WASM_LIB)
* [RAYLIB\_SHARED](#RAYLIB_SHARED)
* [RAYLIB\_WASM\_LIB](#RAYLIB_WASM_LIB)

## Types

### [AudioCallback ¶](#AudioCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L892)

```
AudioCallback :: proc "c" (bufferData: rawptr, frames: u32)
```

##### Related Procedures With Parameters

* [AttachAudioMixedProcessor](/vendor/raylib/#AttachAudioMixedProcessor)
* [AttachAudioStreamProcessor](/vendor/raylib/#AttachAudioStreamProcessor)
* [DetachAudioMixedProcessor](/vendor/raylib/#DetachAudioMixedProcessor)
* [DetachAudioStreamProcessor](/vendor/raylib/#DetachAudioStreamProcessor)
* [SetAudioStreamCallback](/vendor/raylib/#SetAudioStreamCallback)

### [AudioStream ¶](#AudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L405)

```
AudioStream :: struct {
	buffer:     rawptr,
	// Pointer to internal data used by the audio system
	processor:  rawptr,
	// Pointer to internal data processor, useful for audio effects
	sampleRate: u32,
	// Frequency (samples per second)
	sampleSize: u32,
	// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	channels:   u32,
}
```

 

Audio stream type
NOTE: Actual structs are defined internally in raudio module




##### Related Procedures With Parameters

* [AttachAudioStreamProcessor](/vendor/raylib/#AttachAudioStreamProcessor)
* [DetachAudioStreamProcessor](/vendor/raylib/#DetachAudioStreamProcessor)
* [IsAudioStreamPlaying](/vendor/raylib/#IsAudioStreamPlaying)
* [IsAudioStreamProcessed](/vendor/raylib/#IsAudioStreamProcessed)
* [IsAudioStreamValid](/vendor/raylib/#IsAudioStreamValid)
* [PauseAudioStream](/vendor/raylib/#PauseAudioStream)
* [PlayAudioStream](/vendor/raylib/#PlayAudioStream)
* [ResumeAudioStream](/vendor/raylib/#ResumeAudioStream)
* [SetAudioStreamCallback](/vendor/raylib/#SetAudioStreamCallback)
* [SetAudioStreamPan](/vendor/raylib/#SetAudioStreamPan)
* [SetAudioStreamPitch](/vendor/raylib/#SetAudioStreamPitch)
* [SetAudioStreamVolume](/vendor/raylib/#SetAudioStreamVolume)
* [StopAudioStream](/vendor/raylib/#StopAudioStream)
* [UnloadAudioStream](/vendor/raylib/#UnloadAudioStream)
* [UpdateAudioStream](/vendor/raylib/#UpdateAudioStream)



##### Related Procedures With Returns

* [LoadAudioStream](/vendor/raylib/#LoadAudioStream)

### [AutomationEvent ¶](#AutomationEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L464)

```
AutomationEvent :: struct {
	frame:  u32,
	// Event frame
	type:   u32,
	// Event type (AutomationEventType)
	params: [4]i32,
}
```

 

Automation event




##### Related Procedures With Parameters

* [PlayAutomationEvent](/vendor/raylib/#PlayAutomationEvent)

### [AutomationEventList ¶](#AutomationEventList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L471)

```
AutomationEventList :: struct {
	capacity: u32,
	// Events max entries (MAX_AUTOMATION_EVENTS)
	count:    u32,
	// Events entries count
	events:   [^]AutomationEvent,
}
```

 

Automation event list




##### Related Procedures With Parameters

* [ExportAutomationEventList](/vendor/raylib/#ExportAutomationEventList)
* [SetAutomationEventList](/vendor/raylib/#SetAutomationEventList)
* [UnloadAutomationEventList](/vendor/raylib/#UnloadAutomationEventList)



##### Related Procedures With Returns

* [LoadAutomationEventList](/vendor/raylib/#LoadAutomationEventList)

### [BlendMode ¶](#BlendMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L824)

```
BlendMode :: enum i32 {
	ALPHA             = 0, // Blend textures considering alpha (default)
	ADDITIVE,              // Blend textures adding colors
	MULTIPLIED,            // Blend textures multiplying colors
	ADD_COLORS,            // Blend textures adding colors (alternative)
	SUBTRACT_COLORS,       // Blend textures subtracting colors (alternative)
	ALPHA_PREMULTIPLY,     // Blend premultiplied textures considering alpha
	CUSTOM,                // Blend textures using custom src/dst factors (use rlSetBlendFactors())
	CUSTOM_SEPARATE,       // Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
}
```

 

Color blending modes (pre-defined)




##### Related Procedures With Parameters

* [BeginBlendMode](/vendor/raylib/#BeginBlendMode)

### [BoneInfo ¶](#BoneInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L344)

```
BoneInfo :: struct {
	name:   [32]u8 `fmt:"s,0"`,
	// Bone name
	parent: i32,
}
```

 

Bone information

### [BoundingBox ¶](#BoundingBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L389)

```
BoundingBox :: struct {
	min: [3]f32,
	// Minimum vertex box-corner
	max: [3]f32,
}
```

 

Bounding box type




##### Related Procedures With Parameters

* [CheckCollisionBoxSphere](/vendor/raylib/#CheckCollisionBoxSphere)
* [CheckCollisionBoxes](/vendor/raylib/#CheckCollisionBoxes)
* [DrawBoundingBox](/vendor/raylib/#DrawBoundingBox)
* [GetRayCollisionBox](/vendor/raylib/#GetRayCollisionBox)



##### Related Procedures With Returns

* [GetMeshBoundingBox](/vendor/raylib/#GetMeshBoundingBox)
* [GetModelBoundingBox](/vendor/raylib/#GetModelBoundingBox)

### [Camera ¶](#Camera) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L278)

```
Camera :: Camera3D
```

 

Camera type fallback, defaults to Camera3D




##### Related Procedures With Parameters

* [BeginMode3D](/vendor/raylib/#BeginMode3D)
* [CameraMoveForward](/vendor/raylib/#CameraMoveForward)
* [CameraMoveRight](/vendor/raylib/#CameraMoveRight)
* [CameraMoveToTarget](/vendor/raylib/#CameraMoveToTarget)
* [CameraMoveUp](/vendor/raylib/#CameraMoveUp)
* [CameraPitch](/vendor/raylib/#CameraPitch)
* [CameraRoll](/vendor/raylib/#CameraRoll)
* [CameraYaw](/vendor/raylib/#CameraYaw)
* [DrawBillboard](/vendor/raylib/#DrawBillboard)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [GetCameraForward](/vendor/raylib/#GetCameraForward)
* [GetCameraMatrix](/vendor/raylib/#GetCameraMatrix)
* [GetCameraProjectionMatrix](/vendor/raylib/#GetCameraProjectionMatrix)
* [GetCameraRight](/vendor/raylib/#GetCameraRight)
* [GetCameraUp](/vendor/raylib/#GetCameraUp)
* [GetCameraViewMatrix](/vendor/raylib/#GetCameraViewMatrix)
* [GetScreenToWorldRay](/vendor/raylib/#GetScreenToWorldRay)
* [GetScreenToWorldRayEx](/vendor/raylib/#GetScreenToWorldRayEx)
* [GetWorldToScreen](/vendor/raylib/#GetWorldToScreen)
* [GetWorldToScreenEx](/vendor/raylib/#GetWorldToScreenEx)
* [UpdateCamera](/vendor/raylib/#UpdateCamera)
* [UpdateCameraPro](/vendor/raylib/#UpdateCameraPro)

### [Camera2D ¶](#Camera2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L281)

```
Camera2D :: struct {
	offset:   [2]f32,
	// Camera offset (displacement from target)
	target:   [2]f32,
	// Camera target (rotation and zoom origin)
	rotation: f32,
	// Camera rotation in degrees
	zoom:     f32,
}
```

 

Camera2D type, defines a 2d camera




##### Related Procedures With Parameters

* [BeginMode2D](/vendor/raylib/#BeginMode2D)
* [GetCameraMatrix2D](/vendor/raylib/#GetCameraMatrix2D)
* [GetScreenToWorld2D](/vendor/raylib/#GetScreenToWorld2D)
* [GetWorldToScreen2D](/vendor/raylib/#GetWorldToScreen2D)

### [Camera3D ¶](#Camera3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L270)

```
Camera3D :: struct {
	position:   [3]f32,
	// Camera position
	target:     [3]f32,
	// Camera target it looks-at
	up:         [3]f32,
	// Camera up vector (rotation over its axis)
	fovy:       f32,
	// Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
	projection: CameraProjection,
}
```

 

Camera type, defines a camera position/orientation in 3d space




##### Related Procedures With Parameters

* [BeginMode3D](/vendor/raylib/#BeginMode3D)
* [CameraMoveForward](/vendor/raylib/#CameraMoveForward)
* [CameraMoveRight](/vendor/raylib/#CameraMoveRight)
* [CameraMoveToTarget](/vendor/raylib/#CameraMoveToTarget)
* [CameraMoveUp](/vendor/raylib/#CameraMoveUp)
* [CameraPitch](/vendor/raylib/#CameraPitch)
* [CameraRoll](/vendor/raylib/#CameraRoll)
* [CameraYaw](/vendor/raylib/#CameraYaw)
* [DrawBillboard](/vendor/raylib/#DrawBillboard)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [GetCameraForward](/vendor/raylib/#GetCameraForward)
* [GetCameraMatrix](/vendor/raylib/#GetCameraMatrix)
* [GetCameraProjectionMatrix](/vendor/raylib/#GetCameraProjectionMatrix)
* [GetCameraRight](/vendor/raylib/#GetCameraRight)
* [GetCameraUp](/vendor/raylib/#GetCameraUp)
* [GetCameraViewMatrix](/vendor/raylib/#GetCameraViewMatrix)
* [GetScreenToWorldRay](/vendor/raylib/#GetScreenToWorldRay)
* [GetScreenToWorldRayEx](/vendor/raylib/#GetScreenToWorldRayEx)
* [GetWorldToScreen](/vendor/raylib/#GetWorldToScreen)
* [GetWorldToScreenEx](/vendor/raylib/#GetWorldToScreenEx)
* [UpdateCamera](/vendor/raylib/#UpdateCamera)
* [UpdateCameraPro](/vendor/raylib/#UpdateCameraPro)

### [CameraMode ¶](#CameraMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L863)

```
CameraMode :: enum i32 {
	CUSTOM       = 0, // Camera custom, controlled by user (UpdateCamera() does nothing)
	FREE,             // Camera free mode
	ORBITAL,          // Camera orbital, around target, zoom supported
	FIRST_PERSON,     // Camera first person
	THIRD_PERSON,     // Camera third person
}
```

 

Camera system modes




##### Related Procedures With Parameters

* [UpdateCamera](/vendor/raylib/#UpdateCamera)

### [CameraProjection ¶](#CameraProjection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L872)

```
CameraProjection :: enum i32 {
	PERSPECTIVE  = 0, // Perspective projection
	ORTHOGRAPHIC,     // Orthographic projection
}
```

 

Camera projection

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L194)

```
Color :: distinct [4]u8
```

 

Color, 4 components, R8G8B8A8 (32bit)

Note: In Raylib this is a struct. But here we use a fixed array, so that .rgba swizzling etc work.




##### Related Procedures With Parameters

* [ClearBackground](/vendor/raylib/#ClearBackground)
* [ColorAlpha](/vendor/raylib/#ColorAlpha)
* [ColorAlphaBlend](/vendor/raylib/#ColorAlphaBlend)
* [ColorBrightness](/vendor/raylib/#ColorBrightness)
* [ColorContrast](/vendor/raylib/#ColorContrast)
* [ColorIsEqual](/vendor/raylib/#ColorIsEqual)
* [ColorLerp](/vendor/raylib/#ColorLerp)
* [ColorNormalize](/vendor/raylib/#ColorNormalize)
* [ColorTint](/vendor/raylib/#ColorTint)
* [ColorToHSV](/vendor/raylib/#ColorToHSV)
* [ColorToInt](/vendor/raylib/#ColorToInt)
* [DrawBillboard](/vendor/raylib/#DrawBillboard)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [DrawBoundingBox](/vendor/raylib/#DrawBoundingBox)
* [DrawCapsule](/vendor/raylib/#DrawCapsule)
* [DrawCapsuleWires](/vendor/raylib/#DrawCapsuleWires)
* [DrawCircle](/vendor/raylib/#DrawCircle)
* [DrawCircle3D](/vendor/raylib/#DrawCircle3D)
* [DrawCircleGradient](/vendor/raylib/#DrawCircleGradient)
* [DrawCircleLines](/vendor/raylib/#DrawCircleLines)
* [DrawCircleLinesV](/vendor/raylib/#DrawCircleLinesV)
* [DrawCircleSector](/vendor/raylib/#DrawCircleSector)
* [DrawCircleSectorLines](/vendor/raylib/#DrawCircleSectorLines)
* [DrawCircleV](/vendor/raylib/#DrawCircleV)
* [DrawCube](/vendor/raylib/#DrawCube)
* [DrawCubeV](/vendor/raylib/#DrawCubeV)
* [DrawCubeWires](/vendor/raylib/#DrawCubeWires)
* [DrawCubeWiresV](/vendor/raylib/#DrawCubeWiresV)
* [DrawCylinder](/vendor/raylib/#DrawCylinder)
* [DrawCylinderEx](/vendor/raylib/#DrawCylinderEx)
* [DrawCylinderWires](/vendor/raylib/#DrawCylinderWires)
* [DrawCylinderWiresEx](/vendor/raylib/#DrawCylinderWiresEx)
* [DrawEllipse](/vendor/raylib/#DrawEllipse)
* [DrawEllipseLines](/vendor/raylib/#DrawEllipseLines)
* [DrawLine](/vendor/raylib/#DrawLine)
* [DrawLine3D](/vendor/raylib/#DrawLine3D)
* [DrawLineBezier](/vendor/raylib/#DrawLineBezier)
* [DrawLineEx](/vendor/raylib/#DrawLineEx)
* [DrawLineStrip](/vendor/raylib/#DrawLineStrip)
* [DrawLineV](/vendor/raylib/#DrawLineV)
* [DrawModel](/vendor/raylib/#DrawModel)
* [DrawModelEx](/vendor/raylib/#DrawModelEx)
* [DrawModelPoints](/vendor/raylib/#DrawModelPoints)
* [DrawModelPointsEx](/vendor/raylib/#DrawModelPointsEx)
* [DrawModelWires](/vendor/raylib/#DrawModelWires)
* [DrawModelWiresEx](/vendor/raylib/#DrawModelWiresEx)
* [DrawPixel](/vendor/raylib/#DrawPixel)
* [DrawPixelV](/vendor/raylib/#DrawPixelV)
* [DrawPlane](/vendor/raylib/#DrawPlane)
* [DrawPoint3D](/vendor/raylib/#DrawPoint3D)
* [DrawPoly](/vendor/raylib/#DrawPoly)
* [DrawPolyLines](/vendor/raylib/#DrawPolyLines)
* [DrawPolyLinesEx](/vendor/raylib/#DrawPolyLinesEx)
* [DrawRay](/vendor/raylib/#DrawRay)
* [DrawRectangle](/vendor/raylib/#DrawRectangle)
* [DrawRectangleGradientEx](/vendor/raylib/#DrawRectangleGradientEx)
* [DrawRectangleGradientH](/vendor/raylib/#DrawRectangleGradientH)
* [DrawRectangleGradientV](/vendor/raylib/#DrawRectangleGradientV)
* [DrawRectangleLines](/vendor/raylib/#DrawRectangleLines)
* [DrawRectangleLinesEx](/vendor/raylib/#DrawRectangleLinesEx)
* [DrawRectanglePro](/vendor/raylib/#DrawRectanglePro)
* [DrawRectangleRec](/vendor/raylib/#DrawRectangleRec)
* [DrawRectangleRounded](/vendor/raylib/#DrawRectangleRounded)
* [DrawRectangleRoundedLines](/vendor/raylib/#DrawRectangleRoundedLines)
* [DrawRectangleRoundedLinesEx](/vendor/raylib/#DrawRectangleRoundedLinesEx)
* [DrawRectangleV](/vendor/raylib/#DrawRectangleV)
* [DrawRing](/vendor/raylib/#DrawRing)
* [DrawRingLines](/vendor/raylib/#DrawRingLines)
* [DrawSphere](/vendor/raylib/#DrawSphere)
* [DrawSphereEx](/vendor/raylib/#DrawSphereEx)
* [DrawSphereWires](/vendor/raylib/#DrawSphereWires)
* [DrawSplineBasis](/vendor/raylib/#DrawSplineBasis)
* [DrawSplineBezierCubic](/vendor/raylib/#DrawSplineBezierCubic)
* [DrawSplineBezierQuadratic](/vendor/raylib/#DrawSplineBezierQuadratic)
* [DrawSplineCatmullRom](/vendor/raylib/#DrawSplineCatmullRom)
* [DrawSplineLinear](/vendor/raylib/#DrawSplineLinear)
* [DrawSplineSegmentBasis](/vendor/raylib/#DrawSplineSegmentBasis)
* [DrawSplineSegmentBezierCubic](/vendor/raylib/#DrawSplineSegmentBezierCubic)
* [DrawSplineSegmentBezierQuadratic](/vendor/raylib/#DrawSplineSegmentBezierQuadratic)
* [DrawSplineSegmentCatmullRom](/vendor/raylib/#DrawSplineSegmentCatmullRom)
* [DrawSplineSegmentLinear](/vendor/raylib/#DrawSplineSegmentLinear)
* [DrawText](/vendor/raylib/#DrawText)
* [DrawTextCodepoint](/vendor/raylib/#DrawTextCodepoint)
* [DrawTextCodepoints](/vendor/raylib/#DrawTextCodepoints)
* [DrawTextEx](/vendor/raylib/#DrawTextEx)
* [DrawTextPro](/vendor/raylib/#DrawTextPro)
* [DrawTexture](/vendor/raylib/#DrawTexture)
* [DrawTextureEx](/vendor/raylib/#DrawTextureEx)
* [DrawTextureNPatch](/vendor/raylib/#DrawTextureNPatch)
* [DrawTexturePro](/vendor/raylib/#DrawTexturePro)
* [DrawTextureRec](/vendor/raylib/#DrawTextureRec)
* [DrawTextureV](/vendor/raylib/#DrawTextureV)
* [DrawTriangle](/vendor/raylib/#DrawTriangle)
* [DrawTriangle3D](/vendor/raylib/#DrawTriangle3D)
* [DrawTriangleFan](/vendor/raylib/#DrawTriangleFan)
* [DrawTriangleLines](/vendor/raylib/#DrawTriangleLines)
* [DrawTriangleStrip](/vendor/raylib/#DrawTriangleStrip)
* [DrawTriangleStrip3D](/vendor/raylib/#DrawTriangleStrip3D)
* [Fade](/vendor/raylib/#Fade)
* [GenImageChecked](/vendor/raylib/#GenImageChecked)
* [GenImageColor](/vendor/raylib/#GenImageColor)
* [GenImageGradientLinear](/vendor/raylib/#GenImageGradientLinear)
* [GenImageGradientRadial](/vendor/raylib/#GenImageGradientRadial)
* [GenImageGradientSquare](/vendor/raylib/#GenImageGradientSquare)
* [GuiColorPanel](/vendor/raylib/#GuiColorPanel)
* [GuiColorPicker](/vendor/raylib/#GuiColorPicker)
* [GuiDrawIcon](/vendor/raylib/#GuiDrawIcon)
* [ImageAlphaClear](/vendor/raylib/#ImageAlphaClear)
* [ImageClearBackground](/vendor/raylib/#ImageClearBackground)
* [ImageColorReplace](/vendor/raylib/#ImageColorReplace)
* [ImageColorTint](/vendor/raylib/#ImageColorTint)
* [ImageDraw](/vendor/raylib/#ImageDraw)
* [ImageDrawCircle](/vendor/raylib/#ImageDrawCircle)
* [ImageDrawCircleLines](/vendor/raylib/#ImageDrawCircleLines)
* [ImageDrawCircleLinesV](/vendor/raylib/#ImageDrawCircleLinesV)
* [ImageDrawCircleV](/vendor/raylib/#ImageDrawCircleV)
* [ImageDrawLine](/vendor/raylib/#ImageDrawLine)
* [ImageDrawLineEx](/vendor/raylib/#ImageDrawLineEx)
* [ImageDrawLineV](/vendor/raylib/#ImageDrawLineV)
* [ImageDrawPixel](/vendor/raylib/#ImageDrawPixel)
* [ImageDrawPixelV](/vendor/raylib/#ImageDrawPixelV)
* [ImageDrawRectangle](/vendor/raylib/#ImageDrawRectangle)
* [ImageDrawRectangleLines](/vendor/raylib/#ImageDrawRectangleLines)
* [ImageDrawRectangleRec](/vendor/raylib/#ImageDrawRectangleRec)
* [ImageDrawRectangleV](/vendor/raylib/#ImageDrawRectangleV)
* [ImageDrawText](/vendor/raylib/#ImageDrawText)
* [ImageDrawTextEx](/vendor/raylib/#ImageDrawTextEx)
* [ImageDrawTriangle](/vendor/raylib/#ImageDrawTriangle)
* [ImageDrawTriangleEx](/vendor/raylib/#ImageDrawTriangleEx)
* [ImageDrawTriangleFan](/vendor/raylib/#ImageDrawTriangleFan)
* [ImageDrawTriangleLines](/vendor/raylib/#ImageDrawTriangleLines)
* [ImageDrawTriangleStrip](/vendor/raylib/#ImageDrawTriangleStrip)
* [ImageResizeCanvas](/vendor/raylib/#ImageResizeCanvas)
* [ImageText](/vendor/raylib/#ImageText)
* [ImageTextEx](/vendor/raylib/#ImageTextEx)
* [ImageToPOT](/vendor/raylib/#ImageToPOT)
* [LoadFontFromImage](/vendor/raylib/#LoadFontFromImage)
* [SetPixelColor](/vendor/raylib/#SetPixelColor)
* [UnloadImageColors](/vendor/raylib/#UnloadImageColors)
* [UnloadImagePalette](/vendor/raylib/#UnloadImagePalette)



##### Related Procedures With Returns

* [ColorFromHSV](/vendor/raylib/#ColorFromHSV)
* [ColorFromNormalized](/vendor/raylib/#ColorFromNormalized)
* [GetColor](/vendor/raylib/#GetColor)
* [GetImageColor](/vendor/raylib/#GetImageColor)
* [GetPixelColor](/vendor/raylib/#GetPixelColor)
* [LoadImageColors](/vendor/raylib/#LoadImageColors)
* [LoadImagePalette](/vendor/raylib/#LoadImagePalette)

##### Related Constants

* [BEIGE](/vendor/raylib/#BEIGE)
* [BLACK](/vendor/raylib/#BLACK)
* [BLANK](/vendor/raylib/#BLANK)
* [BLUE](/vendor/raylib/#BLUE)
* [BROWN](/vendor/raylib/#BROWN)
* [DARKBLUE](/vendor/raylib/#DARKBLUE)
* [DARKBROWN](/vendor/raylib/#DARKBROWN)
* [DARKGRAY](/vendor/raylib/#DARKGRAY)
* [DARKGREEN](/vendor/raylib/#DARKGREEN)
* [DARKPURPLE](/vendor/raylib/#DARKPURPLE)
* [GOLD](/vendor/raylib/#GOLD)
* [GRAY](/vendor/raylib/#GRAY)
* [GREEN](/vendor/raylib/#GREEN)
* [LIGHTGRAY](/vendor/raylib/#LIGHTGRAY)
* [LIME](/vendor/raylib/#LIME)
* [MAGENTA](/vendor/raylib/#MAGENTA)
* [MAROON](/vendor/raylib/#MAROON)
* [ORANGE](/vendor/raylib/#ORANGE)
* [PINK](/vendor/raylib/#PINK)
* [PURPLE](/vendor/raylib/#PURPLE)
* [RAYWHITE](/vendor/raylib/#RAYWHITE)
* [RED](/vendor/raylib/#RED)
* [SKYBLUE](/vendor/raylib/#SKYBLUE)
* [VIOLET](/vendor/raylib/#VIOLET)
* [WHITE](/vendor/raylib/#WHITE)
* [YELLOW](/vendor/raylib/#YELLOW)

### [ConfigFlag ¶](#ConfigFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L483)

```
ConfigFlag :: enum i32 {
	VSYNC_HINT               = 6,  // Set to try enabling V-Sync on GPU
	FULLSCREEN_MODE          = 1,  // Set to run program in fullscreen
	WINDOW_RESIZABLE         = 2,  // Set to allow resizable window
	WINDOW_UNDECORATED       = 3,  // Set to disable window decoration (frame and buttons)
	WINDOW_HIDDEN            = 7,  // Set to hide window
	WINDOW_MINIMIZED         = 9,  // Set to minimize window (iconify)
	WINDOW_MAXIMIZED         = 10, // Set to maximize window (expanded to monitor)
	WINDOW_UNFOCUSED         = 11, // Set to window non focused
	WINDOW_TOPMOST           = 12, // Set to window always on top
	WINDOW_ALWAYS_RUN        = 8,  // Set to allow windows running while minimized
	WINDOW_TRANSPARENT       = 4,  // Set to allow transparent framebuffer
	WINDOW_HIGHDPI           = 13, // Set to support HighDPI
	WINDOW_MOUSE_PASSTHROUGH = 14, // Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
	BORDERLESS_WINDOWED_MODE = 15, // Set to run program in borderless windowed mode
	MSAA_4X_HINT             = 5,  // Set to try enabling MSAA 4X
	INTERLACED_HINT          = 16, // Set to try enabling interlaced video format (for V3D)
}
```

 

----------------------------------------------------------------------------------
Enumerators Definition
----------------------------------------------------------------------------------
System/Window config flags
NOTE: Every bit registers one state (use it with bit masks)
By default all flags are set to 0

### [ConfigFlags ¶](#ConfigFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L501)

```
ConfigFlags :: distinct bit_set[ConfigFlag; i32]
```

##### Related Procedures With Parameters

* [ClearWindowState](/vendor/raylib/#ClearWindowState)
* [IsWindowState](/vendor/raylib/#IsWindowState)
* [SetConfigFlags](/vendor/raylib/#SetConfigFlags)
* [SetWindowState](/vendor/raylib/#SetWindowState)

### [CubemapLayout ¶](#CubemapLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L808)

```
CubemapLayout :: enum i32 {
	AUTO_DETECT         = 0, // Automatically detect layout type
	LINE_VERTICAL,           // Layout is defined by a vertical line with faces
	LINE_HORIZONTAL,         // Layout is defined by an horizontal line with faces
	CROSS_THREE_BY_FOUR,     // Layout is defined by a 3x4 cross with cubemap faces
	CROSS_FOUR_BY_THREE,     // Layout is defined by a 4x3 cross with cubemap faces
}
```

 

Cubemap layouts




##### Related Procedures With Parameters

* [LoadTextureCubemap](/vendor/raylib/#LoadTextureCubemap)

### [FilePathList ¶](#FilePathList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L457)

```
FilePathList :: struct {
	capacity: u32,
	// Filepaths max entries
	count:    u32,
	// Filepaths entries count
	paths:    [^]cstring,
}
```

 

File path list




##### Related Procedures With Parameters

* [UnloadDirectoryFiles](/vendor/raylib/#UnloadDirectoryFiles)
* [UnloadDroppedFiles](/vendor/raylib/#UnloadDroppedFiles)



##### Related Procedures With Returns

* [LoadDirectoryFiles](/vendor/raylib/#LoadDirectoryFiles)
* [LoadDirectoryFilesEx](/vendor/raylib/#LoadDirectoryFilesEx)
* [LoadDroppedFiles](/vendor/raylib/#LoadDroppedFiles)

### [Font ¶](#Font) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L260)

```
Font :: struct {
	baseSize:     i32,
	// Base size (default chars height)
	glyphCount:   i32,
	// Number of characters
	glyphPadding: i32,
	// Padding around the chars
	texture:      Texture,
	// Characters texture atlas
	recs:         [^]Rectangle,
	// Characters rectangles in texture
	glyphs:       [^]GlyphInfo,
}
```

 

Font type, includes texture and charSet array data




##### Related Procedures With Parameters

* [DrawTextCodepoint](/vendor/raylib/#DrawTextCodepoint)
* [DrawTextCodepoints](/vendor/raylib/#DrawTextCodepoints)
* [DrawTextEx](/vendor/raylib/#DrawTextEx)
* [DrawTextPro](/vendor/raylib/#DrawTextPro)
* [ExportFontAsCode](/vendor/raylib/#ExportFontAsCode)
* [GetGlyphAtlasRec](/vendor/raylib/#GetGlyphAtlasRec)
* [GetGlyphIndex](/vendor/raylib/#GetGlyphIndex)
* [GetGlyphInfo](/vendor/raylib/#GetGlyphInfo)
* [GuiSetFont](/vendor/raylib/#GuiSetFont)
* [ImageDrawTextEx](/vendor/raylib/#ImageDrawTextEx)
* [ImageTextEx](/vendor/raylib/#ImageTextEx)
* [IsFontValid](/vendor/raylib/#IsFontValid)
* [MeasureTextEx](/vendor/raylib/#MeasureTextEx)
* [UnloadFont](/vendor/raylib/#UnloadFont)



##### Related Procedures With Returns

* [GetFontDefault](/vendor/raylib/#GetFontDefault)
* [GuiGetFont](/vendor/raylib/#GuiGetFont)
* [LoadFont](/vendor/raylib/#LoadFont)
* [LoadFontEx](/vendor/raylib/#LoadFontEx)
* [LoadFontFromImage](/vendor/raylib/#LoadFontFromImage)
* [LoadFontFromMemory](/vendor/raylib/#LoadFontFromMemory)

### [FontType ¶](#FontType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L817)

```
FontType :: enum i32 {
	DEFAULT = 0, // Default font generation, anti-aliased
	BITMAP,      // Bitmap font generation, no anti-aliasing
	SDF,         // SDF font generation, requires external shader
}
```

 

Font type, defines generation method




##### Related Procedures With Parameters

* [LoadFontData](/vendor/raylib/#LoadFontData)

### [GamepadAxis ¶](#GamepadAxis) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L685)

```
GamepadAxis :: enum i32 {
	LEFT_X        = 0, // Gamepad left stick X axis
	LEFT_Y        = 1, // Gamepad left stick Y axis
	RIGHT_X       = 2, // Gamepad right stick X axis
	RIGHT_Y       = 3, // Gamepad right stick Y axis
	LEFT_TRIGGER  = 4, // Gamepad back trigger left, pressure level: [1..-1]
	RIGHT_TRIGGER = 5, // Gamepad back trigger right, pressure level: [1..-1]
}
```

 

Gamepad axis




##### Related Procedures With Parameters

* [GetGamepadAxisMovement](/vendor/raylib/#GetGamepadAxisMovement)

### [GamepadButton ¶](#GamepadButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L663)

```
GamepadButton :: enum i32 {
	UNKNOWN          = 0, // Unknown button, just for error checking
	LEFT_FACE_UP,         // Gamepad left DPAD up button
	LEFT_FACE_RIGHT,      // Gamepad left DPAD right button
	LEFT_FACE_DOWN,       // Gamepad left DPAD down button
	LEFT_FACE_LEFT,       // Gamepad left DPAD left button
	RIGHT_FACE_UP,        // Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
	RIGHT_FACE_RIGHT,     // Gamepad right button right (i.e. PS3: Circle, Xbox: B)
	RIGHT_FACE_DOWN,      // Gamepad right button down (i.e. PS3: Cross, Xbox: A)
	RIGHT_FACE_LEFT,      // Gamepad right button left (i.e. PS3: Square, Xbox: X)
	LEFT_TRIGGER_1,       // Gamepad top/back trigger left (first), it could be a trailing button
	LEFT_TRIGGER_2,       // Gamepad top/back trigger left (second), it could be a trailing button
	RIGHT_TRIGGER_1,      // Gamepad top/back trigger right (first), it could be a trailing button
	RIGHT_TRIGGER_2,      // Gamepad top/back trigger right (second), it could be a trailing button
	MIDDLE_LEFT,          // Gamepad center buttons, left one (i.e. PS3: Select)
	MIDDLE,               // Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
	MIDDLE_RIGHT,         // Gamepad center buttons, right one (i.e. PS3: Start)
	LEFT_THUMB,           // Gamepad joystick pressed button left
	RIGHT_THUMB,          // Gamepad joystick pressed button right
}
```

 

Gamepad buttons




##### Related Procedures With Parameters

* [IsGamepadButtonDown](/vendor/raylib/#IsGamepadButtonDown)
* [IsGamepadButtonPressed](/vendor/raylib/#IsGamepadButtonPressed)
* [IsGamepadButtonReleased](/vendor/raylib/#IsGamepadButtonReleased)
* [IsGamepadButtonUp](/vendor/raylib/#IsGamepadButtonUp)



##### Related Procedures With Returns

* [GetGamepadButtonPressed](/vendor/raylib/#GetGamepadButtonPressed)

### [Gesture ¶](#Gesture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L837)

```
Gesture :: enum u32 {
	TAP         = 0, // Tap gesture
	DOUBLETAP   = 1, // Double tap gesture
	HOLD        = 2, // Hold gesture
	DRAG        = 3, // Drag gesture
	SWIPE_RIGHT = 4, // Swipe right gesture
	SWIPE_LEFT  = 5, // Swipe left gesture
	SWIPE_UP    = 6, // Swipe up gesture
	SWIPE_DOWN  = 7, // Swipe down gesture
	PINCH_IN    = 8, // Pinch in gesture
	PINCH_OUT   = 9, // Pinch out gesture
}
```

 

Gestures
NOTE: It could be used as flags to enable only some gestures




##### Related Procedures With Parameters

* [IsGestureDetected](/vendor/raylib/#IsGestureDetected)

### [Gestures ¶](#Gestures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L849)

```
Gestures :: distinct bit_set[Gesture; u32]
```

##### Related Procedures With Parameters

* [SetGesturesEnabled](/vendor/raylib/#SetGesturesEnabled)



##### Related Procedures With Returns

* [GetGestureDetected](/vendor/raylib/#GetGestureDetected)

### [GlyphInfo ¶](#GlyphInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L251)

```
GlyphInfo :: struct {
	value:    rune,
	// Character value (Unicode)
	offsetX:  i32,
	// Character offset X when drawing
	offsetY:  i32,
	// Character offset Y when drawing
	advanceX: i32,
	// Character advance position X
	image:    Image,
}
```

 

Font character info




##### Related Procedures With Parameters

* [GenImageFontAtlas](/vendor/raylib/#GenImageFontAtlas)
* [UnloadFontData](/vendor/raylib/#UnloadFontData)



##### Related Procedures With Returns

* [GetGlyphInfo](/vendor/raylib/#GetGlyphInfo)
* [LoadFontData](/vendor/raylib/#LoadFontData)

### [GuiCheckBoxProperty ¶](#GuiCheckBoxProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L155)

```
GuiCheckBoxProperty :: enum i32 {
	CHECK_PADDING = 16, // CheckBox internal check padding
}
```

 

CheckBox

### [GuiColorPickerProperty ¶](#GuiColorPickerProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L191)

```
GuiColorPickerProperty :: enum i32 {
	COLOR_SELECTOR_SIZE      = 16, 
	HUEBAR_WIDTH,                  // ColorPicker right hue bar width
	HUEBAR_PADDING,                // ColorPicker right hue bar separation from panel
	HUEBAR_SELECTOR_HEIGHT,        // ColorPicker right hue bar selector height
	HUEBAR_SELECTOR_OVERFLOW,      // ColorPicker right hue bar selector overflow
}
```

 

ColorPicker

### [GuiComboBoxProperty ¶](#GuiComboBoxProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L160)

```
GuiComboBoxProperty :: enum i32 {
	COMBO_BUTTON_WIDTH   = 16, // ComboBox right button width
	COMBO_BUTTON_SPACING,      // ComboBox button separation
}
```

 

ComboBox

### [GuiControl ¶](#GuiControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L64)

```
GuiControl :: enum i32 {
	// Default -> populates to all controls when set
	DEFAULT     = 0, 
	// Basic controls
	LABEL,           // Used also for: LABELBUTTON
	BUTTON, 
	TOGGLE,          // Used also for: TOGGLEGROUP
	SLIDER,          // Used also for: SLIDERBAR
	PROGRESSBAR, 
	CHECKBOX, 
	COMBOBOX, 
	DROPDOWNBOX, 
	TEXTBOX,         // Used also for: TEXTBOXMULTI
	VALUEBOX, 
	SPINNER,         // Uses: BUTTON, VALUEBOX
	LISTVIEW, 
	COLORPICKER, 
	SCROLLBAR, 
	STATUSBAR, 
}
```

 

Gui controls




##### Related Procedures With Parameters

* [GuiGetStyle](/vendor/raylib/#GuiGetStyle)
* [GuiSetStyle](/vendor/raylib/#GuiSetStyle)

### [GuiControlProperty ¶](#GuiControlProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L87)

```
GuiControlProperty :: enum i32 {
	BORDER_COLOR_NORMAL   = 0, 
	BASE_COLOR_NORMAL, 
	TEXT_COLOR_NORMAL, 
	BORDER_COLOR_FOCUSED, 
	BASE_COLOR_FOCUSED, 
	TEXT_COLOR_FOCUSED, 
	BORDER_COLOR_PRESSED, 
	BASE_COLOR_PRESSED, 
	TEXT_COLOR_PRESSED, 
	BORDER_COLOR_DISABLED, 
	BASE_COLOR_DISABLED, 
	TEXT_COLOR_DISABLED, 
	BORDER_WIDTH, 
	TEXT_PADDING, 
	TEXT_ALIGNMENT, 
	RESERVED, 
}
```

 

Gui base properties for every control
NOTE: RAYGUI\_MAX\_PROPS\_BASE properties (by default 16 properties)

### [GuiDefaultProperty ¶](#GuiDefaultProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L112)

```
GuiDefaultProperty :: enum i32 {
	TEXT_SIZE               = 16, // Text size (glyphs max height)
	TEXT_SPACING,                 // Text spacing between glyphs
	LINE_COLOR,                   // Line control color
	BACKGROUND_COLOR,             // Background color
	TEXT_LINE_SPACING,            // Text spacing between lines
	TEXT_ALIGNMENT_VERTICAL,      // Text vertical alignment inside text bounds (after border and padding)
	TEXT_WRAP_MODE,               // Text wrap-mode inside text bounds
}
```

 

DEFAULT extended properties
NOTE: Those properties are common to all controls or global

### [GuiDropdownBoxProperty ¶](#GuiDropdownBoxProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L166)

```
GuiDropdownBoxProperty :: enum i32 {
	ARROW_PADDING          = 16, // DropdownBox arrow separation from border and items
	DROPDOWN_ITEMS_SPACING,      // DropdownBox items separation
}
```

 

DropdownBox

### [GuiIconName ¶](#GuiIconName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L309)

```
GuiIconName :: enum i32 {
	ICON_NONE                    = 0, 
	ICON_FOLDER_FILE_OPEN        = 1, 
	ICON_FILE_SAVE_CLASSIC       = 2, 
	ICON_FOLDER_OPEN             = 3, 
	ICON_FOLDER_SAVE             = 4, 
	ICON_FILE_OPEN               = 5, 
	ICON_FILE_SAVE               = 6, 
	ICON_FILE_EXPORT             = 7, 
	ICON_FILE_ADD                = 8, 
	ICON_FILE_DELETE             = 9, 
	ICON_FILETYPE_TEXT           = 10, 
	ICON_FILETYPE_AUDIO          = 11, 
	ICON_FILETYPE_IMAGE          = 12, 
	ICON_FILETYPE_PLAY           = 13, 
	ICON_FILETYPE_VIDEO          = 14, 
	ICON_FILETYPE_INFO           = 15, 
	ICON_FILE_COPY               = 16, 
	ICON_FILE_CUT                = 17, 
	ICON_FILE_PASTE              = 18, 
	ICON_CURSOR_HAND             = 19, 
	ICON_CURSOR_POINTER          = 20, 
	ICON_CURSOR_CLASSIC          = 21, 
	ICON_PENCIL                  = 22, 
	ICON_PENCIL_BIG              = 23, 
	ICON_BRUSH_CLASSIC           = 24, 
	ICON_BRUSH_PAINTER           = 25, 
	ICON_WATER_DROP              = 26, 
	ICON_COLOR_PICKER            = 27, 
	ICON_RUBBER                  = 28, 
	ICON_COLOR_BUCKET            = 29, 
	ICON_TEXT_T                  = 30, 
	ICON_TEXT_A                  = 31, 
	ICON_SCALE                   = 32, 
	ICON_RESIZE                  = 33, 
	ICON_FILTER_POINT            = 34, 
	ICON_FILTER_BILINEAR         = 35, 
	ICON_CROP                    = 36, 
	ICON_CROP_ALPHA              = 37, 
	ICON_SQUARE_TOGGLE           = 38, 
	ICON_SYMMETRY                = 39, 
	ICON_SYMMETRY_HORIZONTAL     = 40, 
	ICON_SYMMETRY_VERTICAL       = 41, 
	ICON_LENS                    = 42, 
	ICON_LENS_BIG                = 43, 
	ICON_EYE_ON                  = 44, 
	ICON_EYE_OFF                 = 45, 
	ICON_FILTER_TOP              = 46, 
	ICON_FILTER                  = 47, 
	ICON_TARGET_POINT            = 48, 
	ICON_TARGET_SMALL            = 49, 
	ICON_TARGET_BIG              = 50, 
	ICON_TARGET_MOVE             = 51, 
	ICON_CURSOR_MOVE             = 52, 
	ICON_CURSOR_SCALE            = 53, 
	ICON_CURSOR_SCALE_RIGHT      = 54, 
	ICON_CURSOR_SCALE_LEFT       = 55, 
	ICON_UNDO                    = 56, 
	ICON_REDO                    = 57, 
	ICON_REREDO                  = 58, 
	ICON_MUTATE                  = 59, 
	ICON_ROTATE                  = 60, 
	ICON_REPEAT                  = 61, 
	ICON_SHUFFLE                 = 62, 
	ICON_EMPTYBOX                = 63, 
	ICON_TARGET                  = 64, 
	ICON_TARGET_SMALL_FILL       = 65, 
	ICON_TARGET_BIG_FILL         = 66, 
	ICON_TARGET_MOVE_FILL        = 67, 
	ICON_CURSOR_MOVE_FILL        = 68, 
	ICON_CURSOR_SCALE_FILL       = 69, 
	ICON_CURSOR_SCALE_RIGHT_FILL = 70, 
	ICON_CURSOR_SCALE_LEFT_FILL  = 71, 
	ICON_UNDO_FILL               = 72, 
	ICON_REDO_FILL               = 73, 
	ICON_REREDO_FILL             = 74, 
	ICON_MUTATE_FILL             = 75, 
	ICON_ROTATE_FILL             = 76, 
	ICON_REPEAT_FILL             = 77, 
	ICON_SHUFFLE_FILL            = 78, 
	ICON_EMPTYBOX_SMALL          = 79, 
	ICON_BOX                     = 80, 
	ICON_BOX_TOP                 = 81, 
	ICON_BOX_TOP_RIGHT           = 82, 
	ICON_BOX_RIGHT               = 83, 
	ICON_BOX_BOTTOM_RIGHT        = 84, 
	ICON_BOX_BOTTOM              = 85, 
	ICON_BOX_BOTTOM_LEFT         = 86, 
	ICON_BOX_LEFT                = 87, 
	ICON_BOX_TOP_LEFT            = 88, 
	ICON_BOX_CENTER              = 89, 
	ICON_BOX_CIRCLE_MASK         = 90, 
	ICON_POT                     = 91, 
	ICON_ALPHA_MULTIPLY          = 92, 
	ICON_ALPHA_CLEAR             = 93, 
	ICON_DITHERING               = 94, 
	ICON_MIPMAPS                 = 95, 
	ICON_BOX_GRID                = 96, 
	ICON_GRID                    = 97, 
	ICON_BOX_CORNERS_SMALL       = 98, 
	ICON_BOX_CORNERS_BIG         = 99, 
	ICON_FOUR_BOXES              = 100, 
	ICON_GRID_FILL               = 101, 
	ICON_BOX_MULTISIZE           = 102, 
	ICON_ZOOM_SMALL              = 103, 
	ICON_ZOOM_MEDIUM             = 104, 
	ICON_ZOOM_BIG                = 105, 
	ICON_ZOOM_ALL                = 106, 
	ICON_ZOOM_CENTER             = 107, 
	ICON_BOX_DOTS_SMALL          = 108, 
	ICON_BOX_DOTS_BIG            = 109, 
	ICON_BOX_CONCENTRIC          = 110, 
	ICON_BOX_GRID_BIG            = 111, 
	ICON_OK_TICK                 = 112, 
	ICON_CROSS                   = 113, 
	ICON_ARROW_LEFT              = 114, 
	ICON_ARROW_RIGHT             = 115, 
	ICON_ARROW_DOWN              = 116, 
	ICON_ARROW_UP                = 117, 
	ICON_ARROW_LEFT_FILL         = 118, 
	ICON_ARROW_RIGHT_FILL        = 119, 
	ICON_ARROW_DOWN_FILL         = 120, 
	ICON_ARROW_UP_FILL           = 121, 
	ICON_AUDIO                   = 122, 
	ICON_FX                      = 123, 
	ICON_WAVE                    = 124, 
	ICON_WAVE_SINUS              = 125, 
	ICON_WAVE_SQUARE             = 126, 
	ICON_WAVE_TRIANGULAR         = 127, 
	ICON_CROSS_SMALL             = 128, 
	ICON_PLAYER_PREVIOUS         = 129, 
	ICON_PLAYER_PLAY_BACK        = 130, 
	ICON_PLAYER_PLAY             = 131, 
	ICON_PLAYER_PAUSE            = 132, 
	ICON_PLAYER_STOP             = 133, 
	ICON_PLAYER_NEXT             = 134, 
	ICON_PLAYER_RECORD           = 135, 
	ICON_MAGNET                  = 136, 
	ICON_LOCK_CLOSE              = 137, 
	ICON_LOCK_OPEN               = 138, 
	ICON_CLOCK                   = 139, 
	ICON_TOOLS                   = 140, 
	ICON_GEAR                    = 141, 
	ICON_GEAR_BIG                = 142, 
	ICON_BIN                     = 143, 
	ICON_HAND_POINTER            = 144, 
	ICON_LASER                   = 145, 
	ICON_COIN                    = 146, 
	ICON_EXPLOSION               = 147, 
	ICON_1UP                     = 148, 
	ICON_PLAYER                  = 149, 
	ICON_PLAYER_JUMP             = 150, 
	ICON_KEY                     = 151, 
	ICON_DEMON                   = 152, 
	ICON_TEXT_POPUP              = 153, 
	ICON_GEAR_EX                 = 154, 
	ICON_CRACK                   = 155, 
	ICON_CRACK_POINTS            = 156, 
	ICON_STAR                    = 157, 
	ICON_DOOR                    = 158, 
	ICON_EXIT                    = 159, 
	ICON_MODE_2D                 = 160, 
	ICON_MODE_3D                 = 161, 
	ICON_CUBE                    = 162, 
	ICON_CUBE_FACE_TOP           = 163, 
	ICON_CUBE_FACE_LEFT          = 164, 
	ICON_CUBE_FACE_FRONT         = 165, 
	ICON_CUBE_FACE_BOTTOM        = 166, 
	ICON_CUBE_FACE_RIGHT         = 167, 
	ICON_CUBE_FACE_BACK          = 168, 
	ICON_CAMERA                  = 169, 
	ICON_SPECIAL                 = 170, 
	ICON_LINK_NET                = 171, 
	ICON_LINK_BOXES              = 172, 
	ICON_LINK_MULTI              = 173, 
	ICON_LINK                    = 174, 
	ICON_LINK_BROKE              = 175, 
	ICON_TEXT_NOTES              = 176, 
	ICON_NOTEBOOK                = 177, 
	ICON_SUITCASE                = 178, 
	ICON_SUITCASE_ZIP            = 179, 
	ICON_MAILBOX                 = 180, 
	ICON_MONITOR                 = 181, 
	ICON_PRINTER                 = 182, 
	ICON_PHOTO_CAMERA            = 183, 
	ICON_PHOTO_CAMERA_FLASH      = 184, 
	ICON_HOUSE                   = 185, 
	ICON_HEART                   = 186, 
	ICON_CORNER                  = 187, 
	ICON_VERTICAL_BARS           = 188, 
	ICON_VERTICAL_BARS_FILL      = 189, 
	ICON_LIFE_BARS               = 190, 
	ICON_INFO                    = 191, 
	ICON_CROSSLINE               = 192, 
	ICON_HELP                    = 193, 
	ICON_FILETYPE_ALPHA          = 194, 
	ICON_FILETYPE_HOME           = 195, 
	ICON_LAYERS_VISIBLE          = 196, 
	ICON_LAYERS                  = 197, 
	ICON_WINDOW                  = 198, 
	ICON_HIDPI                   = 199, 
	ICON_FILETYPE_BINARY         = 200, 
	ICON_HEX                     = 201, 
	ICON_SHIELD                  = 202, 
	ICON_FILE_NEW                = 203, 
	ICON_FOLDER_ADD              = 204, 
	ICON_ALARM                   = 205, 
	ICON_CPU                     = 206, 
	ICON_ROM                     = 207, 
	ICON_STEP_OVER               = 208, 
	ICON_STEP_INTO               = 209, 
	ICON_STEP_OUT                = 210, 
	ICON_RESTART                 = 211, 
	ICON_BREAKPOINT_ON           = 212, 
	ICON_BREAKPOINT_OFF          = 213, 
	ICON_BURGER_MENU             = 214, 
	ICON_CASE_SENSITIVE          = 215, 
	ICON_REG_EXP                 = 216, 
	ICON_FOLDER                  = 217, 
	ICON_FILE                    = 218, 
	ICON_SAND_TIMER              = 219, 
	ICON_220                     = 220, 
	ICON_221                     = 221, 
	ICON_222                     = 222, 
	ICON_223                     = 223, 
	ICON_224                     = 224, 
	ICON_225                     = 225, 
	ICON_226                     = 226, 
	ICON_227                     = 227, 
	ICON_228                     = 228, 
	ICON_229                     = 229, 
	ICON_230                     = 230, 
	ICON_231                     = 231, 
	ICON_232                     = 232, 
	ICON_233                     = 233, 
	ICON_234                     = 234, 
	ICON_235                     = 235, 
	ICON_236                     = 236, 
	ICON_237                     = 237, 
	ICON_238                     = 238, 
	ICON_239                     = 239, 
	ICON_240                     = 240, 
	ICON_241                     = 241, 
	ICON_242                     = 242, 
	ICON_243                     = 243, 
	ICON_244                     = 244, 
	ICON_245                     = 245, 
	ICON_246                     = 246, 
	ICON_247                     = 247, 
	ICON_248                     = 248, 
	ICON_249                     = 249, 
	ICON_250                     = 250, 
	ICON_251                     = 251, 
	ICON_252                     = 252, 
	ICON_253                     = 253, 
	ICON_254                     = 254, 
	ICON_255                     = 255, 
}
```

 

----------------------------------------------------------------------------------
Icons enumeration
----------------------------------------------------------------------------------




##### Related Procedures With Parameters

* [GuiDrawIcon](/vendor/raylib/#GuiDrawIcon)
* [GuiIconText](/vendor/raylib/#GuiIconText)

### [GuiListViewProperty ¶](#GuiListViewProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L183)

```
GuiListViewProperty :: enum i32 {
	LIST_ITEMS_HEIGHT  = 16, // ListView items height
	LIST_ITEMS_SPACING,      // ListView items separation
	SCROLLBAR_WIDTH,         // ListView scrollbar size (usually width)
	SCROLLBAR_SIDE,          // ListView scrollbar side (0-left, 1-right)
}
```

 

ListView

### [GuiProgressBarProperty ¶](#GuiProgressBarProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L140)

```
GuiProgressBarProperty :: enum i32 {
	PROGRESS_PADDING = 16, // ProgressBar internal padding
}
```

 

ProgressBar

### [GuiScrollBarProperty ¶](#GuiScrollBarProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L145)

```
GuiScrollBarProperty :: enum i32 {
	ARROWS_SIZE           = 16, 
	ARROWS_VISIBLE, 
	SCROLL_SLIDER_PADDING,      // (SLIDERBAR, SLIDER_PADDING)
	SCROLL_SLIDER_SIZE, 
	SCROLL_PADDING, 
	SCROLL_SPEED, 
}
```

 

ScrollBar

### [GuiSliderProperty ¶](#GuiSliderProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L134)

```
GuiSliderProperty :: enum i32 {
	SLIDER_WIDTH   = 16, // Slider size of internal bar
	SLIDER_PADDING,      // Slider/SliderBar internal bar padding
}
```

 

Slider/SliderBar

### [GuiSpinnerProperty ¶](#GuiSpinnerProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L177)

```
GuiSpinnerProperty :: enum i32 {
	SPIN_BUTTON_WIDTH   = 16, // Spinner left/right buttons width
	SPIN_BUTTON_SPACING,      // Spinner buttons separation
}
```

 

Spinner

### [GuiState ¶](#GuiState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L37)

```
GuiState :: enum i32 {
	STATE_NORMAL   = 0, 
	STATE_FOCUSED, 
	STATE_PRESSED, 
	STATE_DISABLED, 
}
```

 

Gui control state

### [GuiTextAlignment ¶](#GuiTextAlignment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L45)

```
GuiTextAlignment :: enum i32 {
	TEXT_ALIGN_LEFT   = 0, 
	TEXT_ALIGN_CENTER, 
	TEXT_ALIGN_RIGHT, 
}
```

 

Gui control text alignment

### [GuiTextAlignmentVertical ¶](#GuiTextAlignmentVertical) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L51)

```
GuiTextAlignmentVertical :: enum i32 {
	TEXT_ALIGN_TOP    = 0, 
	TEXT_ALIGN_MIDDLE, 
	TEXT_ALIGN_BOTTOM, 
}
```

### [GuiTextBoxProperty ¶](#GuiTextBoxProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L172)

```
GuiTextBoxProperty :: enum i32 {
	TEXT_READONLY = 16, // TextBox in read-only mode: 0-text editable, 1-text no-editable
}
```

 

TextBox/TextBoxMulti/ValueBox/Spinner

### [GuiTextWrapMode ¶](#GuiTextWrapMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L57)

```
GuiTextWrapMode :: enum i32 {
	TEXT_WRAP_NONE = 0, 
	TEXT_WRAP_CHAR, 
	TEXT_WRAP_WORD, 
}
```

### [GuiToggleProperty ¶](#GuiToggleProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L129)

```
GuiToggleProperty :: enum i32 {
	GROUP_PADDING = 16, // ToggleGroup separation between toggles
}
```

 

Toggle/ToggleGroup

### [Image ¶](#Image) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L206)

```
Image :: struct {
	data:    rawptr,
	// Image raw data
	width:   i32,
	// Image base width
	height:  i32,
	// Image base height
	mipmaps: i32,
	// Mipmap levels, 1 by default
	format:  PixelFormat,
}
```

 

Image type, bpp always RGBA (32bit)
NOTE: Data stored in CPU memory (RAM)




##### Related Procedures With Parameters

* [ExportImage](/vendor/raylib/#ExportImage)
* [ExportImageAsCode](/vendor/raylib/#ExportImageAsCode)
* [ExportImageToMemory](/vendor/raylib/#ExportImageToMemory)
* [GenMeshCubicmap](/vendor/raylib/#GenMeshCubicmap)
* [GenMeshHeightmap](/vendor/raylib/#GenMeshHeightmap)
* [GetImageAlphaBorder](/vendor/raylib/#GetImageAlphaBorder)
* [GetImageColor](/vendor/raylib/#GetImageColor)
* [ImageAlphaClear](/vendor/raylib/#ImageAlphaClear)
* [ImageAlphaCrop](/vendor/raylib/#ImageAlphaCrop)
* [ImageAlphaMask](/vendor/raylib/#ImageAlphaMask)
* [ImageAlphaPremultiply](/vendor/raylib/#ImageAlphaPremultiply)
* [ImageBlurGaussian](/vendor/raylib/#ImageBlurGaussian)
* [ImageClearBackground](/vendor/raylib/#ImageClearBackground)
* [ImageColorBrightness](/vendor/raylib/#ImageColorBrightness)
* [ImageColorContrast](/vendor/raylib/#ImageColorContrast)
* [ImageColorGrayscale](/vendor/raylib/#ImageColorGrayscale)
* [ImageColorInvert](/vendor/raylib/#ImageColorInvert)
* [ImageColorReplace](/vendor/raylib/#ImageColorReplace)
* [ImageColorTint](/vendor/raylib/#ImageColorTint)
* [ImageCopy](/vendor/raylib/#ImageCopy)
* [ImageCrop](/vendor/raylib/#ImageCrop)
* [ImageDither](/vendor/raylib/#ImageDither)
* [ImageDraw](/vendor/raylib/#ImageDraw)
* [ImageDrawCircle](/vendor/raylib/#ImageDrawCircle)
* [ImageDrawCircleLines](/vendor/raylib/#ImageDrawCircleLines)
* [ImageDrawCircleLinesV](/vendor/raylib/#ImageDrawCircleLinesV)
* [ImageDrawCircleV](/vendor/raylib/#ImageDrawCircleV)
* [ImageDrawLine](/vendor/raylib/#ImageDrawLine)
* [ImageDrawLineEx](/vendor/raylib/#ImageDrawLineEx)
* [ImageDrawLineV](/vendor/raylib/#ImageDrawLineV)
* [ImageDrawPixel](/vendor/raylib/#ImageDrawPixel)
* [ImageDrawPixelV](/vendor/raylib/#ImageDrawPixelV)
* [ImageDrawRectangle](/vendor/raylib/#ImageDrawRectangle)
* [ImageDrawRectangleLines](/vendor/raylib/#ImageDrawRectangleLines)
* [ImageDrawRectangleRec](/vendor/raylib/#ImageDrawRectangleRec)
* [ImageDrawRectangleV](/vendor/raylib/#ImageDrawRectangleV)
* [ImageDrawText](/vendor/raylib/#ImageDrawText)
* [ImageDrawTextEx](/vendor/raylib/#ImageDrawTextEx)
* [ImageDrawTriangle](/vendor/raylib/#ImageDrawTriangle)
* [ImageDrawTriangleEx](/vendor/raylib/#ImageDrawTriangleEx)
* [ImageDrawTriangleFan](/vendor/raylib/#ImageDrawTriangleFan)
* [ImageDrawTriangleLines](/vendor/raylib/#ImageDrawTriangleLines)
* [ImageDrawTriangleStrip](/vendor/raylib/#ImageDrawTriangleStrip)
* [ImageFlipHorizontal](/vendor/raylib/#ImageFlipHorizontal)
* [ImageFlipVertical](/vendor/raylib/#ImageFlipVertical)
* [ImageFormat](/vendor/raylib/#ImageFormat)
* [ImageFromChannel](/vendor/raylib/#ImageFromChannel)
* [ImageFromImage](/vendor/raylib/#ImageFromImage)
* [ImageKernelConvolution](/vendor/raylib/#ImageKernelConvolution)
* [ImageMipmaps](/vendor/raylib/#ImageMipmaps)
* [ImageResize](/vendor/raylib/#ImageResize)
* [ImageResizeCanvas](/vendor/raylib/#ImageResizeCanvas)
* [ImageResizeNN](/vendor/raylib/#ImageResizeNN)
* [ImageRotate](/vendor/raylib/#ImageRotate)
* [ImageRotateCCW](/vendor/raylib/#ImageRotateCCW)
* [ImageRotateCW](/vendor/raylib/#ImageRotateCW)
* [ImageToPOT](/vendor/raylib/#ImageToPOT)
* [IsImageValid](/vendor/raylib/#IsImageValid)
* [LoadFontFromImage](/vendor/raylib/#LoadFontFromImage)
* [LoadImageColors](/vendor/raylib/#LoadImageColors)
* [LoadImagePalette](/vendor/raylib/#LoadImagePalette)
* [LoadTextureCubemap](/vendor/raylib/#LoadTextureCubemap)
* [LoadTextureFromImage](/vendor/raylib/#LoadTextureFromImage)
* [SetWindowIcon](/vendor/raylib/#SetWindowIcon)
* [SetWindowIcons](/vendor/raylib/#SetWindowIcons)
* [UnloadImage](/vendor/raylib/#UnloadImage)



##### Related Procedures With Returns

* [GenImageCellular](/vendor/raylib/#GenImageCellular)
* [GenImageChecked](/vendor/raylib/#GenImageChecked)
* [GenImageColor](/vendor/raylib/#GenImageColor)
* [GenImageFontAtlas](/vendor/raylib/#GenImageFontAtlas)
* [GenImageGradientLinear](/vendor/raylib/#GenImageGradientLinear)
* [GenImageGradientRadial](/vendor/raylib/#GenImageGradientRadial)
* [GenImageGradientSquare](/vendor/raylib/#GenImageGradientSquare)
* [GenImagePerlinNoise](/vendor/raylib/#GenImagePerlinNoise)
* [GenImageText](/vendor/raylib/#GenImageText)
* [GenImageWhiteNoise](/vendor/raylib/#GenImageWhiteNoise)
* [GetClipboardImage](/vendor/raylib/#GetClipboardImage)
* [ImageText](/vendor/raylib/#ImageText)
* [ImageTextEx](/vendor/raylib/#ImageTextEx)
* [LoadImage](/vendor/raylib/#LoadImage)
* [LoadImageAnim](/vendor/raylib/#LoadImageAnim)
* [LoadImageAnimFromMemory](/vendor/raylib/#LoadImageAnimFromMemory)
* [LoadImageFromMemory](/vendor/raylib/#LoadImageFromMemory)
* [LoadImageFromScreen](/vendor/raylib/#LoadImageFromScreen)
* [LoadImageFromTexture](/vendor/raylib/#LoadImageFromTexture)
* [LoadImageRaw](/vendor/raylib/#LoadImageRaw)

### [KeyboardKey ¶](#KeyboardKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L519)

```
KeyboardKey :: enum i32 {
	KEY_NULL      = 0,   // Key: NULL, used for no key pressed
	// Alphanumeric keys
	APOSTROPHE    = 39,  // Key: '
	COMMA         = 44,  // Key: ,
	MINUS         = 45,  // Key: -
	PERIOD        = 46,  // Key: .
	SLASH         = 47,  // Key: /
	ZERO          = 48,  // Key: 0
	ONE           = 49,  // Key: 1
	TWO           = 50,  // Key: 2
	THREE         = 51,  // Key: 3
	FOUR          = 52,  // Key: 4
	FIVE          = 53,  // Key: 5
	SIX           = 54,  // Key: 6
	SEVEN         = 55,  // Key: 7
	EIGHT         = 56,  // Key: 8
	NINE          = 57,  // Key: 9
	SEMICOLON     = 59,  // Key: ;
	EQUAL         = 61,  // Key: =
	A             = 65,  // Key: A | a
	B             = 66,  // Key: B | b
	C             = 67,  // Key: C | c
	D             = 68,  // Key: D | d
	E             = 69,  // Key: E | e
	F             = 70,  // Key: F | f
	G             = 71,  // Key: G | g
	H             = 72,  // Key: H | h
	I             = 73,  // Key: I | i
	J             = 74,  // Key: J | j
	K             = 75,  // Key: K | k
	L             = 76,  // Key: L | l
	M             = 77,  // Key: M | m
	N             = 78,  // Key: N | n
	O             = 79,  // Key: O | o
	P             = 80,  // Key: P | p
	Q             = 81,  // Key: Q | q
	R             = 82,  // Key: R | r
	S             = 83,  // Key: S | s
	T             = 84,  // Key: T | t
	U             = 85,  // Key: U | u
	V             = 86,  // Key: V | v
	W             = 87,  // Key: W | w
	X             = 88,  // Key: X | x
	Y             = 89,  // Key: Y | y
	Z             = 90,  // Key: Z | z
	LEFT_BRACKET  = 91,  // Key: [
	BACKSLASH     = 92,  // Key: '\'
	RIGHT_BRACKET = 93,  // Key: ]
	GRAVE         = 96,  // Key: `
	// Function keys
	SPACE         = 32,  // Key: Space
	ESCAPE        = 256, // Key: Esc
	ENTER         = 257, // Key: Enter
	TAB           = 258, // Key: Tab
	BACKSPACE     = 259, // Key: Backspace
	INSERT        = 260, // Key: Ins
	DELETE        = 261, // Key: Del
	RIGHT         = 262, // Key: Cursor right
	LEFT          = 263, // Key: Cursor left
	DOWN          = 264, // Key: Cursor down
	UP            = 265, // Key: Cursor up
	PAGE_UP       = 266, // Key: Page up
	PAGE_DOWN     = 267, // Key: Page down
	HOME          = 268, // Key: Home
	END           = 269, // Key: End
	CAPS_LOCK     = 280, // Key: Caps lock
	SCROLL_LOCK   = 281, // Key: Scroll down
	NUM_LOCK      = 282, // Key: Num lock
	PRINT_SCREEN  = 283, // Key: Print screen
	PAUSE         = 284, // Key: Pause
	F1            = 290, // Key: F1
	F2            = 291, // Key: F2
	F3            = 292, // Key: F3
	F4            = 293, // Key: F4
	F5            = 294, // Key: F5
	F6            = 295, // Key: F6
	F7            = 296, // Key: F7
	F8            = 297, // Key: F8
	F9            = 298, // Key: F9
	F10           = 299, // Key: F10
	F11           = 300, // Key: F11
	F12           = 301, // Key: F12
	LEFT_SHIFT    = 340, // Key: Shift left
	LEFT_CONTROL  = 341, // Key: Control left
	LEFT_ALT      = 342, // Key: Alt left
	LEFT_SUPER    = 343, // Key: Super left
	RIGHT_SHIFT   = 344, // Key: Shift right
	RIGHT_CONTROL = 345, // Key: Control right
	RIGHT_ALT     = 346, // Key: Alt right
	RIGHT_SUPER   = 347, // Key: Super right
	KB_MENU       = 348, // Key: KB menu
	// Keypad keys
	KP_0          = 320, // Key: Keypad 0
	KP_1          = 321, // Key: Keypad 1
	KP_2          = 322, // Key: Keypad 2
	KP_3          = 323, // Key: Keypad 3
	KP_4          = 324, // Key: Keypad 4
	KP_5          = 325, // Key: Keypad 5
	KP_6          = 326, // Key: Keypad 6
	KP_7          = 327, // Key: Keypad 7
	KP_8          = 328, // Key: Keypad 8
	KP_9          = 329, // Key: Keypad 9
	KP_DECIMAL    = 330, // Key: Keypad .
	KP_DIVIDE     = 331, // Key: Keypad /
	KP_MULTIPLY   = 332, // Key: Keypad *
	KP_SUBTRACT   = 333, // Key: Keypad -
	KP_ADD        = 334, // Key: Keypad +
	KP_ENTER      = 335, // Key: Keypad Enter
	KP_EQUAL      = 336, // Key: Keypad =
	// Android key buttons
	BACK          = 4,   // Key: Android back button
	MENU          = 5,   // Key: Android menu button
	VOLUME_UP     = 24,  // Key: Android volume up button
	VOLUME_DOWN   = 25,  // Key: Android volume down button
}
```

 

Keyboard keys (US keyboard layout)
NOTE: Use GetKeyPressed() to allow redefining
required keys for alternative layouts




##### Related Procedures With Parameters

* [IsKeyDown](/vendor/raylib/#IsKeyDown)
* [IsKeyPressed](/vendor/raylib/#IsKeyPressed)
* [IsKeyPressedRepeat](/vendor/raylib/#IsKeyPressedRepeat)
* [IsKeyReleased](/vendor/raylib/#IsKeyReleased)
* [IsKeyUp](/vendor/raylib/#IsKeyUp)
* [SetExitKey](/vendor/raylib/#SetExitKey)



##### Related Procedures With Returns

* [GetKeyPressed](/vendor/raylib/#GetKeyPressed)

### [LoadFileDataCallback ¶](#LoadFileDataCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L887)

```
LoadFileDataCallback :: proc "c" (fileName: cstring, dataSize: ^i32) -> [^]u8
```

 

FileIO: Load binary data




##### Related Procedures With Parameters

* [SetLoadFileDataCallback](/vendor/raylib/#SetLoadFileDataCallback)

### [LoadFileTextCallback ¶](#LoadFileTextCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L889)

```
LoadFileTextCallback :: proc "c" (fileName: cstring) -> [^]u8
```

 

FileIO: Load text data




##### Related Procedures With Parameters

* [SetLoadFileTextCallback](/vendor/raylib/#SetLoadFileTextCallback)

### [Material ¶](#Material) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L330)

```
Material :: struct {
	shader: Shader,
	// Material shader
	maps:   [^]MaterialMap,
	// Material maps array (MAX_MATERIAL_MAPS)
	params: [4]f32,
}
```

 

Material type (generic)




##### Related Procedures With Parameters

* [DrawMesh](/vendor/raylib/#DrawMesh)
* [DrawMeshInstanced](/vendor/raylib/#DrawMeshInstanced)
* [IsMaterialValid](/vendor/raylib/#IsMaterialValid)
* [SetMaterialTexture](/vendor/raylib/#SetMaterialTexture)
* [UnloadMaterial](/vendor/raylib/#UnloadMaterial)



##### Related Procedures With Returns

* [LoadMaterialDefault](/vendor/raylib/#LoadMaterialDefault)
* [LoadMaterials](/vendor/raylib/#LoadMaterials)

### [MaterialMap ¶](#MaterialMap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L323)

```
MaterialMap :: struct {
	texture: Texture,
	// Material map texture
	color:   Color,
	// Material map color
	value:   f32,
}
```

 

Material texture map

### [MaterialMapIndex ¶](#MaterialMapIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L695)

```
MaterialMapIndex :: enum i32 {
	ALBEDO     = 0, // Albedo material (same as: MATERIAL_MAP_DIFFUSE)
	METALNESS,      // Metalness material (same as: MATERIAL_MAP_SPECULAR)
	NORMAL,         // Normal material
	ROUGHNESS,      // Roughness material
	OCCLUSION,      // Ambient occlusion material
	EMISSION,       // Emission material
	HEIGHT,         // Heightmap material
	CUBEMAP,        // Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	IRRADIANCE,     // Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	PREFILTER,      // Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	BRDF,           // Brdf material
}
```

 

Material map index




##### Related Procedures With Parameters

* [SetMaterialTexture](/vendor/raylib/#SetMaterialTexture)

### [Matrix ¶](#Matrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L188)

```
Matrix :: matrix[4, 4]f32
```

 

Matrix type (right handed, stored row major)




##### Related Procedures With Parameters

* [DrawMesh](/vendor/raylib/#DrawMesh)
* [DrawMeshInstanced](/vendor/raylib/#DrawMeshInstanced)
* [GetRayCollisionMesh](/vendor/raylib/#GetRayCollisionMesh)
* [MatrixAdd](/vendor/raylib/#MatrixAdd)
* [MatrixDeterminant](/vendor/raylib/#MatrixDeterminant)
* [MatrixInvert](/vendor/raylib/#MatrixInvert)
* [MatrixMultiply](/vendor/raylib/#MatrixMultiply)
* [MatrixSubtract](/vendor/raylib/#MatrixSubtract)
* [MatrixToFloatV](/vendor/raylib/#MatrixToFloatV)
* [MatrixTrace](/vendor/raylib/#MatrixTrace)
* [MatrixTranspose](/vendor/raylib/#MatrixTranspose)
* [QuaternionFromMatrix](/vendor/raylib/#QuaternionFromMatrix)
* [QuaternionTransform](/vendor/raylib/#QuaternionTransform)
* [SetShaderValueMatrix](/vendor/raylib/#SetShaderValueMatrix)
* [Vector2Transform](/vendor/raylib/#Vector2Transform)
* [Vector3Transform](/vendor/raylib/#Vector3Transform)
* [Vector3Unproject](/vendor/raylib/#Vector3Unproject)



##### Related Procedures With Returns

* [GetCameraMatrix](/vendor/raylib/#GetCameraMatrix)
* [GetCameraMatrix2D](/vendor/raylib/#GetCameraMatrix2D)
* [GetCameraProjectionMatrix](/vendor/raylib/#GetCameraProjectionMatrix)
* [GetCameraViewMatrix](/vendor/raylib/#GetCameraViewMatrix)
* [MatrixIdentity](/vendor/raylib/#MatrixIdentity)
* [MatrixLookAt](/vendor/raylib/#MatrixLookAt)
* [MatrixOrtho](/vendor/raylib/#MatrixOrtho)
* [MatrixPerspective](/vendor/raylib/#MatrixPerspective)
* [MatrixRotate](/vendor/raylib/#MatrixRotate)
* [MatrixRotateX](/vendor/raylib/#MatrixRotateX)
* [MatrixRotateXYZ](/vendor/raylib/#MatrixRotateXYZ)
* [MatrixRotateY](/vendor/raylib/#MatrixRotateY)
* [MatrixRotateZ](/vendor/raylib/#MatrixRotateZ)
* [MatrixRotateZYX](/vendor/raylib/#MatrixRotateZYX)
* [MatrixScale](/vendor/raylib/#MatrixScale)
* [MatrixTranslate](/vendor/raylib/#MatrixTranslate)
* [QuaternionToMatrix](/vendor/raylib/#QuaternionToMatrix)

### [Mesh ¶](#Mesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L290)

```
Mesh :: struct {
	vertexCount:   i32,
	// Number of vertices stored in arrays
	triangleCount: i32,
	// Default vertex data
	vertices:      [^]f32,
	// Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
	texcoords:     [^]f32,
	// Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
	texcoords2:    [^]f32,
	// Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
	normals:       [^]f32,
	// Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
	tangents:      [^]f32,
	// Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
	colors:        [^]u8,
	// Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
	indices:       [^]u16,
	// Animation vertex data
	animVertices:  [^]f32,
	// Animated vertex positions (after bones transformations)
	animNormals:   [^]f32,
	// Animated normals (after bones transformations)
	boneIds:       [^]u8,
	// Vertex bone ids, up to 4 bones influence by vertex (skinning)
	boneWeights:   [^]f32,
	// Vertex bone weight, up to 4 bones influence by vertex (skinning)
	boneMatrices:  [^]matrix[4, 4]f32,
	// Bones animated transformation matrices
	boneCount:     i32,
	// OpenGL identifiers
	vaoId:         u32,
	// OpenGL Vertex Array Object id
	vboId:         [^]u32,
}
```

 

Vertex data defining a mesh
NOTE: Data stored in CPU memory (and GPU)




##### Related Procedures With Parameters

* [DrawMesh](/vendor/raylib/#DrawMesh)
* [DrawMeshInstanced](/vendor/raylib/#DrawMeshInstanced)
* [ExportMesh](/vendor/raylib/#ExportMesh)
* [ExportMeshAsCode](/vendor/raylib/#ExportMeshAsCode)
* [GenMeshTangents](/vendor/raylib/#GenMeshTangents)
* [GetMeshBoundingBox](/vendor/raylib/#GetMeshBoundingBox)
* [GetRayCollisionMesh](/vendor/raylib/#GetRayCollisionMesh)
* [LoadModelFromMesh](/vendor/raylib/#LoadModelFromMesh)
* [UnloadMesh](/vendor/raylib/#UnloadMesh)
* [UpdateMeshBuffer](/vendor/raylib/#UpdateMeshBuffer)
* [UploadMesh](/vendor/raylib/#UploadMesh)



##### Related Procedures With Returns

* [GenMeshCone](/vendor/raylib/#GenMeshCone)
* [GenMeshCube](/vendor/raylib/#GenMeshCube)
* [GenMeshCubicmap](/vendor/raylib/#GenMeshCubicmap)
* [GenMeshCylinder](/vendor/raylib/#GenMeshCylinder)
* [GenMeshHeightmap](/vendor/raylib/#GenMeshHeightmap)
* [GenMeshHemiSphere](/vendor/raylib/#GenMeshHemiSphere)
* [GenMeshKnot](/vendor/raylib/#GenMeshKnot)
* [GenMeshPlane](/vendor/raylib/#GenMeshPlane)
* [GenMeshPoly](/vendor/raylib/#GenMeshPoly)
* [GenMeshSphere](/vendor/raylib/#GenMeshSphere)
* [GenMeshTorus](/vendor/raylib/#GenMeshTorus)

### [Model ¶](#Model) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L350)

```
Model :: struct #align (align_of(uintptr)) {
	transform:     matrix[4, 4]f32,
	// Local transform matrix
	meshCount:     i32,
	// Number of meshes
	materialCount: i32,
	// Number of materials
	meshes:        [^]Mesh,
	// Meshes array
	materials:     [^]Material,
	// Materials array
	meshMaterial:  [^]i32,
	// Animation data
	boneCount:     i32,
	// Number of bones
	bones:         [^]BoneInfo,
	// Bones information (skeleton)
	bindPose:      [^]Transform,
}
```

 

Model type




##### Related Procedures With Parameters

* [DrawModel](/vendor/raylib/#DrawModel)
* [DrawModelEx](/vendor/raylib/#DrawModelEx)
* [DrawModelPoints](/vendor/raylib/#DrawModelPoints)
* [DrawModelPointsEx](/vendor/raylib/#DrawModelPointsEx)
* [DrawModelWires](/vendor/raylib/#DrawModelWires)
* [DrawModelWiresEx](/vendor/raylib/#DrawModelWiresEx)
* [GetModelBoundingBox](/vendor/raylib/#GetModelBoundingBox)
* [IsModelAnimationValid](/vendor/raylib/#IsModelAnimationValid)
* [IsModelValid](/vendor/raylib/#IsModelValid)
* [SetModelMeshMaterial](/vendor/raylib/#SetModelMeshMaterial)
* [UnloadModel](/vendor/raylib/#UnloadModel)
* [UpdateModelAnimation](/vendor/raylib/#UpdateModelAnimation)
* [UpdateModelAnimationBones](/vendor/raylib/#UpdateModelAnimationBones)



##### Related Procedures With Returns

* [LoadModel](/vendor/raylib/#LoadModel)
* [LoadModelFromMesh](/vendor/raylib/#LoadModelFromMesh)

### [ModelAnimation ¶](#ModelAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L366)

```
ModelAnimation :: struct {
	boneCount:  i32,
	// Number of bones
	frameCount: i32,
	// Number of animation frames
	bones:      [^]BoneInfo,
	// Bones information (skeleton)
	framePoses: [^][^]Transform,
	// Poses array by frame
	name:       [32]u8 `fmt:"s,0"`,
}
```

 

Model animation




##### Related Procedures With Parameters

* [IsModelAnimationValid](/vendor/raylib/#IsModelAnimationValid)
* [UnloadModelAnimation](/vendor/raylib/#UnloadModelAnimation)
* [UnloadModelAnimations](/vendor/raylib/#UnloadModelAnimations)
* [UpdateModelAnimation](/vendor/raylib/#UpdateModelAnimation)
* [UpdateModelAnimationBones](/vendor/raylib/#UpdateModelAnimationBones)



##### Related Procedures With Returns

* [LoadModelAnimations](/vendor/raylib/#LoadModelAnimations)

### [MouseButton ¶](#MouseButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L637)

```
MouseButton :: enum i32 {
	LEFT    = 0, // Mouse button left
	RIGHT   = 1, // Mouse button right
	MIDDLE  = 2, // Mouse button middle (pressed wheel)
	SIDE    = 3, // Mouse button side (advanced mouse device)
	EXTRA   = 4, // Mouse button extra (advanced mouse device)
	FORWARD = 5, // Mouse button fordward (advanced mouse device)
	BACK    = 6, // Mouse button back (advanced mouse device)
}
```

 

Mouse buttons




##### Related Procedures With Parameters

* [IsMouseButtonDown](/vendor/raylib/#IsMouseButtonDown)
* [IsMouseButtonPressed](/vendor/raylib/#IsMouseButtonPressed)
* [IsMouseButtonReleased](/vendor/raylib/#IsMouseButtonReleased)
* [IsMouseButtonUp](/vendor/raylib/#IsMouseButtonUp)

### [MouseCursor ¶](#MouseCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L648)

```
MouseCursor :: enum i32 {
	DEFAULT       = 0,  // Default pointer shape
	ARROW         = 1,  // Arrow shape
	IBEAM         = 2,  // Text writing cursor shape
	CROSSHAIR     = 3,  // Cross shape
	POINTING_HAND = 4,  // Pointing hand cursor
	RESIZE_EW     = 5,  // Horizontal resize/move arrow shape
	RESIZE_NS     = 6,  // Vertical resize/move arrow shape
	RESIZE_NWSE   = 7,  // Top-left to bottom-right diagonal resize/move arrow shape
	RESIZE_NESW   = 8,  // The top-right to bottom-left diagonal resize/move arrow shape
	RESIZE_ALL    = 9,  // The omnidirectional resize/move cursor shape
	NOT_ALLOWED   = 10, // The operation-not-allowed shape
}
```

 

Mouse cursor




##### Related Procedures With Parameters

* [SetMouseCursor](/vendor/raylib/#SetMouseCursor)

### [Music ¶](#Music) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L422)

```
Music :: struct {
	using stream: AudioStream,
	// Audio stream
	frameCount: u32,
	// Total number of frames (considering channels)
	looping:    bool,
	// Music looping enable
	ctxType:    i32,
	// Type of music context (audio filetype)
	ctxData:    rawptr,
}
```

 

Music stream type (audio file streaming from memory)
NOTE: Anything longer than ~10 seconds should be streamed




##### Related Procedures With Parameters

* [GetMusicTimeLength](/vendor/raylib/#GetMusicTimeLength)
* [GetMusicTimePlayed](/vendor/raylib/#GetMusicTimePlayed)
* [IsMusicStreamPlaying](/vendor/raylib/#IsMusicStreamPlaying)
* [IsMusicValid](/vendor/raylib/#IsMusicValid)
* [PauseMusicStream](/vendor/raylib/#PauseMusicStream)
* [PlayMusicStream](/vendor/raylib/#PlayMusicStream)
* [ResumeMusicStream](/vendor/raylib/#ResumeMusicStream)
* [SeekMusicStream](/vendor/raylib/#SeekMusicStream)
* [SetMusicPan](/vendor/raylib/#SetMusicPan)
* [SetMusicPitch](/vendor/raylib/#SetMusicPitch)
* [SetMusicVolume](/vendor/raylib/#SetMusicVolume)
* [StopMusicStream](/vendor/raylib/#StopMusicStream)
* [UnloadMusicStream](/vendor/raylib/#UnloadMusicStream)
* [UpdateMusicStream](/vendor/raylib/#UpdateMusicStream)



##### Related Procedures With Returns

* [LoadMusicStream](/vendor/raylib/#LoadMusicStream)
* [LoadMusicStreamFromMemory](/vendor/raylib/#LoadMusicStreamFromMemory)



###### Procedures Through `using` From [AudioStream](/vendor/raylib/#AudioStream)

* [AttachAudioStreamProcessor](/vendor/raylib/#AttachAudioStreamProcessor)
* [DetachAudioStreamProcessor](/vendor/raylib/#DetachAudioStreamProcessor)
* [IsAudioStreamPlaying](/vendor/raylib/#IsAudioStreamPlaying)
* [IsAudioStreamProcessed](/vendor/raylib/#IsAudioStreamProcessed)
* [IsAudioStreamValid](/vendor/raylib/#IsAudioStreamValid)
* [PauseAudioStream](/vendor/raylib/#PauseAudioStream)
* [PlayAudioStream](/vendor/raylib/#PlayAudioStream)
* [ResumeAudioStream](/vendor/raylib/#ResumeAudioStream)
* [SetAudioStreamCallback](/vendor/raylib/#SetAudioStreamCallback)
* [SetAudioStreamPan](/vendor/raylib/#SetAudioStreamPan)
* [SetAudioStreamPitch](/vendor/raylib/#SetAudioStreamPitch)
* [SetAudioStreamVolume](/vendor/raylib/#SetAudioStreamVolume)
* [StopAudioStream](/vendor/raylib/#StopAudioStream)
* [UnloadAudioStream](/vendor/raylib/#UnloadAudioStream)
* [UpdateAudioStream](/vendor/raylib/#UpdateAudioStream)

### [NPatchInfo ¶](#NPatchInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L241)

```
NPatchInfo :: struct {
	source: Rectangle,
	// Texture source rectangle
	left:   i32,
	// Left border offset
	top:    i32,
	// Top border offset
	right:  i32,
	// Right border offset
	bottom: i32,
	// Bottom border offset
	layout: NPatchLayout,
}
```

 

N-Patch layout info




##### Related Procedures With Parameters

* [DrawTextureNPatch](/vendor/raylib/#DrawTextureNPatch)

### [NPatchLayout ¶](#NPatchLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L878)

```
NPatchLayout :: enum i32 {
	NINE_PATCH             = 0, // Npatch layout: 3x3 tiles
	THREE_PATCH_VERTICAL,       // Npatch layout: 1x3 tiles
	THREE_PATCH_HORIZONTAL,     // Npatch layout: 3x1 tiles
}
```

 

N-patch layout

### [PixelFormat ¶](#PixelFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L759)

```
PixelFormat :: enum i32 {
	UNKNOWN                   = 0, 
	UNCOMPRESSED_GRAYSCALE    = 1, // 8 bit per pixel (no alpha)
	UNCOMPRESSED_GRAY_ALPHA,       // 8*2 bpp (2 channels)
	UNCOMPRESSED_R5G6B5,           // 16 bpp
	UNCOMPRESSED_R8G8B8,           // 24 bpp
	UNCOMPRESSED_R5G5B5A1,         // 16 bpp (1 bit alpha)
	UNCOMPRESSED_R4G4B4A4,         // 16 bpp (4 bit alpha)
	UNCOMPRESSED_R8G8B8A8,         // 32 bpp
	UNCOMPRESSED_R32,              // 32 bpp (1 channel - float)
	UNCOMPRESSED_R32G32B32,        // 32*3 bpp (3 channels - float)
	UNCOMPRESSED_R32G32B32A32,     // 32*4 bpp (4 channels - float)
	UNCOMPRESSED_R16,              // 16 bpp (1 channel - float)
	UNCOMPRESSED_R16G16B16,        // 16*3 bpp (3 channels - float)
	UNCOMPRESSED_R16G16B16A16,     // 16*4 bpp (4 channels - float)
	COMPRESSED_DXT1_RGB,           // 4 bpp (no alpha)
	COMPRESSED_DXT1_RGBA,          // 4 bpp (1 bit alpha)
	COMPRESSED_DXT3_RGBA,          // 8 bpp
	COMPRESSED_DXT5_RGBA,          // 8 bpp
	COMPRESSED_ETC1_RGB,           // 4 bpp
	COMPRESSED_ETC2_RGB,           // 4 bpp
	COMPRESSED_ETC2_EAC_RGBA,      // 8 bpp
	COMPRESSED_PVRT_RGB,           // 4 bpp
	COMPRESSED_PVRT_RGBA,          // 4 bpp
	COMPRESSED_ASTC_4x4_RGBA,      // 8 bpp
	COMPRESSED_ASTC_8x8_RGBA,      // 2 bpp
}
```

 

Pixel formats
NOTE: Support depends on OpenGL version and platform




##### Related Procedures With Parameters

* [GetPixelColor](/vendor/raylib/#GetPixelColor)
* [GetPixelDataSize](/vendor/raylib/#GetPixelDataSize)
* [ImageFormat](/vendor/raylib/#ImageFormat)
* [LoadImageRaw](/vendor/raylib/#LoadImageRaw)
* [SetPixelColor](/vendor/raylib/#SetPixelColor)

### [Quaternion ¶](#Quaternion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L185)

```
Quaternion :: quaternion128
```

 

Quaternion type




##### Related Procedures With Parameters

* [QuaternionAdd](/vendor/raylib/#QuaternionAdd)
* [QuaternionAddValue](/vendor/raylib/#QuaternionAddValue)
* [QuaternionDivide](/vendor/raylib/#QuaternionDivide)
* [QuaternionEquals](/vendor/raylib/#QuaternionEquals)
* [QuaternionInvert](/vendor/raylib/#QuaternionInvert)
* [QuaternionLength](/vendor/raylib/#QuaternionLength)
* [QuaternionLerp](/vendor/raylib/#QuaternionLerp)
* [QuaternionMultiply](/vendor/raylib/#QuaternionMultiply)
* [QuaternionNlerp](/vendor/raylib/#QuaternionNlerp)
* [QuaternionNormalize](/vendor/raylib/#QuaternionNormalize)
* [QuaternionScale](/vendor/raylib/#QuaternionScale)
* [QuaternionSlerp](/vendor/raylib/#QuaternionSlerp)
* [QuaternionSubtract](/vendor/raylib/#QuaternionSubtract)
* [QuaternionSubtractValue](/vendor/raylib/#QuaternionSubtractValue)
* [QuaternionToAxisAngle](/vendor/raylib/#QuaternionToAxisAngle)
* [QuaternionToEuler](/vendor/raylib/#QuaternionToEuler)
* [QuaternionToMatrix](/vendor/raylib/#QuaternionToMatrix)
* [QuaternionTransform](/vendor/raylib/#QuaternionTransform)
* [Vector3RotateByQuaternion](/vendor/raylib/#Vector3RotateByQuaternion)



##### Related Procedures With Returns

* [QuaternionFromAxisAngle](/vendor/raylib/#QuaternionFromAxisAngle)
* [QuaternionFromEuler](/vendor/raylib/#QuaternionFromEuler)
* [QuaternionFromMatrix](/vendor/raylib/#QuaternionFromMatrix)
* [QuaternionFromVector3ToVector3](/vendor/raylib/#QuaternionFromVector3ToVector3)
* [QuaternionIdentity](/vendor/raylib/#QuaternionIdentity)

### [Ray ¶](#Ray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L375)

```
Ray :: struct {
	position:  [3]f32,
	// Ray position (origin)
	direction: [3]f32,
}
```

 

Ray type (useful for raycast)




##### Related Procedures With Parameters

* [DrawRay](/vendor/raylib/#DrawRay)
* [GetRayCollisionBox](/vendor/raylib/#GetRayCollisionBox)
* [GetRayCollisionMesh](/vendor/raylib/#GetRayCollisionMesh)
* [GetRayCollisionQuad](/vendor/raylib/#GetRayCollisionQuad)
* [GetRayCollisionSphere](/vendor/raylib/#GetRayCollisionSphere)
* [GetRayCollisionTriangle](/vendor/raylib/#GetRayCollisionTriangle)



##### Related Procedures With Returns

* [GetScreenToWorldRay](/vendor/raylib/#GetScreenToWorldRay)
* [GetScreenToWorldRayEx](/vendor/raylib/#GetScreenToWorldRayEx)

### [RayCollision ¶](#RayCollision) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L381)

```
RayCollision :: struct {
	hit:      bool,
	// Did the ray hit something?
	distance: f32,
	// Distance to nearest hit
	point:    [3]f32,
	// Point of nearest hit
	normal:   [3]f32,
}
```

 

RayCollision, ray hit information




##### Related Procedures With Returns

* [GetRayCollisionBox](/vendor/raylib/#GetRayCollisionBox)
* [GetRayCollisionMesh](/vendor/raylib/#GetRayCollisionMesh)
* [GetRayCollisionQuad](/vendor/raylib/#GetRayCollisionQuad)
* [GetRayCollisionSphere](/vendor/raylib/#GetRayCollisionSphere)
* [GetRayCollisionTriangle](/vendor/raylib/#GetRayCollisionTriangle)

### [Rectangle ¶](#Rectangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L197)

```
Rectangle :: struct {
	x:      f32,
	// Rectangle top-left corner position x
	y:      f32,
	// Rectangle top-left corner position y
	width:  f32,
	// Rectangle width
	height: f32,
}
```

 

Rectangle type




##### Related Procedures With Parameters

* [CheckCollisionCircleRec](/vendor/raylib/#CheckCollisionCircleRec)
* [CheckCollisionPointRec](/vendor/raylib/#CheckCollisionPointRec)
* [CheckCollisionRecs](/vendor/raylib/#CheckCollisionRecs)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [DrawRectangleGradientEx](/vendor/raylib/#DrawRectangleGradientEx)
* [DrawRectangleLinesEx](/vendor/raylib/#DrawRectangleLinesEx)
* [DrawRectanglePro](/vendor/raylib/#DrawRectanglePro)
* [DrawRectangleRec](/vendor/raylib/#DrawRectangleRec)
* [DrawRectangleRounded](/vendor/raylib/#DrawRectangleRounded)
* [DrawRectangleRoundedLines](/vendor/raylib/#DrawRectangleRoundedLines)
* [DrawRectangleRoundedLinesEx](/vendor/raylib/#DrawRectangleRoundedLinesEx)
* [DrawTextureNPatch](/vendor/raylib/#DrawTextureNPatch)
* [DrawTexturePro](/vendor/raylib/#DrawTexturePro)
* [DrawTextureRec](/vendor/raylib/#DrawTextureRec)
* [GetCollisionRec](/vendor/raylib/#GetCollisionRec)
* [GuiButton](/vendor/raylib/#GuiButton)
* [GuiCheckBox](/vendor/raylib/#GuiCheckBox)
* [GuiColorBarAlpha](/vendor/raylib/#GuiColorBarAlpha)
* [GuiColorBarHue](/vendor/raylib/#GuiColorBarHue)
* [GuiColorPanel](/vendor/raylib/#GuiColorPanel)
* [GuiColorPanelHSV](/vendor/raylib/#GuiColorPanelHSV)
* [GuiColorPicker](/vendor/raylib/#GuiColorPicker)
* [GuiColorPickerHSV](/vendor/raylib/#GuiColorPickerHSV)
* [GuiComboBox](/vendor/raylib/#GuiComboBox)
* [GuiDropdownBox](/vendor/raylib/#GuiDropdownBox)
* [GuiDummyRec](/vendor/raylib/#GuiDummyRec)
* [GuiGrid](/vendor/raylib/#GuiGrid)
* [GuiGroupBox](/vendor/raylib/#GuiGroupBox)
* [GuiLabel](/vendor/raylib/#GuiLabel)
* [GuiLabelButton](/vendor/raylib/#GuiLabelButton)
* [GuiLine](/vendor/raylib/#GuiLine)
* [GuiListView](/vendor/raylib/#GuiListView)
* [GuiListViewEx](/vendor/raylib/#GuiListViewEx)
* [GuiMessageBox](/vendor/raylib/#GuiMessageBox)
* [GuiPanel](/vendor/raylib/#GuiPanel)
* [GuiProgressBar](/vendor/raylib/#GuiProgressBar)
* [GuiScrollPanel](/vendor/raylib/#GuiScrollPanel)
* [GuiSlider](/vendor/raylib/#GuiSlider)
* [GuiSliderBar](/vendor/raylib/#GuiSliderBar)
* [GuiSpinner](/vendor/raylib/#GuiSpinner)
* [GuiStatusBar](/vendor/raylib/#GuiStatusBar)
* [GuiTabBar](/vendor/raylib/#GuiTabBar)
* [GuiTextBox](/vendor/raylib/#GuiTextBox)
* [GuiTextInputBox](/vendor/raylib/#GuiTextInputBox)
* [GuiToggle](/vendor/raylib/#GuiToggle)
* [GuiToggleGroup](/vendor/raylib/#GuiToggleGroup)
* [GuiToggleSlider](/vendor/raylib/#GuiToggleSlider)
* [GuiValueBox](/vendor/raylib/#GuiValueBox)
* [GuiWindowBox](/vendor/raylib/#GuiWindowBox)
* [ImageCrop](/vendor/raylib/#ImageCrop)
* [ImageDraw](/vendor/raylib/#ImageDraw)
* [ImageDrawRectangleLines](/vendor/raylib/#ImageDrawRectangleLines)
* [ImageDrawRectangleRec](/vendor/raylib/#ImageDrawRectangleRec)
* [ImageFromImage](/vendor/raylib/#ImageFromImage)
* [SetShapesTexture](/vendor/raylib/#SetShapesTexture)
* [UpdateTextureRec](/vendor/raylib/#UpdateTextureRec)



##### Related Procedures With Returns

* [GetGlyphAtlasRec](/vendor/raylib/#GetGlyphAtlasRec)
* [GetImageAlphaBorder](/vendor/raylib/#GetImageAlphaBorder)
* [GetShapesTextureRectangle](/vendor/raylib/#GetShapesTextureRectangle)

### [RenderTexture ¶](#RenderTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L231)

```
RenderTexture :: struct {
	id:      u32,
	// OpenGL framebuffer object id
	texture: Texture,
	// Color buffer attachment texture
	depth:   Texture,
}
```

 

RenderTexture type, for texture rendering




##### Related Procedures With Parameters

* [BeginTextureMode](/vendor/raylib/#BeginTextureMode)
* [IsRenderTextureValid](/vendor/raylib/#IsRenderTextureValid)
* [UnloadRenderTexture](/vendor/raylib/#UnloadRenderTexture)



##### Related Procedures With Returns

* [LoadRenderTexture](/vendor/raylib/#LoadRenderTexture)

### [RenderTexture2D ¶](#RenderTexture2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L238)

```
RenderTexture2D :: RenderTexture
```

 

RenderTexture2D type, same as RenderTexture




##### Related Procedures With Parameters

* [BeginTextureMode](/vendor/raylib/#BeginTextureMode)
* [IsRenderTextureValid](/vendor/raylib/#IsRenderTextureValid)
* [UnloadRenderTexture](/vendor/raylib/#UnloadRenderTexture)



##### Related Procedures With Returns

* [LoadRenderTexture](/vendor/raylib/#LoadRenderTexture)

### [SaveFileDataCallback ¶](#SaveFileDataCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L888)

```
SaveFileDataCallback :: proc "c" (fileName: cstring, data: rawptr, dataSize: i32) -> bool
```

 

FileIO: Save binary data




##### Related Procedures With Parameters

* [SetSaveFileDataCallback](/vendor/raylib/#SetSaveFileDataCallback)

### [SaveFileTextCallback ¶](#SaveFileTextCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L890)

```
SaveFileTextCallback :: proc "c" (fileName: cstring, text: cstring) -> bool
```

 

FileIO: Save text data




##### Related Procedures With Parameters

* [SetSaveFileTextCallback](/vendor/raylib/#SetSaveFileTextCallback)

### [Shader ¶](#Shader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L317)

```
Shader :: struct {
	id:   u32,
	// Shader program id
	locs: [^]i32,
}
```

 

Shader type (generic)




##### Related Procedures With Parameters

* [BeginShaderMode](/vendor/raylib/#BeginShaderMode)
* [GetShaderLocation](/vendor/raylib/#GetShaderLocation)
* [GetShaderLocationAttrib](/vendor/raylib/#GetShaderLocationAttrib)
* [IsShaderValid](/vendor/raylib/#IsShaderValid)
* [SetShaderValue](/vendor/raylib/#SetShaderValue)
* [SetShaderValueMatrix](/vendor/raylib/#SetShaderValueMatrix)
* [SetShaderValueTexture](/vendor/raylib/#SetShaderValueTexture)
* [SetShaderValueV](/vendor/raylib/#SetShaderValueV)
* [UnloadShader](/vendor/raylib/#UnloadShader)



##### Related Procedures With Returns

* [LoadShader](/vendor/raylib/#LoadShader)
* [LoadShaderFromMemory](/vendor/raylib/#LoadShaderFromMemory)

### [ShaderLocationIndex ¶](#ShaderLocationIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L711)

```
ShaderLocationIndex :: enum i32 {
	VERTEX_POSITION    = 0, // Shader location: vertex attribute: position
	VERTEX_TEXCOORD01,      // Shader location: vertex attribute: texcoord01
	VERTEX_TEXCOORD02,      // Shader location: vertex attribute: texcoord02
	VERTEX_NORMAL,          // Shader location: vertex attribute: normal
	VERTEX_TANGENT,         // Shader location: vertex attribute: tangent
	VERTEX_COLOR,           // Shader location: vertex attribute: color
	MATRIX_MVP,             // Shader location: matrix uniform: model-view-projection
	MATRIX_VIEW,            // Shader location: matrix uniform: view (camera transform)
	MATRIX_PROJECTION,      // Shader location: matrix uniform: projection
	MATRIX_MODEL,           // Shader location: matrix uniform: model (transform)
	MATRIX_NORMAL,          // Shader location: matrix uniform: normal
	VECTOR_VIEW,            // Shader location: vector uniform: view
	COLOR_DIFFUSE,          // Shader location: vector uniform: diffuse color
	COLOR_SPECULAR,         // Shader location: vector uniform: specular color
	COLOR_AMBIENT,          // Shader location: vector uniform: ambient color
	MAP_ALBEDO,             // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
	MAP_METALNESS,          // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
	MAP_NORMAL,             // Shader location: sampler2d texture: normal
	MAP_ROUGHNESS,          // Shader location: sampler2d texture: roughness
	MAP_OCCLUSION,          // Shader location: sampler2d texture: occlusion
	MAP_EMISSION,           // Shader location: sampler2d texture: emission
	MAP_HEIGHT,             // Shader location: sampler2d texture: height
	MAP_CUBEMAP,            // Shader location: samplerCube texture: cubemap
	MAP_IRRADIANCE,         // Shader location: samplerCube texture: irradiance
	MAP_PREFILTER,          // Shader location: samplerCube texture: prefilter
	MAP_BRDF,               // Shader location: sampler2d texture: brdf
	VERTEX_BONEIDS,         // Shader location: vertex attribute: boneIds
	VERTEX_BONEWEIGHTS,     // Shader location: vertex attribute: boneWeights
	BONE_MATRICES,          // Shader location: array of matrices uniform: boneMatrices
}
```

 

Shader location index

### [ShaderUniformDataType ¶](#ShaderUniformDataType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L745)

```
ShaderUniformDataType :: enum i32 {
	FLOAT     = 0, // Shader uniform type: float
	VEC2,          // Shader uniform type: vec2 (2 float)
	VEC3,          // Shader uniform type: vec3 (3 float)
	VEC4,          // Shader uniform type: vec4 (4 float)
	INT,           // Shader uniform type: int
	IVEC2,         // Shader uniform type: ivec2 (2 int)
	IVEC3,         // Shader uniform type: ivec3 (3 int)
	IVEC4,         // Shader uniform type: ivec4 (4 int)
	SAMPLER2D,     // Shader uniform type: sampler2d
}
```

 

Shader uniform data type




##### Related Procedures With Parameters

* [SetShaderValue](/vendor/raylib/#SetShaderValue)
* [SetShaderValueV](/vendor/raylib/#SetShaderValueV)

### [Sound ¶](#Sound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L415)

```
Sound :: struct {
	using stream: AudioStream,
	// Audio stream
	frameCount: u32,
}
```

 

Sound source type




##### Related Procedures With Parameters

* [IsSoundPlaying](/vendor/raylib/#IsSoundPlaying)
* [IsSoundValid](/vendor/raylib/#IsSoundValid)
* [LoadSoundAlias](/vendor/raylib/#LoadSoundAlias)
* [PauseSound](/vendor/raylib/#PauseSound)
* [PlaySound](/vendor/raylib/#PlaySound)
* [ResumeSound](/vendor/raylib/#ResumeSound)
* [SetSoundPan](/vendor/raylib/#SetSoundPan)
* [SetSoundPitch](/vendor/raylib/#SetSoundPitch)
* [SetSoundVolume](/vendor/raylib/#SetSoundVolume)
* [StopSound](/vendor/raylib/#StopSound)
* [UnloadSound](/vendor/raylib/#UnloadSound)
* [UnloadSoundAlias](/vendor/raylib/#UnloadSoundAlias)
* [UpdateSound](/vendor/raylib/#UpdateSound)



##### Related Procedures With Returns

* [LoadSound](/vendor/raylib/#LoadSound)
* [LoadSoundFromWave](/vendor/raylib/#LoadSoundFromWave)



###### Procedures Through `using` From [AudioStream](/vendor/raylib/#AudioStream)

* [AttachAudioStreamProcessor](/vendor/raylib/#AttachAudioStreamProcessor)
* [DetachAudioStreamProcessor](/vendor/raylib/#DetachAudioStreamProcessor)
* [IsAudioStreamPlaying](/vendor/raylib/#IsAudioStreamPlaying)
* [IsAudioStreamProcessed](/vendor/raylib/#IsAudioStreamProcessed)
* [IsAudioStreamValid](/vendor/raylib/#IsAudioStreamValid)
* [PauseAudioStream](/vendor/raylib/#PauseAudioStream)
* [PlayAudioStream](/vendor/raylib/#PlayAudioStream)
* [ResumeAudioStream](/vendor/raylib/#ResumeAudioStream)
* [SetAudioStreamCallback](/vendor/raylib/#SetAudioStreamCallback)
* [SetAudioStreamPan](/vendor/raylib/#SetAudioStreamPan)
* [SetAudioStreamPitch](/vendor/raylib/#SetAudioStreamPitch)
* [SetAudioStreamVolume](/vendor/raylib/#SetAudioStreamVolume)
* [StopAudioStream](/vendor/raylib/#StopAudioStream)
* [UnloadAudioStream](/vendor/raylib/#UnloadAudioStream)
* [UpdateAudioStream](/vendor/raylib/#UpdateAudioStream)

### [Texture ¶](#Texture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L216)

```
Texture :: struct {
	id:      u32,
	// OpenGL texture id
	width:   i32,
	// Texture base width
	height:  i32,
	// Texture base height
	mipmaps: i32,
	// Mipmap levels, 1 by default
	format:  PixelFormat,
}
```

 

Texture type
NOTE: Data stored in GPU memory




##### Related Procedures With Parameters

* [DrawBillboard](/vendor/raylib/#DrawBillboard)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [DrawTexture](/vendor/raylib/#DrawTexture)
* [DrawTextureEx](/vendor/raylib/#DrawTextureEx)
* [DrawTextureNPatch](/vendor/raylib/#DrawTextureNPatch)
* [DrawTexturePro](/vendor/raylib/#DrawTexturePro)
* [DrawTextureRec](/vendor/raylib/#DrawTextureRec)
* [DrawTextureV](/vendor/raylib/#DrawTextureV)
* [GenTextureMipmaps](/vendor/raylib/#GenTextureMipmaps)
* [IsTextureValid](/vendor/raylib/#IsTextureValid)
* [LoadImageFromTexture](/vendor/raylib/#LoadImageFromTexture)
* [SetMaterialTexture](/vendor/raylib/#SetMaterialTexture)
* [SetShaderValueTexture](/vendor/raylib/#SetShaderValueTexture)
* [SetShapesTexture](/vendor/raylib/#SetShapesTexture)
* [SetTextureFilter](/vendor/raylib/#SetTextureFilter)
* [SetTextureWrap](/vendor/raylib/#SetTextureWrap)
* [UnloadTexture](/vendor/raylib/#UnloadTexture)
* [UpdateTexture](/vendor/raylib/#UpdateTexture)
* [UpdateTextureRec](/vendor/raylib/#UpdateTextureRec)



##### Related Procedures With Returns

* [GetShapesTexture](/vendor/raylib/#GetShapesTexture)
* [LoadTexture](/vendor/raylib/#LoadTexture)
* [LoadTextureCubemap](/vendor/raylib/#LoadTextureCubemap)
* [LoadTextureFromImage](/vendor/raylib/#LoadTextureFromImage)

### [Texture2D ¶](#Texture2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L225)

```
Texture2D :: Texture
```

 

Texture2D type, same as Texture




##### Related Procedures With Parameters

* [DrawBillboard](/vendor/raylib/#DrawBillboard)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [DrawTexture](/vendor/raylib/#DrawTexture)
* [DrawTextureEx](/vendor/raylib/#DrawTextureEx)
* [DrawTextureNPatch](/vendor/raylib/#DrawTextureNPatch)
* [DrawTexturePro](/vendor/raylib/#DrawTexturePro)
* [DrawTextureRec](/vendor/raylib/#DrawTextureRec)
* [DrawTextureV](/vendor/raylib/#DrawTextureV)
* [GenTextureMipmaps](/vendor/raylib/#GenTextureMipmaps)
* [IsTextureValid](/vendor/raylib/#IsTextureValid)
* [LoadImageFromTexture](/vendor/raylib/#LoadImageFromTexture)
* [SetMaterialTexture](/vendor/raylib/#SetMaterialTexture)
* [SetShaderValueTexture](/vendor/raylib/#SetShaderValueTexture)
* [SetShapesTexture](/vendor/raylib/#SetShapesTexture)
* [SetTextureFilter](/vendor/raylib/#SetTextureFilter)
* [SetTextureWrap](/vendor/raylib/#SetTextureWrap)
* [UnloadTexture](/vendor/raylib/#UnloadTexture)
* [UpdateTexture](/vendor/raylib/#UpdateTexture)
* [UpdateTextureRec](/vendor/raylib/#UpdateTextureRec)



##### Related Procedures With Returns

* [GetShapesTexture](/vendor/raylib/#GetShapesTexture)
* [LoadTexture](/vendor/raylib/#LoadTexture)
* [LoadTextureCubemap](/vendor/raylib/#LoadTextureCubemap)
* [LoadTextureFromImage](/vendor/raylib/#LoadTextureFromImage)

### [TextureCubemap ¶](#TextureCubemap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L228)

```
TextureCubemap :: Texture
```

 

TextureCubemap type, actually, same as Texture




##### Related Procedures With Parameters

* [DrawBillboard](/vendor/raylib/#DrawBillboard)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [DrawTexture](/vendor/raylib/#DrawTexture)
* [DrawTextureEx](/vendor/raylib/#DrawTextureEx)
* [DrawTextureNPatch](/vendor/raylib/#DrawTextureNPatch)
* [DrawTexturePro](/vendor/raylib/#DrawTexturePro)
* [DrawTextureRec](/vendor/raylib/#DrawTextureRec)
* [DrawTextureV](/vendor/raylib/#DrawTextureV)
* [GenTextureMipmaps](/vendor/raylib/#GenTextureMipmaps)
* [IsTextureValid](/vendor/raylib/#IsTextureValid)
* [LoadImageFromTexture](/vendor/raylib/#LoadImageFromTexture)
* [SetMaterialTexture](/vendor/raylib/#SetMaterialTexture)
* [SetShaderValueTexture](/vendor/raylib/#SetShaderValueTexture)
* [SetShapesTexture](/vendor/raylib/#SetShapesTexture)
* [SetTextureFilter](/vendor/raylib/#SetTextureFilter)
* [SetTextureWrap](/vendor/raylib/#SetTextureWrap)
* [UnloadTexture](/vendor/raylib/#UnloadTexture)
* [UpdateTexture](/vendor/raylib/#UpdateTexture)
* [UpdateTextureRec](/vendor/raylib/#UpdateTextureRec)



##### Related Procedures With Returns

* [GetShapesTexture](/vendor/raylib/#GetShapesTexture)
* [LoadTexture](/vendor/raylib/#LoadTexture)
* [LoadTextureCubemap](/vendor/raylib/#LoadTextureCubemap)
* [LoadTextureFromImage](/vendor/raylib/#LoadTextureFromImage)

### [TextureFilter ¶](#TextureFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L790)

```
TextureFilter :: enum i32 {
	POINT           = 0, // No filter, just pixel approximation
	BILINEAR,            // Linear filtering
	TRILINEAR,           // Trilinear filtering (linear with mipmaps)
	ANISOTROPIC_4X,      // Anisotropic filtering 4x
	ANISOTROPIC_8X,      // Anisotropic filtering 8x
	ANISOTROPIC_16X,     // Anisotropic filtering 16x
}
```

 

Texture parameters: filter mode
NOTE 1: Filtering considers mipmaps if available in the texture
NOTE 2: Filter is accordingly set for minification and magnification




##### Related Procedures With Parameters

* [SetTextureFilter](/vendor/raylib/#SetTextureFilter)

### [TextureWrap ¶](#TextureWrap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L800)

```
TextureWrap :: enum i32 {
	REPEAT        = 0, // Repeats texture in tiled mode
	CLAMP,             // Clamps texture to edge pixel in tiled mode
	MIRROR_REPEAT,     // Mirrors and repeats the texture in tiled mode
	MIRROR_CLAMP,      // Mirrors and clamps to border the texture in tiled mode
}
```

 

Texture parameters: wrap mode




##### Related Procedures With Parameters

* [SetTextureWrap](/vendor/raylib/#SetTextureWrap)

### [TraceLogCallback ¶](#TraceLogCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L886)

```
TraceLogCallback :: proc "c" (logLevel: TraceLogLevel, text: cstring, args: ^c.va_list)
```

 

Callbacks to hook some internal functions
WARNING: This callbacks are intended for advanced users




##### Related Procedures With Parameters

* [SetTraceLogCallback](/vendor/raylib/#SetTraceLogCallback)

### [TraceLogLevel ¶](#TraceLogLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L505)

```
TraceLogLevel :: enum i32 {
	ALL     = 0, // Display all logs
	TRACE,       // Trace logging, intended for internal use only
	DEBUG,       // Debug logging, used for internal debugging, it should be disabled on release builds
	INFO,        // Info logging, used for program execution info
	WARNING,     // Warning logging, used on recoverable failures
	ERROR,       // Error logging, used on unrecoverable failures
	FATAL,       // Fatal logging, used to abort program: exit(EXIT_FAILURE)
	NONE,        // Disable logging
}
```

 

Trace log level




##### Related Procedures With Parameters

* [SetTraceLogLevel](/vendor/raylib/#SetTraceLogLevel)
* [TraceLog](/vendor/raylib/#TraceLog)

### [Transform ¶](#Transform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L337)

```
Transform :: struct {
	translation: [3]f32,
	// Translation
	rotation:    quaternion128,
	// Rotation
	scale:       [3]f32,
}
```

 

Transformation properties

### [Vector2 ¶](#Vector2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L178)

```
Vector2 :: [2]f32
```

 

Vector2 type




##### Related Procedures With Parameters

* [CheckCollisionCircleLine](/vendor/raylib/#CheckCollisionCircleLine)
* [CheckCollisionCircleRec](/vendor/raylib/#CheckCollisionCircleRec)
* [CheckCollisionCircles](/vendor/raylib/#CheckCollisionCircles)
* [CheckCollisionLines](/vendor/raylib/#CheckCollisionLines)
* [CheckCollisionPointCircle](/vendor/raylib/#CheckCollisionPointCircle)
* [CheckCollisionPointLine](/vendor/raylib/#CheckCollisionPointLine)
* [CheckCollisionPointPoly](/vendor/raylib/#CheckCollisionPointPoly)
* [CheckCollisionPointRec](/vendor/raylib/#CheckCollisionPointRec)
* [CheckCollisionPointTriangle](/vendor/raylib/#CheckCollisionPointTriangle)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [DrawCircleLinesV](/vendor/raylib/#DrawCircleLinesV)
* [DrawCircleSector](/vendor/raylib/#DrawCircleSector)
* [DrawCircleSectorLines](/vendor/raylib/#DrawCircleSectorLines)
* [DrawCircleV](/vendor/raylib/#DrawCircleV)
* [DrawLineBezier](/vendor/raylib/#DrawLineBezier)
* [DrawLineEx](/vendor/raylib/#DrawLineEx)
* [DrawLineStrip](/vendor/raylib/#DrawLineStrip)
* [DrawLineV](/vendor/raylib/#DrawLineV)
* [DrawPixelV](/vendor/raylib/#DrawPixelV)
* [DrawPlane](/vendor/raylib/#DrawPlane)
* [DrawPoly](/vendor/raylib/#DrawPoly)
* [DrawPolyLines](/vendor/raylib/#DrawPolyLines)
* [DrawPolyLinesEx](/vendor/raylib/#DrawPolyLinesEx)
* [DrawRectanglePro](/vendor/raylib/#DrawRectanglePro)
* [DrawRectangleV](/vendor/raylib/#DrawRectangleV)
* [DrawRing](/vendor/raylib/#DrawRing)
* [DrawRingLines](/vendor/raylib/#DrawRingLines)
* [DrawSplineBasis](/vendor/raylib/#DrawSplineBasis)
* [DrawSplineBezierCubic](/vendor/raylib/#DrawSplineBezierCubic)
* [DrawSplineBezierQuadratic](/vendor/raylib/#DrawSplineBezierQuadratic)
* [DrawSplineCatmullRom](/vendor/raylib/#DrawSplineCatmullRom)
* [DrawSplineLinear](/vendor/raylib/#DrawSplineLinear)
* [DrawSplineSegmentBasis](/vendor/raylib/#DrawSplineSegmentBasis)
* [DrawSplineSegmentBezierCubic](/vendor/raylib/#DrawSplineSegmentBezierCubic)
* [DrawSplineSegmentBezierQuadratic](/vendor/raylib/#DrawSplineSegmentBezierQuadratic)
* [DrawSplineSegmentCatmullRom](/vendor/raylib/#DrawSplineSegmentCatmullRom)
* [DrawSplineSegmentLinear](/vendor/raylib/#DrawSplineSegmentLinear)
* [DrawTextCodepoint](/vendor/raylib/#DrawTextCodepoint)
* [DrawTextCodepoints](/vendor/raylib/#DrawTextCodepoints)
* [DrawTextEx](/vendor/raylib/#DrawTextEx)
* [DrawTextPro](/vendor/raylib/#DrawTextPro)
* [DrawTextureEx](/vendor/raylib/#DrawTextureEx)
* [DrawTextureNPatch](/vendor/raylib/#DrawTextureNPatch)
* [DrawTexturePro](/vendor/raylib/#DrawTexturePro)
* [DrawTextureRec](/vendor/raylib/#DrawTextureRec)
* [DrawTextureV](/vendor/raylib/#DrawTextureV)
* [DrawTriangle](/vendor/raylib/#DrawTriangle)
* [DrawTriangleFan](/vendor/raylib/#DrawTriangleFan)
* [DrawTriangleLines](/vendor/raylib/#DrawTriangleLines)
* [DrawTriangleStrip](/vendor/raylib/#DrawTriangleStrip)
* [GetScreenToWorld2D](/vendor/raylib/#GetScreenToWorld2D)
* [GetScreenToWorldRay](/vendor/raylib/#GetScreenToWorldRay)
* [GetScreenToWorldRayEx](/vendor/raylib/#GetScreenToWorldRayEx)
* [GetSplinePointBasis](/vendor/raylib/#GetSplinePointBasis)
* [GetSplinePointBezierCubic](/vendor/raylib/#GetSplinePointBezierCubic)
* [GetSplinePointBezierQuad](/vendor/raylib/#GetSplinePointBezierQuad)
* [GetSplinePointCatmullRom](/vendor/raylib/#GetSplinePointCatmullRom)
* [GetSplinePointLinear](/vendor/raylib/#GetSplinePointLinear)
* [GetWorldToScreen2D](/vendor/raylib/#GetWorldToScreen2D)
* [GuiGrid](/vendor/raylib/#GuiGrid)
* [GuiScrollPanel](/vendor/raylib/#GuiScrollPanel)
* [ImageDrawCircleLinesV](/vendor/raylib/#ImageDrawCircleLinesV)
* [ImageDrawCircleV](/vendor/raylib/#ImageDrawCircleV)
* [ImageDrawLineEx](/vendor/raylib/#ImageDrawLineEx)
* [ImageDrawLineV](/vendor/raylib/#ImageDrawLineV)
* [ImageDrawPixelV](/vendor/raylib/#ImageDrawPixelV)
* [ImageDrawRectangleV](/vendor/raylib/#ImageDrawRectangleV)
* [ImageDrawTextEx](/vendor/raylib/#ImageDrawTextEx)
* [ImageDrawTriangle](/vendor/raylib/#ImageDrawTriangle)
* [ImageDrawTriangleEx](/vendor/raylib/#ImageDrawTriangleEx)
* [ImageDrawTriangleFan](/vendor/raylib/#ImageDrawTriangleFan)
* [ImageDrawTriangleLines](/vendor/raylib/#ImageDrawTriangleLines)
* [ImageDrawTriangleStrip](/vendor/raylib/#ImageDrawTriangleStrip)
* [Vector2Add](/vendor/raylib/#Vector2Add)
* [Vector2AddValue](/vendor/raylib/#Vector2AddValue)
* [Vector2Angle](/vendor/raylib/#Vector2Angle)
* [Vector2Clamp](/vendor/raylib/#Vector2Clamp)
* [Vector2ClampValue](/vendor/raylib/#Vector2ClampValue)
* [Vector2Distance](/vendor/raylib/#Vector2Distance)
* [Vector2DistanceSqrt](/vendor/raylib/#Vector2DistanceSqrt)
* [Vector2Divide](/vendor/raylib/#Vector2Divide)
* [Vector2DotProduct](/vendor/raylib/#Vector2DotProduct)
* [Vector2Equals](/vendor/raylib/#Vector2Equals)
* [Vector2Invert](/vendor/raylib/#Vector2Invert)
* [Vector2Length](/vendor/raylib/#Vector2Length)
* [Vector2LengthSqr](/vendor/raylib/#Vector2LengthSqr)
* [Vector2Lerp](/vendor/raylib/#Vector2Lerp)
* [Vector2LineAngle](/vendor/raylib/#Vector2LineAngle)
* [Vector2MoveTowards](/vendor/raylib/#Vector2MoveTowards)
* [Vector2Multiply](/vendor/raylib/#Vector2Multiply)
* [Vector2Negate](/vendor/raylib/#Vector2Negate)
* [Vector2Normalize](/vendor/raylib/#Vector2Normalize)
* [Vector2Reflect](/vendor/raylib/#Vector2Reflect)
* [Vector2Rotate](/vendor/raylib/#Vector2Rotate)
* [Vector2Scale](/vendor/raylib/#Vector2Scale)
* [Vector2Subtract](/vendor/raylib/#Vector2Subtract)
* [Vector2SubtractValue](/vendor/raylib/#Vector2SubtractValue)
* [Vector2Transform](/vendor/raylib/#Vector2Transform)



##### Related Procedures With Returns

* [GetGestureDragVector](/vendor/raylib/#GetGestureDragVector)
* [GetGesturePinchVector](/vendor/raylib/#GetGesturePinchVector)
* [GetMonitorPosition](/vendor/raylib/#GetMonitorPosition)
* [GetMouseDelta](/vendor/raylib/#GetMouseDelta)
* [GetMousePosition](/vendor/raylib/#GetMousePosition)
* [GetMouseWheelMoveV](/vendor/raylib/#GetMouseWheelMoveV)
* [GetTouchPosition](/vendor/raylib/#GetTouchPosition)
* [GetWindowPosition](/vendor/raylib/#GetWindowPosition)
* [GetWindowScaleDPI](/vendor/raylib/#GetWindowScaleDPI)
* [GetWorldToScreen](/vendor/raylib/#GetWorldToScreen)
* [GetWorldToScreenEx](/vendor/raylib/#GetWorldToScreenEx)
* [MeasureTextEx](/vendor/raylib/#MeasureTextEx)
* [Vector2One](/vendor/raylib/#Vector2One)
* [Vector2Zero](/vendor/raylib/#Vector2Zero)

### [Vector3 ¶](#Vector3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L180)

```
Vector3 :: [3]f32
```

 

Vector3 type




##### Related Procedures With Parameters

* [CheckCollisionBoxSphere](/vendor/raylib/#CheckCollisionBoxSphere)
* [CheckCollisionSpheres](/vendor/raylib/#CheckCollisionSpheres)
* [DrawBillboard](/vendor/raylib/#DrawBillboard)
* [DrawBillboardPro](/vendor/raylib/#DrawBillboardPro)
* [DrawBillboardRec](/vendor/raylib/#DrawBillboardRec)
* [DrawCapsule](/vendor/raylib/#DrawCapsule)
* [DrawCapsuleWires](/vendor/raylib/#DrawCapsuleWires)
* [DrawCircle3D](/vendor/raylib/#DrawCircle3D)
* [DrawCube](/vendor/raylib/#DrawCube)
* [DrawCubeV](/vendor/raylib/#DrawCubeV)
* [DrawCubeWires](/vendor/raylib/#DrawCubeWires)
* [DrawCubeWiresV](/vendor/raylib/#DrawCubeWiresV)
* [DrawCylinder](/vendor/raylib/#DrawCylinder)
* [DrawCylinderEx](/vendor/raylib/#DrawCylinderEx)
* [DrawCylinderWires](/vendor/raylib/#DrawCylinderWires)
* [DrawCylinderWiresEx](/vendor/raylib/#DrawCylinderWiresEx)
* [DrawLine3D](/vendor/raylib/#DrawLine3D)
* [DrawModel](/vendor/raylib/#DrawModel)
* [DrawModelEx](/vendor/raylib/#DrawModelEx)
* [DrawModelPoints](/vendor/raylib/#DrawModelPoints)
* [DrawModelPointsEx](/vendor/raylib/#DrawModelPointsEx)
* [DrawModelWires](/vendor/raylib/#DrawModelWires)
* [DrawModelWiresEx](/vendor/raylib/#DrawModelWiresEx)
* [DrawPlane](/vendor/raylib/#DrawPlane)
* [DrawPoint3D](/vendor/raylib/#DrawPoint3D)
* [DrawSphere](/vendor/raylib/#DrawSphere)
* [DrawSphereEx](/vendor/raylib/#DrawSphereEx)
* [DrawSphereWires](/vendor/raylib/#DrawSphereWires)
* [DrawTriangle3D](/vendor/raylib/#DrawTriangle3D)
* [DrawTriangleStrip3D](/vendor/raylib/#DrawTriangleStrip3D)
* [GenMeshCubicmap](/vendor/raylib/#GenMeshCubicmap)
* [GenMeshHeightmap](/vendor/raylib/#GenMeshHeightmap)
* [GetRayCollisionQuad](/vendor/raylib/#GetRayCollisionQuad)
* [GetRayCollisionSphere](/vendor/raylib/#GetRayCollisionSphere)
* [GetRayCollisionTriangle](/vendor/raylib/#GetRayCollisionTriangle)
* [GetWorldToScreen](/vendor/raylib/#GetWorldToScreen)
* [GetWorldToScreenEx](/vendor/raylib/#GetWorldToScreenEx)
* [GuiColorPanelHSV](/vendor/raylib/#GuiColorPanelHSV)
* [GuiColorPickerHSV](/vendor/raylib/#GuiColorPickerHSV)
* [MatrixLookAt](/vendor/raylib/#MatrixLookAt)
* [MatrixRotate](/vendor/raylib/#MatrixRotate)
* [MatrixRotateXYZ](/vendor/raylib/#MatrixRotateXYZ)
* [MatrixRotateZYX](/vendor/raylib/#MatrixRotateZYX)
* [QuaternionFromAxisAngle](/vendor/raylib/#QuaternionFromAxisAngle)
* [QuaternionFromVector3ToVector3](/vendor/raylib/#QuaternionFromVector3ToVector3)
* [UpdateCameraPro](/vendor/raylib/#UpdateCameraPro)
* [Vector3Add](/vendor/raylib/#Vector3Add)
* [Vector3AddValue](/vendor/raylib/#Vector3AddValue)
* [Vector3Angle](/vendor/raylib/#Vector3Angle)
* [Vector3Barycenter](/vendor/raylib/#Vector3Barycenter)
* [Vector3Clamp](/vendor/raylib/#Vector3Clamp)
* [Vector3ClampValue](/vendor/raylib/#Vector3ClampValue)
* [Vector3CrossProduct](/vendor/raylib/#Vector3CrossProduct)
* [Vector3Distance](/vendor/raylib/#Vector3Distance)
* [Vector3DistanceSqrt](/vendor/raylib/#Vector3DistanceSqrt)
* [Vector3Divide](/vendor/raylib/#Vector3Divide)
* [Vector3DotProduct](/vendor/raylib/#Vector3DotProduct)
* [Vector3Equals](/vendor/raylib/#Vector3Equals)
* [Vector3Invert](/vendor/raylib/#Vector3Invert)
* [Vector3Length](/vendor/raylib/#Vector3Length)
* [Vector3LengthSqr](/vendor/raylib/#Vector3LengthSqr)
* [Vector3Lerp](/vendor/raylib/#Vector3Lerp)
* [Vector3LineAngle](/vendor/raylib/#Vector3LineAngle)
* [Vector3Max](/vendor/raylib/#Vector3Max)
* [Vector3Min](/vendor/raylib/#Vector3Min)
* [Vector3MoveTowards](/vendor/raylib/#Vector3MoveTowards)
* [Vector3Multiply](/vendor/raylib/#Vector3Multiply)
* [Vector3Negate](/vendor/raylib/#Vector3Negate)
* [Vector3Normalize](/vendor/raylib/#Vector3Normalize)
* [Vector3OrthoNormalize](/vendor/raylib/#Vector3OrthoNormalize)
* [Vector3Project](/vendor/raylib/#Vector3Project)
* [Vector3Reflect](/vendor/raylib/#Vector3Reflect)
* [Vector3Refract](/vendor/raylib/#Vector3Refract)
* [Vector3Reject](/vendor/raylib/#Vector3Reject)
* [Vector3RotateByAxisAngle](/vendor/raylib/#Vector3RotateByAxisAngle)
* [Vector3RotateByQuaternion](/vendor/raylib/#Vector3RotateByQuaternion)
* [Vector3Scale](/vendor/raylib/#Vector3Scale)
* [Vector3Subtract](/vendor/raylib/#Vector3Subtract)
* [Vector3SubtractValue](/vendor/raylib/#Vector3SubtractValue)
* [Vector3Transform](/vendor/raylib/#Vector3Transform)
* [Vector3Unproject](/vendor/raylib/#Vector3Unproject)



##### Related Procedures With Returns

* [ColorToHSV](/vendor/raylib/#ColorToHSV)
* [GetCameraForward](/vendor/raylib/#GetCameraForward)
* [GetCameraRight](/vendor/raylib/#GetCameraRight)
* [GetCameraUp](/vendor/raylib/#GetCameraUp)
* [QuaternionToAxisAngle](/vendor/raylib/#QuaternionToAxisAngle)
* [QuaternionToEuler](/vendor/raylib/#QuaternionToEuler)
* [Vector3One](/vendor/raylib/#Vector3One)
* [Vector3Zero](/vendor/raylib/#Vector3Zero)

### [Vector4 ¶](#Vector4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L182)

```
Vector4 :: [4]f32
```

 

Vector4 type




##### Related Procedures With Parameters

* [ColorFromNormalized](/vendor/raylib/#ColorFromNormalized)



##### Related Procedures With Returns

* [ColorNormalize](/vendor/raylib/#ColorNormalize)

### [VrDeviceInfo ¶](#VrDeviceInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L432)

```
VrDeviceInfo :: struct {
	hResolution:            i32,
	// Horizontal resolution in pixels
	vResolution:            i32,
	// Vertical resolution in pixels
	hScreenSize:            f32,
	// Horizontal size in meters
	vScreenSize:            f32,
	// Vertical size in meters
	eyeToScreenDistance:    f32,
	// Distance between eye and display in meters
	lensSeparationDistance: f32,
	// Lens separation distance in meters
	interpupillaryDistance: f32,
	// IPD (distance between pupils) in meters
	lensDistortionValues:   [4]f32,
	// Lens distortion constant parameters
	chromaAbCorrection:     [4]f32,
}
```

 

Head-Mounted-Display device parameters




##### Related Procedures With Parameters

* [LoadVrStereoConfig](/vendor/raylib/#LoadVrStereoConfig)

### [VrStereoConfig ¶](#VrStereoConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L445)

```
VrStereoConfig :: struct #align (4) {
	projection:        [2]matrix[4, 4]f32,
	// VR projection matrices (per eye)
	viewOffset:        [2]matrix[4, 4]f32,
	// VR view offset matrices (per eye)
	leftLensCenter:    [2]f32,
	// VR left lens center
	rightLensCenter:   [2]f32,
	// VR right lens center
	leftScreenCenter:  [2]f32,
	// VR left screen center
	rightScreenCenter: [2]f32,
	// VR right screen center
	scale:             [2]f32,
	// VR distortion scale
	scaleIn:           [2]f32,
}
```

 

VR Stereo rendering configuration for simulator




##### Related Procedures With Parameters

* [BeginVrStereoMode](/vendor/raylib/#BeginVrStereoMode)
* [UnloadVrStereoConfig](/vendor/raylib/#UnloadVrStereoConfig)



##### Related Procedures With Returns

* [LoadVrStereoConfig](/vendor/raylib/#LoadVrStereoConfig)

### [Wave ¶](#Wave) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L395)

```
Wave :: struct {
	frameCount: u32,
	// Total number of frames (considering channels)
	sampleRate: u32,
	// Frequency (samples per second)
	sampleSize: u32,
	// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	channels:   u32,
	// Number of channels (1-mono, 2-stereo)
	data:       rawptr,
}
```

 

Wave type, defines audio wave data




##### Related Procedures With Parameters

* [ExportWave](/vendor/raylib/#ExportWave)
* [ExportWaveAsCode](/vendor/raylib/#ExportWaveAsCode)
* [IsWaveValid](/vendor/raylib/#IsWaveValid)
* [LoadSoundFromWave](/vendor/raylib/#LoadSoundFromWave)
* [LoadWaveSamples](/vendor/raylib/#LoadWaveSamples)
* [UnloadWave](/vendor/raylib/#UnloadWave)
* [WaveCopy](/vendor/raylib/#WaveCopy)
* [WaveCrop](/vendor/raylib/#WaveCrop)
* [WaveFormat](/vendor/raylib/#WaveFormat)



##### Related Procedures With Returns

* [LoadWave](/vendor/raylib/#LoadWave)
* [LoadWaveFromMemory](/vendor/raylib/#LoadWaveFromMemory)

## Constants

### [BEIGE ¶](#BEIGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L167)

```
BEIGE :: Color{211, 176, 131, 255}
```

 

Beige

### [BLACK ¶](#BLACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L172)

```
BLACK :: Color{0, 0, 0, 255}
```

 

Black

### [BLANK ¶](#BLANK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L173)

```
BLANK :: Color{0, 0, 0, 0}
```

 

Blank (Transparent)

### [BLUE ¶](#BLUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L162)

```
BLUE :: Color{0, 121, 241, 255}
```

 

Blue

### [BROWN ¶](#BROWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L168)

```
BROWN :: Color{127, 106, 79, 255}
```

 

Brown

### [CAMERA\_MOUSE\_MOVE\_SENSITIVITY ¶](#CAMERA_MOUSE_MOVE_SENSITIVITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L857)

```
CAMERA_MOUSE_MOVE_SENSITIVITY :: 0.003
```

 

Camera mouse movement sensitivity

### [CAMERA\_MOVE\_SPEED ¶](#CAMERA_MOVE_SPEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L852)

```
CAMERA_MOVE_SPEED :: 5.4
```

 

Camera speed values

### [CAMERA\_ORBITAL\_SPEED ¶](#CAMERA_ORBITAL_SPEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L860)

```
CAMERA_ORBITAL_SPEED :: 0.5
```

 

Camera orbital speed in CAMERA\_ORBITAL mode

### [CAMERA\_PAN\_SPEED ¶](#CAMERA_PAN_SPEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L854)

```
CAMERA_PAN_SPEED :: 0.2
```

### [CAMERA\_ROTATION\_SPEED ¶](#CAMERA_ROTATION_SPEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L853)

```
CAMERA_ROTATION_SPEED :: 0.03
```

### [DARKBLUE ¶](#DARKBLUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L163)

```
DARKBLUE :: Color{0, 82, 172, 255}
```

 

Dark Blue

### [DARKBROWN ¶](#DARKBROWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L169)

```
DARKBROWN :: Color{76, 63, 47, 255}
```

 

Dark Brown

### [DARKGRAY ¶](#DARKGRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L151)

```
DARKGRAY :: Color{80, 80, 80, 255}
```

 

Dark Gray

### [DARKGREEN ¶](#DARKGREEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L160)

```
DARKGREEN :: Color{0, 117, 44, 255}
```

 

Dark Green

### [DARKPURPLE ¶](#DARKPURPLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L166)

```
DARKPURPLE :: Color{112, 31, 126, 255}
```

 

Dark Purple

### [DEG2RAD ¶](#DEG2RAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L143)

```
DEG2RAD :: PI / 180.0
```

### [EPSILON ¶](#EPSILON) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L6)

```
EPSILON :: 0.000001
```

### [GOLD ¶](#GOLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L153)

```
GOLD :: Color{255, 203, 0, 255}
```

 

Gold

### [GRAY ¶](#GRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L150)

```
GRAY :: Color{130, 130, 130, 255}
```

 

Gray

### [GREEN ¶](#GREEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L158)

```
GREEN :: Color{0, 228, 48, 255}
```

 

Green

### [LIGHTGRAY ¶](#LIGHTGRAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L149)

```
LIGHTGRAY :: Color{200, 200, 200, 255}
```

 

Some Basic Colors
NOTE: Custom raylib color palette for amazing visuals on WHITE background

### [LIME ¶](#LIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L159)

```
LIME :: Color{0, 158, 47, 255}
```

 

Lime

### [MAGENTA ¶](#MAGENTA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L174)

```
MAGENTA :: Color{255, 0, 255, 255}
```

 

Magenta

### [MAROON ¶](#MAROON) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L157)

```
MAROON :: Color{190, 33, 55, 255}
```

 

Maroon

### [MAX\_MATERIAL\_MAPS ¶](#MAX_MATERIAL_MAPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L96)

```
MAX_MATERIAL_MAPS :: #config(RAYLIB_MAX_MATERIAL_MAPS, 12)
```

### [MAX\_TEXTFORMAT\_BUFFERS ¶](#MAX_TEXTFORMAT_BUFFERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L94)

```
MAX_TEXTFORMAT_BUFFERS :: #config(RAYLIB_MAX_TEXTFORMAT_BUFFERS, 4)
```

### [MAX\_TEXT\_BUFFER\_LENGTH ¶](#MAX_TEXT_BUFFER_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L95)

```
MAX_TEXT_BUFFER_LENGTH :: #config(RAYLIB_MAX_TEXT_BUFFER_LENGTH, 1024)
```

### [ORANGE ¶](#ORANGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L154)

```
ORANGE :: Color{255, 161, 0, 255}
```

 

Orange

### [PI ¶](#PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L142)

```
PI :: 3.14159265358979323846
```

### [PINK ¶](#PINK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L155)

```
PINK :: Color{255, 109, 194, 255}
```

 

Pink

### [PURPLE ¶](#PURPLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L164)

```
PURPLE :: Color{200, 122, 255, 255}
```

 

Purple

### [RAD2DEG ¶](#RAD2DEG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L144)

```
RAD2DEG :: 180.0 / PI
```

### [RAYGUI\_SHARED ¶](#RAYGUI_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L5)

```
RAYGUI_SHARED :: #config(RAYGUI_SHARED, false)
```

### [RAYGUI\_VERSION ¶](#RAYGUI_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L34)

```
RAYGUI_VERSION :: "4.0"
```

### [RAYGUI\_WASM\_LIB ¶](#RAYGUI_WASM_LIB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L6)

```
RAYGUI_WASM_LIB :: #config(RAYGUI_WASM_LIB, "wasm/libraygui.a")
```

### [RAYLIB\_SHARED ¶](#RAYLIB_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L100)

```
RAYLIB_SHARED :: #config(RAYLIB_SHARED, false)
```

### [RAYLIB\_WASM\_LIB ¶](#RAYLIB_WASM_LIB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L101)

```
RAYLIB_WASM_LIB :: #config(RAYLIB_WASM_LIB, "wasm/libraylib.a")
```

### [RAYWHITE ¶](#RAYWHITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L175)

```
RAYWHITE :: Color{245, 245, 245, 255}
```

 

My own White (raylib logo)

### [RED ¶](#RED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L156)

```
RED :: Color{230, 41, 55, 255}
```

 

Red

### [SCROLLBAR\_LEFT\_SIDE ¶](#SCROLLBAR_LEFT_SIDE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L199)

```
SCROLLBAR_LEFT_SIDE :: 0
```

### [SCROLLBAR\_RIGHT\_SIDE ¶](#SCROLLBAR_RIGHT_SIDE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L200)

```
SCROLLBAR_RIGHT_SIDE :: 1
```

### [SKYBLUE ¶](#SKYBLUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L161)

```
SKYBLUE :: Color{102, 191, 255, 255}
```

 

Sky Blue

### [VERSION ¶](#VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L140)

```
VERSION :: "5.5"
```

### [VERSION\_MAJOR ¶](#VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L137)

```
VERSION_MAJOR :: 5
```

### [VERSION\_MINOR ¶](#VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L138)

```
VERSION_MINOR :: 5
```

### [VERSION\_PATCH ¶](#VERSION_PATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L139)

```
VERSION_PATCH :: 0
```

### [VIOLET ¶](#VIOLET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L165)

```
VIOLET :: Color{135, 60, 190, 255}
```

 

Violet

### [WHITE ¶](#WHITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L171)

```
WHITE :: Color{255, 255, 255, 255}
```

 

White

### [YELLOW ¶](#YELLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L152)

```
YELLOW :: Color{253, 249, 0, 255}
```

 

Yellow

## Variables

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L215)

```
@(link_name="raylib_version")
version: cstring
```

## Procedures

### [AttachAudioMixedProcessor ¶](#AttachAudioMixedProcessor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1712)

```
AttachAudioMixedProcessor :: proc "c" (processor: AudioCallback) ---
```

 

Attach audio stream processor to the entire audio pipeline, receives the samples as 'float'

### [AttachAudioStreamProcessor ¶](#AttachAudioStreamProcessor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1709)

```
AttachAudioStreamProcessor :: proc "c" (stream: AudioStream, processor: AudioCallback) ---
```

 

Attach audio stream processor to stream, receives the samples as 'float'

### [BeginBlendMode ¶](#BeginBlendMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L991)

```
BeginBlendMode :: proc "c" (mode: BlendMode) ---
```

 

Begin blending mode (alpha, additive, multiplied)

### [BeginDrawing ¶](#BeginDrawing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L981)

```
BeginDrawing :: proc "c" () ---
```

 

Setup canvas (framebuffer) to start drawing

### [BeginMode2D ¶](#BeginMode2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L983)

```
BeginMode2D :: proc "c" (camera: Camera2D) ---
```

 

Initialize 2D mode with custom camera (2D)

### [BeginMode3D ¶](#BeginMode3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L985)

```
BeginMode3D :: proc "c" (camera: Camera3D) ---
```

 

Initializes 3D mode with custom camera (3D)

### [BeginScissorMode ¶](#BeginScissorMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L993)

```
BeginScissorMode :: proc "c" (x, y, width, height: i32) ---
```

 

Begin scissor mode (define screen area for following drawing)

### [BeginShaderMode ¶](#BeginShaderMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L989)

```
BeginShaderMode :: proc "c" (shader: Shader) ---
```

 

Begin custom shader drawing

### [BeginTextureMode ¶](#BeginTextureMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L987)

```
BeginTextureMode :: proc "c" (target: RenderTexture) ---
```

 

Initializes render texture for drawing

### [BeginVrStereoMode ¶](#BeginVrStereoMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L995)

```
BeginVrStereoMode :: proc "c" (config: VrStereoConfig) ---
```

 

Begin stereo rendering (requires VR simulator)

### [CameraMoveForward ¶](#CameraMoveForward) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1204)

```
CameraMoveForward :: proc "c" (camera: ^Camera3D, distance: f32, moveInWorldPlane: bool) ---
```

 

move the camera in its forward direction

### [CameraMoveRight ¶](#CameraMoveRight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1206)

```
CameraMoveRight :: proc "c" (camera: ^Camera3D, distance: f32, moveInWorldPlane: bool) ---
```

 

move camera in it's current right direction

### [CameraMoveToTarget ¶](#CameraMoveToTarget) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1207)

```
CameraMoveToTarget :: proc "c" (camera: ^Camera3D, delta: f32) ---
```

 

moves the camera position closer/farther to/from the camera target

### [CameraMoveUp ¶](#CameraMoveUp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1205)

```
CameraMoveUp :: proc "c" (camera: ^Camera3D, distance: f32) ---
```

 

move camera in its up direction

### [CameraPitch ¶](#CameraPitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1209)

```
CameraPitch :: proc "c" (camera: ^Camera3D, angle: f32, lockView: bool, rotateAroundTarget: bool, rotateUp: bool) ---
```

 

rotates the camera around its right vector (up and down)

### [CameraRoll ¶](#CameraRoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1210)

```
CameraRoll :: proc "c" (camera: ^Camera3D, angle: f32) ---
```

 

rotates the camera around its forward vector (left and right)

### [CameraYaw ¶](#CameraYaw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1208)

```
CameraYaw :: proc "c" (camera: ^Camera3D, angle: f32, rotateAroundTarget: bool) ---
```

 

rotates the camera around its up vector (left and right)

### [ChangeDirectory ¶](#ChangeDirectory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1089)

```
ChangeDirectory :: proc "c" (dir: cstring) -> bool ---
```

 

Change working directory, return true on success

### [CheckCollisionBoxSphere ¶](#CheckCollisionBoxSphere) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1620)

```
CheckCollisionBoxSphere :: proc "c" (box: BoundingBox, center: [3]f32, radius: f32) -> bool ---
```

 

Check collision between box and sphere

### [CheckCollisionBoxes ¶](#CheckCollisionBoxes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1619)

```
CheckCollisionBoxes :: proc "c" (box1, box2: BoundingBox) -> bool ---
```

 

Check collision between two bounding boxes

### [CheckCollisionCircleLine ¶](#CheckCollisionCircleLine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1289)

```
CheckCollisionCircleLine :: proc "c" (center: [2]f32, radius: f32, p1, p2: [2]f32) -> bool ---
```

 

Check if circle collides with a line created betweeen two points [p1] and [p2]

### [CheckCollisionCircleRec ¶](#CheckCollisionCircleRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1288)

```
CheckCollisionCircleRec :: proc "c" (center: [2]f32, radius: f32, rec: Rectangle) -> bool ---
```

 

Check collision between circle and rectangle

### [CheckCollisionCircles ¶](#CheckCollisionCircles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1287)

```
CheckCollisionCircles :: proc "c" (center1: [2]f32, radius1: f32, center2: [2]f32, radius2: f32) -> bool ---
```

 

Check collision between two circles

### [CheckCollisionLines ¶](#CheckCollisionLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1295)

```
CheckCollisionLines :: proc "c" (startPos1, endPos1, startPos2, endPos2: [2]f32, collisionPoint: [^][2]f32) -> bool ---
```

 

Check the collision between two lines defined by two points each, returns collision point by reference

### [CheckCollisionPointCircle ¶](#CheckCollisionPointCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1291)

```
CheckCollisionPointCircle :: proc "c" (point, center: [2]f32, radius: f32) -> bool ---
```

 

Check if point is inside circle

### [CheckCollisionPointLine ¶](#CheckCollisionPointLine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1293)

```
CheckCollisionPointLine :: proc "c" (point: [2]f32, p1, p2: [2]f32, threshold: i32) -> bool ---
```

 

Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]

### [CheckCollisionPointPoly ¶](#CheckCollisionPointPoly) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1294)

```
CheckCollisionPointPoly :: proc "c" (point: [2]f32, points: [^][2]f32, pointCount: i32) -> bool ---
```

 

Check if point is within a polygon described by array of vertices

### [CheckCollisionPointRec ¶](#CheckCollisionPointRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1290)

```
CheckCollisionPointRec :: proc "c" (point: [2]f32, rec: Rectangle) -> bool ---
```

 

Check if point is inside rectangle

### [CheckCollisionPointTriangle ¶](#CheckCollisionPointTriangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1292)

```
CheckCollisionPointTriangle :: proc "c" (point: [2]f32, p1, p2, p3: [2]f32) -> bool ---
```

 

Check if point is inside a triangle

### [CheckCollisionRecs ¶](#CheckCollisionRecs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1286)

```
CheckCollisionRecs :: proc "c" (rec1, rec2: Rectangle) -> bool ---
```

 

Basic shapes collision detection functions

### [CheckCollisionSpheres ¶](#CheckCollisionSpheres) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1618)

```
CheckCollisionSpheres :: proc "c" (center1: [3]f32, radius1: f32, center2: [3]f32, radius2: f32) -> bool ---
```

 

Check collision between two spheres

### [Clamp ¶](#Clamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L16)

```
Clamp :: proc "c" (value: f32, min, max: f32) -> f32 {…}
```

 

Clamp float value

### [ClearBackground ¶](#ClearBackground) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L980)

```
ClearBackground :: proc "c" (color: Color) ---
```

 

Set background color (framebuffer clear color)

### [ClearWindowState ¶](#ClearWindowState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L920)

```
ClearWindowState :: proc "c" (flags: ConfigFlags) ---
```

 

Clear window configuration state flags

### [CloseAudioDevice ¶](#CloseAudioDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1634)

```
CloseAudioDevice :: proc "c" () ---
```

 

Close the audio device and context

### [CloseWindow ¶](#CloseWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L910)

```
CloseWindow :: proc "c" () ---
```

 

Close window and unload OpenGL context

### [CodepointToUTF8 ¶](#CodepointToUTF8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1491)

```
CodepointToUTF8 :: proc "c" (codepoint: rune, utf8Size: ^i32) -> cstring ---
```

 

Encode one codepoint into UTF-8 byte array (array length returned as parameter)

### [ColorAlpha ¶](#ColorAlpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1434)

```
ColorAlpha :: proc "c" (color: Color, alpha: f32) -> Color ---
```

 

Get color with alpha applied, alpha goes from 0.0f to 1.0f

### [ColorAlphaBlend ¶](#ColorAlphaBlend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1435)

```
ColorAlphaBlend :: proc "c" (dst, src, tint: Color) -> Color ---
```

 

Get src alpha-blended into dst color with tint

### [ColorBrightness ¶](#ColorBrightness) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1432)

```
ColorBrightness :: proc "c" (color: Color, factor: f32) -> Color ---
```

 

Get color with brightness correction, brightness factor goes from -1.0f to 1.0f

### [ColorContrast ¶](#ColorContrast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1433)

```
ColorContrast :: proc "c" (color: Color, contrast: f32) -> Color ---
```

 

Get color with contrast correction, contrast values between -1.0f and 1.0f

### [ColorFromHSV ¶](#ColorFromHSV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1430)

```
ColorFromHSV :: proc "c" (hue, saturation, value: f32) -> Color ---
```

 

Get a Color from HSV values, hue [0..360], saturation/value [0..1]

### [ColorFromNormalized ¶](#ColorFromNormalized) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1428)

```
ColorFromNormalized :: proc "c" (normalized: [4]f32) -> Color ---
```

 

Get Color from normalized values [0..1]

### [ColorIsEqual ¶](#ColorIsEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1424)

```
ColorIsEqual :: proc "c" (col1, col2: Color) ---
```

 

Check if two colors are equal

### [ColorLerp ¶](#ColorLerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1436)

```
ColorLerp :: proc "c" (color1, color2: Color, factor: f32) -> Color ---
```

 

Get color lerp interpolation between two colors, factor [0.0f..1.0f]

### [ColorNormalize ¶](#ColorNormalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1427)

```
ColorNormalize :: proc "c" (color: Color) -> [4]f32 ---
```

 

Get Color normalized as float [0..1]

### [ColorTint ¶](#ColorTint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1431)

```
ColorTint :: proc "c" (color, tint: Color) -> Color ---
```

 

Get color multiplied with another color

### [ColorToHSV ¶](#ColorToHSV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1429)

```
ColorToHSV :: proc "c" (color: Color) -> [3]f32 ---
```

 

Get HSV values for a Color, hue [0..360], saturation/value [0..1]

### [ColorToInt ¶](#ColorToInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1426)

```
ColorToInt :: proc "c" (color: Color) -> u32 ---
```

 

Get hexadecimal value for a Color (0xRRGGBBAA)

### [CompressData ¶](#CompressData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1102)

```
CompressData :: proc "c" (data: rawptr, dataSize: i32, compDataSize: ^i32) -> [^]u8 ---
```

 

Compress data (DEFLATE algorithm), memory must be MemFree()

### [ComputeCRC32 ¶](#ComputeCRC32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1106)

```
ComputeCRC32 :: proc "c" (data: rawptr, dataSize: i32) -> u32 ---
```

 

Compute CRC32 hash code

### [ComputeMD5 ¶](#ComputeMD5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1107)

```
ComputeMD5 :: proc "c" (data: rawptr, dataSize: i32) -> [^]u32 ---
```

 

Compute MD5 hash code, returns static int[4] (16 bytes)

### [ComputeSHA1 ¶](#ComputeSHA1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1108)

```
ComputeSHA1 :: proc "c" (data: rawptr, dataSize: i32) -> [^]u32 ---
```

 

Compute SHA1 hash code, returns static int[5] (20 bytes)

### [DecodeDataBase64 ¶](#DecodeDataBase64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1105)

```
DecodeDataBase64 :: proc "c" (data: rawptr, outputSize: ^i32) -> [^]u8 ---
```

 

Decode Base64 string data, memory must be MemFree()

### [DecompressData ¶](#DecompressData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1103)

```
DecompressData :: proc "c" (compData: rawptr, compDataSize: i32, dataSize: ^i32) -> [^]u8 ---
```

 

Decompress data (DEFLATE algorithm), memory must be MemFree()

### [DetachAudioMixedProcessor ¶](#DetachAudioMixedProcessor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1713)

```
DetachAudioMixedProcessor :: proc "c" (processor: AudioCallback) ---
```

 

Detach audio stream processor from the entire audio pipeline

### [DetachAudioStreamProcessor ¶](#DetachAudioStreamProcessor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1710)

```
DetachAudioStreamProcessor :: proc "c" (stream: AudioStream, processor: AudioCallback) ---
```

 

Detach audio stream processor from stream

### [DirectoryExists ¶](#DirectoryExists) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1078)

```
DirectoryExists :: proc "c" (dirPath: cstring) -> bool ---
```

 

Check if a directory path exists

### [DisableCursor ¶](#DisableCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L975)

```
DisableCursor :: proc "c" () ---
```

 

Disables cursor (lock cursor)

### [DisableEventWaiting ¶](#DisableEventWaiting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L956)

```
DisableEventWaiting :: proc "c" () ---
```

 

Disable waiting for events on EndDrawing(), automatic events polling

### [DrawBillboard ¶](#DrawBillboard) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1568)

```
DrawBillboard :: proc "c" (camera: Camera3D, texture: Texture, position: [3]f32, scale: f32, tint: Color) ---
```

 

Draw a billboard texture

### [DrawBillboardPro ¶](#DrawBillboardPro) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1570)

```
DrawBillboardPro :: proc "c" (
	camera:   Camera3D, 
	texture:  Texture, 
	source:   Rectangle, 
	position: [3]f32, 
	up:       [3]f32, 
	size:     [2]f32, 
	origin:   [2]f32, 
	rotation: f32, 
	tint:     Color, 
) ---
```

 

Draw a billboard texture defined by source and rotation

### [DrawBillboardRec ¶](#DrawBillboardRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1569)

```
DrawBillboardRec :: proc "c" (
	camera:   Camera3D, 
	texture:  Texture, 
	source:   Rectangle, 
	position: [3]f32, 
	size:     [2]f32, 
	tint:     Color, 
) ---
```

 

Draw a billboard texture defined by source

### [DrawBoundingBox ¶](#DrawBoundingBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1567)

```
DrawBoundingBox :: proc "c" (box: BoundingBox, color: Color) ---
```

 

Draw bounding box (wires)

### [DrawCapsule ¶](#DrawCapsule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1541)

```
DrawCapsule :: proc "c" (
	startPos, endPos: [3]f32, 
	radius:           f32, 
	slices, rings:    i32, 
	color:            Color, 
) ---
```

 

Draw a capsule with the center of its sphere caps at startPos and endPos

### [DrawCapsuleWires ¶](#DrawCapsuleWires) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1542)

```
DrawCapsuleWires :: proc "c" (
	startPos, endPos: [3]f32, 
	radius:           f32, 
	slices, rings:    i32, 
	color:            Color, 
) ---
```

 

Draw capsule wireframe with the center of its sphere caps at startPos and endPos

### [DrawCircle ¶](#DrawCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1236)

```
DrawCircle :: proc "c" (centerX, centerY: i32, radius: f32, color: Color) ---
```

 

Draw a color-filled circle

### [DrawCircle3D ¶](#DrawCircle3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1527)

```
DrawCircle3D :: proc "c" (center: [3]f32, radius: f32, rotationAxis: [3]f32, rotationAngle: f32, color: Color) ---
```

 

Draw a circle in 3D world space

### [DrawCircleGradient ¶](#DrawCircleGradient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1239)

```
DrawCircleGradient :: proc "c" (centerX, centerY: i32, radius: f32, inner, outer: Color) ---
```

 

Draw a gradient-filled circle

### [DrawCircleLines ¶](#DrawCircleLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1241)

```
DrawCircleLines :: proc "c" (centerX, centerY: i32, radius: f32, color: Color) ---
```

 

Draw circle outline

### [DrawCircleLinesV ¶](#DrawCircleLinesV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1242)

```
DrawCircleLinesV :: proc "c" (center: [2]f32, radius: f32, color: Color) ---
```

 

Draw circle outline (Vector version)

### [DrawCircleSector ¶](#DrawCircleSector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1237)

```
DrawCircleSector :: proc "c" (
	center:               [2]f32, 
	radius:               f32, 
	startAngle, endAngle: f32, 
	segments:             i32, 
	color:                Color, 
) ---
```

 

Draw a piece of a circle

### [DrawCircleSectorLines ¶](#DrawCircleSectorLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1238)

```
DrawCircleSectorLines :: proc "c" (
	center:               [2]f32, 
	radius:               f32, 
	startAngle, endAngle: f32, 
	segments:             i32, 
	color:                Color, 
) ---
```

 

Draw circle sector outline

### [DrawCircleV ¶](#DrawCircleV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1240)

```
DrawCircleV :: proc "c" (center: [2]f32, radius: f32, color: Color) ---
```

 

Draw a color-filled circle (Vector version)

### [DrawCube ¶](#DrawCube) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1530)

```
DrawCube :: proc "c" (position: [3]f32, width, height, length: f32, color: Color) ---
```

 

Draw cube

### [DrawCubeV ¶](#DrawCubeV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1531)

```
DrawCubeV :: proc "c" (position, size: [3]f32, color: Color) ---
```

 

Draw cube (Vector version)

### [DrawCubeWires ¶](#DrawCubeWires) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1532)

```
DrawCubeWires :: proc "c" (position: [3]f32, width, height, length: f32, color: Color) ---
```

 

Draw cube wires

### [DrawCubeWiresV ¶](#DrawCubeWiresV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1533)

```
DrawCubeWiresV :: proc "c" (position, size: [3]f32, color: Color) ---
```

 

Draw cube wires (Vector version)

### [DrawCylinder ¶](#DrawCylinder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1537)

```
DrawCylinder :: proc "c" (
	position:                [3]f32, 
	radiusTop, radiusBottom: f32, 
	height:                  f32, 
	slices:                  i32, 
	color:                   Color, 
) ---
```

 

Draw a cylinder/cone

### [DrawCylinderEx ¶](#DrawCylinderEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1538)

```
DrawCylinderEx :: proc "c" (
	startPos, endPos:       [3]f32, 
	startRadius, endRadius: f32, 
	sides:                  i32, 
	color:                  Color, 
) ---
```

 

Draw a cylinder with base at startPos and top at endPos

### [DrawCylinderWires ¶](#DrawCylinderWires) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1539)

```
DrawCylinderWires :: proc "c" (
	position:                [3]f32, 
	radiusTop, radiusBottom: f32, 
	height:                  f32, 
	slices:                  i32, 
	color:                   Color, 
) ---
```

 

Draw a cylinder/cone wires

### [DrawCylinderWiresEx ¶](#DrawCylinderWiresEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1540)

```
DrawCylinderWiresEx :: proc "c" (
	startPos, endPos:       [3]f32, 
	startRadius, endRadius: f32, 
	sides:                  i32, 
	color:                  Color, 
) ---
```

 

Draw a cylinder wires with base at startPos and top at endPos

### [DrawEllipse ¶](#DrawEllipse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1243)

```
DrawEllipse :: proc "c" (centerX, centerY: i32, radiusH, radiusV: f32, color: Color) ---
```

 

Draw ellipse

### [DrawEllipseLines ¶](#DrawEllipseLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1244)

```
DrawEllipseLines :: proc "c" (centerX, centerY: i32, radiusH, radiusV: f32, color: Color) ---
```

 

Draw ellipse outline

### [DrawFPS ¶](#DrawFPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1465)

```
DrawFPS :: proc "c" (posX, posY: i32) ---
```

 

Draw current FPS

### [DrawGrid ¶](#DrawGrid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1545)

```
DrawGrid :: proc "c" (slices: i32, spacing: f32) ---
```

 

Draw a grid (centered at (0, 0, 0))

### [DrawLine ¶](#DrawLine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1231)

```
DrawLine :: proc "c" (startPosX, startPosY, endPosX, endPosY: i32, color: Color) ---
```

 

Draw a line

### [DrawLine3D ¶](#DrawLine3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1525)

```
DrawLine3D :: proc "c" (startPos, endPos: [3]f32, color: Color) ---
```

 

Draw a line in 3D world space

### [DrawLineBezier ¶](#DrawLineBezier) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1235)

```
DrawLineBezier :: proc "c" (startPos, endPos: [2]f32, thick: f32, color: Color) ---
```

 

Draw line segment cubic-bezier in-out interpolation

### [DrawLineEx ¶](#DrawLineEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1233)

```
DrawLineEx :: proc "c" (startPos, endPos: [2]f32, thick: f32, color: Color) ---
```

 

Draw a line (using triangles/quads)

### [DrawLineStrip ¶](#DrawLineStrip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1234)

```
DrawLineStrip :: proc "c" (points: [^][2]f32, pointCount: i32, color: Color) ---
```

 

Draw lines sequence (using gl lines)

### [DrawLineV ¶](#DrawLineV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1232)

```
DrawLineV :: proc "c" (startPos, endPos: [2]f32, color: Color) ---
```

 

Draw a line (using gl lines)

### [DrawMesh ¶](#DrawMesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1577)

```
DrawMesh :: proc "c" (mesh: Mesh, material: Material, transform: matrix[4, 4]f32) ---
```

 

Draw a 3d mesh with material and transform

### [DrawMeshInstanced ¶](#DrawMeshInstanced) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1578)

```
DrawMeshInstanced :: proc "c" (mesh: Mesh, material: Material, transforms: [^]matrix[4, 4]f32, instances: i32) ---
```

 

Draw multiple mesh instances with material and different transforms

### [DrawModel ¶](#DrawModel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1561)

```
DrawModel :: proc "c" (model: Model, position: [3]f32, scale: f32, tint: Color) ---
```

 

Draw a model (with texture if set)

### [DrawModelEx ¶](#DrawModelEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1562)

```
DrawModelEx :: proc "c" (
	model:         Model, 
	position:      [3]f32, 
	rotationAxis:  [3]f32, 
	rotationAngle: f32, 
	scale:         [3]f32, 
	tint:          Color, 
) ---
```

 

Draw a model with extended parameters

### [DrawModelPoints ¶](#DrawModelPoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1565)

```
DrawModelPoints :: proc "c" (model: Model, position: [3]f32, scale: f32, tint: Color) ---
```

 

Draw a model as points

### [DrawModelPointsEx ¶](#DrawModelPointsEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1566)

```
DrawModelPointsEx :: proc "c" (
	model:         Model, 
	position:      [3]f32, 
	rotationAxis:  [3]f32, 
	rotationAngle: f32, 
	scale:         [3]f32, 
	tint:          Color, 
) ---
```

 

Draw a model as points with extended parameters

### [DrawModelWires ¶](#DrawModelWires) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1563)

```
DrawModelWires :: proc "c" (model: Model, position: [3]f32, scale: f32, tint: Color) ---
```

 

Draw a model wires (with texture if set)

### [DrawModelWiresEx ¶](#DrawModelWiresEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1564)

```
DrawModelWiresEx :: proc "c" (
	model:         Model, 
	position:      [3]f32, 
	rotationAxis:  [3]f32, 
	rotationAngle: f32, 
	scale:         [3]f32, 
	tint:          Color, 
) ---
```

 

Draw a model wires (with texture if set) with extended parameters

### [DrawPixel ¶](#DrawPixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1229)

```
DrawPixel :: proc "c" (posX, posY: i32, color: Color) ---
```

 

Draw a pixel using geometry [Can be slow, use with care]

### [DrawPixelV ¶](#DrawPixelV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1230)

```
DrawPixelV :: proc "c" (position: [2]f32, color: Color) ---
```

 

Draw a pixel using geometry (Vector version) [Can be slow, use with care]

### [DrawPlane ¶](#DrawPlane) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1543)

```
DrawPlane :: proc "c" (centerPos: [3]f32, size: [2]f32, color: Color) ---
```

 

Draw a plane XZ

### [DrawPoint3D ¶](#DrawPoint3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1526)

```
DrawPoint3D :: proc "c" (position: [3]f32, color: Color) ---
```

 

Draw a point in 3D space, actually a small line

### [DrawPoly ¶](#DrawPoly) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1263)

```
DrawPoly :: proc "c" (center: [2]f32, sides: i32, radius: f32, rotation: f32, color: Color) ---
```

 

Draw a regular polygon (Vector version)

### [DrawPolyLines ¶](#DrawPolyLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1264)

```
DrawPolyLines :: proc "c" (center: [2]f32, sides: i32, radius: f32, rotation: f32, color: Color) ---
```

 

Draw a polygon outline of n sides

### [DrawPolyLinesEx ¶](#DrawPolyLinesEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1265)

```
DrawPolyLinesEx :: proc "c" (
	center:    [2]f32, 
	sides:     i32, 
	radius:    f32, 
	rotation:  f32, 
	lineThick: f32, 
	color:     Color, 
) ---
```

 

Draw a polygon outline of n sides with extended parameters

### [DrawRay ¶](#DrawRay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1544)

```
DrawRay :: proc "c" (ray: Ray, color: Color) ---
```

 

Draw a ray line

### [DrawRectangle ¶](#DrawRectangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1247)

```
DrawRectangle :: proc "c" (posX, posY: i32, width, height: i32, color: Color) ---
```

 

Draw a color-filled rectangle

### [DrawRectangleGradientEx ¶](#DrawRectangleGradientEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1253)

```
DrawRectangleGradientEx :: proc "c" (rec: Rectangle, topLeft, bottomLeft, topRight, bottomRight: Color) ---
```

 

Draw a gradient-filled rectangle with custom vertex colors

### [DrawRectangleGradientH ¶](#DrawRectangleGradientH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1252)

```
DrawRectangleGradientH :: proc "c" (
	posX, posY:    i32, 
	width, height: i32, 
	left, 
	right:         Color, 
) ---
```

 

Draw a horizontal-gradient-filled rectangle

### [DrawRectangleGradientV ¶](#DrawRectangleGradientV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1251)

```
DrawRectangleGradientV :: proc "c" (
	posX, posY:    i32, 
	width, height: i32, 
	top, 
	bottom:        Color, 
) ---
```

 

Draw a vertical-gradient-filled rectangle

### [DrawRectangleLines ¶](#DrawRectangleLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1254)

```
DrawRectangleLines :: proc "c" (posX, posY: i32, width, height: i32, color: Color) ---
```

 

Draw rectangle outline

### [DrawRectangleLinesEx ¶](#DrawRectangleLinesEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1255)

```
DrawRectangleLinesEx :: proc "c" (rec: Rectangle, lineThick: f32, color: Color) ---
```

 

Draw rectangle outline with extended parameters

### [DrawRectanglePro ¶](#DrawRectanglePro) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1250)

```
DrawRectanglePro :: proc "c" (rec: Rectangle, origin: [2]f32, rotation: f32, color: Color) ---
```

 

Draw a color-filled rectangle with pro parameters

### [DrawRectangleRec ¶](#DrawRectangleRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1249)

```
DrawRectangleRec :: proc "c" (rec: Rectangle, color: Color) ---
```

 

Draw a color-filled rectangle

### [DrawRectangleRounded ¶](#DrawRectangleRounded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1256)

```
DrawRectangleRounded :: proc "c" (rec: Rectangle, roundness: f32, segments: i32, color: Color) ---
```

 

Draw rectangle with rounded edges

### [DrawRectangleRoundedLines ¶](#DrawRectangleRoundedLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1257)

```
DrawRectangleRoundedLines :: proc "c" (rec: Rectangle, roundness: f32, segments: i32, color: Color) ---
```

 

Draw rectangle lines with rounded edges

### [DrawRectangleRoundedLinesEx ¶](#DrawRectangleRoundedLinesEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1258)

```
DrawRectangleRoundedLinesEx :: proc "c" (rec: Rectangle, roundness: f32, segments: i32, lineThick: f32, color: Color) ---
```

 

Draw rectangle with rounded edges outline

### [DrawRectangleV ¶](#DrawRectangleV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1248)

```
DrawRectangleV :: proc "c" (position: [2]f32, size: [2]f32, color: Color) ---
```

 

Draw a color-filled rectangle (Vector version)

### [DrawRing ¶](#DrawRing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1245)

```
DrawRing :: proc "c" (
	center:                   [2]f32, 
	innerRadius, outerRadius: f32, 
	startAngle, endAngle:     f32, 
	segments:                 i32, 
	color:                    Color, 
) ---
```

 

Draw ring

### [DrawRingLines ¶](#DrawRingLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1246)

```
DrawRingLines :: proc "c" (
	center:                   [2]f32, 
	innerRadius, outerRadius: f32, 
	startAngle, endAngle:     f32, 
	segments:                 i32, 
	color:                    Color, 
) ---
```

 

Draw ring outline

### [DrawSphere ¶](#DrawSphere) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1534)

```
DrawSphere :: proc "c" (centerPos: [3]f32, radius: f32, color: Color) ---
```

 

Draw sphere

### [DrawSphereEx ¶](#DrawSphereEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1535)

```
DrawSphereEx :: proc "c" (centerPos: [3]f32, radius: f32, rings, slices: i32, color: Color) ---
```

 

Draw sphere with extended parameters

### [DrawSphereWires ¶](#DrawSphereWires) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1536)

```
DrawSphereWires :: proc "c" (centerPos: [3]f32, radius: f32, rings, slices: i32, color: Color) ---
```

 

Draw sphere wires

### [DrawSplineBasis ¶](#DrawSplineBasis) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1269)

```
DrawSplineBasis :: proc "c" (points: [^][2]f32, pointCount: i32, thick: f32, color: Color) ---
```

 

Draw spline: B-Spline, minimum 4 points

### [DrawSplineBezierCubic ¶](#DrawSplineBezierCubic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1272)

```
DrawSplineBezierCubic :: proc "c" (points: [^][2]f32, pointCount: i32, thick: f32, color: Color) ---
```

 

Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]

### [DrawSplineBezierQuadratic ¶](#DrawSplineBezierQuadratic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1271)

```
DrawSplineBezierQuadratic :: proc "c" (points: [^][2]f32, pointCount: i32, thick: f32, color: Color) ---
```

 

Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]

### [DrawSplineCatmullRom ¶](#DrawSplineCatmullRom) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1270)

```
DrawSplineCatmullRom :: proc "c" (points: [^][2]f32, pointCount: i32, thick: f32, color: Color) ---
```

 

Draw spline: Catmull-Rom, minimum 4 points

### [DrawSplineLinear ¶](#DrawSplineLinear) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1268)

```
DrawSplineLinear :: proc "c" (points: [^][2]f32, pointCount: i32, thick: f32, color: Color) ---
```

 

Splines drawing functions

### [DrawSplineSegmentBasis ¶](#DrawSplineSegmentBasis) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1274)

```
DrawSplineSegmentBasis :: proc "c" (
	p1, p2, p3, p4: [2]f32, 
	thick:          f32, 
	color:          Color, 
) ---
```

 

Draw spline segment: B-Spline, 4 points

### [DrawSplineSegmentBezierCubic ¶](#DrawSplineSegmentBezierCubic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1277)

```
DrawSplineSegmentBezierCubic :: proc "c" (
	p1, c2, c3, p4: [2]f32, 
	thick:          f32, 
	color:          Color, 
) ---
```

 

Draw spline segment: Cubic Bezier, 2 points, 2 control points

### [DrawSplineSegmentBezierQuadratic ¶](#DrawSplineSegmentBezierQuadratic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1276)

```
DrawSplineSegmentBezierQuadratic :: proc "c" (p1, c2, p3: [2]f32, thick: f32, color: Color) ---
```

 

Draw spline segment: Quadratic Bezier, 2 points, 1 control point

### [DrawSplineSegmentCatmullRom ¶](#DrawSplineSegmentCatmullRom) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1275)

```
DrawSplineSegmentCatmullRom :: proc "c" (
	p1, p2, p3, p4: [2]f32, 
	thick:          f32, 
	color:          Color, 
) ---
```

 

Draw spline segment: Catmull-Rom, 4 points

### [DrawSplineSegmentLinear ¶](#DrawSplineSegmentLinear) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1273)

```
DrawSplineSegmentLinear :: proc "c" (p1, p2: [2]f32, thick: f32, color: Color) ---
```

 

Draw spline segment: Linear, 2 points

### [DrawText ¶](#DrawText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1466)

```
DrawText :: proc "c" (text: cstring, posX, posY: i32, fontSize: i32, color: Color) ---
```

 

Draw text (using default font)

### [DrawTextCodepoint ¶](#DrawTextCodepoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1469)

```
DrawTextCodepoint :: proc "c" (font: Font, codepoint: rune, position: [2]f32, fontSize: f32, tint: Color) ---
```

 

Draw one character (codepoint)

### [DrawTextCodepoints ¶](#DrawTextCodepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1470)

```
DrawTextCodepoints :: proc "c" (
	font:           Font, 
	codepoints:     [^]rune, 
	codepointCount: i32, 
	position:       [2]f32, 
	fontSize:       f32, 
	spacing:        f32, 
	tint:           Color, 
) ---
```

 

Draw multiple character (codepoint)

### [DrawTextEx ¶](#DrawTextEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1467)

```
DrawTextEx :: proc "c" (
	font:     Font, 
	text:     cstring, 
	position: [2]f32, 
	fontSize: f32, 
	spacing:  f32, 
	tint:     Color, 
) ---
```

 

Draw text using font and additional parameters

### [DrawTextPro ¶](#DrawTextPro) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1468)

```
DrawTextPro :: proc "c" (
	font:             Font, 
	text:             cstring, 
	position, origin: [2]f32, 
	rotation:         f32, 
	fontSize:         f32, 
	spacing:          f32, 
	tint:             Color, 
) ---
```

 

Draw text using Font and pro parameters (rotation)

### [DrawTexture ¶](#DrawTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1414)

```
DrawTexture :: proc "c" (texture: Texture, posX, posY: i32, tint: Color) ---
```

 

Texture drawing functions

### [DrawTextureEx ¶](#DrawTextureEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1416)

```
DrawTextureEx :: proc "c" (texture: Texture, position: [2]f32, rotation: f32, scale: f32, tint: Color) ---
```

 

Draw a Texture2D with extended parameters

### [DrawTextureNPatch ¶](#DrawTextureNPatch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1419)

```
DrawTextureNPatch :: proc "c" (
	texture:    Texture, 
	nPatchInfo: NPatchInfo, 
	dest:       Rectangle, 
	origin:     [2]f32, 
	rotation:   f32, 
	tint:       Color, 
) ---
```

 

Draws a texture (or part of it) that stretches or shrinks nicely

### [DrawTexturePro ¶](#DrawTexturePro) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1418)

```
DrawTexturePro :: proc "c" (
	texture:      Texture, 
	source, dest: Rectangle, 
	origin:       [2]f32, 
	rotation:     f32, 
	tint:         Color, 
) ---
```

 

Draw a part of a texture defined by a rectangle with 'pro' parameters

### [DrawTextureRec ¶](#DrawTextureRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1417)

```
DrawTextureRec :: proc "c" (texture: Texture, source: Rectangle, position: [2]f32, tint: Color) ---
```

 

Draw a part of a texture defined by a rectangle

### [DrawTextureV ¶](#DrawTextureV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1415)

```
DrawTextureV :: proc "c" (texture: Texture, position: [2]f32, tint: Color) ---
```

 

Draw a Texture2D with position defined as Vector2

### [DrawTriangle ¶](#DrawTriangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1259)

```
DrawTriangle :: proc "c" (v1, v2, v3: [2]f32, color: Color) ---
```

 

Draw a color-filled triangle (vertex in counter-clockwise order!)

### [DrawTriangle3D ¶](#DrawTriangle3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1528)

```
DrawTriangle3D :: proc "c" (v1, v2, v3: [3]f32, color: Color) ---
```

 

Draw a color-filled triangle (vertex in counter-clockwise order!)

### [DrawTriangleFan ¶](#DrawTriangleFan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1261)

```
DrawTriangleFan :: proc "c" (points: [^][2]f32, pointCount: i32, color: Color) ---
```

 

Draw a triangle fan defined by points (first vertex is the center)

### [DrawTriangleLines ¶](#DrawTriangleLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1260)

```
DrawTriangleLines :: proc "c" (v1, v2, v3: [2]f32, color: Color) ---
```

 

Draw triangle outline (vertex in counter-clockwise order!)

### [DrawTriangleStrip ¶](#DrawTriangleStrip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1262)

```
DrawTriangleStrip :: proc "c" (points: [^][2]f32, pointCount: i32, color: Color) ---
```

 

Draw a triangle strip defined by points

### [DrawTriangleStrip3D ¶](#DrawTriangleStrip3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1529)

```
DrawTriangleStrip3D :: proc "c" (points: [^][3]f32, pointCount: i32, color: Color) ---
```

 

Draw a triangle strip defined by points

### [EaseBackIn ¶](#EaseBackIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L101)

```
EaseBackIn :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Back Easing functions

### [EaseBackInOut ¶](#EaseBackInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L116)

```
EaseBackInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseBackOut ¶](#EaseBackOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L109)

```
EaseBackOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseBounceIn ¶](#EaseBounceIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L153)

```
EaseBounceIn :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseBounceInOut ¶](#EaseBounceInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L156)

```
EaseBounceInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseBounceOut ¶](#EaseBounceOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L132)

```
EaseBounceOut :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Bounce Easing functions

### [EaseCircIn ¶](#EaseCircIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L16)

```
EaseCircIn :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Circular Easing functions

### [EaseCircInOut ¶](#EaseCircInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L26)

```
EaseCircInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseCircOut ¶](#EaseCircOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L21)

```
EaseCircOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseCubicIn ¶](#EaseCubicIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L37)

```
EaseCubicIn :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Cubic Easing functions

### [EaseCubicInOut ¶](#EaseCubicInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L47)

```
EaseCubicInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseCubicOut ¶](#EaseCubicOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L42)

```
EaseCubicOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseElasticIn ¶](#EaseElasticIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L165)

```
EaseElasticIn :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Elastic Easing functions

### [EaseElasticInOut ¶](#EaseElasticInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L201)

```
EaseElasticInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseElasticOut ¶](#EaseElasticOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L184)

```
EaseElasticOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseExpoIn ¶](#EaseExpoIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L78)

```
EaseExpoIn :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Exponential Easing functions

### [EaseExpoInOut ¶](#EaseExpoInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L84)

```
EaseExpoInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseExpoOut ¶](#EaseExpoOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L81)

```
EaseExpoOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseLinearIn ¶](#EaseLinearIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L6)

```
EaseLinearIn :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseLinearInOut ¶](#EaseLinearInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L8)

```
EaseLinearInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseLinearNone ¶](#EaseLinearNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L5)

```
EaseLinearNone :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseLinearOut ¶](#EaseLinearOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L7)

```
EaseLinearOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseQuadIn ¶](#EaseQuadIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L58)

```
EaseQuadIn :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Quadratic Easing functions

### [EaseQuadInOut ¶](#EaseQuadInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L68)

```
EaseQuadInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseQuadOut ¶](#EaseQuadOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L63)

```
EaseQuadOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseSineIn ¶](#EaseSineIn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L11)

```
EaseSineIn :: proc(t, b, c, d: f32) -> f32 {…}
```

 

Sine Easing functions

### [EaseSineInOut ¶](#EaseSineInOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L13)

```
EaseSineInOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EaseSineOut ¶](#EaseSineOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin#L12)

```
EaseSineOut :: proc(t, b, c, d: f32) -> f32 {…}
```

### [EnableCursor ¶](#EnableCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L974)

```
EnableCursor :: proc "c" () ---
```

 

Enables cursor (unlock cursor)

### [EnableEventWaiting ¶](#EnableEventWaiting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L955)

```
EnableEventWaiting :: proc "c" () ---
```

 

Enable waiting for events on EndDrawing(), no automatic event polling

### [EncodeDataBase64 ¶](#EncodeDataBase64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1104)

```
EncodeDataBase64 :: proc "c" (data: rawptr, dataSize: i32, outputSize: ^i32) -> [^]u8 ---
```

 

Encode data to Base64 string, memory must be MemFree()

### [EndBlendMode ¶](#EndBlendMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L992)

```
EndBlendMode :: proc "c" () ---
```

 

End blending mode (reset to default: alpha blending)

### [EndDrawing ¶](#EndDrawing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L982)

```
EndDrawing :: proc "c" () ---
```

 

End canvas drawing and swap buffers (double buffering)

### [EndMode2D ¶](#EndMode2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L984)

```
EndMode2D :: proc "c" () ---
```

 

Ends 2D mode with custom camera

### [EndMode3D ¶](#EndMode3D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L986)

```
EndMode3D :: proc "c" () ---
```

 

Ends 3D mode and returns to default 2D orthographic mode

### [EndScissorMode ¶](#EndScissorMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L994)

```
EndScissorMode :: proc "c" () ---
```

 

End scissor mode

### [EndShaderMode ¶](#EndShaderMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L990)

```
EndShaderMode :: proc "c" () ---
```

 

End custom shader drawing (use default shader)

### [EndTextureMode ¶](#EndTextureMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L988)

```
EndTextureMode :: proc "c" () ---
```

 

Ends drawing to render texture

### [EndVrStereoMode ¶](#EndVrStereoMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L996)

```
EndVrStereoMode :: proc "c" () ---
```

 

End stereo rendering (requires VR simulator)

### [ExportAutomationEventList ¶](#ExportAutomationEventList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1115)

```
ExportAutomationEventList :: proc "c" (list: AutomationEventList, fileName: cstring) -> bool ---
```

 

Export automation events list as text file

### [ExportDataAsCode ¶](#ExportDataAsCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1070)

```
ExportDataAsCode :: proc "c" (data: rawptr, dataSize: i32, fileName: cstring) -> bool ---
```

 

Export data to code (.h), returns true on success

### [ExportFontAsCode ¶](#ExportFontAsCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1461)

```
ExportFontAsCode :: proc "c" (font: Font, fileName: cstring) -> bool ---
```

 

Export font as code file, returns true on success

### [ExportImage ¶](#ExportImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1312)

```
ExportImage :: proc "c" (image: Image, fileName: cstring) -> bool ---
```

 

Export image data to file, returns true on success

### [ExportImageAsCode ¶](#ExportImageAsCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1314)

```
ExportImageAsCode :: proc "c" (image: Image, fileName: cstring) -> bool ---
```

 

Export image as code file defining an array of bytes, returns true on success

### [ExportImageToMemory ¶](#ExportImageToMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1313)

```
ExportImageToMemory :: proc "c" (image: Image, fileType: cstring, fileSize: ^i32) -> rawptr ---
```

 

Export image to memory buffer

### [ExportMesh ¶](#ExportMesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1581)

```
ExportMesh :: proc "c" (mesh: Mesh, fileName: cstring) -> bool ---
```

 

Export mesh data to file, returns true on success

### [ExportMeshAsCode ¶](#ExportMeshAsCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1582)

```
ExportMeshAsCode :: proc "c" (mesh: Mesh, fileName: cstring) -> bool ---
```

 

Export mesh as code file (.h) defining multiple arrays of vertex attributes

### [ExportWave ¶](#ExportWave) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1652)

```
ExportWave :: proc "c" (wave: Wave, fileName: cstring) -> bool ---
```

 

Export wave data to file, returns true on success

### [ExportWaveAsCode ¶](#ExportWaveAsCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1653)

```
ExportWaveAsCode :: proc "c" (wave: Wave, fileName: cstring) -> bool ---
```

 

Export wave sample data to code (.h), returns true on success

### [Fade ¶](#Fade) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1425)

```
Fade :: proc "c" (color: Color, alpha: f32) -> Color ---
```

 

Get color with alpha applied, alpha goes from 0.0f to 1.0f

### [FileExists ¶](#FileExists) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1077)

```
FileExists :: proc "c" (fileName: cstring) -> bool ---
```

 

Check if file exists

### [FloatEquals ¶](#FloatEquals) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L46)

```
FloatEquals :: proc "c" (x, y: f32) -> bool {…}
```

 

Check whether two given floats are almost equal

### [GenImageCellular ¶](#GenImageCellular) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1325)

```
GenImageCellular :: proc "c" (width, height: i32, tileSize: i32) -> Image ---
```

 

Generate image: cellular algorithm, bigger tileSize means bigger cells

### [GenImageChecked ¶](#GenImageChecked) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1322)

```
GenImageChecked :: proc "c" (
	width, height:    i32, 
	checksX, checksY: i32, 
	col1, 
	col2:             Color, 
) -> Image ---
```

 

Generate image: checked

### [GenImageColor ¶](#GenImageColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1318)

```
GenImageColor :: proc "c" (width, height: i32, color: Color) -> Image ---
```

 

Generate image: plain color

### [GenImageFontAtlas ¶](#GenImageFontAtlas) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1458)

```
GenImageFontAtlas :: proc "c" (
	glyphs:         [^]GlyphInfo, 
	glyphRecs:      ^[^]Rectangle, 
	codepointCount: i32, 
	fontSize:       i32, 
	padding:        i32, 
	packMethod:     i32, 
) -> Image ---
```

 

Generate image font atlas using chars info

### [GenImageGradientLinear ¶](#GenImageGradientLinear) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1319)

```
GenImageGradientLinear :: proc "c" (width, height, direction: i32, start, end: Color) -> Image ---
```

 

Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient

### [GenImageGradientRadial ¶](#GenImageGradientRadial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1320)

```
GenImageGradientRadial :: proc "c" (width, height: i32, density: f32, inner, outer: Color) -> Image ---
```

 

Generate image: radial gradient

### [GenImageGradientSquare ¶](#GenImageGradientSquare) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1321)

```
GenImageGradientSquare :: proc "c" (width, height: i32, density: f32, inner, outer: Color) -> Image ---
```

 

Generate image: square gradient

### [GenImagePerlinNoise ¶](#GenImagePerlinNoise) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1324)

```
GenImagePerlinNoise :: proc "c" (width, height: i32, offsetX, offsetY: i32, scale: f32) -> Image ---
```

 

Generate image: perlin noise

### [GenImageText ¶](#GenImageText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1326)

```
GenImageText :: proc "c" (width, height: i32, text: cstring) -> Image ---
```

 

Generate image: grayscale image from text data

### [GenImageWhiteNoise ¶](#GenImageWhiteNoise) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1323)

```
GenImageWhiteNoise :: proc "c" (width, height: i32, factor: f32) -> Image ---
```

 

Generate image: white noise

### [GenMeshCone ¶](#GenMeshCone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1592)

```
GenMeshCone :: proc "c" (radius, height: f32, slices: i32) -> Mesh ---
```

 

Generate cone/pyramid mesh

### [GenMeshCube ¶](#GenMeshCube) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1588)

```
GenMeshCube :: proc "c" (width, height, length: f32) -> Mesh ---
```

 

Generate cuboid mesh

### [GenMeshCubicmap ¶](#GenMeshCubicmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1596)

```
GenMeshCubicmap :: proc "c" (cubicmap: Image, cubeSize: [3]f32) -> Mesh ---
```

 

Generate cubes-based map mesh from image data

### [GenMeshCylinder ¶](#GenMeshCylinder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1591)

```
GenMeshCylinder :: proc "c" (radius, height: f32, slices: i32) -> Mesh ---
```

 

Generate cylinder mesh

### [GenMeshHeightmap ¶](#GenMeshHeightmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1595)

```
GenMeshHeightmap :: proc "c" (heightmap: Image, size: [3]f32) -> Mesh ---
```

 

Generate heightmap mesh from image data

### [GenMeshHemiSphere ¶](#GenMeshHemiSphere) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1590)

```
GenMeshHemiSphere :: proc "c" (radius: f32, rings, slices: i32) -> Mesh ---
```

 

Generate half-sphere mesh (no bottom cap)

### [GenMeshKnot ¶](#GenMeshKnot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1594)

```
GenMeshKnot :: proc "c" (radius, size: f32, radSeg, sides: i32) -> Mesh ---
```

 

Generate trefoil knot mesh

### [GenMeshPlane ¶](#GenMeshPlane) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1587)

```
GenMeshPlane :: proc "c" (width, length: f32, resX, resZ: i32) -> Mesh ---
```

 

Generate plane mesh (with subdivisions)

### [GenMeshPoly ¶](#GenMeshPoly) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1586)

```
GenMeshPoly :: proc "c" (sides: i32, radius: f32) -> Mesh ---
```

 

Generate polygonal mesh

### [GenMeshSphere ¶](#GenMeshSphere) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1589)

```
GenMeshSphere :: proc "c" (radius: f32, rings, slices: i32) -> Mesh ---
```

 

Generate sphere mesh (standard sphere)

### [GenMeshTangents ¶](#GenMeshTangents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1580)

```
GenMeshTangents :: proc "c" (mesh: ^Mesh) ---
```

 

Compute mesh tangents

### [GenMeshTorus ¶](#GenMeshTorus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1593)

```
GenMeshTorus :: proc "c" (radius, size: f32, radSeg, sides: i32) -> Mesh ---
```

 

Generate torus mesh

### [GenTextureMipmaps ¶](#GenTextureMipmaps) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1409)

```
GenTextureMipmaps :: proc "c" (texture: ^Texture) ---
```

 

Generate GPU mipmaps for a texture

### [GetApplicationDirectory ¶](#GetApplicationDirectory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1087)

```
GetApplicationDirectory :: proc "c" () -> cstring ---
```

 

Get the directory of the running application (uses static string)

### [GetCameraForward ¶](#GetCameraForward) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1198)

```
GetCameraForward :: proc "c" (camera: ^Camera3D) -> [3]f32 ---
```

 

returns the camera's forward vector (normalized)

### [GetCameraMatrix ¶](#GetCameraMatrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1027)

```
GetCameraMatrix :: proc "c" (camera: Camera3D) -> matrix[4, 4]f32 ---
```

 

Get camera transform matrix (view matrix)

### [GetCameraMatrix2D ¶](#GetCameraMatrix2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1028)

```
GetCameraMatrix2D :: proc "c" (camera: Camera2D) -> matrix[4, 4]f32 ---
```

 

Get camera 2d transform matrix

### [GetCameraProjectionMatrix ¶](#GetCameraProjectionMatrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1213)

```
GetCameraProjectionMatrix :: proc "c" (camera: ^Camera3D, aspect: f32) -> matrix[4, 4]f32 ---
```

 

returns the camera projection matrix

### [GetCameraRight ¶](#GetCameraRight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1200)

```
GetCameraRight :: proc "c" (camera: ^Camera3D) -> [3]f32 ---
```

 

returns the camera's right vector (normalized)

### [GetCameraUp ¶](#GetCameraUp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1199)

```
GetCameraUp :: proc "c" (camera: ^Camera3D) -> [3]f32 ---
```

 

returns the camera's up vector (normalized) - might not be perpendicular to forward vector

### [GetCameraViewMatrix ¶](#GetCameraViewMatrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1212)

```
GetCameraViewMatrix :: proc "c" (camera: ^Camera3D) -> matrix[4, 4]f32 ---
```

 

returns the camera view matrix

### [GetCharPressed ¶](#GetCharPressed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1134)

```
GetCharPressed :: proc "c" () -> rune ---
```

 

Get char pressed (unicode), call it multiple times for chars queued

### [GetClipboardImage ¶](#GetClipboardImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L954)

```
GetClipboardImage :: proc "c" () -> Image ---
```

 

Get clipboard image content

### [GetClipboardText ¶](#GetClipboardText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L953)

```
GetClipboardText :: proc "c" () -> cstring ---
```

 

Get clipboard text content

### [GetCodepoint ¶](#GetCodepoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1488)

```
GetCodepoint :: proc "c" (text: cstring, codepointSize: ^i32) -> rune ---
```

 

Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure

### [GetCodepointCount ¶](#GetCodepointCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1487)

```
GetCodepointCount :: proc "c" (text: cstring) -> i32 ---
```

 

Get total number of codepoints in a UTF-8 encoded string

### [GetCodepointNext ¶](#GetCodepointNext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1489)

```
GetCodepointNext :: proc "c" (text: cstring, codepointSize: ^i32) -> rune ---
```

 

Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure

### [GetCodepointPrevious ¶](#GetCodepointPrevious) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1490)

```
GetCodepointPrevious :: proc "c" (text: cstring, codepointSize: ^i32) -> rune ---
```

 

Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure

### [GetCollisionRec ¶](#GetCollisionRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1296)

```
GetCollisionRec :: proc "c" (rec1, rec2: Rectangle) -> Rectangle ---
```

 

Get collision rectangle for two rectangles collision

### [GetColor ¶](#GetColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1437)

```
GetColor :: proc "c" (hexValue: u32) -> Color ---
```

 

Get Color structure from hexadecimal value

### [GetCurrentMonitor ¶](#GetCurrentMonitor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L942)

```
GetCurrentMonitor :: proc "c" () -> i32 ---
```

 

Get current monitor where window is placed

### [GetDirectoryPath ¶](#GetDirectoryPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1084)

```
GetDirectoryPath :: proc "c" (filePath: cstring) -> cstring ---
```

 

Get full path for a given fileName with path (uses static string)

### [GetFPS ¶](#GetFPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1033)

```
GetFPS :: proc "c" () -> i32 ---
```

 

Returns current FPS

### [GetFileExtension ¶](#GetFileExtension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1081)

```
GetFileExtension :: proc "c" (fileName: cstring) -> cstring ---
```

 

Get pointer to extension for a filename string (includes dot: '.png')

### [GetFileLength ¶](#GetFileLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1080)

```
GetFileLength :: proc "c" (fileName: cstring) -> i32 ---
```

 

Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)

### [GetFileModTime ¶](#GetFileModTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1098)

```
GetFileModTime :: proc "c" (fileName: cstring) -> i32 ---
```

 

Get file modification time (last write time)

### [GetFileName ¶](#GetFileName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1082)

```
GetFileName :: proc "c" (filePath: cstring) -> cstring ---
```

 

Get pointer to filename for a path string

### [GetFileNameWithoutExt ¶](#GetFileNameWithoutExt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1083)

```
GetFileNameWithoutExt :: proc "c" (filePath: cstring) -> cstring ---
```

 

Get filename string without extension (uses static string)

### [GetFontDefault ¶](#GetFontDefault) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1451)

```
GetFontDefault :: proc "c" () -> Font ---
```

 

Get the default Font

### [GetFrameTime ¶](#GetFrameTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1034)

```
GetFrameTime :: proc "c" () -> f32 ---
```

 

Returns time in seconds for last frame drawn (delta time)

### [GetGamepadAxisCount ¶](#GetGamepadAxisCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1146)

```
GetGamepadAxisCount :: proc "c" (gamepad: i32) -> i32 ---
```

 

Get gamepad axis count for a gamepad

### [GetGamepadAxisMovement ¶](#GetGamepadAxisMovement) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1147)

```
GetGamepadAxisMovement :: proc "c" (gamepad: i32, axis: GamepadAxis) -> f32 ---
```

 

Get axis movement value for a gamepad axis

### [GetGamepadButtonPressed ¶](#GetGamepadButtonPressed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1145)

```
GetGamepadButtonPressed :: proc "c" () -> GamepadButton ---
```

 

Get the last gamepad button pressed

### [GetGamepadName ¶](#GetGamepadName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1140)

```
GetGamepadName :: proc "c" (gamepad: i32) -> cstring ---
```

 

Get gamepad internal name id

### [GetGestureDetected ¶](#GetGestureDetected) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1184)

```
GetGestureDetected :: proc "c" () -> Gestures ---
```

 

Get latest detected gesture

### [GetGestureDragAngle ¶](#GetGestureDragAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1187)

```
GetGestureDragAngle :: proc "c" () -> f32 ---
```

 

Get gesture drag angle

### [GetGestureDragVector ¶](#GetGestureDragVector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1186)

```
GetGestureDragVector :: proc "c" () -> [2]f32 ---
```

 

Get gesture drag vector

### [GetGestureHoldDuration ¶](#GetGestureHoldDuration) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1185)

```
GetGestureHoldDuration :: proc "c" () -> f32 ---
```

 

Get gesture hold time in seconds

### [GetGesturePinchAngle ¶](#GetGesturePinchAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1189)

```
GetGesturePinchAngle :: proc "c" () -> f32 ---
```

 

Get gesture pinch angle

### [GetGesturePinchVector ¶](#GetGesturePinchVector) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1188)

```
GetGesturePinchVector :: proc "c" () -> [2]f32 ---
```

 

Get gesture pinch delta

### [GetGlyphAtlasRec ¶](#GetGlyphAtlasRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1479)

```
GetGlyphAtlasRec :: proc "c" (font: Font, codepoint: rune) -> Rectangle ---
```

 

Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found

### [GetGlyphIndex ¶](#GetGlyphIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1477)

```
GetGlyphIndex :: proc "c" (font: Font, codepoint: rune) -> i32 ---
```

 

Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found

### [GetGlyphInfo ¶](#GetGlyphInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1478)

```
GetGlyphInfo :: proc "c" (font: Font, codepoint: rune) -> GlyphInfo ---
```

 

Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found

### [GetImageAlphaBorder ¶](#GetImageAlphaBorder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1364)

```
GetImageAlphaBorder :: proc "c" (image: Image, threshold: f32) -> Rectangle ---
```

 

Get image alpha border rectangle

### [GetImageColor ¶](#GetImageColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1365)

```
GetImageColor :: proc "c" (image: Image, x, y: i32) -> Color ---
```

 

Get image pixel color at (x, y) position

### [GetKeyPressed ¶](#GetKeyPressed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1133)

```
GetKeyPressed :: proc "c" () -> KeyboardKey ---
```

 

Get key pressed (keycode), call it multiple times for keys queued

### [GetMasterVolume ¶](#GetMasterVolume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1637)

```
GetMasterVolume :: proc "c" () -> f32 ---
```

 

Get master volume (listener)

### [GetMeshBoundingBox ¶](#GetMeshBoundingBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1579)

```
GetMeshBoundingBox :: proc "c" (mesh: Mesh) -> BoundingBox ---
```

 

Compute mesh bounding box limits

### [GetModelBoundingBox ¶](#GetModelBoundingBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1557)

```
GetModelBoundingBox :: proc "c" (model: Model) -> BoundingBox ---
```

 

Compute model bounding box limits (considers all meshes)

### [GetMonitorCount ¶](#GetMonitorCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L941)

```
GetMonitorCount :: proc "c" () -> i32 ---
```

 

Get number of connected monitors

### [GetMonitorHeight ¶](#GetMonitorHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L945)

```
GetMonitorHeight :: proc "c" (monitor: i32) -> i32 ---
```

 

Get specified monitor height (current video mode used by monitor)

### [GetMonitorName ¶](#GetMonitorName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L951)

```
GetMonitorName :: proc "c" (monitor: i32) -> cstring ---
```

 

Get the human-readable, UTF-8 encoded name of the specified monitor

### [GetMonitorPhysicalHeight ¶](#GetMonitorPhysicalHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L947)

```
GetMonitorPhysicalHeight :: proc "c" (monitor: i32) -> i32 ---
```

 

Get specified monitor physical height in millimetres

### [GetMonitorPhysicalWidth ¶](#GetMonitorPhysicalWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L946)

```
GetMonitorPhysicalWidth :: proc "c" (monitor: i32) -> i32 ---
```

 

Get specified monitor physical width in millimetres

### [GetMonitorPosition ¶](#GetMonitorPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L943)

```
GetMonitorPosition :: proc "c" (monitor: i32) -> [2]f32 ---
```

 

Get specified monitor position

### [GetMonitorRefreshRate ¶](#GetMonitorRefreshRate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L948)

```
GetMonitorRefreshRate :: proc "c" (monitor: i32) -> i32 ---
```

 

Get specified monitor refresh rate

### [GetMonitorWidth ¶](#GetMonitorWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L944)

```
GetMonitorWidth :: proc "c" (monitor: i32) -> i32 ---
```

 

Get specified monitor width (current video mode used by monitor)

### [GetMouseDelta ¶](#GetMouseDelta) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1162)

```
GetMouseDelta :: proc "c" () -> [2]f32 ---
```

 

Returns mouse delta XY

### [GetMousePosition ¶](#GetMousePosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1161)

```
GetMousePosition :: proc "c" () -> [2]f32 ---
```

 

Returns mouse position XY

### [GetMouseWheelMove ¶](#GetMouseWheelMove) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1166)

```
GetMouseWheelMove :: proc "c" () -> f32 ---
```

 

Returns mouse wheel movement Y

### [GetMouseWheelMoveV ¶](#GetMouseWheelMoveV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1167)

```
GetMouseWheelMoveV :: proc "c" () -> [2]f32 ---
```

 

Get mouse wheel movement for both X and Y

### [GetMouseX ¶](#GetMouseX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1159)

```
GetMouseX :: proc "c" () -> i32 ---
```

 

Returns mouse position X

### [GetMouseY ¶](#GetMouseY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1160)

```
GetMouseY :: proc "c" () -> i32 ---
```

 

Returns mouse position Y

### [GetMusicTimeLength ¶](#GetMusicTimeLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1688)

```
GetMusicTimeLength :: proc "c" (music: Music) -> f32 ---
```

 

Get music time length (in seconds)

### [GetMusicTimePlayed ¶](#GetMusicTimePlayed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1689)

```
GetMusicTimePlayed :: proc "c" (music: Music) -> f32 ---
```

 

Get current music time played (in seconds)

### [GetPixelColor ¶](#GetPixelColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1438)

```
GetPixelColor :: proc "c" (srcPtr: rawptr, format: PixelFormat) -> Color ---
```

 

Get Color from a source pixel pointer of certain format

### [GetPixelDataSize ¶](#GetPixelDataSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1440)

```
GetPixelDataSize :: proc "c" (width, height: i32, format: PixelFormat) -> i32 ---
```

 

Get pixel data size in bytes for certain format

### [GetPrevDirectoryPath ¶](#GetPrevDirectoryPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1085)

```
GetPrevDirectoryPath :: proc "c" (dirPath: cstring) -> cstring ---
```

 

Get previous directory path for a given path (uses static string)

### [GetRandomValue ¶](#GetRandomValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1040)

```
GetRandomValue :: proc "c" (min, max: i32) -> i32 ---
```

 

Get a random value between min and max (both included)

### [GetRayCollisionBox ¶](#GetRayCollisionBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1622)

```
GetRayCollisionBox :: proc "c" (ray: Ray, box: BoundingBox) -> RayCollision ---
```

 

Get collision info between ray and box

### [GetRayCollisionMesh ¶](#GetRayCollisionMesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1623)

```
GetRayCollisionMesh :: proc "c" (ray: Ray, mesh: Mesh, transform: matrix[4, 4]f32) -> RayCollision ---
```

 

Get collision info between ray and mesh

### [GetRayCollisionQuad ¶](#GetRayCollisionQuad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1625)

```
GetRayCollisionQuad :: proc "c" (ray: Ray, p1, p2, p3, p4: [3]f32) -> RayCollision ---
```

 

Get collision info between ray and quad

### [GetRayCollisionSphere ¶](#GetRayCollisionSphere) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1621)

```
GetRayCollisionSphere :: proc "c" (ray: Ray, center: [3]f32, radius: f32) -> RayCollision ---
```

 

Get collision info between ray and sphere

### [GetRayCollisionTriangle ¶](#GetRayCollisionTriangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1624)

```
GetRayCollisionTriangle :: proc "c" (ray: Ray, p1, p2, p3: [3]f32) -> RayCollision ---
```

 

Get collision info between ray and triangle

### [GetRenderHeight ¶](#GetRenderHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L940)

```
GetRenderHeight :: proc "c" () -> i32 ---
```

 

Get current render height (it considers HiDPI)

### [GetRenderWidth ¶](#GetRenderWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L939)

```
GetRenderWidth :: proc "c" () -> i32 ---
```

 

Get current render width (it considers HiDPI)

### [GetScreenHeight ¶](#GetScreenHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L938)

```
GetScreenHeight :: proc "c" () -> i32 ---
```

 

Get current screen height

### [GetScreenToWorld2D ¶](#GetScreenToWorld2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1026)

```
GetScreenToWorld2D :: proc "c" (position: [2]f32, camera: Camera2D) -> [2]f32 ---
```

 

Get the world space position for a 2d camera screen space position

### [GetScreenToWorldRay ¶](#GetScreenToWorldRay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1021)

```
GetScreenToWorldRay :: proc "c" (position: [2]f32, camera: Camera3D) -> Ray ---
```

 

Get a ray trace from screen position (i.e mouse)

### [GetScreenToWorldRayEx ¶](#GetScreenToWorldRayEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1022)

```
GetScreenToWorldRayEx :: proc "c" (position: [2]f32, camera: Camera3D, width: i32, height: i32) -> Ray ---
```

 

Get a ray trace from screen position (i.e mouse) in a viewport

### [GetScreenWidth ¶](#GetScreenWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L937)

```
GetScreenWidth :: proc "c" () -> i32 ---
```

 

Get current screen width

### [GetShaderLocation ¶](#GetShaderLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1009)

```
GetShaderLocation :: proc "c" (shader: Shader, uniformName: cstring) -> i32 ---
```

 

Get shader uniform location

### [GetShaderLocationAttrib ¶](#GetShaderLocationAttrib) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1010)

```
GetShaderLocationAttrib :: proc "c" (shader: Shader, attribName: cstring) -> i32 ---
```

 

Get shader attribute location

### [GetShapesTexture ¶](#GetShapesTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1223)

```
GetShapesTexture :: proc "c" () -> Texture ---
```

 

Get texture that is used for shapes drawing

### [GetShapesTextureRectangle ¶](#GetShapesTextureRectangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1224)

```
GetShapesTextureRectangle :: proc "c" () -> Rectangle ---
```

 

Get texture source rectangle that is used for shapes drawing

### [GetSplinePointBasis ¶](#GetSplinePointBasis) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1281)

```
GetSplinePointBasis :: proc "c" (p1, p2, p3, p4: [2]f32, t: f32) -> [2]f32 ---
```

 

Get (evaluate) spline point: B-Spline

### [GetSplinePointBezierCubic ¶](#GetSplinePointBezierCubic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1284)

```
GetSplinePointBezierCubic :: proc "c" (p1, c2, c3, p4: [2]f32, t: f32) -> [2]f32 ---
```

 

Get (evaluate) spline point: Cubic Bezier

### [GetSplinePointBezierQuad ¶](#GetSplinePointBezierQuad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1283)

```
GetSplinePointBezierQuad :: proc "c" (p1, c2, p3: [2]f32, t: f32) -> [2]f32 ---
```

 

Get (evaluate) spline point: Quadratic Bezier

### [GetSplinePointCatmullRom ¶](#GetSplinePointCatmullRom) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1282)

```
GetSplinePointCatmullRom :: proc "c" (p1, p2, p3, p4: [2]f32, t: f32) -> [2]f32 ---
```

 

Get (evaluate) spline point: Catmull-Rom

### [GetSplinePointLinear ¶](#GetSplinePointLinear) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1280)

```
GetSplinePointLinear :: proc "c" (startPos, endPos: [2]f32, t: f32) -> [2]f32 ---
```

 

Spline segment point evaluation functions, for a given t [0.0f .. 1.0f]

### [GetTime ¶](#GetTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1035)

```
GetTime :: proc "c" () -> f64 ---
```

 

Returns elapsed time in seconds since InitWindow()

### [GetTouchPointCount ¶](#GetTouchPointCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1176)

```
GetTouchPointCount :: proc "c" () -> i32 ---
```

 

Get number of touch points

### [GetTouchPointId ¶](#GetTouchPointId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1175)

```
GetTouchPointId :: proc "c" (index: i32) -> i32 ---
```

 

Get touch point identifier for given index

### [GetTouchPosition ¶](#GetTouchPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1174)

```
GetTouchPosition :: proc "c" (index: i32) -> [2]f32 ---
```

 

Returns touch position XY for a touch point index (relative to screen size)

### [GetTouchX ¶](#GetTouchX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1172)

```
GetTouchX :: proc "c" () -> i32 ---
```

 

Returns touch position X for touch point 0 (relative to screen size)

### [GetTouchY ¶](#GetTouchY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1173)

```
GetTouchY :: proc "c" () -> i32 ---
```

 

Returns touch position Y for touch point 0 (relative to screen size)

### [GetWindowHandle ¶](#GetWindowHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L936)

```
GetWindowHandle :: proc "c" () -> rawptr ---
```

 

Get native window handle

### [GetWindowPosition ¶](#GetWindowPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L949)

```
GetWindowPosition :: proc "c" () -> [2]f32 ---
```

 

Get window position XY on monitor

### [GetWindowScaleDPI ¶](#GetWindowScaleDPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L950)

```
GetWindowScaleDPI :: proc "c" () -> [2]f32 ---
```

 

Get window scale DPI factor

### [GetWorkingDirectory ¶](#GetWorkingDirectory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1086)

```
GetWorkingDirectory :: proc "c" () -> cstring ---
```

 

Get current working directory (uses static string)

### [GetWorldToScreen ¶](#GetWorldToScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1023)

```
GetWorldToScreen :: proc "c" (position: [3]f32, camera: Camera3D) -> [2]f32 ---
```

 

Get the screen space position for a 3d world space position

### [GetWorldToScreen2D ¶](#GetWorldToScreen2D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1025)

```
GetWorldToScreen2D :: proc "c" (position: [2]f32, camera: Camera2D) -> [2]f32 ---
```

 

Get the screen space position for a 2d camera world space position

### [GetWorldToScreenEx ¶](#GetWorldToScreenEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1024)

```
GetWorldToScreenEx :: proc "c" (position: [3]f32, camera: Camera3D, width: i32, height: i32) -> [2]f32 ---
```

 

Get size position for a 3d world space position

### [GuiButton ¶](#GuiButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L272)

```
GuiButton :: proc "c" (bounds: Rectangle, text: cstring) -> bool ---
```

 

Button control, returns true when clicked

### [GuiCheckBox ¶](#GuiCheckBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L277)

```
GuiCheckBox :: proc "c" (bounds: Rectangle, text: cstring, checked: ^bool) -> bool ---
```

 

Check Box control, returns true when active

### [GuiColorBarAlpha ¶](#GuiColorBarAlpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L299)

```
GuiColorBarAlpha :: proc "c" (bounds: Rectangle, text: cstring, alpha: ^f32) -> i32 ---
```

 

Color Bar Alpha control

### [GuiColorBarHue ¶](#GuiColorBarHue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L300)

```
GuiColorBarHue :: proc "c" (bounds: Rectangle, text: cstring, value: ^f32) -> i32 ---
```

 

Color Bar Hue control

### [GuiColorPanel ¶](#GuiColorPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L298)

```
GuiColorPanel :: proc "c" (bounds: Rectangle, text: cstring, color: ^Color) -> i32 ---
```

 

Color Panel control

### [GuiColorPanelHSV ¶](#GuiColorPanelHSV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L302)

```
GuiColorPanelHSV :: proc "c" (bounds: Rectangle, text: cstring, colorHsv: ^[3]f32) -> i32 ---
```

 

Color Panel control that returns HSV color value, used by GuiColorPickerHSV()

### [GuiColorPicker ¶](#GuiColorPicker) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L297)

```
GuiColorPicker :: proc "c" (bounds: Rectangle, text: cstring, color: ^Color) -> i32 ---
```

 

Color Picker control (multiple color controls)

### [GuiColorPickerHSV ¶](#GuiColorPickerHSV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L301)

```
GuiColorPickerHSV :: proc "c" (bounds: Rectangle, text: cstring, colorHsv: ^[3]f32) -> i32 ---
```

 

Color Picker control that avoids conversion to RGB on each call (multiple color controls)

### [GuiComboBox ¶](#GuiComboBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L278)

```
GuiComboBox :: proc "c" (bounds: Rectangle, text: cstring, active: ^i32) -> i32 ---
```

 

Combo Box control, returns selected item index

### [GuiDisable ¶](#GuiDisable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L221)

```
GuiDisable :: proc "c" () ---
```

 

Disable gui controls (global state)

### [GuiDisableTooltip ¶](#GuiDisableTooltip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L246)

```
GuiDisableTooltip :: proc "c" () ---
```

 

Disable gui tooltips (global state)

### [GuiDrawIcon ¶](#GuiDrawIcon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L255)

```
GuiDrawIcon :: proc "c" (iconId: GuiIconName, posX, posY: i32, pixelSize: i32, color: Color) ---
```

 

Draw icon using pixel size at specified position

### [GuiDropdownBox ¶](#GuiDropdownBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L280)

```
GuiDropdownBox :: proc "c" (bounds: Rectangle, text: cstring, active: ^i32, editMode: bool) -> bool ---
```

 

Dropdown Box control, returns selected item

### [GuiDummyRec ¶](#GuiDummyRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L289)

```
GuiDummyRec :: proc "c" (bounds: Rectangle, text: cstring) -> i32 ---
```

 

Dummy control for placeholders

### [GuiEnable ¶](#GuiEnable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L219)

```
GuiEnable :: proc "c" () ---
```

 

Enable gui controls (global state)

### [GuiEnableTooltip ¶](#GuiEnableTooltip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L245)

```
GuiEnableTooltip :: proc "c" () ---
```

 

Enable gui tooltips (global state)

### [GuiGetFont ¶](#GuiGetFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L231)

```
GuiGetFont :: proc "c" () -> Font ---
```

 

Get gui custom font (global state)

### [GuiGetIcons ¶](#GuiGetIcons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L253)

```
GuiGetIcons :: proc "c" () -> [^]u32 ---
```

 

Get raygui icons data pointer

### [GuiGetState ¶](#GuiGetState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L226)

```
GuiGetState :: proc "c" () -> i32 ---
```

 

Get gui state (global state)

### [GuiGetStyle ¶](#GuiGetStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L236)

```
GuiGetStyle :: proc "c" (control: GuiControl, property: i32) -> i32 ---
```

 

Get one style property

### [GuiGrid ¶](#GuiGrid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L290)

```
GuiGrid :: proc "c" (bounds: Rectangle, text: cstring, spacing: f32, subdivs: i32, mouseCell: ^[2]f32) -> i32 ---
```

 

Grid control, returns mouse cell position

### [GuiGroupBox ¶](#GuiGroupBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L263)

```
GuiGroupBox :: proc "c" (bounds: Rectangle, text: cstring) -> i32 ---
```

 

Group Box control with text name

### [GuiIconText ¶](#GuiIconText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L251)

```
GuiIconText :: proc "c" (iconId: GuiIconName, text: cstring) -> cstring ---
```

 

Get text with icon id prepended (if supported)

### [GuiIsLocked ¶](#GuiIsLocked) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L223)

```
GuiIsLocked :: proc "c" () -> bool ---
```

 

Check if gui is locked (global state)

### [GuiLabel ¶](#GuiLabel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L271)

```
GuiLabel :: proc "c" (bounds: Rectangle, text: cstring) -> i32 ---
```

 

Label control, shows text

### [GuiLabelButton ¶](#GuiLabelButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L273)

```
GuiLabelButton :: proc "c" (bounds: Rectangle, text: cstring) -> bool ---
```

 

Label button control, show true when clicked

### [GuiLine ¶](#GuiLine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L264)

```
GuiLine :: proc "c" (bounds: Rectangle, text: cstring) -> i32 ---
```

 

Line separator control, could contain text

### [GuiListView ¶](#GuiListView) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L293)

```
GuiListView :: proc "c" (bounds: Rectangle, text: cstring, scrollIndex: ^i32, active: ^i32) -> i32 ---
```

 

Advance controls set

### [GuiListViewEx ¶](#GuiListViewEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L294)

```
GuiListViewEx :: proc "c" (
	bounds:      Rectangle, 
	text:        [^]cstring, 
	count:       i32, 
	scrollIndex: ^i32, 
	active:      ^i32, 
	focus:       ^i32, 
) -> i32 ---
```

 

List View with extended parameters

### [GuiLoadIcons ¶](#GuiLoadIcons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L254)

```
GuiLoadIcons :: proc "c" (fileName: cstring, loadIconsName: bool) -> [^]cstring ---
```

 

Load raygui icons file (.rgi) into internal icons data

### [GuiLoadStyle ¶](#GuiLoadStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L240)

```
GuiLoadStyle :: proc "c" (fileName: cstring) ---
```

 

Load style file over global style variable (.rgs)

### [GuiLoadStyleDefault ¶](#GuiLoadStyleDefault) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L241)

```
GuiLoadStyleDefault :: proc "c" () ---
```

 

Load style default over global style

### [GuiLock ¶](#GuiLock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L220)

```
GuiLock :: proc "c" () ---
```

 

Lock gui controls (global state)

### [GuiMessageBox ¶](#GuiMessageBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L295)

```
GuiMessageBox :: proc "c" (bounds: Rectangle, title: cstring, message: cstring, buttons: cstring) -> i32 ---
```

 

Message Box control, displays a message

### [GuiPanel ¶](#GuiPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L265)

```
GuiPanel :: proc "c" (bounds: Rectangle, text: cstring) -> i32 ---
```

 

Panel control, useful to group controls

### [GuiProgressBar ¶](#GuiProgressBar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L287)

```
GuiProgressBar :: proc "c" (
	bounds:    Rectangle, 
	textLeft:  cstring, 
	textRight: cstring, 
	value:     ^f32, 
	minValue:  f32, 
	maxValue:  f32, 
) -> i32 ---
```

 

Progress Bar control, shows current progress value

### [GuiScrollPanel ¶](#GuiScrollPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L267)

```
GuiScrollPanel :: proc "c" (bounds: Rectangle, text: cstring, content: Rectangle, scroll: ^[2]f32, view: ^Rectangle) -> i32 ---
```

 

Scroll Panel control

### [GuiSetAlpha ¶](#GuiSetAlpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L224)

```
GuiSetAlpha :: proc "c" (alpha: f32) ---
```

 

Set gui controls alpha (global state), alpha goes from 0.0f to 1.0f

### [GuiSetFont ¶](#GuiSetFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L230)

```
GuiSetFont :: proc "c" (font: Font) ---
```

 

Set gui custom font (global state)

### [GuiSetIconScale ¶](#GuiSetIconScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L252)

```
GuiSetIconScale :: proc "c" (scale: i32) ---
```

 

Set default icon drawing size

### [GuiSetState ¶](#GuiSetState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L225)

```
GuiSetState :: proc "c" (state: i32) ---
```

 

Set gui state (global state)

### [GuiSetStyle ¶](#GuiSetStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L235)

```
GuiSetStyle :: proc "c" (control: GuiControl, property: i32, value: i32) ---
```

 

Set one style property

### [GuiSetTooltip ¶](#GuiSetTooltip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L247)

```
GuiSetTooltip :: proc "c" (tooltip: cstring) ---
```

 

Set tooltip string

### [GuiSlider ¶](#GuiSlider) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L285)

```
GuiSlider :: proc "c" (
	bounds:    Rectangle, 
	textLeft:  cstring, 
	textRight: cstring, 
	value:     ^f32, 
	minValue:  f32, 
	maxValue:  f32, 
) -> i32 ---
```

 

Slider control, returns selected value

### [GuiSliderBar ¶](#GuiSliderBar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L286)

```
GuiSliderBar :: proc "c" (
	bounds:    Rectangle, 
	textLeft:  cstring, 
	textRight: cstring, 
	value:     ^f32, 
	minValue:  f32, 
	maxValue:  f32, 
) -> i32 ---
```

 

Slider Bar control, returns selected value

### [GuiSpinner ¶](#GuiSpinner) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L281)

```
GuiSpinner :: proc "c" (
	bounds:             Rectangle, 
	text:               cstring, 
	value:              ^i32, 
	minValue, maxValue: i32, 
	editMode:           bool, 
) -> i32 ---
```

 

Spinner control, returns selected value

### [GuiStatusBar ¶](#GuiStatusBar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L288)

```
GuiStatusBar :: proc "c" (bounds: Rectangle, text: cstring) -> i32 ---
```

 

Status Bar control, shows info text

### [GuiTabBar ¶](#GuiTabBar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L266)

```
GuiTabBar :: proc "c" (bounds: Rectangle, text: [^]cstring, count: i32, active: ^i32) -> i32 ---
```

 

Tab Bar control, returns TAB to be closed or -1

### [GuiTextBox ¶](#GuiTextBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L283)

```
GuiTextBox :: proc "c" (bounds: Rectangle, text: cstring, textSize: i32, editMode: bool) -> bool ---
```

 

Text Box control, updates input text

### [GuiTextInputBox ¶](#GuiTextInputBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L296)

```
GuiTextInputBox :: proc "c" (
	bounds:           Rectangle, 
	title:            cstring, 
	message:          cstring, 
	buttons:          cstring, 
	text:             cstring, 
	textMaxSize:      i32, 
	secretViewActive: ^bool, 
) -> i32 ---
```

 

Text Input Box control, ask for text, supports secret

### [GuiToggle ¶](#GuiToggle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L274)

```
GuiToggle :: proc "c" (bounds: Rectangle, text: cstring, active: ^bool) -> i32 ---
```

 

Toggle Button control, returns true when active

### [GuiToggleGroup ¶](#GuiToggleGroup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L275)

```
GuiToggleGroup :: proc "c" (bounds: Rectangle, text: cstring, active: ^i32) -> i32 ---
```

 

Toggle Group control, returns active toggle index

### [GuiToggleSlider ¶](#GuiToggleSlider) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L276)

```
GuiToggleSlider :: proc "c" (bounds: Rectangle, text: cstring, active: ^i32) -> i32 ---
```

### [GuiUnlock ¶](#GuiUnlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L222)

```
GuiUnlock :: proc "c" () ---
```

 

Unlock gui controls (global state)

### [GuiValueBox ¶](#GuiValueBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L282)

```
GuiValueBox :: proc "c" (
	bounds:             Rectangle, 
	text:               cstring, 
	value:              ^i32, 
	minValue, maxValue: i32, 
	editMode:           bool, 
) -> i32 ---
```

 

Value Box control, updates input text with numbers

### [GuiWindowBox ¶](#GuiWindowBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L262)

```
GuiWindowBox :: proc "c" (bounds: Rectangle, title: cstring) -> i32 ---
```

 

Window Box control, shows a window that can be closed

### [HideCursor ¶](#HideCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L972)

```
HideCursor :: proc "c" () ---
```

 

Hides cursor

### [ImageAlphaClear ¶](#ImageAlphaClear) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1339)

```
ImageAlphaClear :: proc "c" (image: ^Image, color: Color, threshold: f32) ---
```

 

Clear alpha channel to desired color

### [ImageAlphaCrop ¶](#ImageAlphaCrop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1338)

```
ImageAlphaCrop :: proc "c" (image: ^Image, threshold: f32) ---
```

 

Crop image depending on alpha value

### [ImageAlphaMask ¶](#ImageAlphaMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1340)

```
ImageAlphaMask :: proc "c" (image: ^Image, alphaMask: Image) ---
```

 

Apply alpha mask to image

### [ImageAlphaPremultiply ¶](#ImageAlphaPremultiply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1341)

```
ImageAlphaPremultiply :: proc "c" (image: ^Image) ---
```

 

Premultiply alpha channel

### [ImageBlurGaussian ¶](#ImageBlurGaussian) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1342)

```
ImageBlurGaussian :: proc "c" (image: ^Image, blurSize: i32) ---
```

 

Apply Gaussian blur using a box blur approximation

### [ImageClearBackground ¶](#ImageClearBackground) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1370)

```
ImageClearBackground :: proc "c" (dst: ^Image, color: Color) ---
```

 

Clear image background with given color

### [ImageColorBrightness ¶](#ImageColorBrightness) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1358)

```
ImageColorBrightness :: proc "c" (image: ^Image, brightness: i32) ---
```

 

Modify image color: brightness (-255 to 255)

### [ImageColorContrast ¶](#ImageColorContrast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1357)

```
ImageColorContrast :: proc "c" (image: ^Image, contrast: f32) ---
```

 

Modify image color: contrast (-100 to 100)

### [ImageColorGrayscale ¶](#ImageColorGrayscale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1356)

```
ImageColorGrayscale :: proc "c" (image: ^Image) ---
```

 

Modify image color: grayscale

### [ImageColorInvert ¶](#ImageColorInvert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1355)

```
ImageColorInvert :: proc "c" (image: ^Image) ---
```

 

Modify image color: invert

### [ImageColorReplace ¶](#ImageColorReplace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1359)

```
ImageColorReplace :: proc "c" (image: ^Image, color, replace: Color) ---
```

 

Modify image color: replace color

### [ImageColorTint ¶](#ImageColorTint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1354)

```
ImageColorTint :: proc "c" (image: ^Image, color: Color) ---
```

 

Modify image color: tint

### [ImageCopy ¶](#ImageCopy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1330)

```
ImageCopy :: proc "c" (image: Image) -> Image ---
```

 

Create an image duplicate (useful for transformations)

### [ImageCrop ¶](#ImageCrop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1337)

```
ImageCrop :: proc "c" (image: ^Image, crop: Rectangle) ---
```

 

Crop an image to a defined rectangle

### [ImageDither ¶](#ImageDither) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1348)

```
ImageDither :: proc "c" (image: ^Image, rBpp, gBpp, bBpp, aBpp: i32) ---
```

 

Dither image data to 16bpp or lower (Floyd-Steinberg dithering)

### [ImageDraw ¶](#ImageDraw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1389)

```
ImageDraw :: proc "c" (dst: ^Image, src: Image, srcRec, dstRec: Rectangle, tint: Color) ---
```

 

Draw a source image within a destination image (tint applied to source)

### [ImageDrawCircle ¶](#ImageDrawCircle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1376)

```
ImageDrawCircle :: proc "c" (dst: ^Image, centerX, centerY: i32, radius: i32, color: Color) ---
```

 

Draw a filled circle within an image

### [ImageDrawCircleLines ¶](#ImageDrawCircleLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1378)

```
ImageDrawCircleLines :: proc "c" (dst: ^Image, centerX, centerY: i32, radius: i32, color: Color) ---
```

 

Draw circle outline within an image

### [ImageDrawCircleLinesV ¶](#ImageDrawCircleLinesV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1379)

```
ImageDrawCircleLinesV :: proc "c" (dst: ^Image, center: [2]f32, radius: i32, color: Color) ---
```

 

Draw circle outline within an image (Vector version)

### [ImageDrawCircleV ¶](#ImageDrawCircleV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1377)

```
ImageDrawCircleV :: proc "c" (dst: ^Image, center: [2]f32, radius: i32, color: Color) ---
```

 

Draw a filled circle within an image (Vector version)

### [ImageDrawLine ¶](#ImageDrawLine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1373)

```
ImageDrawLine :: proc "c" (
	dst:                                    ^Image, 
	startPosX, startPosY, endPosX, endPosY: i32, 
	color:                                  Color, 
) ---
```

 

Draw line within an image

### [ImageDrawLineEx ¶](#ImageDrawLineEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1375)

```
ImageDrawLineEx :: proc "c" (dst: ^Image, start, end: [2]f32, thick: i32, color: Color) ---
```

 

Draw a line defining thickness within an image

### [ImageDrawLineV ¶](#ImageDrawLineV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1374)

```
ImageDrawLineV :: proc "c" (dst: ^Image, start, end: [2]f32, color: Color) ---
```

 

Draw line within an image (Vector version)

### [ImageDrawPixel ¶](#ImageDrawPixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1371)

```
ImageDrawPixel :: proc "c" (dst: ^Image, posX, posY: i32, color: Color) ---
```

 

Draw pixel within an image

### [ImageDrawPixelV ¶](#ImageDrawPixelV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1372)

```
ImageDrawPixelV :: proc "c" (dst: ^Image, position: [2]f32, color: Color) ---
```

 

Draw pixel within an image (Vector version)

### [ImageDrawRectangle ¶](#ImageDrawRectangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1380)

```
ImageDrawRectangle :: proc "c" (
	dst:           ^Image, 
	posX, posY:    i32, 
	width, height: i32, 
	color:         Color, 
) ---
```

 

Draw rectangle within an image

### [ImageDrawRectangleLines ¶](#ImageDrawRectangleLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1383)

```
ImageDrawRectangleLines :: proc "c" (dst: ^Image, rec: Rectangle, thick: i32, color: Color) ---
```

 

Draw rectangle lines within an image

### [ImageDrawRectangleRec ¶](#ImageDrawRectangleRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1382)

```
ImageDrawRectangleRec :: proc "c" (dst: ^Image, rec: Rectangle, color: Color) ---
```

 

Draw rectangle within an image

### [ImageDrawRectangleV ¶](#ImageDrawRectangleV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1381)

```
ImageDrawRectangleV :: proc "c" (dst: ^Image, position, size: [2]f32, color: Color) ---
```

 

Draw rectangle within an image (Vector version)

### [ImageDrawText ¶](#ImageDrawText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1390)

```
ImageDrawText :: proc "c" (
	dst:        ^Image, 
	text:       cstring, 
	posX, posY: i32, 
	fontSize:   i32, 
	color:      Color, 
) ---
```

 

Draw text (using default font) within an image (destination)

### [ImageDrawTextEx ¶](#ImageDrawTextEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1391)

```
ImageDrawTextEx :: proc "c" (
	dst:      ^Image, 
	font:     Font, 
	text:     cstring, 
	position: [2]f32, 
	fontSize: f32, 
	spacing:  f32, 
	tint:     Color, 
) ---
```

 

Draw text (custom sprite font) within an image (destination)

### [ImageDrawTriangle ¶](#ImageDrawTriangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1384)

```
ImageDrawTriangle :: proc "c" (dst: ^Image, v1, v2, v3: [2]f32, color: Color) ---
```

 

Draw triangle within an image

### [ImageDrawTriangleEx ¶](#ImageDrawTriangleEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1385)

```
ImageDrawTriangleEx :: proc "c" (
	dst:        ^Image, 
	v1, v2, v3: [2]f32, 
	c1, c2, 
	c3:         Color, 
) ---
```

 

Draw triangle with interpolated colors within an image

### [ImageDrawTriangleFan ¶](#ImageDrawTriangleFan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1387)

```
ImageDrawTriangleFan :: proc "c" (dst: ^Image, points: [^][2]f32, pointCount: i32, color: Color) ---
```

 

Draw a triangle fan defined by points within an image (first vertex is the center)

### [ImageDrawTriangleLines ¶](#ImageDrawTriangleLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1386)

```
ImageDrawTriangleLines :: proc "c" (dst: ^Image, v1, v2, v3: [2]f32, color: Color) ---
```

 

Draw triangle outline within an image

### [ImageDrawTriangleStrip ¶](#ImageDrawTriangleStrip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1388)

```
ImageDrawTriangleStrip :: proc "c" (dst: ^Image, points: [^][2]f32, pointCount: i32, color: Color) ---
```

 

Draw a triangle strip defined by points within an image

### [ImageFlipHorizontal ¶](#ImageFlipHorizontal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1350)

```
ImageFlipHorizontal :: proc "c" (image: ^Image) ---
```

 

Flip image horizontally

### [ImageFlipVertical ¶](#ImageFlipVertical) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1349)

```
ImageFlipVertical :: proc "c" (image: ^Image) ---
```

 

Flip image vertically

### [ImageFormat ¶](#ImageFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1335)

```
ImageFormat :: proc "c" (image: ^Image, newFormat: PixelFormat) ---
```

 

Convert image data to desired format

### [ImageFromChannel ¶](#ImageFromChannel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1332)

```
ImageFromChannel :: proc "c" (image: Image, selectedChannel: i32) -> Image ---
```

 

Create an image from a selected channel of another image (GRAYSCALE)

### [ImageFromImage ¶](#ImageFromImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1331)

```
ImageFromImage :: proc "c" (image: Image, rec: Rectangle) -> Image ---
```

 

Create an image from another image piece

### [ImageKernelConvolution ¶](#ImageKernelConvolution) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1343)

```
ImageKernelConvolution :: proc "c" (image: ^Image, kernel: [^]f32, kernelSize: i32) ---
```

 

Apply custom square convolution kernel to image

### [ImageMipmaps ¶](#ImageMipmaps) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1347)

```
ImageMipmaps :: proc "c" (image: ^Image) ---
```

 

Compute all mipmap levels for a provided image

### [ImageResize ¶](#ImageResize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1344)

```
ImageResize :: proc "c" (image: ^Image, newWidth, newHeight: i32) ---
```

 

Resize image (Bicubic scaling algorithm)

### [ImageResizeCanvas ¶](#ImageResizeCanvas) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1346)

```
ImageResizeCanvas :: proc "c" (
	image:               ^Image, 
	newWidth, newHeight: i32, 
	offsetX, offsetY:    i32, 
	fill:                Color, 
) ---
```

 

Resize canvas and fill with color

### [ImageResizeNN ¶](#ImageResizeNN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1345)

```
ImageResizeNN :: proc "c" (image: ^Image, newWidth, newHeight: i32) ---
```

 

Resize image (Nearest-Neighbor scaling algorithm)

### [ImageRotate ¶](#ImageRotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1351)

```
ImageRotate :: proc "c" (image: ^Image, degrees: i32) ---
```

 

Rotate image by input angle in degrees( -359 to 359)

### [ImageRotateCCW ¶](#ImageRotateCCW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1353)

```
ImageRotateCCW :: proc "c" (image: ^Image) ---
```

 

Rotate image counter-clockwise 90deg

### [ImageRotateCW ¶](#ImageRotateCW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1352)

```
ImageRotateCW :: proc "c" (image: ^Image) ---
```

 

Rotate image clockwise 90deg

### [ImageText ¶](#ImageText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1333)

```
ImageText :: proc "c" (text: cstring, fontSize: i32, color: Color) -> Image ---
```

 

Create an image from text (default font)

### [ImageTextEx ¶](#ImageTextEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1334)

```
ImageTextEx :: proc "c" (font: Font, text: cstring, fontSize: f32, spacing: f32, tint: Color) -> Image ---
```

 

Create an image from text (custom sprite font)

### [ImageToPOT ¶](#ImageToPOT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1336)

```
ImageToPOT :: proc "c" (image: ^Image, fill: Color) ---
```

 

Convert image to POT (power-of-two)

### [InitAudioDevice ¶](#InitAudioDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1633)

```
InitAudioDevice :: proc "c" () ---
```

 

Initialize audio device and context

### [InitWindow ¶](#InitWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L908)

```
InitWindow :: proc "c" (width, height: i32, title: cstring) ---
```

 

Initialize window and OpenGL context

### [IsAudioDeviceReady ¶](#IsAudioDeviceReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1635)

```
IsAudioDeviceReady :: proc "c" () -> bool ---
```

 

Check if audio device has been initialized successfully

### [IsAudioStreamPlaying ¶](#IsAudioStreamPlaying) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1701)

```
IsAudioStreamPlaying :: proc "c" (stream: AudioStream) -> bool ---
```

 

Check if audio stream is playing

### [IsAudioStreamProcessed ¶](#IsAudioStreamProcessed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1697)

```
IsAudioStreamProcessed :: proc "c" (stream: AudioStream) -> bool ---
```

 

Check if any audio stream buffers requires refill

### [IsAudioStreamReady ¶](#IsAudioStreamReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1694)

```
IsAudioStreamReady :: IsAudioStreamValid
```

 

Checks if an audio stream is valid (buffers initialized)

### [IsAudioStreamValid ¶](#IsAudioStreamValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1694)

```
IsAudioStreamValid :: proc "c" (stream: AudioStream) -> bool ---
```

 

Checks if an audio stream is valid (buffers initialized)

### [IsCursorHidden ¶](#IsCursorHidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L973)

```
IsCursorHidden :: proc "c" () -> bool ---
```

 

Check if cursor is not visible

### [IsCursorOnScreen ¶](#IsCursorOnScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L976)

```
IsCursorOnScreen :: proc "c" () -> bool ---
```

 

Check if cursor is on the current screen.

### [IsFileDropped ¶](#IsFileDropped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1095)

```
IsFileDropped :: proc "c" () -> bool ---
```

 

Check if a file has been dropped into window

### [IsFileExtension ¶](#IsFileExtension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1079)

```
IsFileExtension :: proc "c" (fileName, ext: cstring) -> bool ---
```

 

Check file extension (including point: .png, .wav)

### [IsFileNameValid ¶](#IsFileNameValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1091)

```
IsFileNameValid :: proc "c" (fileName: cstring) -> bool ---
```

 

Check if fileName is valid for the platform/OS

### [IsFontReady ¶](#IsFontReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1456)

```
IsFontReady :: IsFontValid
```

 

Check if a font is valid (font data loaded, WARNING: GPU texture not checked)

### [IsFontValid ¶](#IsFontValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1456)

```
IsFontValid :: proc "c" (font: Font) -> bool ---
```

 

Check if a font is valid (font data loaded, WARNING: GPU texture not checked)

### [IsGamepadAvailable ¶](#IsGamepadAvailable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1139)

```
IsGamepadAvailable :: proc "c" (gamepad: i32) -> bool ---
```

 

Check if a gamepad is available

### [IsGamepadButtonDown ¶](#IsGamepadButtonDown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1142)

```
IsGamepadButtonDown :: proc "c" (gamepad: i32, button: GamepadButton) -> bool ---
```

 

Check if a gamepad button is being pressed

### [IsGamepadButtonPressed ¶](#IsGamepadButtonPressed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1141)

```
IsGamepadButtonPressed :: proc "c" (gamepad: i32, button: GamepadButton) -> bool ---
```

 

Check if a gamepad button has been pressed once

### [IsGamepadButtonReleased ¶](#IsGamepadButtonReleased) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1143)

```
IsGamepadButtonReleased :: proc "c" (gamepad: i32, button: GamepadButton) -> bool ---
```

 

Check if a gamepad button has been released once

### [IsGamepadButtonUp ¶](#IsGamepadButtonUp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1144)

```
IsGamepadButtonUp :: proc "c" (gamepad: i32, button: GamepadButton) -> bool ---
```

 

Check if a gamepad button is NOT being pressed

### [IsGestureDetected ¶](#IsGestureDetected) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1717)

```
IsGestureDetected :: proc "c" (gesture: Gesture) -> bool {…}
```

 

Check if a gesture have been detected

### [IsImageReady ¶](#IsImageReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1310)

```
IsImageReady :: IsImageValid
```

 

Check if an image is ready

### [IsImageValid ¶](#IsImageValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1310)

```
IsImageValid :: proc "c" (image: Image) -> bool ---
```

 

Check if an image is ready

### [IsKeyDown ¶](#IsKeyDown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1130)

```
IsKeyDown :: proc "c" (key: KeyboardKey) -> bool ---
```

 

Detect if a key is being pressed

### [IsKeyPressed ¶](#IsKeyPressed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1128)

```
IsKeyPressed :: proc "c" (key: KeyboardKey) -> bool ---
```

 

Detect if a key has been pressed once

### [IsKeyPressedRepeat ¶](#IsKeyPressedRepeat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1129)

```
IsKeyPressedRepeat :: proc "c" (key: KeyboardKey) -> bool ---
```

 

Check if a key has been pressed again

### [IsKeyReleased ¶](#IsKeyReleased) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1131)

```
IsKeyReleased :: proc "c" (key: KeyboardKey) -> bool ---
```

 

Detect if a key has been released once

### [IsKeyUp ¶](#IsKeyUp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1132)

```
IsKeyUp :: proc "c" (key: KeyboardKey) -> bool ---
```

 

Detect if a key is NOT being pressed

### [IsMaterialReady ¶](#IsMaterialReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1602)

```
IsMaterialReady :: IsMaterialValid
```

 

Check if a material is valid (shader assigned, map textures loaded in GPU)

### [IsMaterialValid ¶](#IsMaterialValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1602)

```
IsMaterialValid :: proc "c" (material: Material) -> bool ---
```

 

Check if a material is valid (shader assigned, map textures loaded in GPU)

### [IsModelAnimationValid ¶](#IsModelAnimationValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1614)

```
IsModelAnimationValid :: proc "c" (model: Model, anim: ModelAnimation) -> bool ---
```

 

Check model animation skeleton match

### [IsModelReady ¶](#IsModelReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1555)

```
IsModelReady :: IsModelValid
```

 

Check if a model is valid (loaded in GPU, VAO/VBOs)

### [IsModelValid ¶](#IsModelValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1555)

```
IsModelValid :: proc "c" (model: Model) -> bool ---
```

 

Check if a model is valid (loaded in GPU, VAO/VBOs)

### [IsMouseButtonDown ¶](#IsMouseButtonDown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1155)

```
IsMouseButtonDown :: proc "c" (button: MouseButton) -> bool ---
```

 

Detect if a mouse button is being pressed

### [IsMouseButtonPressed ¶](#IsMouseButtonPressed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1154)

```
IsMouseButtonPressed :: proc "c" (button: MouseButton) -> bool ---
```

 

Detect if a mouse button has been pressed once

### [IsMouseButtonReleased ¶](#IsMouseButtonReleased) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1156)

```
IsMouseButtonReleased :: proc "c" (button: MouseButton) -> bool ---
```

 

Detect if a mouse button has been released once

### [IsMouseButtonUp ¶](#IsMouseButtonUp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1157)

```
IsMouseButtonUp :: proc "c" (button: MouseButton) -> bool ---
```

### [IsMusicReady ¶](#IsMusicReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1676)

```
IsMusicReady :: IsMusicValid
```

 

Checks if a music stream is valid (context and buffers initialized)

### [IsMusicStreamPlaying ¶](#IsMusicStreamPlaying) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1679)

```
IsMusicStreamPlaying :: proc "c" (music: Music) -> bool ---
```

 

Check if music is playing

### [IsMusicValid ¶](#IsMusicValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1676)

```
IsMusicValid :: proc "c" (music: Music) -> bool ---
```

 

Checks if a music stream is valid (context and buffers initialized)

### [IsPathFile ¶](#IsPathFile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1090)

```
IsPathFile :: proc "c" (path: cstring) -> bool ---
```

 

Check if a given path is a file or a directory

### [IsRenderTextureReady ¶](#IsRenderTextureReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1402)

```
IsRenderTextureReady :: IsRenderTextureValid
```

 

Check if a render texture is valid

### [IsRenderTextureValid ¶](#IsRenderTextureValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1402)

```
IsRenderTextureValid :: proc "c" (target: RenderTexture) -> bool ---
```

 

Check if a render texture is valid

### [IsShaderReady ¶](#IsShaderReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1008)

```
IsShaderReady :: IsShaderValid
```

 

Check if a shader is valid (loaded on GPU)

### [IsShaderValid ¶](#IsShaderValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1008)

```
IsShaderValid :: proc "c" (shader: Shader) -> bool ---
```

 

Check if a shader is valid (loaded on GPU)

### [IsSoundPlaying ¶](#IsSoundPlaying) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1661)

```
IsSoundPlaying :: proc "c" (sound: Sound) -> bool ---
```

 

Check if a sound is currently playing

### [IsSoundReady ¶](#IsSoundReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1647)

```
IsSoundReady :: IsSoundValid
```

 

Checks if a sound is valid (data loaded and buffers initialized)

### [IsSoundValid ¶](#IsSoundValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1647)

```
IsSoundValid :: proc "c" (sound: Sound) -> bool ---
```

 

Checks if a sound is valid (data loaded and buffers initialized)

### [IsTextureReady ¶](#IsTextureReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1400)

```
IsTextureReady :: IsTextureValid
```

 

Check if a texture is valid

### [IsTextureValid ¶](#IsTextureValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1400)

```
IsTextureValid :: proc "c" (texture: Texture) -> bool ---
```

 

Check if a texture is valid

### [IsWaveReady ¶](#IsWaveReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1643)

```
IsWaveReady :: IsWaveValid
```

 

Checks if wave data is // Checks if wave data is valid (data loaded and parameters)

### [IsWaveValid ¶](#IsWaveValid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1643)

```
IsWaveValid :: proc "c" (wave: Wave) -> bool ---
```

 

Checks if wave data is // Checks if wave data is valid (data loaded and parameters)

### [IsWindowFocused ¶](#IsWindowFocused) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L916)

```
IsWindowFocused :: proc "c" () -> bool ---
```

 

Check if window is currently focused

### [IsWindowFullscreen ¶](#IsWindowFullscreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L912)

```
IsWindowFullscreen :: proc "c" () -> bool ---
```

 

Check if window is currently fullscreen

### [IsWindowHidden ¶](#IsWindowHidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L913)

```
IsWindowHidden :: proc "c" () -> bool ---
```

 

Check if window is currently hidden

### [IsWindowMaximized ¶](#IsWindowMaximized) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L915)

```
IsWindowMaximized :: proc "c" () -> bool ---
```

 

Check if window is currently maximized

### [IsWindowMinimized ¶](#IsWindowMinimized) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L914)

```
IsWindowMinimized :: proc "c" () -> bool ---
```

 

Check if window is currently minimized

### [IsWindowReady ¶](#IsWindowReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L911)

```
IsWindowReady :: proc "c" () -> bool ---
```

 

Check if window has been initialized successfully

### [IsWindowResized ¶](#IsWindowResized) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L917)

```
IsWindowResized :: proc "c" () -> bool ---
```

 

Check if window has been resized last frame

### [IsWindowState ¶](#IsWindowState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L918)

```
IsWindowState :: proc "c" (flags: ConfigFlags) -> bool ---
```

 

Check if one specific window flag is enabled

### [Lerp ¶](#Lerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L22)

```
Lerp :: proc "c" (start, end: f32, amount: f32) -> f32 {…}
```

 

Calculate linear interpolation between two floats

### [LoadAudioStream ¶](#LoadAudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1693)

```
LoadAudioStream :: proc "c" (sampleRate, sampleSize: u32, channels: u32) -> AudioStream ---
```

 

Load audio stream (to stream raw audio pcm data)

### [LoadAutomationEventList ¶](#LoadAutomationEventList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1113)

```
LoadAutomationEventList :: proc "c" (fileName: cstring) -> AutomationEventList ---
```

 

Load automation events list from file, NULL for empty list, capacity = MAX\_AUTOMATION\_EVENTS

### [LoadCodepoints ¶](#LoadCodepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1485)

```
LoadCodepoints :: proc "c" (text: cstring, count: ^i32) -> [^]rune ---
```

 

Load all codepoints from a UTF-8 text string, codepoints count returned by parameter

### [LoadDirectoryFiles ¶](#LoadDirectoryFiles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1092)

```
LoadDirectoryFiles :: proc "c" (dirPath: cstring) -> FilePathList ---
```

 

Load directory filepaths

### [LoadDirectoryFilesEx ¶](#LoadDirectoryFilesEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1093)

```
LoadDirectoryFilesEx :: proc "c" (basePath: cstring, filter: cstring, scanSubdirs: bool) -> FilePathList ---
```

 

Load directory filepaths with extension filtering and recursive directory scan. Use 'DIR' in the filter string to include directories in the result

### [LoadDroppedFiles ¶](#LoadDroppedFiles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1096)

```
LoadDroppedFiles :: proc "c" () -> FilePathList ---
```

 

Load dropped filepaths

### [LoadFileData ¶](#LoadFileData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1067)

```
LoadFileData :: proc "c" (fileName: cstring, dataSize: ^i32) -> [^]u8 ---
```

 

Load file data as byte array (read)

### [LoadFileText ¶](#LoadFileText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1071)

```
LoadFileText :: proc "c" (fileName: cstring) -> [^]u8 ---
```

 

Load text data from file (read), returns a '\0' terminated string

### [LoadFont ¶](#LoadFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1452)

```
LoadFont :: proc "c" (fileName: cstring) -> Font ---
```

 

Load font from file into GPU memory (VRAM)

### [LoadFontData ¶](#LoadFontData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1457)

```
LoadFontData :: proc "c" (
	fileData:       rawptr, 
	dataSize:       i32, 
	fontSize:       i32, 
	codepoints:     [^]rune, 
	codepointCount: i32, 
	type:           FontType, 
) -> [^]GlyphInfo ---
```

 

Load font data for further use

### [LoadFontEx ¶](#LoadFontEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1453)

```
LoadFontEx :: proc "c" (fileName: cstring, fontSize: i32, codepoints: [^]rune, codepointCount: i32) -> Font ---
```

 

Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character set, font size is provided in pixels height

### [LoadFontFromImage ¶](#LoadFontFromImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1454)

```
LoadFontFromImage :: proc "c" (image: Image, key: Color, firstChar: rune) -> Font ---
```

 

Load font from Image (XNA style)

### [LoadFontFromMemory ¶](#LoadFontFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1455)

```
LoadFontFromMemory :: proc "c" (
	fileType:       cstring, 
	fileData:       rawptr, 
	dataSize:       i32, 
	fontSize:       i32, 
	codepoints:     [^]rune, 
	codepointCount: i32, 
) -> Font ---
```

 

Load font from memory buffer, fileType refers to extension: i.e. '.ttf'

### [LoadImage ¶](#LoadImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1303)

```
LoadImage :: proc "c" (fileName: cstring) -> Image ---
```

 

Load image from file into CPU memory (RAM)

### [LoadImageAnim ¶](#LoadImageAnim) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1305)

```
LoadImageAnim :: proc "c" (fileName: cstring, frames: ^i32) -> Image ---
```

 

Load image sequence from file (frames appended to image.data)

### [LoadImageAnimFromMemory ¶](#LoadImageAnimFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1306)

```
LoadImageAnimFromMemory :: proc "c" (fileType: cstring, fileData: rawptr, dataSize: i32, frames: ^i32) -> Image ---
```

 

Load image sequence from memory buffer

### [LoadImageColors ¶](#LoadImageColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1360)

```
LoadImageColors :: proc "c" (image: Image) -> [^]Color ---
```

 

Load color data from image as a Color array (RGBA - 32bit)

### [LoadImageFromMemory ¶](#LoadImageFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1307)

```
LoadImageFromMemory :: proc "c" (fileType: cstring, fileData: rawptr, dataSize: i32) -> Image ---
```

 

Load image from memory buffer, fileType refers to extension: i.e. '.png'

### [LoadImageFromScreen ¶](#LoadImageFromScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1309)

```
LoadImageFromScreen :: proc "c" () -> Image ---
```

 

Load image from screen buffer and (screenshot)

### [LoadImageFromTexture ¶](#LoadImageFromTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1308)

```
LoadImageFromTexture :: proc "c" (texture: Texture) -> Image ---
```

 

Load image from GPU texture data

### [LoadImagePalette ¶](#LoadImagePalette) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1361)

```
LoadImagePalette :: proc "c" (image: Image, maxPaletteSize: i32, colorCount: ^i32) -> [^]Color ---
```

 

Load colors palette from image as a Color array (RGBA - 32bit)

### [LoadImageRaw ¶](#LoadImageRaw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1304)

```
LoadImageRaw :: proc "c" (fileName: cstring, width, height: i32, format: PixelFormat, headerSize: i32) -> Image ---
```

 

Load image from RAW file data

### [LoadMaterialDefault ¶](#LoadMaterialDefault) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1601)

```
LoadMaterialDefault :: proc "c" () -> Material ---
```

 

Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)

### [LoadMaterials ¶](#LoadMaterials) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1600)

```
LoadMaterials :: proc "c" (fileName: cstring, materialCount: ^i32) -> [^]Material ---
```

 

Load materials from model file

### [LoadModel ¶](#LoadModel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1553)

```
LoadModel :: proc "c" (fileName: cstring) -> Model ---
```

 

Load model from files (meshes and materials)

### [LoadModelAnimations ¶](#LoadModelAnimations) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1609)

```
LoadModelAnimations :: proc "c" (fileName: cstring, animCount: ^i32) -> [^]ModelAnimation ---
```

 

Load model animations from file

### [LoadModelFromMesh ¶](#LoadModelFromMesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1554)

```
LoadModelFromMesh :: proc "c" (mesh: Mesh) -> Model ---
```

 

Load model from generated mesh (default material)

### [LoadMusicStream ¶](#LoadMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1674)

```
LoadMusicStream :: proc "c" (fileName: cstring) -> Music ---
```

 

Load music stream from file

### [LoadMusicStreamFromMemory ¶](#LoadMusicStreamFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1675)

```
LoadMusicStreamFromMemory :: proc "c" (fileType: cstring, data: rawptr, dataSize: i32) -> Music ---
```

 

Load music stream from data

### [LoadRandomSequence ¶](#LoadRandomSequence) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1041)

```
LoadRandomSequence :: proc "c" (count: u32, min, max: i32) -> [^]i32 ---
```

 

Load random values sequence, no values repeated

### [LoadRenderTexture ¶](#LoadRenderTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1399)

```
LoadRenderTexture :: proc "c" (width, height: i32) -> RenderTexture ---
```

 

Load texture for rendering (framebuffer)

### [LoadShader ¶](#LoadShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1006)

```
LoadShader :: proc "c" (vsFileName, fsFileName: cstring) -> Shader ---
```

 

Load shader from files and bind default locations

### [LoadShaderFromMemory ¶](#LoadShaderFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1007)

```
LoadShaderFromMemory :: proc "c" (vsCode, fsCode: cstring) -> Shader ---
```

 

Load shader from code strings and bind default locations

### [LoadSound ¶](#LoadSound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1644)

```
LoadSound :: proc "c" (fileName: cstring) -> Sound ---
```

 

Load sound from file

### [LoadSoundAlias ¶](#LoadSoundAlias) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1646)

```
LoadSoundAlias :: proc "c" (source: Sound) -> Sound ---
```

 

Create a new sound that shares the same sample data as the source sound, does not own the sound data

### [LoadSoundFromWave ¶](#LoadSoundFromWave) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1645)

```
LoadSoundFromWave :: proc "c" (wave: Wave) -> Sound ---
```

 

Load sound from wave data

### [LoadTexture ¶](#LoadTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1396)

```
LoadTexture :: proc "c" (fileName: cstring) -> Texture ---
```

 

Load texture from file into GPU memory (VRAM)

### [LoadTextureCubemap ¶](#LoadTextureCubemap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1398)

```
LoadTextureCubemap :: proc "c" (image: Image, layout: CubemapLayout) -> Texture ---
```

 

Load cubemap from image, multiple image cubemap layouts supported

### [LoadTextureFromImage ¶](#LoadTextureFromImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1397)

```
LoadTextureFromImage :: proc "c" (image: Image) -> Texture ---
```

 

Load texture from image data

### [LoadUTF8 ¶](#LoadUTF8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1483)

```
LoadUTF8 :: proc "c" (codepoints: [^]rune, length: i32) -> [^]u8 ---
```

 

Load UTF-8 text encoded from codepoints array

### [LoadVrStereoConfig ¶](#LoadVrStereoConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1000)

```
LoadVrStereoConfig :: proc "c" (device: VrDeviceInfo) -> VrStereoConfig ---
```

 

Load VR stereo config for VR simulator device parameters

### [LoadWave ¶](#LoadWave) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1641)

```
LoadWave :: proc "c" (fileName: cstring) -> Wave ---
```

 

Load wave data from file

### [LoadWaveFromMemory ¶](#LoadWaveFromMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1642)

```
LoadWaveFromMemory :: proc "c" (fileType: cstring, fileData: rawptr, dataSize: i32) -> Wave ---
```

 

Load wave from memory buffer, fileType refers to extension: i.e. '.wav'

### [LoadWaveSamples ¶](#LoadWaveSamples) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1668)

```
LoadWaveSamples :: proc "c" (wave: Wave) -> [^]f32 ---
```

 

Load samples data from wave as a 32bit float data array

### [MakeDirectory ¶](#MakeDirectory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1088)

```
MakeDirectory :: proc "c" (dirPath: cstring) -> i32 ---
```

 

Create directories (including full path requested), returns 0 on success

### [MatrixAdd ¶](#MatrixAdd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L573)

```
MatrixAdd :: proc "c" (left, right: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

 

Add two matrices

### [MatrixDeterminant ¶](#MatrixDeterminant) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L543)

```
MatrixDeterminant :: proc "c" (mat: matrix[4, 4]f32) -> f32 {…}
```

 

Compute matrix determinant

### [MatrixIdentity ¶](#MatrixIdentity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L567)

```
MatrixIdentity :: proc "c" () -> matrix[4, 4]f32 {…}
```

 

Get identity matrix

### [MatrixInvert ¶](#MatrixInvert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L561)

```
MatrixInvert :: proc "c" (mat: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

 

Invert provided matrix

### [MatrixLookAt ¶](#MatrixLookAt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L664)

```
MatrixLookAt :: proc "c" (eye, target, up: [3]f32) -> matrix[4, 4]f32 {…}
```

 

Get camera look-at matrix (view matrix)

### [MatrixMultiply ¶](#MatrixMultiply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L586)

```
MatrixMultiply :: proc "c" (left, right: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

 

Get two matrix multiplication
NOTE: When multiplying matrices... the order matters!

### [MatrixOrtho ¶](#MatrixOrtho) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L652)

```
MatrixOrtho :: proc "c" (
	left, right, bottom, top, near, 
	far:                            f32, 
) -> matrix[4, 4]f32 {…}
```

 

Get orthographic projection matrix

### [MatrixPerspective ¶](#MatrixPerspective) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L659)

```
MatrixPerspective :: proc "c" (fovY, aspect, nearPlane, farPlane: f32) -> matrix[4, 4]f32 {…}
```

 

Get perspective projection matrix
NOTE: Fovy angle must be provided in radians

### [MatrixRotate ¶](#MatrixRotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L604)

```
MatrixRotate :: proc "c" (axis: [3]f32, angle: f32) -> matrix[4, 4]f32 {…}
```

 

Create rotation matrix from axis and angle
NOTE: Angle should be provided in radians

### [MatrixRotateX ¶](#MatrixRotateX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L611)

```
MatrixRotateX :: proc "c" (angle: f32) -> matrix[4, 4]f32 {…}
```

 

Get x-rotation matrix
NOTE: Angle must be provided in radians

### [MatrixRotateXYZ ¶](#MatrixRotateXYZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L632)

```
MatrixRotateXYZ :: proc "c" (angle: [3]f32) -> matrix[4, 4]f32 {…}
```

 

Get xyz-rotation matrix
NOTE: Angle must be provided in radians

### [MatrixRotateY ¶](#MatrixRotateY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L618)

```
MatrixRotateY :: proc "c" (angle: f32) -> matrix[4, 4]f32 {…}
```

 

Get y-rotation matrix
NOTE: Angle must be provided in radians

### [MatrixRotateZ ¶](#MatrixRotateZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L625)

```
MatrixRotateZ :: proc "c" (angle: f32) -> matrix[4, 4]f32 {…}
```

 

Get z-rotation matrix
NOTE: Angle must be provided in radians

### [MatrixRotateZYX ¶](#MatrixRotateZYX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L639)

```
MatrixRotateZYX :: proc "c" (angle: [3]f32) -> matrix[4, 4]f32 {…}
```

 

Get zyx-rotation matrix
NOTE: Angle must be provided in radians

### [MatrixScale ¶](#MatrixScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L646)

```
MatrixScale :: proc "c" (x, y, z: f32) -> matrix[4, 4]f32 {…}
```

 

Get scaling matrix

### [MatrixSubtract ¶](#MatrixSubtract) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L579)

```
MatrixSubtract :: proc "c" (left, right: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

 

Subtract two matrices (left - right)

### [MatrixToFloatV ¶](#MatrixToFloatV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L670)

```
MatrixToFloatV :: proc "c" (mat: matrix[4, 4]f32) -> [16]f32 {…}
```

 

Get float array of matrix data

### [MatrixTrace ¶](#MatrixTrace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L549)

```
MatrixTrace :: proc "c" (mat: matrix[4, 4]f32) -> f32 {…}
```

 

Get the trace of the matrix (sum of the values along the diagonal)

### [MatrixTranslate ¶](#MatrixTranslate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L592)

```
MatrixTranslate :: proc "c" (x, y, z: f32) -> matrix[4, 4]f32 {…}
```

 

Get translation matrix

### [MatrixTranspose ¶](#MatrixTranspose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L555)

```
MatrixTranspose :: proc "c" (mat: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

 

Transposes provided matrix

### [MaximizeWindow ¶](#MaximizeWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L923)

```
MaximizeWindow :: proc "c" () ---
```

 

Set window state: maximized, if resizable

### [MeasureText ¶](#MeasureText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1475)

```
MeasureText :: proc "c" (text: cstring, fontSize: i32) -> i32 ---
```

 

Measure string width for default font

### [MeasureTextEx ¶](#MeasureTextEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1476)

```
MeasureTextEx :: proc "c" (font: Font, text: cstring, fontSize: f32, spacing: f32) -> [2]f32 ---
```

 

Measure string size for Font

### [MemAlloc ¶](#MemAlloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1053)

```
MemAlloc :: proc "c" (size: u32) -> rawptr ---
```

 

Internal memory allocator

### [MemAllocator ¶](#MemAllocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1766)

```
MemAllocator :: proc "contextless" () -> runtime.Allocator {…}
```

### [MemAllocatorProc ¶](#MemAllocatorProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1770)

```
MemAllocatorProc :: proc(
	allocator_data:  rawptr, 
	mode:            runtime.Allocator_Mode, 
	size, alignment: int, 
	old_memory:      rawptr, 
	old_size:        int, 
	location := #caller_location, 
) -> (data: []u8, err: runtime.Allocator_Error) {…}
```

### [MemFreeCstring ¶](#MemFreeCstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1761)

```
MemFreeCstring :: proc "c" (s: cstring) {…}
```

##### Related Procedure Groups

* [MemFree](/vendor/raylib/#MemFree)

### [MemFreePtr ¶](#MemFreePtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1758)

```
MemFreePtr :: proc "c" (ptr: rawptr) ---
```

##### Related Procedure Groups

* [MemFree](/vendor/raylib/#MemFree)

### [MemRealloc ¶](#MemRealloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1054)

```
MemRealloc :: proc "c" (ptr: rawptr, size: u32) -> rawptr ---
```

 

Internal memory reallocator

### [MinimizeWindow ¶](#MinimizeWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L924)

```
MinimizeWindow :: proc "c" () ---
```

 

Set window state: minimized, if resizable

### [Normalize ¶](#Normalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L28)

```
Normalize :: proc "c" (value: f32, start, end: f32) -> f32 {…}
```

 

Normalize input value within input range

### [OpenURL ¶](#OpenURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1047)

```
OpenURL :: proc "c" (url: cstring) ---
```

 

Open URL with default system browser (if available)

### [PauseAudioStream ¶](#PauseAudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1699)

```
PauseAudioStream :: proc "c" (stream: AudioStream) ---
```

 

Pause audio stream

### [PauseMusicStream ¶](#PauseMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1682)

```
PauseMusicStream :: proc "c" (music: Music) ---
```

 

Pause music playing

### [PauseSound ¶](#PauseSound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1659)

```
PauseSound :: proc "c" (sound: Sound) ---
```

 

Pause a sound

### [PlayAudioStream ¶](#PlayAudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1698)

```
PlayAudioStream :: proc "c" (stream: AudioStream) ---
```

 

Play audio stream

### [PlayAutomationEvent ¶](#PlayAutomationEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1120)

```
PlayAutomationEvent :: proc "c" (event: AutomationEvent) ---
```

 

Play a recorded automation event

### [PlayMusicStream ¶](#PlayMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1678)

```
PlayMusicStream :: proc "c" (music: Music) ---
```

 

Start music playing

### [PlaySound ¶](#PlaySound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1657)

```
PlaySound :: proc "c" (sound: Sound) ---
```

 

Play a sound

### [PollInputEvents ¶](#PollInputEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L965)

```
PollInputEvents :: proc "c" () ---
```

 

Register all input events

### [QuaternionAdd ¶](#QuaternionAdd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L683)

```
QuaternionAdd :: proc "c" (q1, q2: quaternion128) -> quaternion128 {…}
```

 

Add two quaternions

### [QuaternionAddValue ¶](#QuaternionAddValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L688)

```
QuaternionAddValue :: proc "c" (q: quaternion128, add: f32) -> quaternion128 {…}
```

 

Add quaternion and float value

### [QuaternionDivide ¶](#QuaternionDivide) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L733)

```
QuaternionDivide :: proc "c" (q1, q2: quaternion128) -> quaternion128 {…}
```

 

Divide two quaternions

### [QuaternionEquals ¶](#QuaternionEquals) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L817)

```
QuaternionEquals :: proc "c" (p, q: quaternion128) -> bool {…}
```

 

Check whether two given quaternions are almost equal

### [QuaternionFromAxisAngle ¶](#QuaternionFromAxisAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L772)

```
QuaternionFromAxisAngle :: proc "c" (axis: [3]f32, angle: f32) -> quaternion128 {…}
```

 

Get rotation quaternion for an angle and axis NOTE: Angle must be provided in radians

### [QuaternionFromEuler ¶](#QuaternionFromEuler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L783)

```
QuaternionFromEuler :: proc "c" (pitch, yaw, roll: f32) -> quaternion128 {…}
```

 

Get the quaternion equivalent to Euler angles NOTE: Rotation order is ZYX

### [QuaternionFromMatrix ¶](#QuaternionFromMatrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L762)

```
QuaternionFromMatrix :: proc "c" (mat: matrix[4, 4]f32) -> quaternion128 {…}
```

 

Get a quaternion for a given rotation matrix

### [QuaternionFromVector3ToVector3 ¶](#QuaternionFromVector3ToVector3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L757)

```
QuaternionFromVector3ToVector3 :: proc "c" (from, to: [3]f32) -> quaternion128 {…}
```

 

Calculate quaternion based on the rotation from one vector to another

### [QuaternionIdentity ¶](#QuaternionIdentity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L703)

```
QuaternionIdentity :: proc "c" () -> quaternion128 {…}
```

 

Get identity quaternion

### [QuaternionInvert ¶](#QuaternionInvert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L718)

```
QuaternionInvert :: proc "c" (q: quaternion128) -> quaternion128 {…}
```

 

Invert provided quaternion

### [QuaternionLength ¶](#QuaternionLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L708)

```
QuaternionLength :: proc "c" (q: quaternion128) -> f32 {…}
```

 

Computes the length of a quaternion

### [QuaternionLerp ¶](#QuaternionLerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L738)

```
QuaternionLerp :: proc "c" (q1, q2: quaternion128, amount: f32) -> (q3: quaternion128) {…}
```

 

Calculate linear interpolation between two quaternions

### [QuaternionMultiply ¶](#QuaternionMultiply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L723)

```
QuaternionMultiply :: proc "c" (q1, q2: quaternion128) -> quaternion128 {…}
```

 

Calculate two quaternion multiplication

### [QuaternionNlerp ¶](#QuaternionNlerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L747)

```
QuaternionNlerp :: proc "c" (q1, q2: quaternion128, amount: f32) -> quaternion128 {…}
```

 

Calculate slerp-optimized interpolation between two quaternions

### [QuaternionNormalize ¶](#QuaternionNormalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L713)

```
QuaternionNormalize :: proc "c" (q: quaternion128) -> quaternion128 {…}
```

 

Normalize provided quaternion

### [QuaternionScale ¶](#QuaternionScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L728)

```
QuaternionScale :: proc "c" (q: quaternion128, mul: f32) -> quaternion128 {…}
```

 

Scale quaternion by float value

### [QuaternionSlerp ¶](#QuaternionSlerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L752)

```
QuaternionSlerp :: proc "c" (q1, q2: quaternion128, amount: f32) -> quaternion128 {…}
```

 

Calculates spherical linear interpolation between two quaternions

### [QuaternionSubtract ¶](#QuaternionSubtract) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L693)

```
QuaternionSubtract :: proc "c" (q1, q2: quaternion128) -> quaternion128 {…}
```

 

Subtract two quaternions

### [QuaternionSubtractValue ¶](#QuaternionSubtractValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L698)

```
QuaternionSubtractValue :: proc "c" (q: quaternion128, sub: f32) -> quaternion128 {…}
```

 

Subtract quaternion and float value

### [QuaternionToAxisAngle ¶](#QuaternionToAxisAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L777)

```
QuaternionToAxisAngle :: proc "c" (q: quaternion128) -> (outAxis: [3]f32, outAngle: f32) {…}
```

 

Get the rotation angle and axis for a given quaternion

### [QuaternionToEuler ¶](#QuaternionToEuler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L788)

```
QuaternionToEuler :: proc "c" (q: quaternion128) -> [3]f32 {…}
```

 

Get the Euler angles equivalent to quaternion (roll, pitch, yaw) NOTE: Angles are returned in a Vector3 struct in radians

### [QuaternionToMatrix ¶](#QuaternionToMatrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L767)

```
QuaternionToMatrix :: proc "c" (q: quaternion128) -> matrix[4, 4]f32 {…}
```

 

Get a matrix for a given quaternion

### [QuaternionTransform ¶](#QuaternionTransform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L811)

```
QuaternionTransform :: proc "c" (q: quaternion128, mat: matrix[4, 4]f32) -> quaternion128 {…}
```

 

Transform a quaternion given a transformation matrix

### [Remap ¶](#Remap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L34)

```
Remap :: proc "c" (value: f32, inputStart, inputEnd: f32, outputStart, outputEnd: f32) -> f32 {…}
```

 

Remap input value within input range to output range

### [RestoreWindow ¶](#RestoreWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L925)

```
RestoreWindow :: proc "c" () ---
```

 

Set window state: not minimized/maximized

### [ResumeAudioStream ¶](#ResumeAudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1700)

```
ResumeAudioStream :: proc "c" (stream: AudioStream) ---
```

 

Resume audio stream

### [ResumeMusicStream ¶](#ResumeMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1683)

```
ResumeMusicStream :: proc "c" (music: Music) ---
```

 

Resume playing paused music

### [ResumeSound ¶](#ResumeSound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1660)

```
ResumeSound :: proc "c" (sound: Sound) ---
```

 

Resume a paused sound

### [SaveFileData ¶](#SaveFileData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1069)

```
SaveFileData :: proc "c" (fileName: cstring, data: rawptr, dataSize: i32) -> bool ---
```

 

Save data to file from byte array (write), returns true on success

### [SaveFileText ¶](#SaveFileText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1073)

```
SaveFileText :: proc "c" (fileName: cstring, text: [^]u8) -> bool ---
```

 

Save text data to file (write), string must be '\0' terminated, returns true on success

### [SeekMusicStream ¶](#SeekMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1684)

```
SeekMusicStream :: proc "c" (music: Music, position: f32) ---
```

 

Seek music to a position (in seconds)

### [SetAudioStreamBufferSizeDefault ¶](#SetAudioStreamBufferSizeDefault) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1706)

```
SetAudioStreamBufferSizeDefault :: proc "c" (size: i32) ---
```

 

Default size for new audio streams

### [SetAudioStreamCallback ¶](#SetAudioStreamCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1707)

```
SetAudioStreamCallback :: proc "c" (stream: AudioStream, callback: AudioCallback) ---
```

 

Audio thread callback to request new data

### [SetAudioStreamPan ¶](#SetAudioStreamPan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1705)

```
SetAudioStreamPan :: proc "c" (stream: AudioStream, pan: f32) ---
```

 

Set pan for audio stream (0.5 is centered)

### [SetAudioStreamPitch ¶](#SetAudioStreamPitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1704)

```
SetAudioStreamPitch :: proc "c" (stream: AudioStream, pitch: f32) ---
```

 

Set pitch for audio stream (1.0 is base level)

### [SetAudioStreamVolume ¶](#SetAudioStreamVolume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1703)

```
SetAudioStreamVolume :: proc "c" (stream: AudioStream, volume: f32) ---
```

 

Set volume for audio stream (1.0 is max level)

### [SetAutomationEventBaseFrame ¶](#SetAutomationEventBaseFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1117)

```
SetAutomationEventBaseFrame :: proc "c" (frame: i32) ---
```

 

Set automation event internal base frame to start recording

### [SetAutomationEventList ¶](#SetAutomationEventList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1116)

```
SetAutomationEventList :: proc "c" (list: ^AutomationEventList) ---
```

 

Set automation event list to record to

### [SetClipboardText ¶](#SetClipboardText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L952)

```
SetClipboardText :: proc "c" (text: cstring) ---
```

 

Set clipboard text content

### [SetConfigFlags ¶](#SetConfigFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1046)

```
SetConfigFlags :: proc "c" (flags: ConfigFlags) ---
```

 

Setup init configuration flags (view FLAGS). NOTE: This function is expected to be called before window creation

### [SetExitKey ¶](#SetExitKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1135)

```
SetExitKey :: proc "c" (key: KeyboardKey) ---
```

 

Set a custom key to exit program (default is ESC)

### [SetGamepadMappings ¶](#SetGamepadMappings) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1148)

```
SetGamepadMappings :: proc "c" (mappings: cstring) -> i32 ---
```

 

Set internal gamepad mappings (SDL\_GameControllerDB)

### [SetGamepadVibration ¶](#SetGamepadVibration) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1149)

```
SetGamepadVibration :: proc "c" (gamepad: i32, leftMotor: f32, rightMotor: f32, duration: f32) ---
```

 

Set gamepad vibration for both motors (duration in seconds)

### [SetGesturesEnabled ¶](#SetGesturesEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1182)

```
SetGesturesEnabled :: proc "c" (flags: Gestures) ---
```

 

Enable a set of gestures using flags

### [SetLoadFileDataCallback ¶](#SetLoadFileDataCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1060)

```
SetLoadFileDataCallback :: proc "c" (callback: LoadFileDataCallback) ---
```

 

Set custom file binary data loader

### [SetLoadFileTextCallback ¶](#SetLoadFileTextCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1062)

```
SetLoadFileTextCallback :: proc "c" (callback: LoadFileTextCallback) ---
```

 

Set custom file text data loader

### [SetMasterVolume ¶](#SetMasterVolume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1636)

```
SetMasterVolume :: proc "c" (volume: f32) ---
```

 

Set master volume (listener)

### [SetMaterialTexture ¶](#SetMaterialTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1604)

```
SetMaterialTexture :: proc "c" (material: ^Material, mapType: MaterialMapIndex, texture: Texture) ---
```

 

Set texture for a material map type (MATERIAL\_MAP\_DIFFUSE, MATERIAL\_MAP\_SPECULAR...)

### [SetModelMeshMaterial ¶](#SetModelMeshMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1605)

```
SetModelMeshMaterial :: proc "c" (model: ^Model, meshId: i32, materialId: i32) ---
```

 

Set material for a mesh

### [SetMouseCursor ¶](#SetMouseCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1168)

```
SetMouseCursor :: proc "c" (cursor: MouseCursor) ---
```

 

Set mouse cursor

### [SetMouseOffset ¶](#SetMouseOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1164)

```
SetMouseOffset :: proc "c" (offsetX, offsetY: i32) ---
```

 

Set mouse offset

### [SetMousePosition ¶](#SetMousePosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1163)

```
SetMousePosition :: proc "c" (x, y: i32) ---
```

 

Set mouse position XY

### [SetMouseScale ¶](#SetMouseScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1165)

```
SetMouseScale :: proc "c" (scaleX, scaleY: f32) ---
```

 

Set mouse scaling

### [SetMusicPan ¶](#SetMusicPan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1687)

```
SetMusicPan :: proc "c" (music: Music, pan: f32) ---
```

 

Set pan for a music (0.5 is center)

### [SetMusicPitch ¶](#SetMusicPitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1686)

```
SetMusicPitch :: proc "c" (music: Music, pitch: f32) ---
```

 

Set pitch for a music (1.0 is base level)

### [SetMusicVolume ¶](#SetMusicVolume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1685)

```
SetMusicVolume :: proc "c" (music: Music, volume: f32) ---
```

 

Set volume for music (1.0 is max level)

### [SetPixelColor ¶](#SetPixelColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1439)

```
SetPixelColor :: proc "c" (dstPtr: rawptr, color: Color, format: PixelFormat) ---
```

 

Set color formatted into destination pixel pointer

### [SetRandomSeed ¶](#SetRandomSeed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1039)

```
SetRandomSeed :: proc "c" (seed: u32) ---
```

 

Set the seed for the random number generator

### [SetSaveFileDataCallback ¶](#SetSaveFileDataCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1061)

```
SetSaveFileDataCallback :: proc "c" (callback: SaveFileDataCallback) ---
```

 

Set custom file binary data saver

### [SetSaveFileTextCallback ¶](#SetSaveFileTextCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1063)

```
SetSaveFileTextCallback :: proc "c" (callback: SaveFileTextCallback) ---
```

 

Set custom file text data saver

### [SetShaderValue ¶](#SetShaderValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1013)

```
SetShaderValue :: proc "c" (shader: Shader, #any_int locIndex: i32, value: rawptr, uniformType: ShaderUniformDataType) ---
```

 

We use #any\_int here so we can pass ShaderLocationIndex

### [SetShaderValueMatrix ¶](#SetShaderValueMatrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1015)

```
SetShaderValueMatrix :: proc "c" (shader: Shader, #any_int locIndex: i32, mat: matrix[4, 4]f32) ---
```

 

Set shader uniform value (matrix 4x4)

### [SetShaderValueTexture ¶](#SetShaderValueTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1016)

```
SetShaderValueTexture :: proc "c" (shader: Shader, #any_int locIndex: i32, texture: Texture) ---
```

 

Set shader uniform value for texture (sampler2d)

### [SetShaderValueV ¶](#SetShaderValueV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1014)

```
SetShaderValueV :: proc "c" (shader: Shader, #any_int locIndex: i32, value: rawptr, uniformType: ShaderUniformDataType, count: i32) ---
```

 

Set shader uniform value vector

### [SetShapesTexture ¶](#SetShapesTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1222)

```
SetShapesTexture :: proc "c" (texture: Texture, source: Rectangle) ---
```

 

Set texture and rectangle to be used on shapes drawing

### [SetSoundPan ¶](#SetSoundPan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1664)

```
SetSoundPan :: proc "c" (sound: Sound, pan: f32) ---
```

 

Set pan for a sound (0.5 is center)

### [SetSoundPitch ¶](#SetSoundPitch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1663)

```
SetSoundPitch :: proc "c" (sound: Sound, pitch: f32) ---
```

 

Set pitch for a sound (1.0 is base level)

### [SetSoundVolume ¶](#SetSoundVolume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1662)

```
SetSoundVolume :: proc "c" (sound: Sound, volume: f32) ---
```

 

Set volume for a sound (1.0 is max level)

### [SetTargetFPS ¶](#SetTargetFPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1032)

```
SetTargetFPS :: proc "c" (fps: i32) ---
```

 

Set target FPS (maximum)

### [SetTextLineSpacing ¶](#SetTextLineSpacing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1474)

```
SetTextLineSpacing :: proc "c" (spacing: i32) ---
```

 

Set vertical line spacing when drawing with line-breaks

### [SetTextureFilter ¶](#SetTextureFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1410)

```
SetTextureFilter :: proc "c" (texture: Texture, filter: TextureFilter) ---
```

 

Set texture scaling filter mode

### [SetTextureWrap ¶](#SetTextureWrap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1411)

```
SetTextureWrap :: proc "c" (texture: Texture, wrap: TextureWrap) ---
```

 

Set texture wrapping mode

### [SetTraceLogCallback ¶](#SetTraceLogCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1059)

```
SetTraceLogCallback :: proc "c" (callback: TraceLogCallback) ---
```

 

Set custom trace log

### [SetTraceLogLevel ¶](#SetTraceLogLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1052)

```
SetTraceLogLevel :: proc "c" (logLevel: TraceLogLevel) ---
```

 

Set the current threshold (minimum) log level

### [SetWindowFocused ¶](#SetWindowFocused) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L935)

```
SetWindowFocused :: proc "c" () ---
```

 

Set window focused

### [SetWindowIcon ¶](#SetWindowIcon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L926)

```
SetWindowIcon :: proc "c" (image: Image) ---
```

 

Set icon for window (single image, RGBA 32bit,)

### [SetWindowIcons ¶](#SetWindowIcons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L927)

```
SetWindowIcons :: proc "c" (images: [^]Image, count: i32) ---
```

 

Set icon for window (multiple images, RGBA 32bit,)

### [SetWindowMaxSize ¶](#SetWindowMaxSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L932)

```
SetWindowMaxSize :: proc "c" (width, height: i32) ---
```

 

Set window maximum dimensions (for WINDOW\_RESIZABLE)

### [SetWindowMinSize ¶](#SetWindowMinSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L931)

```
SetWindowMinSize :: proc "c" (width, height: i32) ---
```

 

Set window minimum dimensions (for WINDOW\_RESIZABLE)

### [SetWindowMonitor ¶](#SetWindowMonitor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L930)

```
SetWindowMonitor :: proc "c" (monitor: i32) ---
```

 

Set monitor for the current window

### [SetWindowOpacity ¶](#SetWindowOpacity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L934)

```
SetWindowOpacity :: proc "c" (opacity: f32) ---
```

 

Set window opacity [0.0f..1.0f]

### [SetWindowPosition ¶](#SetWindowPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L929)

```
SetWindowPosition :: proc "c" (x, y: i32) ---
```

 

Set window position on screen

### [SetWindowSize ¶](#SetWindowSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L933)

```
SetWindowSize :: proc "c" (width, height: i32) ---
```

 

Set window dimensions

### [SetWindowState ¶](#SetWindowState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L919)

```
SetWindowState :: proc "c" (flags: ConfigFlags) ---
```

 

Set window configuration state using flags

### [SetWindowTitle ¶](#SetWindowTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L928)

```
SetWindowTitle :: proc "c" (title: cstring) ---
```

 

Set title for window

### [ShowCursor ¶](#ShowCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L971)

```
ShowCursor :: proc "c" () ---
```

 

Shows cursor

### [StartAutomationEventRecording ¶](#StartAutomationEventRecording) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1118)

```
StartAutomationEventRecording :: proc "c" () ---
```

 

Start recording automation events (AutomationEventList must be set)

### [StopAudioStream ¶](#StopAudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1702)

```
StopAudioStream :: proc "c" (stream: AudioStream) ---
```

 

Stop audio stream

### [StopAutomationEventRecording ¶](#StopAutomationEventRecording) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1119)

```
StopAutomationEventRecording :: proc "c" () ---
```

 

Stop recording automation events

### [StopMusicStream ¶](#StopMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1681)

```
StopMusicStream :: proc "c" (music: Music) ---
```

 

Stop music playing

### [StopSound ¶](#StopSound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1658)

```
StopSound :: proc "c" (sound: Sound) ---
```

 

Stop playing a sound

### [SwapScreenBuffer ¶](#SwapScreenBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L964)

```
SwapScreenBuffer :: proc "c" () ---
```

 

Swap back buffer with front buffer (screen drawing)

### [TakeScreenshot ¶](#TakeScreenshot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1045)

```
TakeScreenshot :: proc "c" (fileName: cstring) ---
```

 

Misc. functions

### [TextAppend ¶](#TextAppend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1507)

```
TextAppend :: proc "c" (text: [^]u8, append: cstring, position: ^i32) ---
```

 

Append text at specific position and move cursor!

### [TextCopy ¶](#TextCopy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1496)

```
TextCopy :: proc "c" (dst: [^]u8, src: cstring) -> i32 ---
```

 

Copy one string to another, returns bytes copied

### [TextFindIndex ¶](#TextFindIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1508)

```
TextFindIndex :: proc "c" (text, find: cstring) -> i32 ---
```

 

Find first text occurrence within a string

### [TextFormat ¶](#TextFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1727)

```
TextFormat :: proc(text: cstring, .. args: ..any) -> cstring {…}
```

 

Text formatting with variables (sprintf style)

### [TextFormatAlloc ¶](#TextFormatAlloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1743)

```
TextFormatAlloc :: proc(text: cstring, .. args: ..any) -> cstring {…}
```

 

Text formatting with variables (sprintf style) and allocates (must be freed with 'MemFree')

### [TextInsert ¶](#TextInsert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1504)

```
TextInsert :: proc "c" (text, insert: cstring, position: i32) -> [^]u8 ---
```

 

Insert text in a position (WARNING: memory must be freed!)

### [TextIsEqual ¶](#TextIsEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1497)

```
TextIsEqual :: proc "c" (text1, text2: cstring) -> bool ---
```

 

Check if two text string are equal

### [TextJoin ¶](#TextJoin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1505)

```
TextJoin :: proc "c" (textList: [^]cstring, count: i32, delimiter: cstring) -> cstring ---
```

 

Join text strings with delimiter

### [TextLength ¶](#TextLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1498)

```
TextLength :: proc "c" (text: cstring) -> u32 ---
```

 

Get text length, checks for '\0' ending

### [TextReplace ¶](#TextReplace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1503)

```
TextReplace :: proc "c" (text: [^]u8, replace, by: cstring) -> [^]u8 ---
```

 

Replace text string (WARNING: memory must be freed!)

### [TextSplit ¶](#TextSplit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1506)

```
TextSplit :: proc "c" (text: cstring, delimiter: u8, count: ^i32) -> [^]cstring ---
```

 

Split text into multiple strings

### [TextSubtext ¶](#TextSubtext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1502)

```
TextSubtext :: proc "c" (text: cstring, position: i32, length: i32) -> cstring ---
```

 

Get a piece of a text string

### [TextToCamel ¶](#TextToCamel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1513)

```
TextToCamel :: proc "c" (text: cstring) -> cstring ---
```

 

Get Camel case notation version of provided string

### [TextToFloat ¶](#TextToFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1516)

```
TextToFloat :: proc "c" (text: cstring) -> f32 ---
```

 

Get float value from text (negative values not supported)

### [TextToInteger ¶](#TextToInteger) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1515)

```
TextToInteger :: proc "c" (text: cstring) -> i32 ---
```

 

Get integer value from text (negative values not supported)

### [TextToLower ¶](#TextToLower) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1510)

```
TextToLower :: proc "c" (text: cstring) -> cstring ---
```

 

Get lower case version of provided string

### [TextToPascal ¶](#TextToPascal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1511)

```
TextToPascal :: proc "c" (text: cstring) -> cstring ---
```

 

Get Pascal case notation version of provided string

### [TextToSnake ¶](#TextToSnake) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1512)

```
TextToSnake :: proc "c" (text: cstring) -> cstring ---
```

 

Get Snake case notation version of provided string

### [TextToUpper ¶](#TextToUpper) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1509)

```
TextToUpper :: proc "c" (text: cstring) -> cstring ---
```

 

Get upper case version of provided string

### [ToggleBorderlessWindowed ¶](#ToggleBorderlessWindowed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L922)

```
ToggleBorderlessWindowed :: proc "c" () ---
```

 

Toggle window state: borderless windowed

### [ToggleFullscreen ¶](#ToggleFullscreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L921)

```
ToggleFullscreen :: proc "c" () ---
```

 

Toggle window state: fullscreen/windowed

### [TraceLog ¶](#TraceLog) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1051)

```
TraceLog :: proc "c" (logLevel: TraceLogLevel, text: cstring, .. args: ..any) ---
```

 

NOTE: Following functions implemented in module [utils]
------------------------------------------------------------------

### [UnloadAudioStream ¶](#UnloadAudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1695)

```
UnloadAudioStream :: proc "c" (stream: AudioStream) ---
```

 

Unload audio stream and free memory

### [UnloadAutomationEventList ¶](#UnloadAutomationEventList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1114)

```
UnloadAutomationEventList :: proc "c" (list: AutomationEventList) ---
```

 

Unload automation events list from file

### [UnloadCodepoints ¶](#UnloadCodepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1486)

```
UnloadCodepoints :: proc "c" (codepoints: [^]rune) ---
```

 

Unload codepoints data from memory

### [UnloadDirectoryFiles ¶](#UnloadDirectoryFiles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1094)

```
UnloadDirectoryFiles :: proc "c" (files: FilePathList) ---
```

 

Unload filepaths

### [UnloadDroppedFiles ¶](#UnloadDroppedFiles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1097)

```
UnloadDroppedFiles :: proc "c" (files: FilePathList) ---
```

 

Unload dropped filepaths

### [UnloadFileData ¶](#UnloadFileData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1068)

```
UnloadFileData :: proc "c" (data: [^]u8) ---
```

 

Unload file data allocated by LoadFileData()

### [UnloadFileText ¶](#UnloadFileText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1072)

```
UnloadFileText :: proc "c" (text: [^]u8) ---
```

 

Unload file text data allocated by LoadFileText()

### [UnloadFont ¶](#UnloadFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1460)

```
UnloadFont :: proc "c" (font: Font) ---
```

 

Unload font from GPU memory (VRAM)

### [UnloadFontData ¶](#UnloadFontData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1459)

```
UnloadFontData :: proc "c" (glyphs: [^]GlyphInfo, glyphCount: i32) ---
```

 

Unload font chars info data (RAM)

### [UnloadImage ¶](#UnloadImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1311)

```
UnloadImage :: proc "c" (image: Image) ---
```

 

Unload image from CPU memory (RAM)

### [UnloadImageColors ¶](#UnloadImageColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1362)

```
UnloadImageColors :: proc "c" (colors: [^]Color) ---
```

 

Unload color data loaded with LoadImageColors()

### [UnloadImagePalette ¶](#UnloadImagePalette) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1363)

```
UnloadImagePalette :: proc "c" (colors: [^]Color) ---
```

 

Unload colors palette loaded with LoadImagePalette()

### [UnloadMaterial ¶](#UnloadMaterial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1603)

```
UnloadMaterial :: proc "c" (material: Material) ---
```

 

Unload material from GPU memory (VRAM)

### [UnloadMesh ¶](#UnloadMesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1576)

```
UnloadMesh :: proc "c" (mesh: Mesh) ---
```

 

Unload mesh data from CPU and GPU

### [UnloadModel ¶](#UnloadModel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1556)

```
UnloadModel :: proc "c" (model: Model) ---
```

 

Unload model (including meshes) from memory (RAM and/or VRAM)

### [UnloadModelAnimation ¶](#UnloadModelAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1612)

```
UnloadModelAnimation :: proc "c" (anim: ModelAnimation) ---
```

 

Unload animation data

### [UnloadModelAnimations ¶](#UnloadModelAnimations) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1613)

```
UnloadModelAnimations :: proc "c" (animations: [^]ModelAnimation, animCount: i32) ---
```

 

Unload animation array data

### [UnloadMusicStream ¶](#UnloadMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1677)

```
UnloadMusicStream :: proc "c" (music: Music) ---
```

 

Unload music stream

### [UnloadRandomSequence ¶](#UnloadRandomSequence) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1042)

```
UnloadRandomSequence :: proc "c" (sequence: [^]i32) ---
```

 

Unload random values sequence

### [UnloadRenderTexture ¶](#UnloadRenderTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1403)

```
UnloadRenderTexture :: proc "c" (target: RenderTexture) ---
```

 

Unload render texture from GPU memory (VRAM)

### [UnloadShader ¶](#UnloadShader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1017)

```
UnloadShader :: proc "c" (shader: Shader) ---
```

 

Unload shader from GPU memory (VRAM)

### [UnloadSound ¶](#UnloadSound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1650)

```
UnloadSound :: proc "c" (sound: Sound) ---
```

 

Unload sound

### [UnloadSoundAlias ¶](#UnloadSoundAlias) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1651)

```
UnloadSoundAlias :: proc "c" (alias: Sound) ---
```

 

Unload a sound alias (does not deallocate sample data)

### [UnloadTexture ¶](#UnloadTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1401)

```
UnloadTexture :: proc "c" (texture: Texture) ---
```

 

Unload texture from GPU memory (VRAM)

### [UnloadUTF8 ¶](#UnloadUTF8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1484)

```
UnloadUTF8 :: proc "c" (text: [^]u8) ---
```

 

Unload UTF-8 text encoded from codepoints array

### [UnloadVrStereoConfig ¶](#UnloadVrStereoConfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1001)

```
UnloadVrStereoConfig :: proc "c" (config: VrStereoConfig) ---
```

 

Unload VR stereo config

### [UnloadWave ¶](#UnloadWave) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1649)

```
UnloadWave :: proc "c" (wave: Wave) ---
```

 

Unload wave data

### [UnloadWaveSamples ¶](#UnloadWaveSamples) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1669)

```
UnloadWaveSamples :: proc "c" (samples: [^]f32) ---
```

 

Unload samples data loaded with LoadWaveSamples()

### [UpdateAudioStream ¶](#UpdateAudioStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1696)

```
UpdateAudioStream :: proc "c" (stream: AudioStream, data: rawptr, frameCount: i32) ---
```

 

Update audio stream buffers with data

### [UpdateCamera ¶](#UpdateCamera) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1195)

```
UpdateCamera :: proc "c" (camera: ^Camera3D, mode: CameraMode) ---
```

 

Set camera mode (multiple camera modes available)

### [UpdateCameraPro ¶](#UpdateCameraPro) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1196)

```
UpdateCameraPro :: proc "c" (camera: ^Camera3D, movement: [3]f32, rotation: [3]f32, zoom: f32) ---
```

 

Update camera movement/rotation

### [UpdateMeshBuffer ¶](#UpdateMeshBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1575)

```
UpdateMeshBuffer :: proc "c" (mesh: Mesh, index: i32, data: rawptr, dataSize: i32, offset: i32) ---
```

 

Update mesh vertex data in GPU for a specific buffer index

### [UpdateModelAnimation ¶](#UpdateModelAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1610)

```
UpdateModelAnimation :: proc "c" (model: Model, anim: ModelAnimation, frame: i32) ---
```

 

Update model animation pose (CPU)

### [UpdateModelAnimationBones ¶](#UpdateModelAnimationBones) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1611)

```
UpdateModelAnimationBones :: proc "c" (model: Model, anim: ModelAnimation, frame: i32) ---
```

 

Update model animation mesh bone matrices (GPU skinning)

### [UpdateMusicStream ¶](#UpdateMusicStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1680)

```
UpdateMusicStream :: proc "c" (music: Music) ---
```

 

Updates buffers for music streaming

### [UpdateSound ¶](#UpdateSound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1648)

```
UpdateSound :: proc "c" (sound: Sound, data: rawptr, frameCount: i32) ---
```

 

Update sound buffer with new data

### [UpdateTexture ¶](#UpdateTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1404)

```
UpdateTexture :: proc "c" (texture: Texture, pixels: rawptr) ---
```

 

Update GPU texture with new data

### [UpdateTextureRec ¶](#UpdateTextureRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1405)

```
UpdateTextureRec :: proc "c" (texture: Texture, rec: Rectangle, pixels: rawptr) ---
```

 

Update GPU texture rectangle with new data

### [UploadMesh ¶](#UploadMesh) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1574)

```
UploadMesh :: proc "c" (mesh: ^Mesh, is_dynamic: bool) ---
```

 

Upload mesh vertex data in GPU and provide VAO/VBO ids

### [Vector2Add ¶](#Vector2Add) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L69)

```
Vector2Add :: proc "c" (v1, v2: [2]f32) -> [2]f32 {…}
```

 

Add two vectors (v1 + v2)

### [Vector2AddValue ¶](#Vector2AddValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L74)

```
Vector2AddValue :: proc "c" (v: [2]f32, value: f32) -> [2]f32 {…}
```

 

Add vector and float value

### [Vector2Angle ¶](#Vector2Angle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L115)

```
Vector2Angle :: proc "c" (v1, v2: [2]f32) -> f32 {…}
```

 

Calculate angle between two vectors
NOTE: Angle is calculated from origin point (0, 0)

### [Vector2Clamp ¶](#Vector2Clamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L203)

```
Vector2Clamp :: proc "c" (v: [2]f32, min, max: [2]f32) -> [2]f32 {…}
```

 

Clamp the components of the vector between
min and max values specified by the given vectors

### [Vector2ClampValue ¶](#Vector2ClampValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L212)

```
Vector2ClampValue :: proc "c" (v: [2]f32, min, max: f32) -> [2]f32 {…}
```

 

Clamp the magnitude of the vector between two min and max values

### [Vector2Distance ¶](#Vector2Distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L104)

```
Vector2Distance :: proc "c" (v1, v2: [2]f32) -> f32 {…}
```

 

Calculate distance between two vectors

### [Vector2DistanceSqrt ¶](#Vector2DistanceSqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L109)

```
Vector2DistanceSqrt :: proc "c" (v1, v2: [2]f32) -> f32 {…}
```

 

Calculate square distance between two vectors

### [Vector2Divide ¶](#Vector2Divide) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L145)

```
Vector2Divide :: proc "c" (v1, v2: [2]f32) -> [2]f32 {…}
```

 

Divide vector by vector

### [Vector2DotProduct ¶](#Vector2DotProduct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L99)

```
Vector2DotProduct :: proc "c" (v1, v2: [2]f32) -> f32 {…}
```

 

Calculate two vectors dot product

### [Vector2Equals ¶](#Vector2Equals) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L230)

```
Vector2Equals :: proc "c" (p, q: [2]f32) -> bool {…}
```

### [Vector2Invert ¶](#Vector2Invert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L196)

```
Vector2Invert :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

 

Invert the given vector

### [Vector2Length ¶](#Vector2Length) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L89)

```
Vector2Length :: proc "c" (v: [2]f32) -> f32 {…}
```

 

Calculate vector length

### [Vector2LengthSqr ¶](#Vector2LengthSqr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L94)

```
Vector2LengthSqr :: proc "c" (v: [2]f32) -> f32 {…}
```

 

Calculate vector square length

### [Vector2Lerp ¶](#Vector2Lerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L161)

```
Vector2Lerp :: proc "c" (v1, v2: [2]f32, amount: f32) -> [2]f32 {…}
```

 

Calculate linear interpolation between two vectors

### [Vector2LineAngle ¶](#Vector2LineAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L123)

```
Vector2LineAngle :: proc "c" (start, end: [2]f32) -> f32 {…}
```

 

Calculate angle defined by a two vectors line
NOTE: Parameters need to be normalized
Current implementation should be aligned with glm::angle

### [Vector2MoveTowards ¶](#Vector2MoveTowards) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L182)

```
Vector2MoveTowards :: proc "c" (v, target: [2]f32, maxDistance: f32) -> [2]f32 {…}
```

 

Move Vector towards target

### [Vector2Multiply ¶](#Vector2Multiply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L135)

```
Vector2Multiply :: proc "c" (v1, v2: [2]f32) -> [2]f32 {…}
```

 

Multiply vector by vector

### [Vector2Negate ¶](#Vector2Negate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L140)

```
Vector2Negate :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

 

Negate vector

### [Vector2Normalize ¶](#Vector2Normalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L150)

```
Vector2Normalize :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

 

Normalize provided vector

### [Vector2One ¶](#Vector2One) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L64)

```
Vector2One :: proc "c" () -> [2]f32 {…}
```

 

Vector with components value 1.0

### [Vector2Reflect ¶](#Vector2Reflect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L166)

```
Vector2Reflect :: proc "c" (v, normal: [2]f32) -> [2]f32 {…}
```

 

Calculate reflected vector to normal

### [Vector2Rotate ¶](#Vector2Rotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L171)

```
Vector2Rotate :: proc "c" (v: [2]f32, angle: f32) -> [2]f32 {…}
```

 

Rotate vector by angle

### [Vector2Scale ¶](#Vector2Scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L130)

```
Vector2Scale :: proc "c" (v: [2]f32, scale: f32) -> [2]f32 {…}
```

 

Scale vector (multiply by value)

### [Vector2Subtract ¶](#Vector2Subtract) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L79)

```
Vector2Subtract :: proc "c" (a, b: [2]f32) -> [2]f32 {…}
```

 

Subtract two vectors (v1 - v2)

### [Vector2SubtractValue ¶](#Vector2SubtractValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L84)

```
Vector2SubtractValue :: proc "c" (v: [2]f32, value: f32) -> [2]f32 {…}
```

 

Subtract vector by float value

### [Vector2Transform ¶](#Vector2Transform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L155)

```
Vector2Transform :: proc "c" (v: [2]f32, m: matrix[4, 4]f32) -> [2]f32 {…}
```

 

Transforms a Vector2 by a given Matrix

### [Vector2Zero ¶](#Vector2Zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L59)

```
Vector2Zero :: proc "c" () -> [2]f32 {…}
```

 

Vector with components value 0.0

### [Vector3Add ¶](#Vector3Add) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L254)

```
Vector3Add :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

 

Add two vectors (v1 + v2)

### [Vector3AddValue ¶](#Vector3AddValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L259)

```
Vector3AddValue :: proc "c" (v: [3]f32, value: f32) -> [3]f32 {…}
```

 

Add vector and float value

### [Vector3Angle ¶](#Vector3Angle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L305)

```
Vector3Angle :: proc "c" (v1, v2: [3]f32) -> f32 {…}
```

 

Calculate angle between two vectors
NOTE: Angle is calculated from origin point (0, 0)

### [Vector3Barycenter ¶](#Vector3Barycenter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L497)

```
Vector3Barycenter :: proc "c" (p: [3]f32, a, b, c: [3]f32) -> (result: [3]f32) {…}
```

 

Compute barycenter coordinates (u, v, w) for point p with respect to triangle (a, b, c)
NOTE: Assumes P is on the plane of the triangle

### [Vector3Clamp ¶](#Vector3Clamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L448)

```
Vector3Clamp :: proc "c" (v: [3]f32, min, max: [3]f32) -> [3]f32 {…}
```

 

Clamp the components of the vector between
min and max values specified by the given vectors

### [Vector3ClampValue ¶](#Vector3ClampValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L458)

```
Vector3ClampValue :: proc "c" (v: [3]f32, min, max: f32) -> [3]f32 {…}
```

 

Clamp the magnitude of the vector between two min and max values

### [Vector3CrossProduct ¶](#Vector3CrossProduct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L289)

```
Vector3CrossProduct :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

 

Calculate two vectors dot product

### [Vector3Distance ¶](#Vector3Distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L294)

```
Vector3Distance :: proc "c" (v1, v2: [3]f32) -> f32 {…}
```

 

Calculate distance between two vectors

### [Vector3DistanceSqrt ¶](#Vector3DistanceSqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L299)

```
Vector3DistanceSqrt :: proc "c" (v1, v2: [3]f32) -> f32 {…}
```

 

Calculate square distance between two vectors

### [Vector3Divide ¶](#Vector3Divide) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L335)

```
Vector3Divide :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

 

Divide vector by vector

### [Vector3DotProduct ¶](#Vector3DotProduct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L284)

```
Vector3DotProduct :: proc "c" (v1, v2: [3]f32) -> f32 {…}
```

 

Calculate two vectors dot product

### [Vector3Equals ¶](#Vector3Equals) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L476)

```
Vector3Equals :: proc "c" (p, q: [3]f32) -> bool {…}
```

### [Vector3Invert ¶](#Vector3Invert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L441)

```
Vector3Invert :: proc "c" (v: [3]f32) -> [3]f32 {…}
```

 

Invert the given vector

### [Vector3Length ¶](#Vector3Length) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L274)

```
Vector3Length :: proc "c" (v: [3]f32) -> f32 {…}
```

 

Calculate vector length

### [Vector3LengthSqr ¶](#Vector3LengthSqr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L279)

```
Vector3LengthSqr :: proc "c" (v: [3]f32) -> f32 {…}
```

 

Calculate vector square length

### [Vector3Lerp ¶](#Vector3Lerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L407)

```
Vector3Lerp :: proc "c" (v1, v2: [3]f32, amount: f32) -> [3]f32 {…}
```

 

Calculate linear interpolation between two vectors

### [Vector3LineAngle ¶](#Vector3LineAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L313)

```
Vector3LineAngle :: proc "c" (start, end: [3]f32) -> f32 {…}
```

 

Calculate angle defined by a two vectors line
NOTE: Parameters need to be normalized
Current implementation should be aligned with glm::angle

### [Vector3Max ¶](#Vector3Max) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L489)

```
Vector3Max :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

### [Vector3Min ¶](#Vector3Min) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L484)

```
Vector3Min :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

### [Vector3MoveTowards ¶](#Vector3MoveTowards) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L427)

```
Vector3MoveTowards :: proc "c" (v, target: [3]f32, maxDistance: f32) -> [3]f32 {…}
```

 

Move Vector towards target

### [Vector3Multiply ¶](#Vector3Multiply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L325)

```
Vector3Multiply :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

 

Multiply vector by vector

### [Vector3Negate ¶](#Vector3Negate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L330)

```
Vector3Negate :: proc "c" (v: [3]f32) -> [3]f32 {…}
```

 

Negate vector

### [Vector3Normalize ¶](#Vector3Normalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L340)

```
Vector3Normalize :: proc "c" (v: [3]f32) -> [3]f32 {…}
```

 

Normalize provided vector

### [Vector3One ¶](#Vector3One) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L249)

```
Vector3One :: proc "c" () -> [3]f32 {…}
```

 

Vector with components value 1.0

### [Vector3OrthoNormalize ¶](#Vector3OrthoNormalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L360)

```
Vector3OrthoNormalize :: proc "c" (v1, v2: ^[3]f32) {…}
```

 

Orthonormalize provided vectors
Makes vectors normalized and orthogonal to each other
Gram-Schmidt function implementation

### [Vector3Project ¶](#Vector3Project) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L346)

```
Vector3Project :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

 

Calculate the projection of the vector v1 on to v2

### [Vector3Reflect ¶](#Vector3Reflect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L412)

```
Vector3Reflect :: proc "c" (v, normal: [3]f32) -> [3]f32 {…}
```

 

Calculate reflected vector to normal

### [Vector3Refract ¶](#Vector3Refract) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L421)

```
Vector3Refract :: proc "c" (v, n: [3]f32, r: f32) -> [3]f32 {…}
```

 

Compute the direction of a refracted ray
v: normalized direction of the incoming ray
n: normalized normal vector of the interface of two optical media
r: ratio of the refractive index of the medium from where the ray comes
to the refractive index of the medium on the other side of the surface

### [Vector3Reject ¶](#Vector3Reject) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L352)

```
Vector3Reject :: proc "c" (v1, v2: [3]f32) -> [3]f32 {…}
```

 

Calculate the rejection of the vector v1 on to v2

### [Vector3RotateByAxisAngle ¶](#Vector3RotateByAxisAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L374)

```
Vector3RotateByAxisAngle :: proc "c" (v: [3]f32, axis: [3]f32, angle: f32) -> [3]f32 {…}
```

 

Rotates a vector around an axis

### [Vector3RotateByQuaternion ¶](#Vector3RotateByQuaternion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L368)

```
Vector3RotateByQuaternion :: proc "c" (v: [3]f32, q: quaternion128) -> [3]f32 {…}
```

 

Transform a vector by quaternion rotation

### [Vector3Scale ¶](#Vector3Scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L320)

```
Vector3Scale :: proc "c" (v: [3]f32, scale: f32) -> [3]f32 {…}
```

 

Scale vector (multiply by value)

### [Vector3Subtract ¶](#Vector3Subtract) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L264)

```
Vector3Subtract :: proc "c" (a, b: [3]f32) -> [3]f32 {…}
```

 

Subtract two vectors (v1 - v2)

### [Vector3SubtractValue ¶](#Vector3SubtractValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L269)

```
Vector3SubtractValue :: proc "c" (v: [3]f32, value: f32) -> [3]f32 {…}
```

 

Subtract vector by float value

### [Vector3Transform ¶](#Vector3Transform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L401)

```
Vector3Transform :: proc "c" (v: [3]f32, m: matrix[4, 4]f32) -> [3]f32 {…}
```

 

Transforms a Vector3 by a given Matrix

### [Vector3Unproject ¶](#Vector3Unproject) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L519)

```
Vector3Unproject :: proc "c" (source: [3]f32, projection: matrix[4, 4]f32, view: matrix[4, 4]f32) -> [3]f32 {…}
```

 

Projects a Vector3 from screen space into object space

### [Vector3Zero ¶](#Vector3Zero) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L244)

```
Vector3Zero :: proc "c" () -> [3]f32 {…}
```

 

Vector with components value 0.0

### [WaitTime ¶](#WaitTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L966)

```
WaitTime :: proc "c" (seconds: f64) ---
```

 

Wait for some time (halt program execution)

### [WaveCopy ¶](#WaveCopy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1665)

```
WaveCopy :: proc "c" (wave: Wave) -> Wave ---
```

 

Copy a wave to a new wave

### [WaveCrop ¶](#WaveCrop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1666)

```
WaveCrop :: proc "c" (wave: ^Wave, initFrame, finalFrame: i32) ---
```

 

Crop a wave to defined samples range

### [WaveFormat ¶](#WaveFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1667)

```
WaveFormat :: proc "c" (wave: ^Wave, sampleRate, sampleSize: i32, channels: i32) ---
```

 

Convert wave data to desired format

### [WindowShouldClose ¶](#WindowShouldClose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L909)

```
WindowShouldClose :: proc "c" () -> bool ---
```

 

Check if application should close (KEY\_ESCAPE pressed or windows close icon clicked)

### [Wrap ¶](#Wrap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin#L40)

```
Wrap :: proc "c" (value: f32, min, max: f32) -> f32 {…}
```

 

Wrap input value from min to max

## Procedure Groups

### [MemFree ¶](#MemFree) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L1749)

```
MemFree :: proc{
	MemFreePtr,
	MemFreeCstring,
}
```

 

Internal memory free

## `#config` values

### [MAX\_MATERIAL\_MAPS ¶](#MAX_MATERIAL_MAPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L96)

```
MAX_MATERIAL_MAPS :: #config(RAYLIB_MAX_MATERIAL_MAPS, 12)
```

### [MAX\_TEXTFORMAT\_BUFFERS ¶](#MAX_TEXTFORMAT_BUFFERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L94)

```
MAX_TEXTFORMAT_BUFFERS :: #config(RAYLIB_MAX_TEXTFORMAT_BUFFERS, 4)
```

### [MAX\_TEXT\_BUFFER\_LENGTH ¶](#MAX_TEXT_BUFFER_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L95)

```
MAX_TEXT_BUFFER_LENGTH :: #config(RAYLIB_MAX_TEXT_BUFFER_LENGTH, 1024)
```

### [RAYGUI\_SHARED ¶](#RAYGUI_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L5)

```
RAYGUI_SHARED :: #config(RAYGUI_SHARED, false)
```

### [RAYGUI\_WASM\_LIB ¶](#RAYGUI_WASM_LIB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin#L6)

```
RAYGUI_WASM_LIB :: #config(RAYGUI_WASM_LIB, "wasm/libraygui.a")
```

### [RAYLIB\_SHARED ¶](#RAYLIB_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L100)

```
RAYLIB_SHARED :: #config(RAYLIB_SHARED, false)
```

### [RAYLIB\_WASM\_LIB ¶](#RAYLIB_WASM_LIB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin#L101)

```
RAYLIB_WASM_LIB :: #config(RAYLIB_WASM_LIB, "wasm/libraylib.a")
```

## Source Files

* [easings.odin](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/easings.odin)
* [raygui.odin](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raygui.odin)
* [raylib.odin](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raylib.odin)
* [raymath.odin](https://github.com/odin-lang/Odin/tree/master/vendor/raylib/raymath.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.640248000 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [AudioCallback](#AudioCallback)
    + [AudioStream](#AudioStream)
    + [AutomationEvent](#AutomationEvent)
    + [AutomationEventList](#AutomationEventList)
    + [BlendMode](#BlendMode)
    + [BoneInfo](#BoneInfo)
    + [BoundingBox](#BoundingBox)
    + [Camera](#Camera)
    + [Camera2D](#Camera2D)
    + [Camera3D](#Camera3D)
    + [CameraMode](#CameraMode)
    + [CameraProjection](#CameraProjection)
    + [Color](#Color)
    + [ConfigFlag](#ConfigFlag)
    + [ConfigFlags](#ConfigFlags)
    + [CubemapLayout](#CubemapLayout)
    + [FilePathList](#FilePathList)
    + [Font](#Font)
    + [FontType](#FontType)
    + [GamepadAxis](#GamepadAxis)
    + [GamepadButton](#GamepadButton)
    + [Gesture](#Gesture)
    + [Gestures](#Gestures)
    + [GlyphInfo](#GlyphInfo)
    + [GuiCheckBoxProperty](#GuiCheckBoxProperty)
    + [GuiColorPickerProperty](#GuiColorPickerProperty)
    + [GuiComboBoxProperty](#GuiComboBoxProperty)
    + [GuiControl](#GuiControl)
    + [GuiControlProperty](#GuiControlProperty)
    + [GuiDefaultProperty](#GuiDefaultProperty)
    + [GuiDropdownBoxProperty](#GuiDropdownBoxProperty)
    + [GuiIconName](#GuiIconName)
    + [GuiListViewProperty](#GuiListViewProperty)
    + [GuiProgressBarProperty](#GuiProgressBarProperty)
    + [GuiScrollBarProperty](#GuiScrollBarProperty)
    + [GuiSliderProperty](#GuiSliderProperty)
    + [GuiSpinnerProperty](#GuiSpinnerProperty)
    + [GuiState](#GuiState)
    + [GuiTextAlignment](#GuiTextAlignment)
    + [GuiTextAlignmentVertical](#GuiTextAlignmentVertical)
    + [GuiTextBoxProperty](#GuiTextBoxProperty)
    + [GuiTextWrapMode](#GuiTextWrapMode)
    + [GuiToggleProperty](#GuiToggleProperty)
    + [Image](#Image)
    + [KeyboardKey](#KeyboardKey)
    + [LoadFileDataCallback](#LoadFileDataCallback)
    + [LoadFileTextCallback](#LoadFileTextCallback)
    + [Material](#Material)
    + [MaterialMap](#MaterialMap)
    + [MaterialMapIndex](#MaterialMapIndex)
    + [Matrix](#Matrix)
    + [Mesh](#Mesh)
    + [Model](#Model)
    + [ModelAnimation](#ModelAnimation)
    + [MouseButton](#MouseButton)
    + [MouseCursor](#MouseCursor)
    + [Music](#Music)
    + [NPatchInfo](#NPatchInfo)
    + [NPatchLayout](#NPatchLayout)
    + [PixelFormat](#PixelFormat)
    + [Quaternion](#Quaternion)
    + [Ray](#Ray)
    + [RayCollision](#RayCollision)
    + [Rectangle](#Rectangle)
    + [RenderTexture](#RenderTexture)
    + [RenderTexture2D](#RenderTexture2D)
    + [SaveFileDataCallback](#SaveFileDataCallback)
    + [SaveFileTextCallback](#SaveFileTextCallback)
    + [Shader](#Shader)
    + [ShaderLocationIndex](#ShaderLocationIndex)
    + [ShaderUniformDataType](#ShaderUniformDataType)
    + [Sound](#Sound)
    + [Texture](#Texture)
    + [Texture2D](#Texture2D)
    + [TextureCubemap](#TextureCubemap)
    + [TextureFilter](#TextureFilter)
    + [TextureWrap](#TextureWrap)
    + [TraceLogCallback](#TraceLogCallback)
    + [TraceLogLevel](#TraceLogLevel)
    + [Transform](#Transform)
    + [Vector2](#Vector2)
    + [Vector3](#Vector3)
    + [Vector4](#Vector4)
    + [VrDeviceInfo](#VrDeviceInfo)
    + [VrStereoConfig](#VrStereoConfig)
    + [Wave](#Wave)
  * [Constants](#pkg-Constants)
    + [BEIGE](#BEIGE)
    + [BLACK](#BLACK)
    + [BLANK](#BLANK)
    + [BLUE](#BLUE)
    + [BROWN](#BROWN)
    + [CAMERA\_MOUSE\_MOVE\_SENSITIVITY](#CAMERA_MOUSE_MOVE_SENSITIVITY)
    + [CAMERA\_MOVE\_SPEED](#CAMERA_MOVE_SPEED)
    + [CAMERA\_ORBITAL\_SPEED](#CAMERA_ORBITAL_SPEED)
    + [CAMERA\_PAN\_SPEED](#CAMERA_PAN_SPEED)
    + [CAMERA\_ROTATION\_SPEED](#CAMERA_ROTATION_SPEED)
    + [DARKBLUE](#DARKBLUE)
    + [DARKBROWN](#DARKBROWN)
    + [DARKGRAY](#DARKGRAY)
    + [DARKGREEN](#DARKGREEN)
    + [DARKPURPLE](#DARKPURPLE)
    + [DEG2RAD](#DEG2RAD)
    + [EPSILON](#EPSILON)
    + [GOLD](#GOLD)
    + [GRAY](#GRAY)
    + [GREEN](#GREEN)
    + [LIGHTGRAY](#LIGHTGRAY)
    + [LIME](#LIME)
    + [MAGENTA](#MAGENTA)
    + [MAROON](#MAROON)
    + [MAX\_MATERIAL\_MAPS](#MAX_MATERIAL_MAPS)
    + [MAX\_TEXTFORMAT\_BUFFERS](#MAX_TEXTFORMAT_BUFFERS)
    + [MAX\_TEXT\_BUFFER\_LENGTH](#MAX_TEXT_BUFFER_LENGTH)
    + [ORANGE](#ORANGE)
    + [PI](#PI)
    + [PINK](#PINK)
    + [PURPLE](#PURPLE)
    + [RAD2DEG](#RAD2DEG)
    + [RAYGUI\_SHARED](#RAYGUI_SHARED)
    + [RAYGUI\_VERSION](#RAYGUI_VERSION)
    + [RAYGUI\_WASM\_LIB](#RAYGUI_WASM_LIB)
    + [RAYLIB\_SHARED](#RAYLIB_SHARED)
    + [RAYLIB\_WASM\_LIB](#RAYLIB_WASM_LIB)
    + [RAYWHITE](#RAYWHITE)
    + [RED](#RED)
    + [SCROLLBAR\_LEFT\_SIDE](#SCROLLBAR_LEFT_SIDE)
    + [SCROLLBAR\_RIGHT\_SIDE](#SCROLLBAR_RIGHT_SIDE)
    + [SKYBLUE](#SKYBLUE)
    + [VERSION](#VERSION)
    + [VERSION\_MAJOR](#VERSION_MAJOR)
    + [VERSION\_MINOR](#VERSION_MINOR)
    + [VERSION\_PATCH](#VERSION_PATCH)
    + [VIOLET](#VIOLET)
    + [WHITE](#WHITE)
    + [YELLOW](#YELLOW)
  * [Variables](#pkg-Variables)
    + [version](#version)
  * [Procedures](#pkg-Procedures)
    + [AttachAudioMixedProcessor](#AttachAudioMixedProcessor)
    + [AttachAudioStreamProcessor](#AttachAudioStreamProcessor)
    + [BeginBlendMode](#BeginBlendMode)
    + [BeginDrawing](#BeginDrawing)
    + [BeginMode2D](#BeginMode2D)
    + [BeginMode3D](#BeginMode3D)
    + [BeginScissorMode](#BeginScissorMode)
    + [BeginShaderMode](#BeginShaderMode)
    + [BeginTextureMode](#BeginTextureMode)
    + [BeginVrStereoMode](#BeginVrStereoMode)
    + [CameraMoveForward](#CameraMoveForward)
    + [CameraMoveRight](#CameraMoveRight)
    + [CameraMoveToTarget](#CameraMoveToTarget)
    + [CameraMoveUp](#CameraMoveUp)
    + [CameraPitch](#CameraPitch)
    + [CameraRoll](#CameraRoll)
    + [CameraYaw](#CameraYaw)
    + [ChangeDirectory](#ChangeDirectory)
    + [CheckCollisionBoxSphere](#CheckCollisionBoxSphere)
    + [CheckCollisionBoxes](#CheckCollisionBoxes)
    + [CheckCollisionCircleLine](#CheckCollisionCircleLine)
    + [CheckCollisionCircleRec](#CheckCollisionCircleRec)
    + [CheckCollisionCircles](#CheckCollisionCircles)
    + [CheckCollisionLines](#CheckCollisionLines)
    + [CheckCollisionPointCircle](#CheckCollisionPointCircle)
    + [CheckCollisionPointLine](#CheckCollisionPointLine)
    + [CheckCollisionPointPoly](#CheckCollisionPointPoly)
    + [CheckCollisionPointRec](#CheckCollisionPointRec)
    + [CheckCollisionPointTriangle](#CheckCollisionPointTriangle)
    + [CheckCollisionRecs](#CheckCollisionRecs)
    + [CheckCollisionSpheres](#CheckCollisionSpheres)
    + [Clamp](#Clamp)
    + [ClearBackground](#ClearBackground)
    + [ClearWindowState](#ClearWindowState)
    + [CloseAudioDevice](#CloseAudioDevice)
    + [CloseWindow](#CloseWindow)
    + [CodepointToUTF8](#CodepointToUTF8)
    + [ColorAlpha](#ColorAlpha)
    + [ColorAlphaBlend](#ColorAlphaBlend)
    + [ColorBrightness](#ColorBrightness)
    + [ColorContrast](#ColorContrast)
    + [ColorFromHSV](#ColorFromHSV)
    + [ColorFromNormalized](#ColorFromNormalized)
    + [ColorIsEqual](#ColorIsEqual)
    + [ColorLerp](#ColorLerp)
    + [ColorNormalize](#ColorNormalize)
    + [ColorTint](#ColorTint)
    + [ColorToHSV](#ColorToHSV)
    + [ColorToInt](#ColorToInt)
    + [CompressData](#CompressData)
    + [ComputeCRC32](#ComputeCRC32)
    + [ComputeMD5](#ComputeMD5)
    + [ComputeSHA1](#ComputeSHA1)
    + [DecodeDataBase64](#DecodeDataBase64)
    + [DecompressData](#DecompressData)
    + [DetachAudioMixedProcessor](#DetachAudioMixedProcessor)
    + [DetachAudioStreamProcessor](#DetachAudioStreamProcessor)
    + [DirectoryExists](#DirectoryExists)
    + [DisableCursor](#DisableCursor)
    + [DisableEventWaiting](#DisableEventWaiting)
    + [DrawBillboard](#DrawBillboard)
    + [DrawBillboardPro](#DrawBillboardPro)
    + [DrawBillboardRec](#DrawBillboardRec)
    + [DrawBoundingBox](#DrawBoundingBox)
    + [DrawCapsule](#DrawCapsule)
    + [DrawCapsuleWires](#DrawCapsuleWires)
    + [DrawCircle](#DrawCircle)
    + [DrawCircle3D](#DrawCircle3D)
    + [DrawCircleGradient](#DrawCircleGradient)
    + [DrawCircleLines](#DrawCircleLines)
    + [DrawCircleLinesV](#DrawCircleLinesV)
    + [DrawCircleSector](#DrawCircleSector)
    + [DrawCircleSectorLines](#DrawCircleSectorLines)
    + [DrawCircleV](#DrawCircleV)
    + [DrawCube](#DrawCube)
    + [DrawCubeV](#DrawCubeV)
    + [DrawCubeWires](#DrawCubeWires)
    + [DrawCubeWiresV](#DrawCubeWiresV)
    + [DrawCylinder](#DrawCylinder)
    + [DrawCylinderEx](#DrawCylinderEx)
    + [DrawCylinderWires](#DrawCylinderWires)
    + [DrawCylinderWiresEx](#DrawCylinderWiresEx)
    + [DrawEllipse](#DrawEllipse)
    + [DrawEllipseLines](#DrawEllipseLines)
    + [DrawFPS](#DrawFPS)
    + [DrawGrid](#DrawGrid)
    + [DrawLine](#DrawLine)
    + [DrawLine3D](#DrawLine3D)
    + [DrawLineBezier](#DrawLineBezier)
    + [DrawLineEx](#DrawLineEx)
    + [DrawLineStrip](#DrawLineStrip)
    + [DrawLineV](#DrawLineV)
    + [DrawMesh](#DrawMesh)
    + [DrawMeshInstanced](#DrawMeshInstanced)
    + [DrawModel](#DrawModel)
    + [DrawModelEx](#DrawModelEx)
    + [DrawModelPoints](#DrawModelPoints)
    + [DrawModelPointsEx](#DrawModelPointsEx)
    + [DrawModelWires](#DrawModelWires)
    + [DrawModelWiresEx](#DrawModelWiresEx)
    + [DrawPixel](#DrawPixel)
    + [DrawPixelV](#DrawPixelV)
    + [DrawPlane](#DrawPlane)
    + [DrawPoint3D](#DrawPoint3D)
    + [DrawPoly](#DrawPoly)
    + [DrawPolyLines](#DrawPolyLines)
    + [DrawPolyLinesEx](#DrawPolyLinesEx)
    + [DrawRay](#DrawRay)
    + [DrawRectangle](#DrawRectangle)
    + [DrawRectangleGradientEx](#DrawRectangleGradientEx)
    + [DrawRectangleGradientH](#DrawRectangleGradientH)
    + [DrawRectangleGradientV](#DrawRectangleGradientV)
    + [DrawRectangleLines](#DrawRectangleLines)
    + [DrawRectangleLinesEx](#DrawRectangleLinesEx)
    + [DrawRectanglePro](#DrawRectanglePro)
    + [DrawRectangleRec](#DrawRectangleRec)
    + [DrawRectangleRounded](#DrawRectangleRounded)
    + [DrawRectangleRoundedLines](#DrawRectangleRoundedLines)
    + [DrawRectangleRoundedLinesEx](#DrawRectangleRoundedLinesEx)
    + [DrawRectangleV](#DrawRectangleV)
    + [DrawRing](#DrawRing)
    + [DrawRingLines](#DrawRingLines)
    + [DrawSphere](#DrawSphere)
    + [DrawSphereEx](#DrawSphereEx)
    + [DrawSphereWires](#DrawSphereWires)
    + [DrawSplineBasis](#DrawSplineBasis)
    + [DrawSplineBezierCubic](#DrawSplineBezierCubic)
    + [DrawSplineBezierQuadratic](#DrawSplineBezierQuadratic)
    + [DrawSplineCatmullRom](#DrawSplineCatmullRom)
    + [DrawSplineLinear](#DrawSplineLinear)
    + [DrawSplineSegmentBasis](#DrawSplineSegmentBasis)
    + [DrawSplineSegmentBezierCubic](#DrawSplineSegmentBezierCubic)
    + [DrawSplineSegmentBezierQuadratic](#DrawSplineSegmentBezierQuadratic)
    + [DrawSplineSegmentCatmullRom](#DrawSplineSegmentCatmullRom)
    + [DrawSplineSegmentLinear](#DrawSplineSegmentLinear)
    + [DrawText](#DrawText)
    + [DrawTextCodepoint](#DrawTextCodepoint)
    + [DrawTextCodepoints](#DrawTextCodepoints)
    + [DrawTextEx](#DrawTextEx)
    + [DrawTextPro](#DrawTextPro)
    + [DrawTexture](#DrawTexture)
    + [DrawTextureEx](#DrawTextureEx)
    + [DrawTextureNPatch](#DrawTextureNPatch)
    + [DrawTexturePro](#DrawTexturePro)
    + [DrawTextureRec](#DrawTextureRec)
    + [DrawTextureV](#DrawTextureV)
    + [DrawTriangle](#DrawTriangle)
    + [DrawTriangle3D](#DrawTriangle3D)
    + [DrawTriangleFan](#DrawTriangleFan)
    + [DrawTriangleLines](#DrawTriangleLines)
    + [DrawTriangleStrip](#DrawTriangleStrip)
    + [DrawTriangleStrip3D](#DrawTriangleStrip3D)
    + [EaseBackIn](#EaseBackIn)
    + [EaseBackInOut](#EaseBackInOut)
    + [EaseBackOut](#EaseBackOut)
    + [EaseBounceIn](#EaseBounceIn)
    + [EaseBounceInOut](#EaseBounceInOut)
    + [EaseBounceOut](#EaseBounceOut)
    + [EaseCircIn](#EaseCircIn)
    + [EaseCircInOut](#EaseCircInOut)
    + [EaseCircOut](#EaseCircOut)
    + [EaseCubicIn](#EaseCubicIn)
    + [EaseCubicInOut](#EaseCubicInOut)
    + [EaseCubicOut](#EaseCubicOut)
    + [EaseElasticIn](#EaseElasticIn)
    + [EaseElasticInOut](#EaseElasticInOut)
    + [EaseElasticOut](#EaseElasticOut)
    + [EaseExpoIn](#EaseExpoIn)
    + [EaseExpoInOut](#EaseExpoInOut)
    + [EaseExpoOut](#EaseExpoOut)
    + [EaseLinearIn](#EaseLinearIn)
    + [EaseLinearInOut](#EaseLinearInOut)
    + [EaseLinearNone](#EaseLinearNone)
    + [EaseLinearOut](#EaseLinearOut)
    + [EaseQuadIn](#EaseQuadIn)
    + [EaseQuadInOut](#EaseQuadInOut)
    + [EaseQuadOut](#EaseQuadOut)
    + [EaseSineIn](#EaseSineIn)
    + [EaseSineInOut](#EaseSineInOut)
    + [EaseSineOut](#EaseSineOut)
    + [EnableCursor](#EnableCursor)
    + [EnableEventWaiting](#EnableEventWaiting)
    + [EncodeDataBase64](#EncodeDataBase64)
    + [EndBlendMode](#EndBlendMode)
    + [EndDrawing](#EndDrawing)
    + [EndMode2D](#EndMode2D)
    + [EndMode3D](#EndMode3D)
    + [EndScissorMode](#EndScissorMode)
    + [EndShaderMode](#EndShaderMode)
    + [EndTextureMode](#EndTextureMode)
    + [EndVrStereoMode](#EndVrStereoMode)
    + [ExportAutomationEventList](#ExportAutomationEventList)
    + [ExportDataAsCode](#ExportDataAsCode)
    + [ExportFontAsCode](#ExportFontAsCode)
    + [ExportImage](#ExportImage)
    + [ExportImageAsCode](#ExportImageAsCode)
    + [ExportImageToMemory](#ExportImageToMemory)
    + [ExportMesh](#ExportMesh)
    + [ExportMeshAsCode](#ExportMeshAsCode)
    + [ExportWave](#ExportWave)
    + [ExportWaveAsCode](#ExportWaveAsCode)
    + [Fade](#Fade)
    + [FileExists](#FileExists)
    + [FloatEquals](#FloatEquals)
    + [GenImageCellular](#GenImageCellular)
    + [GenImageChecked](#GenImageChecked)
    + [GenImageColor](#GenImageColor)
    + [GenImageFontAtlas](#GenImageFontAtlas)
    + [GenImageGradientLinear](#GenImageGradientLinear)
    + [GenImageGradientRadial](#GenImageGradientRadial)
    + [GenImageGradientSquare](#GenImageGradientSquare)
    + [GenImagePerlinNoise](#GenImagePerlinNoise)
    + [GenImageText](#GenImageText)
    + [GenImageWhiteNoise](#GenImageWhiteNoise)
    + [GenMeshCone](#GenMeshCone)
    + [GenMeshCube](#GenMeshCube)
    + [GenMeshCubicmap](#GenMeshCubicmap)
    + [GenMeshCylinder](#GenMeshCylinder)
    + [GenMeshHeightmap](#GenMeshHeightmap)
    + [GenMeshHemiSphere](#GenMeshHemiSphere)
    + [GenMeshKnot](#GenMeshKnot)
    + [GenMeshPlane](#GenMeshPlane)
    + [GenMeshPoly](#GenMeshPoly)
    + [GenMeshSphere](#GenMeshSphere)
    + [GenMeshTangents](#GenMeshTangents)
    + [GenMeshTorus](#GenMeshTorus)
    + [GenTextureMipmaps](#GenTextureMipmaps)
    + [GetApplicationDirectory](#GetApplicationDirectory)
    + [GetCameraForward](#GetCameraForward)
    + [GetCameraMatrix](#GetCameraMatrix)
    + [GetCameraMatrix2D](#GetCameraMatrix2D)
    + [GetCameraProjectionMatrix](#GetCameraProjectionMatrix)
    + [GetCameraRight](#GetCameraRight)
    + [GetCameraUp](#GetCameraUp)
    + [GetCameraViewMatrix](#GetCameraViewMatrix)
    + [GetCharPressed](#GetCharPressed)
    + [GetClipboardImage](#GetClipboardImage)
    + [GetClipboardText](#GetClipboardText)
    + [GetCodepoint](#GetCodepoint)
    + [GetCodepointCount](#GetCodepointCount)
    + [GetCodepointNext](#GetCodepointNext)
    + [GetCodepointPrevious](#GetCodepointPrevious)
    + [GetCollisionRec](#GetCollisionRec)
    + [GetColor](#GetColor)
    + [GetCurrentMonitor](#GetCurrentMonitor)
    + [GetDirectoryPath](#GetDirectoryPath)
    + [GetFPS](#GetFPS)
    + [GetFileExtension](#GetFileExtension)
    + [GetFileLength](#GetFileLength)
    + [GetFileModTime](#GetFileModTime)
    + [GetFileName](#GetFileName)
    + [GetFileNameWithoutExt](#GetFileNameWithoutExt)
    + [GetFontDefault](#GetFontDefault)
    + [GetFrameTime](#GetFrameTime)
    + [GetGamepadAxisCount](#GetGamepadAxisCount)
    + [GetGamepadAxisMovement](#GetGamepadAxisMovement)
    + [GetGamepadButtonPressed](#GetGamepadButtonPressed)
    + [GetGamepadName](#GetGamepadName)
    + [GetGestureDetected](#GetGestureDetected)
    + [GetGestureDragAngle](#GetGestureDragAngle)
    + [GetGestureDragVector](#GetGestureDragVector)
    + [GetGestureHoldDuration](#GetGestureHoldDuration)
    + [GetGesturePinchAngle](#GetGesturePinchAngle)
    + [GetGesturePinchVector](#GetGesturePinchVector)
    + [GetGlyphAtlasRec](#GetGlyphAtlasRec)
    + [GetGlyphIndex](#GetGlyphIndex)
    + [GetGlyphInfo](#GetGlyphInfo)
    + [GetImageAlphaBorder](#GetImageAlphaBorder)
    + [GetImageColor](#GetImageColor)
    + [GetKeyPressed](#GetKeyPressed)
    + [GetMasterVolume](#GetMasterVolume)
    + [GetMeshBoundingBox](#GetMeshBoundingBox)
    + [GetModelBoundingBox](#GetModelBoundingBox)
    + [GetMonitorCount](#GetMonitorCount)
    + [GetMonitorHeight](#GetMonitorHeight)
    + [GetMonitorName](#GetMonitorName)
    + [GetMonitorPhysicalHeight](#GetMonitorPhysicalHeight)
    + [GetMonitorPhysicalWidth](#GetMonitorPhysicalWidth)
    + [GetMonitorPosition](#GetMonitorPosition)
    + [GetMonitorRefreshRate](#GetMonitorRefreshRate)
    + [GetMonitorWidth](#GetMonitorWidth)
    + [GetMouseDelta](#GetMouseDelta)
    + [GetMousePosition](#GetMousePosition)
    + [GetMouseWheelMove](#GetMouseWheelMove)
    + [GetMouseWheelMoveV](#GetMouseWheelMoveV)
    + [GetMouseX](#GetMouseX)
    + [GetMouseY](#GetMouseY)
    + [GetMusicTimeLength](#GetMusicTimeLength)
    + [GetMusicTimePlayed](#GetMusicTimePlayed)
    + [GetPixelColor](#GetPixelColor)
    + [GetPixelDataSize](#GetPixelDataSize)
    + [GetPrevDirectoryPath](#GetPrevDirectoryPath)
    + [GetRandomValue](#GetRandomValue)
    + [GetRayCollisionBox](#GetRayCollisionBox)
    + [GetRayCollisionMesh](#GetRayCollisionMesh)
    + [GetRayCollisionQuad](#GetRayCollisionQuad)
    + [GetRayCollisionSphere](#GetRayCollisionSphere)
    + [GetRayCollisionTriangle](#GetRayCollisionTriangle)
    + [GetRenderHeight](#GetRenderHeight)
    + [GetRenderWidth](#GetRenderWidth)
    + [GetScreenHeight](#GetScreenHeight)
    + [GetScreenToWorld2D](#GetScreenToWorld2D)
    + [GetScreenToWorldRay](#GetScreenToWorldRay)
    + [GetScreenToWorldRayEx](#GetScreenToWorldRayEx)
    + [GetScreenWidth](#GetScreenWidth)
    + [GetShaderLocation](#GetShaderLocation)
    + [GetShaderLocationAttrib](#GetShaderLocationAttrib)
    + [GetShapesTexture](#GetShapesTexture)
    + [GetShapesTextureRectangle](#GetShapesTextureRectangle)
    + [GetSplinePointBasis](#GetSplinePointBasis)
    + [GetSplinePointBezierCubic](#GetSplinePointBezierCubic)
    + [GetSplinePointBezierQuad](#GetSplinePointBezierQuad)
    + [GetSplinePointCatmullRom](#GetSplinePointCatmullRom)
    + [GetSplinePointLinear](#GetSplinePointLinear)
    + [GetTime](#GetTime)
    + [GetTouchPointCount](#GetTouchPointCount)
    + [GetTouchPointId](#GetTouchPointId)
    + [GetTouchPosition](#GetTouchPosition)
    + [GetTouchX](#GetTouchX)
    + [GetTouchY](#GetTouchY)
    + [GetWindowHandle](#GetWindowHandle)
    + [GetWindowPosition](#GetWindowPosition)
    + [GetWindowScaleDPI](#GetWindowScaleDPI)
    + [GetWorkingDirectory](#GetWorkingDirectory)
    + [GetWorldToScreen](#GetWorldToScreen)
    + [GetWorldToScreen2D](#GetWorldToScreen2D)
    + [GetWorldToScreenEx](#GetWorldToScreenEx)
    + [GuiButton](#GuiButton)
    + [GuiCheckBox](#GuiCheckBox)
    + [GuiColorBarAlpha](#GuiColorBarAlpha)
    + [GuiColorBarHue](#GuiColorBarHue)
    + [GuiColorPanel](#GuiColorPanel)
    + [GuiColorPanelHSV](#GuiColorPanelHSV)
    + [GuiColorPicker](#GuiColorPicker)
    + [GuiColorPickerHSV](#GuiColorPickerHSV)
    + [GuiComboBox](#GuiComboBox)
    + [GuiDisable](#GuiDisable)
    + [GuiDisableTooltip](#GuiDisableTooltip)
    + [GuiDrawIcon](#GuiDrawIcon)
    + [GuiDropdownBox](#GuiDropdownBox)
    + [GuiDummyRec](#GuiDummyRec)
    + [GuiEnable](#GuiEnable)
    + [GuiEnableTooltip](#GuiEnableTooltip)
    + [GuiGetFont](#GuiGetFont)
    + [GuiGetIcons](#GuiGetIcons)
    + [GuiGetState](#GuiGetState)
    + [GuiGetStyle](#GuiGetStyle)
    + [GuiGrid](#GuiGrid)
    + [GuiGroupBox](#GuiGroupBox)
    + [GuiIconText](#GuiIconText)
    + [GuiIsLocked](#GuiIsLocked)
    + [GuiLabel](#GuiLabel)
    + [GuiLabelButton](#GuiLabelButton)
    + [GuiLine](#GuiLine)
    + [GuiListView](#GuiListView)
    + [GuiListViewEx](#GuiListViewEx)
    + [GuiLoadIcons](#GuiLoadIcons)
    + [GuiLoadStyle](#GuiLoadStyle)
    + [GuiLoadStyleDefault](#GuiLoadStyleDefault)
    + [GuiLock](#GuiLock)
    + [GuiMessageBox](#GuiMessageBox)
    + [GuiPanel](#GuiPanel)
    + [GuiProgressBar](#GuiProgressBar)
    + [GuiScrollPanel](#GuiScrollPanel)
    + [GuiSetAlpha](#GuiSetAlpha)
    + [GuiSetFont](#GuiSetFont)
    + [GuiSetIconScale](#GuiSetIconScale)
    + [GuiSetState](#GuiSetState)
    + [GuiSetStyle](#GuiSetStyle)
    + [GuiSetTooltip](#GuiSetTooltip)
    + [GuiSlider](#GuiSlider)
    + [GuiSliderBar](#GuiSliderBar)
    + [GuiSpinner](#GuiSpinner)
    + [GuiStatusBar](#GuiStatusBar)
    + [GuiTabBar](#GuiTabBar)
    + [GuiTextBox](#GuiTextBox)
    + [GuiTextInputBox](#GuiTextInputBox)
    + [GuiToggle](#GuiToggle)
    + [GuiToggleGroup](#GuiToggleGroup)
    + [GuiToggleSlider](#GuiToggleSlider)
    + [GuiUnlock](#GuiUnlock)
    + [GuiValueBox](#GuiValueBox)
    + [GuiWindowBox](#GuiWindowBox)
    + [HideCursor](#HideCursor)
    + [ImageAlphaClear](#ImageAlphaClear)
    + [ImageAlphaCrop](#ImageAlphaCrop)
    + [ImageAlphaMask](#ImageAlphaMask)
    + [ImageAlphaPremultiply](#ImageAlphaPremultiply)
    + [ImageBlurGaussian](#ImageBlurGaussian)
    + [ImageClearBackground](#ImageClearBackground)
    + [ImageColorBrightness](#ImageColorBrightness)
    + [ImageColorContrast](#ImageColorContrast)
    + [ImageColorGrayscale](#ImageColorGrayscale)
    + [ImageColorInvert](#ImageColorInvert)
    + [ImageColorReplace](#ImageColorReplace)
    + [ImageColorTint](#ImageColorTint)
    + [ImageCopy](#ImageCopy)
    + [ImageCrop](#ImageCrop)
    + [ImageDither](#ImageDither)
    + [ImageDraw](#ImageDraw)
    + [ImageDrawCircle](#ImageDrawCircle)
    + [ImageDrawCircleLines](#ImageDrawCircleLines)
    + [ImageDrawCircleLinesV](#ImageDrawCircleLinesV)
    + [ImageDrawCircleV](#ImageDrawCircleV)
    + [ImageDrawLine](#ImageDrawLine)
    + [ImageDrawLineEx](#ImageDrawLineEx)
    + [ImageDrawLineV](#ImageDrawLineV)
    + [ImageDrawPixel](#ImageDrawPixel)
    + [ImageDrawPixelV](#ImageDrawPixelV)
    + [ImageDrawRectangle](#ImageDrawRectangle)
    + [ImageDrawRectangleLines](#ImageDrawRectangleLines)
    + [ImageDrawRectangleRec](#ImageDrawRectangleRec)
    + [ImageDrawRectangleV](#ImageDrawRectangleV)
    + [ImageDrawText](#ImageDrawText)
    + [ImageDrawTextEx](#ImageDrawTextEx)
    + [ImageDrawTriangle](#ImageDrawTriangle)
    + [ImageDrawTriangleEx](#ImageDrawTriangleEx)
    + [ImageDrawTriangleFan](#ImageDrawTriangleFan)
    + [ImageDrawTriangleLines](#ImageDrawTriangleLines)
    + [ImageDrawTriangleStrip](#ImageDrawTriangleStrip)
    + [ImageFlipHorizontal](#ImageFlipHorizontal)
    + [ImageFlipVertical](#ImageFlipVertical)
    + [ImageFormat](#ImageFormat)
    + [ImageFromChannel](#ImageFromChannel)
    + [ImageFromImage](#ImageFromImage)
    + [ImageKernelConvolution](#ImageKernelConvolution)
    + [ImageMipmaps](#ImageMipmaps)
    + [ImageResize](#ImageResize)
    + [ImageResizeCanvas](#ImageResizeCanvas)
    + [ImageResizeNN](#ImageResizeNN)
    + [ImageRotate](#ImageRotate)
    + [ImageRotateCCW](#ImageRotateCCW)
    + [ImageRotateCW](#ImageRotateCW)
    + [ImageText](#ImageText)
    + [ImageTextEx](#ImageTextEx)
    + [ImageToPOT](#ImageToPOT)
    + [InitAudioDevice](#InitAudioDevice)
    + [InitWindow](#InitWindow)
    + [IsAudioDeviceReady](#IsAudioDeviceReady)
    + [IsAudioStreamPlaying](#IsAudioStreamPlaying)
    + [IsAudioStreamProcessed](#IsAudioStreamProcessed)
    + [IsAudioStreamReady](#IsAudioStreamReady)
    + [IsAudioStreamValid](#IsAudioStreamValid)
    + [IsCursorHidden](#IsCursorHidden)
    + [IsCursorOnScreen](#IsCursorOnScreen)
    + [IsFileDropped](#IsFileDropped)
    + [IsFileExtension](#IsFileExtension)
    + [IsFileNameValid](#IsFileNameValid)
    + [IsFontReady](#IsFontReady)
    + [IsFontValid](#IsFontValid)
    + [IsGamepadAvailable](#IsGamepadAvailable)
    + [IsGamepadButtonDown](#IsGamepadButtonDown)
    + [IsGamepadButtonPressed](#IsGamepadButtonPressed)
    + [IsGamepadButtonReleased](#IsGamepadButtonReleased)
    + [IsGamepadButtonUp](#IsGamepadButtonUp)
    + [IsGestureDetected](#IsGestureDetected)
    + [IsImageReady](#IsImageReady)
    + [IsImageValid](#IsImageValid)
    + [IsKeyDown](#IsKeyDown)
    + [IsKeyPressed](#IsKeyPressed)
    + [IsKeyPressedRepeat](#IsKeyPressedRepeat)
    + [IsKeyReleased](#IsKeyReleased)
    + [IsKeyUp](#IsKeyUp)
    + [IsMaterialReady](#IsMaterialReady)
    + [IsMaterialValid](#IsMaterialValid)
    + [IsModelAnimationValid](#IsModelAnimationValid)
    + [IsModelReady](#IsModelReady)
    + [IsModelValid](#IsModelValid)
    + [IsMouseButtonDown](#IsMouseButtonDown)
    + [IsMouseButtonPressed](#IsMouseButtonPressed)
    + [IsMouseButtonReleased](#IsMouseButtonReleased)
    + [IsMouseButtonUp](#IsMouseButtonUp)
    + [IsMusicReady](#IsMusicReady)
    + [IsMusicStreamPlaying](#IsMusicStreamPlaying)
    + [IsMusicValid](#IsMusicValid)
    + [IsPathFile](#IsPathFile)
    + [IsRenderTextureReady](#IsRenderTextureReady)
    + [IsRenderTextureValid](#IsRenderTextureValid)
    + [IsShaderReady](#IsShaderReady)
    + [IsShaderValid](#IsShaderValid)
    + [IsSoundPlaying](#IsSoundPlaying)
    + [IsSoundReady](#IsSoundReady)
    + [IsSoundValid](#IsSoundValid)
    + [IsTextureReady](#IsTextureReady)
    + [IsTextureValid](#IsTextureValid)
    + [IsWaveReady](#IsWaveReady)
    + [IsWaveValid](#IsWaveValid)
    + [IsWindowFocused](#IsWindowFocused)
    + [IsWindowFullscreen](#IsWindowFullscreen)
    + [IsWindowHidden](#IsWindowHidden)
    + [IsWindowMaximized](#IsWindowMaximized)
    + [IsWindowMinimized](#IsWindowMinimized)
    + [IsWindowReady](#IsWindowReady)
    + [IsWindowResized](#IsWindowResized)
    + [IsWindowState](#IsWindowState)
    + [Lerp](#Lerp)
    + [LoadAudioStream](#LoadAudioStream)
    + [LoadAutomationEventList](#LoadAutomationEventList)
    + [LoadCodepoints](#LoadCodepoints)
    + [LoadDirectoryFiles](#LoadDirectoryFiles)
    + [LoadDirectoryFilesEx](#LoadDirectoryFilesEx)
    + [LoadDroppedFiles](#LoadDroppedFiles)
    + [LoadFileData](#LoadFileData)
    + [LoadFileText](#LoadFileText)
    + [LoadFont](#LoadFont)
    + [LoadFontData](#LoadFontData)
    + [LoadFontEx](#LoadFontEx)
    + [LoadFontFromImage](#LoadFontFromImage)
    + [LoadFontFromMemory](#LoadFontFromMemory)
    + [LoadImage](#LoadImage)
    + [LoadImageAnim](#LoadImageAnim)
    + [LoadImageAnimFromMemory](#LoadImageAnimFromMemory)
    + [LoadImageColors](#LoadImageColors)
    + [LoadImageFromMemory](#LoadImageFromMemory)
    + [LoadImageFromScreen](#LoadImageFromScreen)
    + [LoadImageFromTexture](#LoadImageFromTexture)
    + [LoadImagePalette](#LoadImagePalette)
    + [LoadImageRaw](#LoadImageRaw)
    + [LoadMaterialDefault](#LoadMaterialDefault)
    + [LoadMaterials](#LoadMaterials)
    + [LoadModel](#LoadModel)
    + [LoadModelAnimations](#LoadModelAnimations)
    + [LoadModelFromMesh](#LoadModelFromMesh)
    + [LoadMusicStream](#LoadMusicStream)
    + [LoadMusicStreamFromMemory](#LoadMusicStreamFromMemory)
    + [LoadRandomSequence](#LoadRandomSequence)
    + [LoadRenderTexture](#LoadRenderTexture)
    + [LoadShader](#LoadShader)
    + [LoadShaderFromMemory](#LoadShaderFromMemory)
    + [LoadSound](#LoadSound)
    + [LoadSoundAlias](#LoadSoundAlias)
    + [LoadSoundFromWave](#LoadSoundFromWave)
    + [LoadTexture](#LoadTexture)
    + [LoadTextureCubemap](#LoadTextureCubemap)
    + [LoadTextureFromImage](#LoadTextureFromImage)
    + [LoadUTF8](#LoadUTF8)
    + [LoadVrStereoConfig](#LoadVrStereoConfig)
    + [LoadWave](#LoadWave)
    + [LoadWaveFromMemory](#LoadWaveFromMemory)
    + [LoadWaveSamples](#LoadWaveSamples)
    + [MakeDirectory](#MakeDirectory)
    + [MatrixAdd](#MatrixAdd)
    + [MatrixDeterminant](#MatrixDeterminant)
    + [MatrixIdentity](#MatrixIdentity)
    + [MatrixInvert](#MatrixInvert)
    + [MatrixLookAt](#MatrixLookAt)
    + [MatrixMultiply](#MatrixMultiply)
    + [MatrixOrtho](#MatrixOrtho)
    + [MatrixPerspective](#MatrixPerspective)
    + [MatrixRotate](#MatrixRotate)
    + [MatrixRotateX](#MatrixRotateX)
    + [MatrixRotateXYZ](#MatrixRotateXYZ)
    + [MatrixRotateY](#MatrixRotateY)
    + [MatrixRotateZ](#MatrixRotateZ)
    + [MatrixRotateZYX](#MatrixRotateZYX)
    + [MatrixScale](#MatrixScale)
    + [MatrixSubtract](#MatrixSubtract)
    + [MatrixToFloatV](#MatrixToFloatV)
    + [MatrixTrace](#MatrixTrace)
    + [MatrixTranslate](#MatrixTranslate)
    + [MatrixTranspose](#MatrixTranspose)
    + [MaximizeWindow](#MaximizeWindow)
    + [MeasureText](#MeasureText)
    + [MeasureTextEx](#MeasureTextEx)
    + [MemAlloc](#MemAlloc)
    + [MemAllocator](#MemAllocator)
    + [MemAllocatorProc](#MemAllocatorProc)
    + [MemFreeCstring](#MemFreeCstring)
    + [MemFreePtr](#MemFreePtr)
    + [MemRealloc](#MemRealloc)
    + [MinimizeWindow](#MinimizeWindow)
    + [Normalize](#Normalize)
    + [OpenURL](#OpenURL)
    + [PauseAudioStream](#PauseAudioStream)
    + [PauseMusicStream](#PauseMusicStream)
    + [PauseSound](#PauseSound)
    + [PlayAudioStream](#PlayAudioStream)
    + [PlayAutomationEvent](#PlayAutomationEvent)
    + [PlayMusicStream](#PlayMusicStream)
    + [PlaySound](#PlaySound)
    + [PollInputEvents](#PollInputEvents)
    + [QuaternionAdd](#QuaternionAdd)
    + [QuaternionAddValue](#QuaternionAddValue)
    + [QuaternionDivide](#QuaternionDivide)
    + [QuaternionEquals](#QuaternionEquals)
    + [QuaternionFromAxisAngle](#QuaternionFromAxisAngle)
    + [QuaternionFromEuler](#QuaternionFromEuler)
    + [QuaternionFromMatrix](#QuaternionFromMatrix)
    + [QuaternionFromVector3ToVector3](#QuaternionFromVector3ToVector3)
    + [QuaternionIdentity](#QuaternionIdentity)
    + [QuaternionInvert](#QuaternionInvert)
    + [QuaternionLength](#QuaternionLength)
    + [QuaternionLerp](#QuaternionLerp)
    + [QuaternionMultiply](#QuaternionMultiply)
    + [QuaternionNlerp](#QuaternionNlerp)
    + [QuaternionNormalize](#QuaternionNormalize)
    + [QuaternionScale](#QuaternionScale)
    + [QuaternionSlerp](#QuaternionSlerp)
    + [QuaternionSubtract](#QuaternionSubtract)
    + [QuaternionSubtractValue](#QuaternionSubtractValue)
    + [QuaternionToAxisAngle](#QuaternionToAxisAngle)
    + [QuaternionToEuler](#QuaternionToEuler)
    + [QuaternionToMatrix](#QuaternionToMatrix)
    + [QuaternionTransform](#QuaternionTransform)
    + [Remap](#Remap)
    + [RestoreWindow](#RestoreWindow)
    + [ResumeAudioStream](#ResumeAudioStream)
    + [ResumeMusicStream](#ResumeMusicStream)
    + [ResumeSound](#ResumeSound)
    + [SaveFileData](#SaveFileData)
    + [SaveFileText](#SaveFileText)
    + [SeekMusicStream](#SeekMusicStream)
    + [SetAudioStreamBufferSizeDefault](#SetAudioStreamBufferSizeDefault)
    + [SetAudioStreamCallback](#SetAudioStreamCallback)
    + [SetAudioStreamPan](#SetAudioStreamPan)
    + [SetAudioStreamPitch](#SetAudioStreamPitch)
    + [SetAudioStreamVolume](#SetAudioStreamVolume)
    + [SetAutomationEventBaseFrame](#SetAutomationEventBaseFrame)
    + [SetAutomationEventList](#SetAutomationEventList)
    + [SetClipboardText](#SetClipboardText)
    + [SetConfigFlags](#SetConfigFlags)
    + [SetExitKey](#SetExitKey)
    + [SetGamepadMappings](#SetGamepadMappings)
    + [SetGamepadVibration](#SetGamepadVibration)
    + [SetGesturesEnabled](#SetGesturesEnabled)
    + [SetLoadFileDataCallback](#SetLoadFileDataCallback)
    + [SetLoadFileTextCallback](#SetLoadFileTextCallback)
    + [SetMasterVolume](#SetMasterVolume)
    + [SetMaterialTexture](#SetMaterialTexture)
    + [SetModelMeshMaterial](#SetModelMeshMaterial)
    + [SetMouseCursor](#SetMouseCursor)
    + [SetMouseOffset](#SetMouseOffset)
    + [SetMousePosition](#SetMousePosition)
    + [SetMouseScale](#SetMouseScale)
    + [SetMusicPan](#SetMusicPan)
    + [SetMusicPitch](#SetMusicPitch)
    + [SetMusicVolume](#SetMusicVolume)
    + [SetPixelColor](#SetPixelColor)
    + [SetRandomSeed](#SetRandomSeed)
    + [SetSaveFileDataCallback](#SetSaveFileDataCallback)
    + [SetSaveFileTextCallback](#SetSaveFileTextCallback)
    + [SetShaderValue](#SetShaderValue)
    + [SetShaderValueMatrix](#SetShaderValueMatrix)
    + [SetShaderValueTexture](#SetShaderValueTexture)
    + [SetShaderValueV](#SetShaderValueV)
    + [SetShapesTexture](#SetShapesTexture)
    + [SetSoundPan](#SetSoundPan)
    + [SetSoundPitch](#SetSoundPitch)
    + [SetSoundVolume](#SetSoundVolume)
    + [SetTargetFPS](#SetTargetFPS)
    + [SetTextLineSpacing](#SetTextLineSpacing)
    + [SetTextureFilter](#SetTextureFilter)
    + [SetTextureWrap](#SetTextureWrap)
    + [SetTraceLogCallback](#SetTraceLogCallback)
    + [SetTraceLogLevel](#SetTraceLogLevel)
    + [SetWindowFocused](#SetWindowFocused)
    + [SetWindowIcon](#SetWindowIcon)
    + [SetWindowIcons](#SetWindowIcons)
    + [SetWindowMaxSize](#SetWindowMaxSize)
    + [SetWindowMinSize](#SetWindowMinSize)
    + [SetWindowMonitor](#SetWindowMonitor)
    + [SetWindowOpacity](#SetWindowOpacity)
    + [SetWindowPosition](#SetWindowPosition)
    + [SetWindowSize](#SetWindowSize)
    + [SetWindowState](#SetWindowState)
    + [SetWindowTitle](#SetWindowTitle)
    + [ShowCursor](#ShowCursor)
    + [StartAutomationEventRecording](#StartAutomationEventRecording)
    + [StopAudioStream](#StopAudioStream)
    + [StopAutomationEventRecording](#StopAutomationEventRecording)
    + [StopMusicStream](#StopMusicStream)
    + [StopSound](#StopSound)
    + [SwapScreenBuffer](#SwapScreenBuffer)
    + [TakeScreenshot](#TakeScreenshot)
    + [TextAppend](#TextAppend)
    + [TextCopy](#TextCopy)
    + [TextFindIndex](#TextFindIndex)
    + [TextFormat](#TextFormat)
    + [TextFormatAlloc](#TextFormatAlloc)
    + [TextInsert](#TextInsert)
    + [TextIsEqual](#TextIsEqual)
    + [TextJoin](#TextJoin)
    + [TextLength](#TextLength)
    + [TextReplace](#TextReplace)
    + [TextSplit](#TextSplit)
    + [TextSubtext](#TextSubtext)
    + [TextToCamel](#TextToCamel)
    + [TextToFloat](#TextToFloat)
    + [TextToInteger](#TextToInteger)
    + [TextToLower](#TextToLower)
    + [TextToPascal](#TextToPascal)
    + [TextToSnake](#TextToSnake)
    + [TextToUpper](#TextToUpper)
    + [ToggleBorderlessWindowed](#ToggleBorderlessWindowed)
    + [ToggleFullscreen](#ToggleFullscreen)
    + [TraceLog](#TraceLog)
    + [UnloadAudioStream](#UnloadAudioStream)
    + [UnloadAutomationEventList](#UnloadAutomationEventList)
    + [UnloadCodepoints](#UnloadCodepoints)
    + [UnloadDirectoryFiles](#UnloadDirectoryFiles)
    + [UnloadDroppedFiles](#UnloadDroppedFiles)
    + [UnloadFileData](#UnloadFileData)
    + [UnloadFileText](#UnloadFileText)
    + [UnloadFont](#UnloadFont)
    + [UnloadFontData](#UnloadFontData)
    + [UnloadImage](#UnloadImage)
    + [UnloadImageColors](#UnloadImageColors)
    + [UnloadImagePalette](#UnloadImagePalette)
    + [UnloadMaterial](#UnloadMaterial)
    + [UnloadMesh](#UnloadMesh)
    + [UnloadModel](#UnloadModel)
    + [UnloadModelAnimation](#UnloadModelAnimation)
    + [UnloadModelAnimations](#UnloadModelAnimations)
    + [UnloadMusicStream](#UnloadMusicStream)
    + [UnloadRandomSequence](#UnloadRandomSequence)
    + [UnloadRenderTexture](#UnloadRenderTexture)
    + [UnloadShader](#UnloadShader)
    + [UnloadSound](#UnloadSound)
    + [UnloadSoundAlias](#UnloadSoundAlias)
    + [UnloadTexture](#UnloadTexture)
    + [UnloadUTF8](#UnloadUTF8)
    + [UnloadVrStereoConfig](#UnloadVrStereoConfig)
    + [UnloadWave](#UnloadWave)
    + [UnloadWaveSamples](#UnloadWaveSamples)
    + [UpdateAudioStream](#UpdateAudioStream)
    + [UpdateCamera](#UpdateCamera)
    + [UpdateCameraPro](#UpdateCameraPro)
    + [UpdateMeshBuffer](#UpdateMeshBuffer)
    + [UpdateModelAnimation](#UpdateModelAnimation)
    + [UpdateModelAnimationBones](#UpdateModelAnimationBones)
    + [UpdateMusicStream](#UpdateMusicStream)
    + [UpdateSound](#UpdateSound)
    + [UpdateTexture](#UpdateTexture)
    + [UpdateTextureRec](#UpdateTextureRec)
    + [UploadMesh](#UploadMesh)
    + [Vector2Add](#Vector2Add)
    + [Vector2AddValue](#Vector2AddValue)
    + [Vector2Angle](#Vector2Angle)
    + [Vector2Clamp](#Vector2Clamp)
    + [Vector2ClampValue](#Vector2ClampValue)
    + [Vector2Distance](#Vector2Distance)
    + [Vector2DistanceSqrt](#Vector2DistanceSqrt)
    + [Vector2Divide](#Vector2Divide)
    + [Vector2DotProduct](#Vector2DotProduct)
    + [Vector2Equals](#Vector2Equals)
    + [Vector2Invert](#Vector2Invert)
    + [Vector2Length](#Vector2Length)
    + [Vector2LengthSqr](#Vector2LengthSqr)
    + [Vector2Lerp](#Vector2Lerp)
    + [Vector2LineAngle](#Vector2LineAngle)
    + [Vector2MoveTowards](#Vector2MoveTowards)
    + [Vector2Multiply](#Vector2Multiply)
    + [Vector2Negate](#Vector2Negate)
    + [Vector2Normalize](#Vector2Normalize)
    + [Vector2One](#Vector2One)
    + [Vector2Reflect](#Vector2Reflect)
    + [Vector2Rotate](#Vector2Rotate)
    + [Vector2Scale](#Vector2Scale)
    + [Vector2Subtract](#Vector2Subtract)
    + [Vector2SubtractValue](#Vector2SubtractValue)
    + [Vector2Transform](#Vector2Transform)
    + [Vector2Zero](#Vector2Zero)
    + [Vector3Add](#Vector3Add)
    + [Vector3AddValue](#Vector3AddValue)
    + [Vector3Angle](#Vector3Angle)
    + [Vector3Barycenter](#Vector3Barycenter)
    + [Vector3Clamp](#Vector3Clamp)
    + [Vector3ClampValue](#Vector3ClampValue)
    + [Vector3CrossProduct](#Vector3CrossProduct)
    + [Vector3Distance](#Vector3Distance)
    + [Vector3DistanceSqrt](#Vector3DistanceSqrt)
    + [Vector3Divide](#Vector3Divide)
    + [Vector3DotProduct](#Vector3DotProduct)
    + [Vector3Equals](#Vector3Equals)
    + [Vector3Invert](#Vector3Invert)
    + [Vector3Length](#Vector3Length)
    + [Vector3LengthSqr](#Vector3LengthSqr)
    + [Vector3Lerp](#Vector3Lerp)
    + [Vector3LineAngle](#Vector3LineAngle)
    + [Vector3Max](#Vector3Max)
    + [Vector3Min](#Vector3Min)
    + [Vector3MoveTowards](#Vector3MoveTowards)
    + [Vector3Multiply](#Vector3Multiply)
    + [Vector3Negate](#Vector3Negate)
    + [Vector3Normalize](#Vector3Normalize)
    + [Vector3One](#Vector3One)
    + [Vector3OrthoNormalize](#Vector3OrthoNormalize)
    + [Vector3Project](#Vector3Project)
    + [Vector3Reflect](#Vector3Reflect)
    + [Vector3Refract](#Vector3Refract)
    + [Vector3Reject](#Vector3Reject)
    + [Vector3RotateByAxisAngle](#Vector3RotateByAxisAngle)
    + [Vector3RotateByQuaternion](#Vector3RotateByQuaternion)
    + [Vector3Scale](#Vector3Scale)
    + [Vector3Subtract](#Vector3Subtract)
    + [Vector3SubtractValue](#Vector3SubtractValue)
    + [Vector3Transform](#Vector3Transform)
    + [Vector3Unproject](#Vector3Unproject)
    + [Vector3Zero](#Vector3Zero)
    + [WaitTime](#WaitTime)
    + [WaveCopy](#WaveCopy)
    + [WaveCrop](#WaveCrop)
    + [WaveFormat](#WaveFormat)
    + [WindowShouldClose](#WindowShouldClose)
    + [Wrap](#Wrap)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [MemFree](#MemFree)
  * [`#config` values](#pkg-`#config` values)
    + [MAX\_MATERIAL\_MAPS](#MAX_MATERIAL_MAPS)
    + [MAX\_TEXTFORMAT\_BUFFERS](#MAX_TEXTFORMAT_BUFFERS)
    + [MAX\_TEXT\_BUFFER\_LENGTH](#MAX_TEXT_BUFFER_LENGTH)
    + [RAYGUI\_SHARED](#RAYGUI_SHARED)
    + [RAYGUI\_WASM\_LIB](#RAYGUI_WASM_LIB)
    + [RAYLIB\_SHARED](#RAYLIB_SHARED)
    + [RAYLIB\_WASM\_LIB](#RAYLIB_WASM_LIB)
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