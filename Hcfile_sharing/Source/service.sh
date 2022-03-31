#!/system/bin/sh
MODDIR="$(dirname "$0")"
CONFIGDIR="/data/media/0/Android/Hcfile_sharing"
CONF="$CONFIGDIR/配置文件.conf"
until [ -f "$CONF" ];do
  sleep 10
done
DEBUG="$(sed '/^调试模式=/!d;s/.*=//;s/ #.*//' "$CONF")"
if [ "$DEBUG" = "开启" ];then
  sh -x "$MODDIR/B.sh" &> "$CONFIGDIR/调试日志.log" &
else
  sh "$MODDIR/B.sh" &>/dev/null &
fi