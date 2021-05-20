mkdir $HOME/.bin/deps
cd $HOME/.bin/deps
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
git clone -b aseprite-m81 https://github.com/aseprite/skia.git
export PATH="$PATH:/home/luc/.bin/deps/depot_tools"
cd skia
python tools/git-sync-deps
gn gen out/Release-x64 --args="is_debug=false is_official_build=true skia_use_system_expat=false skia_use_system_icu=false skia_use_system_libjpeg_turbo=false skia_use_system_libpng=false skia_use_system_libwebp=false skia_use_system_zlib=false"
ninja -C out/Release-x64 skia modules
