
UNKNOWN_C4EC6E: ;$C4EC6E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	ASL
	ASL
	ASL
	ASL
	ASL
	STORE_INT1632 $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F7000, $06
	MOVE_INT $06, $0E
	LDX #$0020
	LDA #$0380
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	STA a:.LOWORD(UNKNOWN_7E0030)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
