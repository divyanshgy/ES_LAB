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
	LDR R0, =0xF1111111
	LDR R1, =0xF1111111
	ADDS R2,R0,R1
	LDR R3,[R2]
STOP B STOP
	AREA data, DATA, READWRITE
	END