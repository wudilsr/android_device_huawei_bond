#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Device
$(call inherit-product, device/huawei/bond/device.mk)

## cherish
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := cherish_bond
PRODUCT_DEVICE := bond
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := Honor 7X
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_GMS_CLIENTID_BASE := android-huawei

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_QUICK_TAP := true
USE_PIXEL_CHARGING := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=wudilsr

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=BND \
    PRIVATE_BUILD_DESC="BND-L21-user 9.1.0 HUAWEIBND-L21 164-LGRP2-OVS release-keys"

BUILD_FINGERPRINT := HONOR/BND-L21/HWBND-H:9/HONORBND-L21/9.1.0.141C432:user/release-keys
