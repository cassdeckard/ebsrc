
UNKNOWN_C0DB0F: ;$C0DB0F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA a:.LOWORD(PAD_2_STATE)
	AND #PAD::SELECT_BUTTON
	BEQ @UNKNOWN0
	JSR a:.LOWORD(UNKNOWN_C0DA31)
	JMP @UNKNOWN13
@UNKNOWN0:
	LDA #$FFFF
	STA $16
	LDY .LOWORD(UNKNOWN_7E0A50)
	STY $14
	BRA @UNKNOWN6
@UNKNOWN1:
	TYA
	LSR
	ASL
	TAX
	LDA .LOWORD(SPRITE_SCREEN_Y_TABLE),X
	CMP #$0100
	BCC @UNKNOWN2
	CMP #$FFC0
	BCC @UNKNOWN5
@UNKNOWN2:
	TYA
	LSR
	ASL
	TAX
	LDA .LOWORD(SPRITE_SCREEN_X_TABLE),X
	CMP #$0140
	BCC @UNKNOWN3
	CMP #$FFC0
	BCC @UNKNOWN5
@UNKNOWN3:
	TYA
	LSR
	STA $12
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_11),X
	CMP #$0001
	BNE @UNKNOWN4
	LDA $16
	STA .LOWORD(UNKNOWN_30X2_TABLE_23_),X
	LDA $12
	STA $16
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA $12
	JSR a:.LOWORD(UNKNOWN_C0A0CA)
@UNKNOWN5:
	LDY $14
	TYA
	LSR
	ASL
	TAX
	LDY .LOWORD(UNKNOWN_30X2_TABLE_1),X
	STY $14
@UNKNOWN6:
	TYA
	INC
	BNE @UNKNOWN1
	BRA @UNKNOWN12
@UNKNOWN7:
	LDA $16
	STA $10
	LDA $16
	ASL
	TAX
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	STA $0E
	LDA #$FFFF
	STA $04
	LDA $16
	STA $02
	LDY .LOWORD(UNKNOWN_30X2_TABLE_23_),X
	BRA @UNKNOWN10
@UNKNOWN8:
	TYA
	ASL
	TAX
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	CMP $0E
	BCC @UNKNOWN9
	STA $0E
	STY $10
	LDA $02
	STA $04
@UNKNOWN9:
	STY $02
	TYA
	ASL
	TAX
	LDY .LOWORD(UNKNOWN_30X2_TABLE_23_),X
@UNKNOWN10:
	TYA
	INC
	BNE @UNKNOWN8
	LDA $10
	JSR a:.LOWORD(UNKNOWN_C0A0CA)
	LDA $04
	INC
	BEQ @UNKNOWN11
	LDA $04
	ASL
	PHA
	LDA $10
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_23_),X
	PLX
	STA .LOWORD(UNKNOWN_30X2_TABLE_23_),X
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA $10
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_23_),X
	STA $16
@UNKNOWN12:
	LDA $16
	INC
	BNE @UNKNOWN7
@UNKNOWN13:
	PLD
	RTS
