$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/qcom/a21/a21-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/qcom/msm7627a/overlay

LOCAL_PATH := device/qcom/msm7627a
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_msm7627a
PRODUCT_DEVICE := msm7627a

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    Torch \
    setup_fs 

# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer \
    libQcomUI

# Audio
PRODUCT_PACKAGES += \
    libacoustic \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.msm7x27a \
    sensors.msm7x27a \
    gps.default

# Camera
PRODUCT_PACKAGES += \
        camera.msm7x27a
        
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# APN
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml 

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/init.qcom.rc:root/init.qcom.rc \
    device/qcom/msm7627a/prebuilt/ueventd.qct.rc:root/ueventd.qct.rc \
    device/qcom/msm7627a/prebuilt/init.qcom.sh:root/init.qcom.sh \
    device/qcom/msm7627a/prebuilt/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/qcom/msm7627a/prebuilt/init.qcom.usb.rc:root/init.target.rc \
    device/qcom/msm7627a/recovery/fix_reboot.sh:recovery/root/sbin/fix_reboot.sh  

# Camera
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/lib/hw/camera.msm7627a.so:system/lib/hw/camera.msm7627a.so \
    device/qcom/msm7627a/prebuilt/system/lib/libcamera.so:system/lib/libcamera.so \
    device/qcom/msm7627a/prebuilt/system/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/qcom/msm7627a/prebuilt/system/lib/libcameraservice.so:system/lib/libcameraservice.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmipl.so:system/lib/libmmipl.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/qcom/msm7627a/prebuilt/system/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    device/qcom/msm7627a/prebuilt/system/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/qcom/msm7627a/prebuilt/system/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
    device/qcom/msm7627a/prebuilt/system/bin/mm-qcamera-testsuite-client:system/bin/mm-qcamera-testsuite-client \
    device/qcom/msm7627a/prebuilt/system/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
    device/qcom/msm7627a/prebuilt/system/lib/liboemcamera.so:system/lib/liboemcamera.so

# OMX
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/qcom/msm7627a/prebuilt/system/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/qcom/msm7627a/prebuilt/system/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/qcom/msm7627a/prebuilt/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so 

# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

# Live wallpaper
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Vold 
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/etc/vold.fstab_use_emmc:system/etc/vold.fstab_use_emmc \
    device/qcom/msm7627a/prebuilt/system/etc/vold.fstab_use_tflash:system/etc/vold.fstab_use_tflash \
    device/qcom/msm7627a/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab 

# Prebuilt Modules
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/lib/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
    device/qcom/msm7627a/prebuilt/system/lib/modules/lcd.ko:system/lib/modules/lcd.ko 

# Wifi
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/qcom/msm7627a/prebuilt/system/etc/wifi/wpa_supplicant.conf:hcidumpsystem/etc/wifi/wpa_supplicant.conf \
    device/qcom/msm7627a/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/qcom/msm7627a/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/qcom/msm7627a/prebuilt/system/etc/firmware/fw_bcmdhd.bin:system/etc/firmware/fw_bcmdhd.bin \
    device/qcom/msm7627a/prebuilt/system/etc/firmware/fw_bcmdhd_apsta.bin:system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/qcom/msm7627a/prebuilt/system/etc/firmware/fw_bcmdhd_p2p.bin:system/etc/firmware/fw_bcmdhd_p2p.bin 

# Audio
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/qcom/msm7627a/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/qcom/msm7627a/prebuilt/system/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/qcom/msm7627a/proprietary/lib/libaudioalsa.so:obj/lib/libaudioalsa.so

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Sensors
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/lib/sensors.msm7627a.so:system/lib/hw/sensors.msm7627a.so \
    device/qcom/msm7627a/prebuilt/system/lib/lights.msm7627a.so:system/lib/hw/lights.msm7627a.so 

# 3D(ICS Blobs)
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/qcom/msm7627a/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/qcom/msm7627a/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/qcom/msm7627a/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/qcom/msm7627a/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/qcom/msm7627a/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/qcom/msm7627a/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/qcom/msm7627a/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/qcom/msm7627a/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/qcom/msm7627a/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so 

# RIL
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/lib/libdiag.so:system/lib/libdiag.so \
    device/qcom/msm7627a/prebuilt/system/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/qcom/msm7627a/prebuilt/system/lib/libril.so:system/lib/libril.so \
    device/qcom/msm7627a/prebuilt/system/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/qcom/msm7627a/prebuilt/system/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/qcom/msm7627a/prebuilt/system/bin/rild:system/bin/rild \
    device/qcom/msm7627a/prebuilt/system/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so 

# Bluetooth
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/qcom/msm7627a/prebuilt/system/etc/firmware/brcm_bt.hcd:system/etc/firmware/brcm_bt.hcd 

# FM Radio
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh 

## Touchscreen
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/qcom/msm7627a/prebuilt/system/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \

# Keyboard maps
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/qcom/msm7627a/prebuilt/system/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/qcom/msm7627a/prebuilt/system/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/qcom/msm7627a/prebuilt/system/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/qcom/msm7627a/prebuilt/system/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/qcom/msm7627a/prebuilt/system/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl 


# Misc
PRODUCT_COPY_FILES += \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/qcom/msm7627a/prebuilt/system/etc/hcidump.sh:system/etc/hcidump.sh \
    device/qcom/msm7627a/prebuilt/system/etc/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.rendering.sh:system/etc/init.qcom.rendering.sh \
    device/qcom/msm7627a/prebuilt/system/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/qcom/msm7627a/prebuilt/system/etc/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
    device/qcom/msm7627a/prebuilt/system/etc/UserPolicy.xml:system/etc/UserPolicy.xml \
    device/qcom/msm7627a/prebuilt/system/etc/thermald.conf:system/etc/thermald.conf 

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# MDPI assets
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, build/target/product/full_base.mk)
