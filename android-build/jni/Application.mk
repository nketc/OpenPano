APP_OPTIM := release
APP_ABI := arm64-v8a armeabi-v7a
APP_PLATFORM := android-22
APP_PIE := true
#APP_STL := stlport_static
APP_STL := c++_static
NDK_TOOLCHAIN_VERSION := clang
TARGET_BUILD_APPS := yes

APP_CPPFLAGS += -fexceptions -frtti

APP_ALLOW_MISSING_DEPS := true
