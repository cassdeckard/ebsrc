
EVENT_24: ;$C3A6C4
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EVENT_UNKNOWN_C0A685 $80, $01
@UNKNOWN1: ;$C4A6D4
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0001
	EVENT_PAUSE $10
	EVENT_SET_DIRECTION8 DIRECTION::NONE
@UNKNOWN2: ;$C3A6E0
	EVENT_UNKNOWN_C0C4AF
	EVENT_PAUSE $08
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN2)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN4)
@UNKNOWN3: ;$C3A6F0
	EVENT_UNKNOWN_C0C4AF
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
@UNKNOWN4: ;$C3A6F7
	EVENT_UNKNOWN_C46B65
	EVENT_UNKNOWN_C0C62B
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A6AD $0008
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
