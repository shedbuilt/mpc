#!/bin/bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.1.0 && \
make -j $SHED_NUM_JOBS && \
make html && \
make DESTDIR="$SHED_FAKE_ROOT" install && \
make DESTDIR="$SHED_FAKE_ROOT" install-html
