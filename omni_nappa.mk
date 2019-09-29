$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/nappa/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += device/bq/nappa/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nappa
PRODUCT_NAME := omni_nappa
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris V
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nappa
