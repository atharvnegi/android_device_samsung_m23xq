#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m23xq device
$(call inherit-product, device/samsung/m23xq/device.mk)

PRODUCT_DEVICE := m23xq
PRODUCT_NAME := lineage_m23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E236B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m23xqdd-user 13 TP1A.220624.014 E236BXXS2BWB1 release-keys"

BUILD_FINGERPRINT := samsung/m23xqdd/m23xq:11/RP1A.200720.012/E236BXXS2BWB1:user/release-keys
