
EVENT_452: ;$C33BB7
	EVENT_SET_ANIMATION $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0001
	EVENT_UNKNOWN_C47A9E
	EVENT_PAUSE 1*TWELFTH_OF_A_SECOND
	EVENT_PLAY_SOUND SFX::UNKNOWN0D
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0005
	EVENT_LOOP $06
		EVENT_UNKNOWN_C47B77
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_ADD ACTIONSCRIPT_VARS::V1, $FFFF
	EVENT_LOOP_END
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0000
	EVENT_LOOP $05
		EVENT_UNKNOWN_C47B77
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_ADD ACTIONSCRIPT_VARS::V1, $0001
	EVENT_LOOP_END
	EVENT_UNDRAW_FLYOVER_TEXT
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
