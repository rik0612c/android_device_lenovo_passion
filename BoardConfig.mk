#
# Copyright (C) 2019 The CyanogenMod Project
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


DEVICE_PATH := device/lenovo/passion

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# APEX
TARGET_FLATTEN_APEX := true

# Platform
TARGET_BOARD_PLATFORM     := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER         := true

# Architecture
TARGET_BOARD_SUFFIX := _64
TARGET_ARCH         := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI      := arm64-v8a
TARGET_CPU_ABI2     :=
TARGET_CPU_VARIANT  := generic

TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH         := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI      := armeabi-v7a
TARGET_2ND_CPU_ABI2     := armeabi
TARGET_2ND_CPU_VARIANT  := cortex-a53

TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53



# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Asserts
TARGET_OTA_ASSERT_DEVICE := p1a42,passion_row,p1a41,passion

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio

USE_CUSTOM_AUDIO_POLICY   := 1
USE_XML_AUDIO_POLICY_CONF := 1

AUDIO_FEATURE_ENABLED_COMPRESS_VOIP        := true
AUDIO_FEATURE_ENABLED_FLUENCE              := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT         := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE      := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE         := true

#BOARD_SUPPORTS_SOUND_TRIGGER               := true
BOARD_USES_ALSA_AUDIO                      := true

TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false

AUDIO_FEATURE_ENABLED_SMART_PA_TFA_98XX := true

AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE   := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD  := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE      := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET       := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD      := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD       := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE       := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO      := true
AUDIO_FEATURE_ENABLED_DEV_ARBI          := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS      := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD      := true
AUDIO_FEATURE_ENABLED_HFP := true

AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true

AUDIO_FEATURE_ENABLED_PCM_OFFLOAD     := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24  := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE    := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR    := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD  := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD     := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT        := true

AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true



# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
TARGET_USE_QTI_BT_STACK   := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth



# Camera
USE_DEVICE_SPECIFIC_CAMERA             := true
TARGET_PROVIDES_CAMERA_HAL             := true
TARGET_HAS_LEGACY_CAMERA_HAL1          := true
TARGET_USES_MEDIA_EXTENSIONS           := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
TARGET_USE_VENDOR_CAMERA_EXT           := true
TARGET_USES_QTI_CAMERA_DEVICE          := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE    := \
    /system/bin/mm-qcamera-daemon=23 \
    /system/bin/mediaserver=23


# Charger
BOARD_CHARGER_ENABLE_SUSPEND     := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH                   := "/sys/class/leds/lcd-backlight/brightness"


# Offline charging
BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(DEVICE_PATH)/charger/images
RED_LED_PATH                     := "/sys/class/leds/rgbled/brightness"
BLUE_LED_PATH                    := "/sys/class/leds/rgbled/brightness"
CHARGING_ENABLED_PATH            := "/sys/class/power_supply/usb/online"
HEALTHD_BACKLIGHT_LEVEL          := 60

# Crypto
TARGET_CRYPTFS_HW_PATH           := vendor/qcom/opensource/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION        := true
TARGET_LEGACY_HW_DISK_ENCRYPTION := true

# CNE | DPM
BOARD_USES_QCNE := true

# DexPreopt debug info
WITH_DEXPREOPT_DEBUG_INFO := false

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000
OVERRIDE_RS_DRIVER                      := libRSDriver_adreno.so

TARGET_USES_GRALLOC1                  := true
TARGET_CONTINUOUS_SPLASH_ENABLED      := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_ION                       := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_EXFAT_DRIVER      := exfat

# FM
BOARD_HAVE_QCOM_FM         := true
TARGET_QCOM_NO_FM_FIRMWARE := true
AUDIO_FEATURE_ENABLED_FM   := true

# Fonts
EXCLUDE_SERIF_FONTS := true
SMALLER_FONT_FOOTPRINT := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET  := true

# GPU
TARGET_CONTINUOUS_SPLASH_ENABLED      := true
TARGET_USES_C2D_COMPOSITION           := true
TARGET_USES_HWC2                      := true
SF_VSYNC_EVENT_PHASE_OFFSET_NS        := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS           := 7500000


# Hidl manifests
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml


# Init
TARGET_PLATFORM_DEVICE_BASE    := /devices/soc.0/
TARGET_INIT_VENDOR_LIB         := libinit_msm8916
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8916

# Kernel
BOARD_KERNEL_CMDLINE += \
	sched_enable_hmp=1 \
	console=null \
	androidboot.console=tty60 \
	androidboot.hardware=qcom \
	msm_rtb.filter=0x237 \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	lpm_levels.sleep_disabled=1 \
	earlyprintk \
	androidboot.emmc=true \
	androidboot.hwid=TBD \
	androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += loop.max_part=7

BOARD_KERNEL_BASE         := 0x80000000
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_RAMDISK_OFFSET      := 0x01000000
BOARD_KERNEL_OFFSET       := 0x00008000
BOARD_KERNEL_TAGS_OFFSET  := 0x00000100
TARGET_KERNEL_SOURCE      := kernel/lenovo/passion
TARGET_KERNEL_ARCH        := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG      := passion_defconfig
BOARD_KERNEL_IMAGE_NAME   := Image.gz-dtb




# Lineage Hardware
BOARD_HARDWARE_CLASS += \
    $(DEVICE_PATH)/lineagehw \
    hardware/lineage/lineagehw

# Media
TARGET_USES_MEDIA_EXTENSIONS     := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# NFC
#BOARD_NFC_HAL_SUFFIX := $(TARGET_BOARD_PLATFORM)  

# Partition
BOARD_FLASH_BLOCK_SIZE                := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE        := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE    := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE      := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE    := 27376204800
BOARD_PERSISTIMAGE_PARTITION_SIZE     := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE       := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_ROOT_EXTRA_FOLDERS              := firmware persist
#BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE  := f2fs
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE  := ext4
TARGET_USERIMAGES_USE_EXT4            := true
TARGET_USERIMAGES_USE_F2FS            := true
TARGET_USES_MKE2FS                    := true

# Power
TARGET_POWERHAL_VARIANT             := qcom
TARGET_TAP_TO_WAKE_NODE             := "/sys/board_properties/tpd_suspend_status"
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(DEVICE_PATH)/power/power_ext.c
#TARGET_HAS_LEGACY_POWER_STATS       := true
#TARGET_HAS_NO_POWER_STATS           := true
#TARGET_HAS_NO_WLAN_STATS            := true
TARGET_USES_INTERACTION_BOOST       := true
TARGET_PROVIDES_POWERHAL	     := true

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
QCOM_BT_USE_BTNV         := true
ENABLE_FM_OVER_UART      := true
#BOARD_USES_QC_TIME_SERVICES := true
#TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Recovery
TARGET_RECOVERY_FSTAB        := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_HAS_NO_SELECT_BUTTON   := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_MISC_PARTITION  := true
BOARD_SUPPRESS_EMMC_WIPE     := true

# TWRP
RECOVERY_VARIANT := twrp
ifeq ($(WITH_TWRP),true)
include $(DEVICE_PATH)/twrp.mk
endif


# RIL
TARGET_RIL_VARIANT := caf

# SELinux
include device/qcom/sepolicy-legacy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
#SELINUX_IGNORE_NEVERALLOWS := true


# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib/libmmcamera2_stats_algorithm.so|libc_util.so \
    /system/vendor/lib/libmmcamera_wavelet_lib.so|libc_util.so

# Snapdragon LLVM
TARGET_USE_SDCLANG := true
# SurfaceFlinger
TARGET_USE_AOSP_SURFACEFLINGER := true
# Time services
BOARD_USES_QC_TIME_SERVICES := true

# WiFi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE                := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
PRODUCT_VENDOR_MOVE_ENABLED      := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
TARGET_USES_QCOM_WCNSS_QMI       := true
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WPA_SUPPLICANT_VERSION           := VER_0_8_X

# Optimize
MALLOC_SVELTE := true

# Inherit from the proprietary version
-include vendor/lenovo/passion/BoardConfigVendor.mk

