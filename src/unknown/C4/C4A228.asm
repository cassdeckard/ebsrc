
UNKNOWN_C4A228: ;$C4A228
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	STX $02
	TAY
	LDX #$0000
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(BACK_ROW_BATTLERS),X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN1
	TXA
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA a:.LOWORD(RAM)+10,Y
	BRA @UNKNOWN6
@UNKNOWN1:
	INX
@UNKNOWN2:
	CPX .LOWORD(NUM_BATTLERS_IN_BACK_ROW)
	BCC @UNKNOWN0
	LDX #$0000
	BRA @UNKNOWN5
@UNKNOWN3:
	.A16
	LDA .LOWORD(FRONT_ROW_BATTLERS),X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN4
	TXA
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC .LOWORD(NUM_BATTLERS_IN_BACK_ROW)
	INC
	STA a:.LOWORD(RAM)+10,Y
	BRA @UNKNOWN6
@UNKNOWN4:
	INX
@UNKNOWN5:
	CPX .LOWORD(NUM_BATTLERS_IN_FRONT_ROW)
	BCC @UNKNOWN3
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
