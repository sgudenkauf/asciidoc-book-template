@echo off

REM start /b asciidoctor       src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master.html
REM start /b asciidoctor-pdf   src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master.pdf
REM start /b asciidoctor-epub3 src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master.epub

REM start /b .asciidoctor-web-pdf\asciidoctor-web-pdf.exe src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master-WEB.pdf
 REM start /b .asciidoctor-web-pdf\asciidoctor-web-pdf.exe src\asciidoc-book-master.adoc -a stylesheet="+..\css\myStyle.css" -o out\asciidoc-book-master-WEB.pdf

start /b .asciidoctor-reveal-js\asciidoctor-revealjs-win.exe src\slides\slides.adoc -o out\slides\slides.pdf

EXIT 