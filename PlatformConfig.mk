# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Arch
TARGET_ARCH_VARIANT := armv8-a
TARGET_2ND_ARCH_VARIANT := armv8-a

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH ?= external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM ?= SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Boot Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432

## Cmdline
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=musb-hdrc

## Header
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_OFFSET := 0x00080000
BOARD_RAMDISK_OFFSET := 0x11100000
BOARD_DTB_OFFSET := 0x7c80000
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET) --tags_offset $(BOARD_DTB_OFFSET)

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz

# VINTF
DEVICE_MANIFEST_FILE += $(PLATFORM_COMMON_PATH)/vintf/manifest.xml

include device/motorola/common/CommonConfig.mk
