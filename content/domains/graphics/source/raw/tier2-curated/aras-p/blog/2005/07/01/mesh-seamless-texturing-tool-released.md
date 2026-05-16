---
source_url: https://aras-p.info/blog/2005/07/01/mesh-seamless-texturing-tool-released
source_id: aras-p-blog
fetched_at: 2026-05-16T17:32:20.494036+00:00
fetcher: html_mirror
sha256: c3e0e356e4345d8dc332139067f86efbe5821bde3881a24e893730ee6f50705a
---

Mesh seamless texturing tool released ·  Aras' website
  

  
  
  
  
  
  
  

    
  
    
      

  
  
    

Finally I’ve put the [MeshTexer tool online](http://dingus.berlios.de/index.php?n=Main.MeshTexer), with some documentation, the tool itself and some sample data. Basically, it takes a mesh with unique UV mapping, a normalmap and a tileable texture, and “wraps” the texture (nearly) seamlessly onto the given model. Well, the truth is that it just projects the texture onto the model from several sides, weighting by normal.

However, it worked like a charm during [in.out.side](http://www.nesnausk.org/inoutside) demo production. Paulius has written whole texturing workflow [here](http://www.nesnausk.org/inoutside/Technology.php#tech_texturing) - the tool was used to generate base material textures, material blend maps, gloss maps etc. Later these were hand-painted in “strategic” places and combined into final textures.

Enjoy!
