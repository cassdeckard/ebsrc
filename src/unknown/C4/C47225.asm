
UNKNOWN_C47225: ;$C47225
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	STX $02
	STA $04
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAY
	CLC
	ADC #.LOWORD(ENTITY_ABS_X_TABLE)
	TAX
	LDA a:.LOWORD(RAM),X
	SEC
	SBC $02
	STA .LOWORD(ENTITY_SCRIPT_VAR0_TABLE),Y
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	STA .LOWORD(ENTITY_SCRIPT_VAR1_TABLE),Y
	TYA
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAX
	LDA a:.LOWORD(RAM),X
	SEC
	SBC $04
	STA .LOWORD(ENTITY_SCRIPT_VAR2_TABLE),Y
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $04
	STA .LOWORD(ENTITY_SCRIPT_VAR3_TABLE),Y
	PLD
	RTL
