FasdUAS 1.101.10   ��   ��    k             l     ��  ��    / ) ########################################     � 	 	 R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��    / ) put this in ~/Library/Script\ Libraries/     �   R   p u t   t h i s   i n   ~ / L i b r a r y / S c r i p t \   L i b r a r i e s /      l     ��  ��    X R And in /Library/Script\ Libraries/ so it works in streamdeck / OSA Script actions     �   �   A n d   i n   / L i b r a r y / S c r i p t \   L i b r a r i e s /   s o   i t   w o r k s   i n   s t r e a m d e c k   /   O S A   S c r i p t   a c t i o n s      l     ��  ��    �  mkdir -p ~/Library/Script\ Libraries/ && cp ~/Dropbox/StreamDeckScripts/JamiesBrowserLibrary.scpt ~/Library/Script\ Libraries/     �   �   m k d i r   - p   ~ / L i b r a r y / S c r i p t \   L i b r a r i e s /   & &   c p   ~ / D r o p b o x / S t r e a m D e c k S c r i p t s / J a m i e s B r o w s e r L i b r a r y . s c p t   ~ / L i b r a r y / S c r i p t \   L i b r a r i e s /      l     ��  ��    � � sudo mkdir -p /Library/Script\ Libraries/ && sudo cp ~/Dropbox/StreamDeckScripts/JamiesBrowserLibrary.scpt ~/Library/Script\ Libraries/     �     s u d o   m k d i r   - p   / L i b r a r y / S c r i p t \   L i b r a r i e s /   & &   s u d o   c p   ~ / D r o p b o x / S t r e a m D e c k S c r i p t s / J a m i e s B r o w s e r L i b r a r y . s c p t   ~ / L i b r a r y / S c r i p t \   L i b r a r i e s /      l     ��   !��     / ) ########################################    ! � " " R   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   # $ # l     ��������  ��  ��   $  % & % i      ' ( ' I      �� )���� 00 newbrowsertomainscreen newBrowserToMainScreen )  *�� * o      ���� 0 theurl theURL��  ��   ( k      + +  , - , r      . / . n      0 1 0 2   ��
�� 
cwor 1 l     2���� 2 I    �� 3��
�� .sysoexecTEXT���     TEXT 3 m      4 4 � 5 5� s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   2 > & 1     |   a w k   ' / M a i n   D i s p l a y :   Y e s / { f o u n d = 1 }   / U I   L o o k s   l i k e / { w i d t h = $ 4 ;   h e i g h t = $ 6 }   / R e t i n a / { s c a l e = ( $ 2   = =   " Y e s "   ?   2   :   1 ) }   / ^   { 8 } [ ^   ] + / { i f ( f o u n d )   { e x i t } ;   s c a l e = 1 }   E N D { p r i n t f   " % d   % d   % d \ n " ,   w i d t h ,   h e i g h t ,   s c a l e } '��  ��  ��   / J       6 6  7 8 7 o      ���� 	0 width   8  9 : 9 o      ���� 
0 height   :  ;�� ; o      ���� 	0 scale  ��   -  < = < l   ��������  ��  ��   =  > ? > O    } @ A @ k   " | B B  C D C I  " '������
�� .miscactvnull��� ��� null��  ��   D  E F E I  ( 4���� G
�� .corecrel****      � null��   G �� H I
�� 
kocl H m   * +��
�� 
docu I �� J��
�� 
prdt J K   , 0 K K �� L��
�� 
pURL L o   - .���� 0 theurl theURL��  ��   F  M N M I  5 :�� O��
�� .sysodelanull��� ��� nmbr O m   5 6���� ��   N  P Q P l  ; ;��������  ��  ��   Q  R S R l  ; ;�� T U��   T ` Z display notification "Moving to main display @" & width & "x" & height & " for " & theURL    U � V V �   d i s p l a y   n o t i f i c a t i o n   " M o v i n g   t o   m a i n   d i s p l a y   @ "   &   w i d t h   &   " x "   &   h e i g h t   &   "   f o r   "   &   t h e U R L S  W X W Q   ; z Y Z [ Y k   > K \ \  ] ^ ] l  > >��������  ��  ��   ^  _�� _ r   > K ` a ` J   > D b b  c d c m   > ?����   d  e f e m   ? @����   f  g h g o   @ A���� 	0 width   h  i�� i o   A B���� 
0 height  ��   a n       j k j 1   H J��
�� 
pbnd k 4  D H�� l
�� 
cwin l m   F G���� ��   Z R      �� m n
�� .ascrerr ****      � **** m o      ���� 0 errormessage errorMessage n �� o��
�� 
errn o o      ���� 0 errornumber errorNumber��   [ k   S z p p  q r q I  S f�� s��
�� .sysonotfnull��� ��� TEXT s l  S b t���� t b   S b u v u b   S ^ w x w b   S \ y z y b   S X { | { m   S V } } � ~ ~ , N o   J o y .   e r r o r M e s s a g e :   | o   V W���� 0 errormessage errorMessage z m   X [   � � �  ,   e r r o r N u m b e r :   x o   \ ]���� 0 errornumber errorNumber v m   ^ a � � � � � *   t r y i n g   o n e   m o r e   t i m e��  ��  ��   r  � � � I  g l�� ���
�� .sysodelanull��� ��� nmbr � m   g h���� ��   �  ��� � r   m z � � � J   m s � �  � � � m   m n����   �  � � � m   n o����   �  � � � o   o p���� 	0 width   �  ��� � o   p q���� 
0 height  ��   � n       � � � 1   w y��
�� 
pbnd � 4  s w�� �
�� 
cwin � m   u v���� ��   X  � � � l  { {�� � ���   �   delay 3    � � � �    d e l a y   3 �  � � � l  { {��������  ��  ��   �  ��� � l  { {�� � ���   � &   set URL of document 1 to theURL    � � � � @   s e t   U R L   o f   d o c u m e n t   1   t o   t h e U R L��   A m     � ��                                                                                  sfri  alis    p  Preboot                    �d�_BD ����
Safari.app                                                     �����sϡ        ����  
 cu             Applications  F/:System:Volumes:Preboot:Cryptexes:App:System:Applications:Safari.app/   
 S a f a r i . a p p    P r e b o o t  -/Cryptexes/App/System/Applications/Safari.app   /System/Volumes/Preboot ��   ?  ��� � l  ~ ~��������  ��  ��  ��   &  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 5 / use browserLib : script "JamiesBrowserLibrary"    � � � � ^   u s e   b r o w s e r L i b   :   s c r i p t   " J a m i e s B r o w s e r L i b r a r y " �  � � � l     �� � ���   � . ( browserLib's newBrowserToMainScreen("")    � � � � P   b r o w s e r L i b ' s   n e w B r o w s e r T o M a i n S c r e e n ( " " ) �  ��� � l     ��������  ��  ��  ��       �� � ���   � ���� 00 newbrowsertomainscreen newBrowserToMainScreen � �� (���� � ����� 00 newbrowsertomainscreen newBrowserToMainScreen�� �� ���  �  ���� 0 theurl theURL��   � �������������� 0 theurl theURL�� 	0 width  �� 
0 height  �� 	0 scale  �� 0 errormessage errorMessage�� 0 errornumber errorNumber �  4������ ����������������������� � }  ���
�� .sysoexecTEXT���     TEXT
�� 
cwor
�� 
cobj
�� .miscactvnull��� ��� null
�� 
kocl
�� 
docu
�� 
prdt
�� 
pURL�� 
�� .corecrel****      � null
�� .sysodelanull��� ��� nmbr
�� 
cwin
�� 
pbnd�� 0 errormessage errorMessage � ��~�}
� 
errn�~ 0 errornumber errorNumber�}  
�� .sysonotfnull��� ��� TEXT�� ��j �-E[�k/E�Z[�l/E�Z[�m/E�ZO� \*j O*����l� Okj O jj���v*�k/�,FW .X  a �%a %�%a %j Olj Ojj���v*�k/�,FOPUOPascr  ��ޭ