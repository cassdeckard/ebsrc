
EVENT_688: ;$C38230
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAB8)
	EVENT_UNKNOWN_C0A673
	EVENT_WRITE_TEMPVAR_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C383BC)
	EVENT_LOOP_TEMPVAR
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4, $0002
		EVENT_AND_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4, $0007
		EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_4
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_4
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3835D)
	EVENT_PLAY_SOUND SFX::CURSOR4
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
