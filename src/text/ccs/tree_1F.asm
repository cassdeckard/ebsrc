
CC_1F_TREE: ;$C181BB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXA
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN74)
@UNKNOWN0:
	CMP #$0001
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN1:
	CMP #$0002
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN76)
@UNKNOWN2:
	CMP #$0003
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN77)
@UNKNOWN3:
	CMP #$0004
	BNE @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN78)
@UNKNOWN4:
	CMP #$0005
	BNE @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN79)
@UNKNOWN5:
	CMP #$0006
	BNE @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN80)
@UNKNOWN6:
	CMP #$0007
	BNE @UNKNOWN7
	JMP a:.LOWORD(@UNKNOWN81)
@UNKNOWN7:
	CMP #$0011
	BNE @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN82)
@UNKNOWN8:
	CMP #$0012
	BNE @UNKNOWN9
	JMP a:.LOWORD(@UNKNOWN83)
@UNKNOWN9:
	CMP #$0013
	BNE @UNKNOWN10
	JMP a:.LOWORD(@UNKNOWN84)
@UNKNOWN10:
	CMP #$0014
	BNE @UNKNOWN11
	JMP a:.LOWORD(@UNKNOWN85)
@UNKNOWN11:
	CMP #$0015
	BNE @UNKNOWN12
	JMP a:.LOWORD(@UNKNOWN86)
@UNKNOWN12:
	CMP #$0016
	BNE @UNKNOWN13
	JMP a:.LOWORD(@UNKNOWN87)
@UNKNOWN13:
	CMP #$0017
	BNE @UNKNOWN14
	JMP a:.LOWORD(@UNKNOWN88)
@UNKNOWN14:
	CMP #$0018
	BNE @UNKNOWN15
	JMP a:.LOWORD(@UNKNOWN89)
@UNKNOWN15:
	CMP #$0019
	BNE @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN90)
@UNKNOWN16:
	CMP #$001A
	BNE @UNKNOWN17
	JMP a:.LOWORD(@UNKNOWN91)
@UNKNOWN17:
	CMP #$001B
	BNE @UNKNOWN18
	JMP a:.LOWORD(@UNKNOWN92)
@UNKNOWN18:
	CMP #$001C
	BNE @UNKNOWN19
	JMP a:.LOWORD(@UNKNOWN93)
@UNKNOWN19:
	CMP #$001D
	BNE @UNKNOWN20
	JMP a:.LOWORD(@UNKNOWN94)
@UNKNOWN20:
	CMP #$001E
	BNE @UNKNOWN21
	JMP a:.LOWORD(@UNKNOWN95)
@UNKNOWN21:
	CMP #$001F
	BNE @UNKNOWN22
	JMP a:.LOWORD(@UNKNOWN96)
@UNKNOWN22:
	CMP #$0020
	BNE @UNKNOWN23
	JMP a:.LOWORD(@UNKNOWN97)
@UNKNOWN23:
	CMP #$0021
	BNE @UNKNOWN24
	JMP a:.LOWORD(@UNKNOWN98)
@UNKNOWN24:
	CMP #$0023
	BNE @UNKNOWN25
	JMP a:.LOWORD(@UNKNOWN99)
@UNKNOWN25:
	CMP #$0030
	BNE @UNKNOWN26
	JMP a:.LOWORD(@UNKNOWN100)
@UNKNOWN26:
	CMP #$0031
	BNE @UNKNOWN27
	JMP a:.LOWORD(@UNKNOWN100)
@UNKNOWN27:
	CMP #$0040
	BNE @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN101)
@UNKNOWN28:
	CMP #$0041
	BNE @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN102)
@UNKNOWN29:
	CMP #$0050
	BNE @UNKNOWN30
	JMP a:.LOWORD(@UNKNOWN103)
@UNKNOWN30:
	CMP #$0051
	BNE @UNKNOWN31
	JMP a:.LOWORD(@UNKNOWN104)
@UNKNOWN31:
	CMP #$0052
	BNE @UNKNOWN32
	JMP a:.LOWORD(@UNKNOWN105)
@UNKNOWN32:
	CMP #$0060
	BNE @UNKNOWN33
	JMP a:.LOWORD(@UNKNOWN106)
@UNKNOWN33:
	CMP #$0061
	BNE @UNKNOWN34
	JMP a:.LOWORD(@UNKNOWN107)
@UNKNOWN34:
	CMP #$0062
	BNE @UNKNOWN35
	JMP a:.LOWORD(@UNKNOWN108)
@UNKNOWN35:
	CMP #$0063
	BNE @UNKNOWN36
	JMP a:.LOWORD(@UNKNOWN109)
@UNKNOWN36:
	CMP #$0064
	BNE @UNKNOWN37
	JMP a:.LOWORD(@UNKNOWN110)
@UNKNOWN37:
	CMP #$0065
	BNE @UNKNOWN38
	JMP a:.LOWORD(@UNKNOWN111)
@UNKNOWN38:
	CMP #$0066
	BNE @UNKNOWN39
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN39:
	CMP #$0067
	BNE @UNKNOWN40
	JMP a:.LOWORD(@UNKNOWN113)
@UNKNOWN40:
	CMP #$0068
	BNE @UNKNOWN41
	JMP a:.LOWORD(@UNKNOWN114)
@UNKNOWN41:
	CMP #$0069
	BNE @UNKNOWN42
	JMP a:.LOWORD(@UNKNOWN115)
@UNKNOWN42:
	CMP #$0071
	BNE @UNKNOWN43
	JMP a:.LOWORD(@UNKNOWN118)
@UNKNOWN43:
	CMP #$0081
	BNE @UNKNOWN44
	JMP a:.LOWORD(@UNKNOWN119)
@UNKNOWN44:
	CMP #$0083
	BNE @UNKNOWN45
	JMP a:.LOWORD(@UNKNOWN120)
@UNKNOWN45:
	CMP #$0090
	BNE @UNKNOWN46
	JMP a:.LOWORD(@UNKNOWN121)
@UNKNOWN46:
	CMP #$00A0
	BNE @UNKNOWN47
	JMP a:.LOWORD(@UNKNOWN122)
@UNKNOWN47:
	CMP #$00A1
	BNE @UNKNOWN48
	JMP a:.LOWORD(@UNKNOWN123)
@UNKNOWN48:
	CMP #$00A2
	BNE @UNKNOWN49
	JMP a:.LOWORD(@UNKNOWN124)
@UNKNOWN49:
	CMP #$00B0
	BNE @UNKNOWN50
	JMP a:.LOWORD(@UNKNOWN126)
@UNKNOWN50:
	CMP #$00C0
	BNE @UNKNOWN51
	JMP a:.LOWORD(@UNKNOWN127)
@UNKNOWN51:
	CMP #$00D0
	BNE @UNKNOWN52
	JMP a:.LOWORD(@UNKNOWN128)
@UNKNOWN52:
	CMP #$00D1
	BNE @UNKNOWN53
	JMP a:.LOWORD(@UNKNOWN129)
@UNKNOWN53:
	CMP #$00D2
	BNE @UNKNOWN54
	JMP a:.LOWORD(@UNKNOWN130)
@UNKNOWN54:
	CMP #$00D3
	BNE @UNKNOWN55
	JMP a:.LOWORD(@UNKNOWN131)
@UNKNOWN55:
	CMP #$00E1
	BNE @UNKNOWN56
	JMP a:.LOWORD(@UNKNOWN132)
@UNKNOWN56:
	CMP #$00E4
	BNE @UNKNOWN57
	JMP a:.LOWORD(@UNKNOWN133)
@UNKNOWN57:
	CMP #$00E5
	BNE @UNKNOWN58
	JMP a:.LOWORD(@UNKNOWN134)
@UNKNOWN58:
	CMP #$00E6
	BNE @UNKNOWN59
	JMP a:.LOWORD(@UNKNOWN135)
@UNKNOWN59:
	CMP #$00E7
	BNE @UNKNOWN60
	JMP a:.LOWORD(@UNKNOWN136)
@UNKNOWN60:
	CMP #$00E8
	BNE @UNKNOWN61
	JMP a:.LOWORD(@UNKNOWN137)
@UNKNOWN61:
	CMP #$00E9
	BNE @UNKNOWN62
	JMP a:.LOWORD(@UNKNOWN138)
@UNKNOWN62:
	CMP #$00EA
	BNE @UNKNOWN63
	JMP a:.LOWORD(@UNKNOWN139)
@UNKNOWN63:
	CMP #$00EB
	BNE @UNKNOWN64
	JMP a:.LOWORD(@UNKNOWN140)
@UNKNOWN64:
	CMP #$00EC
	BNE @UNKNOWN65
	JMP a:.LOWORD(@UNKNOWN141)
@UNKNOWN65:
	CMP #$00ED
	BNE @UNKNOWN66
	JMP a:.LOWORD(@UNKNOWN142)
@UNKNOWN66:
	CMP #$00EE
	BNE @UNKNOWN67
	JMP a:.LOWORD(@UNKNOWN143)
@UNKNOWN67:
	CMP #$00EF
	BNE @UNKNOWN68
	JMP a:.LOWORD(@UNKNOWN144)
@UNKNOWN68:
	CMP #$00F0
	BNE @UNKNOWN69
	JMP a:.LOWORD(@UNKNOWN145)
@UNKNOWN69:
	CMP #$00F1
	BNE @UNKNOWN70
	JMP a:.LOWORD(@UNKNOWN146)
@UNKNOWN70:
	CMP #$00F2
	BNE @UNKNOWN71
	JMP a:.LOWORD(@UNKNOWN147)
@UNKNOWN71:
	CMP #$00F3
	BNE @UNKNOWN72
	JMP a:.LOWORD(@UNKNOWN148)
@UNKNOWN72:
	CMP #$00F4
	BNE @UNKNOWN73
	JMP a:.LOWORD(@UNKNOWN149)
@UNKNOWN73:
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN74:
	LDA #.LOWORD(CC_1F_00)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN75:
	LDA #.LOWORD(CC_1F_01)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN76:
	LDA #.LOWORD(CC_1F_02)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN77:
	JSL UNKNOWN_C069F7
	LDX #$0000
	JSL UNKNOWN_C216AD
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN78:
	LDA #.LOWORD(CC_1F_04)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN79:
	LDA #$0000
	JSL SET_BOUNDARY_BEHAVIOR
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN80:
	LDA #$0001
	JSL SET_BOUNDARY_BEHAVIOR
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN81:
	LDA #.LOWORD(CC_1F_07)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN82:
	LDA #.LOWORD(CC_1F_11)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN83:
	LDA #.LOWORD(CC_1F_12)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN84:
	LDA #.LOWORD(CC_1F_13)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN85:
	LDA #.LOWORD(CC_1F_14)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN86:
	LDA #.LOWORD(CC_1F_15)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN87:
	LDA #.LOWORD(CC_1F_16)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN88:
	LDA #.LOWORD(CC_1F_17)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN89:
	LDA #.LOWORD(CC_1F_18)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN90:
	LDA #.LOWORD(CC_1F_19)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN91:
	LDA #.LOWORD(CC_1F_1A)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN92:
	LDA #.LOWORD(CC_1F_1B)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN93:
	LDA #.LOWORD(CC_1F_1C)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN94:
	LDA #.LOWORD(CC_1F_1D)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN95:
	LDA #.LOWORD(CC_1F_1E)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN96:
	LDA #.LOWORD(CC_1F_1F)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN97:
	LDA #.LOWORD(CC_1F_20)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN98:
	LDA #.LOWORD(CC_1F_21)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN99:
	LDA #.LOWORD(CC_1F_23)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN100:
	JSR a:.LOWORD(CHANGE_CURRENT_WINDOW_FONT)
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN101:
	LDA #.LOWORD(CC_1F_40)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN102:
	LDA #.LOWORD(CC_1F_41)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN103:
	JSR a:.LOWORD(LOCK_INPUT)
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN104:
	JSR a:.LOWORD(UNLOCK_INPUT)
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN105:
	LDA #.LOWORD(CC_1F_52)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN106:
	LDA #.LOWORD(CC_1F_60)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN107:
	JSR a:.LOWORD(UNKNOWN_C102D0)
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN108:
	LDA #.LOWORD(CC_1F_62)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN109:
	LDA #.LOWORD(CC_1F_63)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN110:
	JSL UNKNOWN_C23008
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN111:
	JSL UNKNOWN_C2307B
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN112:
	LDA #.LOWORD(CC_1F_66)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN113:
	LDA #.LOWORD(CC_1F_67)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN114:
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(GAME_STATE)+game_state::exit_mouse_x_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(GAME_STATE)+game_state::exit_mouse_y_coord
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN115:
	LDY #$0001
	STY $12
	BRA @UNKNOWN117
@UNKNOWN116:
	LDX #$0000
	TYA
	JSL SET_EVENT_FLAG
	LDY $12
	INY
	STY $12
@UNKNOWN117:
	CPY #$000A
	BCC @UNKNOWN116
	BEQ @UNKNOWN116
	LDX #$0001
	TXA
	JSL UNKNOWN_C0887A
	LDA #SFX::EQUIPPED_ITEM
	JSL PLAY_SOUND
	LDA .LOWORD(GAME_STATE)+game_state::exit_mouse_x_coord
	STA $04
	LDA .LOWORD(GAME_STATE)+game_state::exit_mouse_y_coord
	STA $02
	LDX $02
	LDA $04
	JSL UNKNOWN_C013F6
	STZ .LOWORD(UNKNOWN_7E2890)
	LDY #$0004
	LDX $02
	LDA $04
	JSL UNKNOWN_C03FA9
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5DC4)
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN118:
	LDA #.LOWORD(CC_1F_71)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN119:
	LDA #.LOWORD(CC_1F_81)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN120:
	LDA #.LOWORD(CC_1F_83)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN121:
	JSR a:.LOWORD(UNKNOWN_C19441)
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN122:
	LDA #$0001
	JSL UNKNOWN_C226C5
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN123:
	LDA #$0000
	JSL UNKNOWN_C226C5
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN124:
	JSL UNKNOWN_C226E6
	CMP #$0000
	STA $06
	STZ $08
	BPL @UNKNOWN125
	DEC $08
@UNKNOWN125:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN126:
	JSL SAVE_CURRENT_GAME
	JMP a:.LOWORD(@UNKNOWN150)
@UNKNOWN127:
	LDA #.LOWORD(CC_1F_C0)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN128:
	LDA #.LOWORD(CC_1F_D0)
	JMP a:.LOWORD(@UNKNOWN151)
@UNKNOWN129:
	JSL UNKNOWN_C490EE
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	BRA @UNKNOWN150
@UNKNOWN130:
	LDA #.LOWORD(CC_1F_D2)
	BRA @UNKNOWN151
@UNKNOWN131:
	LDA #.LOWORD(CC_1F_D3)
	BRA @UNKNOWN151
@UNKNOWN132:
	LDA #.LOWORD(CC_1F_E1)
	BRA @UNKNOWN151
@UNKNOWN133:
	LDA #.LOWORD(CC_1F_E4)
	BRA @UNKNOWN151
@UNKNOWN134:
	LDA #.LOWORD(CC_1F_E5)
	BRA @UNKNOWN151
@UNKNOWN135:
	LDA #.LOWORD(CC_1F_E6)
	BRA @UNKNOWN151
@UNKNOWN136:
	LDA #.LOWORD(CC_1F_E7)
	BRA @UNKNOWN151
@UNKNOWN137:
	LDA #.LOWORD(CC_1F_E8)
	BRA @UNKNOWN151
@UNKNOWN138:
	LDA #.LOWORD(CC_1F_E9)
	BRA @UNKNOWN151
@UNKNOWN139:
	LDA #.LOWORD(CC_1F_EA)
	BRA @UNKNOWN151
@UNKNOWN140:
	LDA #.LOWORD(CC_1F_EB)
	BRA @UNKNOWN151
@UNKNOWN141:
	LDA #.LOWORD(CC_1F_EC)
	BRA @UNKNOWN151
@UNKNOWN142:
	JSL UNKNOWN_C466B8
	BRA @UNKNOWN150
@UNKNOWN143:
	LDA #.LOWORD(CC_1F_EE)
	BRA @UNKNOWN151
@UNKNOWN144:
	LDA #.LOWORD(CC_1F_EF)
	BRA @UNKNOWN151
@UNKNOWN145:
	JSL GET_ON_BICYCLE
	BRA @UNKNOWN150
@UNKNOWN146:
	LDA #.LOWORD(CC_1F_F1)
	BRA @UNKNOWN151
@UNKNOWN147:
	LDA #.LOWORD(CC_1F_F2)
	BRA @UNKNOWN151
@UNKNOWN148:
	LDA #.LOWORD(CC_1F_F3)
	BRA @UNKNOWN151
@UNKNOWN149:
	LDA #.LOWORD(CC_1F_F4)
	BRA @UNKNOWN151
@UNKNOWN150:
	LDA #$0000
@UNKNOWN151:
	PLD
	RTS
