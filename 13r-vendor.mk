# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, vendor/oneplus/13r/13r-vendor-blobs.mk)

# Inherit from kalama device
$(call inherit-product, device/oneplus/13r/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_DEVICE := 13r
PRODUCT_NAME := lineage_13r
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 13R
PRODUCT_MANUFACTURER := OnePlus

# LineageOS specific flags
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.lineage.device=13r \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.lineage.releasetype=$(LINEAGE_BUILDTYPE) \
    ro.lineage.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.model=Snapdragon8Gen3 \
    ro.soc.manufacturer=Qualcomm \
    ro.hardware=kalama \
    ro.product.first_api_level=34

# Camera HAL
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    vendor.qti.hardware.camera.postproc@1.0-service

# Audio HAL
PRODUCT_PACKAGES += \
    android.hardware.audio@7.0-impl \
    android.hardware.audio.service \
    android.hardware.audio.effect@7.0-impl

# Display HAL
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.allocator@4.0-service \
    android.hardware.graphics.mapper@4.0-impl-qti-display

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    android.hardware.power@1.2.vendor

# Thermal HAL
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus13R-user 15.0.0.0 RKQ1.201217.002 eng.root.20240201.000000 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus13R/OnePlus13R:15.0.0.0/RKQ1.201217.002/root02201000:user/release-keys

# Security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.version.security_patch=2024-02-01

# Enable dynamic partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_BUILD_PRODUCT_IMAGE := true
PRODUCT_BUILD_SYSTEM_EXT_IMAGE := true
PRODUCT_BUILD_VENDOR_IMAGE := true
PRODUCT_BUILD_ODM_IMAGE := true
PRODUCT_BUILD_VENDOR_DLKM_IMAGE := true

# Inherit from kalama vendor
$(call inherit-product, vendor/oneplus/13r/13r-vendor.mk) 