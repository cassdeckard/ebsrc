
UNKNOWN_C0E214: ;$C0E214
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STA $02
	TXY
	TXA
	INC
	AND #$00FF
	STA $10
	LDA $02
	STA $04
	INC $04
	LDA .LOWORD(GAME_STATE)+150
	AND #$00FF
	CMP $04
	BNE @UNKNOWN0
	LDA $10
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E9F47)
	BNE @UNKNOWN1
	TYA
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$0002
	STA $0E
	LDX #$0006
	LDA $02
	JSL UNKNOWN_C03EC3
@UNKNOWN2:
	PLD
	RTS