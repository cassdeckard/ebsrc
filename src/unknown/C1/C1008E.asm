
UNKNOWN_C1008E: ;$C1008E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E70)
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(WINDOW_TAIL)
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::id,X
	JSL CLOSE_WINDOW
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(WINDOW_TAIL)
	CMP #$FFFF
	BNE @UNKNOWN0
	JSL CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E70)
	JSL UNKNOWN_C43F53
	RTS
