#!/system/bin/sh
MODDIR="$(dirname "$0")"
sed -i "s/运行状态：.*/运行状态：[正在启动]/g" "$MODDIR/module.prop"