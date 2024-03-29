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
sed -i "s/hostname='OpenWrt'/hostname='Phicomm-K2p'/g" package/base-files/files/bin/config_generate
#插件
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/diy/luci-app-openclash
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/diy/luci-app-smartdns
