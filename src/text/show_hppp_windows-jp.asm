
SHOW_HPPP_WINDOWS: ;$C10A04
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSR UNKNOWN_C3E6F8
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E89C9)
	STA .LOWORD(UNKNOWN_7E9623)
	REP #PROC_FLAGS::ACCUM8
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E9647)
	RTS
