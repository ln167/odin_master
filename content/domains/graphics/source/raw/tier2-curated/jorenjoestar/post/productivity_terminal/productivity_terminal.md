---
source_url: https://jorenjoestar.github.io/post/productivity_terminal/productivity_terminal
source_id: jorenjoestar-bindless
fetched_at: 2026-05-16T17:31:56.634168+00:00
fetcher: html_mirror
sha256: c41a4372c579701d0420240752a7cd57a4761bb85288aa0f54ac4c1c251c9341
---

Improving Productivity in Terminals with Aliases | Gabriel's Virtual Tavern

  

  

  

  

  

  
  
  

  

# Improving Productivity in Terminals with Aliases

  

  
    

  
  

  
  
    
    
      
    
    2020-04-13
  
  

  

  
  
  
    5 min read
  
  

  
  
  

  
  
  
  
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
      
    
  

  

    

  

  

    
      

After reading the [great article by Sarah Drasner](https://www.netlify.com/blog/2020/04/12/speed-up-productivity-with-terminal-aliases/) on productivity I wanted to share some other improvements that I use in my daily work and personal coding life.

I am developing mostly rendering and other game-related code, so my OS is Windows 10.
I have a background in using Linux-only for work at the beginning of my career, so bash customization and Vim were too useful to be overlooked!

For Windows I started using [Cmder](https://cmder.net/) few years ago, but I should check also the revamped powershell.
What I love about Cmder is that it gives you most of Unix/Linux scripts into Windows.
And with that it comes also an ‘alias’ file, in the path *%CMDER_ROOT%\config\user_aliases.cmd*.

Here are some group of aliases I use to speed up my productivity!

# Knowing your aliases

First of all some commands to know and edit your aliases.

I tend to write aliases with acronyms for faster typing.

```
ma=cat %CMDER_ROOT%\config\user_aliases.cmd

ea=vim %CMDER_ROOT%\config\user_aliases.cmd

```

M.A. stands for *My Aliases*, while E.A. *Edit Aliases*.

This is the base - when I forget an alias I just type *ma* and I have all my list!

# Jumping around

Navigation is the first type of enhancement I recommend.
This is HUGE for me and incredibly simple:

```
..=cd ..
..2=cd ../..
..3=cd ../../..
..4=cd ../../../..

```

Navigate to parent folders in a much faster way!

The second one is actually…*jumps* (thinking of ASM instructions)!
When I identify some folders that I access often, I add these kind of lines:

```
jc= cd /D C:\Coding
jp= cd /D C:\Users\Gabriel\Documents\Visual Studio 2017\Projects

```

Again aliases.
*Jump Coding* and *Jump Projects*.

Notice the argument /D to use the absolute path - needed when you have paths in other folders.

# File listing

Again another simple trick, and you can add more variations to your needs.
*ls* is the *dir* command of Linux/Unix, and is another foundation.

```
ls=ls --show-control-chars -F --color $*
ll=ls --show-control-chars -F -l --color $*
lr=ls --show-control-chars -F -lrt --color $*
la=ls --show-control-chars -F -a --color $*

```

Coloring is necessary to know what is a folder and what a file, something that should be enabled by default in my opinion.
Also notice the ‘$*’ at the end - it means to append all the argument that you want to pass *after* the alias!

# Text editing

I mainly use Sublime Text and occasionally VIM, so here are some *aliases* as well:

```
vi=vim $*
vimrc=vim %CMDER_ROOT%\vendor\msysgit\share\vim\vimrc

subl="C:\Program Files\Sublime Text 3\sublime_text.exe" $*

```

With the alias *subl* you can open any file into Sublime Text. Very handy combination Cmder + Sublime Text!

Also quickly editing your *vimrc* file is a need for VIM users.

# Grepping

I honestly completely forgot to add the *color* option…learning through sharing. Thank you [Sarah](https://twitter.com/sarah_edo) :)

Added the color option, these are the two variations of grep I use the most:

```
grep=grep --color $*

gric=grep --color -Iir $*
gril=grep --color -Iirl $*

```

*gric* stands for *Grep Ignore Case Ignore Binary Recursive* - more or less.
*gril* is like *gric*, but just lists file instead of content per file in the search. I use it to just check files.

Quickly going through the options for *grep*:

1. -I: let you ignore binary files. Speed up searching quite a bit.

2. -i: ignore case.

3. -r: recursively search directories.

4. -l: only list files, not content.

I’ll show you the difference.

Let’s search for *‘blipbuffer’* into my HydraNes/src folder:

`grep --color -Iir blipbuffer *`

We’ll loose color in the post, but this is the result:

```
src/main.cpp:            if (nes->apu.blipBuffer->samples_avail()) {
src/main.cpp:                int32 readSamples = nes->apu.blipBuffer->read_samples(sampleBuffer, kBufferSize, false);
src/main.cpp:            const int32 availableSamples = nes->apu.blipBuffer->samples_avail();
src/main.cpp:                const int32 readSamples = nes->apu.blipBuffer->read_samples( bufferAddress, kBufferSize, false );
src/Nes.cpp:    if ( !blipBuffer ) {
src/Nes.cpp:        blipBuffer = new Blip_Buffer();
src/Nes.cpp:        blipBuffer->clock_rate( CpuClockRate );
src/Nes.cpp:        blipBuffer->sample_rate( SampleRate );
src/Nes.cpp:        externalApu->output( blipBuffer );
src/Nes.cpp:    blipBuffer->clear();
src/Nes.cpp:    blipBuffer->clear();
src/Nes.cpp:        blipBuffer->end_frame( count );
src/Nes.cpp:    //    //blipBuffer->end_frame( remainingCycles );
src/Nes.h:#include "BlipBuffer/blip_buf.h"
src/Nes.h:            Blip_Buffer*            blipBuffer = nullptr;

```

Instead using the list only option:

`grep --color -Iirl blipbuffer *`

Gives you this result:

```
src/main.cpp
src/Nes.cpp
src/Nes.h

```

# Git

This is another big one.
Git can have very verbose commands, so aliases save a lot of typing!
Again I add generic and very specific version of commands:

```
gs=git status
gl=git log --oneline --all --graph --decorate $*

ga=git add "$*"
gcm=git commit -m "$*"
grmdir=git rm -r "$*"
grmf=git rm "$*"

gpso=git push -u origin "$*"
gpsom=git push -u origin master

gplo=git pull origin "$*"
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

```

See the difference between *gpso* and *gpsom* - the second one just using the *master* branch.
*gpsom* and *gplom* are the ones I use the most and this again saves a lot of time.

Same for the *subtree* commands, showing how I update my code using the common libraries names as *hydra*.
In this case - and this is more a git concept - when working with subtree I use a remote alias, added with `git remote add -f 'name' https://....git` .

*gs* is great to see what is the status of the current repository you are in.
*gl* logs all the commits.
*ga* adds the files and folders you write after the command.

# Visual Studio Compiler

Some different aliases I use for Visual Studio:

```
vs="%VS140COMNTOOLS%..\IDE\devenv.exe" /edit "$*"

;= Needed to find MSBuild executable.
vcvars="C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"

msb=MSBuild $1 /property:Configuration=$2 /property:Platform=$3
msbd=MSBuild $1 /property:Configuration=Debug /property:Platform=x64
msbr=MSBuild $1 /property:Configuration=Release /property:Platform=x64

```

Again something as *msb* can be used to build code from a Visual Studio Solution.
*msbd* and *msbr* are useful shortcuts for again commonly used configurations and platforms.

# Conclusions

There are many ways to improve productivity - and reducing the amount of stuff you have to write, for repetitive tasks, is very powerful.
Hope this helps and again thanks to [Sarah Drasner](https://twitter.com/sarah_edo) for the article that sparked the idea of writing this one!

If anybody wants to add more, comment, feedback please write to me!
Gabriel

    

    

    

  
  [utils](/tags/utils/)
  

    
      

  

  
  
  
    
  
  
  
    
      
      
    

    
      

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
          
        
      

    
  

      
      
    

    

    

  

      

    
    
    
    
    

    
    
    
      
      
      
      

      
        
      

      
        
        
        
        
        
      

      
      
      
      
    

    
    

    
    
    
    

    
    
    
    

    
    

    
    
    
    

    
    
    
    
    

    
    

    
    
    
    
    
    
    
    
    
      
    
    
    
    
    

    

  
  
    

  
  

  

  
    
      
        

##### Cite

        
          ×
        
      
      
        

```

```

      
      
        **[Copy](#)
        **[Download](#)
