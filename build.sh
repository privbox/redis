#!/bin/bash -xe
GLIBC_DIST=/home/dimak/projects/piot/glibc/dist/opt/piot
KERNEL_HEADERS=/home/dimak/projects/piot/devenv/images/build/kernel-headers/

make distclean
make \
    USE_SYSTEMD=no  \
    MALLOC=libc \
    CFLAGS="-static -g" \
    LDFLAGS="-static" \
    -j$(nproc)
