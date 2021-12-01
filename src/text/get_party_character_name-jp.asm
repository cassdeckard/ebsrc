
GET_PARTY_CHARACTER_NAME: ;$C222D3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	CMP #PARTY_MEMBER::POO
	BCC @UNKNOWN1
	BEQ @UNKNOWN1
	CMP #PARTY_MEMBER::KING
	BNE @UNKNOWN0
	PROMOTENEARPTR .LOWORD(GAME_STATE)+game_state::pet_name, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
	BRA @RETURN
@UNKNOWN0:
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	LDA $0E
	ASL
	TAX
	INX
	LDA f:NPC_AI_TABLE,X
	AND #$00FF
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $16
	LDA $08
	STA $18
	BRA @RETURN
@UNKNOWN1:
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $16
@RETURN:
	PLD
	RTL
