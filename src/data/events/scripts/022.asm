
EVENT_22: ;$C3A5C9
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EVENT_UNKNOWN_C0A685 $80, $01
@UNKNOWN1: ;$C3A5D9
	EVENT_SET_VELOCITIES_ZERO
	EVENT_LOOP $0A
		EVENT_UNKNOWN_C0C48F
		EVENT_UNKNOWN_16 .LOWORD(@UNKNOWN4)
		EVENT_PAUSE $08
	EVENT_LOOP_END
	EVENT_UNKNOWN_C0D0D9
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C46ADB
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0CC11
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
@UNKNOWN2: ;$C3A606
	EVENT_UNKNOWN_C09FA8
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A6AD $0040
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
@UNKNOWN3: ;$C3A61F
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
@UNKNOWN4: ;$C3A626
	EVENT_UNKNOWN_C46B65
	EVENT_UNKNOWN_C0C62B
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A6AD $0008
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
