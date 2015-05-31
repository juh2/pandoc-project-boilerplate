Pandoc Project Boilerplate
==========================

This is the boilerplate to produce a book and an ebook with [Pandoc](http://pandoc.org/).

It is derived from my German book ["Das Zen von Pandoc"](http://literatur.hasecke.com/sachbuecher/das-zen-von-pandoc) which you can buy as [book](http://www.amazon.de/Das-ZEN-von-Pandoc-professionell/dp/1505218799/ from Amazon
) and as ebook on [Amazon](https://www.amazon.de/dp/B00TQ55D34
), [Google Play](https://play.google.com/store/books/details?id=-V2-BgAAQBAJ) and the [iBooks Store](https://itunes.apple.com/us/book/das-zen-von-pandoc/id982527831).  

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
