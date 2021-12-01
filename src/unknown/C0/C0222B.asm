
UNKNOWN_C0222B: ;$C0222B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 42
	STX $28
	STA $04
	STA $26
	LDA $04
	CMP #$0020
	BCC @UNKNOWN0
	JMP @UNKNOWN29
@UNKNOWN0:
	LDA $28
	CMP #$0028
	BCC @UNKNOWN1
	JMP @UNKNOWN29
@UNKNOWN1:
	LDA $04
	ASL
	STA $02
	LDA $28
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA f:SPRITE_PLACEMENT_PTR_TABLE,X
	BEQL @UNKNOWN29
	STORE_INT1632 $06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SPRITE_PLACEMENT_TABLE & $FF0000, $06
	LDA [$06]
	STA $24
	INC $06
	INC $06
	MOVE_INT $06, $0A
	STZ $22
	JMP @UNKNOWN28
@UNKNOWN3:
	MOVE_INT $0A, $06
	LDA [$06]
	STA $20
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	STX $1E
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAY
	STY $1C
	LDA #$0004
	CLC
	ADC $0A
	STA $0A
	TXA
	LSR
	LSR
	LSR
	STA $02
	LDA $26
	STA $04
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	STA $1A
	TYA
	LSR
	LSR
	LSR
	STA $02
	LDA $28
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	STA $02
	LDA $1A
	LSR
	LSR
	LSR
	LSR
	LSR
	PHA
	LDA $02
	LSR
	LSR
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	ASL
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	AND #$00FF
	LSR
	LSR
	LSR
	CMP .LOWORD(UNKNOWN_7E436E)
	BNEL @UNKNOWN27
	LDA $20
	JSL UNKNOWN_C0A21C
	CMP #$0000
	BNEL @UNKNOWN27
	LDX $1E
	STX $02
	LDA $04
	XBA
	AND #$FF00
	CLC
	ADC $02
	STA $02
	STA $18
	LDY $1C
	STY $02
	LDA $28
	XBA
	AND #$FF00
	CLC
	ADC $02
	TAY
	STY $16
	LDA $18
	STA $02
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	STA $1A
	TYA
	SEC
	SBC a:.LOWORD(BG1_Y_POS)
	TAX
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN8
	LDA a:.LOWORD(PAD_STATE)
	AND #PAD::L_BUTTON | PAD::R_BUTTON
	BNE @UNKNOWN6
	LDA .LOWORD(UNKNOWN_7E4A58)
	DEC
	BEQ @UNKNOWN9
@UNKNOWN6:
	LDA $1A
	CMP #$0100
	BCS @UNKNOWN9
	CPX #$00E0
	BCCL @UNKNOWN27
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA .LOWORD(UNKNOWN_7E4A58)
	DEC
	BEQ @UNKNOWN9
	LDA $1A
	CMP #$0100
	BCS @UNKNOWN9
	CPX #$00E0
	BCCL @UNKNOWN27
@UNKNOWN9:
	LDA $1A
	STA $02
	LDA #$FFC0
	CLC
	SBC $02
	JUMPGTS @UNKNOWN27
	LDA $1A
	STA $02
	LDA #$0140
	CLC
	SBC $02
	JUMPLTEQS @UNKNOWN27
	STX $02
	LDA #$FFC0
	CLC
	SBC $02
	JUMPGTS @UNKNOWN27
	STX $02
	LDA #$0140
	CLC
	SBC $02
	JUMPLTEQS @UNKNOWN27
	LOADPTR NPC_CONFIG_TABLE, $06
	LDA $20
	STA $04
	ASL
	ASL
	ASL
	ASL
	ADC $04
	CLC
	ADC $06
	STA $06
	STA $12
	LDA $08
	STA $14
	LDX #$FFFF
	STX $1A
	LDA .LOWORD(UNKNOWN_7EB4EF)
	BNEL @UNKNOWN25
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN20
	SEP #PROC_FLAGS::ACCUM8
	LDY #8
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $1C
	BEQ @UNKNOWN21
	JSL UNKNOWN_EFE6CF
	CMP #$0000
	BEQ @UNKNOWN21
	LDY #npc_config::event_flag
	LDA [$06],Y
	JSL GET_EVENT_FLAG
	STA $02
	LDA $1C
	DEC
	DEC
	EOR $02
	AND #$0001
	BEQL @UNKNOWN27
	BRA @UNKNOWN21
@UNKNOWN20:
	SEP #PROC_FLAGS::ACCUM8
	LDY #8
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $1E
	BEQ @UNKNOWN21
	LDY #npc_config::event_flag
	LDA [$06],Y
	JSL GET_EVENT_FLAG
	STA $02
	LDA $1E
	DEC
	DEC
	EOR $02
	AND #$0001
	BEQL @UNKNOWN27
@UNKNOWN21:
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN23
	LDA .LOWORD(SHOW_NPC_FLAG)
	BEQ @UNKNOWN22
	LDA [$06]
	AND #$00FF
	CMP #$0003
	BNEL @UNKNOWN26
@UNKNOWN22:
	MOVE_INT $12, $06
	LDY #npc_config::event_script
	LDA [$06],Y
	JSL UNKNOWN_EFE6E2
	STA $1E
	LDA $18
	STA $02
	STA $0E
	LDY $16
	STY $10
	LDY #$FFFF
	STY $1A
	LDA $1E
	TAX
	LDY #npc_config::sprite
	LDA [$06],Y
	LDY $1A
	JSL CREATE_ENTITY
	TAX
	STX $1A
	BRA @UNKNOWN26
@UNKNOWN23:
	LDA .LOWORD(SHOW_NPC_FLAG)
	BEQ @UNKNOWN24
	LDA [$06]
	AND #$00FF
	CMP #$0003
	BNE @UNKNOWN26
@UNKNOWN24:
	LDA $18
	STA $02
	STA $0E
	LDY $16
	STY $10
	LDY #$FFFF
	STY $1C
	MOVE_INT $12, $06
	LDY #npc_config::event_script
	LDA [$06],Y
	TAX
	LDY #npc_config::sprite
	LDA [$06],Y
	LDY $1C
	JSL CREATE_ENTITY
	TAX
	STX $1A
	BRA @UNKNOWN26
@UNKNOWN25:
	SEP #PROC_FLAGS::ACCUM8
	LDY #8
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN26
	LDA $18
	STA $02
	STA $0E
	LDY $16
	STY $10
	LDY #$FFFF
	STY $1A
	LDX #EVENT_SCRIPT::EVENT_799
	LDY #npc_config::sprite
	LDA [$06],Y
	LDY $1A
	JSL CREATE_ENTITY
	TAX
	STX $1A
@UNKNOWN26:
	LDX $1A
	CPX #$FFFF
	BEQ @UNKNOWN27
	TXA
	ASL
	TAX
	MOVE_INT $12, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #npc_config::direction
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA .LOWORD(ENTITY_DIRECTIONS),X
	LDA $20
	STA .LOWORD(ENTITY_TPT_ENTRIES),X
@UNKNOWN27:
	INC $22
@UNKNOWN28:
	LDA $22
	CMP $24
	BNEL @UNKNOWN3
@UNKNOWN29:
	PLD
	RTL
