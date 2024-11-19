#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/breeze

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/breeze/breeze-vendor.mk)

# Inherit common Derp configurations
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Derpfest
DERP_BUILDTYPE := Official
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_6 := true
TARGET_USES_PICO_GAPPS := true

# Device identifier
PRODUCT_DEVICE := breeze
PRODUCT_NAME := derp_breeze
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
