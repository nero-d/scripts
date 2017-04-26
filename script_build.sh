#!/bin/bash

# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/ccache/nero
prebuilts/misc/linux-x86/ccache/ccache -M 50G
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export KBUILD_BUILD_USER=Nero
export KBUILD_BUILD_HOST=SpeedHorn

# clean
make clean && make clobber

# build
. build/envsetup.sh
lunch lineage_onyx-userdebug
make bacon -j8
