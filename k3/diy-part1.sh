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


sed -ri 's#9625784cf2e4fd9842f1d407681ce4878b5b0dcddbcd31c6135114a30c71e6a8#5de8c8e29aaa3fb9cc6b47bb27299f271354ebb72514e3accadc7d38b5bbaa72#' ./feeds/packages/utils/jq/Makefile
