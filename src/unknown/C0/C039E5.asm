
UNKNOWN_C039E5: ;$C039E5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY #$0000
	STY $10
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(GAME_STATE)+150,Y
	AND #$00FF
	BEQ @UNKNOWN1
	TYA
	ASL
	TAX
	LDA .LOWORD(GAME_STATE)+162,X
	STA $0E
	ASL
	TAX
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(SPRITE_ABS_X_TABLE),X
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(SPRITE_ABS_Y_TABLE),X
	LDA $0E
	JSL UNKNOWN_C0A254
@UNKNOWN1:
	LDY $10
	INY
	STY $10
@UNKNOWN2:
	CPY #$0006
	BCC @UNKNOWN0
	PLD
	RTL
