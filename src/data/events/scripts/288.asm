
EVENT_288: ;$C30E21
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_UNKNOWN_C0A92D $02E5
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_10, $0008
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A92D $02E5
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3B70C)
	EVENT_UNKNOWN_C46E46
	EVENT_UNKNOWN_C03F1E
	EVENT_SHORTJUMP .LOWORD(EVENT_35)