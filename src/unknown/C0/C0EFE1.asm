
UNKNOWN_C0EFE1: ;$C0EFE1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA a:.LOWORD(PAD_1_PRESS)
	BEQ @UNKNOWN1
	LDA #$0001
	BRA @UNKNOWN3
@UNKNOWN1:
	JSL READ_JOYPAD
	LDA $0E
	DEC
	STA $0E
@UNKNOWN2:
	BNE @UNKNOWN0
	LDA #$0000
@UNKNOWN3:
	PLD
	RTS
