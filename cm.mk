## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a21

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/qcom/msm7627a/device_a21.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := msm7627a
PRODUCT_NAME := full_msm7627a
PRODUCT_BRAND := qcom
PRODUCT_MODEL := msm7627a
PRODUCT_MANUFACTURER := qcom
