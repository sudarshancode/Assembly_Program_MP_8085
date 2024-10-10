
;Division of two numbers

LXI H,2051H

MOV B,M ; denomenator

MVI C,00H

INX H

MOV A,M

L2: 	CMP B
	JC L1
	SUB B
	INR C
	JMP L2

L1:	STA 2053H ;Remainder
	MOV A,C
	STA 2054H ;Questiont
hlt