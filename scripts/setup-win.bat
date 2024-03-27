@echo off

pushd ..
bin\premake\windows\premake5.exe --file=build.lua gmake2
popd
pasue
