---
source_url: https://www.jonathanfischer.net/gpu-by-example-part1
source_id: jonathanfischer-sdl-gpu
fetched_at: 2026-05-16T17:31:21.637660+00:00
fetcher: html_mirror
sha256: 7246f10c67a4e6ebecb8ec06f231f36a1c1d8b96493bcf7d1555ac5ad88df89c
---

Muddling through SDL GPU Part 1 - Getting Started · Jonathan Fischer
    
  

  
  
  
  

  
  
  

  
  

  

    
  
    
      

# 
        [Jonathan Fischer](https://www.jonathanfischer.net)
      

      

    

    

    

© 2025 Jonathan Fischer. All rights reserved.
  

    
      
  

# Muddling through SDL GPU Part 1 - Getting Started

  13 Jul 2025
  

Jumping in with the absolute basics here, let’s get a window on screen, the GPU API initialized,
and clear the render target to a known color. The source code for this post is under the 
[Example1-GettingStarted](https://github.com/mohiji/gpu-by-example/tree/main/Example1-GettingStarted) directory in the [project repo](https://github.com/mohiji/gpu-by-example).  Here’s the end goal:

We’ll start with a single ``[Example1.c](https://github.com/mohiji/gpu-by-example/blob/main/Example1-GettingStarted/Source/Example1.c) file, using SDL3’s new [main functions](https://wiki.libsdl.org/SDL3/README/main-functions).
We’ll need to implement four functions: `SDL_AppInit`, `SDL_AppEvent`, `SDL_AppIterate`, and
 `SDL_AppQuit`. And hey, that gives me a convenient structure for this post, so let’s go.

#### Initialization

We’ll need to:

  
- Initialize SDL itself, at least the Video and Event subsystems.
  
- Create both a GPU device and a Window, and attach them together.
  
- And to practice good hygiene, we’ll keep references to these in a context structure
instead of just making them globals.

```
// Before including SDL_main.h, define this to enable the new
// application lifecycle stuff.
#define SDL_MAIN_USE_CALLBACKS

// Pull in SDL3, obviously.
#include <SDL3/SDL.h>

// Include SDL_main.h in the file where you define your main
// function(s).
#include <SDL3/SDL_main.h>

// We'll have some things we want to keep track of as we move
// through the lifecycle functions. Globals would be fine for
// this example, but SDL gives you a way to pipe a data structure
// through the functions too, so we'll use that.
//
// For now, we need to keep track of the window we're creating
// and the GPU driver device.
typedef struct AppContext {
  SDL_Window* window;
  SDL_GPUDevice* device;
} AppContext;

// SDL_AppInit is the first function that will be called. This is
// where you initialize SDL, load resources that your game will
// need from the start, etc.
SDL_AppResult SDL_AppInit(
    // Allows you to return a data structure to pass through
    void** appState,

    // Normal main argc & argv
    int argc, char** argv)
{
  // This isn't strictly necessary, but if you provide a little
  // bit of metadata here SDL will use it in things like the
  // About window on macOS.
  SDL_SetAppMetadata("GPU by Example - Getting Started", "0.0.1",
      "net.jonathanfischer.GpuByExample1");

  // Initialize the video and event subsystems
  if (!SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS)) {
    SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
        "Couldn't initialize SDL: %s", SDL_GetError());
    return SDL_APP_FAILURE;
  }

  // Create a window. I'm creating a high pixel density window
  // because without that, I was getting blurry text on macOS.
  // (text comes in a later post, promise.)
  SDL_WindowFlags windowFlags =
      SDL_WINDOW_HIGH_PIXEL_DENSITY | SDL_WINDOW_RESIZABLE;
      
  SDL_Window* window = SDL_CreateWindow(
      "GPU by Example - Getting Started", 800, 600, windowFlags);

  if (window == NULL) {
    SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
        "Couldn't create window: %s", SDL_GetError());
    return SDL_APP_FAILURE;
  }

  // Next up, let's create a GPU device. You'll need to tell the
  // API up front what shader languages you plan on supporting.
  // SDL looks through its list of drivers in "a reasonable
  // order" to pick which one to use. Fun surprise here: on
  // Windows, it's going to prefer Vulkan over Direct3D 12 if
  // it's available. Here, we're enabling Vulkan (SPIRV),
  // Direct3D 12 (DXIL), and Metal (MSL).
  SDL_GPUShaderFormat shaderFormats =
      SDL_GPU_SHADERFORMAT_SPIRV | 
      SDL_GPU_SHADERFORMAT_DXIL |
      SDL_GPU_SHADERFORMAT_MSL;

  SDL_GPUDevice* device = SDL_CreateGPUDevice(shaderFormats,
      false, NULL);
  if (device == NULL) {
    SDL_LogError(SDL_LOG_CATEGORY_APPLICATION,
        "Couldn't not create GPU device: %s", SDL_GetError());
    return SDL_APP_FAILURE;
  }

  // Just so we know what we're working with, log the driver that
  // SDL picked for us.
  SDL_Log("Using %s GPU implementation.",
      SDL_GetGPUDeviceDriver(device));

  // Then bind the window and GPU device together
  if (!SDL_ClaimWindowForGPUDevice(device, window)) {
    SDL_Log("SDL_ClaimWindowForGPUDevice failed: %s",
        SDL_GetError());
    return SDL_APP_FAILURE;
  }

  // By default, SDL GPU enables VSYNC, which is generally what I
  // want. If you want to change it, now is the time to do that;
  // look at SDL_SetGPUSwapchainParameters in the documentation.
  // https://wiki.libsdl.org/SDL3/SDL_SetGPUSwapchainParameters

  // Last up, let's create our context object and store pointers
  // to our window and GPU device. We stick it in the appState
  // argument passed to this function and SDL will provide it in
  // later calls.
  AppContext* context = SDL_malloc(sizeof(AppContext));
  context->window = window;
  context->device = device;
  *appState = context;

  // And that's it for initialization.
  return SDL_APP_CONTINUE;
}
```

#### The Main Loop

In earlier versions of SDL, once we have everything initialized we’d start our main loop, where we
poll for input and windowing events, update our game, draw, etc. When using SDL3’s main functions,
we instead implement a couple of callbacks and let SDL handle the looping portions.

Once a frame, SDL will call `SDL_AppIterate`. There’s no guarantees about exactly how often this gets
called, but it’s intended to be as fast as possible, or tied into the display refresh rate. You’ll
have to track how much time has passed yourself; I’ll start doing that in the next post.

The basic per-frame work we need to do with SDL GPU is:

  
- Acquire a command buffer, which is what we use to submit drawing commands to the device.
  
- Wait for the primary render target to be available; SDL calls this the Swapchain Texture. I
believe this is where the vsync wait actually happens.
  
- Begin a render pass.
  
- Submit any drawing commands for the pass.
  
- End the pass.
  
- Possibly repeat if you have more passes.
  
- Finally submit the command buffer to the device.

At this point we’re just clearing the framebuffer to a known color, so we’ll begin and end a single
render pass with no drawing commands in it.

```
SDL_AppResult SDL_AppIterate(void* appState)
{
  // Our AppContext instance is passed in through the appState
  // pointer.
  AppContext* context = (AppContext*)appState;

  // Generally speaking, this is where you'd track frame times,
  // update your game state, etc. I'll be doing that in later
  // posts.

  // Once you're ready to start drawing, begin by grabbing a
  // command buffer and a reference to the swapchain texture.
  SDL_GPUCommandBuffer* cmdBuf;
  cmdBuf = SDL_AcquireGPUCommandBuffer(context->device);
  if (cmdBuf == NULL) {
    SDL_Log("SDL_AcquireGPUCommandBuffer failed: %s",
        SDL_GetError());
    return SDL_APP_FAILURE;
  }

  // As I understand it, _this_ is where it's going to wait for
  // Vsync, not in the loop that calls SDL_AppIterate.
  SDL_GPUTexture* swapchainTexture;
  if (!SDL_WaitAndAcquireGPUSwapchainTexture(cmdBuf,
          context->window, &swapchainTexture, NULL, NULL)) {
    SDL_Log("SDL_WaitAndAcquireGPUSwapchainTexture: %s",
        SDL_GetError());
    return SDL_APP_FAILURE;
  }

  // With the command buffer and swapchain texture in hand, we
  // can begin and end our render pass
  if (swapchainTexture != NULL) {
    // There are a lot more options you can set for a render
    // pass, see SDL_GPUColorTargetInfo in the SDL documentation
    // for more.
    // https://wiki.libsdl.org/SDL3/SDL_GPUColorTargetInfo
    SDL_GPUColorTargetInfo targetInfo = {
        // The texture that we're drawing in to
        .texture = swapchainTexture,

        // Whether to cycle that texture. See
        // https://moonside.games/posts/sdl-gpu-concepts-cycling/
        // for more info
        .cycle = true,

        // Clear the texture to a known color before drawing
        .load_op = SDL_GPU_LOADOP_CLEAR,

        // Keep the rendered output
        .store_op = SDL_GPU_STOREOP_STORE,

        // And here's the clear color, a nice green.
        .clear_color = {0.16f, 0.47f, 0.34f, 1.0f}};

    // Begin and end the render pass. With no drawing commands,
    // this will clear the swapchain texture to the color
    // provided above and nothing else.
    SDL_GPURenderPass* renderPass;
    renderPass = SDL_BeginGPURenderPass(cmdBuf, &targetInfo,
        1, NULL);
    SDL_EndGPURenderPass(renderPass);
  }

  // And finally, submit the command buffer for drawing. The
  // driver will take over at this point and do all the rendering
  // we've asked it to.
  SDL_SubmitGPUCommandBuffer(cmdBuf);

  // That's it for this frame.
  return SDL_APP_CONTINUE;
}
```

#### Handling events

SDL will handle polling for input and windowing events for us, and when one shows up, it’ll call
`SDL_AppEvent`. This isn’t terribly interesting yet; all we care about is whether it’s time to
close the application.

```
SDL_AppResult SDL_AppEvent(void* appState, SDL_Event* event)
{
  // SDL_EVENT_QUIT is sent when the main (last?) application
  // window closes.
  if (event->type == SDL_EVENT_QUIT) {
    // SDL_APP_SUCCESS means we're making a clean exit.
    // SDL_APP_FAILURE would mean something went wrong.
    return SDL_APP_SUCCESS;
  }

  // For convenience, I'm also quitting when the user presses the
  // escape key. It makes life easier when I'm testing on a Steam
  // Deck.
  if (event->type == SDL_EVENT_KEY_DOWN &&
      event->key.key == SDLK_ESCAPE) {
    return SDL_APP_SUCCESS;
  }

  // Nothing else to do, so just continue on with the next frame
  // or event.
  return SDL_APP_CONTINUE;
}
```

#### Cleaning up

Finally, shutting down. This’ll be called if `SDL_APP_SUCCESS` or `SDL_APP_FAILURE` is returned
from either `SDL_AppEvent` or `SDL_AppIterate`. It gives you a chance to gracefully shut things
down.

```
void SDL_AppQuit(void* appState, SDL_AppResult result)
{
  AppContext* context = (AppContext*)appState;

  // Just cleaning things up, making sure we're working with
  // valid pointers as we go.
  if (context != NULL) {
    if (context->device != NULL) {
      if (context->window != NULL) {
        SDL_ReleaseWindowFromGPUDevice(context->device,
            context->window);
        SDL_DestroyWindow(context->window);
      }

      SDL_DestroyGPUDevice(context->device);
    }

    SDL_free(context);
  }

  SDL_Quit();
}
```

That feels like a lot of work just to clear the screen, but it also sets up all the scaffolding
for issuing actual drawing commands. Next post: let’s get a triangle on the screen, yeah? To do
that I’ll need to get shaders in there. 😱
