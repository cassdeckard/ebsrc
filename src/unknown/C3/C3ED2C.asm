
UNKNOWN_C3ED2C: ;$C3ED2C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $02
	TAX
	BEQ @UNKNOWN1
	TXA
	DEC
	STA $0E
	CPY #$0000
	BNE @UNKNOWN0
	MOVE_INT1632 $02, $0A
	LDA $0E
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	STORE_INT1632 $06
	JSL MULT32
	MOVE_INT_CONSTANT 100, $0A
	JSL DIVISION32
	LDA $06
	STA $02
@UNKNOWN0:
	LDA $0E
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::current_pp_target
	TAX
	LDA a:.LOWORD(RAM),X
	SEC
	SBC $02
	STA a:.LOWORD(RAM),X
	CMP .LOWORD(CHAR_STRUCT)+char_struct::max_pp,Y
	BCC @UNKNOWN1
	BEQ @UNKNOWN1
	LDA #$0000
	STA a:.LOWORD(RAM),X
@UNKNOWN1:
	PLD
	RTL
