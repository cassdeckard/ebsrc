
UNKNOWN_C1C853: ;$C1C853
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	STY $12
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E7A)
@UNKNOWN0:
	LDY $12
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::name
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA #$0001
	JSL SET_WINDOW_TITLE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $0E
	LDA #$000F
	STA $0F
	LDY $12
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSR a:.LOWORD(GENERATE_PSI_LIST)
	PLD
	RTL
