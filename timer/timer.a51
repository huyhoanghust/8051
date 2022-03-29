ORG 000H
 MOV TMOD,#01H ;choïn mode 1 timer 0 ñeám 16 bit 
 LOOP1: MOV TH0,#HIGH(-500) ;ñoä roäng xung 500µs 
 MOV TL0,#LOW(-500) ; 
 SETB TR0 ;cho timer baét ñaàu ñeám 
 JNB TF0,$ ;chôø baùo ngaét 
 CLR TF0 ;xoùa côø ngaét 
 CPL P1.0 ;nghòch ñaûo bit p1.0 
 SJMP LOOP1 ;quay trôû laïi thöïc hieän tieáp 
 END