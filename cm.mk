# Release name
PRODUCT_RELEASE_NAME := GN-CDMA

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := toroplus
PRODUCT_NAME := cm_toroplus
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.0.4/IMM76D/L700FD02:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76D L700FD02 release-keys"
