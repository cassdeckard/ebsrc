
UNKNOWN_C31E2D: ;$C31E2D
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48C2B
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0000
	EVENT_START_TASK .LOWORD(UNKNOWN_C31E4D)
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
UNKNOWN_C31E45: ;$C31E45
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V2
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C31E45)
	EVENT_SHORT_RETURN
UNKNOWN_C31E4D: ;$C31E4D
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $FFF1
	EVENT_WRITE_VAR_TO_WAIT_TIMER ACTIONSCRIPT_VARS::V1
	EVENT_LOOP $0F
		EVENT_ADD ACTIONSCRIPT_VARS::V0, $0001
		EVENT_UNKNOWN_C474A8
		EVENT_WRITE_VAR_TO_WAIT_TIMER ACTIONSCRIPT_VARS::V1
	EVENT_LOOP_END
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0001
	EVENT_END_TASK
