
UNKNOWN_C0ECB7: ;$C0ECB7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEA
	TCD
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(UNKNOWN_7E002F)+1
	REP #PROC_FLAGS::ACCUM8
	LOADPTR TITLE_SCREEN_PALETTE, $0E
	LDA #$0200
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $12
	LDA $08
	STA $14
	JSL DECOMP
	JSL UNKNOWN_C496F9
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$0100
	REP #PROC_FLAGS::ACCUM8
	LDA #$0200
	JSL MEMSET16
	LDX #$00FF
	LDA #$00A5
	JSL UNKNOWN_C496E7
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E002F)+1
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL