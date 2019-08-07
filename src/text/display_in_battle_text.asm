
DISPLAY_IN_BATTLE_TEXT: ;$C1DC1C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	MOVE_INT $20, $06
	LDX #.LOWORD(GAME_STATE) + game_state::auto_fight_enable
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BEQ @UNKNOWN0
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::B_BUTTON
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	JSL UNKNOWN_C20293
@UNKNOWN0:
	.A16
	LDA .LOWORD(BATTLE_MODE_FLAG)
	BEQ @NO_PROMPT
	LDA #$0002
	JSR a:.LOWORD(ENABLE_BLINKING_TRIANGLE)
@NO_PROMPT:
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	JSR a:.LOWORD(CLEAR_BLINKING_PROMPT)
	PLD
	RTL
