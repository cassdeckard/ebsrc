
UPDATE_SCREEN_POS_BG_13D: ;$C0A03A
	LDX $88
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	STA .LOWORD(ENTITY_SCREEN_X_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_Y_POS)
	SEC
	SBC .LOWORD(ENTITY_ABS_Z_TABLE),X
	STA .LOWORD(ENTITY_SCREEN_Y_TABLE),X
	RTS
