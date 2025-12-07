@echo off
git submodule update --init --recursive

cd tools\helper_builder

if not exist build-helper (
    cmake -B build -S .
    cmake --build build
    copy build\HelperProjectBuild.exe .
)

HelperProjectBuild.exe
