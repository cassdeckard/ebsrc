
EVENT_244: ;$C30520
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C46E46
	EVENT_END_UNKNOWN2
	EVENT_SHORTJUMP .LOWORD(EVENT_8)