---
source_url: https://jorenjoestar.github.io/post/vulkan_bindless_texture
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:31:53.330020+00:00
fetcher: html_mirror
sha256: 43d08e83c9606128129700ddb15601921ae972e9bac2ec1e8042c1209b97bca2
---

Vulkan Pills 1: Bindless Textures | Gabriel's Virtual Tavern

  

  

  

  

  

  
  
  

  

# Vulkan Pills 1: Bindless Textures

  

  
    

  
  

  
  
    
    
      
    
    2021-11-01
  
  

  

  
  
  
    6 min read
  
  

  
  
  

  
  
  
  
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

Here is a very short article on how to use Vulkan bindless features.

All the relevant *c++* code is into [gpu_device_vulkan.cpp](https://github.com/JorenJoestar/DataDrivenRendering/blob/master/source/hydra_next/source/graphics/gpu_device_vulkan.cpp) and [command_buffer.cpp](https://github.com/JorenJoestar/DataDrivenRendering/blob/master/source/hydra_next/source/graphics/command_buffer.cpp), and you can follow along **HYDRA_BINDLESS** defines to see what changes.

**THIS IS THE FASTEST ROUTE TO START USING BINDLESS TEXTURES THAT I KNOW OF**.  

This means also that is architecturally not optimal but it will serve its purposes!

There is a great article about the different features used here at [arm](https://community.arm.com/arm-community-blogs/b/graphics-gaming-and-vr-blog/posts/vulkan-descriptor-indexing), check it out first!

# 1. Querying for GPU support

In a pure Vulkan way, we want to query for the support of a couple of features, like this:

```
VkPhysicalDeviceDescriptorIndexingFeatures indexing_features{ VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT, nullptr };
VkPhysicalDeviceFeatures2 device_features{ VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2, &indexing_features };

vkGetPhysicalDeviceFeatures2( vulkan_physical_device, &device_features );

bool bindless_supported = indexing_features.descriptorBindingPartiallyBound && indexing_features.runtimeDescriptorArray;

```

# 2. Enabling GPU features

I will put a little more context here.  

With this code we enable all possible supported features, thus when we create the device we already have pNext used.  

Being a linked list, to add more features to a device we need to add another link to our indexing features created above:

```

    // Enable all features: just pass the physical features 2 struct.
    VkPhysicalDeviceFeatures2 physical_features2 = { VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2 };
    vkGetPhysicalDeviceFeatures2( vulkan_physical_device, &physical_features2 );

    VkDeviceCreateInfo device_create_info = {};
    device_create_info.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
    device_create_info.queueCreateInfoCount = sizeof( queue_info ) / sizeof( queue_info[ 0 ] );
    device_create_info.pQueueCreateInfos = queue_info;
    device_create_info.enabledExtensionCount = device_extension_count;
    device_create_info.ppEnabledExtensionNames = device_extensions;
    device_create_info.pNext = &physical_features2;

#if defined(HYDRA_BINDLESS)
    if ( bindless_supported ) {
        // This should be already set to VK_TRUE, as we queried before.
        indexing_features.descriptorBindingPartiallyBound = VK_TRUE;
        indexing_features.runtimeDescriptorArray = VK_TRUE;

        physical_features2.pNext = &indexing_features;
    }
#endif // HYDRA_BINDLESS

    result = vkCreateDevice( vulkan_physical_device, &device_create_info, vulkan_allocation_callbacks, &vulkan_device );
    check( result );

```

# 3. Descriptor Pool Creation

When creating the Descriptor Pool, we need to add the *flag VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT*.  

This is needed so we can update textures in the bindless array without any problem or validation error.  

Still we need to be sure to not change a used resource in command buffers that are running!

```
  static const u32 k_max_bindless_resources = 16536;
  // Create bindless descriptor pool
  VkDescriptorPoolSize pool_sizes_bindless[] =
  {
      { VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, k_max_bindless_resources }
  };
  
  // Update after bind is needed here, for each binding and in the descriptor set layout creation.
  pool_info.flags = VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT;
  pool_info.maxSets = k_max_bindless_resources * ArraySize( pool_sizes_bindless );
  pool_info.poolSizeCount = ( u32 )ArraySize( pool_sizes_bindless );
  pool_info.pPoolSizes = pool_sizes_bindless;
  result = vkCreateDescriptorPool( vulkan_device, &pool_info, vulkan_allocation_callbacks, &vulkan_descriptor_pool_bindless );

```

# 4. Global DescriptorSet/Descriptor Layout Creation

At this point we create a *global* descriptor layout and a *global* descriptor set.  

This is just because we want the fastest route to use bindless, but architecturally speaking is not the best.

First we create the Descriptor Set Layout with at least the flags *VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT* and *VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT* .  

These are needed because we will not fill all the array elements of the bindless array (partially bound flag) and we will update when a new texture is added to the device (update after bind).  

Also adding the Variable Descriptor Count in case we want more than one descriptor layout /set with a bindless array:

```
    // Create bindless global descriptor layout.
    {
        VkDescriptorBindingFlags bindless_flags = VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT | VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT | VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT;

        VkDescriptorSetLayoutBinding vk_binding;
        vk_binding.descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
        vk_binding.descriptorCount = k_max_bindless_resources;
        vk_binding.binding = k_bindless_texture_binding;
        
        vk_binding.stageFlags = VK_SHADER_STAGE_ALL;
        vk_binding.pImmutableSamplers = nullptr;

        VkDescriptorSetLayoutCreateInfo layout_info = { VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO };
        layout_info.bindingCount = 1;
        layout_info.pBindings = &vk_binding;
        layout_info.flags = VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT;

        VkDescriptorSetLayoutBindingFlagsCreateInfoEXT extended_info{ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT, nullptr };
        extended_info.bindingCount = 1;
        extended_info.pBindingFlags = &bindless_flags;

        layout_info.pNext = &extended_info;

        vkCreateDescriptorSetLayout( vulkan_device, &layout_info, vulkan_allocation_callbacks, &vulkan_bindless_descriptor_layout );

```

At this point we create the actual descriptor set from the bindless pool:

```
        VkDescriptorSetAllocateInfo alloc_info{ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO };
        alloc_info.descriptorPool = vulkan_descriptor_pool_bindless;
        alloc_info.descriptorSetCount = 1;
        alloc_info.pSetLayouts = &vulkan_bindless_descriptor_layout;

        VkDescriptorSetVariableDescriptorCountAllocateInfoEXT count_info{ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT };
        u32 max_binding = k_max_bindless_resources - 1;
        count_info.descriptorSetCount = 1;
        // This number is the max allocatable count
        count_info.pDescriptorCounts = &max_binding;
        alloc_info.pNext = &count_info;

        check_result( vkAllocateDescriptorSets( vulkan_device, &alloc_info, &vulkan_bindless_descriptor_set ) );
    }

```

# 5. Texture Upload

At this point whenever we create a new texture we can update the global bindless descriptor set.  

I prefer to batch this and do it at the end of the frame, here it is:

```
if ( num_texture_updates ) {
    // Handle deferred writes to bindless textures.
    // TODO: use dynamic array instead.
    static constexpr u32 k_num_writes_per_frame = 16;
    VkWriteDescriptorSet bindless_descriptor_writes[ k_num_writes_per_frame ];
    VkDescriptorImageInfo bindless_image_info[ k_num_writes_per_frame ];

    u32 current_write_index = 0;
    for ( i32 it = num_texture_updates - 1; it >= 0; it-- ) {
        ResourceUpdate& texture_to_update = texture_to_update_bindless[ it ];

        if ( current_write_index == k_num_writes_per_frame )
            break;

        TextureVulkan* texture = access_texture( { texture_to_update.handle } );
        VkWriteDescriptorSet& descriptor_write = bindless_descriptor_writes[ current_write_index ];
        descriptor_write = { VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET };
        descriptor_write.descriptorCount = 1;
        descriptor_write.dstArrayElement = texture->handle.index;
        descriptor_write.descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
        descriptor_write.dstSet = vulkan_bindless_descriptor_set;
        descriptor_write.dstBinding = k_bindless_texture_binding;

        SamplerVulkan* vk_default_sampler = access_sampler( default_sampler );
        VkDescriptorImageInfo& descriptor_image_info = bindless_image_info[ current_write_index ];
        descriptor_image_info.sampler = vk_default_sampler->vk_sampler;
        descriptor_image_info.imageView = texture->vk_image_view;
        descriptor_image_info.imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
        descriptor_write.pImageInfo = &descriptor_image_info;

        texture_to_update.current_frame = u32_max;

        texture_to_update_bindless[ it ] = texture_to_update_bindless[ --num_texture_updates ];

        ++current_write_index;
    }

    if ( current_write_index ) {
        vkUpdateDescriptorSets( vulkan_device, current_write_index, bindless_descriptor_writes, 0, nullptr );
    }
}

```

# 6. Adding the Bindless Descriptor Layout to layouts

Again a quick and dirty example of adding the bindless layout to every layout:

```

u32 bindless_active = 0;
#if defined(HYDRA_BINDLESS)
    vk_layouts[ creation.num_active_layouts ] = vulkan_bindless_descriptor_layout;
    bindless_active = 1;
#endif

    VkPipelineLayoutCreateInfo pipeline_layout_info = { VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO };
    pipeline_layout_info.pSetLayouts = vk_layouts;
    pipeline_layout_info.setLayoutCount = creation.num_active_layouts + bindless_active;

    VkPipelineLayout pipeline_layout;
    check( vkCreatePipelineLayout( vulkan_device, &pipeline_layout_info, vulkan_allocation_callbacks, &pipeline_layout ) );

```

# 7. Descriptor Set Binding at Draw

The final (c++ wise) step is to bind the bindless set, here in command buffer code:

```

void CommandBuffer::bind_resource_list( uint64_t sort_key, ResourceListHandle* handles, uint32_t num_lists, uint32_t* offsets, uint32_t num_offsets ) {
// ...

static const u32 k_first_set = 0;
vkCmdBindDescriptorSets( vk_command_buffer, current_pipeline->vk_bind_point, current_pipeline->vk_pipeline_layout, k_first_set,
                         num_lists, vk_descriptor_sets, num_offsets, offsets_cache );

if ( device->bindless_supported ) {
    static const u32 k_bindless_set = 1;
    vkCmdBindDescriptorSets( vk_command_buffer, current_pipeline->vk_bind_point, current_pipeline->vk_pipeline_layout, k_bindless_set,
                             1, &device->vulkan_bindless_descriptor_set, 0, nullptr );
}

```

# 8. GLSL shader!

And here the modified code for the shader.  

Albedo index can come from anywhere, for fullscreen triangle I use the trick of using the instance id for example!

```

#extension GL_EXT_nonuniform_qualifier : enable

layout (set = 1, binding = 10) uniform sampler2D textures[];

vec4 color = texture( textures[albedo_id], final_uv.xy );

```

# Conclusions

We saw the minimal code needed to have a fully working bindless texture implementation in Vulkan.  

API-Wise this is not the best, with hardcoded values, Vulkan only global descriptor and such, but it is a jumpstart to experiment with the feature.  

I will cleanup this code and update the library in the future, but this should already be a way to start bindlessly coding.

Happy Bindless!

    

    

    

  
  [vulkan](/tags/vulkan/)
  
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
          
        
      

    
  

      
      
    

    

    

  

      

    
    
    
    
    

    
    
    
      
      
      
      

      
        
      

      
        
        
        
        
        
      

      
      
      
      
    

    
    

    
    
    
    

    
    
    
    

    
    

    
    
    
    

    
    
    
    
    

    
    

    
    
    
    
    
    
    
    
    
      
    
    
    
    
    

    

  
  
    

  
  

  

  
    
      
        

##### Cite

        
          ×
        
      
      
        

```

```

      
      
        **[Copy](#)
        **[Download](#)
