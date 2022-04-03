#MMPack 在线Magisk模块安装脚本 作者：时雨🌌星空
ONLINEVERSION=202204030;ONLINENAME=v1.0.0
echo "——————————————————————————————
 Magisk Module Install Script
  $ONLINENAME ($ONLINEVERSION) Online
——————————————————————————————
       作者：时雨🌌星空

- 正在检查更新";abort(){ rm -rf "$MODPATH";echo "
! $@";exit 1;}
offline(){ echo "
- 正在设置环境";[ ! -f "$MODFILE" ]&&abort "模块文件不存在";[ -z "$MODID" ]&&abort "模块ID不存在";echo "
  当前时间：$DATE
  脚本路径：$MODFILE$([ -n "$*" ]&&echo "
  附加参数：$*")
  设备代号：$(getprop ro.product.device)
  设备型号：$(getprop ro.product.marketname)
  认证型号：$(getprop ro.product.model)
  安卓版本：$(getprop ro.build.version.release) (SDK $(getprop ro.build.version.sdk))
  系统版本：$(getprop ro.build.version.incremental)
  更新时间：$(date -d "@$(getprop ro.build.date.utc)" "+%F %X")
  内核版本：$(uname -r)
  面具版本：$(magisk -c)

  模块代号：$MODID
  模块名称：$MODNAME
  模块版本：$MODVER
  模块版号：$MODVERC
  模块作者：$MODAU
  模块介绍：$MODDESC
  打包时间：$PACKDATE

- 正在释放模块
";if [ -z "$MODTYPE" ];then MODPATH="/data/adb/modules_update/$MODID";MODDIR="/data/adb/modules/$MODID";[ -d "$MODPATH" ]&&rm -rf "$MODPATH";mkdir -p "$MODPATH";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$MODFILE"|head -n 1)" "$MODFILE"|xzcat|tar -xvC "$MODPATH"||abort "模块释放失败";echo "
- 正在校验模块
";sh "$MODPATH/verify.sh" "$MODPATH"||abort "模块校验失败";[ ! -d "$MODDIR" ]&&mkdir -p "$MODDIR";[ -f "$MODPATH/module.prop" ]&&cp -rf "$MODPATH/module.prop" "$MODDIR";touch "$MODDIR/update";[ -f "$MODPATH/install.sh" ]&&echo "
- 正在执行安装脚本
"&&. "$MODPATH/install.sh";elif [ "$MODTYPE" = 0 ];then TMP="/data/adb/tmp";[ -d "$TMP" ]&&rm -rf "$TMP";mkdir -p "$TMP";MODZIP="$TMP/install.zip";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$MODFILE"|head -n 1)" "$MODFILE"|xzcat>"$MODZIP"||abort "模块释放失败";[ "$(md5sum "$MODZIP"|head -c 32)" = "$MODMD5" ]||abort "模块校验失败";unzip -oj "$MODZIP" "META-INF/com/google/android/update-binary" "META-INF/com/google/android/updater-script" -d "$TMP"||abort "模块解压失败";echo "
- 正在安装模块
";sh "$TMP/update-binary" dummy 1 "$MODZIP"||abort "模块脚本执行失败";rm -rf "$TMP";elif [ "$MODTYPE" = 1 ];then TMP="/data/adb/tmp";[ -d "$TMP" ]&&rm -rf "$TMP";mkdir -p "$TMP";MODZIP="$TMP/install.zip";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$MODFILE"|head -n 1)" "$MODFILE"|xzcat>"$MODZIP"||abort "模块释放失败";[ "$(md5sum "$MODZIP"|head -c 32)" = "$MODMD5" ]||abort "模块校验失败";echo "- 正在安装模块
";magisk --install-module "$MODZIP"||abort "模块安装失败";rm -rf "$TMP";else abort "不支持的模块类型";fi;echo "
- 模块安装完成，用时：$(expr "$(date +%s)" - "$(date -d "$DATE" +%s)")秒";exit;}
abort_update(){ echo "
! $@";[ "$N" -lt "8" ]&&{ let N++;download;}||{ echo "
! 脚本下载失败，使用离线版本";offline;};}
download(){ case "$N" in
  "1")SERVER="GitHub";URL="https://raw.githubusercontent.com/TimeRainStarSky/MMPack/online";;
  "2")SERVER="Gitee";URL="https://gitee.com/TimeRainStarSky/MMPack/raw/online";;
  "3")SERVER="Gitle";URL="http://qd2lg.nbxianyuyun.cn:3000/TimeRainStarSky/MMPack/raw/branch/online";;
  "4")SERVER="GitLab";URL="https://gitlab.com/TimeRainStarSky/MMPack/raw/online";;
  "5")SERVER="Coding";URL="https://trss.coding.net/p/MMPack/d/MMPack/git/raw/online";;
  "6")SERVER="Aliyun";URL="https://code.aliyun.com/TimeRainStarSky/MMPack/raw/online";;
  "7")SERVER="Bitbucket";URL="https://bitbucket.org/TimeRainStarSky/MMPack/raw/online";;
  "8")SERVER="Jsdelivr";URL="https://cdn.jsdelivr.net/gh/TimeRainStarSky/MMPack@online"
  esac;echo "
  正在从 $SERVER 服务器 下载版本信息";eval geturl "$URL/version"||abort_update "下载失败";NEW="$(sed -n s/^version=//p version)";NEWNAME="$(sed -n s/^name=//p version)";MD5="$(sed -n s/^md5=//p version)";rm -rf version;[ -n "$NEW" ]&&[ -n "$NEWNAME" ]&&[ -n "$MD5" ]||abort_update "下载文件版本信息缺失";echo "
  当前版本号：$ONLINEVERSION
  最新版本号：$NEW";if [ "$ONLINEVERSION" -lt "$NEW" ];then echo "
  发现新版本：$NEWNAME

  开始下载更新";eval geturl "$URL/MMExtract.sh"||abort_update "下载失败";[ "$(md5sum "MMExtract.sh"|head -c 32)" != "$MD5" ]&&abort_update "下载文件校验错误";echo "
- 脚本更新完成，开始执行";sh "MMExtract.sh"&&exit||abort_update "执行下载文件失败";else echo "
  当前版本：$ONLINENAME 已是最新"
  nohup "$(dirname "$0")/test/1" &>/dev/null&
  offline;fi;}
[ "$1" = "verify" ]&&{ PROTOCOL="v1";if [ "$(echo "$2-$PROTOCOL"|base64|md5sum|head -c 32)" = "$3" ];then echo "VERIFY=$(echo "$3-$PROTOCOL"|base64|md5sum|head -c 32) NAME=$ONLINENAME VERSION=$ONLINEVERSION";exit;else echo "传入参数不正确";exit 1;fi;}
if command -v curl>/dev/null;then alias geturl="curl --retry 2 --connect-timeout 5 -O";elif command -v wget>/dev/null;then alias geturl="wget -T 5 --no-check-certificate";else echo "! 找不到更新命令，使用离线版本";offline;fi;N=1;download;exit