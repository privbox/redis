#!/bin/bash -xe
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/redis-instr EXTRA_CFLAGS="${CFLAGS_INSTR}" CC=${CC_MUSL_INSTR} ./build-x.sh $@
