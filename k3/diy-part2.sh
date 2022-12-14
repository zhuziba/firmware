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
sed -i "s#UTC#Asia/Shanghai#" package/base-files/files/bin/config_generate
sed -i 's|^TARGET_|# TARGET_|g; s|# TARGET_DEVICES += phicomm-k3|TARGET_DEVICES += phicomm-k3| ; s|# TARGET_DEVICES += phicomm_k3|TARGET_DEVICES += phicomm_k3|' target/linux/bcm53xx/image/Makefile

svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/luci-app-aliyundrive-webdav package/diy/luci-app-aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-fuse/trunk/openwrt/luci-app-aliyundrive-fuse package/diy/luci-app-aliyundrive-fuse
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/aliyundrive-webdav package/diy/aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-fuse/trunk/openwrt/aliyundrive-fuse package/diy/aliyundrive-fuse
svn co https://github.com/QiuSimons/openwrt-mos/trunk/luci-app-mosdns package/diy/luci-app-mosdns
svn co https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest/trunk/applications/luci-app-cloudflarespeedtest package/diy/luci-app-cloudflarespeedtest
