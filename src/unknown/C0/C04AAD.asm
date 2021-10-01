
UNKNOWN_C04AAD: ;$C04AAD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDX .LOWORD(UNKNOWN_7E5D7C)
	DEX
	STX .LOWORD(UNKNOWN_7E5D7C)
	BNE @UNKNOWN0
	JMP @UNKNOWN5
@UNKNOWN0:
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	JSL MAP_INPUT_TO_DIRECTION
	STA $04
	STA $10
	LDA $04
	CMP #$FFFF
	BNE @UNKNOWN1
	JMP @UNKNOWN6
@UNKNOWN1:
	LDA #$0018
	STA $02
	BRA @UNKNOWN4
@UNKNOWN2:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_TABLE),X
	CMP #$FFFF
	BEQ @UNKNOWN3
	TXA
	CLC
	ADC #.LOWORD(ENTITY_DIRECTIONS)
	TAY
	STY $0E
	LDA $10
	STA $04
	LDA a:.LOWORD(RAM),Y
	CMP $04
	BEQ @UNKNOWN3
	LDA .LOWORD(ENTITY_SCRIPT_VAR1_TABLE),X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAX
	STX .LOWORD(UNKNOWN_7E4DC6)
	LDA a:char_struct::position_index,X
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	TAX
	LDA a:.LOWORD(RAM)+6,X
	CMP #$0008
	BEQ @UNKNOWN3
	CMP #$0007
	BEQ @UNKNOWN3
	LDA $10
	STA $04
	LDY $0E
	STA a:.LOWORD(RAM),Y
	LDA $02
	JSL UNKNOWN_C0A780
@UNKNOWN3:
	INC $02
@UNKNOWN4:
	LDA $02
	CMP #$001D
	BCC @UNKNOWN2
	BEQ @UNKNOWN2
	LDA $10
	STA $04
	STA .LOWORD(GAME_STATE)+game_state::leader_direction
	BRA @UNKNOWN6
@UNKNOWN5:
	JSL UNKNOWN_C04A7B
@UNKNOWN6:
	PLD
	RTS
