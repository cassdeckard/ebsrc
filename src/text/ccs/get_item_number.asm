
CC_19_19: ;$C1597F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXY
	STY $12
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BRANCHLTEQS @UNKNOWN2
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_19_19)
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	TAX
	BEQ @ARG_IS_ZERO
	TXA
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
@ARG_IS_NONZERO:
	STA $02
	LDY $12
	BEQ @UNKNOWN5
	TYA
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN6:
	TAX
	LDA $02
	JSL GET_CHARACTER_ITEM
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	MOVE_INT1632 $02, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
