
UNKNOWN_C4C8E9: ;$C4C8E9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	STORE_INT1632 $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0000, $06
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	DEX
@UNKNOWN1:
	CPX #$0000
	BNE @UNKNOWN0
	PLD
	RTS
