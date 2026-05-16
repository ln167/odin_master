---
source_url: https://jorenjoestar.github.io/post/realistic_stars
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:31:55.983139+00:00
fetcher: html_mirror
sha256: c6dd85c0c9b332550994f5ab15be95a5eebb50c8db28db14ec96635059746062
---

Rendering Astronomic Stars | Gabriel's Virtual Tavern

  

  

  

  

  
  
    
  

  

# Rendering Astronomic Stars

  

  

  
  

  
  
    
    
      
    
    2020-12-26
  
  

  

  
  
  
    21 min read
  
  

  
  
  

  
  
  
  
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
      
    
  

  

  

  
    
    Star Rendering
  

  

    
      

# Overview

Since growing up I’ve always been fascinated by stars, and being exposed to anime like Sainy Seiya and Hokuto No Ken just fueled the passion.
My 4th year of high-school had a full year course on ‘geographical astronomy’ - an in depth look at our planet and the stars from a scientific perspective.
Many years has passed (20+!) and I’ve never dwelved into these kind of topic.

Then few years ago, while researching for rendering un Just Cause 4 I stumbled upon a couple of papers about realistic rendering of stars.
I did a working prototype in Unity but did not understood many things, and I had no time to look back into this.

Then came Christmas time, with lockdown and such I finally had an excuse to dwelve deeper into this topic.
Also I am searching for little rendering demos I can use to test and cleanup my libraries to write code.

A *HUGE* shout to the author of [SGHimmel](https://github.com/cgcostume/osghimmel) - code that contains a much deeper and precise implementation.

Mine is more a starting point and a small subset of what is needed to render realistic stars - the ones *visible with naked eye*.

There is a seminal paper that put all these informations in one place:

[A Physically Based Night Sky Model](https://graphics.stanford.edu/~henrik/papers/nightsky/nightsky.pdf).
This paper contains all the stars rendering informations (and much more, like Moon and Sun) and it is the real deal.

A second paper also expanded that and gave us the SGHimmel code:

[Single Pass Rendering of Day and Night Sky Phenomena](https://www.researchgate.net/publication/287031803_Single-pass_Rendering_of_Day_and_Night_Sky_Phenomena).

My only contribution is to distill the very complex informations in a few files of code, and maybe help someone else to start looking into this amazing world.

# Astronomy

Where do we start ?

## Catalogs

We need DATA.
In Astronomy, and for stars, there are the so called ‘*catalogs*’ - a collection of data relative to stars normally collected by hand (!) by astronomers from different sources.
A list of catalogs can be found here:

[https://heasarc.gsfc.nasa.gov/docs/cgro/db-perl/W3Browse/w3table.pl?MissionHelp=star_catalog](https://heasarc.gsfc.nasa.gov/docs/cgro/db-perl/W3Browse/w3table.pl?MissionHelp=star_catalog)

… catalogs types and story ?

Amongst all the catalogs the most beginner friendly to use is the **[Yale Bright Stars Catalog](http://tdc-www.harvard.edu/catalogs/bsc5.html).
This catalog was created around 1908 and different was updated until ‘recently’.
It contains all the stars that are visible with naked eye from Earth - 9100 objects - normally visible if the have a visual magnitude of more than 6.5.
The online version is both a binary based one and a text based one.
I decided to use the binary version, but possibly it will change in the future.

## Star Entry

Now that we chose a catalog let’s see what we really need to properly place and visualize a star.
Using the binary version shows the minimum necessary data that can be used, and in this case following [this](http://tdc-www.harvard.edu/catalogs/bsc5.entry.html) link:

- Right Ascension and Declination

- Spectral Type

- Visual Magnitude

- Proper Motion

Before dwelving into this, an *incredibly important* thing to consider is *WHEN* the catalog is compiled - more specifically what *time reference point* is used in the catalog.

### Epoch, Julian Dates and J2000

**TLDR**: convert from Gregorian Calendar to Julian Date to properly rotate stars.

**Long explanation:**
Between different astronomers different *epochs* were used in different calendars, thus referencing different catalogs had problems in understanding which reference system was used.
As some of you may know, depending on your culture you could use different calendars as well!

For astronomy related things, a common ‘time reference point’ was decided by the [International Astronomical Union](https://www.iau.org/), and this is the **Julian Calendar** with the precise moment called *J2000*.

Different ‘reference points’ were used, and in 1984 the IAU switched from the J1950 to the J2000 epoch.

Specifically an **epoch** is a moment in time that is used as central reference point to calculate positions and motions of celestial objects.

**J2000** thus is the date of January 1, 2000 at 12:00 Terrestrial Time in the Gregorian Calendar at the Greenwich meridian, and all the positional data in the catalog is relative to this moment.

There are plenty of conversions between Gregorian Calendar and Julian Calendar, and in the code provided there will be some links also to some pages with the math involved.

### Right Ascension and Declination

**TLDR**: stars ‘latitude and longitude’ to place them.

**Long explanation:**

Now that we have a reference time, we can finally use the Right Ascension and Declination data.

A very simple explanation of Right Ascension and Declination is that they are the celestial equivalent to latitude and longitude on earth, but they reference the **celestial sphere** - an ideal sphere centered in the Earth center and **not** following the Earth axis inclination.

  

  

#### Jost Burgi Celestial Sphere. Source: Wikipedia.

  

Both Right Ascension and Declination are relative to the **Celestial Equator** - an ideal equator that has a different inclination than the natural Earth equator (due to its tilt axis).
Right Ascension thus is the eastward angular distance relative to the Celestial Equator, expressed in hours, minutes and seconds.
Declination instead is the north/south angle relative to the Celestial Equator, expressed in degrees (in the range -90, 90).

All this combined defines the **[Equatorial Coordinate System](https://en.wikipedia.org/wiki/Equatorial_coordinate_system)**, used to locate celestial objects.

**Right Ascension and Declination relative to J2000** are then the celestial ‘latitude and longitude’ to locate a celestial object around the Earth, relative to a reference system that is not tilted with the axis but more ‘absolute’.

### Spectral Type

**TLDR**: convert from Spectral Type to RGB color.

**Long explanation:**

To help organize stars they needed to categorize them based on some parameters.
In 1817 already Josepth Von FraunHofer started analyzing the *spectrum* of the visible stars and in the following years, but it is with the work of **Annie Cannon**, that catalogued *hundreds of thousands* of stars, that spectrum-based classification became more common.

There are two main spectral classifications, the [Morgan-Keenan System](https://starparty.com/topics/astronomy/stars/the-morgan-keenan-system/) and the [UBV or Johnson-Morgan-system](https://en.wikipedia.org/wiki/UBV_photometric_system).

Interestingly enough the *Yale Bright Star Catalog* contains the *MK Spectral Type* in the binary format, and the *BV* index in the text format.

I ended up creating a list of MK types to colors in the code, starting from these:

Spectral Type to temperature
[https://www.handprint.com/ASTRO/specclass.html](https://www.handprint.com/ASTRO/specclass.html)

Temperature to color
[http://www.vendian.org/mncharity/dir3/blackbody/UnstableURLs/bbr_color.html](http://www.vendian.org/mncharity/dir3/blackbody/UnstableURLs/bbr_color.html)

As an alternative I could have parse the text version and using the BV indices, possibly I’ll do that and cross reference colors to see if the are exact.

There is also this incredibly useful post about all this:

[https://stackoverflow.com/questions/21977786/star-b-v-color-index-to-apparent-rgb-color](https://stackoverflow.com/questions/21977786/star-b-v-color-index-to-apparent-rgb-color)

**The key information here** is that once we read the *Spectral Type* of each star, we have a table that converts it to an RGB value.

### Visual Magnitude

**TLDR:** magnitude shows how visible is a star.

**Long explanation:**

This is the part in which I still don’t feel confident about what is really happening, but I’ll try to give the better explanation of what I understood.
It will possibly be subject to changes in the code!

In the seminal paper a correlation between the *Magnitude* and the *Glaring* is done, with the Glaring coming from another very important paper on visual perception, defining Glare as the sum of the flare and bloom optical phenomena happening to our eyes [here](https://www.researchgate.net/publication/2593999_Physically-Based_Glare_Effects_for_Digital_Images).

We are trying to create a correlation between the Magnitude of a star and how big is seen in the screen, and this is a pretty accurate description of what happens to us when seeing ‘brighter stars’.

We have 2 ways to achieve this:

- Output a pixel color intensity that works with tonemapping and engages the bloom

- Make the star bigger based on magnitude.

The second approach is the one used here, but I would like to experiment also with the other option.

In the second paper (Single Pass …) there are some equations that correlate pixel intensity with visual magnitude AND ‘how big’ the stars appear to the same magnitude.

We will see more in detail in the code how to use those.

### Proper Motion

**TLDR:** adjust right ascension and declination with this per-year changes.

**Long explanation:**

The final data relative to the stars is the proper motion.
Proper motion can be simply defined as the yearly move of a star in Equatorial Coordinate System.
Most of the stars visible with naked eye are so distant that their motion is not as diverse as the J2000 position specified, but few (the closest ones) need a more precise calculation.

Taking in account *proper motion* will give the most precise star positioning of all.

# Coding

After this lenghty introduction in astronomy we can finally see the code!
The repository is still [DataDrivenRendering](https://github.com/JorenJoestar/DataDrivenRendering) - but all the code and data is contained under the StarApplication folders in source/articles and data/articles!
I am working on improving my framework so I can experiment faster and faster.

As already wrote before, one of the biggest problem was retrieving the data and understanding its meaning!

## Project Structure

Data: [https://github.com/JorenJoestar/DataDrivenRendering/tree/master/data/articles/StarRendering](https://github.com/JorenJoestar/DataDrivenRendering/tree/master/data/articles/StarRendering)

Source: [https://github.com/JorenJoestar/DataDrivenRendering/tree/master/source/Articles/StarRendering](https://github.com/JorenJoestar/DataDrivenRendering/tree/master/source/Articles/StarRendering)

All the relevant code is in star_map_application.h/.cpp.

## Star Data Parsing

We chose the **Yale Bright Star Catalog**, and there are two versions here ([http://tdc-www.harvard.edu/software/catalogs/bsc5.html)](http://tdc-www.harvard.edu/software/catalogs/bsc5.html)): one binary and one text.
I chose to use the binary one, even though I could change idea and revise this code and article.

The binary is pretty easy to parse, with a caveat: you need an alignment of 1 to correctly parse the data!
The parsing structures are just 2, one for the header and one for each star entry:

- [http://tdc-www.harvard.edu/software/catalogs/bsc5.header.html](http://tdc-www.harvard.edu/software/catalogs/bsc5.header.html)

- [http://tdc-www.harvard.edu/software/catalogs/bsc5.entry.html](http://tdc-www.harvard.edu/software/catalogs/bsc5.entry.html)

Once we parse from the file we have all our stars with *right ascension, declination and visual magnitude* ready for us!

## Constellation Data Parsing

Constellations are another set of data that needs to be relative to a specific **catalog**.
I found this website that presents the constellation lines in a text format:

[http://cdsarc.u-strasbg.fr/viz-bin/Cat?VI/49](http://cdsarc.u-strasbg.fr/viz-bin/Cat?VI/49)
[https://github.com/hemel-waarnemen-com/Constellation-lines](https://github.com/hemel-waarnemen-com/Constellation-lines)

The problem is that the file contains the constellations as a series of line (line strips) that you need to continuously draw *like a pen not leaving the paper*.
I decided to convert this in a list of segments, so I have to parse the text file and make the conversion.

There are a couple of caveats here:

- Constellations can be present more than once, the they have 2 non contiguous lines.

- Parsing is done 2 times, first to calculate offsets of final segments (especially for the constellations with more lines), second to actually parse the data.

This is also an interesting use of the hydra_lexer - backbone of the HFX language.
In this demo it is already used but in following ones I’ll update it more and more.

```
    // Read constellation file
    char* constellation_data = hydra::file_read_into_memory( "..\\data\\articles\\StarRendering\\constellations_lines.txt", nullptr, false, *allocator );
    // Allocate raw memory and entries for the data parsed.
    // Not elegant, but functioning.
    DataBuffer data_buffer;
    data_buffer_init( &data_buffer, 10000, 10000 * 4 );

    Lexer lexer;
    lexer_init( &lexer, constellation_data, &data_buffer );

    // First parse: calculate offsets and total size of indices array.
    uint32_t data_size = 0;
    bool parsing = true;

    // An example entry:
    // Ant   4 4273 4104 3871 3765
    // Hash is used as line comment.
    //
    while ( parsing ) {

        Token token;
        lexer_next_token( &lexer, token );

        switch ( token.type ) {

            case Token::Token_Hash:
            {
                // Skip the line
                lexer_goto_next_line( &lexer );

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

                int32_t constellation_index = Constellations::get_index( &constellations, name );

                // Read segment count
                lexer_expect_token( &lexer, token, Token::Token_Number );

                uint32_t count = atoi( token.text.text );
                constellations.entries[ constellation_index ].count += count - 1; // This is segments count
                data_size += count - 1; // Segments count

                // Just advance the token to the next line.
                for ( uint32_t i = 0; i < count; ++i ) {
                    lexer_next_token( &lexer, token );
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

```

The most interesting part for me is seeing the parsing loop and having a lexer/tokenizer as a personal tool is a MUST!
Constellations contains a map from the name to the entry.
The second parse just reads the actual star numbers and puts them in the correct place.
Not sure it is interesting code to read here.
We now have a list of segments, and thus 2 points, for each constellation, in a contiguous block of memory.

Next is…

## Temperature to Color

In the binary data we parsed from the Catalog we have the **Spectral Type** of a star, a letter+number identification system to classify a star.
To properly calculate the color of a star we need to do the following:

1. Read the star *Spectral Type*

2. Convert the *Spectral Type* to *Temperature*

3. Convert *Temperature* to *RGB color*

Taking the data form the links in the MK part of the article, we parse the *Temperature to Color* data from a file containing the **black bodies color data**.

Again some non-interesting parsing code, but the entries are like this:

1000 K   2deg  0.6499 0.3474  2.472e+06    1.0000 0.0337 0.0000  255  51   0  #ff3300
1000 K  10deg  0.6472 0.3506  2.525e+06    1.0000 0.0401 0.0000  255  56   0  #ff3800

It uses 2 different CIE specifications for colors, and we use the 10deg (the second one) of each entry.

We then have a table (hand written from the links above) that links *Spectral Types* to temperature:

```
struct Range {
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

```

We finally have all conversion from Spectral Types to Color! Ole'!

## Gregorian/Julian date conversion

Again some code that is mostly taking formulas from the net!
In the *Catalog* we are using the **Right Ascension and Declination** of each star is expressed relative to the Julian Date 2000.

The only really interesting thing here is the fact that you need to use a double - a float will loose the difference for hour and less in the days!

```
//
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

```

**NOTE!!!**
The Julian date we are calculating is **RELATIVE TO J2000**! Super important!

## Star Placement

This is the real deal.
I myself used the seminal papers on the subject that express the formulat to calculate the placement of a star in the *Celestial Sphere*.

There are two component on this:

### Conversion from *Right Ascension and Declination* to Equatorial Coordinates.

The most important thing to remember here is that the **data coming from the catalog** is expressed at **J2000** date.
Let’s convert RA and D:

```
//
// Convert to euclidean coordinates
//
static void convert_to_euclidean( float right_ascension, float declination, float radial_distance, float& out_x, float& out_y, float& out_z ) {
    const float cosd = cosf( declination );

    out_x = radial_distance * sinf( right_ascension ) * cosd;
    out_y = radial_distance * cosf( right_ascension ) * cosd;
    out_z = radial_distance * sinf( declination );
}

```

This will put the star in place at the date of **J2000** or January 1, 2000 at 12:00 Terrestrial Time in the Gregorian Calendar!
We need to calculate the rotation from J2000 to our current time and location.

### Latitude, Longitude and Date to Rotation

This is the missing link.
As already noted above, the data coming from the Catalog is the position of the stars at **J2000**.

There are some conversions to do from latitude and longitude, and these formulas are a mix coming from the papers I mentioned at the beginnig and simple conversion.

```
float longitude_radians = glm_rad( longitude );
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

```

The ugliness in this code is that I had some reference system problems somewhere, so I put some variables to understand what was happening.
This is true code, you see everything :)

Starting from **latitude and longitude and date** we arrive at a rotation matrix to apply to the stars!

Applying precession is taking in consideration the precession and nutation phenomena, again something that the brillian paper ‘A Physically Based Night Sky’ gives some formula.
I admit not having still a deep understaning on how they arrived at that conclusion, but for sure I have a good starting point now (and hopefully you do as well!).

The final position of the star is **star_rotation_matrix * vec4(position.xyz, 1)**, with the position calculated as the Equatorial Coordinate at J2000, and the Star Rotation as the additional rotation taking in consideration Latitude, Longitude and date.

## Star Rendering: Hydra for the win!

We are using the new Hydra framework - this time having a 80% working Vulkan backend.
I am working a bit on having HFX shader language extension as more and more something that I can rely to clearly prototype and explore ideas.
The HFX file that renders everything defines also almost everything, from the shader to the vertex layout to the resource types used.

There is a bit of magic as well here - something I found reading the second paper, ‘Single Pass Rendering of Day and Night Sky Phenomena’ - so the math is coming from there.
I am missing the scintillation, scattering and the daylight removal when it is day, even though for this demo is not important.
From this you can see the difference between a demo and a feature in a game: when developing this as a feature, you should consider the interaction with all the other rendering systems, the tonemapping, luts, any kind of clouds, sun and moon rendering, and such.
This is crucial!

From a top down view of the rendering, we are basically drawing billboards that use the visual magnitude both for size and alpha.
Overdraw fest!!!

Here is the shader used. As you can see you can specify *vertex layout and render states as well* - something I **LOVE** to see with shaders. They are an integral part of the rendering!

With an HFX file now you can define totally a Vulkan Pipeline, so it is a great tool.
The code has reload of shaders, so you can experiment faster!

```
shader stars {

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

        #pragma include "Platform.h"

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
            // Following paper "Single Pass Rendering of Day and Night Sky Phenomena"
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

            if ( i_t < 0.01 )
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
            if ( zz < 0.0 )
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

```

A simplified version of the rendering code is here, but I like how this is becoming. Feedback is really appreciated :)

The instance buffer contains the Euclidean positions of each star with the visual magnitude as well.
We are drawing straight into the swapchain, and I use the abstraction of ‘resource list’ similar to the ‘descriptor sets’ coming from Vulkan. They are just a …list of resources.

```
CommandBuffer* gpu_commands = update.gpu_commands;
gpu_commands->clear( sort_key, 0, 0, 0, 1 );
gpu_commands->clear_depth_stencil( sort_key++, 1.0f, 0 );

// Draw the stars! ////////////////////////////
gpu_commands->bind_pass( sort_key++, update.gpu_device->get_swapchain_pass() );
gpu_commands->set_scissor( sort_key++, nullptr );	// Default framebuffer/render target sizes
gpu_commands->set_viewport( sort_key++, nullptr );

gpu_commands->bind_vertex_buffer( sort_key++, star_instance_buffer, 0, 0 );
gpu_commands->bind_pipeline( sort_key++, star_rendering_pipeline );
gpu_commands->bind_resource_list( sort_key++, &star_resource_list, 1, nullptr, 0 );
gpu_commands->draw( sort_key++, TopologyType::Triangle, 0, 6, 0, star_count_to_render );

```

And that’s it for the rendering!
We basically draw the Celestial Sphere - we miss taking in consideration the night/day transition depending where we are, or the moon and sun.

# Conclusion

We had a dive into how to render stars using real-life astronomical data.
The real deal is finding the proper data, and trying to understand how to use it.
There are still some things that I don’t understand myself, but at least if you are curious about this topic this could be a good starting point.

I hope to have time to understand things deeper soon and correct any error.

Hydra library is also evolving to something more and more usable for demo, I am trying to keep the code relatively small and clear, I’ll continue with other demos about this.
I like the idea of something very concise - so you can focus only on the details you need.

Next will be the Atmospheric Scattering demo from the amazing [Sebastien Hillaire](https://twitter.com/SebHillaire).

*Happy new year and may the stars shine upon your path!*

    

    

    

  
  [rendering](/tags/rendering/)
  
  [stars](/tags/stars/)
  

    
      

  

  
  
  
    
  
  
  
    
      
      
    

    
      

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

        

          
          
- [Data Driven Rendering: Pipelines](/post/data_driven_rendering_pipeline/)
          
        

      
      
    

    

    

  

      

    
    
    
    
    

    
    
    
      
      
      
      

      
        
      

      
        
        
        
        
        
      

      
      
      
      
    

    
    

    
    
    
    

    
    
    
    

    
    

    
    
    
    

    
    
    
    
    

    
    

    
    
    
    
    
    
    
    
    
      
    
    
    
    
    

    

  
  
    

  
  

  

  
    
      
        

##### Cite

        
          ×
        
      
      
        

```

```

      
      
        **[Copy](#)
        **[Download](#)
