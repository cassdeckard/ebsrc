
EVENT_661: ;$C37A0B
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_X_RELATIVE $FFF0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37A7C)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_WRITE_WORD_TEMPVAR $0002
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE $64*FRAMES
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*FIFTH_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR $0002
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE $10*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN_LEFT
	EVENT_SET_DIRECTION
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_HALT
