
UNKNOWN_C0705F: ;$C0705F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDY #$0001
	LDX .LOWORD(GAME_STATE)+game_state::leader_direction
	CMP #$0100
	BEQ @UNKNOWN0
	CMP #$0000
	BEQ @UNKNOWN3
	CMP #$0300
	BEQ @UNKNOWN6
	CMP #$0200
	BEQ @UNKNOWN8
	BRA @UNKNOWN10
@UNKNOWN0:
	CPX #$0000
	BEQ @UNKNOWN1
	TXA
	AND #$0003
	BEQ @UNKNOWN2
@UNKNOWN1:
	LDY #$0000
@UNKNOWN2:
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E5DCA)
	BRA @UNKNOWN10
@UNKNOWN3:
	CPX #$0000
	BEQ @UNKNOWN4
	TXA
	AND #$0003
	BEQ @UNKNOWN5
@UNKNOWN4:
	LDY #$0000
@UNKNOWN5:
	LDA #$0006
	STA .LOWORD(UNKNOWN_7E5DCA)
	BRA @UNKNOWN10
@UNKNOWN6:
	TXA
	AND #$0007
	BEQ @UNKNOWN7
	LDY #$0000
@UNKNOWN7:
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E5DCA)
	BRA @UNKNOWN10
@UNKNOWN8:
	TXA
	AND #$0007
	BEQ @UNKNOWN9
	LDY #$0000
@UNKNOWN9:
	LDA #$0006
	STA .LOWORD(UNKNOWN_7E5DCA)
@UNKNOWN10:
	TYA
	RTS
