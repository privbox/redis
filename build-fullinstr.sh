#!/bin/bash -xe
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/redis-fullinstr EXTRA_CFLAGS="${CFLAGS_FULLINSTR}" CC=${CC_MUSL_FULLINSTR} ./build-x.sh $@
