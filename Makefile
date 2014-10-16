PACKAGE=gyazo
VERSION=$(shell git tag | sed -e 's/^v//')
PREFIX?=/usr/local
DESTDIR=
BINDIR=$(DESTDIR)$(PREFIX)/bin
SRCS=src/gyazo
DOCS=LICENSE README.md
DISTDIR=$(PACKAGE)-$(VERSION)
DISTFILES=$(SRCS) $(DOCS) Makefile
INSTALL_PROGRAM=install -D -m 0755

install:
	$(INSTALL_PROGRAM) src/gyazo $(BINDIR)/gyazo

dist: $(DISTFILES)
	tar -czf ../$(DISTDIR).tar.gz --transform='s,^,$(DISTDIR)/,S' $^

.PHONY: install dist
