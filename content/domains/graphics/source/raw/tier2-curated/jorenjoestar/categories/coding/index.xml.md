---
source_url: https://jorenjoestar.github.io/categories/coding/index.xml
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:32:00.827735+00:00
fetcher: html_mirror
sha256: cffc28c40429913c20b21ecd6fc306f4c1aa5fce27873f2f0c5cc29ba91d20a5
---

coding on Gabriel's Virtual Tavern
    https://jorenjoestar.github.io/categories/coding/
    Recent content in coding on Gabriel's Virtual Tavern
    Source Themes Academic (https://sourcethemes.com/academic/)
    en-us
    Sun, 19 Dec 2021 21:36:41 +0100
    
	    
    
    
    
      Modern (Bindless) Sprite Batch for Vulkan (and more!)
      https://jorenjoestar.github.io/post/modern_sprite_batch/
      Sun, 19 Dec 2021 21:36:41 +0100
      
      https://jorenjoestar.github.io/post/modern_sprite_batch/
      

<figure>

  <a data-fancybox="" href="bindless_spritebatch.png" >

<img src="bindless_spritebatch.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>The sprites rendered with 1 draw call using the techniques described in this article.</h4>
  
</figcaption>

</figure>

<h1 id="overview">Overview</h1>
<p>Sprite batching is one of the fundamental techniques used in almost all pixel art games (that are lovingly back in town after the first era of 3D), and yet I never found any recent documentation.<br>
Since the <a href="https://jorenjoestar.github.io/post/vulkan_bindless_texture/">Bindless Age has started</a> old algorithms can be implemented in new ways.</p>
<p>In this short article I would like to talk about how easy is to manage sprites, including UI, with the <em>bindless</em> model.</p>
<h1 id="sprite-batching-how-">Sprite Batching: how ?</h1>
<p>Sprite batching is a way of reducing the number of draw calls (still something to not abuse) by grouping them based on similar properties.</p>
<p>Normally when batching sprites, we would submit a batch of sprites when any texture would change, an operation that could be reduced by using texture atlases.<br>
For tiles this can be more easily done, but for characters with a lot of complex sprite sheets it is harder.</p>
<p>We would have something like (pseudocode):</p>
<pre tabindex="0"><code>for each sprite
   sprite_batch.set( sprite.texture )
   sprite_batch.draw( x, y, width, height )
</code></pre><p>The &lsquo;set&rsquo; method would check if the current texture is differen than the sprite one, and if so then it would submit the accumulated sprites, then cache the sprite texture and start filling the new sprites.</p>
<p>A good code to check is the one for <a href="https://github.com/libgdx/libgdx/blob/master/gdx/src/com/badlogic/gdx/graphics/g2d/SpriteBatch.java">libGDX sprite batching</a>.</p>
<p>Can we do better ? The answer is yes!</p>
<h1 id="sprite-batch-caching">Sprite Batch: caching</h1>
<p>To have an effective Sprite Batch we need to cache some informations in order to know when to group sprites and when not.
A possible list is the following:</p>
<ul>
<li>Render States (depth, blend, &hellip;)</li>
<li>Vertex Layouts</li>
<li>Shader</li>
<li>Textures</li>
</ul>
<p>In <em>Vulkan</em> world, render states, shader and vertex layouts are all included into a <em>pipeline</em>.
But Textures ?<br>
They are in used in <em>descriptor sets</em>, but with bindless we can simply ignore them, because they are passed down as integers into constants.</p>
<p>Render states, vertex layouts and shaders are all inside a <em>Pipeline State Object</em>, so the only caching really needed here is:</p>
<ul>
<li>Pipeline</li>
<li>Descriptor Set</li>
</ul>
<p>We still need to differentiate shaders that use different constant/structured buffers, but otherwise we can share a common shader!</p>
<p>The core of the caching is in <strong>sprite_batch.cpp</strong>:</p>
<pre tabindex="0"><code>void SpriteBatch::set( hydra::gfx::PipelineHandle pipeline, hydra::gfx::ResourceListHandle resource_list ) {
    using namespace hydra::gfx;

    if ( current_pipeline.index != k_invalid_pipeline.index &amp;&amp; current_resource_list.index != k_invalid_list.index &amp;&amp;
         ( current_pipeline.index != pipeline.index )) {
        // Add a batch
        DrawBatch batch { current_pipeline, current_resource_list, previous_offset, num_sprites - previous_offset };
        draw_batches.push( batch );
    }

    previous_offset = num_sprites;

    current_pipeline = pipeline;
    current_resource_list = resource_list;
}

</code></pre><p>We use the <em>pipeline</em> and the <em>resource list</em> as informations to know when a batch should be changed.</p>
<h2 id="passing-texture-index-to-the-gpu">Passing texture index to the GPU</h2>
<p>As we saw in the previous article, with bindless we define a global array of textures and we simply index into it using shader constants or other tricks (more on that later).</p>
<pre tabindex="0"><code>// (glsl code), Platform.h:
#if defined(HYDRA_BINDLESS)

#extension GL_EXT_nonuniform_qualifier : enable

layout ( set = 1, binding = 10 ) uniform sampler2D textures[];
// Use aliasing to sample any kind of texture using one single bindless texture array:
layout ( set = 1, binding = 10 ) uniform sampler3D textures_3d[];

#endif // HYDRA_BINDLESS

</code></pre><p>In our implementation we will use <strong>per-instance sprite data</strong> to encode the texture id.</p>
<pre tabindex="0"><code>//
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
</code></pre><p>In this case we use <em>flag1</em> as the index containing the texture to read.<br>
In Hydra I have a freelist for all rendering resources, so I can always use the texture index without worrying about index collisions and such.</p>
<h2 id="sprite-shader">Sprite Shader</h2>
<p>The sprite shader can be modified to include uints as vertex layout inputs, and pass the a flat uint to the fragment program:</p>
<pre tabindex="0"><code>#if defined VERTEX
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

</code></pre><p>We can now sample the texture in the fragment program easily.</p>
<p><strong>NOTE</strong> in Vulkan we need an additional keyword to properly sample a texture in the bindless model without incurring in problems, and this is the <strong>nonuniformEXT</strong> keyword.<br>
Thanks to Christian Forfang for the email, I totally forgot about that!<br>
I&rsquo;ve added a toggle so you can see the problems that could happen when you don&rsquo;t include that keyword.<br>
The correct shader is this:</p>
<pre tabindex="0"><code> #if defined FRAGMENT

  #pragma include &quot;platform.h&quot;

  layout (location = 0) in vec4 uv_alpha;
  // NOTE: flat attribute!
  layout (location = 1) flat in uint albedo_id;

  layout (location = 0) out vec4 out_color;

void main() {

      vec4 color = texture( textures[nonuniformEXT(albedo_id)], uv_alpha.xy );

</code></pre><p>By simply passing the uint in the instance data we have what we need to render any sprite.</p>
<h2 id="non-uniform-ext-keyword-importance">Non-Uniform-EXT keyword importance</h2>
<p>There is an incredibly informative blog post about the <strong>nonuniformEXT</strong> on <a href="https://anki3d.org/resource-uniformity-bindless-access-in-vulkan/">Anki 3D blog</a>, as well as the <a href="https://github.com/KhronosGroup/Vulkan-Samples/tree/master/samples/extensions/descriptor_indexing#non-uniform-indexing">spec itself</a>.<br>
Again thanks a lot to Christian Forfang to point out the missing keyword. I could see the problem without the keyword only on my integrated AMD card from my AMD 5900HX CPU, not on my Nvidia 2070, but it is great to be aware of these kind of problems.</p>
<p>Here I highlighted the problem as you can see without that keyword:</p>

<figure>

  <a data-fancybox="" href="bindless_spritebatch_nonuniform_missing.png" >

<img src="bindless_spritebatch_nonuniform_missing.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Non synchronized pixels for missing nonuniformEXT keyword</h4>
  
</figcaption>

</figure>

<p>I also updated the code so you can choose when to disable it and see the problem yourself.</p>
<h2 id="one-draw-call">One draw call</h2>

<figure>

  <a data-fancybox="" href="bindless_spritebatch_renderdoc.png" >

<img src="bindless_spritebatch_renderdoc.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>RenderDoc truth: 1 draw call for the background, 1 for all those sprites!</h4>
  
</figcaption>

</figure>

<p>As we can see from this RenderDoc capture we are using an instanced draw call with bindless to render all the sprites on the screen in this demo, even though they are coming from 5 different files!<br>
If we can have similar shaders (and many times for pixel art games we CAN), then it is guaranteed that draw calls will be kept at minimum.</p>
<p>We can use SSBO/StructuredBuffer with more per instance data to further specialize the shader without changing the sprites (like <a href="https://wickedengine.net/2017/06/05/should-we-get-rid-of-vertex-buffers/">manual vertex pulling</a>) but as always, numbers will tell what is better for your application, and finding a balance between draw calls, permutations and shader complexity is paramount!</p>
<h1 id="bonus-post-process-bindless-trick">Bonus: post-process bindless trick</h1>
<p>A trick I started using with bindless for post-process shaders is to use the <strong>instance id</strong> as texture index to be retrieved into the shader!<br>
You can use <em>push constants</em> as well, but I figured something even simpler would work.</p>
<pre tabindex="0"><code>// Pass through from main rt to swapchain
cb-&gt;bind_pass( sort_key++, renderer-&gt;gpu-&gt;swapchain_pass );

cb-&gt;bind_pipeline( sort_key++, debug_gpu_font_material-&gt;passes[ gpu_text::pass_through ].pipeline );
cb-&gt;bind_resource_list( sort_key++, &amp;debug_gpu_font_material-&gt;passes[ gpu_text::pass_through ].resource_list, 1, 0, 0 );
// Use first_instance to retrieve texture ID for bindless use.
cb-&gt;draw( sort_key++, hydra::gfx::TopologyType::Triangle, 0, 3, main_texture-&gt;handle.index, 1 );
</code></pre><p>We have only 1 instance of the fullscreen triangle, and the instance index tells us the texture index.</p>
<pre tabindex="0"><code>#if defined VERTEX

layout (location = 0) out vec2 vTexCoord;
layout (location = 1) flat out uint texture_id;

void main() {

    vTexCoord.xy = vec2((gl_VertexID &lt;&lt; 1) &amp; 2, gl_VertexID &amp; 2);
    gl_Position = vec4(vTexCoord.xy * 2.0f - 1.0f, 0.0f, 1.0f);
    // If rendering to a RenderTarget, flip Y
    gl_Position.y = -gl_Position.y;

    // Using instance index to simply read an uint
    // storing the texture index in the bindless array.
    texture_id = gl_InstanceIndex;
</code></pre><h1 id="bonus2-imgui-rendering">Bonus2: ImGUI rendering</h1>
<p>A similar trick can be found inside the <strong>Hydra ImGui backend</strong>, using texture ids:</p>
<pre tabindex="0"><code>void ImGuiService::render( hydra::gfx::Renderer* renderer, hydra::gfx::CommandBuffer&amp; commands ) {
  ...

  TextureHandle new_texture = *(TextureHandle*)( pcmd-&gt;TextureId );
  ...
  commands.draw_indexed( sort_key++, hydra::gfx::TopologyType::Triangle, pcmd-&gt;ElemCount, 1, index_buffer_offset + pcmd-&gt;IdxOffset, vtx_buffer_offset + pcmd-&gt;VtxOffset, new_texture.index );

</code></pre><p>With bindless there is no need to create different descriptor sets based on the texture used by the ImGUI window, and with the instance index we can again draw every texture in a simple way!</p>
<h1 id="conclusion">Conclusion</h1>
<p>In this article we saw a simple way to evolve a sprite batch to group sprites without the need to worry about texture changes.<br>
For ages this was the main parameter to separate batches, but with bindless active is not anymore.<br>
Furthermore, <em>Pipeline State Objects</em> contains most of the informations needed to know if something has changed from a render state/layout perspective, and we can balance out dynamic parts of the pipeline to cache even more.</p>
<p>As awlays if you enjoyed this article please comment, share, send feedback!
Gabriel</p>

    
    
    
      Vulkan Pills 1: Bindless Textures
      https://jorenjoestar.github.io/post/vulkan_bindless_texture/
      Mon, 01 Nov 2021 18:44:17 +0100
      
      https://jorenjoestar.github.io/post/vulkan_bindless_texture/
      <h1 id="overview">Overview</h1>
<p>Here is a very short article on how to use Vulkan bindless features.</p>
<p>All the relevant <em>c++</em> code is into <a href="https://github.com/JorenJoestar/DataDrivenRendering/blob/master/source/hydra_next/source/graphics/gpu_device_vulkan.cpp">gpu_device_vulkan.cpp</a> and <a href="https://github.com/JorenJoestar/DataDrivenRendering/blob/master/source/hydra_next/source/graphics/command_buffer.cpp">command_buffer.cpp</a>, and you can follow along <strong>HYDRA_BINDLESS</strong> defines to see what changes.</p>
<p><strong>THIS IS THE FASTEST ROUTE TO START USING BINDLESS TEXTURES THAT I KNOW OF</strong>.<br>
This means also that is architecturally not optimal but it will serve its purposes!</p>
<p>There is a great article about the different features used here at <a href="https://community.arm.com/arm-community-blogs/b/graphics-gaming-and-vr-blog/posts/vulkan-descriptor-indexing">arm</a>, check it out first!</p>
<h1 id="1-querying-for-gpu-support">1. Querying for GPU support</h1>
<p>In a pure Vulkan way, we want to query for the support of a couple of features, like this:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">VkPhysicalDeviceDescriptorIndexingFeatures indexing_features{ VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT, <span style="color:#66d9ef">nullptr</span> };
VkPhysicalDeviceFeatures2 device_features{ VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2, <span style="color:#f92672">&amp;</span>indexing_features };

vkGetPhysicalDeviceFeatures2( vulkan_physical_device, <span style="color:#f92672">&amp;</span>device_features );

<span style="color:#66d9ef">bool</span> bindless_supported <span style="color:#f92672">=</span> indexing_features.descriptorBindingPartiallyBound <span style="color:#f92672">&amp;&amp;</span> indexing_features.runtimeDescriptorArray;
</code></pre></div><h1 id="2-enabling-gpu-features">2. Enabling GPU features</h1>
<p>I will put a little more context here.<br>
With this code we enable all possible supported features, thus when we create the device we already have pNext used.<br>
Being a linked list, to add more features to a device we need to add another link to our indexing features created above:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">
    <span style="color:#75715e">// Enable all features: just pass the physical features 2 struct.
</span><span style="color:#75715e"></span>    VkPhysicalDeviceFeatures2 physical_features2 <span style="color:#f92672">=</span> { VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2 };
    vkGetPhysicalDeviceFeatures2( vulkan_physical_device, <span style="color:#f92672">&amp;</span>physical_features2 );

    VkDeviceCreateInfo device_create_info <span style="color:#f92672">=</span> {};
    device_create_info.sType <span style="color:#f92672">=</span> VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
    device_create_info.queueCreateInfoCount <span style="color:#f92672">=</span> <span style="color:#66d9ef">sizeof</span>( queue_info ) <span style="color:#f92672">/</span> <span style="color:#66d9ef">sizeof</span>( queue_info[ <span style="color:#ae81ff">0</span> ] );
    device_create_info.pQueueCreateInfos <span style="color:#f92672">=</span> queue_info;
    device_create_info.enabledExtensionCount <span style="color:#f92672">=</span> device_extension_count;
    device_create_info.ppEnabledExtensionNames <span style="color:#f92672">=</span> device_extensions;
    device_create_info.pNext <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>physical_features2;

<span style="color:#75715e">#if defined(HYDRA_BINDLESS)
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">if</span> ( bindless_supported ) {
        <span style="color:#75715e">// This should be already set to VK_TRUE, as we queried before.
</span><span style="color:#75715e"></span>        indexing_features.descriptorBindingPartiallyBound <span style="color:#f92672">=</span> VK_TRUE;
        indexing_features.runtimeDescriptorArray <span style="color:#f92672">=</span> VK_TRUE;

        physical_features2.pNext <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>indexing_features;
    }
<span style="color:#75715e">#endif </span><span style="color:#75715e">// HYDRA_BINDLESS
</span><span style="color:#75715e"></span>
    result <span style="color:#f92672">=</span> vkCreateDevice( vulkan_physical_device, <span style="color:#f92672">&amp;</span>device_create_info, vulkan_allocation_callbacks, <span style="color:#f92672">&amp;</span>vulkan_device );
    check( result );
</code></pre></div><h1 id="3-descriptor-pool-creation">3. Descriptor Pool Creation</h1>
<p>When creating the Descriptor Pool, we need to add the <em>flag VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT</em>.<br>
This is needed so we can update textures in the bindless array without any problem or validation error.<br>
Still we need to be sure to not change a used resource in command buffers that are running!</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">  <span style="color:#66d9ef">static</span> <span style="color:#66d9ef">const</span> u32 k_max_bindless_resources <span style="color:#f92672">=</span> <span style="color:#ae81ff">16536</span>;
  <span style="color:#75715e">// Create bindless descriptor pool
</span><span style="color:#75715e"></span>  VkDescriptorPoolSize pool_sizes_bindless[] <span style="color:#f92672">=</span>
  {
      { VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, k_max_bindless_resources }
  };
  
  <span style="color:#75715e">// Update after bind is needed here, for each binding and in the descriptor set layout creation.
</span><span style="color:#75715e"></span>  pool_info.flags <span style="color:#f92672">=</span> VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT;
  pool_info.maxSets <span style="color:#f92672">=</span> k_max_bindless_resources <span style="color:#f92672">*</span> ArraySize( pool_sizes_bindless );
  pool_info.poolSizeCount <span style="color:#f92672">=</span> ( u32 )ArraySize( pool_sizes_bindless );
  pool_info.pPoolSizes <span style="color:#f92672">=</span> pool_sizes_bindless;
  result <span style="color:#f92672">=</span> vkCreateDescriptorPool( vulkan_device, <span style="color:#f92672">&amp;</span>pool_info, vulkan_allocation_callbacks, <span style="color:#f92672">&amp;</span>vulkan_descriptor_pool_bindless );
</code></pre></div><h1 id="4-global-descriptorsetdescriptor-layout-creation">4. Global DescriptorSet/Descriptor Layout Creation</h1>
<p>At this point we create a <em>global</em> descriptor layout and a <em>global</em> descriptor set.<br>
This is just because we want the fastest route to use bindless, but architecturally speaking is not the best.</p>
<p>First we create the Descriptor Set Layout with at least the flags <em>VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT</em> and <em>VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT</em> .<br>
These are needed because we will not fill all the array elements of the bindless array (partially bound flag) and we will update when a new texture is added to the device (update after bind).<br>
Also adding the Variable Descriptor Count in case we want more than one descriptor layout /set with a bindless array:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">    <span style="color:#75715e">// Create bindless global descriptor layout.
</span><span style="color:#75715e"></span>    {
        VkDescriptorBindingFlags bindless_flags <span style="color:#f92672">=</span> VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT <span style="color:#f92672">|</span> VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT <span style="color:#f92672">|</span> VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT;

        VkDescriptorSetLayoutBinding vk_binding;
        vk_binding.descriptorType <span style="color:#f92672">=</span> VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
        vk_binding.descriptorCount <span style="color:#f92672">=</span> k_max_bindless_resources;
        vk_binding.binding <span style="color:#f92672">=</span> k_bindless_texture_binding;
        
        vk_binding.stageFlags <span style="color:#f92672">=</span> VK_SHADER_STAGE_ALL;
        vk_binding.pImmutableSamplers <span style="color:#f92672">=</span> <span style="color:#66d9ef">nullptr</span>;

        VkDescriptorSetLayoutCreateInfo layout_info <span style="color:#f92672">=</span> { VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO };
        layout_info.bindingCount <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>;
        layout_info.pBindings <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>vk_binding;
        layout_info.flags <span style="color:#f92672">=</span> VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT;

        VkDescriptorSetLayoutBindingFlagsCreateInfoEXT extended_info{ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT, <span style="color:#66d9ef">nullptr</span> };
        extended_info.bindingCount <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>;
        extended_info.pBindingFlags <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>bindless_flags;

        layout_info.pNext <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>extended_info;

        vkCreateDescriptorSetLayout( vulkan_device, <span style="color:#f92672">&amp;</span>layout_info, vulkan_allocation_callbacks, <span style="color:#f92672">&amp;</span>vulkan_bindless_descriptor_layout );
</code></pre></div><p>At this point we create the actual descriptor set from the bindless pool:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">        VkDescriptorSetAllocateInfo alloc_info{ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO };
        alloc_info.descriptorPool <span style="color:#f92672">=</span> vulkan_descriptor_pool_bindless;
        alloc_info.descriptorSetCount <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>;
        alloc_info.pSetLayouts <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>vulkan_bindless_descriptor_layout;

        VkDescriptorSetVariableDescriptorCountAllocateInfoEXT count_info{ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT };
        u32 max_binding <span style="color:#f92672">=</span> k_max_bindless_resources <span style="color:#f92672">-</span> <span style="color:#ae81ff">1</span>;
        count_info.descriptorSetCount <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>;
        <span style="color:#75715e">// This number is the max allocatable count
</span><span style="color:#75715e"></span>        count_info.pDescriptorCounts <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>max_binding;
        alloc_info.pNext <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>count_info;

        check_result( vkAllocateDescriptorSets( vulkan_device, <span style="color:#f92672">&amp;</span>alloc_info, <span style="color:#f92672">&amp;</span>vulkan_bindless_descriptor_set ) );
    }
</code></pre></div><h1 id="5-texture-upload">5. Texture Upload</h1>
<p>At this point whenever we create a new texture we can update the global bindless descriptor set.<br>
I prefer to batch this and do it at the end of the frame, here it is:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++"><span style="color:#66d9ef">if</span> ( num_texture_updates ) {
    <span style="color:#75715e">// Handle deferred writes to bindless textures.
</span><span style="color:#75715e"></span>    <span style="color:#75715e">// TODO: use dynamic array instead.
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">static</span> <span style="color:#66d9ef">constexpr</span> u32 k_num_writes_per_frame <span style="color:#f92672">=</span> <span style="color:#ae81ff">16</span>;
    VkWriteDescriptorSet bindless_descriptor_writes[ k_num_writes_per_frame ];
    VkDescriptorImageInfo bindless_image_info[ k_num_writes_per_frame ];

    u32 current_write_index <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
    <span style="color:#66d9ef">for</span> ( i32 it <span style="color:#f92672">=</span> num_texture_updates <span style="color:#f92672">-</span> <span style="color:#ae81ff">1</span>; it <span style="color:#f92672">&gt;=</span> <span style="color:#ae81ff">0</span>; it<span style="color:#f92672">--</span> ) {
        ResourceUpdate<span style="color:#f92672">&amp;</span> texture_to_update <span style="color:#f92672">=</span> texture_to_update_bindless[ it ];

        <span style="color:#66d9ef">if</span> ( current_write_index <span style="color:#f92672">==</span> k_num_writes_per_frame )
            <span style="color:#66d9ef">break</span>;

        TextureVulkan<span style="color:#f92672">*</span> texture <span style="color:#f92672">=</span> access_texture( { texture_to_update.handle } );
        VkWriteDescriptorSet<span style="color:#f92672">&amp;</span> descriptor_write <span style="color:#f92672">=</span> bindless_descriptor_writes[ current_write_index ];
        descriptor_write <span style="color:#f92672">=</span> { VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET };
        descriptor_write.descriptorCount <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>;
        descriptor_write.dstArrayElement <span style="color:#f92672">=</span> texture<span style="color:#f92672">-&gt;</span>handle.index;
        descriptor_write.descriptorType <span style="color:#f92672">=</span> VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
        descriptor_write.dstSet <span style="color:#f92672">=</span> vulkan_bindless_descriptor_set;
        descriptor_write.dstBinding <span style="color:#f92672">=</span> k_bindless_texture_binding;

        SamplerVulkan<span style="color:#f92672">*</span> vk_default_sampler <span style="color:#f92672">=</span> access_sampler( default_sampler );
        VkDescriptorImageInfo<span style="color:#f92672">&amp;</span> descriptor_image_info <span style="color:#f92672">=</span> bindless_image_info[ current_write_index ];
        descriptor_image_info.sampler <span style="color:#f92672">=</span> vk_default_sampler<span style="color:#f92672">-&gt;</span>vk_sampler;
        descriptor_image_info.imageView <span style="color:#f92672">=</span> texture<span style="color:#f92672">-&gt;</span>vk_image_view;
        descriptor_image_info.imageLayout <span style="color:#f92672">=</span> VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
        descriptor_write.pImageInfo <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>descriptor_image_info;

        texture_to_update.current_frame <span style="color:#f92672">=</span> u32_max;

        texture_to_update_bindless[ it ] <span style="color:#f92672">=</span> texture_to_update_bindless[ <span style="color:#f92672">--</span>num_texture_updates ];

        <span style="color:#f92672">++</span>current_write_index;
    }

    <span style="color:#66d9ef">if</span> ( current_write_index ) {
        vkUpdateDescriptorSets( vulkan_device, current_write_index, bindless_descriptor_writes, <span style="color:#ae81ff">0</span>, <span style="color:#66d9ef">nullptr</span> );
    }
}
</code></pre></div><h1 id="6-adding-the-bindless-descriptor-layout-to-layouts">6. Adding the Bindless Descriptor Layout to layouts</h1>
<p>Again a quick and dirty example of adding the bindless layout to every layout:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">
u32 bindless_active <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
<span style="color:#75715e">#if defined(HYDRA_BINDLESS)
</span><span style="color:#75715e"></span>    vk_layouts[ creation.num_active_layouts ] <span style="color:#f92672">=</span> vulkan_bindless_descriptor_layout;
    bindless_active <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>;
<span style="color:#75715e">#endif
</span><span style="color:#75715e"></span>
    VkPipelineLayoutCreateInfo pipeline_layout_info <span style="color:#f92672">=</span> { VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO };
    pipeline_layout_info.pSetLayouts <span style="color:#f92672">=</span> vk_layouts;
    pipeline_layout_info.setLayoutCount <span style="color:#f92672">=</span> creation.num_active_layouts <span style="color:#f92672">+</span> bindless_active;

    VkPipelineLayout pipeline_layout;
    check( vkCreatePipelineLayout( vulkan_device, <span style="color:#f92672">&amp;</span>pipeline_layout_info, vulkan_allocation_callbacks, <span style="color:#f92672">&amp;</span>pipeline_layout ) );
</code></pre></div><h1 id="7-descriptor-set-binding-at-draw">7. Descriptor Set Binding at Draw</h1>
<p>The final (c++ wise) step is to bind the bindless set, here in command buffer code:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">
<span style="color:#66d9ef">void</span> CommandBuffer<span style="color:#f92672">::</span>bind_resource_list( <span style="color:#66d9ef">uint64_t</span> sort_key, ResourceListHandle<span style="color:#f92672">*</span> handles, <span style="color:#66d9ef">uint32_t</span> num_lists, <span style="color:#66d9ef">uint32_t</span><span style="color:#f92672">*</span> offsets, <span style="color:#66d9ef">uint32_t</span> num_offsets ) {
<span style="color:#75715e">// ...
</span><span style="color:#75715e"></span>
<span style="color:#66d9ef">static</span> <span style="color:#66d9ef">const</span> u32 k_first_set <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
vkCmdBindDescriptorSets( vk_command_buffer, current_pipeline<span style="color:#f92672">-&gt;</span>vk_bind_point, current_pipeline<span style="color:#f92672">-&gt;</span>vk_pipeline_layout, k_first_set,
                         num_lists, vk_descriptor_sets, num_offsets, offsets_cache );

<span style="color:#66d9ef">if</span> ( device<span style="color:#f92672">-&gt;</span>bindless_supported ) {
    <span style="color:#66d9ef">static</span> <span style="color:#66d9ef">const</span> u32 k_bindless_set <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>;
    vkCmdBindDescriptorSets( vk_command_buffer, current_pipeline<span style="color:#f92672">-&gt;</span>vk_bind_point, current_pipeline<span style="color:#f92672">-&gt;</span>vk_pipeline_layout, k_bindless_set,
                             <span style="color:#ae81ff">1</span>, <span style="color:#f92672">&amp;</span>device<span style="color:#f92672">-&gt;</span>vulkan_bindless_descriptor_set, <span style="color:#ae81ff">0</span>, <span style="color:#66d9ef">nullptr</span> );
}
</code></pre></div><h1 id="8-glsl-shader">8. GLSL shader!</h1>
<p>And here the modified code for the shader.<br>
Albedo index can come from anywhere, for fullscreen triangle I use the trick of using the instance id for example!</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c" data-lang="c">
<span style="color:#75715e">#extension GL_EXT_nonuniform_qualifier : enable
</span><span style="color:#75715e"></span>
layout (set <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>, binding <span style="color:#f92672">=</span> <span style="color:#ae81ff">10</span>) uniform sampler2D textures[];

vec4 color <span style="color:#f92672">=</span> texture( textures[albedo_id], final_uv.xy );

</code></pre></div><h1 id="conclusions">Conclusions</h1>
<p>We saw the minimal code needed to have a fully working bindless texture implementation in Vulkan.<br>
API-Wise this is not the best, with hardcoded values, Vulkan only global descriptor and such, but it is a jumpstart to experiment with the feature.<br>
I will cleanup this code and update the library in the future, but this should already be a way to start bindlessly coding.</p>
<p>Happy Bindless!</p>

    
    
    
      Gpu Driven Text
      https://jorenjoestar.github.io/post/gpu_driven_text/gpu_driven_text/
      Tue, 26 Oct 2021 19:34:19 +0200
      
      https://jorenjoestar.github.io/post/gpu_driven_text/gpu_driven_text/
      <h1 id="overview">Overview</h1>
<p>Recently on Twitter there was an interesting conversation about <a href="https://twitter.com/BelgianRenderer/status/1451990908757372929"><em>GPU-Driven line rendering</em></a>.<br>
This reminded me of a system that I use to render values that live only on the GPU, like GPU VFX: it gives you the possibility to output text and values from shaders!</p>
<p>Normally these values can be mapped and read back into the GPU, but sometimes can be easier to just write them from a shader.</p>
<p>I remember seeing this incredible <a href="https://www.shadertoy.com/view/wdSSD1">shadertoy</a> and being in awe: a never-done pet project of mine was to create a game only on the GPU, but instead I use it in standard ways many times.<br>
Here we are rendering&hellip;text straight from a shader ? WHAT ?</p>
<p>The idea comes from <a href="https://glslsandbox.com/e#35231.0">this article</a> as far as I understood, but the idea is the following: <strong>compress each character data into an array of 4 floats (vec4/float4), with each component being the packed bits of one quadrant</strong>, and given an UV reconstruct the shape of the character.</p>
<p>Taken straight from that website as deeper explanation:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C"><span style="color:#75715e">/*
</span><span style="color:#75715e">--------
</span><span style="color:#75715e">-███----
</span><span style="color:#75715e">██-██---
</span><span style="color:#75715e">██-██---
</span><span style="color:#75715e">-███----
</span><span style="color:#75715e">█████-█-
</span><span style="color:#75715e">██-████-
</span><span style="color:#75715e">██--██--
</span><span style="color:#75715e">██-███--
</span><span style="color:#75715e">-███-██-
</span><span style="color:#75715e">--------
</span><span style="color:#75715e">--------
</span><span style="color:#75715e">
</span><span style="color:#75715e">00000000
</span><span style="color:#75715e">01110000
</span><span style="color:#75715e">11011000
</span><span style="color:#75715e">11011000
</span><span style="color:#75715e">01110000
</span><span style="color:#75715e">11111010
</span><span style="color:#75715e">11011110
</span><span style="color:#75715e">11001100
</span><span style="color:#75715e">11011100
</span><span style="color:#75715e">01110110
</span><span style="color:#75715e">00000000
</span><span style="color:#75715e">00000000
</span><span style="color:#75715e">
</span><span style="color:#75715e">//Broken up into 4 8x3 (24 bit) chunks for each component of the vec4.
</span><span style="color:#75715e">//Hexadecimal is being used to reduce clutter in the code but decimal still works.
</span><span style="color:#75715e">
</span><span style="color:#75715e">00000000
</span><span style="color:#75715e">01110000 -&gt; 00000000 01110000 11011000 -&gt; 0x0070D8
</span><span style="color:#75715e">11011000
</span><span style="color:#75715e">
</span><span style="color:#75715e">11011000
</span><span style="color:#75715e">01110000 -&gt; 11011000 01110000 11111010 -&gt; 0xD870FA
</span><span style="color:#75715e">11111010
</span><span style="color:#75715e">
</span><span style="color:#75715e">11011110
</span><span style="color:#75715e">11001100 -&gt; 11011110 11001100 11011100 -&gt; 0xDECCDC
</span><span style="color:#75715e">11011100
</span><span style="color:#75715e">
</span><span style="color:#75715e">01110110
</span><span style="color:#75715e">00000000 -&gt; 01110110 00000000 00000000 -&gt; 0x760000
</span><span style="color:#75715e">00000000
</span><span style="color:#75715e">
</span><span style="color:#75715e">vec4(0x0070D8,0xD870FA,0xDECCDC,0x760000)
</span><span style="color:#75715e">*/</span>
</code></pre></div><p>There is quite some bit trickery involved that I will not dwelve into, but the gist of it is simple, even though the process to arrive there must have been interesting!</p>
<p>Given these compressed fonts, we can use GPU buffers to store all the informations needed to write anything we want on the screen.</p>
<h1 id="the-solution">The Solution</h1>
<p>From a higher level view, what we will do is the following:</p>
<ul>
<li>Reserve some memory to write our text</li>
<li>Choose and save the position of the string, cache the reserved memory offset and count</li>
<li>Write a per-character dispatch information</li>
<li>Draw sprites with all those informations.</li>
</ul>
<h2 id="the-buffers">The Buffers</h2>
<p>We will use 4 different buffers to have this working. It can be improved honestly, but this is good enough for a debug only feature!</p>
<h3 id="data-and-atomics-buffer">Data and atomics buffer</h3>
<p>This buffer will contain the atomics and the data to be filled with each character of each string.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C"><span style="color:#75715e">// Common buffers used to render gpu driven font
</span><span style="color:#75715e"></span>layout (std430, binding<span style="color:#f92672">=</span><span style="color:#ae81ff">2</span>) buffer DebugGpuFontBuffer {
    uint        current_data_index;
    uint        current_entry_index;
    uint        padding1;
    uint        padding2;

    vec4        data[];
};
</code></pre></div><h3 id="entry-buffer">Entry buffer</h3>
<p>For each string we want to render, we need a position and where in the global data memory we need to read, thus offset and count.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C"><span style="color:#66d9ef">struct</span> DebugGPUStringEntry {
    <span style="color:#66d9ef">float</span>       x;
    <span style="color:#66d9ef">float</span>       y;
    uint        offset;
    uint        count;
};

layout (std430, binding<span style="color:#f92672">=</span><span style="color:#ae81ff">3</span>) buffer DebugGpuFontEntries {
    DebugGPUStringEntry entries[];
};
</code></pre></div><h3 id="dispatch-buffer">Dispatch buffer</h3>
<p>This buffer is used to generate draw for each character in the global data.<br>
We need this so that each character knows where it belongs in a string.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C">layout(std430, binding<span style="color:#f92672">=</span><span style="color:#ae81ff">4</span>) buffer DebugGPUFontDispatch {
    uvec4               dispatches[];
};
</code></pre></div><h3 id="indirect-buffer">Indirect buffer</h3>
<p>Final buffer is the one driving how many total characters we will draw.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C">layout(std430, binding<span style="color:#f92672">=</span><span style="color:#ae81ff">5</span>) buffer DebugGPUIndirect {
    uint            vertex_count;
    uint            instance_count;
    uint            first_vertex;
    uint            first_instance;

    uint            pad00;
    uint            pad01;
    uint            pad02;
    uint            pad03;
};
</code></pre></div><p>Now that we know the data used, let&rsquo;s see the algorithm itself.</p>
<h2 id="reserving-memory-and-writing-text-to-gpu-buffers">Reserving memory and writing text to GPU buffers</h2>
<p>The main ingredient for this solution is the possibility to write to StructuredBuffers/SSBOs (depending on the API of your choice) PLUS the usage of <em>atomic operations</em>.</p>
<p>These operations are possible since OpenGL 4+ (actually my initial implementation is on an OpenGL-backed engine), so all newer APIs are supported.</p>
<p>Let&rsquo;s have a look at some code, from the <strong>vertex shader of a sprite</strong>:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C"><span style="color:#75715e">// 1. Reserve memory
</span><span style="color:#75715e">// Reserve 1 entry, that will include position and where in the data buffer we will write our text.
</span><span style="color:#75715e"></span>uint entry_index <span style="color:#f92672">=</span> atomicAdd(current_entry_index, <span style="color:#ae81ff">1</span>);
<span style="color:#75715e">// Reserve 16 characters
</span><span style="color:#75715e"></span>uint data_index <span style="color:#f92672">=</span> atomicAdd(current_data_index, <span style="color:#ae81ff">16</span>);

<span style="color:#75715e">// 2. Cache string entry
</span><span style="color:#75715e">// Cache data offset and count. We will use this to drive the text rendering.
</span><span style="color:#75715e"></span>entries[entry_index].x <span style="color:#f92672">=</span> STRWIDTH(<span style="color:#ae81ff">5</span>);
entries[entry_index].y <span style="color:#f92672">=</span> STRHEIGHT(<span style="color:#ae81ff">5</span>);
entries[entry_index].offset <span style="color:#f92672">=</span> data_index;
entries[entry_index].count <span style="color:#f92672">=</span> <span style="color:#ae81ff">16</span>;

<span style="color:#75715e">// 3. Write actual text
</span><span style="color:#75715e">// MAVERICK: I did not found a better way to write this...
</span><span style="color:#75715e"></span>data[data_index] <span style="color:#f92672">=</span> ch_p;
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">1</span>] <span style="color:#f92672">=</span> ch_o;
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">2</span>] <span style="color:#f92672">=</span> ch_s;
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">3</span>] <span style="color:#f92672">=</span> ch_spc;
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">4</span>] <span style="color:#f92672">=</span> get_digit(position.x, <span style="color:#ae81ff">2</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">5</span>] <span style="color:#f92672">=</span> get_digit(position.x, <span style="color:#ae81ff">1</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">6</span>] <span style="color:#f92672">=</span> get_digit(position.x, <span style="color:#ae81ff">0</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">7</span>] <span style="color:#f92672">=</span> ch_per;
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">8</span>] <span style="color:#f92672">=</span> get_digit(position.x, <span style="color:#f92672">-</span><span style="color:#ae81ff">1</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">9</span>] <span style="color:#f92672">=</span> ch_com;
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">10</span>] <span style="color:#f92672">=</span> get_digit(position.y, <span style="color:#ae81ff">2</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">11</span>] <span style="color:#f92672">=</span> get_digit(position.y, <span style="color:#ae81ff">1</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">12</span>] <span style="color:#f92672">=</span> get_digit(position.y, <span style="color:#ae81ff">0</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">13</span>] <span style="color:#f92672">=</span> ch_per;
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">14</span>] <span style="color:#f92672">=</span> get_digit(position.y, <span style="color:#f92672">-</span><span style="color:#ae81ff">1</span>);
data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">15</span>] <span style="color:#f92672">=</span> ch_spc;
</code></pre></div><p>As we can see the way of writing the text is horrible, but it works.</p>
<p>We are first reserving memory using <em>atomic operations</em>.</p>
<p>We then cache the string informations, like position and where to access the global data.</p>
<p>Finally we write the text!</p>
<h2 id="generating-the-dispatch">Generating the dispatch</h2>
<p>Once we collected all the characters around, we need to generate the per-character dispatches and the indirect draw.<br>
I wrote a compute shader for that, optimizable, but good for the purpose here.<br>
It also writes another string with GPU data about the system itself:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C">layout (local_size_x <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>, local_size_y <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>, local_size_z <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>) in;
<span style="color:#66d9ef">void</span> <span style="color:#a6e22e">main</span>() {
    <span style="color:#75715e">// Write global label with gpu font system data
</span><span style="color:#75715e"></span>    uint entry_index <span style="color:#f92672">=</span> atomicAdd(current_entry_index, <span style="color:#ae81ff">1</span>);
    uint data_index <span style="color:#f92672">=</span> atomicAdd(current_data_index, <span style="color:#ae81ff">16</span>);

    data[data_index] <span style="color:#f92672">=</span> ch_t;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">1</span>] <span style="color:#f92672">=</span> ch_e;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">2</span>] <span style="color:#f92672">=</span> ch_s;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">3</span>] <span style="color:#f92672">=</span> ch_t;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">4</span>] <span style="color:#f92672">=</span> ch_spc;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">5</span>] <span style="color:#f92672">=</span> ch_h;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">6</span>] <span style="color:#f92672">=</span> ch_g;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">7</span>] <span style="color:#f92672">=</span> ch_per;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">8</span>] <span style="color:#f92672">=</span> ch_4;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">9</span>] <span style="color:#f92672">=</span> ch_spc;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">10</span>] <span style="color:#f92672">=</span> get_digit(current_data_index, <span style="color:#ae81ff">1</span>);
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">11</span>] <span style="color:#f92672">=</span> get_digit(current_data_index, <span style="color:#ae81ff">0</span>);
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">12</span>] <span style="color:#f92672">=</span> ch_spc;
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">13</span>] <span style="color:#f92672">=</span> get_digit(current_entry_index, <span style="color:#ae81ff">1</span>);
    data[data_index <span style="color:#f92672">+</span> <span style="color:#ae81ff">14</span>] <span style="color:#f92672">=</span> get_digit(current_entry_index, <span style="color:#ae81ff">0</span>);

    vec2 print_pos <span style="color:#f92672">=</span> floor(vec2(STRWIDTH(<span style="color:#ae81ff">5</span>), STRHEIGHT(<span style="color:#ae81ff">4</span>)));
    entries[entry_index].x <span style="color:#f92672">=</span> print_pos.x;
    entries[entry_index].y <span style="color:#f92672">=</span> print_pos.y;
    entries[entry_index].offset <span style="color:#f92672">=</span> data_index;
    entries[entry_index].count <span style="color:#f92672">=</span> <span style="color:#ae81ff">16</span>;
</code></pre></div><p>Here we are &ldquo;simply&rdquo; writing a string containing the indices used by the system, just to keep track of them.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C">    <span style="color:#75715e">// Write single character dispatch informations
</span><span style="color:#75715e"></span>    uint global_index <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
    <span style="color:#66d9ef">for</span> (uint e <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>; e <span style="color:#f92672">&lt;</span> current_entry_index; <span style="color:#f92672">++</span>e) {
      uint entry_data_index <span style="color:#f92672">=</span> entries[<span style="color:#ae81ff">0</span>].offset;
      <span style="color:#66d9ef">for</span> (uint i <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>; i <span style="color:#f92672">&lt;</span> entries[<span style="color:#ae81ff">0</span>].count; <span style="color:#f92672">++</span>i) {
        dispatches[global_index].x <span style="color:#f92672">=</span> e;
        dispatches[global_index].y <span style="color:#f92672">=</span> i;

        <span style="color:#f92672">++</span>global_index;
      }
    }
</code></pre></div><p>This is where we create the per character data.<br>
We can optimize this, probably using one uint instead of 4.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C">    <span style="color:#75715e">// Write indirect draw values
</span><span style="color:#75715e"></span>    vertex_count <span style="color:#f92672">=</span> <span style="color:#ae81ff">6</span>;
    instance_count <span style="color:#f92672">=</span> global_index;
    first_vertex <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
    first_instance <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
    pad00 <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
}
</code></pre></div><p>Finally we draw 2 triangles for each character data.</p>
<h2 id="indirect-rendering-of-the-gpu-driven-text">(Indirect) Rendering of the GPU Driven Text</h2>
<p>We are now ready to write the actual text on the screen!</p>
<p>Here is the final shader:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C"><span style="color:#75715e">#if defined VERTEX
</span><span style="color:#75715e"></span>
  layout (location <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>) out vec2 uv;
  layout (location <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>) flat out uint global_data_index;

  <span style="color:#75715e">// Per vertex positions and uvs of a quad
</span><span style="color:#75715e"></span>  vec3 positions[<span style="color:#ae81ff">6</span>]       <span style="color:#f92672">=</span> vec3[<span style="color:#ae81ff">6</span>]( vec3(<span style="color:#f92672">-</span><span style="color:#ae81ff">0.5</span>,<span style="color:#f92672">-</span><span style="color:#ae81ff">0.5</span>,<span style="color:#ae81ff">0</span>), vec3(<span style="color:#ae81ff">0.5</span>,<span style="color:#f92672">-</span><span style="color:#ae81ff">0.5</span>,<span style="color:#ae81ff">0</span>), vec3(<span style="color:#ae81ff">0.5</span>, <span style="color:#ae81ff">0.5</span>, <span style="color:#ae81ff">0</span>), vec3(<span style="color:#ae81ff">0.5</span>, <span style="color:#ae81ff">0.5</span>, <span style="color:#ae81ff">0</span>), vec3(<span style="color:#f92672">-</span><span style="color:#ae81ff">0.5</span>,<span style="color:#ae81ff">0.5</span>,<span style="color:#ae81ff">0</span>), vec3(<span style="color:#f92672">-</span><span style="color:#ae81ff">0.5</span>,<span style="color:#f92672">-</span><span style="color:#ae81ff">0.5</span>,<span style="color:#ae81ff">0</span>) );
  vec2 uvs[<span style="color:#ae81ff">6</span>]             <span style="color:#f92672">=</span> vec2[<span style="color:#ae81ff">6</span>]( vec2(<span style="color:#ae81ff">0.0</span>, <span style="color:#ae81ff">1.0</span>),    vec2(<span style="color:#ae81ff">1.0</span>, <span style="color:#ae81ff">1.0</span>),   vec2(<span style="color:#ae81ff">1.0</span>, <span style="color:#ae81ff">0.0</span>), vec2(<span style="color:#ae81ff">1.0</span>, <span style="color:#ae81ff">0.0</span>), vec2(<span style="color:#ae81ff">0.0</span>, <span style="color:#ae81ff">0.0</span>), vec2(<span style="color:#ae81ff">0.0</span>, <span style="color:#ae81ff">1.0</span>) );

  <span style="color:#66d9ef">void</span> <span style="color:#a6e22e">main</span>() {

      <span style="color:#66d9ef">const</span> uint vertex_index <span style="color:#f92672">=</span> gl_VertexID <span style="color:#f92672">%</span> <span style="color:#ae81ff">6</span>;
      <span style="color:#75715e">// Calculate UVs
</span><span style="color:#75715e"></span>      uv.xy <span style="color:#f92672">=</span> uvs[vertex_index];

      <span style="color:#75715e">// Sprite size
</span><span style="color:#75715e"></span>      <span style="color:#66d9ef">const</span> vec2 sprite_size <span style="color:#f92672">=</span> CHAR_SIZE;
      <span style="color:#75715e">// Calculate world position
</span><span style="color:#75715e"></span>      vec4 world_position <span style="color:#f92672">=</span> vec4( vec2(positions[ vertex_index ].xy <span style="color:#f92672">*</span> sprite_size ), <span style="color:#ae81ff">0</span>, <span style="color:#ae81ff">1</span> );

      uint global_char_index <span style="color:#f92672">=</span> gl_InstanceIndex;
      uint entry_index <span style="color:#f92672">=</span> dispatches[global_char_index].x;
      uint entry_char_index <span style="color:#f92672">=</span> dispatches[global_char_index].y;

      DebugGPUStringEntry entry <span style="color:#f92672">=</span> entries[entry_index];
      <span style="color:#75715e">// Calculate actual position from the start of the string
</span><span style="color:#75715e"></span>      world_position.xy <span style="color:#f92672">+=</span> vec2(entry.x <span style="color:#f92672">+</span> entry_char_index <span style="color:#f92672">*</span> sprite_size.x, entry.y);
      <span style="color:#75715e">// Move position to upper left corner
</span><span style="color:#75715e"></span>      world_position.xy <span style="color:#f92672">+=</span> sprite_size <span style="color:#f92672">*</span> <span style="color:#ae81ff">0.5f</span>;
      <span style="color:#75715e">// Pass entry data to read the final compressed font character
</span><span style="color:#75715e"></span>      global_data_index <span style="color:#f92672">=</span> entry.offset <span style="color:#f92672">+</span> entry_char_index;

      gl_Position <span style="color:#f92672">=</span> locals.projection_matrix_2d <span style="color:#f92672">*</span> world_position;

  }
  
  <span style="color:#75715e">#endif </span><span style="color:#75715e">// VERTEX
</span><span style="color:#75715e"></span>

  <span style="color:#75715e">#if defined FRAGMENT
</span><span style="color:#75715e"></span>
  layout (location <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>) in vec2 uv;
  layout (location <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span>) flat in uint global_data_index;

  layout (location <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>) out vec4 out_color;

  <span style="color:#66d9ef">void</span> <span style="color:#a6e22e">main</span>() {

    vec4 char_data <span style="color:#f92672">=</span> data[global_data_index];
    vec2 duv <span style="color:#f92672">=</span> uv <span style="color:#f92672">*</span> CHAR_SIZE;
    vec2 print_pos <span style="color:#f92672">=</span> vec2(<span style="color:#ae81ff">0</span>, <span style="color:#ae81ff">10</span>);
    <span style="color:#75715e">// Decompress char and color pixel!
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">float</span> textPixel <span style="color:#f92672">=</span> print_char(char_data, duv, print_pos);
      
    <span style="color:#66d9ef">if</span> (textPixel <span style="color:#f92672">&lt;</span> <span style="color:#ae81ff">0.01f</span>)
          discard;
      
    vec3 col <span style="color:#f92672">=</span> vec3(<span style="color:#ae81ff">1</span>);
    col <span style="color:#f92672">*=</span> mix(vec3(<span style="color:#ae81ff">0.2</span>),vec3(<span style="color:#ae81ff">0.5</span>,<span style="color:#ae81ff">1</span>,<span style="color:#ae81ff">0</span>),textPixel);
    out_color <span style="color:#f92672">=</span> vec4(col.rgb, <span style="color:#ae81ff">1</span>);
  }

  <span style="color:#75715e">#endif </span><span style="color:#75715e">// FRAGMENT
</span></code></pre></div><p>It should be pretty straighforward, but basically what is happening is this:</p>
<ul>
<li>Read the dispatch information, to know where the sprite will be located</li>
<li>Expand the quad to the correct location</li>
<li>Read the information packed font character based on the character</li>
<li>Color the pixel!</li>
</ul>
<p>The real magic happens in the &lsquo;print_char&rsquo; method, and here I will post all the code that comes from the shadertoy example I wrote before!</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C" data-lang="C"><span style="color:#66d9ef">const</span> <span style="color:#66d9ef">float</span> DOWN_SCALE <span style="color:#f92672">=</span> <span style="color:#ae81ff">1.0f</span>;

<span style="color:#75715e">#define MAX_INT_DIGITS 4
</span><span style="color:#75715e"></span><span style="color:#75715e">//#define FLIP_Y
</span><span style="color:#75715e"></span>
<span style="color:#66d9ef">const</span> vec2 CHAR_SIZE <span style="color:#f92672">=</span> vec2(<span style="color:#ae81ff">8</span>, <span style="color:#ae81ff">12</span>);
<span style="color:#66d9ef">const</span> vec2 CHAR_SPACING <span style="color:#f92672">=</span> vec2(<span style="color:#ae81ff">8</span>, <span style="color:#ae81ff">12</span>);

<span style="color:#66d9ef">float</span> <span style="color:#a6e22e">STRWIDTH</span>(<span style="color:#66d9ef">float</span> c) {
    <span style="color:#66d9ef">return</span> c <span style="color:#f92672">*</span> CHAR_SPACING.x;
}

<span style="color:#66d9ef">float</span> <span style="color:#a6e22e">STRHEIGHT</span>(<span style="color:#66d9ef">float</span> c) {
    <span style="color:#66d9ef">return</span> c <span style="color:#f92672">*</span> CHAR_SPACING.y;
}

<span style="color:#75715e">#define NORMAL 0
</span><span style="color:#75715e">#define INVERT 1
</span><span style="color:#75715e">#define UNDERLINE 2
</span><span style="color:#75715e"></span>
<span style="color:#66d9ef">int</span> TEXT_MODE <span style="color:#f92672">=</span> NORMAL;

vec4 ch_spc <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_exc <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003078</span>,<span style="color:#ae81ff">0x787830</span>,<span style="color:#ae81ff">0x300030</span>,<span style="color:#ae81ff">0x300000</span>);
vec4 ch_quo <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x006666</span>,<span style="color:#ae81ff">0x662400</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_hsh <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x006C6C</span>,<span style="color:#ae81ff">0xFE6C6C</span>,<span style="color:#ae81ff">0x6CFE6C</span>,<span style="color:#ae81ff">0x6C0000</span>);
vec4 ch_dol <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x30307C</span>,<span style="color:#ae81ff">0xC0C078</span>,<span style="color:#ae81ff">0x0C0CF8</span>,<span style="color:#ae81ff">0x303000</span>);
vec4 ch_pct <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0xC4CC18</span>,<span style="color:#ae81ff">0x3060CC</span>,<span style="color:#ae81ff">0x8C0000</span>);
vec4 ch_amp <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0070D8</span>,<span style="color:#ae81ff">0xD870FA</span>,<span style="color:#ae81ff">0xDECCDC</span>,<span style="color:#ae81ff">0x760000</span>);
vec4 ch_apo <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003030</span>,<span style="color:#ae81ff">0x306000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_lbr <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000C18</span>,<span style="color:#ae81ff">0x306060</span>,<span style="color:#ae81ff">0x603018</span>,<span style="color:#ae81ff">0x0C0000</span>);
vec4 ch_rbr <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x006030</span>,<span style="color:#ae81ff">0x180C0C</span>,<span style="color:#ae81ff">0x0C1830</span>,<span style="color:#ae81ff">0x600000</span>);
vec4 ch_ast <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x663CFF</span>,<span style="color:#ae81ff">0x3C6600</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_crs <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x18187E</span>,<span style="color:#ae81ff">0x181800</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_com <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000038</span>,<span style="color:#ae81ff">0x386000</span>);
vec4 ch_dsh <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x0000FE</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_per <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000038</span>,<span style="color:#ae81ff">0x380000</span>);
vec4 ch_lsl <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000002</span>,<span style="color:#ae81ff">0x060C18</span>,<span style="color:#ae81ff">0x3060C0</span>,<span style="color:#ae81ff">0x800000</span>);
vec4 ch_0 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x007CC6</span>,<span style="color:#ae81ff">0xD6D6D6</span>,<span style="color:#ae81ff">0xD6D6C6</span>,<span style="color:#ae81ff">0x7C0000</span>);
vec4 ch_1 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x001030</span>,<span style="color:#ae81ff">0xF03030</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0xFC0000</span>);
vec4 ch_2 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0xCC0C18</span>,<span style="color:#ae81ff">0x3060CC</span>,<span style="color:#ae81ff">0xFC0000</span>);
vec4 ch_3 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0x0C0C38</span>,<span style="color:#ae81ff">0x0C0CCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_4 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000C1C</span>,<span style="color:#ae81ff">0x3C6CCC</span>,<span style="color:#ae81ff">0xFE0C0C</span>,<span style="color:#ae81ff">0x1E0000</span>);
vec4 ch_5 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FCC0</span>,<span style="color:#ae81ff">0xC0C0F8</span>,<span style="color:#ae81ff">0x0C0CCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_6 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003860</span>,<span style="color:#ae81ff">0xC0C0F8</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_7 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FEC6</span>,<span style="color:#ae81ff">0xC6060C</span>,<span style="color:#ae81ff">0x183030</span>,<span style="color:#ae81ff">0x300000</span>);
vec4 ch_8 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0xCCEC78</span>,<span style="color:#ae81ff">0xDCCCCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_9 <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0xCCCC7C</span>,<span style="color:#ae81ff">0x181830</span>,<span style="color:#ae81ff">0x700000</span>);
vec4 ch_col <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x383800</span>,<span style="color:#ae81ff">0x003838</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_scl <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x383800</span>,<span style="color:#ae81ff">0x003838</span>,<span style="color:#ae81ff">0x183000</span>);
vec4 ch_les <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000C18</span>,<span style="color:#ae81ff">0x3060C0</span>,<span style="color:#ae81ff">0x603018</span>,<span style="color:#ae81ff">0x0C0000</span>);
vec4 ch_equ <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x007E00</span>,<span style="color:#ae81ff">0x7E0000</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_grt <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x006030</span>,<span style="color:#ae81ff">0x180C06</span>,<span style="color:#ae81ff">0x0C1830</span>,<span style="color:#ae81ff">0x600000</span>);
vec4 ch_que <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0x0C1830</span>,<span style="color:#ae81ff">0x300030</span>,<span style="color:#ae81ff">0x300000</span>);
vec4 ch_ats <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x007CC6</span>,<span style="color:#ae81ff">0xC6DEDE</span>,<span style="color:#ae81ff">0xDEC0C0</span>,<span style="color:#ae81ff">0x7C0000</span>);
vec4 ch_A <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003078</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0xFCCCCC</span>,<span style="color:#ae81ff">0xCC0000</span>);
vec4 ch_B <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FC66</span>,<span style="color:#ae81ff">0x66667C</span>,<span style="color:#ae81ff">0x666666</span>,<span style="color:#ae81ff">0xFC0000</span>);
vec4 ch_C <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003C66</span>,<span style="color:#ae81ff">0xC6C0C0</span>,<span style="color:#ae81ff">0xC0C666</span>,<span style="color:#ae81ff">0x3C0000</span>);
vec4 ch_D <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00F86C</span>,<span style="color:#ae81ff">0x666666</span>,<span style="color:#ae81ff">0x66666C</span>,<span style="color:#ae81ff">0xF80000</span>);
vec4 ch_E <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FE62</span>,<span style="color:#ae81ff">0x60647C</span>,<span style="color:#ae81ff">0x646062</span>,<span style="color:#ae81ff">0xFE0000</span>);
vec4 ch_F <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FE66</span>,<span style="color:#ae81ff">0x62647C</span>,<span style="color:#ae81ff">0x646060</span>,<span style="color:#ae81ff">0xF00000</span>);
vec4 ch_G <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003C66</span>,<span style="color:#ae81ff">0xC6C0C0</span>,<span style="color:#ae81ff">0xCEC666</span>,<span style="color:#ae81ff">0x3E0000</span>);
vec4 ch_H <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00CCCC</span>,<span style="color:#ae81ff">0xCCCCFC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0xCC0000</span>);
vec4 ch_I <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x007830</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_J <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x001E0C</span>,<span style="color:#ae81ff">0x0C0C0C</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_K <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00E666</span>,<span style="color:#ae81ff">0x6C6C78</span>,<span style="color:#ae81ff">0x6C6C66</span>,<span style="color:#ae81ff">0xE60000</span>);
vec4 ch_L <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00F060</span>,<span style="color:#ae81ff">0x606060</span>,<span style="color:#ae81ff">0x626666</span>,<span style="color:#ae81ff">0xFE0000</span>);
vec4 ch_M <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00C6EE</span>,<span style="color:#ae81ff">0xFEFED6</span>,<span style="color:#ae81ff">0xC6C6C6</span>,<span style="color:#ae81ff">0xC60000</span>);
vec4 ch_N <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00C6C6</span>,<span style="color:#ae81ff">0xE6F6FE</span>,<span style="color:#ae81ff">0xDECEC6</span>,<span style="color:#ae81ff">0xC60000</span>);
vec4 ch_O <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00386C</span>,<span style="color:#ae81ff">0xC6C6C6</span>,<span style="color:#ae81ff">0xC6C66C</span>,<span style="color:#ae81ff">0x380000</span>);
vec4 ch_P <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FC66</span>,<span style="color:#ae81ff">0x66667C</span>,<span style="color:#ae81ff">0x606060</span>,<span style="color:#ae81ff">0xF00000</span>);
vec4 ch_Q <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00386C</span>,<span style="color:#ae81ff">0xC6C6C6</span>,<span style="color:#ae81ff">0xCEDE7C</span>,<span style="color:#ae81ff">0x0C1E00</span>);
vec4 ch_R <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FC66</span>,<span style="color:#ae81ff">0x66667C</span>,<span style="color:#ae81ff">0x6C6666</span>,<span style="color:#ae81ff">0xE60000</span>);
vec4 ch_S <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0xCCC070</span>,<span style="color:#ae81ff">0x18CCCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_T <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FCB4</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_U <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00CCCC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_V <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00CCCC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0xCCCC78</span>,<span style="color:#ae81ff">0x300000</span>);
vec4 ch_W <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00C6C6</span>,<span style="color:#ae81ff">0xC6C6D6</span>,<span style="color:#ae81ff">0xD66C6C</span>,<span style="color:#ae81ff">0x6C0000</span>);
vec4 ch_X <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00CCCC</span>,<span style="color:#ae81ff">0xCC7830</span>,<span style="color:#ae81ff">0x78CCCC</span>,<span style="color:#ae81ff">0xCC0000</span>);
vec4 ch_Y <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00CCCC</span>,<span style="color:#ae81ff">0xCCCC78</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_Z <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00FECE</span>,<span style="color:#ae81ff">0x981830</span>,<span style="color:#ae81ff">0x6062C6</span>,<span style="color:#ae81ff">0xFE0000</span>);
vec4 ch_lsb <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003C30</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0x303030</span>,<span style="color:#ae81ff">0x3C0000</span>);
vec4 ch_rsl <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000080</span>,<span style="color:#ae81ff">0xC06030</span>,<span style="color:#ae81ff">0x180C06</span>,<span style="color:#ae81ff">0x020000</span>);
vec4 ch_rsb <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x003C0C</span>,<span style="color:#ae81ff">0x0C0C0C</span>,<span style="color:#ae81ff">0x0C0C0C</span>,<span style="color:#ae81ff">0x3C0000</span>);
vec4 ch_pow <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x10386C</span>,<span style="color:#ae81ff">0xC60000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_usc <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00FF00</span>);
vec4 ch_a <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00780C</span>,<span style="color:#ae81ff">0x7CCCCC</span>,<span style="color:#ae81ff">0x760000</span>);
vec4 ch_b <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00E060</span>,<span style="color:#ae81ff">0x607C66</span>,<span style="color:#ae81ff">0x666666</span>,<span style="color:#ae81ff">0xDC0000</span>);
vec4 ch_c <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0xC0C0CC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_d <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x001C0C</span>,<span style="color:#ae81ff">0x0C7CCC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0x760000</span>);
vec4 ch_e <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0xFCC0CC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_f <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00386C</span>,<span style="color:#ae81ff">0x6060F8</span>,<span style="color:#ae81ff">0x606060</span>,<span style="color:#ae81ff">0xF00000</span>);
vec4 ch_g <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x0076CC</span>,<span style="color:#ae81ff">0xCCCC7C</span>,<span style="color:#ae81ff">0x0CCC78</span>);
vec4 ch_h <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00E060</span>,<span style="color:#ae81ff">0x606C76</span>,<span style="color:#ae81ff">0x666666</span>,<span style="color:#ae81ff">0xE60000</span>);
vec4 ch_i <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x001818</span>,<span style="color:#ae81ff">0x007818</span>,<span style="color:#ae81ff">0x181818</span>,<span style="color:#ae81ff">0x7E0000</span>);
vec4 ch_j <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000C0C</span>,<span style="color:#ae81ff">0x003C0C</span>,<span style="color:#ae81ff">0x0C0C0C</span>,<span style="color:#ae81ff">0xCCCC78</span>);
vec4 ch_k <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00E060</span>,<span style="color:#ae81ff">0x60666C</span>,<span style="color:#ae81ff">0x786C66</span>,<span style="color:#ae81ff">0xE60000</span>);
vec4 ch_l <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x007818</span>,<span style="color:#ae81ff">0x181818</span>,<span style="color:#ae81ff">0x181818</span>,<span style="color:#ae81ff">0x7E0000</span>);
vec4 ch_m <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00FCD6</span>,<span style="color:#ae81ff">0xD6D6D6</span>,<span style="color:#ae81ff">0xC60000</span>);
vec4 ch_n <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00F8CC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0xCC0000</span>);
vec4 ch_o <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_p <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00DC66</span>,<span style="color:#ae81ff">0x666666</span>,<span style="color:#ae81ff">0x7C60F0</span>);
vec4 ch_q <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x0076CC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0x7C0C1E</span>);
vec4 ch_r <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00EC6E</span>,<span style="color:#ae81ff">0x766060</span>,<span style="color:#ae81ff">0xF00000</span>);
vec4 ch_s <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x0078CC</span>,<span style="color:#ae81ff">0x6018CC</span>,<span style="color:#ae81ff">0x780000</span>);
vec4 ch_t <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000020</span>,<span style="color:#ae81ff">0x60FC60</span>,<span style="color:#ae81ff">0x60606C</span>,<span style="color:#ae81ff">0x380000</span>);
vec4 ch_u <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00CCCC</span>,<span style="color:#ae81ff">0xCCCCCC</span>,<span style="color:#ae81ff">0x760000</span>);
vec4 ch_v <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00CCCC</span>,<span style="color:#ae81ff">0xCCCC78</span>,<span style="color:#ae81ff">0x300000</span>);
vec4 ch_w <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00C6C6</span>,<span style="color:#ae81ff">0xD6D66C</span>,<span style="color:#ae81ff">0x6C0000</span>);
vec4 ch_x <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00C66C</span>,<span style="color:#ae81ff">0x38386C</span>,<span style="color:#ae81ff">0xC60000</span>);
vec4 ch_y <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x006666</span>,<span style="color:#ae81ff">0x66663C</span>,<span style="color:#ae81ff">0x0C18F0</span>);
vec4 ch_z <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x00FC8C</span>,<span style="color:#ae81ff">0x1860C4</span>,<span style="color:#ae81ff">0xFC0000</span>);
vec4 ch_lpa <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x001C30</span>,<span style="color:#ae81ff">0x3060C0</span>,<span style="color:#ae81ff">0x603030</span>,<span style="color:#ae81ff">0x1C0000</span>);
vec4 ch_bar <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x001818</span>,<span style="color:#ae81ff">0x181800</span>,<span style="color:#ae81ff">0x181818</span>,<span style="color:#ae81ff">0x180000</span>);
vec4 ch_rpa <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x00E030</span>,<span style="color:#ae81ff">0x30180C</span>,<span style="color:#ae81ff">0x183030</span>,<span style="color:#ae81ff">0xE00000</span>);
vec4 ch_tid <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x0073DA</span>,<span style="color:#ae81ff">0xCE0000</span>,<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x000000</span>);
vec4 ch_lar <span style="color:#f92672">=</span> vec4(<span style="color:#ae81ff">0x000000</span>,<span style="color:#ae81ff">0x10386C</span>,<span style="color:#ae81ff">0xC6C6FE</span>,<span style="color:#ae81ff">0x000000</span>);

<span style="color:#75715e">//Extracts bit b from the given number.
</span><span style="color:#75715e">//Shifts bits right (num / 2^bit) then ANDs the result with 1 (mod(result,2.0)).
</span><span style="color:#75715e"></span><span style="color:#66d9ef">float</span> <span style="color:#a6e22e">extract_bit</span>(<span style="color:#66d9ef">float</span> n, <span style="color:#66d9ef">float</span> b)
{
    b <span style="color:#f92672">=</span> clamp(b,<span style="color:#f92672">-</span><span style="color:#ae81ff">1.0</span>,<span style="color:#ae81ff">24.0</span>);
    <span style="color:#66d9ef">return</span> floor(mod(floor(n <span style="color:#f92672">/</span> pow(<span style="color:#ae81ff">2.0</span>,floor(b))),<span style="color:#ae81ff">2.0</span>));
}

<span style="color:#75715e">//Returns the pixel at uv in the given bit-packed sprite.
</span><span style="color:#75715e"></span><span style="color:#66d9ef">float</span> <span style="color:#a6e22e">sprite</span>(vec4 spr, vec2 size, vec2 uv)
{
    uv <span style="color:#f92672">=</span> floor(uv);

<span style="color:#75715e">#if defined(FLIP_Y)
</span><span style="color:#75715e"></span>    <span style="color:#75715e">// Invert y uv coordinate
</span><span style="color:#75715e"></span>    uv.y <span style="color:#f92672">=</span> <span style="color:#ae81ff">1</span> <span style="color:#f92672">-</span> uv.y;
<span style="color:#75715e">#endif </span><span style="color:#75715e">// FLIP_Y
</span><span style="color:#75715e"></span>
    <span style="color:#75715e">//Calculate the bit to extract (x + y * width) (flipped on x-axis)
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">float</span> bit <span style="color:#f92672">=</span> (size.x<span style="color:#f92672">-</span>uv.x<span style="color:#f92672">-</span><span style="color:#ae81ff">1.0</span>) <span style="color:#f92672">+</span> uv.y <span style="color:#f92672">*</span> size.x;

    <span style="color:#75715e">//Clipping bound to remove garbage outside the sprite&#39;s boundaries.
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">bool</span> bounds <span style="color:#f92672">=</span> all(greaterThanEqual(uv,vec2(<span style="color:#ae81ff">0</span>))) <span style="color:#f92672">&amp;&amp;</span> all(lessThan(uv,size));

    <span style="color:#66d9ef">float</span> pixels <span style="color:#f92672">=</span> <span style="color:#ae81ff">0.0</span>;
    pixels <span style="color:#f92672">+=</span> extract_bit(spr.x, bit <span style="color:#f92672">-</span> <span style="color:#ae81ff">72.0</span>);
    pixels <span style="color:#f92672">+=</span> extract_bit(spr.y, bit <span style="color:#f92672">-</span> <span style="color:#ae81ff">48.0</span>);
    pixels <span style="color:#f92672">+=</span> extract_bit(spr.z, bit <span style="color:#f92672">-</span> <span style="color:#ae81ff">24.0</span>);
    pixels <span style="color:#f92672">+=</span> extract_bit(spr.w, bit <span style="color:#f92672">-</span> <span style="color:#ae81ff">00.0</span>);

    <span style="color:#66d9ef">return</span> bounds <span style="color:#f92672">?</span> pixels : <span style="color:#ae81ff">0.0</span>;
}

<span style="color:#75715e">//Prints a character and moves the print position forward by 1 character width.
</span><span style="color:#75715e"></span><span style="color:#66d9ef">float</span> <span style="color:#a6e22e">print_char</span>(vec4 ch, vec2 uv, inout vec2 print_pos)
{
    <span style="color:#66d9ef">if</span>( TEXT_MODE <span style="color:#f92672">==</span> INVERT )
    {
        <span style="color:#75715e">//Inverts all of the bits in the character.
</span><span style="color:#75715e"></span>        ch <span style="color:#f92672">=</span> pow(<span style="color:#ae81ff">2.0</span>,<span style="color:#ae81ff">24.0</span>)<span style="color:#f92672">-</span><span style="color:#ae81ff">1.0</span><span style="color:#f92672">-</span>ch;
    }
    <span style="color:#66d9ef">if</span>( TEXT_MODE <span style="color:#f92672">==</span> UNDERLINE )
    {
        <span style="color:#75715e">//Makes the bottom 8 bits all 1.
</span><span style="color:#75715e"></span>        <span style="color:#75715e">//Shifts the bottom chunk right 8 bits to drop the lowest 8 bits,
</span><span style="color:#75715e"></span>        <span style="color:#75715e">//then shifts it left 8 bits and adds 255 (binary 11111111).
</span><span style="color:#75715e"></span>        ch.w <span style="color:#f92672">=</span> floor(ch.w<span style="color:#f92672">/</span><span style="color:#ae81ff">256.0</span>)<span style="color:#f92672">*</span><span style="color:#ae81ff">256.0</span> <span style="color:#f92672">+</span> <span style="color:#ae81ff">255.0</span>;
    }

    <span style="color:#66d9ef">float</span> px <span style="color:#f92672">=</span> sprite(ch, CHAR_SIZE, uv <span style="color:#f92672">-</span> print_pos);
    print_pos.x <span style="color:#f92672">+=</span> CHAR_SPACING.x;
    <span style="color:#66d9ef">return</span> px;
}

<span style="color:#75715e">//Returns the digit sprite for the given number.
</span><span style="color:#75715e"></span>vec4 <span style="color:#a6e22e">get_digit</span>(<span style="color:#66d9ef">float</span> d)
{
    d <span style="color:#f92672">=</span> floor(d);

    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">0.0</span>) <span style="color:#66d9ef">return</span> ch_0;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">1.0</span>) <span style="color:#66d9ef">return</span> ch_1;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">2.0</span>) <span style="color:#66d9ef">return</span> ch_2;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">3.0</span>) <span style="color:#66d9ef">return</span> ch_3;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">4.0</span>) <span style="color:#66d9ef">return</span> ch_4;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">5.0</span>) <span style="color:#66d9ef">return</span> ch_5;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">6.0</span>) <span style="color:#66d9ef">return</span> ch_6;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">7.0</span>) <span style="color:#66d9ef">return</span> ch_7;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">8.0</span>) <span style="color:#66d9ef">return</span> ch_8;
    <span style="color:#66d9ef">if</span>(d <span style="color:#f92672">==</span> <span style="color:#ae81ff">9.0</span>) <span style="color:#66d9ef">return</span> ch_9;
    <span style="color:#66d9ef">return</span> vec4(<span style="color:#ae81ff">0.0</span>);
}

<span style="color:#75715e">//Prints out the given number starting at pos.
</span><span style="color:#75715e"></span><span style="color:#66d9ef">float</span> <span style="color:#a6e22e">print_number</span>(<span style="color:#66d9ef">float</span> number, vec2 uv, inout vec2 print_pos)
{
    <span style="color:#66d9ef">float</span> result <span style="color:#f92672">=</span> <span style="color:#ae81ff">0.0</span>;

    <span style="color:#66d9ef">for</span>(<span style="color:#66d9ef">int</span> i <span style="color:#f92672">=</span> <span style="color:#ae81ff">3</span>;i <span style="color:#f92672">&gt;=</span> <span style="color:#f92672">-</span><span style="color:#ae81ff">1</span>;i<span style="color:#f92672">--</span>)
    {
        <span style="color:#66d9ef">float</span> digit <span style="color:#f92672">=</span> mod( number <span style="color:#f92672">/</span> pow(<span style="color:#ae81ff">10.0</span>, <span style="color:#66d9ef">float</span>(i)) , <span style="color:#ae81ff">10.0</span>);

        <span style="color:#66d9ef">if</span>(i <span style="color:#f92672">==</span> <span style="color:#f92672">-</span><span style="color:#ae81ff">1</span>) <span style="color:#75715e">//Add a decimal point.
</span><span style="color:#75715e"></span>        {
            result <span style="color:#f92672">+=</span> print_char(ch_per,uv, print_pos);
        }

        <span style="color:#66d9ef">if</span>(abs(number) <span style="color:#f92672">&gt;</span> pow(<span style="color:#ae81ff">10.0</span>, <span style="color:#66d9ef">float</span>(i)) <span style="color:#f92672">||</span> i <span style="color:#f92672">==</span> <span style="color:#ae81ff">0</span>) <span style="color:#75715e">//Clip off leading zeros.
</span><span style="color:#75715e"></span>        {
            result <span style="color:#f92672">+=</span> print_char(get_digit(digit),uv, print_pos);
        }
    }
    <span style="color:#66d9ef">return</span> result;
}

vec4 <span style="color:#a6e22e">get_digit</span>(<span style="color:#66d9ef">float</span> number, <span style="color:#66d9ef">int</span> position) {
    <span style="color:#66d9ef">float</span> digit <span style="color:#f92672">=</span> mod( number <span style="color:#f92672">/</span> pow(<span style="color:#ae81ff">10.0</span>, <span style="color:#66d9ef">float</span>(position)) , <span style="color:#ae81ff">10.0</span>);
    <span style="color:#66d9ef">return</span> get_digit( digit );
}

<span style="color:#66d9ef">float</span> <span style="color:#a6e22e">print_integer</span>(<span style="color:#66d9ef">float</span> number, <span style="color:#66d9ef">int</span> zeros, vec2 uv, inout vec2 print_pos)
{
    <span style="color:#66d9ef">float</span> result <span style="color:#f92672">=</span> <span style="color:#ae81ff">0.0</span>;

    <span style="color:#66d9ef">for</span>(<span style="color:#66d9ef">int</span> i <span style="color:#f92672">=</span> MAX_INT_DIGITS;i <span style="color:#f92672">&gt;=</span> <span style="color:#ae81ff">0</span>;i<span style="color:#f92672">--</span>)
    {
        <span style="color:#66d9ef">float</span> digit <span style="color:#f92672">=</span> mod( number <span style="color:#f92672">/</span> pow(<span style="color:#ae81ff">10.0</span>, <span style="color:#66d9ef">float</span>(i)) , <span style="color:#ae81ff">10.0</span>);

        <span style="color:#66d9ef">if</span>(abs(number) <span style="color:#f92672">&gt;</span> pow(<span style="color:#ae81ff">10.0</span>, <span style="color:#66d9ef">float</span>(i)) <span style="color:#f92672">||</span> zeros <span style="color:#f92672">&gt;</span> i  <span style="color:#f92672">||</span> i <span style="color:#f92672">==</span> <span style="color:#ae81ff">0</span>) <span style="color:#75715e">//Clip off leading zeros.
</span><span style="color:#75715e"></span>        {
            result <span style="color:#f92672">+=</span> print_char(get_digit(digit),uv, print_pos);
        }
    }
    <span style="color:#66d9ef">return</span> result;
}
</code></pre></div><p>It is a little code intensitve, but the gist is the same: decompress the packed infomration to know if the current pixel falls into the compressed font character or not!</p>
<h1 id="conclusion">Conclusion</h1>
<p>I will probably add the code to my <a href="https://github.com/jorenjoestar/datadrivenrendering">DataDrivenRendering</a> repository, but in the meantime I wanted to write this article.<br>
The general idea should be simple, the execution can be improved a lot but the help can be great to debug GPU only systems, that are becoming more and more used.<br>
Maybe this is the start of a GPU-Driven ImGui system ? :p</p>
<p>Hope you enjoy!</p>

    
    
    
      Serialization For Games
      https://jorenjoestar.github.io/post/serialization_for_games/
      Mon, 09 Aug 2021 10:05:38 +0200
      
      https://jorenjoestar.github.io/post/serialization_for_games/
      <h1 id="overview">Overview</h1>
<p>We will go through all the logical steps (and the code!) to write a binary serializer that supports <strong>versioning</strong> and <strong>memory mappability</strong>.
It is not an automatic process, and it will not contain any data definition schema.</p>
<p>As use cases, we have:</p>
<ul>
<li>Creation and reading of game resources/assets</li>
<li>Game world states (&ldquo;savegames&rdquo;)</li>
<li>Networking transmission/reception</li>
</ul>
<p>Not having the schema is a problem, and we will try to go around it in the best way possible.</p>
<p>Following is a simple list of terms used in the article, explained in depth in the following sections but useful to have here:</p>
<ul>
<li>Serialization: writing to blob from a data structure, or reading from the blob to fill a data structure</li>
<li>Blob: contiguous section of memory</li>
<li>Versioning: data with version to skip parts of the serialization</li>
<li>Memory mappability: ability to load a blob and use it without any processing</li>
</ul>
<p>Code can be found at my <a href="https://github.com/JorenJoestar/DataDrivenRendering">github.com/datadrivenrendering repo</a>.<br>
<a href="https://github.com/JorenJoestar/DataDrivenRendering/tree/master/source/Articles/Serialization">Source</a> and <a href="https://github.com/JorenJoestar/DataDrivenRendering/tree/master/data/articles/SerializationDemo">Data</a>.</p>
<h1 id="the-problem">The Problem</h1>
<p>What is serialization ? Using a simple definition from Wikipedia:</p>
<blockquote>
<p>In computing, serialization (US spelling) or serialisation (UK spelling) is the process of translating a data structure or object state into a format that can be stored (for example, in a file or memory data buffer) or transmitted (for example, over a computer network) and reconstructed later (possibly in a different computer environment).</p>
</blockquote>
<p>We are about to start a journey of data structure conversion.</p>
<p>There are also two requirements for this system, one <strong>strong</strong> (versioning) and the other <em>soft</em> (not always possible, the memory mappability).</p>
<p>When converting two different binaries without a schema, we still need to have some sort of structure.<br>
We will rely on the binary itself to reconstruct itself.</p>
<h2 id="blob">Blob</h2>
<p>The first concept to get acquainted with is the <strong>blob</strong>, and a great article is from our friends at <a href="https://bitsquid.blogspot.com/2010/02/blob-and-i.html">the then BitSquid</a>, now working on <a href="https://ourmachinery.com/">OurMachinery</a>.<br>
A <em>blob</em> is a contiguous section of memory, that is <em>movable, copiable and self-contained</em>.</p>
<p>We can pass the blob around, and used to build at runtime data structures that we need, even with some complexity.<br>
We will see how later on.</p>
<h2 id="versioning">Versioning</h2>
<p>Versioning is the <strong>strong</strong> requirement for this system: we always want to support different versions of binaries.<br>
This makes the other requirement, memory mappability, somewhat not always achievable.<br>
We will see also that later on.</p>
<p>The main inspiration is from <a href="https://yave.handmade.network/blog/p/2723-how_media_molecule_does_serialization">Media Molecule Serialization Article</a> (thanks to Oswald Hurlem for this article!), that explains very well how to create a binary versioning serialization system.</p>
<p>The gist of it is to create a global version and use that to skip or not some parts of the binary generated.</p>
<p>It seems too good and easy to be true, and actually the devil&rsquo;s in the details, and we will see it!</p>
<h2 id="memory-mappability">Memory Mappability</h2>
<p>The <em>soft</em> requirement, something we would like to have but not always possible.<br>
The &lsquo;why&rsquo; we want this feature is because at runtime, we would like to have data in its <em>final form</em> so we just need to use it, without doing more adjustements.<br>
The combination of <em>blob</em> and <em>relative data structures</em> can give you a ready to go binary, that can contain <em>pointers, arrays and strings (and more!)</em>.<br>
It is not all easy, as when binary versions differ we will need still to <em>manually serialize</em> the structures. But more on that later!</p>
<p>The idea of <strong>memory mappability</strong> for me comes from the incredible implementation done by <a href="https://www.gdcvault.com/play/1026345/The-Future-of-Scene-Description">Sony Santa Monica for God of War</a> - I was exposed to the genius ideas of the original creator of the SMScheme, and was honestly blown away. This should be the gold standard for serialization in my opinion, but I digress!</p>
<p>The secret weapon here are some data structures called <strong>relative data structures</strong>, which I found <a href="https://steamcdn-a.akamaihd.net/apps/valve/2015/Migdalskiy_Sergiy_Physics_Optimization_Strategies.pdf">here in a little more detail</a> and found them very promising, used also in <strong>SmSchema</strong> as far as I understand, even though in much better way.</p>
<p>The idea of <em>relative data structures</em> is simple:</p>
<blockquote>
<p>Anything that contians a pointer, translates the pointer to be an offset from&hellip;itself.</p>
</blockquote>
<p>In C++ lingo, the address of the data pointed is (this) + offset.<br>
It is genius that you need only to store the offset, as the this is stored for you by the language!<br>
When the offset is 0, the pointer is considered null.</p>
<p>Three data structures have been implemented in this way:</p>
<ul>
<li>Relative Pointer</li>
<li>Relative Array</li>
<li>Relative String</li>
</ul>
<p>They work perfectly with the <strong>blob</strong> of memory we will use as main tool to achieve this.</p>
<p>What is really interesting is that even a normal array can be turned into a Relative Array, and it becomes a really powerful tool.<br>
We will see how in the code.</p>
<h2 id="serializing-allocating-reading-writing">Serializing, Allocating, Reading, Writing</h2>
<p>We need to clear some terms to finally start to see the solution/implementation.<br>
They are all interwined, and honestly they are what required me to rewrite this serialization code few times before understanding better what I am talking about. I still feel I am not precise enough with words, so any feedback is more than appreciated!</p>
<p><strong>Reading and Writing</strong> change the process of <strong>Serializing and Allocating</strong> in different ways, so we better be precise.</p>
<p><strong>Reading</strong>:</p>
<ul>
<li>Serializing is from Blob to Runtime Data.</li>
<li>Allocating is for the Runtime part for dynamic structures, or reading from the Blob for Relative Data Structures.</li>
</ul>
<p><strong>Writing</strong>:</p>
<ul>
<li>Serializing is from Runtime Data to Blob.</li>
<li>Allocating is reserving memory into the Blob.</li>
</ul>
<h1 id="the-solution">The Solution</h1>
<p>We can finally start seeing how we implemented this serialization system.<br>
The process will be particular, a mix <a href="https://en.wikipedia.org/wiki/Depth-first_search">depth first</a> and <a href="https://en.wikipedia.org/wiki/Breadth-first_search">breath first</a> for both allocation and serialization.</p>
<p>Starting from the root data structure, we will visit each member, serialize it and if needed allocate memory from it.<br>
Allocating memory can be both in-blob memory or runtime memory, depending on the situation.<br>
When writing, it will be the in-blob memory. When reading, it could be just moving into the blob memory (for relative structures) or allocating runtime data (for dynamic arrays and such).</p>
<p>One of the strengths of this approach is that if we use all <em>relative</em> data structures we can allocate once and just memory map everything.<br>
For this reason when we <em>write</em> the binary data, we need to leave traces to read the proper memory from the blob, when reading.</p>
<p>Remember, we don&rsquo;t have any schema so we need to rely on the serialization process to <em>guide us</em> through the bytes.</p>
<h2 id="serialization-write">Serialization: Write</h2>
<p>We will start with writing the <strong>blob</strong>.<br>
I&rsquo;ve attempted at some diagrams to show a more step-by-step mechanism, so the algorithm can be a little clearer.</p>
<p>In figure 1 we see the runtime data we want to write into our <em>blob</em>.<br>
The data structure contains an array, to show how the algorithm behaves with dynamically allocated memory.</p>
<p>We always have a <strong>serialization offset</strong> and an <strong>allocation offset</strong>.<br>
We always allocate from the current end of the blob.<br>
The <strong>serialization offset</strong> is used to write data into the blob, and can be used to jump around the blob memory, we will see how.</p>
<p>The <strong>first step</strong> to write into the blob is to <em>allocate</em> from the blob memory the <em>blob header</em>, that contains a version and a <em>mappable</em> flag. We will use that later to decide how we read data.</p>

<figure>

  <a data-fancybox="" href="serialization_write_0.png" >

<img src="serialization_write_0.png" >
</a>

<figcaption data-pre="Figure " data-post=":" class="numbered">
  <h4>Runtime data and initial blob</h4>
  
</figcaption>

</figure>

<p><strong>Serialization offset</strong> is serializing each member of the blob header, like so:</p>
<pre tabindex="0"><code>// Write data into blob memory
void MemoryBlob::serialize( u32* data ) {
  memcpy( &amp;blob_memory[ serialized_offset ], data, sizeof( u32 ) );
  serialized_offset += sizeof( u32 );
}
</code></pre><p>After each serialization we <em>move</em> the offset by the correct size.</p>
<p>Next we allocate the root data structure into the memory blob, and we start serializing its members, as shown in Figure 2:</p>

<figure>

  <a data-fancybox="" href="serialization_write_1.png" >

<img src="serialization_write_1.png" >
</a>

<figcaption data-pre="Figure " data-post=":" class="numbered">
  <h4>Allocated root data structure, but not serialized</h4>
  
</figcaption>

</figure>

<p>After some primitive member types, we arrive at an array.<br>
In Figure 3, we started serializing the array itself (its struct memory is part of the root data structure), but we miss the array data:</p>

<figure>

  <a data-fancybox="" href="serialization_write_2.png" >

<img src="serialization_write_2.png" >
</a>

<figcaption data-pre="Figure " data-post=":" class="numbered">
  <h4>Allocated array data, array struct serialization</h4>
  
</figcaption>

</figure>

<p>We finally <em>allocate</em> the array data and <strong>jump serialization</strong> to this new location, so we can start serializing each element, as you see from <strong>serialization offset</strong>:</p>

<figure>

  <a data-fancybox="" href="serialization_write_3.png" >

<img src="serialization_write_3.png" >
</a>

<figcaption data-pre="Figure " data-post=":" class="numbered">
  <h4>Array data serialization</h4>
  
</figcaption>

</figure>

<p>Once we finished with the array, we store the <strong>serialization offset</strong> so we can resume the serialization of the other <em>root data structure members</em>:</p>

<figure>

  <a data-fancybox="" href="serialization_write_4.png" >

<img src="serialization_write_4.png" >
</a>

<figcaption data-pre="Figure " data-post=":" class="numbered">
  <h4>Jump back to serialization of root data structure</h4>
  
</figcaption>

</figure>

<p>In a nutshell this is all the algorithm to serialize an arbitrarly complex network of data structures.<br>
In conjunction with <em>relative data structures</em>, a blob can point to its own memory and enable <em>pointers and arrays</em> to be used without any <strong>patch-up</strong>.</p>
<h2 id="serializing-read">Serializing Read</h2>
<p>Not suprisingly <strong>reading</strong> is very similar to writing, but the <em>source and destination</em> of the operations are inverted: we read from the <em>blob</em> and write into the <em>runtime data</em>.</p>
<p>There is one huge caveat: <strong>mappable blobs</strong>.<br>
In that case we don&rsquo;t need <strong>any serialization process</strong>, but instead we cast memory to the <em>root data structure</em> and it all works!</p>
<p>In order for that to work, for each data structure that points to other parts of the blob, we need two things:</p>
<ul>
<li>Save an offset to read from the blob</li>
<li>A runtime conversion mechanism between the offset and the needed type.</li>
</ul>
<p>Let&rsquo;s see an example of that, the <strong>Relative Pointer</strong> class.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#75715e">//
</span><span style="color:#75715e">// RelativePointer ////////////////////////////////////////////////////////
</span><span style="color:#75715e">// 
</span><span style="color:#75715e"></span><span style="color:#66d9ef">template</span> <span style="color:#f92672">&lt;</span><span style="color:#66d9ef">typename</span> T<span style="color:#f92672">&gt;</span>
<span style="color:#66d9ef">struct</span> <span style="color:#a6e22e">RelativePointer</span> {

    T<span style="color:#f92672">*</span>                  <span style="color:#a6e22e">get</span>() <span style="color:#66d9ef">const</span>;

    <span style="color:#66d9ef">bool</span>                <span style="color:#a6e22e">is_equal</span>( <span style="color:#66d9ef">const</span> RelativePointer<span style="color:#f92672">&amp;</span> other ) <span style="color:#66d9ef">const</span>;
    <span style="color:#66d9ef">bool</span>                <span style="color:#a6e22e">is_null</span>() <span style="color:#66d9ef">const</span>;
    <span style="color:#66d9ef">bool</span>                <span style="color:#a6e22e">is_not_null</span>() <span style="color:#66d9ef">const</span>;

    <span style="color:#75715e">// Operator overloading to give a cleaner interface
</span><span style="color:#75715e"></span>    T<span style="color:#f92672">*</span>                  <span style="color:#66d9ef">operator</span><span style="color:#f92672">-&gt;</span>() <span style="color:#66d9ef">const</span>;
    T<span style="color:#f92672">&amp;</span>                  <span style="color:#66d9ef">operator</span><span style="color:#f92672">*</span>() <span style="color:#66d9ef">const</span>;

    <span style="color:#66d9ef">void</span>                <span style="color:#a6e22e">set</span>( <span style="color:#66d9ef">char</span><span style="color:#f92672">*</span> raw_pointer );
    <span style="color:#66d9ef">void</span>                <span style="color:#a6e22e">set_null</span>();

    i32                 offset;

}; <span style="color:#75715e">// struct RelativePointer
</span><span style="color:#75715e"></span>
</code></pre></div><p>As we can see we save an offset, but the real power comes from the <strong>operator overload</strong>.<br>
Let&rsquo;s see the implementation:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#75715e">// RelativePointer ////////////////////////////////////////////////////////
</span><span style="color:#75715e"></span><span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;</span><span style="color:#66d9ef">typename</span> T<span style="color:#f92672">&gt;</span>
<span style="color:#66d9ef">inline</span> T<span style="color:#f92672">*</span> RelativePointer<span style="color:#f92672">&lt;</span>T<span style="color:#f92672">&gt;::</span>get() <span style="color:#66d9ef">const</span> {
    <span style="color:#75715e">// For debugging purposes leave the address variable.
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">char</span><span style="color:#f92672">*</span> address <span style="color:#f92672">=</span> ( ( <span style="color:#66d9ef">char</span><span style="color:#f92672">*</span> )<span style="color:#f92672">&amp;</span><span style="color:#66d9ef">this</span><span style="color:#f92672">-&gt;</span>offset ) <span style="color:#f92672">+</span> offset;
    <span style="color:#66d9ef">return</span> offset <span style="color:#f92672">!=</span> <span style="color:#ae81ff">0</span> <span style="color:#f92672">?</span> ( T<span style="color:#f92672">*</span> )address : <span style="color:#66d9ef">nullptr</span>;
}

<span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;</span><span style="color:#66d9ef">typename</span> T<span style="color:#f92672">&gt;</span>
<span style="color:#66d9ef">inline</span> T<span style="color:#f92672">*</span> RelativePointer<span style="color:#f92672">&lt;</span>T<span style="color:#f92672">&gt;::</span><span style="color:#66d9ef">operator</span><span style="color:#f92672">-&gt;</span>() <span style="color:#66d9ef">const</span> {
    <span style="color:#66d9ef">return</span> <span style="color:#a6e22e">get</span>();
}

<span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;</span><span style="color:#66d9ef">typename</span> T<span style="color:#f92672">&gt;</span>
<span style="color:#66d9ef">inline</span> T<span style="color:#f92672">&amp;</span> RelativePointer<span style="color:#f92672">&lt;</span>T<span style="color:#f92672">&gt;::</span><span style="color:#66d9ef">operator</span><span style="color:#f92672">*</span>() <span style="color:#66d9ef">const</span> {
    <span style="color:#66d9ef">return</span> <span style="color:#f92672">*</span>( get() );
}
</code></pre></div><p>The <strong>genius</strong> idea, coming from <a href="https://steamcdn-a.akamaihd.net/apps/valve/2015/Migdalskiy_Sergiy_Physics_Optimization_Strategies.pdf">the talk</a> I&rsquo;ve written before, comes from using the current memory, the <em>offset</em> member variable, to give a <strong>reference point in memory</strong>, and adding the content of the offset itself to retrieve the memory!</p>
<p><code>char* address = ( ( char* )&amp;this-&gt;offset ) + offset;</code></p>
<p>Employing this simple trick, you can now point to any part of the blob in a transparent way.</p>
<p>Even for a dynamic array implementation, we can add a similar method and reuse its data to use it as <em>memory mappable array</em>:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#75715e">// Relative data access.
</span><span style="color:#75715e"></span><span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;</span><span style="color:#66d9ef">typename</span> T<span style="color:#f92672">&gt;</span>
<span style="color:#66d9ef">inline</span> T<span style="color:#f92672">*</span> Array<span style="color:#f92672">&lt;</span>T<span style="color:#f92672">&gt;::</span>get() {
    <span style="color:#66d9ef">if</span> ( relative ) {
        <span style="color:#66d9ef">char</span><span style="color:#f92672">*</span> address <span style="color:#f92672">=</span> ( ( <span style="color:#66d9ef">char</span><span style="color:#f92672">*</span> )<span style="color:#f92672">&amp;</span>size ) <span style="color:#f92672">+</span> capacity;
        <span style="color:#66d9ef">return</span> capacity <span style="color:#f92672">!=</span> <span style="color:#ae81ff">0</span> <span style="color:#f92672">?</span> ( T<span style="color:#f92672">*</span> )address : <span style="color:#66d9ef">nullptr</span>;
    }
    <span style="color:#66d9ef">return</span> <span style="color:#66d9ef">nullptr</span>;
}
</code></pre></div><h1 id="writing-serialization-code">Writing Serialization Code</h1>
<p>In this section we will go through some examples of data structures to explain the read and write code written.</p>
<p>But first, how do we write our custom serialization code ?</p>
<h2 id="serializing-user-data-structures">Serializing user data structures</h2>
<p>Let&rsquo;s see a very simple example, a <strong>vector2 struct</strong>:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#75715e">// Vec2s //////////////////////////////////////////////////////////////////
</span><span style="color:#75715e"></span><span style="color:#66d9ef">struct</span> <span style="color:#a6e22e">vec2s</span> {
    f32     x;
    f32     y;
};

<span style="color:#75715e">// Serialization
</span><span style="color:#75715e"></span><span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;&gt;</span>
<span style="color:#66d9ef">void</span> MemoryBlob<span style="color:#f92672">::</span>serialize<span style="color:#f92672">&lt;</span>vec2s<span style="color:#f92672">&gt;</span>( vec2s<span style="color:#f92672">*</span> data ) {
    serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>x );
    serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>y );
}
</code></pre></div><p>In the <strong>MemoryBlob</strong> struct, we have a method that we will use with <em>template specialization</em> to actually specialize the serialization code path.</p>
<p>Remember, <strong>there is no schema</strong> so we use the <strong>data structure itself</strong> to guide the serialization.</p>
<p>The method that we use with template specialization is this:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++">
<span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;</span><span style="color:#66d9ef">typename</span> T<span style="color:#f92672">&gt;</span>
<span style="color:#66d9ef">inline</span> <span style="color:#66d9ef">void</span> MemoryBlob<span style="color:#f92672">::</span>serialize( T<span style="color:#f92672">*</span> data ) {
    <span style="color:#75715e">// Should not arrive here!
</span><span style="color:#75715e"></span>    hy_assert( false );
}
</code></pre></div><p>Thus we need to implement our own version.</p>
<h3 id="template-specialization-caveat">Template Specialization Caveat</h3>
<p>The correct way to use template specialization without template errors, is to define in an <em>header</em> the following method:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;&gt;</span>
<span style="color:#66d9ef">void</span> hydra<span style="color:#f92672">::</span>MemoryBlob<span style="color:#f92672">::</span>serialize<span style="color:#f92672">&lt;</span>vec2s<span style="color:#f92672">&gt;</span>( vec2s<span style="color:#f92672">*</span> data );
</code></pre></div><p>And then in a cpp the specialized version.</p>
<h3 id="versioning-1">Versioning</h3>
<p>Let&rsquo;s see the serialization code of a <em>data structure with versioning</em>:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#75715e">//
</span><span style="color:#75715e">//
</span><span style="color:#75715e"></span><span style="color:#66d9ef">struct</span> <span style="color:#a6e22e">EntityBlueprint</span> {
    RelativeString          name;
    u32                     v1_padding;     <span style="color:#75715e">// Added to test different versions.
</span><span style="color:#75715e"></span>    RelativePointer<span style="color:#f92672">&lt;</span>RenderingBlueprint<span style="color:#f92672">&gt;</span>  rendering;
    RelativePointer<span style="color:#f92672">&lt;</span>AnimationBlueprint<span style="color:#f92672">&gt;</span>  animation;

    vec2s                   position;
    f32                     offset_z;

}; <span style="color:#75715e">// struct EntityBlueprint
</span><span style="color:#75715e"></span>
<span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;&gt;</span>
<span style="color:#66d9ef">void</span> hydra<span style="color:#f92672">::</span>MemoryBlob<span style="color:#f92672">::</span>serialize<span style="color:#f92672">&lt;</span>EntityBlueprint<span style="color:#f92672">&gt;</span>( EntityBlueprint<span style="color:#f92672">*</span> data ) {

    serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>name );

    <span style="color:#66d9ef">if</span> ( serializer_version <span style="color:#f92672">&gt;</span> <span style="color:#ae81ff">0</span> )
        serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>v1_padding );

    serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>rendering );
    serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>animation );

    <span style="color:#66d9ef">if</span> ( serializer_version <span style="color:#f92672">&gt;</span> <span style="color:#ae81ff">1</span> ) {
        serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>position );
    } <span style="color:#66d9ef">else</span> {
        <span style="color:#75715e">// When reading, we should still initialize variables to a &#39;valid&#39; state.
</span><span style="color:#75715e"></span>        data<span style="color:#f92672">-&gt;</span>position <span style="color:#f92672">=</span> { <span style="color:#ae81ff">0.f</span>, <span style="color:#ae81ff">0.f</span> };
    }

    serialize( <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>offset_z );
}
</code></pre></div><p>This is a test data structure I was using to try the serialization system itself.<br>
It serializes an Entity into a Scene.<br>
I&rsquo;ve added some padding as test, but then the position as real need for a second version.</p>
<p>Like the <a href="https://yave.handmade.network/blog/p/2723-how_media_molecule_does_serialization">Little Big Planet serialization system</a>, the data structure will contain all the members of all its <em>history</em>.<br>
It is the serializer code itself that will jump the members not needed.</p>
<h2 id="serializing-relative-pointers">Serializing relative pointers</h2>
<p>Let&rsquo;s see the writing code of the <strong>Relative Pointers</strong>:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#66d9ef">template</span><span style="color:#f92672">&lt;</span><span style="color:#66d9ef">typename</span> T<span style="color:#f92672">&gt;</span>
<span style="color:#66d9ef">void</span> MemoryBlob<span style="color:#f92672">::</span>serialize( RelativePointer<span style="color:#f92672">&lt;</span>T<span style="color:#f92672">&gt;*</span> data ) {
  <span style="color:#75715e">//...
</span><span style="color:#75715e"></span>  {
      <span style="color:#75715e">// WRITING!
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// Data --&gt; Blob
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// Calculate offset used by RelativePointer.
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// Remember this:
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// char* address = ( ( char* )&amp;this-&gt;offset ) + offset;
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// Serialized offset points to what will be the &#34;this-&gt;offset&#34;
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// Allocated offset points to the still not allocated memory,
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// Where we will allocate from.
</span><span style="color:#75715e"></span>      i32 data_offset <span style="color:#f92672">=</span> allocated_offset <span style="color:#f92672">-</span> serialized_offset;
      serialize( <span style="color:#f92672">&amp;</span>data_offset );
      <span style="color:#75715e">// To jump anywhere and correctly restore the serialization process,
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// cache the current serialization offset
</span><span style="color:#75715e"></span>      u32 cached_serialized <span style="color:#f92672">=</span> serialized_offset;
      <span style="color:#75715e">// Move serialization to the newly allocated memory at the end of the blob.
</span><span style="color:#75715e"></span>      <span style="color:#75715e">// Serialization is where we WRITE code!
</span><span style="color:#75715e"></span>      serialized_offset <span style="color:#f92672">=</span> allocated_offset;
      <span style="color:#75715e">// Allocate memory in the blob
</span><span style="color:#75715e"></span>      allocate_static<span style="color:#f92672">&lt;</span>T<span style="color:#f92672">&gt;</span>();
      <span style="color:#75715e">// Serialize/visit the pointed data structure
</span><span style="color:#75715e"></span>      serialize( data<span style="color:#f92672">-&gt;</span>get() );
      <span style="color:#75715e">// Restore serialized
</span><span style="color:#75715e"></span>      serialized_offset <span style="color:#f92672">=</span> cached_serialized;
  }
}
</code></pre></div><p>Code is heavily commented to help understanding what is happening.<br>
The reading code is as follows:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++">  <span style="color:#75715e">// READING!
</span><span style="color:#75715e"></span>  <span style="color:#75715e">// Blob --&gt; Data
</span><span style="color:#75715e"></span>  i32 source_data_offset;
  serialize( <span style="color:#f92672">&amp;</span>source_data_offset );

  <span style="color:#75715e">// Early out to not follow null pointers.
</span><span style="color:#75715e"></span>  <span style="color:#66d9ef">if</span> ( source_data_offset <span style="color:#f92672">==</span> <span style="color:#ae81ff">0</span> ) {
      data<span style="color:#f92672">-&gt;</span>offset <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;
      <span style="color:#66d9ef">return</span>;
  }

  <span style="color:#75715e">// This is the important bit.
</span><span style="color:#75715e"></span>  <span style="color:#75715e">// Use the offset to the passed member variable to calculate the DESTINATION offset
</span><span style="color:#75715e"></span>  <span style="color:#75715e">// to write to.
</span><span style="color:#75715e"></span>  data<span style="color:#f92672">-&gt;</span>offset <span style="color:#f92672">=</span> get_relative_data_offset( data );

  <span style="color:#75715e">// Allocate memory and set pointer
</span><span style="color:#75715e"></span>  allocate_static<span style="color:#f92672">&lt;</span>T<span style="color:#f92672">&gt;</span>();

  <span style="color:#75715e">// Cache source serialized offset.
</span><span style="color:#75715e"></span>  u32 cached_serialized <span style="color:#f92672">=</span> serialized_offset;
  <span style="color:#75715e">// Move serialization offset.
</span><span style="color:#75715e"></span>  <span style="color:#75715e">// The offset is still &#34;this-&gt;offset&#34;, and the serialized offset
</span><span style="color:#75715e"></span>  <span style="color:#75715e">// points just right AFTER it, thus move back by sizeof(offset).
</span><span style="color:#75715e"></span>  <span style="color:#75715e">// Serialization is where READ from in the blob!
</span><span style="color:#75715e"></span>  serialized_offset <span style="color:#f92672">=</span> cached_serialized <span style="color:#f92672">+</span> source_data_offset <span style="color:#f92672">-</span> <span style="color:#66d9ef">sizeof</span>(u32);
  <span style="color:#75715e">// Serialize/visit the pointed data structure, using the offset calculated above.
</span><span style="color:#75715e"></span>  serialize( data<span style="color:#f92672">-&gt;</span>get() );
  <span style="color:#75715e">// Restore serialization offset
</span><span style="color:#75715e"></span>  serialized_offset <span style="color:#f92672">=</span> cached_serialized;

</code></pre></div><p>There is a method here that is very important: <em>get_relative_data_offset</em>.<br>
This highlights how we can use the struct itself to guide the serialization:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++">
i32 MemoryBlob<span style="color:#f92672">::</span>get_relative_data_offset( <span style="color:#66d9ef">void</span><span style="color:#f92672">*</span> data ) {
    <span style="color:#75715e">// data_memory points to the newly allocated data structure to be used at runtime.
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">const</span> i32 data_offset_from_start <span style="color:#f92672">=</span> ( i32 )( ( <span style="color:#66d9ef">char</span><span style="color:#f92672">*</span> )data <span style="color:#f92672">-</span> data_memory );
    <span style="color:#66d9ef">const</span> i32 data_offset <span style="color:#f92672">=</span> allocated_offset <span style="color:#f92672">-</span> data_offset_from_start;
    <span style="color:#66d9ef">return</span> data_offset;
}
</code></pre></div><p>When we read, we are writing into some data structure, that can <strong>differ from the binarized data</strong>.<br>
Let&rsquo;s say the binary has some missing fields (an older version), we need to calculate the <strong>writing offset</strong> based on our code.</p>
<p>So first we get the offset of the passed variable from the start of the memory, then we calculate the offset to the data memory that will be allocated shortly after.</p>
<p>With this code, we actually showed the algorithm that, with little modifications, can be adapted to any data structure.</p>
<p><strong>NOTE</strong>: something that really confused me at the beginning was the usage of <em>data</em>, <em>serialization offset</em> and <em>allocation offset</em>.<br>
The fact is that they change meaning when we are reading and when we are writing, so we need to mentally picture it to really understand how they are used.<br>
I tried to add comments to help remembering this.</p>
<h2 id="serializing-relative-arrays-and-dynamic-arrays">Serializing relative arrays and dynamic arrays</h2>
<p>Relative Arrays are very similar to Relative Pointers, but they just store more data and contain a <strong>size</strong> member.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++">  ...

  allocate_static( data<span style="color:#f92672">-&gt;</span>size <span style="color:#f92672">*</span> <span style="color:#66d9ef">sizeof</span>( T ) );

  <span style="color:#66d9ef">for</span> ( u32 i <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>; i <span style="color:#f92672">&lt;</span> data<span style="color:#f92672">-&gt;</span>size; <span style="color:#f92672">++</span>i ) {
      T<span style="color:#f92672">*</span> data <span style="color:#f92672">=</span> <span style="color:#f92672">&amp;</span>data<span style="color:#f92672">-&gt;</span>get()[ i ];
      serialize( data );
  }

</code></pre></div><p>The only real difference is that we iterate through all the members by calling their <em>serialize</em> method.</p>
<h1 id="special-writing-blob-from-a-json-file">Special: writing blob from a json file</h1>
<p>Something we might need to do, especially in a <em>build step</em>, is to convert from a non-binary format to our blob.<br>
This is something done a lot in games, so that the final binary format is as fast to use as possible, compared to always parsing a json (or other formats) and doing some work on the loaded data.</p>
<p>I&rsquo;ve added an example of writing a json file containing <strong>commands for a cutscene system</strong>, and they use a different way of writing the blob.</p>
<p>So far we&rsquo;ve only seen the passing of an already binary version of data, to be compacted in a blob.<br>
In this case we are performing a real conversion.</p>
<p>Let&rsquo;s start with the json (available under data\articles\SerializationDemo\cutscene.json) describing the cutscene:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-json" data-lang="json">{
  <span style="color:#f92672">&#34;name&#34;</span>:<span style="color:#e6db74">&#34;new_game&#34;</span>,
  <span style="color:#f92672">&#34;scene&#34;</span>: <span style="color:#e6db74">&#34;&#34;</span>,
  <span style="color:#f92672">&#34;commands&#34;</span> : [
    {
      <span style="color:#f92672">&#34;type&#34;</span> : <span style="color:#e6db74">&#34;fade&#34;</span>,
      <span style="color:#f92672">&#34;start&#34;</span> : <span style="color:#ae81ff">0.0</span>,
      <span style="color:#f92672">&#34;end&#34;</span> : <span style="color:#ae81ff">1.0</span>,
      <span style="color:#f92672">&#34;duration&#34;</span> : <span style="color:#ae81ff">0.0</span>
    },
    {
      <span style="color:#f92672">&#34;type&#34;</span> : <span style="color:#e6db74">&#34;move_entity&#34;</span>,
      <span style="color:#f92672">&#34;x&#34;</span> : <span style="color:#ae81ff">-16</span>,
      <span style="color:#f92672">&#34;y&#34;</span> : <span style="color:#ae81ff">-8</span>,
      <span style="color:#f92672">&#34;instant&#34;</span> : <span style="color:#66d9ef">true</span>,
      <span style="color:#f92672">&#34;entity_name&#34;</span> : <span style="color:#e6db74">&#34;cronos_mum&#34;</span>
    },
    {
      <span style="color:#f92672">&#34;type&#34;</span> : <span style="color:#e6db74">&#34;dialogue&#34;</span>,
      <span style="color:#f92672">&#34;text&#34;</span> : <span style="color:#e6db74">&#34;{SPEED=0.025}Crono...{PAGE}Crono!{PAGE}Crono, are you still sleeping?{PAGE} &#34;</span>
    }
  ]
}
</code></pre></div><p>We have different commands that needs to be parsed and converted in a binary format.<br>
As you probably spotted, I was using this serialization system with Chrono Trigger in mind as something to clone, and even if I did not cloned the whole game, I could test a cutscene and some gameplay informations to be used.<br>
Anyway, let&rsquo;s see the <strong>conversion code</strong>.<br>
First, the main data structures:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++"><span style="color:#75715e">//
</span><span style="color:#75715e">//
</span><span style="color:#75715e"></span><span style="color:#66d9ef">struct</span> <span style="color:#a6e22e">CutsceneEntry</span> {
    CutsceneCommandType         type;

    RelativeArray<span style="color:#f92672">&lt;</span>u8<span style="color:#f92672">&gt;</span>           data;

}; <span style="color:#75715e">// struct CutsceneEntry
</span><span style="color:#75715e">//
</span><span style="color:#75715e">//
</span><span style="color:#75715e"></span><span style="color:#66d9ef">struct</span> <span style="color:#a6e22e">CutsceneBlueprint</span> {

    RelativeArray<span style="color:#f92672">&lt;</span>CutsceneEntry<span style="color:#f92672">&gt;</span> entries;

    <span style="color:#66d9ef">static</span> <span style="color:#66d9ef">constexpr</span> u32        k_version <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;

}; <span style="color:#75715e">// struct CutsceneBlueprint
</span></code></pre></div><p>I should change the names maybe, but the <em>root data structure</em> is the <em>CutsceneBlueprint</em>. It contians just an array of <em>entries</em>, each one with some data associated and a type.</p>
<p>First, we create the blob and allocate a fixed size (yes, it should be dynamic, I know!):</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-C++" data-lang="C++">MemoryBlob blob;
blob.write<span style="color:#f92672">&lt;</span>CutsceneBlueprint<span style="color:#f92672">&gt;</span>( allocator, <span style="color:#ae81ff">0</span>, blob_size, <span style="color:#66d9ef">nullptr</span> );
</code></pre></div><p>Passing a &lsquo;nullptr&rsquo; as last argument means we don&rsquo;t have any <em>root data structure</em> ready to be serialized.<br>
We instead proceed manually to build the blob.<br>
In this case we heavily use <strong>allocate</strong> and <strong>allocate and set</strong> methods.</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++"><span style="color:#75715e">// Reserve memory for root data structure
</span><span style="color:#75715e"></span>CutsceneBlueprint<span style="color:#f92672">*</span> root <span style="color:#f92672">=</span> blob.allocate_static<span style="color:#f92672">&lt;</span>CutsceneBlueprint<span style="color:#f92672">&gt;</span>();
<span style="color:#75715e">// Allocate array data and set its offset:
</span><span style="color:#75715e"></span>blob.allocate_and_set( root<span style="color:#f92672">-&gt;</span>entries, num_entries );
</code></pre></div><p>With this code we can already write into the single entries, like this:</p>
<div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"><code class="language-c++" data-lang="c++">
<span style="color:#75715e">// Declare an empty std::string to convert json strings
</span><span style="color:#75715e"></span>std<span style="color:#f92672">::</span>string name_string;
<span style="color:#75715e">// Read the json entries
</span><span style="color:#75715e"></span>json entries <span style="color:#f92672">=</span> parsed_json[ <span style="color:#e6db74">&#34;commands&#34;</span> ];

<span style="color:#66d9ef">for</span> ( u32 i <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>; i <span style="color:#f92672">&lt;</span> entries.size; <span style="color:#f92672">++</span>i ) {
    json element <span style="color:#f92672">=</span> entries[ i ];
    <span style="color:#75715e">// Convert field &#39;type&#39; to std::string
</span><span style="color:#75715e"></span>    element[ <span style="color:#e6db74">&#34;type&#34;</span> ].get_to( name_string );
    <span style="color:#75715e">// Access the allocated array to write into its entries.
</span><span style="color:#75715e"></span>    CutsceneEntry<span style="color:#f92672">&amp;</span> entry <span style="color:#f92672">=</span> root<span style="color:#f92672">-&gt;</span>entries[ i ];
    <span style="color:#75715e">// Yes yes, this can be improved!
</span><span style="color:#75715e"></span>    <span style="color:#66d9ef">if</span> ( name_string.compare( <span style="color:#e6db74">&#34;dialogue&#34;</span> ) <span style="color:#f92672">==</span> <span style="color:#ae81ff">0</span> ) {
        element[ <span style="color:#e6db74">&#34;text&#34;</span> ].get_to( name_string );

        <span style="color:#75715e">// Allocate memory for the string + null terminator!
</span><span style="color:#75715e"></span>        <span style="color:#66d9ef">char</span><span style="color:#f92672">*</span> memory <span style="color:#f92672">=</span> blob.allocate_static( name_string.size() <span style="color:#f92672">+</span> <span style="color:#ae81ff">1</span> );
        memcpy( memory, name_string.c_str(), name_string.size() );
        memory[ name_string.size() ] <span style="color:#f92672">=</span> <span style="color:#ae81ff">0</span>;

        entry.type <span style="color:#f92672">=</span> CutsceneCommandType<span style="color:#f92672">::</span>Dialogue;
        <span style="color:#75715e">// Calculate the offset for the data RelativeArray of the CutsceneEntry
</span><span style="color:#75715e"></span>        entry.data.set( memory, ( u32 )name_string.size() );
    }
    ...
}
</code></pre></div><p>With this simple code we can see a common pattern when writing into the blob from a non binary input.<br>
We allocate the root data structure, and we use it to fill the blob.<br>
Every time we need to allocate memory, we do it and then use the newly allocated memory.</p>
<p>I will leave more examples in the source code, also with pointers and arrays of arrays, but the mindset is this one!</p>
<p>For reading this, if we did everything correctly and the data version is the latest, we can simply <strong>memory map</strong> it and use it.</p>
<h1 id="conclusion">Conclusion</h1>
<p>We saw in depth a <em>serialization system</em> that supports <em>memory mappability</em>.<br>
We explored the different basic bricks that makes this possible, and presented a couple of examples (and included more in the code) to see different usages.<br>
While not perfect, I believe this could be a great starting point to serializing anything needed into your code.</p>
<p>Adding a custom serialized type is a matter of adding a method, both for reading and writing.<br>
I decided to use templates instead of the <em>Little Big Planet</em> C-style way just to have something more modern, but a C version could be used that is very similar.</p>
<p>Binary compatibility is not 100% safe, I am sure there are edge cases that breaks (like padding between member variables!), but I feel that this is a good start.</p>
<p>There are still some things that needs to be solved, like the support for dynamically sized blobs (as reallocating during the serialization invalidates the memory you are using, needing a more careful approach), and the API it&rsquo;s still not very mature - code ergonomy is not high.<br>
Personally I already converted <strong>hydra fx</strong> to use this system and it works like a charm, and I am planning to use it more and more to refine the system better.</p>
<p>Code can be found at my <a href="https://github.com/JorenJoestar/DataDrivenRendering">github.com/datadrivenrendering repo</a>.<br>
<a href="https://github.com/JorenJoestar/DataDrivenRendering/tree/master/source/Articles/Serialization">Source</a> and <a href="https://github.com/JorenJoestar/DataDrivenRendering/tree/master/data/articles/SerializationDemo">Data</a>.</p>
<p>As always, please send any feedback to my <a href="https://twitter.com/GabrielSassone">twitter</a>.</p>
<p>Hope you enjoyed!</p>

    
    
    
      Pixel Art Filtering
      https://jorenjoestar.github.io/post/pixel_art_filtering/
      Mon, 12 Apr 2021 19:56:56 +0200
      
      https://jorenjoestar.github.io/post/pixel_art_filtering/
      

<figure>

  <a data-fancybox="" href="pixel_art_filtering.png" >

<img src="pixel_art_filtering.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>An example of non integer scaling of pixel art.</h4>
  
</figcaption>

</figure>

<h1 id="overview">Overview</h1>
<p>Pixel art is living a beautiful renaissance these last years, with more and more studios embracing its visuals and more artists going back to this unique way of describing visuals in a game.<!-- raw HTML omitted --></p>
<p>One of the most annoying problem we are seeing, especially since we don&rsquo;t have all the CRT TVs that &lsquo;apply their filters&rsquo;, is the pixel &lsquo;shimmering&rsquo; happening when scaling or moving a pixel art image with non-integer values.</p>
<p>This article aims to be a light introduction to the problem and more a practical testbed to experiment with filtering. I found that just using Shadertoy was not enough, and I would like to give programmers a more advanced testbed that they can modify to improve their games!</p>
<h1 id="summarytldr">Summary/TLDR</h1>
<p>First of all we will state what is the problem we are trying to solve, even though enough posts already talked about that.
There is an intuition that is at the base of all the filters, so it is important to have that in mind.</p>
<p>Then we will go through each filter I found around, with a simple explanation and link to the original article and code. Hopefully it will be easy to follow!</p>
<p>Finally some informations about the included source code, so you can experiment with Pixel Art Filtering.</p>
<p>Enjoy!</p>
<h1 id="the-problem">The Problem</h1>
<p>What we are trying to fix is to <strong>find the relationship between pixel on the screen and pixel of the texture, or texels, to perceptually preserve the original texture appearance</strong>.<!-- raw HTML omitted --></p>
<p>One key component here is that we want to apply any kind of transform to the <em>sprite/mesh</em> that will use this texture and still preserve the texture appearance.<!-- raw HTML omitted -->
Something that can be done withouth further venturing into this realm is to use both integer-only camera movement increments, and scale to only integer number. This works only for sprite based games, and it can suffice if you don&rsquo;t add any zoom or rotation to the game.<!-- raw HTML omitted -->
Many indie games, that are beautifully 2D and sprite based, can simply do that if no zoom (thus scaling) or rotation is applied.</p>
<p>But if you are wanting to add something more dynamic then it can become a problem!</p>
<h2 id="examples-samurai-showdown-and-children-of-morta">Examples: Samurai Showdown and Children of Morta</h2>
<p>Already back in the day scaling and rotation were a problem, and artifacts were visible.<!-- raw HTML omitted -->
I can think of Samurai Showdown games when zooming out the camera, and in the quick action of the game, despite the purposely quick zoom, you can see pixel shimmering around.</p>
<p>A more recent example, that received a lot of attention from <a href="https://hero.handmade.network/episode/chat/chat018/">Handmade Hero</a>, is <a href="https://childrenofmorta.com/">Children of Morta</a> (very nice game, go and play it if you haven&rsquo;t!).<!-- raw HTML omitted --></p>
<p><strong>Disclaimer: it is not my intention to talk bad about the game, just to show an example that already suffered for this problem, and maybe, at the end of the article, have a testbed to try different solutions!</strong></p>
<p>As you can see also from videos of the game, zooming out (especially done with a slow speed) show the pixel shimmering that causes the problem.</p>
<p>For some (unknown to me) reason, some shaders use the term &lsquo;Fat Pixel&rsquo; to refer to this problem, and it will help you finding some solutions on Shadertoy as well!</p>
<h2 id="pixels-and-texels-and-fat-pixels">Pixels and Texels (and Fat Pixels)</h2>
<p>To simplify the problem, we will look at sprite based games, so no 3D rotations, but the solution can be generalized to 3D as well.</p>
<p>I found <a href="https://colececil.io/blog/2017/scaling-pixel-art-without-destroying-it/">this article</a> to have the easiest explanation of the problem we are trying to solve, but I will restate it so it is clear visually inside this article as well.</p>
<p>The appearance we want to preserve is the one of a Pixel Art texture, so we want pixel of the texture, that we will call <strong>Texels</strong> to be distinguishable from each other.<!-- raw HTML omitted -->
We thus need to apply some sort of filtering to the texture when rendering it on the screen.</p>
<p>Let&rsquo;s see a simple case: an integer scale:</p>

<figure>

  <a data-fancybox="" href="pixel_art_scaling_01.png" >

<img src="pixel_art_scaling_01.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>2X Scale.</h4>
  
</figcaption>

</figure>

<p>Here is clear that the pixels will be 1 to 1 with the texels, thus maintaining the pixel art visuals. <!-- raw HTML omitted --></p>
<p><strong>NOTE</strong>: using <strong>bilinear</strong> will add blurriness at the edges though, so normally integer scaling and translation need a <strong>neighbour/nearest</strong> filter.</p>
<p>And now let&rsquo;s see a non integer scale with some translation applied as well:</p>

<figure>

  <a data-fancybox="" href="pixel_art_scaling_02.png" >

<img src="pixel_art_scaling_02.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>1.5X Scale and Translation.</h4>
  
</figcaption>

</figure>

<p>The situation is worst. Some pixels are <strong>full</strong> while some others are <strong>edges</strong>. I tried to highlight the original texture (a simple quad) with grey outline and color the pixels in the fully filled pixels.<!-- raw HTML omitted --></p>
<p>We see that only 4 pixels are fully colored, the others all need some sort of filter for the edges.</p>
<p>Finally, some scale and rotation as well:</p>

<figure>

  <a data-fancybox="" href="pixel_art_scaling_03.png" >

<img src="pixel_art_scaling_03.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>1.5X Scale, Translation and Rotation.</h4>
  
</figcaption>

</figure>

<p>This is the most difficult situation. Only 3 pixels are full and everything else needs a proper edge management.</p>
<p>It is clear (I hope!) that using only <strong>bilinear</strong> filter is not enough: the fact that each pixel can always take up 4 samples smudges everything, and we lose exactly what we want: sharp pixel art!</p>
<p>Same for <strong>neighbour/nearest</strong>: on fully contained pixels-in-texels it works, but on edges it is straight wrong. This causes non-square texels to fill the image.</p>
<p><strong>We need a combination of both!</strong></p>
<h1 id="the-intuition">The Intuition</h1>
<p>The idea behind the filtering is simple: apply <strong>neighbour/nearest</strong> filter on pixels that are fully inside a texel, and use <strong>bilinear</strong> with custom weights at the edges!</p>
<p>This is what is all about.<!-- raw HTML omitted --></p>
<p>The tricky part is to come out with some custom weights for the bilinear filter to work out, and that is why there are so many different filters.</p>
<p>We will now see the different filters included in the testbed.
Nothing that I wrote, so I will include links to the original material and you can see the awesomeness of the authors!</p>
<h1 id="the-filters">The Filters</h1>
<p>Here we analyze the different filters proposed and separate their code.
All the shaders are into the <strong>DataDrivenRendering/data/articles/PixelArtFiltering/pixel_art_filtering.hfx</strong> file.</p>
<p><strong>NOTE!</strong>: textures are sampled with Bilinear filtering and Alpha Blending is enabled, so that edges can be smoother. This is very important for the final results!</p>
<p>All the filters will give back a modified UV that will leverage the bilinear sampling.</p>
<h2 id="nearest">Nearest</h2>
<p>Even though is not a part of the &lsquo;solution&rsquo;, it is interesting to see how we can obtain manually the nearest filter coordinates, despite having enabled bilinear filtering.</p>
<p>Taken directly from the <a href="https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf">OpenGL Specification</a> (page 281):</p>

<figure>

  <a data-fancybox="" href="opengl_nearest_formula.png" >

<img src="opengl_nearest_formula.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>OpenGL nearest formula.</h4>
  
</figcaption>

</figure>

<p>In the footer, the idea we are using is explained:</p>
<blockquote>
<p>Implementations may instead round the texture layer using the nearly equivalent computation |value + 1/2|.</p>
</blockquote>
<p>We need to search the Manhattan distance from the texel center, thus using <code>floor(pixel) + 0.5</code> works perfectly.</p>
<pre tabindex="0"><code>vec2 uv_nearest( vec2 uv, ivec2 texture_size ) {
    vec2 pixel = uv * texture_size;
    pixel = floor(pixel) + .5;

    return pixel / texture_size;
}
</code></pre><h2 id="csantos">CSantos</h2>
<p>Claudio Santos (<a href="https://github.com/csantosbh">github</a>) in his blog already in 2014 tackled the problem, as we can see from the following blog posts:</p>
<ul>
<li><a href="https://csantosbh.wordpress.com/2014/01/25/manual-texture-filtering-for-pixelated-games-in-webgl/">manual-texture-filtering-for-pixelated-games-in-webgl</a></li>
<li><a href="https://csantosbh.wordpress.com/2014/02/05/automatically-detecting-the-texture-filter-threshold-for-pixelated-magnifications/">automatically-detecting-the-texture-filter-threshold-for-pixelated-magnifications</a></li>
</ul>
<p>He was searching for a way to modify the UV closer to the <strong>texel seam</strong>, and came up with his own way.</p>
<blockquote>
<p>In order to have smooth transitions between texels, this offset should be replaced by a function that increases linearly at the margin of the texel, remains constant at its “blocky” region (with a value of 0.5) and then increases to 1.0 on the opposite margin of the texel.</p>
</blockquote>
<p>He mathematically found the 2 functions to add close to the &lsquo;minimum&rsquo; seam (towards the 0 of the texel) and towards the &lsquo;maximum&rsquo; seam (towards 1):</p>
<ul>
<li>clamp( .5 / alpha * pixels_fract, 0, .5 )</li>
<li>clamp( .5 / alpha * (pixels_fract - 1) + .5, 0, .5 )</li>
</ul>
<p>In the second blog post, he found also that using <strong>fwidth</strong> on the texel coordinates give you a resolution independent value that can be used to have a more consistent look:</p>
<pre tabindex="0"><code>vec2 uv_cstantos( vec2 uv, vec2 res ) {
    vec2 pixels = uv * res;

    // Updated to the final article
    vec2 alpha = 0.7 * fwidth(pixels);
    vec2 pixels_fract = fract(pixels);
    vec2 pixels_diff = clamp( .5 / alpha * pixels_fract, 0, .5 ) +
                       clamp( .5 / alpha * (pixels_fract - 1) + .5, 0, .5 );
    pixels = floor(pixels) + pixels_diff;
    return pixels / res;
}
</code></pre><p>We will see in many other filters that the usage of <a href="https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fwidth.xhtml">fwidth</a> is crucial to work with resolution independent filtering.</p>
<p>For more informations on <strong>fwidth</strong>:</p>
<ul>
<li><a href="https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fwidth.xhtml">https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/fwidth.xhtml</a></li>
<li><a href="https://computergraphics.stackexchange.com/questions/61/what-is-fwidth-and-how-does-it-work">https://computergraphics.stackexchange.com/questions/61/what-is-fwidth-and-how-does-it-work</a></li>
<li><a href="https://www.ronja-tutorials.com/post/046-fwidth/">https://www.ronja-tutorials.com/post/046-fwidth/</a></li>
</ul>
<h2 id="cole-cecil">Cole Cecil</h2>
<p>In a similar way, Cole Cecil in <a href="https://colececil.io/blog/2017/scaling-pixel-art-without-destroying-it/">this article</a> creates two different functions that define the steepness of the function that interpolation amount.</p>
<pre tabindex="0"><code>vec2 uv_colececil( vec2 uv, ivec2 texture_size ) {
    vec2 pixel = uv * texture_size;

    vec2 locationWithinTexel = fract(pixel);
    // Calculate the inverse of texels_per_pixel so we multiply here instead of dividing.
    vec2 interpolationAmount = clamp(locationWithinTexel * locals.texels_per_pixel, 0, .5) +
                               clamp((locationWithinTexel - 1) * locals.texels_per_pixel + .5, 0, .5);

    return (floor(pixel) + interpolationAmount) / texture_size;
}
</code></pre><p>The &lsquo;texels_per_pixel&rsquo; variable is calculated on the CPU, and it is basically a ratio between the camera render target size and the screen size, including the possible zoom of it.</p>
<p>In the original post from the author it can be found in the comment section.</p>
<p>I write it down here as reference:</p>
<pre tabindex="0"><code>static f32 calculate_texels_per_pixel( f32 camera_width, f32 camera_height, f32 camera_zoom, f32 screen_width, f32 screen_height ) {
    f32 texels_per_pixel = 1.f;

    const f32 camera_aspect_ratio = camera_width / camera_height;
    const f32 screen_aspect_ratio = screen_width / screen_height;

    if ( screen_aspect_ratio &gt; camera_aspect_ratio ) {
        texels_per_pixel = camera_height / screen_height;
    }
    else {
        texels_per_pixel = camera_width / screen_width;
    }
    // Zoom is inverted compared to ColeCecil post, so we keep same calculation here but in the shader we multiply.
    return texels_per_pixel / camera_zoom;
}
</code></pre><h2 id="rnavega">RNavega</h2>
<p>The last filter accompained by a blog post of some sort is from Rodrigo Navega, in the <a href="https://love2d.org/forums/viewtopic.php?t=89442">Love2D forum</a> and the <a href="https://github.com/RNavega/PixelArt-Antialias-Love2D/blob/master/main.lua">shader code</a>.</p>
<p>After the previous filters the mindset is similar, so showing the code should be simpler. We are still calculating the weights based on the distance from the edge, the difference here is that it outputs also an alpha value to be used in conjunction with the texture alpha.</p>
<pre tabindex="0"><code>// The default size, in pixels, of the antialiasing filter. The default is 1.0 for a mathematically perfect
// antialias. But if you want, you can increase this to 1.5, 2.0, 3.0 and such to force a bigger antialias zone
// than normal, using more screen pixels.

float SMOOTH_SIZE = locals.filter_width;
float _HALF_SMOOTH = SMOOTH_SIZE / 2.0;

vec2 uv_aa_dist( vec2 uv, vec2 res, out float alpha ) {

    vec2 pixels = uv * res;

    const vec2 nearest_edge = floor( pixels + 0.5 );
    const vec2 edge_distance = (pixels - nearest_edge) * locals.camera_scale;
    const vec2 factor = clamp( edge_distance / vec2(_HALF_SMOOTH), -1.0, 1.0 );

    pixels = (nearest_edge + 0.5 * factor );

    const vec2 center_offset = abs(uv - vec2(0.5));
    vec2 alpha_distance = ((center_offset - 0.5) * res * locals.camera_scale + _HALF_SMOOTH) / SMOOTH_SIZE;
    alpha_distance = clamp( alpha_distance, 0, 1 );
    alpha = 1.0 - max(alpha_distance.x, alpha_distance.y);

    return pixels / res;
}
</code></pre><p>Remembering that we are using alpha blending as well, we can use this value to output a smoother edge.<!-- raw HTML omitted -->
Also to note that the smooth size can be driven by the filter width in the demo, to experiment with the visuals.</p>
<p>Here the factor is calculated based on the edge distance from the center texel and clamped between -1 and 1.</p>
<h2 id="klems">Klems</h2>
<p>Klems decide to use a smoothstep based <a href="https://www.shadertoy.com/view/MllBWf">approach</a> in the shader:</p>
<pre tabindex="0"><code>vec2 uv_klems( vec2 uv, ivec2 texture_size ) {
            
    vec2 pixels = uv * texture_size + 0.5;
    
    // tweak fractional value of the texture coordinate
    vec2 fl = floor(pixels);
    vec2 fr = fract(pixels);
    vec2 aa = fwidth(pixels) * 0.75;

    fr = smoothstep( vec2(0.5) - aa, vec2(0.5) + aa, fr);
    
    return (fl + fr - 0.5) / texture_size;
}
</code></pre><p>It again use <strong>fwidth</strong> approach to calculate the factor, and use the fractional value to smoothstep between the 2 values that will be used near the edges.</p>
<h2 id="inigo-quilez-3">Inigo Quilez (&lt;3)</h2>
<p>From the comments in the <a href="https://www.shadertoy.com/view/MllBWf">Klems filter</a>, the incredible Inigo comes up with another filter:</p>
<pre tabindex="0"><code>vec2 uv_iq( vec2 uv, ivec2 texture_size ) {
    vec2 pixel = uv * texture_size;

    vec2 seam = floor(pixel + 0.5);
    vec2 dudv = fwidth(pixel);
    pixel = seam + clamp( (pixel - seam) / dudv, -0.5, 0.5);
    
    return pixel / texture_size;
}
</code></pre><p>The variable names are quite explicit, but the idea is to again start from the seam of the texture and modify the final uv based on the distance from the seam.</p>
<h2 id="blocky">Blocky</h2>
<p>This is very similar to IQ filter, just using different math:</p>
<pre tabindex="0"><code>// https://www.shadertoy.com/view/ltfXWS
// samples from a linearly-interpolated texture to produce an appearance similar to
// nearest-neighbor interpolation, but with resolution-dependent antialiasing
// 
// this function's interface is exactly the same as texture's, aside from the 'res'
// parameter, which represents the resolution of the texture 'tex'.
// basically calculates the lengths of (a.x, b.x) and (a.y, b.y) at the same time
vec2 v2len(in vec2 a, in vec2 b) {
    return sqrt( a * a + b * b );
}

vec2 uv_blocky( in vec2 uv, in ivec2 res ) {
    vec2 pixels = uv * res; // enter texel coordinate space.
    
    vec2 seam = floor(pixels + .5); // find the nearest seam between texels.
    
    // here's where the magic happens. scale up the distance to the seam so that all
    // interpolation happens in a one-pixel-wide space.
    pixels = (pixels - seam) / v2len(dFdx(pixels), dFdy(pixels)) + seam;
    
    pixels = clamp(pixels, seam - .5, seam + .5); // clamp to the center of a texel.
    
    return pixels / res;// convert back to 0..1 coordinate space.
}
</code></pre><h2 id="bgolus-anti-aliasing">BGolus: Anti-Aliasing</h2>
<p><a href="https://twitter.com/bgolus/">Ben Golus</a> also wrote his own implementation <a href="https://www.shadertoy.com/view/ltBfRD">here</a> with two variations as well!</p>
<pre tabindex="0"><code>vec2 uv_aa_linear( vec2 uv, vec2 res, float width ) {
    vec2 pixels = uv * res;
    
    vec2 pixels_floor = floor(pixels + 0.5);
    vec2 pixels_fract = clamp( (pixels - pixels_floor) / fwidth(pixels) / width, -0.5, 0.5);

    return (pixels_floor + pixel_fract) / res;
}

vec2 uv_aa_smoothstep( vec2 uv, vec2 res, float width ) {
    vec2 pixels = uv * res;
    
    vec2 pixels_floor = floor(pixels + 0.5);
    vec2 pixels_fract = fract(pixels + 0.5);
    vec2 pixels_aa = fwidth(pixels) * width * 0.5;
    pixels_fract = smoothstep( vec2(0.5) - pixels_aa, vec2(0.5) + pixels_aa, pixels_fract );
    
    return (pixels_floor + pixels_fract - 0.5) / res;
}
</code></pre><p>They both use a width to define how big is the area covered by the <em>anti-aliasing</em> on the edges, and in the demo it is a tweakable value (default to 1.5).<!-- raw HTML omitted --></p>
<p>The first variation it scales using <strong>fwidth</strong> but also modifies the value with the width, giving the possibility of a more fine tuned control over the edge appearance <code>(pixels - pixels_floor) / fwidth(pixels) / width</code>. This is a <strong>unique feature</strong> of his filters!</p>
<p>The second variation has both the smoothstep as a way of filtering the UV based on the distance from the center of the texel, and a fwidth tunable with the width again as value to move the sampling coordinate. Note that if width is 0, pixel_fract is 0.5, thus being the center of the texel, and in the final conversion back it is taken in consideration.</p>
<h2 id="fat-pixel">Fat Pixel</h2>
<p>This is the shader that was mentioned by Casey Muratori in his <a href="https://hero.handmade.network/episode/chat/chat018/">video</a> and for me started all this research culminating in this article!
The original source code is <a href="https://www.shadertoy.com/view/ltBGWc">here</a> but again I post the code straight away:</p>
<pre tabindex="0"><code>vec2 uv_fat_pixel( vec2 uv, ivec2 texture_size ) {
    vec2 pixel = uv * texture_size;

    vec2 fat_pixel = floor(pixel) + 0.5;
    // subpixel aa algorithm (COMMENT OUT TO COMPARE WITH POINT SAMPLING)
    fat_pixel += 1 - clamp((1.0 - fract(pixel)) * locals.texels_per_pixel, 0, 1);
        
    return fat_pixel / texture_size;
}
</code></pre><p>Using the same texels_per_pixel number calculated as for the Cole Cecil shader, we basically move the UV based on the distance to the edge. <!-- raw HTML omitted --></p>
<p>Note that texels_per_pixel if camera and scene have the same size it becomes just the <strong>camera zoom</strong> - so we are choosing the weight from edge scaled by the zoom factor of the camera.</p>
<h2 id="todo-the-maister">TODO: The Maister</h2>
<p>There is a final filter that I wanted to check, but I will come at it later. I wanted to write about it briefly because there is the most mathematical approach and thus can shed some light also an all the other filters!</p>
<p>The most mathematical approach is by <a href="https://twitter.com/Themaister">Hans Kristian</a> in which he does an analysis of the problem from a signal theory point of view. <a href="https://themaister.net/blog">His blog</a> is full of great posts, so go check it out!</p>
<p>The posts that we will see are the following:</p>
<ul>
<li><a href="https://themaister.net/blog/2018/08/25/pseudo-bandlimited-pixel-art-filtering-in-3d-a-mathematical-derivation/">pseudo-bandlimited-pixel-art-filtering-in-3d-a-mathematical-derivation</a></li>
<li><a href="https://themaister.net/blog/2018/08/29/why-coverage-based-pixel-art-filtering-is-terrible/">why-coverage-based-pixel-art-filtering-is-terrible</a></li>
</ul>
<p>They are an in-depth signal based analysis of the problem, even though the author kindly added <a href="https://github.com/Themaister/Granite/blob/master/assets/shaders/inc/bandlimited_pixel_filter.h">source code as well</a>.</p>
<p>I will check the shader code in the future, for now the blog post is what really gives a hand at understanding the other filters.</p>
<h1 id="the-testbed">The Testbed</h1>
<p>With the accompanying source code there is included also some graphics to already test the idea presented here.<!-- raw HTML omitted -->
I&rsquo;ve used two textures, that were free to use made available by the amazing <a href="https://twitter.com/ansimuz">Luis Zuno</a> found through his <a href="https://ansimuz.itch.io/">itch.io page</a>.</p>
<p>It should be pretty straightforward to modify the shaders and test your own ideas, so I hope you will come up with new filters!</p>
<p>All the filters are in <strong>DataDrivenRendering/data/articles/PixelArtFiltering/pixel_art_filtering.hfx</strong> file.</p>
<p>The source is in my <a href="https://github.com/JorenJoestar/DataDrivenRendering">github repository</a> both in data/articles/PixelArtfiltering and source/articles/PixelArtFiltering where you can find the shaders and the code. There are basically only two files (pixel_art_filtering.hfx and pixel_art_filtering_app.cpp) that you need to modify to experiment with this concepts.</p>
<h2 id="scene-setup">Scene Setup</h2>
<p>The scene is composed of an animated sprite and a background.<!-- raw HTML omitted --></p>
<p>There are different options to zoom in and out and translate, to test all possible scenarios.</p>
<p>I&rsquo;ve added also a simple CRT filter to be toggled after the scene is rendered.</p>
<p>Also, sampling is always bilinear.</p>
<p>You can also toggle <strong>premultiplied alpha</strong>, so you see that not having any alpha blending will result in shimmering edges, another big problem not really mentioned around.</p>
<h1 id="links-and-previous-work">Links and Previous Work</h1>
<p>Here I want to link all the previous posts about the subject for quick reference:<!-- raw HTML omitted --></p>
<ul>
<li><a href="https://csantosbh.wordpress.com/2014/01/25/manual-texture-filtering-for-pixelated-games-in-webgl/">https://csantosbh.wordpress.com/2014/01/25/manual-texture-filtering-for-pixelated-games-in-webgl/</a></li>
<li><a href="https://csantosbh.wordpress.com/2014/02/05/automatically-detecting-the-texture-filter-threshold-for-pixelated-magnifications/">https://csantosbh.wordpress.com/2014/02/05/automatically-detecting-the-texture-filter-threshold-for-pixelated-magnifications/</a></li>
<li><a href="https://colececil.io/blog/2017/scaling-pixel-art-without-destroying-it/">https://colececil.io/blog/2017/scaling-pixel-art-without-destroying-it/</a></li>
<li><a href="https://themaister.net/blog/2018/08/25/pseudo-bandlimited-pixel-art-filtering-in-3d-a-mathematical-derivation/">https://themaister.net/blog/2018/08/25/pseudo-bandlimited-pixel-art-filtering-in-3d-a-mathematical-derivation/</a></li>
<li><a href="https://love2d.org/forums/viewtopic.php?t=89442">https://love2d.org/forums/viewtopic.php?t=89442</a></li>
<li><a href="https://github.com/RNavega/PixelArt-Antialias-Love2D/blob/master/main.lua">https://github.com/RNavega/PixelArt-Antialias-Love2D/blob/master/main.lua</a></li>
</ul>
<p>Also <a href="https://www.shadertoy.com/">ShaderToy</a> is a source of many other filters included in the demo.</p>
<ul>
<li><a href="https://www.shadertoy.com/view/MllBWf">https://www.shadertoy.com/view/MllBWf</a></li>
<li><a href="https://www.shadertoy.com/view/ltfXWS">https://www.shadertoy.com/view/ltfXWS</a></li>
<li><a href="https://www.shadertoy.com/view/4dlXzB">https://www.shadertoy.com/view/4dlXzB</a></li>
<li><a href="https://www.shadertoy.com/view/ltcGDX">https://www.shadertoy.com/view/ltcGDX</a></li>
<li><a href="https://www.shadertoy.com/view/ltBGWc">https://www.shadertoy.com/view/ltBGWc</a></li>
<li><a href="https://www.shadertoy.com/view/ltBfRD">https://www.shadertoy.com/view/ltBfRD</a></li>
</ul>
<h1 id="conclusions">Conclusions</h1>
<p>We saw different <strong>sampling filters</strong> that resulted in different ways of leveraging the <em>bilinear filtering</em> with some custom coordinates to obtain a mix of sharpness for inside pixels and smoothness on the edges.</p>
<p>We also have now a easy to modify testbed to try different ideas and hopefully make your pixels (and your eyes) happy!</p>
<p>As always, please comment, modify, improve, share the article and the code!</p>

    
    
    
      Rendering Astronomic Stars
      https://jorenjoestar.github.io/post/realistic_stars/
      Sat, 26 Dec 2020 11:54:39 +0100
      
      https://jorenjoestar.github.io/post/realistic_stars/
      <h1 id="overview">Overview</h1>
<p>Since growing up I&rsquo;ve always been fascinated by stars, and being exposed to anime like Sainy Seiya and Hokuto No Ken just fueled the passion.
My 4th year of high-school had a full year course on &lsquo;geographical astronomy&rsquo; - an in depth look at our planet and the stars from a scientific perspective.
Many years has passed (20+!) and I&rsquo;ve never dwelved into these kind of topic.</p>
<p>Then few years ago, while researching for rendering un Just Cause 4 I stumbled upon a couple of papers about realistic rendering of stars.
I did a working prototype in Unity but did not understood many things, and I had no time to look back into this.</p>
<p>Then came Christmas time, with lockdown and such I finally had an excuse to dwelve deeper into this topic.
Also I am searching for little rendering demos I can use to test and cleanup my libraries to write code.</p>
<p>A <em>HUGE</em> shout to the author of <a href="https://github.com/cgcostume/osghimmel">SGHimmel</a> - code that contains a much deeper and precise implementation.</p>
<p>Mine is more a starting point and a small subset of what is needed to render realistic stars - the ones <em>visible with naked eye</em>.</p>
<p>There is a seminal paper that put all these informations in one place:</p>
<p><a href="https://graphics.stanford.edu/~henrik/papers/nightsky/nightsky.pdf">A Physically Based Night Sky Model</a>.<!-- raw HTML omitted -->
This paper contains all the stars rendering informations (and much more, like Moon and Sun) and it is the real deal.</p>
<p>A second paper also expanded that and gave us the SGHimmel code:</p>
<p><a href="https://www.researchgate.net/publication/287031803_Single-pass_Rendering_of_Day_and_Night_Sky_Phenomena">Single Pass Rendering of Day and Night Sky Phenomena</a>.</p>
<p>My only contribution is to distill the very complex informations in a few files of code, and maybe help someone else to start looking into this amazing world.</p>
<h1 id="astronomy">Astronomy</h1>
<p>Where do we start ?</p>
<h2 id="catalogs">Catalogs</h2>
<p>We need DATA.
In Astronomy, and for stars, there are the so called &lsquo;<em>catalogs</em>&rsquo; - a collection of data relative to stars normally collected by hand (!) by astronomers from different sources.<!-- raw HTML omitted -->
A list of catalogs can be found here:</p>
<p><a href="https://heasarc.gsfc.nasa.gov/docs/cgro/db-perl/W3Browse/w3table.pl?MissionHelp=star_catalog">https://heasarc.gsfc.nasa.gov/docs/cgro/db-perl/W3Browse/w3table.pl?MissionHelp=star_catalog</a></p>
<p>&hellip; catalogs types and story ?</p>
<p>Amongst all the catalogs the most beginner friendly to use is the <a href="http://tdc-www.harvard.edu/catalogs/bsc5.html"><em>Yale Bright Stars Catalog</em></a>.<!-- raw HTML omitted -->
This catalog was created around 1908 and different was updated until &lsquo;recently&rsquo;.<!-- raw HTML omitted -->
It contains all the stars that are visible with naked eye from Earth - 9100 objects - normally visible if the have a visual magnitude of more than 6.5.<!-- raw HTML omitted -->
The online version is both a binary based one and a text based one.<!-- raw HTML omitted -->
I decided to use the binary version, but possibly it will change in the future.</p>
<h2 id="star-entry">Star Entry</h2>
<p>Now that we chose a catalog let&rsquo;s see what we really need to properly place and visualize a star.<!-- raw HTML omitted -->
Using the binary version shows the minimum necessary data that can be used, and in this case following <a href="http://tdc-www.harvard.edu/catalogs/bsc5.entry.html">this</a> link:</p>
<ul>
<li>Right Ascension and Declination</li>
<li>Spectral Type</li>
<li>Visual Magnitude</li>
<li>Proper Motion</li>
</ul>
<p>Before dwelving into this, an <em>incredibly important</em> thing to consider is <em>WHEN</em> the catalog is compiled - more specifically what <em>time reference point</em> is used in the catalog.</p>
<h3 id="epoch-julian-dates-and-j2000">Epoch, Julian Dates and J2000</h3>
<p><strong>TLDR</strong>: convert from Gregorian Calendar to Julian Date to properly rotate stars.</p>
<p><strong>Long explanation:</strong>
Between different astronomers different <em>epochs</em> were used in different calendars, thus referencing different catalogs had problems in understanding which reference system was used.<!-- raw HTML omitted -->
As some of you may know, depending on your culture you could use different calendars as well!<!-- raw HTML omitted --></p>
<p>For astronomy related things, a common &lsquo;time reference point&rsquo; was decided by the <a href="https://www.iau.org/">International Astronomical Union</a>, and this is the <strong>Julian Calendar</strong> with the precise moment called <em>J2000</em>.</p>
<p>Different &lsquo;reference points&rsquo; were used, and in 1984 the IAU switched from the J1950 to the J2000 epoch.</p>
<p>Specifically an <strong>epoch</strong> is a moment in time that is used as central reference point to calculate positions and motions of celestial objects.</p>
<p><strong>J2000</strong> thus is the date of January 1, 2000 at 12:00 Terrestrial Time in the Gregorian Calendar at the Greenwich meridian, and all the positional data in the catalog is relative to this moment.</p>
<p>There are plenty of conversions between Gregorian Calendar and Julian Calendar, and in the code provided there will be some links also to some pages with the math involved.</p>
<h3 id="right-ascension-and-declination">Right Ascension and Declination</h3>
<p><strong>TLDR</strong>: stars &lsquo;latitude and longitude&rsquo; to place them.</p>
<p><strong>Long explanation:</strong></p>
<p>Now that we have a reference time, we can finally use the Right Ascension and Declination data.</p>
<p>A very simple explanation of Right Ascension and Declination is that they are the celestial equivalent to latitude and longitude on earth, but they reference the <strong>celestial sphere</strong> - an ideal sphere centered in the Earth center and <strong>not</strong> following the Earth axis inclination.</p>

<figure>

  <a data-fancybox="" href="https://upload.wikimedia.org/wikipedia/commons/9/95/JostBurgi-MechanisedCelestialGlobe1594.jpg" >

<img src="https://upload.wikimedia.org/wikipedia/commons/9/95/JostBurgi-MechanisedCelestialGlobe1594.jpg" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Jost Burgi Celestial Sphere. Source: Wikipedia.</h4>
  
</figcaption>

</figure>

<p>Both Right Ascension and Declination are relative to the <strong>Celestial Equator</strong> - an ideal equator that has a different inclination than the natural Earth equator (due to its tilt axis).<!-- raw HTML omitted -->
Right Ascension thus is the eastward angular distance relative to the Celestial Equator, expressed in hours, minutes and seconds.<!-- raw HTML omitted -->
Declination instead is the north/south angle relative to the Celestial Equator, expressed in degrees (in the range -90, 90).</p>
<p>All this combined defines the <strong><a href="https://en.wikipedia.org/wiki/Equatorial_coordinate_system">Equatorial Coordinate System</a></strong>, used to locate celestial objects.</p>
<p><strong>Right Ascension and Declination relative to J2000</strong> are then the celestial &lsquo;latitude and longitude&rsquo; to locate a celestial object around the Earth, relative to a reference system that is not tilted with the axis but more &lsquo;absolute&rsquo;.</p>
<h3 id="spectral-type">Spectral Type</h3>
<p><strong>TLDR</strong>: convert from Spectral Type to RGB color.</p>
<p><strong>Long explanation:</strong></p>
<p>To help organize stars they needed to categorize them based on some parameters.<!-- raw HTML omitted -->
In 1817 already Josepth Von FraunHofer started analyzing the <em>spectrum</em> of the visible stars and in the following years, but it is with the work of <strong>Annie Cannon</strong>, that catalogued <em>hundreds of thousands</em> of stars, that spectrum-based classification became more common.</p>
<p>There are two main spectral classifications, the <a href="https://starparty.com/topics/astronomy/stars/the-morgan-keenan-system/">Morgan-Keenan System</a> and the <a href="https://en.wikipedia.org/wiki/UBV_photometric_system">UBV or Johnson-Morgan-system</a>.</p>
<p>Interestingly enough the <em>Yale Bright Star Catalog</em> contains the <em>MK Spectral Type</em> in the binary format, and the <em>BV</em> index in the text format.</p>
<p>I ended up creating a list of MK types to colors in the code, starting from these:</p>
<p>Spectral Type to temperature
<a href="https://www.handprint.com/ASTRO/specclass.html">https://www.handprint.com/ASTRO/specclass.html</a></p>
<p>Temperature to color
<a href="http://www.vendian.org/mncharity/dir3/blackbody/UnstableURLs/bbr_color.html">http://www.vendian.org/mncharity/dir3/blackbody/UnstableURLs/bbr_color.html</a></p>
<p>As an alternative I could have parse the text version and using the BV indices, possibly I&rsquo;ll do that and cross reference colors to see if the are exact.</p>
<p>There is also this incredibly useful post about all this:</p>
<p><a href="https://stackoverflow.com/questions/21977786/star-b-v-color-index-to-apparent-rgb-color">https://stackoverflow.com/questions/21977786/star-b-v-color-index-to-apparent-rgb-color</a></p>
<p><strong>The key information here</strong> is that once we read the <em>Spectral Type</em> of each star, we have a table that converts it to an RGB value.</p>
<h3 id="visual-magnitude">Visual Magnitude</h3>
<p><strong>TLDR:</strong> magnitude shows how visible is a star.</p>
<p><strong>Long explanation:</strong></p>
<p>This is the part in which I still don&rsquo;t feel confident about what is really happening, but I&rsquo;ll try to give the better explanation of what I understood.<!-- raw HTML omitted -->
It will possibly be subject to changes in the code!</p>
<p>In the seminal paper a correlation between the <em>Magnitude</em> and the <em>Glaring</em> is done, with the Glaring coming from another very important paper on visual perception, defining Glare as the sum of the flare and bloom optical phenomena happening to our eyes <a href="https://www.researchgate.net/publication/2593999_Physically-Based_Glare_Effects_for_Digital_Images">here</a>.</p>
<p>We are trying to create a correlation between the Magnitude of a star and how big is seen in the screen, and this is a pretty accurate description of what happens to us when seeing &lsquo;brighter stars&rsquo;.</p>
<p>We have 2 ways to achieve this:</p>
<ul>
<li>Output a pixel color intensity that works with tonemapping and engages the bloom</li>
<li>Make the star bigger based on magnitude.</li>
</ul>
<p>The second approach is the one used here, but I would like to experiment also with the other option.</p>
<p>In the second paper (Single Pass &hellip;) there are some equations that correlate pixel intensity with visual magnitude AND &lsquo;how big&rsquo; the stars appear to the same magnitude.</p>
<p>We will see more in detail in the code how to use those.</p>
<h3 id="proper-motion">Proper Motion</h3>
<p><strong>TLDR:</strong> adjust right ascension and declination with this per-year changes.</p>
<p><strong>Long explanation:</strong></p>
<p>The final data relative to the stars is the proper motion.<!-- raw HTML omitted -->
Proper motion can be simply defined as the yearly move of a star in Equatorial Coordinate System.<!-- raw HTML omitted -->
Most of the stars visible with naked eye are so distant that their motion is not as diverse as the J2000 position specified, but few (the closest ones) need a more precise calculation.</p>
<p>Taking in account <em>proper motion</em> will give the most precise star positioning of all.</p>
<h1 id="coding">Coding</h1>
<p>After this lenghty introduction in astronomy we can finally see the code!<!-- raw HTML omitted -->
The repository is still <a href="https://github.com/JorenJoestar/DataDrivenRendering">DataDrivenRendering</a> - but all the code and data is contained under the StarApplication folders in source/articles and data/articles!<!-- raw HTML omitted -->
I am working on improving my framework so I can experiment faster and faster.</p>
<p>As already wrote before, one of the biggest problem was retrieving the data and understanding its meaning!</p>
<h2 id="project-structure">Project Structure</h2>
<p>Data: <a href="https://github.com/JorenJoestar/DataDrivenRendering/tree/master/data/articles/StarRendering">https://github.com/JorenJoestar/DataDrivenRendering/tree/master/data/articles/StarRendering</a></p>
<p>Source: <a href="https://github.com/JorenJoestar/DataDrivenRendering/tree/master/source/Articles/StarRendering">https://github.com/JorenJoestar/DataDrivenRendering/tree/master/source/Articles/StarRendering</a></p>
<p>All the relevant code is in star_map_application.h/.cpp.<!-- raw HTML omitted --></p>
<h2 id="star-data-parsing">Star Data Parsing</h2>
<p>We chose the <strong>Yale Bright Star Catalog</strong>, and there are two versions here (<a href="http://tdc-www.harvard.edu/software/catalogs/bsc5.html)">http://tdc-www.harvard.edu/software/catalogs/bsc5.html)</a>: one binary and one text.<!-- raw HTML omitted -->
I chose to use the binary one, even though I could change idea and revise this code and article.</p>
<p>The binary is pretty easy to parse, with a caveat: you need an alignment of 1 to correctly parse the data!<!-- raw HTML omitted -->
The parsing structures are just 2, one for the header and one for each star entry:</p>
<ul>
<li><a href="http://tdc-www.harvard.edu/software/catalogs/bsc5.header.html">http://tdc-www.harvard.edu/software/catalogs/bsc5.header.html</a></li>
<li><a href="http://tdc-www.harvard.edu/software/catalogs/bsc5.entry.html">http://tdc-www.harvard.edu/software/catalogs/bsc5.entry.html</a></li>
</ul>
<p>Once we parse from the file we have all our stars with <em>right ascension, declination and visual magnitude</em> ready for us!</p>
<h2 id="constellation-data-parsing">Constellation Data Parsing</h2>
<p>Constellations are another set of data that needs to be relative to a specific <strong>catalog</strong>.<!-- raw HTML omitted -->
I found this website that presents the constellation lines in a text format:</p>
<p><a href="http://cdsarc.u-strasbg.fr/viz-bin/Cat?VI/49">http://cdsarc.u-strasbg.fr/viz-bin/Cat?VI/49</a><!-- raw HTML omitted -->
<a href="https://github.com/hemel-waarnemen-com/Constellation-lines">https://github.com/hemel-waarnemen-com/Constellation-lines</a></p>
<p>The problem is that the file contains the constellations as a series of line (line strips) that you need to continuously draw <em>like a pen not leaving the paper</em>.<!-- raw HTML omitted -->
I decided to convert this in a list of segments, so I have to parse the text file and make the conversion.</p>
<p>There are a couple of caveats here:</p>
<ul>
<li>Constellations can be present more than once, the they have 2 non contiguous lines.</li>
<li>Parsing is done 2 times, first to calculate offsets of final segments (especially for the constellations with more lines), second to actually parse the data.</li>
</ul>
<p>This is also an interesting use of the hydra_lexer - backbone of the HFX language.<!-- raw HTML omitted -->
In this demo it is already used but in following ones I&rsquo;ll update it more and more.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    // Read constellation file
    char* constellation_data = hydra::file_read_into_memory( &quot;..\\data\\articles\\StarRendering\\constellations_lines.txt&quot;, nullptr, false, *allocator );
    // Allocate raw memory and entries for the data parsed.
    // Not elegant, but functioning.
    DataBuffer data_buffer;
    data_buffer_init( &amp;data_buffer, 10000, 10000 * 4 );

    Lexer lexer;
    lexer_init( &amp;lexer, constellation_data, &amp;data_buffer );

    // First parse: calculate offsets and total size of indices array.
    uint32_t data_size = 0;
    bool parsing = true;

    // An example entry:
    // Ant   4 4273 4104 3871 3765
    // Hash is used as line comment.
    //
    while ( parsing ) {

        Token token;
        lexer_next_token( &amp;lexer, token );

        switch ( token.type ) {

            case Token::Token_Hash:
            {
                // Skip the line
                lexer_goto_next_line( &amp;lexer );

                break;
            }

            case Token::Token_Identifier:
            {
                // Ant   4 4273 4104 3871 3765
                // Read name
                char name[ 4 ];
                name[ 0 ] = toupper( token.text.text[ 0 ] );
                name[ 1 ] = toupper( token.text.text[ 1 ] );
                name[ 2 ] = toupper( token.text.text[ 2 ] );
                name[ 3 ] = 0;

                int32_t constellation_index = Constellations::get_index( &amp;constellations, name );

                // Read segment count
                lexer_expect_token( &amp;lexer, token, Token::Token_Number );

                uint32_t count = atoi( token.text.text );
                constellations.entries[ constellation_index ].count += count - 1; // This is segments count
                data_size += count - 1; // Segments count

                // Just advance the token to the next line.
                for ( uint32_t i = 0; i &lt; count; ++i ) {
                    lexer_next_token( &amp;lexer, token );
                }

                break;
            }

            case Token::Type::Token_EndOfStream:
            {
                parsing = false;
                break;
            }
        }
    }
</code></pre><p>The most interesting part for me is seeing the parsing loop and having a lexer/tokenizer as a personal tool is a MUST!<!-- raw HTML omitted -->
Constellations contains a map from the name to the entry.<!-- raw HTML omitted -->
The second parse just reads the actual star numbers and puts them in the correct place.<!-- raw HTML omitted -->
Not sure it is interesting code to read here.<!-- raw HTML omitted -->
We now have a list of segments, and thus 2 points, for each constellation, in a contiguous block of memory.</p>
<p>Next is&hellip;</p>
<h2 id="temperature-to-color">Temperature to Color</h2>
<p>In the binary data we parsed from the Catalog we have the <strong>Spectral Type</strong> of a star, a letter+number identification system to classify a star.<!-- raw HTML omitted -->
To properly calculate the color of a star we need to do the following:</p>
<ol>
<li>Read the star <em>Spectral Type</em></li>
<li>Convert the <em>Spectral Type</em> to <em>Temperature</em></li>
<li>Convert <em>Temperature</em> to <em>RGB color</em></li>
</ol>
<p>Taking the data form the links in the MK part of the article, we parse the <em>Temperature to Color</em> data from a file containing the <strong>black bodies color data</strong>.</p>
<p>Again some non-interesting parsing code, but the entries are like this:</p>
<p>1000 K   2deg  0.6499 0.3474  2.472e+06    1.0000 0.0337 0.0000  255  51   0  #ff3300
1000 K  10deg  0.6472 0.3506  2.525e+06    1.0000 0.0401 0.0000  255  56   0  #ff3800</p>
<p>It uses 2 different CIE specifications for colors, and we use the 10deg (the second one) of each entry.</p>
<p>We then have a table (hand written from the links above) that links <em>Spectral Types</em> to temperature:</p>
<pre tabindex="0"><code>struct Range {
    uint32_t        min;
    uint32_t        max;
};

// Morgan-Keenan classification
// https://starparty.com/topics/astronomy/stars/the-morgan-keenan-system/

// Letters are for star categories.
// Numbers (0..9) are for further subdivision: 0 hottest, 9 colder.

static const uint32_t           k_max_star_types = 'z' - 'a';

// Temperature ranges (in Kelvin) of the different MK spectral types.
static const Range              k_star_temperature_ranges[ k_max_star_types ] = {
    // A0-A9            B                   C                 D                 E           F               G
    { 7300, 10000 }, { 10000, 30000 }, { 2400, 3200 }, { 100000, 1000000 }, { 0, 0 }, { 6000, 7300 }, { 5300, 6000 }, { 0, 0 }, { 0, 0 },
    //  J          K                    L           M                           O           P           Q        R          S               T
    { 0, 0 }, { 3800, 5300 }, { 1300, 2100 }, { 2500, 3800 }, { 0, 0 }, { 30000, 40000 }, { 0, 0 }, { 0, 0 }, { 0, 0 }, { 2400, 3500 }, { 600, 1300 },
    // U         V          W              X            Y
    { 0, 0 }, { 0, 0 }, { 25000, 40000 }, { 0, 0 }, { 0, 600 }
};
</code></pre><p>We finally have all conversion from Spectral Types to Color! Ole'!</p>
<h2 id="gregorianjulian-date-conversion">Gregorian/Julian date conversion</h2>
<p>Again some code that is mostly taking formulas from the net!<!-- raw HTML omitted -->
In the <em>Catalog</em> we are using the <strong>Right Ascension and Declination</strong> of each star is expressed relative to the Julian Date 2000.</p>
<p>The only really interesting thing here is the fact that you need to use a double - a float will loose the difference for hour and less in the days!</p>
<pre tabindex="0"><code>//
// From https://en.wikipedia.org/wiki/Julian_day
//
// Gregorian Calendar Date to Julian Day Number conversion

// This is the reference Julian Date used in current astronomy.
static const int32_t j2000 = 2451545;

//
// Julian Day Number calculations.
// https://en.wikipedia.org/wiki/Julian_day
// https://aa.quae.nl/en/reken/juliaansedag.html
// https://core2.gsfc.nasa.gov/time/julian.txt
// http://www.cs.utsa.edu/~cs1063/projects/Spring2011/Project1/jdn-explanation.html
static int32_t calculate_julian_day_number( int32_t year, int32_t month, int32_t day ) {

    // Formula coming from Wikipedia.
    int32_t a = ( month - 14 ) / 12;
    int32_t jdn =  ( 1461 * (year + 4800 + a)) / 4 +
                    ( 367 * ( month - 2 - 12 *  a ) ) / 12 - 
                    ( 3 * ( ( year + 4900 + a ) / 100 ) ) / 4 +
                    day - 32075;

    // Other formula found online:
    /*int m, y, leap_days;
    a = ( ( 14 - month ) / 12 );
    m = ( month - 3 ) + ( 12 * a );
    y = year + 4800 - a;
    leap_days = ( y / 4 ) - ( y / 100 ) + ( y / 400 );
    int32_t jdn2 = day + ( ( ( 153 * m ) + 2 ) / 5 ) + ( 365 * y ) + leap_days - 32045;*/

    return jdn;
}

//
// Julian Date
//
static double calculate_julian_date( int32_t year, int32_t month, int32_t day, int32_t hour, int32_t minute, int32_t second ) {
    int32_t jdn = calculate_julian_day_number( year, month, day );

    double jd = jdn + (( hour - 12.0 ) / 24.0) + (minute / 1440.0) + (second / 86400.0);
    return jd;
}

//
// Julian centuries since January 1, 2000, used to rotate the stars.
//
static double calculate_julian_century_date( int32_t year, int32_t month, int32_t day, int32_t hour, int32_t minute, int32_t second ) {
    double jd = calculate_julian_date( year, month, day, hour, minute, second );
    return ( jd - j2000 ) / 36525.0;
}
</code></pre><p><strong>NOTE!!!</strong><!-- raw HTML omitted -->
The Julian date we are calculating is <strong>RELATIVE TO J2000</strong>! Super important!</p>
<h2 id="star-placement">Star Placement</h2>
<p>This is the real deal.<!-- raw HTML omitted -->
I myself used the seminal papers on the subject that express the formulat to calculate the placement of a star in the <em>Celestial Sphere</em>.</p>
<p>There are two component on this:</p>
<h3 id="conversion-from-right-ascension-and-declination-to-equatorial-coordinates">Conversion from <em>Right Ascension and Declination</em> to Equatorial Coordinates.</h3>
<p>The most important thing to remember here is that the <strong>data coming from the catalog</strong> is expressed at <strong>J2000</strong> date.<!-- raw HTML omitted -->
Let&rsquo;s convert RA and D:</p>
<pre tabindex="0"><code>//
// Convert to euclidean coordinates
//
static void convert_to_euclidean( float right_ascension, float declination, float radial_distance, float&amp; out_x, float&amp; out_y, float&amp; out_z ) {
    const float cosd = cosf( declination );

    out_x = radial_distance * sinf( right_ascension ) * cosd;
    out_y = radial_distance * cosf( right_ascension ) * cosd;
    out_z = radial_distance * sinf( declination );
}
</code></pre><p>This will put the star in place at the date of <strong>J2000</strong> or January 1, 2000 at 12:00 Terrestrial Time in the Gregorian Calendar!<!-- raw HTML omitted -->
We need to calculate the rotation from J2000 to our current time and location.</p>
<h3 id="latitude-longitude-and-date-to-rotation">Latitude, Longitude and Date to Rotation</h3>
<p>This is the missing link.<!-- raw HTML omitted -->
As already noted above, the data coming from the Catalog is the position of the stars at <strong>J2000</strong>.</p>
<p>There are some conversions to do from latitude and longitude, and these formulas are a mix coming from the papers I mentioned at the beginnig and simple conversion.</p>
<pre tabindex="0"><code>float longitude_radians = glm_rad( longitude );
float latitude_radians = glm_rad( latitude );

// Calculate rotation matrix based on time, latitude and longitude
// T is time in julian century, as used in the paper.
double T = calculate_julian_century_date( year, month, day, hour, minute, second );
double local_mean_sidereal_time = 4.894961f + 230121.675315f * T + longitude_radians;

// Exploration of different rotations
versors rotation_y = glms_quatv( latitude_radians - GLM_PI_2f, { 0, 1, 0 } );
versors rotation_z = glms_quatv( -local_mean_sidereal_time, { 0, 0, 1 } );

static bool rotation_order_invert = false;

versors final_rotation = rotation_order_invert ? glms_quat_mul( rotation_y, rotation_z ) : glms_quat_mul( rotation_z, rotation_y );
if ( apply_precession ) {
    versors precession_rotation_z = glms_quatv( 0.01118f, { 0, 0, 1 } );
    versors precession = glms_quat_mul( glms_quat_mul( precession_rotation_z, glms_quatv( -0.00972, {1, 0, 0} ) ), precession_rotation_z );

    final_rotation = glms_quat_mul( final_rotation, precession );
}

mat4s star_rotation_matrix = glms_quat_mat4( final_rotation );

</code></pre><p>The ugliness in this code is that I had some reference system problems somewhere, so I put some variables to understand what was happening.<!-- raw HTML omitted -->
This is true code, you see everything :)</p>
<p>Starting from <strong>latitude and longitude and date</strong> we arrive at a rotation matrix to apply to the stars!</p>
<p>Applying precession is taking in consideration the precession and nutation phenomena, again something that the brillian paper &lsquo;A Physically Based Night Sky&rsquo; gives some formula.<!-- raw HTML omitted -->
I admit not having still a deep understaning on how they arrived at that conclusion, but for sure I have a good starting point now (and hopefully you do as well!).</p>
<p>The final position of the star is <strong>star_rotation_matrix * vec4(position.xyz, 1)</strong>, with the position calculated as the Equatorial Coordinate at J2000, and the Star Rotation as the additional rotation taking in consideration Latitude, Longitude and date.</p>
<h2 id="star-rendering-hydra-for-the-win">Star Rendering: Hydra for the win!</h2>
<p>We are using the new Hydra framework - this time having a 80% working Vulkan backend.<!-- raw HTML omitted -->
I am working a bit on having HFX shader language extension as more and more something that I can rely to clearly prototype and explore ideas.<!-- raw HTML omitted -->
The HFX file that renders everything defines also almost everything, from the shader to the vertex layout to the resource types used.</p>
<p>There is a bit of magic as well here - something I found reading the second paper, &lsquo;Single Pass Rendering of Day and Night Sky Phenomena&rsquo; - so the math is coming from there.
I am missing the scintillation, scattering and the daylight removal when it is day, even though for this demo is not important.<!-- raw HTML omitted -->
From this you can see the difference between a demo and a feature in a game: when developing this as a feature, you should consider the interaction with all the other rendering systems, the tonemapping, luts, any kind of clouds, sun and moon rendering, and such.<!-- raw HTML omitted -->
This is crucial!</p>
<p>From a top down view of the rendering, we are basically drawing billboards that use the visual magnitude both for size and alpha.<!-- raw HTML omitted -->
Overdraw fest!!!</p>
<p>Here is the shader used. As you can see you can specify <em>vertex layout and render states as well</em> - something I <strong>LOVE</strong> to see with shaders. They are an integral part of the rendering!</p>
<p>With an HFX file now you can define totally a Vulkan Pipeline, so it is a great tool.<!-- raw HTML omitted -->
The code has reload of shaders, so you can experiment faster!</p>
<pre tabindex="0"><code>shader stars {

    layout {
        list Local {
            cbuffer ViewConstants ViewConstants;
        }

        vertex main3D {
            binding 0 32 instance
            attribute float4 Position 0 0 0
            attribute float4 ColorData 0 1 16
        }

    }

    render_states {
        state alpha {
            Cull None
            ZTest Always
            ZWrite Off
            BlendMode Alpha
        }

    }
    
    glsl to_screen {

        #pragma include &quot;Platform.h&quot;

        layout (std140, binding=0) uniform ViewConstants {
            mat4                    view_projection_matrix;
            mat4                    star_rotation_matrix;

            vec4                    camera_up;
            vec4                    camera_right;

            vec4                    data;       // x = min_radius, y = glare scale, z = radius scale, w = distance scale
        };

        #if defined VERTEX
        layout (location = 0) in  vec4 position;
        layout (location = 1) in  vec4 color_data;

        layout (location = 0) out vec4 vTexCoord;
        layout (location = 1) out vec3 vColor;

        // Per vertex positions and uvs of a quad
        vec3 positions[6]       = vec3[6]( vec3(-0.5,-0.5,0), vec3(0.5,-0.5,0), vec3(0.5, 0.5, 0), vec3(0.5, 0.5, 0), vec3(-0.5,0.5,0), vec3(-0.5,-0.5,0) );
        vec2 uvs[6]             = vec2[6]( vec2(0.0, 1.0),    vec2(1.0, 1.0),   vec2(1.0, 0.0), vec2(1.0, 0.0), vec2(0.0, 0.0), vec2(0.0, 1.0) );

        const float _35OVER13PI = 0.85698815511020565414014334123662;

        void main() {

            // Calculate color based on magnitude
            // Following paper &quot;Single Pass Rendering of Day and Night Sky Phenomena&quot;
            float m = position.w;
            float m_a = 7.0f;       // Average apparent magnitude

            float delta_m = pow(2.512, m_a - m);

        	// Magic from the papers. Investigate the WHY of this.
            float i_t = delta_m * _35OVER13PI;
            i_t *= 4e-7 / (data.x * data.x);  // resolution correlated 
            i_t = min(1.167, i_t);  // volume of smoothstep (V_T)

            // Day-Twilight-Night-Intensity Mapping (Butterworth-Filter)
            //float b = 1.0 / sqrt(1 + pow(sun.z + 1.14, 32));
            //i_t *= b;

            if ( i_t &lt; 0.01 )
                return;

            float i_g = pow(2.512, m_a - (m + 0.167)) - 1;
            vec3 v_t = vec3(i_t);

            // v_k
            const float glare_scale = data.y;
            const float v_k = max(data.x, sqrt(i_g) * 2e-2 * glare_scale);

            // TODO: Scattering and Scintillation
            //v_t -= E_ext;
            vTexCoord.w = v_k / data.x;

            //
            vColor = mix( color_data.xyz, vec3( 0.66, 0.78, 1.00 ), 0.66 );
            vColor *= v_t;
            vColor = max(vec3(0.0), vColor);

            const uint vertex_index = gl_VertexID % 6;

            vTexCoord.xy = positions[vertex_index].xy * vec2(-1, 1);

            float particle_size = v_k * data.z;
            vec3 scaled_billboard = vTexCoord.x * particle_size * camera_right.xyz + vTexCoord.y * particle_size * camera_up.xyz;
    
            vec4 final_position = star_rotation_matrix * vec4(position.xyz, 1) + vec4(scaled_billboard.xyz, 1);

            gl_Position = view_projection_matrix * vec4(final_position.xyz, 1.0f);

        }
        #endif // VERTEX

        #if defined FRAGMENT

        layout (location = 0) in vec4 vTexCoord;
        layout (location = 1) in vec3 vColor;

        layout (location = 0) out vec4 outColor;

        void main() {
            float x = vTexCoord.x;
            float y = vTexCoord.y;

            float zz = (1 - x * x - y * y);
            if ( zz &lt; 0.0 )
                discard;

            float k = vTexCoord.w;
            float l = length(vec2(x, y));

            const float radius_scale = data.w;
            const float glare_scale = data.y;
            float t = 1 - smoothstep(0.0, 1.0, l * k / radius_scale);
            float g = 1 - pow(l, glare_scale / 64.0);

            float intensity = max(t, g);
            outColor = vec4(intensity * vColor, intensity);
        }
        #endif // FRAGMENT
    }
    pass stars_to_screen {
        stage = final
        resources = Local
        vertex_layout = main3D
        vertex = to_screen
        fragment = to_screen
        render_states = alpha
    }
}

</code></pre><p>A simplified version of the rendering code is here, but I like how this is becoming. Feedback is really appreciated :)</p>
<p>The instance buffer contains the Euclidean positions of each star with the visual magnitude as well.<!-- raw HTML omitted -->
We are drawing straight into the swapchain, and I use the abstraction of &lsquo;resource list&rsquo; similar to the &lsquo;descriptor sets&rsquo; coming from Vulkan. They are just a &hellip;list of resources.</p>
<pre tabindex="0"><code>CommandBuffer* gpu_commands = update.gpu_commands;
gpu_commands-&gt;clear( sort_key, 0, 0, 0, 1 );
gpu_commands-&gt;clear_depth_stencil( sort_key++, 1.0f, 0 );

// Draw the stars! ////////////////////////////
gpu_commands-&gt;bind_pass( sort_key++, update.gpu_device-&gt;get_swapchain_pass() );
gpu_commands-&gt;set_scissor( sort_key++, nullptr );	// Default framebuffer/render target sizes
gpu_commands-&gt;set_viewport( sort_key++, nullptr );

gpu_commands-&gt;bind_vertex_buffer( sort_key++, star_instance_buffer, 0, 0 );
gpu_commands-&gt;bind_pipeline( sort_key++, star_rendering_pipeline );
gpu_commands-&gt;bind_resource_list( sort_key++, &amp;star_resource_list, 1, nullptr, 0 );
gpu_commands-&gt;draw( sort_key++, TopologyType::Triangle, 0, 6, 0, star_count_to_render );
</code></pre><p>And that&rsquo;s it for the rendering!
We basically draw the Celestial Sphere - we miss taking in consideration the night/day transition depending where we are, or the moon and sun.</p>
<h1 id="conclusion">Conclusion</h1>
<p>We had a dive into how to render stars using real-life astronomical data.<!-- raw HTML omitted -->
The real deal is finding the proper data, and trying to understand how to use it.<!-- raw HTML omitted -->
There are still some things that I don&rsquo;t understand myself, but at least if you are curious about this topic this could be a good starting point.</p>
<p>I hope to have time to understand things deeper soon and correct any error.<!-- raw HTML omitted --></p>
<p>Hydra library is also evolving to something more and more usable for demo, I am trying to keep the code relatively small and clear, I&rsquo;ll continue with other demos about this.<!-- raw HTML omitted -->
I like the idea of something very concise - so you can focus only on the details you need.</p>
<p>Next will be the Atmospheric Scattering demo from the amazing <a href="https://twitter.com/SebHillaire">Sebastien Hillaire</a>.</p>
<p><em>Happy new year and may the stars shine upon your path!</em></p>

    
    
    
      Improving Productivity in Terminals with Aliases
      https://jorenjoestar.github.io/post/productivity_terminal/productivity_terminal/
      Mon, 13 Apr 2020 10:43:00 -0400
      
      https://jorenjoestar.github.io/post/productivity_terminal/productivity_terminal/
      <p>After reading the <a href="https://www.netlify.com/blog/2020/04/12/speed-up-productivity-with-terminal-aliases/">great article by Sarah Drasner</a> on productivity I wanted to share some other improvements that I use in my daily work and personal coding life.<!-- raw HTML omitted --></p>
<p>I am developing mostly rendering and other game-related code, so my OS is Windows 10.<!-- raw HTML omitted -->
I have a background in using Linux-only for work at the beginning of my career, so bash customization and Vim were too useful to be overlooked!</p>
<p>For Windows I started using <a href="https://cmder.net/">Cmder</a> few years ago, but I should check also the revamped powershell.<!-- raw HTML omitted -->
What I love about Cmder is that it gives you most of Unix/Linux scripts into Windows.<!-- raw HTML omitted -->
And with that it comes also an &lsquo;alias&rsquo; file, in the path <em>%CMDER_ROOT%\config\user_aliases.cmd</em>.</p>
<p>Here are some group of aliases I use to speed up my productivity!</p>
<h1 id="knowing-your-aliases">Knowing your aliases</h1>
<p>First of all some commands to know and edit your aliases.</p>
<p>I tend to write aliases with acronyms for faster typing.</p>
<pre tabindex="0"><code>ma=cat %CMDER_ROOT%\config\user_aliases.cmd

ea=vim %CMDER_ROOT%\config\user_aliases.cmd
</code></pre><p>M.A. stands for <em>My Aliases</em>, while E.A. <em>Edit Aliases</em>.</p>
<p>This is the base - when I forget an alias I just type <em>ma</em> and I have all my list!</p>
<h1 id="jumping-around">Jumping around</h1>
<p>Navigation is the first type of enhancement I recommend.<!-- raw HTML omitted -->
This is HUGE for me and incredibly simple:</p>
<pre tabindex="0"><code>..=cd ..
..2=cd ../..
..3=cd ../../..
..4=cd ../../../..
</code></pre><p>Navigate to parent folders in a much faster way!</p>
<p>The second one is actually&hellip;<em>jumps</em> (thinking of ASM instructions)!<!-- raw HTML omitted -->
When I identify some folders that I access often, I add these kind of lines:</p>
<pre tabindex="0"><code>jc= cd /D C:\Coding
jp= cd /D C:\Users\Gabriel\Documents\Visual Studio 2017\Projects
</code></pre><p>Again aliases.
<em>Jump Coding</em> and <em>Jump Projects</em>.</p>
<p>Notice the argument /D to use the absolute path - needed when you have paths in other folders.</p>
<h1 id="file-listing">File listing</h1>
<p>Again another simple trick, and you can add more variations to your needs.<!-- raw HTML omitted -->
<em>ls</em> is the <em>dir</em> command of Linux/Unix, and is another foundation.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>ls=ls --show-control-chars -F --color $*
ll=ls --show-control-chars -F -l --color $*
lr=ls --show-control-chars -F -lrt --color $*
la=ls --show-control-chars -F -a --color $*
</code></pre><p>Coloring is necessary to know what is a folder and what a file, something that should be enabled by default in my opinion.
Also notice the &lsquo;$*&rsquo; at the end - it means to append all the argument that you want to pass <em>after</em> the alias!</p>
<h1 id="text-editing">Text editing</h1>
<p>I mainly use Sublime Text and occasionally VIM, so here are some <em>aliases</em> as well:</p>
<pre tabindex="0"><code>vi=vim $*
vimrc=vim %CMDER_ROOT%\vendor\msysgit\share\vim\vimrc

subl=&quot;C:\Program Files\Sublime Text 3\sublime_text.exe&quot; $*
</code></pre><p>With the alias <em>subl</em> you can open any file into Sublime Text. Very handy combination Cmder + Sublime Text!</p>
<p>Also quickly editing your <em>vimrc</em> file is a need for VIM users.</p>
<h1 id="grepping">Grepping</h1>
<p>I honestly completely forgot to add the <em>color</em> option&hellip;learning through sharing. Thank you <a href="https://twitter.com/sarah_edo">Sarah</a> :)</p>
<p>Added the color option, these are the two variations of grep I use the most:</p>
<pre tabindex="0"><code>grep=grep --color $*

gric=grep --color -Iir $*
gril=grep --color -Iirl $*
</code></pre><p><em>gric</em> stands for <em>Grep Ignore Case Ignore Binary Recursive</em> - more or less.<!-- raw HTML omitted -->
<em>gril</em> is like <em>gric</em>, but just lists file instead of content per file in the search. I use it to just check files.</p>
<p>Quickly going through the options for <em>grep</em>:</p>
<ol>
<li>-I: let you ignore binary files. Speed up searching quite a bit.</li>
<li>-i: ignore case.</li>
<li>-r: recursively search directories.</li>
<li>-l: only list files, not content.</li>
</ol>
<p>I&rsquo;ll show you the difference.</p>
<p>Let&rsquo;s search for <em>&lsquo;blipbuffer&rsquo;</em> into my HydraNes/src folder:</p>
<p><code>grep --color -Iir blipbuffer *</code></p>
<p>We&rsquo;ll loose color in the post, but this is the result:</p>
<pre tabindex="0"><code>src/main.cpp:            if (nes-&gt;apu.blipBuffer-&gt;samples_avail()) {
src/main.cpp:                int32 readSamples = nes-&gt;apu.blipBuffer-&gt;read_samples(sampleBuffer, kBufferSize, false);
src/main.cpp:            const int32 availableSamples = nes-&gt;apu.blipBuffer-&gt;samples_avail();
src/main.cpp:                const int32 readSamples = nes-&gt;apu.blipBuffer-&gt;read_samples( bufferAddress, kBufferSize, false );
src/Nes.cpp:    if ( !blipBuffer ) {
src/Nes.cpp:        blipBuffer = new Blip_Buffer();
src/Nes.cpp:        blipBuffer-&gt;clock_rate( CpuClockRate );
src/Nes.cpp:        blipBuffer-&gt;sample_rate( SampleRate );
src/Nes.cpp:        externalApu-&gt;output( blipBuffer );
src/Nes.cpp:    blipBuffer-&gt;clear();
src/Nes.cpp:    blipBuffer-&gt;clear();
src/Nes.cpp:        blipBuffer-&gt;end_frame( count );
src/Nes.cpp:    //    //blipBuffer-&gt;end_frame( remainingCycles );
src/Nes.h:#include &quot;BlipBuffer/blip_buf.h&quot;
src/Nes.h:            Blip_Buffer*            blipBuffer = nullptr;
</code></pre><p>Instead using the list only option:</p>
<p><code>grep --color -Iirl blipbuffer *</code></p>
<p>Gives you this result:</p>
<pre tabindex="0"><code>src/main.cpp
src/Nes.cpp
src/Nes.h
</code></pre><h1 id="git">Git</h1>
<p>This is another big one.
Git can have very verbose commands, so aliases save a lot of typing!<!-- raw HTML omitted -->
Again I add generic and very specific version of commands:</p>
<pre tabindex="0"><code>gs=git status
gl=git log --oneline --all --graph --decorate $*

ga=git add &quot;$*&quot;
gcm=git commit -m &quot;$*&quot;
grmdir=git rm -r &quot;$*&quot;
grmf=git rm &quot;$*&quot;

gpso=git push -u origin &quot;$*&quot;
gpsom=git push -u origin master

gplo=git pull origin &quot;$*&quot;
gplom=git pull origin master

gru=git remote update

gsr=git status -uno -u

gt=git stash
gts=git stash show -p
gtl=git stash list
gta=git stash apply

gsps=git subtree push --previs= $*
gspl=git subtree pull --previs= $*
gspsh=git subtree push --prefix=source/hydra hydra master
gspsl=git subtree pull --prefix=source/hydra hydra master
</code></pre><p>See the difference between <em>gpso</em> and <em>gpsom</em> - the second one just using the <em>master</em> branch.<!-- raw HTML omitted -->
<em>gpsom</em> and <em>gplom</em> are the ones I use the most and this again saves a lot of time.</p>
<p>Same for the <em>subtree</em> commands, showing how I update my code using the common libraries names as <em>hydra</em>.<!-- raw HTML omitted -->
In this case - and this is more a git concept - when working with subtree I use a remote alias, added with <code>git remote add -f 'name' https://....git</code> .</p>
<p><em>gs</em> is great to see what is the status of the current repository you are in.
<em>gl</em> logs all the commits.
<em>ga</em> adds the files and folders you write after the command.</p>
<h1 id="visual-studio-compiler">Visual Studio Compiler</h1>
<p>Some different aliases I use for Visual Studio:</p>
<pre tabindex="0"><code>vs=&quot;%VS140COMNTOOLS%..\IDE\devenv.exe&quot; /edit &quot;$*&quot;

;= Needed to find MSBuild executable.
vcvars=&quot;C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat&quot;

msb=MSBuild $1 /property:Configuration=$2 /property:Platform=$3
msbd=MSBuild $1 /property:Configuration=Debug /property:Platform=x64
msbr=MSBuild $1 /property:Configuration=Release /property:Platform=x64
</code></pre><p>Again something as <em>msb</em> can be used to build code from a Visual Studio Solution.
<em>msbd</em> and <em>msbr</em> are useful shortcuts for again commonly used configurations and platforms.</p>
<h1 id="conclusions">Conclusions</h1>
<p>There are many ways to improve productivity - and reducing the amount of stuff you have to write, for repetitive tasks, is very powerful.
Hope this helps and again thanks to <a href="https://twitter.com/sarah_edo">Sarah Drasner</a> for the article that sparked the idea of writing this one!</p>
<p>If anybody wants to add more, comment, feedback please write to me!
Gabriel</p>

    
    
    
      Augmenting shader languages for modern rendering APIs
      https://jorenjoestar.github.io/post/shader_augment_for_pipelines/shader_augment_for_pipelines/
      Mon, 16 Mar 2020 12:11:37 -0400
      
      https://jorenjoestar.github.io/post/shader_augment_for_pipelines/shader_augment_for_pipelines/
      <h1 id="overview">Overview</h1>
<p>In the last articles we looked at progressively building tools to move rendering code towards data.<!-- raw HTML omitted -->
We looked on how to create a simple <strong>lexer</strong>, a simple <strong>parser</strong> and a <strong>code generator</strong>.<!-- raw HTML omitted -->
With those we were able to create a very simple language to <strong>augment</strong> shaders.</p>
<p>Why that ?</p>
<p>There are few reasons:</p>
<ol>
<li>Shader languages misses any way of linking multiple programs</li>
<li>Shader languages misses any way to define render states</li>
<li>CGFX and Microsoft FX are mostly dead</li>
<li>Ability to use ANY shader language - and just add the infrastructure</li>
<li>Ability to generate permutations without manually creating them</li>
</ol>
<p>Hydra FX aims to add all the missing features and becoming just an augmentation to ANY shader language.</p>
<p>There is also a fundamental reason for me:</p>
<blockquote>
<p>Define all the rendering informations needed as soon as possible!</p>
</blockquote>
<p>With this reason then defining everything inside an HFX file, with the possibility of overriding some properties, it is paramount.</p>
<p>This is by far a new concept, and with the newer Graphics APIs (Vulkan and D3D12) it is becoming more and more of a need.<!-- raw HTML omitted --></p>
<p>In this article we will see how we have all those features and add the missing ones. I will try to define everything in a more API-Independent way, so it can be adapted to any engine needs.</p>
<h1 id="why-we-need-shader-augmentation">Why we need shader augmentation</h1>
<p>The augmentation that I have in mind is needed for different reasons, not only if you are targeting the newer APIs.<!-- raw HTML omitted -->
Some of the reasons are the following:</p>
<ol>
<li>Write the NECESSARY code. Nothing more.</li>
<li>Logically group shaders in the same file.</li>
<li>Describe a priori all the STATIC parts of rendering.</li>
<li>Being more data driven, improve iteration time.</li>
<li>Being more data driven, encourage rendering experimentation.</li>
<li>Easiness of debugging.</li>
<li>Encourages less hardcoded data.</li>
</ol>
<h2 id="write-the-necessary-code-nothing-more">Write the NECESSARY code. Nothing more.</h2>
<p>As I wrote in previous articles writing code is our biggest power and liability.<!-- raw HTML omitted -->
Wasting time writing useless code is like slowly typing with one finger, without any clue of a design nor knowledge of the subject.<!-- raw HTML omitted -->
Of course this is very personal, but any time I have to reiterate some steps (in anything in my life) for no purpose but bad-design/bad-architecture/technical-debt it really makes me feel bad.<!-- raw HTML omitted -->
Again, it is like playing Diablo and clicking all the time to attack, instead of knowing that you can hold the mouse button!</p>
<p>Finally to the topic: shader augmentation means moving to data what many times is expressed in code.<!-- raw HTML omitted -->
We can both have a data-driven rendering, or even generate code for us, or a combination of both.<!-- raw HTML omitted -->
There is not right or wrong, and this will change in the future!<!-- raw HTML omitted -->
The best solution is the one that solves your (incredibly well described) problem.</p>
<p>Adding render states, vertex inputs, render graph informations let a simple text file to find its space into your awesome rendering quite easily.</p>
<h2 id="logically-group-shaders-in-the-same-file">Logically group shaders in the same file.</h2>
<p>Having to write separated files it can be ok, but many times having everything in one file (well divided) will be easier to logically connects the shader themselves.<!-- raw HTML omitted -->
Sometimes you can get lost into the combination of shaders quite easily.<!-- raw HTML omitted -->
And anyway you NEED to define which shaders are used together since the dawn of time.</p>
<p>So put them into the same file!</p>
<h2 id="describe-a-priori-all-the-static-parts-of-rendering">Describe a priori all the STATIC parts of rendering.</h2>
<p>Knowing all the static parts of rendering can lead to offline analysis and build, statistics, and all kind of things you can think of.<!-- raw HTML omitted -->
It also serves to really have knowledge of the combinational explosion of rendering <strong>before</strong> it arrives in your beloved renderer!<!-- raw HTML omitted -->
Sometimes you can group shaders together and improve speed and usability by just analysing how <strong>similar</strong> some shaders are.</p>
<h2 id="being-more-data-driven-improve-iteration-time">Being more data driven, improve iteration time.</h2>
<p>If you think of reloading assets, then a shader reload will also load all the render stage associated.<!-- raw HTML omitted -->
If you want to bring it a step further, adding/removing passes, changing were in the <em>render graph</em> the shaders are used can be an incredible tool to quickly prototype, optimize, develop ideas.</p>
<h2 id="being-more-data-driven-encourage-rendering-experimentation">Being more data driven, encourage rendering experimentation.</h2>
<p>You can also add some non-coding tools to augment a shader with all those data.<!-- raw HTML omitted -->
And again, defining this in data let&rsquo;s you check relationship with the rest of the renderer more easily.</p>
<h2 id="easiness-of-debugging">Easiness of debugging.</h2>
<p>Data-drivenness means that data is always available.<!-- raw HTML omitted -->
In the example I am adding here, you can see how useful can be to even have a simple ImGui debug of a HFX file.<!-- raw HTML omitted -->
Bring that to a realtime renderer, and you can quickly debug rendering problems without having to use external tools like Pix, RenderDoc and such. These are wonderful tools, but I always love to have a defense before arriving there.</p>
<p>An example is to debug on someone&rsquo;s machine that does not have installed those tools.</p>
<p>Same can be applied to performances, to quickly check performances in realtime.</p>
<p>Tooling is essential to any developer, and should be developed with the technology itself.</p>
<h2 id="encourages-less-hardcoded-data">Encourages less hardcoded data.</h2>
<p>Nothing wrong to hardcoding data, and many times is necessary and useful.<!-- raw HTML omitted -->
But the question is: <strong>when</strong> is necessary ?</p>
<p>Having a common data format gives you the tools (see previous point) to analyze, compared to hardcoded.</p>
<h1 id="shader-augmentations">Shader Augmentations</h1>
<p>We will take a HFX shader and will see all the augmentations.<!-- raw HTML omitted -->
This is used in the <a href="https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/">Render Pipeline Article</a> and renders the GLTF assets:</p>
<pre tabindex="0"><code>shader PBR {

    properties {
        albedo_texture(&quot;Albedo&quot;, 2D) = &quot;&quot;
        normals_texture(&quot;Normals&quot;, 2D) = &quot;&quot;
        metal_roughness_texture(&quot;MetalRoughness&quot;, 2D) = &quot;&quot;
        emissive_texture(&quot;Emissive&quot;, 2D) = &quot;&quot;
        occlusion_texture(&quot;Occlusion&quot;, 2D) = &quot;&quot;
        scale(&quot;Scale&quot;, Float) = 16.0
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

        #pragma include &quot;Platform.h&quot;

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

        #pragma include &quot;Platform.h&quot;
    
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
            float sign_det = det &lt;0 ? -1 : 1;

            // invC0 represents ( dXds , dYds ) ; but we don ’t divide by
            // determinant ( scale by sign instead )
            vec2 invC0 = sign_det * vec2 ( dSTdy .y , - dSTdx .y );

            vT = sigma_x * invC0 .x + sigma_y * invC0 .y;
            if( abs ( det ) &gt; 0.0)
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
            float flip_sign = dot ( position_derivate_y, cross ( base_normal, position_derivate_x )) &lt; 0 ? -1 : 1;

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

        #pragma include &quot;Platform.h&quot;

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

        #pragma include &quot;Platform.h&quot;

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
</code></pre><h2 id="1-linking-multiple-programs">1: Linking Multiple Programs</h2>
<p>This is a pretty simple task, and the first one to be tackled.<!-- raw HTML omitted --></p>
<p>In Vulkan all the Pipelines need all the shader used at creation, using an array of <a href="https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkPipelineShaderStageCreateInfo.html">VkPipelineStageCreationInfo</a> for graphics, compute and ray-tracing.</p>
<p>In D3D12, you have the <a href="https://docs.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_shader_bytecode">ShaderBytecode</a> used in the pipelines, but not as arrays (just member of the various creation structs).</p>
<p>From a functionality perspective, they are EQUAL. It makes sense - a <strong>Pipeline</strong> is the description of all the static part of a GPU pipeline, and shaders are amongst the most important part of it.</p>
<p>You can see it in the &lsquo;pass&rsquo; section of the HFX file:</p>
<pre tabindex="0"><code>pass PositionOnly {
    vertex = PositionOnly
    fragment = PositionOnly
    ...
}
</code></pre><p>For a compute pipeline is even simpler, and dispatch size can be added as well:</p>
<pre tabindex="0"><code>pass DeferredCompute {
    compute = DeferredCompute
    dispatch = 32, 32, 1
    ...
}
</code></pre><p>Even just with something like this it is easy to organize different shaders.</p>
<h2 id="2-define-render-states">2: Define Render States</h2>
<p>Following the previous point, Pipelines need also (almost) all the render states (depth/stencil, alpha, raster, &hellip;) to be defined.<!-- raw HTML omitted -->
This was one of the main features of CGFX and Microsoft&rsquo;s FX - and still now is incredibly useful.<!-- raw HTML omitted -->
Unity&rsquo;s ShaderLab also incorporates render states.</p>
<p>I decided to separate render states on their own group:</p>
<pre tabindex="0"><code>render_states {
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
</code></pre><p>Here two different render states are defined.<!-- raw HTML omitted -->
In this case a render states defines depth/stencil, blend and rasterization.</p>
<p>A great addition to that is to add the possibility of inherit/override render states.<!-- raw HTML omitted -->
For example in a Transparent pass, the blend state could be defined in the Render Pass data, and be inherited explicitly here.</p>
<p>Also very important is the definition of <strong>input assembly</strong> - how the vertices are fed into the <em>vertex program</em>:</p>
<pre tabindex="0"><code>layout {
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
</code></pre><p>Here we can see some instancing use case, just to show the flexibility of writing this code.<!-- raw HTML omitted -->
The bytes offset could be removed as well.</p>
<h2 id="3-use-any-shader-language">3: Use ANY Shader Language</h2>
<p>The best way to diffuse these augmentation is to change the less possible the shader languate itself.<!-- raw HTML omitted -->
This is because you want to be portable, and when having different platform it can be paramount even to define shaders with different languages into the same file, and switch based on platforms.<!-- raw HTML omitted -->
This is becoming less and less of a need (see HLSL working on Vulkan) but there could be some special cases.<!-- raw HTML omitted -->
Would it be great to fix those special cases by writing platform specific shader fragments without any of your internal rendering code changing ?</p>
<p>The choise here is to use a keyword to identify the type of language and then simply write the code in that language.<!-- raw HTML omitted -->
This is <em>ideal</em> to also incorporate code from previous codebases with a small amount of work.</p>
<p>Let&rsquo;s look at the GBuffer Vertex GLSL code:</p>
<pre tabindex="0"><code>glsl GBuffer_V {

    #pragma include &quot;Platform.h&quot;

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
</code></pre><p>The only modification I did, and it is sadly necessary in GLSL, is to add the &lsquo;#pragma include&rsquo; custom parsing to add the include in the HFX compiler.</p>
<h2 id="4-resource-layouts-as-first-citizens">4: Resource Layouts as First Citizens</h2>
<p>A new addition of the new APIs, resource layouts are another great factor to take care of.<!-- raw HTML omitted -->
Architecturally they can be implemented in different ways, but I like the idea of having them &lsquo;in your face&rsquo; since the beginning!</p>
<p>In the <em>layout</em> section, you can define resources like this:</p>
<pre tabindex="0"><code>list gbuffer {
    cbuffer ViewConstants ViewConstants;

    texture2D albedo;
    texture2D normals;
    texture2D metalRoughness;
    texture2D emissive;
    texture2D occlusion;

    sampler2D linear_sampler
}
</code></pre><p>The name will be used in the pass section to define which resource list is used.<!-- raw HTML omitted -->
There can be multiple resource lists, normally they should be grouped per frequency (most frequent changes to least frequent ones) and can be separated by a comma for example.<!-- raw HTML omitted --></p>
<p>A small addition is to use externally specified resource list and code, like for <strong>starnest.hfx</strong>:</p>
<pre tabindex="0"><code>pass main {
	...
	resources = &quot;ShaderToy.Main&quot;	
}
</code></pre><p>This means that the pass named &lsquo;main&rsquo; will simply use the resources defined in &lsquo;shadertoy.hfx&rsquo; - resource list called main.</p>
<h2 id="5-permutations">5: Permutations</h2>
<p>This is the most tedious of the tasks, and also one of the most dangerous.<!-- raw HTML omitted -->
Permutations explosion is a well known problem, and there are different ways of tackling this. If you don&rsquo;t have a shader augmentation a good option is to write some scripts to help with generating the code.<!-- raw HTML omitted --></p>
<p>Otherwise if you have a shader augmentation and you define a &lsquo;shader state&rsquo;, you can define some &lsquo;permutation flags&rsquo;, and just add the defines when you compile shaders. Even in GLSL, you can do some easy string concatenation to add those defines, or use tools like GLSLang + SpirV to help.</p>
<p>This becomes a cartesian product of all the <em>permutations/options groups</em> and again can lead to a lot of created shader.<!-- raw HTML omitted -->
I am still investigating the best approach and I will update this article with the results, because I want to include them into HFX but avoid that to become a huge file - and worst to include unused permutations.</p>
<p>So stay tuned as I will update this article with the solution I find!</p>
<h2 id="6-c-generated-helpers">6: C++ Generated Helpers</h2>
<p>As finishing touch, there are some informations that can be exposed in a c++ file.
&hellip;</p>
<h1 id="included-code-shader-augmentation">Included code: &lsquo;Shader Augmentation&rsquo;</h1>
<p>The included code has a small application to compile and inspect HFX files.
&hellip;</p>
<h1 id="conclusions">Conclusions</h1>
<p>I tried to explain the reasons of the different <strong>shader augmentations</strong> and trying to focus more on the importance of not trying to create a new shading language, but instead empowering it with new informations.</p>
<p>I can&rsquo;t stress enough how important is to me to have an abstraction that is slightly on top of current shaders API - and create other systems to hide the complexities if needed.</p>
<p>With HFX, I would like to <em>expand</em> any language by adding all those features.<!-- raw HTML omitted -->
I wish this could become a used tool by many in their project, and really wish it will be the initial spark.</p>
<p>Next in line is a revisiting of higher level of rendering, to arrive to explore different rendering techniques with the easiness that the data-driven approach should give.</p>
<p>As always please comment, give me feedback, share and enjoy!</p>
<p>Thanks for reading!
Gabriel</p>

    
    
    
      Data Driven Rendering: Pipelines
      https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/
      Mon, 14 Oct 2019 10:43:49 -0400
      
      https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/
      <h1 id="overview">Overview</h1>

<figure>

  <a data-fancybox="" href="GLTFHelmet.png" >

<img src="GLTFHelmet.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Model used in the demo.</h4>
  
</figcaption>

</figure>

<p>Data Driven Rendering Series:</p>
<ol>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_1/">https://jorenjoestar.github.io/post/writing_shader_effect_language_1/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_2/">https://jorenjoestar.github.io/post/writing_shader_effect_language_2/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_3/">https://jorenjoestar.github.io/post/writing_shader_effect_language_3/</a></li>
<li><a href="https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/">https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/</a></li>
</ol>
<p>We finally arrived in the <strong>Rendering Pipeline</strong> realm.<!-- raw HTML omitted -->
Some can write that it is useless, some can hate it.<!-- raw HTML omitted -->
Many have some sort of abstraction for it since ages, and others have to now that new APIs like <strong>Vulkan</strong> and <strong>DX12</strong> have it as an explicit part of their design (finally!).</p>
<p>After we built a basic Material System in the previous article (<a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_3/">https://jorenjoestar.github.io/post/writing_shader_effect_language_3/</a>) we can add another layer on top of it and built a complete <em>Rendering Frame</em>.</p>
<p>In this article I will talk about a simplified version of <strong>Render Graph</strong> that I call <strong>Render Pipeline</strong> and came into my mind in the canteen of Codemasters after thinking:</p>
<blockquote>
<p>What is the biggest dependency in Rendering ?</p>
</blockquote>
<p>The answer is simple:</p>
<blockquote>
<p>Render Targets!</p>
</blockquote>
<p><strong>Render Targets</strong> or <strong>Frame Buffers</strong> is just an intermediate buffer in which we can draw something and use it later.<!-- raw HTML omitted -->
Basically a Read/Write texture!<!-- raw HTML omitted -->
It is not easy to shuffle around a Render Target, and having knowledge of which one are you using can make a huge difference for your rendering tech.<!-- raw HTML omitted -->
Textures and Render Targets are the biggest memory lord in any rendering application, thus knowing <em>where</em> you are spending your memory can be really powerful.</p>
<p>From a pure <em>understanding</em> of rendering techniques, having a clear visualization of this aspect makes a HUGE difference!</p>
<p>Once I started using to describe a frame of rendering with the <strong>Render Target Dependencies</strong> I never looked back.<!-- raw HTML omitted -->
As always, knowledge is power.<!-- raw HTML omitted --></p>
<h1 id="render-pipeline-thinking">Render Pipeline Thinking</h1>
<p>First of all, let&rsquo;s start defining some general concepts to describe the problem we are trying to solve.<!-- raw HTML omitted --></p>
<p>The problem we are trying to solve is:</p>
<blockquote>
<p>How to describe the inter-frame dependencies of Render Targets in a frame ?</p>
</blockquote>
<p>The dependencies are who <strong>writes</strong> and/or <strong>read</strong> from/to a <strong>Render Target</strong>.<!-- raw HTML omitted -->
That is exactly what is described in a Render Pipeline.
Enter the <em>Render Pipeline</em>.</p>
<blockquote>
<p>A Render Pipeline is a list of Passes that read and writes Render Targets.<!-- raw HTML omitted --></p>
</blockquote>
<p>That&rsquo;s it.<!-- raw HTML omitted -->
Done! See you next article!<!-- raw HTML omitted --></p>
<p>Of course I am kidding - but this is the gist of it.<!-- raw HTML omitted -->
The implications, however, are profound.<!-- raw HTML omitted --></p>
<p>Next logical question is:</p>
<blockquote>
<p>How can we read and write from/to a Render Target ?</p>
</blockquote>
<p>Let&rsquo;s list how we can <em>write</em> to a Render Target</p>
<ol>
<li>Graphics - binding some geometry, render states and Render Targets</li>
<li>Compute - write anything to the Render Target</li>
</ol>
<p>Even a so called <em>&lsquo;post-process&rsquo;</em> is just a <em>fullscreen triangle with a shader</em>.</p>
<p>And to read&hellip;well any <strong>shader</strong> that takes reads a texture!</p>
<p>It is incredible to think that with this simple building blocks you can describe almost everything to render!</p>
<p>For example, let&rsquo;s try to express some common rendering techniques using only those concepts.</p>
<h2 id="deferred-rendering">Deferred Rendering</h2>
<p>We can define the following simple steps:</p>
<ol>
<li>Meshes uses their materials (shaders + textures + constants) as input and write into GBuffer Render Target + depth.</li>
<li>A Compute/Post-process shader will read the Gbuffer Render Target and depth (to reconstruct the pixel position), a light list of some sort and outputs a texture with the result.</li>
<li>Transparent objects are drawn into this new Render Target using their materials.</li>
<li>And so on&hellip;</li>
</ol>
<!-- raw HTML omitted -->
<h2 id="exponential-variance-shadow-mapping-in-a-forward-rendering-pipeline">Exponential Variance Shadow Mapping in a Forward Rendering Pipeline</h2>
<ol>
<li>Meshes writes into a depth-only render target using the light as &lsquo;camera/point of view&rsquo;.</li>
<li>Compute or Postprocess converts the depth-only render target into a EVSM one.</li>
<li>Meshes uses their materials and the <em>EVSM shadow map</em> to render into a <em>&lsquo;main&rsquo;</em> Render Target.</li>
</ol>
<p>&lt;diagram 2 goes here&gt;</p>
<h1 id="other-rendering-concepts">Other Rendering Concepts</h1>
<p>To give a full description of the frame we need to add other concepts that will help us.<!-- raw HTML omitted -->
These are the less strict ones - and just a personal way of seeing things.</p>
<h2 id="render-view">Render View</h2>
<p>The concept of <em>&lsquo;Render View&rsquo;</em> is just a way or representing a <em>camera</em> and a list of visible objects from it.<!-- raw HTML omitted -->
We will see how we use it later, but a simple example of Render View would be the &lsquo;Sun Shadow&rsquo; render view - representing the sun (as a camera) and a list of visible objects from it.<!-- raw HTML omitted -->
The &lsquo;Main&rsquo; render view of course represent the main camera and visible objects.<!-- raw HTML omitted -->
This, combined with <strong>render managers</strong> becomes a powerful combination to describe <em>what</em> needs to be rendered.</p>
<h2 id="render-manager">Render Manager</h2>
<p>If you think from an ECS mentality, this would be a &lsquo;system&rsquo;.<!-- raw HTML omitted -->
Each render manager is responsible to render one or more render <em>&lsquo;aspects/entities&rsquo;</em> into a Render Pass.<!-- raw HTML omitted -->
A render manager can subscribe to any &lsquo;graphics&rsquo; pass and render from there.</p>
<p>For example, a &lsquo;static geometry&rsquo; render manager could setup an instancing buffer for the gbuffer-generation pass and draw all objects.</p>
<h1 id="render-pipeline-implementation">Render Pipeline Implementation</h1>
<p>After we defined the basic concepts let&rsquo;s see an actual implementation of the Render Pipeline.<!-- raw HTML omitted -->
We will see the code of each component and arrive at the actual data definition (in json).</p>
<p>The code has changed a bit since last article, with the inclusion of CGLM as math library and other high-level rendering code, included in hydra_rendering.h/.cpp.</p>
<h2 id="render-view-1">Render View</h2>
<p>First element is the Render View:</p>
<pre tabindex="0"><code>//
// Render view is a 'contextualized' camera - a way of using the camera in the render pipeline.
//
struct RenderView {

    Camera                          camera;

    array( RenderScene )            visible_render_scenes;

}; // struct RenderView

</code></pre><p>Using STB&rsquo;s array (the macro is just an aid to know it is not just a pointer) we have a list of visible render scenes from that camera.<!-- raw HTML omitted -->
It should be pretty straighforward.</p>
<h2 id="render-manager-1">Render Manager</h2>
<p>Next is Render Manager:</p>
<pre tabindex="0"><code>//
struct RenderManager {

    struct RenderContext {
        Device*                     device;

        const RenderView*           render_view;
        CommandBuffer*              commands;
        
        RenderScene*                render_scene_array;
        uint16_t                    start;
        uint16_t                    count;
        
        uint16_t                    stage_index;
    }; // struct RenderContext

    virtual void                    render( RenderContext&amp; render_context ) = 0;

}; // struct RenderManager
</code></pre><p>The base class is really just a &lsquo;render&rsquo; method.<!-- raw HTML omitted -->
Here the RenderContext is interesting, and it gives access to all you need to render:</p>
<ol>
<li>Device - used to map/unmap resources.</li>
<li>RenderView - access to camera (and more, but that&rsquo;s for the next article!).</li>
<li>CommandBuffer - the actual draw commands are written here.</li>
<li>RenderScene - the RenderScene from start to start + count.</li>
</ol>
<p>In this very simple demo, we have just 2 <em>render managers</em>: <em>Line Renderer</em> and <em>Scene Renderer</em>.<!-- raw HTML omitted -->
The most interesting one is the second: Line Renderer has commands to draw lines that will be mapped into a GPU buffer and uses instancing to draw them.</p>
<pre tabindex="0"><code>
void LineRenderer::render( RenderContext&amp; render_context ) {

    Device&amp; device = *render_context.device;

    // Update camera matrix
    const Camera&amp; camera = render_context.render_view-&gt;camera;

    MapBufferParameters cb_map = { lines_cb, 0, 0 };
    
    float L = 0, T = 0;
    float R = device.swapchain_width, B = device.swapchain_height;
    const float ortho_projection[4][4] =
    {
        { 2.0f / ( R - L ),   0.0f,         0.0f,   0.0f },
        { 0.0f,         2.0f / ( T - B ),   0.0f,   0.0f },
        { 0.0f,         0.0f,        -1.0f,   0.0f },
        { ( R + L ) / ( L - R ),  ( T + B ) / ( B - T ),  0.0f,   1.0f },
    };

    LocalConstants* cb_data = (LocalConstants*)device.map_buffer( cb_map );
    if ( cb_data ) {
        cb_data-&gt;view_projection = camera.view_projection;
        
        memcpy( &amp;cb_data-&gt;projection, &amp;ortho_projection, 64 );
        
        cb_data-&gt;resolution = { device.swapchain_width * 1.0f, device.swapchain_height * 1.0f, 1.0f / device.swapchain_width, 1.0f / device.swapchain_height };
        device.unmap_buffer( cb_map );
    }

    if ( current_line_index ) {
        const uint32_t mapping_size = sizeof( LinVertex ) * current_line_index;
        MapBufferParameters map_parameters_vb = { lines_vb, 0, mapping_size };
        LinVertex* vtx_dst = (LinVertex*)device.map_buffer( map_parameters_vb );
        
        if ( vtx_dst ) {
            memcpy( vtx_dst, &amp;s_line_buffer[0], mapping_size );
            
            device.unmap_buffer( map_parameters_vb );
        }

        CommandBuffer* commands = render_context.commands;
        commands-&gt;begin_submit( 2 );

        ShaderInstance&amp; shader_instance = line_material-&gt;shader_instances[3];
        commands-&gt;bind_pipeline( shader_instance.pipeline );
        commands-&gt;bind_resource_list( shader_instance.resource_lists, shader_instance.num_resource_lists, nullptr, 0 );
        commands-&gt;bind_vertex_buffer( lines_vb, 0, 0 );
        // Draw using instancing and 6 vertices.
        const uint32_t num_vertices = 6;
        commands-&gt;draw( TopologyType::Triangle, 0, num_vertices, current_line_index / 2 );
        commands-&gt;end_submit();

        current_line_index = 0;
    }
}
</code></pre><p>Easy to notice how, with a Vulkan/DX12 interface, there are few less commands to write. Binding a pipeline sets everything considered &lsquo;static&rsquo; - render states, shaders - and with just <em>resource lists</em> (that sets textures and constants) and <em>vertex/index buffers</em> we have everything needed to render.</p>
<p><strong>NOTE</strong>: HFX has gone some improvements and now supports <em>render states and vertex declarations/formats</em>. I&rsquo;ll write about it in the next post - but this has become crucial.</p>
<h2 id="shader-resources-management">Shader Resources Management</h2>
<p>This is another personal preference - but not necessary at all.<!-- raw HTML omitted -->
Two concepts are really useful to me to be explicit and centralized: <em>resources and bindings</em>.</p>
<p>Resources are all referenced in a <em>&lsquo;Shader Resource Database&rsquo;</em>:</p>
<pre tabindex="0"><code>//
// Struct used to retrieve textures, buffers and samplers.
//
struct ShaderResourcesDatabase {

    struct BufferStringMap {
        char*                       key;
        BufferHandle                value;
    }; // struct BufferStringMap

    struct TextureStringMap {
        char*                       key;
        TextureHandle               value;
    }; // struct TextureStringMap

    struct SamplerStringMap {
        char* key;
        SamplerHandle               value;
    }; // struct SamplerStringMap

    BufferStringMap*                name_to_buffer = nullptr;
    TextureStringMap*               name_to_texture = nullptr;
    SamplerStringMap*               name_to_sampler = nullptr;

    void                            init();
    void                            terminate();

    void                            register_buffer( char* name, BufferHandle buffer );
    void                            register_texture( char* name, TextureHandle texture );
    void                            register_sampler( char* name, SamplerHandle sampler );

    BufferHandle                    find_buffer( char* name );
    TextureHandle                   find_texture( char* name );
    SamplerHandle                   find_sampler( char* name );

}; // struct ShaderResourcesDatabase

</code></pre><p>Simply put, any resource used by rendering is here.<!-- raw HTML omitted -->
Both Materials, Pipelines and Render Managers register and use the database to create the <em>resource lists</em> used in rendering.</p>
<p>Next and more convoluted is the <em>shader resources lookup</em> class:</p>
<pre tabindex="0"><code>//
// Struct to link between a Shader Binding Name and a Resource. Used both in Pipelines and Materials.
//
struct ShaderResourcesLookup {

    enum Specialization {
        Frame, Pass, View, Shader
    }; // enum Specialization

    struct NameMap {
        char*                       key;
        char*                       value;
    }; // struct NameMap

    struct SpecializationMap {
        char*                       key;
        Specialization              value;
    }; // struct SpecializationMap

    NameMap*                        binding_to_resource = nullptr;
    SpecializationMap*              binding_to_specialization = nullptr;
    NameMap*                        binding_to_sampler = nullptr;

    void                            init();
    void                            terminate();

    void                            add_binding_to_resource( char* binding, char* resource );
    void                            add_binding_to_specialization( char* binding, Specialization specialization );
    void                            add_binding_to_sampler( char* binding, char* sampler );

    char*                           find_resource( char* binding );
    Specialization                  find_specialization( char* binding );
    char*                           find_sampler( char* binding );

    void                            specialize( char* pass, char* view, ShaderResourcesLookup&amp; final_lookup );

}; // struct ShaderResourcesLookup
</code></pre><p>This class specify the binding between a <em>shader resource</em> and an <em>actual resource</em>.<!-- raw HTML omitted -->
As a simple example to clarify, a shader could have an <em>&lsquo;albedo&rsquo;</em> texture defined in the code, but the <em>actual</em> texture is defined by the material.<!-- raw HTML omitted -->
Or for a Render Stage, like a Post-Processing one, its input could be defined in the shader code as <em>&lsquo;input 0, input 1&hellip;'</em> and the render pipeline creates the binding.</p>
<p>With those in place, we can finalize any resource used by any shader/material/pipeline.</p>
<p>The actual usage is into the Shader Instance class. Let&rsquo;s have a quick look.</p>
<pre tabindex="0"><code>//
struct ShaderInstance {

    void                            load_resources( const PipelineCreation&amp; pipeline, PipelineHandle pipeline_handle, ShaderResourcesDatabase&amp; database, ShaderResourcesLookup&amp; lookup, Device&amp; device );

    PipelineHandle                  pipeline;
    ResourceListHandle              resource_lists[k_max_resource_layouts];

    uint32_t                        num_resource_lists;
}; // struct ShaderInstance
</code></pre><p>This class is what actually contains the resource lists and pipeline used to render anything.<!-- raw HTML omitted -->
Not very happy with the name - any suggestion welcome.<!-- raw HTML omitted -->
A material contains a list of those - one for each pass - and is used to draw.<!-- raw HTML omitted -->
Again with the new Vulkan/DX12 mentality, Pipeline + Resource Lists + Geometry is all you need to render almost.</p>
<p>The magic happens when creating the resource lists:</p>
<pre tabindex="0"><code>void ShaderInstance::load_resources( const PipelineCreation&amp; pipeline_creation, PipelineHandle pipeline_handle, ShaderResourcesDatabase&amp; database, ShaderResourcesLookup&amp; lookup, Device&amp; device ) {
    
    using namespace hydra::graphics;
    ResourceListCreation::Resource resources_handles[k_max_resources_per_list];

    for ( uint32_t l = 0; l &lt; pipeline_creation.num_active_layouts; ++l ) {
        // Get resource layout description
        ResourceListLayoutDescription layout;
        device.query_resource_list_layout( pipeline_creation.resource_list_layout[l], layout );

</code></pre><p>We know that a pipeline can have 1 or more resource lists, thus we just iterate through them.<!-- raw HTML omitted -->
Next we look into each resource of the current list:</p>
<pre tabindex="0"><code>
        // For each resource
        for ( uint32_t r = 0; r &lt; layout.num_active_bindings; r++ ) {
            const ResourceBinding&amp; binding = layout.bindings[r];

            // Find resource name
            // Copy string_buffer 
            char* resource_name = lookup.find_resource( (char*)binding.name );

            switch ( binding.type ) {
                case hydra::graphics::ResourceType::Constants:
                case hydra::graphics::ResourceType::Buffer:
                {
                    BufferHandle handle = resource_name ? database.find_buffer( resource_name ) : device.get_dummy_constant_buffer();
                    resources_handles[r].handle = handle.handle;

                    break;
                }

                ... same for textures
</code></pre><p>For each binding coming from the shader (think &lsquo;albedo&rsquo; for a PBR shader) we search for the actual resource name (&lsquo;WoodBeamAlbedo&rsquo;) and query the database to find it.<!-- raw HTML omitted -->
After we did that, we can create the list:</p>
<pre tabindex="0"><code>            }
        }

        ResourceListCreation creation = { pipeline_creation.resource_list_layout[l], resources_handles, layout.num_active_bindings };
        resource_lists[l] = device.create_resource_list( creation );
    }

    num_resource_lists = pipeline_creation.num_active_layouts;
    pipeline = pipeline_handle;
}
</code></pre><p>With this mechanism we added another explicit connection between resources.</p>
<p>It is finally time to see the actual render pipeline!</p>
<h2 id="render-stagepass">Render Stage/Pass</h2>
<p>This is the <em>CORE</em> of everything, and it must work with all both <strong>geometrical</strong> stages and <strong>post-process</strong> ones.<!-- raw HTML omitted -->
You can either create a base virtual class or doing something like here.<!-- raw HTML omitted -->
Important is understanding the concept!</p>
<pre tabindex="0"><code>//
// Encapsulate the rendering of anything that writes to one or more Render Targets.
//
struct RenderStage {

    enum Type {
        Geometry, Post, PostCompute, Swapchain, Count
    };

	Type                            type                                = Count;
</code></pre><p>Simply we define the types:</p>
<ol>
<li>Geometry - uses render manager with meshes to draw.</li>
<li>Post - fullscreen triangle + shader.</li>
<li>PostCompute - any compute shader execution basically!</li>
<li>Swapchain - special case of binding the window framebuffer and render the last time.</li>
</ol>
<p>Next is the most important part: dependencies!</p>
<pre tabindex="0"><code>    array( TextureHandle )          input_textures                      = nullptr;
    array( TextureHandle )          output_textures                     = nullptr;

    TextureHandle                   depth_texture;

</code></pre><p>When we create the pipeline, we save all inputs and outputs textures.<!-- raw HTML omitted -->
Depth/Stencil is a put in its own part.</p>
<pre tabindex="0"><code>    float                           scale_x                             = 1.0f;
    float                           scale_y                             = 1.0f;
    uint16_t                        current_width                       = 1;
    uint16_t                        current_height                      = 1;
</code></pre><p>Here we handle scaling. When using scale, we use the framebuffer&rsquo;s window width/height to calculate the Render Target size of the output ones. When using the current width/height we instead define a specific size (like for a shadow map).</p>
<pre tabindex="0"><code>    RenderPassHandle                render_pass;
</code></pre><p>hydra::graphics low level rendering needs this handle to actually handle the drawing.</p>
<pre tabindex="0"><code>    Material*                       material                            = nullptr;
    uint8_t                         pass_index                          = 0;
</code></pre><p>This is for PostProcesses : material and pass index to retrieve the &lsquo;shader instance&rsquo; containing the <em>pipeline</em> and the <em>resource lists</em>.</p>
<pre tabindex="0"><code>    RenderView*                     render_view                         = nullptr;
</code></pre><p>RenderView used by this stage.<!-- raw HTML omitted -->
For example the &lsquo;Sun Shadow Render Stage&rsquo; will use the &lsquo;Shadow Render View&rsquo; to dispatch all its objects to each render manager.</p>
<pre tabindex="0"><code>    float                           clear_color[4];
    float                           clear_depth_value;
    uint8_t                         clear_stencil_value;

    uint8_t                         clear_rt                            : 1;
    uint8_t                         clear_depth                         : 1;
    uint8_t                         clear_stencil                       : 1;
    uint8_t                         resize_output                       : 1;
    uint8_t                         pad                                 : 4;
</code></pre><p>If the stage needs to clear its output(s), these will tell what to do.</p>
<pre tabindex="0"><code>    uint64_t                        geometry_stage_mask;                // Used to send render objects to the proper stage. Not used by compute or postprocess stages.
</code></pre><p>This creates a link between render managers and stages.<!-- raw HTML omitted -->
An object is rendered only if its <em>stage mask</em> equals at least one stage.<!-- raw HTML omitted -->
Why that ? <!-- raw HTML omitted -->
Because when defining a <em>render view</em>, we have a list of objects visible from that camera, and we need a way of dispatching those objects to their respective managers.</p>
<p>For example a &lsquo;dynamic render object&rsquo; could have appear both on the gbuffer pass and an &lsquo;object special effect&rsquo; pass - both visible from the main camera.</p>
<p>This ideas comes from the <em>AMAZING</em> talk by Bungie:</p>
<p><a href="http://advances.realtimerendering.com/destiny/gdc_2015/Tatarchuk_GDC_2015__Destiny_Renderer_web.pdf">http://advances.realtimerendering.com/destiny/gdc_2015/Tatarchuk_GDC_2015__Destiny_Renderer_web.pdf</a></p>
<p>A <em>render manager</em> is what they call a <em>feature renderer</em> - named differently because this version is much more basic!</p>
<pre tabindex="0"><code>    array( RenderManager* )         render_managers;
</code></pre><p>Render Managers can register to stages even if they don&rsquo;t have objects, for example a <em>&lsquo;Lighting Manager&rsquo;</em> would want to submit a list of visible light in a certain pass.</p>
<pre tabindex="0"><code>    // Interface
    virtual void                    init();
    virtual void                    terminate();

    virtual void                    begin( Device&amp; device, CommandBuffer* commands );
    virtual void                    render( Device&amp; device, CommandBuffer* commands );
    virtual void                    end( Device&amp; device, CommandBuffer* commands );

    virtual void                    load_resources( ShaderResourcesDatabase&amp; db, Device&amp; device );
    virtual void                    resize( uint16_t width, uint16_t height, Device&amp; device );

    void                            register_render_manager( RenderManager* manager );

}; // struct RenderStage
</code></pre><p>This is the final interface.<!-- raw HTML omitted -->
Load resources is used for PostProcesses - they have a material and need to load its resources.</p>
<h2 id="render-pipeline">Render Pipeline</h2>
<p>We arrived at the last piece of the puzzle!</p>
<pre tabindex="0"><code>//
// A full frame of rendering using RenderStages.
//
struct RenderPipeline {

    struct StageMap {
        char*                       key;
        RenderStage*                value;
    };

    struct TextureMap {
        char*                       key;
        TextureHandle               value;
    };

    void                            init( ShaderResourcesDatabase* initial_db );
    void                            terminate( Device&amp; device );

    void                            update();
    void                            render( Device&amp; device, CommandBuffer* commands );

    void                            load_resources( Device&amp; device );
    void                            resize( uint16_t width, uint16_t height, Device&amp; device );

    StageMap*                       name_to_stage                       = nullptr;
    TextureMap*                     name_to_texture                     = nullptr;

    ShaderResourcesDatabase         resource_database;
    ShaderResourcesLookup           resource_lookup;

}; // struct RenderPipeline
</code></pre><p>This is literally IT!<!-- raw HTML omitted -->
This class contains all the stages and resources needed to render.<!-- raw HTML omitted -->
Most of the time it will just iterate over the stages and execute something per stage.</p>
<p>Resource database contains all the resources used actually - and the lookup instead is only for the PostProcess stages.<!-- raw HTML omitted --></p>
<h2 id="render-pipeline-description">Render Pipeline Description</h2>
<p>We really have all the part to render a frame!<!-- raw HTML omitted -->
Let&rsquo;s look at the data defining the pipeline.<!-- raw HTML omitted -->
We will define a simple-silly-non-effective PBR deferred rendering.<!-- raw HTML omitted -->
Probably the worst shaders you saw, but it will still work.</p>
<p>First we define the Render Targets:</p>
<pre tabindex="0"><code>{
    &quot;name&quot;: &quot;PBR_Deferred&quot;,
    &quot;RenderTargets&quot;: [
        {
            &quot;name&quot;: &quot;GBufferAlbedo&quot;,
            &quot;format&quot;: &quot;R8G8B8A8_UNORM&quot;
        },
        {
            &quot;name&quot;: &quot;GBufferNormals&quot;,
            &quot;format&quot;: &quot;R16G16B16A16_SNORM&quot;
        },
        {
            &quot;name&quot;: &quot;GBufferProperties0&quot;,
            &quot;format&quot;: &quot;R8G8B8A8_UNORM&quot;
        },
        {
            &quot;name&quot;: &quot;MainDepth&quot;,
            &quot;format&quot;: &quot;D24_UNORM_S8_UINT&quot;
        },
        {
            &quot;name&quot;: &quot;BackBufferColor&quot;,
            &quot;format&quot;: &quot;R16G16B16A16_FLOAT&quot;
        }
    ],
</code></pre><p>by default they will have the same size as the window framebuffer, unless otherwise written (scale_x/y, width/height).</p>
<p>Next are the actual render stages.<!-- raw HTML omitted -->
The first is the GBufferOpaque one:</p>
<pre tabindex="0"><code>    &quot;RenderStages&quot;: [
        {
            &quot;name&quot;: &quot;GBufferOpaque&quot;,
            &quot;type&quot;: &quot;Geometry&quot;,
            &quot;render_view&quot;: &quot;main&quot;,
            &quot;depth_stencil&quot;: &quot;Main&quot;,
            &quot;inputs&quot;: [

            ],
            &quot;outputs&quot;: {
                &quot;rts&quot;: [ &quot;GBufferAlbedo&quot;, &quot;GBufferNormals&quot;, &quot;GBufferProperties0&quot; ],
                &quot;depth&quot;: &quot;MainDepth&quot;,
                &quot;flags&quot;: &quot;Common&quot;,
                &quot;clear_color&quot;: &quot;000000ff&quot;,
                &quot;clear_depth&quot;: 1.0,
                &quot;clear_stencil&quot;: 0
            }
        },
</code></pre><p>As you see it outputs to 3 Render Targets + Depth.<!-- raw HTML omitted -->
It also specify clear color, depth and stencil.</p>
<p>Next is the silliest compute shader to calculate light:</p>
<pre tabindex="0"><code>        {
            &quot;name&quot;: &quot;DeferredLights&quot;,
            &quot;type&quot;: &quot;PostCompute&quot;,
            &quot;material_name&quot;: &quot;SimpleFullscreen&quot;,
            &quot;material_pass_index&quot;: 2,
            &quot;inputs&quot;: [
                {
                    &quot;name&quot;: &quot;GBufferAlbedo&quot;,
                    &quot;sampler&quot;: &quot;Point&quot;,
                    &quot;binding&quot;: &quot;gbuffer_albedo&quot;
                },
                {
                    &quot;name&quot;: &quot;GBufferNormals&quot;,
                    &quot;sampler&quot;: &quot;Point&quot;,
                    &quot;binding&quot;: &quot;gbuffer_normals&quot;
                },
                {
                    &quot;name&quot;: &quot;GBufferProperties0&quot;,
                    &quot;sampler&quot;: &quot;Point&quot;,
                    &quot;binding&quot;: &quot;gbuffer_properties0&quot;
                },
                {
                    &quot;name&quot;: &quot;MainDepth&quot;,
                    &quot;sampler&quot;: &quot;Point&quot;,
                    &quot;binding&quot;: &quot;depth_texture&quot;
                }
            ],
            &quot;outputs&quot;: {
                &quot;images&quot;: [
                    {
                        &quot;name&quot;: &quot;BackBufferColor&quot;,
                        &quot;binding&quot;: &quot;destination_texture&quot;
                    }
                ],
                &quot;flags&quot;: &quot;Common&quot;
            }
        },

</code></pre><p>It will read all the previously generated textures and run a compute shader to calculate the final lighting.<!-- raw HTML omitted -->
Worth noting &lsquo;material&rsquo; and &lsquo;material pass index&rsquo; - to retrieve the shader from the material. If you open SimpleFullscreen.hfx and go to the third defined pass, you will see the code.</p>
<p>Next is an example of reusing a Render Target to add informations (like transparent objects).<!-- raw HTML omitted -->
It will add debug rendering on top of the other objects and write in the BackBufferColor render target.<!-- raw HTML omitted -->
The absence of clear parameters dictates that we don&rsquo;t want to clear.</p>
<pre tabindex="0"><code>        {
            &quot;name&quot;: &quot;DebugRendering&quot;,
            &quot;type&quot;: &quot;Geometry&quot;,
            &quot;render_view&quot;: &quot;main&quot;,
            &quot;inputs&quot;: [

            ],
            &quot;outputs&quot;: {
                &quot;rts&quot;: [ &quot;BackBufferColor&quot; ],
                &quot;depth&quot;: &quot;MainDepth&quot;,
                &quot;flags&quot;: &quot;Common&quot;
            }
        },
</code></pre><p>Last step is the swapchain.<!-- raw HTML omitted -->
It is simply using a simple shader to write to the window framebuffer as the last step of the frame.</p>
<pre tabindex="0"><code>        {
            &quot;name&quot;: &quot;Swapchain&quot;,
            &quot;type&quot;: &quot;Swapchain&quot;,
            &quot;mask&quot;: &quot;FRAMEBUFFER&quot;,
            &quot;material_name&quot;: &quot;Swapchain&quot;,
            &quot;render_view&quot;: &quot;&quot;,
            &quot;depth_stencil&quot;: &quot;Post&quot;,
            &quot;inputs&quot;: [
                {
                    &quot;name&quot;: &quot;BackBufferColor&quot;,
                    &quot;sampler&quot;: &quot;Point&quot;,
                    &quot;binding&quot;: &quot;input_texture&quot;
                }
            ],
            &quot;outputs&quot;: {
                &quot;rts&quot;: [
                ],
                &quot;depth&quot;: &quot;&quot;,
                &quot;flags&quot;: &quot;Common&quot;,
                &quot;clear_color&quot;: &quot;000000ff&quot;
            }
        }
    ]
}
</code></pre><h2 id="visualization">Visualization</h2>
<p>With all this defined, we can arrive to have something incredibly useful as this (included in the demo!):</p>

<figure>

  <a data-fancybox="" href="HydraFrame.png" >

<img src="HydraFrame.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Render Pipeline</h4>
  
</figcaption>

</figure>

<p>To me this is the quintessence of rendering: visualization.<!-- raw HTML omitted -->
Seeing things helps me understanding much better.<!-- raw HTML omitted -->
Debugging broken features, studying features, understanding dependencies, shuffling things around becomes MUCH easier.</p>
<h1 id="demo-and-code">Demo and code</h1>
<p>The demo loads a model, apply a silly directional light and gives you some controls, and uses the render pipeline.<!-- raw HTML omitted -->
It was setup during the night just to show something usable, but it is far from ideal!</p>
<p>In the code provided there is everything I am talking here.<!-- raw HTML omitted --></p>
<p>And now some links to libraries/resources used.</p>
<p>3 models are included from the free GLTF library:
<a href="https://github.com/KhronosGroup/glTF-Sample-Models">https://github.com/KhronosGroup/glTF-Sample-Models</a></p>
<p>TinyGLTF by <a href="https://twitter.com/syoyo">Syoyo Fujita</a>:</p>
<p><a href="https://github.com/syoyo/tinygltf">https://github.com/syoyo/tinygltf</a></p>
<p>The always present-always amazing ImGui by <a href="https://twitter.com/ocornut">Omar</a>:
<a href="https://github.com/ocornut/imgui">https://github.com/ocornut/imgui</a></p>
<p>With the NodeEditor by <a href="https://github.com/thedmd">Michał Cichoń</a>:
<a href="https://github.com/thedmd/imgui-node-editor">https://github.com/thedmd/imgui-node-editor</a></p>
<p>For the PBR rendering, kudos to the GREAT INFORMATIONS from <a href="https://google.github.io/filament/Filament.md.html">Google Filament</a> and <a href="https://twitter.com/romainguy">Romain Guy</a>.</p>
<p>Lastly, this is not anywhere near production ready, but I am still happy to share it as a knowledge building block for others.<!-- raw HTML omitted -->
I am thinking of making some videos for this - if you are interested let me know (both in English and Italian).</p>
<h1 id="conclusions">Conclusions</h1>
<p>We arrived at defining the Render Pipeline - a way of describing how a frame is rendered.<!-- raw HTML omitted -->
It is a very simplified version of the RenderGraph/FrameGraph - as seen in many talks - and this is something I&rsquo;ve used in my home projects (and current indie game) with great success.<!-- raw HTML omitted -->
No mention of adding resource barriers, sharing memory, async compute and more.<!-- raw HTML omitted -->
The whole purpose of this article was instead to focus on the more high level architecture side.</p>
<p>What is next ?</p>
<p>I would write about the improvements on the HFX shader effect and would like to cleanup and make that library more robust.<!-- raw HTML omitted -->
Then there is the Vulkan backend to be wrote and many examples to be done. Examples could be amazing to be tutorial and develop the technology more.<!-- raw HTML omitted -->
Then there is talking deeper about dispatching rendering draws, render managers and such - another interesting and very unique subject in Rendering Engine architectures. In all the companies I&rsquo;ve worked, I always found completely different solutions!</p>
<p>Please comment, share, send feedback!
I am happy to answer any question and very happy to share this article.
Thanks for reading!</p>
<p>Gabriel</p>

    
    
    
      Writing a Shader Effect Language Part 3: Materials
      https://jorenjoestar.github.io/post/writing_shader_effect_language_3/
      Mon, 14 Oct 2019 10:43:49 -0400
      
      https://jorenjoestar.github.io/post/writing_shader_effect_language_3/
      <h1 id="overview">Overview</h1>
<p>Data Driven Rendering Series:</p>
<ol>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_1/">https://jorenjoestar.github.io/post/writing_shader_effect_language_1/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_2/">https://jorenjoestar.github.io/post/writing_shader_effect_language_2/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_3/">https://jorenjoestar.github.io/post/writing_shader_effect_language_3/</a></li>
<li><a href="https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/">https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/</a></li>
</ol>
<p>In <a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_2/">Part 2 of this series</a> we added Resource Layouts and Properties to the <strong>HFX</strong> language, trying to arrive at a point in which we can describe the rendering of a Shader Effect almost entirely.<!-- raw HTML omitted -->
In this article I would like to explore further adds to HFX, especially a proper <strong>Material System</strong> to be used in conjunction with the HFX language.<!-- raw HTML omitted -->
I also separated the code a little bit for clarity and added the usage of STB array and hash maps.<!-- raw HTML omitted -->
With that I would like to develop a Material System that is robust and easy to use, even though I am (DISCLAIMER!) far from it!<!-- raw HTML omitted --></p>
<p>I will first talk about the theory and thoughts behind those changes, and then go through the code changes and addition.</p>
<h1 id="material-system-thoughts">Material System thoughts</h1>
<p>Following a nomenclature from the amazing guys at <a href="https://ourmachinery.com/post/">our_machinery</a>, we are adding a <em>Tier 1 Shader System</em> - something that builds on top of the graphics API created in the previous article.</p>
<p>First of all, a great series of article is again on their website:</p>
<ul>
<li><a href="https://ourmachinery.com/post/the-machinery-shader-system-part-1/">https://ourmachinery.com/post/the-machinery-shader-system-part-1/</a></li>
<li><a href="https://ourmachinery.com/post/the-machinery-shader-system-part-2/">https://ourmachinery.com/post/the-machinery-shader-system-part-2/</a></li>
<li><a href="https://ourmachinery.com/post/the-machinery-shader-system-part-3/">https://ourmachinery.com/post/the-machinery-shader-system-part-3/</a></li>
</ul>
<p>We are building a Material System based on a graphics-API that exposes the following concepts:</p>
<ul>
<li>Buffer</li>
<li>Texture</li>
<li>Pipeline (that includes shaders)</li>
<li>Render Pass</li>
<li>Resource List Layout</li>
<li>Resource List</li>
</ul>
<p>We are using a Vulkan/D3D12 interface here, and these concepts map 1 to 1 with that.<!-- raw HTML omitted -->
One of the big changes from a typical low-level graphics API is both the &lsquo;missing&rsquo; concept of Shader as a resource, and the addition of Render Pass as resource.<!-- raw HTML omitted -->
A new concept is the one of <strong>Resource List Layout</strong> and <strong>Resource List</strong>.<!-- raw HTML omitted -->
The Vulkan names are <strong>Descriptor Set Layout</strong> and <strong>Descriptor Set</strong>, but even though they reflect more the underlying driver nature of the term, I changed to <strong>Resource List</strong> just to have it clearer as a concept.</p>
<p>The <strong>King</strong> here is the Pipeline: it is a structure that contains <strong>all the immutable data of a pipeline</strong>. That includes our missing <strong>shaders</strong>, all the <strong>render states</strong> (DepthStencil, AlphaBlend, &hellip;) and a <strong>Layout of the resources to be used by the shader</strong>.</p>
<p>Part of the <strong>dynamic</strong> pipeline states are normally the <strong>geometry</strong> and the <strong>resource lists</strong>.<!-- raw HTML omitted -->
Note that I am using the plural here: each <strong>pipeline</strong> can have 1 or more <strong>resource lists!!</strong>.<!-- raw HTML omitted -->
This is a good to organize your resources based on update frequencies, something coming from the numerous talks about Approaching Zero Driver Overhead.</p>
<p>Remembering the simple interface of our API, now we have the following:</p>
<pre tabindex="0"><code>struct Device {

	...

    BufferHandle                    create_buffer( const BufferCreation&amp; creation );
    TextureHandle                   create_texture( const TextureCreation&amp; creation );
    PipelineHandle                  create_pipeline( const PipelineCreation&amp; creation );
    SamplerHandle                   create_sampler( const SamplerCreation&amp; creation );
    ResourceListLayoutHandle        create_resource_list_layout( const ResourceListLayoutCreation&amp; creation );
    ResourceListHandle              create_resource_list( const ResourceListCreation&amp; creation );
    RenderPassHandle                create_render_pass( const RenderPassCreation&amp; creation );

    ...
};
</code></pre><p>If you look at the OpenGL implementation (the only I wrote for now :( ) you will find that Shaders are considered resources, but it is more for convenience of the attach/linking OpenGL need than anything else.</p>
<p>Let&rsquo;s finally introduce the new concept for this article!</p>
<h2 id="shader-effect">Shader Effect</h2>
<blockquote>
<p>A <strong>Shader Effect</strong> is the blueprint of <em>static</em> data needed to draw something on the screen.</p>
</blockquote>
<p>It needs to include <strong>shaders</strong> (included in a <strong>Pipeline Description</strong>), <strong>properties</strong> (coming from the HFX file) and find its location into a <strong>render graph</strong>.<!-- raw HTML omitted --></p>
<blockquote>
<p>A <strong>Shader Effect</strong> is 1 to 1 with a <strong>Binary HFX file</strong>.</p>
</blockquote>
<p>As a convenience we will add also informations about the <strong>local constants</strong>.<!-- raw HTML omitted -->
When creating a Shader Effect, we can define properties, and we put all the numerical properties into one buffer.</p>
<p>This is the current code:</p>
<pre tabindex="0"><code>
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

</code></pre><p>You see both a <strong>pipeline name</strong> and an array of <strong>passes</strong> with a name. These are to insert the pass into a very <strong>primordial</strong> render graph, that I wrote just because I didn&rsquo;t want to hardcode the frame structure, especially because next article will be EXACTLY on this topic!</p>
<p>Having defined the Shader Effect, we can now move into the next big actor.</p>
<h2 id="material">Material</h2>
<blockquote>
<p>A <strong>Material</strong> is an instance of a <strong>Shader Effect</strong>.</p>
</blockquote>
<p>Given a HFX file, we generate a new file (HMT, Hydra Material) that will contain all the informations.<!-- raw HTML omitted -->
The concept of Material is really <strong>unique values for the properties of a Shader Effect</strong>.</p>
<p>That is basically it.</p>
<p>For example, if a shader contains a property like an <em>albedo texture</em>, the material answer the question &ldquo;which albedo texture?&rdquo;.<!-- raw HTML omitted -->
This is done for every property.</p>
<p>Let&rsquo;s have a look at our new material:</p>
<pre tabindex="0"><code>{
    &quot;name&quot;: &quot;SimpleFullscreen&quot;,
    &quot;effect_path&quot;: &quot;SimpleFullscreen.hfx&quot;,
    &quot;properties&quot;: [
        {
            &quot;scale&quot;: 16.0,
            &quot;albedo&quot;: &quot;AngeloCensorship.png&quot;,
            &quot;modulo&quot;: 2.0
        }
    ],
    &quot;bindings&quot;: [
        {
            &quot;LocalConstants&quot;: &quot;LocalConstants&quot;,
            &quot;destination_texture&quot;: &quot;compute_output_texture&quot;,
            &quot;input_texture&quot;: &quot;compute_output_texture&quot;,
            &quot;albedo_texture&quot;: &quot;albedo&quot;
        }
    ]
}
</code></pre><p>As you can see there is a name, the effect path, the properties and the bindings. These will be explained in the next section.<!-- raw HTML omitted -->
Properties are just a name-value list, coming from the Shader Effect itself (the .bhfx file).</p>
<p>The texture is my horrible drawing after reading the fantastic <a href="http://c0de517e.blogspot.com/2019/08/engineering-career-guide-leaked.html">rendering guide by Angelo Pesce</a> and how he censored the parts that were internal to Roblox!</p>
<h2 id="shader-resource-database-and-lookup">Shader Resource Database and Lookup</h2>
<p>A concept that I saw only in the <strong>our_machinery</strong> posts, but I personally adopted since a couple of years, is a way of automating a daunting task: <em>setting shader resources</em>.</p>
<p>I still need to finish the correct implementation of those, but the concepts are simple.<!-- raw HTML omitted -->
A <strong>Shader Resource Database</strong> is a database of resources that can be searched using a <strong>Shader Resources Lookup</strong>.<!-- raw HTML omitted -->
The name of the binding is the shader related name, while the value is the name into the database.<!-- raw HTML omitted -->
Of course you can use hashes instead of names, and compile them into a binary version of this, but this is not important now.</p>
<p>One interesting bit (sadly not implemented here, sorry!) is the binding specialization. <!-- raw HTML omitted -->
This is done so that resources can be specialized in the database.<!-- raw HTML omitted -->
This is done per pass and it let you write only one binding list for all the Material, and then gather the proper resource based on the specialization.<!-- raw HTML omitted -->
For example if there is a binding for a pass-dependent resource, writing a generic version can specialize the shader pass correctly. Or using special keywords in the bindings, you can retrieve input/output textures from the render pass in which the shader is rendered!</p>
<p>For now though it is more a manual written list, but it will be developed further.</p>
<h1 id="where-is-my-code-">Where is my code ?</h1>
<p>Having introduced the new concept, let&rsquo;s look at the changes that happened in the last weeks of night coding.<!-- raw HTML omitted -->
As said before, in general I separated the code in header/cpp for clarity and building performances (after a good talk on Twitter, <a href="https://twitter.com/GabrielSassone/status/1179810419617275905?s=20)">https://twitter.com/GabrielSassone/status/1179810419617275905?s=20)</a>.</p>
<h2 id="applications">Applications</h2>
<p>First big changes was separating the code from the previous articles in an <em>application</em>: namely <strong>CustomShaderLanguageApplication</strong> in <strong>CustomShaderLanguage.h/cpp</strong> and <strong>MaterialSystemApplication</strong> in <strong>MaterialSystem.h/cpp</strong>.</p>
<p>The first contains all the application code that uses HDF and HFX, with code generation and HFX compilation.<!-- raw HTML omitted -->
The second contains both the new <strong>Material System</strong> and the application that uses it.<!-- raw HTML omitted -->
I would love to say that is an usable app, but I really touched my limits in non designing clearly when night coding.<!-- raw HTML omitted -->
<strong>Personal note: I hope this could be the spark to create a FX Composer successor, open source and free for all!</strong></p>
<h2 id="stb">STB</h2>
<p>As part of this experiment I wanted to try something different.<!-- raw HTML omitted -->
Instead of re-writing array and hash maps with templates, I wanted to give a try to the <a href="https://github.com/nothings/stb">STB libraries</a>: namely <strong>stb_ds.h</strong> and <strong>stb_image.h</strong>.<!-- raw HTML omitted -->
Arrays and Hash Maps are now included in hydra_lib.h to be used across the code.</p>
<h2 id="hydra-graphics">Hydra Graphics</h2>
<p>The device added render passes and the support for multiple resources layout.<!-- raw HTML omitted -->
It also creates FBOs for color passes and supports resize, especially thanks to the Render Pipeline.</p>
<h2 id="primitive-render-graph-called-render-pipeline">Primitive Render Graph (called Render Pipeline)</h2>
<p>I use the term I used since the inception in 2010, and honestly it is more true to what it does.<!-- raw HTML omitted -->
It is not a graph but more a list of <strong>Render Stages</strong> with input/outputs defined clearly.<!-- raw HTML omitted -->
In the next article I will develop more on this, but for now I needed some structure like this to be explicit.</p>
<p>In the application there are 3 pipelines, one for a single pass ShaderToy shader, one for a silly compute to framebuffer shader(that for now loads a texture and outputs it to the framebuffer), and one for just a render to window.</p>
<p>I use this in my indie project, with a fully custom and data driven (written in json) pipeline that includes compute deferred lighting and shadows, shadow passes, various post-process passes and such, everything very easy to debug and very easy to modify/add/delete.<!-- raw HTML omitted -->
There is a mechanism to send the correct draw calls to the correct pass through the usage of render systems, but again this will be a topic for the next article!</p>
<p>In the included code, there is also a small but powerful tool: a pipeline explorer.<!-- raw HTML omitted -->
For now it will just show the render targets for each stage, and in these simple examples does not matter much.<!-- raw HTML omitted -->
In the next article we will dive deep into the <strong>Render Pipeline/Graph</strong> subject and then all of this will make sense!</p>
<h1 id="break-a-simple-resource-manager">Break: a simple Resource Manager</h1>
<p>While being a very important topic, this is not the focus of this article.<!-- raw HTML omitted -->
Anyway I wanted a Resource Manager that would be helpful to handle resource creation and loading.<!-- raw HTML omitted -->
This includes also <em>resource compilation</em>, something that normally happens at <em>build time</em>, but in our exercise can be triggered at run-time.</p>
<p>The <strong>resource manager</strong> is a class that simply manages resources using <strong>factories</strong> and manages dependencies between resources.<!-- raw HTML omitted -->
We have only 3 resources for now:</p>
<ol>
<li>Textures</li>
<li>Shader Effects</li>
<li>Materials</li>
</ol>
<h2 id="resources">Resources</h2>
<p>A resource is a class that both has data and let the dependency with other data be clear.<!-- raw HTML omitted -->
The <strong>resource&rsquo;s data</strong> is actually a pointer to actual raw data used by other systems, in this case rendering.<!-- raw HTML omitted -->
Let&rsquo;s see its definition:</p>
<pre tabindex="0"><code>struct Resource {

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
</code></pre><p>A resource is loaded from a binary file and contains a header and some data coming from the file, and an asset containing a system specific pointer.</p>
<p>We added 3 system specific resources (Texture, Shader Effect and Material) but the class handled is always resource.<!-- raw HTML omitted -->
To access the system specific data, asset member is used.</p>
<p>A resource contains also a map to the external resources loaded within it - to handle external references.</p>
<h2 id="compilation">Compilation</h2>
<p>Starting from a <em>source file</em> (.hfx, .png, .hmt) using the specific factory, the resource manager compiles the code to a binary resource.<!-- raw HTML omitted -->
This means both converting the source format to a binary representation but also adding <strong>external dependencies</strong> to the file.<!-- raw HTML omitted -->
These dependencies will be loaded when loading the resource, and before it.</p>
<h2 id="loading">Loading</h2>
<p>Loading happens by first loading all the dependent resources and then using the specific factory to load the <em>system specific</em> asset.<!-- raw HTML omitted -->
This is a very semplicistic resource management - synchronous only, single threaded, not optimized - so really was an exercise in having something running for both compiling a resource and managing dependencies.<!-- raw HTML omitted -->
The whole point is the separation between a source and human-readable format to a binary one and encapsulate this.</p>
<p>After this (very!) small break on resource management, let&rsquo;s continue to the actual code for the materials!</p>
<h1 id="material-system-implementation">Material System implementation</h1>
<p>After all this thory let&rsquo;s look at the code!<!-- raw HTML omitted --></p>
<h2 id="shader-effect-1">Shader Effect</h2>
<p>The main parts of a <strong>Shader Effect</strong> are <strong>Passes</strong> and <strong>Properties</strong>.<!-- raw HTML omitted -->
<strong>Passes</strong> are the most important one, as they contain all the informations to create an actual <strong>Pipeline</strong>, called <strong>Pipeline Creation</strong>.<!-- raw HTML omitted --></p>
<p>Remembering the Vulkan/DX12 interface, we cannot create singularly a shader, but we need all the pipeline data (depth stencil, alpha blend, &hellip;) to actually create the shaders too.</p>
<p>The gist here is to access all those informations in a hiearchical way, basically reading them from the RenderPipeline and then overwriting with what is defined in the HFX file.</p>
<p>Right now there is almost nothing if not the shaders, so the creation is quite simple:</p>
<pre tabindex="0"><code>for ( uint16_t p = 0; p &lt; shader_effect_file.header-&gt;num_passes; p++ ) {
    hfx::ShaderEffectFile::PassHeader* pass_header = hfx::get_pass( shader_effect_file, p );

    uint32_t shader_count = pass_header-&gt;num_shader_chunks;

    memcpy( effect-&gt;passes[p].name, pass_header-&gt;stage_name, 32 );

    PipelineCreation&amp; pipeline_creation = effect-&gt;passes[p].pipeline_creation;
    ShaderCreation&amp; creation = pipeline_creation.shaders;
    bool compute = false;

    // Create Shaders
    for ( uint16_t i = 0; i &lt; shader_count; i++ ) {
        hfx::get_shader_creation( pass_header, i, &amp;creation.stages[i] );

        if ( creation.stages[i].type == ShaderStage::Compute )
            compute = true;
    }

    creation.name = pass_header-&gt;name;
    creation.stages_count = shader_count;

    effect-&gt;passes[p].pipeline_creation.compute = compute;

    // Create Resource Set Layouts
    for ( uint16_t l = 0; l &lt; pass_header-&gt;num_resource_layouts; l++ ) {

        uint8_t num_bindings = 0;
        const ResourceListLayoutCreation::Binding* bindings = get_pass_layout_bindings( pass_header, l, num_bindings );
        ResourceListLayoutCreation resource_layout_creation = { bindings, num_bindings };

        pipeline_creation.resource_list_layout[l] = context.device.create_resource_list_layout( resource_layout_creation );

    }

    pipeline_creation.num_active_layouts = pass_header-&gt;num_resource_layouts;

    // Create Pipeline
    effect-&gt;passes[p].pipeline_handle = context.device.create_pipeline( pipeline_creation );
    if ( effect-&gt;passes[p].pipeline_handle.handle == k_invalid_handle ) {
        invalid_effect = true;
        break;
    }
}
</code></pre><p>When we will have a proper RenderPipeline, we will get the basic pipeline creation from there, and overwrite the shaders and states that will be defined in the HFX.</p>
<p>There are 3 main steps here:</p>
<ol>
<li>Create Shaders</li>
<li>Create Resource Set Layouts</li>
<li>Create Pipelines</li>
</ol>
<p>These are simple operations that rely heavily on the device.<!-- raw HTML omitted -->
The objective of the HFX is to embed most information possible to create a complete pipeline.</p>
<p>Another important step is to populate the properties map:</p>
<pre tabindex="0"><code>string_hash_init_arena( effect-&gt;name_to_property );

for ( uint32_t p = 0; p &lt; effect-&gt;num_properties; ++p ) {
    hfx::ShaderEffectFile::MaterialProperty* property = hfx::get_property( effect-&gt;properties_data, p );

    string_hash_put( effect-&gt;name_to_property, property-&gt;name, property );
}
</code></pre><p>We are using the STB String Hashmap here with the property that are inside the shader effect file. Those will contain the type, name for UI and the pointer to a default value. <!-- raw HTML omitted -->
The default value will be used based on the type of course.</p>
<p>We are also saving the local constant buffer size, so that we can allocate some memory in the Material and alter its property using the UI.</p>
<p>We will see the importance of this next.</p>
<h2 id="material-1">Material</h2>
<pre tabindex="0"><code>struct ShaderInstance {

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
</code></pre><p>This is the glue to actually render something on the screen.<!-- raw HTML omitted -->
As a recap, we need 3 informations to render something:</p>
<ol>
<li>Pipeline (shaders + render states)</li>
<li>Resources (handles to buffers and textures)</li>
<li>Geometry (in this case a fullscreen quad)</li>
</ol>
<p>Material gives all those informations.</p>
<p>A <strong>Shader Instance</strong> is defined for each <strong>pass</strong>, and actually contains the Pipeline Handle and the <strong>List of Resource Lists</strong> to be used.<!-- raw HTML omitted -->
This is one of the new concepts for Vulkan/DX12: you can use one of more lists of resources to render, and normally it is better to group them by frequency.</p>
<p>Finally, a list of <strong>textures</strong> is saved to be modified by the editor.</p>
<p>To understand more the process, let&rsquo;s look at the loading code of a Material.</p>
<pre tabindex="0"><code>void* MaterialFactory::load( LoadContext&amp; context ) {
    
    using namespace hydra::graphics;

    // 1. Read header from file
    MaterialFile material_file;
    material_file.header = (MaterialFile::Header*)context.data;
    material_file.property_array = (MaterialFile::Property*)(context.data + sizeof( MaterialFile::Header ));
    material_file.binding_array = (MaterialFile::Binding*)(context.data + sizeof( MaterialFile::Header ) + sizeof( MaterialFile::Property ) * material_file.header-&gt;num_properties);
</code></pre><p>We are using the data from the material file to access properties and bindings.<!-- raw HTML omitted -->
Properties are both numerical and path to textures, bindings are name to retrieve resources from the database. We will look into that later.</p>
<pre tabindex="0"><code>    // 2. Read shader effect
    Resource* shader_effect_resource = string_hash_get( context.resource-&gt;name_to_external_resources, material_file.header-&gt;hfx_filename );
    ShaderEffect* shader_effect = shader_effect_resource ? (ShaderEffect*)shader_effect_resource-&gt;asset : nullptr;
    if ( !shader_effect ) {
        return nullptr;
    }

    // 3. Search pipeline
    RenderPipeline* render_pipeline = string_hash_get( context.name_to_render_pipeline, shader_effect-&gt;pipeline_name );
    if ( !render_pipeline ) {
        return nullptr;
    }

</code></pre><p>Access the Shader Effect through the resource dependencies, and the Render Pipeline from the map.</p>
<pre tabindex="0"><code>    // 4. Load material
    char* material_name = material_file.header-&gt;name;
    uint32_t pool_id = materials_pool.obtain_resource();
    Material* material = new (materials_pool.access_resource(pool_id))Material();
    material-&gt;loaded_string_buffer.init( 1024 );
    material-&gt;pool_id = pool_id;

    // TODO: for now just have one lookup shared.
    material-&gt;lookups.init();
    // TODO: properly specialize.
    // For each pass
    //for ( uint32_t i = 0; i &lt; effect-&gt;num_pipelines; i++ ) {
    //    PipelineCreation&amp; pipeline = effect-&gt;pipelines[i];
    //    //final ShaderBindings specializedBindings = bindings.specialize( shaderTechnique.passName, shaderTechnique.viewName );
    //    //shaderBindings.add( specializedBindings );
    //}

    material-&gt;effect = shader_effect;
    material-&gt;num_instances = shader_effect-&gt;num_passes;
    material-&gt;shader_instances = new ShaderInstance[shader_effect-&gt;num_passes];
    material-&gt;name = material-&gt;loaded_string_buffer.append_use( material_name );
    material-&gt;num_textures = material_file.header-&gt;num_textures;
    material-&gt;textures = (Texture**)hydra::hy_malloc( sizeof( Texture* ) * material-&gt;num_textures );
</code></pre><p>Here is the meaty part.<!-- raw HTML omitted -->
We create the Material, initialize a StringBuffer used to store all the names found in the file, init the db-&gt;resource lookup and create the ShaderInstance array.</p>
<pre tabindex="0"><code>    // Init memory for local constants
    material-&gt;local_constants_data = (char*)hydra::hy_malloc( shader_effect-&gt;local_constants_size );
    // Copy default values to init to sane valuess
    memcpy( material-&gt;local_constants_data, material-&gt;effect-&gt;local_constants_default_data, material-&gt;effect-&gt;local_constants_size );
</code></pre><p>We cached the constant data size to allocate its memory, and we copy the default values in it.
This memory will be overwritten by the other numerical properties and used to initialize the local constant buffer.</p>
<pre tabindex="0"><code>    // Add properties
    uint32_t current_texture = 0;
    for ( size_t p = 0; p &lt; material_file.header-&gt;num_properties; ++p ) {
        MaterialFile::Property&amp; property = material_file.property_array[p];

        hfx::ShaderEffectFile::MaterialProperty* material_property = string_hash_get( material-&gt;effect-&gt;name_to_property, property.name );

        switch ( material_property-&gt;type ) {
            case hfx::Property::Texture2D:
            {
                const char* texture_path = material-&gt;loaded_string_buffer.append_use( property.data );
                Resource* texture_resource = string_hash_get( context.resource-&gt;name_to_external_resources, texture_path );
                Texture* texture = (Texture*)texture_resource-&gt;asset;
                texture-&gt;filename = texture_path;

                render_pipeline-&gt;resource_database.register_texture( property.name, texture-&gt;handle );

                material-&gt;textures[current_texture] = texture;

                ++current_texture;

                break;
            }

            case hfx::Property::Float:
            {
                memcpy( material-&gt;local_constants_data + material_property-&gt;offset, property.data, sizeof( float ) );
                break;
            }
        }
    }
</code></pre><p>When cycling through the properties, we are copying the numerical properties into the newly allocated memory (local_constant_data) and we load the textures from the dependencies.</p>
<pre tabindex="0"><code>     // Add bindings
    for ( size_t b = 0; b &lt; material_file.header-&gt;num_bindings; ++b ) {
        MaterialFile::Binding&amp; binding = material_file.binding_array[b];

        char* name = material-&gt;loaded_string_buffer.append_use( binding.name );
        char* value = material-&gt;loaded_string_buffer.append_use( binding.value );
        material-&gt;lookups.add_binding_to_resource( name, value );
    }

</code></pre><p>We populate the resource lookups.</p>
<pre tabindex="0"><code>    BufferCreation checker_constants_creation = {};
    checker_constants_creation.type = BufferType::Constant;
    checker_constants_creation.name = s_local_constants_name;
    checker_constants_creation.usage = ResourceUsageType::Dynamic;
    checker_constants_creation.size = shader_effect-&gt;local_constants_size;
    checker_constants_creation.initial_data = material-&gt;local_constants_data;

    material-&gt;local_constants_buffer = context.device.create_buffer( checker_constants_creation );
    render_pipeline-&gt;resource_database.register_buffer( (char*)s_local_constants_name, material-&gt;local_constants_buffer );
</code></pre><p>Generate the actual constant buffer.</p>
<pre tabindex="0"><code>    // Bind material resources
    update_material_resources( material, render_pipeline-&gt;resource_database, context.device );
</code></pre><p>And finally search the bindings for the resources.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>static void update_material_resources( hydra::graphics::Material* material, hydra::graphics::ShaderResourcesDatabase&amp; database, hydra::graphics::Device&amp; device ) {

    using namespace hydra::graphics;

    // Create resource list
    // Get all resource handles from the database.
    ResourceListCreation::Resource resources_handles[k_max_resources_per_list];

    // For each pass
    for ( uint32_t i = 0; i &lt; material-&gt;effect-&gt;num_passes; i++ ) {
        PipelineCreation&amp; pipeline = material-&gt;effect-&gt;passes[i].pipeline_creation;

        for ( uint32_t l = 0; l &lt; pipeline.num_active_layouts; ++l ) {
            // Get resource layout description
            ResourceListLayoutDescription layout;
            device.query_resource_list_layout( pipeline.resource_list_layout[l], layout );

            // For each resource
            for ( uint32_t r = 0; r &lt; layout.num_active_bindings; r++ ) {
                const ResourceBinding&amp; binding = layout.bindings[r];

                // Find resource name
                // Copy string_buffer 
                char* resource_name = material-&gt;lookups.find_resource( (char*)binding.name );

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
            material-&gt;shader_instances[i].resource_lists[l] = device.create_resource_list( creation );
        }
        material-&gt;shader_instances[i].num_resource_lists = pipeline.num_active_layouts;
        material-&gt;shader_instances[i].pipeline = material-&gt;effect-&gt;passes[i].pipeline_handle;
    }
}

</code></pre><p>For each Pass, Resource Layout and Binding, we search the Database to retrieve the actual resource and create the Resource List.</p>
<p>This can be improved - having a global database of resources and a &lsquo;local&rsquo; one based on material resources.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    // 5. Bind material to pipeline
    for ( uint8_t p = 0; p &lt; shader_effect-&gt;num_passes; ++p ) {
        char* stage_name = shader_effect-&gt;passes[p].name;
        hydra::graphics::RenderStage* stage = string_hash_get( render_pipeline-&gt;name_to_stage, stage_name );

        if ( stage ) {
            stage-&gt;material = material;
            stage-&gt;pass_index = (uint8_t)p;
        }
    }

    return material;
}
</code></pre><p>Finally, and this is hacky, we assing the current material and pass index to the found stage.<!-- raw HTML omitted -->
Once we have the real Render Pipeline/Graph working, we will use another dispatching mechanism.</p>
<h1 id="rendering-of-a-material">Rendering of a Material</h1>
<p>After all of this we finally have created a Material.<!-- raw HTML omitted -->
But how can we render it ?<!-- raw HTML omitted -->
The magic here happens in a <strong>Render Pipeline</strong>!<!-- raw HTML omitted -->
A Render Pipeline is a list of Render Stages and some resources with it. In this case resources are the <strong>render targets</strong> and the <strong>buffers</strong> that are shared amongst <strong>Stages</strong> (and Render Systems in the future).<!-- raw HTML omitted -->
Resources are inside a <strong>Shader Resources Database</strong> and they can be retrieved using a <strong>Shader Resource Lookup</strong>.</p>
<p>Each <strong>Render Stage</strong> has defined a list of input and output textures plus some resize data. This data is needed to recreate textures when a resize event arrives if needed, or change size if an option is changed (like a Shadow Map resolution option).<!-- raw HTML omitted -->
As everthing in this articles, this is primordial and simple, but I think is a very good start, especially from a mindset perspective.</p>
<p>In this simple scenario we render 1 material only, and normally it simply 1 <em>Material Pass</em> for each <em>Render Stage Pass</em>, rendering either using a fullscreen quad or through compute.</p>
<p>There are 2 pipelines, both simple and used as a test, one is for a <em>ShaderToy</em> shader that I use as test, the other as a compute only pipeline. They are both hardcoded and created at the beginning of the <em>Material Application</em>, but as said before, it should be data-driven and reloadable to have great rendering power.</p>
<h2 id="rendering-of-a-pipeline">Rendering of a Pipeline</h2>
<p>The code is simple:</p>
<pre tabindex="0"><code>void RenderPipeline::render( CommandBuffer* commands ) {

    for ( size_t i = 0; i &lt; string_hash_length( name_to_stage ); i++ ) {

        RenderStage* stage = name_to_stage[i].value;
        stage-&gt;begin( commands );
        stage-&gt;render( commands );
        stage-&gt;end( commands );
    }
}
</code></pre><p>We cycle through each stage and render.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>void RenderStage::begin( CommandBuffer* commands ) {
    commands-&gt;begin_submit( 0 );
    commands-&gt;begin_pass( render_pass );
    commands-&gt;set_viewport( { 0, 0, (float)current_width, (float)current_height, 0.0f, 1.0f } );
    if ( clear_rt ) {
        commands-&gt;clear( clear_color[0], clear_color[1], clear_color[2], clear_color[3] );
    }
    commands-&gt;end_submit();
    // Set render stage states (depth, alpha, ...)
}

</code></pre><p>Before rendering anything this code will bind the correct FBO/Render Targets, clear and set viewport and set render states.<!-- raw HTML omitted -->
After this we are ready to render the actual stage. In this simple implementation we have only 3 type of stages: Compute, Post and Swapchain.<!-- raw HTML omitted --></p>
<p>They are very simple and similar, like this:</p>
<pre tabindex="0"><code>commands-&gt;begin_submit( pass_index );
commands-&gt;bind_pipeline( shader_instance.pipeline );
commands-&gt;bind_resource_list( &amp;shader_instance.resource_lists[0], shader_instance.num_resource_lists );
commands-&gt;draw( graphics::TopologyType::Triangle, 0, 3 );
commands-&gt;end_submit();
</code></pre><p>Set the pipeline, bind all the different resource lists and issue the draw (in this case a full screen triangle).</p>
<h1 id="included-in-the-code">Included in the code</h1>
<h2 id="material-application">Material application</h2>
<p>I just added a simple Material Application to render the content of one of those simple shaders.</p>
<p>Honestly not very happy about the code quality - and you can see why trying to add big features like memory management or multi-threading is a no-go.</p>
<p>The application let you switch between <strong>materials</strong> by right clicking on the <strong>.hmt</strong> file.<!-- raw HTML omitted -->
The whole purpose is to explore with the given code a couple of materials and their dependencies.<!-- raw HTML omitted --></p>
<p><a href="https://www.shadertoy.com/view/XlfGRj">Starnest</a> is a shader by the amazing <a href="https://www.deviantart.com/fractkali"><strong>Pablo Roman Andrioli</strong></a>, so all credits are to him! I wanted something beautiful to show in this simple example from ShaderToy.</p>
<h1 id="conclusions-and-some-thoughts">Conclusions and some thoughts</h1>
<p>We added a simple material system based on our HFX language.<!-- raw HTML omitted -->
Interestingly enough code generation is used much less - if almost nothing - instead of serializing data into files and using them.<!-- raw HTML omitted -->
As stated in the other articles, the goal is to have a parsing and code generation knowledge under your belt, and understand when it is time to use it!<!-- raw HTML omitted -->
We also introduced a lot of connections to other topics that are lengthy enough - like resource management - that need more time and dedication to properly be explored.<!-- raw HTML omitted -->
I am continuing working on this until it will become my <em>rendering explorer</em> - a tool I can use to easily explore ideas, much like <strong>ShaderToy</strong> but in an even more powerful way.<!-- raw HTML omitted -->
How ?<!-- raw HTML omitted -->
In the next article we will explore the final piece of the puzzle, and then we will probably start iterating and improving on what we have!<!-- raw HTML omitted -->
We will see how we can describe a frame and the rendering dependencies in an easy way, especially if done since the beginning, and how much having that knowledge upfront is GREAT to work on rendering.<!-- raw HTML omitted --></p>
<p>I am honestly not happy about the overall architecture though - here you have an example of <em>exploring code</em> - code written to explore a specific subject, and after venturing more into it you want to rewrite it.<!-- raw HTML omitted -->
To properly rewrite it you need to create solid foundations - namely <strong>Memory Management, Multi-Threading, Basic Data Structures, &hellip;</strong> and choose to pick your battles!</p>
<p>This is a huge lesson: pick your battles, choose what to concentrate on.<!-- raw HTML omitted -->
These articles are more towards code generation and rendering, but defining the constraints of the articles helps in narrowing down what to do.<!-- raw HTML omitted -->
If, as I would like, you want to use this code to evolve into something like a &lsquo;desktop&rsquo; Shadertoy, then you can&rsquo;t ignore all the foundational topics.<!-- raw HTML omitted -->
On the other end if you just quickly want to experiment with those topics, this should suffice.<!-- raw HTML omitted --></p>
<p>I have two paths here: rewriting most of this code with a solid foundations, and delaying a RenderPipeline/Graph article, or finishing with this architecture and then re-write everything with the &lsquo;desktop Shadertoy&rsquo;.<!-- raw HTML omitted -->
Again, pick your battles :)</p>
<p>As always, please comment, feedback, share!<!-- raw HTML omitted -->
I really hope soon there will be some <em>rendering joy</em>!</p>
<p>Gabriel</p>

    
    
    
      Writing a Shader Effect Language Part 2
      https://jorenjoestar.github.io/post/writing_shader_effect_language_2/
      Wed, 11 Sep 2019 00:42:13 -0400
      
      https://jorenjoestar.github.io/post/writing_shader_effect_language_2/
      <h1 id="overview">Overview</h1>
<p>Data Driven Rendering Series:</p>
<ol>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_1/">https://jorenjoestar.github.io/post/writing_shader_effect_language_1/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_2/">https://jorenjoestar.github.io/post/writing_shader_effect_language_2/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_3/">https://jorenjoestar.github.io/post/writing_shader_effect_language_3/</a></li>
<li><a href="https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/">https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/</a></li>
</ol>
<p>In <a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_1/">Part 1 of this series</a> we created a simple <em>language</em> to work as &lsquo;shader effect&rsquo; - a shader language superset to make our life easier, by adding missing features.<!-- raw HTML omitted -->
The fact that there is not an industry standard for a shader effect language leads to either hand-crafted (and secret) languages, or to hardcoded permutations, or to other gray-area solutions.</p>
<p><em>(Personal though: part of me would like to help in contributing to the creation of a standard through these articles and code.)</em></p>
<p>What is the <strong>goal</strong> of this article ?</p>
<p>The <strong>goal</strong> is to enrich the <strong>HFX language</strong> to generate more code possible and/or bake data for us, namely:</p>
<ol>
<li>Shader constants generation</li>
<li>Shader resource bindings</li>
<li>Render states (depth stencil, blend, rasterization)</li>
<li>Render pass hints for a future framegraph</li>
</ol>
<p><strong>We will see Render States and Render Pass hints in a following article, because this is an already lengthy article!</strong></p>
<p>I hope that by now the way of adding an identifier, parsing it and generating code is clearer.<!-- raw HTML omitted -->
In this article we will focus more on the features than anything else, even though I will put a lot of code still.<!-- raw HTML omitted -->
But before that, we need to have a big addition to our example: a rendering API!<!-- raw HTML omitted -->
We will use this as target of our code generation, and it will be an amazing example to see something working.</p>
<p><em>Maybe this will spark a new FX Composer ?</em></p>
<p>This article will be divided in 2 parts.<!-- raw HTML omitted -->
Part 1 of this article will talk about the rendering API.<!-- raw HTML omitted -->
Part 2 will be about the extended HFX language.<!-- raw HTML omitted -->
If you are not interested in that, jump to part 2 of this article.</p>
<h1 id="part-1-adding-a-low-level-rendering-api">Part 1: adding a low-level rendering API</h1>
<p>Writing articles on rendering without some sort of API to use is tricky.<!-- raw HTML omitted -->
Creating a language to speed up data driven rendering, either for generating code and/or for baking data <em>needs</em> a target API.<!-- raw HTML omitted -->
The main idea is to have an abstract API to map more easily rendering concepts instead of losing ourselves in specific API needs.</p>
<h2 id="the-search-for-an-abstract-api">The search for an abstract API</h2>
<p>The first thing to do is to search for an existing abstract API.<!-- raw HTML omitted -->
I have few criteria in mind:</p>
<ul>
<li>Simple and clear interface</li>
<li>Compact and clear code</li>
<li>Vulkan and D3D12 interface</li>
</ul>
<p>With those in mind, I found 2 alternatives: <a href="https://github.com/bkaradzic/bgfx">BGFX</a> and <a href="https://github.com/floooh/sokol">Sokol</a>.</p>
<p>I am an honest fan of both, they are brilliant, robust and well written.<!-- raw HTML omitted -->
But for the purpose of these articles, sadly they miss my search criteria.<!-- raw HTML omitted -->
There is also a <strong>huge disclaimer</strong> here: I used them too little, so it is possible I overlooked the usage of them.<!-- raw HTML omitted -->
I will be more than glad to use either instead of my toy API!<!-- raw HTML omitted -->
I respect the developers and the library a lot, they are doing an amazing job!<!-- raw HTML omitted -->
But we are handcrafting something, and to properly do that I personally need to know deeply the code. And I am not.</p>
<p>BGFX is very complete, but the interface is a little confusing for me, possibly because I never used it but just read the code few times.<!-- raw HTML omitted -->
The main reason I chose not to use it is because the interface is missing the resource interface like Vulkan and D3D12 (DescriptorSets, &hellip;), otherwise it would have been an amazing choice.</p>
<p>Sokol is also very good, I love the code and the simple interface.<!-- raw HTML omitted -->
Two main problems here: again no Vulkan/D3D12 resource interface, and in this case a different target: it does not support compute shaders.</p>
<p>Again, I want to make it clear: I am not saying these are not good libraries. They are amazing. They just don&rsquo;t fit my search criteria, plus I LOVE to work on rendering architecture. Well actually, it is my favourite job!</p>
<p>So kudos to them (I also wrote to Andre Weissflog to ask for compute shader support, but it is not in his plans for now) but we are making a different choice.<!-- raw HTML omitted --></p>
<p>If you ever find anything that I write useful guys, please let me know!</p>
<h2 id="hydra-graphics-design-principles">Hydra Graphics: design principles</h2>
<p>Small trivia: the name comes from my first ever graphics engine written in 2006 (I think), after devouring 3D Game Engine Design by Dave Eberly. I already knew I would write many engines and I would learn and grow stronger from every of them, so I chose the name Hydra from the Greek mythology monster.<!-- raw HTML omitted -->
The other name would have been Phoenx engine, but I remember finding already some tech with that name.</p>
<p>Anyway, design principles!<!-- raw HTML omitted -->
I really loved the interface of Sokol, and often I used something similar by myself.<!-- raw HTML omitted -->
I opted for a pair of header/implementation files as the only needed files.</p>
<p><strong>The backend is OpenGL for now, just because I have a working implementation in my indie project that works with pretty complex rendering, and I can use that as reference.</strong></p>
<h3 id="interface">Interface</h3>
<p>Rendering in general is a matter of creating, modifying and combining <em>resources</em>.<!-- raw HTML omitted -->
There are mainly 2 classes that do all the rendering work:</p>
<ol>
<li>Device</li>
<li>Command Buffer</li>
</ol>
<p><em>The Device is responsible for creation, destruction, modification and query of the resources.<!-- raw HTML omitted -->
The Command Buffer is responsible for the usage of resources for rendering.</em></p>
<p>The obvious fundamental concept is <strong>resource</strong>.<!-- raw HTML omitted -->
A <strong>resource</strong> is handled externally through handles, can be created using <strong>creation</strong> structs and has both a common and an API-specific representation.</p>
<p><strong>Buffers</strong> are specialized in vertex/index/constant/&hellip; depending on their creation parameters.</p>
<p>This is a small example on creation/usage/destruction of a resource.<!-- raw HTML omitted -->
First, we can create a texture:</p>
<pre tabindex="0"><code>graphics::TextureCreation first_rt = {};
first_rt.width = 512;
first_rt.height = 512;
first_rt.render_target = 1;
first_rt.format = graphics::TextureFormat::R8G8B8A8_UNORM;

TextureHandle render_target = gfx_device.create_texture( first_rt );
</code></pre><p>Next we can create a command buffer:</p>
<pre tabindex="0"><code>CommandBuffer* commands = gfx_device.get_command_buffer( graphics::QueueType::Graphics, 1024 );
</code></pre><p>Skipping other creations, we bind resources and add the commands:</p>
<pre tabindex="0"><code>commands-&gt;bind_pipeline( first_graphics_pipeline );
commands-&gt;bind_resource_set( gfx_resources );
commands-&gt;bind_vertex_buffer( gfx_device.get_fullscreen_vertex_buffer() );
commands-&gt;draw( graphics::TopologyType::Triangle, 0, 3 );
</code></pre><p>At this point we can execute the command buffer to draw.</p>
<pre tabindex="0"><code>gfx_device.execute_command_buffer( commands );
</code></pre><p>Updating a resource can be done like that:</p>
<pre tabindex="0"><code>hydra::graphics::MapBufferParameters map_parameters = { buffer.handle, 0, 0 };
LocalConstants* buffer_data = (LocalConstants*)device.map_buffer( map_parameters );
</code></pre><p>Everything uses structs to perform creation/updates.<!-- raw HTML omitted -->
Nothing new, but I always loved this design.</p>
<h3 id="resource-layout-and-resource-lists">Resource layout and resource lists</h3>
<p>I wanted to bring the Vulkan/D3D12 resource interface as first class citizens, and remove completely old concepts (like single constants, render states as single objects, single bind of a resource) and add new ones: resource layout, resource lists and command buffers. Well command buffers are not new, but <em>finally</em> you can draw only with those!</p>
<p>In Vulkan/D3D12 you can bind resources through the usage of <em>sets</em>: basically tables that contains the resources used.<!-- raw HTML omitted -->
This is a welcomed difference from previous APIs, and I think it is a concept not too hard to grasp but very useful to have it explicit.</p>
<p>The first thing to define is the <strong>resource layout</strong> describes the layout of a set of resources.<!-- raw HTML omitted -->
For example, if we have a material that uses Albedo and Normals textures and a constant buffer, the layout will contain all the informations about that (like the type, the GPU registers and so on).<!-- raw HTML omitted -->
This though still does not contain the resources themselves!<!-- raw HTML omitted -->
Enter <strong>resource list</strong>.<!-- raw HTML omitted -->
A <strong>resource list</strong> is a list of actual resources <em>relative to a layout</em>.<!-- raw HTML omitted -->
It sets resources using a layout.</p>
<p>From now on, when we draw we can bind <em>one or more resource lists</em>.</p>
<p>In Vulkan lingo, the <strong>resource layout</strong> is called <strong>descriptor set layout</strong>, and a <strong>resource list</strong> is a <strong>descriptor set</strong>.<!-- raw HTML omitted -->
Here are a couple of articles for the Vulkan side:</p>
<p><a href="https://vulkan.lunarg.com/doc/view/1.0.33.0/linux/vkspec.chunked/ch13s02.html">Official Vulkan Documentation on Descriptor Layouts and Sets</a></p>
<p><a href="https://software.intel.com/en-us/articles/api-without-secrets-introduction-to-vulkan-part-6">Intel API Without Secrets Part 6</a></p>
<p>Similarly in D3D12 there are Root Tables and Descriptor Tables. The concepts do no map 1 to 1 but they are pretty similar:</p>
<p><a href="https://docs.microsoft.com/en-us/windows/win32/direct3d12/using-descriptor-tables">D3D12 Descriptor Tables</a></p>
<p>I tried to map these concepts using different words that would make more sense to me, so from <em>Descriptor Set</em> or <em>Root Table</em> it became <em>Resource List</em> and <em>Resource Layout</em>.</p>
<h3 id="pipelines">Pipelines</h3>
<p>Finally a pipeline is the complete description of what is needed by the GPU to draw something on the screen (or to use a Compute Shader for any other purpose).<!-- raw HTML omitted -->
Basically a pipeline must fill all the informations for all the GPU stages like this (thanks to <a href="https://renderdoc.org">RenderDoc</a>):</p>

<figure>

  <a data-fancybox="" href="RenderDoc_Pipeline.png" >

<img src="RenderDoc_Pipeline.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>RenderDoc Pipeline</h4>
  
</figcaption>

</figure>

<p>What once was setup individually now is all in one place (reflecting what happened behind the scene, into the driver).<!-- raw HTML omitted -->
DepthStencil, AlphaBlend, Rasterization, Shaders, all must be defined here.</p>
<p><strong>In the currrent implementation of the graphics-API a lot of states are still missing!</strong>.</p>
<p>Now that we say the basic principles of the target rendering API, we can finally concentrate on the new freatures of HFX.</p>
<h1 id="part-2-forging-the-hfx-language-features">Part 2: forging the HFX language features</h1>
<p>Our HFX language needs some properties to be added but first there is a change: HFX will generate a binary version to embed all the informations needed to create a shader.</p>
<h2 id="hfx-evolution-what-files-are-generated-">HFX evolution: what files are generated ?</h2>
<p>In the previous article, we used a single HFX file to generate multiple glsl files, ready to be used by any OpenGL renderer:</p>

<figure>

  <a data-fancybox="" href="HFX_Shader_Gen.png" >

<img src="HFX_Shader_Gen.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Shader Generation</h4>
  
</figcaption>

</figure>

<p>Remembering the article on <a href="https://jorenjoestar.github.io/post/writing_a_simple_code_generator/">Hydra Data Format</a>, we instead were generating an header file.<!-- raw HTML omitted -->
For our needs, we will generate an embedded HFX (binary HFX) AND a C++ header:</p>

<figure>

  <a data-fancybox="" href="HFX_Gen.png" >

<img src="HFX_Gen.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Binary and Header Generation</h4>
  
</figcaption>

</figure>

<p>What is the next step for HFX ?<!-- raw HTML omitted -->
For shader generation, we want ideally to load a HFX file without having to manually stick together the single shader files, and that is why the first step is to create <strong>embedded HFX files</strong>.<!-- raw HTML omitted -->
This will contain all the information to create a shader, and this includes also the resource layouts.</p>
<p>For constant handling, we want to have UI generated and easy update on the gpu. We want to automate these things.<!-- raw HTML omitted -->
This can be done in a more code-generated way or by generating data.</p>
<p>If we abstract the problem, all these articles are about understanding how you want to generate code or data to maximise iteration time, performances and control.<!-- raw HTML omitted -->
By moving the HFX to being binary, we are effectively generating <em>data</em> used by the renderer.<!-- raw HTML omitted -->
For the shader UI, we can do both: generate code or create data. We will see the generated code part here.</p>
<p>Let&rsquo;s see briefly the internals of the <strong>Embedded HFX</strong> file format:</p>
<h3 id="embedded-hfx">Embedded HFX</h3>
<p>As a Recap, when <em>parsing</em> HFX we store some informations.</p>
<p>First is the CodeFragment, including also (spoiler!) the addition of resources for the sake of this article:</p>
<pre tabindex="0"><code>// C++
//
struct CodeFragment {

    struct Resource {
        
        hydra::graphics::ResourceType::Enum type;
        StringRef               name;

    }; // struct Resource

    std::vector&lt;StringRef&gt;      includes;
    std::vector&lt;Stage&gt;          includes_stage;     // Used to separate which include is in which shader stage.
    std::vector&lt;Resource&gt;       resources;          // Used to generate the layout table.

    StringRef                   name;
    StringRef                   code;
    Stage                       current_stage       = Stage::Count;
    uint32_t                    ifdef_depth         = 0;
    uint32_t                    stage_ifdef_depth[Stage::Count];

}; // struct CodeFragment
</code></pre><p>The rest is unchanged from the previous article.<!-- raw HTML omitted -->
We have basically code and includes to bake the final shader.<!-- raw HTML omitted -->
Remember, we are handling GLSL in these examples!</p>
<p>Next is the Pass:</p>
<pre tabindex="0"><code>// C++
//
struct Pass {

    StringRef                   name;
    struct ShaderStage {

        const CodeFragment*     code                = nullptr;
        Stage                   stage               = Stage::Count;

    }; // struct ShaderStage

    StringRef                   name;
    std::vector&lt;ShaderStage&gt;    shader_stages;

}; // struct Pass
</code></pre><p>Nothing changed here.<!-- raw HTML omitted -->
A pass is a container of one of more shaders.<!-- raw HTML omitted -->
In general we will use the term <em>shader state</em> to describe the shaders that needs to be bound to the pipeline.<!-- raw HTML omitted -->
Most common are the couple Vertex and Fragment shaders, or the Compute by itself.</p>
<p>Last is the Shader itself:</p>
<pre tabindex="0"><code>// C++
//
struct Shader {

    StringRef                   name;

    std::vector&lt;Pass*&gt;          passes;
    std::vector&lt;Property*&gt;      properties;

}; // struct Shader
</code></pre><p>Being just a collection of passes.<!-- raw HTML omitted -->
Again we are seeing the properties here, that I will talk later on in the article.</p>
<p>These will be used to &lsquo;bake&rsquo; data into a &lsquo;bhfx&rsquo; (binary HFX) file.</p>
<h3 id="bhfx-layout">BHFX layout</h3>
<p>In order to maximise efficiency, we are packing the data in the way we will use it.<!-- raw HTML omitted -->
The file is divided in two main sections: common and passes.<!-- raw HTML omitted -->
The overall layout is as follows:</p>

<figure>

  <a data-fancybox="" href="BHFX_Format.png" >

<img src="BHFX_Format.png" >
</a>

</figure>

<p>The trick is to have the offset for each section easy to access.</p>
<p>The <em>pass section</em> contains several informations as following:</p>

<figure>

  <a data-fancybox="" href="BHFX_Pass.png" >

<img src="BHFX_Pass.png" >
</a>

</figure>

<p>As we will see later we include shaders, resources layout and other data based on our target API (Hydra Graphics).</p>
<h3 id="writing-the-bhfx-file">Writing the BHFX file</h3>
<p>To write our file, we need to parse the HFX file.<!-- raw HTML omitted -->
A quick code could be something like this:</p>
<pre tabindex="0"><code>// C++
//

...

char* text = ReadEntireFileIntoMemory( &quot;..\\data\\SimpleFullscreen.hfx&quot;, nullptr );
initLexer( &amp;lexer, (char*)text, data_buffer );

hfx::initParser( &amp;effect_parser, &amp;lexer );
hfx::generateAST( &amp;effect_parser );

    
hfx::initCodeGenerator( &amp;hfx_code_generator, &amp;effect_parser, 4096, 5 );

hfx::compileShaderEffectFile( &amp;hfx_code_generator, &quot;..\\data\\&quot;, &quot;SimpleFullscreen.bhfx&quot; );
</code></pre><p>Here we are parsing the file (generateAST) and then using that to <em>compile</em> our shader effect file. This is where the magic happens.</p>
<pre tabindex="0"><code>// C++
//
void compileShaderEffectFile( CodeGenerator* code_generator, const char* path, const char* filename ) {
    // Create the output file
    FILE* output_file;

    // Alias the StringBuffer for better readability.
    StringBuffer&amp; filename_buffer = code_generator-&gt;string_buffers[0];

    // Concatenate name
    filename_buffer.clear();
    filename_buffer.append( path );
    filename_buffer.append( filename );
    fopen_s( &amp;output_file, filename_buffer.data, &quot;wb&quot; );

    if ( !output_file ) {
        printf( &quot;Error opening file. Aborting. \n&quot; );
        return;
    }
</code></pre><p>Typical file creation preamble.<!-- raw HTML omitted -->
Concatenate the file using the StringBuffer, and try to create it.</p>
<p>Remember that overall the file structure is:</p>
<ol>
<li>File header</li>
<li>Pass offset list</li>
<li>Pass sections</li>
</ol>
<p>Let&rsquo;s start with the file header:</p>
<pre tabindex="0"><code>    const uint32_t pass_count = (uint32_t)code_generator-&gt;parser-&gt;passes.size();
    
    ShaderEffectFile shader_effect_file;
    shader_effect_file.num_passes = pass_count;    

    fwrite( &amp;shader_effect_file, sizeof(ShaderEffectFile), 1, output_file );
</code></pre><p>In this case we are writing straight to the file, because it is an in-order operation with the file layout.<!-- raw HTML omitted -->
For the rest of the file writing we will need to use String Buffers to accumulate data out-of-order and then write the file in the correct order.<!-- raw HTML omitted -->
Think of the <em>Pass Offset List</em>: to calculate the offsets we need to know the size of the passes. To know the size we need to finalize the pass data. To finalize the pass data we need to finalize shaders, and that means adding the includes.</p>
<p>Again for code clarity I use aliases like this:</p>
<pre tabindex="0"><code>    StringBuffer&amp; code_buffer = code_generator-&gt;string_buffers[1];
    StringBuffer&amp; pass_offset_buffer = code_generator-&gt;string_buffers[2];
    StringBuffer&amp; shader_offset_buffer = code_generator-&gt;string_buffers[3];
    StringBuffer&amp; pass_buffer = code_generator-&gt;string_buffers[4];
</code></pre><p>Let&rsquo;s continue.<!-- raw HTML omitted -->
We start tracking the pass section memory offset knowing that it will be after the <em>header</em> and the pass offset list:</p>
<pre tabindex="0"><code>    pass_offset_buffer.clear();
    pass_buffer.clear();

    // Pass memory offset starts after header and list of passes offsets.
    uint32_t pass_offset = sizeof( ShaderEffectFile ) + sizeof(uint32_t) * pass_count;
</code></pre><p>Now into the most interesting part. We will avoid talking about the resource layout part, that will be added later.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    // Pass Section:
    // ----------------------------------------------------------------------------------------
    // Shaders count | Name | Shader Offset+Count List | Shader Code 0, Shader Code 1
    // ----------------------------------------------------------------------------------------

    ShaderEffectFile::PassHeader pass_header;

    for ( uint32_t i = 0; i &lt; pass_count; i++ ) {

        pass_offset_buffer.append( &amp;pass_offset, sizeof( uint32_t ) );

        const Pass&amp; pass = code_generator-&gt;parser-&gt;passes[i];

        const uint32_t pass_shader_stages = (uint32_t)pass.shader_stages.size();
        const uint32_t pass_header_size = pass_shader_stages * sizeof( ShaderEffectFile::Chunk ) + sizeof( ShaderEffectFile::PassHeader );
        uint32_t current_shader_offset = pass_header_size;
</code></pre><p>We start iterating the passes and calculate the shader offset.<!-- raw HTML omitted -->
Shader Chunks (the actual shader code) are written after the Pass Header and the dynamic list of shader chunk offset and size.<!-- raw HTML omitted -->
Next we will calculate the offsets of the single shaders AFTER we finalize the code - that means after the includes are added!</p>
<pre tabindex="0"><code>        shader_offset_buffer.clear();
        code_buffer.clear();

        for ( size_t s = 0; s &lt; pass.shader_stages.size(); ++s ) {
            const Pass::ShaderStage shader_stage = pass.shader_stages[s];

            appendFinalizedCode( path, shader_stage.stage, shader_stage.code, filename_buffer, code_buffer, true, constants_buffer );
            updateOffsetTable( &amp;current_shader_offset, pass_header_size, shader_offset_buffer, code_buffer );
        }

        // Update pass offset
        pass_offset += code_buffer.current_size + shader_offset;
</code></pre><p>At this point we have code_buffer containing all the shaders of the pass one after another (null terminated) and we can update the pass offset for the next pass.<!-- raw HTML omitted -->
We also calculated the single shader offsets with the <em>updateOffsetTable</em> method in shader_offset_buffer.<!-- raw HTML omitted -->
We need to finalize the Pass Header and then we can merge the pass memory in one block and proceed to the next pass:</p>
<pre tabindex="0"><code>        // Fill Pass Header
        copy( pass.name, pass_header.name, 32 );
        pass_header.num_shader_chunks = pass.num_shaders;
</code></pre><p>This is a very IMPORTANT part.<!-- raw HTML omitted -->
Merge in the pass_buffer all the pass section currently calculated: pass header, the single shader code offsets and the shader code itself.</p>
<pre tabindex="0"><code>        pass_buffer.append( (void*)&amp;pass_header, sizeof( ShaderEffectFile::PassHeader ) );
        pass_buffer.append( shader_offset_buffer );
        pass_buffer.append( code_buffer );
    }
</code></pre><p>After we finished with all the passes, we have 2 buffers: one containing the pass offset list, the other the pass sections.<!-- raw HTML omitted -->
We can write them off in the correct order finally and close the file:</p>
<pre tabindex="0"><code>    fwrite( pass_offset_buffer.data, pass_offset_buffer.current_size, 1, output_file );
    fwrite( pass_buffer.data, pass_buffer.current_size, 1, output_file );
    
    fclose( output_file );
}
</code></pre><p>We can see <em>why</em> we chose this format when looking at the code to actually create a <em>shader state</em>.<!-- raw HTML omitted -->
First of all this is the struct to create a shader state:</p>
<pre tabindex="0"><code>// hydra_graphics.h
//
struct ShaderCreation {

    struct Stage {

        ShaderStage::Enum           type                = ShaderStage::Compute;
        const char*                 code                = nullptr;

    }; // struct Stage

    const Stage*                    stages              = nullptr;
    const char*                     name                = nullptr;

    uint32_t                        stages_count        = 0;

}; // struct ShaderCreation
</code></pre><p>It is very simple, each stage has a code and type.<!-- raw HTML omitted -->
A shader state can have one or more stages.<!-- raw HTML omitted -->
This was already the case in OpenGL - compiling shaders and linking them - so the interface is similar - but it maps well to Vulkan/D3D12 as well, in which the <em>Pipeline State</em>, that describe almost everything the GPU needs to draw, needs an unique set of vertex/fragment/compute shaders.<!-- raw HTML omitted -->
Anyway, we embed this data already in the <em>binary HFX file</em>, and thus we can easily create a shader state like this:</p>
<pre tabindex="0"><code>static void compile_shader_effect_pass( hydra::graphics::Device&amp; device, char* hfx_memory, 
                                        uint16_t pass_index, hydra::graphics::ShaderHandle&amp; out_shader ) {
    using namespace hydra;

    // Get pass section memory
    char* pass = hfx::getPassMemory( hfx_memory, pass_index );
    hfx::ShaderEffectFile::PassHeader* pass_header = (hfx::ShaderEffectFile::PassHeader*)pass;

    const uint32_t shader_count = pass_header-&gt;num_shader_chunks;    
    graphics::ShaderCreation::Stage* stages = new graphics::ShaderCreation::Stage[shader_count];

    // Get individual shader code and type
    for ( uint16_t i = 0; i &lt; shader_count; i++ ) {
        hfx::getShaderCreation( shader_count, pass, i, &amp;stages[i] );
    }

    graphics::ShaderCreation first_shader = {};
    first_shader.stages = stages;
    first_shader.stages_count = shader_count;
    first_shader.name = pass_header-&gt;name;

    out_shader = device.create_shader( first_shader );

    delete stages;
}
</code></pre><p>Nothing really interesting here, but we read the file in memory and use the offsets we store to access the different sections of the file.<!-- raw HTML omitted --></p>
<p>To access the <em>Pass Section</em> we first need to read its memory offset and then read from there.<!-- raw HTML omitted -->
Remember from before that the offset is in the list AFTER the ShaderEffectFile header, and it is a single uint32:</p>
<pre tabindex="0"><code>char* getPassMemory( char* hfx_memory, uint32_t index ) {
    
    // Read offset form list after the ShaderEffectFile header.
    const uint32_t pass_offset = *(uint32_t*)(hfx_memory + sizeof( ShaderEffectFile ) + (index * sizeof( uint32_t )));

    return hfx_memory + pass_offset;
}
</code></pre><p>From the <em>pass offset</em>, the list of shader chunks (that are defined as code offset and size) is right after the <em>pass header</em></p>
<pre tabindex="0"><code>void getShaderCreation( uint32_t shader_count, char* pass_memory, uint32_t index,
                        hydra::graphics::ShaderCreation::Stage* shader_creation ) {

    char* shader_offset_list_start = pass_memory + sizeof( ShaderEffectFile::PassHeader );
</code></pre><p>Read the single shader offset and access the memory there:</p>
<pre tabindex="0"><code>    const uint32_t shader_offset = *(uint32_t*)(shader_offset_list_start + (index * sizeof( ShaderEffectFile::Chunk )));
    char* shader_chunk_start = pass_memory + shader_offset;
</code></pre><p>The baked informations are first the type (as a single char, but called hfx::ShaderEffectFile::ChunkHeader in case we change it) and the actual shader code is right after!</p>
<pre tabindex="0"><code>    shader_creation-&gt;type = (hydra::graphics::ShaderStage::Enum)(*shader_chunk_start);
    shader_creation-&gt;code = (const char*)(shader_chunk_start + sizeof( hfx::ShaderEffectFile::ChunkHeader ));
}
</code></pre><p>In this case I chose to bake the file instead of generating a header file - just cause I can reuse this code for every shader effect. I could have generated an header instead of the binary BHFX file, but then including it would mean that you need to recompile at every change.<!-- raw HTML omitted -->
We will see some areas in which we can have both approaches!</p>
<p>Finally done with the new embedded format, let&rsquo;s see the new features!</p>
<h2 id="brainstorming-what-features-are-needed-">Brainstorming: what features are needed ?</h2>
<p>We already talked about the features at the beginning of the articles, but let&rsquo;s write them again to refresh our memory:</p>
<ol>
<li>Shader constants generation</li>
<li>Shader resource bindings</li>
<li>Render states (depth stencil, blend, rasterization) <strong>(in the next article)</strong></li>
<li>Render pass hints for a future framegraph <strong>(in the next article)</strong></li>
</ol>
<p>There are few articles around this subject, but the most complete is from the amazing guys at <a href="https://ourmachinery.com/">OurMachinery</a>, and in particular <a href="https://ourmachinery.com/post/the-machinery-shader-system-part-2/">this article</a>.<!-- raw HTML omitted -->
These guys does (as always honestly) an amazing job in describing the problem we are facing and the solutions, and how enriching a shader language can make a huge difference in making better rendering (faster iteration time, less error prone, more artist friendly..) so I would suggest to read those articles (and in general any article/presentation/blog post they write!).</p>
<p>We will go through each feature in depth so get ready!</p>
<h2 id="constants-artists-programmers-both-">Constants: artists, programmers, both ?</h2>
<p>Constants&hellip;uniforms&hellip;whatever name you choose, they represent the same concept: <em>numerical properties</em>.</p>
<p>Even if they are a simple concept, still it is hard to make both rendering citizens happy: artists and programmers!</p>
<p>Artists want tweakable UI, simple variables and fast iteration.<!-- raw HTML omitted -->
Programmers want optimal layout, more CPU calculated variables possible, and ultimate control.<!-- raw HTML omitted -->
How to make them both happy ?</p>
<p>I brainstormed and designed for few days (well evenings) to solve this problem.<!-- raw HTML omitted -->
One thought that came to me is that artists want to create a <em>material interface</em>, something they can tweak and change easily, and when you want to quickly prototype something, create and such, you don&rsquo;t want to deal with low-level resource management and such.<!-- raw HTML omitted -->
Let&rsquo;s solve this first: <strong>give artists a simple way of creating a material interface</strong>!</p>
<p>After searching for a bit, I chose to use a syntax very similar to Unity ShaderLab. Let&rsquo;s see the HFX (finally!):</p>
<pre tabindex="0"><code>// .HFX
//
// For the artist: create a material interface.
properties {

    // Using Unity ShaderLab syntax:
    // AORemapMin0(&quot;AORemapMin0&quot;, Range(0.0, 1.0)) = 0.0
    scale(&quot;Scale&quot;, Float) = 32.00
    modulo(&quot;Modulo&quot;, Float) = 2.0
}
</code></pre><p>We added a new section in the language, named &ldquo;<em>properties</em>&rdquo;.<!-- raw HTML omitted -->
Why this name ?<!-- raw HTML omitted -->
Because properties contains both <em>numerical properties and textures</em>!<!-- raw HTML omitted -->
The name makes sense in this way. Naming &lsquo;constants&rsquo; and having also textures, not.</p>
<p>There are 2 possible <em>outputs</em> from this, one that is pure code-generation and the other that is more data-driven.
I will dwelve into the code-generation one and talk about the data-driven one in another post.</p>
<p>There are 3 parts for the generated code of the properties:</p>
<ol>
<li>Properties UI</li>
<li>GPU-ready constant buffer</li>
<li>API-dependant buffer</li>
</ol>
<p>For the Properties UI, we want to generate something like this:</p>
<pre tabindex="0"><code>// C++
struct LocalConstantsUI {

    float                    scale                = 32.000000f;
    float                    modulo                = 2.000000f;

    void reflectMembers() {
        ImGui::InputScalar( &quot;Scale&quot;, ImGuiDataType_Float, &amp;scale);
        ImGui::InputScalar( &quot;Modulo&quot;, ImGuiDataType_Float, &amp;modulo);
    }

    void reflectUI() {
        ImGui::Begin( &quot;LocalConstants&quot; );
        reflectMembers();
        ImGui::End();
    }

}; // struct LocalConstantsUI
</code></pre><p>For the GPU-ready constants, we want to have a both a GPU and a CPU representation like this:</p>
<pre tabindex="0"><code>// C++
//
struct LocalConstants {

    float                    scale                = 32.000000f;
    float                    modulo                = 2.000000f;
    float                    pad_tail[2];

}; // struct LocalConstants

// GLSL
//
layout (std140, binding=7) uniform LocalConstants {

    float                    scale;
    float                    modulo;

    float                    pad[2];

} local_constants;
</code></pre><p>And for the API-dependant buffer, we want to create code that takes care of everything for us. This is the real deal here - and something we will revisit in next articles to show some advanced features.</p>
<pre tabindex="0"><code>void create( hydra::graphics::Device&amp; device ) {

    using namespace hydra;

    graphics::BufferCreation constants_creation = {};
    constants_creation.type = graphics::BufferType::Constant;
    constants_creation.name = &quot;LocalConstants&quot;;
    constants_creation.usage = graphics::ResourceUsageType::Dynamic;

    // NOTE: using LocalConstants struct - is the GPU ready one with padding and such!
    constants_creation.size = sizeof( LocalConstants );
    // Struct is initialized with default values already, so it is safe to copy it to the GPU.
    constants_creation.initial_data = &amp;constants;

    buffer = device.create_buffer( constants_creation );
}

void destroy( hydra::graphics::Device&amp; device ) {

    device.destroy_buffer( buffer );
}

void updateUI( hydra::graphics::Device&amp; device ) {
    // Draw UI
    constantsUI.reflectUI();

    // TODO:
    // Ideally there should be a way to tell if a variable has changed and update only in that case.
    
    // Map buffer to GPU and upload parameters from the UI
    hydra::graphics::MapBufferParameters map_parameters = { buffer.handle, 0, 0 };

    LocalConstants* buffer_data = (LocalConstants*)device.map_buffer( map_parameters );

    if ( buffer_data ) {
        buffer_data-&gt;scale = constantsUI.scale;
        buffer_data-&gt;modulo = constantsUI.modulo;
        device.unmap_buffer( map_parameters );
    }
}
</code></pre><p>For the sake of the example this could be a possible implementation - but really depends on the rendering API.
Let&rsquo;s quickly check parsing and code-generation.</p>
<h3 id="constants-parsing">Constants Parsing</h3>
<p>To parse the new <strong>property</strong> section, there is the new method <code>void declarationProperties( Parser* parser )</code> that iterates through all properties, and inside that the <code>void declarationProperty( Parser* parser, const StringRef&amp; name )</code> one.</p>
<p>We are parsing the following HFX syntax:</p>
<pre tabindex="0"><code>// Syntax
//
identifier(string, identifier[(arguments)]) [= default_value]
</code></pre><p>With this is an example:</p>
<pre tabindex="0"><code>// HFX
//
properties {
    scale(&quot;Scale&quot;, Float) = 32.0
}
</code></pre><p>We will add a simple backtracking to the parsing because of the optional parameters.<!-- raw HTML omitted -->
Let&rsquo;s check the code!</p>
<pre tabindex="0"><code>inline void declarationProperty( Parser* parser, const StringRef&amp; name ) {
    Property* property = new Property();

    // Cache name
    property-&gt;name = name;

    Token token;

    if ( !expectToken( parser-&gt;lexer, token, Token::Token_OpenParen ) ) {
        return;
    }
</code></pre><p>We just parsed the property name and the &lsquo;(&rsquo;. Next is the string containing the UI name:</p>
<pre tabindex="0"><code>    // Advance to the string representing the ui_name
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_String ) ) {
        return;
    }

    property-&gt;ui_name = token.text;
</code></pre><p>Saved the ui name and then we have the type.<!-- raw HTML omitted -->
Types can be <em>Float, Int, Range, Texture, Vector, Color</em> and we will simply parse their text and convert it to an enum that we will use in the code generation phase.</p>
<pre tabindex="0"><code>    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Comma ) ) {
        return;
    }

    // Next is the identifier representing the type name
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    // Parse property type and convert it to an enum
    property-&gt;type = propertyTypeIdentifier( token );
</code></pre><p>Now will come the most complicated part.<!-- raw HTML omitted -->
We have optional &lsquo;(&rsquo; open parenthesis for the parameters if the type needs it.<!-- raw HTML omitted -->
For the length of code and article, I skip this part and will add it in next article!</p>
<pre tabindex="0"><code>    // If an open parenthesis is present, then parse the ui arguments.
    nextToken( parser-&gt;lexer, token );
    if ( token.type == Token::Token_OpenParen ) {
        property-&gt;ui_arguments = token.text;

        while ( !equalToken( parser-&gt;lexer, token, Token::Token_CloseParen ) ) {
            // TODO:
            // Parse parameters!
        }

        // Advance to the last close parenthesis
        nextToken( parser-&gt;lexer, token );

        property-&gt;ui_arguments.length = token.text.text - property-&gt;ui_arguments.text;
    }

    if ( !checkToken( parser-&gt;lexer, token, Token::Token_CloseParen ) ) {
        return;
    }
</code></pre><p>At this point we can either be at the end of the property or we could have a &lsquo;=&rsquo; token to add a default value.
Being that the Lexer class is small, we can backtrack by saving the current Lexer status:</p>
<pre tabindex="0"><code>    // Cache lexer status and advance to next token.
    // If the token is '=' then we parse the default value.
    // Otherwise backtrack by one token.
    Lexer cached_lexer = *parser-&gt;lexer;
</code></pre><p>Now we can advance to the next token and:</p>
<ol>
<li>If the token is &lsquo;=&rsquo;, parse the default value.</li>
<li>If not, backtrack the position of the Lexer and finish the parsing.</li>
</ol>
<pre tabindex="0"><code>    nextToken( parser-&gt;lexer, token );

    // At this point only the optional default value is missing, otherwise the parsing is over.
    if ( token.type == Token::Token_Equals ) {
        nextToken( parser-&gt;lexer, token );
        
        if ( token.type = Token::Token_Number ) {
            // Cache the data buffer entry index into the property for later retrieval.
            property-&gt;data_index = parser-&gt;lexer-&gt;data_buffer-&gt;current_entries - 1;
        }
        else {
            // TODO:
            // Handle vectors, colors and non single number default values
        }
    }
    else {
        *parser-&gt;lexer = cached_lexer;
    }

    parser-&gt;shader.properties.push_back( property );
}
</code></pre><p>An interesting point is that the <em>numbers</em> are parsed in a <strong>DataBuffer</strong>, and during the parsing of the token we will add the number to it.<!-- raw HTML omitted -->
To retrieve it, we have the <code>data_index</code> field of the <code>Property</code> struct.<!-- raw HTML omitted -->
Also here, for the sake of &lsquo;brevity&rsquo;, I am handling only floats and ints. Vectors, colors and texture property should be easy to add.</p>
<p>For vectors and colors we should parse a list of them and save them into the data buffer.</p>
<p>For textures we should just save the default value as text and use it in the code-generation part.</p>
<h3 id="code-generation">Code Generation</h3>
<p>This should be pretty straight forward.<!-- raw HTML omitted -->
We can iterate the properties and generate both a C++ struct and a HLSL/GLSL buffer.<!-- raw HTML omitted -->
The only thing to be concerned is the padding: on the GPU normally the alignment is 16 bytes, so we can track that and insert padding when generating the code.<!-- raw HTML omitted --></p>
<p>In the method <code>void generateShaderResourceHeader( CodeGenerator* code_generator, const char* path )</code> we can see how we generate the different code for C++:</p>
<pre tabindex="0"><code>// C++
//
// Beginning

fprintf( output_file, &quot;\n#pragma once\n#include &lt;stdint.h&gt;\n#include \&quot;hydra_graphics.h\&quot;\n\n// This file is autogenerated!\nnamespace &quot; );

fwrite( shader.name.text, shader.name.length, 1, output_file );
fprintf( output_file, &quot; {\n\n&quot; );

// Preliminary sections
constants_ui.append( &quot;struct LocalConstantsUI {\n\n&quot; );

cpu_constants.append( &quot;struct LocalConstants {\n\n&quot; );

constants_ui_method.append(&quot;\tvoid reflectMembers() {\n&quot;);

buffer_class.append( &quot;struct LocalConstantsBuffer {\n\n\thydra::graphics::BufferHandle\tbuffer;\n&quot; );
buffer_class.append( &quot;\tLocalConstants\t\t\t\t\tconstants;\n\tLocalConstantsUI\t\t\t\tconstantsUI;\n\n&quot; );
buffer_class.append( &quot;\tvoid create( hydra::graphics::Device&amp; device ) {\n\t\tusing namespace hydra;\n\n&quot; );
buffer_class.append( &quot;\t\tgraphics::BufferCreation constants_creation = { graphics::BufferType::Constant, graphics::ResourceUsageType::Dynamic, sizeof( LocalConstants ), &amp;constants, \&quot;LocalConstants\&quot; };\n&quot; );
buffer_class.append( &quot;\t\tbuffer = device.create_buffer( constants_creation );\n\t}\n\n&quot; );
buffer_class.append( &quot;\tvoid destroy( hydra::graphics::Device&amp; device ) {\n\t\tdevice.destroy_buffer( buffer );\n\t}\n\n&quot; );
buffer_class.append( &quot;\tvoid updateUI( hydra::graphics::Device&amp; device ) {\n\t\t// Draw UI\n\t\tconstantsUI.reflectUI();\n\t\t// Update constants from UI\n&quot; );
buffer_class.append( &quot;\t\thydra::graphics::MapBufferParameters map_parameters = { buffer.handle, 0, 0 };\n&quot; );
buffer_class.append( &quot;\t\tLocalConstants* buffer_data = (LocalConstants*)device.map_buffer( map_parameters );\n\t\tif (buffer_data) {\n&quot; );

// For GPU the struct must be 16 bytes aligned. Track alignment
uint32_t gpu_struct_alignment = 0;

DataBuffer* data_buffer = code_generator-&gt;parser-&gt;lexer-&gt;data_buffer;
// For each property write code
for ( size_t i = 0; i &lt; shader.properties.size(); i++ ) {
    hfx::Property* property = shader.properties[i];

    switch ( property-&gt;type ) {
        case Property::Float:
        {
            constants_ui.append(&quot;\tfloat\t\t\t\t\t&quot;);
            constants_ui.append( property-&gt;name );

            cpu_constants.append( &quot;\tfloat\t\t\t\t\t&quot; );
            cpu_constants.append( property-&gt;name );
            
            if ( property-&gt;data_index != 0xffffffff ) {
                float value = 0.0f;
                getData( data_buffer, property-&gt;data_index, value );
                constants_ui.append( &quot;\t\t\t\t= %ff&quot;, value );
                cpu_constants.append( &quot;\t\t\t\t= %ff&quot;, value );
            }

            constants_ui.append( &quot;;\n&quot; );

            cpu_constants.append( &quot;;\n&quot; );

            constants_ui_method.append(&quot;\t\tImGui::InputScalar( \&quot;&quot;);
            constants_ui_method.append( property-&gt;ui_name );
            constants_ui_method.append( &quot;\&quot;, ImGuiDataType_Float, &amp;&quot; );
            constants_ui_method.append( property-&gt;name );
            constants_ui_method.append( &quot;);\n&quot; );

            // buffer_data-&gt;scale = constantsUI.scale;
            buffer_class.append(&quot;\t\t\tbuffer_data-&gt;&quot;);
            buffer_class.append( property-&gt;name );
            buffer_class.append( &quot; = constantsUI.&quot; );
            buffer_class.append( property-&gt;name );
            buffer_class.append( &quot;;\n&quot; );

            ++gpu_struct_alignment;

            break;
        }
    }
}

// Post-property sections
constants_ui.append( &quot;\n&quot; );

constants_ui_method.append( &quot;\t}\n\n&quot; );
constants_ui_method.append( &quot;\tvoid reflectUI() {\n\t\tImGui::Begin( \&quot;LocalConstants\&quot; );\n&quot; );
constants_ui_method.append( &quot;\t\treflectMembers();\n\t\tImGui::End();\n\t}\n\n&quot; );
constants_ui_method.append( &quot;}; // struct LocalConstantsUI\n\n&quot; );

// Add tail padding data
uint32_t tail_padding_size = 4 - (gpu_struct_alignment % 4);
cpu_constants.append( &quot;\tfloat\t\t\t\t\tpad_tail[%u];\n\n&quot;, tail_padding_size );

cpu_constants.append( &quot;}; // struct LocalConstants\n\n&quot; );

buffer_class.append( &quot;\t\t\tdevice.unmap_buffer( map_parameters );\n\t\t}\n\t}\n}; // struct LocalConstantBuffer\n\n&quot; );

fwrite( constants_ui.data, constants_ui.current_size, 1, output_file );
fwrite( constants_ui_method.data, constants_ui_method.current_size, 1, output_file );
fwrite( cpu_constants.data, cpu_constants.current_size, 1, output_file );
fwrite( buffer_class.data, buffer_class.current_size, 1, output_file );

// End
fprintf( output_file, &quot;} // namespace &quot; );
fwrite( shader.name.text, shader.name.length, 1, output_file );
fprintf( output_file, &quot;\n\n&quot; );

fclose( output_file );
</code></pre><p>This piece of code will generate a constant buffer from the properties:</p>
<pre tabindex="0"><code>// GLSL
//
static void generateConstantsCode( const Shader&amp; shader, StringBuffer&amp; out_buffer ) {
    if ( !shader.properties.size() ) {
        return;
    }

    // Add the local constants into the code.
    out_buffer.append( &quot;\n\t\tlayout (std140, binding=7) uniform LocalConstants {\n\n&quot; );

    // For GPU the struct must be 16 bytes aligned. Track alignment
    uint32_t gpu_struct_alignment = 0;

    const std::vector&lt;Property*&gt;&amp; properties = shader.properties;
    for ( size_t i = 0; i &lt; shader.properties.size(); i++ ) {
        hfx::Property* property = shader.properties[i];

        switch ( property-&gt;type ) {
            case Property::Float:
            {
                out_buffer.append( &quot;\t\t\tfloat\t\t\t\t\t&quot; );
                out_buffer.append( property-&gt;name );
                out_buffer.append( &quot;;\n&quot; );

                ++gpu_struct_alignment;
                break;
            }
        }
    }

    uint32_t tail_padding_size = 4 - (gpu_struct_alignment % 4);
    out_buffer.append( &quot;\t\t\tfloat\t\t\t\t\tpad_tail[%u];\n\n&quot;, tail_padding_size );
    out_buffer.append( &quot;\t\t} local_constants;\n\n&quot; );
}
</code></pre><h3 id="expert-constants-an-interesting-problem">Expert constants: an interesting problem</h3>
<p>A problem many times surfaces is that the material interface does not correspond to the buffer sent to the GPU, because the programmers will do the following:</p>
<ol>
<li>Add <em>system</em> constants, that don&rsquo;t need a UI</li>
<li>Change order of the constants</li>
<li>Change constants to more GPU friendly values, calculating some stuff on the CPU</li>
<li>Pack constants into smaller ones</li>
</ol>
<p>This is an interesting topic and I&rsquo;ll cover it in another article, but a simple solution would be to add a mapping between the GPU constants and the UI, so that we can separate the UI constants from the GPU ones.</p>
<p>I&rsquo;ll give a brief example but it would be too much for this article and will not be included in the source code.</p>
<p>Basically we are trying to create a mapping between the material interface:</p>
<pre tabindex="0"><code>// C++
struct LocalConstantsUI {

    float                    scale                = 32.000000f;
    float                    modulo                = 2.000000f;

    void reflectMembers() {
        ImGui::InputScalar( &quot;Scale&quot;, ImGuiDataType_Float, &amp;scale);
        ImGui::InputScalar( &quot;Modulo&quot;, ImGuiDataType_Float, &amp;modulo);
    }

    void reflectUI() {
        ImGui::Begin( &quot;LocalConstants&quot; );
        reflectMembers();
        ImGui::End();
    }

}; // struct LocalConstantsUI
</code></pre><p>And the GPU constants:</p>
<pre tabindex="0"><code>// C++
struct LocalConstants {

    float                    scale                = 32.000000f;
    float                    modulo                = 2.000000f;
    float                    pad_tail[2];

}; // struct LocalConstants
</code></pre><p>We could enhance HFX with some syntax to mark the <em>derivate</em> properties and just add the <em>system</em> ones in an explicit buffer layout, and add a <em>layout</em> section in the HFX:</p>
<pre tabindex="0"><code>// HFX

properties {

    // Using Unity ShaderLab syntax:
    scale(&quot;Scale&quot;, Range(0.0, 100.0)) = 100.0
    modulo(&quot;Modulo&quot;, Float) = 2.0
}

layout {
    CBuffer LocalConstants {
        float4x4            world_view_projection;    // 'System' variable

        float               scale01 = (scale);       // Silly normalized version of scale interface property
        float               modulo;
        float               pad[2];
    }
}
</code></pre><p>we could completely override the automatic constant buffer generation from the properties.<!-- raw HTML omitted -->
With this we can:</p>
<ol>
<li>Add a system variable like <em>world_view_projection</em></li>
<li>Flag the property <strong>scale</strong> as UI only, by saying that property <strong>scale01</strong> uses it.</li>
</ol>
<p>I think that with this syntax both artists and programmers can be happy together!<!-- raw HTML omitted -->
I will try to work on this on a later article.</p>
<h2 id="resource-bindings-vulkan-and-d3d12-mentality">Resource bindings: Vulkan and D3D12 mentality</h2>
<p>As stated multiple times, the shift in mentality is towards the new APIs, and that includes the concept of <strong>resource lists</strong>.<!-- raw HTML omitted -->
The problem is that we don&rsquo;t want artists to have to handle this kind of things - especially if you want to quickly prototype things!<!-- raw HTML omitted -->
But at the same time, we want programmers to have the possibility to optimize the shaders the artists gave them.<!-- raw HTML omitted -->
What is the solution?<!-- raw HTML omitted -->
Simple: creating an optional <em>resource layout</em> section and <strong>automatically</strong> generate it if not present, so that artists (and not only) can happily create amazing tech and THEN worry about these details!</p>
<h3 id="automatic-resource-layout">Automatic Resource Layout</h3>
<p>The easiest way to handle resource layout is to make them <strong>SIMPLE</strong>. Remember the <strong>K.I.S.S. principle</strong>.<!-- raw HTML omitted -->
In this case it means that we can create a Resource List for each pass, that will contain:</p>
<ol>
<li>One constant/uniform buffer containing all the properties</li>
<li>All the textures used by the shader</li>
</ol>
<p>How can we achieve that ?</p>
<p>We already saw how we can generate the constant buffer from the properties in the previous section.
For textures we have a couple of options.</p>
<h4 id="list-of-textures">List of Textures</h4>
<p>Being in automation land, there are 2 ways to add texture dependencies:</p>
<ol>
<li>Use reflection mechanism from the target shader language</li>
<li>Parse identifiers in the current finalized shader</li>
</ol>
<p>For the sake of fun we will look into the second of course!<!-- raw HTML omitted -->
If we go back to <code>void declarationGlsl( Parser* parser )</code>, we can add a new method to parse the keyword:</p>
<pre tabindex="0"><code>// Parse hash for includes and defines
if ( token.type == Token::Token_Hash ) {
    // Get next token and check which directive is
    nextToken( parser-&gt;lexer, token );

    directiveIdentifier( parser, token, code_fragment );
}
else if ( token.type == Token::Token_Identifier ) {        &lt;------------  New Code!

    // Parse uniforms to add resource dependencies if not explicit in the HFX file.
    if ( expectKeyword( token.text, 7, &quot;uniform&quot; ) ) {
        nextToken( parser-&gt;lexer, token );

        uniformIdentifier( parser, token, code_fragment );
    }
}
</code></pre><p>In this way it will search for the identifier <em>uniform</em> and search for the other identifiers. This is GLSL centric of course.</p>
<pre tabindex="0"><code>inline void uniformIdentifier( Parser* parser, const Token&amp; token, CodeFragment&amp; code_fragment ) {
    for ( uint32_t i = 0; i &lt; token.text.length; ++i ) {
        char c = *(token.text.text + i);

        switch ( c ) {
            case 'i':
            {
                if ( expectKeyword( token.text, 7, &quot;image2D&quot; ) ) {
                    // Advance to next token to get the name
                    Token name_token;
                    nextToken( parser-&gt;lexer, name_token );

                    CodeFragment::Resource resource = { hydra::graphics::ResourceType::TextureRW, name_token.text };
                    code_fragment.resources.emplace_back( resource );
                }
                break;
            }

            case 's':
            {
                if ( expectKeyword( token.text, 9, &quot;sampler2D&quot; ) ) {
                    // Advance to next token to get the name
                    Token name_token;
                    nextToken( parser-&gt;lexer, name_token );

                    CodeFragment::Resource resource = { hydra::graphics::ResourceType::Texture, name_token.text };
                    code_fragment.resources.emplace_back( resource );
                }
                break;
            }
        }
    }
}
</code></pre><p>Should be pretty straight-forward: if you find the identifier for texture, add a resource dependency with type and name to the current code fragment!<!-- raw HTML omitted -->
Is this the ideal solution ?<!-- raw HTML omitted -->
Probably not.<!-- raw HTML omitted -->
But I wanted to show what we can achieve once we have fun with parsing, including the understanding on when to say <strong>NO</strong> to it!<!-- raw HTML omitted --></p>
<h3 id="manual-resource-layout">Manual Resource Layout</h3>
<p>Now that the effect can work without too much programmer time, it is time to give back to programmers the control they want.<!-- raw HTML omitted -->
In the previous paragraph about <em>Expert Constants</em> we talked about adding a new section, called <strong>layout</strong>.<!-- raw HTML omitted -->
In this section we can specify the resource list for each <em>pass</em> manually, and later on in the pass we can reference this lists as used by the pass.</p>
<p>Going on a more complete solution, layouts <strong>should be included and merged when including other HFX files</strong>.<!-- raw HTML omitted -->
This is something we want and we&rsquo;ll look in another post, we can start simple by defining something local:</p>
<pre tabindex="0"><code>// HFX
//
// For the developer
layout {
    list LocalCompute {
        cbuffer LocalConstants;

        texture2Drw(rgba8) destination_texture;
    }

    list Local {
        texture2D input_texture;
    }
}
</code></pre><p>This is a rather simple layout, but let&rsquo;s see it.<!-- raw HTML omitted -->
First of all, for each &lsquo;list&rsquo; keyword we define a single list with a unique name.<!-- raw HTML omitted -->
With that, we can reference in the pass which list to use.<!-- raw HTML omitted --></p>
<p>The code that does the parsing is (at this point) pretty straight-forward, both in <code>void declarationResourceList( Parser* parser, ResourceList&amp; resource_list )</code> and  <code>void resourceBindingIdentifier( Parser* parser, const Token&amp; token, ResourceBinding&amp; binding )</code>.<!-- raw HTML omitted -->
I will not go over it, but basically it will parse the resource lists and add them to the shader.<!-- raw HTML omitted -->
The parsing itself will read the text and create the <code>ResourceSetLayoutCreation::Binding</code> and add it to the list of the resources.<!-- raw HTML omitted --></p>
<p>We then add a new identifier in the pass to choose which resource list to be used:</p>
<pre tabindex="0"><code>// HFX
//
pass FillTexture {

    resources = LocalCompute, ...

    dispatch = 32, 32, 1
    render_pass = compute
    compute = ComputeTest
}

pass ToScreen {

    resources = Local

    render_pass = fullscreen
    vertex = ToScreen
    fragment = ToScreen
}
</code></pre><p>The parsing will happen in <code>void declarationPassResources( Parser* parser, Pass&amp; pass )</code>.</p>
<h3 id="adding-resource-layout-data-to-binary-hfx">Adding Resource Layout data to binary HFX</h3>
<p>So after this amazing journey we are ready to embed those informations into the BHFX and use it right away into the rendering API.</p>
<p>The big difference is <strong>if the hfx file contains a layout section</strong>.<!-- raw HTML omitted -->
If it is not present, then all the informations will be gathered automatically and will be added with the <code>writeAutomaticResourcesLayout</code> method.</p>
<p>First we will add the LocalConstant buffer created from the properties:</p>
<pre tabindex="0"><code>static void writeAutomaticResourcesLayout( const hfx::Pass&amp; pass, StringBuffer&amp; pass_buffer, uint32_t&amp; pass_offset ) {

    using namespace hydra::graphics;

    // Add the local constant buffer obtained from all the properties in the layout.
    hydra::graphics::ResourceSetLayoutCreation::Binding binding = { hydra::graphics::ResourceType::Constants, 0, 1, &quot;LocalConstants&quot; };

    pass_buffer.append( (void*)&amp;binding, sizeof( hydra::graphics::ResourceSetLayoutCreation::Binding) );
    pass_offset += sizeof( hydra::graphics::ResourceSetLayoutCreation::Binding );
</code></pre><p>Then we will cycle through all the shader stages and write the resources into the memory:</p>
<pre tabindex="0"><code>    for ( size_t s = 0; s &lt; pass.shader_stages.size(); ++s ) {
        const Pass::ShaderStage shader_stage = pass.shader_stages[s];

        for ( size_t p = 0; p &lt; shader_stage.code-&gt;resources.size(); p++ ) {
            const hfx::CodeFragment::Resource&amp; resource = shader_stage.code-&gt;resources[p];

            switch ( resource.type ) {
                case ResourceType::Texture:
                {
                    copy( resource.name, binding.name, 32 );
                    binding.type = hydra::graphics::ResourceType::Texture;

                    pass_buffer.append( (void*)&amp;binding, sizeof( hydra::graphics::ResourceSetLayoutCreation::Binding ) );
                    pass_offset += sizeof( hydra::graphics::ResourceSetLayoutCreation::Binding );
                    break;
                }

                case ResourceType::TextureRW:
                {
                    copy( resource.name, binding.name, 32 );
                    binding.type = hydra::graphics::ResourceType::TextureRW;

                    pass_buffer.append( (void*)&amp;binding, sizeof( hydra::graphics::ResourceSetLayoutCreation::Binding ) );
                    pass_offset += sizeof( hydra::graphics::ResourceSetLayoutCreation::Binding );
                    break;
                }
            }
        }
    }
}
</code></pre><p>If instead there is a layout section, the method <code>writeResourcesLayout</code> is called and will be pretty straight-forward:</p>
<pre tabindex="0"><code>static void writeResourcesLayout( const hfx::Pass&amp; pass, StringBuffer&amp; pass_buffer, uint32_t&amp; pass_offset ) {

    using namespace hydra::graphics;

    for ( size_t r = 0; r &lt; pass.resource_lists.size(); ++r ) {
        const ResourceList* resource_list = pass.resource_lists[r];

        const uint32_t resources_count = (uint32_t)resource_list-&gt;resources.size();
        pass_buffer.append( (void*)resource_list-&gt;resources.data(), sizeof(ResourceBinding) * resources_count );
        pass_offset += sizeof( ResourceBinding ) * resources_count;
    }
}
</code></pre><p>And this will be put at the end of the current pass section:</p>
<pre tabindex="0"><code>pass_buffer.append( (void*)&amp;pass_header, sizeof( ShaderEffectFile::PassHeader ) );
pass_buffer.append( shader_offset_buffer );
pass_buffer.append( code_buffer );

if ( automatic_layout ) {
    writeAutomaticResourcesLayout( pass, pass_buffer, pass_offset );
}
else {
    writeResourcesLayout( pass, pass_buffer, pass_offset );
}
</code></pre><h1 id="conclusions-and-whats-next">Conclusions and what&rsquo;s next</h1>
<p>We arrived at the end of this article, and we started seeing how we can use HFX as a more complete language to embed different rendering features.<!-- raw HTML omitted -->
We saw how to embed shader code and resource lists so that the rendering API can create everything without hard-coded generation of resources. This also showed when it was useful to create data instead of code.<!-- raw HTML omitted -->
On the contrary, the UI and the Constants are generated in a new header file - thus code generation.<!-- raw HTML omitted -->
There are pros and cons to both approaches, but I hope that knowing how to generate code and create a custom language will let you play with the concepts and explore your own needs.</p>
<p>As next steps, there are some questions opened: how to reload shaders ? Can I add new material properties without recompiling code ?</p>
<p>We will also see a simple implementation of a frame-graph, that I use since my years in Codemasters and in my indie project. This will be much more data-driven than code-generated, but again, the purpose of these articles is to explore the concepts and understanding when to use what.</p>
<p>As always please comment, feedback, share!</p>
<p>Thanks for reading!
Gabriel</p>

    
    
    
      Writing a Shader Effect Language Part 1
      https://jorenjoestar.github.io/post/writing_shader_effect_language_1/
      Tue, 06 Aug 2019 13:04:15 -0400
      
      https://jorenjoestar.github.io/post/writing_shader_effect_language_1/
      <h1 id="overview">Overview</h1>
<p>Data Driven Rendering Series:</p>
<ol>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_1/">https://jorenjoestar.github.io/post/writing_shader_effect_language_1/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_2/">https://jorenjoestar.github.io/post/writing_shader_effect_language_2/</a></li>
<li><a href="https://jorenjoestar.github.io/post/writing_shader_effect_language_3/">https://jorenjoestar.github.io/post/writing_shader_effect_language_3/</a></li>
<li><a href="https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/">https://jorenjoestar.github.io/post/data_driven_rendering_pipeline/</a></li>
</ol>
<p>In this article we will create a simple language that can encapsulate shader code (called <strong>code fragments</strong>) and output different files for each fragment.<!-- raw HTML omitted -->
This is the initial step to switch from an engine that loads single files for each <strong>shader stage</strong> (vertex, fragment, compute, &hellip;) to one that uses an effect file that contains more than one shader.</p>
<p>We will start by motivation, then will define the language itself (very simple), then we will look at the Parser and last the Code Generator.</p>
<p>Have a good read!</p>
<h1 id="motivation">Motivation</h1>
<p>In the incredible quest of <em>data-driven rendering</em>, after we defeated the dragon of <a href="https://jorenjoestar.github.io/post/writing_a_simple_code_generator/">code generation</a> another multiple headed dragon arises: an hydra!
We have different options here: be the brave warrior in shiny armor that tries to cut all the heads of the hydra, built some machines that can fight for us and send them, or both built the machines AND fight.</p>
<p>Our code is invaluable, like our energies fighting the hydra.
We need to carefully balance them and see how can we use for the BEST.</p>
<p>Writing manual code is good, it is generally what is done, but it is slow and error prone.
Going data-driven can be fast, but can give you a sense of losing control (not personally, but I heard few people saying that).
Only generating code can quickly become a recipe for disaster: so many particular use cases need attention, that the code could be come a different kind of mess.</p>
<p>We will try to go down the route of code generation mixed with data-driven.
As I wrote in my previous articles, it is a fine line and can be good to know when to go in which direction!</p>
<p>I will divide the article in 2 parts.
The first part (this one) will contain the new Shader Code Generator to generate shader permutations and add include support to GLSL.
The second will require a low-level rendering library and will show Code Generation of more CPU areas of Rendering, the real goal of all these articles!</p>
<p>The code is available here:</p>
<p><a href="https://github.com/JorenJoestar/DataDrivenRendering">https://github.com/JorenJoestar/DataDrivenRendering</a></p>
<h1 id="effect-file-structure">Effect file structure</h1>
<p>Looking at effects, the first thing to do is to define a file that will represent our shaders. My choice is to create a simple language to embed shaders code and generate the CPU code necessary to render it.</p>
<h2 id="why-not-using-json-">Why not using Json ?</h2>
<p>While it is an amazing data-format, I still want a bigger degree of control of what to parse and what to generate.
The decision is based on the fact that by writing a parser for the language, I can automate some code-generation that would be more intricate with Json.
Also, this series itself is a personal exploration on the topic, so using Json was not an option for this level of complexity.</p>
<h2 id="the-hfx-format">The HFX Format</h2>
<p>HFX (Hydra Effects) is a new language we will define to write out shaders.
The first iteration will be barebone - it will simply be a shader permutation generator - but it will be the foundation to extensions that will allow us to write CPU rendering code that we want to automate.</p>
<p>In defining the format, there will be few keywords that will be defined, but the general architecture will make straightforward to copy-paste shader code fragments from any language into the HFX language.
We will use the following keywords (and concepts).</p>
<h3 id="shader">Shader</h3>
<p>The root of a shader effect. It will contain everything we are writing.</p>
<h3 id="glslhlsl">Glsl/Hlsl</h3>
<p>These will define the actual shader code, enclosed fragments. Fragments can be composed and reused.
For Glsl in particular, code fragments needs to be embedded in defines for each stage. More on that later.</p>
<h3 id="pass-technique-variant">Pass, Technique, Variant</h3>
<p>This is the central part for the effects to work. I&rsquo;ve researched a bit, between <a href="https://docs.microsoft.com/en-us/windows/win32/direct3d9/using-an-effect">Microsoft effects</a>, <a href="https://docs.unity3d.com/Manual/SL-Shader.html">Unity effects</a>, <a href="https://github.com/BastiaanOlij/shader_tutorial/blob/master/shaders/water_3d/depth_buffer/depth_buffer_textured.shader">Godot</a> and <a href="http://advances.realtimerendering.com/destiny/gdc_2017/">Bungie</a> and the concepts are very similar, but they seem to differ a little and also each implementation becomes very engine-specific of course.<!-- raw HTML omitted -->
The presentation by Bungie is amazing and their system is by far the more extensive and complex, we will work on a much simpler shader effect system.<!-- raw HTML omitted --></p>
<p>Let&rsquo;s define a pass as a combination of shader code for at least one stage of the shader pipeline. For example a single compute shader or a couple vertex-fragment shader.</p>
<p>Variants and techniques are loose concept to help separating shader paths.
For example a <em>variant</em> could be a different post-process shader, like different implementations of SSAO.</p>
<p>A technique could be a whole set of passes that target a specific platform.</p>
<p>Not having my mind set on those still, I will omit them for now, as they are concepts that are less central than the code generation, and can be very subjective opinion-wise.
Possibly I&rsquo;ll get them in part 2.</p>
<h3 id="properties">Properties</h3>
<p>Final piece of the puzzle. This will define the resources used by the shader effect on a per-effect level.
Keeping an eye on the newer rendering APIs (DX12 and Vulkan) this defines also the layout of the resources and how they are used.
Possibly the most intense part from an automation possibility (and thus code-generation).
We will define this in part 2 of this article.</p>
<h1 id="high-level-workflow">High level workflow</h1>
<p>From a high level perspective what will happen in all this code is enclosed in this code:</p>
<pre tabindex="0"><code>text = ReadEntireFileIntoMemory( &quot;..\\data\\SimpleFullscreen.hfx&quot;, nullptr );
initLexer( &amp;lexer, (char*)text );

hfx::Parser effect_parser;
hfx::initParser( &amp;effect_parser, &amp;lexer );
hfx::generateAST( &amp;effect_parser );

hfx::CodeGenerator hfx_code_generator;
hfx::initCodeGenerator( &amp;hfx_code_generator, &amp;effect_parser, 4096 );
hfx::generateShaderPermutations( &amp;hfx_code_generator, &quot;..\\data\\&quot; );
</code></pre><p>We separated the <em>Lexer</em> from the <em>Parser</em> so we can reuse the lexer functionalities, thus we can reuse it from the previous example (parsing the HydraDataFormat files).<!-- raw HTML omitted -->
Then we initialize the <em>Parser</em> and <em>generate the AST</em>. This will save all the passes and code fragments we defined in the HFX file.<!-- raw HTML omitted -->
Finally we will get the parsing informations and give them to the <em>code generator</em>, that will write out the files for each pass and stage.</p>
<p>Let&rsquo;s dig into the example!</p>
<h1 id="parser-welcome-hfx">Parser: welcome HFX!</h1>
<p>In most rendering-API (OpenGL, Vulkan, Direct3D12, &hellip;) shaders are compiled by compiling the individual stages (vertex, fragment, compute, geometry, &hellip;) and in some APIs (especially the newer ones) are compiled into a <strong>Shader State</strong>.</p>
<p>As first step of this shader language, single shader files will be created by the <em>shader generation</em> method in our code.</p>
<p>We will define a simple fullscreen HFX with <em>code fragments</em> and <em>passes</em>.</p>
<p>First, we define the root shader (SimpleFullscreen.hfx, under folder &lsquo;data&rsquo;):</p>
<pre tabindex="0"><code>shader SimpleFullscreen {
</code></pre><p>This is simply the container for all the code and passes that will define the shader effect.</p>
<p>Now we need some actual code, so we can define a shader fragment.<!-- raw HTML omitted -->
The keyword used in our language is <strong>glsl</strong> followed by a name and an open brace:</p>
<pre tabindex="0"><code>glsl ToScreen {
</code></pre><p>This will define a <strong>code fragment</strong> named <em>ToScreen</em>, that can be referenced from the passes.<!-- raw HTML omitted -->
Next we use a glsl trick to <em>signal our parser to use includes</em>:</p>
<pre tabindex="0"><code>#pragma include &quot;Platform.h&quot;
</code></pre><p>This #pragma is actually ignored by the compiler, but will be used by the parser to actually add the include!<!-- raw HTML omitted -->
BEWARE: this code will be included in BOTH <em>vertex</em> and <em>fragment</em> program!<!-- raw HTML omitted -->
Anything outside of the VERTEX/FRAGMENT/COMPUTE macros will be, and this is done on purpose, like defining an interpolator struct only once or for common includes.</p>
<p>Next we define the vertex program.<!-- raw HTML omitted -->
BEWARE: vertex only code must be enclosed in <strong>VERTEX</strong> define!</p>
<pre tabindex="0"><code>#if defined VERTEX

out vec4 vTexCoord;

void main() {

   vTexCoord.xy = vec2((gl_VertexID &lt;&lt; 1) &amp; 2, gl_VertexID &amp; 2);
   vTexCoord.zw = vTexCoord.xy;
   gl_Position = vec4(vTexCoord.xy * 2.0f + -1.0f, 0.0f, 1.0f);
}

#endif // VERTEX
</code></pre><p>This code is a simple fullscreen triangle that does not require any vertex buffer, but uses the vertex id to draw. Nothing fancy.</p>
<p>Next is the fragment program, and again enclosed in <strong>FRAGMENT</strong> define:</p>
<pre tabindex="0"><code>#if defined FRAGMENT

in vec4 vTexCoord;

out vec4 outColor;

layout(binding=0) uniform sampler2D input_texture;

void main() {

    vec3 color = texture2D(input_texture, vTexCoord.xy).xyz;
    outColor = vec4(color, 1);
}

#endif // FRAGMENT

} // glsl ToScreen

</code></pre><p>This code simply reads a texture and outputs it to the screen.</p>
<p>We defined the code fragment ToScreen, containing both a vertex and a fragment program, and now we can actually generate the permutation that we need.<!-- raw HTML omitted -->
The code for this in our effect file is:</p>
<pre tabindex="0"><code>pass ToScreen {
   vertex = ToScreen
   fragment = ToScreen
}
</code></pre><p>We are simply defining a pass with the vertex and fragment program defined in the ToScreen code fragment (yes I don&rsquo;t like this term too).</p>
<p>Running the <strong>code generator</strong> on this simple effect file will generate the two files ToScreen.vert and ToScreen.frag.</p>
<p>These can be read directly into your favourite OpenGL renderer and used as is!</p>
<h2 id="the-parser">The Parser</h2>
<p>Now that we have defined the effect and we know what is the outcome of generating code from the effect file, let&rsquo;s look into the different component of the parser and code generator needed.</p>
<p>By design, we chose the Lexer to know nothing about the language, so that we can use it between different languages.
The entry point to parse the effect is the method generateAST:</p>
<pre tabindex="0"><code>void generateAST( Parser* parser ) {

    // Read source text until the end.
    // The main body can be a list of declarations.
    bool parsing = true;

    while ( parsing ) {

        Token token;
        nextToken( parser-&gt;lexer, token );

        switch ( token.type ) {

            case Token::Token_Identifier:
            {
                identifier( parser, token );
                break;
            }

            case Token::Type::Token_EndOfStream:
            {
                parsing = false;
                break;
            }
        }
    }
}
</code></pre><p>This code simply process the file -  using the lexer -  until the end of it, and reads only identifiers.<!-- raw HTML omitted -->
It is the same as the previous article and the previous parser. What changes drastically is the <strong>identifier</strong> method!<!-- raw HTML omitted -->
We will have 3 different set of identifiers, usable in different parts of the HFX file:</p>
<ol>
<li>Main identifiers, &lsquo;shader&rsquo;, &lsquo;glsl&rsquo;, &lsquo;pass&rsquo;</li>
<li>Pass identifiers, &lsquo;compute&rsquo;, &lsquo;vertex&rsquo;, &lsquo;fragment&rsquo;</li>
<li>Directive identifiers, &lsquo;if defined&rsquo;, &lsquo;pragma include&rsquo;, &lsquo;endif&rsquo;</li>
</ol>
<p>Let&rsquo;s have a look at the code for parsing the main identifiers:</p>
<pre tabindex="0"><code>inline void identifier( Parser* parser, const Token&amp; token ) {

    // Scan the name to know which 
    for ( uint32_t i = 0; i &lt; token.text.length; ++i ) {
        char c = *(token.text.text + i);

        switch ( c ) {
            case 's':
            {
                if ( expectKeyword( token.text, 6, &quot;shader&quot; ) ) {
                    declarationShader( parser );
                    return;
                }

                break;
            }

            case 'g':
            {
                if ( expectKeyword( token.text, 4, &quot;glsl&quot; ) ) {
                    declarationGlsl( parser );
                    return;
                }
                break;
            }

            case 'p':
            {
                if ( expectKeyword( token.text, 4, &quot;pass&quot; ) ) {
                    declarationPass( parser );
                    return;
                }
                break;
            }

        }
    }
}
</code></pre><p>This code simply defers the parsing of a particular identifier using the <strong>declaration</strong> method corresponding to the identifier.
We will look into detail on each method.</p>
<h3 id="parsing-shader">Parsing &lsquo;shader&rsquo;</h3>
<p>We are parsing now the following part from the HFX file:</p>
<pre tabindex="0"><code>// HFX

shader SimpleFullscreen {
</code></pre><p>This is the entry point of the effect itself.<!-- raw HTML omitted -->
What should the parser do here ?<!-- raw HTML omitted -->
Simply iterate through the main identifiers, &lsquo;glsl&rsquo; and &lsquo;pass&rsquo;.<!-- raw HTML omitted -->
Technically I could have separated the methods to have one with parsing shader only and the others parsing &lsquo;glsl&rsquo; and &lsquo;pass&rsquo;, but did not want to complicate the code further.</p>
<p>Let&rsquo;s look at how we parse the identifier &lsquo;shader&rsquo;:</p>
<pre tabindex="0"><code>// C++

inline void declarationShader( Parser* parser ) {
    // Parse name
    Token token;
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    // Cache name string
    StringRef name = token.text;

    if ( !expectToken( parser-&gt;lexer, token, Token::Token_OpenBrace ) ) {
        return;
    }

    while ( !equalToken( parser-&gt;lexer, token, Token::Token_CloseBrace ) ) {

        identifier( parser, token );
    }
}
</code></pre><p>As the previous article&rsquo;s code, this will get the tokens from the lexer and generate data if the syntax is correct.<!-- raw HTML omitted -->
When we enter the method the Lexer will be just at the beginning of the name (SimpleFullscreen), so the code will parse the name, the open brace, and parse everything else until it encounter the close brace.</p>
<p>The method identifier will parse also identifiers &lsquo;glsl&rsquo; and &lsquo;pass&rsquo;.</p>
<h3 id="parsing-glsl">Parsing &lsquo;glsl&rsquo;</h3>
<p>This is the most complex parsing in the code.<!-- raw HTML omitted -->
I will put both the HFX part and C++ code so hopefully it will be clearer what the parser is doing and why.</p>
<p>As a refresh and reference, this is the <strong>code fragment</strong> ToScreen defined in SimpleFullscreen.hfx:</p>
<pre tabindex="0"><code>// HFX

glsl ToScreen {

    #pragma include &quot;Platform.h&quot;

    #if defined VERTEX
    out vec4 vTexCoord;

    void main() {

        vTexCoord.xy = vec2((gl_VertexID &lt;&lt; 1) &amp; 2, gl_VertexID &amp; 2);
        vTexCoord.zw = vTexCoord.xy;

        gl_Position = vec4(vTexCoord.xy * 2.0f + -1.0f, 0.0f, 1.0f);
    }
    #endif // VERTEX

    #if defined FRAGMENT

    in vec4 vTexCoord;

    out vec4 outColor;

    layout(binding=0) uniform sampler2D input_texture;

    void main() {
        vec3 color = texture2D(input_texture, vTexCoord.xy).xyz;
        outColor = vec4(1, 1, 0, 1);
        outColor = vec4(color, 1);
    }
    #endif // FRAGMENT
}
</code></pre><p>Let&rsquo;s start from the beginning.<!-- raw HTML omitted -->
When the parser finds the &lsquo;glsl&rsquo; keyword in the identifier method:</p>
<pre tabindex="0"><code>// C++

case 'g':
{
    if ( expectKeyword( token.text, 4, &quot;glsl&quot; ) ) {
        declarationGlsl( parser );
        return;
    }
    break;
}
</code></pre><p>It calls the method <em><em>void declarationGlsl( Parser</em> parser )</em>*.</p>
<p>The lexer reading the HFX is after the glsl keyword when entering the method, just before the ToScreen identifier:</p>
<pre tabindex="0"><code>// HFX

glsl (Here!)ToScreen {
</code></pre><p>Let&rsquo;s see the C++ code step by step.<!-- raw HTML omitted -->
First parsing the name &lsquo;ToScreen&rsquo;:</p>
<pre tabindex="0"><code>// C++

inline void declarationGlsl( Parser* parser ) {

    // Parse name
    Token token;
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }
</code></pre><p>as seen in other methods as well.<!-- raw HTML omitted -->
We are defining a new <strong>code fragment</strong>, thus we need to initialize it. There is tracking of the #ifdef depths to manage when some code must be included in a code fragment and when not:</p>
<pre tabindex="0"><code>    CodeFragment code_fragment = {};
    // Cache name string
    code_fragment.name = token.text;

    for ( size_t i = 0; i &lt; CodeFragment::Count; i++ ) {
        code_fragment.stage_ifdef_depth[i] = 0xffffffff;
    }

    if ( !expectToken( parser-&gt;lexer, token, Token::Token_OpenBrace ) ) {
        return;
    }
</code></pre><p>Next is simply arriving at the first token that contains all the glsl code:</p>
<pre tabindex="0"><code>    // Advance token and cache the starting point of the code.
    nextToken( parser-&gt;lexer, token );
    code_fragment.code = token.text;
</code></pre><p>And now some more parsing craftmanship.<!-- raw HTML omitted -->
We cannot use anymore the simple check to end parsing when encountering a closed brace, because there can be different structs defined that will break that mechanism.<!-- raw HTML omitted -->
Instead we track the number of open braces and when we close the last one, we consider finished the parsing of the <strong>code fragment</strong>!</p>
<pre tabindex="0"><code>    uint32_t open_braces = 1;

    // Scan until close brace token
    while ( open_braces ) {

        if ( token.type == Token::Token_OpenBrace )
            ++open_braces;
        else if ( token.type == Token::Token_CloseBrace )
            --open_braces;

</code></pre><p>The only token that we care inside the code fragment is the <strong>hash</strong>, signalling either an include or a define, used for separating <em>per-stage code</em>.<!-- raw HTML omitted -->
The parsing of the <em>hash</em> token will be done inside the <strong>directiveIdentifier</strong> method:</p>
<pre tabindex="0"><code>        // Parse hash for includes and defines
        if ( token.type == Token::Token_Hash ) {
            // Get next token and check which directive is
            nextToken( parser-&gt;lexer, token );

            directiveIdentifier( parser, token, code_fragment );
        }

</code></pre><p>Before diving deep into the <strong>directive identifiers</strong>, let&rsquo;s finish the main parsing routine.<!-- raw HTML omitted -->
We advance to the next token until we close all the braces, and then save the text length of all the code fragment:</p>
<pre tabindex="0"><code>        nextToken( parser-&gt;lexer, token );
    }
    
    // Calculate code string length
    code_fragment.code.length = token.text.text - code_fragment.code.text;

</code></pre><p>Final step is to save the newly parsed code fragment into the parser data:</p>
<pre tabindex="0"><code>    parser-&gt;code_fragments.emplace_back( code_fragment );
}
</code></pre><p>We can now dive deep into the parsing of directives, namely #if defined, #pragma include and #endif.</p>
<h4 id="parsing-if-defined">Parsing &lsquo;#if defined&rsquo;</h4>
<p>When we encounter the <strong>Hash</strong> token within the <strong>glsl</strong> part, we need to parse further to understand the other keywords.<!-- raw HTML omitted -->
<strong>#if defined</strong> is the most important directive for us, because it will tell the parser which <strong>shader stage</strong> we are parsing currently and thus where to direct the text!<!-- raw HTML omitted -->
It starts from a common/shared stage, for shared code, and when encounters a #if defined it can signal a stage specific code.<!-- raw HTML omitted --></p>
<p>Namely when parsing the following line in HFX:</p>
<pre tabindex="0"><code>// HFX

#(Here!)if defined VERTEX
</code></pre><p>The parser needs to check 2 other identifiers. Remember that the parser is currently AFTER the <strong>Hash</strong> token, as beautifully written in the previous snippet!<!-- raw HTML omitted -->
Let&rsquo;s look at the code:</p>
<pre tabindex="0"><code>// C++

inline void directiveIdentifier( Parser* parser, const Token&amp; token, CodeFragment&amp; code_fragment ) {
    
    Token new_token;
    for ( uint32_t i = 0; i &lt; token.text.length; ++i ) {
        char c = *(token.text.text + i);

        switch ( c ) {
            case 'i':
            {
                // Search for the pattern 'if defined'
                if ( expectKeyword( token.text, 2, &quot;if&quot; ) ) {
                    nextToken( parser-&gt;lexer, new_token );

                    if ( expectKeyword( new_token.text, 7, &quot;defined&quot; ) ) {
                        nextToken( parser-&gt;lexer, new_token );

                        // Use 0 as not set value for the ifdef depth.
                        ++code_fragment.ifdef_depth;

                        if ( expectKeyword( new_token.text, 6, &quot;VERTEX&quot; ) ) {

                            code_fragment.stage_ifdef_depth[CodeFragment::Vertex] = code_fragment.ifdef_depth;
                            code_fragment.current_stage = CodeFragment::Vertex;
                        }
                        else if ( expectKeyword( new_token.text, 8, &quot;FRAGMENT&quot; ) ) {

                            code_fragment.stage_ifdef_depth[CodeFragment::Fragment] = code_fragment.ifdef_depth;
                            code_fragment.current_stage = CodeFragment::Fragment;
                        }
                        else if ( expectKeyword( new_token.text, 7, &quot;COMPUTE&quot; ) ) {

                            code_fragment.stage_ifdef_depth[CodeFragment::Compute] = code_fragment.ifdef_depth;
                            code_fragment.current_stage = CodeFragment::Compute;
                        }
                    }

                    return;
                }
                break;
            }

</code></pre><p>Let&rsquo;s dissect this code!</p>
<p>Starting from the current token, just after the <strong>#(Hash)</strong>, we need to check the correct composition of the keywords.<!-- raw HTML omitted -->
We expect &lsquo;if&rsquo;, and then if found we go to the next token:</p>
<pre tabindex="0"><code>if ( expectKeyword( token.text, 2, &quot;if&quot; ) ) {
    nextToken( parser-&gt;lexer, new_token );
</code></pre><p>We search for the &lsquo;defined&rsquo; identifier and if found we go to the next identifier:</p>
<pre tabindex="0"><code>if ( expectKeyword( new_token.text, 7, &quot;defined&quot; ) ) {
    nextToken( parser-&gt;lexer, new_token );
</code></pre><p>The parser is currently here:</p>
<pre tabindex="0"><code>#if defined (Here!)VERTEX
</code></pre><p>And thus the last step is to check which <strong>shader stage</strong> is currently starting.
This is done here:</p>
<pre tabindex="0"><code>if ( expectKeyword( new_token.text, 6, &quot;VERTEX&quot; ) ) {

    code_fragment.stage_ifdef_depth[CodeFragment::Vertex] = code_fragment.ifdef_depth;
    code_fragment.current_stage = CodeFragment::Vertex;
}

</code></pre><p>In this central piece of code, we set the current stage to Vertex (because we found the keyword &lsquo;VERTEX&rsquo;) and we save the current ifdef depth.<!-- raw HTML omitted -->
Why that ? <!-- raw HTML omitted -->
Because when we will parse #endif, we will do the same for the open/close braces depth in the main glsl parser: we want to be sure that the defines are paired correctly and we are saving the per-stage code in the correct way!<!-- raw HTML omitted -->
This will be more clear when we see the #endif parsing.</p>
<p>Moving on, we will do the same for all the other keywords (&lsquo;FRAGMENT&rsquo; and &lsquo;COMPUTE&rsquo; for now):</p>
<pre tabindex="0"><code>else if ( expectKeyword( new_token.text, 8, &quot;FRAGMENT&quot; ) ) {

    code_fragment.stage_ifdef_depth[CodeFragment::Fragment] = code_fragment.ifdef_depth;
    code_fragment.current_stage = CodeFragment::Fragment;
}
else if ( expectKeyword( new_token.text, 7, &quot;COMPUTE&quot; ) ) {

    code_fragment.stage_ifdef_depth[CodeFragment::Compute] = code_fragment.ifdef_depth;
    code_fragment.current_stage = CodeFragment::Compute;
}
</code></pre><p>And the parsing of <strong>#if defined</strong> is over!<!-- raw HTML omitted --></p>
<h4 id="parsing-pragma-include">Parsing &lsquo;#pragma include&rsquo;</h4>
<p>In HFX we are parsing the following:</p>
<pre tabindex="0"><code>// HFX

#pragma include &quot;Platform.h&quot;
</code></pre><p>With the following code (inside <em>directiveIdentifier</em> method):</p>
<pre tabindex="0"><code>// C++

case 'p':
{
    if ( expectKeyword( token.text, 6, &quot;pragma&quot; ) ) {
        nextToken( parser-&gt;lexer, new_token );

        if ( expectKeyword( new_token.text, 7, &quot;include&quot; ) ) {
            nextToken( parser-&gt;lexer, new_token );

            code_fragment.includes.emplace_back( new_token.text );
            code_fragment.includes_stage.emplace_back( code_fragment.current_stage );
        }

        return;
    }
    break;
}
</code></pre><p>This is simply saving the filename after the include, that being surrounded by &quot;&quot; is classified as string, and is using the current stage to know which stage should include that file!<!-- raw HTML omitted --></p>
<h4 id="parsing-endif">Parsing &lsquo;#endif&rsquo;</h4>
<p>Final part is the <strong>#endif</strong> identifier:</p>
<pre tabindex="0"><code>case 'e':
{
    if ( expectKeyword( token.text, 5, &quot;endif&quot; ) ) {

        if ( code_fragment.stage_ifdef_depth[CodeFragment::Vertex] == code_fragment.ifdef_depth ) {
            
            code_fragment.stage_ifdef_depth[CodeFragment::Vertex] = 0xffffffff;
            code_fragment.current_stage = CodeFragment::Common;
        }
        else if ( code_fragment.stage_ifdef_depth[CodeFragment::Fragment] == code_fragment.ifdef_depth ) {

            code_fragment.stage_ifdef_depth[CodeFragment::Fragment] = 0xffffffff;
            code_fragment.current_stage = CodeFragment::Common;
        }
        else if ( code_fragment.stage_ifdef_depth[CodeFragment::Compute] == code_fragment.ifdef_depth ) {

            code_fragment.stage_ifdef_depth[CodeFragment::Compute] = 0xffffffff;
            code_fragment.current_stage = CodeFragment::Common;
        }

        --code_fragment.ifdef_depth;

        return;
    }
    break;
}
</code></pre><p>This is mirroring the <strong>#if defined</strong> and simply goes back to set the current stage to common/shared and reset the per-stage ifdef depth.</p>
<p>We can now proceed to the final part of the parsing, the <strong>passes</strong>!<!-- raw HTML omitted -->
This is the glue to generate the different files from the code fragments.</p>
<h3 id="parsing-pass">Parsing &lsquo;pass&rsquo;</h3>
<p>Reading the HFX file, we are now in the final part of the file:</p>
<pre tabindex="0"><code>// HFX

pass ToScreen {
   vertex = ToScreen
   fragment = ToScreen
}
</code></pre><p>A pass is simply a collection of <strong>code fragments</strong> associated with each shader stage (vertex, fragment, compute).<!-- raw HTML omitted -->
When we parsed the fragments, we saved them in the parser to be retrieved.</p>
<p>To refresh our memory, this is the actual <strong>Pass struct</strong> in C++:</p>
<pre tabindex="0"><code>// C++

struct Pass {

    StringRef                   name;

    const CodeFragment*         vs                  = nullptr;
    const CodeFragment*         fs                  = nullptr;
    const CodeFragment*         cs                  = nullptr;

}; // struct Pass
</code></pre><p>Going back to the main directive method, we call the <strong>declarationPass</strong> method when we encounter the &lsquo;pass&rsquo; identifier.<!-- raw HTML omitted -->
We will parse the following line:</p>
<pre tabindex="0"><code>// HFX

pass ToScreen {
</code></pre><p>With the following code (similar to everything else, it should be easier to read now):</p>
<pre tabindex="0"><code>// C++

inline void declarationPass( Parser* parser ) {

    Token token;
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    Pass pass = {};
    // Cache name string
    pass.name = token.text;

    if ( !expectToken( parser-&gt;lexer, token, Token::Token_OpenBrace ) ) {
        return;
    }

</code></pre><p>After we saved the pass name we can start reading the individual stages using the <strong>passIdentifier</strong> method:</p>
<pre tabindex="0"><code>    while ( !equalToken( parser-&gt;lexer, token, Token::Token_CloseBrace ) ) {
        passIdentifier( parser, token, pass );
    }
</code></pre><p>And then save the newly parsed pass.</p>
<pre tabindex="0"><code>    parser-&gt;passes.emplace_back( pass );
}
</code></pre><p>For each identifier now, we will check which stage we are parsing.<!-- raw HTML omitted -->
Currently we are here, after the open brace and all the whitespace:</p>
<pre tabindex="0"><code>// HFX

pass ToScreen {
   (Here!)vertex = ToScreen
   fragment = ToScreen
}
</code></pre><p>What is next is thus checking the identifier and filling the corresponding <strong>shader stage</strong> of the <strong>pass</strong>.<!-- raw HTML omitted -->
I will post all the code of the method, because is similar to most code we seen and should be straightforward:</p>
<pre tabindex="0"><code>// C++

inline void passIdentifier( Parser* parser, const Token&amp; token, Pass&amp; pass ) {
    // Scan the name to know which stage we are parsing    
    for ( uint32_t i = 0; i &lt; token.text.length; ++i ) {
        char c = *(token.text.text + i);

        switch ( c ) {
            
            case 'c':
            {
                if ( expectKeyword( token.text, 7, &quot;compute&quot;) ) {
                    declarationShaderStage( parser, &amp;pass.cs );
                    return;
                }
                break;
            }

            case 'v':
            {
                if ( expectKeyword( token.text, 6, &quot;vertex&quot; ) ) {
                    declarationShaderStage( parser, &amp;pass.vs );
                    return;
                }
                break;
            }

            case 'f':
            {
                if ( expectKeyword( token.text, 8, &quot;fragment&quot; ) ) {
                    declarationShaderStage( parser, &amp;pass.fs );
                    return;
                }
                break;
            }
        }
    }
}
</code></pre><p>The real &lsquo;magic&rsquo; here is the &lsquo;declarationShaderStage&rsquo; method.<!-- raw HTML omitted -->
This method parses the couple &lsquo;identifier&rsquo; &lsquo;=&rsquo; &lsquo;identifier&rsquo;, and searches the <strong>code fragment</strong> with the same name:</p>
<pre tabindex="0"><code>inline void declarationShaderStage( Parser* parser, const CodeFragment** out_fragment ) {

    Token token;
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Equals ) ) {
        return;
    }

    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    *out_fragment = findCodeFragment( parser, token.text );
}
</code></pre><p>After all the stages of the current pass are parsed, we save the pass and finish parsing the file!<!-- raw HTML omitted --></p>
<h1 id="shader-permutation-generation">Shader Permutation Generation</h1>
<p>The final step of this amazing journey is the simplest, and it is actually to generate the single files we need.<!-- raw HTML omitted -->
In our case another specific class, <strong>CodeGenerator</strong>, will generate the different files from the parsed HFX file.</p>
<p>After we&rsquo;ve done with the parsing, we can call the <strong>generateShaderPermutations</strong> method that will generate files for each shader stage in each pass:</p>
<pre tabindex="0"><code>void generateShaderPermutations( CodeGenerator* code_generator, const char* path ) {

    code_generator-&gt;string_buffer_0.clear();
    code_generator-&gt;string_buffer_1.clear();
    code_generator-&gt;string_buffer_2.clear();

    // For each pass and for each pass generate permutation file.
    const uint32_t pass_count = (uint32_t)code_generator-&gt;parser-&gt;passes.size();
    for ( uint32_t i = 0; i &lt; pass_count; i++ ) {

        // Create one file for each code fragment
        const Pass&amp; pass = code_generator-&gt;parser-&gt;passes[i];
        
        if ( pass.cs ) {
            outputCodeFragment( code_generator, path, CodeFragment::Compute, pass.cs );
        }

        if ( pass.fs ) {
            outputCodeFragment( code_generator, path, CodeFragment::Fragment, pass.fs );
        }

        if ( pass.vs ) {
            outputCodeFragment( code_generator, path, CodeFragment::Vertex, pass.vs );
        }
    }
}
</code></pre><p>The code should be straightforward, and the real action happens into the <strong>outputCodeFragment</strong> method.<!-- raw HTML omitted -->
Let&rsquo;s have a look at the code.<!-- raw HTML omitted --></p>
<p>First we define some data, like the file extensions for each shader stage or the defines to compile the code:</p>
<pre tabindex="0"><code>// Additional data to be added to output shaders.
static const char*              s_shader_file_extension[CodeFragment::Count] = { &quot;.vert&quot;, &quot;.frag&quot;, &quot;.compute&quot;, &quot;.h&quot; };
static const char*              s_shader_stage_defines[CodeFragment::Count] = { &quot;#define VERTEX\r\n&quot;, &quot;#define FRAGMENT\r\n&quot;, &quot;#define COMPUTE\r\n&quot;, &quot;&quot; };
</code></pre><p>Then we start to write the file.<!-- raw HTML omitted -->
We will use the <em>string_buffer_0</em> to dynamically generate the path of the file without allocating memory:</p>
<pre tabindex="0"><code>void outputCodeFragment( CodeGenerator* code_generator, const char* path, CodeFragment::Stage stage, const CodeFragment* code_fragment ) {
    // Create file
    FILE* output_file;

    code_generator-&gt;string_buffer_0.clear();
    code_generator-&gt;string_buffer_0.append( path );
    code_generator-&gt;string_buffer_0.append( code_fragment-&gt;name );
    code_generator-&gt;string_buffer_0.append( s_shader_file_extension[stage] );
    fopen_s( &amp;output_file, code_generator-&gt;string_buffer_0.data, &quot;wb&quot; );

    if ( !output_file ) {
        printf( &quot;Error opening file. Aborting. \n&quot; );
        return;
    }

</code></pre><p>And then use <em>string_buffer_1</em> to instead generate the actual code into the file.<!-- raw HTML omitted -->
First, and most important, we will add all the includes for this particular stage by opening the file, reading it into memory and adding it into the final code buffer.</p>
<p>We will still use <em>string_buffer_0</em> to generate the path of the file:</p>
<pre tabindex="0"><code>    code_generator-&gt;string_buffer_1.clear();

    // Append includes for the current stage.
    for ( size_t i = 0; i &lt; code_fragment-&gt;includes.size(); i++ ) {
        if ( code_fragment-&gt;includes_stage[i] != stage &amp;&amp; code_fragment-&gt;includes_stage[i] != CodeFragment::Common ) {
            continue;
        }

        // Open and read file
        code_generator-&gt;string_buffer_0.clear();
        code_generator-&gt;string_buffer_0.append( path );
        code_generator-&gt;string_buffer_0.append( code_fragment-&gt;includes[i] );
        char* include_code = ReadEntireFileIntoMemory( code_generator-&gt;string_buffer_0.data, nullptr );

        code_generator-&gt;string_buffer_1.append( include_code );
        code_generator-&gt;string_buffer_1.append( &quot;\r\n&quot; );
    }

</code></pre><p>After that is done we can copy the define needed for the current shader stage:</p>
<pre tabindex="0"><code>    code_generator-&gt;string_buffer_1.append( &quot;\t\t&quot; );
    code_generator-&gt;string_buffer_1.append( s_shader_stage_defines[stage] );

</code></pre><p>And finally the actual code:</p>
<pre tabindex="0"><code>    code_generator-&gt;string_buffer_1.append( &quot;\r\n\t\t&quot; );
    code_generator-&gt;string_buffer_1.append( code_fragment-&gt;code );

</code></pre><p>Write to file and close it and we are done!</p>
<pre tabindex="0"><code>    fprintf( output_file, &quot;%s&quot;, code_generator-&gt;string_buffer_1.data );

    fclose( output_file );
}
</code></pre><p>And this will generate the shader permutations for each pass with a single file, using the standard GLSL convention for files extensions.</p>
<h1 id="conclusions-and-next-part">Conclusions and next part</h1>
<p>We parsed our simple <em>shader language</em> to enhance and embed <em>glsl</em> code fragments into our codebase by generating single files that can be used into any OpenGL based renderer.<!-- raw HTML omitted -->
We also laid out the foundation for a more powerful tool - namely code generation - even though there are some intermediate steps to be taken to arrive there.<!-- raw HTML omitted -->
First of all, we will need a target rendering library (something like the amazing <a href="https://github.com/floooh/sokol">Sokol</a>), so we can specialize our CPU rendering code. I already wrote something like Sokol but with a more Vulkan/D3D12 interface in mind, and I will use that. Still unsure if I will write a specific post on that.</p>
<p>In the next article we will add support for the new graphics library and develop the language more to generate code that will manage Constant buffers, automatically creating a CPU-side class, adding UI to edit it in realtime and possibly load/save the values.</p>
<p>Of course, any feedback/improvements/suggestions on anything related here (article, code, etc) please let me know.</p>
<p>Stay tuned!
Gabriel</p>

    
    
    
      Writing a simple Code Generator
      https://jorenjoestar.github.io/post/writing_a_simple_code_generator/
      Sat, 27 Jul 2019 18:46:03 -0400
      
      https://jorenjoestar.github.io/post/writing_a_simple_code_generator/
      

<figure>

  <a data-fancybox="" href="front.png" >

<img src="front.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>UI using ImGUI, SDL and the code generated with this article.</h4>
  
</figcaption>

</figure>

<h1 id="motivation">Motivation</h1>
<p>Following my previous article about Flatbuffers and data reflection the quest for Data-Driven Rendering continues!<!-- raw HTML omitted -->
In this article I want to show how to write a very simple code-generator to help you automate writing of code in any language.<!-- raw HTML omitted -->
The code is here:</p>
<p><a href="https://github.com/JorenJoestar/DataDrivenRendering">https://github.com/JorenJoestar/DataDrivenRendering</a></p>
<p>There is a balance that constantly needs to be found between code and data, and having a code-generator in my opinion helps tremendously in focus on the code that is necessary to be written.<!-- raw HTML omitted -->
From a data perspective, normally the ‘baking’ pipeline is a series of DCC formats as source transformed into very project specific and optimized data.<!-- raw HTML omitted -->
Code-wise, depending on the engine/technology you are using, ‘baking’ of the code is more uncommon.<!-- raw HTML omitted -->
In a time in which iteration time has become almost more important than the tech itself, playing with this balance can be the key for any successful software. It could sound exaggerated, but I really believe in that.<!-- raw HTML omitted -->
As always, both ImGui and SDL will be our sword and shields for this adventure.<!-- raw HTML omitted -->
This will be the second step into data-driven rendering: code generation.<!-- raw HTML omitted --></p>
<h2 id="are-we-writing-a-compiler-">Are we writing a compiler ?</h2>
<p>Short answer: yes!</p>
<p>Long answer: we will be writing the simplest possible compiler that reads a source file and transform in a destination file, like Flatbuffers.</p>
<p>There are few links on both theory and practice that can help shed some light on the subject:
The “Dragon Book” (called because of the dragon in the cover) is still THE to-go in compiler writing as far as I know.<!-- raw HTML omitted -->
It is an intense book and explores writing a full compiler with depth, starting from <em>Automata theory</em> (just reminds me of how everything you study can be useful, I did 2 exams at University about that, wondering when I would use it! Hello prof <a href="http://www.dia.uniroma3.it/~compunet/www/view/person.php?id=gdb">Di Battista!</a>) to full code examples:</p>
<p><a href="https://www.amazon.com/Compilers-Principles-Techniques-Tools-2nd/dp/0321486811">https://www.amazon.com/Compilers-Principles-Techniques-Tools-2nd/dp/0321486811</a></p>
<p>This is for me the best website on the subject, very precise and readable and follows closely what is inside the Dragon Book:</p>
<p><a href="https://craftinginterpreters.com/">https://craftinginterpreters.com/</a></p>
<p>And github page:</p>
<p><a href="https://github.com/munificent/craftinginterpreters">https://github.com/munificent/craftinginterpreters</a></p>
<p>My interest was rekindled in 2015, when I was following the amazing Casey Muratori and his <a href="https://handmadehero.org/">Handmade Hero</a>.<!-- raw HTML omitted -->
He generates code for introspection purposes, and really show a simple and effective way of generating code that works for you.</p>
<p>Wikipedia itself also contains a lot of good articles on the subject. The more you know about the it, the more you want to know.
It is fascinating and very, very deep!</p>
<h1 id="compiler-101">Compiler 101</h1>
<p>A real compiler is a very complex and fascinating subject/software so I will try to get the simplest possible approach giving my (flawed and incomplete) perspective.</p>
<p>A compiler is a series of transformations applied to data (you can apply this definition to every software actually…).</p>
<p>The input data is a text, and normally the output is still text, but with very different meaning.</p>
<p>The raw depth of the subject is astonishing, consider that we are defining a grammar and thus a language, and how to express concepts into it.</p>
<p>The main steps are the following:</p>
<ol>
<li>Lexer/scanner/tokenizer</li>
<li>Parser</li>
<li>Code generation</li>
</ol>
<p>We will define the code generator from a custom language called HDF (<strong>Hydra Definition Format</strong>) to C++.
HDF will be a subset of <strong>Flatbuffers</strong> in this exercise, but once the concepts are clear it can be expanded to more stuff.</p>
<h1 id="lexerscannertokenizer">Lexer/Scanner/Tokenizer</h1>
<p>A <strong>lexer</strong> or <strong>scanner</strong> (or <strong>tokenizer</strong>) is a software that translates an input string into a list of Tokens based on Lexemes.
A <strong>Lexeme</strong> is one or more characters that create a Token. Think of a keyword (like ‘if’, ‘class’, ‘static’ …).</p>
<p>A Token is identified by a unique Lexeme and abstracts the Lexeme itself.
It normally contains a type and some attributes, for example it can save where that lexeme is into the input text, the line. The final structure of the token can vary a bit.</p>
<p>In trying to find a simple definition for this step:</p>
<blockquote>
<p>The act of Tokenizing is the act of abstracting the input text.</p>
</blockquote>
<p>For example, given the following input text:</p>
<pre tabindex="0"><code>static void amazing_method() {};
</code></pre><p>It will generate the list of tokens ‘<strong>keyword, identifier, identifier, open parenthesis, close parenthesis, open brace, close brace, semicolon</strong>’.</p>
<p>This IS abstracting the text!</p>
<p>Normally a lexer/scanner is used by the parser to go through the code and retrieve a token and use it in some way. Let’s start seeing what a lexer could be!</p>
<h2 id="code">Code</h2>
<p>Let&rsquo;s see the code used by the lexer.</p>
<p>First thing will be to define the Token:</p>
<pre tabindex="0"><code>// Lexer/Tokenizer code. It is abstract enough so is not grammar specific.
//
struct Token {

    enum Type {
        Token_Unknown,

        Token_OpenParen,
        Token_CloseParen,
        Token_Colon,
        Token_Semicolon,
        Token_Asterisk,
        Token_OpenBracket,
        Token_CloseBracket,
        Token_OpenBrace,
        Token_CloseBrace,
        Token_OpenAngleBracket,
        Token_CloseAngleBracket,

        Token_String,
        Token_Identifier,
        Token_Number,

        Token_EndOfStream,
    }; // enum Type

    Type                            type;
    StringRef                       text;

}; // struct Token
</code></pre><p>It is basically a enum with a StringRef.<!-- raw HTML omitted -->
A StringRef is basically a substring - used to avoid allocations when parsing by simply saving where the Token is in the parsed text and how long it is.</p>
<p>Next is the Lexer itself:</p>
<pre tabindex="0"><code>//
// The role of the Lexer is to divide the input string into a list of Tokens.
struct Lexer {
    
    char*                           position            = nullptr;    
    uint32_t                        line                = 0;
    uint32_t                        column              = 0;

    bool                            error               = false;
    uint32_t                        error_line          = 0;

}; // struct Lexer
</code></pre><p>The most important variable is <strong>position</strong> - it saves where the Lexer is in the current text for parsing.</p>
<p>From now on there will be only methods.</p>
<p>First some character classification that will help the Lexer:</p>
<pre tabindex="0"><code>//
// All those methods are to classify a character.
//
inline bool IsEndOfLine( char c ) {
    bool Result = ((c == '\n') || (c == '\r'));
    return(Result);
}

inline bool IsWhitespace( char c ) {
    bool Result = ((c == ' ') || (c == '\t') || (c == '\v') || (c == '\f') || IsEndOfLine( c ));
    return(Result);
}

inline bool IsAlpha( char c ) {
    bool Result = (((c &gt;= 'a') &amp;&amp; (c &lt;= 'z')) || ((c &gt;= 'A') &amp;&amp; (c &lt;= 'Z')));
    return(Result);
}

inline bool IsNumber( char c ) {
    bool Result = ((c &gt;= '0') &amp;&amp; (c &lt;= '9'));
    return(Result);
}
</code></pre><p>These should be quite straightforward.</p>
<p>Then we have <strong>the most important method for the lexer: nextToken</strong>.<!-- raw HTML omitted -->
This method will contain all the logic to go to the next token, and we will see it step by step.</p>
<p>First is skipping all the whitespaces (empty characters, tabs, returns, etc) to arrive at the correct character in the text.</p>
<pre tabindex="0"><code>//
// This is the main method. Skip whitespaces and get next token. Save also the current position in the input string.
//
void nextToken( Lexer* lexer, Token&amp; token ) {

    // Skip all whitespace first so that the token is without them.
    skipWhitespace( lexer );
</code></pre><p>The code for skipping the whitespace is pretty straight-forward.
First it checks if it is a pure whitespace:</p>
<pre tabindex="0"><code>void skipWhitespace( Lexer* lexer ) {
    // Scan text until whitespace is finished.
    for ( ;; ) {
        // Check if it is a pure whitespace first.
        if ( IsWhitespace( lexer-&gt;position[0] ) ) {
            // Handle change of line
            if ( IsEndOfLine( lexer-&gt;position[0] ) )
                ++lexer-&gt;line;

            // Advance to next character
            ++lexer-&gt;position;

</code></pre><p>Then it checks if it is a single line comment:</p>
<pre tabindex="0"><code>        } // Check for single line comments (&quot;//&quot;)
        else if ( (lexer-&gt;position[0] == '/') &amp;&amp; (lexer-&gt;position[1] == '/') ) {
            lexer-&gt;position += 2;
            while ( lexer-&gt;position[0] &amp;&amp; !IsEndOfLine( lexer-&gt;position[0] ) ) {
                ++lexer-&gt;position;
            }
</code></pre><p>And last it checks for c-style multiline comments:</p>
<pre tabindex="0"><code>        } // Check for c-style multi-lines comments
        else if ( (lexer-&gt;position[0] == '/') &amp;&amp; (lexer-&gt;position[1] == '*') ) {
            lexer-&gt;position += 2;

            // Advance until the string is closed. Remember to check if line is changed.
            while ( !((lexer-&gt;position[0] == '*') &amp;&amp; (lexer-&gt;position[1] == '/')) ) {
                // Handle change of line
                if ( IsEndOfLine( lexer-&gt;position[0] ) )
                    ++lexer-&gt;line;

                // Advance to next character
                ++lexer-&gt;position;
            }

            if ( lexer-&gt;position[0] == '*' ) {
                lexer-&gt;position += 2;
            }
        }
        else {
            break;
        }
    }
}
</code></pre><p>After skipped all the whitespaces, we initialize the new token:</p>
<pre tabindex="0"><code>    // Initialize token
    token.type = Token::Token_Unknown;
    token.text.text = lexer-&gt;position;
    token.text.length = 1;
    token.line = lexer-&gt;line;
</code></pre><p>We get the current character and advance the position, so we can analize it.</p>
<pre tabindex="0"><code>    char c = lexer-&gt;position[0];
    ++lexer-&gt;position;

</code></pre><p>Here comes the character analisys using a simple <strong>switch</strong>.</p>
<pre tabindex="0"><code>
    switch ( c ) {
        case '\0':
        {
            token.type = Token::Token_EndOfStream;
        } break;
        case '(':
        {
            token.type = Token::Token_OpenParen;
        } break;
        case ')':
        {
            token.type = Token::Token_CloseParen;
        } break;
        case ':':
        {
            token.type = Token::Token_Colon;
        } break;
        case ';':
        {
            token.type = Token::Token_Semicolon;
        } break;
        case '*':
        {
            token.type = Token::Token_Asterisk;
        } break;
        case '[':
        {
            token.type = Token::Token_OpenBracket;
        } break;
        case ']':
        {
            token.type = Token::Token_CloseBracket;
        } break;
        case '{':
        {
            token.type = Token::Token_OpenBrace;
        } break;
        case '}':
        {
            token.type = Token::Token_CloseBrace;
        } break;
</code></pre><p>There are some special cases left.<!-- raw HTML omitted -->
First parsing a string starting from a &lsquo;&quot;&rsquo; character.<!-- raw HTML omitted -->
It requires to scan the text until it finds another &lsquo;&quot;&rsquo; to indicate the end of the string.<!-- raw HTML omitted -->
It also supports multiple-line strings with the characters &ldquo;\&rdquo; (double back-slash)</p>
<pre tabindex="0"><code>
        case '&quot;':
        {
            token.type = Token::Token_String;

            token.text.text = lexer-&gt;position;

            while ( lexer-&gt;position[0] &amp;&amp;
                    lexer-&gt;position[0] != '&quot;' )
            {
                if ( (lexer-&gt;position[0] == '\\') &amp;&amp;
                     lexer-&gt;position[1] )
                {
                    ++lexer-&gt;position;
                }
                ++lexer-&gt;position;
            }

            // Saves total string length
            token.text.length = lexer-&gt;position - token.text.text;

            if ( lexer-&gt;position[0] == '&quot;' ) {
                ++lexer-&gt;position;
            }
        } break;
</code></pre><p>Then the final classification step: first is checking if the token is an identifier (a string literal that starts with a character and is followed by characters, underscores or numbers).<!-- raw HTML omitted -->
If not a identifier, check to see if it is a number. This should be expanded to correctly parse numbers, but for now is not used.<!-- raw HTML omitted -->.
If everything else fails, than we don&rsquo;t recognize the token.</p>
<pre tabindex="0"><code>        default:
        {
            // Identifier/keywords
            if ( IsAlpha( c ) ) {
                token.type = Token::Token_Identifier;

                while ( IsAlpha( lexer-&gt;position[0] ) || IsNumber( lexer-&gt;position[0] ) || (lexer-&gt;position[0] == '_') ) {
                    ++lexer-&gt;position;
                }

                token.text.length = lexer-&gt;position - token.text.text;
            } // Numbers
            else if ( IsNumber( c ) ) {
                token.type = Token::Token_Number;
            }
            else {
                token.type = Token::Token_Unknown;
            }
        } break;
    }
}
</code></pre><p>With this code we already have a working Lexer!<!-- raw HTML omitted -->
I like to use the lexer in an abstract way - not knowing anything about the underlying language - so that it can be reused for different custom languages (Dr.Wily eyebrows movement goes here).<!-- raw HTML omitted --></p>
<p>If you want to dive deeper into this, the amazing Crafting Interpreters contains a great page on scanning:</p>
<p><a href="https://www.craftinginterpreters.com/scanning.html">https://www.craftinginterpreters.com/scanning.html</a></p>
<p>Also, some c-style parsing can be found here from the amazing <a href="https://twitter.com/niklasfrykholm">Niklas Frykohlm</a>:</p>
<p><a href="https://github.com/niklasfrykholm/nflibs/blob/master/nf_json_parser.c">https://github.com/niklasfrykholm/nflibs/blob/master/nf_json_parser.c</a></p>
<p>And another amazing parser from STB:</p>
<p><a href="https://github.com/nothings/stb/blob/master/stb_c_lexer.h">https://github.com/nothings/stb/blob/master/stb_c_lexer.h</a></p>
<h1 id="parser">Parser</h1>
<p>So far we have abstracted the input text into a list of <strong>Tokens</strong>, and now we need to generate some more information before arriving at generating new code.</p>
<p>As far as <em>I understood it</em>, a parser reads the tokens and generates an <strong>Abstract Syntax Tree</strong>.</p>
<p>Sometimes, and in simpler parsers, the act of parsing itself can generates a new code if the language we are targeting is simple.
Again, I prefer to separate Lexer and Parser to reuse the Lexer for different languages and separate the responsabilities!</p>
<blockquote>
<p>Given a list of tokens and a grammar, a parser generates an Abstract Syntax Tree.</p>
</blockquote>
<blockquote>
<p>It gives meaning to the input text, and is responsible to check the syntax correctness.</p>
</blockquote>
<p>A simple definition for a grammar is the following:</p>
<blockquote>
<p>A grammar is a set of production rules that transforms a series of non-terminals into terminals.</p>
</blockquote>
<p>Putting everything in the perspective of data and transformations we can define:</p>
<ol>
<li><strong>Terminals</strong> are finalized data</li>
<li><strong>Non-terminals</strong> are data that must be transformed</li>
<li><strong>Production rules</strong> are transformations of <strong>non-terminals</strong> to <strong>terminals</strong></li>
</ol>
<p>Another definition of a parser than it could be :</p>
<blockquote>
<p>A parser is a software that transforms non-terminals in terminals following production rules.</p>
</blockquote>
<h2 id="grammar">Grammar</h2>
<p>It is time to write the formal grammar (a context-free grammar) and see how it maps to code.<!-- raw HTML omitted -->
It will be very simple — much simpler than many examples you find around — but it is a starting point.<!-- raw HTML omitted -->
We will not deal with any expression, statements and such, not in the context of this code generator. I will point out some examples for more complex stuff, but I want to study more the subject for that to be more precise about the subject.<!-- raw HTML omitted --></p>
<p>Each line will be a <strong>production rule</strong> (a transformation), with the left-side being always a non-terminal.<!-- raw HTML omitted -->
We are using regular expressions syntax here:</p>
<ol>
<li>alphabet → [a-zA-z]</li>
<li>number →[0–9]</li>
<li>identifier → alphabet (alphabet | number | “_”)*</li>
<li>variable_declaration → identifier identifier “;”</li>
<li>struct_declaration → “struct” identifier “{“ (variable_declaration)+ “}” “;”</li>
<li>enum_declaration → “enum” identifier “{“ (identifier)+ “}”</li>
<li>module → (struct_declaration | enum_declaration)+*</li>
</ol>
<p>First we define what an identifier is — a sequence of alpha-numerical characters that can contains also the underscore character.<!-- raw HTML omitted -->Notice that with the identifier production rule, the identifier cannot start with an underscore.<!-- raw HTML omitted -->
A variable then is declared simply by two identifiers: the first for the type and the second for the name, following a semicolon.<!-- raw HTML omitted -->
A struct is simply a list of variable declarations. Notice the “+” in the rule — this means that at least one element must be present.<!-- raw HTML omitted -->
Enums are literally a name for the enum and a list of identifiers in curly braces.<!-- raw HTML omitted -->
Finally the module is the root of our grammar. It will contain all the declarations we describe. See it as the data file we are writing to generate the code — one file is one module.<!-- raw HTML omitted -->
Now that we defined a simple grammar, we can move to the theory behind the parser.<!-- raw HTML omitted --></p>
<h2 id="predictive-recursive-descent-parser">Predictive Recursive Descent Parser</h2>
<p>The grammar we defined is a context-free-grammar.<!-- raw HTML omitted -->
Depending on the type of grammar we can write different parsers.<!-- raw HTML omitted -->
One of the most common type of parser (and easier to start with) is the <a href="https://en.wikipedia.org/wiki/Recursive_descent_parser">Predictive Recursive Descent Parser</a>, and that is what we will write given our grammar. You can dive into all the details of writing a context-free grammar, writing a <a href="https://en.wikipedia.org/wiki/LL_parser">Left-to-right Leftmost-derivation grammar (LL(k))</a> and such and be amazed by all the concepts behind.<!-- raw HTML omitted --></p>
<p>Again, I am personally starting on this subject, so my knowledge is not deep.</p>
<p>Back to the parser, the main characteristics of this parser are:</p>
<ol>
<li>Descent = top-down. Start from root and generate the Abstract Syntax Tree.</li>
<li>Recursive = the parser has mutually recursive methods, one for each non-terminal.</li>
<li>Predictive = no backtracking needed. For our simple grammar we do not need any backtracking.</li>
</ol>
<p>So the parser will start from the root (module non-terminal) and by sequentially reading all the tokens will generate a tree that represent our syntax.</p>
<p>Let’s see some code!</p>
<h2 id="code-1">Code</h2>
<p>The central piece of code is the Parser.<!-- raw HTML omitted -->
It uses the Lexer and saves the Types by parsing the input text.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>//
// The Parser parses Tokens using the Lexer and generate an Abstract Syntax Tree.
struct Parser {

    Lexer*                          lexer               = nullptr;

    ast::Type*                      types               = nullptr;
    uint32_t                        types_count         = 0;
    uint32_t                        types_max           = 0;

}; // struct Parser
</code></pre><p>Let&rsquo;s have a look at the class <strong>Type</strong>.<!-- raw HTML omitted -->
This class will let us identify correctly primitive types, enums, struct and <em>commands</em> - a special keyword I create to show a concept that can be used away from the canonical C/C++ languages.<!-- raw HTML omitted -->
By saving a list of names and types we can successfully parse all the types listed above.</p>
<pre tabindex="0"><code>//
// Define the language specific structures.
namespace ast {

    struct Type {

        enum Types {
            Types_Primitive, Types_Enum, Types_Struct, Types_Command, Types_None
        };

        enum PrimitiveTypes {
            Primitive_Int32, Primitive_Uint32, Primitive_Int16, Primitive_Uint16, Primitive_Int8, Primitive_Uint8, Primitive_Int64, Primitive_Uint64, Primitive_Float, Primitive_Double, Primitive_Bool, Primitive_None
        };

        Types                       type;
        PrimitiveTypes              primitive_type;
        StringRef                   name;

        std::vector&lt;StringRef&gt;      names;
        std::vector&lt;const Type*&gt;    types;
        bool                        exportable = true;

    }; // struct Type

} // namespace ast
</code></pre><p>And now the actual code making the magic happens!<!-- raw HTML omitted -->
Entry point for the parsing is generateAST.<!-- raw HTML omitted -->
It simply goes through ALL the tokens until it reaches the end of the file.<!-- raw HTML omitted -->
At this level of parsing, we parse only identifiers (keywords like &lsquo;struct&rsquo;, &lsquo;enum&rsquo;, &hellip;).</p>
<pre tabindex="0"><code>void generateAST( Parser* parser ) {

    // Read source text until the end.
    // The main body can be a list of declarations.
    bool parsing = true;

    while ( parsing ) {

        Token token;
        nextToken( parser-&gt;lexer, token );

        switch ( token.type ) {

            case Token::Token_Identifier:
            {
                identifier( parser, token );
                break;
            }

            case Token::Type::Token_EndOfStream:
            {
                parsing = false;
                break;
            }
        }
    }
}
</code></pre><p>The method &lsquo;identifier&rsquo; searches for the language keywords and acts accordingly.<!-- raw HTML omitted -->
The method &lsquo;expectKeyword&rsquo; simply checks that the keywords are the same.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>inline void identifier( Parser* parser, const Token&amp; token ) {

    // Scan the name to know which 
    for ( uint32_t i = 0; i &lt; token.text.length; ++i ) {
        char c = *(token.text.text + i);

        switch ( c ) {
            case 's':
            {
                if ( expectKeyword( token.text, 6, &quot;struct&quot; ) ) {
                    declarationStruct( parser );
                    return;
                }
                    
                break;
            }

            case 'e':
            {
                if ( expectKeyword( token.text, 4, &quot;enum&quot; ) ) {
                    declarationEnum( parser );
                    return;
                }
                break;
            }

            case 'c':
            {
                if ( expectKeyword( token.text, 7, &quot;command&quot; ) ) {
                    declarationCommand( parser );
                    return;
                }
                break;
            }
        }
    }
}
</code></pre><p>The next methods are the real core of parsing a language.
When declaring a struct, the token we have are:</p>
<ol>
<li>Identifier &lsquo;struct&rsquo; (parsed already by generateAST method)</li>
<li>Name of the struct</li>
<li>Open braces</li>
<li>Zero or more variables</li>
</ol>
<p>The method expectToken checks the presence of the expected token and saves the line if an error occurs.</p>
<pre tabindex="0"><code>inline void declarationStruct( Parser* parser ) {
    // name
    Token token;
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    // Cache name string
    StringRef name = token.text;
    
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_OpenBrace ) ) {
        return;
    }

    // Add new type
    ast::Type&amp; type = parser-&gt;types[parser-&gt;types_count++];
    type.name = name;
    type.type = ast::Type::Types_Struct;
    type.exportable = true;

    // Parse struct internals
    while ( !equalToken( parser-&gt;lexer, token, Token::Token_CloseBrace ) ) {

        if ( token.type == Token::Token_Identifier ) {
            declarationVariable( parser, token.text, type );
        }
    }
}

</code></pre><p>The parsing of a variable is even simpler, just a type followed by the name.
When reading the type, it searches through the list of all types saved until then.</p>
<pre tabindex="0"><code>inline void declarationVariable( Parser* parser, const StringRef&amp; type_name, ast::Type&amp; type ) {
    const ast::Type* variable_type = findType( parser, type_name );
    Token token;
    // Name
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    // Cache name string
    StringRef name = token.text;

    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Semicolon ) ) {
        return;
    }

    type.types.emplace_back( variable_type );
    type.names.emplace_back( name );
}
</code></pre><p>The parsing of the enum is:</p>
<ol>
<li>&lsquo;enum&rsquo; keyword</li>
<li>Enum name</li>
<li>(optional) Semicolon and type, taken from Flatbuffers syntax</li>
<li>Open brace</li>
<li>List of identifiers that corresponds to the enum values</li>
</ol>
<!-- raw HTML omitted -->
<pre tabindex="0"><code>
inline void declarationEnum( Parser* parser ) {
    Token token;
    // Name
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    // Cache name string
    StringRef name = token.text;

    // Optional ': type' for the enum
    nextToken( parser-&gt;lexer, token );
    if ( token.type == Token::Token_Colon ) {
        // Skip to open brace
        nextToken( parser-&gt;lexer, token );
        // Token now contains type_name
        nextToken( parser-&gt;lexer, token );
        // Token now contains open brace.
    }
    
    if ( token.type != Token::Token_OpenBrace ) {
        return;
    }

    // Add new type
    ast::Type&amp; type = parser-&gt;types[parser-&gt;types_count++];
    type.name = name;
    type.type = ast::Type::Types_Enum;
    type.exportable = true;

    // Parse struct internals
    while ( !equalToken( parser-&gt;lexer, token, Token::Token_CloseBrace ) ) {

        if ( token.type == Token::Token_Identifier ) {
            type.names.emplace_back( token.text );
        }
    }
}
</code></pre><p>A command is a special construct that I use in my code, normally with a CommandBuffer, and with the current syntax from HDF:</p>
<pre tabindex="0"><code>command WindowEvents {
    Click {
      int16 x;
      int16 y;
      int16 button;
    }
    Move {
      int16 x;
      int16 y;
    }
    Wheel {
       int16 z;
    }
};
</code></pre><p>And this is the parsing of the command.<!-- raw HTML omitted -->
I think this can be the best example of mapping between the language and the parsing.<!-- raw HTML omitted -->
Parsing is:</p>
<ol>
<li>Name</li>
<li>Open brace</li>
<li>Scan of identifiers until close brace</li>
<li>For each identifier, add a type and scan for internal variables.</li>
</ol>
<!-- raw HTML omitted -->
<pre tabindex="0"><code>inline void declarationCommand( Parser* parser ) {
    // name
    Token token;
    if ( !expectToken( parser-&gt;lexer, token, Token::Token_Identifier ) ) {
        return;
    }

    // Cache name string
    StringRef name = token.text;

    if ( !expectToken( parser-&gt;lexer, token, Token::Token_OpenBrace ) ) {
        return;
    }

    // Add new type
    ast::Type&amp; command_type = parser-&gt;types[parser-&gt;types_count++];
    command_type.name = name;
    command_type.type = ast::Type::Types_Command;
    command_type.exportable = true;

    // Parse struct internals
    while ( !equalToken( parser-&gt;lexer, token, Token::Token_CloseBrace ) ) {

        if ( token.type == Token::Token_Identifier ) {
            // Create a new type for each command
            // Add new type
            ast::Type&amp; type = parser-&gt;types[parser-&gt;types_count++];
            type.name = token.text;
            type.type = ast::Type::Types_Struct;
            type.exportable = false;

            while ( !equalToken( parser-&gt;lexer, token, Token::Token_CloseBrace ) ) {
                if ( token.type == Token::Token_Identifier ) {
                    declarationVariable( parser, token.text, type );
                }
            }

            command_type.names.emplace_back( type.name );
            command_type.types.emplace_back( &amp;type );
        }
    }
}
</code></pre><h2 id="abstract-syntax-tree">Abstract Syntax Tree</h2>
<p>We choose to simply have data definitions, and I’ve decided that the nodes of the tree will be types.<!-- raw HTML omitted -->
A type can be a primitive type, a container of variables (like a Struct in C, but without methods) enums and commands.<!-- raw HTML omitted -->
Commands are just a way of showing the creation of a construct that I use and requires some boilerplate code, but I don’t want to write that code.<!-- raw HTML omitted -->
If we remember the definition of the class Type from the code before, it all boils down to a name,a list of names and optionally types.<!-- raw HTML omitted -->
With this simple definition I can express primitive types, structs and enums all in one!<!-- raw HTML omitted -->
For enums, I save the anme of the enum and in the name list all the different values. That is enough to later generate the code.<!-- raw HTML omitted -->
For structs, again the name is saved, and then the variables. A variable is a tuple of identifiers ‘type, name’. When parsing them, the type is searched in the registered ones.<!-- raw HTML omitted -->
A trick here is to initialize the parser with primitive types, and then add each type (both struct and enums) when parsing them.<!-- raw HTML omitted --></p>
<h1 id="code-generation">Code Generation</h1>
<p>The last stage will generate the files in the language that we want, using the informations from the <strong>AST</strong>.<!-- raw HTML omitted -->
This part will literally write the code for us, the all purpose of this code.<!-- raw HTML omitted -->
The most fundamental question is: <em>“what code do I want to generate?”</em>.<!-- raw HTML omitted -->
A simple but deep question.<!-- raw HTML omitted -->
We are trying to remove the writing of boilerplate code from or lives, so anything that you consider boilerplate and easy to automate goes here.
Even if until here we wrote in C++, the final output can be any language.<!-- raw HTML omitted -->
This means that you can define data and translate it to multiple languages!<!-- raw HTML omitted --></p>
<p>For our example, we will output C++ code and add UI using ImGui, similar to the Flatbuffers example I wrote before.<!-- raw HTML omitted -->
Let’s see the three different construct we can output with our language.<!-- raw HTML omitted --></p>
<h2 id="enum">Enum</h2>
<p>We defined an enum as a name and a list of named values.
For the simplicity of this example, we are not assigning manual values to the enum, but it is something easily changeable, and I will do it in the future.
Given the enum in HDF:</p>
<pre tabindex="0"><code>enum BlendOperation : byte { Add, Subtract, RevSubtract, Min, Max }
</code></pre><p>Which code do we want to generate ?</p>
<p>When I write enums, I almost always need the stringed version of the values. Also I want to add a last value, Count, so that I can use it if I need to allocate anything based on the enum.<!-- raw HTML omitted -->
As a bonus, I can create a second enum with the bit shifts — called mask — for some use cases.<!-- raw HTML omitted -->
All of this will be automatically done by the code generator, starting with a simple enum!<!-- raw HTML omitted -->
In this piece of code, I will use three different streams for the different parts of the enum (enum itself, value names and mask) and combine them into the final generated file.<!-- raw HTML omitted -->
Also to note that the strings here are ‘String Ref’ — basically a string that points to the input source code and stores the length of the string, so that there is no need to allocate it newly.<!-- raw HTML omitted -->
I will use a temporary buffer to null terminate it and write into the output file.<!-- raw HTML omitted --></p>
<p>This will be the generated code:</p>
<pre tabindex="0"><code>namespace BlendOperation {
	enum Enum {
		Add, Subtract, RevSubtract, Min, Max, Count
	};

	enum Mask {
		Add_mask = 1 &lt;&lt; 0, Subtract_mask = 1 &lt;&lt; 1, RevSubtract_mask = 1 &lt;&lt; 2, Min_mask = 1 &lt;&lt; 3, Max_mask = 1 &lt;&lt; 4, Count_mask = 1 &lt;&lt; 5
	};

	static const char* s_value_names[] = {
		&quot;Add&quot;, &quot;Subtract&quot;, &quot;RevSubtract&quot;, &quot;Min&quot;, &quot;Max&quot;, &quot;Count&quot;
	};

	static const char* ToString( Enum e ) {
		return s_value_names[(int)e];
	}
} // namespace BlendOperation
</code></pre><p>The enum itself (inside a namespace), a mask and the string version for debugging purposes.<!-- raw HTML omitted -->
All generated from that one line!<!-- raw HTML omitted --></p>
<p>Let&rsquo;s go into a step by step review of the code.<!-- raw HTML omitted -->
First there is the initialization of some auxiliary buffers to handle dynamic strings without allocating memory.<!-- raw HTML omitted -->
These are the usages:</p>
<ol>
<li>Values will contain all the enum comma separated values</li>
<li>Value_names will contain the string version of the values</li>
<li>Value_masks will contain an optional bitmask for the values.
<!-- raw HTML omitted --></li>
</ol>
<pre tabindex="0"><code>void outputCPPEnum( CodeGenerator* code_generator, FILE* output, const ast::Type&amp; type ) {

    // Empty enum: skip output.
    if ( type.names.size() == 0 )
        return;

    code_generator-&gt;string_buffer_0.clear();
    code_generator-&gt;string_buffer_1.clear();
    code_generator-&gt;string_buffer_2.clear();

    StringBuffer&amp; values = code_generator-&gt;string_buffer_0;
    StringBuffer&amp; value_names = code_generator-&gt;string_buffer_1;
    StringBuffer&amp; value_masks = code_generator-&gt;string_buffer_2;
</code></pre><p>We start by adding the character &lsquo;&quot;&rsquo; in the names - they will be C strings!<!-- raw HTML omitted -->
Then we have a couple of options, just as demonstration: add mask (for the bitmask) and add max, that adds a last element to the generated enum.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    value_names.append( &quot;\&quot;&quot; );

    bool add_max = true;
    bool add_mask = true;
</code></pre><p>Next step is the core: go through all the names saved in the enum <strong>ast::Type</strong> during the <strong>parsing</strong> phase, and add the literal as is in the enum, the literal in string version and optional mask.<!-- raw HTML omitted -->
We also need to take care of the enum with 1 values, they behave in a different way.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    char name_buffer[256];

    // Enums with more than 1 values
    if ( type.names.size() &gt; 1 ) {
        const uint32_t max_values = type.names.size() - 1;
        for ( uint32_t v = 0; v &lt; max_values; ++v ) {

            if ( add_mask ) {
                value_masks.append( type.names[v] );
                value_masks.append( &quot;_mask = 1 &lt;&lt; &quot; );
                value_masks.append( _itoa( v, name_buffer, 10 ) );
                value_masks.append( &quot;, &quot; );
            }

            values.append( type.names[v] );
            values.append( &quot;, &quot; );

            value_names.append( type.names[v] );
            value_names.append( &quot;\&quot;, \&quot;&quot; );
        }

        if ( add_mask ) {
            value_masks.append( type.names[max_values] );
            value_masks.append( &quot;_mask = 1 &lt;&lt; &quot; );
            value_masks.append( _itoa( max_values, name_buffer, 10 ) );
        }

        values.append( type.names[max_values] );

        value_names.append( type.names[max_values] );
        value_names.append( &quot;\&quot;&quot; );
    }
    else {
        
        if ( add_mask ) {
            value_masks.append( type.names[0] );
            value_masks.append( &quot;_mask = 1 &lt;&lt; &quot; );
            value_masks.append( _itoa( 0, name_buffer, 10 ) );
        }

        values.append( type.names[0] );

        value_names.append( type.names[0] );
        value_names.append( &quot;\&quot;&quot; );
    }

</code></pre><p>After writing all the values we can add the optional max value in the output:</p>
<pre tabindex="0"><code>    if ( add_max ) {
        values.append( &quot;, Count&quot; );

        value_names.append( &quot;, \&quot;Count\&quot;&quot; );

        if ( add_mask ) {
            value_masks.append( &quot;, Count_mask = 1 &lt;&lt; &quot; );
            value_masks.append( _itoa( type.names.size(), name_buffer, 10 ) );
        }
    }
    
</code></pre><p>Until now we just saved all those values in the StringBuffers, but still not in the file.<!-- raw HTML omitted -->
The final piece of code output to file the enum with all the additional data:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    copy( type.name, name_buffer, 256 );

    fprintf( output, &quot;namespace %s {\n&quot;, name_buffer );

    fprintf( output, &quot;\tenum Enum {\n&quot; );
    fprintf( output, &quot;\t\t%s\n&quot;, values.data );
    fprintf( output, &quot;\t};\n&quot; );

    // Write the mask
    if ( add_mask ) {
        fprintf( output, &quot;\n\tenum Mask {\n&quot; );
        fprintf( output, &quot;\t\t%s\n&quot;, value_masks.data );
        fprintf( output, &quot;\t};\n&quot; );
    }

    // Write the string values
    fprintf( output, &quot;\n\tstatic const char* s_value_names[] = {\n&quot; );
    fprintf( output, &quot;\t\t%s\n&quot;, value_names.data );
    fprintf( output, &quot;\t};\n&quot; );

    fprintf( output, &quot;\n\tstatic const char* ToString( Enum e ) {\n&quot; );
    fprintf( output, &quot;\t\treturn s_value_names[(int)e];\n&quot; );
    fprintf( output, &quot;\t}\n&quot; );

    fprintf( output, &quot;} // namespace %s\n\n&quot;, name_buffer );
}
</code></pre><h2 id="struct">Struct</h2>
<p>Structs are the bread-and-butter of data definition.
In this simple example we do not handle pointers or references, so it is pretty straight-forward, but as a start in coding generation this could already be powerful for many cases.
Let’s start with a definition for our dream Data-Driven-Rendering:</p>
<pre tabindex="0"><code>// file.hdf
struct RenderTarget {
    uint16 			width;
    uint16 			height;
    float 			scale_x;
    float 			scale_y;
    TextureFormat 	format;
};

struct RenderPass {
    RenderTarget 	rt0;
};
</code></pre><p>We want to generate both the ready to use header in C++ and UI using ImGui.<!-- raw HTML omitted -->
The output for this struct will be obtained by simply iterating through all its members and, based on the type of the member, write some code.<!-- raw HTML omitted -->
For primitive types there is a translation that must be done to the C++ language — thus we saved a list of c++ primitive types keyword into the code.<!-- raw HTML omitted -->
For the UI area we will define two methods: reflectMembers, that simply adds the ImGui commands needed, and reflectUI, that embeds the members into a Window. This is done so that when starting from a root type I can create a window that let me edit its value, and recursively it can add other member’s UI if they are coming from another struct.<!-- raw HTML omitted -->
This is shown with the RenderPass struct.<!-- raw HTML omitted --></p>
<p>This will be the generated code, that includes ImGui too:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>// CodeGenerated.h

struct RenderTarget {

	uint16_t width;
	uint16_t height;
	float scale_x;
	float scale_y;
	TextureFormat::Enum format;

	void reflectMembers() {
		ImGui::InputScalar( &quot;width&quot;, ImGuiDataType_U16, &amp;width );
		ImGui::InputScalar( &quot;height&quot;, ImGuiDataType_U16, &amp;height );
		ImGui::InputScalar( &quot;scale_x&quot;, ImGuiDataType_Float, &amp;scale_x );
		ImGui::InputScalar( &quot;scale_y&quot;, ImGuiDataType_Float, &amp;scale_y );
		ImGui::Combo( &quot;format&quot;, (int32_t*)&amp;format, TextureFormat::s_value_names, TextureFormat::Count );
	}

	void reflectUI() {
		ImGui::Begin(&quot;RenderTarget&quot;);
		reflectMembers();
		ImGui::End();
	}

}; // struct RenderTarget
</code></pre><p>Now let&rsquo;s have a look at the code that will generate that.<!-- raw HTML omitted -->
First some init steps: clear and alias the StringBuffer, allocate some char buffers on the stack, copy the StringRef into the name buffer:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>
void outputCPPStruct( CodeGenerator* code_generator, FILE* output, const ast::Type&amp; type ) {
    const char* tabs = &quot;&quot;;

    code_generator-&gt;string_buffer_0.clear();

    StringBuffer&amp; ui_code = code_generator-&gt;string_buffer_0;

    char name_buffer[256], member_name_buffer[256], member_type_buffer[256];
    copy( type.name, name_buffer, 256 );

</code></pre><p>Next is already a powerful piece of code.<!-- raw HTML omitted -->
Outputting the UI code and iterating through each member.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    if ( code_generator-&gt;generate_imgui ) {
        ui_code.append( &quot;\n\tvoid reflectMembers() {\n&quot; );
    }

    fprintf( output, &quot;%sstruct %s {\n\n&quot;, tabs, name_buffer );

    for ( int i = 0; i &lt; type.types.size(); ++i ) {
        const ast::Type&amp; member_type = *type.types[i];
        const StringRef&amp; member_name = type.names[i];

        copy( member_name, member_name_buffer, 256 );

</code></pre><p>We are in the middle of the loop, and we want to check if the current member type is a primitive one, then it needs some work to do.<!-- raw HTML omitted -->
First, output the language specific primitive type keyword (using the s_primitive_type_cpp array).<!-- raw HTML omitted -->
Second, add some ImGui code to edit the field directly.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>
        // Translate type name based on output language.
        switch ( member_type.type ) {
            case ast::Type::Types_Primitive:
            {
                strcpy_s( member_type_buffer, 256, s_primitive_type_cpp[member_type.primitive_type] );
                fprintf( output, &quot;%s\t%s %s;\n&quot;, tabs, member_type_buffer, member_name_buffer );
                
                if ( code_generator-&gt;generate_imgui ) {
                    switch ( member_type.primitive_type ) {
                        case ast::Type::Primitive_Int8:
                        case ast::Type::Primitive_Uint8:
                        case ast::Type::Primitive_Int16:
                        case ast::Type::Primitive_Uint16:
                        case ast::Type::Primitive_Int32:
                        case ast::Type::Primitive_Uint32:
                        case ast::Type::Primitive_Int64:
                        case ast::Type::Primitive_Uint64:
                        case ast::Type::Primitive_Float:
                        case ast::Type::Primitive_Double:
                        {
                            ui_code.append( &quot;\t\tImGui::InputScalar( \&quot;%s\&quot;, %s, &amp;%s );\n&quot;, member_name_buffer, s_primitive_type_imgui[member_type.primitive_type], member_name_buffer );
                            
                            break;
                        }
                        
                        case ast::Type::Primitive_Bool:
                        {
                            ui_code.append( &quot;\t\tImGui::Checkbox( \&quot;%s\&quot;, &amp;%s );\n&quot;, member_name_buffer, member_name_buffer );
                            break;
                        }
                    }
                }

                break;
            }

</code></pre><p>In case of a struct as a member, use the typename as is and call the &lsquo;reflectMembers&rsquo; method for the UI generation:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>            case ast::Type::Types_Struct:
            {
                copy( member_type.name, member_type_buffer, 256 );
                fprintf( output, &quot;%s\t%s %s;\n&quot;, tabs, member_type_buffer, member_name_buffer );

                if ( code_generator-&gt;generate_imgui ) {
                    ui_code.append( &quot;\t\tImGui::Text(\&quot;%s\&quot;);\n&quot;, member_name_buffer );
                    ui_code.append( &quot;\t\t%s.reflectMembers();\n&quot;, member_name_buffer );
                }

                break;
            }

</code></pre><p>For enums use the format namespace::Enum that comes with the generated code (and can be anything else) and add a Combo for ImGui. The combo is using the string array generated previously! This is powerful!<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>            case ast::Type::Types_Enum:
            {
                copy( member_type.name, member_type_buffer, 256 );
                fprintf( output, &quot;%s\t%s::Enum %s;\n&quot;, tabs, member_type_buffer, member_name_buffer );

                if ( code_generator-&gt;generate_imgui ) {
                    ui_code.append( &quot;\t\tImGui::Combo( \&quot;%s\&quot;, (int32_t*)&amp;%s, %s::s_value_names, %s::Count );\n&quot;, member_name_buffer, member_name_buffer, member_type_buffer, member_type_buffer );
                }

                break;
            }

</code></pre><p>To finish up simlpy add the reflectUI method, that embed the members reflection in a window and finish.<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>            default:
            {
                break;
            }
        }
    }

    ui_code.append( &quot;\t}&quot; );
    ui_code.append( &quot;\n\n\tvoid reflectUI() {\n\t\tImGui::Begin(\&quot;%s\&quot;);\n\t\treflectMembers();\n\t\tImGui::End();\n\t}\n&quot;, name_buffer );

    fprintf( output, &quot;%s\n&quot;, ui_code.data );

    fprintf( output, &quot;\n%s}; // struct %s\n\n&quot;, tabs, name_buffer );
}

</code></pre><h2 id="command">Command</h2>
<p>I wanted to include an example of something that does not exist in any language, but it shows the power of removing boilerplate code.</p>
<p>I define commands as little structs with a type used anytime I need to do some command parsing, normally from a ring buffer.</p>
<p>The command should have an enum with all the types already, and each struct should have its type assigned.
The type is normally used to cycle through the commands and do something accordingly.</p>
<p>It will output structs because of the need to allocate them in the ring buffer, thus must be simple.</p>
<p>First let&rsquo;s see the HDF file. The example are window events commands:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>command WindowEvents {

	Click {
		int16 x;
        int16 y;
        int16 button;
	}

	Move {
		int16 x;
		int16 y;
	}

    Wheel {
        int16 z;
    }
};
</code></pre><p>The generated code will be:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>namespace WindowEvents {
	enum Type {
		Type_Click, Type_Move, Type_Wheel
	};

	struct Click {

		int16_t x;
		int16_t y;
		int16_t button;

		static Type GetType() { return Type_Click; }

	}; // struct Wheel

	struct Move {

		int16_t x;
		int16_t y;

		static Type GetType() { return Type_Move; }

	}; // struct Wheel

	struct Wheel {

		int16_t z;

		static Type GetType() { return Type_Wheel; }

	}; // struct Wheel

}; // namespace WindowEvents
</code></pre><p>And finally the C++ code that generates the output.<!-- raw HTML omitted -->
The output starts with an enum with all the types, that I normally use to switch commands:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>void outputCPPCommand( CodeGenerator* code_generator, FILE* output, const ast::Type&amp; type ) {

    char name_buffer[256], member_name_buffer[256], member_type_buffer[256];
    copy( type.name, name_buffer, 256 );

    fprintf( output, &quot;namespace %s {\n&quot;, name_buffer );

    // Add enum with all types
    fprintf( output, &quot;\tenum Type {\n&quot; );
    fprintf( output, &quot;\t\t&quot; );
    for ( int i = 0; i &lt; type.types.size() - 1; ++i ) {
        const ast::Type&amp; command_type = *type.types[i];
        copy( command_type.name, name_buffer, 256 );
        fprintf( output, &quot;Type_%s, &quot;, name_buffer );
    }

    const ast::Type* last_type = type.types[type.types.size() - 1];
    copy( last_type-&gt;name, name_buffer, 256 );
    fprintf( output, &quot;Type_%s&quot;, name_buffer );
    fprintf( output, &quot;\n\t};\n\n&quot; );
</code></pre><p>Then we output all the command structs (like Click, Move, &hellip;).<!-- raw HTML omitted -->
For each command type we output a struct with all its members. This is similar to the output of the structs:<!-- raw HTML omitted --></p>
<pre tabindex="0"><code>    const char* tabs = &quot;\t&quot;;

    for ( int i = 0; i &lt; type.types.size(); ++i ) {
        const ast::Type&amp; command_type = *type.types[i];

        copy( command_type.name, member_type_buffer, 256 );
        fprintf( output, &quot;%sstruct %s {\n\n&quot;, tabs, member_type_buffer );
        
        for ( int i = 0; i &lt; command_type.types.size(); ++i ) {
            const ast::Type&amp; member_type = *command_type.types[i];
            const StringRef&amp; member_name = command_type.names[i];

            copy( member_name, member_name_buffer, 256 );

            // Translate type name based on output language.
            switch ( member_type.type ) {
                case ast::Type::Types_Primitive:
                {
                    strcpy_s( member_type_buffer, 256, s_primitive_type_cpp[member_type.primitive_type] );
                    fprintf( output, &quot;%s\t%s %s;\n&quot;, tabs, member_type_buffer, member_name_buffer );

                    break;
                }

                case ast::Type::Types_Struct:
                {
                    copy( member_type.name, member_type_buffer, 256 );
                    fprintf( output, &quot;%s\t%s %s;\n&quot;, tabs, member_type_buffer, member_name_buffer );

                    break;
                }

                case ast::Type::Types_Enum:
                {
                    copy( member_type.name, member_type_buffer, 256 );
                    fprintf( output, &quot;%s\t%s::Enum %s;\n&quot;, tabs, member_type_buffer, member_name_buffer );

                    break;
                }

                default:
                {
                    break;
                }
            }
        }

        copy( command_type.name, member_type_buffer, 256 );

        fprintf( output, &quot;\n%s\tstatic Type GetType() { return Type_%s; }\n&quot;, tabs, member_type_buffer );
        fprintf( output, &quot;\n%s}; // struct %s\n\n&quot;, tabs, name_buffer );
    }

    copy( type.name, name_buffer, 256 );
    fprintf( output, &quot;}; // namespace %s\n\n&quot;, name_buffer );

}
</code></pre><h1 id="conclusions">Conclusions</h1>
<p>We learnt how to write a complete Code Generator, an incredible tool that can speed up the development if used correctly and remove most boilerplate code possible.</p>
<p>The usage of the <em>command</em> keyword was an example of something I use and I don’t want to write code, something that is custom enough and hopefully will give you more ideas on how you can break free from languages constriction when you write…your own language!</p>
<p>In the quest for data-driven rendering, the next step will be to use the knowledge from code generation to create a <em>shader effect language</em>, that can generate both CPU and GPU code for you.</p>
<p>This article is the longest and more code-heavy I have ever written. There are many concepts that I am beginning to be familiar with, but still not so used to.</p>
<p>So please comment, give feedback, share!
Thank you for reading!</p>

    
    
    
      Emulation: where to start? A use case.
      https://jorenjoestar.github.io/post/emulation_where_to_start/
      Sat, 27 Jul 2019 18:45:35 -0400
      
      https://jorenjoestar.github.io/post/emulation_where_to_start/
      

<figure>

  <a data-fancybox="" href="front.png" >

<img src="front.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Some of the UI for the Hydra NES emulator, using ImGUI.</h4>
  
</figcaption>

</figure>

<p>Writing an emulator is an incredibly fun learning experience.</p>
<p>It is an exquisite exercise in reverse-engineering from both documentation and code.</p>
<p>In this post I want to share some tips on how and where to start based on my experience on the NES emulator I am writing.</p>
<h1 id="information">Information</h1>
<p>The gathering of information is the most important (and hard!) process that will live through all the writing process.</p>
<p>Luckily for us there are many websites to help in this:</p>
<p><a href="https://wiki.nesdev.com/w/index.php/NES_reference_guide">https://wiki.nesdev.com/w/index.php/NES_reference_guide</a></p>
<p><a href="http://forums.nesdev.com/">http://forums.nesdev.com/</a></p>
<p><a href="http://obelisk.me.uk/6502/reference.html">http://obelisk.me.uk/6502/reference.html</a></p>
<p><a href="http://www.oxyron.de/html/opcodes02.html">http://www.oxyron.de/html/opcodes02.html</a></p>
<p>It is paramount to create a list of websites and resources (maybe through some notes, like in Evernote or such) about different topics regarding the hardware to be emulated.</p>
<p>Having a central hub is powerful and counteract the sparseness of the different informations (some in txt files, different websites, forum blogposts, …).</p>
<p>I can’t stress enough how important it is.<!-- raw HTML omitted --></p>
<p>The amazing NesDev Wiki is the hub you need. Almost every possible information is there.</p>
<h1 id="architecture">Architecture</h1>
<p>Next step is to understand the architecture.<!-- raw HTML omitted -->
Write diagrams, take notes, search for the relationships of the component.<!-- raw HTML omitted -->
What does every hardware component do ?<!-- raw HTML omitted -->
What can that specific hardware piece access to ?<!-- raw HTML omitted --></p>
<p>As you will see, writing the emulator is an iterative process of improving each component until you have something that works very well, and then refine for an infinite amount of time.<!-- raw HTML omitted -->
On a very basic level, there should be a CPU, some form of GPU (PPU, Picture Processing Unit), some audio chip, some input peripheral and cartridge/disc/rom.</p>
<h1 id="nes-architecture">NES architecture</h1>
<p>The NES is a beautiful machine equipped with the following:</p>
<h4 id="cpu--ricoh-rp2a03-ntsc--rp2a07-pal">CPU : Ricoh RP2A03 (NTSC) / RP2A07 (PAL)</h4>
<p>8 bit processor that contains both CPU and APU (audio) hardware. The addresses are 16 bit, but the data is 8.
It contains only specific registers: 2 indices, accumulator, stack pointer, program counter and status.</p>
<h4 id="ppu--ricoh-rp2c02-ntsc--rp2c07-pal">PPU : Ricoh RP2C02 (NTSC) / RP2C07 (PAL)</h4>
<p>This is what today would be called GPU.
It outputs to a 256x240 pixels buffer, it has 2kib or RAM, 32 bytes for palette RAM and 288 bytes for sprite RAM.
The PPU is tile based and it takes 8 PPU cycles to load a line of a background tile.
Sprites are sent through DMA and background is filled during Vertical Blank state normally.
A frame lasts more scanline that the one visible, so that the game can upload data to the PPU when not rendering.</p>
<h4 id="apu--ricoh-rp2a03-ntsc--rp2a07-pal-contained-in-the-cpu-itself">APU : Ricoh RP2A03 (NTSC) / RP2A07 (PAL) (Contained in the CPU itself.)</h4>
<p>The sound is analogic and it comes from 5 different channels: 2 pulse, 1 triangle, 1 noise and 1 DMC. All the channels aside from the DMC create signals that are combined to output the sounds and music.
The DMC loads samples using the DMA.</p>
<h4 id="cartridgemappers-">Cartridge/Mappers :</h4>
<p>This is a very unique topic strict to the NES as far as I know.
Cartridges had unique hardware and they were used to swap banks of memory in realtime to access different parts of the cartridge.
There are hundred of mappers that have unique behaviours!
The biggest gist of the mappers is how they switch banks: by WRITING to the address where the execution code is it triggers the bank-switching logic.
There can be internal batteries and working RAMs too, but they are very rare.</p>
<h4 id="memory-mapped-io">Memory mapped I/O</h4>
<p>The different hardware access using ‘memory mapped I/O’, that is a way of saying that when you read or write to a specific address it could be memory or it could be an hardware-component.</p>
<p>Examples: reading from address <strong>0x4016</strong> gives you the <strong>gamepad</strong> status, while reading from <strong>0x1000</strong> reads from the <strong>CPU ram</strong>.</p>
<p>Having clear these accesses will help in understanding even better the machine.</p>
<p>Both CPU and PPU have different memory maps. Let&rsquo;s see them, it will help in understanding the internal of the NES better.</p>
<h2 id="cpu-memory-map">CPU Memory Map</h2>

<figure>

  <a data-fancybox="" href="cpu_map.png" >

<img src="cpu_map.png" >
</a>

</figure>

<p>The <strong>CPU</strong> can access basically every hardware component in the NES.<!-- raw HTML omitted -->
<strong>PPU, APU, gamepads</strong>, both read and write.<!-- raw HTML omitted --></p>
<p>It reads the <strong>ROM</strong> part of a cartridge (called <strong>PRG</strong>) and executes its instructions.<!-- raw HTML omitted -->
Through <strong>PPU</strong> registers it can instruct the <strong>PPU</strong> to read graphical informations from the <strong>CHR</strong> part of the cartridge.<!-- raw HTML omitted -->
It can upload sprites on the <strong>PPU Sprite Memory</strong> through <strong>DMA</strong>, upload data to the <strong>APU</strong>, or manage its internal RAM.</p>
<p>From the source code, this is a working example of CPU Reading method:</p>
<pre tabindex="0"><code>uint8 Nes::MemoryController::CpuRead( uint16 address ) {

    if ( address &lt; 0x2000 ) {
        return cpu-&gt;ram[address &amp; 0x7FF];
    }
    else if ( address &lt; 0x4000 ) {
        return ppu-&gt;CpuRead( address );
    }
    else if ( address &lt; 0x4014 ) {
        return apu-&gt;CpuRead( address );
    }
    else if ( address &gt;= 0x4018 ) {
        return mapper-&gt;PrgRead( address );
    }

    switch ( address ) {
        case 0x4015: {
            return apu-&gt;ReadStatus();
            break;
        }

        case 0x4016: {
            return controllers-&gt;ReadState();
            break;
        }
                     
        case 0x4017: {
            return 0x40;
            break;
        }
    }

    return 0;
}
</code></pre><p>And CPU Write:</p>
<pre tabindex="0"><code>void Nes::MemoryController::CpuWrite( uint16 address, uint8 data ) {

    if ( address &lt; 0x2000 ) {
        cpu-&gt;ram[address &amp; 0x7FF] = data;
    }
    else if ( address &lt; 0x4000 ) {
        ppu-&gt;CpuWrite( address, data );
        return;
    }
    else if ( address &lt; 0x4014 ) {
        return apu-&gt;CpuWrite( address, data );
    }
    else if ( address &gt;= 0x4018 ) {
        mapper-&gt;PrgWrite( address, data );
        return;
    }

    switch ( address ) {
        // Sprite DMA
        case 0x4014: {
            cpu-&gt;ExecuteSpriteDMA( data );
            return;
            break;
        }

        case 0x4015:
        case 0x4017: {
            apu-&gt;CpuWrite( address, data );
            return;
            break;
        }

        case 0x4016: {
            controllers-&gt;WriteState( data );
            return;
            break;
        }
    }
}
</code></pre><p>The pattern is always the same: check the address of the instruction and choose which hardware component to interact with.</p>
<p>Hopefully its clear that based on the address different components can be accessed.
Let&rsquo;s have a look at the PPU too.</p>
<h2 id="ppu-memory-map">PPU Memory Map</h2>

<figure>

  <a data-fancybox="" href="ppu_map.png" >

<img src="ppu_map.png" >
</a>

</figure>

<p>Similar to the <strong>CPU</strong>, reading and writing on the <strong>PPU</strong> access different components, even though they are far less.<!-- raw HTML omitted -->
The <strong>PPU</strong> either accesses its 2 rams (<strong>palette</strong> and <strong>nametable</strong>, normally from the <strong>CPU</strong>) or reads the <strong>CHR</strong> (that is the graphical data stored in the cartridge) memory.</p>
<p>Reading:</p>
<pre tabindex="0"><code>uint8 Nes::MemoryController::PpuRead( uint16 address ) {
    
    address &amp;= 0X3FFF;

    if ( address &lt;= 0x1FFF ) {
        return mapper-&gt;ChrRead( address );
    }
    else if ( address &lt;= 0x3EFF ) {
        return ppu-&gt;nametableRam[NameTableMirroring( address, mapper-&gt;mirroring )];
    }
    else if ( address &lt;= 0x3FFF ) {
        // Palette mirroring is handled in the write code.
        return ppu-&gt;paletteRam[address &amp; 0x1F] &amp; ((ppu-&gt;mask &amp; Nes::Ppu::MaskFlag_GreyScale ? 0x30 : 0xFF));
    }
    return 0;
}

</code></pre><p>On the writing side, there the code shows the intricancy of emulation.
When writing to the paletter ram, there is a mirroring mechanism happening in the hardware that is emulated with a lookup table.
Something to look out to: <strong>writing to CHR is 99% of the time useless, unless there is an additional RAM in the cartdige</strong>.</p>
<pre tabindex="0"><code>void Nes::MemoryController::PpuWrite( uint16 address, uint8 data ) {

    address &amp;= 0X3FFF;

    if ( address &lt;= 0x1FFF ) {
        mapper-&gt;ChrWrite( address, data );
        return;
    }
    else if ( address &lt;= 0x3EFF ) {
        ppu-&gt;nametableRam[NameTableMirroring( address, mapper-&gt;mirroring )] = data;
        return;
    }
    else if ( address &lt;= 0x3FFF ) {

        static uint8 const palette_write_mirror[0x20] = { 
            0x10, 0x01, 0x02, 0x03, 0x14, 0x05, 0x06, 0x07,
            0x18, 0x09, 0x0A, 0x0B, 0x1C, 0x0D, 0x0E, 0x0F,
            0x00, 0x11, 0x12, 0x13, 0x04, 0x15, 0x16, 0x17,
            0x08, 0x19, 0x1A, 0x1B, 0x0C, 0x1D, 0x1E, 0x1F };

        ppu-&gt;paletteRam[palette_write_mirror[address &amp; 0x1F]] = data;
        return;
    }
}
</code></pre><h2 id="takeaways">Takeaways</h2>
<p>I created the <strong>memory controller</strong> as the main dispatcher of data between hardware components, to separate the duties better.
We can see the following relationships based on that:</p>
<ol>
<li>CPU can access PPU, APU, controllers and cartridge (PRG)</li>
<li>PPU can access screen, its own rams and cartridge (CHR)</li>
<li>memory controller is the hub that connects everything</li>
</ol>
<p>I am not sure this is the best emulator architecture, but that is what I figured out.</p>
<h1 id="test-roms">Test roms</h1>
<p>A fundamental approach to create a robust emulator is to have some tests to rely on.<!-- raw HTML omitted -->
Sadly it is not common for all hardware, but again the NES provide plenty of roms that tests almost every aspect of your emulator!<!-- raw HTML omitted -->
It quickly becomes a test-driven development.<!-- raw HTML omitted --></p>
<p><a href="http://wiki.nesdev.com/w/index.php/Emulator_tests">NES test roms link</a></p>
<p>Find roms, read the source code and try to understand what they are doing and why.</p>
<h1 id="coding-start">Coding start</h1>
<p>If you are writing your first emulator, I suggest to focus mostly on the emulation part.</p>
<p>What do I mean by that ?<!-- raw HTML omitted -->
Avoid trying too many things at once!<!-- raw HTML omitted -->
Focus your energies towards the emulation.<!-- raw HTML omitted -->
Use libraries that are reliable and simple and that you know.<!-- raw HTML omitted -->
GLFW, SDL2, etc are your friends here.<!-- raw HTML omitted -->
You want to eliminate most unknowns unknowns before hand.<!-- raw HTML omitted -->
Of course, if you are brave enough, you can also write an emulator in a new language.</p>
<p>But for me, I preferred to concentrate on the emulation side first, in C++, using my core library, especially knowing that I could dedicate some night-time here and there,
No surprises (not really true, still some happened!).</p>
<p>I will possibly port the emulator to use SDL if needed, but right now the emulation code is the most important.</p>
<p>This is the mantra that helped me concentrate only on the emulation code. Again, writing-wise I am not happy about the code quality. But what I am learning from different perspectives is invaluable!</p>
<h1 id="nes-coding-start">NES coding start</h1>
<p>The quintessential basic steps to start a NES emulator coding are:</p>
<ol>
<li>Write CPU basics (fetch/decode/execute loop, registers)</li>
<li>Basic memory bus (read/write to/from memory and registers)</li>
<li>Load a rom and start executing instruction step by step.</li>
</ol>
<p>It is already a lot, and it will require to read multiple times the different wiki pages and forum posts.</p>
<p>For a typical console, the main loop (simplified) can be something like this:</p>
<pre tabindex="0"><code>void CpuTick() {
    uint8_t opcode = Read(program_counter++);
    uint8_t operand = FetchOperand(opcode);
    ExecuteOpcode(opcode, operand);
}

void ExecuteFrame() {
    uint32_t cycles_per_frame = …
 
    while (cycles_per_frame — ) {
        CpuTick();
    }
}
</code></pre><p>To jumpstart your NES emulator you can use the majestic rom nestest.nes and its log file: it gives you a test of all instructions of the CPU and prints the status of the CPU after each one.</p>
<p>Also it does not require any PPU rendering: compare the status of your CPU with the text file line by line and its done!</p>
<p>You can see some ugly but useful code in <a href="https://github.com/JorenJoestar/HydraNes/blob/68d705ef400c1ab930dce0fa51c5353aa8b32396/src/main.cpp#L607">MainState::ExecuteCpuTest</a> in my emulator for an idea.</p>
<p>A line from the nestest.log file looks like this:</p>
<pre tabindex="0"><code>// C000 4C F5 C5 JMP $C5F5 A:00 X:00 Y:00 P:24 SP:FD PPU: 0, 0 CYC:7
</code></pre><p>it gives you the ProgramCounter (C000), byte code (1, 2 or 3 bytes depending on the instructions), human-readable-instruction (JMP) , the CPU register contents (A, X, Y, P, SP) and the theorethical PPU scanline, pixel and clock cycle.</p>
<p>There are two interesting points:</p>
<ol>
<li>The ProgramCounter before execution should be set to C000 for this rom only and only when logging.</li>
<li>The CPU cycles STARTS at 7. In a power-up/reset method there is some work done BEFORE executing any code. This is needed only if you want to have a precise cycle-to-cycle comparison.</li>
</ol>
<p>You can create a simple test method like this:</p>
<pre tabindex="0"><code>void TestEmulatorCPU() {
    Reset();
 
    while(true) {
        CpuTick();
        CompareCpuStatusWithLog();
    }
}
</code></pre><p>and catch the problems in your CPU instructions implementation!</p>
<h1 id="conclusion">Conclusion</h1>
<p>This is a little help in understanding how to start with an emulator.</p>
<p>It is a beautiful journey, but it is full of trial and errors.</p>
<p>I am myself far from over with my emulator, and also far from being happy on HOW I write the emulator itself.</p>
<p>There are emulators of much more complex machines out there (almost every machine you can imagine!) and it blows my mind to know there are people that can emulate such complex hardware.</p>
<p>The ideal situation would be to being able of not being lost in visual emulation of the circuitry, but for now that is out of my league.</p>
<p>I am thinking of creating some a series of videos and code associated starting from scratch, if anyone is interested.
Please leave a comment/feedback on the article, the source code, anything!</p>
<p>I hope it will help.</p>

    
    
    
      Flatbuffers, Reflection and Data-Driven Rendering
      https://jorenjoestar.github.io/post/flatbuffers_reflection_data_driven_rendering/
      Fri, 26 Jul 2019 07:37:26 -0400
      
      https://jorenjoestar.github.io/post/flatbuffers_reflection_data_driven_rendering/
      

<figure>

  <a data-fancybox="" href="front.png" >

<img src="front.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Auto generated UI from Flatbuffers files.</h4>
  
</figcaption>

</figure>

<h1 id="motivation">Motivation</h1>
<p>Finding a good balance between code and data in Rendering.<!-- raw HTML omitted -->
What is the necessary code that should be written ?<!-- raw HTML omitted -->
Why ?<!-- raw HTML omitted --></p>
<p>In rendering many areas can be described in a fast and robust way using data.<!-- raw HTML omitted -->
A <em>pipeline (in D3D12/Vulkan lingo)</em> for example is a collection of different states: <em>depth stencil, alpha blend, rasterizer, shaders</em>, etc.<!-- raw HTML omitted -->
All those state can be <em>hard-coded</em> or defined in <em>data</em>.<!-- raw HTML omitted -->
Moving them to data can help with the visibility of them, that instead of being buried somewhere into the code can be retrieved before even running the application.</p>
<p>As a bigger-scope example, a <em>frame-graph</em> can be implicitly defined inside the code, if different areas, or in data.<!-- raw HTML omitted -->
Recent posts about it started raising attention to the problem, especially after the introduction of lower-level APIs like D3D12 and Vulkan and their resource barriers.<!-- raw HTML omitted -->
I’ve personally used something like <em>json</em> (xml back in the day) since 2009, after asking myself the very silly question:<!-- raw HTML omitted --></p>
<blockquote>
<p>what is the biggest dependency in rendering?<!-- raw HTML omitted -->Render Targets!</p>
</blockquote>
<p>Since then I saw only in the Codemasters postprocess system (since Dirt 2) a similar approach, and have never being able to advocate towards it.<!-- raw HTML omitted -->
The only full use case I have is my personal indie game (a full deferred rendering pipeline with many different rendering needs) all defined in a json file (render_pipeline.json).<!-- raw HTML omitted -->
Anyway, a couple of examples of this data-driven mentality can be found here:</p>
<!-- raw HTML omitted -->
<p><a href="http://bitsquid.blogspot.com/2017/03/stingray-renderer-walkthrough-7-data.html">http://bitsquid.blogspot.com/2017/03/stingray-renderer-walkthrough-7-data.html</a></p>
<p>I chose to see what is a good way of <em>describing low-level rendering resources, the bricks towards data-driven rendering</em>.<!-- raw HTML omitted -->
I’ve already tried defining them in a json file, but wanted something more direct — something I can copy easily with minimal parsing.</p>
<p>I found 4 possible approaches:</p>
<ol>
<li>Custom data language</li>
<li>Already existing data language</li>
<li>Json (already used)</li>
<li>Hard-coding everything</li>
</ol>
<p>In this experiment I’ve chosen <strong>Flatbuffers</strong> for the easy of use, the good performances and the feature set that seems complete.<!-- raw HTML omitted -->
As an exercise, I wanted to create some UI based on the data coming from Flatbuffers without having to write too much code.</p>
<h1 id="flatbuffers">Flatbuffers</h1>
<p>Flatbuffers is a serialization library developer by Google used by many companies.</p>
<p><a href="https://google.github.io/flatbuffers/">https://google.github.io/flatbuffers/</a></p>
<p>Compared to <strong>Protocol Buffers</strong> (still developed by Google) it tries to go towards a very simple parsing/unpacking (actually ABSENT in Flatbuffers, so much faster to read/write) and serialization speed.</p>
<p>Flatbuffers is mainly a compiler that accepts .fbs (FlatBuffers Schema) files and can generate code for serialization purposes.</p>
<p>The advantage is that it automatically generates the parsing files in the language you prefer (C++, Java, C#, Go, C, Lua, Javascript, Rust) without you needing to write the always tedious serialize/deserialize methods.</p>
<p>It is largely based on either simple c-structs or tables with offsets for more complex object.</p>
<p>The objective here will be to create a schema file, define a couple of resources (like textures) and use those to automatically generate UI.<!-- raw HTML omitted -->
I will be using the SDL + ImGUI sample from the amazing ImGUI as a base.<!-- raw HTML omitted --></p>
<p>The flow will be the following:</p>
<ol>
<li>Write schema files</li>
<li>Generate reflection informations</li>
<li>Parse schemas</li>
<li>Generate UI</li>
</ol>
<h1 id="schema-files">Schema Files</h1>
<p>Let’s write our first schema file.
A bigger version (that I am using for my low-level renderer) is included in the <a href="https://github.com/JorenJoestar/FlatbuffersReflection">github</a> repository.</p>
<pre tabindex="0"><code>namespace rendering;

enum TextureFormat : ushort { UNKNOWN, R32G32B32A32_TYPELESS, R32G32B32A32_FLOAT, R32G32B32A32_UINT, R32G32B32A32_SINT, R32G32B32_TYPELESS, R32G32B32_FLOAT, R32G32B32_UINT, R32G32B32_SINT, R16G16B16A16_TYPELESS, R16G16B16A16_FLOAT, R16G16B16A16_UNORM, R16G16B16A16_UINT, R16G16B16A16_SNORM, R16G16B16A16_SINT, R32G32_TYPELESS, R32G32_FLOAT, R32G32_UINT, R32G32_SINT, R10G10B10A2_TYPELESS, R10G10B10A2_UNORM, R10G10B10A2_UINT, R11G11B10_FLOAT, R8G8B8A8_TYPELESS, R8G8B8A8_UNORM, R8G8B8A8_UNORM_SRGB, R8G8B8A8_UINT, R8G8B8A8_SNORM, R8G8B8A8_SINT, R16G16_TYPELESS, R16G16_FLOAT, R16G16_UNORM, R16G16_UINT, R16G16_SNORM, R16G16_SINT, R32_TYPELESS, R32_FLOAT, R32_UINT, R32_SINT, R8G8_TYPELESS, R8G8_UNORM, R8G8_UINT, R8G8_SNORM, R8G8_SINT, R16_TYPELESS, R16_FLOAT, R16_UNORM, R16_UINT, R16_SNORM, R16_SINT, R8_TYPELESS, R8_UNORM, R8_UINT, R8_SNORM, R8_SINT, R9G9B9E5_SHAREDEXP, D32_FLOAT_S8X24_UINT, D32_FLOAT, D24_UNORM_S8_UINT, D24_UNORM_X8_UINT, D16_UNORM, S8_UINT, BC1_TYPELESS, BC1_UNORM, BC1_UNORM_SRGB, BC2_TYPELESS, BC2_UNORM, BC2_UNORM_SRGB, BC3_TYPELESS, BC3_UNORM, BC3_UNORM_SRGB, BC4_TYPELESS, BC4_UNORM, BC4_SNORM, BC5_TYPELESS, BC5_UNORM, BC5_SNORM, B5G6R5_UNORM, B5G5R5A1_UNORM, B8G8R8A8_UNORM, B8G8R8X8_UNORM, R10G10B10_XR_BIAS_A2_UNORM, B8G8R8A8_TYPELESS, B8G8R8A8_UNORM_SRGB, B8G8R8X8_TYPELESS, B8G8R8X8_UNORM_SRGB, BC6H_TYPELESS, BC6H_UF16, BC6H_SF16, BC7_TYPELESS, BC7_UNORM, BC7_UNORM_SRGB, FORCE_UINT }

attribute &quot;ui&quot;;

struct RenderTarget {
    width                   : ushort (ui: &quot;min:1, max:16384&quot;);
    height                  : ushort;
    scale_x                 : float;
    scale_y                 : float;
    format                  : TextureFormat;
}
</code></pre><p>There are few things here to discuss.</p>
<ol>
<li>Enums. Flatbuffers can generate enums with string version of each values and conversions between enum and string.</li>
<li>Struct. It is exactly like C/C++: a simple struct that can be memcopied. Different than a Table (that can point to other structs and Tables).</li>
<li>Attributes. This can be used to define custom parsable attributes linked to a member of a struct/table. They can be used, for example, to drive the UI generation.</li>
</ol>
<h1 id="generating-reflection-informations">Generating Reflection Informations</h1>
<p>After we generated the schema file, we can serialize it and load/save it from disk.
But we need reflection data to be able to automatically generate the UI we need!
There are two main reflection mechanisms in Flatbuffers: mini-reflection and full-reflection.
We will use both to generate a UI using ImGUI and see the differences.</p>
<h2 id="mini-reflection">Mini-Reflection</h2>
<p>This is the simplest of the two and works by generating an additional header file for each .fbs file we use.
The command line is the following:</p>
<pre tabindex="0"><code>flatc --cpp RenderDefinitions.fbs --reflect-names
</code></pre><p>This will generate the <em>RenderDefinitions_Generated.h</em> file that must be included in your application and has the downside of needing you to recompile every time you change the data.</p>
<p>Also, and this is the biggest downside, I could not find any way to parse custom per-member attributes.</p>
<p>I hope I am wrong, but could not find any documentation on the topic: everything seems to point towards the full reflection mechanism.</p>
<p>So why bothering with the <strong>mini-reflection</strong> ?</p>
<p><strong>Mini-reflection</strong> generates code, and this became useful for one of the most tedious C/C++ code to write: <strong>enums</strong>!</p>
<p>I can’t count how many times I wrote an enum, I wanted the string with the same value for it (for example to read from a json file and get the proper enum value) and every time an enum is changed is painful.</p>
<p>So a lesson from the mini-reflection is to have a code-generator for enums for C/C++, and I will show an example soon in another article.</p>
<p>Back to the enums, Flatbuffers generates:</p>
<ol>
<li>Enum</li>
<li>Name array</li>
<li>Value array</li>
<li>Enum to name method</li>
</ol>
<p>A nice property of the generated code for the enum is that it is easy to copy-paste in any c++ file — no Flatbuffers involved!</p>
<p>This is my first choice now when I want to write an enum in any c++ application.</p>
<h2 id="full-reflection">Full-reflection</h2>
<p>This is the most used (or at least documented) form of reflection in Flatbuffers.</p>
<p>It use a very elegant solution, totally data-driven: <em>it reads a reflection schema file that can parse…ANY other schema</em>!</p>
<p>This very Inception-esque mechanism gives the full access to all the types, including Attributes.</p>
<p>By executing this command:</p>
<pre tabindex="0"><code>flatc.exe -b --schema reflection.fbs RenderDefinitions.fbs
</code></pre><p>the RenderDefinitions.bfbs (binary fbs) file is generated.</p>
<p>This is the file that needs to be read to fully reflect the types inside the .fbs file.
The order of operations is the following:</p>
<ol>
<li>Generate a binary fbs with flatc (with the command line shown)</li>
<li>Load the bfbs file generated</li>
<li>Load the schema from the bfbs</li>
<li>Reflect</li>
</ol>
<p>The fbfs file contains all the informations from the schema: types, enums, attributes.</p>
<h1 id="parsing-schemas-and-generating-ui">Parsing schemas and Generating UI</h1>
<p>For both reflection mechanisms the objective is the same: given a type (RenderTarget) generate an editor that can edit properties and potentially load/save them.</p>
<h2 id="mini-reflection-1">Mini-Reflection</h2>
<p>The UI generation is pretty straightforward with mini-reflection.</p>
<p>Each type defined in the .fbs file contains a type_name-TypeTable() method that gives accent to a TypeTable.</p>
<p>This contains a list of per-member type, name and default values.</p>
<p>What is really missing here is the attributes, that could be used to generate custom UI in a more specific way (eg. adding a min/max/step to a slider).</p>
<p>The code doing this is in the github sample.</p>
<p>There are few interesting points here.</p>
<h3 id="imgui-usability">ImGui usability</h3>
<p>In order to use ImGui to modify a struct, I had to create the class FlatBuffersReflectionTable to instantiate a struct with a similar layout than the Flatbuffers struct.</p>
<p>This is annoying but I could not find a way around different than this.</p>
<p>With this in-place, a ImGUI slider can point to a memory area that can be used to save/load the data.
Let’s begin by retrieving the TypeTable:</p>
<pre tabindex="0"><code>const TypeTable* rt_table = rendering::RenderTargetTypeTable();
</code></pre><p>The TypeTable is what is included in the generated header and contains the reflection informations.
Listing the members and their type is pretty straight-forward:</p>
<pre tabindex="0"><code>for ( uint32_t i = 0; i &lt; type_table.num_elems; ++i ) {
    const flatbuffers::TypeCode&amp; type_code = type_table.type_codes[i];
    ImGui::Text( &quot;%s: %s&quot;, type_table.names[i], flatbuffers::ElementaryTypeNames()[type_code.base_type] );
    sprintf_s( s_string_buffer, 128, &quot;%s&quot;, type_table.names[i] );
    
    if ( type_code.sequence_ref == 0 ) {
        if ( type_table.type_refs[type_code.sequence_ref] ) {
            const flatbuffers::TypeTable* enum_type = type_table.type_refs[type_code.sequence_ref]();
             ImGui::Combo( s_string_buffer, (int32_t*)reflection_table.GetData( i ), enum_type-&gt;names, enum_type-&gt;num_elems );
        }
    }
    else {
        switch ( type_code.base_type ) {
             case flatbuffers::ET_BOOL:
            {
                ImGui::Checkbox( s_string_buffer, (bool*)reflection_table.GetData( i ) );
                break;
            }
         }
    }
}
</code></pre><p>The interesting parts:</p>
<p><strong>flatbuffers::TypeCode</strong>* contains the reflection information for a type.</p>
<p>Given a <strong>type_code</strong>, <strong>sequence_ref</strong> can be used to check if it is an enum, pointer, or primitive type. In this case is used for enum, showing a combo with all the selectable values.</p>
<p>Base_type contains instead the primitive type. In this example a bool can be mapped to a checkbox. This uses the custom reflection_table class to have a memory area for ImGUI.</p>
<p>For mini-reflection this is basically it.</p>
<h2 id="full-reflection-1">Full-reflection</h2>
<p>Code here is longer but it follows the 4 steps highlighted before.</p>
<p>All the code is inside the ReflectUIFull method.</p>
<p>Here the binary fbs file and its corresponding schema are loaded.</p>
<pre tabindex="0"><code>// 1. Obtain the schema from the binary fbs generated
std::string bfbsfile;    
flatbuffers::LoadFile(&quot;..\\data\\RenderDefinitions.bfbs&quot;, true, &amp;bfbsfile );     
const reflection::Schema&amp; schema = *reflection::GetSchema( bfbsfile.c_str() );
</code></pre><p>The schema can be used to list the types:</p>
<pre tabindex="0"><code>// 2. List all the types present in the fbs.    
auto types = schema.objects();    
for ( size_t i = 0; i &lt; types-&gt;Length(); i++ ) {        
   const reflection::Object* type = types-&gt;Get( i );
   ImGui::Text( &quot;    %s&quot;, type-&gt;name()-&gt;c_str() );    
}
</code></pre><p>(Using the auto here because I am lazy. The type is some multiple templates of offsets…)
We can also list all the enums:</p>
<pre tabindex="0"><code>auto enums = schema.enums();    
for ( size_t i = 0; i &lt; enums-&gt;Length(); i++ ) {        
    const reflection::Enum* enum_ = enums-&gt;Get( i );
    ImGui::Text( &quot;    %s&quot;, enum_-&gt;name()-&gt;c_str() );    
}
</code></pre><p>A problem I found (with a workaround in the code) is that enums do not have an easily to access array of string values.</p>
<p>So I generated one for the sake of example, but I am far from happy with the solution!</p>
<p>Going forward, we can get the type we want to reflect (notice the full namespace.type):</p>
<pre tabindex="0"><code>auto render_target_type = types-&gt;LookupByKey( &quot;rendering.RenderTarget&quot; );
and begin the work on each field:
auto fields = render_target_type-&gt;fields();    
if ( fields ) {
    // 5.1. List all the fields        
    for ( size_t i = 0; i &lt; fields-&gt;Length(); i++ ) {
            auto field = fields-&gt;Get( i );
            ...

</code></pre><p>and the UI can be generated.</p>
<p>For each field, the primitive type can be accessed with the following:</p>
<pre tabindex="0"><code>reflection::BaseType field_base_type = field-&gt;type()-&gt;base_type();
</code></pre><p>and again, I found a workaround to know if a type is primitive or an enum.</p>
<p>Last piece of the puzzle: attributes!</p>
<pre tabindex="0"><code>auto field_attributes = field-&gt;attributes();
if ( field_attributes ) {
    auto ui = field_attributes-&gt;LookupByKey( &quot;ui&quot; );
    if ( ui ) {
      ImGui::Text(&quot;UI attribute: %s&quot;, ui-&gt;value()-&gt;c_str());
    }
}
</code></pre><p>These can be parsed as strings and can be used to drive UI code (like a slider with min, max and steps).</p>
<h1 id="conclusions">Conclusions</h1>
<p>In the end, I’ve managed to generate UI based on a type without too much code.</p>
<p>There was some reverse-engineering to do because I could not find proper documentation (I possibly miss some links to a in-depth example of reflection!) but nothing major.</p>
<p>The full source code:</p>
<p>(<a href="https://github.com/JorenJoestar/FlatbuffersReflection">https://github.com/JorenJoestar/FlatbuffersReflection</a>)</p>

    
    
    
      Releasing NES Emulator Source
      https://jorenjoestar.github.io/post/releasing_nes_emulator_source/
      Tue, 23 Jul 2019 02:04:50 -0400
      
      https://jorenjoestar.github.io/post/releasing_nes_emulator_source/
      

<figure>

  <a data-fancybox="" href="ZeldaNESEmulated.png" >

<img src="ZeldaNESEmulated.png" >
</a>

<figcaption data-pre="Figure " data-post=":" >
  <h4>Legend of Zelda emulated plus debugging windows.</h4>
  
</figcaption>

</figure>

<p>Hello everyone!</p>
<p>Today I release the source code of my bare-bone NES emulator, written in C++.</p>
<p>I had the idea to write an emulator of one of my favorite console (after the SNES) years ago, and started in 2015 to write the first code (actually in 2008, but it was too daunting even to start).
Then I concentrated on my other big project (still ongoing) and left all the NES code on a side.
Years passed and finally last winter I decided to give it a go to arrive at a ‘usable’ emulator level and release the source code.</p>
<p>Here it is!
(<a href="https://github.com/JorenJoestar/HydraNes">https://github.com/JorenJoestar/HydraNes</a>)</p>
<h2 id="motivation">Motivation</h2>
<p>Main motivation both to write and to share this code is <em>knowledge</em>.</p>
<p>I shamelessly wrote bad code just with the purpose of seeing something on screen as fast as I could.
And I am very honest about that: not happy for the form, but happy for the knowledge I gained!
Also, I think that this code is compact enough to be followed and to understand the basics of NES emulation coding.</p>
<h2 id="the-code">The code</h2>
<p>The <strong>NES code</strong> lives in the Nes.h/.cpp pair of files.
The <strong>APU</strong> is implemented using <strong>Blargg’s implementation</strong>: when I’ll have other time I will attemp to finish my own implementation, but for now it is ok like that.</p>
<p>The flow is the following:</p>
<ul>
<li>NES is initialized</li>
<li>After loading a rom (from the Cartridge window) the mapper will be selected and memory copied to local buffers.</li>
<li>CPU starts its continuous emulation.</li>
<li>CPU will execute until a frame is produced. This is checked by the PPU frame changing.</li>
<li>PPU execution is bound to memory accesses, both read and write.</li>
<li>Each CPU memory access corresponds to 3 PPU cycles (in NTSC, the only region emulated).</li>
<li>After the frame is ended the APU emulation is advanced.</li>
</ul>
<h2 id="interesting-spots">Interesting spots</h2>
<p>There are different areas of the code that are interesting, but I would like to highlight some.</p>
<h3 id="cpustep">Cpu::Step()</h3>
<p>This is where all the <strong>CPU</strong> instructions are executed. I opted for a macro based approach instead of tables of function pointers.</p>
<p>For each cpu cycle:</p>
<ul>
<li>Fetch the instruction opcode</li>
<li>Calculate the operand address (called ‘effectiveAddress’)</li>
<li>Execute the operation</li>
</ul>
<p>All the operations and addressing modes are in the Nes.h file.
<em>Addressing modes</em> are the way the NES gets its operand for each operation.
Operations are the instruction themselves — using those operands.</p>
<h3 id="ppustep">Ppu::Step()</h3>
<p>PPU by itself is the most difficult part to emulate (APU is easier on the channels, but harder on the mix and signal generation!).</p>
<p>I will make a post about that soon, but in the meantime here the code is and implements the behaviours described here:</p>
<p><a href="https://wiki.nesdev.com/w/index.php/File:Ntsc_timing.png">https://wiki.nesdev.com/w/index.php/File:Ntsc_timing.png</a></p>
<p>The <strong>PPU</strong> draws in tiles of <strong>8x8 pixels</strong>, so for each pixels created on the screen there will be a gathering of all the data necessary to calculate the final color.</p>
<p>The rendering is divided in <strong>background</strong> and <strong>sprites</strong>.</p>
<p>Background is just <strong>8x8 pixel per tile</strong> choosen from the <strong>nametable</strong> (a screen table of which tiles are visible) and <strong>sprites</strong> are either 8x8 or 8x16 rectangles coming from a different memory area (uploaded using <strong>DMA</strong>).</p>
<p>There are many quirks and uniqueness about the <strong>PPU</strong>, like the <strong>pattern table</strong> (a 16x16 grid storing the higher 2 bits of all the underlying background pixels), or the vertical blank period, or the open bus.</p>
<h3 id="ppudrawpixel">Ppu::DrawPixel()</h3>
<p>The color of a pixel comes from one of the 16 entries of the <strong>palette VRAM</strong>, and to do so 4 bits must be calculated for background and for sprites.</p>
<p>For background tiles, 2 pixels comes from the ‘texture’ (<strong>CHR-ROM</strong>) and 2 from the attribute table.
<!-- raw HTML omitted -->Sprites contains all those informations together.</p>
<p>The output is a silly <em>SSBO</em> that contains RGBA colors to be used in a compute shader that outputs to the screen.</p>
<h3 id="cpureadwrite-ppureadwrite">CpuRead/Write, PpuRead/Write</h3>
<p>All those methods are essential because the NES uses memory mapping i/o to access the different hardware.</p>
<p>For example the <strong>PPU</strong> access the cartridge through the mapper in the memory controller to read drawing informations, the <strong>CPU</strong> writes to the <strong>PPU</strong> using address $2007, etc.</p>
<h2 id="ending-notes">Ending notes</h2>
<p>I will prepare more detailed posts about the <strong>NES architecture and emulation</strong>, even though there are still some concepts that are not clear to me and require a deeper investigation.</p>
<p>So far this is the most <em>satisfactory</em> personal project I’ve done, and one of the few that arrived at a usable level.</p>
<p>In the future I want to improve this emulator and use the knowledge to explore the writing of a SNES emulator!</p>
<p>Any question or comment please let me know!</p>
<p>Gabriel</p>
