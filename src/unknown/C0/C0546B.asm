
UNKNOWN_C0546B: ;$C0546B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY #$0000
	STY $10
	TYA
	STA $0E
	BRA @UNKNOWN4
@UNKNOWN0:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:.LOWORD(RAM) + game_state::unknown96,X
	AND #$00FF
	CLC
	SBC #$0004
	BRANCHGTS @UNKNOWN3
	LDA a:.LOWORD(RAM) + game_state::player_controlled_party_members,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::level,X
	AND #$00FF
	STA $02
	LDY $10
	TYA
	CLC
	ADC $02
	TAY
	STY $10
@UNKNOWN3:
	LDA $0E
	INC
	STA $0E
@UNKNOWN4:
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BNE @UNKNOWN0
	TYA
	PLD
	RTL
