
EVENT_215: ;$C3D9FE
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $09B8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $13F0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C03F1E
	EVENT_PREPARE_NEW_ENTITY_AT_SELF
	EVENT_QUEUE_TEXT TEXT_EVENT_215
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UPDATE_SCREEN_POS_BG_12D)
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A10
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $13F0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A68
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $13B0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
