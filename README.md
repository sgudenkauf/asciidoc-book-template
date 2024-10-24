# asciidoc-book-template


[AsciiDoc](https://docs.asciidoctor.org/asciidoc/latest/) is a lightweight and semantic markup language primarily designed for writing technical documentation. The language can be used to produce a variety of presentation-rich output formats, all from content encoded in a concise, human-readable, plain text format.

## Basic installation for different output formats

Install Ruby first, for example, by using the [RubyInstaller](https://rubyinstaller.org/downloads/). Confirm successful installation:

```
ruby --version
```

Install Asciidoctor:

```
gem install asciidoctor
asciidoctor --version
```

Install Asciidoctor-PDF:

```
gem install asciidoctor-pdf
asciidoctor-pdf -v
```

Install [Asciidoctor EPUB3](https://docs.asciidoctor.org/epub3-converter/latest/#install-the-published-gem):

```
gem install asciidoctor-epub3
asciidoctor-epub3 -v
```

Install syntax highlighting for code examples:
```
gem install rouge
```

## Test basic installation

Create project folder structure ``asciidoc-book-template/src/example`` or clone this repository.

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

In the folder ``asciidoc-book-template/example``, execute the following commands to generate diferent output formats:

```
asciidoctor basic-example.adoc  
asciidoctor-pdf basic-example.adoc  
asciidoctor-epub3 -D output basic-example.adoc  
```

Inspect output files.


## Optional extensions

Install automatic hyphenation, if needed:
```
gem install text-hyphen
```


## Write content

Write your documentation, for example:
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

## Generate output

Generate output files:

```
asciidoctor test.adoc  
asciidoctor-pdf test.adoc  
asciidoctor-epub3 test.adoc  
```

**Also see:** CLI commands in ``build.bat``.

## Generate output with custom layout

[Asciidoctor Web PDF](https://github.com/ggrossetie/asciidoctor-web-pdf) is PDF converter for AsciiDoc that allows complex layouts to be defined with CSS and JavaScript.

**Direct Download:** https://github.com/ggrossetie/asciidoctor-web-pdf/releases

![alt text](img/image.png)

**Also see:** Contents of folder ``tools/`` 

**Please note:** The file ``build.bat`` expects an unzipped installation in `/tools/asciidoctor-web-pdf-win-v1.0.0-alpha.16/`



