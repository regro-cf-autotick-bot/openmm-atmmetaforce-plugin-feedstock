@echo on

mkdir build
cd build

cmake %SRC_DIR% -G Ninja ^
                -DCMAKE_BUILD_TYPE=Release ^
                -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
                || exit /B 1

cmake --build . || exit /B 1