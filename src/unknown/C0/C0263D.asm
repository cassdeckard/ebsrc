
UNKNOWN_C0263D: ;$C0263D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	CMP #MAP_WIDTH_TILES
	BCS @UNKNOWN0
	CPX #MAP_HEIGHT_TILES
	BCS @UNKNOWN0
	ASL
	STA $02
	TXA
	XBA
	AND #$FF00
	CLC
	ADC $02
	TAX
	LDA f:MAP_ENEMY_PLACEMENT,X
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0000
@UNKNOWN1:
	PLD
	RTL
