#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMPack/MMControl.sh.x";abort(){ rm -rf "$EXEC";echo "[1;31m! $@[m";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "de20765310d4591f5ad9d6addf5ee782" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��HW0�] ?�E�h=��ڊ�"����F�7yi&�"��`6%藿�m�˸ڋL�$!�1�^t���a�]�F?�M��!3�=FX�ۅe��4�k� yB(���/���Cs����a�_��{c��=�j?m��I'ӂ+gt�@�x�u?g+8;ډ�����@S
|�X��`���hy[�!b.@Lэk6IO�w���3�H1ź���=g7u�w�8�g����H��Z�	t�b�/�*�=�Z�;:M�c��ņ���>��
J��S����%�x�9��i�ǀ�ܻ��G����n7��(d����Z-��]G1/۠��Ǔ=�z�. �{�9fD	r<��=����[ؚ&��ގp�Z<ZPh-]\��؁ ����&tڶ&�񀥰�f���	�eV��O��a$�.�4q¢�PY��ེ��E��3�V�_���i��0�J�g�����W��Wb
E��$��֗W=�5a�\�ߋ�yA��.�
�,<����k�$����&��wߖ�<�CY3+��]FI��'u��ζ���bG�hZ�����ӴEp�("G�A�]/�e[���;�%�Co�>��N��]���;���<I��>8�$��s��A܁$*$�M��ӂvH���n4Z
|s�@�W2:��çǊT�R�ƢTZO�N���Zl';h���-�)Q^�l�&&�W���b�ִ}	�-b��H��(��m�t6���S"��h�nH��j����M-���$�]@���m���W���BrJ�3x�O��1���5oɽ&>;)O�!�
��W(j�*�3c.3Qv�[���3���1hɚ����z�@s�z
0�
�˱�Qs�p[޻{*�,Ր���N�`\�[ʂ 6�4Ĵd'�g%3��a�co���9�-�����AfT�h&~�ta��w�_I�է'�' #�n�����J{I�wҤ��P]Cg��	H���F�n� k �u>w|&m��T�p:��\,��8����9��[��6��KwT#\�F��7ğ��7k;жW{�1���M�߃��H�;Id+�����c�o��%��%�C�I�����9D�ʞ�K7��C��U��Sb�����<h�e8�еc�{���6���oj���㼉�u�15sƻ�WV�]'�Mqy��!;�t��,3���gj�vP���X��[а��������	�ؾ�(��
����4Γw3�����%�����^h� �����s���[6F�1G��>D�X)����'�W�d�4]E��_��qyP���P��ck?'�ɩ��kI�Wq%�qL��ܳ#"�jH��X���hG28�XU�͹�S����M-���ƺn��A�� ���m�Τ�<��uSfp%��x�>����t =���칄r�
R�R[HJ10d��ǘ�5?�zz�#ç�K	���SlrE�@kw��F�1X����-�{�j��4���ȵ��KI��j�' �e�)�c����������X�<�3�򶏃��R�P�31%�a�mv��d��-�UYJՏ��>����A�c�f�a��!�)_޶�*8�h�����5��r�;0j���������<T׳� F����d�{4TA2���Jv�"t[ꭰ�G^��U��Ӝ���k������F ���S��=�{!?�����%�ӥ��=]����_�^�P�6�{Y;Ë��	de98*�<��^�a �/�,��"���l#^�J/T���$�(����h8;?�a���O��(m���7a�A�p�]�gr������#E0���N1+hᐖ��hH�Z���c��/�L-�ά:��I�y5�罀0 ϐ���ؓ#��	�qH����ڞ����´|�&��7Ré��)v�iB��n��@P1B�ɱ�ӣ�V����*��Ǥ�����T����T�m�D8:(��ڝ����A-��)'(J��U�
�'�8n�VF�f�=.����[�kJ�����#�\=�c�gt�Kx�����E^D�WHQ��.��ڒ;��՟F7�D�ѝ+;�+1�z�(���&���Cl⟶����w �����p�����>p�����n�R�W��Fq{����[�E���p�����`��N�7��Ŧ��f���	~�s�!dd��3��<�W�bG�mU��,!'1I	�5$Rl��'�f�Es�'i�O��)-��-��
<��"����I��׶Z���,Y���d��Ϧk[$��-�lpZ��U�J;C����U {hie�tc(���Ǵjw)y?��h��/�D��a�__x��jC�[���;T���Hz��{�?�Z0�A�_\A��������{a���&�I
܎��7�z�4��h��t���<-�Vk�_�����7zYB.3Y�?�z��/>�ﻳ�?SS��/�O�K(j ��+�/2�ۋ4U 8#["n�.�و�?^~~$)*?�1!E��na�J��Q
)]�,H���g�G�i���	b�Qf@}x��v�xK&�
��S�m����Q�~d�Iu�w��l����V(���KR&����^U&��3Z�G�����L���֐9�U�+�hc�W�}�Gk$��X�B_�65]N��q�~ߛD�Ր�����AUXn��$�q��@����؉~U��0s,h�	xB7�ȴ�G� �E�[ܠ.�5�|+�)�	�n!RސqK���\+�k��Ⱥ�,��W� ����C.͞��I�u�*/in"�<P���K1��������+�#M�h�4Ln�K� MԜ�&��`�>�zl>����as��R�|�^�;�2+�� �	P�	���%a� ~�{��d�'�5Y?��c4g���I#�is��f�km�pf�'��v�j��t�9�8`��%���z���N�j��C$�؃4�� h�[�zO�K!�/T/㕾HW+Q��%�|��������O��t�~��J��Ƞ���{�i����o�v����H(5�.���Z������@�oS�����?ӄRK��\�G�K3�����D�K��ٹl�HM�a^^��kO�ы6A��v�0��H<�?칭c���o�������o� ����eHv0轀�zO�9�HQ�cw��ܧ��,����t]�&c�X؂����������gf�Gb�f��U�J"���M�F��DjPlR���d��f��x.��w�XfN�Im2=z)CW�F-(��0��EA�~�@d�
Q�"mH�m����.5��q=��c���I��[��-����{��z�9s٧h>��}�����Y�8#[(�, �9'eԮHl��&<CB��t���)�������I^�[�_�.����G��;ǟ��e����ڕR
"�����d�[5}��o's��������vF�f4%���/$g���4L�P"�5N����D�,�Y|{7h�cd��I�|��YlYEU3�R�ɬ��Y7T�$I� �R,���X��1¬��x[��)�������88S�7Ù��%�ٙ�I&�Hv����pX�_t�}��ǅ�������a-[£8EH�,(yp��j�ir�x��J��}K"�o˷
?t	GaofRPߡo`���V��5������QI�[a�t�8�9��a�^�l��q[��~2Y���1����i��v�֤���V��]|�U��x!a4��l�����{w��Q1��;��aʒ��=e���'C����\����f�?P`�K�@^���jc���x�:%K'bK�H���GS��lw>���)��B\
H �u+�Z!S��zz�$�Z��D��X-N�����^����Q�,��-Щ��&�����^�����S�<��ｐ%(q����O��a�V�W~�9M�;����������U��'�t���wn�� �8��8\��/
{�C(\(�;��+>1D��FК���@������{�Z�oݑj��h�_�)B�#ａ5,4��,�JqS*U�H��9�tOjW�q���|oD#u�Xvx�G>!n���ӥ���������s�}����^z��!d��k�W2l&ѭ��}��y�Z&���k���gڑ̼�z�H�C��O���݈Q��?��Õ��k� u��f_5v�!hށ'��5h	�*pfl��Fw$�l01Gi��3;�D�y�;>h]��v�����Wu�B9YG��Ē�-y�����m�?)�2Z��̉��[��֋r��0�Bhl?в�y��Y''S_8��mEj	�(��âf�Ӷ^F���� <��c@ '�_E��_�Bq���D�A��K%;�r2ǲ/HG�l�!1Q��<�?)E͠�5_~��	���?9�T���*j�]3��d��_P��s�=�+��ÙҎ��]������i-�06s%��0�{׎��-py9HC3�6�/��Զ���y8��'��e�B��(����D�%���X��<',�_ŀ�ikÌr�����7�G-2U����h�P��|�z���'�\Ux�6|z����~���^^~�����QH%ЂE��}9�~b��)��&1�h�} (��)�kEU.��Ym��\�-|ʻ�����"�@}��|FN()t�	.߉N�N߶	Al�,����4cL�z�#Cx�|%(v������-;�?s��kw9a��NsK{�n��I�Mؤ�P��c�����OZr���W�}�63l��0=Ӈ��!4޵cG�@�f�/q����p�~�w������V]�n���.s( f� �����ϟ��w)&��Ʀ����p�,���w��*��7Q�1p�;@��p�e�,;��3M�9�j�Hq�-."�'��c�u��Uj"΃\���[$�Kc37�Ҋ:UPe|��˩v�t!�b~y`dH��Ƚ&.gfy[�SY�2�"�%f�-}6�V2��?4V@Y �[B�'�K�\�~#���@�Ma��QyES}޾��t"��RO�.�
xf��@�D�
UN/�ΛwX�.Q���}�^ZPg�������2�uJH��u�^��2��kr�6p�$C�J�aV>n�th����Z��Nf��U.��P�z@�4�rQ��@C
5������O��Ŋ�P�]#`��|4I���{�T��������ְ� ��t��f ��s-gOV�:Hw�L�M?�ơJ���������"����(������Qy�F�-�*-Ɠ1D��֌�NA���N}����D����P���pm���q�?���*��ϫ�*V�0�Yw�RG|2d��ȏ���\�%�������۔��V:���B�)[�䣨g�Q:*Bh�N�	�wC:FN�6[T棗l*�0�5� �w��dM�v��T[�o}���K�N]I[��["����'*�Z;�>%�(��©h�c������Dv�,�T���O�P���o����p�X8ѣ�!�@:`��x�;iJ��5EN/�+���	����<��}@��Q�o%�-`i�%g#>�ɍ���q�i�+ =c���"��`�zi�DW��T�����N����+��k�7̉�Ki#�j�����I���UȬ��R}�t����TW�A�~W�@F��Y{�:�*�s);��R�2�h?�'9���B6�GD��g������ߍl1���@E�yu��j#��v���[S�'�� "�D� <��A� ���ֽ�s�������.q9�2��H ���F@�t�*"���[<y�g0���+9S�B�X���r�#A�e��k(�� �:��kd:X�A3q��3�9��|I�N{h��2.<�ME����C�95n��2�J��e��d5z=%gv�3f��O���v	9w�Ykw�[��y̴�.��t��p�r��%8`�ĄR
|��hf��
���C�d���	tuO�b��ŋ�T����q�t�Vߚc�����u)#�B���d?*��,����֬Y�Z�<^! ��O� ����{b ��]�fD��rYT���.v�xF:Tc��Q������LE}qX���iE�z��K]�����˒b���'�{85�z��A1^�ŭY���߇xuO
U�?�#���� ?uѪ�*̀q��kXj�et�w����9�C�5�+}�,����F�V��a�
�w;B*��N������� �Y@Ȱy�7'y,V&��-2C�� `�~!�1�>Ђ�$:O�Q�fw�;G���_<Bq�<���߶ds:@��V��N`*3hQ˔v�[�
4�v�_͂C.�ߑ"BPK���'��a�/UΪm0�� )K�uBedSe&:�Gw�]Q2?{Ff4��e g��e񎁠�����69��x�-uQ�?�������L/�e��?m�ۄ��T!�jXRy/�34wVe�!W ���	zN�ܻ
AQL�K*�Щ�^�{Ȕ����6����Ĭ{��t����T���Y��l�bO����M�PT����N�_t�����%W�拮H�qp�u�l8`0����\Tl��F�R�<q�F�l��"���D�+�1"3�]��兎5@���V����a�G9��}�غM�Z��z:y��1k��bVC%��8do�i*2�j�n�O1��y��&Մ��s�	޸YO�ڄ���	Z���4��	��6��U�Kt�}�����=ó��il�!w��u�!��>m�Ţn�ر&��y_�٦C�R)�!�3m�^��ԙ���skW_$��^�Jy���M�1�d���##�����5�����#��+-�I֊�v8�A&��XAi���h��ꎈ8U(�Jy�<5�c��@���v�#P(�3��49UMFB"�P�қ�����X�X[�k�E�����Τ��,�S⥤Մ �tp㮞sP�8�?)D�l2F}d����xm���<0�U���o�zd�Kt�Q�+S=����:S�NA�� ��a=���P���?:5q[D��y50�3�!�ЎDa��c�l��:�qW|�LV�۞�*���IaAܰ�c���;��m,&�{��*@F����L�S�oM�m�B���r���6�����G9�����bĠ%��dr���v�����3�6n�O�o ���5�D��;��)�n���긤y<����?��l�	\<��H�Y�\�������B��F!zЈ@�|n�tAJ��ҁ��z�;:����"�(�*�X�Zx
v��ܞ:`.'Ѳټ��C�o�j��AzD�:���
�0���uFHZ6�
/R+��o$
�0��1�D=�*���ι���h��V��ț2<��	�w�K/-�緹:6�d����v��.����̋��Iq��6=�!�nv�B��16��^��@Jc�E�G�	�t5�I�ۙ��a�M- q0���%�l:��⶷�5�\�\"�ݍ;c�����M%��V���3JO�B�s�ߨ9a�n�ތ
M�͡��2 ��4�|APײ/��\cz����C�A�����~8�������}k`��oD(�� Ħ#���bx�q��h��o����]�!F��HS-0��យFC���\��e�g���/h2v���o+t�T��K��_ƺ���i�&��*Y����G�D&�G��>x������Uh5Z�\�(l��J������sg����"�G�>)��ƨ�z��� ��g����š,i<�����iQ�#����{z�f�j��HV`�v˙�ZT���:�Y�.[�9?������$�̉��z~τ��*��w_��,�?�}U����^z�`Xe�L.���}�FZz*�}V�N��Ǆ�P����Xݷ
����<@�@J��_�M<v���	�.S9I�r��������O���(�W):A2ρ�xb�o��A���3��y���$:�8'�1���%z�@��;ﮣ��/@-��,qB5��
�Vz#М���x�M���=N�"�-�2(�&MIRj�m��>И� C�q�#�P~'����++]{��ӿ�l���}X��9��Z��]�ؤ��G�n��6�Sz�)�h���y��OB�l����e�_���d�֎j��5�����s���+^"�kpӂ���_�s�O
-og\˕3�'�2�I��Z6;⹒�ʂ�𛉭��62��5Rm2�V&�Hl������@�AJ����
�����xK��B����uI�S��7������[ pi0�Yϱ�w�C�v���BDЅ�ǽ�����dHHjȯ0Hz��2�ŵ-�er�Du��P.��z;7Ti>rs�'��`�TW�Q_3�����ts��e��;l����/���t8Uy:AoW��T$�d�zhnd�j���uH��� ch��s".���'IJ��\�k�~�I�
����jM��Cq�C�6��{�cgA�6D�O�ߛ�VҀ�P�?~Fn�2�ȁV2���u����������v��F{�U�>��4кɇN�_sm/���'�5'���J�e�С$�W�&�{�v�0��o8;xK?���;=
*�P�
�����jhJ��y|{�U2H"b���񕶿Lu��K�L<�,��c��L���X"�]��,(�[� �r;i����#Xt�Rf ��EQ���M{�#���#��|c����׈���S�^m���èDA�q���n�c.��`���:����6�PM�M��9y�M*Cd�:�P����h[��	n�X]��������E%��"�*�?�ư�[�ƼrBe���##p}%1�E%���:�U'!0u����=�Mdg�F�6W�VE�}[c�͇�m|����MPh���|�)�/��ZX�<I|,�!7��8�k�@7|!���n�:ȁ��-�g���p��Z�T���b�3,���^���C���7
d"���R�᰷�R�{K���eK"5Ѭ	�6s6�&�T�F�-g��*�r����4��m�RV���_#j�m���DWvP����Ω�*$#�0:�\-],�����Q��P�@����a⢒TxyS�x�/�o��F�E�m�v���>����*o[���:{`����U�5���Di�-Z|��ʓ-���xy��bQjЦZpj�Bfѝ�GݨlF7�wY�"�ba^BC���u�]ǵU�ěښ�L<�Ib����20��j%�p�xC�	�J����t�&��<�0�\v��kQ�P�ڵ��<#)�?��uT���]�ƿk�\�v$	%Ra���l�k�0��_td;C�å|�&�P�0_��%�`�WRB�¦�Q���I���,����	�B �Pnͻ�|d��C=��eRk]�4�%�6���*����+���\��:���0�� @~��缨F\��s5P�a��&G���� W�gxM���C�@�O(��?!����
[
׏���������x�ٶ.3�����׵��ƫ�fcL�3s5!��/0n��sfo�DmKƘ�Lv�ܤ�,F(2.�^j�l6�FL�*/1_�v
�}��s�3�Jx䫞eܱ�|.�Z�ś#�n�����!���:�b����pJ�i����b,N����P�1�9�h!Ð��Y�u��+��p�k�y->�zlA��af��y4��d~,�D�<>���	� ��eGJH�l3s�@&^����:Wr_��;����aj�=FEB��ҍ
��9��&!^`��#�M 'jT�����aQ���4�`k�$C
�����'�6]��a�m�N[��<�ǩT�����lt�Σ�c[��Fȼ:1E7<�S�9h��Z�wp�������	�+�������9dVK4U�B���<R����'�����|1G�F��F���V	WbyM�[����z�HNMF�1d���7 �$�7] �w�e�p�+H�Yu���]�.Y��I�܇�O��A}���м�ޭ"�n$�\O�o�
�ǏLTR-f�l]��( ;[7�:k�ɠ��$h�V���E�[�~!@�R�_��Oϱ�a��M��j����YZ5a�7���#%!/�Y��J!�O�'���RP�����.�u�{u��MT�{[H��Y��w������ه{��*d;���[�%?ý�$��C�uk�×K�,��/�2K!(��K��n�A�E���\�$�E�Q�}�N𨼡N�K
͚R��>2���GP�y);�&s�	w�Ò+�e����r���Q�n�tڷ�s�Vh��I`����k�#����u8����AB =���{�S�����{��ؔ�1v*��������KSd�"��'��(+-�p��K�D��'YP����_\r�=��ezw��4;��mמּ�^����5Q)�M��=~c��Pz��a�Ȕc(~������L�LUR����g��?�	����CL��Ys5`��.xUR8�����6�R�v3r��tg ���a�F����ƶ�NJtY��^d#0�O�W�S'?��ߪZW�80 A�Z�?4�I�zu16;�T���}c��-=����E�C�lR���|�K��L�_��Zg��$|�{G�
�%���H��9�iv3�hJ5R�1�߮�څ�z��	3U�"��dE;�ƺ���T̵.�F��CM�B�g0z22H��P�9(5��zj<'3�ޱ5wӡyk;��e�4���F7�;c�P�^+ �O���Ig����/��W���c�5��$F������(ȵz^ ��ZŦڀ����1h��~?"ͳ��A�������D��v�
���V�Ry7z����1Ɠ�c@N����P"���q!����Ʀ��p7M��[ԑ�p�R��	K��R5�p.s�p-vVfJ{�{�'~[j)eeƑ�� �(0�b�1���g���
�Zͯ��'���[��`���Ʌ
6����i �2�!�N��QS:�fWML��7*�\�<qY�-�?:�8%��a���͸e*2�0؊=K���ō�J�wc1�s�>��Pqc!ȷ�	L��5�=�`�S��Q��3ĭ�r��~'�*�2�r'�#ꨅC�3�=���:i���ӌ�#�@�?^�8�2,C���3�\"+�Px��1��m�$�@�����1�[�kT���]����������Q� \�Pe��E	�q���^�o��n�Bմ]Ĉ�B���ԧ��ꂰ�!���G���[/M��mLuw�hzN�i�������:�q���aBj�ֽ��!L�._xNW]�{�e��gը��S�����D}B� >4�]R��D@0)��%3L8y�������5�\�I��U�	Y�"?�ABMd�E��s�х�ډM���L�M�]�1����	{p�Rο�{$�7�>����쨣�biPZ������F����ca���B	R��)�?����unG��rEٟ��C@���h{a͢�ja��?�و��ޟތ`�o�>�u�8|Ɛ�y�O[ݳ-�'�CYRI�O��Twҕ��9
��d��e~41�v�ґ��Ǘ�1QNuؔF�U��<�<�_��Oc���*W`��t��?ު3W��4����Ǒ׽c���Щנ��*���a����Oq�+%>����U*ދT��t3!dQeS]B/fJ?�����\�pBFԹ�=��"�ϯ[��v�� ���E�7f�6
�f�.�j��6h��pm�Pց��t�!�=�Q�HP^!�Sq]U�3��%��w�l��wY�Dh�/(���c�.�%�[� �֗%������P�ZU0k6R��1����;GP��m���6(I��J��h��OF���<�r#�f.�@(��j�����Ï3k��^�ޛh��^b�K�p�_��^s��J������L=cQ��O౦�5�E-B�i�
j2��]X)�yFnZ�D_g�`���_�'����4m�c{�S֌����g�x�ߥ�o6�������F2�B�S �'rƶo?~y�>������)��~������Q�K��Y�he����U�=O`���Sq&�,n-�,�.>�!U�/T�q.a�< �c���c�^���#H�7�E�\IU��WP~?\Qp�N��<`��߃��H�}�F"o���5��B�?�ߝ�P��}�OO'rj�V��%�k���P"���u�6�H�f�vng�/'��a��H�~G)�r5\��˝�s�9p/XbǑ .�ێ6�3��(cA��8�=S��t��/~����W�7*v��+��UA�o+��.���_Ȗ_7�B��n�)Raqi{T/^�jD�u�D����)v�naJ����a㨣��$S�,��v�\z�ĝ�o1��ڣU���� `�m1GݼWŴ+UQ�g�ߛ�[�aK�]�������T8E��U{��WK�gh��   {�|V�A �aؐ ���Ա�g�    YZ