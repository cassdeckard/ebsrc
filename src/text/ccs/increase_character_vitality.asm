
CC_1E_0D: ;$C17646
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXA
	STA $0E
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1E_0D)
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	TAX
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::boosted_vitality
	TAY
	LDA $0E
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDA a:.LOWORD(RAM),Y
	CLC
	ADC $00
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL RECALC_CHARACTER_POSTMATH_VITALITY
	REP #PROC_FLAGS::ACCUM8
	LDA #NULL
@UNKNOWN3:
	PLD
	RTS
