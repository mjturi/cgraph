#!/bin/bash

mkdir -p build
cd build
cmake ${EXTRA_OPTS}  -DCMAKE_BUILD_TYPE=Release ../
make -j$(nproc)
cd ../