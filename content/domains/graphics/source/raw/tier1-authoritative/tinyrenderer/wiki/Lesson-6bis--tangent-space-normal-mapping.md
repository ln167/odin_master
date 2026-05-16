---
source_url: https://github.com/ssloy/tinyrenderer/wiki/Lesson-6bis:-tangent-space-normal-mapping
source_id: tinyrenderer
fetched_at: 2026-05-16T17:30:59.209085+00:00
fetcher: html_mirror
sha256: e54262bbd6e68a99e949f6b197b736da123bc719b6ed2a813c7525c2f10b04ec
---

Lesson 6bis: tangent space normal mapping · ssloy/tinyrenderer Wiki · GitHub

  
  
  
  

    
  

  

    

  
  

  
  

    

  

  

    

  

    

    

      

      

    
    
    

      
  
  

      

        

  
  
  
  

  

      

  
  

    

    
  

  

  

    
  

  
  
  

  

  

  
    
      
      

    
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

    
  

            
              [Sign in](/login?return_to=https%3A%2F%2Fgithub.com%2Fssloy%2Ftinyrenderer%2Fwiki%2FLesson-6bis%3A-tangent-space-normal-mapping)
            

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
  

        
      

        

          

  
  

    
    

    
      
  
    
      

# Lesson 6bis: tangent space normal mapping

        
          [Jump to bottom](#wiki-pages-box)

        
    

      
        Dmitry V. Sokolov edited this page Sep 1, 2025
        ·
        [7 revisions](/ssloy/tinyrenderer/wiki/Lesson-6bis:-tangent-space-normal-mapping/_history)
      

    
      
            
              
                

  
   
   
   
   
   
   
   
   
   
   
 

#  This text is obsolete, the second edition of the course is [available here](https://haqr.eu/tinyrenderer/).

  
   
   
   
   
   
   
   
   
   
   
 

The subject for today is [normal mapping](https://en.wikipedia.org/wiki/Normal_mapping). What is the main difference between normal mapping and Phong shading? The key is the density of information we have. For Phong shading we use normal vectors given per vertex of triangle mesh (and interpolate it inside triangles), whereas normal mapping textures provide dense information, dramatically improving rendering details.

Well, we have already applied normal mapping [in previous lesson](https://github.com/ssloy/tinyrenderer/wiki/Lesson-6:-Shaders-for-the-software-renderer), however we used the global system of coordinates to store the texture. Today we are talking about [tangent space](https://en.wikipedia.org/wiki/Darboux_frame) normal mapping.

So, we have two textures, the left one is given in the global frame (direct transformation from RGB to XYZ normal), whereas the right one in the Darboux frame:

To use right texture, for each pixel we draw we compute tangent space (Darboux) frame. In this basis one vector (usually z) is orthogonal to our surface, and two others give a plane tangent to the current point. Then we read a (perturbed) normal vector from our texture, transform its coordinates from Darboux frame to the global system coordinates and we are done. Usually normal maps provide small perturbations of normal vectors, thus textures are in dominant blue color.

Well, why such a mess? Why not to use global system as we did before? Imagine we want to animate our model. For example, I took the black guy model and opened his mouth. It is obvious that normal vectors are to be modified.

Left image gives the head with open mouth, but unchanged (global frame) normal texture. Inspect closely the interior of the lower lip. The light coming directly to his face; when the mouth was closed the backside of the lower lip naturally was not lit. Now the mouth is open, but the lip is not lit... The right image was computed with tangent space normal mapping.

Therefore, if we have an animated model, then for correct normal mapping in global frame we need to have one texture per frame of the animation, whereas tangent space deforms accordingly to the model and we need one texture only!

Here is another example:

These are textures for the Diablo model. Notice that only one hand is drawn in the texture, and only one side of the tail. The artist used the same texture for both arms and for both sides of the tail. It means that in the global coordinate system I can provide normal vectors either for the left side of the tail, either for the right one, but not for both! Same goes for the arms. And I need different information for the left and the right sides, for example, inspect left and right cheekbones in the left image, naturally normal vectors are pointing in the opposite directions!

Let us finish with the motivation section and go straight ahead to the computations.

# Starting point, Phong shading

Okay, here is the [starting point](https://github.com/ssloy/tinyrenderer/tree/e30ff353121460557e29dced5708652171dbc7d2). The shader is really simple, it is Phong shading.

```
struct Shader : public IShader {
    mat<2,3,float> varying_uv;  // triangle uv coordinates, written by the vertex shader, read by the fragment shader
    mat<3,3,float> varying_nrm; // normal per vertex to be interpolated by FS

    virtual Vec4f vertex(int iface, int nthvert) {
        varying_uv.set_col(nthvert, model->uv(iface, nthvert));
        varying_nrm.set_col(nthvert, proj<3>((Projection*ModelView).invert_transpose()*embed<4>(model->normal(iface, nthvert), 0.f)));
        Vec4f gl_Vertex = Projection*ModelView*embed<4>(model->vert(iface, nthvert));
        varying_tri.set_col(nthvert, gl_Vertex);
        return gl_Vertex;
    }

    virtual bool fragment(Vec3f bar, TGAColor &color) {
        Vec3f bn = (varying_nrm*bar).normalize();
        Vec2f uv = varying_uv*bar;

        float diff = std::max(0.f, bn*light_dir);
        color = model->diffuse(uv)*diff;
        return false;
    }
};

```

Here is the rendered image:

For the educational and debugging purposes I am removing the skin texture and apply [a regular grid](https://github.com/ssloy/tinyrenderer/raw/master/obj/grid.tga) with horizontal red and vertical blue lines:

Let us remember how Phong shading works:

For each vertex of a triangle we have its coordinates p, texture coordinates uv and normal vectors. For shading current fragment our software rasterizer gives us barycentric coordinates of the fragment (alpha, beta, gamma). It means that the coordinates of the fragment can be obtained as p = alpha p0 + beta p1 + gamma p2. Then in the same way we interpolate texture coordinates and the normal vector:

Notice that blue and red lines are isolines of u and v, correspondingly. So, for each point of our surface we define a so-called Darboux frame, with x and y axes parallel to blue and red lines, and z axis orthogonal to the surface. This is the frame where tangent space normal map lives.

# How to reconstruct a (3D) linear function from three samples

Okay, so our goal is to compute three vectors (tangent basis) for each pixel we draw. Let us put that aside for a while and imagine a linear function f that for each point (x,y,z) gives a real number f(x,y,z) = Ax + By + Cz + D. The only problem that we do not know A, B, C and D, however we do know three values of the function at three different points of the space (p0, p1, p2):

It is convenient to imagine f as a height map of an inclined plane. We fix three different (non collinear) points on the plane and we know values of f in those points. Red lines inside the triangle show the iso-heights f0, f0 + 1 meter, f0 + 2 meters and so on. For a linear function we have the isolines are parallel (straight) lines.

In fact, I am more interested in the direction, orthogonal to the isolines. If we move along an iso, the height does not change (well duh, it is an iso!). If we deviate a little bit from an iso, the height starts to change a little bit. The steepest ascent we obtain when we move orthogonally to the isolines.

Let us recall that the steepest ascent direction for a function is nothing else than its [gradient](https://en.wikipedia.org/wiki/Gradient). For a linear function f(x,y,z) = Ax + By + Cz + D its gradient is a constant vector (A, B, C). Recall that we do not know the values of (A,B,C). We know only three samples of the function. Can we reconstruct A,B and C? Sure thing.

So, we have three points p0, p1, p2 and three values f0, f1, f2. We need to find the vector of the steepest ascent (A,B,C). Let us consider another function defined as g(p) = f(p) - f(p0):

Obviously that we simply translated our inclined plane, without changing its inclination, therefore the steepest ascent direction for f and g is the same.

Let us rewrite the definition of g:

Please note that superscript x in p^x  means x coordinate of the point p and not a power. So, the function g is simply a dot product between vector (p-p0) and (ABC). And we still do not know (A,B,C)!

Okay, let us recall what we know. We know that if we go from point p0 to point p2, then the function g will go from zero to f2-f0. In other words, the dot product between vectors (p2-p0) and (ABC) is equal to f2-f0. Same thing for (p1-p0). Therefore, we are looking for the vector ABC, orthogonal to the normal n and respecting two constraints on dot products:

Let us rewrite this in a matrix form:

So, we got an easy to solve linear matrix equation Ax = b:

Please note that I used the letter A for two different things, the meaning should be clear from the context. So, our 3x3 matrix A, multiplied with the unknown vector x=(A,B,C), gives the vector b = (f1-f0, f2-f0, 0). Unknown vector x becomes known when we multiply inverse to A by b.

Also note that in the matrix A we have nothing related to the function f. It contains only some information about our triangle.

# Let us compute Darboux basis and apply the perturbation of normals

So, Darboux basis is a triplet of vectors (i,j,n), where n - is the original normal vector, and i, j can be computed as follows:

[Here is the commit](https://github.com/ssloy/tinyrenderer/tree/907bb561c38e7bd86db8d99678c0108f2e53d54d), using the normal maps in the tangent space, and [here](https://github.com/ssloy/tinyrenderer/commit/907bb561c38e7bd86db8d99678c0108f2e53d54d) you can check the differencies with respect to the starting point (Phong shading).

All is quite straightforward, I compute the matrix A:

```
        mat<3,3,float> A;
        A[0] = ndc_tri.col(1) - ndc_tri.col(0);
        A[1] = ndc_tri.col(2) - ndc_tri.col(0);
        A[2] = bn;

```

Then compute two unknown vectors (i,j) of Darboux basis:

```
        mat<3,3,float> AI = A.invert();
        Vec3f i = AI * Vec3f(varying_uv[0][1] - varying_uv[0][0], varying_uv[0][2] - varying_uv[0][0], 0);
        Vec3f j = AI * Vec3f(varying_uv[1][1] - varying_uv[1][0], varying_uv[1][2] - varying_uv[1][0], 0);

```

Once we have all the tangent basis, I read the perturbed normal from the texture and apply the basis change from the tangent basis to the global coordinates. Recall that [I have already described](https://github.com/ssloy/tinyrenderer/wiki/Lesson-5:-Moving-the-camera#change-of-basis-in-3d-space) how to perform change of basis.

Here is the final rendered image, compare the details with [Phong shading](https://raw.githubusercontent.com/ssloy/tinyrenderer/gh-pages/img/06b-tangent-space/starting_point_a.jpg):

# Debugging advice

Now it is the perfect time to recall how to draw [straight line segments](https://github.com/ssloy/tinyrenderer/wiki/Lesson-1:-Bresenham%E2%80%99s-Line-Drawing-Algorithm). Apply the red-blue grid as the texture and draw the vectors (i,j) for each vertex of the mesh. Normally they must coincide with the texture lines.

# Were you paying attention?

Have you noticed that generally a (flat) triangle has a constant normal vector, whereas I used the interpolated normal in the last row of the matrix A? Why did I do it?

Happy coding!

              

          

            
            

            

### Clone this wiki locally

            
              
              
                
  
      
    

      
    

  

              
            
          

  
    
  

  

    
  

  

          

    

  
    
    

    
      
    

    
    You can’t perform that action at this time.
