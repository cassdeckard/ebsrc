
UNKNOWN_C49CC3: ;$C49CC3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	PROMOTENEARPTRA $06
	LDX #$0000
	STX $10
	BRA @UNKNOWN1
@UNKNOWN0:
	INC $06
	LDA $0E
	JSL UNKNOWN_C4999B
	LDX $10
	INX
	STX $10
@UNKNOWN1:
	CPX #$0005
	BCS @UNKNOWN3
	REP #PROC_FLAGS::ACCUM8
	LDA [$06]
	AND #$00FF
	STA $0E
	CLC
	SBC #$004F
	BRANCHGTS @UNKNOWN0
@UNKNOWN3:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
