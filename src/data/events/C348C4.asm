
UNKNOWN_C348C4: ;$C348C4
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $14*FRAMES
	EVENT_LOOP $03
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A443_ME2
		EVENT_PAUSE 7*THIRTIETHS_OF_A_SECOND
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A443_ME2
		EVENT_PAUSE 7*THIRTIETHS_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $14*FRAMES
	EVENT_SHORT_RETURN
