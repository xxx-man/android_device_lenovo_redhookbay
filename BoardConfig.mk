# inherit from the proprietary version
-include vendor/lenovo/k900/BoardConfigVendor.mk

include $(GENERIC_X86_CONFIG_MK)

LOCAL_PATH := device/lenovo/k900

TARGET_BOARD_PLATFORM := clovertrail
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86
TARGET_CPU_ABI := x86
TARGET_CPU_VARIANT := x86
TARGET_ARCH_VARIANT_FPU := sse
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_BOOTLOADER_BOARD_NAME := k900
TARGET_CPU_SMP := true
TARGET_PRELINK_MODULE := false
INTEL_INGREDIENTS_VERSIONS := true

# Security
BUILD_WITH_WATCHDOG_DAEMON_SUPPORT := true

# Make settings
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 20489216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20826848
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1780373820
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1780373820
BOARD_FLASH_BLOCK_SIZE := 131072

# Enabling Houdini by default
INTEL_HOUDINI := true
ifdef ($(INTEL_HOUDINI))
ADDITIONAL_BUILD_PROPERTIES += ro.product.cpu.abi2=armeabi-v7a
ADDITIONAL_BUILD_PROPERTIES += ro.product.cpu.upgradeabi=armeabi-v7a
ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.houdini=on
endif

# mounts
BOARD_DATA_DEVICE := /dev/block/mmcblk0p9
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p8
BOARD_SYSTEM_FILESYSTEM := ext4

TARGET_NO_KERNEL := true
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/recovery/kernel
#TARGET_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery/kernel

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 21

#HW_Renderer
BOARD_USES_HWCOMPOSER := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
BOARD_USE_LIBVA_INTEL_DRIVER := true
BOARD_USE_LIBVA := true
BOARD_USE_LIBMIX := true
BOARD_USES_WRS_OMXIL_CORE := true

# Recovery
DEVICE_RESOLUTION := 1080x1920
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/recovery.init.rc
BOARD_HAS_NO_SELECT_BUTTON := true

########################################################################################################

# Use boot tools to make Intel-formatted images
#DEVICE_BASE_BOOT_IMAGE := device/lenovo/k900/recovery/boot.img
#DEVICE_BASE_RECOVERY_IMAGE := device/lenovo/k900/recovery/recovery.img
#BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/k900/intel-boot-tools/boot.mk


#TARGET_KERNEL_CONFIG := i386_defconfig

# Recovery configuration

#TARGET_GRALLOC_FORCE_EFIFB_PIXEL_FORMAT := "BGRA"

#DEVICE_BASE_RECOVERY_IMAGE := $(LOCAL_PATH)/prebuilt/recovery.image

#BOARD_TOUCH_RECOVERY := true
#	BOARD_RECOVERY_SWIPE := true