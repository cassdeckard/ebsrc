
UNKNOWN_C46957: ;$C46957
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDY .LOWORD(CURRENT_ENTITY_SLOT)
	TYA
	ASL
	CLC
	ADC #.LOWORD(ENTITY_DIRECTIONS)
	TAX
	LDA $0E
	STA $02
	LDA a:.LOWORD(RAM),X
	CMP $02
	BEQ @UNKNOWN0
	LDA $0E
	STA a:.LOWORD(RAM),X
	TYA
	JSL UNKNOWN_C0A443_ENTRY2
@UNKNOWN0:
	PLD
	RTL
