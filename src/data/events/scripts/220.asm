
EVENT_220: ;$C3D966
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1048
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2730
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $4A
	EVENT_QUEUE_TEXT TEXT_EVENT_220
	EVENT_HALT
