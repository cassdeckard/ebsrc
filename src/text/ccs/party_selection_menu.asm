
CC_1A_01: ;$C1467D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	LDA .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	CMP #$0010
	BCS @UNKNOWN0
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1A_01)
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY #$0001
	LDA #.LOWORD(CC_ARGUMENT_STORAGE)
	JSR a:.LOWORD(UNKNOWN_C1244C)
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN1:
	PLD
	RTS
