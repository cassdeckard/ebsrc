
VALIDATE_SAVE_BLOCK_CHECKSUMS: ;$EF07C0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	TXA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_ADD_CHECKSUM)
	STA $04
	LDX $0E
	TXA
	JSR a:.LOWORD(CALC_SAVE_BLOCK_XOR_CHECKSUM)
	STA $02
	LDY #$0500
	LDX $0E
	TXA
	JSL MULT16
	STORE_INT1632 $0A
	MOVE_INT $0A, $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SAVE_BASE + save_header::checksum, $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SAVE_BASE + save_header::checksum_complement, $0A
	LDA [$06]
	CMP $04
	BNE @UNKNOWN0
	LDA [$0A]
	CMP $02
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDA #$FFFF
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$0000
@UNKNOWN2:
	PLD
	RTS
