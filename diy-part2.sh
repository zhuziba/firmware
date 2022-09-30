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
sed -i "s/hostname='OpenWrt'/hostname='Phicomm-K3'/g" package/base-files/files/bin/config_generate
sed -i 's|^TARGET_|# TARGET_|g; s|# TARGET_DEVICES += phicomm-k3|TARGET_DEVICES += phicomm-k3| ; s|# TARGET_DEVICES += phicomm_k3|TARGET_DEVICES += phicomm_k3|' target/linux/bcm53xx/image/Makefile


#v2raya
git clone https://github.com/v2rayA/v2raya-openwrt.git temp/v2raya-openwrt
mv temp/v2raya-openwrt/luci-app-v2raya package/lean/luci-app-v2raya
mv temp/v2raya-openwrt/v2raya package/lean/v2raya
