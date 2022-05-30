#!/bin/bash -xe
NPROC=${NPROC:-28}
make distclean
make \
    V=1 \
    USE_SYSTEMD=no  \
    MALLOC=libc \
    CFLAGS="-static -DKERNCALL ${EXTRA_CFLAGS}" \
    LDFLAGS="-static" \
    -j${NPROC} $@
mkdir -p  $DESTDIR
cp src/redis-server $DESTDIR/
