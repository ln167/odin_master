---
source_url: https://jorenjoestar.github.io/post/shader_augment_for_pipelines/shader_augment_for_pipelines
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:32:01.466596+00:00
fetcher: html_mirror
sha256: 5197e13b59b3c968ae03eaa6964b2ab5e86e6ff9e252c32f76622951cb6a51f1
---

Augmenting shader languages for modern rendering APIs | Gabriel's Virtual Tavern

  

  

  

  

  

  
  
  

  

# Augmenting shader languages for modern rendering APIs

  

  
    

  
  

  
  
    
    
      
    
    2020-03-16
  
  

  

  
  
  
    15 min read
  
  

  
  
  

  
  
  
  
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
      
    
  

  

    

  

  

    
      

# Overview

In the last articles we looked at progressively building tools to move rendering code towards data.
We looked on how to create a simple **lexer**, a simple **parser** and a **code generator**.
With those we were able to create a very simple language to **augment** shaders.

Why that ?

There are few reasons:

1. Shader languages misses any way of linking multiple programs

2. Shader languages misses any way to define render states

3. CGFX and Microsoft FX are mostly dead

4. Ability to use ANY shader language - and just add the infrastructure

5. Ability to generate permutations without manually creating them

Hydra FX aims to add all the missing features and becoming just an augmentation to ANY shader language.

There is also a fundamental reason for me:

Define all the rendering informations needed as soon as possible!

With this reason then defining everything inside an HFX file, with the possibility of overriding some properties, it is paramount.

This is by far a new concept, and with the newer Graphics APIs (Vulkan and D3D12) it is becoming more and more of a need.

In this article we will see how we have all those features and add the missing ones. I will try to define everything in a more API-Independent way, so it can be adapted to any engine needs.

# Why we need shader augmentation

The augmentation that I have in mind is needed for different reasons, not only if you are targeting the newer APIs.
Some of the reasons are the following:

1. Write the NECESSARY code. Nothing more.

2. Logically group shaders in the same file.

3. Describe a priori all the STATIC parts of rendering.

4. Being more data driven, improve iteration time.

5. Being more data driven, encourage rendering experimentation.

6. Easiness of debugging.

7. Encourages less hardcoded data.

## Write the NECESSARY code. Nothing more.

As I wrote in previous articles writing code is our biggest power and liability.
Wasting time writing useless code is like slowly typing with one finger, without any clue of a design nor knowledge of the subject.
Of course this is very personal, but any time I have to reiterate some steps (in anything in my life) for no purpose but bad-design/bad-architecture/technical-debt it really makes me feel bad.
Again, it is like playing Diablo and clicking all the time to attack, instead of knowing that you can hold the mouse button!

Finally to the topic: shader augmentation means moving to data what many times is expressed in code.
We can both have a data-driven rendering, or even generate code for us, or a combination of both.
There is not right or wrong, and this will change in the future!
The best solution is the one that solves your (incredibly well described) problem.

Adding render states, vertex inputs, render graph informations let a simple text file to find its space into your awesome rendering quite easily.

## Logically group shaders in the same file.

Having to write separated files it can be ok, but many times having everything in one file (well divided) will be easier to logically connects the shader themselves.
Sometimes you can get lost into the combination of shaders quite easily.
And anyway you NEED to define which shaders are used together since the dawn of time.

So put them into the same file!

## Describe a priori all the STATIC parts of rendering.

Knowing all the static parts of rendering can lead to offline analysis and build, statistics, and all kind of things you can think of.
It also serves to really have knowledge of the combinational explosion of rendering **before** it arrives in your beloved renderer!
Sometimes you can group shaders together and improve speed and usability by just analysing how **similar** some shaders are.

## Being more data driven, improve iteration time.

If you think of reloading assets, then a shader reload will also load all the render stage associated.
If you want to bring it a step further, adding/removing passes, changing were in the *render graph* the shaders are used can be an incredible tool to quickly prototype, optimize, develop ideas.

## Being more data driven, encourage rendering experimentation.

You can also add some non-coding tools to augment a shader with all those data.
And again, defining this in data let’s you check relationship with the rest of the renderer more easily.

## Easiness of debugging.

Data-drivenness means that data is always available.
In the example I am adding here, you can see how useful can be to even have a simple ImGui debug of a HFX file.
Bring that to a realtime renderer, and you can quickly debug rendering problems without having to use external tools like Pix, RenderDoc and such. These are wonderful tools, but I always love to have a defense before arriving there.

An example is to debug on someone’s machine that does not have installed those tools.

Same can be applied to performances, to quickly check performances in realtime.

Tooling is essential to any developer, and should be developed with the technology itself.

## Encourages less hardcoded data.

Nothing wrong to hardcoding data, and many times is necessary and useful.
But the question is: **when** is necessary ?

Having a common data format gives you the tools (see previous point) to analyze, compared to hardcoded.

# Shader Augmentations

We will take a HFX shader and will see all the augmentations.
This is used in the [Render Pipeline Article](https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/) and renders the GLTF assets:

```
shader PBR {

    properties {
        albedo_texture("Albedo", 2D) = ""
        normals_texture("Normals", 2D) = ""
        metal_roughness_texture("MetalRoughness", 2D) = ""
        emissive_texture("Emissive", 2D) = ""
        occlusion_texture("Occlusion", 2D) = ""
        scale("Scale", Float) = 16.0
    }

    layout {
        vertex main3D {
            binding 0 16 vertex
            attribute float3 Position 0 0 0
            attribute ubyte4n Color 0 1 12
        }

        vertex main3DPosition {
            binding 0 12 vertex
            attribute float3 Position 0 0 0
        }

        vertex main3DPositionNormal {
            binding 0 12 vertex
            binding 1 12 vertex
            binding 3 64 instance
            attribute float3 Position 0 0 0
            attribute float3 Normal 1 1 0
            attribute float4 InstanceTransform 3 3 0
            attribute float4 InstanceTransform 3 4 16
            attribute float4 InstanceTransform 3 5 32
            attribute float4 InstanceTransform 3 6 48
        }

        vertex gbuffer {
            binding 0 12 vertex
            binding 1 12 vertex
            binding 2 8 vertex
            binding 3 64 instance
            attribute float3 Position 0 0 0
            attribute float3 Normal 1 1 0
            attribute float2 UV 2 2 0
            attribute float4 InstanceTransform 3 3 0
            attribute float4 InstanceTransform 3 4 16
            attribute float4 InstanceTransform 3 5 32
            attribute float4 InstanceTransform 3 6 48
        }

        list gbuffer {
            cbuffer ViewConstants ViewConstants;

            texture2D albedo;
            texture2D normals;
            texture2D metalRoughness;
            texture2D emissive;
            texture2D occlusion;

            sampler2D linear_sampler
        }
    }

    sampler_states {
        state linear_sampler {
            Filter MinMagMipLinear
            AddressU Clamp
            AddressV Clamp
        }
    }

    render_states {
        state main {
            Cull Back
            ZTest LEqual
            ZWrite On
        }

        state linesZTest {
            Cull None
            ZTest LEqual
            ZWrite Off
            BlendMode Alpha
        }
    }

    glsl GBuffer_V {

        #pragma include "Platform.h"

        layout (location = 0) in vec3 Position;
        layout (location = 1) in vec3 Normal;
        layout (location = 2) in vec2 UV;
        layout (location = 3) in mat4 instanceTransform;

        layout (std140, binding=0) uniform ViewConstants {
            mat4                    view_projection_matrix;
            mat4                    projection_matrix;
            vec4                    resolution;
        };

        out vec3 vertexNormal;
        out vec2 uv;
        out vec3 worldPosition;

        void main()
        {
            vertexNormal = (inverse(transpose((instanceTransform))) * vec4(Normal,0)).rgb;
            uv = UV;

            vec4 world_pos = instanceTransform * vec4(Position.xyz, 1.0f);
            worldPosition = world_pos.xyz;
            gl_Position = view_projection_matrix * world_pos;
        }
    }

    glsl GBuffer_F {

        #pragma include "Platform.h"
    
        layout (location = 0) out vec4 Out_Color;
        layout (location = 1) out vec4 Out_Normals;
        layout (location = 2) out vec4 Out_Properties0;
        //layout (location = 3) out vec4 Out_WorldPosition;

        layout(binding=0) uniform sampler2D albedo;
        layout(binding=1) uniform sampler2D normals;
        layout(binding=2) uniform sampler2D metalRoughness;
        layout(binding=3) uniform sampler2D emissive;
        layout(binding=4) uniform sampler2D occlusion;

        in vec3 vertexNormal;
        in vec2 uv;
        in vec3 worldPosition;

        void generate_TB_basis( out vec3 vT, out vec3 vB, vec2 texST, vec3 base_normal, vec3 sigma_x, vec3 sigma_y, float flip_sign )
        {
            vec2 dSTdx = dFdxFine ( texST ) , dSTdy = dFdyFine ( texST ) ;
            float det = dot ( dSTdx , vec2 ( dSTdy .y ,- dSTdy .x ));
            float sign_det = det <0 ? -1 : 1;

            // invC0 represents ( dXds , dYds ) ; but we don ’t divide by
            // determinant ( scale by sign instead )
            vec2 invC0 = sign_det * vec2 ( dSTdy .y , - dSTdx .y );

            vT = sigma_x * invC0 .x + sigma_y * invC0 .y;
            if( abs ( det ) > 0.0)
                vT = normalize ( vT );

            vB = ( sign_det * flip_sign ) * cross ( base_normal , vT );
        }

        void main()
        {
            // Calculate gradient base:
            vec3 base_normal = normalize(vertexNormal);

            vec3 position_derivate_x = dFdxFine( worldPosition );
            vec3 position_derivate_y = dFdyFine( worldPosition );

            vec3 sigma_x = position_derivate_x - dot( position_derivate_x, base_normal ) * base_normal;
            vec3 sigma_y = position_derivate_y - dot( position_derivate_y, base_normal ) * base_normal;
            float flip_sign = dot ( position_derivate_y, cross ( base_normal, position_derivate_x )) < 0 ? -1 : 1;

            vec3 tangent, bitangent;
            generate_TB_basis( tangent, bitangent, uv.xy, base_normal, sigma_x, sigma_y, flip_sign );

            vec3 tangent_normal = texture(normals, uv.xy).xyz * 2 - 1;

            vec3 normal = tangent * tangent_normal.x + bitangent * tangent_normal.y + base_normal * tangent_normal.z;
            normal = normalize(normal);

            vec3 emissive_color = texture(emissive, uv.xy).rgb;

            //Out_Normals = vec4(vertexNormal, 1);
            //Out_Normals = vec4(tangent_normal * 0.5 + 0.5, 1);
            Out_Normals = vec4(normal, emissive_color.r);

            vec3 color = texture(albedo, uv.xy).xyz;
            float occlusion = texture(occlusion, uv.xy).r;
            Out_Color = vec4(color, occlusion);

            // G = Rougthness, B = Metalness
            vec2 roughness_metal = texture(metalRoughness, uv.xy).yz;
            Out_Properties0 = vec4(roughness_metal.xy, emissive_color.gb);

            // TODO: remove! This is to test world space reconstruction!
            //Out_WorldPosition = vec4(worldPosition, 1);
        }
    }

    glsl PositionOnly {

        #pragma include "Platform.h"

        #if defined VERTEX

        layout (location = 0) in vec3 Position;

        uniform ViewConstants { 
            mat4                    view_projection_matrix;
            mat4                    projection_matrix;
            vec4                    resolution;
        };

        void main()
        {
            gl_Position = view_projection_matrix * vec4(Position.xyz, 1.0f);
        }
        out vec4 vTexCoord;

        #endif // VERTEX

        #if defined FRAGMENT

        layout (location = 0) out vec4 Out_Color;
        
        void main()
        {
            Out_Color = vec4(1,1,1,1);
        }
        #endif // FRAGMENT
    }

    glsl PositionNormals {

        #pragma include "Platform.h"

        #if defined VERTEX

        layout (location = 0) in vec3 Position;
        layout (location = 1) in vec3 Normal;
        layout (location = 3) in mat4 instanceTransform;

        layout (std140, binding=0) uniform ViewConstants { 
            mat4                    view_projection_matrix;
            mat4                    projection_matrix;
            vec4                    resolution;
        };

        out vec3 vertexNormal;

        void main()
        {
            vertexNormal = Normal;
            gl_Position = view_projection_matrix * instanceTransform * vec4(Position.xyz, 1.0f);
        }
        

        #endif // VERTEX

        #if defined FRAGMENT

        layout (location = 0) out vec4 Out_Color;
        layout (location = 1) out vec4 Out_Normals;
        in vec3 vertexNormal;
        
        void main()
        {
            Out_Normals = vec4(vertexNormal * 0.5 + 0.5, 1);

            vec3 L = vec3(-0.7, 0.7, 0 );
            float lambert_diffuse = max(0, dot(vertexNormal, L));
            Out_Color = vec4(lambert_diffuse.xxx, 1);
        }
        #endif // FRAGMENT
    }

    pass GBuffer {
        resources = gbuffer
        render_states = main
        vertex_layout = gbuffer
        vertex = GBuffer_V
        fragment = GBuffer_F
    }

    pass PositionN {
        render_states = main
        vertex_layout = main3DPositionNormal
        vertex = PositionNormals
        fragment = PositionNormals
    }

    pass PositionOnly {
        render_states = main
        vertex_layout = main3DPosition
        vertex = PositionOnly
        fragment = PositionOnly
    }
}

```

## 1: Linking Multiple Programs

This is a pretty simple task, and the first one to be tackled.

In Vulkan all the Pipelines need all the shader used at creation, using an array of [VkPipelineStageCreationInfo](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkPipelineShaderStageCreateInfo.html) for graphics, compute and ray-tracing.

In D3D12, you have the [ShaderBytecode](https://docs.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_shader_bytecode) used in the pipelines, but not as arrays (just member of the various creation structs).

From a functionality perspective, they are EQUAL. It makes sense - a **Pipeline** is the description of all the static part of a GPU pipeline, and shaders are amongst the most important part of it.

You can see it in the ‘pass’ section of the HFX file:

```
pass PositionOnly {
    vertex = PositionOnly
    fragment = PositionOnly
    ...
}

```

For a compute pipeline is even simpler, and dispatch size can be added as well:

```
pass DeferredCompute {
    compute = DeferredCompute
    dispatch = 32, 32, 1
    ...
}

```

Even just with something like this it is easy to organize different shaders.

## 2: Define Render States

Following the previous point, Pipelines need also (almost) all the render states (depth/stencil, alpha, raster, …) to be defined.
This was one of the main features of CGFX and Microsoft’s FX - and still now is incredibly useful.
Unity’s ShaderLab also incorporates render states.

I decided to separate render states on their own group:

```
render_states {
    state main {
        Cull Back
        ZTest LEqual
        ZWrite On
    }

    state linesZTest {
        Cull None
        ZTest LEqual
        ZWrite Off
        BlendMode Alpha
    }
}

```

Here two different render states are defined.
In this case a render states defines depth/stencil, blend and rasterization.

A great addition to that is to add the possibility of inherit/override render states.
For example in a Transparent pass, the blend state could be defined in the Render Pass data, and be inherited explicitly here.

Also very important is the definition of **input assembly** - how the vertices are fed into the *vertex program*:

```
layout {
    vertex main3D {
        binding 0 16 vertex
        attribute float3 Position 0 0 0
        attribute ubyte4n Color 0 1 12
    }

    vertex main3DPosition {
        binding 0 12 vertex
        attribute float3 Position 0 0 0
    }

    vertex main3DPositionNormal {
        binding 0 12 vertex
        binding 1 12 vertex
        binding 3 64 instance
        attribute float3 Position 0 0 0
        attribute float3 Normal 1 1 0
        attribute float4 InstanceTransform 3 3 0
        attribute float4 InstanceTransform 3 4 16
        attribute float4 InstanceTransform 3 5 32
        attribute float4 InstanceTransform 3 6 48
    }

    vertex gbuffer {
        binding 0 12 vertex
        binding 1 12 vertex
        binding 2 8 vertex
        binding 3 64 instance
        attribute float3 Position 0 0 0
        attribute float3 Normal 1 1 0
        attribute float2 UV 2 2 0
        attribute float4 InstanceTransform 3 3 0
        attribute float4 InstanceTransform 3 4 16
        attribute float4 InstanceTransform 3 5 32
        attribute float4 InstanceTransform 3 6 48
    }
}

```

Here we can see some instancing use case, just to show the flexibility of writing this code.
The bytes offset could be removed as well.

## 3: Use ANY Shader Language

The best way to diffuse these augmentation is to change the less possible the shader languate itself.
This is because you want to be portable, and when having different platform it can be paramount even to define shaders with different languages into the same file, and switch based on platforms.
This is becoming less and less of a need (see HLSL working on Vulkan) but there could be some special cases.
Would it be great to fix those special cases by writing platform specific shader fragments without any of your internal rendering code changing ?

The choise here is to use a keyword to identify the type of language and then simply write the code in that language.
This is *ideal* to also incorporate code from previous codebases with a small amount of work.

Let’s look at the GBuffer Vertex GLSL code:

```
glsl GBuffer_V {

    #pragma include "Platform.h"

    layout (location = 0) in vec3 Position;
    layout (location = 1) in vec3 Normal;
    layout (location = 2) in vec2 UV;
    layout (location = 3) in mat4 instanceTransform;

    layout (std140, binding=0) uniform ViewConstants {
        mat4                    view_projection_matrix;
        mat4                    projection_matrix;
        vec4                    resolution;
    };

    out vec3 vertexNormal;
    out vec2 uv;
    out vec3 worldPosition;

    void main()
    {
        vertexNormal = (inverse(transpose((instanceTransform))) * vec4(Normal,0)).rgb;
        uv = UV;

        vec4 world_pos = instanceTransform * vec4(Position.xyz, 1.0f);
        worldPosition = world_pos.xyz;
        gl_Position = view_projection_matrix * world_pos;
    }
}

```

The only modification I did, and it is sadly necessary in GLSL, is to add the ‘#pragma include’ custom parsing to add the include in the HFX compiler.

## 4: Resource Layouts as First Citizens

A new addition of the new APIs, resource layouts are another great factor to take care of.
Architecturally they can be implemented in different ways, but I like the idea of having them ‘in your face’ since the beginning!

In the *layout* section, you can define resources like this:

```
list gbuffer {
    cbuffer ViewConstants ViewConstants;

    texture2D albedo;
    texture2D normals;
    texture2D metalRoughness;
    texture2D emissive;
    texture2D occlusion;

    sampler2D linear_sampler
}

```

The name will be used in the pass section to define which resource list is used.
There can be multiple resource lists, normally they should be grouped per frequency (most frequent changes to least frequent ones) and can be separated by a comma for example.

A small addition is to use externally specified resource list and code, like for **starnest.hfx**:

```
pass main {
	...
	resources = "ShaderToy.Main"	
}

```

This means that the pass named ‘main’ will simply use the resources defined in ‘shadertoy.hfx’ - resource list called main.

## 5: Permutations

This is the most tedious of the tasks, and also one of the most dangerous.
Permutations explosion is a well known problem, and there are different ways of tackling this. If you don’t have a shader augmentation a good option is to write some scripts to help with generating the code.

Otherwise if you have a shader augmentation and you define a ‘shader state’, you can define some ‘permutation flags’, and just add the defines when you compile shaders. Even in GLSL, you can do some easy string concatenation to add those defines, or use tools like GLSLang + SpirV to help.

This becomes a cartesian product of all the *permutations/options groups* and again can lead to a lot of created shader.
I am still investigating the best approach and I will update this article with the results, because I want to include them into HFX but avoid that to become a huge file - and worst to include unused permutations.

So stay tuned as I will update this article with the solution I find!

## 6: C++ Generated Helpers

As finishing touch, there are some informations that can be exposed in a c++ file.
…

# Included code: ‘Shader Augmentation’

The included code has a small application to compile and inspect HFX files.
…

# Conclusions

I tried to explain the reasons of the different **shader augmentations** and trying to focus more on the importance of not trying to create a new shading language, but instead empowering it with new informations.

I can’t stress enough how important is to me to have an abstraction that is slightly on top of current shaders API - and create other systems to hide the complexities if needed.

With HFX, I would like to *expand* any language by adding all those features.
I wish this could become a used tool by many in their project, and really wish it will be the initial spark.

Next in line is a revisiting of higher level of rendering, to arrive to explore different rendering techniques with the easiness that the data-driven approach should give.

As always please comment, give me feedback, share and enjoy!

Thanks for reading!
Gabriel

    

    

    

  
  [shaders](/tags/shaders/)
  

    
      

  

  
  
  
    
  
  
  
    
      
      
    

    
      

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

        

          
          
- [Writing a Shader Effect Language Part 3: Materials](/post/writing_shader_effect_language_3/)
          
          
- [Writing a Shader Effect Language Part 2](/post/writing_shader_effect_language_2/)
          
          
- [Writing a Shader Effect Language Part 1](/post/writing_shader_effect_language_1/)
          
        

      
      
    

    

    

  

      

    
    
    
    
    

    
    
    
      
      
      
      

      
        
      

      
        
        
        
        
        
      

      
      
      
      
    

    
    

    
    
    
    

    
    
    
    

    
    

    
    
    
    

    
    
    
    
    

    
    

    
    
    
    
    
    
    
    
    
      
    
    
    
    
    

    

  
  
    

  
  

  

  
    
      
        

##### Cite

        
          ×
        
      
      
        

```

```

      
      
        **[Copy](#)
        **[Download](#)
