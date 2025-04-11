# OnePlus 13R vendor blobs

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary,system)

# Include proprietary license if exists
-include vendor/oneplus/13r/proprietary/License.txt

# Display
PRODUCT_PACKAGES += \
    hwcomposer.sm8650 \
    libqdutils

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.oneplus_13r \
    fingerprint.oneplus
