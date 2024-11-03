#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RE5C9F device
$(call inherit-product, device/realme/RE5C9F/device.mk)

PRODUCT_DEVICE := RE5C9F
PRODUCT_NAME := twrp_RE5C9F
PRODUCT_BRAND := realme
PRODUCT_MODEL := ums9230_hulk_Natv
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums9230_hulk_Natv-user 13 TP1A.220624.014 1697 release-keys"

BUILD_FINGERPRINT := realme/RMX3834EEA/RE5C9F:13/TP1A.220624.014/T.R4T2.1705049466:user/release-keys