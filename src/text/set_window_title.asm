
SET_WINDOW_TITLE: ;$C2032B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 15
	STX $02
	STA $04
	MOVE_INT $1D, $06
	LDA $04
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)+window_stats::title
	TAY
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	INC $06
	INY
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN2
	LDX $02
	LDA $02
	DEC
	STA $02
	CPX #$0000
	BNE @UNKNOWN0
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	JSR a:.LOWORD(UNKNOWN_C202AC)
	PLD
	RTL