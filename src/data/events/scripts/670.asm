
EVENT_670: ;$C37BFE
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_10F2 $00
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A0D8)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_08 UNKNOWN_C48B3B
	EVENT_UNKNOWN_C0A685 $60, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0002
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $04D0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2730
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_UNKNOWN2
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_UNKNOWN_C0A685 $40, $00
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A0B2)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0002
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $04B0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2730
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB67)
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A09F)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0005
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $05D0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2730
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $F0*FRAMES
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN2)
	EVENT_UNKNOWN_C0A685 $00, $03
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0004
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0003
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0538
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0006
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0002
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $04F0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $000C
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $04B0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $04F0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $26C8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_UNKNOWN_C46E46
	EVENT_WRITE_WORD_WRAM .LOWORD(TELEPORT_DESTINATION), $000E
	EVENT_UNKNOWN_C48B2C
	EVENT_HALT
@UNKNOWN1: ;$C37CD8
	EVENT_LOOP $0F
		EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
		EVENT_UNKNOWN_C0A691
		EVENT_ADD_TEMPVAR $0040
		EVENT_UNKNOWN_C0A685_ME2
	EVENT_LOOP_END
	EVENT_END_UNKNOWN
@UNKNOWN2: ;$C37CEA
	EVENT_WRITE_9AF9_WAIT_TIMER EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_WRITE_9AF9_WAIT_TIMER EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN2)
