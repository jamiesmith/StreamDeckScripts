FasdUAS 1.101.10   ��   ��    k             l     ��  ��    t n set theURL to "https://www.meteoblue.com/en/weather/forecast/seeing/taxahaw_united-states-of-america_4598334"     � 	 	 �   s e t   t h e U R L   t o   " h t t p s : / / w w w . m e t e o b l u e . c o m / e n / w e a t h e r / f o r e c a s t / s e e i n g / t a x a h a w _ u n i t e d - s t a t e s - o f - a m e r i c a _ 4 5 9 8 3 3 4 "   
  
 l     ��  ��   60 set {width, height, scale} to words of (do shell script "system_profiler SPDisplaysDataType 2>&1  | awk '/Main Display: Yes/{found=1} /UI Looks like/{width=$4; height=$6} /Retina/{scale=($2 == \"Yes\" ? 2 : 1)} /^ {8}[^ ]+/{if(found) {exit}; scale=1} END{printf \"%d %d %d\\n\", width, height, scale}'")     �  `   s e t   { w i d t h ,   h e i g h t ,   s c a l e }   t o   w o r d s   o f   ( d o   s h e l l   s c r i p t   " s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   2 > & 1     |   a w k   ' / M a i n   D i s p l a y :   Y e s / { f o u n d = 1 }   / U I   L o o k s   l i k e / { w i d t h = $ 4 ;   h e i g h t = $ 6 }   / R e t i n a / { s c a l e = ( $ 2   = =   \ " Y e s \ "   ?   2   :   1 ) }   / ^   { 8 } [ ^   ] + / { i f ( f o u n d )   { e x i t } ;   s c a l e = 1 }   E N D { p r i n t f   \ " % d   % d   % d \ \ n \ " ,   w i d t h ,   h e i g h t ,   s c a l e } ' " )      l     ��  ��           �           l     ��  ��       tell application "Safari"     �   4   t e l l   a p p l i c a t i o n   " S a f a r i "      l     ��  ��      	make new document     �   &   	 m a k e   n e w   d o c u m e n t      l     ��   !��     Q K 	-- display notification "Moving to main display @" & width & "x" & height    ! � " " �   	 - -   d i s p l a y   n o t i f i c a t i o n   " M o v i n g   t o   m a i n   d i s p l a y   @ "   &   w i d t h   &   " x "   &   h e i g h t   # $ # l     �� % &��   %   	    & � ' '    	 $  ( ) ( l     �� * +��   * ' ! 	set URL of document 1 to theURL    + � , , B   	 s e t   U R L   o f   d o c u m e n t   1   t o   t h e U R L )  - . - l     �� / 0��   / 7 1 	set bounds of window 1 to {0, 0, width, height}    0 � 1 1 b   	 s e t   b o u n d s   o f   w i n d o w   1   t o   { 0 ,   0 ,   w i d t h ,   h e i g h t } .  2 3 2 l     �� 4 5��   4   	    5 � 6 6    	 3  7 8 7 l     �� 9 :��   9  
 	activate    : � ; ;    	 a c t i v a t e 8  < = < l     �� > ?��   >  	 end tell    ? � @ @    e n d   t e l l =  A B A l     ��������  ��  ��   B  C D C x     �� E���� 0 
browserlib 
browserLib E 4    �� F
�� 
scpt F m     G G � H H ( J a m i e s B r o w s e r L i b r a r y��   D  I J I l     ��������  ��  ��   J  K L K l    
 M���� M n    
 N O N I    
�� P���� 00 newbrowsertomainscreen newBrowserToMainScreen P  Q�� Q m     R R � S S � h t t p s : / / w w w . m e t e o b l u e . c o m / e n / w e a t h e r / f o r e c a s t / s e e i n g / t a x a h a w _ u n i t e d - s t a t e s - o f - a m e r i c a _ 4 5 9 8 3 3 4��  ��   O o     ���� 0 
browserlib 
browserLib��  ��   L  T�� T l     ��������  ��  ��  ��       �� U V W X��   U ������
�� 
pimr�� 0 
browserlib 
browserLib
�� .aevtoappnull  �   � **** V �� Y��  Y   Z Z �� [��
�� 
cobj [  \ \   �� G
�� 
scpt��   W  ] ]   �� G
�� 
scpt X �� ^���� _ `��
�� .aevtoappnull  �   � **** ^ k     
 a a  K����  ��  ��   _   `  R���� 00 newbrowsertomainscreen newBrowserToMainScreen�� b  �k+ ascr  ��ޭ