
UNKNOWN_C1AC4A: ;$C1AC4A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	STX $18
	STA $16
	PROMOTENEARPTR .LOWORD(UNKNOWN_7E9CD7), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $16
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	TXA
	JSL MEMCPY24
	LDX $18
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CD7),X
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS
