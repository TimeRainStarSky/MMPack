#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$@\"";exit;fi;PATH="/data/adb/magisk:$PATH";BUSYBOXDIR="/data/adb/TimeRainStarSky/busybox";[ ! -d "$BUSYBOXDIR" ]&&mkdir -p "$BUSYBOXDIR";busybox --install "$BUSYBOXDIR"&&PATH="$BUSYBOXDIR:$PATH";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMPack/MMControl.sh.x";abort(){ rm -rf "$EXEC";echo "[1;31m! $@[m";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "c106e818832f981e59f82f31a4dad23e" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��I�2�] ?�E�h=��ڊ�"����F�7�mR&��A!�qA���N����Z�B�pf��7R���D[�Ά�r�q?[N��m�*xG�y@�0���nF�Q�G���	w�Ɩ��6#��8���ٮ�&�-B��}D��]��a@�N�b��I�1�+���FgY~���
��nC`T���jBX�h�6#�|S
�Ӂ�;�ԉ�&If){2�J����0!���<cшF�ꌳ�:Y���+�U��R/��ݖ����TLCN�Kt�_��`��ܒP3 ���C��,���m~��ӣ���R����{,/	#�3V��?�_��r�7��|<k����{�Xs�����z���B̂6u�r�K�|Է��������q���AT���@���ʎ�3��5�믍) ��w�������쇇ĿZ�b��S�EW��y�՟U?�V�@ߺn�8�v��e�ݛi���'d�8F75����ڣ��V������d�J�M�ڀƦ�A��I	V�*�[�|�v1�BXi����Z�|=N/S�>���&n���nO_~6
�׬q#�G��h=FJ���'���8{Y�@k�ʕ1�l�U6�7���F#���%�,���:)������W^�p�!���|�����]l&a���W(1]�W�sԸ�մ$�Z�wvx$���\���7��o[���k7�?&�	|6r^�߱�ߤw*6=��� ~�c�"����r������@i����>��|�� �5���f�K8�\n& �,0�&3�K�ޓ{�
����˘5V!�0�:i4��K^�m{bM�km��J�%��c�S<�58 �3�JT�*��z�!�� �&e�2�!~SH��.����]����M촐c����,��S�So�$�x no��YZu�6�7��
�ENMo_��p�A����M]�]H��H!��fj�bp� �TG�,B�b��8�.QI-�%�a�����[QјvCԝ����oOa�'5r1������g�0�,6w��b�D:��	Z=�'�R�����sC��T���_�l���+ѡ���8�yX� P؁VR>z��T'ӏ�,����?c~^�['�7�[���DhO���-��Nq�5�4K�m�b�PEZ��ثӸ1��ޗ��+
S�@�BBTCT���;�$�0��F���D[��W
v���\��R���U�-�
�b��T�=f�ĳD��e�6�{�֟���XF�����U�\s�m:67�uI/�t}�����p����Z���pF�����c�����X���گ~>�����bx��Q�Jp��s%Z���t�rA��gG�@���Gp�����!�;�˽�����ѕw�n\k�|S��j�e���K_x�B؆�Ezy
C���B�S$�OmA	�+��������)�olfߐy.����ZhU�R-(yrv[�����$_љ������P��E�h�~8�?��b
fB�|�F��I{N�&,����������!�[J$���_����{��X���*[����t�sx�sO�+��8�Ed�yu ۏC�"!?�f��.��aꬔ�2��p�:��چ0[7���h��U���ݍ����>��`�!=���&�s#]��B�C�7�8֎�$f��L���E�k��=��|���NT>��<1�~
�k2����/��q-z��"��#�MBX�X����2�<��#jΐl*Uq��N�Z�KyA�*�i�H_+�~��<ϻi�±U�`l%Y&ʔ6���r�oͺ_N���Y��}3���|V��mYg�_�N =�Jb���</IH*����9�]�q��;6��$���^�G�j�:�"+|�z5���%��@��z��U�=�,�vg�0�W�Dm����|�m��/,((�8r"��TP��HO�i�Iu���$X!i44 D,�[�!v:�����#���v;, ^3"��BJ.J�tE�SaD	�iN�����*C����9���;⥪1�i� U8}��'sp�P=P�8"�H�#��&�a$Cim��E��#R���W]���",['�[�)�Z���z3{y�=Rnɼ��L���1uqH0Q��@��X&����&j��^ܐ�>&D A��"�3��	̈́�)qt\���^�i�B�_Q�H����'a�d��(>�p�t�`NIx�ΉJ��m�T�����6Q��~wI8�}J�%�&�xy��r5�I����z�v��0�Iz���S�!+���] =�X�(w}��9� _Ap�����@ Z2������B����S�b�~�۪O��{���n$4]Wk���o��g�v{�����h���.#@4�^S�?Ev��=m����{ˮ!��b�4�����t�\�i'Q�,C�\?8T�����aXx3���u`�X��R���oQ����[�
2�BfՖ���	B��2JJ2�k�tB����>[��iUC#�c&u�p�&�Q�@N��F������V��kOӨ�ª�M#��W�vY���Ӱ0��"]*@��L�H��C���5؉��p7�B�R�*+�J�@u���@�`�\_�Jf� ���M(���m�H��#��Ytw_����`0����t���mw`�������k�x�hJBz�{��t���!Fn����,��~��3��=ƞ[ %����9��C��%��E�� ��K;N���J�����RH�A�q�� ǖ��{'����f��}������>�+L��*����m��P�VOj��ց^̣�0m;Kx��C<N�ɭ]��pI���-J���|?'K.U.�q �0S�[��k
���B�㸸��l
����9LJV��$%�SlR �I![�#+�w�����o�ï�V,�eb��]�	��	������[�[ɠF6B7(����5#��7�9��L�e9��T����]G�i�ꚿ�[����غu�UW�޺=�;Lx���paɌ`2�`�~�]G��x&��͹1��6��k�Ef_�n�`}�x��TU(Zl,����"�����#M t�*
W����d��5�j�^��$���;�@[S�͸I�����z�5M�8X���>�ќR"MtFf��z�]�Ȟ�q�;1�~PmGr(*��*B>�2ȍ�{�5xE�^1S��ZS���]�Ti�*�o��,��a��v�87�z#m�<	k�?�L�����g��wȖ�3�v�z�>��a�IO䣊�O��+ڝ/ji�������%����Zʤ�J���ƣhg��"߁b4�at�X%���a��3Is��Nm�@�T�U ��.��Kȷ�t�$��7�WW˄pr��/@ʊW>o��):�F;�V�p�5l�|��Z^: e�.T+�Uk�>׭>ͽQ���A
�ȅ���dhO�4
y�����%���a����i*�1o�X!��j��^��Jls�� �f�X��]�aeߣ�#U�>V�Ff�8h�9�X�Ul~�3��g6��@I�ʎ��l�e�-���^��G}��(s�`yYl����(I~�R�B���w\����Ik�q	���?u�{�!����(Du�T�|���\�6]��.@���<��p���8H�}jɬh�iJ���0�D�k�ԉ4'$�%��nkx�&�>n9o^9��#�'���6>Y�Ԗ|�b���S1��Ae�R�����L}�9w̍ʰ5GN��J�c�RnC���	�EQ���,ً'���m먓ŉ=��$^b�!�2��|�/�������@Ky![
"�._?7�^=���hך��~G�M(��7+U?�=L*jн�i]�sK�GXJ�척#�
�z�@�oy��t��˚.���us��W	�4i+��?�]8:�'`8�J�-_�#�ak��T�~a�=�g	1��P���p�o������Q��<?���S��� &�%��;Ce��h㹫"D��%�K��yq���6��i�Z�F���%��(�G���l:����-��p�kÌ7�x��Ew��U�~ٜ�哒&�k��R�g�\�M���U�mylgn̏�8
Ul�ζV�E�����Vn��V�KH�'���z[e%�롚��&&G�k�[nI��T|�r�(v�ؒ|4eY���Ia����V�ù�Y�P�ҭ�gS���1Ў�m��U�naxzAS����n 1�	�ozl��*��ɦ�o�N�-��Q�c�h|cI2U^c�y����,�UMe�-B)S�@2%K���^��o4�f�`+�x�Z��wMx���`��R:�I�<?��u"`z;M��a
:�(�(}0r���n�=E��k�c\i�o��aD�CgK����9Gߋ�b{�B	AѤ[n54]�i����;:�/����VK}P6��X�A.=����Ř��F:\���@�(*�����ô(�}N�~�r�5(씐���ict��CUR/���N�nd��VF+B  ��(�t����I=5���RՓw���Zz��xO��s���-c3^,�L�\ߝ@5E��0A�J��w��	,/s��P���6�y#3����t'tO*y�{,�-�]��i�ˀ����A�Gx���/c���� s���y�5l����ԑMU{]�A���itC�Ví�im
3+����&C���@�gx}p^OϺ�%i�c�s���*K'a��-�� ��Á>���.�*�O
E��,X <�+��^�p�{��m�Z��@�����,y���&� �A���赛��Fd���)Ǹ��&1N~'~��$��Pz�Q�w�x�H���@���$ytw��;/������e|�&�|5�X���<
���mye1�W��P��ր
����
&��F��Lѳ�O��>�!@�㕆	�e��?xJ	6_�u�,���L`�\�|њ��e�A
2ȸ��GemKS�h��I�����\(��V4?j��ĉ��_���U����S�:�B@��M��y MV�Q�}�%����� ~r �E0
 bH3#*冲6�� ��y�L9Ra��)�yp�m�r*5��W�	�����l��I4���,T��8ة*�eI����^2հF9"�T�|]��}�W$����Z�L� �k��97Y�X*Å�L�vD��/{��B�����@�;������r�dF!�{�"W�=`9,[|Y��~��`���)����}c�:f,\R���=EA@�{:���Z�l,:�UL��ԧ���
�~�bPM0HE��aŲ��"�Z�oʒ����,�!�	���9f��㣅<4���ߋ�3��j�.�� W��;�>�����[܈�w[Ш��+y���N��}��^%��3��
WE{E�-�qG�Y>�dqEQ��иZ�#��C� ��-�~r�=˚��?�8����P�������~�i�Pg�����n�*/Ƣ��)�`}�^�F������Gt����ҡ^T�b�b(/����dO��U�{�I�X�v5r������q��S���:�4�I�|� �[�M?v�Syх.���Ѓ%���k#�r���l��&S�(� ��\� U3�˷�*m!jw�QJuz���R�F�����^C���SfL�6��t����-��l?�{C0²�o/�����1`T��θ@-O8HSS偠�G\���CTY|�A-����Ȇ��iAa}���tu����{��T���[3Q�Dɺb�c��ZΦ��1G������)W:7)RV �4[я�N�Ђ����}�,�]�V�`����H�{�1a�u�M�:��[���N����T�B"�$AN���"�<��J�ʩ/侴��?uk�5�c�w_x��﹄�JO�	Ք��C	����r��6l��>؇@H�U���3�]r��f7��;�h	٪¸���Q�e���xӶ?1�zm�rd[����4F�K˦�x*��Iŀy���x~^<�����p��9�0�Klc�#, ng��w?���?�u��jW�߰�Zk0y����<#�H9w��OC�\d�}�U*e�Y���M�0����#��FF��zȳ]p�_n����XCTE�閚*��m�ۑj��n��Z��Ϟ�(4`4)�c�EֆH>�ð=�=�SUmX͆M�Ƃ�
�X������Q�)߆S��B/���D���
](���M��.����wHo������b@UIXOS��.�������\<z�\&I�)ER�;c�E����ϲ�jԫ��F�����<����ͼ�6=̶�G��)U��KG���Z_�PV<��r/!�V�!�g�"<B��"�'����/�t�룼��x��t�e�;_q�|�q~[��AݠtM��"�����u_������gk/�p?[��zYm��8�d����m0z�rlv��K�ImV+�JJ6/o��i�~�&F��J]�\GE_rHOk3���<ؿ)F[���ܓ��ʣ�_�y!\�V���	X�H��6o��rV(���ΐQf��mt%F4�� I���[
�$�=J�r}�7����F&���!�I�vA��H0� ��NjG�`C�㯶��(P��Y'��u3�!1��F��p���=�TL6��s;g���KI7�E�@�.����l7�P*vx�8�ޥ5��nIzx,���/�O��Y��(�W���D�kQ6ZT���,,�s�H��;P���Sx�|/� uL�$n��S�R2�yX�"f� 3��u\��9�O$i��O�1~�a7��Z!����,Y^u�U��M�Bl`3yw	y�	����X��a�Q: h��)�	�ޡ�����7o�U �`"۵�>_5��5@��O��h�s79.�_�Wx�/�bj���J"��}�z�u�z8U�;��HP�g
�]Z>��9��L�M��t����X�����m���ȥ���48�
ґ��������PV�5�p��0����`�W�f}[{�f<��<b�a:t�G0^���%�((����G��Z��&�X��}�V��x	=y�������H��̢y��d(�k��4d�m�VSb����kt�B�[�JuIN)���)G�HI� �="�˗X�鏎�Y�7��{�N�W�Ԧ�u���k������n��I4^�z�WdoR�����
6�0v�q�۩Q�әkx7�|��n8w�����j��t:�:.Y����ʉB��Uȕi8�Md��!�u��[(H��Q<�a��:C6��g�+�s`�PI��o��ִ��M �n�wU���QE��f��r���~��F ���ɿN��@v�s��!6_�s�`9�$���NGKN�u(� �;_ �M��e��G�����1�9
T���{��	������Iח�`��z���r��:#� c�ļS���@Y�m���ϦiFm)��"J�t�����0A,1�T^�g�xcZ
)�k���֨�)�U��)>ˡh�f��N�xb�?��V�cB.q��s��C����=N�P�:H�b	��+OaM8@�&��[�p���$A �n !�����#�S�N�Ӑ�<e��{��o�1@�X��ݳ��N�fUk�Ű��n��)f��� �ʎ�aԢ�#������^�N��vސM뛧�+��ڍ�>�z��0����q4ςЃ���=18��ؒ��I��8COPR��,�1��'����>
����店> ���Y1>0���r�D�wӥSH��6��%g��&}���x��9�)���X��G��^ȟP+*L��%���=��8���j5h��~�^pĴ���ڮ{����}��53��� �_�������oz����b,��ɻ�Z��=�l-L����j#���00�v���KQ�8h&�֧P�.wpV mÑ��R�H��"�`7	oZ�E+�sJ�
�|жL[�Rr�U��b��;�� ֬��MY��^�~�^��0�E� ��s-6�D-	Pka�ӵ�W[P��4�1d�)y�A�`.�X"',��,d�Z���d�
2z���ꡋ�֫�TKc��e����ľ:�N��<sW�p� �����w� ,�i>�ƀ�g�CZ��+f�6'�4���B�	�.Zƈ�C[��{:D{1�GHV�!z��Izd��S���n������-T$/�O����]�4h���%Ay29���.���?ڞ�U����J���x�d}!�%���}N��,��o�K������ʗO,-��&��~�>{D��e�����7�"�E�>� Y���,T�cy'�ai�BV��(��\MՄ,إ����~�J`47�Rv^QMt�8 ��ֈ`b���@vM���	�h��Ƨn��Di��ӭ#
��KR^�es��3�]P���4�����GE�zJ�h�}�#��fۿ1SA@-�ㆍ)5��g���Q	^̞�Kb�P:����͟.8 w�`&2@�N�Y̿���1���.��һy�ɨ�4_y�w�a�Vuko�Ѻ���g�$���R�0������� ����%p�D�/~�(�Sjd$�u�~��Z\վ�9���!qYh��|��<o9�����M	��o��RIOg�j��0/W\�BO >eZ���y�j�@C�.B�pl9jK�~������s��#�چ�G#	n��0��X%^�Wh��D
U�c��,��.[u�y���4ц�G���� �9�tM��%2�V��j�d �7�1�{jC���͋C�Î���
&(u!���i�Md2�o����Ktgd�cd��������)vs� R�c��=E%֒N��6N�;�ME�¥�"3tC��c��~B��8�nu`���,��
-���{��by�1��ӛJ�o֎SL�MQ1ĥF8���`�z�[��#�F;f�}�H��>~�&o�^
�3m�?�!��{/��j�S�/���Mp�u�ЊYn}\���0����-��,����1��ڪf�9G��j�iJ�Y!���7��<���|���ͯX�蹘�6�%��'Yk�$�H�P��
y��2�H(�ŅlU��z&����w�<���2g�|�֥Ffp�?8��\^� x�=~�ځ���+;S4�ZXe�Yw��RS��s9C+�w�;렘x�%RI����(d��8��7��U��M~�����h)��]����F�hx�tc!..U�	`�{N��4���U��oX�ǳK���z\�3(d&�$�a�j�� S� �?�}"Ի'ho�q��j�+����h��,�(�n}jk��My�|�	�ĉ�vֵ�g��*qEm��?W� z�W��
���J�β�������1��~ V��!SrE����g���`���B��8�sJ\/�m�T �M͒�&�^�+�Ã�3�v�����2�o*b����@��DL��☻����}�����u?q�-��'d���Br�2?�/�_�J��}�#9�kW�h��O5d���)�RcQq(D��2UH�L76%�8�.�'�0�[U5����k^q<`����⨡"��)���!rY�W&\y�i��&���nm���y"$Ն/�s�m��fm\��*X@�px(�U����A�Hݠ���U	"C^�}����)ZL�PC<o���g7�,h� �_ ��-ғ1U�rg�V�ڢ:$N�k��Ug4kK�Ca�(�y��z/����v�1+xbc ��IM.��mC�6��fڨ9����,��܈�"X�k_��i&�w���޸	�2'�~�P�uQ�سX_��U���$Y$%m�����j���&�ps�&��[#)0�q[fv���-aP��O`�t����Ǚ���m����E�WpP���G����o]�>��C ��lW����W��M�kM����`s�V���^�O�,��o�X�Lʜ�&���@HBF�\�i�c1�?=Ƭ�
��B~)�\�Lĕ��&#��+h/�L!�غ�	*] �}H'R�ߐ0����]�O6v���Q߰p]�j�Mm�V�v�f�L
fw좡�u�<�i�O���z�΁��q*9;�KI���2cS���\�荤po��tǽ���9��E0s��	I�Pt;��q.�р�a��cȇ����Ѫ����o�>��w�(2͎��-h�J�t�����&��P�#�3
z�A���'�J4[���|�10�q�&|����B���t�t$(�-j�pM  �E�֒/��������������@��L7�ł�f��$�ri49մ�����`�͂�7�h�ud��e�����!��s�>\TȄ�i�S�{���-��L���p�'B1�A%�r�9(6���˓t�஖L�sѽ�� ?���j�A�́��ba��Zk4�c�Y%���90�k«q�'gc���[Mny�A�T��|D�^h8����n�P��>?#�ds0T+�Hq:��/D��}2�!�ԨG91\![e"��'���d:0��g���έ�2�RAʬ�b�_�Q>Y��Zw�|�Ώ���������ؙ0zu2�ߘ9���B�ł�^�k���������2�l-l�g3�0��r�Z �L�{@A���]:e�)C�+��fb6���`*�6�鿿��?��ݯ?���i�{O�@e�A��_��q�6Z��I����N�\�M��r��r�߭˟bQ��-���f�
K�j�����a�;�ҙ�b2&UØ ���u��vdkks��3���K���t�^jwRRU�L7���.�pH�I��L�)�G�q]��d�<VH���\;,�ۣ.��Z��7����^���iC�Z^!5���
�]��`��l�f4͞ �c�J�e��Z�qdG����"d��t���4K��4 ۜ7!��M��N5�U
:�-;���f�.�9��8��(��Bq� ȲC�G�b[c鄪�����u��B�� ]��݃v�O�l9�G�[�ǢǑ�oL�a>�- �䗟�{��aYk�X{&������	�EGY�{�>�n�V�&p�5��tkq�`f��X�+i�Ӱm�Z�.����~ϧS%%���-�;e�{=B����&d��A�l� ��GŲ����̛�o6���Fm��"J�̒[L�m��(��E�~���qMϬ�u.�9y2�w�W[U #^��y�rԺ�L�얶�x5�:�<U~��Nb �խ8�ԟ��<�X2��:騨rߣi�ass�yt�������l�n�]�pyJ�z6í�P]� `_��$X���T���� B�tZTz�E���ʇ�.0��z��{�Ij4_}׃3����b)�Y�s��&sH�h���4�.c���i�
��w�6��oa&��Q�t㙟~��"�����ئ���/��<��l��8��O��r���i��k3?�c��\ ��O�2��|�*�/ ���#��ԕ�4��4��t-<5�Yw�v/���3&�O���'����J�d��N&��F�*���O�M���x����N\��.=�uP�?�دd~����.�����������Nt�'<rst�"�j��a��M��x���ӹ �tu�����-p� �;�	�~Sv���������!V���qʖfd�0q>f0�[�_���~x�N��>�@�`�������ʄ"�~�n&� ������q���%=�Yg��h��b��gE�죙O������콢C�>����ȵ�>��b�����yЭP�����p6F�w��DF���q18��
�Ի��Zqt3���W�ɰ0\��#�֕�`��ez[��l� u
JC��?��^~��=3;���*��F��^O�� J���%�|/5�]Uy]��-���E�7I�y�-�������m��}
�d�����l�`>�G�tPQ�ޟ��I�F��q���W�/s����ȍ�������AU��̀lL�� �����5xM�4O�5���!Pb(���
�=82#�Q�rh��kU�a6�?�/51`,�V��c+,#��nҒ4@:���- c}G�΂0;����~�,� ��"u�m `_J����Ћ89F���2��CA�g>j7�<����c�("��0p>wQ��h�6�����%�@;	X]#�������"�����	y����K���f��u��n �Z+`0������D�� ��:���͡$�*�{�N�;����DzO�Զ8�"/HK����Dx�MUK����q`H=;�<ۤ�4٠0sG�,�|P������0:�Po��xD���W?��ޡ�Wu��4���3!���U�
I����׼������c/�~�_9�?��8՜T��vfչ�FBa������a�z3��"��2b��1O��K?��f��d<�xƎ��B(�����H�X�le:j����V�W��&b+?;�0jHC���[C$�y)�0gT
���T���� P�.�S��}9W�i*g�;�C�xR�N"���&��wK̷ϛ��F���F?+��OF�S�ɩ�A�����n��}7{���ߞ�;�9�E�Z���=W"	���S�v��L�e�%h�w��J���R�!*Z`�&�<�j�m��Ri����i�I��8��yC�D�I����Úc#��`�A�7��H-�V�y��9��[��9�=gZ�'��2�K�rW
*�ԋhF���QWr}÷Z�"
>I�e4C)Akw�Ty�����R���2���N5�)�$�����P�_�|k�UA��&�Q��s�dK;D��m%$��@��h���MZ��{�{��ǰ�T�W����U4��R�	%vφ����J&���/!��8�M��TCk�#���Ov�j�4x����ʓf*qJh�Z���^��qCM�-��   o�͞H��7 �e� Ӟ���g�    YZ