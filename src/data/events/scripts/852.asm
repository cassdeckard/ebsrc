
EVENT_852: ;$C368F8
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A055)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_10F2 $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE $8C*FRAMES
	EVENT_PAUSE $8C*FRAMES
@UNKNOWN1: ;$C3690F
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
