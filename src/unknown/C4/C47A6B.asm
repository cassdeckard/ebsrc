
UNKNOWN_C47A6B: ;$C47A6B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	STA $10
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAX
	STX $0E
	LDA $10
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),X
	STA $10
	STA $04
	LDX $0E
	LDA a:.LOWORD(RAM),X
	SEC
	SBC $04
	STA $02
	LDA $10
	SEC
	SBC $02
	STA a:.LOWORD(RAM),X
	PLD
	RTL
