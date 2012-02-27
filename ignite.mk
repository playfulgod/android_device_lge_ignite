$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/ignite/ignite-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/ignite/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/ignite/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Recovery Files
PRODUCT_COPY_FILE += \
    device/lge/ignite/recovery/recovery.rc:recovery/root/recovery.rc \
    device/lge/ignite/ueventd.rc:recovery/root/ueventd.rc \
    device/lge/ignite/recovery/postrecoveryboot.sh:recovery/root/postrecoveryboot.sh \
    device/lge/ignite/init.rc:recovery/root/init.rc \
    device/lge/ignite/ueventd.rc:recovery/root/ueventd.rc \
    device/lge/ignite/init.omap.post_boot.sh:recovery/root/init.omap.post_boot.sh 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ignite
PRODUCT_DEVICE := ignite

PRODUCT_PROPERTY_OVERRIDES += \
	persist.hidden_reset=0 \
	persist.recovery_skip=0 \
	persist.hiddenreset.hidden_reset=0 \
	persist.hiddenreset.recovery_skip=0 \
	persist.hiddenreset.firstboot=0
