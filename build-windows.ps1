set PATH=%PATH%;C:\Users\avaer\.windows-build-tools\python27
python .\tools\git-sync-deps
.\bin\gn.exe gen out\Static --args="is_official_build=true skia_use_system_expat=false skia_use_system_libjpeg_turbo=false skia_use_system_libpng=false skia_use_system_libwebp=false skia_use_system_zlib=false"
.\bin\ninja.exe -C out\Static
