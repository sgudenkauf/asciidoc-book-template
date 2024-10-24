@echo off

start /b asciidoctor       src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master.html
start /b asciidoctor-pdf   src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master.pdf
start /b asciidoctor-epub3 src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master.epub
start /b .asciidoctor-web-pdf\asciidoctor-web-pdf.exe src\book\asciidoc-book-master.adoc -o out\book\asciidoc-book-master-WEB.pdf
REM start /b .asciidoctor-web-pdf\asciidoctor-web-pdf.exe src\asciidoc-book-master.adoc -a stylesheet="+..\css\myStyle.css" -o out\asciidoc-book-master-WEB.pdf

EXIT 