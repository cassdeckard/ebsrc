
UNKNOWN_C006F2: ;$C006F2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LOADPTR DOOR_POINTER_TABLE, $06
	LDA $10
	ASL
	TAX
	LDA f:EVENT_CONTROL_PTR_TABLE,X
	CLC
	ADC $06
	STA $06
@UNKNOWN0:
	LDA [$06]
	BEQ @UNKNOWN5
	AND #$7FFF
	JSL GET_EVENT_FLAG
	STA $0E
	LDY #$0002
	LDA [$06],Y
	TAY
	STY $10
	LDX #$0000
	LDA [$06]
	CMP #$8000
	BCC @UNKNOWN1
	LDX #$0001
@UNKNOWN1:
	STX $02
	LDA $0E
	CMP $02
	BNE @UNKNOWN4
	LDA #$0004
	CLC
	ADC $06
	STA $06
	BRA @UNKNOWN3
@UNKNOWN2:
	LDY #$0002
	LDA [$06],Y
	TAX
	LDA [$06]
	JSR a:.LOWORD(UNKNOWN_C0067E)
	LDA #$0004
	CLC
	ADC $06
	STA $06
	LDY $10
	DEY
	STY $10
@UNKNOWN3:
	CPY #$0000
	BNE @UNKNOWN2
	BRA @UNKNOWN0
@UNKNOWN4:
	TYA
	ASL
	ASL
	INC
	INC
	INC
	INC
	CLC
	ADC $06
	STA $06
	BRA @UNKNOWN0
@UNKNOWN5:
	PLD
	RTL
