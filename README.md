# asciidoc-book-template


[AsciiDoc](https://docs.asciidoctor.org/asciidoc/latest/) is a lightweight and semantic markup language primarily designed for writing technical documentation. The language can be used to produce a variety of presentation-rich output formats, all from content encoded in a concise, human-readable, plain text format.

With this project we aim to provide a simple book template that highlights the benefits of using AsciiDoc for writing technical documentation and to generate different output formats from a single source that also adresses users of the Microsoft Windows operating system. 

## Basic installation for different output formats

Install Ruby first, for example, by using the [RubyInstaller](https://rubyinstaller.org/downloads/). Confirm successful installation:

```bash
ruby --version
```

Install Asciidoctor:

```bash
gem install asciidoctor
asciidoctor --version
```

Install Asciidoctor-PDF:

```bash
gem install asciidoctor-pdf
asciidoctor-pdf -v
```

Install [Asciidoctor EPUB3](https://docs.asciidoctor.org/epub3-converter/latest/#install-the-published-gem):

```bash
gem install asciidoctor-epub3
asciidoctor-epub3 -v
```

Install [syntax highlighting](https://docs.asciidoctor.org/pdf-converter/latest/syntax-highlighting/) for code examples:

```bash
gem install rouge
```

<!--


Install rendering for [STEM](https://docs.asciidoctor.org/pdf-converter/latest/stem/) expressions:

```bash
gem install asciidoctor-mathematical
```

**Please note:** When converting to HTML, Asciidoctor relies on the JavaScript-based MathJax library to parse and render the STEM expressions in the browser when the page is loaded. Asciidoctor PDF does not provide native support for STEM blocks and inline macros (i.e., asciimath and latexmath). Therefore, we use ...



```
gem install asciidoctor-texnical
```

-->

## Test basic installation

Create project folder structure ``asciidoc-book-template/example`` or clone this repository.

Move to folder ``asciidoc-book-template/example`` and create file ``basic-example.adoc``:

```asciidoc
= Document Title
Doc Writer <doc@example.com>
:reproducible:
:listing-caption: Listing
:source-highlighter: rouge
:toc:
// Uncomment next line to add a title page (or set doctype to book)
//:title-page:
// Uncomment next line to set page size (default is A4)
//:pdf-page-size: Letter

An example of a basic https://asciidoc.org[AsciiDoc] document prepared by {author}.

== Introduction

A paragraph followed by an unordered list{empty}footnote:[AsciiDoc supports unordered, ordered, and description lists.] with square bullets.footnote:[You may choose from square, disc, and circle for the bullet style.]

[square]
* item 1
* item 2
* item 3

== Main

Here's how you say "`Hello, World!`" in Prawn:

.Create a basic PDF document using Prawn
[source,ruby]
----
require 'prawn'

Prawn::Document.generate 'example.pdf' do
  text 'Hello, World!'
end
----

== Conclusion

That's all, folks!
```

**See also:** [AsciiDoc Syntax Quick Reference](https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/)

In the folder ``asciidoc-book-template/example``, execute the following commands to generate diferent output formats:

```bash
asciidoctor basic-example.adoc  
asciidoctor-pdf basic-example.adoc  
asciidoctor-epub3 basic-example.adoc  
```

Inspect output files.

## Create book template

Copy template files in folder ``asciidoc-book-template/src/`` from this repository to your ``asciidoc-book-template/src/`` folder or write your documentation, for example:

```
src/
├─ about.adoc 
├─ appendix.adoc 
├─ asciidoc-book-master.adoc 
├─ bibliography.adoc 
├─ chapter01.adoc 
├─ chapter02.adoc 
├─ colophon.adoc 
├─ introduction.adoc 
├─ preface.adoc
```

**See also:** [AsciiDoc Syntax Quick Reference](https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/)

## Generate book in different formats

Move to folder ``asciidoc-book-template/`` and generate output files in folder ``asciidoc-book-template/dist``:

```bash
asciidoctor src/asciidoc-book-master.adoc -o out/asciidoc-book-master.html
asciidoctor-pdf src/asciidoc-book-master.adoc -o out/asciidoc-book-master.pdf
asciidoctor-epub3 src/asciidoc-book-master.adoc -o out/asciidoc-book-master.epub
```

**Please note:** The Microsoft Windows operating system uses ``\`` instead of ``/`` to specify file paths on the command line. Adjust the file paths in the command line arguments accordingly.

**Also see:** CLI commands in ``build.bat``.

## About STEM expressions and advanced PDF layout

When converting to HTML, Asciidoctor relies on the JavaScript-based [MathJax](https://www.mathjax.org/) library to parse and render [STEM expressions](https://docs.asciidoctor.org/pdf-converter/latest/stem/) in the browser when the page is loaded. Asciidoctor PDF does not provide native support for STEM blocks and inline macros (e.g. *latexmath*). 

The standard STEM processor for AsciiDoc is [Asciidoctor Mathematical](https://github.com/asciidoctor/asciidoctor-mathematical). However, it is difficult to install because it requires specific third-party libraries and system fonts for image rendering. You can consider using the [Docker (OCI) image for Asciidoctor](https://github.com/asciidoctor/docker-asciidoctor), which includes [Asciidoctor Mathematical](https://github.com/asciidoctor/asciidoctor-mathematical).

Alternatively, you can use [Asciidoctor Web PDF](https://github.com/ggrossetie/asciidoctor-web-pdf), a PDF converter for AsciiDoc that allows complex layouts:

- Complex layouts with CSS and JavaScript
- SVG icons with Font Awesome 5
- PDF document outline (i.e., bookmarks)
- Table Of Contents
- Document metadata (title, authors, subject, keywords, etc)
- Fully customizable template
- Syntax highlighting with [highlight.js](https://highlightjs.org/)
- Page numbering
- Preview mode
- STEM support with [MathJax 3](https://www.mathjax.org/)
- Templates for documents, letters, books, cheat sheets, resumes and slides

**Direct Download (pre-compiled binaries):** https://github.com/ggrossetie/asciidoctor-web-pdf/releases

![alt text](img/image.png)



<!--
**Please note:** To render STEM expressions for PDF output, use the flag ``-r asciidoctor-mathematical``:

```bash
asciidoctor-pdf -r asciidoctor-mathematical src/asciidoc-book-master.adoc -o out/asciidoc-book-master.pdf
```
It [fails to built](https://github.com/asciidoctor/asciidoctor-mathematical/issues/121) on the Microsoft Windows operating system



Generate output with custom layout with [Asciidoctor Web PDF](https://github.com/ggrossetie/asciidoctor-web-pdf), a PDF converter for AsciiDoc that allows complex layouts to be defined with CSS and JavaScript.

**Also see:** Contents of folder ``tools/`` 

**Please note:** The file ``build.bat`` expects an unzipped installation in `/tools/asciidoctor-web-pdf-win-v1.0.0-alpha.16/`


## Optional extensions

Install automatic hyphenation, if needed:
```
gem install text-hyphen
```


-->

