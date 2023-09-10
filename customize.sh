#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================

#3. Replace with JerryKuKu’s Argon
# rm openwrt/package/lean/luci-theme-argon -rf


# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
# Modify default hosename
sed -i 's/OpenWrt/SUPERouter/g' openwrt/package/base-files/files/bin/config_generate
# Password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/$1$S2TRFyMU$E8fE0RRKR0jNadn3YLrSQ0:18690:0:99999:7:::/g' openwrt/package/lean/default-settings/files/zzz-default-settings

