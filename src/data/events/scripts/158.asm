
EVENT_158: ;$C3CB87
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_C0A679 $00
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A03A)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A00C)
	EVENT_SET_Z $00C0
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_08 UNKNOWN_C48C02
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A685 $00, $04
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0004
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_SET_Z_VELOCITY $FF00
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_Z_VELOCITY $0000
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0DD0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2480
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_SET_Z_VELOCITY $0100
	EVENT_PAUSE $80*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
