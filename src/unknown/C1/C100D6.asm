
UNKNOWN_C100D6: ;$C100D6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	JSL CLEAR_9622
	JSL UNKNOWN_C12DD5
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C12E42
@UNKNOWN1:
	LDX $0E
	TXA
	DEX
	STX $0E
	CMP #$0000
	BNE @UNKNOWN0
	PLD
	RTS
