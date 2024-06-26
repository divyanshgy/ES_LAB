	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000 ; stack pointer value when stack is empty
	DCD Reset_Handler ; reset vector
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	MOV R3,#N
	LDR R0, =SRC+(N-1)*4
	LDR R1,=SRC+(N-1+S)*4
up	LDR R2,[R0],#-4
	STR R2,[R1],#-4
	SUBS R3,#1
	BNE up
STOP B STOP
N EQU 3
S EQU 2
	AREA data, DATA, READWRITE
SRC DCD 0,0,0,0,0
	END