#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Rising stuff

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true

# RisingOS Flags
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 710" \
    RisingMaintainer="SHRAVAN"

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_SYSTEM_NAME := RMX1901
PRODUCT_SYSTEM_DEVICE := RMX1901

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "RMX1901-user 11 RKQ1.201217.002 1626947099367 release-keys")

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Realme/RMX1901/RMX1901:11/RKQ1.201217.002/1626947099367:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
