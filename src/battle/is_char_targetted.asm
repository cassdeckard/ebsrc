
IS_CHAR_TARGETTED: ;$C27029
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDX #$0000
	LOADPTR POWERS_OF_TWO_32BIT, $06
	LDA $0E
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT .LOWORD(BATTLER_TARGET_FLAGS), $06
	LDA $06
	AND $0A
	STA $06
	LDA $08
	AND $0C
	STA $08
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN0
	LDA $06
	CMP $0A
@UNKNOWN0:
	BEQ @UNKNOWN1
	LDX #$0001
@UNKNOWN1:
	TXA
	PLD
	RTL