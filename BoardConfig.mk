#
# Copyright (C) 2017 The MSM8916-Samsung Project
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

LOCAL_PATH := device/samsung/coreprimeltexx/ 

# Platform
TARGET_BOARD_PLATFORM     := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER         := true

# Architecture
TARGET_ARCH	        := arm
TARGET_ARCH_VARIANT     := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI          := armeabi-v7a
TARGET_CPU_ABI2         := armeabi
TARGET_CPU_SMP          := true
TARGET_CPU_VARIANT      := cortex-a7
TARGET_CPU_VARIANT      := cortex-a53
TARGET_CPU_CORTEX_A53   := true

# Board CFLAGS
arch_variant_cflags += -mfpu=neon -mfloat-abi=softfp

# Kernel
KERNEL_TOOLCHAIN	  := $(PWD)/prebuilts/gcc/$(shell uname -s | tr "[:upper:]" "[:lower:]")-x86/$(TARGET_ARCH)/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX   := arm-eabi-

TARGET_KERNEL_ARCH 	  := arm
BOARD_DTBTOOL_ARG         := -2
BOARD_KERNEL_BASE         := 0x80000000
BOARD_KERNEL_CMDLINE      := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET  := 0x01E00000
BOARD_RAMDISK_OFFSET      := 0x02000000
TARGET_KERNEL_SOURCE      := kernel/samsung/msm8916
TARGET_KERNEL_CONFIG      := lineageos_coreprimeltexx_defconfig
BOARD_KERNEL_PREBUILT_DT  := true
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS      := --dt device/samsung/coreprimeltexx/dt.img

# Partition Info
BOARD_BOOTIMAGE_PARTITION_SIZE     := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5832159232
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR   := true

# File System
TARGET_USERIMAGES_USE_EXT4        := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_FSTAB            := device/samsung/coreprimeltexx/twrp.fstab
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
