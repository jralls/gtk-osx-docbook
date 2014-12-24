#!/bin/sh

if [ "x$JHBUILD_PREFIX" = x ]; then
    echo "JHBUILD_PREFIX must be set."
    exit 1
fi

for f in `find share -type f ! -name *.png`; do
    mkdir -p "$DESTDIR/$JHBUILD_PREFIX/`dirname $f`"
    cat $f | sed -e "s,/usr/share,$JHBUILD_PREFIX/share,g" > "$DESTDIR/$JHBUILD_PREFIX/$f"
done
