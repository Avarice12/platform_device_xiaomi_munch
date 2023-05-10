#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common NusantaraProject-ROM stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/munch/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_MATLOG := true
USE_AOSP_CLOCK := true
USE_PIXEL_CHARGING := true
TARGET_BUILD_WITH_LTO := true
NAD_BUILD_TYPE := OFFICIAL

PRODUCT_NAME := nad_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.1.0.TLMMIXM:user/release-keys
