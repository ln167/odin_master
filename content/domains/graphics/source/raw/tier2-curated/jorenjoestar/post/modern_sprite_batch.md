---
source_url: https://jorenjoestar.github.io/post/modern_sprite_batch
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:31:52.004147+00:00
fetcher: html_mirror
sha256: cfee253fbf0ab4b799e011640fa594b351fc372d9bb32cbfe559903befe77323
---

Modern (Bindless) Sprite Batch for Vulkan (and more!) | Gabriel's Virtual Tavern





  


  



  

  












  

  
  
  

  

# Modern (Bindless) Sprite Batch for Vulkan (and more!)


  

  
    








  
  

  
  
    
    
      
    
    2021-12-19
  
  

  

  
  
  
    7 min read
  
  

  
  
  

  
  
  
  
    **
    [coding](/categories/coding/)
  

  
    

  

    
      
      
      
        
      
      
      
      
- 
        **
      
    
      
      
      
        
      
      
      
      
- 
        **
      
    
      
      
      
        
      
      
      
      
- 
        **
      
    
      
      
      
        
      
      
      
      
- 
        **
      
    
      
      
      
        
      
      
      
      
- 
        **
      
    
  




  



    














  




  

    
      







  



  

#### The sprites rendered with 1 draw call using the techniques described in this article.

  




# Overview

Sprite batching is one of the fundamental techniques used in almost all pixel art games (that are lovingly back in town after the first era of 3D), and yet I never found any recent documentation.  

Since the [Bindless Age has started](https://jorenjoestar.github.io/post/vulkan_bindless_texture/) old algorithms can be implemented in new ways.

In this short article I would like to talk about how easy is to manage sprites, including UI, with the *bindless* model.

# Sprite Batching: how ?

Sprite batching is a way of reducing the number of draw calls (still something to not abuse) by grouping them based on similar properties.

Normally when batching sprites, we would submit a batch of sprites when any texture would change, an operation that could be reduced by using texture atlases.  

For tiles this can be more easily done, but for characters with a lot of complex sprite sheets it is harder.

We would have something like (pseudocode):

```
for each sprite
   sprite_batch.set( sprite.texture )
   sprite_batch.draw( x, y, width, height )

```

The ‘set’ method would check if the current texture is differen than the sprite one, and if so then it would submit the accumulated sprites, then cache the sprite texture and start filling the new sprites.

A good code to check is the one for [libGDX sprite batching](https://github.com/libgdx/libgdx/blob/master/gdx/src/com/badlogic/gdx/graphics/g2d/SpriteBatch.java).

Can we do better ? The answer is yes!

# Sprite Batch: caching

To have an effective Sprite Batch we need to cache some informations in order to know when to group sprites and when not.
A possible list is the following:

- Render States (depth, blend, …)

- Vertex Layouts

- Shader

- Textures

In *Vulkan* world, render states, shader and vertex layouts are all included into a *pipeline*.
But Textures ?  

They are in used in *descriptor sets*, but with bindless we can simply ignore them, because they are passed down as integers into constants.

Render states, vertex layouts and shaders are all inside a *Pipeline State Object*, so the only caching really needed here is:

- Pipeline

- Descriptor Set

We still need to differentiate shaders that use different constant/structured buffers, but otherwise we can share a common shader!

The core of the caching is in **sprite_batch.cpp**:

```
void SpriteBatch::set( hydra::gfx::PipelineHandle pipeline, hydra::gfx::ResourceListHandle resource_list ) {
    using namespace hydra::gfx;

    if ( current_pipeline.index != k_invalid_pipeline.index && current_resource_list.index != k_invalid_list.index &&
         ( current_pipeline.index != pipeline.index )) {
        // Add a batch
        DrawBatch batch { current_pipeline, current_resource_list, previous_offset, num_sprites - previous_offset };
        draw_batches.push( batch );
    }

    previous_offset = num_sprites;

    current_pipeline = pipeline;
    current_resource_list = resource_list;
}


```

We use the *pipeline* and the *resource list* as informations to know when a batch should be changed.

## Passing texture index to the GPU

As we saw in the previous article, with bindless we define a global array of textures and we simply index into it using shader constants or other tricks (more on that later).

```
// (glsl code), Platform.h:
#if defined(HYDRA_BINDLESS)

#extension GL_EXT_nonuniform_qualifier : enable

layout ( set = 1, binding = 10 ) uniform sampler2D textures[];
// Use aliasing to sample any kind of texture using one single bindless texture array:
layout ( set = 1, binding = 10 ) uniform sampler3D textures_3d[];

#endif // HYDRA_BINDLESS


```

In our implementation we will use **per-instance sprite data** to encode the texture id.

```
//
//
struct SpriteGPUData {

    vec4s                           position;

    vec2s                           uv_size;
    vec2s                           uv_offset;

    vec2s                           size;
    u32                             flag0;
    u32                             flag1;

    void                            set_albedo_id( u32 albedo_id )  { flag1 = albedo_id; }
    u32                             get_albedo_id() const           { return flag1; }

}; // struct SpriteGPUData

```

In this case we use *flag1* as the index containing the texture to read.  

In Hydra I have a freelist for all rendering resources, so I can always use the texture index without worrying about index collisions and such.

## Sprite Shader

The sprite shader can be modified to include uints as vertex layout inputs, and pass the a flat uint to the fragment program:

```
#if defined VERTEX
layout (location = 0) in vec4 position;
layout (location = 1) in vec4 uv_size_offset;
layout (location = 2) in vec2 size;
layout (location = 3) in uvec2 flags; 

layout (location = 0) out vec4 uv_alpha;
// NOTE: flat attribute!
layout (location = 1) flat out uint out_albedo_id;

void main() {

    const uint vertex_index = gl_VertexID % 6;
    
    ...

    // Pass through albedo id
    out_albedo_id = flags.y;

    ...



```

We can now sample the texture in the fragment program easily.

**NOTE** in Vulkan we need an additional keyword to properly sample a texture in the bindless model without incurring in problems, and this is the **nonuniformEXT** keyword.  

Thanks to Christian Forfang for the email, I totally forgot about that!  

I’ve added a toggle so you can see the problems that could happen when you don’t include that keyword.  

The correct shader is this:

```
 #if defined FRAGMENT

  #pragma include "platform.h"

  layout (location = 0) in vec4 uv_alpha;
  // NOTE: flat attribute!
  layout (location = 1) flat in uint albedo_id;

  layout (location = 0) out vec4 out_color;

void main() {

      vec4 color = texture( textures[nonuniformEXT(albedo_id)], uv_alpha.xy );


```

By simply passing the uint in the instance data we have what we need to render any sprite.

## Non-Uniform-EXT keyword importance

There is an incredibly informative blog post about the **nonuniformEXT** on [Anki 3D blog](https://anki3d.org/resource-uniformity-bindless-access-in-vulkan/), as well as the [spec itself](https://github.com/KhronosGroup/Vulkan-Samples/tree/master/samples/extensions/descriptor_indexing#non-uniform-indexing).  

Again thanks a lot to Christian Forfang to point out the missing keyword. I could see the problem without the keyword only on my integrated AMD card from my AMD 5900HX CPU, not on my Nvidia 2070, but it is great to be aware of these kind of problems.

Here I highlighted the problem as you can see without that keyword:








  



  

#### Non synchronized pixels for missing nonuniformEXT keyword

  




I also updated the code so you can choose when to disable it and see the problem yourself.

## One draw call









  



  

#### RenderDoc truth: 1 draw call for the background, 1 for all those sprites!

  




As we can see from this RenderDoc capture we are using an instanced draw call with bindless to render all the sprites on the screen in this demo, even though they are coming from 5 different files!  

If we can have similar shaders (and many times for pixel art games we CAN), then it is guaranteed that draw calls will be kept at minimum.

We can use SSBO/StructuredBuffer with more per instance data to further specialize the shader without changing the sprites (like [manual vertex pulling](https://wickedengine.net/2017/06/05/should-we-get-rid-of-vertex-buffers/)) but as always, numbers will tell what is better for your application, and finding a balance between draw calls, permutations and shader complexity is paramount!

# Bonus: post-process bindless trick

A trick I started using with bindless for post-process shaders is to use the **instance id** as texture index to be retrieved into the shader!  

You can use *push constants* as well, but I figured something even simpler would work.

```
// Pass through from main rt to swapchain
cb->bind_pass( sort_key++, renderer->gpu->swapchain_pass );

cb->bind_pipeline( sort_key++, debug_gpu_font_material->passes[ gpu_text::pass_through ].pipeline );
cb->bind_resource_list( sort_key++, &debug_gpu_font_material->passes[ gpu_text::pass_through ].resource_list, 1, 0, 0 );
// Use first_instance to retrieve texture ID for bindless use.
cb->draw( sort_key++, hydra::gfx::TopologyType::Triangle, 0, 3, main_texture->handle.index, 1 );

```

We have only 1 instance of the fullscreen triangle, and the instance index tells us the texture index.

```
#if defined VERTEX

layout (location = 0) out vec2 vTexCoord;
layout (location = 1) flat out uint texture_id;

void main() {

    vTexCoord.xy = vec2((gl_VertexID << 1) & 2, gl_VertexID & 2);
    gl_Position = vec4(vTexCoord.xy * 2.0f - 1.0f, 0.0f, 1.0f);
    // If rendering to a RenderTarget, flip Y
    gl_Position.y = -gl_Position.y;

    // Using instance index to simply read an uint
    // storing the texture index in the bindless array.
    texture_id = gl_InstanceIndex;

```

# Bonus2: ImGUI rendering

A similar trick can be found inside the **Hydra ImGui backend**, using texture ids:

```
void ImGuiService::render( hydra::gfx::Renderer* renderer, hydra::gfx::CommandBuffer& commands ) {
  ...

  TextureHandle new_texture = *(TextureHandle*)( pcmd->TextureId );
  ...
  commands.draw_indexed( sort_key++, hydra::gfx::TopologyType::Triangle, pcmd->ElemCount, 1, index_buffer_offset + pcmd->IdxOffset, vtx_buffer_offset + pcmd->VtxOffset, new_texture.index );


```

With bindless there is no need to create different descriptor sets based on the texture used by the ImGUI window, and with the instance index we can again draw every texture in a simple way!

# Conclusion

In this article we saw a simple way to evolve a sprite batch to group sprites without the need to worry about texture changes.  

For ages this was the main parameter to separate batches, but with bindless active is not anymore.  

Furthermore, *Pipeline State Objects* contains most of the informations needed to know if something has changed from a render state/layout perspective, and we can balance out dynamic parts of the pipeline to cache even more.

As awlays if you enjoyed this article please comment, share, send feedback!
Gabriel

    

    


    


  
  [bindless](/tags/bindless/)
  




    
      








  





  
  
  
    
  
  
  
    
      
      
    

    
      

##### [Gabriel Sassone](https://jorenjoestar.github.io/)

      

###### Principal Rendering/Engine Programmer

      
      

        
          
          
          
            
          
          
          
          
          
            
          
          
- 
            **
          
        
          
          
          
            
          
          
          
          
          
            
          
          
- 
            **
          
        
          
          
          
            
          
          
          
          
          
            
          
          
- 
            **
          
        
          
          
          
            
          
          
          
          
          
            
          
          
- 
            **
          
        
      

    
  



      
      
      
        
        

### Related

        

          
          
- [Vulkan Pills 1: Bindless Textures](/post/vulkan_bindless_texture/)
          
        

      
      
    

    

    


  


      

    
    
    
    
    

    
    
    
      
      
      
      

      
        
      

      
        
        
        
        
        
      

      
      
      
      
    

    
    

    
    
    
    

    
    
    
    

    
    

    
    
    
    

    
    
    
    
    

    
    

    
    
    
    
    
    
    
    
    
      
    
    
    
    
    

    






  
  
    

  
  

  

  
    
      
        

##### Cite

        
          ×
        
      
      
        

```

```


      
      
        **[Copy](#)
        **[Download](#)
