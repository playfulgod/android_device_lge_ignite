## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ignite

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/ignite/device_ignite.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ignite
PRODUCT_NAME := cm_ignite
PRODUCT_BRAND := lge
PRODUCT_MODEL := Ignite
PRODUCT_MANUFACTURER := LTE
