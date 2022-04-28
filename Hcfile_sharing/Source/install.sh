CONFIGDIR="/data/media/0/Android/Hcfile_sharing"
CONF="$CONFIGDIR/配置文件.conf"
[ -f "$CONF" ]&&
{ DELAY="$(sed '/^延迟时间=/!d;s/.*=//;s/ #.*//' "$CONF")"
USBPATH="$(sed '/^根文件夹=/!d;s/.*=//;s/ #.*//' "$CONF")"
ONLINERULE="$(sed '/^在线规则=/!d;s/.*=//;s/ #.*//' "$CONF")"
NOMEDIA="$(sed '/^媒体扫描=/!d;s/.*=//;s/ #.*//' "$CONF")"
SUOPATH="$(sed '/^锁定文件权限=/!d;s/.*=//;s/ #.*//' "$CONF")"
mv -f "$CONF" "$CONF.bak";}||{ mkdir -p "$CONFIGDIR";}
[ -n "$USBPATH" ]||USBPATH="共享目录"
[ -n "$DELAY" ]&&[ "$DELAY" -ge 0 ] &>/dev/null||DELAY="30"
[ "$ONLINERULE" = "开启" ]||[ "$ONLINERULE" = "关闭" ]||ONLINERULE="开启"
[ "$NOMEDIA" = "开启" ]||[ "$NOMEDIA" = "关闭" ]||NOMEDIA="关闭"
[ "$SUOPATH" = "开启" ]||[ "$SUOPATH" = "关闭" ]||SUOPATH="开启"
echo '————————————————————————
文件定向挂载 作者：HChai && 时雨🌌星空 配置文件
————————————————————————
配置参数，不要删除：
————————————————————————
应用数据路径=/data/media/0/Android/data #保持默认
根路径=/data/media/0 #保持默认
调试模式=关闭 #开启后输出调试日志
延迟时间='"$DELAY"' #开机时延迟启动时间
根文件夹='"$USBPATH"' #保持默认，更改可能会发生未知问题
在线规则='"$ONLINERULE"' #开启后会自动更新在线规则和模块
媒体扫描='"$NOMEDIA"' #文件管理检测到双份文件则关闭
锁定文件权限='"$SUOPATH"' #打开文件报错开启，占用一点资源
————————————————————————
使用说明：
————————————————————————
[名称|类型|文件夹路径]

举例：把QQ的下载文件(应用数据路径/com.tencent.mobileqq/Tencent/QQfile_recv) 挂载到 根文件夹/QQ目录/下载

[QQ目录|下载|应用数据路径/com.tencent.mobileqq/Tencent/QQfile_recv]
————————————————————————
用户配置：
————————————————————————'>"$CONF"
  [ -f "$CONF.bak" ]&&tail -n "+$(awk "/用户配置：/{print NR+2}" "$CONF.bak"|head -n 1)" "$CONF.bak">>"$CONF"||echo "


————————————————————————">>"$CONF"
echo "配置文件：$CONF";rm -rf "$MODPATH/install.sh"