
UNKNOWN_C46BE9: ;$C46BE9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAX
	LDY .LOWORD(CURRENT_ENTITY_SLOT)
	STY $12
	CPX #$00FE
	BNE @UNKNOWN0
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	TAX
	STX $10
	TXA
	DEC
	ASL
	TAX
	LDA .LOWORD(GAME_STATE) + game_state::unknownA2,X
	STA $0E
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	BNE @UNKNOWN1
	LDX $10
	TXA
	DEC
	DEC
	ASL
	TAX
	LDA .LOWORD(GAME_STATE) + game_state::unknownA2,X
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	STA $0E
@UNKNOWN1:
	LDY $12
	TYA
	ASL
	TAY
	LDA $0E
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	STA .LOWORD(ENTITY_SCRIPT_VAR6_TABLE),Y
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),Y
	PLD
	RTL
