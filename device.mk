LOCAL_PATH := device/amazon/tank

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_FOLDER := device/amazon/tank

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/tank/tank-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

# Overlay Binaries
$(call inherit-product, $(LOCAL_PATH)/overlay-binaries/overlay-binaries.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

$(call inherit-product-if-exists, vendor/amazon/tank/tank-vendor.mk)

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	#libtinycompress
    
# Bluetooth
PRODUCT_PACKAGES += \
	bluetooth.default
	
# Power
PRODUCT_PACKAGES += \
	power.default

# network
PRODUCT_PACKAGES += \
    netd
    
# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# root access
PRODUCT_PACKAGES += \
	su

DEVICE_PACKAGE_OVERLAYS += device/amazon/tank/overlay

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# call dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
