
UNKNOWN_C087AB: ;$C087AB
	PHP
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$0002
	TCD
	PLA
	STA $00
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(INIDISP_MIRROR)
	EOR #$00FF
	ASL
	ASL
	ASL
	ASL
	AND #$00F0
	ORA $00
	STA a:.LOWORD(MOSAIC_MIRROR)
	PLD
	PLP
	RTS