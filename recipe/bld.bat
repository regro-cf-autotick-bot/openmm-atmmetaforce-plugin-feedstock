@echo on

mkdir build
cd build

cmake %SRC_DIR% -G Ninja ^
                -DCMAKE_BUILD_TYPE=Release ^
                -DOPENMM_DIR=%LIBRARY_PREFIX% ^
                -DOpenCL_INCLUDE_DIR=%LIBRARY_PREFIX%\lib\include ^
                -DOPENCL_LIBRARIES=%LIBRARY_PREFIX%\lib\OpenCL.lib ^
                -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
                || exit /B 1

cmake --build . || exit /B 1
cmake --install . || exit /B 1
cmake --build . -- PythonInstall || exit /B 1

set ACTION=activate
copy %RECIPE_DIR%\%ACTION%.bat %PREFIX%\etc\conda\%ACTION%.d\%PKG_NAME%_%ACTION%.bat
