
EVENT_626: ;$C37245
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_X $1FC8
	EVENT_SET_Y $0448
	EVENT_SET_ANIMATION $FF
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1FB8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0448
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_Y_RELATIVE $000A
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
