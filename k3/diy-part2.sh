#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate
sed -i "s/hostname='ImmortalWrt'/hostname='Phicomm-K3'/g" package/base-files/files/bin/config_generate
sed -i 's|^TARGET_|# TARGET_|g; s|# TARGET_DEVICES += phicomm-k3|TARGET_DEVICES += phicomm-k3| ; s|# TARGET_DEVICES += phicomm_k3|TARGET_DEVICES += phicomm_k3|' target/linux/bcm53xx/image/Makefile
rm -rf package/feeds/packages/mosdns
git clone https://github.com/QiuSimons/openwrt-mos.git package/diy/openwrt-mos
#git clone https://github.com/sbwml/luci-app-mosdns package/diy/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/diy/geodata

#内核版本大于5.4.156以上的K3的Op无法运行k3screenctrl
#替换成5.4内核
sed -i "s/KERNEL_PATCHVER:=*.*/KERNEL_PATCHVER:=5.4/g" target/linux/bcm53xx/Makefile

rm -rf ./package/firmware/brcmfmac4366c0-firmware-vendor/files/brcmfmac4366c-pcie.bin
curl -L -H "Cache-Control: no-cache" -o ./package/firmware/brcmfmac4366c0-firmware-vendor/files/brcmfmac4366c-pcie.bin https://cdn.staticaly.com/gh/Hill-98/phicommk3-firmware/master/brcmfmac4366c-pcie.bin.69027
