# OnePlus 13R vendor blobs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,proprietary/vendor,system/vendor)

# Graphics
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor_hal/vulkan.adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/vulkan.adreno.so \
    $(LOCAL_PATH)/vendor_hal/android.hardware.graphics.mapper@4.0-impl-qti-display.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.graphics.mapper@4.0-impl-qti-display.so

# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/odm_etc/audio_effects.xml:$(TARGET_COPY_OUT_ODM)/etc/audio_effects.xml \
    $(LOCAL_PATH)/odm_etc/audio.cfg:$(TARGET_COPY_OUT_ODM)/etc/audio.cfg
