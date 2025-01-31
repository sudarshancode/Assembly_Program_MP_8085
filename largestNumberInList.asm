;Write an assembly language program to find the largest number among a list of 10 nombers stored in memory

LXI H,3000H
MVI B,0AH
MOV A,M
INX H

NEXT:	CMP M
	JNC SKIP
	MOV A,M
SKIP:	INX H
     	DCR B
     	JNZ NEXT
    
STA 300AH
HLT