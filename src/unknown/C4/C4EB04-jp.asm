
UNKNOWN_C4EB04: ;$C4EB04
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STY $04
	STX $02
	STA $16
	LDA a:.LOWORD(BG3_Y_POS)
	LSR
	LSR
	LSR
	CLC
	ADC $02
	AND #$001F
	STA $14
	LDX $04
	LDA $16
	JSL $C4B8E2
	LDA $04
	AND #$0001
	BEQ @UNKNOWN0_
	INC $04
@UNKNOWN0_:
	LDA $04
	INC
	LSR
	STA $02
	LDA $14
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $16
	CLC
	ADC #$7C00
	SEC
	SBC $02
	STA $02
	LOADPTR UNKNOWN_7F4000, $06
	LDA $16
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDY $02
	LDA $04
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
	LDA $14
	CMP #$001F
	BEQ @UNKNOWN0
	LDA $02
	CLC
	ADC #$0020
	STA $12
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	SEC
	SBC #$03E0
	STA $12
@UNKNOWN1:
	LOADPTR UNKNOWN_7F4000, $06
	LDA $16
	ASL
	CLC
	ADC #$0040
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA $12
	TAY
	LDA $04
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	PLD
	RTL
