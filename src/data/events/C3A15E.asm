
UNKNOWN_C3A15E: ;$C3A15E
	EVENT_UNKNOWN_C40023
@UNKNOWN1:
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN2)
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A3A4_ME1
@UNKNOWN2:
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_UNKNOWN_C40015
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
