
EVENT_475: ;$C3C1A8
	EVENT_SET_X $11F0
	EVENT_SET_Y $1368
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3C227)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0011
	EVENT_UNKNOWN_C0A938 $00BB
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
UNKNOWN_C3C1C7: ;$C3C1C7
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A938 $00BB
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C3C1C7)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3C20F)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
