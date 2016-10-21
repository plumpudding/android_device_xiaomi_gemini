#
# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gemini device
$(call inherit-product, device/xiaomi/gemini/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := omni_gemini
PRODUCT_DEVICE := gemini
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 5
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="gemini" \
    PRODUCT_NAME="gemini" \
    BUILD_FINGERPRINT="Xiaomi/gemini/gemini:6.0.1/MXB48T/V8.0.2.0.MAAMIDG:user/release-keys" \
    PRIVATE_BUILD_DESC="gemini-user 6.0.1 MXB48T V8.0.2.0.MAAMIDG release-keys"

TARGET_VENDOR := Xiaomi
