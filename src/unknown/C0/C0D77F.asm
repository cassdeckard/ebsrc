
UNKNOWN_C0D77F: ;$C0D77F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	CMP .LOWORD(UNKNOWN_7E1A42)
	BEQ @UNKNOWN1
	CMP #$0017
	BEQ @UNKNOWN1
	ASL
	CLC
	ADC #.LOWORD(SPRITE_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA a:.LOWORD(RAM),X
@UNKNOWN1:
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	CMP #$001E
	BCC @UNKNOWN0
	PLD
	RTL
