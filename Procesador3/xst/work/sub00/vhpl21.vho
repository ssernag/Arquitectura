     � H  �         Xq�         �         :   arq_procesador3  � 
�          ]�  �� ,� �� � �A �� � _I �� �� Б �1 �� �q  � .Q M� l� |q �� �! ʑ A W1 zY �� �� � �A  �     a�  �� 0� �i � �) ��  � c1 �i �� �y � � Y � "� 29 Qy p� �Y �� �	 �y ) [ ~A �i �� �� �)        �� �9 Ʃ �Y SI vq �� �� � �Y �  �       �  �     
�          '  >�  U�         *�  Bi  Y�          a�     @     Y     ' Q3     q  A      #)     @      Y     v  �\     Y      *�     :   In1  *�  �     p   *  '      #)          �     @     2�     ' Q3     .�  6�      :�     @      2�     v  �\     2�      Bi     :   SalidaPC  Bi  �     p   +  >�      :�          �     @     J9     ' Q3     FQ  N!      R	     @      J9     v  �\     J9      Y�     :   SalidaSumador  Y�  �     p   ,  U�     R	          �     :   ADDER  a�  �        (  ]�  �  �          y  ��  �A  ��  �!         }  �q  �)  ��  �	          ��     @     ma     ' Q3     iy  qI      u1     @      ma     v  �\     ma      }     :   Crs1  }  e�     p   2  y      u1          e�     @     ��     ' Q3     ��  ��      ��     @      ��     v  �\     ��      �q     :   Crs2  �q  e�     p   3  ��      ��          e�     v  ��          �)     :   Carry  �)  e�     p   4  �A      �Y          e�     @     ��     ' Q3     �  ��      ��     @      ��     v  �\     ��      ��     :   OutUC  ��  e�     p   5  ��      ��          e�     @     �i     ' Q3     ��  �Q      �9     @      �i     v  �\     �i      �	     :   OutAlu  �	  e�     p   6  �!     �9          e�     :   ALU  ��  �        0  ��  e�  �          ީ  � � $�         �  � q (�         0�     :   i  �  ��     p   <  ީ      �Y          ��     @     �a     ' Q3     �y  �I      �1     @      �a     v  �\     �a      �     :   Out_SEU  �  ��     p   =  �      �1          ��     @    �     ' Q3     �� �     	�     @     �     v  �\    �     q     :   Crs2 q  ��     p   > �     	�          ��     @    A     ' Q3    Y )     !     @     A     v  �\    A     (�     :   Out_MUX (�  ��     p   ? $�    !          ��     :   Multiplexor 0�  �        : ,�  ��  �         H! _� w ~� �A ��        L	 cy z� �� �) ��         �i     @    <i     ' Q3    8� @Q     D9     @     <i     v  �\    <i     L	     :   OutUC L	 4�     p   E H!     D9         4�     @    S�     ' Q3    O� W�     [�     @     S�     v  �\    S�     cy     :   Crs1 cy 4�     p   F _�     [�         4�     @    kI     ' Q3    ga o1     s     @     kI     v  �\    kI     z�     :   Crs2 z� 4�     p   G w     s         4�     :   Reset �� 4�     p   H ~�      �Y         4�     @    ��     ' Q3    �� �q     �Y     @     ��     v  �\    ��     �)     :   OutALU �) 4�     p   I �A     �Y         4�     @    ��     ' Q3    � ��     ��     @     ��     v  �\    ��     ��     :   NZVC �� 4�     p   J ��    ��         4�     :   PSRModifier �i  �        C �� 4�  �         �9 �	 �y �I        �! �� �a �1         �     :   CLK �! �Q     p   P �9      �Y         �Q     :   Reset �� �Q     p   Q �	      �Y         �Q     @    ��     ' Q3    �� ة     ܑ     @     ��     v  �\    ��     �a     :   NZVC �a �Q     p   R �y     ܑ         �Q     :   Carry �1 �Q     p   S �I     �Y         �Q     :   PSR �  �        N � �Q  �         q "� :Q Q� Y� q �q        Y &� >9 U� ]y t� �Y         �)     @    ��     ' Q3    �� �     �     @     ��     v  �\    ��     Y     :   Rd Y ��     p   Z q     �         ��     @    )     ' Q3    A      �     @     )     v  �\    )     &�     :   Rs1 &� ��     p   [ "�     �         ��     @    .�     ' Q3    *� 2�     6i     @     .�     v  �\    .�     >9     :   Rs2 >9 ��     p   \ :Q     6i         ��     @    F	     ' Q3    B! I�     M�     @     F	     v  �\    F	     U�     :   dwr U� ��     p   ] Q�     M�         ��     :   Reset ]y ��     p   ^ Y�      �Y         ��     @    eI     ' Q3    aa i1     m     @     eI     v  �\    eI     t�     :   Crs1 t� ��     p   _ q    m         ��     @    |�     ' Q3    x� ��     ��     @     |�     v  �\    |�     �Y     :   Crs2 �Y ��     p   ` �q    ��         ��     :   RF �)  �        X �A ��  �         �� �	        �� ��         ��     @    ��     ' Q3    �� ��     ��     @     ��     v  �\    ��     ��     :   	IMM13Bits �� �     p   f ��     ��         �     @    �Q     ' Q3    �i �9     �!     @     �Q     v  �\    �Q     ��     :   Out_SEU �� �     p   g �	    �!         �     :   SEU ��  �        d �� �  �         �1 ��         � � �          �     @    �y     ' Q3    ֑ �a     �I     @     �y     v  �\    �y     �     :   op � ҩ     p   m �1     �I         ҩ     @    ��     ' Q3    � ��     ��     @     ��     v  �\    ��     �     :   op3 � ҩ     p   n ��     ��         ҩ     @    	Y     ' Q3    q A     )     @     	Y     v  �\    	Y     �     :   OutUC � ҩ     p   o     )         ҩ     :   UC  �  �        k � ҩ  �         89 @	 Wy        <! C� [a         c1     @    ,�     ' Q3    (� 0i     4Q     @     ,�     v  �\    ,�     <!     :   address <! $�     p   u 89     4Q         $�     :   reset C� $�     p   v @	      �Y         $�     @    K�     ' Q3    G� O�     S�     @     K�     v  �\    K�     [a     :   outInstruction [a $�     p   w Wy    S�         $�     :   instructionMemory c1  �        s _I $�  �         z� �q �A ��        ~� �Y �) ��         �i     @    n�     ' Q3    k r�     v�     @     n�     v  �\    n�     ~�     :   SalidaSumador ~� g     p   } z�     v�         g     :   CLK �Y g     p   ~ �q      �Y         g     :   Reset �) g     p    �A      �Y         g     @    ��     ' Q3    � ��     ��     @     ��     v  �\    ��     ��     :   	SalidaNpc �� g     p   � ��    ��         g     :   nPC �i  �        { �� g  �     @    �9     ' Q3    �Q �!     �	     @     �9     v  �\    �9     ��     :   sumadorToNpc ��  �     p   � ��    �	 ̩      �     
    �9  � ̩      �	    �� ��     :   NPcToIM �y  �     p   � Б    �	 �I      �     
    �9  � �I      �	    �a �y     :   IMToURS �  �     p   � �1    �	 ��      �     
    �9  � ��      �	    � �     :   ALUOut �  �     p   � ��    �	 ��      �     
    �9  � ��      �	    �� �     :   RFToALU Y  �     p   � �q    �	 )      �     
    �9  � )      �	    A Y     :   RFToMUX �  �     p   �     �	 �      �     
    �9  � �      �	    � �     :   MUXtoALU "�  �     p   � �    �	 *i      �     
    �9  � *i      �	    &� "�     :   SEUtoMUX 29  �     p   � .Q    �	 :	      �     
    �9  � :	      �	    6! 29     @    A�     ' Q3    =� E�     I�     @     A�     v  �\    A�     Qy     :   OUC Qy  �     p   � M�    I� YI      �     
    A�  � YI      I�    Ua Qy     @    a     ' Q3    ]1 e     h�     @     a     v  �\    a     p�     :   PSRModifier_PSR p�  �     p   � l�    h� x�      �     
    a  � x�      h�    t� p�     :   PSRToALU �Y  �     p   � |q     �Y  \      �     s    00000000000000000000000000000001  �\ �)     \     ' �A ��     \     >� Б ��     \     U� �� ��        � ��  ]�    �) � ��      �     :   
Inst_ADDER ��  �     E   � �� ��  �     \    z� �� �9     \    �q  ' �9     \    �A  B �9     \    �� Б �9        � �! ��    �� �� �i �Q      �     :   Inst_nPC �	  �     E   � �! �9  �     \    89 Б Ʃ     \    @	  B Ʃ     \    Wy �1 Ʃ        � ʑ _I    �� �� ��      �     :   Inst_instructionMemory �y  �     E   � ʑ Ʃ  �     @    �I     ' Q3    �a �1     �     @    �I     q    �1 �I �     \    �1 � �Y     @    ��     ' Q3    �� ��     �     @    ��     q    �1 �� ��     \    �� � �Y     \     M� �Y        � A �    � �� �q      �     :   Inst_UC )  �     E   � A �Y  �     @    �     ' Q3    	 �     �     @    �     q    �1 � �     \    q � SI     @     �     ' Q3    � $i     (Q     @     �     q    �1  � ,9     \    "� (Q SI     @    4	     ' Q3    0! 7�     ;�     @     4	     q    �1 4	 ?�     \    :Q ;� SI     \    q �q SI     \    �q  SI     \    Q� �� SI     \    Y�  B SI        � W1 �A    � ,9 ?� Ky Oa C� G�      �     :   Inst_RF [  �     E   � W1 SI  �     @    b�     ' Q3    _ f�     j�     @     b�     q    �1 b� n�     \    �� j� vq     \    �	 .Q vq        � zY ��    n� r�      �     :   Inst_SEU ~A  �     E   � zY vq  �     @    �     >    �1 �) ��     \     ީ � ��     \     � .Q ��     \    �  ��     \    $� � ��        � �� ,�    �� �� �� ��      �     :   Inst_Multiplexor �i  �     E   � �� ��  �     \    �9  ' ��     \    �	  B ��     \    �y l� ��     \    �I |q ��        � �� �    �Q �9 �! �	      �     :   Inst_PSR ��  �     E   � �� ��  �     \    H! M� �     \    _� �q �     \    w � �     \    ~�  B �     \    �A �� �     \    �� l� �        � � ��    �� đ �y �a �I �1      �     :   Inst_PSRModifier ��  �     E   � � �  �     \     y �q �Y     \     �� � �Y     \     �A |q �Y     \     �� M� �Y     \     �! �� �Y        � �A  ��    �� � � � �q      �     :   Inst_ALU �)  �     E   � �A �Y  �     � ��         �        �       >�              �     %     �  �  J:     � �     �   C:/Users/CBAS/Desktop/UTP/Laboratorio de electronica/EJERCICIOS/XILINX PROYECTOS 20152 NOVIEMBRE 07/Procesador3/Procesador3.vhd 
�  �                Procesador3   arq_procesador3   work      Procesador3   arq_procesador3   work      procesador3       work      standard       std      std_logic_1164       IEEE