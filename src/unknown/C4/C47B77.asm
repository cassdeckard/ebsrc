
UNKNOWN_C47B77: ;$C47B77
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$FFFF
	STA a:.LOWORD(BG3_Y_POS)
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR0_TABLE),X
	STA $16
	LDA .LOWORD(ENTITY_SCRIPT_VAR1_TABLE),X
	STA $04
	LOADPTR ANIMATION_SEQUENCE_POINTERS, $06
	MOVE_INT $06, $12
	LDA $16
	ASL
	ASL
	ASL
	STA $02
	LDY #$0700
	LDA $04
	JSL MULT16
	STA $0A
	STZ $0C
	LDA $02
	INC
	INC
	INC
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $06
	STZ $08
	CLC
	ADD_INT_ASSIGN $06, $0A
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0008, $06
	COPY_TO_VRAM1P $06, $7C00, $0700, $00
	.A16
	LDA $02
	CLC
	ADC #$0006
	MOVE_INTX $12, $06
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	PHA
	LDA $04
	INC
	PLY
	STY $04
	CMP $04
	BNE @UNKNOWN0
	LDA #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	CLC
	ADC #$0007
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
@UNKNOWN1:
	PLD
	RTL
