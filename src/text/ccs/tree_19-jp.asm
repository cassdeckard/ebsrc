
CC_19_TREE: ;$C179AA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TXA
	CMP #$0002
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN24)
@UNKNOWN0:
	CMP #$0004
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN25)
@UNKNOWN1:
	CMP #$0005
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN26)
@UNKNOWN2:
	CMP #$0010
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN27)
@UNKNOWN3:
	CMP #$0011
	BNE @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN4:
	CMP #$0014
	BNE @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN29)
@UNKNOWN5:
	CMP #$0016
	BNE @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN6:
	CMP #$0018
	BNE @UNKNOWN7
	JMP a:.LOWORD(@UNKNOWN31)
@UNKNOWN7:
	CMP #$0019
	BNE @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN32)
@UNKNOWN8:
	CMP #$001A
	BNE @UNKNOWN9
	JMP a:.LOWORD(@UNKNOWN33)
@UNKNOWN9:
	CMP #$001B
	BNE @UNKNOWN10
	JMP a:.LOWORD(@UNKNOWN34)
@UNKNOWN10:
	CMP #$001C
	BNE @UNKNOWN11
	JMP a:.LOWORD(@UNKNOWN35)
@UNKNOWN11:
	CMP #$001D
	BNE @UNKNOWN12
	JMP a:.LOWORD(@UNKNOWN36)
@UNKNOWN12:
	CMP #$001E
	BNE @UNKNOWN13
	JMP a:.LOWORD(@UNKNOWN37)
@UNKNOWN13:
	CMP #$001F
	BNE @UNKNOWN14
	JMP a:.LOWORD(@UNKNOWN38)
@UNKNOWN14:
	CMP #$0020
	BNE @UNKNOWN15
	JMP a:.LOWORD(@UNKNOWN39)
@UNKNOWN15:
	CMP #$0021
	BNE @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN40)
@UNKNOWN16:
	CMP #$0022
	BNE @UNKNOWN17
	JMP a:.LOWORD(@UNKNOWN41)
@UNKNOWN17:
	CMP #$0023
	BNE @UNKNOWN18
	JMP a:.LOWORD(@UNKNOWN42)
@UNKNOWN18:
	CMP #$0024
	BNE @UNKNOWN19
	JMP a:.LOWORD(@UNKNOWN43)
@UNKNOWN19:
	CMP #$0025
	BNE @UNKNOWN20
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN20:
	CMP #$0026
	BNE @UNKNOWN21
	JMP a:.LOWORD(@UNKNOWN45)
@UNKNOWN21:
	CMP #$0027
	BNE @UNKNOWN22
	JMP a:.LOWORD(@UNKNOWN46)
@UNKNOWN22:
	CMP #$0028
	BNE @UNKNOWN23
	JMP a:.LOWORD(@UNKNOWN47)
@UNKNOWN23:
	JMP a:.LOWORD(@UNKNOWN48)
@UNKNOWN24:
	LDA #.LOWORD(CC_19_02)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN25:
	JSR a:.LOWORD(UNKNOWN_C11383)
	JMP a:.LOWORD(@UNKNOWN48)
@UNKNOWN26:
	LDA #.LOWORD(CC_19_05)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN27:
	LDA #.LOWORD(CC_19_10)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN28:
	LDA #.LOWORD(CC_19_11)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN29:
	JSR a:.LOWORD(GET_SECONDARY_MEMORY)
	DEC
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:game_state::escargo_express_items,X
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	JSR a:.LOWORD(INCREMENT_SECONDARY_MEMORY)
	JMP a:.LOWORD(@UNKNOWN48)
@UNKNOWN30:
	LDA #.LOWORD(CC_19_16)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN31:
	LDA #.LOWORD(CC_19_18)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN32:
	LDA #.LOWORD(CC_19_19)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN33:
	LDA #.LOWORD(CC_19_1A)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN34:
	LDA #.LOWORD(CC_19_1B)
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN35:
	LDA #.LOWORD(CC_19_1C)
	BRA @UNKNOWN49
@UNKNOWN36:
	LDA #.LOWORD(CC_19_1D)
	BRA @UNKNOWN49
@UNKNOWN37:
	JSR a:.LOWORD(UNKNOWN_C1AD26)
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	BRA @UNKNOWN48
@UNKNOWN38:
	JSR a:.LOWORD(UNKNOWN_C1AD02)
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	BRA @UNKNOWN48
@UNKNOWN39:
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	BRA @UNKNOWN48
@UNKNOWN40:
	LDA #.LOWORD(CC_19_21)
	BRA @UNKNOWN49
@UNKNOWN41:
	LDA #.LOWORD(CC_19_22)
	BRA @UNKNOWN49
@UNKNOWN42:
	LDA #.LOWORD(CC_19_23)
	BRA @UNKNOWN49
@UNKNOWN43:
	LDA #.LOWORD(CC_19_24)
	BRA @UNKNOWN49
@UNKNOWN44:
	LDA #.LOWORD(CC_19_25)
	BRA @UNKNOWN49
@UNKNOWN45:
	LDA #.LOWORD(CC_19_26)
	BRA @UNKNOWN49
@UNKNOWN46:
	LDA #.LOWORD(CC_19_27)
	BRA @UNKNOWN49
@UNKNOWN47:
	LDA #.LOWORD(CC_19_28)
	BRA @UNKNOWN49
@UNKNOWN48:
	LDA #$0000
@UNKNOWN49:
	PLD
	RTS