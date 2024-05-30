#!/bin/sh
conan install . --build=missing --profile=profiles/conan-$1 \
  -c tools.cmake.cmake_layout:build_folder_vars="['settings.os', 'settings.arch', 'settings.compiler', 'settings.build_type']"
cmake --preset conan-$1
cmake --build --preset conan-$1
