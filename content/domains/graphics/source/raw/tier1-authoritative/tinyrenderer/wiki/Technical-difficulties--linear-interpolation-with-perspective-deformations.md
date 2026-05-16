---
source_url: https://github.com/ssloy/tinyrenderer/wiki/Technical-difficulties:-linear-interpolation-with-perspective-deformations
source_id: tinyrenderer
fetched_at: 2026-05-16T17:31:03.649903+00:00
fetcher: html_mirror
sha256: d77e0d0e67f5bfb769fc276d1138821a2272f19ca0143ef99912efc889d357aa
---

Technical difficulties: linear interpolation with perspective deformations · ssloy/tinyrenderer Wiki · GitHub

  
  
  
  

    
  

  

    

  
  

  
  

    

  

  

    

  

    

    

      

      

    
    
    

      
  
  

      

        

  
  
  
  

  

      

  
  

    

    
  

  

  

    
  

  
  
  

  

  

  
    
      
      

    
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

    
  

            
              [Sign in](/login?return_to=https%3A%2F%2Fgithub.com%2Fssloy%2Ftinyrenderer%2Fwiki%2FTechnical-difficulties%3A-linear-interpolation-with-perspective-deformations)
            

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
  

        
      

        

          

  
  

    
    

    
      
  
    
      

# Technical difficulties: linear interpolation with perspective deformations

        
          [Jump to bottom](#wiki-pages-box)

        
    

      
        Dmitry V. Sokolov edited this page Sep 1, 2025
        ·
        [6 revisions](/ssloy/tinyrenderer/wiki/Technical-difficulties:-linear-interpolation-with-perspective-deformations/_history)
      

    
      
            
              
                

  
   
   
   
   
   
   
   
   
   
   
 

#  This text is obsolete, the second edition of the course is [available here](https://haqr.eu/tinyrenderer/).

  
   
   
   
   
   
   
   
   
   
   
 

# Motivation

Okay, let us sum up how real-time rendering works. We have a triangle in world coordinates, it is projected to the screen. Then for each pixel inside the triangle we compute its barycentric coordinates with respect to the triangle, pass the barycentric coordinates to the shader and then the shader can interpolate anything inside the triangle: texture coordinates, normals, colors, whatever.

[Here is the commit](https://github.com/ssloy/tinyrenderer/tree/8294312644c7ff103adcc4b2f5b068cba393498e) that works exactly in this manner. And its result is shown in the left image of the above figure. [Here is the correction](https://github.com/ssloy/tinyrenderer/commit/0c8afb6d8350de46518e0539120662af962ba46f) with correct perspective-aware interpolation, check the floor tilings. All I did was to pass to the shaders bc_clip coordinates and not bc_screen. Hm. Let us find why.

# Non-linearity

The main problem of is non-linearity of the chain of transformations we have. To pass from homogeneous coordinates to 3D we divide by the last component, breaking the linearity of transformations. Therefore, we do not have the right to use screen-space barycentric coordinates to interpolate anything in the original space (before the perspective transformation).

Let us formulate our problem in the following way. We know that some point P belonging to a triangle ABC is transformed to point P' after the perspective division:

We know barycentric coordinates of the point P' with respect to the triangle A'B'C' (screen-space coordinates of the triangle):

Then, knowing screen-space coordinates A'B'C' and barycentric coordinates of P' with respect to A'B'C', we need to find barycentric coordinates of P with respect to the original triangle ABC:

No problem, let us express P':

Multiply it by rP.z+1:

So we obtain the expression P = [ABC]*[some vector]. But it is the definition of barycentric coordinates! We are really close to the goal. What do we know and what is unknown?

Alpha-beta-gamma-all-prime are known. rA.z+1, rB.z+1, rC.z+1 are known too, those are the coordinates of the triangle passed to the rasterizer routine. We need to find the last thing, namely, rP.z+1, or the z-coordinate of the point P. With its aid we can find the coordinates of the point P. Wow, an ugly loop...

In fact, it is not a problem, let us break the loop. In (normalized) barycentric coordinates the sum of all components is equal to 1, so alpha+beta+gamma=1:

Now all the symbols are known and we can transform screen-space barycentric coordinates to the world-space ones. The transformation is not linear, but it allows to compensate the non-linearity of the perspective distortion, resulting in linear interpolation in the world-space coordinates. Check the right image of the top figure.

              

          

            
            

            

### Clone this wiki locally

            
              
              
                
  
      
    

      
    

  

              
            
          

  
    
  

  

    
  

  

          

    

  
    
    

    
      
    

    
    You can’t perform that action at this time.
