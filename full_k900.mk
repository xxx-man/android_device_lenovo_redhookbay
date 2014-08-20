$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/lenovo/k900/device.mk)

PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := k900
PRODUCT_DEVICE := k900
PRODUCT_BRAND := K900_Intel
PRODUCT_MODEL := LENOVO-K900
PRODUCT_MANUFACTURER := lenovo