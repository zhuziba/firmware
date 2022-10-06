#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#echo '添加rufengsuixing的adguardhome插件'
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome
echo '添加destan19的OpenAppFilter插件'
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
echo '添加kiddin9的dnsfilterr插件'
git clone https://github.com/kiddin9/luci-app-dnsfilter package/lean/luci-app-dnsfilter 
echo '添加sbwml的mosdns插件'
git clone https://github.com/sbwml/luci-app-mosdns.git package/mosdns
git clone https://github.com/sbwml/v2ray-geodata.git package/geodata
