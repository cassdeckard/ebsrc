
UNKNOWN_C03CFD: ;$C03CFD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BEQ @ON_BICYCLE
	JMP a:.LOWORD(@RETURN)
@ON_BICYCLE:
	LDA #$0001
	JSL SET_BOUNDARY_BEHAVIOR
	LDA .LOWORD(BATTLE_DEBUG)
	BNE @UNKNOWN1
	LDA .LOWORD(UNKNOWN_7E5D9A)
	BNE @UNKNOWN1
	JSL UNKNOWN_C06A07
@UNKNOWN1:
	LDA #$0018
	JSL UNKNOWN_C02140
	STZ .LOWORD(GAME_STATE)+146
	STZ .LOWORD(GAME_STATE)+game_state::walking_style
	STZ .LOWORD(CHAR_STRUCT)+char_struct::position_index
	STZ .LOWORD(GAME_STATE)+136
	LDA .LOWORD(UNKNOWN_7E5D9A)
	BNE @UNKNOWN2
	JSL OAM_CLEAR
	JSL UNKNOWN_C09466
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	JSL READ_JOYPAD
@UNKNOWN2:
	STZ .LOWORD(UNKNOWN_7E0A38)
	STZ .LOWORD(UNKNOWN_7E0A3A)
	LDA .LOWORD(SPRITE_ABS_X_TABLE) + (PARTY_LEADER_ENTITY_INDEX * 2)
	STA $0E
	LDA .LOWORD(SPRITE_ABS_Y_TABLE) + (PARTY_LEADER_ENTITY_INDEX * 2)
	STA $10
	LDY #$0018
	LDX #MOVEMENT_CODES::MOVEMENT_002
	LDA #OVERWORLD_SPRITE::NESS
	JSL PARSE_C3FC49_DATA
	STZ .LOWORD(UNKNOWN_30X2_TABLE_14) + (PARTY_LEADER_ENTITY_INDEX * 2)
	LDA .LOWORD(GAME_STATE)+game_state::leader_direction
	STA .LOWORD(ENTITY_DIRECTIONS) + (PARTY_LEADER_ENTITY_INDEX * 2)
	LDX #$1032
	LDA a:.LOWORD(RAM),X
	ORA #$9000
	STA a:.LOWORD(RAM),X
	LDA .LOWORD(UNKNOWN_7E5D9A)
	BEQ @UNKNOWN3
	LDX #$10E6
	LDA a:.LOWORD(RAM),X
	ORA #$C000
	STA a:.LOWORD(RAM),X
	JSL READ_JOYPAD
	JSL READ_JOYPAD
	LDA #$0018
	JSL UNKNOWN_C0A780
@UNKNOWN3:
	STZ .LOWORD(UNKNOWN_7E5DBA)
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E5D74)
@RETURN:
	PLD
	RTL
