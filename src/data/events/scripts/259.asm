
EVENT_259: ;$C307AB
	EVENT_UNKNOWN_C0A86F $00FE
	EVENT_SET_X_RELATIVE $FFF8
	EVENT_SET_Y_RELATIVE $FFF8
	EVENT_UNKNOWN_C0A838
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $000C
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3AFA3)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_UNKNOWN_C0A92D $031B
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_9, $FFF8
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_10, $0008
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A943 $FF
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_9, $0011
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_GET_DIRECTION_FROM_PLAYER_TO_ENTITY
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A92D $031B
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_9, $FFF8
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_10, $0008
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_10, $FFF0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PLAY_SOUND SFX::MENU_OPEN_CLOSE
	EVENT_END_UNKNOWN2
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
