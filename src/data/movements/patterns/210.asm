
MOVEMENT_210: ;$C3D8E4
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EBMOVE_CALLROUTINE UNKNOWN_C0A685, $80, $02
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0003
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $1AD0
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $0060
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_CALLROUTINE UNKNOWN_C0A907, $48
	EBMOVE_TEST_EVENT_FLAG $0088
	EBMOVE_SHORTCALL_CONDITIONAL_NOT $D913
	EBMOVE_CALL_C46E4F $00C8, $88AF
	EBMOVE_HALT
