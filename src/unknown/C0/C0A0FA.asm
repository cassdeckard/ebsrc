
UNKNOWN_C0A0FA: ;$C0A0FA
	ASL
	TAY
	SEP #PROC_FLAGS::ACCUM8
	LDA $8E
	STA a:.LOWORD(UNKNOWN_7E000B)
	REP #PROC_FLAGS::ACCUM8
	LDA [$8C],Y
	STA $96
	LDA .LOWORD(ENTITY_DRAW_PRIORITY),X
	STA .LOWORD(UNKNOWN_7E2400)
	LDY .LOWORD(ENTITY_ABS_Y_TABLE),X
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	TAX
	LDA $96
	JMP .LOWORD(UNKNOWN_C08C58)
	RTS
