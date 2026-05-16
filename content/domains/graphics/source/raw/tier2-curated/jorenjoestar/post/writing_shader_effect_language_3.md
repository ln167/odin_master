---
source_url: https://jorenjoestar.github.io/post/writing_shader_effect_language_3
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:32:02.798990+00:00
fetcher: html_mirror
sha256: 084519a5f9f9bf7ff4a9ed3e4000f928f9dd9a5670c2fa93625ac5d0b4658154
---

Writing a Shader Effect Language Part 3: Materials | Gabriel's Virtual Tavern

  

  

  

  

  

  
  
  

  

# Writing a Shader Effect Language Part 3: Materials

  

  
    

  
  

  
  
    
    
      
          Last updated on
      
    
    2019-12-19
  
  

  

  
  
  
    21 min read
  
  

  
  
  

  
  
  
  
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

Data Driven Rendering Series:

1. [https://jorenjoestar.github.io/post/writing_shader_effect_language_1/](https://jorenjoestar.github.io/post/writing_shader_effect_language_1/)

2. [https://jorenjoestar.github.io/post/writing_shader_effect_language_2/](https://jorenjoestar.github.io/post/writing_shader_effect_language_2/)

3. [https://jorenjoestar.github.io/post/writing_shader_effect_language_3/](https://jorenjoestar.github.io/post/writing_shader_effect_language_3/)

4. [https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/](https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/)

In [Part 2 of this series](https://jorenjoestar.github.io/post/writing_shader_effect_language_2/) we added Resource Layouts and Properties to the **HFX** language, trying to arrive at a point in which we can describe the rendering of a Shader Effect almost entirely.
In this article I would like to explore further adds to HFX, especially a proper **Material System** to be used in conjunction with the HFX language.
I also separated the code a little bit for clarity and added the usage of STB array and hash maps.
With that I would like to develop a Material System that is robust and easy to use, even though I am (DISCLAIMER!) far from it!

I will first talk about the theory and thoughts behind those changes, and then go through the code changes and addition.

# Material System thoughts

Following a nomenclature from the amazing guys at [our_machinery](https://ourmachinery.com/post/), we are adding a *Tier 1 Shader System* - something that builds on top of the graphics API created in the previous article.

First of all, a great series of article is again on their website:

- [https://ourmachinery.com/post/the-machinery-shader-system-part-1/](https://ourmachinery.com/post/the-machinery-shader-system-part-1/)

- [https://ourmachinery.com/post/the-machinery-shader-system-part-2/](https://ourmachinery.com/post/the-machinery-shader-system-part-2/)

- [https://ourmachinery.com/post/the-machinery-shader-system-part-3/](https://ourmachinery.com/post/the-machinery-shader-system-part-3/)

We are building a Material System based on a graphics-API that exposes the following concepts:

- Buffer

- Texture

- Pipeline (that includes shaders)

- Render Pass

- Resource List Layout

- Resource List

We are using a Vulkan/D3D12 interface here, and these concepts map 1 to 1 with that.
One of the big changes from a typical low-level graphics API is both the ‘missing’ concept of Shader as a resource, and the addition of Render Pass as resource.
A new concept is the one of **Resource List Layout** and **Resource List**.
The Vulkan names are **Descriptor Set Layout** and **Descriptor Set**, but even though they reflect more the underlying driver nature of the term, I changed to **Resource List** just to have it clearer as a concept.

The **King** here is the Pipeline: it is a structure that contains **all the immutable data of a pipeline**. That includes our missing **shaders**, all the **render states** (DepthStencil, AlphaBlend, …) and a **Layout of the resources to be used by the shader**.

Part of the **dynamic** pipeline states are normally the **geometry** and the **resource lists**.
Note that I am using the plural here: each **pipeline** can have 1 or more **resource lists!!**.
This is a good to organize your resources based on update frequencies, something coming from the numerous talks about Approaching Zero Driver Overhead.

Remembering the simple interface of our API, now we have the following:

```
struct Device {

	...

    BufferHandle                    create_buffer( const BufferCreation& creation );
    TextureHandle                   create_texture( const TextureCreation& creation );
    PipelineHandle                  create_pipeline( const PipelineCreation& creation );
    SamplerHandle                   create_sampler( const SamplerCreation& creation );
    ResourceListLayoutHandle        create_resource_list_layout( const ResourceListLayoutCreation& creation );
    ResourceListHandle              create_resource_list( const ResourceListCreation& creation );
    RenderPassHandle                create_render_pass( const RenderPassCreation& creation );

    ...
};

```

If you look at the OpenGL implementation (the only I wrote for now :( ) you will find that Shaders are considered resources, but it is more for convenience of the attach/linking OpenGL need than anything else.

Let’s finally introduce the new concept for this article!

## Shader Effect

A **Shader Effect** is the blueprint of *static* data needed to draw something on the screen.

It needs to include **shaders** (included in a **Pipeline Description**), **properties** (coming from the HFX file) and find its location into a **render graph**.

A **Shader Effect** is 1 to 1 with a **Binary HFX file**.

As a convenience we will add also informations about the **local constants**.
When creating a Shader Effect, we can define properties, and we put all the numerical properties into one buffer.

This is the current code:

```

struct ShaderEffect {

    //
    //
    struct PropertiesMap {

        char*                       key;
        hfx::ShaderEffectFile::MaterialProperty* value;

    }; // struct PropertiesMap

    struct Pass {
        PipelineCreation            pipeline_creation;
        char                        name[32];
        PipelineHandle              pipeline_handle;
        uint32_t                    pool_id;
    }; // struct Pass

    Pass*                           passes;

    uint16_t                        num_passes              = 0;
    uint16_t                        num_properties          = 0;
    uint32_t                        local_constants_size    = 0;

    char*                           local_constants_default_data = nullptr;
    char*                           properties_data         = nullptr;

    PropertiesMap*                  name_to_property        = nullptr;

    char                            name[32];
    char                            pipeline_name[32];
    uint32_t                        pool_id;

}; // struct ShaderEffect

```

You see both a **pipeline name** and an array of **passes** with a name. These are to insert the pass into a very **primordial** render graph, that I wrote just because I didn’t want to hardcode the frame structure, especially because next article will be EXACTLY on this topic!

Having defined the Shader Effect, we can now move into the next big actor.

## Material

A **Material** is an instance of a **Shader Effect**.

Given a HFX file, we generate a new file (HMT, Hydra Material) that will contain all the informations.
The concept of Material is really **unique values for the properties of a Shader Effect**.

That is basically it.

For example, if a shader contains a property like an *albedo texture*, the material answer the question “which albedo texture?”.
This is done for every property.

Let’s have a look at our new material:

```
{
    "name": "SimpleFullscreen",
    "effect_path": "SimpleFullscreen.hfx",
    "properties": [
        {
            "scale": 16.0,
            "albedo": "AngeloCensorship.png",
            "modulo": 2.0
        }
    ],
    "bindings": [
        {
            "LocalConstants": "LocalConstants",
            "destination_texture": "compute_output_texture",
            "input_texture": "compute_output_texture",
            "albedo_texture": "albedo"
        }
    ]
}

```

As you can see there is a name, the effect path, the properties and the bindings. These will be explained in the next section.
Properties are just a name-value list, coming from the Shader Effect itself (the .bhfx file).

The texture is my horrible drawing after reading the fantastic [rendering guide by Angelo Pesce](http://c0de517e.blogspot.com/2019/08/engineering-career-guide-leaked.html) and how he censored the parts that were internal to Roblox!

## Shader Resource Database and Lookup

A concept that I saw only in the **our_machinery** posts, but I personally adopted since a couple of years, is a way of automating a daunting task: *setting shader resources*.

I still need to finish the correct implementation of those, but the concepts are simple.
A **Shader Resource Database** is a database of resources that can be searched using a **Shader Resources Lookup**.
The name of the binding is the shader related name, while the value is the name into the database.
Of course you can use hashes instead of names, and compile them into a binary version of this, but this is not important now.

One interesting bit (sadly not implemented here, sorry!) is the binding specialization. 
This is done so that resources can be specialized in the database.
This is done per pass and it let you write only one binding list for all the Material, and then gather the proper resource based on the specialization.
For example if there is a binding for a pass-dependent resource, writing a generic version can specialize the shader pass correctly. Or using special keywords in the bindings, you can retrieve input/output textures from the render pass in which the shader is rendered!

For now though it is more a manual written list, but it will be developed further.

# Where is my code ?

Having introduced the new concept, let’s look at the changes that happened in the last weeks of night coding.
As said before, in general I separated the code in header/cpp for clarity and building performances (after a good talk on Twitter, [https://twitter.com/GabrielSassone/status/1179810419617275905?s=20)](https://twitter.com/GabrielSassone/status/1179810419617275905?s=20)).

## Applications

First big changes was separating the code from the previous articles in an *application*: namely **CustomShaderLanguageApplication** in **CustomShaderLanguage.h/cpp** and **MaterialSystemApplication** in **MaterialSystem.h/cpp**.

The first contains all the application code that uses HDF and HFX, with code generation and HFX compilation.
The second contains both the new **Material System** and the application that uses it.
I would love to say that is an usable app, but I really touched my limits in non designing clearly when night coding.
**Personal note: I hope this could be the spark to create a FX Composer successor, open source and free for all!**

## STB

As part of this experiment I wanted to try something different.
Instead of re-writing array and hash maps with templates, I wanted to give a try to the [STB libraries](https://github.com/nothings/stb): namely **stb_ds.h** and **stb_image.h**.
Arrays and Hash Maps are now included in hydra_lib.h to be used across the code.

## Hydra Graphics

The device added render passes and the support for multiple resources layout.
It also creates FBOs for color passes and supports resize, especially thanks to the Render Pipeline.

## Primitive Render Graph (called Render Pipeline)

I use the term I used since the inception in 2010, and honestly it is more true to what it does.
It is not a graph but more a list of **Render Stages** with input/outputs defined clearly.
In the next article I will develop more on this, but for now I needed some structure like this to be explicit.

In the application there are 3 pipelines, one for a single pass ShaderToy shader, one for a silly compute to framebuffer shader(that for now loads a texture and outputs it to the framebuffer), and one for just a render to window.

I use this in my indie project, with a fully custom and data driven (written in json) pipeline that includes compute deferred lighting and shadows, shadow passes, various post-process passes and such, everything very easy to debug and very easy to modify/add/delete.
There is a mechanism to send the correct draw calls to the correct pass through the usage of render systems, but again this will be a topic for the next article!

In the included code, there is also a small but powerful tool: a pipeline explorer.
For now it will just show the render targets for each stage, and in these simple examples does not matter much.
In the next article we will dive deep into the **Render Pipeline/Graph** subject and then all of this will make sense!

# Break: a simple Resource Manager

While being a very important topic, this is not the focus of this article.
Anyway I wanted a Resource Manager that would be helpful to handle resource creation and loading.
This includes also *resource compilation*, something that normally happens at *build time*, but in our exercise can be triggered at run-time.

The **resource manager** is a class that simply manages resources using **factories** and manages dependencies between resources.
We have only 3 resources for now:

1. Textures

2. Shader Effects

3. Materials

## Resources

A resource is a class that both has data and let the dependency with other data be clear.
The **resource’s data** is actually a pointer to actual raw data used by other systems, in this case rendering.
Let’s see its definition:

```
struct Resource {

    struct ResourceReference {
        uint8_t                     type;
        char                        path[255];
    }; // struct ResourceReference

    struct Header {

        char                        header[7];
        uint8_t                     type;   // ResourceType::enum

        size_t                      data_size;
        uint16_t                    num_external_references;
        uint16_t                    num_internal_references;
        
    }; // struct Header

    struct ResourceMap {
        char*                       key;
        Resource*                   value;
    };

    Header*                         header;
    char*                           data;
    void*                           asset;

    Resource::ResourceReference*    external_references;
    // External
    ResourceMap*                    name_to_external_resources;
    // Interal

}; // struct Resource

```

A resource is loaded from a binary file and contains a header and some data coming from the file, and an asset containing a system specific pointer.

We added 3 system specific resources (Texture, Shader Effect and Material) but the class handled is always resource.
To access the system specific data, asset member is used.

A resource contains also a map to the external resources loaded within it - to handle external references.

## Compilation

Starting from a *source file* (.hfx, .png, .hmt) using the specific factory, the resource manager compiles the code to a binary resource.
This means both converting the source format to a binary representation but also adding **external dependencies** to the file.
These dependencies will be loaded when loading the resource, and before it.

## Loading

Loading happens by first loading all the dependent resources and then using the specific factory to load the *system specific* asset.
This is a very semplicistic resource management - synchronous only, single threaded, not optimized - so really was an exercise in having something running for both compiling a resource and managing dependencies.
The whole point is the separation between a source and human-readable format to a binary one and encapsulate this.

After this (very!) small break on resource management, let’s continue to the actual code for the materials!

# Material System implementation

After all this thory let’s look at the code!

## Shader Effect

The main parts of a **Shader Effect** are **Passes** and **Properties**.
**Passes** are the most important one, as they contain all the informations to create an actual **Pipeline**, called **Pipeline Creation**.

Remembering the Vulkan/DX12 interface, we cannot create singularly a shader, but we need all the pipeline data (depth stencil, alpha blend, …) to actually create the shaders too.

The gist here is to access all those informations in a hiearchical way, basically reading them from the RenderPipeline and then overwriting with what is defined in the HFX file.

Right now there is almost nothing if not the shaders, so the creation is quite simple:

```
for ( uint16_t p = 0; p < shader_effect_file.header->num_passes; p++ ) {
    hfx::ShaderEffectFile::PassHeader* pass_header = hfx::get_pass( shader_effect_file, p );

    uint32_t shader_count = pass_header->num_shader_chunks;

    memcpy( effect->passes[p].name, pass_header->stage_name, 32 );

    PipelineCreation& pipeline_creation = effect->passes[p].pipeline_creation;
    ShaderCreation& creation = pipeline_creation.shaders;
    bool compute = false;

    // Create Shaders
    for ( uint16_t i = 0; i < shader_count; i++ ) {
        hfx::get_shader_creation( pass_header, i, &creation.stages[i] );

        if ( creation.stages[i].type == ShaderStage::Compute )
            compute = true;
    }

    creation.name = pass_header->name;
    creation.stages_count = shader_count;

    effect->passes[p].pipeline_creation.compute = compute;

    // Create Resource Set Layouts
    for ( uint16_t l = 0; l < pass_header->num_resource_layouts; l++ ) {

        uint8_t num_bindings = 0;
        const ResourceListLayoutCreation::Binding* bindings = get_pass_layout_bindings( pass_header, l, num_bindings );
        ResourceListLayoutCreation resource_layout_creation = { bindings, num_bindings };

        pipeline_creation.resource_list_layout[l] = context.device.create_resource_list_layout( resource_layout_creation );

    }

    pipeline_creation.num_active_layouts = pass_header->num_resource_layouts;

    // Create Pipeline
    effect->passes[p].pipeline_handle = context.device.create_pipeline( pipeline_creation );
    if ( effect->passes[p].pipeline_handle.handle == k_invalid_handle ) {
        invalid_effect = true;
        break;
    }
}

```

When we will have a proper RenderPipeline, we will get the basic pipeline creation from there, and overwrite the shaders and states that will be defined in the HFX.

There are 3 main steps here:

1. Create Shaders

2. Create Resource Set Layouts

3. Create Pipelines

These are simple operations that rely heavily on the device.
The objective of the HFX is to embed most information possible to create a complete pipeline.

Another important step is to populate the properties map:

```
string_hash_init_arena( effect->name_to_property );

for ( uint32_t p = 0; p < effect->num_properties; ++p ) {
    hfx::ShaderEffectFile::MaterialProperty* property = hfx::get_property( effect->properties_data, p );

    string_hash_put( effect->name_to_property, property->name, property );
}

```

We are using the STB String Hashmap here with the property that are inside the shader effect file. Those will contain the type, name for UI and the pointer to a default value. 
The default value will be used based on the type of course.

We are also saving the local constant buffer size, so that we can allocate some memory in the Material and alter its property using the UI.

We will see the importance of this next.

## Material

```
struct ShaderInstance {

    PipelineHandle                  pipeline;
    ResourceListHandle              resource_lists[hydra::graphics::k_max_resource_layouts];

    uint32_t                        num_resource_lists;
}; // struct ShaderInstance

struct Material {

    ShaderInstance*                 shader_instances        = nullptr;
    uint32_t                        num_instances           = 0;

    ShaderResourcesLookup           lookups; // Per-pass resource lookup. Same count as shader instances.
    ShaderEffect*                   effect                  = nullptr;

    BufferHandle                    local_constants_buffer;
    char*                           local_constants_data    = nullptr;

    const char*                     name                    = nullptr;
    StringBuffer                    loaded_string_buffer;
    
    uint32_t                        num_textures            = 0;
    uint32_t                        pool_id                 = 0;

    Texture**                       textures                = nullptr;

}; // struct Material

```

This is the glue to actually render something on the screen.
As a recap, we need 3 informations to render something:

1. Pipeline (shaders + render states)

2. Resources (handles to buffers and textures)

3. Geometry (in this case a fullscreen quad)

Material gives all those informations.

A **Shader Instance** is defined for each **pass**, and actually contains the Pipeline Handle and the **List of Resource Lists** to be used.
This is one of the new concepts for Vulkan/DX12: you can use one of more lists of resources to render, and normally it is better to group them by frequency.

Finally, a list of **textures** is saved to be modified by the editor.

To understand more the process, let’s look at the loading code of a Material.

```
void* MaterialFactory::load( LoadContext& context ) {
    
    using namespace hydra::graphics;

    // 1. Read header from file
    MaterialFile material_file;
    material_file.header = (MaterialFile::Header*)context.data;
    material_file.property_array = (MaterialFile::Property*)(context.data + sizeof( MaterialFile::Header ));
    material_file.binding_array = (MaterialFile::Binding*)(context.data + sizeof( MaterialFile::Header ) + sizeof( MaterialFile::Property ) * material_file.header->num_properties);

```

We are using the data from the material file to access properties and bindings.
Properties are both numerical and path to textures, bindings are name to retrieve resources from the database. We will look into that later.

```
    // 2. Read shader effect
    Resource* shader_effect_resource = string_hash_get( context.resource->name_to_external_resources, material_file.header->hfx_filename );
    ShaderEffect* shader_effect = shader_effect_resource ? (ShaderEffect*)shader_effect_resource->asset : nullptr;
    if ( !shader_effect ) {
        return nullptr;
    }

    // 3. Search pipeline
    RenderPipeline* render_pipeline = string_hash_get( context.name_to_render_pipeline, shader_effect->pipeline_name );
    if ( !render_pipeline ) {
        return nullptr;
    }

```

Access the Shader Effect through the resource dependencies, and the Render Pipeline from the map.

```
    // 4. Load material
    char* material_name = material_file.header->name;
    uint32_t pool_id = materials_pool.obtain_resource();
    Material* material = new (materials_pool.access_resource(pool_id))Material();
    material->loaded_string_buffer.init( 1024 );
    material->pool_id = pool_id;

    // TODO: for now just have one lookup shared.
    material->lookups.init();
    // TODO: properly specialize.
    // For each pass
    //for ( uint32_t i = 0; i < effect->num_pipelines; i++ ) {
    //    PipelineCreation& pipeline = effect->pipelines[i];
    //    //final ShaderBindings specializedBindings = bindings.specialize( shaderTechnique.passName, shaderTechnique.viewName );
    //    //shaderBindings.add( specializedBindings );
    //}

    material->effect = shader_effect;
    material->num_instances = shader_effect->num_passes;
    material->shader_instances = new ShaderInstance[shader_effect->num_passes];
    material->name = material->loaded_string_buffer.append_use( material_name );
    material->num_textures = material_file.header->num_textures;
    material->textures = (Texture**)hydra::hy_malloc( sizeof( Texture* ) * material->num_textures );

```

Here is the meaty part.
We create the Material, initialize a StringBuffer used to store all the names found in the file, init the db->resource lookup and create the ShaderInstance array.

```
    // Init memory for local constants
    material->local_constants_data = (char*)hydra::hy_malloc( shader_effect->local_constants_size );
    // Copy default values to init to sane valuess
    memcpy( material->local_constants_data, material->effect->local_constants_default_data, material->effect->local_constants_size );

```

We cached the constant data size to allocate its memory, and we copy the default values in it.
This memory will be overwritten by the other numerical properties and used to initialize the local constant buffer.

```
    // Add properties
    uint32_t current_texture = 0;
    for ( size_t p = 0; p < material_file.header->num_properties; ++p ) {
        MaterialFile::Property& property = material_file.property_array[p];

        hfx::ShaderEffectFile::MaterialProperty* material_property = string_hash_get( material->effect->name_to_property, property.name );

        switch ( material_property->type ) {
            case hfx::Property::Texture2D:
            {
                const char* texture_path = material->loaded_string_buffer.append_use( property.data );
                Resource* texture_resource = string_hash_get( context.resource->name_to_external_resources, texture_path );
                Texture* texture = (Texture*)texture_resource->asset;
                texture->filename = texture_path;

                render_pipeline->resource_database.register_texture( property.name, texture->handle );

                material->textures[current_texture] = texture;

                ++current_texture;

                break;
            }

            case hfx::Property::Float:
            {
                memcpy( material->local_constants_data + material_property->offset, property.data, sizeof( float ) );
                break;
            }
        }
    }

```

When cycling through the properties, we are copying the numerical properties into the newly allocated memory (local_constant_data) and we load the textures from the dependencies.

```
     // Add bindings
    for ( size_t b = 0; b < material_file.header->num_bindings; ++b ) {
        MaterialFile::Binding& binding = material_file.binding_array[b];

        char* name = material->loaded_string_buffer.append_use( binding.name );
        char* value = material->loaded_string_buffer.append_use( binding.value );
        material->lookups.add_binding_to_resource( name, value );
    }

```

We populate the resource lookups.

```
    BufferCreation checker_constants_creation = {};
    checker_constants_creation.type = BufferType::Constant;
    checker_constants_creation.name = s_local_constants_name;
    checker_constants_creation.usage = ResourceUsageType::Dynamic;
    checker_constants_creation.size = shader_effect->local_constants_size;
    checker_constants_creation.initial_data = material->local_constants_data;

    material->local_constants_buffer = context.device.create_buffer( checker_constants_creation );
    render_pipeline->resource_database.register_buffer( (char*)s_local_constants_name, material->local_constants_buffer );

```

Generate the actual constant buffer.

```
    // Bind material resources
    update_material_resources( material, render_pipeline->resource_database, context.device );

```

And finally search the bindings for the resources.

```
static void update_material_resources( hydra::graphics::Material* material, hydra::graphics::ShaderResourcesDatabase& database, hydra::graphics::Device& device ) {

    using namespace hydra::graphics;

    // Create resource list
    // Get all resource handles from the database.
    ResourceListCreation::Resource resources_handles[k_max_resources_per_list];

    // For each pass
    for ( uint32_t i = 0; i < material->effect->num_passes; i++ ) {
        PipelineCreation& pipeline = material->effect->passes[i].pipeline_creation;

        for ( uint32_t l = 0; l < pipeline.num_active_layouts; ++l ) {
            // Get resource layout description
            ResourceListLayoutDescription layout;
            device.query_resource_list_layout( pipeline.resource_list_layout[l], layout );

            // For each resource
            for ( uint32_t r = 0; r < layout.num_active_bindings; r++ ) {
                const ResourceBinding& binding = layout.bindings[r];

                // Find resource name
                // Copy string_buffer 
                char* resource_name = material->lookups.find_resource( (char*)binding.name );

                switch ( binding.type ) {
                    case hydra::graphics::ResourceType::Constants:
                    case hydra::graphics::ResourceType::Buffer:
                    {
                        BufferHandle handle = resource_name ? database.find_buffer( resource_name ) : device.get_dummy_constant_buffer();
                        resources_handles[r].handle = handle.handle;

                        break;
                    }

                    case hydra::graphics::ResourceType::Texture:
                    case hydra::graphics::ResourceType::TextureRW:
                    {
                        TextureHandle handle = resource_name ? database.find_texture( resource_name ) : device.get_dummy_texture();
                        resources_handles[r].handle = handle.handle;

                        break;
                    }

                    default:
                    {
                        break;
                    }
                }
            }

            ResourceListCreation creation = { pipeline.resource_list_layout[l], resources_handles, layout.num_active_bindings };
            material->shader_instances[i].resource_lists[l] = device.create_resource_list( creation );
        }
        material->shader_instances[i].num_resource_lists = pipeline.num_active_layouts;
        material->shader_instances[i].pipeline = material->effect->passes[i].pipeline_handle;
    }
}

```

For each Pass, Resource Layout and Binding, we search the Database to retrieve the actual resource and create the Resource List.

This can be improved - having a global database of resources and a ‘local’ one based on material resources.

```
    // 5. Bind material to pipeline
    for ( uint8_t p = 0; p < shader_effect->num_passes; ++p ) {
        char* stage_name = shader_effect->passes[p].name;
        hydra::graphics::RenderStage* stage = string_hash_get( render_pipeline->name_to_stage, stage_name );

        if ( stage ) {
            stage->material = material;
            stage->pass_index = (uint8_t)p;
        }
    }

    return material;
}

```

Finally, and this is hacky, we assing the current material and pass index to the found stage.
Once we have the real Render Pipeline/Graph working, we will use another dispatching mechanism.

# Rendering of a Material

After all of this we finally have created a Material.
But how can we render it ?
The magic here happens in a **Render Pipeline**!
A Render Pipeline is a list of Render Stages and some resources with it. In this case resources are the **render targets** and the **buffers** that are shared amongst **Stages** (and Render Systems in the future).
Resources are inside a **Shader Resources Database** and they can be retrieved using a **Shader Resource Lookup**.

Each **Render Stage** has defined a list of input and output textures plus some resize data. This data is needed to recreate textures when a resize event arrives if needed, or change size if an option is changed (like a Shadow Map resolution option).
As everthing in this articles, this is primordial and simple, but I think is a very good start, especially from a mindset perspective.

In this simple scenario we render 1 material only, and normally it simply 1 *Material Pass* for each *Render Stage Pass*, rendering either using a fullscreen quad or through compute.

There are 2 pipelines, both simple and used as a test, one is for a *ShaderToy* shader that I use as test, the other as a compute only pipeline. They are both hardcoded and created at the beginning of the *Material Application*, but as said before, it should be data-driven and reloadable to have great rendering power.

## Rendering of a Pipeline

The code is simple:

```
void RenderPipeline::render( CommandBuffer* commands ) {

    for ( size_t i = 0; i < string_hash_length( name_to_stage ); i++ ) {

        RenderStage* stage = name_to_stage[i].value;
        stage->begin( commands );
        stage->render( commands );
        stage->end( commands );
    }
}

```

We cycle through each stage and render.

```
void RenderStage::begin( CommandBuffer* commands ) {
    commands->begin_submit( 0 );
    commands->begin_pass( render_pass );
    commands->set_viewport( { 0, 0, (float)current_width, (float)current_height, 0.0f, 1.0f } );
    if ( clear_rt ) {
        commands->clear( clear_color[0], clear_color[1], clear_color[2], clear_color[3] );
    }
    commands->end_submit();
    // Set render stage states (depth, alpha, ...)
}

```

Before rendering anything this code will bind the correct FBO/Render Targets, clear and set viewport and set render states.
After this we are ready to render the actual stage. In this simple implementation we have only 3 type of stages: Compute, Post and Swapchain.

They are very simple and similar, like this:

```
commands->begin_submit( pass_index );
commands->bind_pipeline( shader_instance.pipeline );
commands->bind_resource_list( &shader_instance.resource_lists[0], shader_instance.num_resource_lists );
commands->draw( graphics::TopologyType::Triangle, 0, 3 );
commands->end_submit();

```

Set the pipeline, bind all the different resource lists and issue the draw (in this case a full screen triangle).

# Included in the code

## Material application

I just added a simple Material Application to render the content of one of those simple shaders.

Honestly not very happy about the code quality - and you can see why trying to add big features like memory management or multi-threading is a no-go.

The application let you switch between **materials** by right clicking on the **.hmt** file.
The whole purpose is to explore with the given code a couple of materials and their dependencies.

[Starnest](https://www.shadertoy.com/view/XlfGRj) is a shader by the amazing ****[Pablo Roman Andrioli](https://www.deviantart.com/fractkali), so all credits are to him! I wanted something beautiful to show in this simple example from ShaderToy.

# Conclusions and some thoughts

We added a simple material system based on our HFX language.
Interestingly enough code generation is used much less - if almost nothing - instead of serializing data into files and using them.
As stated in the other articles, the goal is to have a parsing and code generation knowledge under your belt, and understand when it is time to use it!
We also introduced a lot of connections to other topics that are lengthy enough - like resource management - that need more time and dedication to properly be explored.
I am continuing working on this until it will become my *rendering explorer* - a tool I can use to easily explore ideas, much like **ShaderToy** but in an even more powerful way.
How ?
In the next article we will explore the final piece of the puzzle, and then we will probably start iterating and improving on what we have!
We will see how we can describe a frame and the rendering dependencies in an easy way, especially if done since the beginning, and how much having that knowledge upfront is GREAT to work on rendering.

I am honestly not happy about the overall architecture though - here you have an example of *exploring code* - code written to explore a specific subject, and after venturing more into it you want to rewrite it.
To properly rewrite it you need to create solid foundations - namely **Memory Management, Multi-Threading, Basic Data Structures, …** and choose to pick your battles!

This is a huge lesson: pick your battles, choose what to concentrate on.
These articles are more towards code generation and rendering, but defining the constraints of the articles helps in narrowing down what to do.
If, as I would like, you want to use this code to evolve into something like a ‘desktop’ Shadertoy, then you can’t ignore all the foundational topics.
On the other end if you just quickly want to experiment with those topics, this should suffice.

I have two paths here: rewriting most of this code with a solid foundations, and delaying a RenderPipeline/Graph article, or finishing with this architecture and then re-write everything with the ‘desktop Shadertoy’.
Again, pick your battles :)

As always, please comment, feedback, share!
I really hope soon there will be some *rendering joy*!

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

        

          
          
- [Writing a Shader Effect Language Part 2](/post/writing_shader_effect_language_2/)
          
          
- [Writing a Shader Effect Language Part 1](/post/writing_shader_effect_language_1/)
          
        

      
      
    

    

    

  

      

    
    
    
    
    

    
    
    
      
      
      
      

      
        
      

      
        
        
        
        
        
      

      
      
      
      
    

    
    

    
    
    
    

    
    
    
    

    
    

    
    
    
    

    
    
    
    
    

    
    

    
    
    
    
    
    
    
    
    
      
    
    
    
    
    

    

  
  
    

  
  

  

  
    
      
        

##### Cite

        
          ×
        
      
      
        

```

```

      
      
        **[Copy](#)
        **[Download](#)
