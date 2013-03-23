# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

BOARD_USES_LIBSECRIL_STUB := true

# Use the non-open-source parts, if they're present
#-include vendor/apple/ipt1G/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := arm1176jz-s
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=arm1176jz-s -mfpu=vfp -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=arm1176jz-s -mfpu=vfp -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_RC := true
TARGET_PROVIDES_INIT_TARGET_RC := true
#TODO:
#TARGET_BOARD_PLATFORM := s5l8xxx
#TARGET_BOOTLOADER_BOARD_NAME := IPOD1G
#TARGET_RECOVERY_INITRC := device/apple/ipt1G/common/recovery.rc
TARGET_PROVIDES_MEDIASERVER := true

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

# Releasetools
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/apple/common/releasetools/ota_from_target_files
#TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/apple/common/releasetools/img_from_target_files

# Camera
USE_CAMERA_STUB := true
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
TARGET_GLOBAL_CPPFLAGS += -DUSE_GS2_LIBCAMERA
endif

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# gps
BOARD_USES_GPSWRAPPER := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE :=

#BOARD_NAND_PAGE_SIZE := 4096 -s 128
#BOARD_NAND_PAGE_SIZE := 4096
#BOARD_KERNEL_PAGESIZE := 4096
#BOARD_KERNEL_BASE := 0x40000000
#BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0
#TARGET_PREBUILT_KERNEL := device/apple/ipt1G/prebuilt/kernel

#BOARD_BOOTIMAGE_PARTITION_SIZE := 104857600
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 104857600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_WLAN_DEVICE := libertas_sdio
#WIFI_DRIVER_MODULE_PATH := "/lib/modules/libertas_sdio.ko"
#WIFI_DRIVER_MODULE_NAME := "libertas_sdio"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/apple/ipt1G/recovery/recovery_ui.c
#BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

#BOARD_CUSTOM_BOOTIMG_MK := device/apple/ipt1G/common/shbootimg.mk

# assert
TARGET_OTA_ASSERT_DEVICE := IPOD1G

# Include aries specific stuff
#-include device/apple/ipt1Gcommon/Android.mk
