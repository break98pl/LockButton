export ARCHS = arm64e
export CLI = 0
export TARGET = iphone:clang:14.5:15.0
export FINALPACKAGE=1
export THEOS_DEVICE_IP= 192.168.1.238	

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LockButton
LockButton_FILES = Tweak.x
LockButton_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
