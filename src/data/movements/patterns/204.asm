
MOVEMENT_204: ;$C3D732
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EBMOVE_CALLROUTINE UNKNOWN_C0A685, $80, $02
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0003
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $1738
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $27C8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_CALLROUTINE UNKNOWN_C0A907, $3D
	EBMOVE_CALL_C46E4F $00C7, $85A9
	EBMOVE_HALT
