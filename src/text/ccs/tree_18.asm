
CC_18_TREE: ;$C1790B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAY
	STY $0E
	TXA
	BEQ @UNKNOWN0
	CMP #$0001
	BEQ @UNKNOWN1
	CMP #$0002
	BEQ @UNKNOWN2
	CMP #$0003
	BEQ @UNKNOWN3
	CMP #$0004
	BEQ @UNKNOWN4
	CMP #$0005
	BEQ @UNKNOWN5
	CMP #$0006
	BEQ @UNKNOWN6
	CMP #$0007
	BEQ @UNKNOWN7
	CMP #$0008
	BEQ @UNKNOWN8
	CMP #$0009
	BEQ @UNKNOWN9
	CMP #$000A
	BEQ @UNKNOWN10
	CMP #$000D
	BEQ @UNKNOWN11
	BRA @UNKNOWN12
@UNKNOWN0:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	BRA @UNKNOWN12
@UNKNOWN1:
	LDA #.LOWORD(CC_18_01)
	BRA @UNKNOWN13
@UNKNOWN2:
	TYA
	CLC
	ADC #$0006
	JSL UNKNOWN_C20A20
	LDA #$0001
	LDY $0E
	STA a:.LOWORD(RAM)+4,Y
	BRA @UNKNOWN12
@UNKNOWN3:
	LDA #.LOWORD(CC_18_03)
	BRA @UNKNOWN13
@UNKNOWN4:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JSR a:.LOWORD(HIDE_HPPP_WINDOWS)
	JSL UNKNOWN_C12DD5
	BRA @UNKNOWN12
@UNKNOWN5:
	LDA #.LOWORD(CC_18_05)
	BRA @UNKNOWN13
@UNKNOWN6:
	JSR a:.LOWORD(UNKNOWN_C10FA3)
	BRA @UNKNOWN12
@UNKNOWN7:
	LDA #.LOWORD(CC_18_07)
	BRA @UNKNOWN13
@UNKNOWN8:
	LDA #.LOWORD(CC_18_08)
	BRA @UNKNOWN13
@UNKNOWN9:
	LDA #.LOWORD(CC_18_09)
	BRA @UNKNOWN13
@UNKNOWN10:
	JSR a:.LOWORD(UNKNOWN_C1AA18)
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA #.LOWORD(CC_18_0D)
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA #$0000
@UNKNOWN13:
	PLD
	RTS
