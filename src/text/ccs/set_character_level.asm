
CC_1E_08: ;$C16A01
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
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
	LDA #.LOWORD(CC_1E_08)
	BRA @UNKNOWN8
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	STA $00
	REP #PROC_FLAGS::ACCUM8
	TXA
	BEQ @ARG_1_IS_ZERO
	SIGN_EXTENDA1632 $0A
	BRA @ARG_1_IS_NONZERO2
@ARG_1_IS_ZERO:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	MOVE_INT $06, $0A
@ARG_1_IS_NONZERO2:
	LDA $00
	AND #$00FF
	BEQ @ARG_2_IS_ZERO
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 $00, $06
	BRA @ARG_2_IS_NONZERO
@ARG_2_IS_ZERO:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
@ARG_2_IS_NONZERO:
	LDY #$0001
	REP #PROC_FLAGS::ACCUM8
	LDA $0A
	TAX
	LDA $06
	JSR a:.LOWORD(RESET_CHAR_LEVEL_ONE)
	LDA #NULL
@UNKNOWN8:
	PLD
	RTS
