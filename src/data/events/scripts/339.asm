
EVENT_339: ;$C318D0
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48BE1
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1380
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0EE0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
