#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYR�lI ���p�I�����������@   !  `.>���`ۭ"�{۟a�.��Ѿ�_ �ϴ6}��}�}u�⾛ٽ����ͫ��jS{���6��}|sx�mi]u]��j��k�u3m��s@룶#�ݱ��C�Ֆ�n��y��6�n9��#F&�������56��2�Q��SM4=2jz�H������A��&jbjm#	�M  h@ h� ���
ze6P=@ �����   j$�$�И�ѥyOS&�3I� =���   ���O	O�#F��)�m��~T�S��M�   �	�  ��4OS d���1B�I� 4hvM���H#�9��HP�!=gO�(ɕ=����/�࿇����Æ_mp�F���%{��9�k�]�����Q���� ̳��+߷>��,�b5�l�#v�;� �)\�5<�ɁR��0﹂�2�TًY:bD�K�_}�wh�858�K`�Կ?s��ɖ���A3y��4<G!ux@��_�P$�G:�͈���ۧ��U�hYmG9�\R��,�!�x���%U�>&�����L�f0�֞U�Ę7<�燫˭,;��浣GӲ��BL޾�;ԑr�OWD�ҭS��mr;��V��_!T/1��!H$c>���1���]�Lި�����I��۫��j�"��˒��NO�Kv�'��e�ۡx��Nw��t~?�sY��p���x-$��bV��FF��Ȋ@slYW��_n��ý����(�T:�?��rX�"F.J��^�<��q�W�v��@�HX�Dp٦���,��k�H���^,�;]��UF��Q�����n�	(D��:>�n�5�RP��*��+�q�C+Y�N7��x�-0���G`�Z_wX����H��u3�?>������sY���ky![�����	��^�Y��-\&�ypze���u\�|��[��"��-�����x��i�|�xv������?�*k�઄���vc	Ǻg�0}�2�x>�`�?8�I�n�ғ\� �41�� �īg�ac6֖|�aV+/=���妼n��}#l������%��s �:�?ޔ(NNV{�V��VH�+��I����R�X8�.>���������U7�gO���!��
X��Z������SM�vN&m��W��C�	�'W�I}�T�H�QD�$�4޳Ͽ��园��S����}b2��Mv\Q��lϤ	�f�d�8<�B3 7E��B�U�]��#X�Ɯ�m6�4�0�"��F���4�z
�:R��X��=�[{︽���@|��0�3�4�P%�y���"i�)i$D���LS��{ؙ�wL�L"���>9��8�8 sƿ(_����A
�|V^�e��#���C��-Ύ��k�åk��33Y���iY��wq��qI}-���>B� Q-���I�W�Yz͖����c{�3�<��s�"��A<���)�"I�RҞ����Mw�!*��w��f;{�堐탳L���b p��_Þ�s�5��r�ɞ�o�R��?��:��"QMjA8$���.=C�h��j��6Y{��(�]��7�(��(-��3��9
�7Oc����U��E��e�Y�Q���r�G���������LQO�6*#�-s=;�*
�?�����it��:U�0d�,�[�sv�oy�Z|SQW1���e�.�����N����<'���*n�2z�n��%��Ū;�nC@N�ӆL�F�#�	�)\!�������*��唱9�+��>� t.��d�G}����	r�̵O^\oR�RD(Ү��vBe�]%9-�(�/���l���oG�+����E��eD$�+q�1~��q|h49��z�Џ�9�x�*)����X�U1��cV�wY���Hx[��$�`��B�����CY!GP�g�(�Y�Ј��0�	�;�'ՏIfɲ���_q��,��ـ�g�{*I�Jv�) ��F}���x�0�zYW�j��NF�E,7��;Jm�X����{�Þ���G2�>���x4:��ls3��PB�qD̺$�~n,:����}���{�0��H�`I=��f�����g��`�����A��ާ���k�r2���Nā3udddrC�F7�V�V`戄3�Z�D{l�Js��S.���h�����չ�y� ��JĘ����?�~�k�Y�M-s�����֚X�ZhOE<�Z��R������r!�JM��`���b�흜�O]�o%�v���ò�6��~�Z�};��������X��r��Z�ث�_٭�OlA�d�����8��2���	6q�j��e�h��]���Y�Q�j���Ė��y<Hx��룽-.�K���A���
�ks��#��;5�ކ&��B�l-hwL݌O���Q���ۗ���.�ѽ��<���\�ݷ���"��oC�`Z��Xy�`�g^����9�W���M,�l�x ~��)�S%1���;C$��D
�Lx��G�>�%0�X�(0�J���B�SĄ���f>T�6M��P{�c b00��H��j�f[��#�+8��3���2���ܖ�tˢrT1��|Y}n�D9���t��v��=�B�O�Ǻ��e�����j�ʥ�A�®��9�C~AQ�ļ�K/.�"�fj���j ��4�Y|*���-���ʒ���Ll���=���=����wV>^�!�L����ŀ��^s�l-F��
��8��9�eͺg�S�����oC�	�$Y�A%��yd�&Kw&t�sD�����(���P�n͂����CxA��ĚG�~#o�/l��OҨ-�٨�#@ �Q���O.�����"�i,R���z�-"�C=�� m9&�8<Wa�j�ۘs�J�LM
����;隵���R�vd2�~�~�s�ە�|%��Yh�*���,�s�R���nH^.�� ,�w��CxDiQKόRa���1l4�_�o�j���BI���o�u��w(>�w�h����`�w���p7AG:}�Q/ڼeNg�^�( B��Q�7,�^G |��05�M��p\��IG��2���H7 �YW$��VJ��k�K��1�fp$��G��q�"bJ
��Ln�[�˱laf�T�_9>���yQ��i�8Je� S�M�����J�*,@�h�@�80=�L��en�q��f\։t�F(� ���/���M�b*��
d�1Uwt�#�f�r����b{��,PPF
���B����Z_�,���b3 �EJ(�()"��h��&�G�p}�!��%�l4uYS��0zi4{��W	,��,0<�yhSyU��Χ)si$��EakH��`fH$\8�88َ*���p��n)�����PU�.ST�FkbS�d>��+N}<���T����:�V�Ԩ�H{S" 8m�nG�͒�jB�84cV#�f�M�����*��!qF0e�l�BJՆ)��8�IM�6��X��D�qARS
$�$�S�w��く�9}����#�}���Y�|��k'2�����H$RJ�OԖƈ�'P���%�A�_7Rn4���Vn�$S�? �b�������x��]�w��,�j'ڞm���)�	�-,��L��A���R������A8��I؃�x�y3�6l��y0Ԑ83<���@Jғ-E?{S�J1.a����ˆ<���9a�B �ru��G���P�����Er�I^��!0�]!�BJ4�r`����!�?^R{8��	j�@C�������i��U�2t�?�1�����C����0��$//��=�%�]>yz9��G�D����P�f��[u۳?�K����,���F*��w��;�g���i�߱�c�ď�*X�\��蓹�ZO1�1�&�s`B�!��O���4�=h��/L���x��:+�0�4�#��l�&���H�	���K$>$�V$Q@�ʄO��*(D>"�S�\����C��|^� �D%!����$Û.�{��wqP�m��9��Ձ�?��o����I��fұ�O���22�����P�|�������G����iwK�7�m���WU-�[&<�����DFaLrp���ľe�2�-�9�D���K����.���?,םq;��/KP#�!3S���A���K&�=���@hο�x�2�M�W�7
2@����#�«w����&\�WA��i����$��9/i{��S�ĥmgf^B]Z����.��4�%���G��A�~E���#������>Ҝ�R���5�%�r��dg�(�$�{����Z�}C����N����c�-�wog�/"X�.'�;�A�zeh�X鍝� �ѕ���H0����T3� ��9�z]���s�idH�/-��Α{lM?a�ey��|���3,��!�z��$�LONwOӴ���C��Wo
��G��Ol��b>WQ�h[�m�K�"C#�����,��ܺOpǼ�4h: JϘ�k�Q��G��Q2�nӤ-��6���󎋹}?Y=,�����>+JE�o��G~��S�U9"w��E����[@5�T_�o�U�9۰�
(�&����y����]	$e�9N0��K6�Za&W6���+��y�p��w�_B�\̑����'�AG���M�e�{O��g��K��Ba�D =S���0�L���Dm� Aᷱ����k��y`�QM��"O�,R�1���x:�a�JIlk+,7ޕ� , �MG�P=�	��]|�:�����^x{�ț����!#QPXa "EO�������}jJ!��bX1�_�3��f^��~偉�w�*~�0`����SY�ϸ�(!��A�<6}O-�'��3yC9 H`t��L	�6��a����<�+�Ѱ��C�&RHCCh���22�>|�µi}p-�Mu�o������<dM�ٰ����`y.9aLY�%QgN���Sۈv��t����� �ob�*G
��(�b����<;�6A����bM80\ ���g�@��X-� w
R�$)֧���0��*�9�1.�-:���0����<�8
�FO��M��w�+,Q�2����r�77�� ���Ӄ��;���w��A�I��� �:A���}�yUNv��e!�ѵ��@�z�=�C��iK�����Q� t���j�O<S�@$H��be[��A4�sO�e���?yT��Q��
ƾ�>���Dq�e�Q"}e�������X!��_�]��pNA�qZ��g�@��"��p�|{\�@�NӀ��ɊT��wl�=(��8Zfr��<&xY�)��#?n���*h2��DD"�"	��L"�b��_@�Q2d-��Zı�Τ���;1۠t�WԎiJ��23܉��o���"��.CF�ق�{q��q��`�r�"��9\7D��~��%�%�\�2,��j�~ԥ���/���(����<��Pc���5�M�x ���	
�,Gy�ݸ5$4A�Ug��1��"����+7W4� aѰ٤��քN���TAc	"`��Uv�^�̚N�¬ٽ܎�`�`BUE���Ґ*$�t���2�Z��h(F��ٳ^�>n¥��@�������F6��"��;�ꋉ���H���_��Pˢ���CV��1�&�!u�֫�����.�h�ɼ��PۯI8LJ��{����$,��=�M� \���A�EX��[&@�Ba��)P����؛�b
*��u¸`w��6����e�Ϊ/ C(����8���.	�����b�+6�
�H(����n���,������IN�]�f�7�3%�@\0�J��+�+D��s\�-�V*��=����)�rY���b'9
���L%��(ѕ�٧
�&F�f��4ڀ� �"k;Ո�%Z���q���y'!�V�����P�����(VH.���DҺ7��M��m	�C�6��BAa$$h�BY�|�4 �`L=��A��y���}�
DDDg��RJ,��\�B���i�S��FE9�$:�����*D"�ʬ�o~"�.CJgK˯��qj�s,R��paS��J��� t�Of���۽�}������XwsU�(��)T ���k�'��&!�sy��ݙ�a�msNz�@�[�#��\�䁣���(��|���e���Ô�S��������S������3L�J��J;5b}��KO�{l�y�t���Y푘s��t��(�"$�dC�:��˚���,)B�T�S��OB](�lv�:P�I�
(Q���M�1v0,����wX_���
\�Y	D1���F��z��}���hĵ �����wq���W�H�B#uÁt�uU�S+:��:b�̷���&`�Aj�i�T�X&j��xy��oTQ���<���x�������uь�k�HdP��7m���Wac��/0E�7��~�CШ��!�s��&X����4.��&��D6�~��sJ�M�){Ƃ��V�n�v����� �LP�o�W&<`:��c���3[H����x!ܤ��v�'Up�����\OR��\���@����C���+&¨���Y�kRC]|����Q;�]�z�G�d�d��؉����Z�j.��2�҇�߉	n�q�!t�d����W�66�DP�ng<+&�s�ȯ@�I�S�!Od�� q����h7�+����B)�VT���F�ڕ�qM��I\8
�j
�U�jŧU�H�g�&������L��)/|��"�FF	`���1�$y�}&e��H�l�A-����Ř�e��6|��rk;��j����o~�1D�QpO])���aaMB�lӤ1�vÁ݂�,$��.s��Τi��J��]!�]َ���p����0*T
��R�CĐ��j�5a��S~��#����c6�.;Ux�@�Ʈ�� ��B|�F���d��-2l<��M1w�v�^�G!e��[,��T�c-G�7~� �>|n���m��@�&rE�`��<�A��ffY`��g��D�1�pC��a���9��֕xю�c*�� ��"���B(%*B�Ҙ��r*����,P�C$M! d��9H�.��^Y�vvUn�Hy�b;�@ы֒hm��p�$��i-?=f$�r��VVs+/3��ݭM;j%���=��n��N���K��!�9$�$b��t@�$\[J/xv:$]��@ڡX�N��	�O�4c�N��;��(�9ʥ�Y�CY�.Q� ��U��"'����;Ri�>��"+l�PV��`����W_��ȼ?P ,i11�ņ9�,y��uJ�8v���-�K�5|�����2,e-���I��Y1[.m �p��;�H}Zz�9e=["�,B~�����i���S!%�O	�{���D�4�2��t\����㕦�P�W�+�4����n2��ߗ%2&���DC ����1ؙ�A���4��a�x_ka��xL!0���^N1�Q������\�V{���U���:Ğ���"JB��(VL���1���橉@R� �"���6�J<�58Z��؋cC42)B���]Q���˕ml�����E�)Ҙ)�j��A 8�"��b�D��j���uV�[@ߓ@݋��T�qA��,Hk9��xpm#)2�<�aC�w*�"Ō$"?��b��`�Ei
��)`����y��i�j�Ek�S&�(!��7$[1`6�+�k��*R �%[�����u)�g(0���"@�#<���	��������U��w(���]h�ipc��d`��=�{�TA�~Jd��0$#?��3��H,]�� 5׊@y��^���(�ac୐Z�i0�`�`��S��ț;�~��d�PᙠF��h0�u	���>R�%�Y�|Q��%��_��ћp�ō�I	�&-H������\\+Ϡ��C��%��vs�{�$J��BCƆ:Yi��O��l}�łxZ����{��d,���Z���z�iG���� &�(�5R֝���m��V$��T�qi��Jd�5$J¥�e&i�,FC���/A��gYz�ܿח��y$�-@�{b�R�9WrwB�8��Qs@�d��gM���A�pEc���ױ%Y[;,7�!�
���Z3��8+�l��/|r�1�P�Z,V
7wa�/��U�J� ���С9�ޚ7�)"$�AyE�'y�q$���@[T��}ʆ�6;"�/xj��Д�+ 2��b���:�La�ӑ�]ܸU4���2:�f���b�����4v�@�� f���0,���L��Lbb5sT4��\ B@��P�ˤ���C�jU�rMr"1�Xƛ�&��
�=�O�o[Q#����R�D�yy1L�5����/T���͡v��,��#+7���z5�-�^�B0�n�&�J��b��d�/����$[na�3����!T><��1�S�o~�<*�N!��t�P5]�ch{���9��M����9:$. ��� �P�"���K@N�B�k�����!��7���{'�f*c�s�2r��T�;}�d�\��#��d �km�u�Ѳ��ƐXATck4�hP��:���n��	�E }���d0�A�A2a	Wm,�V��jȰ<����Ϧ�)ٱ��z �Dɢ����IJS厐Ұ9$VV2�4Q��(�Z��0A����$�.���V��)���x\�A͋H$ak�'�Y��G\h{�-�q� �.&�6(�X�������U]J
#$�C7��|B���J/����A�dR@V~N<�����4�é.���!��.1�+�	�'"Hh8��zJ7
,C�ktܞ
�($�6`=�܆��e2G�oI$q���HD�G�.�����:1�����*f�G2�h�v�4~��WXԍ��b+�D�����V���ƓX1�q	�y3��[�N���d�	a۹�T��18���W��q���
D����j	���v ��S6ʐTK+}!_���KI�6�M��A�8Wl�݅leqk�r��Y�P�d�;��Qf��9��f�\f\Y<�{pb�����'���fћ&%͖�*м(QF��8`�A1+y�.T �����Y$��,�$�@q�+�ȸ�)x�QP�L��]"�W�%x(&>�I��c2����$.>�N~�U-�Ń	 ��a�QT��������)�J���RI�x%o.K���i(��g�������%�u�D��4�Af��h���!���D#B-#$P�e�E*�n�<�2FF�hP�GH�?1u������D�����3(%�Ġ� $Lf0�A&�~���˥����NQ��inSC��S[�y<�Ct9�kU�|s`���\lB&^
�.��l�?� �:�z�c�N�����s�m?Sk�,��e;ۓ��077;�|�L N��F�47��Rt�$�FĐ5�|�Ad�ToE����#2]W	�+�Ƙ��1�j��,�57�j�=�n%��R�A�h�^�ru(�S(hC�$Ӗ�}�i�c�-q�e����\S��U��n+��PtN�`�'��/��'jC�����_II�06��Fm�{�b�c�@�9�WH⅁��sJTb|ij� ��g�]����Sa(��Ĭ���{Y�T:"Wfl׃�&��vƭ��
���w���*�!Ȁ��,����9��l���6��`�;4�~����Q,	(Vxj��N#\Vd�TpN���x������Ie(�� ��/��[�ӓWa01^�୉>'>��.���*�����q�k�'.��q-:�W+ނ�#nU�(�P� ۤ*�$�﯐�O#����C�O��9�1��JY�	v�l���	%`r#��(�FÝ0�ԋd����0��Kr���� ~g��� }?���)��cbH