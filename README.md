Pandoc Project Boilerplate
==========================

This is the boilerplate to produce a book and an ebook with Pandoc.

Requirements
------------

* Pandoc (version 1.12.3 or higher)
* GNU Make
* Full-featured TeX-Distribution

Makefile
--------

The Makefile contains all commands we need to produce pdf files for proof reading and printing as well as an epub file for distribution.

outline.txt
-----------

If you split your book into several files, eg. because you want to organize your work chapterwise, you can list the files in outline.txt in order of appearance in the book.

There are other ways to concat files to a book. You can name your files in an alphanumerical way, eg. 00-intro.md, 01-preface.md etc. Then you can change the definition of the SRC variable accordingly.

    SRC = *.md

draft.tex
---------

This file contains the latex preamble to produce a proof reading printout of your book. We are using the stdpage latex package to produce a German Normseite.

final.tex
---------

This file contains the preamble to produce the final production pdf to be printed eg. by a print-on-demand service. Adjust it to your needs.
