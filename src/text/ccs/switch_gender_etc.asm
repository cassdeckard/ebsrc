
CC_1C_15: ;$C151FC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $12
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+14,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN3
	LDX $12
	CPX #$0001
	BEQ @UNKNOWN2
	LDA .LOWORD(ENEMIES_IN_BATTLE)
	CMP #$0003
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	LDX #$0003
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX .LOWORD(ENEMIES_IN_BATTLE)
@UNKNOWN1:
	TXA
	BRA @UNKNOWN7
@UNKNOWN2:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM),X
	LDY #$005E
	JSL MULT168
	CLC
	ADC #enemy_data::gender
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	AND #$00FF
	BRA @UNKNOWN7
@UNKNOWN3:
	LDX $12
	CPX #$0001
	BEQ @UNKNOWN5
	JSL UNKNOWN_C2272F
	TAX
	CPX #$0003
	BCC @UNKNOWN4
	BEQ @UNKNOWN4
	LDX #$0003
@UNKNOWN4:
	TXA
	BRA @UNKNOWN7
@UNKNOWN5:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM),X
	CMP #$0002
	BNE @UNKNOWN6
	LDA #$0002
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA #$0001
@UNKNOWN7:
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
	PLD
	RTS
