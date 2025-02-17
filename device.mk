#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# API levels
BOARD_API_LEVEL := 31
PRODUCT_SHIPPING_API_LEVEL := 31

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    1K-ST-1.sh \
    200-ST-1.sh \
    2K-ST-1.sh \
    3K-ST-1.sh \
    500-ST-1.sh \
    AT_playback_1K.sh \
    SW-ST-19.sh \
    SW-ST-20.sh \
    SW-ST-7.sh \
    init.class_main.sh \
    init.crda.sh \
    init.kernel.post_boot-bengal-iot.sh \
    init.kernel.post_boot-bengal.sh \
    init.kernel.post_boot.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.qti.display_boot.sh \
    init.qti.early_init.sh \
    init.qti.kernel.debug-bengal.sh \
    init.qti.kernel.debug.sh \
    init.qti.kernel.sh \
    init.qti.media.sh \
    init.qti.qcv.sh \
    init.qti.write.sh \
    install-recovery.sh \
    libsar.sh \
    loopback.sh \
    playback.sh \
    playback_sweep_sound.sh \
    qca6234-service.sh \
    record.sh \
    record_playback.sh \
    system_dlkm_modprobe.sh \
    vendor_modprobe.sh \
    wififtm.sh \
    wifisar.sh \

PRODUCT_PACKAGES += \
    fstab.emmc \
    init.a05s.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.kernel.rc \
    init.qti.ufs.rc \
    init.samsung.bsp.rc \
    init.samsung.rc \
    init.target.rc \
    init.recovery.qcom.rc \
    init.recovery.samsung.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.emmc:$(TARGET_COPY_OUT_RAMDISK)/fstab.emmc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/bengal/bengal-vendor.mk)
