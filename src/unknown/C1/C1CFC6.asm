
UNKNOWN_C1CFC6: ;$C1CFC6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAY
	STY $10
	LDX #$0000
	STX $0E
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::items,X
	AND #$00FF
	BEQ @UNKNOWN1
@UNKNOWN0:
	CREATE_WINDOW_NEAR #WINDOW::INVENTORY
	LDX #$0002
	LDY $10
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	JSR a:.LOWORD(INVENTORY_GET_ITEM_NAME)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $0E
	JSL SET_9622_ONE
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDX $0E
	BEQ @UNKNOWN1
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDY $10
	STA a:.LOWORD(RAM)+1,Y
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSR a:.LOWORD(UNKNOWN_C1CE85)
	TAX
	STX $0E
	LDA #$0026
	JSL CLOSE_WINDOW
	LDX $0E
	BEQ @UNKNOWN0
@UNKNOWN1:
	LDX $0E
	TXA
	PLD
	RTS