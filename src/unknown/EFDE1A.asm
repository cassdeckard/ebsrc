
UNKNOWN_EFDE1A: ;$EFDE1A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	LDY #$0040
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $04
	JSR a:.LOWORD(UNKNOWN_EFDB95)
	TAX
	LDA #$007E
	STA $0E
	LDA #$7F24
	STA $10
	TXY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616_ENTRY_B
	LDY #$0040
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $02
	JSR a:.LOWORD(UNKNOWN_EFDB95)
	TAX
	LDA #$007E
	BRK
	STA $0E
	LDA #$002A
	ADC $9B1085,X
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616_ENTRY_B
	LDX $02
	LDA $04
	JSL UNKNOWN_C0263D
	JSR a:.LOWORD(UNKNOWN_EFDBF0)
	TAX
	LDA #$007E
	BRK
	STA $0E
	LDA #$0035
	ADC $9B1085,X
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616_ENTRY_B
	LDA .LOWORD(UNKNOWN_7E4A68)
	JSR a:.LOWORD(UNKNOWN_EFDBF0)
	TAX
	LDA #$007E
	BRK
	STA $0E
	LDA #$003A
	ADC $9B1085,X
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616_ENTRY_B
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BEQ @UNKNOWN2
	LDA #$0000
	BRK
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E9F8C),X
	JSR a:.LOWORD(UNKNOWN_EFDBF0)
	TAX
	LDA #$007E
	BRK
	STA $0E
	LDA $02
	STA $04
	ASL
	ASL
	ADC $04
	CLC
	ADC #$0046
	ADC $9B1085,X
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616_ENTRY_B
	INC $02
@UNKNOWN1:
	LDA $02
	CMP #$0005
	BRK
	BNE @UNKNOWN0
	LDA .LOWORD(CURRENT_BATTLE_GROUP)
	JSR a:.LOWORD(UNKNOWN_EFDBF0)
	TAX
	LDA #$007E
	BRK
	STA $0E
	LDA #$0041
	ADC $9B1085,X
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616_ENTRY_B
@UNKNOWN2:
	PLD
	RTS