
; short getDirectionFromPlayerToEntity(void);
GET_DIRECTION_FROM_PLAYER_TO_ENTITY: ;$C0C4F7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	STA $12
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA $0E
	LDY .LOWORD(GAME_STATE)+game_state::leader_x_coord
	LDA $12
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	TAX
	STX $10
	LDA $12
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDX $10
	JSL GET_DIRECTION_TO
	PLD
	RTL
