PREFIX?=/usr/local
DESTDIR=
BINDIR=$(DESTDIR)$(PREFIX)/bin
INSTALL_PROGRAM=install -D -m 0755

install:
	$(INSTALL_PROGRAM) src/gyazo $(BINDIR)/gyazo

.PHONY: install
