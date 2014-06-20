LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))
include $(call all-subdir-makefiles,$(LOCAL_PATH))
#include $(TOP)/dalvik/vm/compiler/codegen/x86/libenc/Android.mk
