
;Write program to add three numbers


MVI A,45H ; 45H  store in accumulator 

MVI B,45H ; 45H store in register B

ADD B ; register B value add with value of accumulator and store in accumulator : A=A+B

STA 2034H ; Store the result in 2034H memory address from accumulator

HLT ;end program