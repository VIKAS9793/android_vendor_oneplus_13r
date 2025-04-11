LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),oneplus_13r)

include $(CLEAR_VARS)

# Vendor blobs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/bin/hw/android.hardware.fingerprint@2.1-service.oneplus_13r:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.fingerprint@2.1-service.oneplus_13r \
    $(LOCAL_PATH)/vendor/lib/hw/fingerprint.default.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/fingerprint.default.so

# Audio HAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/lib/hw/audio.primary.default.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/audio.primary.default.so \
    $(LOCAL_PATH)/vendor/lib64/hw/audio.primary.default.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/audio.primary.default.so

# Display HAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/lib/hw/hwcomposer.default.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/hwcomposer.default.so

# Power HAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/lib/hw/power.default.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/power.default.so

# NFC HAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/lib/hw/nfc_nci.nqx.default.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/nfc_nci.nqx.default.so \
    $(LOCAL_PATH)/vendor/bin/hw/android.hardware.nfc@1.2-service.oneplus_13r:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.nfc@1.2-service.oneplus_13r

# ODM blobs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/odm/etc/camera/camera_config.xml:$(TARGET_COPY_OUT_ODM)/etc/camera/camera_config.xml

endif
