
UNKNOWN_C19F29: ;$C19F29
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	TAX
	DEC
	STA $02
	STA $1C
	JSR SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::EQUIP_MENU
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	LDA #$0006
	STA .LOWORD(UNKNOWN_7E5E7A)
@UNKNOWN0:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA #$0006
	JSL SET_WINDOW_TITLE
	LDY #$0000
	STY $1A
	JMP @UNKNOWN14
@UNKNOWN1:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_10, $06
	TYA
	OPTIMIZED_MULT $04, 4
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	TYX
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDY $1A
	TYA
	BEQ @UNKNOWN4
	CMP #$0001
	BEQ @UNKNOWN5
	CMP #$0002
	BEQ @UNKNOWN6
	CMP #$0003
	BEQ @UNKNOWN7
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA $1C
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	STA $04
	STA $18
	BRA @UNKNOWN8
@UNKNOWN5:
	LDA $1C
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	STA $04
	STA $18
	BRA @UNKNOWN8
@UNKNOWN6:
	LDA $1C
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	STA $04
	STA $18
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA $1C
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	STA $04
	STA $18
@UNKNOWN8:
	LDA $18
	STA $04
	BEQL @UNKNOWN12
	LDA $04
	DEC
	PHA
	LDA $1C
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	STA $16
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	LDA $16
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9C9F) + 10
	REP #PROC_FLAGS::ACCUM8
	LDA $18
	STA $04
	LDX $04
	LDA $1C
	STA $02
	INC
	JSL $C3E560
	CMP #$0000
	BEQ @UNKNOWN13
	PROMOTENEARPTR .LOWORD(UNKNOWN_7E9C9F), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSL STRLEN
	TAX
@UNKNOWN11:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$22
	STA .LOWORD(UNKNOWN_7E9C9F),X
	STZ .LOWORD(UNKNOWN_7E9C9F) + 1,X
	BRA @UNKNOWN13
@UNKNOWN12:
	.A16
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_12, $0E
	LDX #$0004
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9C9F)+4
@UNKNOWN13:
	LDY $1A
	TYX
	REP #PROC_FLAGS::ACCUM8
	LDA #$0004
	JSR a:.LOWORD(UNKNOWN_C438A5)
	LDA #$005B
	JSR a:.LOWORD(PRINT_LETTER)
	PROMOTENEARPTR .LOWORD(UNKNOWN_7E9C9F), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$000A
	JSR a:.LOWORD(PRINT_STRING)
	LDY $1A
	INY
	STY $1A
@UNKNOWN14:
	STY $02
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $02
	JUMPGTS @UNKNOWN1
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	JSR CLEAR_INSTANT_PRINTING
	PLD
	RTS
