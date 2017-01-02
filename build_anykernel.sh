#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm64
export CROSS_COMPILE=/home/francesco/aarch64-linux-android-4.9-kernel/bin/aarch64-linux-android-
##########################################
mkdir outputh830
mkdir outputh850
##########################################
make -C $(pwd) O=output cyanogenmod_h830_defconfig
make -C $(pwd) O=output

make -C $(pwd) O=output cyanogenmod_h850_defconfig
make -C $(pwd) O=output
##########################################
cp outputh830/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputh850/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
