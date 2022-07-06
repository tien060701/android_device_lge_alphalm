#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from alphalm device
$(call inherit-product, device/lge/alphalm/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifiers

PRODUCT_NAME := aosp_alphalm
PRODUCT_DEVICE := alphalm
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := LG G8
PRODUCT_MODEL := LM-G850

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := alphalm_lao_com
TARGET_VENDOR_DEVICE_NAME := alphalm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="alphalm_lao_com" \
    PRIVATE_BUILD_DESC="alphalm_lao_com-user 11 RKQ1.210420.001 2122112261c44 release-keys"

BUILD_FINGERPRINT := "lge/alphalm_lao_com/alphalm:11/RKQ1.210420.001/2122112261c44:user/release-keys"

