
UNKNOWN_C00778: ;$C00778
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	LDX #$0240
	LDA a:.LOWORD(RAM)+64,X
	BEQ @UNKNOWN2
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$0200
	TAX
	STX $10
	LDA #$0040
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	PHA
	LDA a:.LOWORD(RAM),X
	PLX
	STA $0300,X
	LDX $10
	INX
	INX
	STX $10
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0050
	BCC @UNKNOWN0
@UNKNOWN2:
	PLD
	RTL
