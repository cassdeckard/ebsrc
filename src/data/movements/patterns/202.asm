
MOVEMENT_202: ;$C3D673
	EBMOVE_SET_X $1670
	EBMOVE_SET_Y $2328
	EBMOVE_UNKNOWN_WRITE_121E $A384
	EBMOVE_CALLROUTINE UNKNOWN_C0A679, $03
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $06, $00
	EBMOVE_CALLROUTINE UNKNOWN_C0A685, $00, $01
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0001
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $15B0
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $2328
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_CALLROUTINE UNKNOWN_C46E46
	EBMOVE_UNKNOWN_WRITE_121E $9FF0
	EBMOVE_SET_10F2 $00
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_SHORTJUMP_UNKNOWN $B431
	EBMOVE_CALLROUTINE UNKNOWN_C0C7DB
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_MOVEMENT_ENTRY_2
	EBMOVE_CALLROUTINE UNKNOWN_C0A8B3, $00, $00, $08, $00
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $02, $0018
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $03, $0008
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EBMOVE_EXEC_TEXT_BLOCK TEXT_BLOCK_C7847E
	EBMOVE_CALLROUTINE UNKNOWN_C0A8FF
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EBMOVE_SHORTJUMP $D6C1
