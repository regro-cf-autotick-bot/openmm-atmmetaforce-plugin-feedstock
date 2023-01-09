#! /bin/bash

set -ex

pip check

test -f $PREFIX/lib/plugins/libATMMetaForcePluginCUDA$SHLIB_EXT
test -f $PREFIX/lib/plugins/libATMMetaForcePluginOpenCL$SHLIB_EXT
test -f $PREFIX/lib/plugins/libATMMetaForcePluginReference$SHLIB_EXT
test -f $PREFIX/include/ATMMetaForce.h
test -f $PREFIX/include/internal/ATMMetaForceImpl.h