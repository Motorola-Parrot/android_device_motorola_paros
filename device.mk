#
# Copyright (C) 2025 The LineageOS Project
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

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xxxhdpi xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Init
PRODUCT_PACKAGES += \
    init.oem.fingerprint2.sh \
    init.mmi.overlay.rc

# NFC
TARGET_USES_NXP_NFC := true

# Screen
TARGET_SCREEN_DENSITY := 400

# Shipping API Level
BOARD_SHIPPING_API_LEVEL := 31
PRODUCT_SHIPPING_API_LEVEL := 34

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# VINTF
ODM_MANIFEST_SKUS += n dn ne dne
ODM_MANIFEST_N_FILES := \
    $(DEVICE_PATH)/configs/vintf/sku/manifest_n.xml \
    device/motorola/sm6450-common/configs/vintf/manifest_parrot_ss.xml
ODM_MANIFEST_DN_FILES := $(DEVICE_PATH)/configs/vintf/sku/manifest_dn.xml
ODM_MANIFEST_NE_FILES := $(DEVICE_PATH)/configs/vintf/sku/manifest_ne.xml
ODM_MANIFEST_DNE_FILES := $(DEVICE_PATH)/configs/vintf/sku/manifest_dne.xml

# Inherit from motorola sm6450-common
$(call inherit-product, device/motorola/sm6450-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/motorola/paros/paros-vendor.mk)
