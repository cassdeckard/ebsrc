
UNKNOWN_C07C8A: ;$C07C8A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 32
	MOVE_INT $32, $0A
	MOVE_INT $2E, $06
	MOVE_INT $06, $1C
	MOVE_INT $1C, $06
	MOVE_INT $06, $18
	BRA @UNKNOWN1
@UNKNOWN0:
	INC $06
	MOVE_INT $06, $18
@UNKNOWN1:
	LDA [$06]
	AND #$00FF
	BNE @UNKNOWN0
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	JSL STRLEN
	STA $16
	MOVE_INT $18, $06
	MOVE_INT $06, $0E
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	LDA $16
	INC
	JSL MEMCPY24
	MOVE_INT $1C, $06
	MOVE_INT $06, $26
	PLD
	RTL
