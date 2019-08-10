BOARD_VENDOR := amazon

# headers
TARGET_SPECIFIC_HEADER_PATH := device/amazon/tank/include

# inherit from the proprietary version
-include vendor/amazon/tank/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := tank


# Platform
TARGET_BOARD_PLATFORM := mt8127
TARGET_BOARD_PLATFORM_GPU := mali-450
TARGET_BOOTLOADER_BOARD_NAME := tank

# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# Kernel Config
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x04000000 --tags_offset 0x00000100
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

TARGET_PREBUILT_KERNEL := device/amazon/tank/kernel
TARGET_KERNEL_SOURCE := kernel/amazon/tank
TARGET_KERNEL_CONFIG := tank_cyanogenmod_defconfig
TARGET_KERNEL_VARIANT_CONFIG := tank_cyanogenmod_defconfig

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -DMTK_HARDWARE -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DAMAZON_LOG -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_WLAN_DEVICE := mt66xx
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
#WIFI_DRIVER_FW_PATH_STA:=STA
#WIFI_DRIVER_FW_PATH_AP:=AP
#WIFI_DRIVER_FW_PATH_STA:=P2P

# WIFI
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER        := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/brcm/bcm43569a2-firmware.bin"
#WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_wifi_apsta_4334.bin"
#WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_wifi_p2p_4334.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_NAME     := "bcmdhd"
#WIFI_DRIVER_MODULE_ARG      := "firmware_path=/vendor/firmware/brcm/bcm43569a2-firmware.bin nvram_path=/vendor/firmware/brcm/bcm43569a2.nvm iface_name=wlan0"

# Bluetooth defines
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/amazon/tank/bluetooth

# Graphics
BOARD_EGL_CFG := device/amazon/tank/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024

# Surfaceflinger optimization for VD surfaces
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 901775360
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6583598592
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

BLOCK_BASED_OTA := false

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file


# CM Hardware
#BOARD_USES_CYANOGEN_HARDWARE := true
#BOARD_HARDWARE_CLASS += \
    hardware/cyanogen/cmhw

# Cyanogen recovery
RECOVERY_VARIANT :=
TARGET_RECOVERY_FSTAB := device/amazon/tank/recovery/root/recovery.fstab
TARGET_RECOVERY_INITRC := device/amazon/tank/recovery/root/init.rc
TARGET_RECOVERY_UI_LIB := librecovery_ui_tank
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/external_sd"

# CUSTOM RELEASE TOOLS FOR EXTRA LINKS IN UPDATER-SCRIPT
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/amazon/tank/releasetools/ota_from_target_files

#SELINUX_MODULE:
#	make -C device/amazon/tank/modules/selinux_permissive/ KERNEL=$(KERNEL_OUT) ARCH="arm" CROSS_COMPILE="arm-eabi-" MDIR="$(PWD)/device/amazon/tank/modules/selinux_permissive/" module
#	cp device/amazon/tank/modules/selinux_permissive/selinux_permissive.ko $(KERNEL_MODULES_OUT)/vcodec_kernel_driver.ko
    
#TARGET_KERNEL_MODULES := SELINUX_MODULE
