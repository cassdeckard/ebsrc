
EVENT_566: ;$C34BF7
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $01A0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1DE0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_HALT
