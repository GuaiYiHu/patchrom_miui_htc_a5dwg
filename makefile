#
# Makefile for HTC Desire 816W/D
#
#
# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

local-out-zip-file := MIUI_d816d.zip

local-modified-jars := org.cyanogenmod.platform
local-miui-removed-apps := FM
local-miui-modified-apps := TeleService InCallUI MiuiKeyguard
local-density := XHDPI

local-phone-apps := PrintSpooler PacProcessor CertInstaller KeyChain \
	Stk UserDictionaryProvider Bluetooth BluetoothMidiService \
	webview telresources WAPPushManager PicoTts\

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider \
	SharedStorageBackup InputDevices CellBroadcastReceiver BackupRestoreConfirmation \
	CMSettingsProvider AudioFX CMAudioService ThemesProvider\

# The certificate for release version
local-certificate-dir := security

local-target-bit := 32

local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
	#cp -rf other/boot.img $(ZIP_DIR)/boot.img
	cp -rf other/system $(ZIP_DIR)/
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
	rm -rf $(ZIP_DIR)/system/etc/permissions/org.cyanogenmod.livedisplay.xml
	rm -rf $(ZIP_DIR)/system/lib64
