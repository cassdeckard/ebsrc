
UNKNOWN_C2B66A: ;$C2B66A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 19
	TAY
	STY $11
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$001A
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EAA98)
	JSL MEMSET16
	LDA #$0000
	STA $0F
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	LDA .LOWORD(BATTLERS_TABLE)+battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA .LOWORD(BATTLERS_TABLE)+battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN1
	LDY $11
	TYA
	CMP .LOWORD(BATTLERS_TABLE)+76,X
	BNE @UNKNOWN1
	LDA .LOWORD(BATTLERS_TABLE)+battler::the_flag,X
	AND #$00FF
	TAX
	DEX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EAA98),X
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA $0F
	INC
	STA $0F
@UNKNOWN2:
	CMP #$0020
	BCC @UNKNOWN0
	LDX #$0000
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7EAA98),X
	AND #$00FF
	BNE @UNKNOWN4
	TXA
	SEP #PROC_FLAGS::ACCUM8
	INC
	BRA @UNKNOWN6
@UNKNOWN4:
	INX
@UNKNOWN5:
	CPX #$001A
	BCC @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
@UNKNOWN6:
	PLD
	RTL