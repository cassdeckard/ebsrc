
UNKNOWN_EF0115: ;$EF0115
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	LDY a:.LOWORD(RAM)+53,X
	STY $10
	LDY a:.LOWORD(RAM)+12,X
	LDA a:.LOWORD(RAM)+10,X
	JSL MULT16
	TAX
	STX $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY $10
	LDA a:.LOWORD(RAM),Y
	BEQ @UNKNOWN1
	JSL UNKNOWN_C44E4D
@UNKNOWN1:
	LDA #$0040
	LDY $10
	STA a:.LOWORD(RAM),Y
	INY
	INY
	STY $10
	LDX $0E
	DEX
	STX $0E
@UNKNOWN2:
	BNE @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
	JSL UNKNOWN_C07C5B
	PLD
	RTL