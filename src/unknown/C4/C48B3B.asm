
UNKNOWN_C48B3B: ;$C48B3B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $16
	LDA a:.LOWORD(UNKNOWN_7E0002)
	AND #$00FF
	AND #$0001
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN0:
	STZ $14
	BRA @UNKNOWN5
@UNKNOWN1:
	LDY #.LOWORD(GAME_STATE) + 150
	LDA ($14),Y
	AND #$00FF
	STA $02
	LDA #$0010
	CLC
	SBC $02
	BVC @UNKNOWN2
	BPL @UNKNOWN4
	BRA @UNKNOWN3
@UNKNOWN2:
	BMI @UNKNOWN4
@UNKNOWN3:
	LDA $14
	ASL
	TAX
	LDA .LOWORD(GAME_STATE)+162,X
	STA $04
	ASL
	STA $02
	LDA $16
	ASL
	TAX
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	STA $0E
	LDY .LOWORD(SPRITE_ABS_X_TABLE),X
	LDX $02
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	TAX
	STX $12
	LDX $02
	LDA .LOWORD(SPRITE_ABS_X_TABLE),X
	LDX $12
	JSL UNKNOWN_C41EFF
	LDY #$2000
	CLC
	ADC #$1000
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $10
	LDA $02
	CLC
	ADC #$2AF6
	TAX
	LDA $10
	STA $02
	LDA a:.LOWORD(RAM),X
	CMP $02
	BEQ @UNKNOWN4
	LDA $10
	STA a:.LOWORD(RAM),X
	LDA $04
	JSL UNKNOWN_C0A780
@UNKNOWN4:
	INC $14
@UNKNOWN5:
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	CMP $14
	BEQ @UNKNOWN6
	BCC @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN6:
	PLD
	RTL