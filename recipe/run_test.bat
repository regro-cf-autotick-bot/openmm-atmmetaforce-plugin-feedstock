@echo on

if not exist %LIBRARY_LIB%\ATMMetaForcePlugin%SHLIB_EXT% exit 1
if not exist %LIBRARY_LIB%\plugins\ATMMetaForcePluginCUDA%SHLIB_EXT% exit 1
if not exist %LIBRARY_LIB%\plugins\ATMMetaForcePluginOpenCL%SHLIB_EXT% exit 1
if not exist %LIBRARY_LIB%\plugins\ATMMetaForcePluginReference%SHLIB_EXT% exit 1
if not exist %LIBRARY_INC%\ATMMetaForce.h exit 1
if not exist %LIBRARY_INC%\internal\ATMMetaForceImpl.h exit 1
