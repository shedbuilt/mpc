#!/bin/bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.1.0 && \
make -j $SHED_NUMJOBS && \
make html && \
make DESTDIR="$SHED_FAKEROOT" install && \
make DESTDIR="$SHED_FAKEROOT" install-html
