;Write an assembly language program to search an element among a list of 10 numbers
LXI H,3000H
MVI A,25H ;SEARCHING ELEMENT
STA 300AH ;STORE THE SEARCH ELEMENT

LDA 300AH
MOV D,A ;NOW D IS SEARCH ELEMENT
LXI H,3000H

MVI C,0AH ; SIZE_OF_LIST=10
MVI B,00H ;COUNTER=0

SEARCH_LOOP: MOV A,M
	CMP D ;COMPARE VALUE OF LIST WITH SEARCH ELEMENT
	JZ FOUND ;IF EQUAL THEN Z=1 JUMP TO FOUND
	INX H
	INR B
	DCR C
	JNZ SEARCH_LOOP

NOT_FOUND: MVI A,0FH
	
	STA 300BH
	JMP END
FOUND:	MOV A,B
		STA 300BH
END:	HLT
	



