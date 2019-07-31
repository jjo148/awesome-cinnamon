#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_AWESOME_CINNAMON = $(PREFIX)/bin/awesome-cinnamon
PATH_AWESOME_CINNAMON_SESSION_BIN = $(PREFIX)/bin/cinnamon-session-awesome
PATH_AWESOME_CINNAMON_DESKTOP = $(PREFIX)/share/applications/awesome-cinnamon.desktop
PATH_AWESOME_CINNAMON_SESSION = $(PREFIX)/share/cinnamon-session/sessions/awesome-cinnamon.session
PATH_AWESOME_CINNAMON_XSESSION = $(PREFIX)/share/xsessions/awesome-cinnamon.desktop

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/awesome-cinnamon-xsession.desktop $(PATH_AWESOME_CINNAMON_XSESSION)
	$(INSTALL) -m0644 -D session/awesome-cinnamon.desktop $(PATH_AWESOME_CINNAMON_DESKTOP)
	$(INSTALL) -m0644 -D session/awesome-cinnamon.session $(PATH_AWESOME_CINNAMON_SESSION)
	$(INSTALL) -m0755 -D session/cinnamon-session-awesome $(PATH_AWESOME_CINNAMON_SESSION_BIN)
	$(INSTALL) -m0755 -D session/awesome-cinnamon $(PATH_AWESOME_CINNAMON)


uninstall:
	rm -f $(PATH_AWESOME_CINNAMON)
	rm -f $(PATH_AWESOME_CINNAMON_DESKTOP)
	rm -f $(PATH_AWESOME_CINNAMON_SESSION)
	rm -f $(PATH_AWESOME_CINNAMON_SESSION_BIN)
	rm -f $(PATH_AWESOME_CINNAMON_XSESSION)


.PHONY: all install uninstall
