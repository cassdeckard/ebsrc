
CC_1A_06: ;$C14EB5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	.IF .DEFINED(JPN)
		RESERVE_STACK_SPACE 18
		CPX #$00000
	.ELSE
		RESERVE_STACK_SPACE 20
		STX $12
		JSL CLEAR_INSTANT_PRINTING
		CREATE_WINDOW_NEAR .LOWORD(CURRENT_FOCUS_WINDOW)
		JSL WINDOW_TICK
		LDX $12
	.ENDIF
	BEQ @UNKNOWN0
	TXA
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN1:
	JSR a:.LOWORD(UNKNOWN_C19DB5)
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	.IF .DEFINED(USA)
		LDA .LOWORD(CURRENT_FOCUS_WINDOW)
		JSR a:.LOWORD(SET_WINDOW_FOCUS)
		.IF .DEFINED(PROTOTYPE19950327)
			JSL SET_INSTANT_PRINTING
		.ENDIF
	.ENDIF
	LDA #NULL
	PLD
	RTS
