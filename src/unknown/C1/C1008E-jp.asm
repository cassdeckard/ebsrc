
UNKNOWN_C1008E: ;$C1008E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(WINDOW_TAIL)
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+4,X
	JSR CLOSE_WINDOW
@UNKNOWN1:
	LDA .LOWORD(WINDOW_TAIL)
	CMP #$FFFF
	BNE @UNKNOWN0
	RTS
