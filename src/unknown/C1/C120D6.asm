
UNKNOWN_C120D6: ;$C120D6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STX $16
	TAY
	STY $14
	JSL SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN31
	LOADPTR BATTLE_TO_TEXT, $0E
	LDA #$0003
	JSR a:.LOWORD(PRINT_STRING)
	LDX $16
	CPX #$FFFF
	BEQL @UNKNOWN3
	STX $02
	LDY $14
	TYA
	LDY .LOWORD(NUM_BATTLERS_IN_BACK_ROW)
	JSL MULT16
	CLC
	ADC $02
	INC
	JSL UNKNOWN_C23E8A
	LDA #$0000
	JSL UNKNOWN_C3E75D
	JSR a:.LOWORD(RETURN_BATTLE_ATTACKER_ADDRESS)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$00FF
	JSR a:.LOWORD(PRINT_STRING)
	LDY $14
	BEQ @UNKNOWN1
	LDX $16
	LDA .LOWORD(FRONT_ROW_BATTLERS),X
	AND #$00FF
	LDY #$004E
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE) + battler::afflictions
	BRA @UNKNOWN2
@UNKNOWN1:
	LDX $16
	LDA .LOWORD(BACK_ROW_BATTLERS),X
	AND #$00FF
	LDY #$004E
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE) + battler::afflictions
@UNKNOWN2:
	TAY
	STY $12
	LDX #$0000
	LDA #$0011
	JSL UNKNOWN_C438A5
	LDX #$0000
	LDY $12
	TYA
	JSL UNKNOWN_C223D9
	JSL UNKNOWN_C43F77
	BRA @UNKNOWN6
@UNKNOWN3:
	LDY $14
	BEQ @UNKNOWN4
	LOADPTR BATTLE_BACK_ROW_TEXT, $06
	BRA @UNKNOWN5
@UNKNOWN4:
	LOADPTR BATTLE_FRONT_ROW_TEXT, $06
@UNKNOWN5:
	MOVE_INT $06, $0E
	LDA #$000D
	JSR a:.LOWORD(PRINT_STRING)
@UNKNOWN6:
	JSL CLEAR_INSTANT_PRINTING
	PLD
	RTS
