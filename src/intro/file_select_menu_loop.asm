
FILE_MENU_LOOP: ;$C1F805
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 38
@UNKNOWN0:
	JSL SET_9622_ONE
	LDA #$0000
	JSR a:.LOWORD(FILE_SELECT_MENU)
	TAX
	DEX
	LDA .LOWORD(UNKNOWN_7EB49E),X
	AND #$00FF
	BNE @VALID_FILE_SELECTED
	JMP a:.LOWORD(@EMPTY_FILE_SELECTED)
@VALID_FILE_SELECTED:
	JSR a:.LOWORD(UNKNOWN_C1F07E)
	CMP #$0000
	BEQ @MENU_B_PRESSED
	CMP #$0001
	BEQ @MENU_STARTGAME_SELECTED
	CMP #$0002
	BEQ @MENU_COPY_SELECTED
	CMP #$0003
	BEQ @MENU_DELETE_SELECTED
	CMP #$0004
	BEQ @MENU_SETUP_SELECTED
	BRA @MENU_OTHER_SELECTED
@MENU_B_PRESSED:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	BRA @UNKNOWN0
@MENU_STARTGAME_SELECTED:
	JSL UNKNOWN_C064D4
	JSL UNKNOWN_C07213
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(RESPAWN_X)
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(RESPAWN_Y)
	JMP a:.LOWORD(@UNKNOWN59)
@MENU_COPY_SELECTED:
	JSR a:.LOWORD(UNKNOWN_C1F14F)
	CMP #$0000
	BEQ @VALID_FILE_SELECTED
	BRA @MENU_OTHER_SELECTED
@MENU_DELETE_SELECTED:
	JSR a:.LOWORD(UNKNOWN_C1F2A8)
	CMP #$0000
	BEQ @VALID_FILE_SELECTED
	BRA @MENU_OTHER_SELECTED
@MENU_SETUP_SELECTED:
	JSL OPEN_TEXT_SPEED_MENU
@UNKNOWN7:
	LDA #$0000
	JSL UNKNOWN_C1F497
	CMP #$0000
	BNE @MENU_SETUP_SELECTED2
	LDA #$0018
	JSL CLOSE_WINDOW
	BRA @VALID_FILE_SELECTED
@MENU_SETUP_SELECTED2:
	JSR a:.LOWORD(OPEN_SOUND_MENU)
@UNKNOWN9:
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C1F616)
	CMP #$0000
	BNE @MENU_SETUP_SELECTED3
	LDA #$0019
	JSL CLOSE_WINDOW
	BRA @UNKNOWN7
@MENU_SETUP_SELECTED3:
	JSR a:.LOWORD(OPEN_FLAVOUR_MENU)
	CMP #$0000
	BNE @MENU_OTHER_SELECTED
	LDA #$0032
	JSL CLOSE_WINDOW
	BRA @UNKNOWN9
@MENU_OTHER_SELECTED:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JMP a:.LOWORD(@UNKNOWN0)
@EMPTY_FILE_SELECTED:
	JSL OPEN_TEXT_SPEED_MENU
@UNKNOWN13:
	LDA #$0000
	JSL UNKNOWN_C1F497
	CMP #$0000
	BNE @UNKNOWN14
	LDA #$0018
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN14:
	JSR a:.LOWORD(OPEN_SOUND_MENU)
@UNKNOWN15:
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C1F616)
	CMP #$0000
	BNE @UNKNOWN16
	LDA #$0019
	JSL CLOSE_WINDOW
	BRA @UNKNOWN13
@UNKNOWN16:
	JSR a:.LOWORD(OPEN_FLAVOUR_MENU)
	CMP #$0000
	BNE @CHANGE_TO_NAMING_SCREEN_MUSIC
	LDA #$0032
	JSL CLOSE_WINDOW
	BRA @UNKNOWN15
@CHANGE_TO_NAMING_SCREEN_MUSIC:
	LDA #MUSIC::NAMING_SCREEN
	JSL CHANGE_MUSIC
@UNKNOWN18:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	LDA #$0000
	STA $04
	STA $24
	JMP a:.LOWORD(@UNKNOWN31)
@UNKNOWN19:
	LDA $04
	CMP #$FFFF
	BNE @UNKNOWN20
	JSR a:.LOWORD(UNKNOWN_C1008E)
	LDA #$0001
	JSR a:.LOWORD(FILE_SELECT_MENU)
	LDA #$0001
	JSL UNKNOWN_C1F497
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1F616)
	LDA #MUSIC::SETUP_SCREEN
	JSL CHANGE_MUSIC
	BRA @UNKNOWN16
@UNKNOWN20:
	LDA $04
	JSL DISPLAY_ANIMATED_NAMING_SPRITE
	LDA #FILE_MENU_NEW_GAME_NAME::DOG
	CLC
	SBC $04
	BVC @UNKNOWN21
	BPL @UNKNOWN24
	BRA @UNKNOWN22
@UNKNOWN21:
	BMI @UNKNOWN24
@UNKNOWN22:
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $04
	OPTIMIZED_MULT $04, 40
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDA $24
	STA $04
	LDY $04
	STY $22
	LDA $04
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAX
	LDA #.SIZEOF(char_struct::name)
	LDY $22
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN23
	LDA #$FFFF
	STA $02
	STA $20
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN23:
	LDA #$0001
	STA $02
	STA $20
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN24:
	LDA $04
	CMP #FILE_MENU_NEW_GAME_NAME::DOG
	BNE @UNKNOWN26
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $04
	OPTIMIZED_MULT $04, 40
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDA $24
	STA $04
	LDY $04
	LDX #.LOWORD(GAME_STATE) + game_state::pet_name
	LDA #$0006
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN25
	LDA #$FFFF
	STA $02
	STA $20
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN25:
	LDA #$0001
	STA $02
	STA $20
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN26:
	LDA $04
	CMP #FILE_MENU_NEW_GAME_NAME::FAVORITE_FOOD
	BNE @UNKNOWN28
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $04
	OPTIMIZED_MULT $04, 40
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDA $24
	STA $04
	LDY $04
	LDX #.LOWORD(GAME_STATE) + game_state::favourite_food
	LDA #$0006
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN27
	LDA #$FFFF
	STA $02
	STA $20
	BRA @UNKNOWN30
@UNKNOWN27:
	LDA #$0001
	STA $02
	STA $20
	BRA @UNKNOWN30
@UNKNOWN28:
	LDA $04
	CMP #FILE_MENU_NEW_GAME_NAME::FAVORITE_THING
	BNE @UNKNOWN30
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $04
	OPTIMIZED_MULT $04, 40
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDA $24
	STA $04
	LDY $04
	LDX #.LOWORD(GAME_STATE) + game_state::favourite_thing + 4 ; part after 'PSI ' prefix
	LDA #$0006
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN29
	LDA #$FFFF
	STA $02
	STA $20
	BRA @UNKNOWN30
@UNKNOWN29:
	LDA #$0001
	STA $02
	STA $20
@UNKNOWN30:
	LDA $04
	JSL UNKNOWN_C4D830
	LDA $20
	STA $02
	LDA $04
	CLC
	ADC $02
	STA $04
	STA $24
@UNKNOWN31:
	LDA #THINGS_NAMED_COUNT
	CLC
	SBC $04
	BVS @UNKNOWN32
	BMI @DISPLAY_NAMES_FOR_CONFIRMATION
	JMP a:.LOWORD(@UNKNOWN19)
@UNKNOWN32:
	BPL @DISPLAY_NAMES_FOR_CONFIRMATION
	JMP a:.LOWORD(@UNKNOWN19)
@DISPLAY_NAMES_FOR_CONFIRMATION:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JSL SET_9622_ONE
	LDX #$0000
	STX $24
	BRA @UNKNOWN35
@UNKNOWN34:
	TXA
	CLC
	ADC #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_NESS
	JSR a:.LOWORD(CREATE_WINDOW)
	LDX $24
	INX
	STX $24
	TXA
	JSR a:.LOWORD(UNKNOWN_C1931B)
	LDX $24
	STX $24
@UNKNOWN35:
	STX $04
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $04
	BVS @UNKNOWN36
	BPL @UNKNOWN34
	BRA @UNKNOWN37
@UNKNOWN36:
	BMI @UNKNOWN34
@UNKNOWN37:
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_KING
	LDA #$0007
	JSR a:.LOWORD(UNKNOWN_C1931B)
	LDA #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_FOOD
	JSR a:.LOWORD(CREATE_WINDOW)
	LOADPTR FILE_SELECT_TEXT_FAVORITE_FOOD, $0E
	LDA #$000E
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #.LOWORD(GAME_STATE) + game_state::favourite_food
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSL STRLEN
	STA $1E
	MOVE_INT $06, $0E
	LDX #$0000
	LDA $1E
	JSL UNKNOWN_C44FF3
	TAX
	ASL
	PHP
	LSR
	LSR
	LSR
	LSR
	PLP
	BCC @UNKNOWN38
	ORA #$F000
@UNKNOWN38:
	STA $24
	LDY #$0008
	TXA
	JSL MODULUS16S
	CMP #$0000
	BNE @UNKNOWN39
	LDA $24
	CMP #$0006
	BNE @UNKNOWN40
@UNKNOWN39:
	LDA $24
	INC
@UNKNOWN40:
	LDX #$0001
	STX $1C
	STA $04
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE)+68
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+10,X
	SEC
	SBC $04
	LDX $1C
	JSL UNKNOWN_C438A5
	LDA #.LOWORD(GAME_STATE) + game_state::favourite_food
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSL STRLEN
	STA $24
	MOVE_INT $06, $0E
	LDA $24
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_THING
	JSR a:.LOWORD(CREATE_WINDOW)
	LOADPTR FILE_SELECT_TEXT_COOLEST_THING, $0E
	LDA #$000E
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #.LOWORD(GAME_STATE) + game_state::favourite_thing + 4 ; part after 'PSI ' prefix
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSL STRLEN
	STA $1E
	MOVE_INT $06, $0E
	LDX #$0000
	LDA $1E
	JSL UNKNOWN_C44FF3
	TAX
	ASL
	PHP
	LSR
	LSR
	LSR
	LSR
	PLP
	BCC @UNKNOWN41
	ORA #$F000
@UNKNOWN41:
	STA $24
	LDY #$0008
	TXA
	JSL MODULUS16S
	CMP #$0000
	BNE @UNKNOWN42
	LDA $24
	CMP #$0006
	BNE @UNKNOWN43
@UNKNOWN42:
	LDA $24
	INC
@UNKNOWN43:
	LDX #$0001
	STX $22
	STA $04
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE)+70
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+10,X
	SEC
	SBC $04
	LDX $22
	JSL UNKNOWN_C438A5
	LDA #.LOWORD(GAME_STATE) + game_state::favourite_thing + 4 ; part after 'PSI ' prefix
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSL STRLEN
	STA $24
	MOVE_INT $06, $0E
	LDA $24
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_MESSAGE
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE, $0E
	LDA #$000D
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	MOVE_INT_CONSTANT NULL, $06
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_YEP, $0E
	MOVE_INT $06, $12
	LDY #$0000
	LDX #$000E
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1153B)
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_NOPE, $0E
	MOVE_INT $06, $12
	LDY #$0000
	LDX #$0012
	TYA
	JSR a:.LOWORD(UNKNOWN_C1153B)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	JSL UNKNOWN_C4D8FA
	LDA #$00FF
	STA .LOWORD(UNKNOWN_7E5E6E)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	BNE @EVERYTHING_OKAY
	JSL UNKNOWN_C021E6
	JMP a:.LOWORD(@UNKNOWN18)
@EVERYTHING_OKAY:
	LDA #MUSIC::NAME_CONFIRMATION
	JSL CHANGE_MUSIC
	JSL UNKNOWN_C12DD5
	LDX #$0000
	STX $24
	BRA @UNKNOWN46
@UNKNOWN45:
	JSL UNKNOWN_C1004E
	LDX $24
	INX
	STX $24
@UNKNOWN46:
	STX $02
	LDA #$00B4
	CLC
	SBC $02
	BVS @UNKNOWN47
	BPL @UNKNOWN45
	BRA @UNKNOWN48
@UNKNOWN47:
	BMI @UNKNOWN45
@UNKNOWN48:
	JSL UNKNOWN_C021E6
	STZ $1E
	JMP a:.LOWORD(@UNKNOWN51)
@UNKNOWN49:
	LDA $1E
	STA $04
	INC $04
	LDA $04
	STA $24
	LOADPTR INITIAL_STATS, $06
	LDA $1E
	OPTIMIZED_MULT $04, 20
	STA $02
	LDY #$0000
	LDA $02
	CLC
	ADC #$0006
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	TAX
	LDA $24
	STA $04
	JSR a:.LOWORD(RESET_CHAR_LEVEL_ONE)
	LDA $02
	CLC
	ADC #$0008
	CLC
	ADC $06
	STA $06
	LDA [$06]
	BEQ @UNKNOWN50
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	LDX #$0000
	LDA $04
	JSL GAIN_EXP
@UNKNOWN50:
	LDA $1E
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	STY $1A
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,Y
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,Y
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,Y
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,Y
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp,Y
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp_target,Y
	TYX
	STZ .LOWORD(CHAR_STRUCT)+73,X
	TYX
	STZ .LOWORD(CHAR_STRUCT)+67,X
	TYA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	STA $02
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$000E
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	JSL MEMSET16
	LOADPTR INITIAL_STATS, $06
	LDA $1E
	OPTIMIZED_MULT $04, 20
	CLC
	ADC #$000A
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$000A
	LDA $02
	JSL MEMCPY16
	LDA #$0400
	LDY $1A
	STA .LOWORD(CHAR_STRUCT)+char_struct::hp_pp_window_options,Y
	INC $1E
@UNKNOWN51:
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $1E
	BVS @UNKNOWN52
	BMI @UNKNOWN53
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN52:
	BPL @UNKNOWN53
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN53:
	LOADPTR INITIAL_STATS, $06
	MOVE_INT $06, $16
	LDY #$0004
	LDA [$06],Y
	STA $06
	STZ $08
	MOVE_INT $06, .LOWORD(GAME_STATE)+game_state::money_carried
	MOVE_INT $16, $06
	LDY #$0002
	LDA [$06],Y
	ASL
	ASL
	ASL
	TAX
	LDA [$06]
	ASL
	ASL
	ASL
	JSL UNKNOWN_C0B65F
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080 ;'P'
	STA .LOWORD(GAME_STATE)+game_state::favourite_thing
	LDA #$0083 ;'S'
	STA .LOWORD(GAME_STATE)+game_state::favourite_thing+1
	LDA #$0079 ;'I'
	STA .LOWORD(GAME_STATE)+game_state::favourite_thing+2
	LDA #$0050 ;' '
	STA .LOWORD(GAME_STATE)+game_state::favourite_thing+3
	REP #PROC_FLAGS::ACCUM8
	LDA #$0004 ;Length of 'PSI ' string
	STA $1E
	BRA @UNKNOWN56
@UNKNOWN54:
	LDA $1E
	CLC
	ADC #.LOWORD(GAME_STATE) + game_state::favourite_thing
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BNE @UNKNOWN55
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0050 ;' '
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN58
@UNKNOWN55:
	LDA $1E
	INC
	STA $1E
@UNKNOWN56:
	.A16
	STA $02
	LDA #.SIZEOF(game_state::favourite_thing) - 1 ;Last byte should be \0
	CLC
	SBC $02
	BVS @UNKNOWN57
	BPL @UNKNOWN54
	BRA @UNKNOWN58
@UNKNOWN57:
	BMI @UNKNOWN54
@UNKNOWN58:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(GAME_STATE)+195
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(RESPAWN_X)
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(RESPAWN_Y)
	JSL UNKNOWN_C064D4
	LDX #$06E8
	LDA #$0840
	JSL UNKNOWN_C0B65F
	LOADPTR TEXT_BLOCK_C5E70B, $0E
	JSL UNKNOWN_C46881
	LDX #$0001
	LDA #EVENT_FLAG::UNKNOWN_00B
	JSL SET_EVENT_FLAG
	LDA #$0001
	STA .LOWORD(SHOW_NPC_FLAG)
@UNKNOWN59:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JSL UNKNOWN_C3EBCA
	LDA .LOWORD(GAME_STATE)+game_state::text_speed
	AND #$00FF
	STA $20
	TAX
	DEX
	LOADPTR UNKNOWN_C3FB1F, $0A
	TXA
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, .LOWORD(UNKNOWN_7E9627)
	STX .LOWORD(SELECTED_TEXT_SPEED)
	LDA $20
	CMP #$0003
	BNE @UNKNOWN60
	LDA #$0000
	BRA @UNKNOWN61
@UNKNOWN60:
	OPTIMIZED_MULT $04, 30
@UNKNOWN61:
	STA .LOWORD(UNKNOWN_7E964B)
	STZ .LOWORD(UNKNOWN_7E5DBA)
	DISPLAY_TEXT_PTR TEXT_BLOCK_C7DE2B
	PLD
	RTS
