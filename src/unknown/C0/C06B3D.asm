
UNKNOWN_C06B3D: ;$C06B3D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEA
	TCD
	LDX #$0000
	STX $14
	TXY
	STY $12
	BRA @UNKNOWN2
@UNKNOWN0:
	JSL UNKNOWN_C06537
	CMP #$000A
	BNE @UNKNOWN1
	JSL UNKNOWN_C0654E
	LDY $12
	TYA
	ASL
	ASL
	CLC
	ADC #$5E58
	TAY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDY $12
	INY
	STY $12
@UNKNOWN1:
	LDA .LOWORD(UNKNOWN_7E5E02)
	INC
	AND #$0003
	STA .LOWORD(UNKNOWN_7E5E02)
	LDX $14
	INX
	STX $14
@UNKNOWN2:
	STX $02
	LDA #$0004
	CLC
	SBC $02
	BVC @UNKNOWN3
	BPL @UNKNOWN5
	BRA @UNKNOWN4
@UNKNOWN3:
	BMI @UNKNOWN5
@UNKNOWN4:
	LDA .LOWORD(UNKNOWN_7E5E02)
	CMP .LOWORD(UNKNOWN_7E5E04)
	BNE @UNKNOWN0
@UNKNOWN5:
	LDA #$0000
	STA $06
	LDA #$0000
	STA $08
	LDY $12
	TYA
	ASL
	ASL
	CLC
	ADC #$5E58
	TAY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDX #$0000
	STX $14
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #$000A
	JSL UNKNOWN_C064E3
	LDX $14
	INX
	STX $14
@UNKNOWN7:
	TXA
	ASL
	ASL
	CLC
	ADC #$5E58
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN8
	LDA $06
	CMP $0A
@UNKNOWN8:
	BNE @UNKNOWN6
	PLD
	RTL