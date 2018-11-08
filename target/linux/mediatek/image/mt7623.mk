define Device/7623n-bananapi-bpi-r2
  DEVICE_TITLE := MTK7623n BananaPi R2
  DEVICE_DTS := mt7623n-bananapi-bpi-r2
  DEVICE_PACKAGES := cryptodev wmt kmod-mt6625l-wlan-gen2 uboot-mtk-bpi-r2 kmod-crypto-hw-mtk kmod-nat-hw-mtk \
	u-boot-bpi_r2 uboot-envtools attr f2fs-tools f2fsck mkf2fs 
  SUPPORTED_DEVICES := bananapi,bpi-r2
  IMAGES := sysupgrade.tar sysupgrade-sd.img sysupgrade-emmc.img
  IMAGE/sysupgrade.tar := sysupgrade-tar | append-metadata
  IMAGE/sysupgrade-sd.img := sysupgrade-bpi-r2-sd
  IMAGE/sysupgrade-emmc.img := sysupgrade-bpi-r2-emmc
endef

TARGET_DEVICES += 7623n-bananapi-bpi-r2
