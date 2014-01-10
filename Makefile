prefix = /usr

install:
	/usr/bin/install -m 0755 telbook ${prefix}/bin/
	/usr/bin/sed -e s\|%PREFIX%\|${prefix}\|g < telbook.desktop.in > ${prefix}/share/applications/telbook.desktop
