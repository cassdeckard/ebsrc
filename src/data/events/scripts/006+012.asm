
EVENT_6_12: ;$C3A2E4
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A360)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A15E)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A262)
	EVENT_UNKNOWN_C0A685 $00, $01
EVENT_6_12_ENTRY_2: ;$C3A2FD
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_CHOOSE_RANDOM DIRECTION::UP, DIRECTION::RIGHT, DIRECTION::DOWN, DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_CHOOSE_RANDOM $0008, $0010, $0018
	EVENT_UNKNOWN_C0CA4E
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_CHOOSE_RANDOM $001E, $003C, $005A, $0078
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SHORTJUMP .LOWORD(EVENT_6_12_ENTRY_2)
