#
# Copyright (C) 2019 The LineageOS Project
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

# inherit from common tb-common
-include device/lenovo/tb-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/TBX304

# Asserts
TARGET_OTA_ASSERT_DEVICE := TB-X304X,TB-X304L,TB-X304F,TBX304,tb_x304x,tb_x304l,tb_x304f,tb_x304

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_TS_MAKEUP := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_lenovo_tbx304
TARGET_RECOVERY_DEVICE_MODULES := libinit_lenovo_tbx304

# Kernel
TARGET_KERNEL_CONFIG := lineageos_tbx304_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4080218112
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9921059840 # 9921076224 - 16384

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/GT9110P/gt9110p/gesture"

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/lenovo/TBX304/BoardConfigVendor.mk
