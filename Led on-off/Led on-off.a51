ORG 000H
Start:
	Mov	P2,#01010101b
	Acall 	delay
	Mov 	P2,#10101010b
	Acall 	delay
	Sjmp 	Start
delay:
	Mov 	R7,#0FFH
Check1:
	Mov	R6,#0FFH
Check2:
	Djnz	R6,Check2
	Djnz	R7,Check1
	Ret
End

	




	
	