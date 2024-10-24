# asciidoc-book-template


[AsciiDoc](https://docs.asciidoctor.org/asciidoc/latest/) is a lightweight and semantic markup language primarily designed for writing technical documentation. The language can be used to produce a variety of presentation-rich output formats, all from content encoded in a concise, human-readable, plain text format.

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

Install syntax highlighting for code examples:

```bash
gem install rouge
```

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
asciidoctor-pdf   
asciidoctor-epub3   
```

**Please note:** The Microsoft Windows operating system uses ``\`` instead of ``/`` to specify file paths on the command line.

**Also see:** CLI commands in ``build.bat``.

<!--
## Optional extensions

Install automatic hyphenation, if needed:
```
gem install text-hyphen
```

Generate output with custom layout with [Asciidoctor Web PDF](https://github.com/ggrossetie/asciidoctor-web-pdf), a PDF converter for AsciiDoc that allows complex layouts to be defined with CSS and JavaScript.

**Direct Download:** https://github.com/ggrossetie/asciidoctor-web-pdf/releases

![alt text](img/image.png)


**Also see:** Contents of folder ``tools/`` 

**Please note:** The file ``build.bat`` expects an unzipped installation in `/tools/asciidoctor-web-pdf-win-v1.0.0-alpha.16/`
-->

