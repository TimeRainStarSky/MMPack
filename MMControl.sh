#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
[ "$(id -u)" = 0 ]||{ echo "[1;33m- 正在获取root权限[m";exec su -c "sh \"$0\" \"$@\"";};runtime(){ RUNTIME="/data/adb/TimeRainStarSky/Runtime";export PATH="/data/adb/magisk:$PATH";[ -d "$RUNTIME" ]&&[ -f "$RUNTIME/verify" ]&&[ "$(ls "$RUNTIME")" = "$(cat "$RUNTIME/verify")" ]||{ echo "[1;33m- 正在配置运行环境[m";abort(){ rm -rf "$RUNTIME";echo "[1;31m! $@[m";exit 1;};rm -rf "$RUNTIME";mkdir -p "$RUNTIME";setcmd(){ CMDPATH="$(command -v "$1")"&&cp "$CMDPATH" "$RUNTIME"&&"$RUNTIME/$@"|tr " " "
"|while read i;do [ -z "$i" ]&&continue;ln -sf "$1" "$RUNTIME/$i";done||abort "找不到$1，请安装运行环境后重试";};setcmd busybox --list;setcmd toybox;ls "$RUNTIME">"$RUNTIME/verify";};export PATH="$DIR:$RUNTIME:$PATH";export LD_LIBRARY_PATH="$DIR:$RUNTIME:$LD_LIBRARY_PATH";};DIR="/data/adb/TimeRainStarSky/MMPack";runtime;FILE="$(realpath "$0")";cd "$(dirname "$FILE")";EXEC="$DIR/MMControl.sh.x";abort(){ rm -rf "$EXEC";echo "[1;31m! $@[m";exit 1;};output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUTED=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "11ba09f54684874fb24526b5ba839560" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUTED" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��Q�9P] ?�E�h=��ڊ�"���>"*#q��P:dƊ���o�rx��y�»��zwV��F]?�ÇF�V����w������Ug�ɍs'���N��{��V�1eb�	��y�{B�G��[�]z�؊���gZ�(���m:2��=ٳI5�f����O� ����������*��������#	v���%��2B_�W��E�a�P�T��`�)�!���.xϋ:c����B ^mCO��s�� }�y˶�I�a����
��JM���ob�SƘqz1��}��h�:�*�fM[�;mciY��W�s�%���*�-=oD����W�(1[���J�o���3:98�PP5�r���h�]�fn ������P�8_�Q�<ħQ^�hfj�ț's.{f$cM��X����X`30��ư�����򷩯r���U�?pǒ��,������D+'v�h�1�OZ]���S6��[�}�D���h�+������� 5��jW�����p�A��:�*���I�:���l.�}�۴�1$�+=���(J��S�/��yI-��'[���Iyb !|gZ�05��z��v[�0X��6�@�wO����oq��>��ߐd1Q<%H�0�|�G�_��8T�W��7>E��c�Zۿߖc3��6���hh���e�#��|Ð��f�P���tc�������ʝ)�lx�`���E|\f�A�R���Ϸ���܈bex��r���Xo�#��t~G_E��q�x{Ȩ�rS�M���h1w·D��NQ焳r��%�H;��X��W��1�&����Ȃ��a�����T�������NI����,%�5���V��ڌ�`�/��+
R�;�ླྀ��5�Ѫ�d��lDf�̽0'ɟ��+3����`�U�'S�Ġ�ҫ"=P|�fZRy}B��o�O�F��i� Z�5d5�_�D6��Ή�l�ġTĤznM��g@p:'�����D�q���?`����3��6
������k�#	������&�������X����9y�+��ʍ������4��j���GoEo?�V� ��0�a�5Rߦ-f>��)Vk�(��8 ��GK��;�t���z
�Q���Ф��9�R�p O��8j#]`h׵W`e�r��X����!�]
�I�U�'Q�ez�����|޸P�݋��H�G�{�=U�Y���qU��m��C�Ivg�.Q�uD��1����!e���M�6�<����׍3ڴ�z�W �)0���?��pp��������&�Txa�"z���|Tg�Ki�
�!P��%��Jnꪉ���6w�^��w�9JQ�y�+<�.�������T@8S;79����d!�.ל�Xm%[JX f�#Z/�|�]e����}���/�Iߑ�����B��X{5j��Y=�������[������/� ˉ{��@����Ǩs�Y�Ō�]�J;ƙ�lN��vw��A�t��H��]��\��9+���w�OH�1`1k�-��N��D�x�G_'��2�*�Fnw�� ^�zc�q]�A�=K���B	�9K�]�e�� ��
��W��xJ�������98fz�2b��B\5���+��6��dy�.6 ��3)�9�͍(���t�d~�bT"�p	�ߒT?���K),��b����VC���O������x͉Eu�g�B9�G.F"�S���VOn��+�m��
L��A���#*��E�m:G��(h_��ǃ	8
AV��}mJ�QM�^�����lї�����<��R�\|��`�j3�Y���BVd����ҥ��5P�o]���̞_WӠ�뙁�n������I�b���P�������eg\=ͪ��[��*.p�4ާ�X�HG �����G=U�h�$i3Dq����F�(G���=a���@u/��ˀX�"�����7�ಥ�����G�o��v�v>�x�{^�E�s�����K@4Ü�r{�r[�K��Dj��/z��yX��{�ԣ����k�Jm����t�=��1�T�ٓ���a�oO:���U�jk9�P/$Q�����R�0|>�é'�^ԅ)猛ZC|0�����?�X��O=��#Ei�s忣h?�c�ξ`*���Q�cX�#:.k[Z8�#y��
�9ǒ����닻�_��_��x8� <��	�V�'K��B�<X�8�Q���7L���+����<X�4T9K8F�Oa=]�Q��r��nLg�8�T��l;��k\R��5�t��KF�vz��@����䗎�K;U5,c�$��ԏ�Kr�L�R�)�;���G��~N�aikjq��<�W�_��i����`!��)Z�jT��3m����\I!�� �\�t�.֏���w���,%�z4³��K�������U(���8m����Gjƥ���՗�G�`�~���aH�-[��Q��8VBA�:�4�|1�lE�_Dv㹗.2y6�nv^ ���?�J.��Hm��؏�(Ԉ'3=�-]�O�l�U~���d[�7�${��H�
7]c�w�)p\7MO�^N�����͚����;}
�{#�q�!�2C�������AY���2�#x�*�P�ճ����l!B�굮
���_�ާ�왤�O��?5��-yˌ?#u��!,e�=��7ј�[:���̛���g��.x`�su�a�/D��"�;� ��SI�l�Y����T	X��`s�sn'^�*q��hi4fs^�~������*b ��LP��!���p�^qcV]�B���+w�F�p��OqBɮ
,�gE�F=��,�z*��a��'���E����F�_*���Ԟd9'Z�а��8v|ɿ1Ih7���j�Q�O��sW�D��y��/K(�l�]�"�.aXQ�M�M5�x�2�'�!f�xU,YW8X��y�9.xy=�����_����^_L��T��L0�Ӻ�	$]���o�ٓ`��Zu_�M�M*=���Q�ɥ���+�|w�N��e=���95�ML��s2�|yI���K�$�D9�f
Ҟl�:�0(+l㖧�}K
|��J"���07B'_�ZF ��v���Τ�=�߻ư��p���ȑ�ñ�n�Ƚu�yz�9!]d��5�c����_��=�ג��Hpl��� 1�y;)k�[\\u�h�f��Pp/��Iw'����A%A�ʄh6��ɦI�W� <�,j5{������R��ҏ��U/BL���5�C5h��bJ�%|*9N!�f��	�S�\%�d�Es̠ʼ�כҾ���X�l�����,�[�o���d�:p}&r6��f^z�rEL�߶��&L�����ʚ7� C�`�R��c6\���9*a:YP�R�h��˛�?-�L?��җ��ۭN⸋�bI=C!���>Yj��w	�_���B�`�S	za�&�t,L6i�P�؛J���8ĵQ��V��~��U���w��eM:��y���w��2�f�+��J>�ٟK!g��0'XB{��%���^q��U4���qL��M�l�b x���f^��6�7��T�1홍+H�4b0�V�/0��%���#1����%2y�;���,�%Kr���A�縊�_&�$YH�o	�z��{@G��Q<��>��4��zj��.�f<>�	^J�c�1�1������TUKѕ�n<��q�!����n�lZ]�5È�(���൨���	���bt/�[e�~��^��a}��7+�A�� r��2��v��:�	U/��\���I�<:c�G3ŗh��*j��h�k`�) �Ii��qש]��B�n����W|�@��rў 9~�U�����F��>ϵs�F�v���:尖J�~��ZY��摘^��k;�����U�u�x�v�Mk�5It	Z��7>��söR�va�޻�u/.=KԂ*{����[sc�M���шl����tJ��9ݓ들�Ƕ�2>3��r�$�Јj~���jY�ӯ��F��:�B�~5{�]��F���'C�D7q�Ȣ���:ܕ��)�L`��b	�!vQipt��~d0g��`����+?�5G�l�Zg�[cTB��"�8�#%Ǩ�JD��RO�Ad@(�-�P
��7@1��6o�Ӕp���vb�Ch;�*��R��֦�-�<�4;m��-�:Ԃtw�F�p��F��g�'��fm�����i~�"�A!��(�!���p!��(cWE��s�Hz׹�B�{x"�W7g��#vY�� �Ư��Q&*��1�LX�ԶW��
��I�U
�X3l�g�=�?d�v�7��w�G6�
@i�`���܊��~f�B,�Q�|I|_��FV�U�ԝ���o˪#��{^ϼ�D r�����C�K���r�/�<���F����b`��έ���E)譈U�@�.�6u�榎�P.�i@���FBu���$ñ!�~#��yAg��Ta�0�ξ��m�ie��Ӻ�8������] ���C�t|�OnN _��U�_q�s^�Џ(Pò�W��g�n `G�?NW֩�0CL*_�	 ���şd6�v���^��Yl�ՆQD!b�Yo?��ϡ��B�_��L.�(Sv��J�jΔйr����
��oX�r@�(k�V��ݸJ��G\����B)�!,�S�݋���W�)v·�K���֔s�gNk�m
lh�(�zl�!��ʻȤE�3�cb�����Q���#�l�P���}ž��s����FTn��F+v�h�/E���z��L���~�U�b�uC�(��@&o�h��)U�K�v�3�Jt_�[���V�N����䪈ក�Ld/i��!W�W������z�WB/��sS⽴�-ňe��PG��Ah,�����taWMBL�h�S�1���^�1r2%�;=��w�G����Z��[����#D�TV:/�ۭ�c(�����"��ߝ��!��8����ve��W��%�qV�R���vO���g��0Wӕ�����^D�R���h�:��)�xP��Ӫ�l�<�N1.���a��p\|��Z�Nf�JH1�r��Y<�ԞYZs �#�9g�2]L��8��BbȬT$L�u.U_����EF������M�]h�{v����H������)�Y@�ز�Ib4s�Ua^��v����"|鍪��[p����C����wR	���#���v1��Hd�9�b׽/li52��RO�,��[$�!��c���|ׄJ/�OPޙՄڭR�+^j��Q��oK�h��<����f����S! m��bʄ��Ʀ�:�sd�(�����$X�����\G�Pc	m_�P������Z�E%#³���6�����'�����#2��h��Jd��ls�=��Rܝ�[F�"q�	}��u	�ˡa�m��|��>ߡ���^����s?-�!�_ ���|�����7��=VcJ�ɍ�N��&u���Exz�b7��L���g�<�J���/AK�vZ]M�6��&J�"/���AE.���C�����4�d!�Tol{y`��f���1g�oG���3qn�X�
� �����y��p@`���s���Tl<�����˝��߆����RP���h�V`����Ћ�����vS����O끯�L2��S��E�036S������ٔ� 1IT"S]
� ����C��k��~˻�DU��	PAE.W!��me�(ĖM�D�����/W�Z�RaUh�N�=	����8J;Qe�xC�|o|�q[��&�:G���@m�B�^
��]�0�îy�� t@�m6�����ȏ2p�
V���[��D��E�~L�0����!:\ᡯ��]=R�WR .4w"�>vj�sD�+��R#C�>Y�������YF!K9�5E��@��Yu�8�g�e(|�afl�P�깠��k�{�}���z$G�-���ã1�Z���+���v�u%@Bx�Sl�/�L���pbųGWߞ�9wA�p�o���b��p{W�#;��d�;���z&׸���Tr�[�)V�F�����>u!�mV�Tz��l/���.CD^h��Ns�н� X*�7$�{��(�f�N���(�s�%���l�^[Rφ��}�(b`S&�R.g)N�A�|�y��K��fd�.�9�^4"w�E���ܡJO�e�	��$�8<�vl��;��H�eߩ�
ò�x�l�Q��3��*�6q������4�W)]�ٝ�=>E��U�l� RAgȋI�0�}J~)�]��_8(�������Jʷ�������y�]�����F��M�v_W����4�j�Ǧ_J0��->Y=�Gk��NѓX� ����o.����(�����:B'��D�m+ ���v��ϒ*8�+�f%�_��\M"|]}�����Gd;����wʛ����w������VA�m����(���+�F�X�B�#P�j��g��
�}��4'w�.���o�-(�x+�k�"؏������F�Jq�O�E�����<;���T��!B4����c��������S�ZS��b̗��n�#�G�_\�&d	�j 4��ޜ>�R�NwM�����J���2�@½��u��
����*� �Wx5n:��x
�>V�x:J��<�r ]�m�D�`$r�n�q�6���4P��lJ{}V2���:M�~�[�ؐP}�u��^J[.ZG�R!�\�Co,�ݟ�Nq��! ۔\�)�M*]ܤ{2�3��o���`y�<О\B&��4�ط���t�����e�� G`�iS�g:�<������b�Α��d��=�����Hw"����
9$��QG�`�r�S���lT�i�V���/)�~>�z2s�|#@�2 &����o�Rw�}��n$��Fn�E����S��ɧIq�|[W�g����BB���~xg��\V>Яhԫ틑;H�P}�!���2��G��2�.o�t�!��TP������#���ΏdJ1�pR]�n�
�C�k��S.\,[b�:�7�����g䀕j��2�����}��F2�rG��MKq�軳|�>Jϩ������A�IW�>����)��e�D.�
��.�K��t�0ĶT�/@VO����T.��`�b,a����:{�E��q�����}���H/*-�Ǉv�^3Y�ʱ��)��,���� ;���� �ȧ��x� ��y�q����\��;WCtƫ�޺"e�~\L?�I2�� �\�a�؆Y�����/`M�M>����_��;B��rax�d2�1_��D����Di!��=��Ԫ�ͼv���H�:l���Т�K]�C�~tG+�DHo�s�b���&��G�H׺l_Τ^�����4#�&
��V���)v��哣S  @��h��J�D��n�P=���z<�=b1�@<6���7chvX�g��E�@Q��엣i'�`���j{d$�`a9e}��Q�t��������FY5�$���o�&.ϵt�����TYE�����2�(�Yu�gA+L�ʁ#��Ή���[�|��I.�d�㴦;����"���N�����RT���A��@_��:O���;Ǜ�r1�v��)�3�5��g�a�Gt�߿:~�/�26����c����޲X�>��k~m��~_��ңZZ�}�mf���{�\z:���2�J�^��J�4��ew,`Q� ���E :�}�})�t�M����"�F?1�ro���g�Hβ�e�W���_��r�����{Q+��2��T��P����HʢC).�pa/�%��޴�$A��2ɼ�~܆>B���È�w*�U��Pt���5���l��?����W�9mכ̯��y{���t��SY[��&ן%�A������4�r����'(�(s�yac��!q��]�"�7�I�?t^fk�NX��p�nѓ{ld����8fT�+�#�=gN�_�F �d��A.iT)�1�n��f;Fh��`������o�m�s�Ӕ��	³�b��~!q\��%ןh�-P_,��'�!����H+~ �['�L��B�́@�����hY\���x�!u��O
3���p�M�u�>@���,s�E�T�MT��?���F��=K�ir��1/9RB�a$�M:Fщ�t�uNŰ������ȿ��җ�h�N�Ld�ب`h�qأ�$� ㏆�X��[�
��7_���Z*�X�B|�A`�2Gtm�T�������x%Z���F�ӿ���Ȣ@bD-ڔ�óU�V�r!,�'����N`(�%<>�)9�	+���ڵf@��Y��@�!����I#�}���T���#��[�!�z�AwY8��mo!�cI�#�@�Y�s/��5*X6-�t8�|��DR��H�H��4�ʀ�yBL�-*_r��Ţp�ο?���X&������0Fj�&�X��k[{�J�׻��͟[�к,���_2��7, ��z;Ҷg���"�c� e�}'��4�?��e��g.��M+�/㷑�(��P��sl��֣݃eK�u�6P�w>O�j�1������:�ܹ)�y�C����O+/ +�}�H��,��@�rDJ��/�{{���-J����pp��*�+\�Nj��)y+�.�
rG�K���Zuf;�ek���Bhz^���@Pް7$�M����1��c(���ݕ����ÿ,ֆL�'��qc����N	�\6zf�5������P�}V�D5qz�/!�M2���j�~�8+�f8j��is>5���!�|:���=s�����O�Z�"bRF��	&���A��ۼ����{��Ҡ|g�ӡ�� *�!��Q	#�K|c�[(���B �������I�㵲Q��9����(��F��i��,���P���w�����?��j3y�H�Փ��L��hZy�K����hΊy��P�s�Q�0�#�d� )(*�8��/�	�KϱCχ�����y��Ą���r]��Rf$�o�*}�4�:��+���[ix��Fe��l��mj�ȹ�+��1�t�(�������J���Z�=�6��1�ps�W\Ba��_?o%_�Ͷb�i!��zv)#L��}��,n���:����Ĭ�q�F��R���S�PZ8�05�b�y�"ե�����<�ݵ|�6��EzyY/J,i�,Wƛ�[I$�D��_}�u�3'M�;����h$p,�p8s���7�ῂ;v1�����u	;H~Yڅ��G>�U��v�x��h�ٓ�/1�5x��h~�� ��x���W�H&㌑n@���gС�)ld:��ϛ��`�a 7"D��a\Q�A�t"z5�M�xݨ_��y�B7jHe����d-�&��2;i��C���sǹ��';���O�j<^9�ٚ@��rq	uف��H����0D*�	�F8���Cc^Pf�M�<��ø��Qr��ct��%�g��QZ@����-x~˦|'ɴk�G���CH��4�4�/p�a��b�~���pe@�pl���Zoqh���\8MZ�k�rNO��v*S��~�ݟGŖ��m5*tZ�䃈��̩�:C��L�qcM{��k��p%��*T-���>֞�I��3�]��F/�n� �Jl��� ��Y�Y�Q��/��T��Lm��ō��b�ez͹D!�����0rbU���R�Tu��%�Ϡ���ˢ��
���3�fA ���V���,3�� ?�%�BHA�V����[����4��D6HLSS�{�B#�ۇ`k�v� �6�i*�n<z*�|��ǂ�Թ��ָ��L?)��ʑ�>���'\:~l����dM�2N$�� ��w�,3�$�u����\ҍq��ݢ�D�����Gsk�]�wc�
��ע�]��z���̮���~�w��0�Kw�Ջ���@�^0�%��C������6/�W��c�6]����Ja�T�D��9b��)��8y����4lzM]s���71��l@Ⱦ�4�+�:Ϫ����̠�`�Z�:�l�T�4������l��
v!���q�t����Z����}�� ���U���r�L��,z+>�8OG�;k���af��:�� ��7��g����_f�ɏ�?����Lo����}潞!t�[�HE=����5.-m#���;�pݡ�Y���5�+t�<I�Zr�u/�/ev�oP�ZL1����me��.t�4Ep��h	t��#T����d�K�r���#F���#�c[��d���^�RТ��|d+��(9�[�膢E^a�IÈ$n��=)� @��|m��`���b������lY�@�"��L%�T�+i�lx�EJ�y��,�T),�d����#�W��G��'���c5�*j��C{)a���N��h�b$K&� �:5�z�u��=�\���L�a]t�.0i3*B� =�	<`R`�@��
g��d7�J���@'��^��I��6g����ܴ��ac��ސ��a>��!�����ھ�z����h�����IIՕI�_�p�>T�������U���Z�rf��^Hb6�_ ��HRv��tٱ�-�1�Б|[(a`� \ ���~2Ǉ _�U�����Խ�g9y��S��m4�V���X]� �m�dAĆl�O�Ȕ�=�����M���|,D$2
�cY۝I���-��.�Zz�神�?De/@�	 ��yD԰j��,ugTӇ:�~6��חҦ��fa�;�A��^t
ik&P=��+|i
�D����A���	;�U�V"��r���|� *��M@PYz��f���<�	�?��2¬=s�h&!"���Y�!�9'����˴qٹ���_�)�,���=�n���^����%�i%��&���X���%���ҸTu�[L�v��Q�kj�z�OO�>���2��*;�MΛ.�]_6�ʎ���,ZF�}z�'��rq&_Z��t�)��.�k�љ8���+��p,�w@n�:�l���[�u.(����"kU_>X�q��Z��նLe�L{9�F��B�}�Կ
w��������Kap�����7����@�}Na&�3{�!�=+��nď[HS*Mh�cn�Ζc�\�5&��S�en�������d��������Sߎ��J ̙�g&\e�<�?W?A&)T1[��&^����t�׻G�k�P�,9��^h��E��O�[�O�[�a�¼��6�ꞽ�C��zT*c��P�t� ?e��Eflҷ�|Mӽf���oI����E��葵��kW�aB���<�,����Q�&��o��Lo��ǿT�M��<
5F��[��$5{n��ع�:�����ꢤ�3��}�n�Ø��*oF����W�Qjp�|X.$�[# wp�=g^�׹���=����\�ׁ㸗����?�~j��rg#�������ن�Xv�q��7�+��I�
���Aw嚫޽1�(�)�!堙_�	�M��_�����`�U↶[.��7�^t�n�U�)yj�9k�:M^^Vӄg���o�GUU�|Gt�~)R�CUn(�]?�J�?��ES���-�n��!�:��,ϭ��z���f�����m�^�,��rp���W�q�K����f��*ƛ ���	D�MTp�3TW�l�O�e��+�H������F���ն/A�a��N��n4�kwÔ��T�عI+#_��Of���j��D.W���l֬��j��Q�S�ܞkb�����{��j����~p��8e��t��������%%���+�]J(�	��1k!ؕ�b�x-D�h�	�I�g�����sq{ߖg2y�`K��?L�w-���Qy���Ȗ)z�-=�Sc��B�z>MZ�����aŜ������eqga�ټX5���C�#ݔ�3����\n��7z�uP�Á�U&r-�ON�`��ek����X����۱_[@�JK�����#��,Nnh�/���� ͩC��8��l=65s���S��/2�J:��-�)t�/ w�������1
J<O��w�k�ͰV��|wp��%I�t��̓2[��Gt���}	�ٚ!���nEu�W�=�m�0J~���<�*�5�m�zX������ <)=���
��aa��e�X�,�t���:�(����V_����^0⨝������� ˯V����i�ц�F#�e_[?��׽�� �2߈�U��*��'���'�(|�Q����x�υ��zD���&�>R����X��[��8bص;Ӑ7E�
M���C>��&���Ǻ�.+��o�ռF g����J�*�&m'\�x�I��0� ���b���,+E�.��4D�:d�br�ұ��	NJ����.�N�ʐ���W�qa�$ɔtү��	���&�V`�< -4�ZE����)�{N�чg�� 
A����򦐝� uI���m����+�py��-��Q�8��#�u#۵� �����8A��GiظXEo�m=���l@��>��g,ǐ�kv�Q�(>�1��һ]��f����ZȎ$$��Yݸh�G�� \��m�^D�l��w��ˣģ6U}�Z�h��\��`4�@W�-���T���d�bCP���6��V3��;�m<W�Q��&�d_G�F��c]�lV�NE�g�M_n0�do��Y�����0���Cy�Ì���/����kF�?L��r�GN���WK�rxvwh�0��Qe=8��]�9
Q��� k�f�ѓ�u�<��@�A*���q6*iRF~��z��k��-���7�t�כ�TBG���h%^0�u�;a�yU��]��9�,k��s ���}y�<�n�EE�E��yl׶Vo� %�??��E�4tv.}dr�_�J���D,緗���t�-S��JJ2�8��1�fp9��N_��HȲa5��v�R�~G�bC-?����E��_����_q�
����C*������?�2�7��&����<w��?5d,ѿ����J{����S�����A�f�6d�m��Q�6A��,�Q�,����=�Ҏ�Y�el�6����z�Z%^$X!>�����[>k�X�RR�>�t�����3��7=�4���_hx�޴�l��"���6���5�1o=ʢ�`GY�-���v�<���[�o�Q�}���,�42HXAsЁhy����=]T�1܀��������^�d۸l.1rG�M�$6R��v�{ADD��P�֪���$d�5�L���F�����z�ڦ<��
�T6H\$�x�=�?�VWw`�F��`�\��I*� �/䃸c$d۰~��O���N鷚o]V�yk���a,&���;a��R�h�R?��Z �;�Jy�.���0�� ɦ҅��0h���^w)�_9�F�b���`O�"�\���`Z#��R���7��c(f���oF%�pJSod,�G�sX�h9H�a`J�����>��(���o\5�c�igT��I{��@�m�+�&�u9X�ޙX#�||�2���$�b��D(�Tʖ��A�8H�
���J&���1%Un���m���<Sk�¼̰���%�(A�ɖt4YK�v}vfNB�s������S9,�k�^���j��ß*��"��OmS�Q��ݯH]�5�f G�t�lFZEe�s5�|�g�C�I�؜e��ɢ3���}�.� �f�����:�蟭ްD ݟI;�D��O
\�Ў����������	�1)9Oh<R��?@Ƥ��S���'f狍��M�����uf�(9��Lv�p�u迳��@>�$�s����j�� �����nZq�A�]�\�8��Ůs��n�'73��`К:�`��#6�#BO���j9���|W��G��A���5�]�%��9��]-`���3���z���j:@���Cw�rWI<6��5�W�#G�!�jAP��󛾴���e�ҊʦȻ|y"b����䝏H����c27<���������^��Y�#�d�1�Ss5w�Y��sE�B,�(�-��:��X�Y�L�ï�ܫ^�ݭή@�fr��-�
>%'.l�x��8d�8Fz�5��C�
��/Q���p����@�[��M�gM!�9�#`u�W�2��ȃ�MKi�~In�ӌ#���
�\�Z(��U:Q��?]��(ψ�u�Hr�����f��O`b��}Uw ��cD�[8v�Ost���VڧQe�շ>����j�F%#̫P����G6��>�.�����~�������k���,)Z�l�)^�X)���s�M܈���F�O�,�D���)|�Y}�wA�i���r�$ m�n���N���@��� f��Y��nYE`Z�g4��^W}%>���1�l�%�=��|���L�r�?4�$:�X�;K�j�~�Jl٥����|��4���C����QjǦD�,��CO6Ͻ��ո���fx�x�����5ϋj4*�%t��yˢݰ��2H�����-#r7�y�r���8;�FSCӆ5m�0~L��T�*{��'��M{�$�9�>��&@;��=} �m6�bh�� ���?�kM* �r�� �w����g�    YZ