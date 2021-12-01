
CC_19_16: ;$C15007
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BRANCHLTEQS @UNKNOWN2
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_19_16)
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	STA $14
	CPX #$0000
	BEQ @UNKNOWN3
	STX $12
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
	TAX
	STX $12
@UNKNOWN4:
	LDA $14
	BNE @UNKNOWN5
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
@UNKNOWN5:
	LDX $12
	JSL CHECK_STATUS_GROUP
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN6:
	PLD
	RTS
