
UNKNOWN_EF0D73: ;$EF0D73
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR0_TABLE),X
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7EB525)
	TAX
	LDA a:.LOWORD(RAM),X
	BEQ @UNKNOWN0
	DEC
	STA a:.LOWORD(RAM),X
@UNKNOWN0:
	RTL
