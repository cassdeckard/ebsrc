
UNKNOWN_C052D4: ;$C052D4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFD6
	TCD
	PLA
	STA $28
	LDA #$00FF
	STA $26
	STA .LOWORD(GAME_STATE)+136
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA $24
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA $22
	LDA .LOWORD(GAME_STATE)+game_state::trodden_tile_type
	STA $04
	STA $20
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	STA $1E
	LDA $28
	INC
	INC
	INC
	INC
	AND #$0007
	STA $02
	LDY #$9875
	STY $1C
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX $04
	LDA $02
	JSR a:.LOWORD(ADJUST_POSITION)
	LDY $1C
	LDA a:.LOWORD(RAM),Y
	STA $0A
	LDA a:.LOWORD(RAM)+2,Y
	STA $0C
	SEC
	LDA $06
	SBC $0A
	STA $06
	LDA $08
	SBC $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDY #$9879
	STY $1C
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX $04
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C03017)
	LDY $1C
	LDA a:.LOWORD(RAM),Y
	STA $0A
	LDA a:.LOWORD(RAM)+2,Y
	STA $0C
	SEC
	LDA $06
	SBC $0A
	STA $06
	LDA $08
	SBC $0C
	STA $08
	LDA $06
	STA $16
	LDA $08
	STA $18
	LDX #$0100
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	DEC
	STA $1C
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$5156
	TAX
	LDA $24
	STA a:.LOWORD(RAM),X
	LDA $22
	STA a:.LOWORD(RAM)+2,X
	LDA $20
	STA $04
	STA a:.LOWORD(RAM)+4,X
	LDA $1E
	STA a:.LOWORD(RAM)+6,X
	LDA $28
	STA a:.LOWORD(RAM)+8,X
	STZ a:.LOWORD(RAM)+10,X
	LDA $24
	CLC
	ADC $14
	STA $24
	LDA $22
	CLC
	ADC $18
	STA $22
	LDA $1C
	TAX
@UNKNOWN1:
	BNE @UNKNOWN0
	LDA $26
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$5156
	TAX
	STX $1C
	LDA #$0000
	STA $1A
	BRA @UNKNOWN3
@UNKNOWN2:
	TAX
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_members,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	LDA $26
	STA a:.LOWORD(RAM)+61,Y
	LDA #$FFFF
	STA a:.LOWORD(RAM)+65,Y
	STA a:.LOWORD(RAM)+55,Y
	LDA $1A
	ASL
	STA $02
	CLC
	ADC #$9897
	TAY
	LDA a:.LOWORD(RAM),Y
	ASL
	PHA
	LDX $1C
	LDA a:.LOWORD(RAM),X
	PLX
	STA .LOWORD(SPRITE_ABS_X_TABLE),X
	LDA a:.LOWORD(RAM),Y
	ASL
	PHA
	LDX $1C
	LDA a:.LOWORD(RAM)+2,X
	PLX
	STA .LOWORD(SPRITE_ABS_Y_TABLE),X
	LDX $1C
	LDA a:.LOWORD(RAM)+8,X
	LDX $02
	STA .LOWORD(UNKNOWN_30X2_TABLE_34),X
	LDX $1C
	LDA a:.LOWORD(RAM)+4,X
	LDX $02
	STA .LOWORD(UNKNOWN_30X2_TABLE_37),X
	LDA $26
	SEC
	SBC #$0010
	STA $26
	LDX $1C
	TXA
	SEC
	SBC #$00C0
	TAX
	STX $1C
	LDA $1A
	INC
	STA $1A
@UNKNOWN3:
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	STA $02
	LDA $1A
	CMP $02
	BCS @UNKNOWN4
	BEQ @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN4:
	PLD
	RTL