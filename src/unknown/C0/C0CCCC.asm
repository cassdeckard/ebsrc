
UNKNOWN_C0CCCC: ;$C0CCCC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDY .LOWORD(CURRENT_ENTITY_SLOT)
	STY $14
	TYA
	ASL
	TAX
	STX $12
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	STA .LOWORD(ENTITY_SCRIPT_VAR6_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	CLC
	ADC #$0010
	STA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),X
	STZ $0E
	LDA .LOWORD(UNKNOWN_30X2_TABLE_35),X
	LSR
	LSR
	LSR
	LSR
	STA $10
	MOVE_INT_CONSTANT $64800, $0A
	MOVE_INT $0E, $06
	JSL DIVISION32
	LDA $06
	XBA
	AND #$FF00
	STA .LOWORD(ENTITY_SCRIPT_VAR5_TABLE),X
	JSL RAND
	AND #$0001
	BEQ @UNKNOWN0
	LDX $12
	STZ .LOWORD(ENTITY_DIRECTIONS),X
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #DIRECTION::DOWN
	LDX $12
	STA .LOWORD(ENTITY_DIRECTIONS),X
@UNKNOWN1:
	LDY $14
	TYA
	ASL
	TAX
	LDA .LOWORD(ENTITY_DIRECTIONS),X
	CMP #DIRECTION::DOWN
	BCS @UNKNOWN2
	STZ .LOWORD(UNKNOWN_30X2_TABLE_45),X
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_45),X
@UNKNOWN3:
	TYA
	ASL
	TAX
	STZ .LOWORD(ENTITY_SCRIPT_VAR4_TABLE),X
	PLD
	RTL
