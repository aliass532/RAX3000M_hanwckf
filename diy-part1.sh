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
#sed -i 's/192.168.1.1/192.168.21.1/g' package/base-files/files/bin/config_generate
#echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
#echo 'src-git 5G_Modem_Support https://github.com/Siriling/5G-Modem-Support;main' >> feeds.conf.default
sed -i '1i\src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main'  feeds.conf.default
sed -i '2i\src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main'  feeds.conf.default
echo >> feeds.conf.default
echo 'src-git qmodem https://github.com/FUjr/modem_feeds.git;main' >> feeds.conf.default
#sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
