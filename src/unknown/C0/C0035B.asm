
UNKNOWN_C0035B: ;$C0035B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LOADPTR UNKNOWN_7F8000, $06
	LDA $0E
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	TXA
	ASL
	STA $02
	TYA
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PLD
	RTL
