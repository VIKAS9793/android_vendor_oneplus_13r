LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor_oneplus_13r
LOCAL_MODULE_TAGS := optional

# Common device configuration
ifeq ($(TARGET_DEVICE),oneplus_13r)

# Include proprietary blobs
-include vendor/oneplus/13r/proprietary/Android.mk

# Vendor blobs
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := vendor-oneplus-13r
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := proprietary/vendor/lib/hw/*.so\
    proprietary/vendor/etc/firmware/*
include $(BUILD_PREBUILT)

# Device-specific modules
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
