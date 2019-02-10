
TRANSFER_ACTIVE_MEM_STORAGE: ;$C10324
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	JSR a:.LOWORD(GET_ACTIVE_WINDOW_ADDRESS)
	STA $0E
	CLC
	ADC #window_stats::wram_address
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $0E
	CLC
	ADC #$0021
	TAY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDA $0E
	CLC
	ADC #window_stats::argument_memory
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $0E
	CLC
	ADC #$0025
	TAY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDA $0E
	PHA
	TAX
	LDA a:.LOWORD(RAM)+31,X
	PLX
	STA a:.LOWORD(RAM)+41,X
	PLD
	RTS