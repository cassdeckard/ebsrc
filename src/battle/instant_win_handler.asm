
INSTANT_WIN_HANDLER: ;$C261BD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFE4
	TCD
	STZ .LOWORD(UNKNOWN_7E4DBC)
	LDA #MUSIC::SUDDEN_VICTORY
	JSL CHANGE_MUSIC
	JSL UNKNOWN_C2E9ED
	LDX #$0000
	STX $1A
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$03E0
	JSR a:.LOWORD(UNKNOWN_C26189)
	LDA #$001F
	JSR a:.LOWORD(UNKNOWN_C26189)
	LDA #$7C00
	JSR a:.LOWORD(UNKNOWN_C26189)
	LDX $1A
	INX
	STX $1A
@UNKNOWN1:
	CPX #$0002
	BCC @UNKNOWN0
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C26189)
	LOADPTR UNKNOWN_7F0000, $0E
	LOADPTR UNKNOWN_7F2000, $12
	LDA #$0200
	JSL MEMCPY24
	LDX #$FFFF
	LDA #$0006
	JSL UNKNOWN_C496E7
	LDX #$0000
	STX $18
	BRA @UNKNOWN3
@UNKNOWN2:
	JSL UNKNOWN_C426ED
	JSL READ_JOYPAD
	LDX $18
	INX
	STX $18
@UNKNOWN3:
	CPX #$0006
	BCC @UNKNOWN2
	JSL UNKNOWN_C49740
	JSL UNKNOWN_C0943C
	LDA #$000E
	JSL REDIRECT_CREATE_WINDOW
	STZ .LOWORD(BATTLE_MONEY_SCRATCH)
	LDA #$0000
	STA $18
	BRA @UNKNOWN5
@UNKNOWN4:
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E9F8C),X
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC #enemy_data::money
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	CLC
	ADC .LOWORD(BATTLE_MONEY_SCRATCH)
	STA .LOWORD(BATTLE_MONEY_SCRATCH)
	LDA $18
	INC
	STA $18
@UNKNOWN5:
	CMP .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN4
	LDY #$98B9
	STY $16
	LDA .LOWORD(BATTLE_MONEY_SCRATCH)
	STA $06
	STZ $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DEPOSIT_INTO_ATM
	LDA $06
	STA $0A
	LDA $08
	STA $0C
	LDY $16
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDY #$0000
	STY $18
	BRA @UNKNOWN7
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$004E
	REP #PROC_FLAGS::ACCUM8
	TYA
	TXY
	JSL MULT168
	CLC
	ADC #$9FAC
	JSL MEMSET16
	LDY $18
	INY
	STY $18
@UNKNOWN7:
	CPY #$0020
	BCC @UNKNOWN6
	LDY #$0000
	STY $16
	BRA @UNKNOWN11
@UNKNOWN8:
	LDA .LOWORD(GAME_STATE)+122,Y
	AND #$00FF
	STA $18
	BEQ @UNKNOWN10
	CMP #$0004
	BEQ @UNKNOWN9
	BCS @UNKNOWN10
@UNKNOWN9:
	TYA
	LDY #$004E
	JSL MULT168
	CLC
	ADC #$9FAC
	TAX
	LDA $18
	JSL BATTLE_INIT_PLAYER_STATS
@UNKNOWN10:
	LDY $16
	INY
	STY $16
@UNKNOWN11:
	CPY #$0006
	BCC @UNKNOWN8
	LDA #$0000
	STA .LOWORD(BATTLE_EXP_SCRATCH)
	LDA #$0000
	STA .LOWORD(BATTLE_EXP_SCRATCH)+2
	LDA #$0000
	STA $18
	BRA @UNKNOWN13
@UNKNOWN12:
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	LDA $18
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E9F8C),X
	LDY #$005E
	JSL MULT168
	CLC
	ADC #$0025
	CLC
	ADC $06
	STA $06
	LDY #$0002
	LDA [$06],Y
	TAY
	LDA [$06]
	STA $0A
	STY $0C
	LDA .LOWORD(BATTLE_EXP_SCRATCH)
	STA $06
	LDA .LOWORD(BATTLE_EXP_SCRATCH)+2
	STA $08
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA .LOWORD(BATTLE_EXP_SCRATCH)
	LDA $08
	STA .LOWORD(BATTLE_EXP_SCRATCH)+2
	LDA $18
	INC
	STA $18
@UNKNOWN13:
	CMP .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN12
	LDA #$0000
	JSL COUNT_CHARS
	DEC
	STA $0A
	STZ $0C
	LDA .LOWORD(BATTLE_EXP_SCRATCH)
	STA $06
	LDA .LOWORD(BATTLE_EXP_SCRATCH)+2
	STA $08
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA .LOWORD(BATTLE_EXP_SCRATCH)
	LDA $08
	STA .LOWORD(BATTLE_EXP_SCRATCH)+2
	LDA #$0000
	JSL COUNT_CHARS
	STA $0A
	STZ $0C
	JSL DIVISION32
	LDA $06
	STA .LOWORD(BATTLE_EXP_SCRATCH)
	LDA $08
	STA .LOWORD(BATTLE_EXP_SCRATCH)+2
	LOADPTR TEXT_BLOCK_EF7A28, $0E
	LDA $06
	STA $12
	LDA $08
	STA $14
	JSL DISPLAY_TEXT_WAIT
	LDY #$9FAC
	STY $1A
	LDA #$0000
	STA $02
	BRA @UNKNOWN16
@UNKNOWN14:
	LDA a:.LOWORD(RAM)+12,Y
	AND #$00FF
	BEQ @UNKNOWN15
	LDA a:.LOWORD(RAM)+14,Y
	AND #$00FF
	BNE @UNKNOWN15
	LDA a:.LOWORD(RAM)+15,Y
	AND #$00FF
	BNE @UNKNOWN15
	LDA a:.LOWORD(RAM)+29,Y
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN15
	CPX #$0002
	BEQ @UNKNOWN15
	LDA .LOWORD(BATTLE_EXP_SCRATCH)
	STA $06
	LDA .LOWORD(BATTLE_EXP_SCRATCH)+2
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0001
	LDA a:.LOWORD(RAM),Y
	JSL GAIN_EXP
@UNKNOWN15:
	LDY $1A
	TYA
	CLC
	ADC #$004E
	TAY
	STY $1A
	INC $02
@UNKNOWN16:
	LDA $02
	CMP #$0020
	BCC @UNKNOWN14
	LDA .LOWORD(ENEMIES_IN_BATTLE)
	JSR a:.LOWORD(RAND_LIMIT)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E9F8C),X
	STA $16
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	LDA $16
	LDY #$005E
	JSL MULT168
	STA $18
	CLC
	ADC #$0058
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	STA .LOWORD(ITEM_DROPPED)
	LDA $18
	CLC
	ADC #$0057
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	BEQ @UNKNOWN17
	CMP #$0001
	BEQ @UNKNOWN18
	CMP #$0002
	BEQ @UNKNOWN19
	CMP #$0003
	BEQ @UNKNOWN20
	CMP #$0004
	BEQ @UNKNOWN21
	CMP #$0005
	BEQ @UNKNOWN22
	CMP #$0006
	BEQ @UNKNOWN23
	BRA @UNKNOWN24
@UNKNOWN17:
	JSL RAND
	AND #$007F
	BEQ @UNKNOWN24
	STZ .LOWORD(ITEM_DROPPED)
	BRA @UNKNOWN24
@UNKNOWN18:
	JSL RAND
	AND #$003F
	BEQ @UNKNOWN24
	STZ .LOWORD(ITEM_DROPPED)
	BRA @UNKNOWN24
@UNKNOWN19:
	JSL RAND
	AND #$001F
	BEQ @UNKNOWN24
	STZ .LOWORD(ITEM_DROPPED)
	BRA @UNKNOWN24
@UNKNOWN20:
	JSL RAND
	AND #$000F
	BEQ @UNKNOWN24
	STZ .LOWORD(ITEM_DROPPED)
	BRA @UNKNOWN24
@UNKNOWN21:
	JSL RAND
	AND #$0007
	BEQ @UNKNOWN24
	STZ .LOWORD(ITEM_DROPPED)
	BRA @UNKNOWN24
@UNKNOWN22:
	JSL RAND
	AND #$0003
	BEQ @UNKNOWN24
	STZ .LOWORD(ITEM_DROPPED)
	BRA @UNKNOWN24
@UNKNOWN23:
	JSL RAND
	AND #$0001
	BEQ @UNKNOWN24
	STZ .LOWORD(ITEM_DROPPED)
@UNKNOWN24:
	LDA .LOWORD(ITEM_DROPPED)
	BEQ @UNKNOWN25
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(ITEM_DROPPED)
	JSL REDIRECT_C1ACF8
	.A16
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF7BDF
@UNKNOWN25:
	JSL UNKNOWN_C1DD5F
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	CMP #$0003
	BNE @UNKNOWN26
	LDA #MUSIC::BICYCLE
	JSL CHANGE_MUSIC
	BRA @UNKNOWN27
@UNKNOWN26:
	JSL UNKNOWN_C06A07
@UNKNOWN27:
	JSL UNKNOWN_C09451
	PLD
	RTL