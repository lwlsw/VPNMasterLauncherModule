FINALPACKAGE=1

include $(THEOS)/makefiles/common.mk

export TARGET = iphone:clang:11.2:11.0
export ARCHS = arm64 arm64e
THEOS_DEVICE_IP = 192.168.11.12

BUNDLE_NAME = VPNMasterLauncherModule
VPNMasterLauncherModule_BUNDLE_EXTENSION = bundle
VPNMasterLauncherModule_FILES = VPNMasterLauncherModule.m
VPNMasterLauncherModule_PRIVATE_FRAMEWORKS = ControlCenterUIKit
VPNMasterLauncherModule_INSTALL_PATH = /Library/ControlCenter/Bundles/

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/bundle.mk
