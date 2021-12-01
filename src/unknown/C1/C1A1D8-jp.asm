
UNKNOWN_C1A1D8: ;$C1A1D8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	TAX
	TXY
	DEY
	STY $16
	JSR SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN2D
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0000
	LDA #$0001
	JSR UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_8, $0E
	LDA #$0006
	JSR a:.LOWORD(PRINT_STRING)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_offense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN0
	LDA #$0001
	STA $02
@UNKNOWN0:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN1:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN4
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN4:
	LDA $14
	CLC
	SBC #$00FF
	BRANCHLTEQS @UNKNOWN7
	LDX #$00FF
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN8:
	TXA
@UNKNOWN9:
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0001
	LDA #$0000
	JSR UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_9, $0E
	LDA #$0007
	JSR a:.LOWORD(PRINT_STRING)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_defense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	BEQ @UNKNOWN12
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN11
	LDA #$0001
	STA $02
@UNKNOWN11:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN12:
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	BEQ @UNKNOWN14
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN13
	LDA #$0001
	STA $02
@UNKNOWN13:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN14:
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	BEQ @UNKNOWN16
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN15
	LDA #$0001
	STA $02
@UNKNOWN15:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN16:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN19
	LDA #$0000
	BRA @UNKNOWN24
@UNKNOWN19:
	LDA $14
	CLC
	SBC #$00FF
	BRANCHLTEQS @UNKNOWN22
	LDX #$00FF
	BRA @UNKNOWN23
@UNKNOWN22:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN23:
	TXA
@UNKNOWN24:
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDA .LOWORD(UNKNOWN_7E9CD4)
	BEQL @UNKNOWN53
	LDX #$0000
	LDA #$000A
	JSR UNKNOWN_C438A5
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA #$014E
	JSR PRINT_LETTER
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_offense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(UNKNOWN_7E9CD0)
	AND #$00FF
	BEQ @UNKNOWN28
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN27
	LDX #$0001
	STX $12
@UNKNOWN27:
	LDA .LOWORD(UNKNOWN_7E9CD0)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN28:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN31
	LDA #$0000
	BRA @UNKNOWN36
@UNKNOWN31:
	LDA $14
	CLC
	SBC #$00FF
	BRANCHLTEQS @UNKNOWN34
	LDX #$00FF
	BRA @UNKNOWN35
@UNKNOWN34:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN35:
	TXA
@UNKNOWN36:
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0001
	LDA #$000A
	JSR UNKNOWN_C438A5
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA #$014E
	JSR PRINT_LETTER
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_defense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(UNKNOWN_7E9CD1)
	AND #$00FF
	BEQ @UNKNOWN39
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN38
	LDX #$0001
	STX $12
@UNKNOWN38:
	LDA .LOWORD(UNKNOWN_7E9CD1)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN39:
	LDA .LOWORD(UNKNOWN_7E9CD2)
	AND #$00FF
	BEQ @UNKNOWN41
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN40
	LDX #$0001
	STX $12
@UNKNOWN40:
	LDA .LOWORD(UNKNOWN_7E9CD2)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN41:
	LDA .LOWORD(UNKNOWN_7E9CD3)
	AND #$00FF
	BEQ @UNKNOWN43
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN42
	LDX #$0001
	STX $12
@UNKNOWN42:
	LDA .LOWORD(UNKNOWN_7E9CD3)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN43:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN46
	LDA #$0000
	BRA @UNKNOWN51
@UNKNOWN46:
	LDA $14
	CLC
	SBC #$00FF
	BRANCHLTEQS @UNKNOWN49
	LDX #$00FF
	BRA @UNKNOWN50
@UNKNOWN49:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN50:
	TXA
@UNKNOWN51:
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
@UNKNOWN53:
	JSR CLEAR_INSTANT_PRINTING
	PLD
	RTL
