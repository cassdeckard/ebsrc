
CC_1C_02: ;$C14FD7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	CPX #$0000
	BEQ @UNKNOWN1
	TXA
	BRA @UNKNOWN2
@UNKNOWN1:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN2:
	JSR a:.LOWORD(UNKNOWN_C1931B)
	LDA #NULL
	PLD
	RTS
