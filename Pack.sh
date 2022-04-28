R="[1;31m";G="[1;32m";Y="[1;33m";C="[1;36m";B="[1;m";O="[m";abort(){ echo "
$R! $@$O";exit 1;};echo "$B—————————————————————————
$R Shell$Y Script$G Pack$C Tools$O
—————————————————————————
    ${G}作者：${C}时雨🌌星空$O";[ -d "$2" ]&&[ -f "$3" ]&&INPUT="$(realpath "$3")"&&BASEINPUT="$(basename "$INPUT")"&&DIRINPUT="$(realpath "$2")"||abort "输入文件不存在";[ -n "$1" ]&&OUTPUT="$(realpath "$1")"&&DIROUTPUT="$(dirname "$OUTPUT")"||abort "输出文件不存在";echo "
$Y- 正在打包为自释放脚本$O
";echo '#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
FILE="$(realpath "$0")";DIR="/data/adb/TimeRainStarSky/MMOnline";EXEC="$DIR/'"$BASEINPUT"'";abort(){ rm -rf "$DIR";echo "! $@";exit 1;};output_file(){ echo "- 正在释放脚本";rm -rf "$DIR"&&mkdir -p "$DIR"||abort "创建目录失败";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat|tar -xC "$DIR"||abort "脚本释放失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "'"$(md5sum "$INPUT"|head -c 32)"'" ];then echo "- 脚本校验成功，开始执行";rm -rf "$0"||abort "删除释放脚本失败";sh "$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符'>"$OUTPUT"||abort "脚本打包失败";cd "$DIRINPUT";shift 2;tar -cv "$@"|xz -9cev>>"$OUTPUT"||abort "脚本打包失败";echo -n "$(sed -n 's/ONLINE//g;2p' "$INPUT"|tr "[A-Z]" "[a-z]"|tr ";" "\n")
md5=$(md5sum "$OUTPUT"|head -c 32)">"$DIROUTPUT/version"||abort "脚本版本文件生成失败";echo;cat "$DIROUTPUT/version"||abort "脚本版本文件生成失败";echo "

$G- 打包完成$O"