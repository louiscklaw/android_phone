#!/usr/bin/env bash

set -xe

# fastboot oem unlock
# fastboot flashing unlock_critical

fastboot -w

# #To format system partition
# fastboot erase system
# fastboot format system

# #To format boot partition
fastboot erase boot
# fastboot format boot

# #To format cache partition
# fastboot erase cache
# fastboot format cache

# #To format user data partition
fastboot erase userdata
# fastboot format userdata

# #To format recovery partition
# fastboot erase recovery
# fastboot format recovery

# fastboot oem device-info


fastboot flash boot /home/logic/_workspace/android_phone/xperia_v/twrp-3.3.1-0-tsubasa.img

fastboot boot twrp-3.3.1-0-tsubasa.img

fastboot reboot

adb push twrp-3.3.1-0-tsubasa.img /sdcard
# adb shell

# in the adb shell
# dd if=/sdcard/twrp-3.3.1-0-tsubasa.img of=/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel

# fastboot reboot recovery


# adb reboot fastboot
# fastboot reboot-bootloader

# adb sideload /home/logic/_workspace/oneplus3/OnePlus3Oxygen_16_OTA_086_all_1911042118_42cbe31ee3a.zip


# adb shell recovery --wipe_data