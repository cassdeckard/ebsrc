
UNKNOWN_C0D98F: ;$C0D98F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	ASL
	TAY
	CLC
	ADC #.LOWORD(UNKNOWN_7E2E3E)
	STA $04
	LDX $04
	LDA a:.LOWORD(RAM),X
	BNE @UNKNOWN0
	LDA #$0000
	JMP @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(ENTITY_SIZES),Y
	STA $12
	TYA
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_46)
	STA $02
	STA $10
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAX
	STX $0E
	LDA $12
	ASL
	STA $12
	PHA
	LDA a:.LOWORD(RAM)+2,X
	ASL
	ASL
	ASL
	PLX
	CLC
	ADC f:UNKNOWN_C42A1F,X
	STA $02
	LDA .LOWORD(UNKNOWN_7E4A8E)
	SEC
	SBC .LOWORD(UNKNOWN_7E4A92)
	ASL
	ASL
	ASL
	CLC
	ADC $02
	STA .LOWORD(ENTITY_SCRIPT_VAR6_TABLE),Y
	LDA $12
	PHA
	PHA
	LDX $0E
	LDA a:.LOWORD(RAM),X
	ASL
	ASL
	ASL
	PLX
	SEC
	SBC f:UNKNOWN_C42AEB,X
	PLX
	CLC
	ADC f:UNKNOWN_C42A41,X
	STA $02
	LDA .LOWORD(UNKNOWN_7E4A90)
	SEC
	SBC .LOWORD(UNKNOWN_7E4A94)
	ASL
	ASL
	ASL
	CLC
	ADC $02
	STA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),Y
	LDX $04
	LDA a:.LOWORD(RAM),X
	DEC
	LDX $04
	STA a:.LOWORD(RAM),X
	LDX $0E
	TXA
	INC
	INC
	INC
	INC
	LDX $10
	STX $02
	STA a:.LOWORD(RAM),X
	LDA #$0001
@UNKNOWN1:
	PLD
	RTL
