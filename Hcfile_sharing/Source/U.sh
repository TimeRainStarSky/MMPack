ONLINEVERSION=202203280
ONLINENAME="2022-03-28-1"
RULES="
[模块详细|配置|根路径/Android/Hcfile_sharing]
[系统|下载|根路径/Download]
[系统|相册|根路径/DCIM]
[系统|音乐|根路径/Music]
[系统|图片|根路径/Pictures]
"
echolog() { echo "$@" >>"$ANDROIDH/在线规则日志.log"; }
[ -f "$ANDROIDH/在线规则日志.log" ] && mv "$ANDROIDH/在线规则日志.log" "$ANDROIDH/在线规则日志.log.old"
echolog "———————————————————————————————
 Hchai - 目录定向挂载 在线脚本
   $ONLINENAME ($ONLINEVERSION)
———————————————————————————————
       作者：时雨🌌星空

- 正在检查更新"
abort() {
	echolog "
! $@"
	abort "$@ 在线规则挂载失败"
}
offline() {
	echolog "
- 正在设置环境

  当前时间：$DATE
  脚本路径：$FILE$([ -n "$*" ] && echolog "
  附加参数：$*")
  设备代号：$(getprop ro.product.device)
  设备型号：$(getprop ro.product.marketname)
  认证型号：$(getprop ro.product.model)
  安卓版本：$(getprop ro.build.version.release) (SDK $(getprop ro.build.version.sdk))
  系统版本：$(getprop ro.build.version.incremental)
  更新时间：$(date -d "@$(getprop ro.build.date.utc)" "+%F %X")
  内核版本：$(uname -r)
  面具版本：$(magisk -c)

- 正在写入在线规则"
	echolog "$RULES"
	sed -i '/在线规则：/,$d' "$CONF"
	echo -n "在线规则：
————————————————————————$RULES————————————————————————" >>"$CONF"
	echolog "- 写入完成，用时：$(expr "$(date +%s)" - "$(date -d "$DATE" +%s)")秒"
	mount_file
}
abort_update() {
	echolog "
! $@"
	[ "$N" -lt "8" ] && {
		let N++
		download
	} || {
		echolog "
! 脚本下载失败，使用离线版本"
		offline
	}
}
abort_module_update() {
	echolog "
! $@"
	[ "$N" -lt "8" ] && {
		let N++
		download_module
	} || {
		echolog "
! 模块更新失败"
		offline
	}
}
download_module() {
  server
	echolog "
  正在从 $SERVER 服务器 下载版本信息"
	eval geturl "$URL/version" >>"$ANDROIDH/在线规则日志.log" 2>&1 || abort_module_update "下载失败"
	NEW="$(sed -n s/^version=//p version)"
	NEWNAME="$(sed -n s/^name=//p version)"
	MD5="$(sed -n s/^md5=//p version)"
	rm -rf version
	[ -n "$NEW" ] && [ -n "$NEWNAME" ] && [ -n "$MD5" ] || abort_module_update "下载文件版本信息缺失"
	VERSION="$(sed -n s/^versionCode=//p "$MODDIR/module.prop")"
	NAME="$(sed -n s/^version=//p "$MODDIR/module.prop")"
	echolog "
  当前版本号：$VERSION
  最新版本号：$NEW"
	if [ "$VERSION" -lt "$NEW" ]; then
		echolog "
  发现新版本：$NEWNAME

  开始下载更新"
		eval geturl "$URL/install.sh" >>"$ANDROIDH/在线规则日志.log" 2>&1 || abort_module_update "下载失败"
		[ "$(md5sum "install.sh" | head -c 32)" != "$MD5" ] && abort_module_update "下载文件校验错误"
		echolog "
- 模块下载完成，开始安装"
		sh "install.sh" >> "$ANDROIDH/在线规则日志.log" 2>&1
		offline
	else
		echolog "
  当前版本：$NAME 已是最新"
		offline
	fi
}
download() {
	server
	echolog "
  正在从 $SERVER 服务器 下载版本信息"
	eval geturl "$URL/Online/version" >>"$ANDROIDH/在线规则日志.log" 2>&1 || abort_update "下载失败"
	NEW="$(sed -n s/^version=//p version)"
	NEWNAME="$(sed -n s/^name=//p version)"
	MD5="$(sed -n s/^md5=//p version)"
	rm -rf version
	[ -n "$NEW" ] && [ -n "$NEWNAME" ] && [ -n "$MD5" ] || abort_update "下载文件版本信息缺失"
	echolog "
  当前版本号：$ONLINEVERSION
  最新版本号：$NEW"
	if [ "$ONLINEVERSION" -lt "$NEW" ]; then
		echolog "
  发现新版本：$NEWNAME

  开始下载更新"
		eval geturl "$URL/Online/Online.sh" >>"$ANDROIDH/在线规则日志.log" 2>&1 || abort_update "下载失败"
		[ "$(md5sum "Online.sh" | head -c 32)" != "$MD5" ] && abort_update "下载文件校验错误"
		echolog "
- 脚本更新完成，开始执行"
		mv "$FILE" "$FILE.bak"
		mv "Online.sh" "$FILE"
		. "$FILE"
		exit
	else
		echolog "
  当前版本：$ONLINENAME 已是最新

- 正在检查模块更新"
		download_module
	fi
}
server() {
case "$N" in
	"2")
		SERVER="GitHub"
		URL="https://raw.githubusercontent.com/TimeRainStarSky/MMPack/modules/Hcfile_sharing"
		;;
	"1")
		SERVER="Gitee"
		URL="https://gitee.com/TimeRainStarSky/MMPack/raw/modules/Hcfile_sharing"
		;;
	"3")
		SERVER="Agit"
		URL="https://agit.ai/TimeRainStarSky/MMPack/raw/branch/modules/Hcfile_sharing"
		;;
	"4")
		SERVER="GitLab"
		URL="https://gitlab.com/TimeRainStarSky/MMPack/raw/modules/Hcfile_sharing"
		;;
	"5")
		SERVER="Coding"
		URL="https://trss.coding.net/p/MMPack/d/MMPack/git/raw/modules/Hcfile_sharing"
		;;
	"6")
		SERVER="Aliyun"
		URL="https://code.aliyun.com/TimeRainStarSky/MMPack/raw/modules/Hcfile_sharing"
		;;
	"7")
		SERVER="Bitbucket"
		URL="https://bitbucket.org/TimeRainStarSky/MMPack/raw/modules/Hcfile_sharing"
		;;
	"8")
		SERVER="Jsdelivr"
		URL="https://cdn.jsdelivr.net/gh/TimeRainStarSky/MMPack@modules/Hcfile_sharing"
		;;
	esac
}
DATE="$(date "+%F %X")"
cd "$(dirname "$0")"
FILE="$(realpath "U.sh")"
if command -v curl >/dev/null; then alias geturl="curl --retry 2 --connect-timeout 5 -O"; elif command -v wget >/dev/null; then alias geturl="wget -T 5 --no-check-certificate"; else
	echolog "! 找不到更新命令，使用离线版本"
	offline
fi
N=1
download
exit