
EVENT_464: ;$C3DD6C
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1708
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $24C8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $18A0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2328
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1818
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2328
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY | SURFACE_FLAGS::OBSCURE_UPPER_BODY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $17A0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2328
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $16C8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2328
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1648
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2328
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY | SURFACE_FLAGS::OBSCURE_UPPER_BODY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1568
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2328
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C03F1E
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UPDATE_SCREEN_POS_BG_12D)
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $50*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
