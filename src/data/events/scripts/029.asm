
EVENT_29: ;$C3A8D2
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0003
	EVENT_UNKNOWN_C0A685 $58, $00
EVENT_29_ENTRY_2: ;$C3A8E6
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_CALL_C09F82 $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A6A2 $0018
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A651 $06
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_UNKNOWN_C0A651 $02
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(EVENT_29_ENTRY_2)
@UNKNOWN1: ;$C3A922
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN2: ;$C3A92B
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_29_ENTRY_2)
@UNKNOWN3: ;$C3A932
	EVENT_UNKNOWN_C46B65
	EVENT_UNKNOWN_C0C62B
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_MOVEMENT_ENTRY_3
	EVENT_UNKNOWN_C0A6AD $0008
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)