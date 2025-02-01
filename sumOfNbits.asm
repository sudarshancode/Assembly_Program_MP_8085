;Write an assembly language program to calculate the sum of N-
;8 bits numbers stored in contigious menomry locations,where the
;first location will have the value of N

LXI H,3000H
MOV C,M ;THE VALUE OF N INTO C
INX H

MVI D,00H ;FOR STORE CARRY BIT
MVI E,00H ;FOR STORE SUM VALUE

LOOP: MOV A,M
ADD E ; A<-E
MOV E,A ;E<-A
JNC SKIP_CARRY ;IF HAS NOT ANY CAARY
INR D
SKIP_CARRY: INX H
DCR C
JNZ LOOP

MOV H,D
MOV L,E
SHLD 3006H
HLT
