#!/bin/bash
git submodule update --init --recursive

cd tools/helper_build

if [ ! -f helper_build ]; then
    cmake -B build -S .
    cmake --build build
    cp build/HelperProjectBuild .
fi

./HelperProjectBuild
