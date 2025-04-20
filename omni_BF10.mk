#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from BF10 device
$(call inherit-product, device/alps/BF10/device.mk)

PRODUCT_DEVICE := BF10
PRODUCT_NAME := omni_BF10
PRODUCT_BRAND := BF10
PRODUCT_MODEL := BF10
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tek6735m_65_d_n-user 7.0 NRD90M 1729060983 release-keys"

BUILD_FINGERPRINT := alps/full_tek6735m_65_d_n/tek6735m_65_d_n:7.0/NRD90M/1729060983:user/release-keys
