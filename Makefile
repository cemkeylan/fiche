# for debug add -g -O0 to line below
CFLAGS+=-pthread -O2 -Wall -Wextra -Wpedantic -Wstrict-overflow -fno-strict-aliasing -std=gnu11 -g -O0
PREFIX=/usr/local
BINDIR=${PREFIX}/bin

fiche:
	$(CC) main.c fiche.c $(CFLAGS) -o fiche

install: fiche
	install -Dm 0755 fiche $(DESTDIR)$(BINDIR)/fiche

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/fiche

clean:
	rm -f fiche

.PHONY: clean
