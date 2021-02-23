ifneq ($(filter $(TARGET_DEVICE), Coolpad5270),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
