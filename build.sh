#!/bin/sh
conan install . --build=missing
cmake --preset conan-release
cmake --build --preset conan-release
