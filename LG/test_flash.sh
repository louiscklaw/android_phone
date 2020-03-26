#!/usr/bin/env bash

set -xe

fastboot oem unlock
fastboot flashing unlock_critical

# fastboot -w

# #To format system partition
# fastboot erase system
fastboot format system

# #To format boot partition
fastboot erase boot
# fastboot format boot

# #To format cache partition
# fastboot erase cache
fastboot format cache

# #To format user data partition
# fastboot erase userdata
fastboot format userdata

# #To format recovery partition
fastboot erase recovery
# fastboot format recovery

fastboot oem device-info


fastboot flash recovery twrp-3.3.1-1-oneplus3.img

fastboot boot twrp-3.3.1-1-oneplus3.img
# fastboot reboot recovery


# adb reboot fastboot
# fastboot reboot-bootloader

# adb sideload /home/logic/_workspace/oneplus3/OnePlus3Oxygen_16_OTA_086_all_1911042118_42cbe31ee3a.zip


# adb shell recovery --wipe_data