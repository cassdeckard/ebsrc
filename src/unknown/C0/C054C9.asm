
UNKNOWN_C054C9: ;$C054C9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STX $10
	STA $0E
	AND #$003F
	STA $02
	TXA
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA .LOWORD(UNKNOWN_7EE000),X
	AND #$00FF
	TAY
	AND #$0010
	BEQ @UNKNOWN0
	LDA $0E
	STA .LOWORD(UNKNOWN_7E5DA8)
	LDX $10
	STX .LOWORD(UNKNOWN_7E5DAA)
@UNKNOWN0:
	TYA
	PLD
	RTS
