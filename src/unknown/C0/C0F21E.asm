
UNKNOWN_C0F21E: ;$C0F21E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #$0000
	STA $04
	TAX
	STX $12
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA a:.LOWORD(PAD_PRESS)
	BEQ @UNKNOWN1
	LDA #$0001
	JMP @UNKNOWN10
@UNKNOWN1:
	JSL UNKNOWN_C2DB3F
	JSL WAIT_UNTIL_NEXT_FRAME
	LDX $12
	INX
	STX $12
@UNKNOWN2:
	CPX #$00EC
	BCC @UNKNOWN0
	LDA #$0000
	STA $02
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA a:.LOWORD(PAD_PRESS)
	BEQ @UNKNOWN4
	LDA #$0001
	JMP @UNKNOWN10
@UNKNOWN4:
	LDY #$0240
	STY $12
	TYA
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0020
	LDA #.LOWORD(UNKNOWN_7E4476)
	JSL MEMCPY16
	JSL UNKNOWN_C426ED
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(UNKNOWN_7E0030)
	JSL UNKNOWN_C2DB14
	.A16
	PROMOTENEARPTR .LOWORD(UNKNOWN_7E4476), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0020
	LDY $12
	TYA
	JSL MEMCPY16
	JSL UNKNOWN_C2DB3F
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E0030)
	JSL WAIT_UNTIL_NEXT_FRAME
	INC $02
@UNKNOWN5:
	LDA $02
	.A16
	CMP #$01E0
	BCCL @UNKNOWN3
	JSL UNKNOWN_C49740
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA f:CGADSUB
	STA f:CGWSEL
	LDA #$0001
	STA a:.LOWORD(TM_MIRROR)
	STZ a:.LOWORD(TD_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0078
	JSR a:.LOWORD(UNKNOWN_C0EFE1)
	CMP #$0000
	BEQ @UNKNOWN7
	LDA #$0001
	BRA @UNKNOWN10
@UNKNOWN7:
	LDA #MUSIC::GAS_STATION_2
	JSL CHANGE_MUSIC
	LDY #$0000
	TYX
	LDA #EVENT_SCRIPT::EVENT_860
	JSL INIT_ENTITY_WIPE
	STA $12
	BRA @UNKNOWN9
@UNKNOWN8:
	JSL UNKNOWN_C09466
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA a:.LOWORD(PAD_PRESS)
	BEQ @UNKNOWN9
	LDA $12
	JSL UNKNOWN_C09C35
	LDA #$0001
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA $12
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_TABLE),X
	CMP #$FFFF
	BNE @UNKNOWN8
	LDA #$014A
	JSR a:.LOWORD(UNKNOWN_C0F1D2)
	LDA $04
@UNKNOWN10:
	PLD
	RTS
