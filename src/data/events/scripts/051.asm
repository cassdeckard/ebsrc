
EVENT_51: ;$C3B06D
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3B0B6)
	EVENT_UNKNOWN_C0A82F
	EVENT_UNKNOWN_C0A864 $01
	EVENT_SET_Z $0010
	EVENT_UNKNOWN_C0A685 $00, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B51
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
@UNKNOWN1: ;$C3B09B
	EVENT_PAUSE 1*FRAME
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $0800
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_C0A8E7
	EVENT_UNKNOWN_C4730E
	EVENT_UNKNOWN_C0A82F
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
