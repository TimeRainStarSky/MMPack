R="[1;31m";G="[1;32m";Y="[1;33m";C="[1;36m";B="[1;m";O="[m";abort(){ echo "
$R! $@$O";exit 1;};echo "$B——————————————————————————
$R Shell$Y Runtime$G Pack$C Tools$O
——————————————————————————
     ${G}作者：${C}时雨🌌星空$O";[ -d "$1" ]&&INPUT="$(realpath "$1")"&&BASEINPUT="$(basename "$INPUT")"||abort "输入文件夹不存在";[ -n "$2" ]&&OUTPUT="$(realpath "$2")"||abort "输出文件不存在";echo "
$Y- 正在生成校验脚本$O
";[ -f "$INPUT/verify.sh" ]&&rm -rf "$INPUT/verify.sh";cd "$INPUT"&&FIND="$(find * ! -type d)";echo "$FIND
"|while read VFILE;do [ -f "$VFILE" ]||{ echo -n 'VERIFY="$1";verify(){ [ "$(md5sum "$VERIFY/$1"|head -c 32)" = "$2" ]&&echo "校验成功 $1"||{ echo "校验失败 $1";rm -rf "$VERIFY";exit 1;};}'"$VERIFY"';rm -rf "$0"'>"$INPUT/verify.sh";break;};MD5SUM="$(md5sum "$VFILE"|head -c 32)";echo "$MD5SUM $C$VFILE$O";VERIFY="$VERIFY;verify '$VFILE' '$MD5SUM'";done;echo "
$Y- 正在打包为自释放脚本$O
";echo '#运行环境已经过编译，需要源代码请联系作者：时雨🌌星空
R="'"$R"'";G="'"$G"'";Y="'"$Y"'";C="'"$C"'";B="'"$B"'";O="'"$O"'"
if [ "$(id -u)" != 0 ];then echo "$Y- 正在获取root权限$O";su -c "sh \"$0\" \"$@\"";exit;fi;echo "$B————————————————————————————————
$R Shell$Y Runtime$G Configure$C Script$O
————————————————————————————————
        ${G}作者：${C}时雨🌌星空$O";DIR="/data/adb/TimeRainStarSky/'"$BASEINPUT"'";FILE="$(realpath "$0")";cd "$(dirname "$FILE")";abort(){ rm -rf "$DIR";echo "
$R! $@$O";exit 1;};mktmp(){ TMP="${DIR}_tmp"&&rm -rf "$TMP"&&mkdir -p "$TMP"||abort "创建缓存文件夹失败";};output_file(){ echo "
$Y- 正在释放运行环境$O
";mktmp;tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|gzip -d|tar -xvC "$TMP"||abort "运行环境释放失败";rm -rf "$DIR";mv -f "$TMP" "$DIR"||abort "运行环境移动失败";OUTPUTED=1;};check_exec(){ if [ -f "$DIR/verify.sh" ]&&[ "$(md5sum "$DIR/verify.sh"|head -c 32)" = "'"$(md5sum "$INPUT/verify.sh"|head -c 32)"'" ]&&echo "
$Y- 正在校验运行环境$O
"&&sh "$DIR/verify.sh" "$DIR";then RUNTIME="$DIR";echo "
$Y- 正在配置运行环境$O
";setcmd(){ "$RUNTIME/$@"|tr " " "\n"|while read i;do [ -z "$i" ]&&continue;ln -sf "$1" "$RUNTIME/$i";done||abort "找不到$1，请安装运行环境后重试";};setcmd busybox --list;setcmd toybox;ls "$RUNTIME">"$RUNTIME/verify";export PATH="$RUNTIME:$PATH";export LD_LIBRARY_PATH="$RUNTIME:$LD_LIBRARY_PATH";[ -d "$RUNTIME" ]&&[ -f "$RUNTIME/verify" ]&&[ "$(ls "$RUNTIME")" = "$(cat "$RUNTIME/verify")" ]||abort "运行环境验证失败";echo "$B命令：$C$PATH$O
$B依赖：$C$LD_LIBRARY_PATH$O
$B数量：$C$(ls "$RUNTIME"|wc -l)$O
${Y}BusyBox$O
$B路径：$C$(command -v busybox||echo "$R找不到")$O
$B版本：$C$({ busybox||echo "$R执行失败";}|head -n 1)$O
${Y}toybox$O
$B路径：$C$(command -v toybox||echo "$R找不到")$O
$B版本：$C$(toybox --version||echo "$R执行失败")$O
${Y}curl$O
$B路径：$C$(command -v curl||echo "$R找不到")$O
$B版本：$C$({ curl --version||echo "$R执行失败"|busybox||echo "$R执行失败";}|head -n 1)$O

$G- 运行环境配置完成$O";elif [ "$OUTPUTED" != 1 ];then output_file;check_exec;else abort "运行环境释放失败";fi;};check_exec;exit;定位符'>"$OUTPUT"||abort "脚本打包失败";cd "$INPUT";tar -c *|gzip -9cv>>"$OUTPUT"||abort "脚本打包失败";echo "
$G- 打包完成$O"