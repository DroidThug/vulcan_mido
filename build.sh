#!/bin/sh
# duality build script
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER="alamo"
export KBUILD_BUILD_HOST="bendyland"
#export CROSS_COMPILE=/home/alamo/toolchains/aarch64-linux-android-linaro-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE=/home/alamo/toolchains/aarch64-uber-linux-android-4.9.4/bin/aarch64-linux-android-
#export CROSS_COMPILE=/home/alamo/toolchains/aarch64-linaro-linux-android-6.3.1/bin/aarch64-linux-android-
#export CROSS_COMPILE=/home/alamo/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-

# Cleanup
make clean
make mrproper

make vulcan_defconfig
make -j20
