
EVENT_61: ;$C3B35D
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0012
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_ADD ACTIONSCRIPT_VARS::V6, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_YIELD_TO_TEXT
	EVENT_PREPARE_NEW_ENTITY_AT_PARTY_LEADER
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0018
	EVENT_UNKNOWN_C0A685 $20, $00
	EVENT_UNKNOWN_C0A673
	EVENT_UNKNOWN_C0C83B
	EVENT_PAUSE $40*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_HALT
