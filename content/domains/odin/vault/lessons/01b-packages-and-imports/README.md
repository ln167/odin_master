# Lesson 01b - packages and imports

## Concept

A **package** in Odin is a directory of `.odin` files that all declare the
same package name on their first line. That's it: one folder, one package.
The directory IS the package; the `package` line on each file just names it.

You've been staring at `package main` since lesson 01 without it being
explained. That line says "this file belongs to the package called `main`."
Every other `.odin` file you put in that same folder must also say
`package main`, or the compiler refuses to build the directory.

An **import** brings another package's top-level symbols into the current
file so you can call them. `import "core:fmt"` is what makes the name
`fmt.println` resolve to something. Without that line the file doesn't
know `fmt` exists.

There are three places the compiler can look for an imported package:

- `core:something` - the Odin standard library, shipped with the compiler.
- `vendor:something` - third-party libraries shipped alongside core
  (SDL3, raylib, GLFW, stb_image, etc).
- A relative path like `"../mymath"` - your own packages, in your own
  directories.

That's the whole system. Two keywords (`package`, `import`), three places
to look, and one rule (all files in a folder agree on the package name).

---

## Leveling with you (if you come from OOP)

The shift to internalize: in Odin, the package is a **folder on disk**, not
a thing you declare in code. In C# you write `namespace MyCompany.Geometry`
at the top of a file and the file's location on disk is irrelevant. In
Odin the file's location is the *only* thing that matters; the
`package geometry` line is just a name the compiler checks for
consistency.

The other shift: files inside a package do NOT import each other. If
`mymath/vectors.odin` and `mymath/matrices.odin` both declare
`package mymath`, then a procedure in `vectors.odin` can call a procedure
in `matrices.odin` directly, with no import statement, because they're in
the same package. The package is the unit of scope sharing. Imports cross
package boundaries, never file boundaries inside a package.

If you're used to JS/TS where every file is its own module and you
explicitly `import { thing } from './sibling.ts'`, this will feel weird at
first. In Odin you write the helper proc in any of your package's files
and just call it from any other file in the same folder. The compiler
links them.

---

### Compared to C

C has no package system. It has the C preprocessor and a build system.
You write a `.h` header file declaring functions, you `#include "foo.h"`
in every file that wants to call those functions, the preprocessor
literally pastes the header's text into your file, and the linker hopes
the matching `.c` file got compiled into a `.o` you can link against.

Every cross-file call in C is two pieces of bookkeeping:

1. A declaration (in the header) so the caller's file can see the type.
2. A definition (in the `.c` file) so the linker can find the body.

Forget the header, the caller doesn't compile. Forget the `.c`, the
linker errors. Change the signature, you change it in two places. The
preprocessor doesn't understand what it's pasting, so you also write
`#ifndef FOO_H / #define FOO_H / #endif` include guards on every header
to stop double-inclusion exploding the build.

Odin replaces all of that with: put your files in a folder, give them
the same `package` line, done. No headers, no include guards, no forward
declarations. Files in the same package see each other automatically.
The compiler knows the difference between "declared" and "defined"
because it can read both halves itself.

This is one of the larger sources of pain Odin removes versus C, even
though it's almost invisible until you've felt the C version.

### Compared to C#

C# has two related concepts: namespaces and assemblies. Odin's package
is closest to the assembly (the unit the compiler emits), but the
ergonomics feel more like namespaces.

| C# | Odin |
|----|------|
| `namespace MyCompany.Geometry { ... }` declared in the file | `package geometry` line on each `.odin` file in the folder |
| File location on disk is irrelevant | Folder IS the package; location is everything |
| `using System.IO;` | `import "core:os"` |
| `using SIO = System.IO;` | `import sio "core:os"` |
| `public` / `internal` / `private` keywords on each member | Default is package-visible; `@(private)` attribute restricts |
| One file can contain multiple namespaces | One file belongs to exactly one package |
| Multiple files can share a namespace by writing the same `namespace` line | Multiple files share a package by living in the same folder AND writing the same `package` line |

The big mental shift from C#: there is no `public` / `internal` /
`private` keyword in Odin. Every top-level symbol is visible to the
whole package by default. If you want to hide something, you mark it
`@(private)` (which means "package-private," the closest analogue to
C#'s `internal`) or `@(private="file")` (which means "no other file in
this package can see it").

### Compared with Go

Go is the closest match by far. Same folder-as-package rule, same
"files in a package don't import each other," same idea that the
package name in code can differ from the folder name (though by
convention they match).

The one notable difference is visibility. Go uses **casing**:
identifiers that start with a capital letter are exported, lowercase
ones are package-private. There's no keyword, the compiler just looks
at the first character. Odin instead uses the `@(private)` attribute:
everything is exported (across the package) by default, and you opt
into hiding with `@(private)` or `@(private="file")`. The result is
the same kind of two-tier visibility, expressed differently.

---

## Reference: the syntax you'll need

### The package declaration

Every `.odin` file starts with this line:

    package main

The name (`main`, `mymath`, `geometry`, whatever) must match what every
other file in the same folder declares. The compiler enforces this.

`main` is special: the package containing `proc main` is required to be
called `main`. Every other package can be called anything (lowercase by
convention).

### Importing standard library packages

    import "core:fmt"
    import "core:strings"
    import "core:os"

The quotes are mandatory. `core:` is the collection (where to look); the
part after the colon is the path within that collection. `core:fmt` maps
to a folder shipped with the Odin compiler.

### Importing vendored libraries

    import "vendor:sdl3"
    import "vendor:raylib"
    import "vendor:glfw"

Same shape, different collection. `vendor:` points at the `vendor/`
directory shipped alongside `core/`. These are the bindings to common
C libraries (SDL, raylib, etc) maintained by the Odin team.

### Importing your own packages by relative path

    import "../mymath"
    import "./helpers"
    import "../../shared/protocol"

No collection prefix, just a path string relative to the importing file.
The compiler walks that path on disk, reads the `.odin` files there, and
treats them as a package. The folder's name (`mymath`) determines the
identifier you use to call into it (`mymath.something`).

### Aliasing an import

    import strs "core:strings"
    import sdl "vendor:sdl3"

The name before the path is the local alias. Inside this file, you
reference the package as `strs.contains(...)` instead of
`strings.contains(...)`. Use this when:

1. Two imports would collide (you import `core:strings` and your own
   `strings` package).
2. The package name is long and you're typing it a lot.
3. The package name doesn't match the folder name and you want clarity.

### Visibility attributes

    @(private)
    helper_proc :: proc() { ... }
    // visible inside this package, invisible to other packages

    @(private="file")
    file_local_helper :: proc() { ... }
    // visible only inside THIS file, invisible to siblings in the same package

    @(private="package")
    explicit_package_private :: proc() { ... }
    // identical to bare @(private)

Default (no attribute) is package-visible: any file in any package that
imports yours can call your top-level procs and read your top-level
constants and variables.

---

## The directory layout

When you write `import "core:fmt"`, where does the compiler actually look?

- `core:something` -> the `core/` directory inside your Odin compiler
  installation. On a typical install, that's somewhere like
  `C:\odin\core\` or `/usr/local/odin/core/`. The `core:fmt` package
  is the folder `core/fmt/`, and every `.odin` file in there starts
  with `package fmt`.
- `vendor:something` -> the `vendor/` directory alongside `core/`. Same
  shape: `vendor:sdl3` is the folder `vendor/sdl3/`, containing files
  that all start with `package sdl3`.
- `base:something` -> the `base/` directory. This holds the runtime
  primitives the language itself needs (the `runtime` package, intrinsics,
  the builtin operators implementation). You rarely import from `base:`
  by hand; most of what you need from it is already glued into the
  language. The most common case is `import "base:runtime"` when you're
  writing low-level code that needs access to the allocator types or
  the context struct.
- A relative path (`"../mymath"`) -> the compiler resolves the path
  relative to the directory of the file containing the `import` line,
  reads every `.odin` file in the target folder, confirms they all
  share a package declaration, and binds that package name as the
  identifier for this import.

---

## How to make your own multi-file package

You want a `mymath` package with two files in it. Here's the whole recipe:

1. Make a folder named `mymath/` somewhere in your project.
2. Put `mymath/vectors.odin` in it. First line: `package mymath`.
3. Put `mymath/constants.odin` next to it. First line: `package mymath`.
4. From any sibling caller (`main.odin` in the parent folder), write:

       import "../mymath"

5. Now you can call `mymath.vec_length(...)` and read `mymath.PI` from
   the caller.

That's it. `vectors.odin` and `constants.odin` did NOT import each
other; they share scope automatically because they declared the same
package. Top-level names from either file are visible to the other.

To build a multi-file program you can no longer use `odin run main.odin
-file` (that's the single-file shortcut). Instead, run the compiler
against the folder:

    odin run .

That tells the compiler "build the package in this directory, which
includes every `.odin` file here, plus every package it imports."

---

## Tasks

Open `main.odin`. The exercises walk you through:

1. Confirming `core:fmt` works (you've done this every lesson).
2. Importing `core:strings` with an alias and using it.
3. Importing the sibling `mymath` package and calling into it.
4. Declaring a `@(private="file")` symbol and calling it locally.
5. Observing that two files in the same package share scope without
   any import between them.

When you finish:

    odin run .

(Not `-file` this time. We have multiple files now.)

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try these one at a time and observe the error:

1. **Mismatched package names in the same folder.** Open
   `mymath/constants.odin` and change its first line to
   `package mymath_constants`. Run the build. The compiler refuses,
   because two files in `mymath/` now declare different packages. One
   folder is one package, full stop.
2. **Import a path that doesn't exist.** In `main.odin`, change
   `import "./mymath"` (or `"../mymath"`, whichever you used) to
   `import "./mymath_typo"`. Build. The compiler tells you it cannot
   find that package.
3. **Reach across packages into a private symbol.** Add a
   `@(private)` proc to `mymath/vectors.odin`, then try to call it
   from `main.odin`. The build fails: the symbol is package-private,
   so a different package (the caller) cannot see it. Then drop the
   `@(private)` and confirm the build succeeds.
4. **Name collision needing an alias.** Add a second import that
   would clash with an existing identifier (e.g. write a tiny local
   `strings/` package that also declares `package strings`, then
   import both `core:strings` and `./strings`). The compiler complains
   about the duplicate name. Fix it by aliasing one of them:
   `import strs "core:strings"`.

Then put everything back so your output matches `expected-output.txt`.

---

## Low-level notes

- Packages are a compile-time concept. There is no runtime "package"
  object you can introspect, no reflection over packages, nothing the
  CPU sees at execution time. By the time your program runs, every
  symbol has been resolved to an address and the package boundaries
  have been erased.
- `import` doesn't trigger any code execution. There's no equivalent
  of Python's "the module's top-level code runs on first import" or
  JS's side-effecting module loading. An `import` line just tells the
  compiler "also look at the symbols from this package while
  resolving names in this file."
- The `@(private)` attribute is enforced by the compiler's name
  resolution pass, not by runtime checks. There's no overhead for
  using or not using it. It's purely a "should this name be visible
  from outside" decision the compiler makes once and bakes in.
- The order of `import` statements does not matter. Cycles between
  packages are a compile error, not a runtime hazard, because there's
  no initialization order to worry about.

---

## Next: `02-types-and-printing/`

You've already worked through `02-types-and-printing` in sequence, so
loop back into the language proper. Now you know what the `package`
and `import` lines at the top of every lesson file were actually
doing.
