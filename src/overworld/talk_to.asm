
TALK_TO: ;$C13187
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	MOVE_INT_CONSTANT NULL, $0A
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	JSL FIND_NEARBY_TALKABLE_TPT_ENTRY
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN0:
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	CMP #$FFFF
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN1:
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	CMP #$FFFE
	BNE @UNKNOWN2
	MOVE_INT .LOWORD(UNKNOWN_7E5DDE), $0A
	BRA @UNKNOWN4
@UNKNOWN2:
	LOADPTR NPC_CONFIG_TABLE, $06
	MOVE_INT $06, $0E
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	OPTIMIZED_MULT $04, .SIZEOF(npc_config)
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CMP #NPC_TYPE::PERSON
	BEQ @UNKNOWN3
	CMP #NPC_TYPE::ITEM_BOX
	BEQ @UNKNOWN4
	CMP #NPC_TYPE::OBJECT
	BEQ @UNKNOWN4
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7E5D64)
	JSL UNKNOWN_C042C2
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	OPTIMIZED_MULT $04, .SIZEOF(npc_config)
	CLC
	ADC #npc_config::text_pointer
	LDX $0E
	STX $06
	LDX $10
	STX $08
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
@UNKNOWN4:
	MOVE_INT $0A, $18
	PLD
	RTL
