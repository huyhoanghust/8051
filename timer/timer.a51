ORG 000H
 MOV TMOD,#01H ;cho�n mode 1 timer 0 �e�m 16 bit 
 LOOP1: MOV TH0,#HIGH(-500) ;�o� ro�ng xung 500�s 
 MOV TL0,#LOW(-500) ; 
 SETB TR0 ;cho timer ba�t �a�u �e�m 
 JNB TF0,$ ;ch�� ba�o nga�t 
 CLR TF0 ;xo�a c�� nga�t 
 CPL P1.0 ;ngh�ch �a�o bit p1.0 
 SJMP LOOP1 ;quay tr�� la�i th��c hie�n tie�p 
 END