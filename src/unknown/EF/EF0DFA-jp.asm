
UNKNOWN_EF0DFA: ;$EF0DFA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LOADPTR TIMED_DELIVERY_TABLE, $06
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR0_TABLE),X
	OPTIMIZED_MULT $04, 20
	CLC
	ADC #$000F
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	STA $14
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA a:.LOWORD(ENTITY_SCRIPT_VAR0_TABLE),X
	OPTIMIZED_MULT $04, 20
	CLC
	ADC #$000D
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $12
	STA $06
	LDA $14
	STA $08
	MOVE_INT $06, $0E
	LDA #$000A
	JSL UNKNOWN_C064E3
	PLD
	RTL
