
UNKNOWN_C47A9E: ;$C47A9E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 28
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR0_TABLE),X
	STA $1A
	LOADPTR ANIMATION_SEQUENCE_POINTERS, $06
	MOVE_INT $06, $16
	LDA $1A
	ASL
	ASL
	ASL
	STA $1A
	LOADPTR UNKNOWN_7F0000, $0A
	LDA $1A
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	JSL DECOMP
	LDA $1A
	INC
	INC
	INC
	INC
	MOVE_INTX $16, $06
	CLC
	ADC $06
	STA $06
	STA $16
	LDA $08
	STA $18
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LDY #$6000
	MOVE_INT $16, $06
	LDA [$06]
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL TRANSFER_TO_VRAM
	.A16
	LDA [$06]
	STA $06
	STZ $08
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $0E
	LDX #$0008
	LDA #$0200
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E0030)
	REP #PROC_FLAGS::ACCUM8
	LDA #$FFFF
	STA a:.LOWORD(BG3_Y_POS)
	PLD
	RTL
