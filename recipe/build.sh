#! /bin/bash

set -ex

mkdir build
cd build

# Configure
cmake $SRC_DIR -DCMAKE_BUILD_TYPE=Release \
               -DOPENMM_DIR=$PREFIX \
               -DCMAKE_INSTALL_PREFIX=$PREFIX

# Build and install C++ components
cmake --build .
cmake --install .

# Build and install Python components
cmake --build . -- PythonInstall || exit /B 1

for lib in ${PREFIX}/lib/plugins/*${SHLIB_EXT}; do
    ln -s $lib ${PREFIX}/lib/$(basename $lib) || true
done
