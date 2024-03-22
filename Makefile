FINALPACKAGE = 1
export ARCHS = arm64 arm64e
export SYSROOT = $(THEOS)/sdks/iPhoneOS15.6.sdk

ifneq ($(THEOS_PACKAGE_SCHEME), rootless)
export TARGET = iphone:clang:15.6
export PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
else
export TARGET = iphone:clang:15.6
endif

INSTALL_TARGET_PROCESSES = SpringBoard
SUBPROJECTS = Tweak Preferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
