FasdUAS 1.101.10   ��   ��    k             l        	  x     �� 
 ��   
 1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 4��       Yosemite (10.10) or later    	 �   4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r      l     ��  ��    4 . use script "RegexAndStuffLib" version "1.0.6"     �   \   u s e   s c r i p t   " R e g e x A n d S t u f f L i b "   v e r s i o n   " 1 . 0 . 6 "      x    �� ����    2  	 ��
�� 
osax��        x     �� ����    4    �� 
�� 
frmk  m       �    F o u n d a t i o n��        l     ��������  ��  ��       !   l     �� " #��   " ) # classes, constants, and enums used    # � $ $ F   c l a s s e s ,   c o n s t a n t s ,   a n d   e n u m s   u s e d !  % & % j     %�� '�� *0 nsjsonserialization NSJSONSerialization ' N     $ ( ( n    # ) * ) o   ! #���� *0 nsjsonserialization NSJSONSerialization * m     !��
�� misccura &  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   /   params    0 � 1 1    p a r a m s .  2 3 2 j   & )�� 4�� 80 nsjsonwritingprettyprinted NSJSONWritingPrettyPrinted 4 N   & ( 5 5 m   & '����  3  6 7 6 j   * -�� 8�� 0 maxdepth maxDepth 8 N   * , 9 9 m   * +����  7  : ; : l     ��������  ��  ��   ;  < = < i   . 1 > ? > I      �� @���� "0 writetexttofile writeTextToFile @  A B A o      ���� 0 thetext theText B  C D C o      ���� 0 thefile theFile D  E�� E o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��   ? k     T F F  G H G Q     R I J K I k    3 L L  M N M l   ��������  ��  ��   N  O P O l   �� Q R��   Q    Open the file for writing    R � S S 4   O p e n   t h e   f i l e   f o r   w r i t i n g P  T U T r     V W V I   
�� X Y
�� .rdwropenshor       file X o    ���� 0 thefile theFile Y �� Z��
�� 
perm Z m    ��
�� boovtrue��   W o      ���� 0 theopenedfile theOpenedFile U  [ \ [ l   ��������  ��  ��   \  ] ^ ] l   �� _ `��   _ 6 0 Clear the file if content should be overwritten    ` � a a `   C l e a r   t h e   f i l e   i f   c o n t e n t   s h o u l d   b e   o v e r w r i t t e n ^  b c b Z    d e���� d =    f g f o    ���� 40 overwriteexistingcontent overwriteExistingContent g m    ��
�� boovtrue e I   �� h i
�� .rdwrseofnull���     **** h o    ���� 0 theopenedfile theOpenedFile i �� j��
�� 
set2 j m    ����  ��  ��  ��   c  k l k l   ��������  ��  ��   l  m n m l   �� o p��   o ( " Write the new content to the file    p � q q D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e n  r s r I   (�� t u
�� .rdwrwritnull���     **** t o     ���� 0 thetext theText u �� v w
�� 
refn v o   ! "���� 0 theopenedfile theOpenedFile w �� x��
�� 
wrat x m   # $��
�� rdwreof ��   s  y z y l  ) )��������  ��  ��   z  { | { l  ) )�� } ~��   }   Close the file    ~ �      C l o s e   t h e   f i l e |  � � � I  ) .�� ���
�� .rdwrclosnull���     **** � o   ) *���� 0 theopenedfile theOpenedFile��   �  � � � l  / /��������  ��  ��   �  � � � l  / /�� � ���   � > 8 Return a boolean indicating that writing was successful    � � � � p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l �  � � � L   / 1 � � m   / 0��
�� boovtrue �  � � � l  2 2��������  ��  ��   �  ��� � l  2 2�� � ���   �   Handle a write error    � � � � *   H a n d l e   a   w r i t e   e r r o r��   J R      ������
�� .ascrerr ****      � ****��  ��   K k   ; R � �  � � � l  ; ;��������  ��  ��   �  � � � l  ; ;�� � ���   �   Close the file    � � � �    C l o s e   t h e   f i l e �  � � � Q   ; O � ��� � I  > F�� ���
�� .rdwrclosnull���     **** � 4   > B�� �
�� 
file � o   @ A���� 0 thefile theFile��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  P P��������  ��  ��   �  � � � l  P P�� � ���   � 6 0 Return a boolean indicating that writing failed    � � � � `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d �  ��� � L   P R � � m   P Q��
�� boovfals��   H  ��� � l  S S��������  ��  ��  ��   =  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   showJSON :: a -> String    � � � � 0   s h o w J S O N   : :   a   - >   S t r i n g �  � � � l     �� � ���   � [ U from https://forum.latenightsw.com/t/writing-json-data-with-nsjsonserialization/1130    � � � � �   f r o m   h t t p s : / / f o r u m . l a t e n i g h t s w . c o m / t / w r i t i n g - j s o n - d a t a - w i t h - n s j s o n s e r i a l i z a t i o n / 1 1 3 0 �  � � � i   2 5 � � � I      �� ����� 0 tojson toJSON �  ��� � o      ���� 0 x  ��  ��   � k     � � �  � � � r      � � � n      � � � m    ��
�� 
pcls � o     ���� 0 x   � o      ���� 0 c   �  ��� � Z    � � � � � � G     � � � l   	 ����� � =   	 � � � o    ���� 0 c   � m    �
� 
list��  ��   � l    ��~�} � =    � � � o    �|�| 0 c   � m    �{
�{ 
reco�~  �}   � k    W � �  � � � r     � � � m    �z
�z misccura � o      �y�y 0 ca   �  � � � r    5 � � � n   & � � � I    &�x ��w�x F0 !datawithjsonobject_options_error_ !dataWithJSONObject_options_error_ �  � � � o    �v�v 0 x   �  � � � o    !�u�u 80 nsjsonwritingprettyprinted NSJSONWritingPrettyPrinted �  ��t � l  ! " ��s�r � m   ! "�q
�q 
obj �s  �r  �t  �w   � n    � � � o    �p�p *0 nsjsonserialization NSJSONSerialization � o    �o�o 0 ca   � J       � �  � � � o      �n�n 0 json   �  ��m � o      �l�l 0 e  �m   �  ��k � Z   6 W � ��j � � =  6 9 � � � o   6 7�i�i 0 json   � m   7 8�h
�h 
msng � c   < C � � � n  < A � � � I   = A�g�f�e�g ,0 localizeddescription localizedDescription�f  �e   � o   < =�d�d 0 e   � m   A B�c
�c 
ctxt�j   � c   F W � � � l  F U ��b�a � n  F U � � � I   M U�` ��_�` 00 initwithdata_encoding_ initWithData_encoding_ �  � � � o   M N�^�^ 0 json   �  ��] � l  N Q ��\�[ � n  N Q � � � o   O Q�Z�Z ,0 nsutf8stringencoding NSUTF8StringEncoding � o   N O�Y�Y 0 ca  �\  �[  �]  �_   � n  F M �  � I   I M�X�W�V�X 	0 alloc  �W  �V    n  F I o   G I�U�U 0 nsstring NSString o   F G�T�T 0 ca  �b  �a   � m   U V�S
�S 
ctxt�k   �  =  Z _ o   Z [�R�R 0 c   m   [ ^�Q
�Q 
ldt   b   b }	
	 b   b y b   b u m   b e �  " l  e t�P�O c   e t c   e p l  e l�N�M \   e l o   e f�L�L 0 x   l  f k�K�J I  f k�I�H�G
�I .sysoGMT long   ��� null�H  �G  �K  �J  �N  �M   m   l o�F
�F 
isot m   p s�E
�E 
TEXT�P  �O   m   u x � 
 . 0 0 0 Z
 m   y | �  "  =  � � !  o   � ��D�D 0 c  ! m   � ��C
�C 
ctxt "#" b   � �$%$ b   � �&'& m   � �(( �))  "' o   � ��B�B 0 x  % m   � �** �++  "# ,-, l  � �.�A�@. G   � �/0/ =  � �121 o   � ��?�? 0 c  2 m   � ��>
�> 
long0 =  � �343 o   � ��=�= 0 c  4 m   � ��<
�< 
doub�A  �@  - 565 c   � �787 o   � ��;�; 0 x  8 m   � ��:
�: 
ctxt6 9:9 =  � �;<; o   � ��9�9 0 c  < m   � ��8
�8 
pcls: =�7= m   � �>> �??  n u l l�7   � Q   � �@AB@ c   � �CDC o   � ��6�6 0 x  D m   � ��5
�5 
ctxtA R      �4�3�2
�4 .ascrerr ****      � ****�3  �2  B b   � �EFE l  � �G�1�0G c   � �HIH b   � �JKJ m   � �LL �MM  �K o   � ��/�/ 0 c  I m   � ��.
�. 
ctxt�1  �0  F m   � �NN �OO  ���   � PQP l     �-�,�+�-  �,  �+  Q RSR i   6 9TUT I      �*V�)�* 0 labelify  V WXW o      �(�( 0 thename theNameX Y�'Y o      �&�& 0 max  �'  �)  U Z     Z[�%\Z A    ]^] n     _`_ 1    �$
�$ 
leng` o     �#�# 0 thename theName^ o    �"�" 0 max  [ L    
aa o    	�!�! 0 thename theName�%  \ L    bb n    cdc 7   � ef
�  
ctxte m    �� f o    �� 0 max  d o    �� 0 thename theNameS ghg l     ����  �  �  h iji i   : =klk I      �m�� 
0 nodify  m n�n o      �� 0 theitem theItem�  �  l k     9oo pqp r     6rsr K     4tt �uv� 0 id  u e    ww c    xyx n    z{z 1    �
� 
ID  { o    �� 0 theitem theItemy m    �
� 
TEXTv �|}� 	0 label  | n   ~~ I    ���� 0 labelify  � ��� e    �� c    ��� n    ��� 1   	 �
� 
pnam� o    	�� 0 theitem theItem� m    �
� 
TEXT� ��� m    �
�
 �  �    f    } �	���	 0 size  � m    �� � ���� 0 x  � l   #���� I   #���� z��
� .sysorandnmbr    ��� nmbr
� misccura�  � ���
� 
from� m    � �   � �����
�� 
to  � m    ���� 
��  �  �  � ������� 0 y  � l  $ 2������ I  $ 2����� z����
�� .sysorandnmbr    ��� nmbr
�� misccura��  � ����
�� 
from� m   * +����  � �����
�� 
to  � m   , -���� 
��  ��  ��  ��  s o      ���� 0 newnode newNodeq ���� L   7 9�� o   7 8���� 0 newnode newNode��  j ��� l     ��������  ��  ��  � ��� i   > A��� I      ������� 
0 edgify  � ��� o      ���� 0 itema itemA� ���� o      ���� 0 itemb itemB��  ��  � k     !�� ��� r     ��� e     �� c     ��� n     ��� 1    ��
�� 
ID  � o     ���� 0 itema itemA� m    ��
�� 
TEXT� o      ���� 
0 ida idA� ��� r    ��� e    �� c    ��� n    ��� 1   	 ��
�� 
ID  � o    	���� 0 itemb itemB� m    ��
�� 
TEXT� o      ���� 
0 idb idB� ��� r    ��� K    �� ������ 0 id  � b    ��� b    ��� o    ���� 
0 ida idA� m    �� ���  -� o    ���� 
0 idb idB� ������ 
0 source  � o    ���� 
0 ida idA� ������� 
0 target  � o    ���� 
0 idb idB��  � o      ���� 0 newedge newEdge� ���� L    !�� o     ���� 0 newedge newEdge��  � ��� l     ��������  ��  ��  � ��� l     ������  � ' ! generate a sub-graph for theItem   � ��� B   g e n e r a t e   a   s u b - g r a p h   f o r   t h e I t e m� ��� i   B E��� I      ������� 0 graphify  � ��� o      ���� 0 theitem theItem� ���� o      ���� 	0 depth  ��  ��  � l    ����� O     ���� k    ��� ��� r    ��� J    
����  � o      ���� 	0 nodes  � ��� r    ��� J    ����  � o      ���� 0 nodeids nodeIDs� ��� r    ��� J    ����  � o      ���� 	0 edges  � ��� r    ��� J    ����  � o      ���� 0 edgeids edgeIDs� ��� r    $��� n   "��� I    "������� 
0 nodify  � ���� o    ���� 0 theitem theItem��  ��  �  f    � o      ���� 0 node  � ��� r   % )��� o   % &���� 0 node  � n      ���  ;   ' (� o   & '���� 	0 nodes  � ��� l  * *��������  ��  ��  �    Z   * ����� ?   * - o   * +���� 	0 depth   m   + ,����   k   0 �  X   0 �	��
	 k   B �  l  B B��������  ��  ��    r   B K n  B I I   C I������ 
0 edgify    o   C D���� 0 theitem theItem �� o   D E���� 0 	childitem 	childItem��  ��    f   B C o      ���� 0 edge    l  L L����   !  probably superfluous check    � 6   p r o b a b l y   s u p e r f l u o u s   c h e c k  l  L L�� ��   4 . if edgeIDs does not contain |id| of edge then     �!! \   i f   e d g e I D s   d o e s   n o t   c o n t a i n   | i d |   o f   e d g e   t h e n "#" r   L R$%$ n   L O&'& o   M O���� 0 id  ' o   L M���� 0 edge  % n      ()(  ;   P Q) o   O P���� 0 edgeids edgeIDs# *+* r   S W,-, o   S T���� 0 edge  - n      ./.  ;   U V/ o   T U���� 	0 edges  + 010 l  X X��23��  2   end if   3 �44    e n d   i f1 565 l  X X��������  ��  ��  6 787 l  X X��9:��  9 2 , recurse on childItem subgraph, if unvisited   : �;; X   r e c u r s e   o n   c h i l d I t e m   s u b g r a p h ,   i f   u n v i s i t e d8 <=< Z   X �>?����> H   X `@@ E   X _ABA o   X Y���� 0 nodeids nodeIDsB l  Y ^C����C c   Y ^DED n   Y \FGF 1   Z \��
�� 
ID  G o   Y Z���� 0 	childitem 	childItemE m   \ ]��
�� 
TEXT��  ��  ? k   c �HH IJI r   c {KLK n  c lMNM I   d l��O���� 0 graphify  O PQP o   d e���� 0 	childitem 	childItemQ R��R \   e hSTS o   e f���� 	0 depth  T m   f g���� ��  ��  N  f   c dL J      UU VWV o      ���� 0 anodes aNodesW X��X o      ���� 0 aedges aEdges��  J YZY X   | �[��\[ Z   � �]^����] H   � �__ E   � �`a` o   � ����� 0 nodeids nodeIDsa n   � �bcb o   � ����� 0 id  c o   � ����� 0 anode aNode^ k   � �dd efe r   � �ghg n   � �iji o   � ����� 0 id  j o   � ����� 0 anode aNodeh n      klk  ;   � �l o   � ����� 0 nodeids nodeIDsf m��m r   � �non o   � ����� 0 anode aNodeo n      pqp  ;   � �q o   � ����� 	0 nodes  ��  ��  ��  �� 0 anode aNode\ o    ����� 0 anodes aNodesZ r�r X   � �s�~ts Z   � �uv�}�|u H   � �ww E   � �xyx o   � ��{�{ 0 edgeids edgeIDsy n   � �z{z o   � ��z�z 0 id  { o   � ��y�y 0 aedge aEdgev k   � �|| }~} r   � �� n   � ���� o   � ��x�x 0 id  � o   � ��w�w 0 aedge aEdge� n      ���  ;   � �� o   � ��v�v 0 edgeids edgeIDs~ ��u� r   � ���� o   � ��t�t 0 aedge aEdge� n      ���  ;   � �� o   � ��s�s 	0 edges  �u  �}  �|  �~ 0 aedge aEdget o   � ��r�r 0 aedges aEdges�  ��  ��  = ��q� l  � ��p�o�n�p  �o  �n  �q  �� 0 	childitem 	childItem
 n   3 6��� 2  4 6�m
�m 
DTch� o   3 4�l�l 0 theitem theItem ��k� l  � ��j�i�h�j  �i  �h  �k  ��  ��   ��g� L   � ��� J   � ��� ��� o   � ��f�f 	0 nodes  � ��e� o   � ��d�d 	0 edges  �e  �g  � 5     �c��b
�c 
capp� m    �� ���  D N t p
�b kfrmID  � ( " TODO add diggressive depth param    � ��� D   T O D O   a d d   d i g g r e s s i v e   d e p t h   p a r a m  � ��� l     �a�`�_�a  �`  �_  � ��� i   F I��� I     �^�]�\
�^ .aevtoappnull  �   � ****�]  �\  � O     b��� k    a�� ��� r    $��� n   ��� I   	 �[��Z�[ 0 graphify  � ��� 1   	 �Y
�Y 
DTcg� ��X� o    �W�W 0 maxdepth maxDepth�X  �Z  �  f    	� J      �� ��� o      �V�V 	0 nodes  � ��U� o      �T�T 	0 edges  �U  � ��� I  % 8�S��R
�S .sysodisAaleR        TEXT� b   % 4��� b   % 2��� b   % ,��� l  % *��Q�P� c   % *��� n   % (��� 1   & (�O
�O 
leng� o   % &�N�N 	0 nodes  � m   ( )�M
�M 
TEXT�Q  �P  � m   * +�� ���    n o d e s ,  � l  , 1��L�K� c   , 1��� n   , /��� 1   - /�J
�J 
leng� o   , -�I�I 	0 edges  � m   / 0�H
�H 
TEXT�L  �K  � m   2 3�� ���    e d g e s�R  � ��� r   9 F��� n  9 D��� I   : D�G��F�G 0 tojson toJSON� ��E� K   : @�� �D���D 	0 nodes  � o   ; <�C�C 	0 nodes  � �B��A�B 	0 edges  � o   = >�@�@ 	0 edges  �A  �E  �F  �  f   9 :� o      �?�? 0 thejsondata theJSONData� ��� l  G G�>�=�<�>  �=  �<  � ��� l  G G�;���;  � # 	Ask for the file to write to   � ��� : 	 A s k   f o r   t h e   f i l e   t o   w r i t e   t o� ��� r   G V��� I  G R�:�9�
�: .sysonwflfile    ��� null�9  � �8��7
�8 
dfnm� m   K N�� ���  d a t a . j s o n�7  � o      �6�6 0 thefile theFile� ��5� n  W a��� I   X a�4��3�4 "0 writetexttofile writeTextToFile� ��� o   X Y�2�2 0 thejsondata theJSONData� ��� o   Y \�1�1 0 thefile theFile� ��0� m   \ ]�/
�/ boovtrue�0  �3  �  f   W X�5  � 5     �.��-
�. 
capp� m    �� ���  D N t p
�- kfrmID  � ��,� l     �+�*�)�+  �*  �)  �,       �(����'�&��������(  � �%�$�#�"�!� �����
�% 
pimr�$ *0 nsjsonserialization NSJSONSerialization�# 80 nsjsonwritingprettyprinted NSJSONWritingPrettyPrinted�" 0 maxdepth maxDepth�! "0 writetexttofile writeTextToFile�  0 tojson toJSON� 0 labelify  � 
0 nodify  � 
0 edgify  � 0 graphify  
� .aevtoappnull  �   � ****� ��� �  ���� � �
� 
vers�  � ���
� 
cobj� ��   �
� 
osax�  � ���
� 
cobj� ��   � 
� 
frmk�  �    ��
� misccura� *0 nsjsonserialization NSJSONSerialization�' �& � � ?���� "0 writetexttofile writeTextToFile� ��   �
�	��
 0 thetext theText�	 0 thefile theFile� 40 overwriteexistingcontent overwriteExistingContent�   ����� 0 thetext theText� 0 thefile theFile� 40 overwriteexistingcontent overwriteExistingContent� 0 theopenedfile theOpenedFile ���� ������������������
� 
perm
� .rdwropenshor       file
� 
set2
�  .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  
�� 
file� U 5��el E�O�e  ��jl Y hO����� O�j 	OeOPW X 
  *�/j 	W X 
 hOfOP� �� ��������� 0 tojson toJSON�� ����   ���� 0 x  ��   ������������ 0 x  �� 0 c  �� 0 ca  �� 0 json  �� 0 e    ����������������������������������������(*����>����LN
�� 
pcls
�� 
list
�� 
reco
�� 
bool
�� misccura�� *0 nsjsonserialization NSJSONSerialization
�� 
obj �� F0 !datawithjsonobject_options_error_ !dataWithJSONObject_options_error_
�� 
cobj
�� 
msng�� ,0 localizeddescription localizedDescription
�� 
ctxt�� 0 nsstring NSString�� 	0 alloc  �� ,0 nsutf8stringencoding NSUTF8StringEncoding�� 00 initwithdata_encoding_ initWithData_encoding_
�� 
ldt 
�� .sysoGMT long   ��� null
�� 
isot
�� 
TEXT
�� 
long
�� 
doub��  ��  �� Р�,E�O�� 
 �� �& H�E�O��,�b  �m+ E[�k/E�Z[�l/E�ZO��  �j+ 
�&Y ��,j+ ���,l+ �&Y w�a    a �*j a &a &%a %a %Y Q��  a �%a %Y ?�a  
 	�a  �& ��&Y '��  a Y  ��&W X  a �%�&a %� ��U�������� 0 labelify  �� ��	�� 	  ������ 0 thename theName�� 0 max  ��   ������ 0 thename theName�� 0 max   ����
�� 
leng
�� 
ctxt�� ��,� �Y �[�\[Zk\Z�2E� ��l����
���� 
0 nodify  �� ����   ���� 0 theitem theItem��  
 ������ 0 theitem theItem�� 0 newnode newNode ���������������������������������� 0 id  
�� 
ID  
�� 
TEXT�� 	0 label  
�� 
pnam�� �� 0 labelify  �� 0 size  �� 0 x  
�� misccura
�� 
from
�� 
to  �� 
�� 
�� .sysorandnmbr    ��� nmbr�� 0 y  �� :��,�&�)��,�&�l+ �k�� *�j��� U�� *�j��� U�E�O�� ����������� 
0 edgify  �� ����   ������ 0 itema itemA�� 0 itemb itemB��   ������������ 0 itema itemA�� 0 itemb itemB�� 
0 ida idA�� 
0 idb idB�� 0 newedge newEdge �������������
�� 
ID  
�� 
TEXT�� 0 id  �� 
0 source  �� 
0 target  �� �� "��,�&E�O��,�&E�O��%�%���E�O�� ����������� 0 graphify  �� ����   ������ 0 theitem theItem�� 	0 depth  ��   ���������������������������� 0 theitem theItem�� 	0 depth  �� 	0 nodes  �� 0 nodeids nodeIDs�� 	0 edges  �� 0 edgeids edgeIDs�� 0 node  �� 0 	childitem 	childItem�� 0 edge  �� 0 anodes aNodes�� 0 aedges aEdges�� 0 anode aNode�� 0 aedge aEdge ������������������������
�� 
capp
�� kfrmID  �� 
0 nodify  
�� 
DTch
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
0 edgify  �� 0 id  
�� 
ID  
�� 
TEXT� 0 graphify  �� �)���0 �jvE�OjvE�OjvE�OjvE�O)�k+ E�O��6FO�j � ���-[��l kh )��l+ E�O��,�6FO��6FO���,�& y)��kl+ E[�k/E�Z[�l/E�ZO ,�[��l kh ���, ��,�6FO��6FY h[OY��O ,�[��l kh ���, ��,�6FO��6FY h[OY��Y hOP[OY�_OPY hO��lvU� �~��}�|�{
�~ .aevtoappnull  �   � ****�}  �|     �z��y�x�w�v�u�t�s�r���q�p�o�n�m��l�k�j
�z 
capp
�y kfrmID  
�x 
DTcg�w 0 graphify  
�v 
cobj�u 	0 nodes  �t 	0 edges  
�s 
leng
�r 
TEXT
�q .sysodisAaleR        TEXT�p �o 0 tojson toJSON�n 0 thejsondata theJSONData
�m 
dfnm
�l .sysonwflfile    ��� null�k 0 thefile theFile�j "0 writetexttofile writeTextToFile�{ c)���0 [)*�,b  l+ E[�k/E�Z[�l/E�ZO��,�&�%��,�&%�%j O)�����k+ E�O*a a l E` O)�_ em+ U ascr  ��ޭ