#脚本已经过编译，需要源代码请联系作者：时雨丶星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMControl.sh.x";abort(){ echo "[1;31m! $@[m";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(base64 -d<<<"5a6a5L2N56ym")/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "31c31cd0e02efff4f22b9f54910f9f27" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ -z "$OUTPUT" ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��F�/�] ?�E�h=��ڊ�"����F�7�r6�'�To'���`��80��ͻ
�������~��5�:�8隸'z��q��-' ��H��l�o$�3��`	F�$g��z.����#��b�eDYǩA��T��64@�Qx��at�Ɇ��9��.m;/Q5���n�|�^�X=6(k"G��)][�P�p�����g�T��2R�����/r�ǖ>�vc�]�G���x�H]�<�'v֡w��V�0ޅ��YF�6b�WF
\�)��]�
VR��/(�#����!��h.[���?<�h@��2#IR]�M	�Y���F�tP�Z`غU�=vk<�Rȵ��ӟ�����v��Ĩ�n��r0�f��FF�K�~֎`���cʳ0�����2vq�K܈���;�>���f*�{� ����cS�o�䍞?ɡ�e4��%x�:ý�؀<#L�1w���~4S��<83jfs\�J=y<B!nxp�/��&}��Ƥ�H"�;=�l��f�>O"���%e9�x������k�����"(h�%̱�o�n���n@t���2Po��������B����}-U5�Z3�O�,�("Q��ې�$�{8��@�#�]�G�,NzP�q�٥��Lo�:IR?�Ԛd�#��ʳ��>\�sH�g��O����S��~��uf��U���/6���`��VH��-��6q�Qi�����B�.A� UI�� |�^<�y��%���)�Zԛ1L�G#Z}�U p�<����o]���7��Y�S<����j����hG��+�-p��G��H*���N�72��1�]M1Lnw��б�o�&��b���ΓxT,+<�]�r�%��풡��Q^E���H�s��.	�!X���֚�jU��@������#2��:I���:y�\D�)��q��|��p��+
HZ��l���g�h���̭&�lB�l^4a�t8h�U�%�T�;����<��:��M��Rc��.������[��'�����?,ߩݙڦ�؃�>9�\K�ؾ���=��K���M�V�.��Am���1��=D�V��|�2�=��>bBcc�(��..%w�ɯc�)N!2=*���C�V�+[s5_ð�Z0 z�e��0��������EL��R:lzmdo�F�Ӹ�w�_�tR�(i2���풚��R��-嶰%��~��q�z���[4%7u�3��S���'
c�����(iZ2�K�*)�`8.k�`79�%=z2��;�*O1ʴڇw+�ቺ�~����k�8B�2�W@�(�>:�v�e@���9[~^����d�&h��h����k��<��%^NB����ȝ�!!�*����X��$�`W6���ڤ	f Y��J���Sw B���l�1�T��d���Ǟ�]�,Rkbq����rծ%L�d��0LA��8&���>v��}��c�Ag��fT�2f�565$�=2��M�ڼ���u>5��n���]9����/-����O�i%kw����y ���a�u��9eL6.�q��s���S
�׎j�s�'��zn��嚭�ÒO���/���D�5R�a7-�}��F>�9��!��6��Ͻi�� mE�,�д9/�ڻp�RrI^�k�<ʪ����|�F���_kdݶX���fu��dA�&�Kv�m���9��1�$���5�8 n��o� �gU�d�SZ;��v%�d7���I�mf_�9N"�$[�菤n+v>W��O�%#�ʫ��V <6U[�;w��oi���K��P� 	D�Gx|eǉ���Ɗzּ���q`�1�a}HU�N� �l�|ݯ4(�K��]!���c�2K���%r6��}����-��\�͎��yBj؄�P�͸er�?�X�ɞ���i�3l �
�V��6���4dY,���j���Y6#(~��,np����)�I,��ϔ�W�(k�^��^zЩ�9%�b���j��5���A��L؝rc�HP]W�H�����7�fN��ua����*���q��h�]�)0@C-2�L��G�쯱��>�z�e�;7��]�0t�R<����'ב�<��x���БR��]�[�,����,k���n���8�+���rg�(�Z�Z�[�j��6��~���9�G�Mȡ4D?�9�HaJ�G-�+�`΅��f��&l���'I�.N���$�AO��Uz[A#~�V;ݿ����6��nC��חº@�p����NV��e�gQu4_��x������k� kX���_���O���,�ȦE'�I\�X(�ݜ<{>����� z%h{��8���*y�<$U��Ö�^4JEb~��e��b��&�bR���!�S������Ј"a�@E��8i.�|j��{������I����2��r���+9��e�;�>�6��ׇ���#;��y|����g��'�H�n0�1�D\
 M<NN0MBt�����;c�|�L6h�=ݑx�Gΐ.�Ć"��q<LǅY�~&�26�x��g�A0��%����q�Ä��aG��M�n���gH����Ѥ�/i5\���aȬQ����q'4~������8�oK��S����A3.�X_,�YF�},�GZ/�r� ��W��O@���r��X�o�zX^��}�@�Q�50U=��[=��	�^)ZI<�Zg�=TQ6�OX�ۀ?c���l�w�H�h�}���H��m����Q��R��n��>4FE��:�o�f�V�k�YEw��hy�T�o��n U��
ց:4��ľ��,�I�����w�j��f3:��T����xk�$&�Qi��\eN�]+p<�4!��:��ݲ�2W�g+�L?�&�@|����߹F���s�S�WX�ı���L��.�������"�H'�5�l����s� �7�@T�����C�t�_��@� �Ѥ��-3g��9�&J��@�>Zw<���\E�aMǢI+|Oz����z��>����~��	ۺ��m�R�m�xzdKcPnE����^!���ㄥz�hV��Є#�j�s^w2�-�����]�D��W��3<���<_>D�Y��TﲙP@��+�£!�@ֈu[W�N�[<rA��c�Ȓ>�DA�@kE=w���`4���hnn��K����d���)��I\�y�d�u/�,���P$Y��Mpu�'���uP�4��x\X�^sh�h7Ԏ�d���"���Ϥ�
�Gr?n����-}�%�t��Kw��j�A�<w���-��r"`v9����U�@��?�Ҽƞb�_΅������E��W�)Tq�F�r�&)��c�	�>o�f��o6I��k?)��L���M~~5�Ȝ2�0O�V���	S_B�f�5����`�C�K�M{�ԅ��FMq�7�\\���4�x�g%\�KU'�ǤZ�S�e�f���!������_pKY>�r܃>�c��R�Gc��g͢=�]C�6�mcDZ�M��<��KW^�j�
�*��|�:�_�BQ�rR���+���G��?��oþ�rGb�����P�����5����I#6�V�Ӈ����٤�K\����>�k���N�m��Ŝ,<�*����Q^���YsF
즐��t��[�(���]�el�6}���`�>�,���o��ؠ�&Ⱥ	:k�}����(
1f<�!���V�@������������$a�{|���GG��i�~C%a��z���ds����~a֑���������oJ<=v)�<�i&S�3�Z!�㈥!E�2��m{��h���[�I۱�"ߒ��d����w��	,b�Ê�w")�0�nVO���ѝ�A���p$ v�,"��K�/3�^֜ Xe/��q�F$�M���~�xh�(���n�I���;�t;�!o���S���"d��_E��@<��;mo�����.?��#[��t�w��!eFED
Op��bg*�	���/��;�l�c�	퉕��ޠ�-Z���Cu��,v6�r׏�X?yn�?+�4'b�@F7���Md�ҥ�'*O{;�d��~��,�/��Rg�� ۙ�t�@�g������P����N3����QG�1�-��:QM�!u� 5�N�W�.J�Q&���C��.cZ�RFFs�ݎ��}i�����p�h\kRv9��I'?��"f����U,d$�l��ה7}Qe�N�n���/�#mR�����P���h�<�JdϟN��|��u�6 ���3��[V*��=����&��Y@�p�Pr(������j�u�f߼i�&`k'p�a���,�����0�LL�-����b�\�L4w��|oR��6|��f�P�%�m��'��mu�Բ�����������8�'%�d���R��D��6�gx�q��^\-F�m7�A������E�i�xN�`���mO��K��h<p�iRݾ����~����x ���sE"��Je�Ӊ�G:A�B�ao��B���K��:��<x�5{TzS��@���T�/g6�<1�Θ6I�^ބ�e�9$I��t�Tv���[�����g�	&�>9��%�|��9��W�䂩i�MOb�1C��4�%0&؝��;aj�����)����SW	n"^		t,-l-DM�����9@�.��qDg��Y� Y�\�%P&7" ��`��rQ.G	|)QA�e�1�AH	� &o�b��Y�4I�<�,��� '�e�&lI�4�82����p��8D\N�о=vf61`�d��K��r)udta�g~�[fx��i����2�/p`��w�D	|cN��0�૬�?�ܙ[|yA�TN�؝�T��7�K�НI�${Ԩ1,^�I8$��'j_*9�r��'-IP4B��ѧ�7�L�Wd���ܯ�^R�x����r{I.�G�@��(T���cuJN��!�Q3�9����:6H�+�<�z�X䕻}���g�ۦK�ȣ��lV�d�~�?�vL�|�a��c�b����IMJ��:Ȣf/��"��^��V<?�Yk�h'ˋ�5�|M�9�J�MKT���]��Ů���Y�JUbrBm[}
pt�
�Uh����p+-a�t3��
������\m��6��[��E�j�&�ќ�_��mp����i����@����� �BAN�L4��v���z���n���%���"��&/f淕e>��N`��K=�+��sȵ��4-4i5f���m�!X��X��e܇l\�al�'�^l@�'jq\!9*��&ee�<��^�-�d+��L�x��Qn��=��Z�?�����+;;��s}���|?d�X[B:�<�g��ϕ{��n^q�.T�7�ȞOM~bh�����-��(q���h�@�n�'ϓ�?�J��8>���Y�ػ�g��2��&)
˳,�c������_�`BO{��NǑ����=�PzǓ�I��<�t*�.��I��G6�}��é�Y������=�V�)k�m�`���J���:�U� �������4���9�H^�m��%����V���q�?X'��NRo�����;� �,��5�Y��d�M�Y�ŅctJ���N��qE~�\Y���m#*�g�#�����p����d=�zQ�2*�x�a�E�!?��ߪ�%�4?�L��t�N�б-��d�,Eя/L!��j@��d�m�b`J/��_����ݱ\.�+zJ���`|]�bq��N������qC*����S�2j�AXoJ�xS��mhNw8=���O�����M��7k��r�)t1|��'zX�OL�abO�����_0v��1A1�@��	��Q��cM�	G1�v��Dq��!b+��1����,Vx1��A~h]I؟���c*�1q?Հ5�=s~.���)�����0!��$W��@�K���N�R�[����B�uI���ܼ�z��߷�*�i�p�^m�z,g#�6����6��D�^��z7�f�& t���7E�Em4/D轧Ѽ��E���|�j."�?|�*G�/��;U���^lY�fs�l��z�""���ShW0[��Y��P�\4���vb$"u��42�����S+(���=ͥ� }�����_�,�?ܖ_C}�~� wƤ�� TL�"��b6�5����,�G=2Z�c��Lew�
�$�&ס�f��zΚ��F�c��Gq�<DG.��l��Vx(|��0X�S5tZMm�
,��7v�.�~6�\U�XE2��P�Ic0����C�����bۧѣ�	�{�b_=�h���"}��I�X���������W������ƽR�w6 ���2�*�)F���E O���V
��S�_�T�[B����<WQ�s�Z�Y�ර9d���<�'�ۡ^`�:)Ϙ	U�.B��Z������	�5_þ���$��@A*�"���<u��ݽ���y�ʄ���F�ײ<:���u��LE���W��$��?��g�1�"�p��N� %�%�bI�\_=P�!�]�3�r�Ρ���Dƹ�	��f�}�p�6��~��T۷�WdژP�*�mj�y��@=n�iq<^����`k�1F�o����)���_ ��/p�A��{D+�)g_j��}�����N�S�8��-�'ut��;Ζ�`Z.M�]��C]q��+uxW ���Oh��S�|J�.��[EEW�q舺4\�M�%��^�7@��
�NTޢB?�9�l���ZWtʖ�*xd櫛��%�BY�?�� ?m(���*&OT�GW�S(�q�c�˹���5���>r�`Q.(!�8=��)`V.[+ndۘ������{Q�7-ب���7�OP�<z^E���1�OÜ��#$"&"���+�!���(]n����O����V9�W�D�l�8}��׶H��
ӵ���� �@*2ǭ�" �ҙ�.�����IM&$?��WT��0%��$R�#��| �r�����\��kQk\�L���(�:��=+��4�
:[G�m7��}�yrwU�AUR`�>�e�1�${��ѽ'��T������dT�z
��t�����I\��(D/�Y;��1���_����G�}2��7�=ӑ_��G���I�s��t�B���1X�E;8�ⷘ~��4�6�����`i�������d?�G@�l�.�(�d)H���q��U��|>I������ƍ�8��O��q:�,�{/��^�	��#(7���ܹ�f��U7zU�����[��:�ZoQ��t�����S�_zA��Z�'��_j�nF~m��#�4���ݎ�Q�#I�����>�H_��FD�)w��߇��@詀^�7�ۑ��\Q!��Uo�Y@=g��	�&H&g=�YZ���������JK�����qVâʫo�0��8<#"E�yTn�T���'�h�R���0{�r`�����<>�߇���}�O����޾%��/�׾��Cjabwh7���b�̝�hC�o������W��f-%>ބ���
�И�b%t���>�Ɍ�R���YlM%[�Tv����B�m��d7q�i�ԁ72�����H ^���&����D���`�����:�N�F�r�vQ�Wt�T@'���6��j�7�����{45��BG}�_ �/
�̤ݗ����qdw=r�(�ν��sc�����#U��W��/��Ip�Aq�rseۦH'Z�.A��j��
����k)7�d0r�">W�Z�}7�B���p�'j������zn�@r�nZ�K@�o��F�3��b�b2bٽ�Po�Ī~zQ�TK�:�;�z[�$��M#���t�m� ��P�^8`�(�-��f����hK�kw-��D �[��6�-19�>a�ށ�f9��z�/С6 ���"��HtϊI�}zڐ��t��r�6~N#}��?�1�^��:v7��AA��Z��B$��6��ى�7#�g�*�'�7k"H��c�4�vS]U��W��z�-�p=�����d������Ñ3��U�Cϥn���� �Y����L9��9#�S\��Ʃ��H�� ���"!%"��"�����)��h��p���ܤg��������_����liCI��vG�c�u"�ZQP��z�_~��	|�U��Ƞ��dB/v}΁�?=�O��$$\&����Rr���]�-��X����z-��p��ԥ���^�G����oFT�Ol[2�`Ak
�W�s;;���_Fj(n�H��ֵFyL����_OC�H�Y� �0��+~ ��7U)\/)�g� �a3�c)k9 �/t�����(W_�})���$3"j��i-��F=����՛eBc�	wsͫ��i��7C�H�Dg�$���fQ�*���"RK4�mb=���y(��H+���x]���Vz6�t8�N�5�d9�e����[^R�0k�UR6>:Sg���9옮ۄjŻ�4_���A&�(;Öjo�~i����[C�sWg�Q4qڎ�=v�����lds!��`9_^Ӥ"�P��A�^��ؘ1�ۙd.m�G�2��7�������U�\����8#�wQ7l/�M_E�upV�"�b
3-)��˟����5I�Y${����pļ��.%PuuJ>C�~���.�{W-y�>/m�У�qO��JR��+�)��W�1�kN��iƾ��ٝV�*��G��I�d�3^��@���ǌA\C7gO?����_o��2X-q�l�+���%ھ3�0��\[k�w�^��z[�lV���ܕ~�iٺ�k,��(��8ʡ�>Y�V��.Փ�'�+6��] ��+?������/h��񸬘ɠ*�wlS�yY���*Cx6x�)���3xz��8��z�'�D��s{��i�$M ���aD �[-ovg�P�/&����,�vz]�ϽO]j<��W��K\q�"~����2����t�]h��+��C��v�0 �x&[Ť��Ň�c�'�6�u��PU�@\��.�9�;v`�����.��Ql%�������B�ٰIm0v���IK�˪lX)[�bSmE��?�(n�����.�B�ۋG�E0uL��Q�Lz�Ϛ��`OX�\{�H���B>��Y�9�Z�6բ�Sx.� �����³ ����M!=�uC1��t��ſ[m�eF�!dU���)���c��JŹ��@���l|�U��̩��7�CTd\��U��+��Ӫh�I��5XF.�!�]��Q���_�����Mx�l? C��C� �S��Uq-~ܧﾁ����U�5���֡@G��I�W�ӕ�̺��q����?�JK��U�R�*:ȷ�y���
l�����E��$^�����p��G��t ���(O����jn����,֒�:�FN��&��[xJ�Z�Bo�����)<G2��3���/�2��B�ox�1�:+���?��QJ7�u�s~)�O~U�~�tO��`s¨�C*�P��`��-���/�Պ�<�TK]Y���h� ��|jt��U�	��.� HVq=�c��?�A����ͽ�X����Y��Y�Y�oЩ(f�t�{w΋�u�5��`�Ɔ���t{�f�`;�n-�p�y���̡�Pֵ���jp��f�DA��i��ޏ�r;Z�n���d\l�[�i|r!���0\U� N���a��A��kxՆ�po��6���{�57L
�2��DD��j ��m�6�Kɫ�n5���Kʂz2�lr�/�]TT`K����h�̇��ۂ|�����b��J#��R�Qo���+��Rs�L�S�(6ȩ�Dxmaмo��jw�W���7�ڳ�P>th�*^�����s�ZfRmg]5�M�ǹ���sʭ�@����t:�9�W��N)r�����_��]`T�`��2�!'�d����~.1��|�,����L��w��B���
�^��7�-�lq�@�����z�0)ܔdJ-of��#����K��ӸH
�9l�ɰ�D���*B�� �X��n����
KYyzS+�ٖ��iö���A�"	�Ŵo1
6�f��`�sf=��V�T�+�
,?���Ƞ���5�l?��aힴ? �RS`n�<����p�&�wn����3�b�0&�uv���-�	9>�����2���~ˋA�(�|<�#�I��|���K�ڍD� �\o�,���.�� �+;��
����~Do��B�Qxj-Rv`�MX`�O���~��bAȳz4�;qe��H�f\��h6��V��	��V���\Ǯ%A���W�K� L/\�V�.y�;��d�%�����J�0��NF�����?;�%L��ְ+�|2+Ik�$�JO:�Ѱq�h:q+	�V��LF���f�����65���g�s#7��:�:-������`{'v�H}��>���6�~��	�Ȟ{kf����(ԋҸ�՚�顼�d���_��WԢ,Ri�����?�#��*��v��bw����Q�:o�ԑ���������G2�c�M[���/
��<��zgT����XO�W�$Ctf�
��V�S�w�;�S��qx����:��{�ZX���Y�}��_MAl��h�B�O�1F�-EdB�<>w53�W�'U�1L=��m����ʐ{���?��iG]��[G�g��?���ߐ��ܧq$��Y���"��|v+�Ӫ_@O�/��R?�R��<|�c~9N����%�&�s�Mт;���S��ФrP=����^U�!� Fo���D��h���	�MO�Qʢ#�m`
CA�|1�m����s�X��ta�K����
�еc+���_���ڨ �sN��
Z����K��쫭;LK��x�BA0�W�٥���ƍ�<tfD� S��1��v2� @\��$U?w%�LT3Gun���cA�zfoc��L�]��������[��R�g\��Or5Ya�����W½�#�M���sI�����9X3=�?��A�6ve���W���9��trz8��6g�V6�Z#<�:Q���g��BO� hK����d�� ������5���	�D"2�c��H��M���&��z���� �OJ�%���%gA��)V.� I��؇`�`�I7���g����.|h���O��(9������}j�=�6�a��b�J
���>�.{�'Xz�/�b�B�����v��{L�L^Gȡܿ$E��ţܐp�Pf��X_ޠ	�����k��Jt������{�H�y�Ȫg��i#���S���V!�vsϏ�?7| k1=�_��Y?������v�Y���!���F�l�폊i&ҕsc6�1����|����G�3�)�@��qU|\	mn1�ݢ@�� v�uf��/�Ň�=��Ri�����Mm�ؙ��q��#.�?GF���[�,eq���L�]���̓X��4�V��J<^��x���~]%�cH91�?{=O�
�KX��jU�,�6�%��/ ��r1=�<F>��!�J=%�(���Q����o�7_[�U �*<� ��	�F�3��Ggܣ�d�xT�X�򠜙H�l x����M�f�V,ͨ?�OL�������e��)o��ˑk%d�a18�����]�mk8T��ɽ�	؏�K����TK���/��Cۦ5��H���[��o>Ey��I]��q�\3����^�0G`VbM�=�/�����b�T�h��a�͒-����1q �^&��|���)�R��=����^�dG���hM���cǦ6��?E"�j�t].��� �3�2F�]q{��߭5Yb���[}s|��0��yC�0�P��8Jb�J$q��cñ����
�'z0��3-w"Uz ���S���h)Ū�z�޻���D�׬4`f�����W����y���)��)~N%*���|�[lB�{{�|X��-$��~h�k�k�0%D5�OP)-�|R�R��1M��hv�*����a����S�][�M�������_� 3���_�:�lr�w^zV���=��x�>��y"A�~4��
,�<D��	5���ǳ���R!�ZM�A�xX ���d�D.��)_�?��|�(�@��2���B6���+Q)㛌t��_���;UT�)��q�R��@G��ֶme�W�x/@` ���]M�2 �_�� �D���g�    YZ