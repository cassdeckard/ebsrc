
UNKNOWN_EF0EE8: ;$EF0EE8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA #$0000
	STA $02
	BRA @UNKNOWN3
@UNKNOWN0:
	LOADPTR TIMED_DELIVERY_TABLE, $06
	LDA $02
	OPTIMIZED_MULT $04, 20
	TAX
	STX $14
	TXA
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN2
	LDA $02
	STA .LOWORD(UNKNOWN_7E0A38)
	LDX $14
	TXA
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $12
	BNE @UNKNOWN1
	JSL RAND
	AND #$0003
	ASL
	TAX
	LDA UNUSED_FORSALE_SIGN_SPRITE_TABLE,X
	STA $12
@UNKNOWN1:
	LDA #$0000
	STA $0E
	STA $10
	LDY #$FFFF
	LDX #EVENT_SCRIPT::EVENT_500
	LDA $12
	JSL CREATE_ENTITY
@UNKNOWN2:
	INC $02
@UNKNOWN3:
	LDA $02
	CMP #$000A
	BCC @UNKNOWN0
	PLD
	RTL