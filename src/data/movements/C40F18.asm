
UNKNOWN_C40F18: ;$C40F18
	EBMOVE_PAUSE $01
	EBMOVE_WRITE_WORD_TEMPVAR $0100
	EBMOVE_CALLROUTINE UNKNOWN_C468B5
	EBMOVE_SHORTCALL_CONDITIONAL $0F2E
	EBMOVE_WRITE_WORD_TEMPVAR $FFF4
	EBMOVE_CALLROUTINE UNKNOWN_C468B5
	EBMOVE_SHORTCALL_CONDITIONAL $0F42
	EBMOVE_WRITE_WORD_TEMPVAR $00E0
	EBMOVE_CALLROUTINE UNKNOWN_C468DC
	EBMOVE_SHORTCALL_CONDITIONAL $0F18
	EBMOVE_WRITE_WORD_TEMPVAR $FFF4
	EBMOVE_CALLROUTINE UNKNOWN_C468DC
	EBMOVE_SHORTCALL_CONDITIONAL_NOT $0F18
	EBMOVE_SHORTJUMP .LOWORD(UNKNOWN_C40F45)
UNKNOWN_C40F45:
	EBMOVE_CALLROUTINE UNKNOWN_C020F1
	EBMOVE_END