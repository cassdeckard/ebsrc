
UNKNOWN_C094D0: ;$C094D0
	BIT .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	BVS @UNKNOWN1
	LDY .LOWORD(ENTITY_SCRIPT_INDEX_TABLE),X
@UNKNOWN0:
	STY $8A
	STY .LOWORD(CURRENT_SCRIPT_OFFSET)
	STY .LOWORD(CURRENT_SCRIPT_SLOT)
	LSR .LOWORD(CURRENT_SCRIPT_SLOT)
	LDA .LOWORD(UNKNOWN_7E125A),Y
	STA .LOWORD(UNKNOWN_7E0A58)
	JSR a:.LOWORD(UNKNOWN_C09506)
	LDY .LOWORD(UNKNOWN_7E0A58)
	BPL @UNKNOWN0
	LDX $88
@UNKNOWN1:
	LDA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	BMI @UNKNOWN2
	STA .LOWORD(MOVEMENT_42_LOADED_PTR)+2
	LDA .LOWORD(ENTITY_TICK_CALLBACK_LOW),X
	STA .LOWORD(MOVEMENT_42_LOADED_PTR)
	JSL JUMP_TO_LOADED_MOVEMENT_PTR
@UNKNOWN2:
	RTS
