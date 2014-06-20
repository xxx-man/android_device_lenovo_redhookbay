USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Lenovo/k900/BoardConfigVendor.mk

#include $(GENERIC_X86_CONFIG_MK)

TARGET_ARCH := x86
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := clovertrail
TARGET_CPU_ABI := x86
#TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := x86
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := generic
#TARGET_CPU_SMP := true

# Use boot tools to make Intel-formatted images
DEVICE_BASE_BOOT_IMAGE := device/Lenovo/k900/recovery/boot.img
DEVICE_BASE_RECOVERY_IMAGE := device/Lenovo/k900/recovery/recovery.img
BOARD_CUSTOM_BOOTIMG_MK := device/Lenovo/k900/intel-boot-tools/boot.mk

DEVICE_RESOLUTION := 1080x1920

#TARGET_BOOTLOADER_BOARD_NAME := k900

TARGET_NO_KERNEL := true

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/recovery/kernel
TARGET_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery/kernel

#TARGET_KERNEL_CONFIG := i386_defconfig

# Recovery configuration
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_GRALLOC_FORCE_EFIFB_PIXEL_FORMAT := "BGRA"
TARGET_RECOVERY_FSTAB := device/Lenovo/k900/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/recovery.init.rc
#DEVICE_BASE_RECOVERY_IMAGE := $(LOCAL_PATH)/prebuilt/recovery.image
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_TOUCH_RECOVERY := true
BOARD_RECOVERY_SWIPE := true

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true