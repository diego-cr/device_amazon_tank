# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tv.mk)

# Inherit device configuration for Fire Phone
$(call inherit-product, device/amazon/tank/full_tank.mk)

TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

PRODUCT_NAME := cm_tank
PRODUCT_RELEASE_NAME := tank

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tank-user 5.1.1 LVY48F 288.6.3.9_user_639566220 release-keys"

BUILD_FINGERPRINT := Amazon/full_tank/tank:5.1.1/LVY48F/288.6.3.9_user_639566220:user/release-keys

