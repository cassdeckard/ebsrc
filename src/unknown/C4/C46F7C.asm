
UNKNOWN_C46F7C: ;$C46F7C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR6_TABLE),X
	SEC
	SBC .LOWORD(ENTITY_ABS_X_TABLE),X
	STA $12
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN2
	LDA $12
	EOR #$FFFF
	INC
	STA $10
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $12
	STA $10
@UNKNOWN3:
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA $10
	CMP .LOWORD(ENTITY_SCRIPT_VAR5_TABLE),X
	BCS @UNKNOWN8
	LDA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),X
	SEC
	SBC .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA $12
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN6
	LDA $12
	EOR #$FFFF
	INC
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $12
	STA $0E
@UNKNOWN7:
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA $0E
	CMP .LOWORD(ENTITY_SCRIPT_VAR5_TABLE),X
	BCS @UNKNOWN8
	LDA #$0001
	BRA @UNKNOWN10
@UNKNOWN8:
	JSL UNKNOWN_C46AAC
	TAY
	STY $10
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	TYA
	CMP .LOWORD(ENTITY_DIRECTIONS),X
	BEQ @UNKNOWN9
	TYA
	JSL UNKNOWN_C0C83B
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	CLC
	ADC #.LOWORD(ENTITY_DIRECTIONS)
	TAX
	LDA a:.LOWORD(RAM),X
	STA $12
	LDY $10
	TYA
	STA a:.LOWORD(RAM),X
	LDA $12
	JSL UNKNOWN_C46AA3
	TAX
	STX $0E
	LDY $10
	TYA
	JSL UNKNOWN_C46AA3
	STA $02
	LDX $0E
	TXA
	CMP $02
	BEQ @UNKNOWN9
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	JSL UNKNOWN_C0A3A4_ENTRY2
@UNKNOWN9:
	LDA #$0000
@UNKNOWN10:
	PLD
	RTL
