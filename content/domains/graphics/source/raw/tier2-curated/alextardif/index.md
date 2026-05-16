---
source_url: https://alextardif.com/BindlessProgramming.html
source_id: alextardif-bindless
fetched_at: 2026-05-16T17:31:49.028483+00:00
fetcher: html_mirror
sha256: ab6f8c09f8429de0dc985579cc4137f7ef3e4030a38e6dd4ccbfcfce72a16d3d
---

Alex Tardif: Graphics Programmer





















	

 
	


	
		
		
			
				
					
						

## Bindless Oriented Graphics Programming

						


                          
  

						

### Overview

                        In this post I begin by covering GPU-driven rendering at a high level before diving into bindless as an accessible gateway to powerful GPU-driven rendering techniques, and how to achieve this pragmatically with low code complexity and mental overhead while reaping the lion's share of the gains. 
                        Nothing I present is novel, but my hope is that my approach to bindless may connect with you if you have not yet made the leap.
                          
  
  
  

                        

### GPU Driven Rendering

                        Stop me if you've seen or written this sort of thing before. Maybe not exactly like this, but similar:
                          
  


```
for(Draw& drawData : allDrawsForThisRenderPass)
{
    context.BindVertexAndIndexBuffers(drawData.geometry);
    context.WriteConstants(drawData.constants);
    context.BindConstantBuffer(drawData.constantBuffer);
    context.BindTextures(drawData.textures);
    context.Draw();
}
```


                          

                        If you've played with graphics for a bit, you may have discovered that there are scales that cannot be achieved with this loop at high framerates. Although there are endless "it depends" that asterisk this, generally I'd place previous-generation renderers with this loop as being capable of individual draw calls in the thousands or low tens of thousands, 
                        and needing to resort to complex and even costly techniques to keep those counts low in scenes with many more entities.
                          
  

                        Sure, you can build a bunch of command contexts to split this into jobs, tools that (properly) arrived with modern graphics APIs. This can be cumbersome in practice though, as there are challenges in working with graphics APIs that complicate how exactly you go about doing it, and that's on top of adding multithreading to the equation.
                          
  

                        I'm not about to lecture at length the benefits of GPU-driven rendering, as it has been the subject of many of the most prolific advancements in game graphics of the last decade or more, with presentations and posts by the best in the industry. Here are some of my favorites:
                          
  

                        "GPU-Driven Rendering Pipelines" 2015 by Ulrich Haar, Sebastian Aaltonen  

                        [https://advances.realtimerendering.com/s2015/aaltonenhaar_siggraph2015_combined_final_footer_220dpi.pdf](https://advances.realtimerendering.com/s2015/aaltonenhaar_siggraph2015_combined_final_footer_220dpi.pdf)
                          
  

                        "A Deferred Material Rendering System" 2015 by Tomasz Stachowiak   

                        [https://h3.gd/a-deferred-material-rendering-system/](https://h3.gd/a-deferred-material-rendering-system/)
                          
  

                        "Optimizing the Graphics Pipeline With Compute" 2016 by Graham Wihlidal  

                        [https://www.gdcvault.com/play/1023109/Optimizing-the-Graphics-Pipeline-With](https://www.gdcvault.com/play/1023109/Optimizing-the-Graphics-Pipeline-With)
                          
  

                        "Bindless Texturing for Deferred Rendering and Decals" 2016 by Matt Pettineo  

                        [https://therealmjp.github.io/posts/bindless-texturing-for-deferred-rendering-and-decals/](https://therealmjp.github.io/posts/bindless-texturing-for-deferred-rendering-and-decals/)
                          
  

                        "Experiments in GPU-based Occlusion Culling" 2017 by Kostas Anagnostou  

                        [https://interplayoflight.wordpress.com/2017/11/15/experiments-in-gpu-based-occlusion-culling](https://interplayoflight.wordpress.com/2017/11/15/experiments-in-gpu-based-occlusion-culling/)
                          
  

                        "Nanite, A Deep Dive" 2021 by Brian Karis, Rune Stubbe, Graham Wihlidal  

                        [https://advances.realtimerendering.com/s2021/Karis_Nanite_SIGGRAPH_Advances_2021_final.pdf](https://advances.realtimerendering.com/s2021/Karis_Nanite_SIGGRAPH_Advances_2021_final.pdf)
                          
  

                        "Visibility Buffer Rendering with Material Graphs" 2021 by John Hable  

                        [http://filmicworlds.com/blog/visibility-buffer-rendering-with-material-graphs/](http://filmicworlds.com/blog/visibility-buffer-rendering-with-material-graphs/)
                          
  

                        In its foundational form: rather than recording your draws on the CPU, you instead build a buffer of draw call commands on the GPU, formatted to the specification of the API. To see an example of that format, take a look at D3D12:
                        [https://learn.microsoft.com/en-us/windows/win32/direct3d12/indirect-drawing](https://learn.microsoft.com/en-us/windows/win32/direct3d12/indirect-drawing)
                          
  
You may notice that far more than just issuing a draw call can be achieved through this interface, I'll come back to that. 
                          
  

                        This GPU generation of draws alleviates not only a significant bottleneck from the CPU (recording the above loop) but likely also avoiding the need to introduce more complexity to reach performance targets, making host-side rendering code simpler while also providing all the bones required to introduce GPU culling. Faster *and* easier to work with is rare! There's a catch, though. 
                          
  

                        Because really, it wasn't exactly straightforward to get working. The previous-generation requirements of GPU-driven rendering actually came with quite a bit of its own complexity, at least if you didn't want to issue a separate indirect instanced draw call for each combination of mesh/material, limiting the benefits. 
                        Let's look back at the loop and see what having an instance ID and/or draw ID lets us eliminate from the loop:
                          
  


```

BindGlobalBufferOfConstants();

for(Draw& drawData : allDrawsForThisRenderPass)
{
    context.BindVertexAndIndexBuffers(drawData.geometry);
    context.WriteConstants(drawData.constants);
    context.BindConstantBuffer(drawData.constantBuffer);
    context.BindTextures(drawData.textures);
    context.Draw();
}
```


                          

                        If we know the ID of all possible instances, then we can put their constants in a global buffer that we read from by Draw ID (or some constant ID). It's probably a StructuredBuffer or a ByteAddressBuffer, and we can index into it like this (in this case, ByteAddressBuffer style):
                          
  


```
MyConstants constantsForThisDraw = myBuffer.Load<MyConstants>(drawID * sizeof(MyConstants));
```


                          

                        Alright, we took care of constants, and we're left with textures and geometry. If we want to be able to index textures dynamically (though uniform at the per-draw level), we could potentially use a big texture array, but then that means we have format/size/array limit constraints to deal with. Doable, but far from ideal. 
                        What others have done instead is implement Virtual Texturing, where pages of texture data are streamed in and out of memory into large texture resources that are bound once for all draws. 
                          
  

                        Virtual texturing offers some additional advantages that I won't go into here, but of course it also adds a meaningful amount of code and data complexity in exchange to facilitate its existence. It is hopefully not a surprising thing to say that there are people who would rather avoid having to implement and maintain such a system for general purpose rendering, but for now let's return to the loop:
                          
  


```

BindGlobalBufferOfConstants();
BindGlobalVirtualTextures();

for(Draw& drawData : allDrawsForThisRenderPass)
{
    context.BindVertexAndIndexBuffers(drawData.geometry);
    context.BindTextures(drawData.textures);
    context.Draw();
}
```


                          

                        Lastly, we have the geometry, which is generally solved by having a giant megabuffer for vertices and another for indices that contain all necessary geometry. While on the surface this might seem trivial, considerations are required for how to handle, for example, 16-bit vs 32-bit indices, and potentially a wide variety of vertex formats. 
                        It may also make decisions around asynchronous uploads more painful depending on the platform (like when it's safe to schedule and sync), and also around handling of procedurally generated geometry.
                          
  

                        If we were to do this though, we would complete the necessary requirements to fully "unlock" GPU driven rendering, as now the only changes between draws is the pipeline state object, which become the "buckets" with which draws are filtered. We can refactor the loop.
                          
  


```
BindGlobalBufferOfConstants();
BindGlobalVirtualTextures();
BindGlobalVertexAndIndexBuffers();

for(Pipeline& pipeline : allPipelinesToDraw)
{
    context.DrawIndirect(pipeline.pso, pipeline.drawBuffer, pipeline.drawBufferOffset);
}
```


                          

                        The once very hot CPU loop is now bounded only by the number of pipelines, and so requires very little work to be done at all. This is a good reminder that keeping PSO count low can mean a big difference if your goal is high performance.
                          
  

                        From here, compute shaders can take over by running culling passes with the strengths of GPU parallelism and binning draws into indirect draw buffers. Achieving this GPU driven rendering unlocks new degrees of freedom in how much can be thrown at the GPU while also providing significant performance improvements- orders of magnitude more. 
                        The work to reach it that I hand-waved above can be quite a mountain to climb though, performance coming at the cost of non-trivial amounts of complexity.
                          
  

                        So then, is there a middle-ground where I can still have high performance at massive scales, while feeling like it's easily maintainable? Yes!
                          
  
  
  

                        

### Bindless to the Rescue

                        Modern "bindless" rendering - the act of arbitrarily accessing GPU resources in shaders from large tables of descriptors (or even from the descriptor heap itself) - is the most important advancement to graphics APIs delivered in the last decade. Many people have beaten this drum but I think it's still an underestimated and transformative way to work when fully embraced, when platform support is available of course. 
                        For example, DirectX 12 "Ultimate" compliance guarantees it is supported.
                          
  

                        If bindless is new to you, check out some links to get an idea first:
                          
  

                        "Using Bindless Resources with DirectX Raytracing" by Matt Pettineo from Raytracing Gems 2  

                        [https://therealmjp.github.io/posts/rtg2-bindless/](https://therealmjp.github.io/posts/rtg2-bindless/)  

                        [https://www.realtimerendering.com/raytracinggems/rtg2/index.html](https://www.realtimerendering.com/raytracinggems/rtg2/index.html)
                          
  

                        "Bindless Rendering" series by Darius Bouma  

                        [https://blog.traverseresearch.nl/bindless-rendering-setup-afeb678d77fc](https://blog.traverseresearch.nl/bindless-rendering-setup-afeb678d77fc)
                          
  

                        "Bindless Descriptors" by János Turánszki  

                        [https://wickedengine.net/2021/04/bindless-descriptors/](https://wickedengine.net/2021/04/bindless-descriptors/)
                          
  

                        "Binding Bindlessly" by me, though written before Shader Model 6.6 style bindless existed  

                        [https://alextardif.com/Bindless.html](https://alextardif.com/Bindless.html)
                          
  

                        Specification for SM 6.6 Dynamic Resources (bindless)  

                        [https://microsoft.github.io/DirectX-Specs/d3d/HLSL_SM_6_6_DynamicResources.html](https://microsoft.github.io/DirectX-Specs/d3d/HLSL_SM_6_6_DynamicResources.html)
                          
  

                        GPU driven rendering can be achieved with far less effort and code with bindless. Instead of virtual texturing and mega-geometry being a borderline necessity, we can simply store individual resources in an array/table of resource views, and access them by indexing into those tables (or directly to the descriptor heap) with constants, which can also be accessed bindlessly. 
                        These tables can be implemented as simply as a free-list of descriptors, and likely with frame-buffered heaps to be able to update them easily frame-to-frame as resources are streamed. As shown in the links above, it's altogether not much work to get up and running compared to the alternative, and we'll see soon how this allows for simply-written systems. 
                          
  

                        The component of GPU-driven rendering that bindless doesn't implicitly solve is binding index buffers which are essential for performance, but it is however an excellent tool for facilitating that. 
                          
  

                        One option is to simply use mesh shaders, where the traditional bound index buffer is not a part of the equation at all. For this, bindless can be used to access geometry resources indirectly as long as you know the descriptor indices of the buffers you want to access (via constants for example), and there's no need to keep all of those resources in a megabuffer if you don't want to. 
                          

                        [https://microsoft.github.io/DirectX-Specs/d3d/MeshShader.html](https://microsoft.github.io/DirectX-Specs/d3d/MeshShader.html)
                          
  

                        If you're reading this though, I'll assume you're coming from a traditional pipeline and/or aren't yet interested in tackling the switch to mesh shaders. In this case DX12's ExecuteIndirect, Vulkan's Device-Generated Commands, or something like these, is needed. 
                        With a simplified bindless workflow, ExecuteIndirect's rebinding feature for index buffers can be utilized to swap those resources between draws as needed.
                          
  

                        For DX12, this involves making use of D3D12_INDIRECT_ARGUMENT_TYPE_INDEX_BUFFER_VIEW in the command signature, and writing the index buffer view from a compute shader along with the indirect draw. If the documentation I linked earlier is confusing 
                        (here is the link again: [https://learn.microsoft.com/en-us/windows/win32/direct3d12/indirect-drawing](https://learn.microsoft.com/en-us/windows/win32/direct3d12/indirect-drawing))
                        I'll try my own explanation here:
                          
  

                        In the section titled "Indirect Argument Buffer Structures," structures that are not used by the API are provided regardless, for the purpose of you or I to be able to mimic the layout required by D3D from a compute shader. In this case, the relevant arguments are D3D12_DRAW_INDEXED_ARGUMENTS, D3D12_INDEX_BUFFER_VIEW, and plain old root constants which are shown by example 
                        in the section towards the bottom titled "Root Constants and Vertex Buffers". These are filled out in a command signature via D3D12_INDIRECT_ARGUMENT_DESC, which is a union of the different options.   

                        [https://learn.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_indirect_argument_desc](https://learn.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_indirect_argument_desc)
                          
  

                        If we match root constants (no additional arguments required), the index buffer view ([https://learn.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_index_buffer_view](https://learn.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_index_buffer_view)), 
                        and the indexed draw arguments ([https://learn.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_draw_indexed_arguments](https://learn.microsoft.com/en-us/windows/win32/api/d3d12/ns-d3d12-d3d12_draw_indexed_arguments)), we would have an HLSL struct that looks something like this:
                          
  


```
struct MyCustomDrawArguments
{
    //Matches root constants. These let us indirectly access all the data we need for the draw via bindless
    uint instanceDataID;
    uint materialDataID;
    
    //Matches D3D12_INDEX_BUFFER_VIEW 
    uint64_t indexBufferLocation; //D3D12_GPU_VIRTUAL_ADDRESS, uint64_t available in SM 6.0+
    uint     indexBufferSizeInBytes;
    uint     indexBufferFormat;
    
    //Matches D3D12_DRAW_INDEXED_ARGUMENTS
    uint indexCountPerInstance;
    uint instanceCount;
    uint startIndexLocation;
    int  baseVertexLocation;
    uint startInstanceLocation;
};
```


                          

                        We would keep a buffer of these sized to the worst case draw count budget. On the CPU side, we would fill out a matching argument description and command signature like this:
                          
  


```
D3D12_INDIRECT_ARGUMENT_DESC indirectArguments[3] = {};
indirectArguments[0].Type = D3D12_INDIRECT_ARGUMENT_TYPE_CONSTANT;
indirectArguments[0].Constant.RootParameterIndex = 0;  // Match this with the root signature
indirectArguments[0].Constant.DestOffsetIn32BitValues = 0;
indirectArguments[0].Constant.Num32BitValuesToSet = 2; // My example uses 2 root constants
indirectArguments[1].Type = D3D12_INDIRECT_ARGUMENT_TYPE_INDEX_BUFFER_VIEW;
indirectArguments[2].Type = D3D12_INDIRECT_ARGUMENT_TYPE_DRAW_INDEXED;

D3D12_COMMAND_SIGNATURE_DESC commandSignatureDesc = {};
commandSignatureDesc.ByteStride = sizeof(MyCustomDrawArguments);
commandSignatureDesc.NumArgumentDescs = 3;
commandSignatureDesc.pArgumentDescs = indirectArguments;
```


                          

                        We would then have a compute shader that consumes a buffer of draw metadata to decide what to draw, and we don't want to fill that buffer in an O(N) loop each frame or we'd be defeating the point. Instead we can suballocate our potential draws out of that large buffer using an allocator (and flag them as valid). 
                        The compute shader can then skip considering invalid draws. This means a compute dispatch might skip over a number of invalid draw IDs, and while this can be improved as a later optimization, this is a very fast operation and you can have pre-cull draw counts in the hundreds of thousands being scanned like this before you would notice it become meaningful in a GPU profiler. 
                        It's almost like a compute particle shader, we can lean into the GPU here.
                          
  


```

//HLSL
StructuredBuffer<Draw> DrawDataBuffer;
StructuredBuffer<Instance> InstanceDataBuffer;
StructuredBuffer<Material> MaterialDataBuffer;

//Compute shader can consume this to generate draw arguments
struct Draw
{
    //passed as push constants with the indirect draw call
    uint instanceID; //lookup in InstanceDataBuffer
    uint materialID; //lookup in MaterialDataBuffer
    
    //lookup further args like index buffer view
    uint drawArgsID;

    //flags to consider for drawing/culling/etc
    uint flags;
};

//This can be used for culling, and later during shading for grabbing vertices, etc
struct Instance
{
    float4x4 transform;
    uint4 vertexBufferIndices; //lookup in the descriptor heap
    AABB bounds; 
};

//Used during shading
struct Material
{
    uint baseTextureIndex; //lookup in the descriptor heap
    uint normalsTextureIndex; 
    //etc, various material properties
};
```


                          

                        In those same compute shaders we can use indirection and bindless to look up any data we need to perform culling, compact the valid draws together, and then write them out to a buffer resource of MyCustomDrawArguments, and the final draw count(s) to a count buffer. I've skipped pseudo-coding this part as this is covered multiple times over in the links I've provided - Kostas's article is an example. 
                        It might sound intimidating at first but it's genuinely altogether not much code. If you get stuck, I recommend writing debug data to a buffer that you read back on the CPU to see what's happening, such as draw ID, whether it passed culling, and if it was actually written to the draw buffer. 
                          
  

                        By the end of these steps, you will have a functional GPU-driven pipeline capable of supporting draw counts that rival many big games that ship today, with minimal investment required to get there compared to the alternatives. If you later want to go full Nanite or something to advance it further you can, but my goal here is bang-for-buck with your time investment. 
                          
  

                        Some vendors would not recommend using these features of ExecuteIndirect due to performance issues caused by changing bindings during command processing, but I've already worked with it first-hand at high framerates on 6+ year old desktop hardware and current-generation consoles, so it is absolutely possible to run well with it today. 
                        It is also maybe not well known that Halo Infinite shipped 60fps+ while (ab)using ExecuteIndirect's rebinding feature. I deeply appreciate the people who paved the way to make this viable to begin with; the things that we can take for granted today were enabled cross-platform by extraordinary developers. There is interesting history here:   

                        [https://www.supergoodcode.com/device-generated-commands/](https://www.supergoodcode.com/device-generated-commands/) Anyone looking for Vulkan here, this is a great place to start.  

                        [https://docs.vulkan.org/refpages/latest/refpages/source/VK_EXT_device_generated_commands.html](https://docs.vulkan.org/refpages/latest/refpages/source/VK_EXT_device_generated_commands.html)  

                        [https://www.basnieuwenhuizen.nl/a-driver-on-the-gpu/](https://www.basnieuwenhuizen.nl/a-driver-on-the-gpu/)  

                        [https://rg3.name/202409270942.html](https://rg3.name/202409270942.html)
                          
  

                        In a post-workgraph world, I don't know how much attention and performance improvement ExecuteIndirect/DGC will see going forward, but it's in my top 5 because the workflow is excellent.
                          
  
  
  

                        

### Rethinking Rendering

                        Bindless design isn't just about how we access resources in shaders though. It can also enable simpler ways of working when designing entire renderers. When all resources can be accessed by integer IDs, new doors open.
                          
  

                        How might those bindless draws be constructed, for example? What is it that we actually need in a bindless, GPU driven pipeline? As we saw above, the answer is draw-call arguments, the ones we usually gather in a visitor-style O(N) loop like the one at the beginning, probably writing constants to some intermediate buffer as we go.
                          
  

                        Given that we know the resources we need on a drawable object, and they can all now be referenced by ID constants on the GPU, then as long as we can provide an ID for each unique resource up-front (trivial), we could allocate/free draw calls out of a global "draw buffer" as an entity is created and destroyed, in an event-driven way:
                          
  


```
void CreateDrawable(uint ID, GeometryID geometry, MaterialID material, etc)
{
    Drawable& drawable = DrawMap.insert(ID); //some way of mapping entity ID to draws for later
    drawable.drawID = DrawDataBuffer.AllocateDraw(); //keep ID for pushing updates

    //queues an event in a buffer to set Draw constants in VRAM via compute shader
    //...or just write via ReBAR if available, whatever you want
    TransactionHandler.CreateDraw(drawable.drawID, geometry, material, etc);
}

void UpdateMaterial(DrawID drawID, MaterialID material)
{
    //queues an event in a buffer to be processed by a compute shader to modify the draw's material
    //...or just write to that data via ReBAR if available, whatever you want
    TransactionHandler.UpdateMaterial(drawable.drawID, material); 
}

```


                          

                        I'm glossing over general resource loading, but this is pretty much the holy grail of draw management to me - doing the minimum work required on the CPU to set up some draws, and no per-frame scanning or hot loop involved. The compute shaders that manage the draw data, run culling, and ultimately compact draws into buffers for indirect can handle the rest in a highly parallel fashion. 
                          
  

                        To me the most natural analogy is database programming. All the important data sits in big (budgeted!) buffers and descriptor heaps on the GPU as if they were tables in a SQL database linked by foreign keys (IDs), allowing indirect access to virtually any data from any shader as long as the connections exist. Events on the CPU push transactions to those tables as needed (update properties, streaming, etc), and the procedures (compute shaders) execute those transactions.
                          
  

                        Boring ending, right? For as long as I've worked in graphics, I've sought ways to simplify the bits that sit between the engine and a shader, especially as it necessarily expanded with each generation and new technology. With modern bindless rendering, I feel empowered to simplify to a degree I can be satisfied, and for me that's a bunch of interconnected arrays, shaders that operate on them, and a renderer that acts as a simple translation layer.
                        This minimizes surface area of the renderer (and API abstractions), removes some mental overhead, and reduces opportunities for bugs. Further, every rendering goal to be solved from then on can begin with the assumption that any GPU accessible data can be trivially accessed, leaving more time for doing the work rather than worrying about the boilerplate apparatus. 
                          
  

                        Thank you for taking the time to read this, I hope it has been helpful to you in some way!
                          
  
  
  

                        

### Bonus Section: Bindless Tips

                        If you haven't used bindless before, here are some suggestions and guard rails for implementation as you get started:   
  

                        Only use bindless for read-only resources like geometry and textures. You can create resources in their read-only state without having to worry about tracking resource state for bindless access afterwards. The validation layer is great at catching mistakes with barriers and read-write access with explicitly bound resources, it's helpful to lean into that until you have a good reason not to.  
  

                        Whether you use bindless descriptor tables or index into the descriptor heap, set clear bounds for where your bindless resources exist to help you validate access yourself, both on the CPU and in shaders. I recommend having separate sections for where buffers and textures live to further validate.  
  

                        Fill any unused descriptor in your bindless heap with error resources (error texture, error buffer). This way you won't eat a GPU crash/hang when you make a mistake, and it will be easy to see errors in your renderer and in graphics debuggers from recognizable error resources.  
  

                        If you dynamically stream resources, frame-buffer your bindless descriptors so that you can write changes to descriptors at specific indices while the GPU is using those from the previous frame. It's a little more work to also buffer the changes to update each frame's descriptors, but it's worth it.  
  

                        Consider how much easier texture replacement is with bindless, through streaming or otherwise. All you have to do is replace the descriptor at the associated index, and everything will just work automatically.
                          
  

						
					
				
			
		
		
		
			
				
					
						
							

## Contact

                            
							

								
- alexdtardif@gmail.com
								
- [LinkedIn](http://www.linkedin.com/pub/alex-tardif/28/a62/4a2)
