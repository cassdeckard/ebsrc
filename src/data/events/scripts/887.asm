
EVENT_887: ;$C39964
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C39967
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_1F8
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1B3C
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0B44
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0024
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $000C
	EVENT_TEST_PLAYER_IN_AREA
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_QUEUE_TEXT TEXT_EVENT_WANDERING_PHOTOGRAPHER_25
	EVENT_HALT
