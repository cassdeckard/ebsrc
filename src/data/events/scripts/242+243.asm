
EVENT_242_243: ;$C304FA
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_UNKNOWN_C46A6E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $2C*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C46E46
	EVENT_END_UNKNOWN2
	EVENT_SHORTJUMP .LOWORD(EVENT_8)
