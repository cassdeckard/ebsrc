
CC_1F_00: ;$C14751
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXA
	STA $0E
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BRANCHLTEQS @UNKNOWN2
	LDA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_00)
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA $0E
	BEQ @UNKNOWN3
	STORE_INT1632 $06
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@UNKNOWN4:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	TAX
	LDA $06
	JSL UNKNOWN_C216AD
	LDA #NULL
@UNKNOWN5:
	PLD
	RTS
