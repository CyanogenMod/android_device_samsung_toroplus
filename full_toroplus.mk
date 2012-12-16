# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for toroplus hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#

PRODUCT_PACKAGES := \
    GNexusParts

# Get the long list of APNs
# PRODUCT_COPY_FILES += device/samsung/toroplus/test-apns-conf_sprint.xml:system/etc/apns-conf.xml
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
# Inherit from toroplus device
$(call inherit-product, device/samsung/toroplus/device.mk)

# Set those variables here to overwrite the inherited values.
#PRODUCT_NAME := full_toroplus
#PRODUCT_DEVICE := toroplus
#PRODUCT_BRAND := Android
#PRODUCT_MODEL := Full AOSP on Toroplus
#PRODUCT_RESTRICT_VENDOR_FILES := true
