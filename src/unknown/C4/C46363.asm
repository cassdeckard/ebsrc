
UNKNOWN_C46363: ;$C46363
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	.A16
	STA $0E
	CMP #$FFFF
	BEQ @UNKNOWN0
	ASL
	CLC
	ADC #.LOWORD(ENTITY_DIRECTIONS)
	TAX
	LDA a:.LOWORD(RAM),X
	CMP $02
	BEQ @UNKNOWN0
	LDA $02
	STA a:.LOWORD(RAM),X
	LDA $0E
	JSL UNKNOWN_C0A780
@UNKNOWN0:
	PLD
	RTL
