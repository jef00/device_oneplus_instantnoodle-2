#
# Copyright (C) 2018 The aosp Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Google Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Next Gen Assistant
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Stock ARCore
TARGET_INCLUDE_STOCK_ARCORE := true

PRODUCT_NAME := aosp_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2015

PRODUCT_SYSTEM_NAME := OnePlus8
PRODUCT_SYSTEM_DEVICE := OnePlus8

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

