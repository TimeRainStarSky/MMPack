R="[1;31m";G="[1;32m";Y="[1;33m";C="[1;36m";B="[1;m";O="[m";abort(){ echo "
$R! $@$O";exit 1;};echo "$B*************************
$R Shell$Y Script$G Pack$C Tools$O
*************************
    ${G}酷安：${C}时雨丶星空$O";[ -d "$1" ]&&[ -f "$1.sh" ]&&INPUT="$(realpath "$1")"||abort "输入文件不存在";[ -n "$2" ]&&OUTPUT="$(realpath "$2")"||abort "输出文件不存在";command -v shc>/dev/null||abort "shc编译器不存在";echo "
$Y- 正在使用shc编译脚本$O
";shc -vrf "$INPUT.sh"||abort "脚本编译失败";echo "
$Y- 正在打包为自释放脚本$O
";echo '#脚本已经过编译，需要源代码请联系作者：时雨丶星空
if [ "$(id -u)" != 0 ];then echo "'"$Y"'- 正在获取root权限'"$O"'";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(/system/bin/magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/'"$(basename "$OUTPUT.sh")"'.x";abort(){ echo "'"$R"'! $@'"$O"'";exit 1;};output_file(){ echo "'"$Y"'- 正在释放脚本'"$O"'";mkdir -p "$(dirname "$EXEC")";sed "1,2d" "$FILE"|unxz>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "'"$(md5sum "$INPUT.sh.x"|head -c 32)"'" ];then echo "'"$G"'- 脚本校验成功，开始执行'"$O"'";"$EXEC" "$@"||abort "脚本执行失败";elif [ -z "$OUTPUT" ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit'>"$OUTPUT.sh"||abort "脚本打包失败";xz -9ce "$INPUT.sh.x">>"$OUTPUT.sh"||abort "脚本打包失败";echo '#脚本已经过编译，需要源代码请联系作者：时雨丶星空
if [ "$(id -u)" != 0 ];then echo "'"$Y"'- 正在获取root权限'"$O"'";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;DIR="/data/adb/TimeRainStarSky";PATH="$DIR:/system/bin:/data/adb/magisk:$(/system/bin/magisk --path)/.magisk/busybox:$PATH";export LD_LIBRARY_PATH="$DIR";FILE="$(realpath "$0")";EXEC="$DIR/'"$(basename "$OUTPUT.sh")"'.x";abort(){ echo "'"$R"'! $@'"$O"'";exit 1;};output_file(){ echo "'"$Y"'- 正在释放脚本'"$O"'";mkdir -p "$DIR";sed "1,2d" "$FILE"|unxz|tar -xvC "$DIR"||abort "脚本释放失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "'"$(md5sum "$INPUT.sh.x"|head -c 32)"'" ];then echo "'"$G"'- 脚本校验成功，开始执行'"$O"'";"$EXEC" "$@"||abort "脚本执行失败";elif [ -z "$OUTPUT" ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit'>"${OUTPUT}_Standalone.sh"||abort "脚本打包失败";mv -f "$INPUT.sh.x" "$INPUT";cd "$INPUT";tar -cvJ *>>"${OUTPUT}_Standalone.sh"||abort "脚本打包失败";echo -n "$(cat "$INPUT.sh"|sed -n 2p|tr "[A-Z]" "[a-z]"|tr ";" "\n")
md5=$(md5sum "$OUTPUT.sh"|head -c 32)
md5sa=$(md5sum "${OUTPUT}_Standalone.sh"|head -c 32)">"$(dirname "$OUTPUT")/version"||abort "脚本版本文件生成失败";echo;cat "$(dirname "$OUTPUT")/version"||abort "脚本版本文件生成失败";echo "

$G- 打包完成$O"