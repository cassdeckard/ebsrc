
UNKNOWN_C0A6E3: ;$C0A6E3
	LDX $88
	STX .LOWORD(UNKNOWN_7E2896)
	LDA .LOWORD(UNKNOWN_30X2_TABLE_40),X
	XBA
	ORA .LOWORD(ENTITY_DIRECTIONS),X
	CMP .LOWORD(UNKNOWN_7E3456),X
	BEQ @UNKNOWN0
	STA .LOWORD(UNKNOWN_7E3456),X
	JSR a:.LOWORD(UNKNOWN_C0A794)
	RTL
@UNKNOWN0:
	LDA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),X
	BPL @UNKNOWN1
	AND #$FFFF ^ SPRITE_TABLE_10_FLAGS::UNKNOWN15
	STA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),X
	BRA @UNKNOWN5
@UNKNOWN1:
	AND #$2000
	BEQ @UNKNOWN2
	LDA .LOWORD(ENTITY_ANIMATION_FRAME),X
	BEQ @UNKNOWN6
	STZ .LOWORD(ENTITY_ANIMATION_FRAME),X
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNE @UNKNOWN6
	DEC .LOWORD(ENTITY_SCRIPT_VAR2_TABLE),X
	BMI @UNKNOWN3
	BNE @UNKNOWN6
@UNKNOWN3:
	LDA .LOWORD(ENTITY_SCRIPT_VAR3_TABLE),X
	STA .LOWORD(ENTITY_SCRIPT_VAR2_TABLE),X
	LDA .LOWORD(ENTITY_ANIMATION_FRAME),X
	EOR #$0002
	STA .LOWORD(ENTITY_ANIMATION_FRAME),X
	BNE @UNKNOWN5
	CPX .LOWORD(UNKNOWN_7E2898)
	BNE @UNKNOWN5
	LDX .LOWORD(FOOTSTEP_SOUND_ID_OVERRIDE)
	BNE @UNKNOWN4
	LDX .LOWORD(FOOTSTEP_SOUND_ID)
@UNKNOWN4:
	LDA f:FOOTSTEP_SOUND_TABLE,X
	BEQ @UNKNOWN5
	LDX .LOWORD(UNKNOWN_7EB4B6)
	BNE @UNKNOWN5
	JSL PLAY_SOUND
@UNKNOWN5:
	JSR a:.LOWORD(UNKNOWN_C0A794)
@UNKNOWN6:
	LDX $88
	LDA .LOWORD(TELEPORT_DESTINATION)
	BNE @UNKNOWN10
	LDA .LOWORD(UNKNOWN_7E5D58)
	BEQ @UNKNOWN10
	CMP #$002D
	BCS @UNKNOWN7
	AND #$0003
	BNE @UNKNOWN8
@UNKNOWN7:
	AND #$0001
	BNE @UNKNOWN8
	LDA .LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH),X
	ORA #$8000
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA .LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH),X
	AND #$7FFF
@UNKNOWN9:
	STA .LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH),X
@UNKNOWN10:
	RTL
