# Kernel
TARGET_KERNEL_CONFIG := tank_defconfig
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive

# inherit from common mt8127
-include device/amazon/mt8127-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/amazon/mt8127-common/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := tank

TARGET_BOOTLOADER_BOARD_NAME := tank

# TWRP
DEVICE_RESOLUTION := 600x1024
