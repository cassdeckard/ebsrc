
UNKNOWN_C47A27: ;$C47A27
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDX .LOWORD(GAME_STATE)+game_state::current_party_members
	STX $12
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC #$0070
	STA a:.LOWORD(BG1_Y_POS)
	STA $02
	LDX $12
	TXA
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC $02
	STA $10
	CLC
	ADC #$0060
	STA $0E
	LDY #$00F0
	LDA $10
	SEC
	SBC #$0060
	TAX
	LDA #$0010
	JSL UNKNOWN_C47930
	PLD
	RTL
