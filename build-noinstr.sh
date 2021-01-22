#!/bin/bash -xe
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/redis-noinstr EXTRA_CFLAGS="${CFLAGS_NOINSTR}" CC=${CC_MUSL_NOINSTR} ./build-x.sh $@
