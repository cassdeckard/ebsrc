
UNKNOWN_C20DC5: ;$C20DC5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE8
	TCD
	PLA
	STX $02
	TAX
	CPY #$3000
	BCS @UNKNOWN0
	LDA #$0000
	STA $16
	BRA @UNKNOWN1
@UNKNOWN0:
	TYA
	SEC
	SBC #$3000
	STA $16
@UNKNOWN1:
	LDA #$3400
	STA $0A
	LDA #$0000
	STA $0C
	LDA $16
	STA $06
	STZ $08
	JSL DIVISION32
	LDA $06
	TAY
	LDA $02
	OPTIMIZED_MULT $04, 12
	STA $02
	TXA
	OPTIMIZED_MULT $04, 24
	CLC
	ADC $02
	CLC
	ADC #$896D
	TAX
	LDA .LOWORD(UNKNOWN_7E8968)
	AND #$00FF
	STA $14
	LDA .LOWORD(UNKNOWN_7E8967)
	AND #$00FF
	STA $04
	LDA .LOWORD(UNKNOWN_7E8966)
	AND #$00FF
	STA $12
	LDA $14
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDA $14
	ASL
	ASL
	CLC
	ADC $02
	STY $02
	CLC
	ADC $02
	CLC
	ADC #$2600
	STA $02
	STA a:.LOWORD(RAM),X
	LDA $02
	CLC
	ADC #$0010
	STA a:.LOWORD(RAM)+6,X
	TXA
	DEC
	DEC
	STA $02
	STA $10
	LDA $04
	BNE @UNKNOWN2
	LDA $12
	BNE @UNKNOWN2
	LDX #$0248
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #$0200
@UNKNOWN3:
	LDA $14
	CMP #$0009
	BNE @UNKNOWN4
	CPY #$0000
	BNE @UNKNOWN5
@UNKNOWN4:
	LDY #$0000
@UNKNOWN5:
	LDA $04
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDA $04
	ASL
	ASL
	CLC
	ADC $02
	STY $02
	CLC
	ADC $02
	STX $02
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(UNKNOWN_7E2400)
	LDX $10
	STX $02
	STA a:.LOWORD(RAM),X
	CLC
	ADC #$0010
	LDX $02
	STA a:.LOWORD(RAM)+6,X
	LDA $02
	DEC
	DEC
	STA $0E
	LDA $12
	BNE @UNKNOWN6
	LDX #$0248
	BRA @UNKNOWN7
@UNKNOWN6:
	LDX #$0200
@UNKNOWN7:
	LDA $04
	CMP #$0009
	BNE @UNKNOWN8
	CPY #$0000
	BNE @UNKNOWN9
@UNKNOWN8:
	LDY #$0000
@UNKNOWN9:
	STY $04
	LDA $12
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDA $12
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC $04
	STX $02
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(UNKNOWN_7E2400)
	TAX
	STX $12
	PHX
	LDA $0E
	TAX
	PLA
	STA a:.LOWORD(RAM),X
	LDA $0E
	PHA
	LDX $12
	TXA
	CLC
	ADC #$0010
	PLX
	STA a:.LOWORD(RAM)+6,X
	PLD
	RTS
