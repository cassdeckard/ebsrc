
UNKNOWN_EF02C4: ;$EF02C4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LDA .LOWORD(UNKNOWN_7E9F33)
	CMP #$0003
	BEQ @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7E9F33)
	CMP #$0001
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E9F33)
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA $10
	JSL UNKNOWN_C03E9D
	CMP #$0028
	BCC @UNKNOWN2
	BEQ @UNKNOWN2
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E9F33)
	BRA @UNKNOWN3
@UNKNOWN2:
	JSL RAND
	AND #$0003
	TAX
	STX $0E
	STX .LOWORD(UNKNOWN_7E9F33)
@UNKNOWN3:
	LDX $0E
	TXA
	AND #$0003
	STA $04
	ASL
	ADC $04
	INC
	INC
	INC
	INC
	STA .LOWORD(UNKNOWN_7E9F35)
	PLD
	RTS
