#!/usr/bin/env bash

# if /system not exist, change the filesystem may help

adb sideload ./lineage-15.1-20200225-nightly-tsubasa-signed.zip
adb sideload ./open_gapps-arm-8.1-nano-20200325.zip