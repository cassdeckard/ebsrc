
UNKNOWN_C1952F: ;$C1952F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 21
	TAX
	DEC
	STA $02
	JSR SET_9622_ONE
	DISPLAY_TEXT_PTR STATUS_WINDOW_TEXT
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	LDA #$0008
	STA .LOWORD(UNKNOWN_7E5E7A)
@UNKNOWN0:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	STY $13
	TYA
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA #$0008
	JSL READ_NAME
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0000
	LDA #$0005
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::level,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0003
	LDA #$0009
	JSR UNKNOWN_C438A5
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0003
	LDA #$000D
	JSR UNKNOWN_C438A5
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0004
	LDA #$0009
	JSR UNKNOWN_C438A5
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_pp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0004
	LDA #$000D
	JSR UNKNOWN_C438A5
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0000
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::offense,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0001
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::defense,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0002
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::speed,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0003
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::guts,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0004
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::vitality,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0005
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::iq,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0006
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::luck,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDA #$0006
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0005
	LDA #$0009
	JSR UNKNOWN_C438A5
	LDY $13
	TYA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::exp
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	MOVE_INT_CONSTANT EXP_LIMIT, $0A
	CLC
	LDA $06
	SBC $0A
	LDA $08
	SBC $0C
	BVC @UNKNOWN1
	BPL @UNKNOWN3
	BRA @UNKNOWN2
@UNKNOWN1:
	BMI @UNKNOWN3
@UNKNOWN2:
	MOVE_INT $0A, $06
@UNKNOWN3:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0006
	LDA #$0009
	JSR UNKNOWN_C438A5
	LDA $02
	INC
	JSL GET_REQUIRED_EXP
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0000
	STX $13
	JMP a:.LOWORD(@UNKNOWN10)
@UNKNOWN4:
	STX $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC $04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	STA $12
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN9
	LDX $13
	TXA
	BEQ @UNKNOWN5
	CMP #$0001
	BEQ @UNKNOWN6
	CMP #$0005
	BEQ @UNKNOWN7
	BRA @UNKNOWN11
@UNKNOWN5:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_5, $06
	LDA $12
	AND #$00FF
	DEC
	OPTIMIZED_MULT $04, 10
	CLC
	ADC $06
	STA $06
	BRA @UNKNOWN8
@UNKNOWN6:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_5, $06
	LDA $12
	AND #$00FF
	OPTIMIZED_MULT $04, 10
	CLC
	ADC #$003C
	CLC
	ADC $06
	STA $06
	BRA @UNKNOWN8
@UNKNOWN7:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_6, $06
@UNKNOWN8:
	LDX #$0001
	TXA
	JSR UNKNOWN_C438A5
	MOVE_INT $06, $0E
	LDA #$0100
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	BRA @UNKNOWN11
@UNKNOWN9:
	LDX $13
	INX
	STX $13
@UNKNOWN10:
	CPX #$0007
	BCS @UNKNOWN11
	BEQ @UNKNOWN11
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN11:
	LDX #$0001
	LDA #$000A
	JSR UNKNOWN_C438A5
	LDX #$0000
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	JSL UNKNOWN_C223D9
	JSR PRINT_LETTER
	LDA $02
	CMP #$0002
	BEQ @UNKNOWN12
	LDX #$0007
	LDA #$0001
	JSR UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_4, $0E
	LDA #$001B
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
@UNKNOWN12:
	JSR CLEAR_9622
	PLD
	RTL