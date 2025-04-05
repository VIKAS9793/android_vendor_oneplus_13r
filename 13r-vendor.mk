# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, vendor/oneplus/13r/13r-vendor-blobs.mk)

# Inherit from sm8650 device
$(call inherit-product, device/oneplus/13r/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_DEVICE := 13r
PRODUCT_NAME := lineage_13r
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2691
PRODUCT_MANUFACTURER := OnePlus

# LineageOS specific flags
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.lineage.device=13r \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.lineage.releasetype=$(LINEAGE_BUILDTYPE) \
    ro.lineage.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.model=SM8650 \
    ro.soc.manufacturer=Qualcomm \
    ro.hardware=sm8650 \
    ro.product.first_api_level=34 \
    ro.vendor.build.security_patch=2025-03-01 \
    ro.build.version.release=15 \
    ro.build.version.release_or_codename=15 \
    ro.build.version.sdk=35

# Camera HAL
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.8-impl \
    android.hardware.camera.provider@2.8-service \
    vendor.qti.hardware.camera.postproc@1.0-service

# Audio HAL
PRODUCT_PACKAGES += \
    android.hardware.audio@7.1-impl \
    android.hardware.audio.service \
    android.hardware.audio.effect@7.1-impl

# Display HAL
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.6-service \
    android.hardware.graphics.allocator@4.0-service \
    android.hardware.graphics.mapper@4.0-impl-qti-display

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    android.hardware.power@1.4.vendor

# Thermal HAL
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libtinyalsa \
    tinymix

# Camera
PRODUCT_PACKAGES += \
    camera.sm8650 \
    libcamera_metadata_shim \
    libgui_vendor \
    vendor.qti.hardware.camera.device@1.0.vendor \
    vendor.qti.hardware.camera.postproc@1.0.vendor

# Display
PRODUCT_PACKAGES += \
    gralloc.sm8650 \
    hwcomposer.sm8650 \
    libdisplayconfig.qti \
    libqdMetaData \
    libtinyxml \
    memtrack.sm8650

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4-service.clearkey

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.oneplus \
    libfingerprintinscreen \
    vendor.goodix.hardware.biometrics.fingerprint@2.1.vendor

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1-impl-qti \
    android.hardware.gnss@2.1-service-qti

# Graphics
PRODUCT_PACKAGES += \
    libgui_vendor \
    vendor.qti.hardware.display.allocator@1.0.vendor \
    vendor.qti.hardware.display.composer@3.0.vendor \
    vendor.qti.hardware.display.mapper@1.1.vendor

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.2-impl \
    android.hardware.health@2.2-service

# Media
PRODUCT_PACKAGES += \
    libavservices_minijail.vendor \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Neural Networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3-service-qti

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    Tag

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    vendor.qti.hardware.perf@2.2.vendor

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.oneplus \
    libsensorndkbridge

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service-qti

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.6-service \
    hostapd \
    libwifi-hal-qcom \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# Inherit proprietary files
$(call inherit-product, vendor/oneplus/13r/13r-vendor-blobs.mk)