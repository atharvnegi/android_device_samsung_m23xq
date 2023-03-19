#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# FM
PRODUCT_PACKAGES += \
    FM2 \
    qcom.fmradio

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qti.chg_policy.sh \
    install-recovery.sh \
    init.qti.dcvs.sh \
    init.qti.early_init.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.mdm.sh \
    init.qcom.sdio.sh \
    init.qcom.efs.sync.sh \
    init.qti.media.sh \
    init.qcom.sensors.sh \
    init.qcom.early_boot.sh \
    init.qcom.class_core.sh \
    init.qti.qcv.sh \
    init.qcom.post_boot.sh \
    qca6234-service.sh \
    init.qcom.coex.sh \
    init.crda.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.factory.rc \
    init.m23xq.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.samsung.rc \
    init.qcom.rc \
    init.qti.ufs.rc \
    init.samsung.display.rc \
    init.samsung.bsp.rc \
    init.recovery.samsung.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ramplus:$(TARGET_COPY_OUT_RAMDISK)/fstab.ramplus

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Perf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perf/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext \

PRODUCT_BOOT_JARS += \
    telephony-ext

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/m23xq/m23xq-vendor.mk)
