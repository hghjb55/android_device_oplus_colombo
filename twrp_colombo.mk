# Inherit from those products. Most specific
# first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a
# developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/oplus/colombo/device.mk)

# Device identifier. This must come after all
# inclusions
PRODUCT_DEVICE := colombo
PRODUCT_NAME := twrp_colombo
PRODUCT_BRAND := oplus
PRODUCT_MODEL := oplus
PRODUCT_MANUFACTURER := oplus
PRODUCT_RELEASE_NAME := oplus
