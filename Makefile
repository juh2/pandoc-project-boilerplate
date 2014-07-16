# This is a Makefile to be used with Pandoc. Adjust it to your needs.
# Copyright (C) 2014 Jan Ulrich Hasecke
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
# more details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 51 Franklin
# St, Fifth Floor, Boston, MA 02110, USA

# Change "bookname" to the filename of your book
TARGET = bookname
SRC = $(shell cat outline.txt)
ID = $(shell git rev-parse HEAD)
TARGETDIR = build
DRAFTOPTIONS = --variable lang=german --variable fontsize=12pt -H draft.tex
PDFOPTIONS = --latex-engine=xelatex --variable fontsize=10pt \
             --variable documentclass=scrbook --variable lang=ngerman \
             -H final.tex
EPUBOPTIONS =

all: pdf epub fingerprint
	@echo "Done!"

draft:
	pandoc $(SRC) $(DRAFTOPTIONS) -o $(TARGETDIR)/$(TARGET)-$(ID).pdf

pdf: $(TARGETDIR)
	pandoc $(SRC) $(PDFOPTIONS)  -o $(TARGETDIR)/$(TARGET)-$(ID).pdf

epub: $(TARGETDIR)
	pandoc $(SRC) $(EPUBOPTIONS) -o $(TARGETDIR)/$(TARGET)-$(ID).epub

$(TARGETDIR):
	mkdir build

fingerprint: $(TARGETDIR)
	shasum $(TARGETDIR)/$(TARGET)-$(ID).pdf > $(TARGETDIR)/$(TARGET)-$(ID).sha
	shasum $(TARGETDIR)/$(TARGET)-$(ID).epub >> $(TARGETDIR)/$(TARGET)-$(ID).sha
