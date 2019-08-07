
CC_1D_12: ;$C158A5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXY
	STY $0E
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1D_12)
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	TAX
	BEQ @UNKNOWN3
	TXA
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
@UNKNOWN4:
	STA $02
	LDY $0E
	BEQ @UNKNOWN5
	TYA
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN6:
	TAX
	LDA $02
	JSR a:.LOWORD(ESCARGO_EXPRESS_MOVE)
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
