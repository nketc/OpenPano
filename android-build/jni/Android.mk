LOCAL_PATH := $(call my-dir)
MY_LOCAL_PATH := $(LOCAL_PATH)
include $(LOCAL_PATH)/../../src/third-party/jpeg/Android.mk

LOCAL_PATH := $(MY_LOCAL_PATH)
include $(LOCAL_PATH)/../../src/Android.mk
