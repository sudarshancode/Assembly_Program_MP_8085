;Write instructions to subtract two bytes already stored in memory registers 2051H and 2052H. Location 2051H holds 
;the byte 49h and 2052H holds the byte 9FH. Subtract the first byte 49H , from the second byte ,9FH and store the answer in memory location 2053H.


LDA 2051H ; 49H value store in accumulator

MOV B,A ; the accumulator value store in B register 

LDA 2052H ; fetch second value from 2052H location and store it in the accumalator 

SUB B ; A=A-B

STA 2053H ; store the accumulator value in 2053H location

HLT ; program end 