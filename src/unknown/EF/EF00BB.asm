
UNKNOWN_EF00BB: ;$EF00BB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	TAY
	LDA a:.LOWORD(RAM),Y
	AND #$03FF
	STA a:.LOWORD(RAM),Y
	TXA
	ASL
	STA $02
	LDA $0E
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$03FF
	STA a:.LOWORD(RAM),X
	PLD
	RTL
