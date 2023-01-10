#! /bin/bash

set -ex

test -f $PREFIX/lib/libATMMetaForcePlugin$SHLIB_EXT
test -f $PREFIX/lib/plugins/libATMMetaForcePluginCUDA$SHLIB_EXT
test -f $PREFIX/lib/plugins/libATMMetaForcePluginOpenCL$SHLIB_EXT
test -f $PREFIX/lib/plugins/libATMMetaForcePluginReference$SHLIB_EXT
test -f $PREFIX/include/ATMMetaForce.h
test -f $PREFIX/include/internal/ATMMetaForceImpl.h