---
source_url: https://aras-p.info/blog/2025/11/23/Two-years-of-Blender-VSE
source_id: aras-p-blog
fetched_at: 2026-05-16T17:32:14.637702+00:00
fetcher: html_mirror
sha256: 180e01e4a4e8d32ae1c4a53bd1a8a7f012ef14988f60a2b04c64f08b5d2b8d72
---

Two years of Blender VSE ·  Aras' website
  

  
  
  
  
  
  
  

    
  
    
      

  
  
    

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
