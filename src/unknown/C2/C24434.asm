
UNKNOWN_C24434: ;$C24434
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	LDA .LOWORD(NUM_BATTLERS_IN_BACK_ROW)
	CLC
	ADC .LOWORD(NUM_BATTLERS_IN_FRONT_ROW)
	JSR a:.LOWORD(RAND_LIMIT)
	SEP #PROC_FLAGS::ACCUM8
	INC
	LDX $0E
	STA a:battler::current_target,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP .LOWORD(NUM_BATTLERS_IN_BACK_ROW)
	BLTEQ @UNKNOWN0
	SEC
	SBC .LOWORD(NUM_BATTLERS_IN_BACK_ROW)
	TAX
	DEX
	LDA .LOWORD(UNKNOWN_7EAD82),X
	AND #$00FF
	BRA @UNKNOWN1
@UNKNOWN0:
	TAX
	DEX
	LDA .LOWORD(UNKNOWN_7EAD7A),X
	AND #$00FF
@UNKNOWN1:
	PLD
	RTL
