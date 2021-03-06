#
# Copyright 2016 The CyanogenMod Project
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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(TARGET_POWERHAL_HEADER_PATH)
ifeq ($(filter lux merlin,$(TARGET_DEVICE)),)
LOCAL_SRC_FILES := power_8916.c
else
LOCAL_SRC_FILES := power_8939.c
endif
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE_PATH := $(TARGET_COPY_OUT_VENDOR)lib/hw
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := power.msm8916
include $(BUILD_SHARED_LIBRARY)
