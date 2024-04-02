@echo off

rem Check if the build dir exists
if not exist build (
    mkdir build
) else (
    rmdir /s /q build
    mkdir build
)
echo "Build directory created"

cd build
echo "cmake building "
rem Visual Studio 2019, MSYS Makefiles, MinGW Makefiles, ninja
cmake -G "MSYS Makefiles" ..

del /Q /AH bin\*

cmake --build . --config Release -j16

