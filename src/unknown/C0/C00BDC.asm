
UNKNOWN_C00BDC: ;$C00BDC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 28
	LSR
	LSR
	STA $04
	TXA
	AND #$8000
	BEQ @UNKNOWN0
	TXA
	LSR
	LSR
	ORA #$E000
	TAY
	STY $1A
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	LSR
	LSR
	TAY
	STY $1A
@UNKNOWN1:
	LDA $04
	AND #$000F
	STA $18
	TAX
	LDA $04
	SEP #PROC_FLAGS::ACCUM8
	STA $43B0,X
	REP #PROC_FLAGS::ACCUM8
	TYA
	AND #$000F
	TAX
	STX $16
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA $43C0,X
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	LSR
	LSR
	LSR
	STA $02
	TYA
	AND #$FFFC
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	LSR
	LSR
	LSR
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $14
	LDA $18
	ASL
	CLC
	ADC #$F000
	STA $12
	LDA $04
	CMP #$0100
	BCC @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN2:
	LDX $16
	TXA
	ASL
	ASL
	ASL
	ASL
	STA $02
	STA $10
	STZ $0E
	BRA @UNKNOWN7
@UNKNOWN3:
	TYA
	AND #$0003
	BNE @UNKNOWN4
	LDA $04
	LSR
	LSR
	LSR
	STA $02
	TYA
	AND #$FFFC
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	LSR
	LSR
	LSR
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $14
@UNKNOWN4:
	CPY #$0140
	BCS @UNKNOWN5
	LDA .LOWORD(UNKNOWN_7E436E)
	CMP $14
	BNE @UNKNOWN5
	TYX
	LDA $04
	JSR a:.LOWORD(UNKNOWN_C0A156)
	STA $18
	LDA $10
	STA $02
	ASL
	TAY
	LDA $18
	STA ($12),Y
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA $10
	STA $02
	ASL
	TAY
	LDA #$0000
	STA ($12),Y
@UNKNOWN6:
	LDA $02
	CLC
	ADC #$0010
	AND #$00FF
	STA $02
	STA $10
	LDY $1A
	INY
	STY $1A
	INC $0E
@UNKNOWN7:
	LDA $0E
	CMP #$0010
	BCC @UNKNOWN3
	BRA @UNKNOWN11
@UNKNOWN8:
	LDA #$0000
	STA $18
	BRA @UNKNOWN10
@UNKNOWN9:
	ASL
	ASL
	ASL
	ASL
	ASL
	TAY
	LDA #$0000
	STA ($12),Y
	LDA $18
	INC
	STA $18
@UNKNOWN10:
	CMP #$0010
	BCC @UNKNOWN9
@UNKNOWN11:
	PLD
	RTS
