@echo off
git submodule update --init --recursive

cd tools\helper_build

if not exist helper_build (
    cmake -B build -S .
    cmake --build build
    copy build\HelperProjectBuild.exe .
)

HelperProjectBuild.exe
