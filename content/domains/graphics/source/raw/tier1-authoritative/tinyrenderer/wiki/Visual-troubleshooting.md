---
source_url: https://github.com/ssloy/tinyrenderer/wiki/Visual-troubleshooting
source_id: tinyrenderer
fetched_at: 2026-05-16T17:31:04.474149+00:00
fetcher: html_mirror
sha256: 389c9769fdb511ea30f12f5c443d39b223db16bb5af4212e52073420682f2c19
---

Visual troubleshooting · ssloy/tinyrenderer Wiki · GitHub

  
  
  
  

    
  

  

    

  
  

  
  

    

  

  

    

  

    

    

      

      

    
    
    

      
  
  

      

        

  
  
  
  

  

      

  
  

    

    
  

  

  

    
  

  
  
  

  

  

  
    
      
      

    
      [Skip to content](#start-of-content)

      
    
      
      
      

  
  
  

      

          

              

          
            [Search syntax tips](https://docs.github.com/search-github/github-code-search/understanding-github-code-search-syntax)            
          
        

    

  
  
  
    

  
    
  
    
      

# 
        Provide feedback
      

        
    
    
      
    

    
  
  

      
                
      
                    Cancel

              Submit feedback

    
    

  
    
  
    
      

# 
        Saved searches
      

        

## Use saved searches to filter your results more quickly

    
    
      
    

    
  
  

      
                

        
                

        
          
        

      
                    Cancel

              Create saved search

    
  

            
              [Sign in](/login?return_to=https%3A%2F%2Fgithub.com%2Fssloy%2Ftinyrenderer%2Fwiki%2FVisual-troubleshooting)
            

              [Sign up](/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F%3Cuser-name%3E%2F%3Crepo-name%3E%2Fwiki%2Fshow&source=header-repo&source_repo=ssloy%2Ftinyrenderer)

                
    
        
    

Appearance settings

      
        

  
  
  

      
    
  

          Resetting focus
        
      
    
  

      
  
        
    

        You signed in with another tab or window. Reload to refresh your session.
        You signed out in another tab or window. Reload to refresh your session.
        You switched accounts on another tab or window. Reload to refresh your session.

      
    

Dismiss alert

  

    

  

    

  
    

  
    
      
    

    
    
      
      {{ message }}

    
  

  

    

  
        
    
      
  
    

  

  

      

        
            
  
      
    

    
    
      [ssloy](/ssloy)    
    /
    **
      [tinyrenderer](/ssloy/tinyrenderer)
    **

    Public
  

        

        
            

    
      

  
- 
            [Notifications](/login?return_to=%2Fssloy%2Ftinyrenderer)    You must be signed in to change notification settings

  

  
- 
          [Fork
    2.2k](/login?return_to=%2Fssloy%2Ftinyrenderer)
  

  
- 
        
        [Star
          23.6k](/login?return_to=%2Fssloy%2Ftinyrenderer)
  

        
      

        

          

  
  

    
    

    
      
  
    
      

# Visual troubleshooting

        
          [Jump to bottom](#wiki-pages-box)

        
    

      
        Dmitry V. Sokolov edited this page Sep 1, 2025
        ·
        [18 revisions](/ssloy/tinyrenderer/wiki/Visual-troubleshooting/_history)
      

    
      
            
              
                

  
   
   
   
   
   
   
   
   
   
   
 

#  This text is obsolete, the second edition of the course is [available here](https://haqr.eu/tinyrenderer/).

  
   
   
   
   
   
   
   
   
   
   
 

# Permanently under construction

This page is not meant to be a FAQ section; instead I show here several examples of bugs me and my students were able to fix *without* looking into the source code, solely by observing things in the images. No made up situations, real student pain is shown. The description of bugs is kept to a bare minimum, these images speak for themselves.

# Triangle rasterization: line sweeping

Frequent bug: while sorting by y-coordinate, the vertices are sorted, but the data coming with the vertices is not.

### Gouraud shading, forgot to sort intensities

### Z-buffer, forgot to sort z coordinates

### Horizontal sort of two vertices splitting the triangle

### Here are two examples of rounding errors creating holes in/between triangles:

Bad y interpolation while sweeping the line:

The vertices were not casted to int prior to filling:

# Bad data parsing

Forgot to decrement indices of vertices (remember in wavefront obj indices are starting from 1, not 0)

Few broken reads of texture coordinates, notice that all the fan of triangles incident to a vertex is messy, thus the vertex is broken:

All "v", "vt" and "vn" lines are read in the same array, thus effectively killing any sense in the model. Very roundish shape of the rendering gives the idea about "vn" confused with "v". Prior to the bugfix and after:

# Specular map

Frequent bug, anything elevated to the zero power equals to one:

# Texturing

This one needs a circular permutation of barycentric coordinates in the uv-interpolation:

The texture needs to be vertically flipped:

While visually ressembling to the above one, this one is completely different (why?). Here the student used xy pixel coordinates (instead of uv) to fetch a color from the texture :

# Lighting

Light direction (instead of view direction) was used for backface culling. Prior to and after bugfix.

Broken normal map reading, before and after. [0,255]^3 RGB were brought to XYZ living in [0,2]^3 and not [-1,1]^3.

Light and/or normal vectors were not normalized in computation of flat shading, resulting in overflowing unsigned char. Before/after images.

Same bug with textured model:

A bug correlated to above: trying to assign negative colors overflows unsigned chars. Dot product of two normalized vectors varies between -1 and 1. Here on the right fabs() of the intensity is shown, simple clamp at zero would produce right image of the above pair.

# Bad camera

Negative focal length, clearly a bad camera coefficient c was used in [formula (2)](https://github.com/ssloy/tinyrenderer/wiki/Lesson-4:-Perspective-projection#let-us-sum-up-the-main-formula-for-today)

# Voxels

Quote from [here](https://www.reddit.com/r/VoxelGameDev/comments/465olm/i_accidentally_made_some_voxels_while_working_on/):

*The code to render triangles to the screen takes a lot of computation time. While I was experimenting with more efficient methods, I commented out the code that calculates the barycentric coordinates, basically it finds out where to plot pixels of the triangle in the bounding box. It was replaced with a literal vector as a dummy output. As a result, all the pixels of the box are rendered, producing the voxel look. Given that it's a 3D renderer they are all still depth sorted and texture-colored. The last two pictures show the model with a SSAO post-effect using the depth buffer as a reference.*

              

          

            
            

            

### Clone this wiki locally

            
              
              
                
  
      
    

      
    

  

              
            
          

  
    
  

  

    
  

  

          

    

  
    
    

    
      
    

    
    You can’t perform that action at this time.
