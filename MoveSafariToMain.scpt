FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     	���� 	 I    �� 
��
�� .sysodelanull��� ��� nmbr 
 m        ?�      ��  ��  ��        l   # ����  r    #    n        2   ��
�� 
cwor  l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m       �  � s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   2 > & 1     |   a w k   ' / M a i n   D i s p l a y :   Y e s / { f o u n d = 1 }   / R e s o l u t i o n / { w i d t h = $ 2 ;   h e i g h t = $ 4 }   / R e t i n a / { s c a l e = ( $ 2   = =   " Y e s "   ?   2   :   1 ) }   / ^   { 8 } [ ^   ] + / { i f ( f o u n d )   { e x i t } ;   s c a l e = 1 }   E N D { p r i n t f   " % d   % d   % d \ n " ,   w i d t h ,   h e i g h t ,   s c a l e } '��  ��  ��    J             o      ���� 	0 width        o      ���� 
0 height     ��  o      ���� 	0 scale  ��  ��  ��        l     ��������  ��  ��         l  $ * !���� ! r   $ * " # " J   $ ( $ $  % & % m   $ %����   &  '�� ' m   % &����  ��   # o      ���� "0 monitorposition monitorPosition��  ��      ( ) ( l  + 1 *���� * r   + 1 + , + J   + / - -  . / . o   + ,���� 	0 width   /  0�� 0 o   , -���� 
0 height  ��   , o      ���� 0 monitorsize monitorSize��  ��   )  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5 M G display notification "Moving to main display @" & width & "x" & height    6 � 7 7 �   d i s p l a y   n o t i f i c a t i o n   " M o v i n g   t o   m a i n   d i s p l a y   @ "   &   w i d t h   &   " x "   &   h e i g h t 4  8 9 8 l  2 � :���� : Q   2 � ; < = ; k   5 Z > >  ? @ ? O   5 X A B A O   9 W C D C k   @ V E E  F G F r   @ F H I H 4  @ D�� J
�� 
cwin J m   B C����  I o      ���� 0 frontwindow frontWindow G  K L K r   G N M N M o   G H���� "0 monitorposition monitorPosition N n       O P O 1   I M��
�� 
posn P o   H I���� 0 frontwindow frontWindow L  Q�� Q r   O V R S R o   O P���� 0 monitorsize monitorSize S n       T U T 1   Q U��
�� 
ptsz U o   P Q���� 0 frontwindow frontWindow��   D 4   9 =�� V
�� 
prcs V m   ; < W W � X X  S a f a r i B m   5 6 Y Y�                                                                                  sevs  alis    \  Macintosh HD               �!HCBD ����System Events.app                                              �����!HC        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   @  Z�� Z l  Y Y��������  ��  ��  ��   < R      �� [ \
�� .ascrerr ****      � **** [ o      ���� 0 errormessage errorMessage \ �� ]��
�� 
errn ] o      ���� 0 errornumber errorNumber��   = k   b � ^ ^  _ ` _ l  b b�� a b��   a ] W display notification ("Retrying... " & errorMessage & ", errorNumber: " & errorNumber)    b � c c �   d i s p l a y   n o t i f i c a t i o n   ( " R e t r y i n g . . .   "   &   e r r o r M e s s a g e   &   " ,   e r r o r N u m b e r :   "   &   e r r o r N u m b e r ) `  d e d I  b i�� f��
�� .sysodelanull��� ��� nmbr f m   b e g g ?�      ��   e  h�� h Q   j � i j k i k   m � l l  m n m O   m � o p o O   q � q r q k   z � s s  t u t r   z � v w v 4  z ~�� x
�� 
cwin x m   | }����  w o      ���� 0 frontwindow frontWindow u  y z y r   � � { | { o   � ����� "0 monitorposition monitorPosition | n       } ~ } 1   � ���
�� 
posn ~ o   � ����� 0 frontwindow frontWindow z  ��  r   � � � � � o   � ����� 0 monitorsize monitorSize � n       � � � 1   � ���
�� 
ptsz � o   � ����� 0 frontwindow frontWindow��   r 4   q w�� �
�� 
prcs � m   s v � � � � �  S a f a r i p m   m n � ��                                                                                  sevs  alis    \  Macintosh HD               �!HCBD ����System Events.app                                              �����!HC        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   n  ��� � l  � ���������  ��  ��  ��   j R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   k l  � ��� � ���   � g a display notification ("No Joy. errorMessage: " & errorMessage & ", errorNumber: " & errorNumber)    � � � � �   d i s p l a y   n o t i f i c a t i o n   ( " N o   J o y .   e r r o r M e s s a g e :   "   &   e r r o r M e s s a g e   &   " ,   e r r o r N u m b e r :   "   &   e r r o r N u m b e r )��  ��  ��   9  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � � � � � � � �����   � ����������������
�� .aevtoappnull  �   � ****�� 	0 width  �� 
0 height  �� 	0 scale  �� "0 monitorposition monitorPosition�� 0 monitorsize monitorSize�� 0 frontwindow frontWindow��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �   � �  ( � �  8����  ��  ��   � ������ 0 errormessage errorMessage�� 0 errornumber errorNumber �  �� ���������������� Y�� W���������� � g �
�� .sysodelanull��� ��� nmbr
�� .sysoexecTEXT���     TEXT
�� 
cwor
�� 
cobj�� 	0 width  �� 
0 height  �� 	0 scale  �� "0 monitorposition monitorPosition�� 0 monitorsize monitorSize
�� 
prcs
�� 
cwin�� 0 frontwindow frontWindow
�� 
posn
�� 
ptsz�� 0 errormessage errorMessage � ������
�� 
errn�� 0 errornumber errorNumber��  �� ��j O�j �-E[�k/E�Z[�l/E�Z[�m/E�ZOjjlvE�O��lvE�O *�  *��/ *�k/E�O��a ,FO��a ,FUUOPW BX  a j O ,� "*�a / *�k/E�O��a ,FO��a ,FUUOPW X  h � � � �  1 9 2 0 � � � �  1 2 0 0 � � � �  1 � �� ���  �  ��~�  �~   � �} ��}  �   � � �  � �  ��| � �  Y�{ �
�{ 
pcap � � � �  S a f a r i
�| 
cwin � � � � T J a m i e ' s   L i n k s !   d o c s   a n d   s u c h   -   G o o g l e   D o c s��  ascr  ��ޭ