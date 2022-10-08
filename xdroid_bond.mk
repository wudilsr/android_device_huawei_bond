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

## xdroidOSS
$(call inherit-product, vendor/xdroid/config/common.mk)

# Device identifier
PRODUCT_NAME := xdroid_bond
PRODUCT_DEVICE := bond
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := Honor 7X
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_GMS_CLIENTID_BASE := android-huawei

TARGET_INCLUDE_WIFI_EXT := true
TARGET_USES_AOSP_RECOVERY := true

# xdroid build flags
XDROID_BOOT := 1080p
XDROID_MAINTAINER := wudilsr

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=BND \
    PRIVATE_BUILD_DESC="BND-L21-user 9.1.0 HUAWEIBND-L21 164-LGRP2-OVS release-keys"

BUILD_FINGERPRINT := HONOR/BND-L21/HWBND-H:9/HONORBND-L21/9.1.0.141C432:user/release-keys
