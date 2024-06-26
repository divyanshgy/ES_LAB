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
	LDR R0,=N1
	LDR R1,=N2
	LDR R3,=RES
	MOV R4,#4
up  LDR R5,[R0],#4
	LDR R6,[R1],#4
	ADCS R7,R5,R6
	STR R7,[R3],#4
	SUB R4,#1
	TEQ R4,#0
	BNE up
	
	ADC R8,#0
	STR R8,[R3]
	
STOP B STOP
N1 DCD 0x12345678,0x11111111
N2 DCD 0x22222222,0x55555555
	AREA data, DATA, READWRITE
RES DCD 0,0,0
	END