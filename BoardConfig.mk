USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/ignite/BoardConfigVendor.mk

# Board configuration
TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_PROVIDES_INIT_RC := true
OMAP_ENHANCEMENT := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -D__ARM_NEON__ -D__ARM_ARCH_7A__ -mtune=cortex-a8
TARGET_GLOBAL_CPPFLAGS += -D__ARM_NEON__ -D__ARM_ARCH_7A__ -mtune=cortex-a8
TARGET_BOOTLOADER_BOARD_NAME := ignite

BOARD_KERNEL_CMDLINE := console=ttyMSM1 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE     := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 429916160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_HAS_NO_MISC_PARTITION := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true

TARGET_PREBUILT_KERNEL := device/lge/ignite/kernel

#BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/lge/ignite/recovery/recovery_ui.c

# Recovery Options
BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_INITRC := device/lge/ignite/recovery/recovery.rc
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0