
UNKNOWN_C0D15C: ;$C0D15C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(MISC_DEBUG_FLAGS)
	AND #$0002
	BEQ @UNKNOWN0
	LDA #$0000
	BRA @UNKNOWN5
@UNKNOWN0:
	LDA .LOWORD(ENTITY_COLLIDED_OBJECTS)+46
	CMP .LOWORD(CURRENT_ENTITY_SLOT)
	BNE @UNKNOWN1
	LDA #$FFFF
	BRA @UNKNOWN5
@UNKNOWN1:
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(ENTITY_COLLIDED_OBJECTS),X
	CMP #$7FFF
	BGT @UNKNOWN3
	CMP #$0017
	BCS @UNKNOWN4
@UNKNOWN3:
	LDA #$0000
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA #$FFFF
@UNKNOWN5:
	RTL
