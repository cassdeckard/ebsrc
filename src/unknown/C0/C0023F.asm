
UNKNOWN_C0023F: ;$C0023F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	STZ .LOWORD(UNKNOWN_7E4474)
	LDX .LOWORD(CUR_MAP_PAL)+96
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN0:
	LOADPTR MAP_DATA_PALETTE_ANIM_POINTER_TABLE, $06
	TXA
	DEC
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	SEP #PROC_FLAGS::ACCUM8
	LDY #map_palette_animation_entry::count
	LDA [$0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN1:
	MOVE_INT $0A, $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LOADPTR UNKNOWN_7EB800, $12
	JSL DECOMP
	LDA #$0000
	STA $16
	BRA @UNKNOWN3
@UNKNOWN2:
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_7E4460),X
	LDA $16
	INC
	STA $16
@UNKNOWN3:
	CMP #$0009
	BCC @UNKNOWN2
	LDA #map_palette_animation_entry::entries
	LDX $0A
	STX $06
	LDX $0C
	STX $08
	CLC
	ADC $06
	STA $06
	LDA #$0000
	STA $16
	BRA @UNKNOWN5
@UNKNOWN4:
	ASL
	TAX
	LDA [$06]
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E4460),X
	INC $06
	LDA $16
	INC
	STA $16
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDY #map_palette_animation_entry::count
	LDA [$0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	LDA $16
	CMP $02
	BCC @UNKNOWN4
	LDA .LOWORD(UNKNOWN_7E4460)
	STA .LOWORD(UNKNOWN_7E445C)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E4474)
	STA .LOWORD(UNKNOWN_7E445E)
@UNKNOWN6:
	PLD
	RTS
