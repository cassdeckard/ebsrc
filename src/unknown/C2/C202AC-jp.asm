
UNKNOWN_C202AC: ;$C202AC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 23
	STA $02
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAY
	CLC
	ADC #$003C
	STA $04
	LDA a:.LOWORD(RAM)+59,Y
	AND #$00FF
	BNE @UNKNOWN3
	LDA #$0000
	STA $15
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E894E)
	TAX
	STX $13
	LDA a:.LOWORD(RAM),X
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDA $15
	INC
	STA $15
@UNKNOWN1:
	CMP #$0004
	BNE @UNKNOWN0
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDX $13
	STA a:.LOWORD(RAM),X
	LDA $15
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA a:.LOWORD(RAM)+59,Y
@UNKNOWN3:
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM)+59,Y
	AND #$00FF
	DEC
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7700
	STA $02
	BRA @UNKNOWN5
@UNKNOWN4:
	LOADPTR MOTHER2_ROMAJI_FONT, $06
	LDA $12
	AND #$00FF
	SEC
	SBC #$0020
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDY $02
	LDX #$0010
	SEP #%00100000
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
	LDA $02
	CLC
	ADC #$0008
	STA $02
	INC $04
@UNKNOWN5:
	LDX $04
	SEP #%00100000
	LDA .LOWORD(RAM),X
	STA $12
	REP #%00100000
	AND #$00FF
	BNE @UNKNOWN4
@UNKNOWN6:
	PLD
	RTS
