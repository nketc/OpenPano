LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_CPP_EXTENSION := .cc
SHELL = bash
# sources to include
SRCDIRS = lib feature stitch third-party/lodepng
ccSOURCES = $(shell cd $(LOCAL_PATH);find $(SRCDIRS) -name "*.cc" | sed 's/^\.\///g')

testtt:
	echo $(SRCDIRS)
	echo $(ccSOURCES)

LOCAL_SRC_FILES := \
	$(ccSOURCES) \
	main.cc

LOCAL_C_INCLUDES := $(LOCAL_PATH)/third-party $(LOCAL_PATH)/third-party/jpeg

LOCAL_CFLAGS := -O3 -std=c++11 -Wall -Wextra -Wnon-virtual-dtor -DDEBUG

LOCAL_STATIC_LIBRARIES := jpeg_static

LOCAL_MODULE := image-stitching

include $(BUILD_EXECUTABLE)
