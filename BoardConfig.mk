DEVICE_PATH := device/samsung/a05s

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img

# Inherit from common tree
include device/samsung/bengal-common/BoardConfigCommon.mk

# BEGIN SM-A057M PARTITION OVERRIDES
# Values obtained from the stock A057MUBSCDYJ2 LP metadata.
# These override the provisional values from bengal-common.

BOARD_SUPER_PARTITION_SIZE := 9017753600

BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions

BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 9013559296

BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    product \
    vendor \
    odm \
    system_dlkm \
    vendor_dlkm
# END SM-A057M PARTITION OVERRIDES
