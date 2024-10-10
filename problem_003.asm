;Multiplication of two numbers in 8085 MP
LXI H,2051H

MOV B,M

MVI A,00H

INX H ; Now m pointer point 2052H address

MOV C,M ; Value of 2052H store in C register 

L1: 	ADD B ; A=A+B initialy A=00h
	DCR C
	JNZ L1 ; JNZ means jumps if not zero privious register value , C!=0
INX H
MOV M,A
hlt