
CC_06: ;$C142F5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAY
	STY $0E
	LDA .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BNE @UNKNOWN0
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_06)
	BRA @UNKNOWN2
@UNKNOWN0:
	TXA
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $02
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN1
	STZ .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_0A)
	BRA @UNKNOWN2
@UNKNOWN1:
	LDY $0E
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	LDA #$0004
	CLC
	ADC $06
	STA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDA #NULL
@UNKNOWN2:
	PLD
	RTS
