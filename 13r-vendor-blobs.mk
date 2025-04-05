# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

PRODUCT_SOONG_NAMESPACES += \
    vendor/oneplus/13r

# Prebuilt vendor resources
PRODUCT_COPY_FILES += \
    vendor/oneplus/13r/proprietary/vendor/firmware/a740_zap.b01:$(TARGET_COPY_OUT_VENDOR)/firmware/a740_zap.b01 \
    vendor/oneplus/13r/proprietary/vendor/firmware/a740_zap.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/a740_zap.elf \
    vendor/oneplus/13r/proprietary/vendor/firmware/a740_zap.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/a740_zap.mdt

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2025-03-01 \
    ro.vendor.product.cpu.abilist=arm64-v8a \
    ro.vendor.product.cpu.abilist32= \
    ro.vendor.product.cpu.abilist64=arm64-v8a \
    vendor.product.device=13r \
    vendor.product.manufacturer=OnePlus \
    vendor.product.model=CPH2691 \
    vendor.product.name=13r

# Platform
TARGET_BOARD_PLATFORM := sm8650

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv9-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := kryo-v2 