#
# Copyright (C) 2023 The NusantaraProject-ROM
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common NusantaraProject-ROM stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

PRODUCT_NAME := nad_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit tags
NAD_BUILD_TYPE := OFFICIAL

# Inherit Pixel Charging
USE_PIXEL_CHARGING := true

# Ihenrit Bootanimation reso
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common device props
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_WITH_LTO := true

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.2.0.TLMMIXM:user/release-keys
