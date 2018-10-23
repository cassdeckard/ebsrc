
CC_1D_24: ;$C17274
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	STX $14
	LDY #.LOWORD(GAME_STATE)+196
	STY $12
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDX $14
	CPX #$0002
	BNE @UNKNOWN0
	LDA #$0000
	STA $06
	LDA #$0000
	STA $08
	LDY $12
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
@UNKNOWN0:
	LDA #NULL
	PLD
	RTS