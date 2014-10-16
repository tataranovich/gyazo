PACKAGE=gyazo
VERSION=0.1
RELEASE_DIR=..
RELEASE_FILE=$(PACKAGE)-$(VERSION)
PREFIX?=/usr/local
DESTDIR=
BINDIR=$(DESTDIR)$(PREFIX)/bin
INSTALL_PROGRAM=install -D -m 0755

install:
	$(INSTALL_PROGRAM) src/gyazo $(BINDIR)/gyazo

dist:
	tar -cf $(RELEASE_DIR)/$(RELEASE_FILE).tar --exclude=.git . && \
	gzip -9 $(RELEASE_DIR)/$(RELEASE_FILE).tar

.PHONY: install dist
