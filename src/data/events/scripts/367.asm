
EVENT_367: ;$C322B3
	EVENT_SET_X $1AF8
	EVENT_SET_Y $2158
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $5A*FRAMES
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_X $1AE0
	EVENT_SET_Y $2158
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_X $1AF8
	EVENT_SET_Y $2158
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_X $1AE0
	EVENT_SET_Y $2158
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $78*FRAMES
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_X $1AF0
	EVENT_SET_Y $2168
	EVENT_LOOP $04
		EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
		EVENT_PAUSE $16*FRAMES
		EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
		EVENT_PAUSE $17*FRAMES
	EVENT_LOOP_END
	EVENT_SET_ANIMATION $FF
	EVENT_LOOP $0E
		EVENT_PAUSE $5A*FRAMES
	EVENT_LOOP_END
	EVENT_SET_X $1AF0
	EVENT_SET_Y $2160
	EVENT_LOOP $02
		EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
		EVENT_PAUSE $16*FRAMES
		EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
		EVENT_PAUSE $17*FRAMES
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
