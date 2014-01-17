prefix = /usr
bindir = ${prefix}/bin
launcherdir = ${prefix}/share/applications
appdir = ${prefix}/share/telbook

current_perl = `perl -e'print $$^X'`

install:
	mkdir -p ${bindir} ${launcherdir} ${appdir}
	sed -e s\|\#!/usr/bin/perl\|\#!${current_perl}\|g < telbook > ${bindir}/telbook
	chmod a+x ${bindir}/telbook
	sed -e s\|%PREFIX%\|${prefix}\|g < telbook.desktop.in > ${launcherdir}/telbook.desktop
