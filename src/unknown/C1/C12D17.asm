
UNKNOWN_C12D17: ;$C12D17
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $04
	LDA .LOWORD(UNKNOWN_7E9698)
	BNE @UNKNOWN4
	LDA $04
	BEQ @UNKNOWN4
	LDA #$0000
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	ASL
	TAY
	STY $10
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $0E
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::current_hp_target
	TAX
	LDA a:.LOWORD(RAM),X
	LDY $10
	STA .LOWORD(UNKNOWN_7E969A),Y
	LDA #999
	STA a:.LOWORD(RAM),X
	LDA $0E
	TAX
	LDA #999
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,X
	LDA $0E
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::current_pp_target
	TAX
	LDA a:.LOWORD(RAM),X
	STA .LOWORD(UNKNOWN_7E96A2),Y
	LDA #$0000
	STA a:.LOWORD(RAM),X
	LDA $0E
	TAX
	STZ .LOWORD(CHAR_STRUCT)+char_struct::current_pp,X
	INC $02
@UNKNOWN1:
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $02
	BVS @UNKNOWN2
	BPL @UNKNOWN0
	BRA @UNKNOWN3
@UNKNOWN2:
	BMI @UNKNOWN0
@UNKNOWN3:
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA .LOWORD(UNKNOWN_7E9698)
	BEQ @UNKNOWN8
	LDA $04
	BNE @UNKNOWN8
	LDA #$0000
	STA $10
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA $10
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	LDA $10
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E969A),X
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,Y
	LDA .LOWORD(UNKNOWN_7E96A2),X
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp_target,Y
	LDA $10
	INC
	STA $10
@UNKNOWN6:
	STA $02
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $02
	BVS @UNKNOWN7
	BPL @UNKNOWN5
	BRA @UNKNOWN8
@UNKNOWN7:
	BMI @UNKNOWN5
@UNKNOWN8:
	LDA $04
	STA .LOWORD(UNKNOWN_7E9698)
	JSL RESUME_MUSIC
	PLD
	RTS