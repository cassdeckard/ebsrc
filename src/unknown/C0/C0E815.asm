
UNKNOWN_C0E815: ;$C0E815
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	LDA .LOWORD(TELEPORT_STYLE)
	CMP #TELEPORT_STYLE::INSTANT
	BEQ @UNKNOWN2
	LDA #$0018
	STA $18
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	TAX
	LDA #$8000
	STA .LOWORD(UNKNOWN_30X2_TABLE_24),X
	LDA $18
	INC
	STA $18
@UNKNOWN1:
	CMP #$001E
	BCC @UNKNOWN0
	LDY #$9F4F
	STY $16
	LDA #$0000
	STA a:.LOWORD(RAM),Y
	LDX #$9F4B
	STX $18
	STA a:.LOWORD(RAM),X
	LOADPTR UNKNOWN_C0E674, $0E
	LOADPTR UNKNOWN_C0E3C1, $12
	LDA #$0017
	JSL UNKNOWN_C42F45
	LDX $18
	LDA a:.LOWORD(RAM),X
	STA $9F59
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA $9F5B
	LDY $16
	LDA a:.LOWORD(RAM),Y
	STA $9F5D
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA $9F5F
	LDX #$0004
	LDA #$0001
	JSL UNKNOWN_C0887A
	JSR a:.LOWORD(UNKNOWN_C0DD0F)
@UNKNOWN2:
	PLD
	RTS
