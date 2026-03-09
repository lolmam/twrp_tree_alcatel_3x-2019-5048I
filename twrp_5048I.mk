$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# If you are building from TWRP's minimal source, Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# $$DEVICE$$ is the Device Name's Value.
# $$BRAND$$ is the Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/TCL/5048I/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := 5048I
PRODUCT_NAME := twrp_5048I
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 5048I
PRODUCT_MANUFACTURER := TCL

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Fingerprint are from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="TCL/5048I/Venice:9/PPR1.180610.011/v2B2P-0:user/release-keys"
    PRIVATE_BUILD_DESC="full_k63v1us_64_bsp-user 9 PPR1.180610.011 v2B2P-0 release-keys"