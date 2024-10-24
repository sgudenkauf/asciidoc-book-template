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

Install [Asciidoctor EPUB3](https://docs.asciidoctor.org/epub3-converter/latest/#install-the-published-gem) :
```bash
gem install asciidoctor-epub3
asciidoctor-epub3 -v
```

## Optional extensions

Install automatic hyphenation, if needed:
```
gem install text-hyphen
```

Install different options for syntax highlighting, if needed:
```
gem install rouge
gem install coderay
gem install pygments.rb
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
asciidoctor-epub3 -D output test.adoc  
```

**Also see:** CLI commands in ``build.bat``.

## Generate output with custom layout

[Asciidoctor Web PDF](https://github.com/ggrossetie/asciidoctor-web-pdf) is PDF converter for AsciiDoc that allows complex layouts to be defined with CSS and JavaScript.

**Direct Download:** https://github.com/ggrossetie/asciidoctor-web-pdf/releases

![alt text](img/image.png)

**Also see:** Contents of folder ``tools/`` 

**Please note:** The file ``build.bat`` expects an unzipped installation in `/tools/asciidoctor-web-pdf-win-v1.0.0-alpha.16/`



