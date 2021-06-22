
; parses flyover script
; void UNKNOWN_C49EC4(short id)
UNKNOWN_C49EC4: ;$C49EC4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDX #.LOWORD(ENTITY_TICK_CALLBACK_HIGH) + (23 * 2)
	LDA a:.LOWORD(RAM),X
	STA $02
	ORA #$C000
	STA a:.LOWORD(RAM),X
	JSL UNKNOWN_C49A56
	LOADPTR FLYOVER_TEXT_POINTERS, $0A
	LDA $0E
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
@SCRIPT_PARSE_BEGIN:
	LDA [$06]
	AND #$00FF
	STA $0E
	INC $06
	CMP #$0000
	BEQ @END_OF_SCRIPT
	CMP #$0002
	BEQ @PARSE_02
	CMP #$0009
	BEQ @PARSE_09
	CMP #$0001
	BEQ @PARSE_01
	CMP #$0008
	BEQ @PARSE_08
	BRA @PRINT_TEXT
@PARSE_02:
	LDA [$06]
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E9F2D)
	INC $06
	BRA @SCRIPT_PARSE_BEGIN
@PARSE_09:
	LDA #$0012
	JSL UNKNOWN_C49B6E
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA #$0012
	JSL UNKNOWN_C49C56
	BRA @SCRIPT_PARSE_BEGIN
@PARSE_01:
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	JSL UNKNOWN_C49CA8
	BRA @SCRIPT_PARSE_BEGIN
@PARSE_08:
	LDA [$06]
	AND #$00FF
	TAY
	INC $06
	LDX #$000C
	TYA
	JSL UNKNOWN_C49CC3
	BRA @SCRIPT_PARSE_BEGIN
@PRINT_TEXT:
	LDA [$06]
	AND #$00FF
	TAX
	INC $06
	LDY #$000C
	LDA $0E
	JSL UNKNOWN_C49D16
	BRA @SCRIPT_PARSE_BEGIN
@END_OF_SCRIPT:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0004
	STA a:.LOWORD(TM_MIRROR)
	LDY #$0000
	LDX #$0003
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	JSL UNKNOWN_C087CE
	LDX #$0000
	STX $0E
	BRA @UNKNOWN8
@UNKNOWN7:
	JSL WAIT_UNTIL_NEXT_FRAME
	LDX $0E
	INX
	STX $0E
@UNKNOWN8:
	CPX #$00B4
	BCC @UNKNOWN7
	LDY #$0000
	LDX #$0003
	LDA #$0001
	JSL UNKNOWN_C08814
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0017
	STA a:.LOWORD(TM_MIRROR)
	LDY #.LOWORD(BG2_BUFFER)
	LDX #$0380
	BRA @UNKNOWN10
@UNKNOWN9:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),Y
	INY
	INY
	DEX
@UNKNOWN10:
	BNE @UNKNOWN9
	JSL UNKNOWN_C08726
	JSL UNDRAW_FLYOVER_TEXT
	LDA $02
	STA .LOWORD(ENTITY_TICK_CALLBACK_HIGH)+46
	JSL UNKNOWN_C08744
	PLD
	RTL