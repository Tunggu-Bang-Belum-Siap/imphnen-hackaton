#!/bin/bash
git submodule update --init --recursive

cd tools/helper_builder

if [ ! -f build-helper ]; then
    cmake -B build -S .
    cmake --build build
    cp build/HelperProjectBuild .
fi

./HelperProjectBuild
