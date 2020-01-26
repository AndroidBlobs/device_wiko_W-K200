# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from W-K200 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := wiko
PRODUCT_DEVICE := W-K200
PRODUCT_MANUFACTURER := wiko
PRODUCT_NAME := lineage_W-K200
PRODUCT_MODEL := W-K200

PRODUCT_GMS_CLIENTID_BASE := android-wiko
TARGET_VENDOR := wiko
TARGET_VENDOR_PRODUCT_NAME := W-K200
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k200_1g-user 8.1.0 O11019 1535015911 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := WIKO/W-K200TVIM/W-K200:8.1.0/O11019/1535015911:user/release-keys
