
UNKNOWN_C49A56: ;$C49A56
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LOADPTR UNKNOWN_7F0000, $06
	JSL PREP_FOR_IMMEDIATE_DMA
	LDY #$6000
	LDX #$7C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG3_VRAM_LOCATION
	LDA #$0000
	STA [$06]
	COPY_TO_VRAM1P $06, $6000, $3800, $03
	.A16
	LOADPTR MOVEMENT_TEXT_STRING_PALETTE, $0E
	LDX #$0008
	LDA #$0200
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E0030)
	LDA #$00FF
	STA $0E
	LDX #$0680
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(VWF_BUFFER)
	JSL MEMSET16
	LDY #$0010
	LDX #$0000
	STX $14
	BRA @UNKNOWN3
@UNKNOWN0:
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	TAX
	STZ .LOWORD(BG2_BUFFER),X
	TAX
	STZ .LOWORD(BG2_BUFFER) + 2,X
	TAX
	STZ .LOWORD(BG2_BUFFER) + 4,X
	LDA #$0003
	STA $12
	BRA @UNKNOWN2
@UNKNOWN1:
	ASL
	STA $02
	LDX $14
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	TYA
	CLC
	ADC #$2000
	STA .LOWORD(BG2_BUFFER),X
	INY
	LDA $12
	INC
	STA $12
@UNKNOWN2:
	CMP #$001D
	BCC @UNKNOWN1
	LDX $14
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	TAX
	STZ .LOWORD(BG2_BUFFER) + 58,X
	TAX
	STZ .LOWORD(BG2_BUFFER) + 60,X
	TAX
	STZ .LOWORD(BG2_BUFFER) + 62,X
	LDX $14
	INX
	STX $14
@UNKNOWN3:
	CPX #$0020
	BCC @UNKNOWN0
	PROMOTENEARPTR .LOWORD(BG2_BUFFER), $06
	REP #PROC_FLAGS::ACCUM8
	COPY_TO_VRAM1P $06, $7C00, $800, $00
	.A16
	LDA #$001A
	STA .LOWORD(UNKNOWN_7E3C18)
	STZ .LOWORD(UNKNOWN_7E3C1C)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E3C1E)
	STZ .LOWORD(UNKNOWN_7E3C20)
	STZ .LOWORD(UNKNOWN_7E3C14)
	STZ .LOWORD(UNKNOWN_7E3C16)
	STZ .LOWORD(UNKNOWN_7E9F2F)
	STZ .LOWORD(UNKNOWN_7E9F31)
	JSL SET_FORCE_BLANK
	PLD
	RTL
