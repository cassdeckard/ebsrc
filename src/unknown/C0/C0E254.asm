
UNKNOWN_C0E254: ;$C0E254
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$000C
	SEC
	SBC .LOWORD(UNKNOWN_7E9F47)
	TAX
	STX $10
	BEQ @UNKNOWN0
	TXA
	AND #$8000
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDX #$0001
	STX $10
@UNKNOWN1:
	LDA #$0018
	STA $0E
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX $10
	PHX
	ASL
	TAX
	PLA
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN3:
	CMP #$001D
	BCC @UNKNOWN2
	PLD
	RTS
