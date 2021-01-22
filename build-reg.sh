#!/bin/bash -xe

make distclean
make \
    V=1 \
    USE_SYSTEMD=no  \
    MALLOC=libc \
    CFLAGS="-static" \
    LDFLAGS="-static" \
    -j$(nproc)
