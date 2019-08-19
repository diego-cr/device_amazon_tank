# Inherit some common CM stuff.
$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/amazon/tank/full_tank.mk)

#PRODUCT_CHARACTERISTICS := tablet

TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

PRODUCT_NAME := cm_tank
PRODUCT_RELEASE_NAME := tank
