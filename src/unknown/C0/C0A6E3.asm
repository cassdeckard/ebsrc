
UNKNOWN_C0A6E3: ;$C0A6E3
	LDX $88
	STX .LOWORD(UNKNOWN_7E2896)
	LDA .LOWORD(UNKNOWN_30X2_TABLE_40),X
	XBA
	ORA .LOWORD(ENTITY_DIRECTIONS),X
	CMP $3456,X
	BEQ @UNKNOWN0
	STA $3456,X
	JSR a:.LOWORD(UNKNOWN_C0A794)
	RTL
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	BPL @UNKNOWN1
	AND #$FFFF ^ SPRITE_TABLE_10_FLAGS::UNKNOWN15
	STA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	BRA @UNKNOWN5
@UNKNOWN1:
	AND #$2000
	BEQ @UNKNOWN2
	LDA .LOWORD(UNKNOWN_30X2_TABLE_14),X
	BEQ @UNKNOWN6
	STZ .LOWORD(UNKNOWN_30X2_TABLE_14),X
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNE @UNKNOWN6
	DEC .LOWORD(UNKNOWN_30X2_TABLE_5),X
	BMI @UNKNOWN3
	BNE @UNKNOWN6
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	STA .LOWORD(UNKNOWN_30X2_TABLE_5),X
	LDA .LOWORD(UNKNOWN_30X2_TABLE_14),X
	EOR #$0002
	STA .LOWORD(UNKNOWN_30X2_TABLE_14),X
	BNE @UNKNOWN5
	CPX .LOWORD(UNKNOWN_7E2898)
	BNE @UNKNOWN5
	LDX .LOWORD(UNKNOWN_7E289C)
	BNE @UNKNOWN4
	LDX .LOWORD(UNKNOWN_7E289A)
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
	LDA .LOWORD(UNKNOWN_30X2_TABLE_16),X
	ORA #$8000
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA .LOWORD(UNKNOWN_30X2_TABLE_16),X
	AND #$7FFF
@UNKNOWN9:
	STA .LOWORD(UNKNOWN_30X2_TABLE_16),X
@UNKNOWN10:
	RTL
