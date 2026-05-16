---
source_url: https://jorenjoestar.github.io/post/gpu_driven_text/gpu_driven_text
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:31:54.001363+00:00
fetcher: html_mirror
sha256: 69400e215395a3445bae76c158a6afb7cfbbdd558b65151ff27f7a12ffd1afea
---

Gpu Driven Text | Gabriel's Virtual Tavern

  

  

  

  

  

  
  
  

  

# Gpu Driven Text

  

  
    

  
  

  
  
    
    
      
    
    2021-10-26
  
  

  

  
  
  
    12 min read
  
  

  
  
  

  
  
  
  
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

Recently on Twitter there was an interesting conversation about **[GPU-Driven line rendering](https://twitter.com/BelgianRenderer/status/1451990908757372929).  

This reminded me of a system that I use to render values that live only on the GPU, like GPU VFX: it gives you the possibility to output text and values from shaders!

Normally these values can be mapped and read back into the GPU, but sometimes can be easier to just write them from a shader.

I remember seeing this incredible [shadertoy](https://www.shadertoy.com/view/wdSSD1) and being in awe: a never-done pet project of mine was to create a game only on the GPU, but instead I use it in standard ways many times.  

Here we are rendering…text straight from a shader ? WHAT ?

The idea comes from [this article](https://glslsandbox.com/e#35231.0) as far as I understood, but the idea is the following: **compress each character data into an array of 4 floats (vec4/float4), with each component being the packed bits of one quadrant**, and given an UV reconstruct the shape of the character.

Taken straight from that website as deeper explanation:

```
/*
--------
-███----
██-██---
██-██---
-███----
█████-█-
██-████-
██--██--
██-███--
-███-██-
--------
--------

00000000
01110000
11011000
11011000
01110000
11111010
11011110
11001100
11011100
01110110
00000000
00000000

//Broken up into 4 8x3 (24 bit) chunks for each component of the vec4.
//Hexadecimal is being used to reduce clutter in the code but decimal still works.

00000000
01110000 -> 00000000 01110000 11011000 -> 0x0070D8
11011000

11011000
01110000 -> 11011000 01110000 11111010 -> 0xD870FA
11111010

11011110
11001100 -> 11011110 11001100 11011100 -> 0xDECCDC
11011100

01110110
00000000 -> 01110110 00000000 00000000 -> 0x760000
00000000

vec4(0x0070D8,0xD870FA,0xDECCDC,0x760000)
*/

```

There is quite some bit trickery involved that I will not dwelve into, but the gist of it is simple, even though the process to arrive there must have been interesting!

Given these compressed fonts, we can use GPU buffers to store all the informations needed to write anything we want on the screen.

# The Solution

From a higher level view, what we will do is the following:

- Reserve some memory to write our text

- Choose and save the position of the string, cache the reserved memory offset and count

- Write a per-character dispatch information

- Draw sprites with all those informations.

## The Buffers

We will use 4 different buffers to have this working. It can be improved honestly, but this is good enough for a debug only feature!

### Data and atomics buffer

This buffer will contain the atomics and the data to be filled with each character of each string.

```
// Common buffers used to render gpu driven font
layout (std430, binding=2) buffer DebugGpuFontBuffer {
    uint        current_data_index;
    uint        current_entry_index;
    uint        padding1;
    uint        padding2;

    vec4        data[];
};

```

### Entry buffer

For each string we want to render, we need a position and where in the global data memory we need to read, thus offset and count.

```
struct DebugGPUStringEntry {
    float       x;
    float       y;
    uint        offset;
    uint        count;
};

layout (std430, binding=3) buffer DebugGpuFontEntries {
    DebugGPUStringEntry entries[];
};

```

### Dispatch buffer

This buffer is used to generate draw for each character in the global data.  

We need this so that each character knows where it belongs in a string.

```
layout(std430, binding=4) buffer DebugGPUFontDispatch {
    uvec4               dispatches[];
};

```

### Indirect buffer

Final buffer is the one driving how many total characters we will draw.

```
layout(std430, binding=5) buffer DebugGPUIndirect {
    uint            vertex_count;
    uint            instance_count;
    uint            first_vertex;
    uint            first_instance;

    uint            pad00;
    uint            pad01;
    uint            pad02;
    uint            pad03;
};

```

Now that we know the data used, let’s see the algorithm itself.

## Reserving memory and writing text to GPU buffers

The main ingredient for this solution is the possibility to write to StructuredBuffers/SSBOs (depending on the API of your choice) PLUS the usage of *atomic operations*.

These operations are possible since OpenGL 4+ (actually my initial implementation is on an OpenGL-backed engine), so all newer APIs are supported.

Let’s have a look at some code, from the **vertex shader of a sprite**:

```
// 1. Reserve memory
// Reserve 1 entry, that will include position and where in the data buffer we will write our text.
uint entry_index = atomicAdd(current_entry_index, 1);
// Reserve 16 characters
uint data_index = atomicAdd(current_data_index, 16);

// 2. Cache string entry
// Cache data offset and count. We will use this to drive the text rendering.
entries[entry_index].x = STRWIDTH(5);
entries[entry_index].y = STRHEIGHT(5);
entries[entry_index].offset = data_index;
entries[entry_index].count = 16;

// 3. Write actual text
// MAVERICK: I did not found a better way to write this...
data[data_index] = ch_p;
data[data_index + 1] = ch_o;
data[data_index + 2] = ch_s;
data[data_index + 3] = ch_spc;
data[data_index + 4] = get_digit(position.x, 2);
data[data_index + 5] = get_digit(position.x, 1);
data[data_index + 6] = get_digit(position.x, 0);
data[data_index + 7] = ch_per;
data[data_index + 8] = get_digit(position.x, -1);
data[data_index + 9] = ch_com;
data[data_index + 10] = get_digit(position.y, 2);
data[data_index + 11] = get_digit(position.y, 1);
data[data_index + 12] = get_digit(position.y, 0);
data[data_index + 13] = ch_per;
data[data_index + 14] = get_digit(position.y, -1);
data[data_index + 15] = ch_spc;

```

As we can see the way of writing the text is horrible, but it works.

We are first reserving memory using *atomic operations*.

We then cache the string informations, like position and where to access the global data.

Finally we write the text!

## Generating the dispatch

Once we collected all the characters around, we need to generate the per-character dispatches and the indirect draw.  

I wrote a compute shader for that, optimizable, but good for the purpose here.  

It also writes another string with GPU data about the system itself:

```
layout (local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
    // Write global label with gpu font system data
    uint entry_index = atomicAdd(current_entry_index, 1);
    uint data_index = atomicAdd(current_data_index, 16);

    data[data_index] = ch_t;
    data[data_index + 1] = ch_e;
    data[data_index + 2] = ch_s;
    data[data_index + 3] = ch_t;
    data[data_index + 4] = ch_spc;
    data[data_index + 5] = ch_h;
    data[data_index + 6] = ch_g;
    data[data_index + 7] = ch_per;
    data[data_index + 8] = ch_4;
    data[data_index + 9] = ch_spc;
    data[data_index + 10] = get_digit(current_data_index, 1);
    data[data_index + 11] = get_digit(current_data_index, 0);
    data[data_index + 12] = ch_spc;
    data[data_index + 13] = get_digit(current_entry_index, 1);
    data[data_index + 14] = get_digit(current_entry_index, 0);

    vec2 print_pos = floor(vec2(STRWIDTH(5), STRHEIGHT(4)));
    entries[entry_index].x = print_pos.x;
    entries[entry_index].y = print_pos.y;
    entries[entry_index].offset = data_index;
    entries[entry_index].count = 16;

```

Here we are “simply” writing a string containing the indices used by the system, just to keep track of them.

```
    // Write single character dispatch informations
    uint global_index = 0;
    for (uint e = 0; e < current_entry_index; ++e) {
      uint entry_data_index = entries[0].offset;
      for (uint i = 0; i < entries[0].count; ++i) {
        dispatches[global_index].x = e;
        dispatches[global_index].y = i;

        ++global_index;
      }
    }

```

This is where we create the per character data.  

We can optimize this, probably using one uint instead of 4.

```
    // Write indirect draw values
    vertex_count = 6;
    instance_count = global_index;
    first_vertex = 0;
    first_instance = 0;
    pad00 = 0;
}

```

Finally we draw 2 triangles for each character data.

## (Indirect) Rendering of the GPU Driven Text

We are now ready to write the actual text on the screen!

Here is the final shader:

```
#if defined VERTEX

  layout (location = 0) out vec2 uv;
  layout (location = 1) flat out uint global_data_index;

  // Per vertex positions and uvs of a quad
  vec3 positions[6]       = vec3[6]( vec3(-0.5,-0.5,0), vec3(0.5,-0.5,0), vec3(0.5, 0.5, 0), vec3(0.5, 0.5, 0), vec3(-0.5,0.5,0), vec3(-0.5,-0.5,0) );
  vec2 uvs[6]             = vec2[6]( vec2(0.0, 1.0),    vec2(1.0, 1.0),   vec2(1.0, 0.0), vec2(1.0, 0.0), vec2(0.0, 0.0), vec2(0.0, 1.0) );

  void main() {

      const uint vertex_index = gl_VertexID % 6;
      // Calculate UVs
      uv.xy = uvs[vertex_index];

      // Sprite size
      const vec2 sprite_size = CHAR_SIZE;
      // Calculate world position
      vec4 world_position = vec4( vec2(positions[ vertex_index ].xy * sprite_size ), 0, 1 );

      uint global_char_index = gl_InstanceIndex;
      uint entry_index = dispatches[global_char_index].x;
      uint entry_char_index = dispatches[global_char_index].y;

      DebugGPUStringEntry entry = entries[entry_index];
      // Calculate actual position from the start of the string
      world_position.xy += vec2(entry.x + entry_char_index * sprite_size.x, entry.y);
      // Move position to upper left corner
      world_position.xy += sprite_size * 0.5f;
      // Pass entry data to read the final compressed font character
      global_data_index = entry.offset + entry_char_index;

      gl_Position = locals.projection_matrix_2d * world_position;

  }
  
  #endif // VERTEX

  #if defined FRAGMENT

  layout (location = 0) in vec2 uv;
  layout (location = 1) flat in uint global_data_index;

  layout (location = 0) out vec4 out_color;

  void main() {

    vec4 char_data = data[global_data_index];
    vec2 duv = uv * CHAR_SIZE;
    vec2 print_pos = vec2(0, 10);
    // Decompress char and color pixel!
    float textPixel = print_char(char_data, duv, print_pos);
      
    if (textPixel < 0.01f)
          discard;
      
    vec3 col = vec3(1);
    col *= mix(vec3(0.2),vec3(0.5,1,0),textPixel);
    out_color = vec4(col.rgb, 1);
  }

  #endif // FRAGMENT

```

It should be pretty straighforward, but basically what is happening is this:

- Read the dispatch information, to know where the sprite will be located

- Expand the quad to the correct location

- Read the information packed font character based on the character

- Color the pixel!

The real magic happens in the ‘print_char’ method, and here I will post all the code that comes from the shadertoy example I wrote before!

```
const float DOWN_SCALE = 1.0f;

#define MAX_INT_DIGITS 4
//#define FLIP_Y

const vec2 CHAR_SIZE = vec2(8, 12);
const vec2 CHAR_SPACING = vec2(8, 12);

float STRWIDTH(float c) {
    return c * CHAR_SPACING.x;
}

float STRHEIGHT(float c) {
    return c * CHAR_SPACING.y;
}

#define NORMAL 0
#define INVERT 1
#define UNDERLINE 2

int TEXT_MODE = NORMAL;

vec4 ch_spc = vec4(0x000000,0x000000,0x000000,0x000000);
vec4 ch_exc = vec4(0x003078,0x787830,0x300030,0x300000);
vec4 ch_quo = vec4(0x006666,0x662400,0x000000,0x000000);
vec4 ch_hsh = vec4(0x006C6C,0xFE6C6C,0x6CFE6C,0x6C0000);
vec4 ch_dol = vec4(0x30307C,0xC0C078,0x0C0CF8,0x303000);
vec4 ch_pct = vec4(0x000000,0xC4CC18,0x3060CC,0x8C0000);
vec4 ch_amp = vec4(0x0070D8,0xD870FA,0xDECCDC,0x760000);
vec4 ch_apo = vec4(0x003030,0x306000,0x000000,0x000000);
vec4 ch_lbr = vec4(0x000C18,0x306060,0x603018,0x0C0000);
vec4 ch_rbr = vec4(0x006030,0x180C0C,0x0C1830,0x600000);
vec4 ch_ast = vec4(0x000000,0x663CFF,0x3C6600,0x000000);
vec4 ch_crs = vec4(0x000000,0x18187E,0x181800,0x000000);
vec4 ch_com = vec4(0x000000,0x000000,0x000038,0x386000);
vec4 ch_dsh = vec4(0x000000,0x0000FE,0x000000,0x000000);
vec4 ch_per = vec4(0x000000,0x000000,0x000038,0x380000);
vec4 ch_lsl = vec4(0x000002,0x060C18,0x3060C0,0x800000);
vec4 ch_0 = vec4(0x007CC6,0xD6D6D6,0xD6D6C6,0x7C0000);
vec4 ch_1 = vec4(0x001030,0xF03030,0x303030,0xFC0000);
vec4 ch_2 = vec4(0x0078CC,0xCC0C18,0x3060CC,0xFC0000);
vec4 ch_3 = vec4(0x0078CC,0x0C0C38,0x0C0CCC,0x780000);
vec4 ch_4 = vec4(0x000C1C,0x3C6CCC,0xFE0C0C,0x1E0000);
vec4 ch_5 = vec4(0x00FCC0,0xC0C0F8,0x0C0CCC,0x780000);
vec4 ch_6 = vec4(0x003860,0xC0C0F8,0xCCCCCC,0x780000);
vec4 ch_7 = vec4(0x00FEC6,0xC6060C,0x183030,0x300000);
vec4 ch_8 = vec4(0x0078CC,0xCCEC78,0xDCCCCC,0x780000);
vec4 ch_9 = vec4(0x0078CC,0xCCCC7C,0x181830,0x700000);
vec4 ch_col = vec4(0x000000,0x383800,0x003838,0x000000);
vec4 ch_scl = vec4(0x000000,0x383800,0x003838,0x183000);
vec4 ch_les = vec4(0x000C18,0x3060C0,0x603018,0x0C0000);
vec4 ch_equ = vec4(0x000000,0x007E00,0x7E0000,0x000000);
vec4 ch_grt = vec4(0x006030,0x180C06,0x0C1830,0x600000);
vec4 ch_que = vec4(0x0078CC,0x0C1830,0x300030,0x300000);
vec4 ch_ats = vec4(0x007CC6,0xC6DEDE,0xDEC0C0,0x7C0000);
vec4 ch_A = vec4(0x003078,0xCCCCCC,0xFCCCCC,0xCC0000);
vec4 ch_B = vec4(0x00FC66,0x66667C,0x666666,0xFC0000);
vec4 ch_C = vec4(0x003C66,0xC6C0C0,0xC0C666,0x3C0000);
vec4 ch_D = vec4(0x00F86C,0x666666,0x66666C,0xF80000);
vec4 ch_E = vec4(0x00FE62,0x60647C,0x646062,0xFE0000);
vec4 ch_F = vec4(0x00FE66,0x62647C,0x646060,0xF00000);
vec4 ch_G = vec4(0x003C66,0xC6C0C0,0xCEC666,0x3E0000);
vec4 ch_H = vec4(0x00CCCC,0xCCCCFC,0xCCCCCC,0xCC0000);
vec4 ch_I = vec4(0x007830,0x303030,0x303030,0x780000);
vec4 ch_J = vec4(0x001E0C,0x0C0C0C,0xCCCCCC,0x780000);
vec4 ch_K = vec4(0x00E666,0x6C6C78,0x6C6C66,0xE60000);
vec4 ch_L = vec4(0x00F060,0x606060,0x626666,0xFE0000);
vec4 ch_M = vec4(0x00C6EE,0xFEFED6,0xC6C6C6,0xC60000);
vec4 ch_N = vec4(0x00C6C6,0xE6F6FE,0xDECEC6,0xC60000);
vec4 ch_O = vec4(0x00386C,0xC6C6C6,0xC6C66C,0x380000);
vec4 ch_P = vec4(0x00FC66,0x66667C,0x606060,0xF00000);
vec4 ch_Q = vec4(0x00386C,0xC6C6C6,0xCEDE7C,0x0C1E00);
vec4 ch_R = vec4(0x00FC66,0x66667C,0x6C6666,0xE60000);
vec4 ch_S = vec4(0x0078CC,0xCCC070,0x18CCCC,0x780000);
vec4 ch_T = vec4(0x00FCB4,0x303030,0x303030,0x780000);
vec4 ch_U = vec4(0x00CCCC,0xCCCCCC,0xCCCCCC,0x780000);
vec4 ch_V = vec4(0x00CCCC,0xCCCCCC,0xCCCC78,0x300000);
vec4 ch_W = vec4(0x00C6C6,0xC6C6D6,0xD66C6C,0x6C0000);
vec4 ch_X = vec4(0x00CCCC,0xCC7830,0x78CCCC,0xCC0000);
vec4 ch_Y = vec4(0x00CCCC,0xCCCC78,0x303030,0x780000);
vec4 ch_Z = vec4(0x00FECE,0x981830,0x6062C6,0xFE0000);
vec4 ch_lsb = vec4(0x003C30,0x303030,0x303030,0x3C0000);
vec4 ch_rsl = vec4(0x000080,0xC06030,0x180C06,0x020000);
vec4 ch_rsb = vec4(0x003C0C,0x0C0C0C,0x0C0C0C,0x3C0000);
vec4 ch_pow = vec4(0x10386C,0xC60000,0x000000,0x000000);
vec4 ch_usc = vec4(0x000000,0x000000,0x000000,0x00FF00);
vec4 ch_a = vec4(0x000000,0x00780C,0x7CCCCC,0x760000);
vec4 ch_b = vec4(0x00E060,0x607C66,0x666666,0xDC0000);
vec4 ch_c = vec4(0x000000,0x0078CC,0xC0C0CC,0x780000);
vec4 ch_d = vec4(0x001C0C,0x0C7CCC,0xCCCCCC,0x760000);
vec4 ch_e = vec4(0x000000,0x0078CC,0xFCC0CC,0x780000);
vec4 ch_f = vec4(0x00386C,0x6060F8,0x606060,0xF00000);
vec4 ch_g = vec4(0x000000,0x0076CC,0xCCCC7C,0x0CCC78);
vec4 ch_h = vec4(0x00E060,0x606C76,0x666666,0xE60000);
vec4 ch_i = vec4(0x001818,0x007818,0x181818,0x7E0000);
vec4 ch_j = vec4(0x000C0C,0x003C0C,0x0C0C0C,0xCCCC78);
vec4 ch_k = vec4(0x00E060,0x60666C,0x786C66,0xE60000);
vec4 ch_l = vec4(0x007818,0x181818,0x181818,0x7E0000);
vec4 ch_m = vec4(0x000000,0x00FCD6,0xD6D6D6,0xC60000);
vec4 ch_n = vec4(0x000000,0x00F8CC,0xCCCCCC,0xCC0000);
vec4 ch_o = vec4(0x000000,0x0078CC,0xCCCCCC,0x780000);
vec4 ch_p = vec4(0x000000,0x00DC66,0x666666,0x7C60F0);
vec4 ch_q = vec4(0x000000,0x0076CC,0xCCCCCC,0x7C0C1E);
vec4 ch_r = vec4(0x000000,0x00EC6E,0x766060,0xF00000);
vec4 ch_s = vec4(0x000000,0x0078CC,0x6018CC,0x780000);
vec4 ch_t = vec4(0x000020,0x60FC60,0x60606C,0x380000);
vec4 ch_u = vec4(0x000000,0x00CCCC,0xCCCCCC,0x760000);
vec4 ch_v = vec4(0x000000,0x00CCCC,0xCCCC78,0x300000);
vec4 ch_w = vec4(0x000000,0x00C6C6,0xD6D66C,0x6C0000);
vec4 ch_x = vec4(0x000000,0x00C66C,0x38386C,0xC60000);
vec4 ch_y = vec4(0x000000,0x006666,0x66663C,0x0C18F0);
vec4 ch_z = vec4(0x000000,0x00FC8C,0x1860C4,0xFC0000);
vec4 ch_lpa = vec4(0x001C30,0x3060C0,0x603030,0x1C0000);
vec4 ch_bar = vec4(0x001818,0x181800,0x181818,0x180000);
vec4 ch_rpa = vec4(0x00E030,0x30180C,0x183030,0xE00000);
vec4 ch_tid = vec4(0x0073DA,0xCE0000,0x000000,0x000000);
vec4 ch_lar = vec4(0x000000,0x10386C,0xC6C6FE,0x000000);

//Extracts bit b from the given number.
//Shifts bits right (num / 2^bit) then ANDs the result with 1 (mod(result,2.0)).
float extract_bit(float n, float b)
{
    b = clamp(b,-1.0,24.0);
    return floor(mod(floor(n / pow(2.0,floor(b))),2.0));
}

//Returns the pixel at uv in the given bit-packed sprite.
float sprite(vec4 spr, vec2 size, vec2 uv)
{
    uv = floor(uv);

#if defined(FLIP_Y)
    // Invert y uv coordinate
    uv.y = 1 - uv.y;
#endif // FLIP_Y

    //Calculate the bit to extract (x + y * width) (flipped on x-axis)
    float bit = (size.x-uv.x-1.0) + uv.y * size.x;

    //Clipping bound to remove garbage outside the sprite's boundaries.
    bool bounds = all(greaterThanEqual(uv,vec2(0))) && all(lessThan(uv,size));

    float pixels = 0.0;
    pixels += extract_bit(spr.x, bit - 72.0);
    pixels += extract_bit(spr.y, bit - 48.0);
    pixels += extract_bit(spr.z, bit - 24.0);
    pixels += extract_bit(spr.w, bit - 00.0);

    return bounds ? pixels : 0.0;
}

//Prints a character and moves the print position forward by 1 character width.
float print_char(vec4 ch, vec2 uv, inout vec2 print_pos)
{
    if( TEXT_MODE == INVERT )
    {
        //Inverts all of the bits in the character.
        ch = pow(2.0,24.0)-1.0-ch;
    }
    if( TEXT_MODE == UNDERLINE )
    {
        //Makes the bottom 8 bits all 1.
        //Shifts the bottom chunk right 8 bits to drop the lowest 8 bits,
        //then shifts it left 8 bits and adds 255 (binary 11111111).
        ch.w = floor(ch.w/256.0)*256.0 + 255.0;
    }

    float px = sprite(ch, CHAR_SIZE, uv - print_pos);
    print_pos.x += CHAR_SPACING.x;
    return px;
}

//Returns the digit sprite for the given number.
vec4 get_digit(float d)
{
    d = floor(d);

    if(d == 0.0) return ch_0;
    if(d == 1.0) return ch_1;
    if(d == 2.0) return ch_2;
    if(d == 3.0) return ch_3;
    if(d == 4.0) return ch_4;
    if(d == 5.0) return ch_5;
    if(d == 6.0) return ch_6;
    if(d == 7.0) return ch_7;
    if(d == 8.0) return ch_8;
    if(d == 9.0) return ch_9;
    return vec4(0.0);
}

//Prints out the given number starting at pos.
float print_number(float number, vec2 uv, inout vec2 print_pos)
{
    float result = 0.0;

    for(int i = 3;i >= -1;i--)
    {
        float digit = mod( number / pow(10.0, float(i)) , 10.0);

        if(i == -1) //Add a decimal point.
        {
            result += print_char(ch_per,uv, print_pos);
        }

        if(abs(number) > pow(10.0, float(i)) || i == 0) //Clip off leading zeros.
        {
            result += print_char(get_digit(digit),uv, print_pos);
        }
    }
    return result;
}

vec4 get_digit(float number, int position) {
    float digit = mod( number / pow(10.0, float(position)) , 10.0);
    return get_digit( digit );
}

float print_integer(float number, int zeros, vec2 uv, inout vec2 print_pos)
{
    float result = 0.0;

    for(int i = MAX_INT_DIGITS;i >= 0;i--)
    {
        float digit = mod( number / pow(10.0, float(i)) , 10.0);

        if(abs(number) > pow(10.0, float(i)) || zeros > i  || i == 0) //Clip off leading zeros.
        {
            result += print_char(get_digit(digit),uv, print_pos);
        }
    }
    return result;
}

```

It is a little code intensitve, but the gist is the same: decompress the packed infomration to know if the current pixel falls into the compressed font character or not!

# Conclusion

I will probably add the code to my [DataDrivenRendering](https://github.com/jorenjoestar/datadrivenrendering) repository, but in the meantime I wanted to write this article.  

The general idea should be simple, the execution can be improved a lot but the help can be great to debug GPU only systems, that are becoming more and more used.  

Maybe this is the start of a GPU-Driven ImGui system ? :p

Hope you enjoy!

    

    

    

  
  [rendering](/tags/rendering/)
  
  [gpu driven](/tags/gpu-driven/)
  

    
      

  

  
  
  
    
  
  
  
    
      
      
    

    
      

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

        

          
          
- [Rendering Astronomic Stars](/post/realistic_stars/)
          
          
- [Data Driven Rendering: Pipelines](/post/data_driven_rendering_pipeline/)
          
        

      
      
    

    

    

  

      

    
    
    
    
    

    
    
    
      
      
      
      

      
        
      

      
        
        
        
        
        
      

      
      
      
      
    

    
    

    
    
    
    

    
    
    
    

    
    

    
    
    
    

    
    
    
    
    

    
    

    
    
    
    
    
    
    
    
    
      
    
    
    
    
    

    

  
  
    

  
  

  

  
    
      
        

##### Cite

        
          ×
        
      
      
        

```

```

      
      
        **[Copy](#)
        **[Download](#)
