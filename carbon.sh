#!/bin/bash


myInitFolder()
{
  if [ -d "$1" ] ; then
    echo "$1 wird gelöscht"
    rm -rf "$1"
  else 
    echo "$FOLDER wird angelegt"
    mkdir -p "$1"
  fi
}


ANDROID_HOME="$HOME/carbon"
KERNEL_DIR="$ANDROID_HOME/kernel/lge/msm8226/"
VENDOR_DIR="$ANDROID_HOME/vendor/lge/"
DEVICE_DIR="$ANDROID_HOME/device/"
HARDWARE_DIR="$ANDROID_HOME/hardware/"



echo "get the kernel ..."
myInitFolder "$KERNEL_DIR"
git clone https://github.com/isoplus/android_kernel_lge_msm8226 "$KERNEL_DIR"

echo "get the vendor blobs ..."
myInitFolder "$VENDOR_DIR"
git clone https://github.com/isoplus/proprietary_vendor_lge "$VENDOR_DIR"

echo "get the device driver ..."
myInitFolder "$DEVICE_DIR"
git clone https://github.com/isoplus/carbon_device "$DEVICE_DIR/lge/w7"

git clone https://github.com/isoplus/android_device_qcom_common "$DEVICE_DIR/qcom/common"

echo "get the hardware stuff ..."
myInitFolder "$HARDWARE_DIR/qcom/display-caf-new"
git clone https://github.com/isoplus/android_hardware_qcom_display-caf-new  "$HARDWARE_DIR/qcom/display-caf-new"

myInitFolder "$HARDWARE_DIR/qcom/media-caf-new"
git clone https://github.com/isoplus/android_hardware_qcom_media-caf-new  "$HARDWARE_DIR/qcom/media-caf-new"

myInitFolder "$HARDWARE_DIR/qcom/fm"
git clone https://github.com/isoplus/android_hardware_qcom_fm  "$HARDWARE_DIR/qcom/fm"



