#
# Copyright (C) 2015 The CyanogenMod Project
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
#

DEVICE_PATH := device/samsung/coreprimeltexx

# Inherit from msm8916-common
include device/samsung/msm8916-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := coreprimeltexx 

# Kernel
TARGET_ARCH               := arm
TARGET_KERNEL_SOURCE      := kernel/samsung/msm8916
TARGET_KERNEL_CONFIG      := lineageos_coreprimeltexx_defconfig
BOARD_KERNEL_CMDLINE      += enforcing=0
BOARD_KERNEL_PREBUILT_DT  := true
BOARD_MKBOOTIMG_ARGS      += --dt device/samsung/coreprimeltexx/dt.img

# Partition Info
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2437393940
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12444667740
BOARD_CACHEIMAGE_PARTITION_SIZE := 202375168
BOARD_FLASH_BLOCK_SIZE := 131072

# File System
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_FSTAB            := device/samsung/coreprimeltexx/recovery/twrp.fstab
BOARD_USES_MMC_UTILS             := true
BOARD_HAS_NO_MISC_PARTITION      := true
BOARD_HAA_NO_REAL_SDCARD	 := true
TARGET_RECOVERY_QCOM_RTC_FIX     := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA          := true
BOARD_HAS_NO_SELECT_BUTTON       := true
TARGET_RECOVERY_PIXEL_FORMAT     := "RGB_565"
BOARD_SUPRESS_SECURE_ERASE       := true

# TWRP
TW_THEME                := portrait_mdpi
TW_HAS_DOWNLOAD_MODE    := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE       := true
TW_BRIGHTNESS_PATH      := "/sys/devices/soc.0/1a00000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.133/leds/lcd-backlight/brightness"
TW_MTP_DEVICE           := /dev/mtp_usb_gadget

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# E5 RIL class
BOARD_RIL_CLASS := ../../../device/samsung/e53g/ril/

# Audio
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true

# Radio
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Enable dex-preoptimization to speed up first boot sequence
WITH_DEXPREOPT := true
