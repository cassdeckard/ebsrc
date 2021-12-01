
CC_1F_16: ;$C16490
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STX $10
	LDA #$0002
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BRANCHLTEQS @UNKNOWN2
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_16)
	BRA @UNKNOWN7
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0008
	SEP #PROC_FLAGS::INDEX8
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	AND #$00FF
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $02
	BEQ @ARG_1_IS_ZERO
	STORE_INT1632 $06
	BRA @ARG_1_IS_NONZERO
@ARG_1_IS_ZERO:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
@ARG_1_IS_NONZERO:
	LDA $06
	STA $0E
	REP #PROC_FLAGS::INDEX8
	LDX $10
	BEQ @ARG_2_IS_ZERO
	TXA
	STORE_INT1632 $06
	BRA @ARG_2_IS_NONZERO
@ARG_2_IS_ZERO:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@ARG_2_IS_NONZERO:
	LDA $06
	TAX
	DEX
	LDA $0E
	JSL UNKNOWN_C462FF
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
