
UNKNOWN_C03EC3: ;$C03EC3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STY $0E
	STX $02
	TAX
	LDA $1E
	STA $04
	TXA
	JSL UNKNOWN_C03E9D
	CMP $02
	BNE @UNKNOWN0
	LDY $0E
	INY
	STY $0E
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	CLC
	ADC #$1002
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$EFFF
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN1
@UNKNOWN0:
	CMP $02
	BCC @UNKNOWN1
	BEQ @UNKNOWN1
	LDY $0E
	TYA
	CLC
	ADC $04
	TAY
	STY $0E
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	CLC
	ADC #$1002
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #$1000
	STA a:.LOWORD(RAM),X
@UNKNOWN1:
	LDY $0E
	TYA
	PLD
	RTL
