TARGET_BOARD_PLATFORM := sdm845
 
# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
 
# Kernel
TARGET_KERNEL_SOURCE := ernel/htc/sdm845
TARGET_KERNEL_CONFIG := lineage_ocn_defconfig
 
# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1294991360
BOARD_HAS_NO_CACHE_PARTITION := true
 
AB_OTA_UPDATER := true
 
AB_OTA_PARTITIONS :=
    boot
    system
    vendor
 
PRODUCT_PACKAGES +=
    update_engine
    update_verifier
 
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
 
# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER             := NL80211
WPA_SUPPLICANT_VERSION                  := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB        := lib_driver_cmd_wl12xx
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB       := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                    := NL80211
BOARD_HOSTAPD_PRIVATE_LIB               := lib_driver_cmd_wl12xx
#BOARD_HOSTAPD_PRIVATE_LIB              := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                       := wlan0
WIFI_DRIVER_MODULE_NAME                 := rt2800usb
WIFI_DRIVER_MODULE_PATH                 :=
/system/lib/modules/rt2800usb.ko
BOARD_HAVE_BLUETOOTH                    := true 
