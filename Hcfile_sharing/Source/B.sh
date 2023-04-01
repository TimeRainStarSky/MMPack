#!/system/bin/sh
MODDIR="$(dirname "$0")"
abort() {
	sed -i "s/运行状态：.*/运行状态：/g" "$MODDIR/module.prop"
	echo -n "[$(date "+%F %X")] | [配置路径：$CONF] | [$USBPATH] | [$@ 请重新安装模块]" >>"$MODDIR/module.prop"
	exit 1
}
DATAMEDIA="/data/media/0"
DATAMEDIAB="/storage/emulated/0"
DATAMEDIABC='/data/media/0
/storage/emulated/0'
ANDROIDH="$DATAMEDIA/Android/Hcfile_sharing"
CONF="$ANDROIDH/配置文件.conf"
[ "$1" = "nosleep" ] || {
	DELAY="$(sed '/^延迟时间=/!d;s/.*=//;s/ #.*//' "$CONF")"
	[ -n "$DELAY" ]&&[ "$DELAY" -ge 0 ] &>/dev/null && sleep "$DELAY"
}
SUOPATH="$(sed '/^锁定文件权限=/!d;s/.*=//;s/ #.*//' "$CONF")"
USBPATH="$(sed '/^根文件夹=/!d;s/.*=//;s/ #.*//' "$CONF")"
[ -z "$USBPATH" ] && abort "根文件夹未配置"
DATAPATH="$(sed '/^应用数据路径=/!d;s/.*=//;s/ #.*//' "$CONF")"
[ -z "$DATAPATH" ] && abort "应用数据路径未配置"
SDCPATH="$(sed '/^根路径=/!d;s/.*=//;s/ #.*//' "$CONF")"
[ -z "$SDCPATH" ] && abort "根路径未配置"
ONLINERULE="$(sed '/^在线规则=/!d;s/.*=//;s/ #.*//' "$CONF")"
NOMEDIA="$(sed '/^媒体扫描=/!d;s/.*=//;s/ #.*//' "$CONF")"
grep "用户配置：" "$CONF" >/dev/null || abort "找不到用户配置"
[ -d "$DATAMEDIA/$USBPATH" ] && {
	UMOUNTX="$(mount | grep "$USBPATH" | cut -d ' ' -f3)"
	[ "$UMOUNTX" != "" ] && echo "$UMOUNTX" | xargs umount
} || mkdir -p "$DATAMEDIA/$USBPATH"
[ "$NOMEDIA" = "关闭" ] && { [ -f "$DATAMEDIA/$USBPATH/.nomedia" ] || touch "$DATAMEDIA/$USBPATH/.nomedia"; } || { [ -f "$DATAMEDIA/$USBPATH/.nomedia" ] && rm -rf "$DATAMEDIA/$USBPATH/.nomedia"; }
echo "$(date '+%F %X') [卖小女孩的火柴]" >"$ANDROIDH/挂载日志.log"
mount_file() {
	tail -n "+$(awk "/用户配置：/{print NR+2}" "$CONF" | head -n 1)" "$CONF" | while read LINE; do
		STRING="$(echo $LINE | grep "[[]" | sed 's/^.*\[//g' | sed 's/\].*$//g' | awk '{gsub(/应用数据路径/,"'$DATAPATH'");print $0}' | awk '{gsub(/根路径/,"'$SDCPATH'");print $0}')"
		NUMERICALSEGMENTATION1="$(echo "$STRING" | cut -d '|' -f1)"
		NUMERICALSEGMENTATION2="$(echo "$STRING" | cut -d '|' -f2)"
		NUMERICALSEGMENTATION3="$(echo "$STRING" | cut -d '|' -f3)"
		[ -d "$NUMERICALSEGMENTATION3" ] || continue
		#参考了阿巴酱第三方重新定向挂载方式
		for HDATAME in $DATAMEDIABC; do
			[ -d "$HDATAME/$USBPATH/$NUMERICALSEGMENTATION1/$NUMERICALSEGMENTATION2" ] || mkdir -p "$HDATAME/$USBPATH/$NUMERICALSEGMENTATION1/$NUMERICALSEGMENTATION2"
			mount -o make,private,gid=9997,uid=9997,bind,rw "$NUMERICALSEGMENTATION3" "$HDATAME/$USBPATH/$NUMERICALSEGMENTATION1/$NUMERICALSEGMENTATION2"
			chcon u:object_r:media_rw_data_file:s0 "$NUMERICALSEGMENTATION3"
			chown media_rw:media_rw "$HDATAME/$USBPATH/$NUMERICALSEGMENTATION1/$NUMERICALSEGMENTATION2"
		done
		echo "[$(date '+%H:%M:%S')] | $NUMERICALSEGMENTATION3 >>> $DATAMEDIAB/$USBPATH/$NUMERICALSEGMENTATION1/$NUMERICALSEGMENTATION2" >>"$ANDROIDH/挂载日志.log"
	done
	sed -i "s/运行状态：.*/运行状态：/g" "$MODDIR/module.prop"
	echo -n "[$(date "+%F %X")] | [配置路径：$CONF] | [挂载路径：$DATAMEDIAB/$USBPATH] | [在线规则：$([ "$ONLINERULE" = "开启" ] && echo "$ONLINENAME" || echo "关闭")] | [挂载成功]" >>"$MODDIR/module.prop"
	[ -d "$DATAMEDIA/$USBPATH/模块详细" ] || mkdir -p "$DATAMEDIA/$USBPATH/模块详细"
	echo -n "echo -n '正在更新……'
/data/adb/magisk/busybox sh '$MODDIR/B.sh' nosleep
echo '更新完成
注意：请在Magisk设置中把 挂载命名空间模式 设置为 全局命名空间，否则只能在当前应用查看更新，重启后才能生效'" >"$DATAMEDIA/$USBPATH/模块详细/更新目录.sh"
	echo -n 'am start -a android.intent.action.VIEW -d "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=714492958&card_type=group"' >"$DATAMEDIA/$USBPATH/模块详细/加入反馈群.sh"
	echo -n 'am start -d "coolmarket://u/2650948"' >"$DATAMEDIA/$USBPATH/模块详细/酷安查看时雨丶星空.sh"
	echo -n 'am start -d "coolmarket://u/3712243"' >"$DATAMEDIA/$USBPATH/模块详细/酷安查看火柴.sh"
	echo -n "chmod -R 2777 '$DATAMEDIA/$USBPATH'
    kill -9 $(ps -ef | grep 'bcccccccc' |grep -v 'grep' | awk '{print $1}')
/data/adb/modules/Hcfile_sharing/bcccccccc &>/dev/null &" >"$DATAMEDIA/$USBPATH/模块详细/打开文件报错执行.sh"
	echo -n "mount | grep $USBPATH | cut -d ' ' -f3 | xargs umount
rm -rf '$MODDIR' '$ANDROIDH'" >"$MODDIR/uninstall.sh" && chmod 777 "$MODDIR/uninstall.sh"
	if [[ "$SUOPATH" == "开启" ]]; then
[[ "$(ps -ef | grep 'bcccccccc' |grep -v 'grep' | awk '{print $1}')" != "" ]] && { kill -9 $(ps -ef | grep 'bcccccccc' |grep -v 'grep' | awk '{print $1}') && "$MODDIR/bcccccccc" &>/dev/null & } || "$MODDIR/hcccccccc" &>/dev/null &
  fi
	exit
}
if [ "$ONLINERULE" = "开启" ]; then
	. "$MODDIR/U.sh" || abort "在线规则更新失败"
else
	mount_file
fi