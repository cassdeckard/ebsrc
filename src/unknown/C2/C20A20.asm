
UNKNOWN_C20A20: ;$C20A20
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	TAX
	STX $0E
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	STA a:.LOWORD(RAM),X
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	CMP #$FFFF
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN0:
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::text_x,X
	LDX $0E
	STA a:.LOWORD(RAM)+2,X
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::text_y,X
	LDX $0E
	STA a:.LOWORD(RAM)+4,X
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::text_width,X
	LDX $0E
	STA a:.LOWORD(RAM)+6,X
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+19,X
	LDX $0E
	STA a:.LOWORD(RAM)+7,X
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+21,X
	LDX $0E
	STA a:.LOWORD(RAM)+9,X
@UNKNOWN1:
	PLD
	RTL
