
UNKNOWN_C46CC7: ;$C46CC7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	LDY .LOWORD(CURRENT_ENTITY_SLOT)
	STY $10
	TXA
	JSL UNKNOWN_C46028
	STA $0E
	LDY $10
	TYA
	ASL
	TAY
	LDA $0E
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	STA .LOWORD(ENTITY_ABS_X_TABLE),Y
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA .LOWORD(ENTITY_ABS_Y_TABLE),Y
	PLD
	RTL
