
GET_ON_BICYCLE: ;$C03C5E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN0:
	LDA .LOWORD(GAME_STATE)+150
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN1:
	LDA .LOWORD(UNKNOWN_7E5DD8)
	BNE @UNKNOWN2
	LDA #MUSIC::BICYCLE
	JSL CHANGE_MUSIC
@UNKNOWN2:
	LDA #$0018
	JSL UNKNOWN_C02140
	LDA #$0006
	STA .LOWORD(GAME_STATE)+146
	LDA #WALKING_STYLE::BICYCLE
	STA .LOWORD(GAME_STATE)+game_state::walking_style
	STZ .LOWORD(CHAR_STRUCT)+char_struct::position_index
	STZ .LOWORD(GAME_STATE)+136
	STZ .LOWORD(UNKNOWN_7E0A38)
	STZ .LOWORD(UNKNOWN_7E0A3A)
	LDA .LOWORD(SPRITE_ABS_X_TABLE)+48
	STA $0E
	LDA .LOWORD(SPRITE_ABS_Y_TABLE)+48
	STA $10
	LDY #$0018
	LDX #$0002
	LDA #$0007
	JSL PARSE_C3FC49_DATA
	LDX #$10E6
	LDA a:.LOWORD(RAM),X
	ORA #$8000
	STA a:.LOWORD(RAM),X
	LDX #$1032
	LDA a:.LOWORD(RAM),X
	ORA #$3000
	STA a:.LOWORD(RAM),X
	STZ .LOWORD(UNKNOWN_30X2_TABLE_14)+48
	LDA .LOWORD(GAME_STATE)+game_state::leader_direction
	STA .LOWORD(UNKNOWN_30X2_TABLE_34)+48
	LDA #$0000
	JSL SET_BOUNDARY_BEHAVIOR
	LDA #$0001
	STA .LOWORD(GAME_STATE)+144
	STA .LOWORD(UNKNOWN_7E5DBA)
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E5D74)
@UNKNOWN3:
	PLD
	RTL