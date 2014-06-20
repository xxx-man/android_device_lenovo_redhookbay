$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Lenovo/k900/k900-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Lenovo/k900/overlay

LOCAL_PATH := device/Lenovo/k900
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    $(LOCAL_PATH)/blobs/ia_watchdogd:recovery/root/sbin/ia_watchdogd \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_k900
PRODUCT_DEVICE := k900
