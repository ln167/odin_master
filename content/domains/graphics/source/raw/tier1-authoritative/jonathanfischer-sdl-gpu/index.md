---
source_url: https://www.jonathanfischer.net/gpu-by-example
source_id: jonathanfischer-sdl-gpu
fetched_at: 2026-05-16T17:31:20.968655+00:00
fetcher: html_mirror
sha256: 876287cf5984aa3fbc670081d9d121a1a7df78ecce2a02594ca85970f2f5e6c0
---

Muddling through SDL GPU - The Plan · Jonathan Fischer
    
  

  
  
  
  

  
  
  

  
  

  

    
  
    
      

# 
        [Jonathan Fischer](https://www.jonathanfischer.net)
      

      

    

    

    

© 2025 Jonathan Fischer. All rights reserved.
  

    
      
  

# Muddling through SDL GPU - The Plan

  13 Jul 2025
  

Ok, so. I want to learn how to use a modern GPU API, and since [SDL3](https://wiki.libsdl.org/SDL3/FrontPage) was
[just released](https://discourse.libsdl.org/t/announcing-the-sdl-3-official-release/57149) with a new [GPU API](https://wiki.libsdl.org/SDL3/CategoryGPU) abstraction
over the major 3 GPU APIS (Direct3D 12, Vulkan, and Metal), it seems like a good time! Except,
it’s maybe a little too new: the documentation on it is great, but it feels like it assumes
you already know how to work with one of the big 3 APIs. I don’t. I never really moved beyond
OpenGL 1.2. Maybe 1.1? Either way, my graphics programming knowledge is more than 20 years
out of date.

The tutorials I’ve been able to find are good, if you already understand the concepts.
[Moonside Games](https://moonside.games) in particular has some good information, and there’s an
[example repository](https://github.com/TheSpydog/SDL_gpu_examples/), but I need something a little more basic. I’ve
never written a shader or assembled a pipeline; I don’t even think I’ve used vertex buffers.

So I started trying to learn how to do all of this. I was mostly interested in Metal (I use macOS
99% of the time) so I started by translating [Metal by Example](https://metalbyexample.com/the-book/) by Warren Moore to
SDL’s GPU API and trying to get it working on macOS, Windows, and Linux. I started writing down
some notes as I went, and that ballooned into “I should blog this”, and here we are.

Anyway, I have a general outline in mind, which is:

  
1. [Part 1 - Getting Started](/gpu-by-example-part1). How to initialize SDL, get a window on screen, hook it up to
the GPU subsystem, and clear the window to a solid color.
  
2. Part 2 - Drawing Primitives. Set up a basic GPU pipeline with shaders that do almost
nothing, draw a single triangle to the window.
  
3. Part 2.5 - Compiling Shaders. What shader languages and formats we need and how to compile them.
  
4. Part 3 - Uniforms. Pass extra parameters to your shaders, use them to animate and change things
on the fly.
  
5. Part 4 - Texturing. Load a texture, paint your geometry with it.
  
6. Part 5 - Text rendering with SDL_ttf. Take the previous parts and put them together to draw
something meaningful. Maybe add in an extra render target?
  
7. Part 6 - Lighting
  
8. Part 7 - Load and render a model, with some sort of animation done in the vertex shader.

There’s a repository to go along with this series available at [mohiji/gpu-by-example](https://www.github.com/mohiji/gpu-by-example) on
Github. I’m going to organize it into one example project per part (except the Compiling Shaders
one) and provide projects to run on Windows, macOS, and Linux.

I do want to stress again: I’m learning as I go. Let’s have fun with it!
