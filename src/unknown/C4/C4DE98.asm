
UNKNOWN_C4DE98: ;$C4DE98
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	STZ .LOWORD(UNKNOWN_7EB4B8)
	STZ .LOWORD(UNKNOWN_7EB4BA)
	STZ .LOWORD(UNKNOWN_7EB4BC)
	STZ .LOWORD(LOADED_ANIMATED_TILE_COUNT)
	STZ .LOWORD(UNKNOWN_7E4474)
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_7EB4BE),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0008
	BCC @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	STA a:.LOWORD(TM_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
