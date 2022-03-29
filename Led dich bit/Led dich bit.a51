	ORG	000H
	
	mov	P0,#0FFh
	acall	delay
	mov	A,#11111110b
start:
	mov	P0,A
	acall	delay
	rl	A	;Dich bit sang trai
	sjmp	start
	
delay:
	mov	R7,#0FFh
check1:
	mov	R6,#0ffh
check2:
	djnz	R6,check2
	djnz	R7,check1
	Ret
End
	

		