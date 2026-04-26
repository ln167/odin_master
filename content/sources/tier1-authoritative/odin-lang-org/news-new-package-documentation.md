New Package Documentation | Odin Programming Language 

[![Odin](/logo.svg)](/)


* [Home](/)
* [Docs](/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](/news)
* [Showcase](/showcase)
* [Forum](https://forum.odin-lang.org)
* [Community](/community)
* [GitHub](https://github.com/odin-lang/Odin)
* Appearance:

* [2025 Q4 and 2026 Q1 Newsletter](/news/newsletter-2026-q1/)
* [Moving Towards a New "core:os"](/news/moving-towards-a-new-core-os/)
* [2025 Q1 Newsletter](/news/newsletter-2025-q1/)
* [Orca Odin Support](/news/orca-odin/)
* [December 2024 Newsletter](/news/newsletter-2024-12/)
* [October 2024 Newsletter](/news/newsletter-2024-10/)
* [September 2024 Newsletter](/news/newsletter-2024-09/)
* [August 2024 Newsletter](/news/newsletter-2024-08/)
* [July 2024 Newsletter](/news/newsletter-2024-07/)
* [June 2024 Newsletter](/news/newsletter-2024-06/)
* [May 2024 Newsletter](/news/newsletter-2024-05/)
* [April 2024 Newsletter](/news/newsletter-2024-04/)
* [March 2024 Newsletter](/news/newsletter-2024-03/)
* [February 2024 Newsletter](/news/newsletter-2024-02/)
* [January 2024 Newsletter](/news/newsletter-2024-01/)
* [December 2023 Newsletter](/news/newsletter-2023-12/)
* [November 2023 Newsletter](/news/newsletter-2023-11/)
* [September 2023 Newsletter](/news/newsletter-2023-09/)
* [August 2023 Newsletter](/news/newsletter-2023-08/)
* [July 2023 Newsletter](/news/newsletter-2023-07/)
* [June 2023 Newsletter](/news/newsletter-2023-06/)
* [April 2023 Newsletter](/news/newsletter-2023-04/)
* [December 2022 Newsletter](/news/newsletter-2022-12/)
* [November 2022 Newsletter](/news/newsletter-2022-11/)
* [Reading a File Line by Line](/news/read-a-file-line-by-line/)
* [Calling Odin from Python](/news/calling-odin-from-python/)
* [Binding to C](/news/binding-to-c/)
* [Odin's Declaration Syntax](/news/declaration-syntax/)
* [Official Metal and Direct3D Support](/news/major-graphics-apis/)
* [New Package Documentation](/news/new-package-documentation/)
* [Optional Semicolons](/news/optional-semicolons/)
* [A Quine in Odin](/news/quine-in-odin/)

1. [News](/news)
2. [New package documentation](/news/new-package-documentation)

# New Package Documentation

2022-01-23

## New Website [#](#new-website)

Odin is taking documentation seriously. Documentation is a large part of making software easy to learn, accessible, and maintainable; programming languages are no exception.

We are proud announce the brand new documentation site for all the official library collections ([`core`](https://github.com/odin-lang/Odin/tree/master/core) and [`vendor`](https://github.com/odin-lang/Odin/tree/master/vendor)): [pkg.odin-lang.org](http://pkg.odin-lang.org/).

![pkg.odin-lang.org screenshot](/images/new-package-documentation-screenshot.png)

## Layout [#](#layout)

Packages documentation has three columns:

* Left sidebar is an overview of all the packages within that library collection
* Centre is the main documentation for that package
* Right sidebar is an overview of all the declarations with in the package

Declarations are grouped into different sections: types, constants, variables, procedures, and procedure types. Each declaration displays what the declaration looks like in source, a link to the declaration in source, and a collapsible description below it.

## Documenting Odin Code [#](#documenting-odin-code)

We have developed the `odin doc` documentation tool. This tool parses and checks Odin source code (including comments) and produces documentation as plain text or in the [`.odin-doc` format](https://github.com/odin-lang/Odin/blob/master/core/odin/doc-format/doc_format.odin). This results in documentation that is tightly coupled with the code that it documents. The brand new documentation site, [pkg.odin-lang.org](http://pkg.odin-lang.org/), uses a `.odin-doc` file to generate the entire documentation in a completely automated process.

`odin doc` is much simpler in design than related tools such as Python’s [Docstring](https://www.python.org/dev/peps/pep-0257/) or the behemoth that is [Doxygen](https://www.doxygen.nl/index.html). The comments read by `odin doc` are not language constructs (like with Docstring), specialized comments, nor must they have a machine-only readable syntax (such as Doxygen). `odin doc` comments are just plain ol’ comments—readable if `odin doc` did not exist.

The commenting convention is simple: to document any declaration (variable, constant, type, procedure, procedure group), or even a package, write a regular comment directly above/preceding the declaration, with no blank line in-between.

```
// next reads and returns the next Unicode character. It returns EOF at the end of the source.
// next does not update the Scanner's pos field. Use 'position(s)' to get the current position.
next :: proc(s: ^Scanner) -> rune {
```

Comments on package declarations should provide information about the general package documentation. These comments can be short, like with [`package compress`](https://pkg.odin-lang.org/core/compress/):

```
// package compress is a collection of utilities to aid with other compression packages
package compress
```

Package comments can also be detailed like the [`package fmt`](https://pkg.odin-lang.org/core/fmt/) overview. That package uses a convention that aids with large introductory documentation where the package comment is placed within its own file, [doc.odin](https://github.com/odin-lang/Odin/blob/master/core/fmt/doc.odin). *Please note* that when writing package comments of any size, the first sentence of the comment will appear in the package directory listing (e.g. [`core`’s listing](https://pkg.odin-lang.org/core/)).

Regarding the [pkg.odin-lang.org](https://pkg.odin-lang.org) HTML generation, there are a few formatting rules that the tool uses:

* Subsequent lines of text are considered part of the same paragraph; a blank line must be present to separate paragraphs
* Pre-formatted (code) text must be indented relative to the surrounding comment text with a tab (`\t`)
* If a pre-formatted block is preceded with a paragraph that ends with `Example:`, the following block will be considered a code example

## Contribution and Feedback [#](#contribution-and-feedback)

We are really excited to share this is brand new site with you. As always, any feedback is welcomed.

If you are interested in contributing to this project, to existing [packages](https://github.com/odin-lang/Odin/tree/master/core) and the [generation tool](https://github.com/odin-lang/pkg.odin-lang.org), both are of course open source!

* [New Website](#new-website)
* [Layout](#layout)
* [Documenting Odin Code](#documenting-odin-code)
* [Contribution and Feedback](#contribution-and-feedback)

[![Odin](/logo.svg)](/)

The Data-Oriented Language for Sane Software Development.

#### Resources

* [Docs](/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](/news)

#### Community

* [GitHub](https://github.com/odin-lang/Odin)
* [Discord](https://discord.gg/vafXTdubwr)
* [Twitch](https://www.twitch.tv/ginger_bill)
* [YouTube](https://www.youtube.com/channel/UCUSck1dOH7VKmG4lRW7tZXg)
* [Showcase](/showcase)

#### Contribute

* [Issues](https://github.com/odin-lang/Odin/issues)
* [Donate](https://www.patreon.com/gingerbill)

© 2016–2024 Ginger Bill