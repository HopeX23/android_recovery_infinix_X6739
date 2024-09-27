#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

#Inherit emulated_storage properties
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit userspace reboot properties
$(call inherit-product, $(SRC_TARGET_DIR)/product/userspace_reboot.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6739 device
$(call inherit-product, device/infinix/zenith/device.mk)

PRODUCT_DEVICE := zenith
PRODUCT_NAME := twrp_zenith
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6739
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6739u_h931-user 12 SP1A.210812.016 683473 release-keys"

BUILD_FINGERPRINT := Infinix/X6739-GL/Infinix-X6739:12/SP1A.210812.016/240819V630:user/release-keys
