
OPEN_MENU_BUTTON: ;$C134A7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFDB
	TCD
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	LDA #$0000
	JSR a:.LOWORD(CREATE_WINDOW)
	SEP #PROC_FLAGS::ACCUM8
	STZ $5E6C
	JSR a:.LOWORD(UNKNOWN_C133B0)
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E79)
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $06
	STZ $08
	LDA $06
	CMP #$0001
	BEQ @UNKNOWN5
	CMP #$0002
	BEQ @UNKNOWN8
	CMP #$0003
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN64)
@UNKNOWN1:
	CMP #$0004
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN69)
@UNKNOWN2:
	CMP #$0005
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN71)
@UNKNOWN3:
	CMP #$0006
	BNE @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN74)
@UNKNOWN4:
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN5:
	JSL UNKNOWN_C13187
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN6
	LDA $06
	CMP $0A
@UNKNOWN6:
	BNE @UNKNOWN7
	LOADPTR TEXT_BLOCK_C7C588, $06
@UNKNOWN7:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN8:
	JSR a:.LOWORD(UNKNOWN_C1134B)
@UNKNOWN9:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN11
	LDY #.LOWORD(GAME_STATE)+122
	STY $23
	LDX #$0001
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	JSL UNKNOWN_C3E977
	CMP #$0000
	BNE @UNKNOWN10
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN10:
	LDX #$0002
	LDY $23
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	JSR a:.LOWORD(INVENTORY_GET_ITEM_NAME)
	LDY $23
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $1F
	LDA $08
	STA $21
	LDA #$0000
	JSL UNKNOWN_C43573
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LOADPTR UNKNOWN_C1339E, $0E
	LDA #$0000
	STA $12
	LDA #$0000
	STA $14
	LDX #$0001
	LDA #$0000
	JSR a:.LOWORD(CHAR_SELECT_PROMPT)
	STA $06
	STZ $08
	LDA $06
	STA $1F
	LDA $08
	STA $21
@UNKNOWN12:
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN13
	LDA $06
	CMP $0A
@UNKNOWN13:
	BNE @UNKNOWN14
	LDA #$0002
	JSL CLOSE_WINDOW
	JSR a:.LOWORD(UNKNOWN_C19437)
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN14:
	LDX #$0001
	LDA $06
	JSL UNKNOWN_C3E977
	CMP #$0000
	BNE @UNKNOWN15
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN15:
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $04
	STA $1D
	JSL UNKNOWN_EF016F
	JSR a:.LOWORD(UNKNOWN_C19437)
	LDA $04
	BNE @UNKNOWN18
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN16:
	LDX #$0001
	LDA .LOWORD(GAME_STATE)+122
	AND #$00FF
	JSL UNKNOWN_C3E977
	CMP #$0000
	BEQ @UNKNOWN17
	LDA #$001B
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
@UNKNOWN17:
	LDA #$0002
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN18:
	LDA #$0003
	JSR a:.LOWORD(CREATE_WINDOW)
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAX
	BEQ @UNKNOWN21
	STX $02
	LDA #$0004
	CLC
	SBC $02
	BVC @UNKNOWN19
	BPL @UNKNOWN21
	BRA @UNKNOWN20
@UNKNOWN19:
	BMI @UNKNOWN21
@UNKNOWN20:
	LDX #$0001
	BRA @UNKNOWN22
@UNKNOWN21:
	LDX #$0000
@UNKNOWN22:
	TXY
	STY $23
	TYX
	LDA #$0000
	JSL UNKNOWN_C438A5
	BRA @UNKNOWN24
@UNKNOWN23:
	TYX
	INX
	STX $1B
	LOADPTR ITEM_USE_MENU_STRINGS, $06
	TYA
	STA $04
	ASL
	ADC $04
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #$0000
	STA $12
	LDA #$0000
	STA $14
	TXA
	JSR a:.LOWORD(UNKNOWN_C115F4)
	LDX $1B
	TXY
	STY $23
@UNKNOWN24:
	LDY $23
	CPY #$0004
	BCC @UNKNOWN23
	LDY #$0000
	TYX
	LDA #$0001
	JSL UNKNOWN_C451FA
	LDA #$0000
	STA $02
@UNKNOWN25:
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	BEQ @UNKNOWN26
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	SEP #PROC_FLAGS::ACCUM8
	LDA $1A
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN27
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	BRA @UNKNOWN27
@UNKNOWN26:
	LDA #$0003
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
@UNKNOWN27:
	LDA #$0003
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $0A
	STZ $0C
	LDA $0A
	BEQ @UNKNOWN30
	CMP #$0001
	BEQ @UNKNOWN31
	CMP #$0004
	BEQ @UNKNOWN33
	CMP #$0002
	BNE @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN34)
@UNKNOWN28:
	CMP #$0003
	BNE @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN29:
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN30:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JMP a:.LOWORD(@UNKNOWN15)
@UNKNOWN31:
	LDA #$0001
	STA $02
	LDY #$0000
	LDA $1D
	STA $04
	LDX $04
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	JSR a:.LOWORD(OVERWORLD_USE_ITEM)
	CMP #$0000
	BEQ @UNKNOWN32
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN32:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA $00
	STA $1A
	JMP a:.LOWORD(@UNKNOWN25)
@UNKNOWN33:
	LDA #$0000
	BRK
	JSR a:.LOWORD(UNKNOWN_C10F40)
	LDA #$0002
	BRK
	JSR a:.LOWORD(UNKNOWN_C10F40)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA .LOWORD(UNKNOWN_7E5E79)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	JSR a:.LOWORD(CREATE_WINDOW)
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	TAY
	STY $23
	LDA $1D
	STA $04
	LDX $04
	TYA
	JSL UNKNOWN_C3E977
	STA $1D
	LOADPTR ITEM_CONFIGURATION_TABLE, $0A
	LDA $1D
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::help_text
	CLC
	ADC $0A
	STA $0A
	LDY #$0002
	LDA [$0A],Y
	TAY
	LDA [$0A]
	STA $06
	STY $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
	LDA #$0001
	JSL CLOSE_WINDOW
	LDA #$0000
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $5E6C
	JSR a:.LOWORD(UNKNOWN_C133B0)
	.A16
	LDX #$0002
	LDY $23
	TYA
	JSR a:.LOWORD(INVENTORY_GET_ITEM_NAME)
	LDA #$0003
	JSL CLOSE_WINDOW
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JMP a:.LOWORD(@UNKNOWN15)
@UNKNOWN34:
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JSR a:.LOWORD(UNKNOWN_C10FA3)
	LDA #$0001
	STA $02
	LDA #$0003
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LOADPTR UNKNOWN_C133A7, $0E
	LDA #$0000
	STA $12
	LDA #$0000
	STA $14
	LDX #$0001
	LDA #$0002
	JSR a:.LOWORD(CHAR_SELECT_PROMPT)
	STA $18
	JSR a:.LOWORD(UNKNOWN_C19437)
	LDA #$002C
	JSL CLOSE_WINDOW
	LDA $18
	BNE @UNKNOWN35
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $00
	STA $1A
	JMP a:.LOWORD(@UNKNOWN25)
@UNKNOWN35:
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $18
	STA $0A
	STZ $0C
	LDA $0C
	CMP $08
	BNE @UNKNOWN36
	LDA $0A
	CMP $06
@UNKNOWN36:
	BEQ @UNKNOWN37
	LDA $1D
	STA $04
	LDX $04
	LDA $06
	JSL UNKNOWN_C3E977
	LDY #.SIZEOF(item)
	JSL MULT168
	.A16
	CLC
	ADC #item::flags
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #ITEM_FLAGS::CANNOT_GIVE
	BEQ @UNKNOWN37
	LDA #$0001
	JSR a:.LOWORD(CREATE_WINDOW)
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA $04
	STA $06
	STZ $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7C6C9
	LDA #$0001
	JSL CLOSE_WINDOW
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $00
	STA $1A
	JMP a:.LOWORD(@UNKNOWN25)
@UNKNOWN37:
	LDX #$0000
	STX $16
	LDA $06
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAY
	CPY #$0001
	BEQ @UNKNOWN38
	CPY #$0002
	BNE @UNKNOWN39
@UNKNOWN38:
	LDX #$0005
	STX $16
@UNKNOWN39:
	LDA $18
	STA $0A
	STZ $0C
	LDA $0C
	CMP $08
	BNE @UNKNOWN40
	LDA $0A
	CMP $06
@UNKNOWN40:
	.A16
	BEQ @UNKNOWN43
	LDX $16
	INX
	STX $16
	LDA $18
	JSL FIND_INVENTORY_SPACE2
	CMP #$0000
	BEQ @UNKNOWN41
	LDX $16
	INX
	INX
	STX $16
@UNKNOWN41:
	LDA $18
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAY
	CPY #$0001
	BEQ @UNKNOWN42
	CPY #$0002
	BNE @UNKNOWN43
@UNKNOWN42:
	LDX $16
	INX
	STX $16
@UNKNOWN43:
	LDA #$0001
	JSR a:.LOWORD(CREATE_WINDOW)
	JSR a:.LOWORD(GET_ACTIVE_WINDOW_ADDRESS)
	STA $23
	CLC
	ADC #$0017
	TAY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDA $18
	STA $0A
	STZ $0C
	LDA $23
	CLC
	ADC #$0021
	TAY
	LDA $0A
	STA a:.LOWORD(RAM),Y
	LDA $0C
	STA a:.LOWORD(RAM)+2,Y
	LDA $1D
	STA $04
	STA $0A
	STZ $0C
	LDA $23
	CLC
	ADC #$001B
	TAY
	LDA $0A
	STA a:.LOWORD(RAM),Y
	LDA $0C
	STA a:.LOWORD(RAM)+2,Y
	LDX $16
	TXA
	BEQ @UNKNOWN51
	CMP #$0001
	BEQ @UNKNOWN52
	CMP #$0002
	BEQ @UNKNOWN53
	CMP #$0003
	BNE @UNKNOWN44
	JMP a:.LOWORD(@UNKNOWN54)
@UNKNOWN44:
	CMP #$0004
	BNE @UNKNOWN45
	JMP a:.LOWORD(@UNKNOWN55)
@UNKNOWN45:
	CMP #$0005
	BNE @UNKNOWN46
	JMP a:.LOWORD(@UNKNOWN56)
@UNKNOWN46:
	CMP #$0006
	BNE @UNKNOWN47
	JMP a:.LOWORD(@UNKNOWN57)
@UNKNOWN47:
	CMP #$0007
	BNE @UNKNOWN48
	JMP a:.LOWORD(@UNKNOWN58)
@UNKNOWN48:
	CMP #$0008
	BNE @UNKNOWN49
	JMP a:.LOWORD(@UNKNOWN59)
@UNKNOWN49:
	CMP #$0009
	BNE @UNKNOWN50
	JMP a:.LOWORD(@UNKNOWN60)
@UNKNOWN50:
	JMP a:.LOWORD(@UNKNOWN61)
@UNKNOWN51:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E3FA
	LDY $04
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	TAX
	LDA $18
	JSL UNKNOWN_C22A3A
	JMP a:.LOWORD(@UNKNOWN62)
@UNKNOWN52:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E42C
	JMP a:.LOWORD(@UNKNOWN62)
@UNKNOWN53:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E468
	JMP a:.LOWORD(@UNKNOWN62)
@UNKNOWN54:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E4A4
	LDY $04
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	TAX
	LDA $18
	JSL UNKNOWN_C22A3A
	JMP a:.LOWORD(@UNKNOWN62)
@UNKNOWN55:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E4C3
	LDY $04
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	TAX
	LDA $18
	JSL UNKNOWN_C22A3A
	JMP a:.LOWORD(@UNKNOWN62)
@UNKNOWN56:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E4E9
	LDY $04
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	TAX
	LDA $18
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@UNKNOWN57:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E51C
	BRA @UNKNOWN62
@UNKNOWN58:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E559
	BRA @UNKNOWN62
@UNKNOWN59:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E5A1
	LDY $04
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	TAX
	LDA $18
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@UNKNOWN60:
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7E5C2
	LDY $04
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	TAX
	LDA $18
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@UNKNOWN61:
	BRA @UNKNOWN61
@UNKNOWN62:
	LDA #$0001
	JSL CLOSE_WINDOW
	LDA #$0003
	JSL CLOSE_WINDOW
	LDA #$0002
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN63:
	LDA #$0001
	JSR a:.LOWORD(CREATE_WINDOW)
	LDA $1F
	STA $06
	LDA $21
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA $1D
	STA $04
	STA $06
	STZ $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7C609
	LDA #$0001
	JSL CLOSE_WINDOW
	LDA #$0003
	JSL CLOSE_WINDOW
	LDA #$0002
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN64:
	JSR a:.LOWORD(UNKNOWN_C1134B)
	JSR a:.LOWORD(UNKNOWN_C1C373)
	STA $06
	STZ $08
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN65
	LDA $06
	CMP $0A
@UNKNOWN65:
	BEQ @UNKNOWN66
	LDA $06
	DEC
	JSL UNKNOWN_C43573
@UNKNOWN66:
	JSR a:.LOWORD(UNKNOWN_C1B5B6)
	CMP #$0000
	BEQ @UNKNOWN67
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN67:
	JSR a:.LOWORD(UNKNOWN_C1C3B6)
	CMP #$0001
	BEQ @UNKNOWN68
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN68:
	LDA #$001B
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN69:
	JSR a:.LOWORD(UNKNOWN_C1134B)
	JSR a:.LOWORD(UNKNOWN_C1AA5D)
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN70
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN70:
	LDA #$001B
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN71:
	JSL UNKNOWN_C1323B
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN72
	LDA $06
	CMP $0A
@UNKNOWN72:
	BNE @UNKNOWN73
	LOADPTR TEXT_BLOCK_C7C59E, $06
@UNKNOWN73:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
	BRA @UNKNOWN75
@UNKNOWN74:
	JSR a:.LOWORD(UNKNOWN_C1134B)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	JSR a:.LOWORD(UNKNOWN_C1BB71)
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E71)
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN75:
	JSL CLEAR_9622
	JSR a:.LOWORD(HIDE_HPPP_WINDOWS)
	JSR a:.LOWORD(UNKNOWN_C1008E)
@UNKNOWN76:
	JSL UNKNOWN_C12DD5
	.A16
	LDA .LOWORD(UNKNOWN_7EB4A8)
	CMP #$FFFF
	BNE @UNKNOWN76
	JSL UNKNOWN_C09451
	PLD
	RTL
OPEN_MENU_BUTTON_CHECKTALK:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JSL UNKNOWN_C13187
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN77
	LDA $06
	CMP $0A
@UNKNOWN77:
	BNE @UNKNOWN79
	JSL UNKNOWN_C1323B
	LDA $08
	CMP $0C
	BNE @UNKNOWN78
	LDA $06
	CMP $0A
@UNKNOWN78:
	BNE @UNKNOWN79
	LOADPTR TEXT_BLOCK_C7C59E, $06
@UNKNOWN79:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
	JSL CLEAR_9622
	JSR a:.LOWORD(HIDE_HPPP_WINDOWS)
	JSR a:.LOWORD(UNKNOWN_C1008E)
@UNKNOWN80:
	JSL UNKNOWN_C12DD5
	LDA .LOWORD(UNKNOWN_7EB4A8)
	CMP #$FFFF
	BNE @UNKNOWN80
	JSL UNKNOWN_C09451
	PLD
	RTL