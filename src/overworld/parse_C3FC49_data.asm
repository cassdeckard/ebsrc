;FIXME: This appears to be very inaccurately named.
;A = Sprite ID, X = Movement, Y = ???
; $0E,$10 = X,Y coords
PARSE_C3FC49_DATA: ;$C01E49
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 49
	STY $04
	PHA
	LDA $04
	STA $2F
	PLA
	STX $2D
	STA $2B
	LDY $41
	STY $29
	LDX $3F
	STX $27
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN0
	LDA $2B
	CMP #$FFFF
	BNE @UNKNOWN0
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN0:
	LOADPTR SPRITE_GROUPING_PTR_TABLE, $0A
	LDA $2B
	OPTIMIZED_MULT $04, 4
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $23
	LDA $2B
	JSR a:.LOWORD(UNKNOWN_C01DED)
	STA $02
	LDY $04
	LDX .LOWORD(UNKNOWN_7E467C)
	LDA .LOWORD(UNKNOWN_7E467A)
	JSL UNKNOWN_C01C52
	STA $21
@UNKNOWN1:
	LDA $21
	CMP #$7FFF
	BEQ @UNKNOWN2
	BCS @UNKNOWN1
@UNKNOWN2:
	LOADPTR UNKNOWN_C42B0D, $06
	LDA $02
	OPTIMIZED_MULT $04, 4
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	LDA [$0A]
	AND #$00FF
	OPTIMIZED_MULT $04, 10
	JSL FIND_FREE_7E4682
	STA $1F
@UNKNOWN3:
	LDA $1F
	CMP #$7FFF
	BEQ @UNKNOWN4
	BCS @UNKNOWN3
@UNKNOWN4:
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E0A4A)
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	MOVE_INT $23, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAY
	LDX $21
	LDA $1F
	JSR a:.LOWORD(UNKNOWN_C01D38)
	LDA $2F
	STA $04
	CMP #$FFFF
	BEQ @UNKNOWN5
	LDA $04
	STA .LOWORD(UNKNOWN_7E0A4C)
	LDA $04
	INC
	STA .LOWORD(UNKNOWN_7E0A4E)
	LDY $29
	LDX $27
	LDA $2D
	JSL UNKNOWN_C092F5_ENTRY2
	STA $02
	BRA @UNKNOWN6
@UNKNOWN5:
	STZ .LOWORD(UNKNOWN_7E0A4C)
	LDA #$0016
	STA .LOWORD(UNKNOWN_7E0A4E)
	LDY $29
	LDX $27
	LDA $2D
	JSL UNKNOWN_C092F5_ENTRY2
	STA $02
	ORA #$0080
	TAX
	LDA #$FFFF
	JSL ALLOC_SPRITE_MEM
@UNKNOWN6:
	LDA $02
	ASL
	TAY
	STY $1D
	LDA $1F
	CLC
	ADC #.LOWORD(SPRITE_TABLE_7E467E)
	STA .LOWORD(UNKNOWN_30X2_TABLE_15),Y
	LDA #.HIWORD(SPRITE_TABLE_7E467E)
	STA .LOWORD(UNKNOWN_30X2_TABLE_16),Y
	LDA [$0A]
	AND #$00FF
	OPTIMIZED_MULT $04, 5
	STA .LOWORD(UNKNOWN_30X2_TABLE_26),Y
	LDA $21
	STA .LOWORD(UNKNOWN_30X2_TABLE_27),Y
	TYA
	CLC
	ADC #$298E
	TAX
	STX $1B
	LDA $21
	ASL
	TAX
	LDA f:UNKNOWN_C42F8C,X
	CLC
	ADC #$4000
	LDX $1B
	STA a:.LOWORD(RAM),X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0001
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	ASL
	LDY $1D
	STA .LOWORD(UNKNOWN_30X2_TABLE_32),Y
	LDA [$06]
	AND #$00FF
	STA .LOWORD(UNKNOWN_30X2_TABLE_33),Y
	MOVE_INT $23, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0008
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	LDY $1D
	STA .LOWORD(UNKNOWN_30X2_TABLE_31),Y
	LOADPTR SPRITE_GROUPING_PTR_TABLE, $06
	LDA $2B
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $12
	LDA $2B
	LDY $1D
	STA .LOWORD(LOADED_TPT_ENTRIES_SPRITES),Y
	LDA $14
	STA .LOWORD(UNKNOWN_30X2_TABLE_30),Y
	LDA $12
	CLC
	ADC #$0009
	STA .LOWORD(UNKNOWN_30X2_TABLE_29),Y
	LDA .LOWORD(UNKNOWN_7E467C)
	AND #$0001
	BEQ @UNKNOWN7
	LDA a:.LOWORD(RAM),X
	CLC
	ADC #$0100
	STA a:.LOWORD(RAM),X
@UNKNOWN7:
	LDA $02
	ASL
	TAX
	STX $1B
	MOVE_INT $23, $06
	INC $06
	INC $06
	MOVE_INT $06, $17
	LDA [$17]
	AND #$00FF
	STA .LOWORD(UNKNOWN_30X2_TABLE_36),X
	MOVE_INT $23, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0004
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $3366,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0005
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $33A2,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0006
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $33DE,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0007
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E1A4A),X
	LDA [$17]
	AND #$00FF
	ASL
	TAX
	LDA f:UNKNOWN_C42AEB,X
	LDX $1B
	STA $332A,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0001
	LDA [$0A],Y
	STA $16
	STA $00
	LDA [$0A]
	SEC
	SBC $00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $04
	LDA $16
	AND #$00FF
	XBA
	AND #$FF00
	ORA $04
	STA .LOWORD(UNKNOWN_30X2_TABLE_38),X
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_43),X
	STA .LOWORD(UNKNOWN_30X2_TABLE_42),X
	STA .LOWORD(LOADED_TPT_ENTRIES),X
	STA .LOWORD(UNKNOWN_30X2_TABLE_24),X
	STZ .LOWORD(UNKNOWN_30X2_TABLE_37),X
	STZ .LOWORD(UNKNOWN_30X2_TABLE_45),X
	STZ .LOWORD(UNKNOWN_30X2_TABLE_44),X
	STZ .LOWORD(UNKNOWN_30X2_TABLE_41),X
	STZ .LOWORD(UNKNOWN_30X2_TABLE_35),X
	STZ .LOWORD(ENTITY_DIRECTIONS),X
	STZ .LOWORD(UNKNOWN_30X2_TABLE_25),X
	LDA $02
@UNKNOWN8:
	PLD
	RTL
