# Boot animation
TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/amazon/tank/full_tank.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tank
PRODUCT_NAME := lineage_tank
PRODUCT_BRAND := amzn
PRODUCT_MODEL := tank
PRODUCT_MANUFACTURER := amzn

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=SHARP/an_np40/an_np40:5.1/LMY47M/20180306:user/release-keys \
    PRIVATE_BUILD_DESC="an_np40-user 5.1 LMY47M 20180306 release-keys"

