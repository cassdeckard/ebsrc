
UNKNOWN_C0C4AF: ;$C0C4AF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_41),X
	BEQ @UNKNOWN0
	LDA #$0000
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E5D58)
	BNE @UNKNOWN1
	JSL UNKNOWN_C0C3F9
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$FFFF
@UNKNOWN2:
	RTL
