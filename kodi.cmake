/usr/local/bin/cmake ../kodi   -DCMAKE_INSTALL_PREFIX=/usr/local   -DENABLE_INTERNAL_SPDLOG=on -DENABLE_INTERNAL_FMT=on -DENABLE_INTERNAL_FLATBUFFERS=on -DENABLE_INTERNAL_CROSSGUID=on -DCMAKE_C_FLAGS=-pthread -DAPP_RENDER_SYSTEM=gl -DENABLE_TESTING=off -DVERBOSE=off -DCORE_PLATFORM_NAME=x11 -DENABLE_INTERNAL_TAGLIB=on -DENABLE_PULSEAUDIO=off -DPYTHON_VER=3.9.18
