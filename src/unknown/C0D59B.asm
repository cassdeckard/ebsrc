
UNKNOWN_C0D59B: ;$C0D59B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNE @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7E4DBA)
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDA #$0001
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$0000
@UNKNOWN2:
	RTL
