
SBRK: ;$C086DE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	TAY
@UNKNOWN0:
	TYA
	CLC
	ADC a:.LOWORD(CURRENT_HEAP_ADDRESS)
	SEC
	SBC #HEAPSIZE
	CMP a:.LOWORD(BASE_HEAP_ADDRESS)
	BCS @UNKNOWN1
	ADC #HEAPSIZE
	LDY a:.LOWORD(CURRENT_HEAP_ADDRESS)
	STA a:.LOWORD(CURRENT_HEAP_ADDRESS)
	TYA
	RTL
@UNKNOWN1:
	LDA a:.LOWORD(UNKNOWN_7E002B)
	BEQ @UNKNOWN1
	STZ a:.LOWORD(UNKNOWN_7E002B)
	BRA @UNKNOWN0
	PHP
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(UNKNOWN_7E001E)
	AND #$007F
	STA a:.LOWORD(UNKNOWN_7E001E)
	STA f:NMITIMEN
	PLP
	RTL
