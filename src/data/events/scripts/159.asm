
EVENT_159: ;$C3CB38
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_SET_Z $0000
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_08 UNKNOWN_C48C02
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A685 $00, $04
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0004
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $80*FRAMES
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $07D0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2490
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $80*FRAMES
	EVENT_UNKNOWN_C09FAE_MOVEMENT_ENTRY $0101
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_UNKNOWN_C0A907 $BC
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
