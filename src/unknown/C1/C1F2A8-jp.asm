
UNKNOWN_C1F2A8: ;$C1F2A8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_DELETE_CONFIRMATION
	JSR SET_9622_ONE
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 .LOWORD(CURRENT_SAVE_SLOT), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDA #$005B
	JSR a:.LOWORD(PRINT_LETTER)
	LDA #$0020
	JSR a:.LOWORD(PRINT_LETTER)
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1931B)
	LOADPTR FILE_SELECT_TEXT_START_NEW_GAME, $0E
	LDA #$0005
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #$0001
	JSR $1495
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 .LOWORD(CHAR_STRUCT)+char_struct::level, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0001
	LDA #$0000
	JSR UNKNOWN_C438A5
	LOADPTR $C494D5, $0E
	LDA #$000D
	JSR DISPLAY_CONFIG_MENU_TITLE
	MOVE_INT_CONSTANT NULL, $06
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_DELETE_NO, $0E
	MOVE_INT $06, $12
	LDY #$0002
	LDX #$0000
	TXA
	JSR a:.LOWORD(UNKNOWN_C1153B)
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_DELETE_YES, $0E
	MOVE_INT $06, $12
	LDY #$0003
	LDX #$0000
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1153B)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $16
	BEQ @UNKNOWN0
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	DEC
	JSL ERASE_SAVE
@UNKNOWN0:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDX $16
	TXA
	PLD
	RTS
