
INSTANT_WIN_CHECK: ;$C26634
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 36
	LDA .LOWORD(BATTLE_INITIATIVE)
	CMP #INITIATIVE::ENEMIES_FIRST
	BNE @UNKNOWN0
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN37)
@UNKNOWN0:
	STZ $22
	STZ $20
	LDA #$FFFF
	STA $02
	STA $1E
	LDA $02
	STA $04
	LDY #$0000
	STY $1C
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE)+122,Y
	AND #$00FF
	TAX
	STX $1A
	CPX #$0001
	BCS @UNKNOWN2
	BEQ @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN2:
	CPX #$0004
	BEQ @UNKNOWN3
	BCC @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN3:
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::speed,X
	AND #$00FF
	CMP $04
	BCS @UNKNOWN4
	STA $04
@UNKNOWN4:
	LDX $1A
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::offense,X
	AND #$00FF
	CMP $02
	BCS @UNKNOWN5
	STA $02
	STA $1E
@UNKNOWN5:
	LDX $1A
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $18
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::afflictions
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	STA $16
	CMP #$0001
	BEQ @UNKNOWN6
	LDA $16
	CMP #$0002
	BEQ @UNKNOWN6
	LDA $16
	CMP #$0003
	BEQ @UNKNOWN6
	LDA $16
	CMP #$0004
	BEQ @UNKNOWN6
	LDA $16
	CMP #$0005
	BEQ @UNKNOWN6
	LDA $16
	CMP #$0006
	BEQ @UNKNOWN6
	LDA $16
	CMP #$0007
	BEQ @UNKNOWN6
	LDA a:.LOWORD(RAM)+1,X
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN6
	CPX #$0002
	BEQ @UNKNOWN6
	LDA $20
	ASL
	PHA
	LDA $18
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::offense,X
	AND #$00FF
	PLX
	STA $AA76,X
	INC $20
@UNKNOWN6:
	LDY $1C
	INY
	STY $1C
@UNKNOWN7:
	CPY #$0006
	BCS @UNKNOWN8
	BEQ @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN8:
	LDA .LOWORD(ENEMIES_IN_BATTLE)
	CMP $20
	BCC @UNKNOWN9
	BEQ @UNKNOWN9
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN37)
@UNKNOWN9:
	LDA .LOWORD(BATTLE_INITIATIVE)
	BEQ @UNKNOWN10
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN10:
	LDA #$0000
	STA $1A
	BRA @UNKNOWN13
@UNKNOWN11:
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E9F8C),X
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC #enemy_data::speed
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	AND #$00FF
	TAX
	CPX $22
	BCC @UNKNOWN12
	BEQ @UNKNOWN12
	STX $22
@UNKNOWN12:
	LDA $1A
	INC
	STA $1A
@UNKNOWN13:
	CMP .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN11
	LDA $04
	CMP $22
	BCS @UNKNOWN14
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN37)
@UNKNOWN14:
	LDA #$0000
	STA $16
	BRA @UNKNOWN17
@UNKNOWN15:
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	MOVE_INT $06, $12
	LDA $16
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E9F8C),X
	LDY #$005E
	JSL MULT168
	TAX
	CLC
	ADC #$003A
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	TXA
	CLC
	ADC #$0021
	LDX $12
	STX $06
	LDX $14
	STX $08
	CLC
	ADC $06
	STA $06
	LDA [$06]
	CLC
	ADC $02
	STA $04
	LDA $1E
	STA $02
	ASL
	CMP $04
	BCS @UNKNOWN16
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN37)
@UNKNOWN16:
	LDA $16
	INC
	STA $16
@UNKNOWN17:
	CMP .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN15
	LDA #$0001
	JMP a:.LOWORD(@UNKNOWN37)
@UNKNOWN18:
	LDA #$0000
	STA $16
	BRA @UNKNOWN20
@UNKNOWN19:
	ASL
	TAY
	STY $1A
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	TYA
	CLC
	ADC #$9F8C
	TAX
	LDA a:.LOWORD(RAM),X
	LDY #$005E
	JSL MULT168
	CLC
	ADC #$0021
	LDY $06
	STY $0A
	LDY $08
	STY $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDY $1A
	STA $AA7E,Y
	LDA a:.LOWORD(RAM),X
	LDY #$005E
	JSL MULT168
	CLC
	ADC #$003A
	CLC
	ADC $06
	STA $06
	LDA [$06]
	LDY $1A
	STA $AA86,Y
	LDA $16
	INC
	STA $16
@UNKNOWN20:
	CMP .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN19
@UNKNOWN21:
	LDY #$0001
	LDX #$0000
	STX $22
	BRA @UNKNOWN26
@UNKNOWN22:
	TXA
	INC
	STA $1C
	BRA @UNKNOWN25
@UNKNOWN23:
	LDX $22
	TXA
	ASL
	CLC
	ADC #$AA76
	STA $1E
	LDA ($1E)
	STA $10
	LDA $1C
	ASL
	CLC
	ADC #$AA76
	STA $04
	LDX $04
	LDA a:.LOWORD(RAM),X
	STA $02
	CMP $10
	BCC @UNKNOWN24
	BEQ @UNKNOWN24
	LDY #$0000
	LDA $02
	STA ($1E)
	LDA $10
	LDX $04
	STA a:.LOWORD(RAM),X
@UNKNOWN24:
	LDA $1C
	INC
	STA $1C
@UNKNOWN25:
	CMP $20
	BCC @UNKNOWN23
	LDX $22
	INX
	STX $22
@UNKNOWN26:
	LDA $20
	DEC
	STA $02
	TXA
	CMP $02
	BCC @UNKNOWN22
	CPY #$0000
	BEQ @UNKNOWN21
@UNKNOWN27:
	LDA #$0001
	STA $1E
	LDA #$0000
	STA $02
	BRA @UNKNOWN32
@UNKNOWN28:
	LDY $02
	INY
	BRA @UNKNOWN31
@UNKNOWN29:
	LDA $02
	ASL
	TAX
	CLC
	ADC #$AA7E
	STA $1A
	LDA ($1A)
	STA $0E
	TYA
	ASL
	STA $22
	CLC
	ADC #$AA7E
	STA $16
	LDA ($16)
	STA $04
	CMP $0E
	BCC @UNKNOWN30
	BEQ @UNKNOWN30
	STZ $1E
	LDA $04
	STA ($1A)
	LDA $0E
	STA ($16)
	TXA
	CLC
	ADC #$AA86
	STA $1A
	LDA ($1A)
	STA $04
	LDA $22
	CLC
	ADC #$AA86
	TAX
	LDA a:.LOWORD(RAM),X
	STA ($1A)
	LDA $04
	STA a:.LOWORD(RAM),X
@UNKNOWN30:
	INY
@UNKNOWN31:
	CPY .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN29
	INC $02
@UNKNOWN32:
	LDA .LOWORD(ENEMIES_IN_BATTLE)
	DEC
	STA $04
	LDA $02
	CMP $04
	BCC @UNKNOWN28
	LDA $1E
	BEQ @UNKNOWN27
	LDX #$0000
	STX $22
	TXA
	STA $1C
	BRA @UNKNOWN36
@UNKNOWN33:
	ASL
	TAX
	LDA $AA76,X
	ASL
	STA $04
	LDX $22
	TXA
	ASL
	STA $1A
	CLC
	ADC #$AA7E
	STA $02
	STA $16
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAY
	STY $18
	LDY #$AA86
	LDA ($1A),Y
	STA $1A
	LDY $18
	TYA
	CLC
	ADC $1A
	STA $02
	LDA $04
	CMP $02
	BCS @UNKNOWN34
	LDA $04
	SEC
	SBC $1A
	STA $02
	TYA
	SEC
	SBC $02
	LDX $16
	STX $02
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN35
@UNKNOWN34:
	LDX $22
	INX
	STX $22
	CPX .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN35
	LDA #$0001
	BRA @UNKNOWN37
@UNKNOWN35:
	LDA $1C
	INC
	STA $1C
@UNKNOWN36:
	CMP $20
	BCC @UNKNOWN33
	LDA #$0000
@UNKNOWN37:
	PLD
	RTL
