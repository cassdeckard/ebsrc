
UNKNOWN_C43657: ;$C43657
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	LDA .LOWORD(UNKNOWN_7E89CE)
	CMP #$FFFF
	BEQ @UNKNOWN0
	JSR UNKNOWN_C435E4
@UNKNOWN0:
	LDX $0E
	STX .LOWORD(UNKNOWN_7E89CE)
	LDA .LOWORD(UNKNOWN_7E89CE)
	BEQ @UNKNOWN1
	LDA .LOWORD(NUM_BATTLERS_IN_FRONT_ROW)
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA .LOWORD(NUM_BATTLERS_IN_BACK_ROW)
@UNKNOWN2:
	STA $02
	LDX #$0000
	STX $0E
	BRA @UNKNOWN6
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7E89CE)
	BEQ @UNKNOWN4
	LDA .LOWORD(FRONT_ROW_BATTLERS),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(BATTLERS_TABLE)+74,X
	BRA @UNKNOWN5
@UNKNOWN4:
	.A16
	LDA .LOWORD(BACK_ROW_BATTLERS),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(BATTLERS_TABLE)+74,X
@UNKNOWN5:
	LDX $0E
	INX
	STX $0E
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	TXA
	CMP $02
	BCC @UNKNOWN3
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EADA2)
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7E9623)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS
