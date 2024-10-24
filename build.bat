@echo off

start /b asciidoctor       src\asciidoc-book-master.adoc -o out\asciidoc-book-master.html
start /b asciidoctor-pdf   src\asciidoc-book-master.adoc -o out\asciidoc-book-master.pdf
start /b asciidoctor-epub3 src\asciidoc-book-master.adoc -o out\asciidoc-book-master.epub
start /b .asciidoctor-web-pdf\asciidoctor-web-pdf.exe src\asciidoc-book-master.adoc -o out\asciidoc-book-master-WEB.pdf
REM start /b .asciidoctor-web-pdf\asciidoctor-web-pdf.exe src\asciidoc-book-master.adoc -a stylesheet="+..\css\myStyle.css" -o out\asciidoc-book-master-WEB.pdf

EXIT