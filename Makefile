################################################################
# $Id$
# Makefile for SFU Cosmology website
################################################################

FILL = PYTHONPATH=.:$(PYTHONPATH) cheetah fill


################################################################
# Dependencies
################################################################

# Files
htmls = $(addsuffix .html, index people seminars visitors mug)


# Targets
all: $(htmls)

seminars.html: seminars.txt seminars.py

################################################################
# Implicit rules
################################################################

# Production rules
%.html: %.tmpl layout.tmpl
	$(FILL) $<
