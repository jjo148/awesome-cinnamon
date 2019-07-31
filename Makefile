#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

# Cinnamon 
PATH_AWESOME_CINNAMON = $(PREFIX)/bin/awesome-cinnamon
PATH_AWESOME_CINNAMON_SESSION_BIN = $(PREFIX)/bin/cinnamon-session-awesome
PATH_AWESOME_CINNAMON_DESKTOP = $(PREFIX)/share/applications/awesome-cinnamon.desktop
PATH_AWESOME_CINNAMON_SESSION = $(PREFIX)/share/cinnamon-session/sessions/awesome-cinnamon.session
PATH_AWESOME_CINNAMON_XSESSION = $(PREFIX)/share/xsessions/awesome-cinnamon.desktop

# GNOME
PATH_AWESOME_GNOME = $(PREFIX)/bin/awesome-gnome
PATH_AWESOME_GNOME_DESKTOP = $(PREFIX)/share/applications/awesome-gnome.desktop
PATH_AWESOME_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/awesome-gnome.session
PATH_AWESOME_GNOME_XSESSION = $(PREFIX)/share/xsessions/awesome-gnome.desktop
PATH_GNOME_SESSION_AWESOME = $(PREFIX)/bin/gnome-session-awesome

#
# Targets
#

all:
	@echo "Nothing to do"


install_cinnamon:
	$(INSTALL) -m0644 -D session-cinnamon/awesome-cinnamon-xsession.desktop $(PATH_AWESOME_CINNAMON_XSESSION)
	$(INSTALL) -m0644 -D session-cinnamon/awesome-cinnamon.desktop $(PATH_AWESOME_CINNAMON_DESKTOP)
	$(INSTALL) -m0644 -D session-cinnamon/awesome-cinnamon.session $(PATH_AWESOME_CINNAMON_SESSION)
	$(INSTALL) -m0755 -D session-cinnamon/cinnamon-session-awesome $(PATH_AWESOME_CINNAMON_SESSION_BIN)
	$(INSTALL) -m0755 -D session-cinnamon/awesome-cinnamon $(PATH_AWESOME_CINNAMON)


uninstall_cinnamon:
	rm -f $(PATH_AWESOME_CINNAMON)
	rm -f $(PATH_AWESOME_CINNAMON_DESKTOP)
	rm -f $(PATH_AWESOME_CINNAMON_SESSION)
	rm -f $(PATH_AWESOME_CINNAMON_SESSION_BIN)
	rm -f $(PATH_AWESOME_CINNAMON_XSESSION)


install_gnome:
	$(INSTALL) -m0644 -D session-gnome/awesome-gnome-xsession.desktop $(PATH_AWESOME_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session-gnome/awesome-gnome.desktop $(PATH_AWESOME_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session-gnome/awesome-gnome.session $(PATH_AWESOME_GNOME_SESSION)
	$(INSTALL) -m0755 -D session-gnome/awesome-gnome $(PATH_AWESOME_GNOME)
	$(INSTALL) -m0755 -D session-gnome/gnome-session-awesome $(PATH_GNOME_SESSION_AWESOME)



uninstall_gnome:
	rm -f $(PATH_AWESOME_GNOME)
	rm -f $(PATH_AWESOME_GNOME_DESKTOP)
	rm -f $(PATH_AWESOME_GNOME_SESSION)
	rm -f $(PATH_AWESOME_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_AWESOME)



.PHONY: all install_cinnamon uninstall_cinnamon install_gnome uninstall_gnome
