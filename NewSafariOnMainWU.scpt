FasdUAS 1.101.10   ��   ��    k             l     ��  ��   60 set {width, height, scale} to words of (do shell script "system_profiler SPDisplaysDataType 2>&1  | awk '/Main Display: Yes/{found=1} /UI Looks like/{width=$4; height=$6} /Retina/{scale=($2 == \"Yes\" ? 2 : 1)} /^ {8}[^ ]+/{if(found) {exit}; scale=1} END{printf \"%d %d %d\\n\", width, height, scale}'")     � 	 	`   s e t   { w i d t h ,   h e i g h t ,   s c a l e }   t o   w o r d s   o f   ( d o   s h e l l   s c r i p t   " s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   2 > & 1     |   a w k   ' / M a i n   D i s p l a y :   Y e s / { f o u n d = 1 }   / U I   L o o k s   l i k e / { w i d t h = $ 4 ;   h e i g h t = $ 6 }   / R e t i n a / { s c a l e = ( $ 2   = =   \ " Y e s \ "   ?   2   :   1 ) }   / ^   { 8 } [ ^   ] + / { i f ( f o u n d )   { e x i t } ;   s c a l e = 1 }   E N D { p r i n t f   \ " % d   % d   % d \ \ n \ " ,   w i d t h ,   h e i g h t ,   s c a l e } ' " )   
  
 l     ��  ��           �           l     ��  ��       tell application "Safari"     �   4   t e l l   a p p l i c a t i o n   " S a f a r i "      l     ��  ��      	make new document     �   &   	 m a k e   n e w   d o c u m e n t      l     ��  ��    Q K 	-- display notification "Moving to main display @" & width & "x" & height     �   �   	 - -   d i s p l a y   n o t i f i c a t i o n   " M o v i n g   t o   m a i n   d i s p l a y   @ "   &   w i d t h   &   " x "   &   h e i g h t      l     ��   !��       	    ! � " "    	   # $ # l     �� % &��   % o i 	set URL of document 1 to "https://www.wunderground.com/hourly/us/nc/matthews/28104?cm_ven=localwx_hour"    & � ' ' �   	 s e t   U R L   o f   d o c u m e n t   1   t o   " h t t p s : / / w w w . w u n d e r g r o u n d . c o m / h o u r l y / u s / n c / m a t t h e w s / 2 8 1 0 4 ? c m _ v e n = l o c a l w x _ h o u r " $  ( ) ( l     �� * +��   * 7 1 	set bounds of window 1 to {0, 0, width, height}    + � , , b   	 s e t   b o u n d s   o f   w i n d o w   1   t o   { 0 ,   0 ,   w i d t h ,   h e i g h t } )  - . - l     �� / 0��   /   	    0 � 1 1    	 .  2 3 2 l     �� 4 5��   4  
 	activate    5 � 6 6    	 a c t i v a t e 3  7 8 7 l     �� 9 :��   9  	 end tell    : � ; ;    e n d   t e l l 8  < = < l     ��������  ��  ��   =  > ? > x     �� @���� 0 
browserlib 
browserLib @ 4    �� A
�� 
scpt A m     B B � C C ( J a m i e s B r o w s e r L i b r a r y��   ?  D E D l     ��������  ��  ��   E  F G F l    
 H���� H n    
 I J I I    
�� K���� 00 newbrowsertomainscreen newBrowserToMainScreen K  L�� L m     M M � N N � h t t p s : / / w w w . w u n d e r g r o u n d . c o m / h o u r l y / u s / n c / m a t t h e w s / 2 8 1 0 4 ? c m _ v e n = l o c a l w x _ h o u r��  ��   J o     ���� 0 
browserlib 
browserLib��  ��   G  O�� O l     ��������  ��  ��  ��       �� P Q R S��   P ������
�� 
pimr�� 0 
browserlib 
browserLib
�� .aevtoappnull  �   � **** Q �� T��  T   U U �� V��
�� 
cobj V  W W   �� B
�� 
scpt��   R  X X   �� B
�� 
scpt S �� Y���� Z [��
�� .aevtoappnull  �   � **** Y k     
 \ \  F����  ��  ��   Z   [  M���� 00 newbrowsertomainscreen newBrowserToMainScreen�� b  �k+ ascr  ��ޭ