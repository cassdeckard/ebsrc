
GET_DIRECTION_ROTATED_CLOCKWISE: ;$C0C682
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA $0E
	CLC
	ADC .LOWORD(ENTITY_DIRECTIONS),X
	AND #$0007
	PLD
	RTL