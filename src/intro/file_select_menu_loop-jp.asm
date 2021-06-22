
FILE_MENU_LOOP: ;$C1F805
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 40
@UNKNOWN0:
	JSR SET_9622_ONE
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
	JSR a:.LOWORD(UNKNOWN_C1008E)
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
	LDA #$0000
	JSR OPEN_TEXT_SPEED_MENU
	CMP #$0000
	BNE @MENU_SETUP_SELECTED2
	LDA #$0018
	JSR CLOSE_WINDOW
	BRA @VALID_FILE_SELECTED
@MENU_SETUP_SELECTED2:
	LDA #$0000
	JSR a:.LOWORD(OPEN_SOUND_MENU)
	CMP #$0000
	BNE @MENU_SETUP_SELECTED3
	LDA #$0019
	JSR CLOSE_WINDOW
	BRA @MENU_SETUP_SELECTED
@MENU_SETUP_SELECTED3:
	JSR a:.LOWORD(OPEN_FLAVOUR_MENU)
	CMP #$0000
	BEQ @MENU_SETUP_SELECTED2
@MENU_OTHER_SELECTED:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JMP a:.LOWORD(@UNKNOWN0)
@EMPTY_FILE_SELECTED:
	LDA #$0000
	JSR OPEN_TEXT_SPEED_MENU
	CMP #$0000
	BNE @UNKNOWN14
	LDA #$0018
	JSR CLOSE_WINDOW
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN14:
	LDA #$0000
	JSR a:.LOWORD(OPEN_SOUND_MENU)
	CMP #$0000
	BNE @UNKNOWN16
	LDA #$0019
	JSR CLOSE_WINDOW
	BRA @EMPTY_FILE_SELECTED
@UNKNOWN16:
	JSR a:.LOWORD(OPEN_FLAVOUR_MENU)
	CMP #$0000
	BEQ @UNKNOWN14
@CHANGE_TO_NAMING_SCREEN_MUSIC:
	LDA #MUSIC::NAMING_SCREEN
	JSL CHANGE_MUSIC
@UNKNOWN18:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	LDA #$0000
	STA $02
	JMP a:.LOWORD(@UNKNOWN31)
@UNKNOWN19:
	LDA $02
	CMP #$FFFF
	BNE @UNKNOWN20
	JSR a:.LOWORD(UNKNOWN_C1008E)
	LDA #$0001
	JSR a:.LOWORD(FILE_SELECT_MENU)
	LDA #$0001
	JSR OPEN_TEXT_SPEED_MENU
	LDA #$0001
	JSR OPEN_SOUND_MENU
	LDA #MUSIC::SETUP_SCREEN
	JSL CHANGE_MUSIC
	BRA @UNKNOWN16
@UNKNOWN20:
	LDA $02
	JSL DISPLAY_ANIMATED_NAMING_SPRITE
	LDA #FILE_MENU_NEW_GAME_NAME::DOG
	CLC
	SBC $02
	BVC @UNKNOWN21
	BPL @UNKNOWN24
	BRA @UNKNOWN22
@UNKNOWN21:
	BMI @UNKNOWN24
@UNKNOWN22:
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $02
	OPTIMIZED_MULT $04, 15
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDY $02
	STY $26
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAX
	LDA #.SIZEOF(char_struct::name)
	LDY $26
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN23
	LDA #$FFFF
	STA $04
	STA $24
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN23:
	LDA #$0001
	STA $04
	STA $24
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN24:
	LDA $02
	CMP #FILE_MENU_NEW_GAME_NAME::DOG
	BNE @UNKNOWN26
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $02
	OPTIMIZED_MULT $04, 15
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDY $02
	LDX #.LOWORD(GAME_STATE) + game_state::pet_name
	LDA #$0006
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN25
	LDA #$FFFF
	STA $04
	STA $24
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN25:
	LDA #$0001
	STA $04
	STA $24
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN26:
	LDA $02
	CMP #FILE_MENU_NEW_GAME_NAME::FAVORITE_FOOD
	BNE @UNKNOWN28
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $02
	OPTIMIZED_MULT $04, 15
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDY $02
	LDX #.LOWORD(GAME_STATE) + game_state::favourite_food
	LDA #$0006
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN27
	LDA #$FFFF
	STA $04
	STA $24
	BRA @UNKNOWN30
@UNKNOWN27:
	LDA #$0001
	STA $04
	STA $24
	BRA @UNKNOWN30
@UNKNOWN28:
	LDA $02
	CMP #FILE_MENU_NEW_GAME_NAME::FAVORITE_THING
	BNE @UNKNOWN30
	LOADPTR FILE_SELECT_TEXT_PLEASE_NAME_THEM_STRINGS, $06
	LDA $02
	OPTIMIZED_MULT $04, 15
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #NAME_THEM_STRING_LENGTH
	STA $12
	LDY $02
	LDX #.LOWORD(GAME_STATE) + game_state::favourite_thing + 2 ; part after 'PSI ' prefix
	LDA #$0006
	JSR a:.LOWORD(NAME_A_CHARACTER)
	CMP #$0000
	BEQ @UNKNOWN29
	LDA #$FFFF
	STA $04
	STA $24
	BRA @UNKNOWN30
@UNKNOWN29:
	LDA #$0001
	STA $04
	STA $24
@UNKNOWN30:
	LDA $02
	JSL UNKNOWN_C4D830
	LDA $24
	STA $04
	LDA $02
	CLC
	ADC $04
	STA $02
@UNKNOWN31:
	LDA #THINGS_NAMED_COUNT
	CLC
	SBC $02
	BVS @UNKNOWN32
	BMI @DISPLAY_NAMES_FOR_CONFIRMATION
	JMP a:.LOWORD(@UNKNOWN19)
@UNKNOWN32:
	BPL @DISPLAY_NAMES_FOR_CONFIRMATION
	JMP a:.LOWORD(@UNKNOWN19)
@DISPLAY_NAMES_FOR_CONFIRMATION:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JSR SET_9622_ONE
	LDX #$0000
	STX $22
	BRA @UNKNOWN35
@UNKNOWN34:
	TXA
	CLC
	ADC #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_NESS
	JSR a:.LOWORD(CREATE_WINDOW)
	LDX $22
	INX
	STX $20
	TXA
	JSR a:.LOWORD(UNKNOWN_C1931B)
	LDX $20
	STX $22
@UNKNOWN35:
	STX $02
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $02
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
	LDA #$0009
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #$89CC
	STA $02
	STA $22
	LDY #.LOWORD(GAME_STATE) + game_state::favourite_food
	STY $20
	LDX #$0006
	TYA
	JSR UNKNOWN_C117E2
	LDX #$0001
	STX $1E
	PHA
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE)+68
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC $02
	TAX
	LDA .LOWORD(RAM),X
	PLY
	STY $02
	SEC
	SBC $02
	LDX $1E
	JSR UNKNOWN_C438A5
	LDY $20
	TYA
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$0006
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_THING
	JSR a:.LOWORD(CREATE_WINDOW)
	LOADPTR FILE_SELECT_TEXT_COOLEST_THING, $0E
	LDA #$000B
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDY #.LOWORD(GAME_STATE) + game_state::favourite_thing + 2 ; part after 'PSI ' prefix
	STY $1C
	LDX #$0006
	TYA
	JSR $1DBF
	LDX #$0001
	STX $1E
	PHA
	LDA $22
	STA $02
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE)+70
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC $02
	TAX
	LDA .LOWORD(RAM),X
	PLY
	STY $02
	SEC
	SBC $02
	LDX $1E
	JSR UNKNOWN_C438A5
	LDY $1C
	TYA
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$0007
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_MESSAGE
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE, $0E
	LDA #$000C
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	MOVE_INT_CONSTANT NULL, $06
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_YEP, $0E
	MOVE_INT $06, $12
	LDY #$0000
	LDX #$000D
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1153B)
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_NOPE, $0E
	MOVE_INT $06, $12
	LDY #$0000
	LDX #$0011
	TYA
	JSR a:.LOWORD(UNKNOWN_C1153B)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	JSL UNKNOWN_C4D8FA
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
	STX $1A
	BRA @UNKNOWN46
@UNKNOWN45:
	JSL UNKNOWN_C1004E
	LDX $1A
	INX
	STX $1A
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
	STZ $1A
	JMP a:.LOWORD(@UNKNOWN51)
@UNKNOWN49:
	LDA $1A
	STA $04
	INC $04
	LDA $04
	STA $22
	LOADPTR INITIAL_STATS, $06
	LDA $1A
	OPTIMIZED_MULT $04, 20
	STA $02
	LDY #$0000
	LDA $02
	CLC
	ADC #$0006
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	TAX
	LDA $22
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
	LDA $1A
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $02
	LDX $02
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	LDX $02
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,X
	LDX $02
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,X
	LDX $02
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	LDX $02
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp,X
	LDX $02
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp_target,X
	LDX $02
	STZ .LOWORD(CHAR_STRUCT)+char_struct::unknown73,X
	LDX $02
	STZ .LOWORD(CHAR_STRUCT)+char_struct::unknown67,X
	LDA $02
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	TAY
	STY $22
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #$000E
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL MEMSET16
	LOADPTR INITIAL_STATS, $06
	LDA $1A
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
	LDY $22
	TYA
	JSL MEMCPY16
	LDA #$0400
	LDX $02
	STA .LOWORD(CHAR_STRUCT)+char_struct::hp_pp_window_options,X
	INC $1A
@UNKNOWN51:
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $1A
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
	LDA #$0050 ;'P'
	STA .LOWORD(GAME_STATE)+game_state::favourite_thing
	LDA #$004B ;'K'
	STA .LOWORD(GAME_STATE)+game_state::favourite_thing+1
	LDA #$0001
	STA .LOWORD(GAME_STATE) + game_state::unknownC3
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(RESPAWN_X)
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(RESPAWN_Y)
	JSL UNKNOWN_C064D4
	LDX #$06E8
	LDA #$0840
	JSL UNKNOWN_C0B65F
	LOADPTR TEXT_FILE_SELECT_SCREEN_1, $0E
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
	TAX
	DEC
	STA $22
	LOADPTR UNKNOWN_C3FB1F, $0A
	LDA $22
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, .LOWORD(UNKNOWN_7E9627)
	LDA $22
	STA .LOWORD(SELECTED_TEXT_SPEED)
	CPX #$0003
	BNE @UNKNOWN60
	LDA #$0000
	BRA @UNKNOWN61
@UNKNOWN60:
	TXA
	OPTIMIZED_MULT $04, 30
@UNKNOWN61:
	STA .LOWORD(UNKNOWN_7E964B)
	STZ .LOWORD(UNKNOWN_7E5DBA)
	DISPLAY_TEXT_PTR TEXT_FILE_SELECT_SCREEN_2
	PLD
	RTS