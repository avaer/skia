#!/bin/bash

./tools/git-sync-deps
./bin/gn gen out/Static --args='ndk="" target_cpu="arm64" is_official_build=true skia_use_freetype=false skia_use_fontconfig=false skia_use_system_icu=false skia_use_system_libjpeg_turbo=false skia_use_system_libpng=false skia_use_system_libwebp=false skia_use_system_zlib=false ndk_api=27  skia_use_expat=false'
ninja -C out/Static
