	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0, =N
	LDR R1,[R0]
	MLA R3,R1,R1,R1
	LSR R3,#1
	LDR R2, =SUM
	STR R3,[R2]
	
STOP B STOP
N DCD 4
	AREA data, DATA, READWRITE
SUM DCD 0
	END