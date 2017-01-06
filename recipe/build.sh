#!/bin/bash

mkdir build && cd build

cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_SHARED_LIBS=OFF -DCMAKE_INSTALL_LIBDIR=$PREFIX/lib
cmake --build . --config Release --target install

cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_LIBDIR=$PREFIX/lib
cmake --build . --config Release --target install
