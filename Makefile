prefix = /usr
bindir = ${prefix}/bin
launcherdir = ${prefix}/share/applications
appdir = ${prefix}/share/telbook

install:
	mkdir -p ${bindir} ${launcherdir} ${appdir}
	perl -pe 's|^#!/usr/bin/perl|#!$$^X|; s/__MANUAL__\n/`cat README`/e;' \
	    < telbook > ${bindir}/telbook
	chmod a+x ${bindir}/telbook
	sed -e s\|%PREFIX%\|${prefix}\|g \
	    < telbook.desktop.in > ${launcherdir}/telbook.desktop
