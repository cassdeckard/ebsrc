
EVENT_725: ;$C38C7C
	EVENT_SET_X $0850
	EVENT_SET_Y $1B90
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0008
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_UNKNOWN_C0A685 $60, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0840
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BB0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_HALT
