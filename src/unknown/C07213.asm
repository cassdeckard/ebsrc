
UNKNOWN_C07213: ;$C07213
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF1
	TCD
	LDA #$0000
	STA $02
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN0:
	LDA $02
	CLC
	ADC #$97F5
	TAY
	SEP #PROC_FLAGS::ACCUM8
	LDA SPC_DATA_PTR+2,Y
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN1:
	LDA $02
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	CLC
	ADC #$5E3C
	TAX
	LOADPTR MAP_HOTSPOTS, $06
	LDA a:.LOWORD(RAM)+202,Y
	AND #$00FF
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	LDA $0E
	AND #$00FF
	STA a:.LOWORD(RAM),X
	LDA $06
	STA $0A
	LDA $08
	STA $0C
	LDA [$0A]
	ASL
	ASL
	ASL
	STA a:.LOWORD(RAM)+2,X
	LDY #$0004
	LDA [$06],Y
	ASL
	ASL
	ASL
	STA a:.LOWORD(RAM)+6,X
	LDY #$0002
	LDA [$06],Y
	ASL
	ASL
	ASL
	STA a:.LOWORD(RAM)+4,X
	LDY #$0006
	LDA [$06],Y
	ASL
	ASL
	ASL
	STA a:.LOWORD(RAM)+8,X
	LDA $02
	ASL
	ASL
	CLC
	ADC #$98C1
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	TXA
	CLC
	ADC #$000A
	TAY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
@UNKNOWN2:
	INC $02
@UNKNOWN3:
	LDA $02
	CMP #$0002
	BCS @UNKNOWN4
	BEQ @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN4:
	PLD
	RTL
