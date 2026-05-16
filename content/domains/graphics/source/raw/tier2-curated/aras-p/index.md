---
source_url: https://aras-p.info/blog
source_id: aras-p-blog
fetched_at: 2026-05-16T17:32:12.175169+00:00
fetcher: html_mirror
sha256: bcbc8bd0bf71f4febbda257b7bdc3112b1410d4729380eda37c65e655029d928
---

Blogs ·  Aras' website
  

  
  
  
  
  
  
  

    
  
    
      

  
  
  
  
  
    

Some 22 years ago **[nesnausk!](https://nesnausk.org/) made a demo [Syntonic Dentiforms](/projSynDent.html).
That was 2004! So of course the demo was written for Windows, 32 bit, Direct3D 9, used D3DX Effects Framework,
and was compiled with Visual Studio 6. It used fairly-new at the time pixel shader model 2.0 *(heck yeah!)*, but
also had fallback rendering paths for shader models 1.4 and 1.1. Good times.

Now I took the source code of it, looked at it in horror, and rebuilt it for current platforms.

- Replaced D3D9 / D3DX with ****[sokol_gfx](https://github.com/floooh/sokol?tab=readme-ov-file#sokol_gfxh),

- Replaced FMOD for audio playback with ****[sokol_audio](https://github.com/floooh/sokol?tab=readme-ov-file#sokol_audioh) and ****[stb_vorbis](https://github.com/nothings/stb/blob/master/stb_vorbis.c),

- Instead of Windows / DX9 32 bit, now it compiles for Windows / DX11, Linux / OpenGL, macOS / Metal (all 64 bit),
as well as Web (Emscipten / WebGL2).

- Replaced Object-ID based shadowing with regular shadow maps, using Castaño’s
[5x5 PCF filter](https://www.ludicon.com/castano/blog/articles/shadow-mapping-summary-part-1/),

- All lighting is now per-pixel (previously reflections were lit per-vertex), lighting vectors are normalized
more properly and the reflections are anti-aliased.

Here are the builds and the source code:

- ****[Web build here](https://aras-p.github.io/SyntonicDentiforms/) *(please do not run on a phone in portrait orientation, thx)*

- PC builds: [Windows](https://aras-p.info/files/demos/2026/SyntonicDentiforms-windows.zip),
[Linux](https://aras-p.info/files/demos/2026/SyntonicDentiforms-linux.zip) and
[macOS](https://aras-p.info/files/demos/2026/SyntonicDentiforms-mac.zip), 6MB each,

- Source code [repo on github](https://github.com/aras-p/SyntonicDentiforms).

- Video capture on youtube:   

  
      
      
        
      

#### Musings on source code

This made me realize that the code I was writing 22 years ago has been *really bad*, judging by my today’s
standards. *So. much. pointless. abstractions. and. design. patterns. and. inheritance.* Out of curiosity,
I tried rewriting the parts of the code that I understand (there are some that I don’t; I left them as they are),
just to see how much simpler and smaller the code can get.

For example everything related to “animations” initially [was this](https://github.com/aras-p/SyntonicDentiforms/tree/13228979/dingus/dingus/animator): 16 files, with interfaces, and listeners, and traits, and whatever.
`IAnimChannel`, `CAnimChannel<T>`, `CAnimContext`, `CAnimCurve<T>`, `CAnimImmediateMixer<T>`,
`IAnimListener<T>`, `IAnimStream<T>`, `CAbstractTimedAnimStream<T>`, `CAnimStreamMixer<T>`,
`traits::anim_type<T>`, `IAnimation<T>`, `CAnimationBunch`, `CSampledAnimation<T>`, `CTimedAnimStream<T>` –
just, *whyyyy*. All of that can be simplified into [two files](https://github.com/aras-p/SyntonicDentiforms/tree/a3aee4f48/src/animator) with way fewer parts (`AnimCurve`, `SampledAnimation`, `AnimationBunch`).
Same story with “graphics” or “resource loading” related parts.

So, what was 24 thousand lines of code across 216 source files, became 6 thousand lines of code across 49 files.
Does anyone care? *No, of course not.* But I did it anyway :)

The executable became a megabyte smaller, by the way. Mostly because it was using D3DX (effects framework,
texture loading, math), and I replaced them with other, smaller, libraries that do less stuff.
I ❤️ ****[sokol](https://github.com/floooh/sokol) libraries by Andre Weissflog; they are simple,
straight to the point, and let me get this working across all of windows/linux/mac/web. It is funny
that back then, Andre’s Nebula Device game engine design was pretty influential for us, with all the abstractions
and object-orientation. Sokol is almost *complete opposite*, and I love that.

The demo has a special place in my heart since this is the first “not complete shit” demo that I worked on :)
We also managed to get a scene.org Breakthrough Performance award for it! Ren here is completely unfazed by
the award though. She shows that awards are just a social construct.

  

  
  
  

---

  
  
  
  
    

Ten years ago I was writing about various
[non-cryptographic hash functions](/blog/2016/08/09/More-Hash-Function-Tests/). Back then
[xxHash](https://xxhash.com/) was new (introduced in 2014)! However, quite some things have changed
since then. xxHash itself got a new [“XXH3” version](https://fastcompression.blogspot.com/2019/03/presenting-xxh3.html)
(2020); [“wyhash”](https://github.com/wangyi-fudan/wyhash) appeared (2020+), and eventually evolved into
****[“rapidhash”](https://github.com/Nicoshev/rapidhash) (2024+). Many others too, but this is about *rapidhash*.

It is *small* and *beautiful*. Yes, current (V3) version is over 500 lines of C code, but that is *three* hash
function variants and several tweaking options.

I ported it to C# (Unity/Burst) and the full core `rapidhash` implementation is barely over 100 lines of code.

- Full repository: ****[UnitySmolRapidhash on github](https://github.com/aras-p/UnitySmolRapidhash) (MIT license).

- The actual source file: ****[SmolRapidhash3.cs](https://github.com/aras-p/UnitySmolRapidhash/blob/b927b29bc/Packages/org.nesnausk.smol-rapidhash/Scripts/SmolRapidhash3.cs)

- It uses Unity’s Burst to get access to 128 bit multiply function, and the code itself has `[BurstCompile]`
on it.

- API is similar to `Unity.Collections.xxHash3` class, except it returns 64 bit value directly instead of an `int2`, and has helper entry points for hashing a single struct or various arrays:

```
static ulong Hash64<T>(ref T key) where T : unmanaged;
static ulong Hash64<T>(T[] key) where T : unmanaged;
static ulong Hash64<T>(Span<T> key) where T : unmanaged;
static ulong Hash64<T>(NativeArray<T> key) where T : unmanaged;
static ulong Hash64(void* key, long length);

```

### Performance

Burst approaches native (C) performance of rapidhash at larger input sizes, nice!

- The calling benchmark program is just a C# (not Burst) script tested in the editor; might be cause of some overhead for small input sizes.

- Curiously, C#/Burst port of XXH3 (as provided by `Unity.Collections` package) is 30-40% slower than native (C) implementation. This slowdown is not there for rapidhash.

Rapidhash is always faster than XXH3; the difference is more pronounced on arm64.

Ryzen 5950X / Windows / Visual Studio 2022 (17.14.23): **rapidhash reaches 38GB/s**. Native XXH3 version is similar
for large input sizes (slower for small sizes). However the C#/Burst version of XXH3 only reaches 24GB/s.

Apple M4 Max / macOS / Xcode 16.1: **rapidhash reaches 67GB/s**. Native XXH3 version reaches 50GB/s, and C#/Burst
version of XXH3 reaches only 30GB/s.

*That’s it!*

  

  
  
  

---

  
  
  
  
    

So, [Blender 5.0](https://www.blender.org/download/releases/5-0/) has shipped while
I was away at the excellent [Graphics Programming Conference](https://graphicsprogrammingconference.com/),
but while all that was happening, I realized it has been two years since I mostly
work on the Blender Video Sequence Editor (VSE). Perhaps not surprisingly,
a year ago it was [one year of that](/blog/2024/11/21/A-year-in-Blender-VSE-land/) :)

Just like [two years ago when I started](/blog/2024/02/06/I-accidentally-Blender-VSE/),
I am still mostly flailing my arms around, without realizing what I’m actually doing.

### The good

It *feels* like recently VSE did get quite many improvements across workflow,
user experience and performance. The first one I contributed anything to was Blender 4.1,
and look what has happened since then (pasting screenshots of the release overview
pages):

4.1 ([full notes](https://developer.blender.org/docs/release_notes/4.1/sequencer/)):   

4.2 ([full notes](https://developer.blender.org/docs/release_notes/4.2/sequencer/)):   

4.3 ([full notes](https://developer.blender.org/docs/release_notes/4.3/sequencer/)):   

4.4 ([full notes](https://developer.blender.org/docs/release_notes/4.4/sequencer/)):  

4.5 ([full notes](https://developer.blender.org/docs/release_notes/4.5/sequencer/)):   

5.0 ([full notes](https://developer.blender.org/docs/release_notes/5.0/sequencer/)):   

In addition to user-facing features or optimizations, there also has been quite a lot
of code cleanups; too many to list individually but for a taste you could look at “winter of quality”
task list of last year ([#130975](https://projects.blender.org/blender/blender/issues/130975))
or WIP list of upcoming “winter of quality”
([#149160](https://projects.blender.org/blender/blender/issues/149160)).

All of this was done by 3-4 people, all of them working on VSE part time. That’s not too
bad! I seem to have landed about 200 pull requests in these two years. Also not terrible!

For upcoming year, we want to tackle three large items: 1) more compositor node-based things
(modifiers, effects, transitions) including more performance to them, 2) hardware acceleration
for video decoding/encoding, 3) workflows like media bins, media preview, three point editing.
That and more “wishlist” type of items is detailed in
[this devtalk thread](https://devtalk.blender.org/t/video-sequence-editor-vse-2026-roadmap/43206).

If you have tried Blender video editor a long time ago, and were not impressed, I suggest you try
it again! *You might still not be impressed, but then you would have learned to not trust
anything I say :P*

### The bad

It can’t all be good; some terrible things have also happened in Blender VSE land too.
For one, I have became the “module owner” (i.e. “a lead”) of the VSE related work. *Uh-oh!*

### The wishlist

From the current
“[things we’d want to work on](https://devtalk.blender.org/t/video-sequence-editor-vse-2026-roadmap/43206)”,
an obvious lacking part is everything related to audio – VSE has *some* audio functionality,
but nowhere near enough for a proper video editing toolbox. Currently out of “just, like, three”
part-time people working on VSE, no one is doing audio besides maintenance.

More community contributions in that area would be good. If you want to contribute, check out
[new developer documentation](https://developer.blender.org/docs/handbook/new_developers/)
and `#module-sequencer` on the
[developer chat](https://developer.blender.org/docs/handbook/communication/chat/).

  

  
  
  

---

  
  
  
  
    

****[tinyexr](https://github.com/syoyo/tinyexr) is an excellent simple library for loading and saving OpenEXR
files. It has one big advantage, in that it is *very* simple to start using: just one
source file to compile and include! However, it also has some downsides, namely that
not all features of OpenEXR are supported (for example, it can’t do PXR24, B44/B44A,
DWAA/DWAB, HTJ2K compression modes), and performance might be behind the official
library. *It probably can’t do some of more exotic EXR features either (e.g. “deep” images),
but I’ll ignore those for now.*

But how *large* and how *complex to use* is the “official” [OpenEXR library](https://github.com/AcademySoftwareFoundation/openexr),
anyways?

I do remember that a decade ago it was quite painful to build it, especially on anything
that is not Linux. However these days (2025), that seems to be much simpler: it
uses a CMake build system, and either directly vendors or automatically fetches whatever
dependencies it needs, unless you really ask it to “please don’t do this”.

It is not exactly a “one source file” library though. However, I noticed that [OpenUSD](https://github.com/PixarAnimationStudios/OpenUSD)
vendors OpenEXR “Core” library, builds it as a single C source file, and uses their
own “nanoexr” wrapper around the API; see
[pxr/imaging/plugin/hioOpenEXR/OpenEXR](https://github.com/PixarAnimationStudios/OpenUSD/tree/8d2d14db0/pxr/imaging/plugin/hioOpenEXR/OpenEXR).
So I took that, adapted it to more recent OpenEXR versions (theirs uses 3.2.x, I updated to 3.4.4).

So I wrote a tiny app ([github repo](https://github.com/aras-p/test_exrcore_tinyexr))
that reads an EXR file, and writes it back as downsampled EXR
(so this includes both reading & writing parts of an EXR library). And compared how large
is the binary size between `tinyexr` and `OpenEXR`, as well as their respective
source code sizes and performance.

Actual process was:

- Take OpenEXR source repository (v3.4.4, 2025 Nov),

- Take only the `src/lib/OpenEXRCore` and `external/deflate` folders from it.

- `openexr_config.h`, `compression.c`, `internal_ht.cpp` have local changes!
Look for `LOCAL CHANGE` comments.

- Take [OpenJPH](https://github.com/aous72/OpenJPH) source code, used 0.25.3 (2025 Nov),
put under `external/OpenJPH`.

- Take `openexr-c.c`, `openexr-c.h`, `OpenEXRCoreUnity.h` from the OpenUSD repository.
They were for OpenEXR v3.2, and needed some adaptations for later versions.
OpenJPH part can’t be compiled as C, nor compiled as “single file”,
so just include these source files into the build separately.

- Take `tinyexr` source repository (v1.0.12, 2025 Mar).

## Results

Library
Binary size, KB
Source size, KB
read+write time, s
Notes

tinyexr 1.0.12
251
726
6.55

OpenEXR 3.2.4
2221
8556
2.19

OpenEXR 3.3.5
826
3831
1.68
Removed giant DWAA/DWAB lookup tables.

OpenEXR 3.4.3
1149
5373
1.68
Added HTJ2K compression (via OpenJPH).

OpenEXR 3.4.4
649
3216
1.65
Removed more B44/DWA lookup tables.

+ no HTJ2K
370
1716

Above, with HTJ2K/OpenJPH compiled out.

+ no DWA
318

Above, and with DWAA/DWAB compiled out.

+ no B44
305

Above, and with B44/B44A compiled out.

+ no PXR24
303

Above, and with PXR24 compiled out.

Notes:

- Machine is Ryzen 5950X, Windows 10, compiler Visual Studio 2022 (17.14), Release build.

- This compares both tinyexr and OpenEXR in fully single-threaded mode. Tinyexr has threading
capabilities, but it spins up and shuts down a whole thread pool for each processed image,
which is a bit “meh”; and while OpenEXRCore can be threaded (and using full high level
OpenEXR library does use it that way), the “nanoexr” wrapper I took from USD codebase
does not do any threading.

- Timing is total time taken to read, downsample (by 2x) and write back 6 EXR files,
input resolution 3840x2160, input files are ZIP FP16, ZIP FP32, ZIP w/ mips, ZIP tiled,
PIZ and RLE compressed; output is ZIP compressed.

*That’s it!*

  

  
  
  

---

  
  
  
  
    

This is about an update to Blender video editing Scopes (waveform, vectorscope, etc.), and a detour into rendering *many* points on a GPU.

### Making scopes more ready for HDR

Current Blender Studio production, [Singularity](https://studio.blender.org/projects/singularity/), needed improvements
to video editing visualizations, particularly in the HDR area. Visualizations that Blender can do are: histogram, waveform, RGB parade,
vectorscope, and “show overexposed” (“zebra stripes”) overlay. Some of them were not handling HDR content in a useful way, e.g.
histogram and waveform were clamping colors above “white” (1.0) and not displaying their actual value distribution.

So I started to look into that, and one of the issues, particularly with waveform, was that it gets calculated on the CPU,
by putting the waveform into a `width x 256` size bitmap.   

This is what a waveform visualization does: each column displays pixel luminance distribution of that column of the input
image. For low dynamic range (8 bit/channel) content, you can trivially know there are 256 possible vertical values that would
be needed. But how tall should the waveform image be for HDR content? You could guesstimate things like “waveform displays +4
extra stops of exposure” and make a 4x taller bitmap.

*Or you could…*

### …move Scopes to the GPU

I thought that doing calculations needed for waveform & vectorscope visualizations on the CPU, then sending that bitmap to
the GPU for display sounds a bit silly. And, at something like 4K resolutions, that is not very fast either! So why
not just do that on the GPU?

The process would be:

- GPU already gets the image it needs to display anyway,

- Drawing a scope would be rendering a point sprite for each input pixel. Sample the image based on sprite ID in the vertex shader,
and position it on the screen accordingly. Waveform puts it at original coordinate horizontally, and at color luminance vertically.
Vectorscope puts it based on color YUV U,V values.

- The points need to use blending in “some way”, so that you can see how many points hit the same luminance level, etc.

- The points *might* need to be larger than a pixel, if you zoom in.

- The points might need to be “smaller than a pixel” if you zoom out, possibly by fading away their blending contribution.

So I did all that, it was easy enough. Performance on my RTX 3080Ti was also much better than with CPU based scopes.
Since rendering alpha blended points makes it easy to have them colored, I also made each point retain a bit of original image
pixel’s hue:   

*Yay, done!* …and then I tested them on my Mac, just to double check if it works. It does! But the new scopes now playback at like
***2 frames per second*** 🤯 Uhh, what is going on? Why?!

I mean, sure, at 4K resolution a full scope now renders 8 million points. But come on, that is on a M4 Max GPU; it should be able to easily
do hundreds of millions of primitives in realtime!

### Rendering points on a GPU

Turns out, the problematic performance was *mostly* the vectorscope visualization. Recall that a vectorscope places points based on their
signed U,V (from [YUV color model](https://en.wikipedia.org/wiki/Y%E2%80%B2UV)). Which means it places *a lot* of points very near the
center, since usually most pixels are not *very* saturated. A vectorscope of a grayscale image would be *all* the points right in
the middle!

And it turns out, GPUs are not entirely happy when *many* (tens of thousands or more) points are rendered *at the same location*
and alpha blending is on. And Apple GPUs are *extremely* not happy about this. “Way too many” things in the same tile are
likely to overflow some sort of tile capacity buffers (on tile-based GPUs), and blending “way too many” fragments in the same location
is probably running into a bottleneck due to fixed capacity of blending / ROP backend queues (see “[A trip through the Graphics Pipeline 2011,
part 9](https://fgiesen.wordpress.com/2011/07/12/a-trip-through-the-graphics-pipeline-2011-part-9/)”).

Rendering single-pixel points is not terribly efficient on any GPU, of course. GPUs rasterize everything in 2x2 pixel “quads”, so each
single pixel point is at least 4 pixel shader executions, with three of them thrown out
(see “[Counting Quads](https://blog.selfshadow.com/2012/11/12/counting-quads/)” or “[A trip through the Graphics Pipeline 2011,
part 8](https://fgiesen.wordpress.com/2011/07/10/a-trip-through-the-graphics-pipeline-2011-part-8/)”).

**Could I rasterize the points in a compute shader instead?** Would that be faster?

Previous research ("[Rendering Point Clouds with Compute Shaders](https://arxiv.org/abs/2104.07526)",
[related code](https://github.com/m-schuetz/compute_rasterizer)) as well as “compute based rendering”
approaches like Media Molecule Dreams or Unreal Nanite suggest that it might be worth a shot.

It was time to do some 🔬📊*SCIENCE*📊🔬: make a tiny WebGPU test that tests various point rendering scenarios,
and test it out on a bunch of GPUs. And I did exactly that:
****[webgpu-point-raster.html](https://aras-p.info/files/temp/webgpu/20250823_webgpu-point-raster.html)
that renders *millions* of single pixel points in a “regular” (500x500-ish) area down to “very small” (5x5 pixel)
area, with alpha blending, using either the built-in GPU point rendering, or using a compute shader.

A bunch of people on the interwebs tested it out and I got results from 30+ GPU models, spanning all sorts of GPU architectures
and performance levels. Here, how much time each GPU takes to render 4 million single-pixel points into a roughly
460x460 pixel area (so about 20 points hitting each pixel). The second chart is how many *times* point rasterization becomes
slower, if the same amount of points gets blended into a 5x5 pixel area (160 *thousand* points per pixel).   

From the second chart we can see that even if *conceptually* the GPU does the same amount of work – same amount of points doing the same
type of animation and blending, and the 2x2 quad overshading affects both scenarios the same – *all the GPUs* render slower
when points hit a much smaller screen area. Everyone is slower by 2-5 *times*, and then there are Apple Mac GPUs that are
12-19 times slower. Also curiously enough, even within the same GPU vendor, it looks like the “high-end” GPUs experience
a relatively larger slowdown.

My guess is that this shows the effect of blending units having a limited size “queue” and nature
of the fact that blending needs to happen serially and in-order (again, see
[part 9](https://fgiesen.wordpress.com/2011/07/12/a-trip-through-the-graphics-pipeline-2011-part-9/) mentioned above). And Apple
GPUs affected *way more* than anyone else is… I don’t know why exactly. Maybe because they do not have fixed function
blending hardware at all (instead the shader reads current pixel value and does blending by modifying it), so in order to
maintain the correct blending ordering, the whole pixel execution needs to be in some sort of “queue”?
Curiously Apple’s own performance tools (Metal frame capture in Xcode) does not tell anything useful for this case,
except “your fragment shader takes forever!”. It is not entirely incorrect, but it would be useful
if it said “it is not the part of your code that is slow, it is blending”.

**Let’s do some compute shader point rendering!**

The compute shader is trivially naïve approach: have R,G,B `uint` per pixel buffers, each point does atomic add of the fixed point color,
finally a regular fragment shader resolves these buffers to visible colors. It *is* a “baby’s first compute”
type of approach really, without any tricks like using wave/subgroup operations to detect whole wavefront hitting the same pixel,
or distributing points into tiles + prefix sum + rasterize points inside tiles, or trying to pack the color buffers into something
more compact. None of that, so I was not expecting the compute shader approach to be much better.

Here’s two charts: how much faster is this simple compute shader approach, compared to built-in GPU point rendering. First for the
“4M points in 460x460 pixel area” case, then for the 5x5 pixel area case:  

Several surprising things:

- Even this trivial compute shader for the not-too-crazy-overdraw case, is faster than built-in point rasterization on *all GPUs*.
Mostly it is 1.5-2 *times* faster, with some outliers (AMD GPUs *love* it – it is like 10x faster than rasterization!).

- For the “4M points in just a 5x5 pixel area” case, the compute shader approach is even better. I was not expecting that –
the atomic additions it does would get *crazily* contended – but it is around 5x faster that rasterization across the board.
My only guess is that while contended atomics are not great, they perhaps are still better than contended blending units?

Finally, a chart to match the rasterization chart: how many times the compute shader rendering gets slower, when 460x460
area gets reduced to 5x5 one:  

  

I *think* this shows “how good the GPU is at dealing with contended atomics”, and it seems to suggest that relatively speaking,
AMD GPUs and recent Apple GPUs are not that great there. But again, even with this relative slowdown, the compute shader
approach is way faster than the rasterization one, so…

***Compute shaders are useful!** What a finding!*

But let’s get back to Blender.

### Blender Scopes on the GPU, with a compute shader

So that’s what I did then - I made the Blender video sequencer waveform/parade/vectorscope be calculated and rendered on the
GPU, using a compute shader to do point rasterization. That also allowed to do “better” blending than what would be possible
using fixed function blending, actually – since I am accumulating the points hitting the same pixel, I can do a non-linear
alpha mapping in the final resolve pass.

The [pull request #144867](https://projects.blender.org/blender/blender/pulls/144867) has not landed yet *has just landed*,
so scopes in Blender 5.0 will get faster *and* look better. All the scopes, everywhere, all at once, now look like this:  

Whereas in current Blender 4.5 they look like this:  

And for historical perspective, two years ago in Blender 4.0, before I started to
[dabble in this area](/blog/2024/02/06/I-accidentally-Blender-VSE/), they looked like this:  

Also, playback of this screen setup (4K EXR images, all these views/scopes) on my PC was at 1.1FPS in Blender 4.0; at 7.9FPS
in Blender 4.5; and at 14.1FPS with these GPU scopes. Still work to do, but hey, progress.

*That’s it, bye!*
