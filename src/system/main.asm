
MAIN_LOOP: ;$C0B7D8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	JSL UNKNOWN_C43317
	LDA #.LOWORD(JMP_BUF1)
	JSL SETJMP
	JSL INIT_INTRO
	JSR a:.LOWORD(FILE_SELECT_INIT)
	JSR a:.LOWORD(UNKNOWN_C0B67F)
	JSL OAM_CLEAR
	JSL RUN_ACTIONSCRIPT_FRAME
	LDX #$0001
	TXA
	JSL FADE_IN
	JSL UPDATE_SCREEN
.IF !.DEFINED(JPN)
	LDA #.LOWORD(JMP_BUF2)
	JSL SETJMP
	JSL UNKNOWN_C43F53
.ENDIF
@LOOP_BEGIN:
	JSL OAM_CLEAR
	JSL RUN_ACTIONSCRIPT_FRAME
	JSL UPDATE_SCREEN
	JSL UNKNOWN_C4A7B0
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA .LOWORD(CURRENT_QUEUED_INTERACTION)
	SEC
	SBC .LOWORD(NEXT_QUEUED_INTERACTION)
	BEQ @UNKNOWN1
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNE @UNKNOWN1
	LDA .LOWORD(BATTLE_SWIRL_FLAG)
	BNE @UNKNOWN1
	LDA .LOWORD(BATTLE_DEBUG)
	BNE @UNKNOWN1
	JSL PROCESS_QUEUED_INTERACTIONS
	INC .LOWORD(INPUT_DISABLE_FRAME_COUNTER)
	JMP @UNKNOWN20
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE) + game_state::unknownB0
	CMP #$0002
	BEQL @UNKNOWN20
	LDX .LOWORD(GAME_STATE)+game_state::walking_style
	CPX #WALKING_STYLE::ESCALATOR
	BEQL @UNKNOWN20
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNEL @UNKNOWN20
	LDA .LOWORD(BATTLE_DEBUG)
	BEQ @UNKNOWN5
	JSL INIT_BATTLE_OVERWORLD
	INC .LOWORD(INPUT_DISABLE_FRAME_COUNTER)
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN6
	CPX #$0003
	BNE @UNKNOWN6
	JSL FREEZE_ENTITIES
	JSL GET_OFF_BICYCLE
	JSL UNFREEZE_ENTITIES
	JMP @LOOP_BEGIN
@UNKNOWN6:
	LDA .LOWORD(DEBUG)
	BEQ @NO_DEBUG
	LDA a:.LOWORD(PAD_STATE)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @DEBUG_PAD2_B_HELD
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::R_BUTTON
	BEQ @DEBUG_PAD2_B_HELD
	JSL DEBUG_Y_BUTTON_MENU
	JMP @LOOP_BEGIN
@DEBUG_PAD2_B_HELD:
	LDA a:.LOWORD(PAD_PRESS) + 2
	AND #PAD::A_BUTTON
	BEQ @DEBUG_PAD2_A_HELD
	JSL GET_DISTANCE_TO_MAGIC_TRUFFLE
@DEBUG_PAD2_A_HELD:
	LDA a:.LOWORD(PAD_PRESS) + 2
	AND #PAD::B_BUTTON
	BEQ @NO_DEBUG
	JSL TEST_YOUR_SANCTUARY_DISPLAY
@NO_DEBUG:
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNEL @LOOP_BEGIN
	LDA .LOWORD(BATTLE_SWIRL_FLAG)
	BNEL @LOOP_BEGIN
	LDA .LOWORD(INPUT_DISABLE_FRAME_COUNTER)
	BNE @UNKNOWN15
	LDA .LOWORD(UNKNOWN_7E5D9A)
	BNE @UNKNOWN16
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::A_BUTTON
	BEQ @NO_OPEN_MENU
	JSL OPEN_MENU_BUTTON
	BRA @UNKNOWN16
@NO_OPEN_MENU:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @NO_OPEN_HPPP_DISPLAY
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BEQ @NO_OPEN_HPPP_DISPLAY
	JSL OPEN_HPPP_DISPLAY
	BRA @UNKNOWN16
@NO_OPEN_HPPP_DISPLAY:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::X_BUTTON
	BEQ @NO_OPEN_TOWN_MAP
	JSL SHOW_TOWN_MAP
	BRA @UNKNOWN16
@NO_OPEN_TOWN_MAP:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::L_BUTTON
	BEQ @UNKNOWN16
	JSL OPEN_MENU_BUTTON_CHECKTALK
	BRA @UNKNOWN16
@UNKNOWN15:
	DEC .LOWORD(INPUT_DISABLE_FRAME_COUNTER)
@UNKNOWN16:
	LDA .LOWORD(TELEPORT_DESTINATION)
	BEQ @UNKNOWN17
	JSL TELEPORT_MAINLOOP
@UNKNOWN17:
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN20
	LDA a:.LOWORD(PAD_PRESS) + 2
	AND #PAD::B_BUTTON
	BEQ @UNKNOWN20
	LDA #$0000
	STA $0E
	BRA @UNKNOWN19
@UNKNOWN18:
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,X
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp_target,X
	LDA $0E
	INC
	STA $0E
@UNKNOWN19:
	CMP #TOTAL_PARTY_COUNT
	BCC @UNKNOWN18
@UNKNOWN20:
	JSL UNKNOWN_C04FFE
	CMP #$0000
	BNE @UNKNOWN21
	JSL SPAWN
	CMP #$0000
	BEQ @UNKNOWN21
	LDX #$0000
	LDA #.LOWORD(JMP_BUF1)
	JSL LONGJMP
@UNKNOWN21:
	LDA .LOWORD(DEBUG)
	BEQL @LOOP_BEGIN
	LDA a:.LOWORD(PAD_STATE)
	AND #PAD::START_BUTTON
	BEQL @LOOP_BEGIN
	LDA a:.LOWORD(PAD_STATE)
	AND #PAD::SELECT_BUTTON
	BEQL @LOOP_BEGIN
	PLD
	RTL
