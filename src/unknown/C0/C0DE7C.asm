
UNKNOWN_C0DE7C: ;$C0DE7C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #.LOWORD(CHAR_STRUCT)
	STA .LOWORD(UNKNOWN_7E4DC6)
	LDY #$0018
	BRA @UNKNOWN1
@UNKNOWN0:
	TYA
	ASL
	STA $0E
	TAX
	LDA #$0008
	STA .LOWORD(ENTITY_SCRIPT_VAR3_TABLE),X
	LDA $0E
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$FFFF ^ SPRITE_TABLE_10_FLAGS::UNKNOWN11
	STA a:.LOWORD(RAM),X
	LDA $0E
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_24)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$7FFF
	STA a:.LOWORD(RAM),X
	LDA #$FFFF
	LDX .LOWORD(UNKNOWN_7E4DC6)
	STA a:char_struct::unknown55,X
	LDA .LOWORD(UNKNOWN_7E4DC6)
	CLC
	ADC #.SIZEOF(char_struct)
	STA .LOWORD(UNKNOWN_7E4DC6)
	INY
@UNKNOWN1:
	CPY #$001E
	BCC @UNKNOWN0
	JSL CHANGE_MUSIC_5DD6
	PLD
	RTS
