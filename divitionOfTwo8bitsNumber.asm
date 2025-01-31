;Write an assembly language program for divide two 8 bit 
;numbers stored in contagious memory locations

LDA 3001H
MOV B,A
MVI C,00H
LDA 3000H

LOOP: CMP B
JC SKIP
SUB B
INR C
JMP LOOP

SKIP: STA 3003H
MOV A,C
STA 3002H
HLT
