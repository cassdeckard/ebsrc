
INIT_INTRO: ;$C4DAD2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $02
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB4B6)
	LDA #$0002
	JSL UNKNOWN_C0AC0C
	JSL UNKNOWN_C0927C
	JSL UNKNOWN_C200D9
	JSL UNKNOWN_C432B1
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5DD8)
	STZ a:.LOWORD(BG3_X_POS)
	STZ a:.LOWORD(BG3_Y_POS)
	STZ a:.LOWORD(BG2_Y_POS)
	STZ a:.LOWORD(BG2_X_POS)
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL UPDATE_SCREEN
	STZ a:.LOWORD(BG3_X_POS)
	STZ a:.LOWORD(BG3_Y_POS)
	STZ a:.LOWORD(BG2_Y_POS)
	STZ a:.LOWORD(BG2_X_POS)
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL UPDATE_SCREEN
@UNKNOWN0:
	LDA $02
	BEQ @UNKNOWN11
	CMP #$0001
	BEQL @UNKNOWN14
	CMP #$0002
	BEQL @UNKNOWN17
	CMP #$0003
	BEQL @UNKNOWN18
	CMP #$0004
	BEQL @UNKNOWN19
	CMP #$0005
	BEQL @UNKNOWN20
	CMP #$0006
	BEQL @UNKNOWN21
	CMP #$0007
	BEQL @UNKNOWN22
	CMP #$0008
	BEQL @UNKNOWN23
	CMP #$0009
	BEQL @UNKNOWN24
	CMP #$000A
	BEQL @UNKNOWN25
	JMP @UNKNOWN26
@UNKNOWN11:
	JSL LOGO_SCREEN
	CMP #$0000
	BEQ @UNKNOWN13
	LDA #$0002
	JSL UNKNOWN_C0AC0C
	LDA a:.LOWORD(INIDISP_MIRROR)
	AND #$00FF
	CMP #$0080
	BEQ @UNKNOWN12
	LDY #$0000
	LDX #$0001
	LDA #$0004
	JSL FADE_OUT_WITH_MOSAIC
@UNKNOWN12:
	LDA #MUSIC::TITLE_SCREEN
	JSL CHANGE_MUSIC
	LDA #$0001
	JSL SHOW_TITLE_SCREEN
	TAX
	STX $0E
	LDA #$0002
	STA $02
	JMP @UNKNOWN27
@UNKNOWN13:
	LDX #$0000
	STX $0E
	JMP @UNKNOWN27
@UNKNOWN14:
	LDA #MUSIC::GAS_STATION
	JSL CHANGE_MUSIC
	JSL GAS_STATION
	CMP #$0000
	BEQ @UNKNOWN16
	LDA #$0002
	JSL UNKNOWN_C0AC0C
	LDA a:.LOWORD(INIDISP_MIRROR)
	AND #$00FF
	CMP #$0080
	BEQ @UNKNOWN15
	LDY #$0000
	LDX #$0001
	LDA #$0004
	JSL FADE_OUT_WITH_MOSAIC
@UNKNOWN15:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA f:CGADSUB
	STA f:CGWSEL
	LDA #$0001
	STA a:.LOWORD(TM_MIRROR)
	STZ a:.LOWORD(TD_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	LDA #MUSIC::TITLE_SCREEN
	JSL CHANGE_MUSIC
	LDA #$0001
	JSL SHOW_TITLE_SCREEN
	TAX
	STX $0E
	INC $02
	JMP @UNKNOWN27
@UNKNOWN16:
	LDX #$0000
	STX $0E
	JMP @UNKNOWN27
@UNKNOWN17:
	LDA #MUSIC::TITLE_SCREEN
	JSL CHANGE_MUSIC
	LDA #$0000
	JSL SHOW_TITLE_SCREEN
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN18:
	LDA #MUSIC::ATTRACT_MODE
	JSL CHANGE_MUSIC
	LDA #$0000
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN19:
	LDA #$0002
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN20:
	LDA #$0003
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN21:
	LDA #$0004
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN22:
	LDA #$0005
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN23:
	LDA #$0006
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN24:
	LDA #$0007
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN25:
	LDA #$0009
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN26:
	LDA #$0001
	STA $02
@UNKNOWN27:
	INC $02
	LDX $0E
	BEQL @UNKNOWN0
	LDA #$0002
	JSL UNKNOWN_C0AC0C
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(UNKNOWN_7E0028)
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(INIDISP_MIRROR)
	AND #$00FF
	CMP #$0080
	BEQ @UNKNOWN29
	LDY #$0000
	LDX #$0001
	LDA #$0004
	JSL FADE_OUT_WITH_MOSAIC
@UNKNOWN29:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA f:CGADSUB
	STA f:CGWSEL
	LDA #$0001
	STA a:.LOWORD(TM_MIRROR)
	STZ a:.LOWORD(TD_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5DD8)
	PLD
	RTL
