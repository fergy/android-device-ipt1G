LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the open-source counterpart to this file
-include libsensor/Android.mk
-include pmb8878/Android.mk
