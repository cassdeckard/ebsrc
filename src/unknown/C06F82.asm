
UNKNOWN_C06F82: ;$C06F82
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDA #$0000
	STA $12
	LDA .LOWORD(UNKNOWN_7E5DC4)
	BEQ @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7E5DC4)
	CMP #$0100
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E5DCE)
	DEC
	CMP .LOWORD(GAME_STATE)+game_state::leader_y_coord
	BCC @UNKNOWN2
	BEQ @UNKNOWN2
	LDA #$0001
	STA $12
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA .LOWORD(UNKNOWN_7E5DCE)
	INC
	CMP .LOWORD(GAME_STATE)+game_state::leader_y_coord
	BCS @UNKNOWN2
	LDA #$0001
	STA $12
@UNKNOWN2:
	LDA $12
	BEQ @UNKNOWN3
	LDA #WALKING_STYLE::STAIRS
	STA .LOWORD(GAME_STATE)+game_state::walking_style
	LDA .LOWORD(UNKNOWN_7E5DCC)
	STA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	LDA .LOWORD(UNKNOWN_7E5DCE)
	STA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STZ .LOWORD(GAME_STATE)+132
	STZ .LOWORD(GAME_STATE)+128
	BRA @UNKNOWN4
@UNKNOWN3:
	LOADPTR UNKNOWN_C06F82, $0E
	LDA #$0001
	JSL UNKNOWN_C0DBE6
@UNKNOWN4:
	PLD
	RTL
