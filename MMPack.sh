#脚本已经过编译，需要源代码请联系作者：时雨丶星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";cd "$(dirname "$FILE")";EXEC="/data/adb/TimeRainStarSky/MMPack.sh.x";abort(){ echo "[1;31m! $@[m";exit 1;};output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";sed "1,2d" "$FILE"|unxz>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "6e87d38becb5d443c80872a25bad55e8" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ -z "$OUTPUT" ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit
�7zXZ  �ִF !   �X��\gE] ?�E�h=��ڊ�"����F�7z���/5W6pqm��F����w�a���ŮwB씉�BR[��B
��p�K���a�S,/�e`��E[��p�+��*�6}zI}�2cӭS���`�oVk��~!�a�N�V��C/�[���Ld���~���-�,lv�t-�}7�3�<�'G�_���n�:��B+5�CO�u�@��Щ�!���MZD�Q%�/��[�l�Yw`i���+qB'��
��kZiD�LT��4�P�ф/}�Z:�ر�oS�!6<��"H��#�4�Z�@$���M��l�d�ۮ���:-�ANFH�8p�O)w~�R���6JV����w�6c��E+z`�����F��i�xX���_�L�Lw�����W�jd�϶�9	L8�U���K;���ʀ�mX�d_�(�0z��W��jl�ZAV	�٪�����_S��yW���t>K���vy]{=�l}��*����b�OSp�	�79@L����c�ǉ��[��ا �4�^���
�WS<8��LJ�]�ݺn2���B����+5��
��,,*�I��G7@u
�@�]�g�����Vw�e����<�El7�
Y��s��TA�Q�.���J)�^<�T4Ҿ��Q#��1���-�`�8�xp�D�_jbC>ZU�o���i��4�yh6y0���V ���Fkn��$�w?��O�湥]1k=?��Jʘ������
P�AN�۽�/�}8k �3��3�+!1��p&:��VomkR����{�C�	Z�pJ���x��J�w�����>��Ɯ�!� |�+������Z���A�u\���-Me����6(P�=���{�w��V����{5��11T��pP�-���?M_T�UB�3�?<�M�
�����ꬖ�K��l_	!����ow�2D��8���$5w�|Z\�@P�ղq�0���/��N��b�v��έ�$�7����{y��5}Z�Ԭ��l���2A�fZV�PT����94���A00�R�g���B���������c���0����G>���SP��"�F�)�/p�S_j���'�&"RP4.��lU{,[�!v�wEN��Xʗ�ޡ�эC�KB}�u�maO�9W)��0?&:^��'Я��/^:u���ϫڃűb�+ث�^mW>�ad1�k�aU �H:���J-́^݇�d�����t���!D�W�/Ec��#��0*����K���߳Ι��aqp�-b�p�2����W�s�ZO}�u5P����ݡ'!�8|&�_Zz��k�.������XJB<=�(�b7��/��x��mL
 [4�����������-���bϩ����3�[n���nM�W˟c[=�
���C���wX�e���_�7��}b{�|X��O��id1��$K�6��k۴��d)95�B3�����(�����n��D���^<}{)N[488FސٳR��q�%�gT�(��V�H�m�c.K	 �R��K���"#$F�m���O��\������i���1�2�X:y8�hwS>F͢ʟ鷏{�Nf���\i��_���X���t�J��m"�U�1�&ߠ�V��d���8�7�fC��h2�DD.��� ӱ|���Dh:�g�"�\k;(S�J�����+��ݚ(V�Q!�ќT�`
��c���,���\�������l�T}��_R����s�y�N��n⊵p���7#��~�aJp֦�ZP��v�����
-�}F�ۆ����S8?}���H�\}裃����.AĻ�!�G��H�)���������CR�m��v&<�s���]�?G��
�L���5�T�{Iȟj�V��8���㋀�����!�#�X'�Qb8�������~mQ_ ����(���/wځ`-�ek�*���F3��4z
1�O����Z<��in�X?,CMk�$2�3�*	�mP�g��U7������ �1�٢�)��`�3�o��.lLdUgvv�&�D|���*�ee�t\��y_���^�
WdՎt�q�ΞE�Y����0	�ڻ̏o��m�%�k�������5+�n��6�K���,���e÷���c#�`w%"���`��b��U�lt�be��rz�f��Zu�a���č�i=�\Y�����P���)N��!�jAeL��`�H+?>�3MW��\\w�:��P4 ����?�Z�1���fl����(����%J��xcJ��� Z͍�wZFX��y�o44-ݮ��a�5!P��BВ��KЮ�9	 �ߡ���Q2i����q�l~[8��-[0�Κ6�oE�����/�+#�b^�@�S(c"}�r�=�ct��
���������E(&��0�&/E�rl�Pl��w�z��:�J�q����E��m]ĵi�E�Z�;���a�k�&�C�ur^�p�p�ӊ�N�2�cG����-��#��:c�,�	da�G��0�'�[��?�v�\�D�Z|�Ҫ��	�S������#.w3�R��\Lt.}I1)}�л��2�S������*���]q�-H��*��*Y{�r���O�K��i�Ua��o���T�3T�`*�1A�W7� ��O�Է@����W��z�k�?��� y�G�G���)f�Q�\�d{����>�̓�2��E� ����|/�EM�YJ�;��`;�ߧȢ8���֪|Z�,�-m��-mXX��XN��x��C�)��⤤���b|�c�m�f�C�vTm�;mdi]_Y��=-R����ώV��׷$�&z��^�DPu����f���-!v�޼����v�Hn�u�]tH�`X�09'�/�Ah��8�Y'�4��Ćɷ�ol<tn0�o?��" բ����QQ�kH�(uR�j��UmG=,Vi��ý�ܣJ*Vs�{W��ɦ圳,�[/׻�02��ދ�ʥ��=0&K�5	�5y��8(���P�{���5�� q����8,:�ţ�{[\I��x�=����S��'�P.q�\���Y�y���a[LmHke|�b�Ώ�.��r볎w��VQ����d���M�hV��`�L�P��	sc@���:�G�fDb:�=�и[�:��h���(L���%�L�j��讓�����g[�9�(��O;�.���}�9|	��ԧ^�@�7�Q��쐟�_v.�\�;?m�4�xN�IMk�����_�X�U�;���n!�_V��,LBDu0 %����.!�v��a�B�A�ǥTO]����(��{퐰3r k������3B�(��i���9\����!t���0E�w�7�Q�qyT��)����ރ"��#�:묢B)�#U��PL�n�<_�<5m�,�[]��C$
�+QFR1f#�b�
�)��	]�T+s;H�4Yd_d���l��?�Ƅ�|�R����ӻ�|Ƚ�͵�D��r�:]%U_k�	=�~�K�O�} h!z�ʀ�%���bg��t\1��Ǵ�~@�8h�tڅvr#ָaQwfV���o�@J�TJIq�
��6PL��]�I#VM�{tU�F�����P��ms�A�l�(	�9Vz<�.лPu���v=��Ba>��Ĉ���Tq��tA��q���G��`�u�T�i�;�g��3�����V�:���{���e��w��=~_+O����-�'7�����G�m���
E�r7���9)td_Ci@�<��=�c%���?���NOl��YZ��|s���o��RSn�t�um�%���%�Q6Y	��%��OSm7��_ͼqG�I���'��d�F�Bz�=���㷕ע�{�!����MJ��q���R�Z
֚ғ����$�Ƚ%[��ύ��׸c���h�e�X;��͎(��7!{TM-�5?(����c3�r�eq>~������%;ҹw|;Y��pc�Ta@_:���5i���*Ģu���8(�,�+�T���&�����qϣ>0�_�u�7��_	Ϝg��tyc�R�M�x
�<�@���!��hӤ���9:�����G�T1dUn��0�x��� �$����1�+��y�|Q��`�av`J�9ا�����$�d �"�A�I��!��^����kS���CE='c��q�	:���r_��Dy�0�q��χ&�.��N��W9�@<[A�UG�rE���i�bc<�!u�b���ר��5�������6�����\��0���q�v�P{�(�ۀ��ó�y�K���\]�r���twsm��Y�Ad�7��&'.�_�(k�LD�u_��N�e��"jy��� �9�2n�Q���ύ`b�f�'U"�R=T��ͧX�$�v+��]�����7� ����ݷ&��As�?�E��v��=*[��Ϫ~�1n-7�q
+�O(���ޭ���AiY�W���(Tɬ�=�]��0}�1򺎐�K=)V��C�����E�*th��%����(/~R�����#���8X,��Eri�t��4({�rd�q�`1X���5�ラW�ĢO�� �h��k��{/�Ȏ�N����Pre5��э4�6�̂�����|�o+��}�ĺs�6s���~Q 
0f����x���4�����rH�:t^E��?V�Kȕ�\6��-�T��]0Y�s釱�`��@ǫ�F�	��b>�u�a��w�j� �#6���+�x#j�~euv2�f���ye�>4b�`��2Ҽ �f����+f��x���i����AY��~�/��M�\R�Z!T�t�zszp�E�]�����Wrc�X����M\������j9�ɤC`���s���bT�z3��`��A�=�;nc!{A�UUIvm1pq�O�ȼ�c��v,�G=備�E���VF?��6��֓�7�t=Pl��tƥ�-iI�j/)=�ཅ�R{�ń�cO�n�s;&=��Ļ	ۯ�m[�^�rIJH��C��*��������:C"����ޓ�_��H�en��TiTLAٖ��|�_���.sa�Hg���͔�p4W:	ĳ�Wϰ;��Bd�GWL~J��@����4�cC����k�� 	�X�eUR|�gF���u�P�>��®��y#C�S7͟1$���ioCO�s�%B�<�(�"wv��9���z�mWr2�Ͷ�/���E�����~�����D5A���QbMl[�����P}��H+B�U��^�q[�E��l����"� �*y(�*3<NSY��f|������'{,�Ǻ9��!�:o����oSXxOB�qE{ѥ��C�VF���0Ni���Ɲ`�>>�N�'s���� 3�Y ���d[��ԄW�@���XBcG�v[Z�f �5�(�<�tͬ�|:OM伴mH	��]�8�||,�X�}��f�8J��1��}d9j7�~�v7���8��x�����帔��(I���=W��6�},�T�fw�Z�J�c�cӉ���Qa�1�B��^K9:�{G��� gAg�@1�>�uۣ
������~bL��ب��U(��<�c%1�����o��K?9�W�8��# �I���-�{�"�<�ʟ�������.\�{��`�O_� I�O�Fw|�p�Ƀ�N��H�Zq.ZLZ���P�!DI������%?��~����jM��M�|n�)�4D���L�l=��q2���[�v�ΐ��n�bb+`�5�aH��ߔ���YYV�y�lJ���q�x�����c��zX*�n��w�}��%g�z������t�_	�d]o��C�닏���I� ����k�$&���.���K���h�o��E�zI���e���]�7�:vj	� �i_-R� ���JOóﻞ����5���fG� �fF|����ee��7zg+���[��!_�H�{�V���q̰�Ia� {��k��Q��~�E
��n�*��_�ao5T�բ;�9�h?�(����-�s;Bx+�Z��|씲�����c��*���w�i��B�%�*� /��q�L���R!#xƫ����U�t4� |\��{�����Ko�ݦ��Xu�&�H
R��n�i>�B��dX5Xz���ϟ��q�Z�fb��Ɔ�a��-�����3dd_�'R�?_�p+���-ё���$CiVUf=\"�9�;׌Q��p^��ΚB4�oU
�C���B����[�	��}�ȱկt}�����C!l�o�&��/&1CZ�^~�hR\*O^0�S�jn_8� !ؓ��R��~_C}���71�Ȫ����P."��]W�j6��j"�mG)]yD�N~HT��Y
�]��{��o�s� _�Gi&���Z��R�0�T��$�s��E`ae�^PN���UX��+�/�ɱ�t��؟MZ�N�d�|V��!�4 �n<�v{&�/:�9;��qiEw�����Y%�: �;��<���yJ��C�Mp��!��C�ڥ�a�H��Hb���3���0��o�X'��ll��B��V=L�ZH.����ӰR0{3�k�cnE���j�g�
��x]����	�x!��'�7�Y@�i���`�{o'"��H>w���*B�	(�g��j���:<?]Z_�:ں8'�>g���O
�B����F���B�3�/c�!�.mŲD����@	�ꣿ,��ݜ#y�j��x���H%�c�IMӅv���+������F�U�mz^�Z^]��m�
Pj�&E<?3��<�e.��~N��{m=&����sh�Z�/�O'q�	ч�+��a��X�D�k��J��7�K� ����[;�w�A�j�� �d��U���v3�W���Oh�o[e1
��SH�g�&�VO�!砒���-�{i-n :�ةφ������)��/�x�ɱ�q��!����f���g��#8�����t��9ZE1��z����Gp=ѥ��!4;ho��Djǁ�k�fo��O�i�s�$
�cAW�flg���rH˕=��#�+�p��A;2g� ����a��/E�;ੇ8�"W,��c���Ũ���mwe=%��k�9̌!���vX���߳2j(W{$KoC9��IL=�S�칋��m�������c����:
ف��1���{}c_k�;��U�
	Ճ�s�
�Lb�7݊�i����4�xln��b��ج{j�7�r�
�׬N�;g�m��~�m�6�E9������d�pR�SNR:��K9*]��?\��@���BJ'���"��6�ab�̇�^!j�j�"f�ӂ��Uѳ��/p�଎֛$�z��p<i�0���
��(W`��̋��H��\�LUy�,ss8�SJ���o�վ1^/�)�4�h��;�lLL 7O�!i`�#�N�=B��čցoа��yt�T�b�d��B�t3�>���y��]�eଂ��Z�S�
����P�|��t�p���ͻ��9����s��+�J$c�Y�]�.�_����STW���JZ�	u���4��a�)X����;��B��[0�kq�����0J�I���͸�)=\�>��*�W���5�Wv��a��wp&�Ěli9�Wm1�#�2;m��Z����U�p�t[��`6��vB���z
0AJ�1���2�X� � YnU�&/��*w�W�۞�
U@ƽs�G��\�*�ːi���d��5���l$Ϲ�j�L�R��I���2���|Z�����Z�_�K�.��=[h�����2����� �1ƯQWX�uEDy���+P���%ؓlGn���e�8�а RW
�&Oe�Z�e�$�n����G�ԙ�$YfH�\�B���t��QU���&I\�{iQc���5��=]Q��~�����b$E&s�)�&g�B ���B���p4��Kʟ䢹�(H��
A�j�>C���ƴ��PT��M��A}����`��х��E��{��æ[Pgܵ��vh��R��vil�����$�?�fQbP��.��5˵|&DK���jPk��!�~�����>����?��a�3�w�
^�2bW%���e�ψ/=�<�d�õ�De�a�~Ι�a�
�e�8�X5'L�~p\�k���4�+�;��{4׃��4/N�]^�Op���`3MԼ��sU �t�c���U��~�D��hq��t����k��I�X�[�.@�O��ȑ8�������{T$R��#zQ�=�����̊�^�4�M���]�3�$���2/"rf&�٫&Xl��ӭ�R���Fzקe�:� Ӊ&�_�w-�&�NRf䬺Mc�W���e�ԃ��"m@����߫8�02��9��E���
m��|��ɜ_%#L�!F��E]���c��؞�(Od��y�&tz<�!0��zR���ҕ$)@�k�V�e�������m�K�H~}�;T��=�&��`wNݓY���gb�)b���zuM`�.3e	j��j*���ݷ����&J�L�'�(���֖��Y�M��|��D�('��^Ǚ!3GC���E �o����a�<!��٪X������u@��f���'���"��l^��:��� Gȗu�@ۛ�=|yF/H�e�G�����t�W>�r�'�0}��&q�>��С�"�x}  5����JF��a:ˑ�����v�N�М��]-���n��@z����~*$cpxb���E�`�j�����<�ǉSX����4`��x?��=>?Qt=ױ1��x]IOzd_��J��3��[I�i&����7*���x�	�S���@�|y�w�)��>��B��Ս����+�X1��9�`�uŚ��i���{v��v]���U�d����_]�T�!���bO���U����~�򭥳"��];t��?��/ơz�'�д������d�	�p�IY�е�{�?�v�g��Y����o���!�y�(b�M��v�3�kK�<k�T#�WuL� �~��gj��i�Ix;�6����YK}O��r�<ȹH���G�7�=���]S'��{�$c��P_6W�5唶��(RO]K�WP�).L&�	|,��T<FQ�>m����|- ��D~E莃�u&�%��.��}K���)��CQ��7����G�v�L&�=�`O]E���0����lww��S@>���g%���<��	�$K�
M��D�S�*������
����h~E�~�P� ��f�(Q�F�z��,+��1cG�pif��>�bG��jJX���m˻*<����?�H1��{V�B�[�$�TRJH]IQ[�B~So5bE]���DD&2� u#���dz����yN��0q�J�1#:�i�'������_w�UH��Tw;�L@�_aL�?2�6[k�e�P�g:�G����ޢ�wJ��eh�
ŷ�%�FoX���� ��s�8���VVD~
b����N��^$�q!�����D%��F�ZZ�gƕ�K�@�����R(�C��ɞ�CJqm8�V��C���d��H�U�o�����m�kk�}��-_.�]��0�<�����hҐh����|�2�,�PR|Ld��[�fW����Ax4�����R����}�n�C�!T"�E��[�ǩ�l�t�;�|���{��m��������4��G��I�s���̙8C$ݮ���ϳ�&�]<�g�F��2�ǯ=�}��)�/���	�ZPi�_��Ο�=�B�D5�1���&.�R��>��1���2P�S��\}���'YZ�Ԛ�K.pcy_E�l[�ܚG���Ƀ�����ʎ~�D\���)@],�D#��h�Wɩѳ1m,�[[�V���������3��ԏ�=��!�[
K}Ѡ��lط�;L�-�9�r�.05���A2e��M������;b����K+��Q�fv�7�˨X��`7\���;zd��A���й���ZMY�U2��0�Q�;u��R>h]P�Npڅ�o�+��e����l��v��@����u�����;��*@��J~h]��@��0�);��ſ]Ǜ�N08H�o �b6��-Gb0�V7�� p�T�!f�f�=�3����H��ֺ��ݰ#��v�x�����D�j�����٥n�f���䥮#o�
�Y�B;�9�C�<�%$G��Ff�I��JNLp'�9���.~�Ve���D��\�,jߴA�8�\L��k���#���U��l����:(U�U÷	��_����m	 r.���ؾ=��u�J��ȳ��u˳��}��У�O���?����GJ�4�^���wj�É�m�dW�']3�eM���u'����y��v��Dr�K���.m���bPd����S-��f�����O���\N�ʺ����^�3��q&�1�`���g�wĘ�*��x&�� ���%�$��^������ڸ����J`l��E���,��6��JZِ 4��:�t`�4�x-S�����l���#�Π[PLm�p���|��<��Ե�ݨ�wV���^���\p1��QW��"W#:��K��<W��)a6����+&䯼��7M��T���V����!n��F)�۩��:�!�sK`p��g��z�*�D�H��H+���F���6� ��Y���eD�W�E���*K��w��H񓷚z77��-Yf5�`3b[�A��В2� s؃f*W�Ѣ8|g)PS����i��sz��;��$W[?x���k/�n��zv}Ƥy6��.X̢�>m��-�����_�̪W1dlG"�[[c�`#E rfax�;"��4�f
h�^:����Cb2��q�`{����Mi�w���˻r(Q�|���>s��ڔ��F[T�a��}��	�	ԓ!]�%B�14��r�Z�կ�����s�=�6a1��'F��'%WR�d�-?�-�� �-���5V�#߇���T�#� X�4�yt�A�<����� �3�.�H�/������Z�A�c�q�W��)�Y��k����ҋ��?r�uu	�.�x�[t�!H��[6��7)�k�c�b��ve09��e�h�-��UeΈ��Ȁ=W�9?KD%�^���+��}��Lb��)�C��)4P��� ��_}I2�)��J�Ë���X��DVGar�4JY���)�i�>�hT��9"�_t�Cɷ�M�D�vXf��$d��1I��)viװP�U$s�f�f��>��o�o ��>j���{���ق�� ��:��@R����f�vk/��Uf��TqY����%8����n)X�Uz�u�W&crq�=��p��0��vK�xyÂ��՘X���}#o9�&����#�g����E>����e�Ё7q��I�I����B��l������&�u �(�黬�N�p�K>,���"�o@������z��aR�=�Mf|#����ja�Nr]���ᾃ*�Ɠ��x�Nb��u5mMC���}����cD����Vi}3tF>d�&���V{�,^�p�<8�"��X˱����R������5}��<D����Q��V�?�t{�N�=�YP��1[�Z4�y���}��~].PGgy��ܖ[Ǿ�������~�$�1Ҏ���ʅ�R��@ջ�0@� �J�E5k<eYx�G���o��RGݱ���o�%�X���/8_�����l������u�0��n��Q�LiJ�.�0.+�@���P7 ﵬU�bE�{�>��;ԥ[���Mw*�Ѧ,Ķ�gP���_2��S���8���oBx�u�S
��V��^�Xoe������S�4�Z�P|��y/1�Xن�j��8f����Y֚����^�یxP����B_�)cΑ1��}^fsW�J��R�
V.q��/�� :�n�>�ע�~����(ѽ#-i�R�AF�hP��g�PP��q9ml�\� "��R/�װIH�
f�ܮ�QA�§O��hR��bw�z���8J�*K��)a`�(�m���Ӂ�EY�ށ�:�	��4�'�}FP�7�7��,�%�W&���k���R�A'G� ���L���sfs�Mm�����r�S��%��oTY[�C��? ���8��ds�H�g������!i�|	A��.�\6]������Ma$�B��c��v{X ����#��/=�o=M�m��X�5�-J��#��_x������+��M,�%B>�*@�8&��5���K\=�T����-~��Ky�����U�Qk`u;q�7X2����t��:��D���ęhk�I���1��z��5�FɄ�ZM
k�����w]�C:����Z?JIvu�P�ه��&��;5�RK�ο��jK���$�YE~������ܕ���K�k�9ͭ=�+f�&�a��AC� Dp�	�uu�A9�����?�*�����N�;�6A�p�� �������l{���>�)�����$ۜ�#�(�NAD:Nu7��:�e ����o��Vg��l���~�R5��7i���[#�Mm��r�lIۮ���za JQ���,� �!����ȳ��j��l��NIB�$��m�bm2�
�Ey��~Ţ����'�LLD��H�Lw�ٮ�y�����@p�=L������'��N�I{�B�`�pgHo)�
Kba�b����Tt�2a2����jUǜ��ӺN�D����e��NU�a�f^��x�n���kK>qnj9J�9�rVP��?����*T*,�n�ɟE#ͤ? �eC�խ��u�8��vǈ&b���&�ء��>R�xJ�,��>����t6^R�!1F?�����m��(�T?A`2�e��T��;/��3��˭��a�����Pd��b�n��^$�/�s��8�9�~:�K���+�@5ݢ�]c���	/�9���� h�'�[�+�񁖝O-��in*C)Z;�<6_��Z�{��@<G�[?X�-�c�	���^��D��Z�$&]��c����'"�H�ڲG`������#]�ސC\B��7{2_()F����^	60"lwk�)�
/6%(o|f�����431_:hg�:T��&C�?i��B+m���SL�OgŴ��حD��E�	�\��w��1N q�\��Ҷ�'���+!�e��jT�@�6{��^>a��i�87p"	K%��%������i�KD��$K�(X������bn�P��?�h�Rt  ��ߣ�������oH�J0U�"�J-���ڪ�p��Z�8"o�w;�.	%�o�Ęv�$��Qr0I��2�E���͌I�O���uU=i
��T�a��l>N0E}"�d�w�v��o���ϝ��C�A)��RR��������I-�@T#O�f�{���ᨕ��B�_a���t+�ic��|>� 9̩�E7�VM8�.�Ο�9�����T�5Yq��ՙ���b�¼ �x���)}[>�*�]�Б�+����m_=.8�r�,*�.�ʜ������6�]�yg��/9՝�09��B����N��_zd~ĲԵr�t�rY�4}�%�6�@L�����f��Y<���Mы��V�%Oπ��a]>�2j~Ht��gS�Jp�T�����-�S���?��y�q���@���;y�OEJ49��̒�(S=�$��hD���_���'���p������B��|�+<��?!	�;~�BW�����%��[���A6���� h+n����@9[m�h*]���5.��~K�3�^��+G�$F7�Y�o�n����\|�GN7p6ԧ5� |����M�/^��v�\(^� }�v�r�h#|��N8�a� g&�Ф�����p��
�X�5����b��)y޷~������0y�b�mQ�U^S1Z04�?��v|)�1AlбrD�"����`���r��<��>�(�X;鸀� �����ڷ��{��@�[�G�6�Ye�9ܙ@�'&�R[�|���0����\c���9��Y�'��|`���1����+ʍįw��<fx�� $²x$hվ:�u�e><�������"���#��D~�n-���t|��ca�o�"\GQ�B���4޴���.o�L��WS緍X{Z<@���s��z��� -�J�+�S�I�꼿���J��l�<��ҶhH��v]���R[l�Lu���f)�$������a��M�{PL�D򹊾ED�6�P�W�4ȟ��\�⬵ǎ�o`4h�7�/�F�vUx藨ȉ[2�KB�A��ֹ΍�k�)�t].��S�`�[u�`�	�[�H�Ahq-�)�5�b�Ԣ���:4g�-���U�s�DYom�L�<��y�fZE>������jfl1H��t����ތNe�i�r��"�� F#��;���_'�q�p 9z쥧ȿ��ĸ}�˭y���}d���Ezsr
���B��ϊ%��VI+y��2~�搙����%����<�=�`HUu�K)�(��$7�1�Դ�����|�L��W���|�����?Z\��n�3&��Kk���R�e+g�� e�WN�'��o|G��Kf�D�8S�P^���o�Ǩb�p�h$s�8�	IB�x!��4�D-Iܔ���e��5w����R`?:��7X-�_1�5�.�_�~-ͽ��;�)2b95#^��x���B�{�����
���Ї�iU]��~G�AO{y&U�8XkG�����5��l�s��2Cͪ�<�gL���h��i%���5Y��]ι�%۽�-y;�X�<��K��} B�t�e���l��|�������l(�]#O7���������$/�0��]ԱE��
>t��S�m�2oh�����#�[v�*F���*P�㉴�d�`��~�)S�L:����{�$�K�uO$�%p�)&1�L�H����3�e�6�+��>T�O��3_�t�Jb�U?�ƭ-<L�wi���҂�Z�1*)L+9 Z�dz� h�w-�a����+n�k�/݅�¸J{��G���YB�$+���'���[Z�8*��+ۡ|%�9M`�^ú�q���6f���YP�xF���4"\!�S��Ey�fGPn*;yC���
���@�QSocbP������V�*Vб D糸�.����c��h��3���d���wraE��T��D
�,��D��_�o}f�dI`�wR����㲸�(
z�T��?�������΁�y�.��1���}����|@}�JJ�"�c�HC��Ab��A�<�J�[}�8���{Q�ӂ:���Z5(#���d��/�������wCu�PE�?=hWasݘ�o�D�p˕�KTD�b�27�f4�畇,��Q>WP5U��Iw=Lg�a�ҵ�YG��v�r�ͶB\Wb���e�x��ɍ����h�/@��Z��	N44U�� g��榀��B!��&�W���q��ōI�*?���D	X�]ɒ��P~�_�+LB�z��M_����k���<R!�Ɋ����hm��|����F�~�ޏ���m��X�ZwA�O�m��>�	~QכO�ȋ_m���IS�k���	!
-[��A�%ʵӬn��>o�@+i,��tGg�+R֢G�����` Wu�Bkx1tm�j
�Z� C*t���p�zo4y�a���g����m�������f���>���~��\����fn>h�	��.ȍ��=g���?Y�;	S=X��bC�7%�t�]�T��	t�1��i�?��rE鹲}N(�Ç�[7�4�n�d_�g?�b��~|�eЫ/̏��*�mք�ق^����E�	��|j9�ykG�A�����|U��[�v4'^�Č�k\k)�,��c,�xR����"v�Kl�<i��{�50�l��S0@�#x�n����݀F8��Srl���>l�0e����pl=�ҳ���M���OIu�70��I@�o��)�̋���%��8�����-���}�~F���� �������ݳRw���G��x��ַ+��t9�W�v��m�����6�:yw��!�K�e%C�g���
�̒���RNW�띋Ώ�k�#�/jJʝ?+��p��w���2�y|��&%y���;y��*MK�?���7P�9�X��y���w[�M��Q��_��.�f��jn>A��f�K)�_��D�?5hP�t �����ۭS8J���*���za6���2� �?���:���G>-����n�Y;�s��b�/�zN�~ͺtj/D�֦ł�%9�C_�X��w�l�q���[�@o%h��`ӌ�Kǐ��<�4���|l):��፛!��B�*[K�e��}���6�+�P�d0s���wD[��IEA#�0l읳O<6�vr��|�����_>�ٓE�*M�4��QG+d\�Q�Wᔛpfo�
�{�< ��pބB��x6lާ��V_�>)Y�.�"#�V%X�U�st��������-��M�m[���k���j������e��.p8�i8������D��5�[�[@�*tx�{��wa9���D2i�eAH8����l�������L��]������2�����<�2��E�b�j�׆�L��b/�|K�"�H����3Z���C�T�+%��2���v����'��|@M%�@��'χ���.0Y?l����؄�7������ձ�����x����B&_� �M�ҽ����NB���k���회&����E��ƑWX�y��n��L�J�h���ߋ8��1=r��=�����輭'�B��)�D�NȌ��q�a\:&���d}��U���Z8�~�r`�$R[J��/r(A���c���nV���_����f�sp�Aѹ�e2#�@=X�5X:J���#��~��
�w�Qs�ͭ�Z����y�yB���]�ad$j�y��%b09-*�k�]��^�$�9=���v�y��-�N��z�z�1
<�����c���,�VZ��)ʉS7d޹I������{�4�����>�k���d�h�I���H[��J��4�)�ZI�wn�SB���DR���0_E�d�#3�a��e���ER���F�=��M�H�*=�
	�Έ2ΐ�?3����#=^)ԁ"r�������믳��d�7�a��U��n�8�~,��E�熊������f\����r��l:P$�B�%S9�h�(������h�	�/��')X9��S@z��Պ��`���g���K%D�i����»�-��g+Ù+N"�N���Ɠ�I1#9e�ȣBrp9�����+�[���Xn����Z�n�:]'�Z��oW[١j��m���,���O��^�у$�j�S5���� N� v���_�:��Qƅ���f��&����g�5���D�E��3���{�јx��xJc����hF�Sx7G���
���#AhL9�����}��h�mmΖѯv�Ԉe�+Sl/��_�c��A^R���E.�����a
���mLr��?�cO�w���Ģ�b̸ipe�/o��+�BI��E9K���mV{�� �BP	Q�' ��������g�    YZ