
UNKNOWN_C3F705: ;$C3F705
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	STA $18
	MOVE_INT $28, $06
	MOVE_INT $06, $14
	INC $06
	INC $06
	MOVE_INT $06, .LOWORD(UNKNOWN_7E9F86)
	LDA $18
	AND #$003F
	TAY
	STY $12
	STY .LOWORD(UNKNOWN_7E9F7A)
	TXA
	AND #$001F
	STA $02
	STA $10
	LDA $02
	STA .LOWORD(UNKNOWN_7E9F7C)
	TYA
	AND #$001F
	BEQ @UNKNOWN0
	LDX #$3C00
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #$3800
@UNKNOWN1:
	STX .LOWORD(UNKNOWN_7E9F84)
	MOVE_INT $14, $06
	LDA [$06]
	XBA
	AND #$00FF
	STA $18
	TAX
	STX $0E
	STX .LOWORD(UNKNOWN_7E9F7E)
	LDA [$06]
	AND #$00FF
	STA $04
	STA .LOWORD(UNKNOWN_7E9F80)
	LDA $18
	STA $02
	TYA
	CLC
	ADC $02
	AND #$FFE0
	STA $04
	TYA
	AND #$FFE0
	CMP $04
	BNE @UNKNOWN2
	LDA $18
	STA .LOWORD(UNKNOWN_7E9F82)
	JSR a:.LOWORD(UNKNOWN_C3F5F9)
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $18
	STA $04
	LDY $12
	TYA
	CLC
	ADC $04
	AND #$FFE0
	SEC
	SBC .LOWORD(UNKNOWN_7E9F7A)
	STA .LOWORD(UNKNOWN_7E9F7E)
	LDA $18
	STA .LOWORD(UNKNOWN_7E9F82)
	JSR a:.LOWORD(UNKNOWN_C3F5F9)
	LDA .LOWORD(UNKNOWN_7E9F84)
	EOR #$0400
	STA .LOWORD(UNKNOWN_7E9F84)
	MOVE_INT .LOWORD(UNKNOWN_7E9F86), $06
	LDA .LOWORD(UNKNOWN_7E9F7E)
	ASL
	CLC
	ADC $06
	STA $06
	STA .LOWORD(UNKNOWN_7E9F86)
	LDA $08
	STA .LOWORD(UNKNOWN_7E9F88)
	STZ .LOWORD(UNKNOWN_7E9F7A)
	LDA $10
	STA $02
	STA .LOWORD(UNKNOWN_7E9F7C)
	LDA $18
	SEC
	SBC .LOWORD(UNKNOWN_7E9F7E)
	STA $18
	CMP #$0020
	BCS @UNKNOWN2
	STA .LOWORD(UNKNOWN_7E9F7E)
	LDX $0E
	STX .LOWORD(UNKNOWN_7E9F82)
	JSR a:.LOWORD(UNKNOWN_C3F5F9)
@UNKNOWN3:
	PLD
	RTL
