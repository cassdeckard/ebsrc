
EVENT_264: ;$C30962
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $70*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
