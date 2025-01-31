;Write an assembly language program for multiplying two 8 bit numbers stored in contigious memory locations and store the result in next memory locations

LDA 3000H
MOV B,A
LDA 3001H
MOV C,A
MVI A,00H
LOOP: ADD B
	DCR C
	JNZ LOOP
STA 3003H
HLT
	