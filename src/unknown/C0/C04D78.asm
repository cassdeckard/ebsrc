
UNKNOWN_C04D78: ;$C04D78
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 30
	LDA .LOWORD(GAME_STATE)+176
	CMP #$0003
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN0:
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BEQ @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN1:
	LDA .LOWORD(UNKNOWN_7E4DBA)
	BEQ @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN2:
	LDA .LOWORD(BATTLE_DEBUG)
	BEQ @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $04
	STA $1C
	LDA $04
	ASL
	TAX
	STX $1A
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	STA $18
	LDA .LOWORD(UNKNOWN_30X2_TABLE_4),X
	ASL
	TAX
	LDY .LOWORD(CHOSEN_FOUR_PTRS),X
	STY .LOWORD(UNKNOWN_7E4DC6)
	LDA a:.LOWORD(RAM)+61,Y
	STA $16
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$5156
	STA $14
	LDY #$0008
	LDA ($14),Y
	LDX $1A
	STA .LOWORD(ENTITY_DIRECTIONS),X
	LDY #$0004
	LDA ($14),Y
	STA .LOWORD(UNKNOWN_30X2_TABLE_37),X
	LDA $14
	CLC
	ADC #$0006
	STA $02
	LDY .LOWORD(UNKNOWN_7E1A42)
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAX
	LDA $18
	JSL UNKNOWN_C07A56
	LDA .LOWORD(GAME_STATE)+144
	BNE @UNKNOWN4
	LDX $02
	LDA a:.LOWORD(RAM),X
	CMP #$000C
	BEQ @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN4:
	LDA $1C
	STA $04
	ASL
	TAX
	LDA ($14)
	STA .LOWORD(SPRITE_ABS_X_TABLE),X
	LDY #$0002
	LDA ($14),Y
	STA .LOWORD(SPRITE_ABS_Y_TABLE),X
	LDX #$0000
	STX $1C
	LDA .LOWORD(GAME_STATE)+150
	AND #$00FF
	STA $02
	LDA $18
	INC
	CMP $02
	BEQ @UNKNOWN11
	LDY #$0006
	LDA ($14),Y
	AND #$00FF
	CMP #$0007
	BEQ @UNKNOWN5
	CMP #$0008
	BEQ @UNKNOWN5
	CMP #$000C
	BEQ @UNKNOWN6
	CMP #$000D
	BEQ @UNKNOWN8
	BRA @UNKNOWN9
@UNKNOWN5:
	LDA #$001E
	STA $12
	BRA @UNKNOWN11
@UNKNOWN6:
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	BNE @UNKNOWN7
	LDX #$0001
	STX $1C
	BRA @UNKNOWN11
@UNKNOWN7:
	LDA #$001E
	STA $12
	BRA @UNKNOWN11
@UNKNOWN8:
	LDA #$0018
	STA $12
	BRA @UNKNOWN11
@UNKNOWN9:
	LDA .LOWORD(GAME_STATE)+146
	CMP #$0003
	BNE @UNKNOWN10
	LDA #$0008
	STA $12
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA #$000C
	STA $12
@UNKNOWN11:
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	ASL
	TAX
	LDA f:CHARACTER_SIZES,X
	CLC
	ADC $12
	STA $10
	LDY #$0006
	LDA ($14),Y
	LDX .LOWORD(UNKNOWN_7E4DC6)
	STA a:.LOWORD(RAM)+65,X
	LDA .LOWORD(GAME_STATE)+150
	AND #$00FF
	STA $02
	LDA $18
	INC
	CMP $02
	BEQ @UNKNOWN12
	LDX $1C
	BNE @UNKNOWN12
	LDA #$0002
	STA $0E
	LDY $16
	LDA $10
	TAX
	LDA $18
	JSL UNKNOWN_C03EC3
	STA $1A
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA $16
	INC
	STA $1A
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_10)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$FFFF ^ (SPRITE_TABLE_10_FLAGS::UNKNOWN12)
	STA a:.LOWORD(RAM),X
@UNKNOWN13:
	LDA $1A
	AND #$00FF
	LDX .LOWORD(UNKNOWN_7E4DC6)
	STA a:.LOWORD(RAM)+61,X
@UNKNOWN14:
	PLD
	RTL
