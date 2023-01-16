@echo on

mkdir build
cd build

:: Configure
cmake %SRC_DIR% -G Ninja ^
                -DCMAKE_BUILD_TYPE=Release ^
                -DOPENMM_DIR=%LIBRARY_PREFIX% ^
                -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
                || exit /B 1

:: Build and install C++ components
cmake --build . || exit /B 1
cmake --install . || exit /B 1

:: Build and install Python components
cmake --build . -- PythonInstall || exit /B 1

:: Install the activation script
set ACTION=activate
copy %RECIPE_DIR%\%ACTION%.bat %PREFIX%\etc\conda\%ACTION%.d\%PKG_NAME%_%ACTION%.bat
