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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#

git kenzo https://github.com/V2RaySSR/openwrt-packages.git package/openwrt-packages
git small https://github.com/V2RaySSR/small.git package/openwrt-small

curl -fsSL  https://raw.githubusercontent.com/xiaorouji/openwrt-passwall/main/v2ray-plugin/Makefile > package/lean/v2ray-plugin/Makefile
