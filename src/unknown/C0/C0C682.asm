
UNKNOWN_C0C682: ;$C0C682
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA $0E
	CLC
	ADC .LOWORD(UNKNOWN_30X2_TABLE_34),X
	AND #$0007
	PLD
	RTL
