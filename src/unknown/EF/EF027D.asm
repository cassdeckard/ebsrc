
UNKNOWN_EF027D: ;$EF027D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	STZ .LOWORD(UNKNOWN_7E9F33)
	LDA #$001E
	STA .LOWORD(UNKNOWN_7E9F35)
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA #$0004
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_4),X
	ASL
	TAX
	LDA .LOWORD(CHOSEN_FOUR_PTRS),X
	TAX
	LDA a:.LOWORD(RAM)+61,X
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$5156
	TAX
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA a:.LOWORD(RAM),X
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA a:.LOWORD(RAM)+2,X
	PLD
	RTL
