TARGET := iphone:clang
THEOS_PLATFORM_SDK_ROOT_armv6 = /Volumes/Xcode/Xcode.app/Contents/Developer
SDKVERSION_armv6 = 5.1
TARGET_IPHONEOS_DEPLOYMENT_VERSION = 3.0
TARGET_IPHONEOS_DEPLOYMENT_VERSION_arm64 = 7.0
ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

TOOL_NAME = trun
OTAPatcher_FILES = main.mm

include $(THEOS_MAKE_PATH)/tool.mk
