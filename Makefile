PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/man/man1

INSTALL ?= install
RM ?= rm -f

PROG = sysinfo
MAN = $(PROG).1

install:
	@echo "Installing $(PROG)..."
	$(INSTALL) -m 755 $(PROG) $(BINDIR)/$(PROG)
	@echo "Installing manual page..."
	$(INSTALL) -m 644 $(MAN) $(MANDIR)/$(MAN)
	makewhatis $(PREFIX)/man

uninstall:
	@echo "Uninstalling $(PROG)..."
	$(RM) $(BINDIR)/$(PROG)
	@echo "Uninstalling manual page..."
	$(RM) $(MANDIR)/$(MAN)
	makewhatis $(PREFIX)/man

.PHONY: install uninstall
