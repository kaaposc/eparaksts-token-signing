pkgname=$(shell grep pkgname= PKGBUILD | awk -F= '{print $$2}')

all: build check

build:
	makepkg -sf

check:
	namcap $(pkgname)-*.pkg.tar.xz > namcap.out

publish:
	makepkg --printsrcinfo > .SRCINFO


.PHONY: all
