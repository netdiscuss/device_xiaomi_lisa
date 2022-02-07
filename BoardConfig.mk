#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
-include vendor/xiaomi/lisa/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/lisa
LISA_PREBUILT := device/xiaomi/lisa-prebuilt

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true
SELINUX_IGNORE_NEVERALLOWS := true

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    odm \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor_boot \
    vendor

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
TARGET_USE_QTI_BT_STACK := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lahaina
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 440

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_lisa
TARGET_RECOVERY_DEVICE_MODULES := libinit_lisa

# Kernel
BOARD_BOOT_HEADER_VERSION := 3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_IMAGE_NAME := Image

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 msm_rtb.filter=0x237 service_locator.enable=1 androidboot.usbcontroller=a600000.dwc3 swiotlb=0 loop.max_part=7 cgroup.memory=nokmem,nosocket pcie_ports=compat iptable_raw.raw_before_defrag=1 ip6table_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

TARGET_KERNEL_CONFIG := lisa_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/lisa
TARGET_KERNEL_CLANG_COMPILE := true

BOARD_VENDOR_KERNEL_MODULES := \
    $(KERNEL_MODULES_OUT)/adsp_loader_dlkm.ko \
    $(KERNEL_MODULES_OUT)/apr_dlkm.ko \
    $(KERNEL_MODULES_OUT)/bolero_cdc_dlkm.ko \
    $(KERNEL_MODULES_OUT)/bt_fm_slim.ko \
    $(KERNEL_MODULES_OUT)/btpower.ko \
    $(KERNEL_MODULES_OUT)/camera.ko \
    $(KERNEL_MODULES_OUT)/device_management_service_v01.ko \
    $(KERNEL_MODULES_OUT)/fpc1020_tee.ko \
    $(KERNEL_MODULES_OUT)/goodix_core.ko \
    $(KERNEL_MODULES_OUT)/goodix_ts_gesture.ko \
    $(KERNEL_MODULES_OUT)/goodix_ts_tools.ko \
    $(KERNEL_MODULES_OUT)/hdmi_dlkm.ko \
    $(KERNEL_MODULES_OUT)/hwid.ko \
    $(KERNEL_MODULES_OUT)/icnss2.ko \
    $(KERNEL_MODULES_OUT)/ir-spi.ko \
    $(KERNEL_MODULES_OUT)/leds-qti-flash.ko \
    $(KERNEL_MODULES_OUT)/llcc_perfmon.ko \
    $(KERNEL_MODULES_OUT)/machine_dlkm.ko \
    $(KERNEL_MODULES_OUT)/mbhc_dlkm.ko \
    $(KERNEL_MODULES_OUT)/mi_thermal_interface.ko \
    $(KERNEL_MODULES_OUT)/native_dlkm.ko \
    $(KERNEL_MODULES_OUT)/nfc_i2c.ko \
    $(KERNEL_MODULES_OUT)/pinctrl_lpi_dlkm.ko \
    $(KERNEL_MODULES_OUT)/pinctrl_wcd_dlkm.ko \
    $(KERNEL_MODULES_OUT)/platform_dlkm.ko \
    $(KERNEL_MODULES_OUT)/q6_dlkm.ko \
    $(KERNEL_MODULES_OUT)/q6_notifier_dlkm.ko \
    $(KERNEL_MODULES_OUT)/q6_pdr_dlkm.ko \
    $(KERNEL_MODULES_OUT)/qti_battery_charger_main.ko \
    $(KERNEL_MODULES_OUT)/radio-i2c-rtc6226-qca.ko \
    $(KERNEL_MODULES_OUT)/rmnet_core.ko \
    $(KERNEL_MODULES_OUT)/rmnet_ctl.ko \
    $(KERNEL_MODULES_OUT)/rmnet_offload.ko \
    $(KERNEL_MODULES_OUT)/rmnet_shs.ko \
    $(KERNEL_MODULES_OUT)/rx_macro_dlkm.ko \
    $(KERNEL_MODULES_OUT)/slimbus-ngd.ko \
    $(KERNEL_MODULES_OUT)/slimbus.ko \
    $(KERNEL_MODULES_OUT)/snd_event_dlkm.ko \
    $(KERNEL_MODULES_OUT)/stub_dlkm.ko \
    $(KERNEL_MODULES_OUT)/swr_ctrl_dlkm.ko \
    $(KERNEL_MODULES_OUT)/swr_dlkm.ko \
    $(KERNEL_MODULES_OUT)/swr_dmic_dlkm.ko \
    $(KERNEL_MODULES_OUT)/swr_haptics_dlkm.ko \
    $(KERNEL_MODULES_OUT)/tfa98xx_dlkm.ko \
    $(KERNEL_MODULES_OUT)/tx_macro_dlkm.ko \
    $(KERNEL_MODULES_OUT)/us_prox_iio.ko \
    $(KERNEL_MODULES_OUT)/usb_f_dtp.ko \
    $(KERNEL_MODULES_OUT)/usbdtp.ko \
    $(KERNEL_MODULES_OUT)/va_macro_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wcd937x_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wcd937x_slave_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wcd938x_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wcd938x_slave_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wcd9xxx_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wcd_core_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wlan.ko \
    $(KERNEL_MODULES_OUT)/wlan_firmware_service_v01.ko \
    $(KERNEL_MODULES_OUT)/wsa883x_dlkm.ko \
    $(KERNEL_MODULES_OUT)/wsa_macro_dlkm.ko \
    $(KERNEL_MODULES_OUT)/xiaomi_touch.ko

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 201326592 # 196608 * 1024 sde11
BOARD_DTBOIMG_PARTITION_SIZE := 25165824 # 24576 * 1024 sde15
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216 # 16384 * 1024 sda24
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128 # 110600172 * 1024 sda33
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296 # 98304 * 1024 sde22

BOARD_PREBUILT_ODMIMAGE := $(LISA_PREBUILT)/odm.img
BOARD_PREBUILT_VENDORIMAGE := $(LISA_PREBUILT)/vendor.img

BOARD_LISA_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system system_ext vendor
BOARD_SUPER_PARTITION_SIZE := 9126805504 # 8912896 * 1024 sda20
BOARD_SUPER_PARTITION_GROUPS := lisa_dynamic_partitions
BOARD_LISA_DYNAMIC_PARTITIONS_SIZE := 9122611200 # 9126805504 - 4194304

BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 104857600

BOARD_PARTITION_LIST := $(call to-upper, $(BOARD_LISA_DYNAMIC_PARTITIONS_PARTITION_LIST))
$(foreach p, $(BOARD_PARTITION_LIST), $(eval BOARD_$(p)IMAGE_FILE_SYSTEM_TYPE := ext4))
$(foreach p, $(BOARD_PARTITION_LIST), $(eval TARGET_COPY_OUT_$(p) := $(call to-lower, $(p))))

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lahaina

# Power
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/properties/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/properties/system_ext.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_VBMETA_SYSTEM := system system_ext
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Sepolicy
include device/qcom/sepolicy/SEPolicy.mk

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/configs/vintf/compatibility_matrix.device.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/configs/vintf/device_framework_manifest.xml

# VNDK
BOARD_VNDK_VERSION := current
