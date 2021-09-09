# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from oneplus3 device
$(call inherit-product, device/oneplus/oneplus3/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2019-10-01

PRODUCT_NAME := palladium_oneplus3
PRODUCT_DEVICE := oneplus3
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Fingerprint
BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.210805.001.A1/7474174:user/release-keys
BUILD_DESCRIPTION := coral-user 11 RQ3A.210805.001.A1 7474174 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"

TARGET_VENDOR := oneplus

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

#Official-build-only
PALLADIUM_BUILD_TYPE := OFFICIAL
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.maintainer=Deepak Jr \
    ro.palladiumdevice.cpu=MSM8996(821/820) \
    ro.palladiumdevice.display=5.5 \
    ro.palladiumdevice.displaytype=1080P \
    ro.palladiumdevice.battery=3000mAh \
    ro.palladiumdevice.camera=16MPx + 8MPx
