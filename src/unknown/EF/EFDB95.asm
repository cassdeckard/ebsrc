
UNKNOWN_EFDB95: ;$EFDB95
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	STY $12
	LDA #$0008
	JSL UNKNOWN_C086DE
	STA $02
	LDX #$0003
	STX $10
	BRA @UNKNOWN3
@UNKNOWN0:
	LDY $12
	TYA
	AND #$000F
	CMP #$000A
	BCC @UNKNOWN1
	CLC
	ADC #$0007
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	STA $0E
@UNKNOWN2:
	TXA
	ASL
	STA $04
	LDA $02
	CLC
	ADC $04
	TAX
	LDA $0E
	CLC
	ADC #$2030
	STA a:.LOWORD(RAM),X
	TYA
	LSR
	LSR
	LSR
	LSR
	TAY
	STY $12
	LDX $10
	DEX
	STX $10
@UNKNOWN3:
	CPX #$FFFF
	BNE @UNKNOWN0
	LDA $02
	PLD
	RTS
