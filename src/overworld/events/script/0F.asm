
MOVEMENT_CODE_0F: ;$C09B09
	LDX $88
	JSR a:.LOWORD(CLEAR_SPRITE_TICK_CALLBACK)
	RTS