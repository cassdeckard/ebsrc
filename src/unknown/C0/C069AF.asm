
UNKNOWN_C069AF: ;$C069AF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	LDA .LOWORD(UNKNOWN_7E5DD8)
	BNE @UNKNOWN0
	LOADPTRPTR UNKNOWN_7E5E38, $06
	LDA .LOWORD(UNKNOWN_7E5DD6)
	CMP .LOWORD(UNKNOWN_7E5DD4)
	BEQ @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7E5DD6)
	STA .LOWORD(UNKNOWN_7E5DD4)
	LDA .LOWORD(UNKNOWN_7E5DD6)
	JSL CHANGE_MUSIC
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSL UNKNOWN_C0AC0C
@UNKNOWN0:
	PLD
	RTL
