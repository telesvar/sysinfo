PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/man/man1

INSTALL ?= install
INSTALL_PROGRAM = $(INSTALL) -m 755
INSTALL_MAN = $(INSTALL) -m 644
RM ?= rm -f

PROG = sysinfo
MAN = $(PROG).1

all: $(PROG)

$(PROG):
	@test -x $(PROG) || chmod +x $(PROG)

$(BINDIR) $(MANDIR):
	$(INSTALL) -d $@

install: all $(BINDIR) $(MANDIR)
	$(INSTALL_PROGRAM) $(PROG) $(BINDIR)/$(PROG)
	$(INSTALL_MAN) $(MAN) $(MANDIR)/$(MAN)
	makewhatis $(PREFIX)/man

uninstall:
	$(RM) $(BINDIR)/$(PROG)
	$(RM) $(MANDIR)/$(MAN)
	makewhatis $(PREFIX)/man

.PHONY: all install uninstall
