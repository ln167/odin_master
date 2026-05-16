---
source_url: https://jorenjoestar.github.io/post/year_of_the_vulkan_book
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:31:50.697070+00:00
fetcher: html_mirror
sha256: 8678e9e030ba92a159a70b8d4158a410e443102292f1299d3526c3073c5564e4
---

The Year of the Vulkan Book | Gabriel's Virtual Tavern

  

  

  

  

  
  
    
  

  

# The Year of the Vulkan Book

  

  

  
  

  
  
    
    
      
    
    2023-02-07
  
  

  

  
  
  
    15 min read
  
  

  
  
  

  
  
  
  
    **
    [publishing](/categories/publishing/)
  

  
    

  

    
      
      
      
        
      
      
      
      
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
      
    
  

  

  

  
    
    Book cover
  

  

    
      

Hello everyone! How have you been ?  

A little more than a year has passed since my last post, but for a good reason!  

Last year was all dedicated to writing this book, **Mastering Graphics Programming with Vulkan**, available in different countries on Amazon [US](https://www.amazon.com/Mastering-Graphics-Programming-Vulkan-state/dp/1803244798),[UK](https://www.amazon.co.uk/Mastering-Graphics-Programming-Vulkan-state/dp/1803244798),[India](https://www.amazon.in/Mastering-Graphics-Programming-Vulkan-state/dp/1803244798),[Italy](https://www.amazon.it/Mastering-Graphics-Programming-Vulkan-state/dp/1803244798) and many more, with [Marco Castorina](https://twitter.com/marco_castorina).  

All my coding free time went into the writing of this book with him, and this post is a little recap of what happened behind the scenes and my experience of writing a book for the first time!

# How it started

It all started thanks to this blog!  

At the end of 2021 Marco wrote to me if I was interested to collaborate, in any form we would agree, on writing a book about Vulkan.  

Thanks to the articles I wrote here and the code on Github he wanted to know if I could help.  

We jumped on a Skype call and talked: since the beginning there was a good feeling talking to him. My gut instict was right!  

He asked me in which way I wanted to help him, including being a co-author…and me being me, I thought “I’ve never wrote a book, this could be an amazing experience!”.  

So we agreed that we will write the book together, and from there he introduced me to the team at Packt and we started discussing about the topics.  

One thing we really wanted to do is to dedicate time learning topics that we did not have time to study, and that was a huge risk but also a great reward.

After some talking with Packt, we agreed on a 9 months writing time: a tight schedule, but we felt we could make it working together with Marco.  

We succedeed, albeit not to the level we wanted, but it was a huge learning experience for both of us (I am pretty sure is the same for Marco).  

In this case I measure success as a combination of effort, learning new things, delivering and enjoyment of the process.  

As you will see later on in this post, this book is far from perfect and make me question a better way of delivering the rendering knowledge we wanted to share.

## The purpose of the book

Since the beginning we had clear in mind that we needed to show how to use Vulkan in a real, modern and AAA rendering context.  

Both Marco and me work in the industry, and we decided to try to create a package that included the latest rendering tech that you would find in a AAA renderer.
We knew we could not possibly deliver a bulletproof technology written in few months writing code after work, but at least we could give some pointers to what is used right now.  

We also wanted to demistify Vulkan and show it in a practical full-blown demo. In this sense, after reading some reviews, I think we did not hit the mark - many complains are that we used a reincarnation of the Hydra engine, stripped down to accomodate a Vulkan only mindset.  

We will talk about that later.

At the end, if I can simplify everything in one phrase, it would be:

Demistification of Vulkan as an API and its application to modern rendering techniques

## Choosing the topics

This was actually a very fun part!  

Both me and Marco wanted to explore and write some techniques from scratch.  

We started with asking ourselves which techniques a modern rendering engine supports, based on our work knowledge, and started jotting down those.  

There also some techniques that we singularly never did, and we tried to do what we would have most fun doing.

This is a simple list:

- Pure bindless mode

- Frame graph based

- Clustered Deferred Rendering

- Point lights with cubemap shadows

- Mesh shaders

- GPU driven rendering

- Temporal Anti-Aliasing

- Volumetric Fog

- Raytracing: shadows

- Global Illumination

With this list we started writing collecting links to the various topics before the next big decision…where do we start from a code pespective ?

## Choosing an engine

We always knew we wanted to use the thinnest layer on top of Vulkan.  

We explored various libraries, but something was clear: we need to learn how to use those libraries as well, and that would mean some time.  

After some thoughts…we chose to take Hydra, my own creature ehm engine, and cleanup some code, make the API Vulkan only and use that.  

Hydra is the foundation for the code of all the articles on this blog, and already the only backend working was Vulkan.  

Some could argue that this is not the best choice, but actually we have two advantages: first, having written it from scratch I knew every nook and crannies of the code; second it has a lot of boilerplate code for Vulkan and for other simple but useful subsystems (cameras, input, …).  

Another choice we made was to go fully Vulkan based: GLSL was the default choice for writing shaders, using JSON files to create a smaller Techniques/FX framework, and even better…parsing SpirV to take informations about the pipeline!  

Marco came out with this idea, and I really liked it.  

Between all the different skills he has, he is great in reading the Vulkan specifications and use them.  

And with these choices…all was set to begin!

## How to structure the code?

This was another big decision to make.  

We thought a lot about it: we wanted a way to freeze the code in time for each chapter, but we didn’t want to rely on github history to do that.  

The natural evolution of this thought is to create the code for each chapter in a separate folder.  

So we separated the code in the common code area, where code between different chapters is shared, and the rendering code went into each chapter.  

This included both shaders and the core rendering code. 
The current structure of code is something like:

**source**  

__**chapter1**  

____**graphics**  

__**raptor**  

____**application**  

____**foundation**

The main raptor folder contains foundation and application subfolders: **application** is contains a high level wrapper for window, input and application so that it is easier to fire a working application, while **foundation** the main data structures (array and hash map) and some utility functions/subsystems (like file management, string buffers, time queries, memory management, logging, gltf parsing, camera…).  

All the code in these folders is shared between chapters, so we duplicate and evolve only the rendering part, as it is the main focus of the book.

Was it perfect ?  

Absolutely not.  

Was it painful ?  

Yes, a little.
Could we do better ?
Absolutely yes!

There are many problems with these choices, but at the end it worked for us: for every chapter you have a snapshot of the rendering code, while everthing else that is not rendering related is unchanged, and should actually not be the focus.  

There are some big downsides: for example every time we would add something to a chapter, we would need to port the code to the following chapters. Fixing a bug in chapter 4 meant porting it up to the 15th chapter!

Same is happening now that the code is in the wild: when we receive a bugfix, we need to port it to all subsequent chapters.  

Again not the best choice, but the best with our knowledge at the time we started.

## The awesomeness of having a publisher

I’ve never worked with a publisher, but working with Packt was a great experience.  

They gave us the power to concentrate only on writing the book and the code, without worrying about anything else.  

Printing, delivering, organizing, they really took care of us.

When we thought we were late, or we needed more time, they listened as well.  

They also knew that the time to write a book was crucial, as this book covers a missing piece of information.

Every feedback on both sides was thoughtful and well received, so it was a great experience.

Thank you to all the team behind Packt, we managed to have a deep focus on working on our side of things and only on that.  

That was great to experience!

# Lessons

This whole journey has been powerful and helped me navigating some personal difficult times as well.

## The power of deadlines

Personally I love to have projects in my free time, because I can explore what I want, even if just redoing the same thing just in a completely different way.  

Problem is that not having a fixed objective can make me feel lost sometimes, same for not having any timeline.  

Articles in this blog helped that, but the book is the ultimate example!

Deadlines gives you that huge lesson:

Do the best that you can, with the resources you can.

Resources include both knowledge and time.  

In the realm of knowledge I include not only technical knowledge, but also personal knowledge.

## The problems of deadlines

Deadlines have also an uncomfortable side with it.  

We did not manage to put everything we wanted into the code, for example shader reloading, code generation, local tonemapping, and many many more.  

Deadlines really push you to think about what you can and cannot achieve given the time.  

And many times you over or underestimate the time, and have to change priorities.  

This is one of the biggest problems with game development, as there are many unknowns unknowns.

Still, you need to deliver, thus you can’t loose too much time thinking and writing code in the best way possible.  

You deliver, and this is important.

Also, the time we put on this book was our free time, after a day of work, or in the weekend, so possibly at times you had to figure out things with very low energies.

For every piece of code we were writing, this was the question:

Is this that I am doing really necessary given the time I have ?

## Know thyself

Another great lesson is that before writing a book, there is one ‘persona’ - Gabriel - that is writing the book.  

Do you listen to yourself ? To your needs ? Are you ready to know Gabriel with a new perspective, as the writer of a book ?

These can seem like crazy questions, but our identity changes a bit depending on the context.  

Who do you think you are when writing a book ?  

Are you overconfident ? Underconfident (not sure this word exists) ?  

Are you ready to change your mindset on a technical topic ?  

Are you ready to do something wrong and being called out for that ?

I think one of our superpowers is the possibility to change perspective based on experience.  

Even if it is painful: seeing that you don’t know enough about a topic that you should know, after all this year of rendering, can be painful.  

As candid as I can be, there are still many topics that I don’t know deeply, nor I understand fully.  

That is what I love about rendering: is such a huge topic, that really puts your ego in check.  

I will always know less than a year before, where multiple people are researching and advancing the knowledge.  

But still, I can help crafting amazing games and rendering tech!

Again, the relationship with our reality is what matters.

This is one of the biggest lessons about writing this book: the combination of effort, changing perspective and mindset is the real win.  

And on that topic, I have no regrets: we acted at our best given the constraints.  

But we can do better!

Are you ready to change perspective in front of new inputs ?

## Technical knowledge

After a digression about the human side of things (I would talk about that for hours…) let’s get back to the technical knowledge.  

What I’ve learnt is that…I did not know many new topics, only read about it, and by actually doing them I have a better understanding.  

Ultimate understanding ?  

Not even close!

For me, re-writing or re-implementing a technique makes me understand it.

I found over and over that reading a paper or some code does not work much for me.  

I can have an idea about something, but re-doing is what makes me create my mental model of it.  

Some have the power to learn by just reading or hearing, not me.  

That is why I am also active in my free time: real knowledge comes from models arising from experience.

## The thinnest Vulkan layer possible

This is a post-launch thought, and one of the most common critiques I’ve read around about the book.  

Many did not like the usage of Hydra/Raptor, and complained that this was too much of a ‘Raptor manual’ instead of a pure Vulkan book.

Could have we written a thinner layer ?  

I think we could have done it, and it would be an interesting challenge for the future.  

I still stand with our choice, as I think the abstraction we provided is so thin that does not change the API understanding, but actually elevates it to a more common ‘next generation APIs’ mindset and knowledge that will help on using Vulkan, DirectX12, consoles API and such.  

Still I get it: this is a Vulkan book, so you should focus on Vulkan only!  

Maybe is the fact that, even though I’ve used (and written from scratch) Vulkan renderers in the past, I can’t help but seeing a pattern in the all APIs.

At the end rendering is a combination of big concepts, that are present in both Vulkan and DirectX12, like Images, Buffers, Pipelines, Swapchains, Command Buffers and such.  

Once you master these concepts, you can use those on any API.  

Yet with Raptor the usage is a slightly higher level compared to simple Vulkan, but I really feel still now that helps visualizing what is happening even better.

I get that some areas, like descriptor sets and pipeline management can be too Raptory, but still it would have been a problem to fix anyway, even with simple Vulkan: this bookeeping is that you don’t find many times in tutorials around, but what gives you the power to develop complex techniques without writing a ton of work.

I am (slowly) in the active process of trying to strip even more layering to have a simpler Vulkan, so I am happy about this critique.  

I will learn something new, and maybe next edition, if will ever exists, will be an even more barebone Vulkan code.

Is there a way to write organized Vulkan code that is evern more straight-forward ?

## The joy of exploration

When writing the book, for each chapter we first wrote the code to be working to a good level, then we would write the corresponding chapter and fix/improve the code after.  

This was an interesting way of working, really focused on having something measurable and usable before writing any sentence about a chapter.  

With Marco we decided to put a lot of current topics, like Raytracing, Temporal Anti-Aliasing, Bindless, Mesh shaders and such, so that we could have a go at implementing them all together.  

There are better implementations out there, but I think we delivered a solid demo in the final chapter, that showcases all those together in harmony.  

During the development, I would ask myself multiple times:

Are you enjoying the exploration ?

Often times when navigating uncharted territories, we are stressed out about it. And I was many times, but this question really helped me not reaching the breaking point.  

I still need to enjoy the process, otherwise what is the point of it ?  

It was not always possible, and sometimes you have to grind through it, but still it was great.  

Having Marco as an ally, and a friend, helped a lot.  

When any of the two was stuck, or tired, the other would come in and help.  

We went with the flow, we worked together on some chapters, and singularly on others.  

We talked and I shared also my personal difficulties, as 2022 was a though year: useful, but though.  

And when we were stressed, or tired, we would talk about that.  

Never forget about the human behind the role!  

I really enjoyed working with him!

## Rendering is about synergies

The more chapters we wrote, the more I thought how rendering is a beautiful synergy, and that is why re-creating a renderer visuals is hard.  

Every pass in a frame needs to find its space in other passes as well (well not every one of them).  

It is an orchestra of GPU programs, textures, buffers and pipelines that create beautiful pixels.  

Building each chapter with something more really shaped this.  

Again, it could have been done in a better way, yes!  

But the effort and the knowledge at the time, plus the time constraints, are all that matters.

That is why I am happy with the result: we forged something that, albeit not being perfect, really touched a little of everything you find in a modern renderer. Something you will not find in a tech demo, that shows just a portion of this.  

Once we’ve added Clustered Deferred rendering, we added pointlights shadows (with the vertex/mesh shader only output) then we built on top Volumetric Fog, and TAA, and then started exploring indirect lighting with ray tracing…everything worked together.  

Re-using the clustered light structure to read lights into the Volumetric Fog for example.

We did it step by step, trying to show the way.  

For each step, the question was always:

What is this technique adding to the scene ?

We always had an eye for performances as well, even though having a 2070 did not help :p  

But still, as you see opening the demo, there is a GPU profiler that gives you a frame timing breakdown and helps keeping track of where the time budget is going.  

This is a game developer mindset: always think about performances.  

To create realtime-usable tech, you need it to be fast, or at least keep the total frame time to an acceptable level!

# Final thoughts

I’ve touched a lot of topics in this post, and I will gladly talk more about this stuff.  

One thing is clear: I learnt a lot, both technically and personally, and I will continue to learn more.  

There are other things on the horizon sparked by this book, like a talk about Vulkan at Eurographics 2023, or the idea of doing a ‘write your modern renderer’ in italian, my native language, and more.  

For sure a lot of feedback and things to evolve and experiment, and I am thankful for that.

I also wish that we could help streamlining the usage of Vulkan, maybe developing some lightweight library to help developers (like the Vulkan Memory Allocator), but let’s see the future.

For now I enjoy the experience that the book gave me, the many lessons, the knowledge and the thought that I can still improve and learn, while remembering to enjoy the process.

    

    

    

  
  [book](/tags/book/)
  
  [vulkan](/tags/vulkan/)
  

    
      

  

  
  
  
    
  
  
  
    
      
      
    

    
      

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
